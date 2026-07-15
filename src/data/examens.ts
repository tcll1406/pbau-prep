import type { Lang } from './i18n';

export const YEARS = [2024, 2025, 2026] as const;

export const CONVOCATORIES = [
	{ slug: 'juny', label: { ca: 'Juny', es: 'Junio' } },
	{ slug: 'jul', label: { ca: 'Juliol', es: 'Julio' } },
] as const;

export const EXAM_SUBJECTS = [
	{ slug: 'fisica', label: { ca: 'Física', es: 'Física' } },
	{ slug: 'matematiques-ii', label: { ca: 'Matemàtiques II', es: 'Matemáticas II' } },
	{
		slug: 'macs-ii',
		label: {
			ca: 'Matemàtiques Aplicades a les CCSS II (MACS)',
			es: 'Matemáticas Aplicadas a las CCSS II (MACS)',
		},
	},
] as const;

export function getExamArchive(subjectSlug: string, lang: Lang) {
	return [...YEARS].reverse().map((year) => ({
		year,
		convocatories: CONVOCATORIES.map((c) => ({
			label: c.label[lang],
			enunciatUrl: `/examens/${subjectSlug}/enunciat-${c.slug}-${year}.pdf`,
			criterisUrl: `/examens/${subjectSlug}/criteris-${c.slug}-${year}.pdf`,
		})),
	}));
}

export const OFFICIAL_DOCS: Record<string, { label: { ca: string; es: string }; url: string }[]> = {
	fisica: [
		{ label: { ca: 'Estructura i criteris', es: 'Estructura y criterios' }, url: '/examens/fisica/oficial/estructura-i-criteris.pdf' },
		{ label: { ca: 'Dades i formulari', es: 'Datos y formulario' }, url: '/examens/fisica/oficial/dades-i-formulari.pdf' },
		{ label: { ca: 'Model d’examen 0 (2025)', es: 'Modelo de examen 0 (2025)' }, url: '/examens/fisica/oficial/model-examen-0-2025.pdf' },
	],
	'matematiques-ii': [
		{
			label: { ca: 'Exercicis competencials', es: 'Ejercicios competenciales' },
			url: '/examens/matematiques-ii/oficial/exercicis-competencials.pdf',
		},
		{ label: { ca: 'Format de l’examen', es: 'Formato del examen' }, url: '/examens/matematiques-ii/oficial/format-examen.pdf' },
		{ label: { ca: 'Model d’examen', es: 'Modelo de examen' }, url: '/examens/matematiques-ii/oficial/model-examen.pdf' },
		{
			label: { ca: 'Especificacions i criteris de correcció', es: 'Especificaciones y criterios de corrección' },
			url: '/examens/matematiques-ii/oficial/especificacions-criteris-correccio.pdf',
		},
	],
	'macs-ii': [
		{ label: { ca: 'Estructura de l’examen', es: 'Estructura del examen' }, url: '/examens/macs-ii/oficial/examen-estructura.pdf' },
		{
			label: { ca: 'Model mostra d’examen', es: 'Modelo de muestra de examen' },
			url: '/examens/macs-ii/oficial/examen-model-mostra.pdf',
		},
		{
			label: { ca: 'Exercicis competencials', es: 'Ejercicios competenciales' },
			url: '/examens/macs-ii/oficial/exercicis-competencials.pdf',
		},
		{
			label: { ca: 'Especificacions i criteris', es: 'Especificaciones y criterios' },
			url: '/examens/macs-ii/oficial/especificacions-criteris.pdf',
		},
	],
};
