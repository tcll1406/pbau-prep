// @ts-check
import { defineConfig } from 'astro/config';
import { unified } from '@astrojs/markdown-remark';
import remarkMath from 'remark-math';
import rehypeKatex from 'rehype-katex';
import sitemap from '@astrojs/sitemap';

// https://astro.build/config
export default defineConfig({
	site: 'https://paubalearsprep.es',
	integrations: [sitemap()],
	markdown: {
		processor: unified({
			remarkPlugins: [remarkMath],
			rehypePlugins: [rehypeKatex],
		}),
	},
	vite: {
		// Keep every build script as an external /_astro/*.js file (none inlined),
		// so a strict CSP script-src can be 'self' with no inline-script exceptions.
		build: { assetsInlineLimit: 0 },
	},
});
