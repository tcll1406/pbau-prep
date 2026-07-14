export interface Tip {
	id: string;
	category: string;
	title: string;
	content: string;
}

export const TIPS: Tip[] = [
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
			"La PBAU són 3 dies intensos d'exàmens, i la pressió i els nervis et poden jugar una mala passada. Mantén la calma, la feina de tot l'any ja està feta, només has d'aplicar el que saps i com més tranquil estiguis millor anirà.",
	},
	{
		id: 'tip_3',
		category: 'Preparació Pràctica',
		title: 'No copiis',
		content:
			"Si copies durant el curs a l'hora de les PBAU, com que és impossible copiar, no estaràs acostumat a fer un examen sol (aprofita els exàmens del curs per simular les condicions de les PBAU).",
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
			"Planifica les setmanes anteriors a les PBAU amb antelació, i no estudiis sense aturar cada dia, perquè t'acabaràs cansant. Fes pauses de 5 minuts cada hora de feina i no deixis de fer esport ni quedar amb els amics. L'oci ajuda a desconnectar.",
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
			"Llegeix bé els enunciats que et demanen i no contestis de manera automatitzada. Aprendre a resoldre exercicis de memòria pot fer que et confonguis durant les PBAU. Escriu tots els raonaments que facis a les teves respostes i raona si els resultats tenen sentit. El professor així veurà que saps el que fas.",
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
	{
		id: 'tip_10',
		category: 'Benestar Mental',
		title: "No t'agobiis",
		content:
			"Disfruta dels dos anys de Batxillerat, fes el que t'agrada i no et centris només amb els estudis. És important trobar un equilibri per no agobiar-te i estressar-te.",
	},
];
