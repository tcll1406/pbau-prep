import type { Lang } from './i18n';

interface TopicEntry {
	ca: string;
	es: string;
}

export const SUBJECT_TOPICS: Record<string, TopicEntry[]> = {
	fisica: [
		{ ca: 'Camp Gravitatori i Lleis de Kepler', es: 'Campo Gravitatorio y Leyes de Kepler' },
		{ ca: 'Camp Elèctric', es: 'Campo Eléctrico' },
		{ ca: 'Camp Magnètic i Inducció', es: 'Campo Magnético e Inducción' },
		{ ca: 'Ones i Òptica', es: 'Ondas y Óptica' },
		{ ca: 'Física Moderna', es: 'Física Moderna' },
	],
	'matematiques-ii': [
		{ ca: 'Àlgebra Lineal (Matrius i Sistemes)', es: 'Álgebra Lineal (Matrices y Sistemas)' },
		{ ca: "Geometria a l'Espai", es: 'Geometría en el Espacio' },
		{ ca: 'Anàlisi (Funcions, Límits, Continuïtat i Derivades)', es: 'Análisis (Funciones, Límites, Continuidad y Derivadas)' },
		{ ca: 'Anàlisi (Integrals, Àrees i Teoremes)', es: 'Análisis (Integrales, Áreas y Teoremas)' },
		{ ca: 'Probabilitat', es: 'Probabilidad' },
	],
	'macs-ii': [
		{ ca: 'Probabilitat', es: 'Probabilidad' },
		{ ca: 'Estadística Inferencial (Distribució Normal i Intervals)', es: 'Estadística Inferencial (Distribución Normal e Intervalos)' },
		{ ca: "Àlgebra (Matrius i Sistemes d'Equacions)", es: 'Álgebra (Matrices y Sistemas de Ecuaciones)' },
		{ ca: 'Anàlisi (Funcions, Límits i Derivades)', es: 'Análisis (Funciones, Límites y Derivadas)' },
		{ ca: 'Anàlisi (Integrals i Àrees)', es: 'Análisis (Integrales y Áreas)' },
	],
};

export function slugifyTopic(topic: string): string {
	return topic
		.normalize('NFD')
		.replace(/[̀-ͯ]/g, '')
		.toLowerCase()
		.replace(/[^a-z0-9]+/g, '-')
		.replace(/^-+|-+$/g, '');
}

export function getSubjectTopics(subjectSlug: string, lang: Lang = 'ca'): { label: string; slug: string; caLabel: string }[] {
	return (SUBJECT_TOPICS[subjectSlug] ?? []).map((t) => ({ label: t[lang], slug: slugifyTopic(t.ca), caLabel: t.ca }));
}
