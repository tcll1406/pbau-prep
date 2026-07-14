export interface Question {
	id: number;
	subject: string;
	topic: string;
	statement: string;
	option_a: string;
	option_b: string;
	option_c: string;
	option_d: string;
	correct: 'A' | 'B' | 'C' | 'D';
	feedback: string;
}

export async function fetchQuestions(filter: { subject: string; topic?: string }): Promise<Question[]> {
	const url = new URL(`${import.meta.env.SUPABASE_URL}/rest/v1/questions`);
	url.searchParams.set('select', '*');
	url.searchParams.set('subject', `eq.${filter.subject}`);
	if (filter.topic) {
		url.searchParams.set('topic', `eq.${filter.topic}`);
	}

	const res = await fetch(url, {
		headers: {
			apikey: import.meta.env.SUPABASE_ANON_KEY,
			Authorization: `Bearer ${import.meta.env.SUPABASE_ANON_KEY}`,
		},
	});

	if (!res.ok) {
		throw new Error(`Failed to fetch questions (${filter.subject}/${filter.topic ?? 'all'}): ${res.status} ${await res.text()}`);
	}

	return res.json();
}
