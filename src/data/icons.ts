const wrap = (inner: string) =>
	`<svg viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="1.75" stroke-linecap="round" stroke-linejoin="round">${inner}</svg>`;

export const ICONS: Record<string, string> = {
	book: wrap(
		'<path d="M4 4.5A2.5 2.5 0 0 1 6.5 2H20v17H6.5A2.5 2.5 0 0 0 4 21.5v-17Z"/><path d="M20 19H6.5A2.5 2.5 0 0 0 4 21.5"/>'
	),
	quiz: wrap(
		'<rect x="4" y="3" width="16" height="18" rx="2"/><path d="M8 8h8M8 12h8M8 16h5"/>'
	),
	document: wrap(
		'<path d="M6 2h9l5 5v15H6V2Z"/><path d="M15 2v5h5"/><path d="M9 13h6M9 17h6"/>'
	),
	random: wrap(
		'<path d="M4 6h3.5L15 18h4.5"/><path d="M4 18h3.5L15 6h4.5"/><path d="m16 3 3.5 3L16 9"/><path d="m16 15 3.5 3-3.5 3"/>'
	),
	redo: wrap('<path d="M3 12a9 9 0 1 0 3-6.7"/><path d="M3 4v5h5"/>'),
	calculator: wrap(
		'<rect x="5" y="2" width="14" height="20" rx="2"/><path d="M8 6h8"/><path d="M8 11h1M12 11h1M16 11h1M8 15h1M12 15h1M16 15h1M8 19h1M12 19h1M16 19h1"/>'
	),
	compass: wrap(
		'<circle cx="12" cy="12" r="9"/><path d="m15 9-2 6-6 2 2-6 6-2Z"/>'
	),
	lightbulb: wrap(
		'<path d="M9 18h6"/><path d="M10 22h4"/><path d="M12 2a6 6 0 0 0-4 10.5c.7.6 1 1.4 1 2.5h6c0-1.1.3-1.9 1-2.5A6 6 0 0 0 12 2Z"/>'
	),
	atom: wrap(
		'<circle cx="12" cy="12" r="1.5"/><ellipse cx="12" cy="12" rx="9" ry="3.5"/><ellipse cx="12" cy="12" rx="9" ry="3.5" transform="rotate(60 12 12)"/><ellipse cx="12" cy="12" rx="9" ry="3.5" transform="rotate(120 12 12)"/>'
	),
	function: wrap(
		'<path d="M9 21c1.5-4 2.5-11 2-15 0 0-.3-2 1.5-2s1.5 2 1.5 2"/><path d="M7 10h7"/>'
	),
	chart: wrap('<path d="M4 20V10M11 20V4M18 20v-7"/><path d="M2 20h20"/>'),
};
