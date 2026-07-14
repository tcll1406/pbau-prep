import { unified } from 'unified';
import remarkParse from 'remark-parse';
import remarkMath from 'remark-math';
import remarkRehype from 'remark-rehype';
import rehypeKatex from 'rehype-katex';
import rehypeStringify from 'rehype-stringify';

const processor = unified()
	.use(remarkParse)
	.use(remarkMath)
	.use(remarkRehype)
	.use(rehypeKatex)
	.use(rehypeStringify);

export async function renderLatex(text: string): Promise<string> {
	const result = await processor.process(text);
	return String(result).replace(/^<p>|<\/p>\s*$/g, '');
}
