export type Lang = 'ca' | 'es';

export const NAV_LINKS: Record<Lang, { href: string; label: string }[]> = {
	ca: [
		{ href: '/', label: 'Inici' },
		{ href: '/learning', label: 'Learning Hub' },
		{ href: '/career', label: 'Career Hub' },
		{ href: '/faq', label: 'FAQ' },
		{ href: '/about', label: 'Sobre nosaltres' },
	],
	es: [
		{ href: '/es', label: 'Inicio' },
		{ href: '/es/learning', label: 'Learning Hub' },
		{ href: '/es/career', label: 'Career Hub' },
		{ href: '/es/faq', label: 'FAQ' },
		{ href: '/es/about', label: 'Sobre nosotros' },
	],
};

export const UI: Record<Lang, { login: string; logout: string }> = {
	ca: { login: 'Inicia sessió', logout: 'Tancar sessió' },
	es: { login: 'Iniciar sesión', logout: 'Cerrar sesión' },
};
