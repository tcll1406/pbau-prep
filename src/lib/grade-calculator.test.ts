import { describe, expect, it } from 'vitest';
import { calculateGrade, specificSubjectPoints } from './grade-calculator';

describe('specificSubjectPoints', () => {
	it('counts a grade strictly greater than 5', () => {
		expect(specificSubjectPoints(6, 0.2)).toBeCloseTo(1.2);
	});

	it('does not count a grade of exactly 5', () => {
		expect(specificSubjectPoints(5, 0.2)).toBe(0);
	});

	it('does not count a grade below 5', () => {
		expect(specificSubjectPoints(3, 0.1)).toBe(0);
	});
});

describe('calculateGrade', () => {
	it('computes a straightforward valid case with no electives', () => {
		const result = calculateGrade(8, [8, 8, 8, 8, 8], []);
		expect(result.valid).toBe(true);
		expect(result.faseGeneralAvg).toBe(8);
		expect(result.acces).toBeCloseTo(8);
		expect(result.especifica).toBe(0);
		expect(result.admissio).toBeCloseTo(8);
	});

	it('is invalid when fase general average is below 4', () => {
		const result = calculateGrade(9, [3.9, 3.9, 3.9, 3.9, 3.9], []);
		expect(result.valid).toBe(false);
		expect(result.acces).toBeNull();
		expect(result.admissio).toBeNull();
	});

	it('is valid at exactly a 4.0 fase general average (boundary)', () => {
		const result = calculateGrade(5, [4, 4, 4, 4, 4], []);
		expect(result.valid).toBe(true);
	});

	it('clamps nota d’accés to a 5 minimum', () => {
		const result = calculateGrade(0, [4, 4, 4, 4, 4], []);
		expect(result.valid).toBe(true);
		expect(result.acces).toBe(5);
	});

	it('clamps nota d’accés to a 10 maximum', () => {
		const result = calculateGrade(15, [10, 10, 10, 10, 10], []);
		expect(result.valid).toBe(true);
		expect(result.acces).toBe(10);
	});

	it('adds weighted electives only when their grade is strictly greater than 5', () => {
		const result = calculateGrade(8, [8, 8, 8, 8, 8], [
			{ grade: 8, weight: 0.2 },
			{ grade: 5, weight: 0.1 },
		]);
		expect(result.especifica).toBeCloseTo(1.6);
		expect(result.admissio).toBeCloseTo(8 + 1.6);
	});

	it('caps nota d’admissió at 14', () => {
		const result = calculateGrade(10, [10, 10, 10, 10, 10], [
			{ grade: 10, weight: 1 },
			{ grade: 10, weight: 1 },
		]);
		expect(result.acces).toBe(10);
		expect(result.especifica).toBe(20);
		expect(result.admissio).toBe(14);
	});
});
