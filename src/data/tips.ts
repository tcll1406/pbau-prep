export interface Tip {
	id: string;
	category: string;
	title: string;
	content: string;
}

export const TIPS: Record<'ca' | 'es', Tip[]> = {
	ca: [
		{
			id: 'tip_1',
			category: "Hàbits d'Estudi",
			title: 'Sigues constant',
			content:
				"No treu la millor nota el que estudia més durant les darreres setmanes, sinó qui és resilient durant el curs, es prepara cada examen i fa la feina diària.",
		},
		{
			id: 'tip_2',
			category: "Gestió de l'Estrès",
			title: 'No et posis nerviós',
			content:
				"La PAU són 3 dies intensos d'exàmens, i la pressió i els nervis et poden jugar una mala passada. Mantén la calma, la feina de tot l'any ja està feta, només has d'aplicar el que saps i com més tranquil estiguis millor anirà.",
		},
		{
			id: 'tip_3',
			category: 'Preparació Pràctica',
			title: 'No copiis',
			content:
				"Si copies durant el curs a l'hora de les PAU, com que és impossible copiar, no estaràs acostumat a fer un examen sol (aprofita els exàmens del curs per simular les condicions de les PAU).",
		},
		{
			id: 'tip_4',
			category: "Tàctica d'Examen",
			title: 'Llegeix els criteris de correcció',
			content:
				"Disponibles al Learning Hub a la secció d'exàmens anteriors. Potser creus que fas coses bé, però realment no fas tot el que et demanen, per tant, a l'hora de practicar amb els exàmens anteriors, assegura't que contestes allò que et demanen i que es valora als criteris.",
		},
		{
			id: 'tip_5',
			category: 'Gestió del Temps',
			title: "Organitza't",
			content:
				"Planifica les setmanes anteriors a les PAU amb antelació, i no estudiis sense aturar cada dia, perquè t'acabaràs cansant. Fes pauses de 5 minuts cada hora de feina i no deixis de fer esport ni quedar amb els amics. L'oci ajuda a desconnectar.",
		},
		{
			id: 'tip_6',
			category: 'Estratègia de Notes',
			title: 'Tingues els pesos de la nota en compte',
			content:
				"El Batxillerat compta un 60% de la nota, així que no afluixis durant el curs. També dona especial importància a les assignatures de pujar nota, ja que poden augmentar fins a 2 punts la teva nota, mentre que les de la fase general només compten 0.8.",
		},
		{
			id: 'tip_7',
			category: 'Metodologia',
			title: 'Pensa i estructura',
			content:
				"Llegeix bé els enunciats que et demanen i no contestis de manera automatitzada. Aprendre a resoldre exercicis de memòria pot fer que et confonguis durant les PAU. Escriu tots els raonaments que facis a les teves respostes i raona si els resultats tenen sentit. El professor així veurà que saps el que fas.",
		},
		{
			id: 'tip_8',
			category: 'Eines Acadèmiques',
			title: "Aprèn a emprar la IA",
			content:
				"Utilitza la IA com a una ajuda per enviar correus, resoldre algun dubte puntual, preparar quizs d'aprenentatge, però sigues sempre crític amb les seves respostes i abans de demanar-li ajuda, prova de resoldre els problemes pel teu compte.",
		},
		{
			id: 'tip_9',
			category: 'Suport Acadèmic',
			title: 'Demana consells i ajuda als professors',
			content:
				"Sempre estaran disposats a ajudar-te, així que demana una tutoria per a resoldre dubtes o demanar consells de com millorar.",
		},
	],
	es: [
		{
			id: 'tip_1',
			category: 'Hábitos de Estudio',
			title: 'Sé constante',
			content:
				'No saca la mejor nota quien estudia más durante las últimas semanas, sino quien es resiliente durante el curso, se prepara cada examen y hace el trabajo diario.',
		},
		{
			id: 'tip_2',
			category: 'Gestión del Estrés',
			title: 'No te pongas nervioso',
			content:
				'La PAU son 3 días intensos de exámenes, y la presión y los nervios te pueden jugar una mala pasada. Mantén la calma, el trabajo de todo el año ya está hecho, solo tienes que aplicar lo que sabes y cuanto más tranquilo estés mejor irá.',
		},
		{
			id: 'tip_3',
			category: 'Preparación Práctica',
			title: 'No copies',
			content:
				'Si copias durante el curso, a la hora de la PAU, como es imposible copiar, no estarás acostumbrado a hacer un examen solo (aprovecha los exámenes del curso para simular las condiciones de la PAU).',
		},
		{
			id: 'tip_4',
			category: 'Táctica de Examen',
			title: 'Lee los criterios de corrección',
			content:
				'Disponibles en el Learning Hub, en la sección de exámenes anteriores. Quizá creas que haces las cosas bien, pero realmente no haces todo lo que te piden, así que, al practicar con los exámenes anteriores, asegúrate de contestar lo que te piden y lo que se valora en los criterios.',
		},
		{
			id: 'tip_5',
			category: 'Gestión del Tiempo',
			title: 'Organízate',
			content:
				'Planifica las semanas anteriores a la PAU con antelación, y no estudies sin parar cada día, porque acabarás cansándote. Haz pausas de 5 minutos cada hora de trabajo y no dejes de hacer deporte ni de quedar con los amigos. El ocio ayuda a desconectar.',
		},
		{
			id: 'tip_6',
			category: 'Estrategia de Notas',
			title: 'Ten en cuenta los pesos de la nota',
			content:
				'El Bachillerato cuenta un 60% de la nota, así que no aflojes durante el curso. Da también especial importancia a las asignaturas de subir nota, ya que pueden aumentar hasta 2 puntos tu nota, mientras que las de la fase general solo cuentan 0.8.',
		},
		{
			id: 'tip_7',
			category: 'Metodología',
			title: 'Piensa y estructura',
			content:
				'Lee bien los enunciados que te piden y no contestes de forma automatizada. Aprender a resolver ejercicios de memoria puede hacer que te confundas durante la PAU. Escribe todos los razonamientos que hagas en tus respuestas y razona si los resultados tienen sentido. El profesor verá así que sabes lo que haces.',
		},
		{
			id: 'tip_8',
			category: 'Herramientas Académicas',
			title: 'Aprende a usar la IA',
			content:
				'Utiliza la IA como ayuda para enviar correos, resolver alguna duda puntual, preparar cuestionarios de aprendizaje, pero sé siempre crítico con sus respuestas y, antes de pedirle ayuda, intenta resolver los problemas por tu cuenta.',
		},
		{
			id: 'tip_9',
			category: 'Apoyo Académico',
			title: 'Pide consejos y ayuda a los profesores',
			content:
				'Siempre estarán dispuestos a ayudarte, así que pide una tutoría para resolver dudas o pedir consejos sobre cómo mejorar.',
		},
	],
};
