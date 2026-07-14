type QuizEl = HTMLElement & { pbauInit?: () => void };

function waitForPbauInit(quiz: QuizEl): Promise<() => void> {
	return new Promise((resolve) => {
		const check = () => {
			if (quiz.pbauInit) resolve(quiz.pbauInit);
			else requestAnimationFrame(check);
		};
		check();
	});
}

export async function applyQuizFilter(keepIds: Set<number>) {
	const quiz = document.getElementById('quiz') as QuizEl | null;
	if (!quiz) return;
	quiz.querySelectorAll<HTMLElement>('.question').forEach((q) => {
		if (!keepIds.has(Number(q.dataset.questionId))) q.remove();
	});
	const init = await waitForPbauInit(quiz);
	init();
}

export function getAllRenderedQuestionIds(): number[] {
	const quiz = document.getElementById('quiz');
	if (!quiz) return [];
	return Array.from(quiz.querySelectorAll<HTMLElement>('.question')).map((q) => Number((q as HTMLElement).dataset.questionId));
}
