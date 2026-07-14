# CLAUDE.md — PBAU Prep

Source of truth for this project. Read fully before doing anything.

## 0. How to work on this project

- **Plan before building.** Before writing code for a feature, give a short plan (files touched, approach, any open decision) and wait for a "go."
- **One stage at a time** (§7). Finish and confirm before starting the next.
- **Keep explanations short.** 2–3 sentence summary of what changed + any decision needed. No file-by-file walkthroughs unless asked.
- **Ask only when genuinely ambiguous.** Otherwise make the routine call yourself.
- **Keep this file updated.** Append lasting decisions to §8. Don't let it re-grow stale — when a decision here gets superseded, correct it in place rather than piling on a contradicting note elsewhere.
- **Simplicity first.** No extra dependencies, abstractions, or future-proofing a stage doesn't need. No unrelated refactors or cleanup while implementing a feature.

## 1. What this is

A free, bilingual (Catalan primary / Spanish secondary) web app helping Balearic Islands students prepare for the **PBAU** (UIB university entrance exam). Audience: 2nd-year Bachillerato, mobile as much as desktop.

Priorities: (1) genuinely useful, (2) clean and reliable, (3) efficient to build. Not commercial — no marketing, paywalls, or accounts required to access content.

## 2. Tech stack (decided — do not substitute)

- **Astro** — content-driven, mostly static, minimal JS.
- **KaTeX** — LaTeX rendering in theory and quiz content.
- **Supabase** — database *and* auth, from Stage 5 onward. No separate auth provider.
- **Netlify** — deployment.
- Vanilla JS/CSS for interactivity and styling. No component framework (React etc.) unless a stage genuinely needs one.

**Out of scope — do not add:** Firebase, Next.js, Tailwind (or any CSS framework beyond trivial helpers), analytics (PostHog etc.), SEO tooling, state-management libraries.

> A `style.json` was provided as a visual reference (§3). Its own `tech_stack`/`methodology` fields describe a *different* project (Next.js, Tailwind, Firebase Auth, PostHog, SurferSEO) — that part is not used. Only its palette/component/typography direction applies here, implemented in plain CSS.

## 3. Visual design system

Currently unstyled (system font, black/white, default form controls) — this is the first real design pass. Direction distilled from `style.json`:

- **Aesthetic:** modern EdTech/SaaS — premium, professional, efficient, high contrast.
- **Palette** (as CSS custom properties):
  - Background: `#0A1128` (navy) — surfaces/cards one step up: `#1E1E1E`-ish, slightly lighter than base.
  - Accent: `#3B82F6` (blue), gold `#FACC15` as a secondary/highlight accent (e.g. success glow, key CTAs).
  - Text: near-white primary, muted gray (`neutral-400`-ish) secondary.
- **Components:** rounded cards (`~0.75–1rem` radius), subtle borders, hover lift (`translateY(-4px)` + transition), glow effect for "you meet the cutoff" state (reuses the existing green-glow requirement in §5, recolor to the accent palette).
- **Nav:** glassmorphism (blurred, semi-transparent) header, sticky.
- **Typography:** clean sans-serif, tight tracking on headings, relaxed line-height on theory/body text.
- Implement via CSS custom properties in `Base.astro` (or a shared stylesheet) so every page/component draws from the same tokens — do not hardcode hex values per-component.

## 4. Content & subjects

Source content lives in `PBAUPrepFiles/` (untracked). Raw scrapes/exports used to build data files (`notas_de_corte.json`, `FQA.json`) also stay untracked at repo root — only the processed data actually consumed by the app is committed (see §8, Stage 3).

**Subjects and quiz topics (exact labels):**

