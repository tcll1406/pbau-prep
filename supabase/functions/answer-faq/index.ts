// Supabase Edge Function (Deno runtime). Invoked on a schedule by pg_cron
// (see supabase/schema-stage14-cron.sql). For every faq_questions row older
// than 30 minutes with no answer yet, generates an AI answer grounded in the
// site's own FAQ content and emails it to the submitter via Resend.
//
// Secrets required (set via `supabase secrets set` or the Dashboard):
//   ANTHROPIC_API_KEY   - console.anthropic.com API key
//   RESEND_API_KEY      - resend.com API key
// SUPABASE_URL and SUPABASE_SERVICE_ROLE_KEY are injected automatically by
// the platform — do not set them yourself.

import { createClient } from 'npm:@supabase/supabase-js@2';
import Anthropic from 'npm:@anthropic-ai/sdk@0.68';

// Canonical Catalan FAQ content (src/data/faq.ts) embedded so the model
// answers from the site's actual PAU rules instead of general knowledge.
const FAQ_CONTEXT = `
P: Com es calcula la nota d'accés a la universitat (Fase General)?
R: La nota d'accés es calcula sumant el 60% de la nota mitjana de Batxillerat i el 40% de la nota de la Fase General de la PAU. Aquesta nota pot arribar a un màxim de 10 punts i té validesa indefinida.

P: Què és la Fase d'Admissió (o específica)?
R: És una fase voluntària que permet als estudiants sumar fins a 4 punts addicionals a la seva nota d'accés, arribant a un màxim de 14. Serveix per millorar la nota per entrar a graus amb alta demanda.

P: Com funcionen les ponderacions de 0.1 i 0.2?
R: A la Fase d'Admissió, les notes de les assignatures aprovades (5 o més) es multipliquen per 0.1 o 0.2 depenent de la seva relació amb el grau universitari que vols cursar. Només sumen les dues millors notes un cop ponderades.

P: Què passa si trec menys d'un 5 en una assignatura de la Fase d'Admissió?
R: Perquè una assignatura de la Fase d'Admissió ponderi i sumi punts a la teva nota final, has de treure com a mínim un 5. Si treus menys, simplement no compta, però no et resta nota.

P: Quant de temps són vàlides les notes de la PAU?
R: La nota de la Fase General té validesa indefinida (no caduca mai). En canvi, les notes de les assignatures de la Fase d'Admissió només són vàlides per als dos cursos acadèmics següents a la superació de les mateixes.

P: Em puc tornar a presentar per pujar nota?
R: Sí, et pots presentar a convocatòries posteriors per millorar la nota, tant de la Fase General com de la Fase d'Admissió. Sempre se't guardarà la nota més alta que hagis obtingut.

P: Quines assignatures són obligatòries a la Fase General?
R: A les Illes Balears, la Fase General consta de Llengua Castellana, Llengua Catalana, Llengua Estrangera (normalment Anglès), Història d'Espanya o Història de la Filosofia, i l'assignatura troncal de modalitat.

P: Què és la 'Nota de Corte' (Nota de Tall)?
R: És la nota del darrer alumne que va entrar en un grau universitari l'any anterior. No és una nota fixada per la universitat, sinó que depèn de l'oferta de places i la demanda dels estudiants.

P: Puc examinar-me a la Fase d'Admissió d'una assignatura que no he cursat a Batxillerat?
R: Sí, pots examinar-te de qualsevol assignatura de modalitat a la Fase d'Admissió, independentment de si l'has cursada o no durant el teu Batxillerat, sempre que estigui inclosa a l'oferta de la PAU.
`.trim();

const SYSTEM_PROMPT = `Ets l'assistent de PAU Balears Prep, una plataforma per a estudiants de 2n de Batxillerat de les Illes Balears que es preparen per a la PAU (Proves d'Accés a la Universitat).

Respon la pregunta de l'estudiant de manera clara, breu i precisa, en el mateix idioma en què està escrita la pregunta (català o castellà). Basa la teva resposta en les regles oficials de la PAU descrites a sota. Si la pregunta no té relació amb la PAU, respon amablement que només pots ajudar amb temes relacionats amb la PAU. No inventis dades ni normatives que no coneguis amb certesa; si no n'estàs segur, digues-ho i recomana consultar la seu electrònica de la UIB.

Regles oficials de referència:
${FAQ_CONTEXT}`;

interface PendingQuestion {
	id: number;
	email: string;
	question: string;
}

Deno.serve(async () => {
	const supabaseAdmin = createClient(
		Deno.env.get('SUPABASE_URL')!,
		Deno.env.get('SUPABASE_SERVICE_ROLE_KEY')!
	);
	const anthropic = new Anthropic({ apiKey: Deno.env.get('ANTHROPIC_API_KEY')! });
	const resendApiKey = Deno.env.get('RESEND_API_KEY')!;

	const cutoff = new Date(Date.now() - 30 * 60 * 1000).toISOString();

	const { data: pending, error } = await supabaseAdmin
		.from('faq_questions')
		.select('id, email, question')
		.is('answer', null)
		.lte('created_at', cutoff);

	if (error) {
		return new Response(JSON.stringify({ error: error.message }), { status: 500 });
	}

	const results = [];

	for (const row of (pending ?? []) as PendingQuestion[]) {
		try {
			const message = await anthropic.messages.create({
				model: 'claude-opus-4-8',
				max_tokens: 1024,
				system: SYSTEM_PROMPT,
				messages: [{ role: 'user', content: row.question }],
			});

			const answerBlock = message.content.find((b) => b.type === 'text');
			const answerText = answerBlock && 'text' in answerBlock ? answerBlock.text : '';

			if (!answerText) {
				results.push({ id: row.id, ok: false, error: 'empty model response' });
				continue;
			}

			const emailRes = await fetch('https://api.resend.com/emails', {
				method: 'POST',
				headers: {
					Authorization: `Bearer ${resendApiKey}`,
					'Content-Type': 'application/json',
				},
				body: JSON.stringify({
					from: 'PAU Balears Prep <onboarding@resend.dev>',
					to: row.email,
					subject: 'Resposta a la teva pregunta — PAU Balears Prep',
					text: answerText,
				}),
			});

			if (!emailRes.ok) {
				results.push({ id: row.id, ok: false, error: `email failed: ${await emailRes.text()}` });
				continue; // leave answer null so the next run retries
			}

			await supabaseAdmin
				.from('faq_questions')
				.update({ answer: answerText, answered_at: new Date().toISOString() })
				.eq('id', row.id);

			results.push({ id: row.id, ok: true });
		} catch (err) {
			results.push({ id: row.id, ok: false, error: String(err) });
		}
	}

	return new Response(JSON.stringify({ processed: results.length, results }), {
		headers: { 'Content-Type': 'application/json' },
	});
});
