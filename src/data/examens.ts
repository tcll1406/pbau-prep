export const YEARS = [2024, 2025, 2026] as const;

export const CONVOCATORIES = [
	{ slug: 'juny', label: 'Juny' },
	{ slug: 'jul', label: 'Juliol' },
] as const;

export const EXAM_SUBJECTS = [
	{ slug: 'fisica', label: 'Física' },
	{ slug: 'matematiques-ii', label: 'Matemàtiques II' },
	{ slug: 'macs-ii', label: 'Matemàtiques Aplicades a les CCSS II (MACS)' },
] as const;

export function getExamArchive(subjectSlug: string) {
	return [...YEARS].reverse().map((year) => ({
		year,
		convocatories: CONVOCATORIES.map((c) => ({
			label: c.label,
			enunciatUrl: `/examens/${subjectSlug}/enunciat-${c.slug}-${year}.pdf`,
			criterisUrl: `/examens/${subjectSlug}/criteris-${c.slug}-${year}.pdf`,
		})),
	}));
}

export const OFFICIAL_DOCS: Record<string, { label: string; url: string }[]> = {
	fisica: [
		{ label: 'Estructura i criteris', url: '/examens/fisica/oficial/estructura-i-criteris.pdf' },
		{ label: 'Dades i formulari', url: '/examens/fisica/oficial/dades-i-formulari.pdf' },
		{ label: 'Model d’examen 0 (2025)', url: '/examens/fisica/oficial/model-examen-0-2025.pdf' },
	],
	'matematiques-ii': [
		{ label: 'Exercicis competencials', url: '/examens/matematiques-ii/oficial/exercicis-competencials.pdf' },
		{ label: 'Format de l’examen', url: '/examens/matematiques-ii/oficial/format-examen.pdf' },
		{ label: 'Model d’examen', url: '/examens/matematiques-ii/oficial/model-examen.pdf' },
		{ label: 'Especificacions i criteris de correcció', url: '/examens/matematiques-ii/oficial/especificacions-criteris-correccio.pdf' },
	],
	'macs-ii': [
		{ label: 'Estructura de l’examen', url: '/examens/macs-ii/oficial/examen-estructura.pdf' },
		{ label: 'Model mostra d’examen', url: '/examens/macs-ii/oficial/examen-model-mostra.pdf' },
		{ label: 'Exercicis competencials', url: '/examens/macs-ii/oficial/exercicis-competencials.pdf' },
		{ label: 'Especificacions i criteris', url: '/examens/macs-ii/oficial/especificacions-criteris.pdf' },
	],
};
