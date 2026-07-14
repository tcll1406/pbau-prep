export const SUBJECT_TOPICS: Record<string, string[]> = {
	fisica: [
		'Camp Gravitatori i Lleis de Kepler',
		'Camp Elèctric',
		'Camp Magnètic i Inducció',
		'Ones i Òptica',
		'Física Moderna',
	],
	'matematiques-ii': [
		"Àlgebra Lineal (Matrius i Sistemes)",
		"Geometria a l'Espai",
		'Anàlisi (Funcions, Límits, Continuïtat i Derivades)',
		'Anàlisi (Integrals, Àrees i Teoremes)',
		'Probabilitat',
	],
	'macs-ii': [
		'Probabilitat',
		'Estadística Inferencial (Distribució Normal i Intervals)',
		"Àlgebra (Matrius i Sistemes d'Equacions)",
		'Anàlisi (Funcions, Límits i Derivades)',
		'Anàlisi (Integrals i Àrees)',
	],
};

export function slugifyTopic(topic: string): string {
	return topic
		.normalize('NFD')
		.replace(/[\u0300-\u036f]/g, '')
		.toLowerCase()
		.replace(/[^a-z0-9]+/g, '-')
		.replace(/^-+|-+$/g, '');
}

export function getSubjectTopics(subjectSlug: string): { label: string; slug: string }[] {
	return (SUBJECT_TOPICS[subjectSlug] ?? []).map((label) => ({ label, slug: slugifyTopic(label) }));
}
