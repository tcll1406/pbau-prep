import type { Lang } from '../data/i18n';

export interface Question {
	id: number;
	subject: string;
	topic: string;
	statement: string;
	option_a: string;
	option_b: string;
	option_c: string;
	option_d: string;
	correct: 'A' | 'B' | 'C' | 'D';
	feedback: string;
}

interface QuestionRow extends Question {
	statement_es: string;
	option_a_es: string;
	option_b_es: string;
	option_c_es: string;
	option_d_es: string;
	feedback_es: string;
}

export async function fetchQuestions(filter: { subject: string; topic?: string }, lang: Lang = 'ca'): Promise<Question[]> {
	const url = new URL(`${import.meta.env.SUPABASE_URL}/rest/v1/questions`);
	url.searchParams.set('select', '*');
	url.searchParams.set('subject', `eq.${filter.subject}`);
	if (filter.topic) {
		url.searchParams.set('topic', `eq.${filter.topic}`);
	}

	const res = await fetch(url, {
		headers: {
			apikey: import.meta.env.SUPABASE_ANON_KEY,
			Authorization: `Bearer ${import.meta.env.SUPABASE_ANON_KEY}`,
		},
	});

	if (!res.ok) {
		throw new Error(`Failed to fetch questions (${filter.subject}/${filter.topic ?? 'all'}): ${res.status} ${await res.text()}`);
	}

	const rows: QuestionRow[] = await res.json();

	if (lang === 'ca') return rows;

	return rows.map((r) => ({
		id: r.id,
		subject: r.subject,
		topic: r.topic,
		statement: r.statement_es,
		option_a: r.option_a_es,
		option_b: r.option_b_es,
		option_c: r.option_c_es,
		option_d: r.option_d_es,
		correct: r.correct,
		feedback: r.feedback_es,
	}));
}
