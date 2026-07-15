export interface SpecificSubject {
	grade: number;
	weight: number;
}

export interface GradeResult {
	faseGeneralAvg: number;
	valid: boolean;
	acces: number | null;
	especifica: number;
	admissio: number | null;
}

export function specificSubjectPoints(grade: number, weight: number): number {
	return grade > 5 ? weight * grade : 0;
}

export function calculateGrade(
	batxillerat: number,
	faseGeneralExercicis: number[],
	especifica: SpecificSubject[]
): GradeResult {
	const faseGeneralAvg = faseGeneralExercicis.reduce((a, b) => a + b, 0) / faseGeneralExercicis.length;
	const especificaTotal = especifica.reduce((sum, s) => sum + specificSubjectPoints(s.grade, s.weight), 0);

	if (faseGeneralAvg < 4) {
		return { faseGeneralAvg, valid: false, acces: null, especifica: especificaTotal, admissio: null };
	}

	const accesRaw = 0.6 * batxillerat + 0.4 * faseGeneralAvg;
	const acces = Math.min(10, Math.max(5, accesRaw));
	const admissio = Math.min(14, acces + especificaTotal);

	return { faseGeneralAvg, valid: true, acces, especifica: especificaTotal, admissio };
}
