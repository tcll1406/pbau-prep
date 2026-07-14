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
6. ✅ Auth + progress + Home/Learning Hub/Career Hub/FAQ/About redesign.
7. ✅ Grammar/language fixes, auth UX (icon nav), rename "Falles" → "Test d'errors", quiz-filter bug fix, site audit.

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
- **Stage 6 (auth + progress + Home/Learning Hub/Career Hub/FAQ/About redesign):**
  - Confirmed with the user before building: the old "complete 50-question quiz" route was dropped in favor of Topics + Random(10) widgets on the Qüestionaris index; auth uses email+password (not magic link).
  - `@supabase/supabase-js` added as a real dependency for this stage only (Stage 5 deliberately avoided it) — client-side session management (login/logout/persisted session/`onAuthStateChange`) isn't worth hand-rolling. `src/lib/supabase-client.ts` is the singleton browser client, using `PUBLIC_SUPABASE_URL`/`PUBLIC_SUPABASE_ANON_KEY` (Vite `PUBLIC_` prefix ships them to the browser — same anon key already used at build time in Stage 5, safe under RLS). It's imported in `Base.astro`'s nav (auth state), `Quiz.astro` (attempt upserts), the two `.../quiz/falles.astro` /`faq.astro` pages (session-gated queries/inserts), and `login.astro`.
  - `/login` toggles sign-in/sign-up in one page/form; on sign-up shows a "check your email" message rather than assuming immediate login (Supabase's default email-confirmation setting).
  - Two new tables (`supabase/schema-stage6.sql`, same manual paste-into-SQL-editor flow as Stage 5): `question_attempts` (one row per `user_id`+`question_id`, upserted on every answer — this single table drives both progress coloring and the failed-questions quiz, no separate "session" table needed) and `faq_questions` (stores the submitter's email directly rather than joining `auth.users`, so questions can be read from the SQL editor and answered manually by email — no in-app reply flow was built, per the user's instruction).
  - Progress coloring (green/red on topic widgets) uses a **50% correct-of-attempted threshold, only when all 10 questions in that topic have been attempted** — this specific threshold was not specified, it's a reasonable default call, safe to revisit.
  - Failed-questions quiz (`.../quiz/falles.astro`) and the new Random-10 quiz (`.../quiz/aleatori.astro`) both reuse `Quiz.astro` fully rather than forking it: a `manualInit` prop skips `Quiz.astro`'s automatic `setup()` and instead exposes `quizEl.pbauInit`, and a shared `src/lib/quiz-filter-client.ts` (`applyQuizFilter`, `getAllRenderedQuestionIds`) removes non-matching pre-rendered `.question` blocks before calling it — one mechanism, two call sites (falles filters by a Supabase query of past-wrong question IDs; aleatori filters by a client-side random sample of the already-rendered IDs, no extra query needed).
  - Icons are hand-authored inline SVGs in `src/data/icons.ts` (`ICONS.book`, `.quiz`, `.document`, `.random`, `.redo`, `.calculator`, `.compass`, `.lightbulb`, `.atom`, `.function`, `.chart`) — no icon library dependency.
  - Home page (`src/pages/index.astro`) is the one intentional exception to the dark theme: a light beige section (`--bg-light`/`--surface-light`/`--border-light`/`--text-on-light`/`--text-muted-on-light`, added alongside the existing dark tokens in `Base.astro`) between the dark hero and dark footer, per the user's exact copy.
  - `/learning/[subject]/quiz` was repurposed from "full 50-question quiz" into the topic/random/falles widget index; the old full-quiz route no longer exists.
  - `/examens/[subject]` restyled to year-card widgets with real button links (not underlined text) for Enunciat/Criteris and Documents oficials — no data-layer change, `src/data/examens.ts` untouched.
  - Career Hub filters (city/university dropdowns populated from `degrees.json`, "assolible amb la meva nota" checkbox comparing `cutoff` against the live-computed `admissió`) combine with the existing text search in one `renderResults()` — required reordering the script so `renderResults`/`searchInput`/filter elements are declared before the first `compute()` call (which now also triggers a re-render), avoiding a temporal-dead-zone bug caught during type-checking.
  - `tips.json` (10 tips) hand-copied into `src/data/tips.ts`, same treatment as Stage 3's FAQ data; rendered as a card grid under `/about#tips`, linked from the Home page's "Tips per triomfar" card.
  - Layout widths: pages with grid/widget content widened to 64–75rem (`career.astro`, `learning/*`, `examens/[subject].astro`, `about.astro`, nav in `Base.astro`); long-form reading pages (`teoria/[slug].astro`, `faq.astro`, individual quiz pages) intentionally kept at 42rem for readability; `login.astro` kept narrow (26rem, form-only).

- **Stage 7 (grammar fixes, auth UX, quiz bug fix):**
  - Home hero "Consegueix" → "Aconsegueix" (`conseguir` isn't a Catalan verb); quiz index widget typo "totes les temes" → "tots els temes" (`tema` is masculine). Career Hub degree/university names (`public/data/degrees.json`) are left in Spanish — confirmed with the user: it's an official national dataset (221 universities across Spain, only 2 Balearic), so the names are effectively proper nouns; translating them risked misrepresenting official degree titles at a scale (5,439 entries) that couldn't be reliably spot-checked. The UI already labels the search as "graus universitaris espanyols."
  - Nav auth UI replaced: `ICONS.user` (new inline SVG) now sits top-right in both states. Logged out, it's a plain link to `/login`. Logged in, it toggles a small absolute-positioned dropdown (`#nav-dropdown`) containing the email + "Tancar sessió" — closes on outside click or Escape. Same underlying auth logic (`getSession`/`onAuthStateChange`) as before, just re-skinned.
  - Broken email-confirmation redirect ("requested path is invalid" style error) is a Supabase Dashboard config gap, not app code: Site URL / Redirect URLs under Authentication → URL Configuration must include the production domain. supabase-js already auto-detects and exchanges the session from the redirect URL (`detectSessionInUrl` default) — confirmed via Supabase docs, no client code needed once the allow-list is fixed. This is a manual dashboard step, same category as the Stage 5/6 SQL-paste steps but on a settings page instead of the SQL editor.
  - "Preguntes falles" → "Test d'errors" ("falles" is the Valencian festival, not a Catalan word for mistakes). Route file renamed `.../quiz/falles.astro` → `.../quiz/errors.astro`; all 3 referencing files (`quiz/index.astro`, `learning/[subject].astro`, the route itself) updated.
  - Found and fixed a real bug while renaming: `Quiz.astro`'s script captured its `.question` DOM elements into a fixed array once, at module-scope, before the page ever ran. But `aleatori.astro`/`errors.astro` remove non-matching `.question` elements from the DOM *after* that (via `quiz-filter-client.ts`'s `applyQuizFilter`), and only then invoke `pbauInit` (`setup()`). Since scripts execute in document order and Quiz's script ran first, `setup()` was shuffling across the *original unfiltered* set — meaning most of a "10 random" or "test d'errors" run would land on already-removed (detached) elements and render blank, while the counter kept showing the full subject's question count (e.g. "1 / 50") instead of the actual filtered count. Fixed by re-querying `.question` elements from the DOM inside `setup()` itself (called after filtering, when manual) instead of once up front, and updating `#quiz-total` from that live count; listener attachment now guarded by a `listenersAttached` flag so restart doesn't double-bind. This bug likely explains why the falles quiz appeared broken/missing — Stage 6's own verification only checked route status codes and widget counts, never exercised the actual filtered-quiz flow in a browser.

## 9. Conventions

- Catalan is the default UI/content language; don't hardcode strings in a way that blocks adding Spanish later.
- Mobile-first; test narrow viewports, especially math rendering and the Career Hub's sticky calculator.
- Keep PDFs/content files in clear, predictable folders.
