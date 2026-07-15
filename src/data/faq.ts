export interface FaqItem {
	question: string;
	answer: string;
}

export const FAQ_ITEMS: Record<'ca' | 'es', FaqItem[]> = {
	ca: [
		{
			question: "Com es calcula la nota d'accés a la universitat (Fase General)?",
			answer:
				"La nota d'accés es calcula sumant el 60% de la nota mitjana de Batxillerat i el 40% de la nota de la Fase General de la PAU. Aquesta nota pot arribar a un màxim de 10 punts i té validesa indefinida.",
		},
		{
			question: "Què és la Fase d'Admissió (o específica)?",
			answer:
				"És una fase voluntària que permet als estudiants sumar fins a 4 punts addicionals a la seva nota d'accés, arribant a un màxim de 14. Serveix per millorar la nota per entrar a graus amb alta demanda.",
		},
		{
			question: 'Com funcionen les ponderacions de 0.1 i 0.2?',
			answer:
				"A la Fase d'Admissió, les notes de les assignatures aprovades (5 o més) es multipliquen per 0.1 o 0.2 depenent de la seva relació amb el grau universitari que vols cursar. Només sumen les dues millors notes un cop ponderades.",
		},
		{
			question: "Què passa si trec menys d'un 5 en una assignatura de la Fase d'Admissió?",
			answer:
				"Perquè una assignatura de la Fase d'Admissió ponderi i sumi punts a la teva nota final, has de treure com a mínim un 5. Si treus menys, simplement no compta, però no et resta nota.",
		},
		{
			question: 'Quant de temps són vàlides les notes de la PAU?',
			answer:
				"La nota de la Fase General té validesa indefinida (no caduca mai). En canvi, les notes de les assignatures de la Fase d'Admissió només són vàlides per als dos cursos acadèmics següents a la superació de les mateixes.",
		},
		{
			question: 'Em puc tornar a presentar per pujar nota?',
			answer:
				"Sí, et pots presentar a convocatòries posteriors per millorar la nota, tant de la Fase General com de la Fase d'Admissió. Sempre se't guardarà la nota més alta que hagis obtingut.",
		},
		{
			question: 'Quines assignatures són obligatòries a la Fase General?',
			answer:
				"A les Illes Balears, la Fase General consta de Llengua Castellana, Llengua Catalana, Llengua Estrangera (normalment Anglès), Història d'Espanya o Història de la Filosofia, i l'assignatura troncal de modalitat.",
		},
		{
			question: "Què és la 'Nota de Corte' (Nota de Tall)?",
			answer:
				"És la nota del darrer alumne que va entrar en un grau universitari l'any anterior. No és una nota fixada per la universitat, sinó que depèn de l'oferta de places i la demanda dels estudiants.",
		},
		{
			question: 'Puc examinar-me a la Fase d\'Admissió d\'una assignatura que no he cursat a Batxillerat?',
			answer:
				"Sí, pots examinar-te de qualsevol assignatura de modalitat a la Fase d'Admissió, independentment de si l'has cursada o no durant el teu Batxillerat, sempre que estigui inclosa a l'oferta de la PAU.",
		},
		{
			question: "On puc descarregar els exàmens d'anys anteriors de la UIB?",
			answer:
				"A la secció 'Learning Hub' de la nostra plataforma trobaràs un arxiu organitzat amb els exàmens recents, o pots accedir directament al repositori oficial de la UIB a través dels enllaços proporcionats.",
		},
	],
	es: [
		{
			question: '¿Cómo se calcula la nota de acceso a la universidad (Fase General)?',
			answer:
				'La nota de acceso se calcula sumando el 60% de la nota media de Bachillerato y el 40% de la nota de la Fase General de la PAU. Esta nota puede llegar a un máximo de 10 puntos y tiene validez indefinida.',
		},
		{
			question: '¿Qué es la Fase de Admisión (o específica)?',
			answer:
				'Es una fase voluntaria que permite a los estudiantes sumar hasta 4 puntos adicionales a su nota de acceso, llegando a un máximo de 14. Sirve para mejorar la nota para entrar en grados con alta demanda.',
		},
		{
			question: '¿Cómo funcionan las ponderaciones de 0.1 y 0.2?',
			answer:
				'En la Fase de Admisión, las notas de las asignaturas aprobadas (5 o más) se multiplican por 0.1 o 0.2 según su relación con el grado universitario que quieres cursar. Solo suman las dos mejores notas una vez ponderadas.',
		},
		{
			question: '¿Qué pasa si saco menos de un 5 en una asignatura de la Fase de Admisión?',
			answer:
				'Para que una asignatura de la Fase de Admisión pondere y sume puntos a tu nota final, debes sacar como mínimo un 5. Si sacas menos, simplemente no cuenta, pero no te resta nota.',
		},
		{
			question: '¿Cuánto tiempo son válidas las notas de la PAU?',
			answer:
				'La nota de la Fase General tiene validez indefinida (no caduca nunca). En cambio, las notas de las asignaturas de la Fase de Admisión solo son válidas durante los dos cursos académicos siguientes a su superación.',
		},
		{
			question: '¿Me puedo volver a presentar para subir nota?',
			answer:
				'Sí, puedes presentarte a convocatorias posteriores para mejorar la nota, tanto de la Fase General como de la Fase de Admisión. Siempre se te guardará la nota más alta que hayas obtenido.',
		},
		{
			question: '¿Qué asignaturas son obligatorias en la Fase General?',
			answer:
				'En las Islas Baleares, la Fase General consta de Lengua Castellana, Lengua Catalana, Lengua Extranjera (normalmente Inglés), Historia de España o Historia de la Filosofía, y la asignatura troncal de modalidad.',
		},
		{
			question: "¿Qué es la 'Nota de Corte'?",
			answer:
				'Es la nota del último alumno que entró en un grado universitario el año anterior. No es una nota fijada por la universidad, sino que depende de la oferta de plazas y la demanda de los estudiantes.',
		},
		{
			question: '¿Puedo examinarme en la Fase de Admisión de una asignatura que no he cursado en Bachillerato?',
			answer:
				'Sí, puedes examinarte de cualquier asignatura de modalidad en la Fase de Admisión, independientemente de si la has cursado o no durante tu Bachillerato, siempre que esté incluida en la oferta de la PAU.',
		},
		{
			question: '¿Dónde puedo descargar los exámenes de años anteriores de la UIB?',
			answer:
				"En la sección 'Learning Hub' de nuestra plataforma encontrarás un archivo organizado con los exámenes recientes, o puedes acceder directamente al repositorio oficial de la UIB a través de los enlaces proporcionados.",
		},
	],
};