| Física | Matemàtiques II | MACS II |
|---|---|---|
| Camp Gravitatori i Lleis de Kepler | Àlgebra Lineal (Matrius i Sistemes) | Probabilitat |
| Camp Elèctric | Geometria a l'Espai | Estadística Inferencial (Distribució Normal i Intervals) |
| Camp Magnètic i Inducció | Anàlisi (Funcions, Límits, Continuïtat i Derivades) | Àlgebra (Matrius i Sistemes d'Equacions) |
| Ones i Òptica | Anàlisi (Integrals, Àrees i Teoremes) | Anàlisi (Funcions, Límits i Derivades) |
| Física Moderna | Probabilitat | Anàlisi (Integrals i Àrees) |

Subject slugs (used across routes/data): `fisica`, `matematiques-ii`, `macs-ii`.

Quizzes (Stage 5, not yet built): 3 subjects × 5 topics × 10 questions = 150 total, provided as clean JSON (`id`, `subject`, `topic`, `statement`, `options` A–D, `correct`, `feedback`; may contain LaTeX). Do not hardcode questions in components.

Exam archive: official UIB exams + correction criteria, Física / Matemàtiques II / MACS, convocatòries Juny + Juliol, years 2024–2026, each `Enunciat…` paired with a `Criteris…`, plus official spec/structure docs. Already built (§7).

## 5. Feature rules

- **Theory pages:** subject Markdown → KaTeX, mobile-responsive, formulas must not overflow narrow screens.
- **Exam archive:** grouped by year → convocatòria, Enunciat linked with its matching Criteris; official spec docs in their own area.
- **Grade calculator — canonical formula (implemented, do not re-derive differently):**
  - *Nota d'accés* = 0.6 × mitjana de batxillerat + 0.4 × nota fase general (average of the 5 core PBAU exercises, 0–10 each). Invalid if that fase general average is **below 4**. Clamped to **[5, 10]**.
  - *Nota específica* = a×M1 + b×M2 — up to two fase específica subjects, each counted **only if its grade is strictly greater than 5**; weights a, b each chosen as 0.1 or 0.2 per subject (degree-dependent, student picks); take the two subjects giving the best result.
  - *Nota d'admissió* = Nota d'accés + Nota específica, capped at **14**.
  - Display all three, rounded to 3 decimals.
- **Quiz engine:** subject → topic (or full subject) → multiple-choice A–D → instant feedback (correct/incorrect, highlight right answer, show `feedback` explanation, LaTeX renders). Session-scoped score tracking.
- **Auth + progress (Stage 5, optional, do not build early):** Supabase Auth; content fully usable logged-out; logged-in users get saved quiz progress via Supabase with RLS.

## 6. Site map

Persistent header nav (glass, sticky — §3): Inici · Learning Hub · Career Hub · FAQ · Sobre nosaltres.

- **`/` (Inici):** punchy hook, one-line mission, two primary CTAs (Learning Hub, Career Hub). Secondary links live in nav/footer only.
- **`/learning` + `/learning/[subject]`:** index links the 3 subjects; each subject page = theory summary + 5 topic quizzes (10 q. each, Stage 5) + previous exams, single scrollable page (not tabs) linking out to `/teoria/[subject]` and `/examens/[subject]` rather than re-embedding their content.
- **`/career`:** Degree Selector (searchable table, latest nota de tall, mandatory disclaimer that cutoffs vary yearly and aren't a guarantee) + sticky Grade Calculator (§5 formula; glows on meeting/exceeding the selected degree's cutoff). Selecting a degree sets the calculator's target cutoff.
- **`/faq`:** accordion, PBAU administrative/bureaucratic questions (dates, convocatòries, accés vs admissió, resits).
- **`/about`:** mission, Balearic-specific positioning, concise.

## 7. Build stages

1. ✅ Skeleton + KaTeX + Física theory page, deployed to Netlify.
2. ✅ Exam archive, all three subjects.
3. ✅ Site restructure — global nav, Learning/Career Hubs, FAQ, About, grade calculator, degree selector.
4. ✅ Visual design pass (§3) — dark navy/blue/gold theme applied site-wide.
5. ✅ Quiz engine + Supabase — 150 questions loaded, quiz UI with instant feedback, shuffled per session.
6. ⬜ Auth + progress (optional stretch) — Supabase Auth + RLS-protected saved scores.

## 8. Decisions log

- **Stage 1:** Node v22 LTS via nodejs.org `.pkg` (no sudo for Homebrew). Astro `minimal` + TS `strict` template. KaTeX via `remark-math` + `rehype-katex` through `@astrojs/markdown-remark`. Theory content as an Astro content collection (`src/content/teoria/`, config `src/content.config.ts`). Netlify site `pbau-prep` (https://pbau-prep.netlify.app) deployed manually via CLI; **not yet linked to the GitHub repo** for continuous deployment (needs an interactive `netlify init` / dashboard step — do this manually).
- **Stage 3** (superseded the Stage 1 "static route per subject" plan): theory pages are one dynamic route `src/pages/teoria/[slug].astro` over the content collection, not per-subject static files. Same pattern for exams: `src/pages/examens/[subject].astro` over `src/data/examens.ts`.
  - Shared layout `src/layouts/Base.astro` holds the header nav + hamburger toggle (vanilla JS, <40rem breakpoint).
  - `/learning/[subject]` links out to theory/exam pages rather than embedding, to avoid duplicating long KaTeX output; quiz section shows a "Properament" placeholder per topic (topics from `src/data/subjects.ts`) until Stage 5.
  - Career Hub data: `notas_de_corte.json` (5,439 scraped entries) + `FQA.json` normalized by a one-off script into `public/data/degrees.json` (`id`, `name`, `university`, `city`, `duration`, `cutoff`; `cutoff: null` for "No aplica"/unparseable). Fetched client-side (~830KB, not bundled); Career Hub search only renders once query ≥ 2 chars, capped at 100 rows. FAQ content was small enough to hand-copy into `src/data/faq.ts` directly. Accordion uses native `<details>/<summary>` — no JS.
  - Raw `notas_de_corte.json` / `FQA.json` at repo root stay untracked, same as `PBAUPrepFiles/`; only the processed data actually used ships.
- **Stage 4 (visual design pass):** tokens defined as CSS custom properties in `Base.astro`'s `<style is:global>` (`--bg`, `--surface`, `--surface-hover`, `--border`, `--text`, `--text-muted`, `--accent`, `--accent-strong`, `--gold`, `--success`, `--radius`, `--radius-sm`, `--font`) — every page's existing per-component `<style>` block was updated to reference these rather than introducing shared components/classes. KaTeX needed no color override; it inherits `color` from the page, so it renders light-on-dark automatically. Chose a navy-tinted surface color (`#131b3a`) rather than style.json's neutral-gray `#1E1E1E` option, to stay consistent with the navy background variant.
- **Stage 5 (quiz engine + Supabase):**
  - The 150 questions weren't provided as JSON — they already existed as three highly regular Markdown files in `PBAUPrepFiles/*/QUIZS *.md` (confirmed with the user, parsed directly instead of waiting). One-off parser script (not committed) extracted `{subject, topic, statement, option_a..d, correct, feedback}` into `supabase/schema.sql` + `supabase/seed.sql` (both committed — they're the reproducible source of the question bank, safe since they contain no secrets). Fixed one source typo (topic "Continuitat" → "Continuïtat" to match `subjects.ts`) and one parser bug (the last question in each topic section picked up the Markdown `---` separator into its `feedback` field — fixed before the final seed).
  - Supabase used only as a public read-only question store — no `@supabase/supabase-js` dependency added. `getStaticPaths()` in the quiz routes calls Supabase's PostgREST endpoint directly with native `fetch()` at **build time only** (env vars `SUPABASE_URL` / `SUPABASE_ANON_KEY`, no `PUBLIC_` prefix — never shipped to the browser). RLS on `questions` allows public `select` only; no write policies, so inserts/updates only happen via the SQL editor.
  - KaTeX in question text is also rendered at build time, reusing the Stage 1 stack (`remark-math` + `rehype-katex`) via a new small pipeline (`src/lib/render-latex.ts`) built from `unified` + `remark-parse` + `remark-rehype` + `rehype-stringify` (added as explicit dependencies) — processes each statement/option/feedback string independently, output inserted with `set:html`.
  - Routes: `src/pages/learning/[subject]/quiz/index.astro` (all 50 questions/subject) and `.../quiz/[topic].astro` (10 questions/topic, topic slugs derived in `src/data/subjects.ts` via `slugifyTopic`/`getSubjectTopics`). Shared rendering + interaction logic lives in `src/components/Quiz.astro` — all questions for a page are pre-rendered into hidden DOM blocks at build time; a client-side script (vanilla JS, no new dependency) shuffles question and option order per page load, reveals correct/incorrect + feedback via `data-correct` attributes (not letter-tracking, so shuffling doesn't need remapping), and tracks a session-only score. Letters (A–D) are assigned dynamically after shuffling so they always read in visual order.
  - Auth/persisted progress remains Stage 6 (optional stretch, not started) — score tracking here resets on refresh.

## 9. Conventions

- Catalan is the default UI/content language; don't hardcode strings in a way that blocks adding Spanish later.
- Mobile-first; test narrow viewports, especially math rendering and the Career Hub's sticky calculator.
- Keep PDFs/content files in clear, predictable folders.
