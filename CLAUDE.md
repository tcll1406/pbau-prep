# CLAUDE.md — PAU Balears Prep

Source of truth for this project. Read fully before doing anything.

## 0. How to work on this project

- **Plan before building.** Before writing code for a feature, give a short plan (files touched, approach, any open decision) and wait for a "go."
- **One stage at a time** (§7). Finish and confirm before starting the next.
- **Keep explanations short.** 2–3 sentence summary of what changed + any decision needed. No file-by-file walkthroughs unless asked.
- **Ask only when genuinely ambiguous.** Otherwise make the routine call yourself.
- **Keep this file updated.** Append lasting decisions to §8. Don't let it re-grow stale — when a decision here gets superseded, correct it in place rather than piling on a contradicting note elsewhere.
- **Simplicity first.** No extra dependencies, abstractions, or future-proofing a stage doesn't need. No unrelated refactors or cleanup while implementing a feature.

## 1. What this is

A free, bilingual (Catalan primary / Spanish secondary) web app helping Balearic Islands students prepare for the **PAU** (UIB university entrance exam). Audience: 2nd-year Bachillerato, mobile as much as desktop.

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

Source content lives in `PBAUPrepFiles/` (untracked). Raw scrapes/exports used to build data files (`notas_de_corte.json`, `FQA.json`, `catmarks.json`, `balearsmarks.json`) also stay untracked at repo root — only the processed data actually consumed by the app is committed (see §8, Stage 3).

**Subjects and quiz topics (exact labels):**

| Física | Matemàtiques II | MACS II |
|---|---|---|
| Camp Gravitatori i Lleis de Kepler | Àlgebra Lineal (Matrius i Sistemes) | Probabilitat |
| Camp Elèctric | Geometria a l'Espai | Estadística Inferencial (Distribució Normal i Intervals) |
| Camp Magnètic i Inducció | Anàlisi (Funcions, Límits, Continuïtat i Derivades) | Àlgebra (Matrius i Sistemes d'Equacions) |
| Ones i Òptica | Anàlisi (Integrals, Àrees i Teoremes) | Anàlisi (Funcions, Límits i Derivades) |
| Física Moderna | Probabilitat | Anàlisi (Integrals i Àrees) |

Subject slugs (used across routes/data): `fisica`, `matematiques-ii`, `macs-ii`.

Quizzes: 3 subjects × 5 topics × 10 questions = 150 total. Question shape: `id`, `subject`, `topic`, `statement`, `options` A–D, `correct`, `feedback` (may contain LaTeX). Never hardcode questions in components — always sourced from Supabase.

Exam archive: official UIB exams + correction criteria, Física / Matemàtiques II / MACS, convocatòries Juny + Juliol, years 2024–2026, each `Enunciat…` paired with a `Criteris…`, plus official spec/structure docs. Already built (§7).

## 5. Feature rules

- **Theory pages:** subject Markdown → KaTeX, mobile-responsive, formulas must not overflow narrow screens.
- **Exam archive:** grouped by year → convocatòria, Enunciat linked with its matching Criteris; official spec docs in their own area.
- **Grade calculator — canonical formula (implemented, do not re-derive differently):**
  - *Nota d'accés* = 0.6 × mitjana de batxillerat + 0.4 × nota fase general (average of the 5 core PAU exercises, 0–10 each). Invalid if that fase general average is **below 4**. Clamped to **[5, 10]**.
  - *Nota específica* = a×M1 + b×M2 — up to two fase específica subjects, each counted **only if its grade is strictly greater than 5**; weights a, b each chosen as 0.1 or 0.2 per subject (degree-dependent, student picks); take the two subjects giving the best result.
  - *Nota d'admissió* = Nota d'accés + Nota específica, capped at **14**.
  - Display all three, rounded to 3 decimals.
- **Quiz engine:** subject → topic (or full subject) → multiple-choice A–D → instant feedback (correct/incorrect, highlight right answer, show `feedback` explanation, LaTeX renders). Session-scoped score tracking.
- **Auth + progress:** Supabase Auth; content fully usable logged-out; logged-in users get saved quiz progress via Supabase with RLS.

## 6. Site map

Persistent header nav (glass, sticky — §3): Inici · Learning Hub · Career Hub · FAQ · Sobre nosaltres.

- **`/` (Inici):** punchy hook, one-line mission, two primary CTAs (Learning Hub, Career Hub). Secondary links live in nav/footer only.
- **`/learning` + `/learning/[subject]`:** index links the 3 subjects; each subject page = theory summary + 5 topic quizzes (10 q. each) + previous exams, single scrollable page (not tabs) linking out to `/teoria/[subject]` and `/examens/[subject]` rather than re-embedding their content.
- **`/career`:** Degree Selector (searchable table, latest nota de tall, mandatory disclaimer that cutoffs vary yearly and aren't a guarantee) + sticky Grade Calculator (§5 formula; glows on meeting/exceeding the selected degree's cutoff). Selecting a degree sets the calculator's target cutoff.
- **`/faq`:** accordion, PAU administrative/bureaucratic questions (dates, convocatòries, accés vs admissió, resits).
- **`/about`:** mission, Balearic-specific positioning, concise.

Every route above has a Spanish mirror under `/es/...` (Stage 9) — same structure, translated copy, toggled via a nav pill.

## 7. Build stages

1. ✅ Skeleton + KaTeX + Física theory page, deployed to Netlify.
2. ✅ Exam archive, all three subjects.
3. ✅ Site restructure — global nav, Learning/Career Hubs, FAQ, About, grade calculator, degree selector.
4. ✅ Visual design pass (§3) — dark navy/blue/gold theme applied site-wide.
5. ✅ Quiz engine + Supabase — 150 questions loaded, quiz UI with instant feedback, shuffled per session.
6. ✅ Auth + progress + Home/Learning Hub/Career Hub/FAQ/About redesign.
7. ✅ Grammar/language fixes, auth UX (icon nav), rename "Falles" → "Test d'errors", quiz-filter bug fix, site audit.
8. ✅ Header alignment fix, simplified auth nav (no dropdown), fixed Test d'errors bug (missing migration), PBAU → PAU rename, About page author credit.
9. ✅ Favicon/brand icon + full Spanish translation (toggle, all pages, theory docs, 150-question quiz bank).
10. ✅ Code audit + cleanup (title bug, dead folders, .gitignore, image compression).
11. ✅ SEO (meta/OG/hreflang/sitemap/robots.txt), custom 404, accessibility fixes, grade-calculator test suite.
12. ✅ Security headers (CSP/HSTS/X-Frame-Options/Permissions-Policy/etc).
13. ✅ Custom domain (`paubalearsprep.es`) + RLS/CORS review.
14. ✅ Production stability pass — fixed a broken live deploy twice, two mobile-layout CSS bugs, finished the Stage 9 Spanish quiz-bank migration, worked around a Netlify free-tier deploy block.
15. ✅ Career Hub degree-data overhaul (region→city filter cascade, Catalunya + Illes Balears Catalan naming, cutoff sort, joint-programme dedup) + code audit.

## 8. Decisions log

- **Stage 1:** Astro `minimal` + TS `strict`, Node 22 LTS. KaTeX via `remark-math`/`rehype-katex` through `@astrojs/markdown-remark`. Theory content as an Astro content collection (`src/content/teoria/`, config `src/content.config.ts`). Netlify site `pbau-prep` (https://pbau-prep.netlify.app).
- **Stage 3:** theory/exam pages are dynamic routes (`src/pages/teoria/[slug].astro` over the content collection, `src/pages/examens/[subject].astro` over `src/data/examens.ts`), not per-subject static files. Shared layout `src/layouts/Base.astro` holds the header nav + hamburger toggle. Career Hub data: `notas_de_corte.json` + `FQA.json` normalized into `public/data/degrees.json` (`id`, `name`, `university`, `city`, `duration`, `cutoff`), fetched client-side, search gated at 2+ chars. FAQ hand-copied into `src/data/faq.ts`; accordion uses native `<details>/<summary>`, no JS.
- **Stage 4:** design tokens as CSS custom properties in `Base.astro`'s `<style is:global>` (`--bg`, `--surface`, `--accent`, `--gold`, `--radius`, etc.) — every page's `<style>` block references these, never hardcodes hex. KaTeX inherits `color` automatically, no override needed. Surface color `#131b3a` (navy-tinted, not style.json's neutral-gray option).
- **Stage 5:** the 150 questions came from Markdown files in `PBAUPrepFiles/*/QUIZS *.md`, not pre-made JSON — parsed by a one-off script into `supabase/schema.sql` + `supabase/seed.sql` (both committed, no secrets). Supabase used as a public read-only store: `getStaticPaths()` fetches via PostgREST `fetch()` at **build time only** (`SUPABASE_URL`/`SUPABASE_ANON_KEY`, no `PUBLIC_` prefix). No `@supabase/supabase-js` dependency yet. KaTeX rendered at build time via `src/lib/render-latex.ts` (`unified` + `remark-parse` + `remark-rehype` + `rehype-stringify`). Quiz UI in `src/components/Quiz.astro`: all questions pre-rendered into hidden DOM blocks, client script shuffles per page load, reveals correctness via `data-correct` attributes, session-only score.
- **Stage 6:** `@supabase/supabase-js` added for client-side auth (session, login/logout, `onAuthStateChange`) via `src/lib/supabase-client.ts` (`PUBLIC_`-prefixed env vars). `/login` toggles sign-in/sign-up in one form. Two new tables (`supabase/schema-stage6.sql`): `question_attempts` (one row per user+question, upserted on every answer — drives both progress coloring and the failed-questions quiz) and `faq_questions` (stores submitter email directly, answered manually — no in-app reply flow). Progress coloring uses a 50%-correct-of-attempted threshold, only once all 10 topic questions are attempted. Test d'errors / Random-10 quizzes reuse `Quiz.astro` via a `manualInit` prop + shared `src/lib/quiz-filter-client.ts`. Icons are hand-authored inline SVGs in `src/data/icons.ts`, no icon library. Home page is the one intentional light-theme section between the dark hero/footer.
- **Stage 7:** grammar fixes (`Consegueix`→`Aconsegueix`, etc.). Career Hub degree/university names stay in Spanish — official national dataset, translating risked misrepresenting titles at a scale (5,439 entries) that couldn't be reliably spot-checked. Auth nav became an icon + dropdown. Supabase email-confirmation redirects require the production domain added under Authentication → URL Configuration (manual dashboard step). "Falles" (Valencian festival, not Catalan) renamed to "Test d'errors". Fixed a real bug: `Quiz.astro` captured its `.question` elements once at module scope, before filter scripts (`aleatori`/`errors`) had removed non-matching ones from the DOM — fixed by re-querying `.question` elements inside `setup()` itself, called after filtering.
- **Stage 8:** header misalignment fixed with `align-items: center` on `#nav-links`. Auth nav simplified further: dropdown removed, logged-in state just shows a plain "Tancar sessió" button. Root-caused "Test d'errors not updating": `supabase/schema-stage6.sql` had never actually been run against production (confirmed via direct REST query returning `PGRST205`) — the fix was running the migration, not app code; added a `console.error` on upsert failure so this fails loudly next time. PBAU → PAU rename scoped to user-facing copy only (not folder names, the Netlify slug, or internal code identifiers). About page gained an author-credit section (photo + name + LinkedIn link).
- **Stage 9:** favicon (`public/favicon.png`) placed in nav + footer via `<img>`, not background-image. **Full Spanish translation**: no `astro:i18n` — a plain mirrored route tree under `src/pages/es/`. Pages with real logic (Supabase queries, `getStaticPaths`, non-trivial scripts) got that logic extracted into a shared `src/components/*Page.astro` taking a `lang: 'ca' | 'es'` prop, with both `src/pages/X.astro` and `src/pages/es/X.astro` as thin wrappers; purely static pages (`index`, `about`, `learning/index`) were duplicated directly. Client scripts needing lang-aware strings self-detect via `location.pathname.startsWith('/es')` into a local `STRINGS` object (not `define:vars`, which would break existing ESM imports). `Base.astro` gained a `lang` prop + toggle pill computed from `Astro.url.pathname`. `faq.ts`/`tips.ts` became `Record<'ca'|'es', Item[]>`; `subjects.ts`/`examens.ts` labels became `{ca, es}` objects, but URL slugs always derive from the Catalan label in both trees. Theory content lives under `src/content/teoria/es/*.md`. Quiz bank: `supabase/schema-stage9.sql` added 6 nullable `_es` columns to `questions` (not duplicate rows, so `question_attempts` keeps working identically either language); `src/lib/questions.ts`'s `fetchQuestions(lang)` remaps them into the same `Question` shape. Deliberately not translated: exam PDFs, `degrees.json`, Supabase Auth's own error messages.
- **Stage 10:** fixed a duplicated home-page `<title>`. Deleted dead `tools/`/`workflows/` folders (unused template scaffold). `.gitignore` hardened to explicitly list raw source files. Compressed `favicon.png`/`antoni-colom.png`. Committed Stages 8–10 in one bundled commit (history had stalled after Stage 7 — production had been running from local `dist/` builds, not git history).
- **Stage 11:** SEO — `site` config + `@astrojs/sitemap`, per-page `description`/OG/Twitter tags, `hreflang` alternates on every route. New static `src/pages/404.astro` (single prerendered 404, self-detects `/es/` via client script for its own copy; the shared nav itself can't be lang-aware here — known minor gap). Accessibility: darkened `--accent` `#3b82f6`→`#2563eb` for 4.5:1 contrast (fixed at the token level, not per-instance), added visible focus rings on form inputs. Grade calculator logic extracted to `src/lib/grade-calculator.ts` (testable independent of the DOM); `vitest` added as a devDependency with `src/lib/grade-calculator.test.ts` covering the §5 boundary cases.
- **Stage 13:** custom domain `paubalearsprep.es` (IONOS → Netlify DNS). RLS confirmed correctly active on all tables via direct PostgREST queries — see the schema-cache gotcha in §9. CORS: Supabase forces `Access-Control-Allow-Origin: *` at the infra level for the main data API, not configurable — a non-issue here since RLS (not CORS) is the real access-control boundary (anon key is public by design, auth uses Bearer tokens not cookies). Security headers added via `public/_headers`: strict CSP (`script-src 'self'` with zero exceptions — required setting `vite.build.assetsInlineLimit: 0` so Astro never inlines scripts; `style-src 'self' 'unsafe-inline'` needed for KaTeX's per-glyph inline styles), plus HSTS/X-Frame-Options/Referrer-Policy/Permissions-Policy. Verified via a draft deploy (career calculator, quiz flow, login round-trip — zero CSP console violations) before promoting to prod.
- **Stage 14:** two full production outages, both fixed the same way — a "ready" Netlify deploy serving 404 on every path, fixed by a fresh `npm run build` + redeploy rather than digging for root cause (see §9). Netlify Git Contributor block (unverified GitHub identity pushing to a private repo) fixed by the user approving it from the Netlify Deploys page. Netlify free-tier "credits" (separate from build minutes) started blocking `netlify deploy --prod` — see the draft+promote workaround in §9. Two real mobile CSS bugs found via Chrome DevTools Protocol measurement (not source reading): home page `.steps` grid lost to a media-query override declared earlier in source order (fixed by reordering); Career Hub calculator/search overflowed because `<fieldset>`'s UA-default `min-width: min-content` ignored its grid parent (fixed with explicit `min-width: 0` on `fieldset`, `.calculator`, `.degrees`, and their inputs). First hit of the Astro-scoped-CSS-vs-JS-created-DOM gotcha (§9), on `.degree-info`/`.degree-cutoff`. Stage 9's Spanish quiz-bank migration was finally run and verified (150/150 `statement_es` populated) — since quiz pages are static-generated at build time, this also required a rebuild+redeploy to appear live, not just a DB write.
- **Stage 15 (Career Hub degree-data overhaul):** in `public/data/degrees.json` — unified `Islas Baleares`/`Baleares` city labels to `Illes Balears`; replaced the 8 core Catalan public universities' entries (534 removed → 560 added from `catmarks.json`, Catalan names, `pau_mark` as cutoff) while leaving Ramon Llull/UOC/other private Catalan schools untouched (explicit user scoping decision — not a full Catalunya replacement); fixed 14 sitewide "Noun, Estudis d'X" alphabetization-artifact names to natural word order; added a `region` field to all 5465 entries (19 Spanish regions, from a hand-built city→region map); renamed 47 of 55 Universitat de les Illes Balears degree names to their exact Catalan spelling per `balearsmarks.json` (8 UIB entries + all 25 private Balearic-school entries left untouched — no match in that file). In `CareerHub.astro` — added a region filter that cascades into a region-scoped city filter; city/university matching now splits `"X / Y"` joint-programme strings so multi-university degrees match either filter and the dropdown has no duplicate joint entries; results sort by cutoff descending (nulls last); fixed `.degree-list li`/`button` (same §9 scoped-CSS gotcha). Code audit: merged a duplicate `.subject-row` CSS rule, added `catmarks.json`/`balearsmarks.json` to `.gitignore`.

**Pending manual steps (not app code):**
- Add `https://paubalearsprep.es` to Supabase Auth → Authentication → URL Configuration → Redirect URLs (flagged since Stage 13, not yet confirmed done).
- Netlify free-tier credits are exhausted — `netlify deploy --prod` is blocked until a payment method is added; use the draft+promote workaround (§9) until then.
- Update `degrees.json` (notes de tall) and the exam archive annually.

## 9. Conventions

- Catalan is the default UI/content language; don't hardcode strings in a way that blocks Spanish.
- Mobile-first; test narrow viewports, especially math rendering and the Career Hub's sticky calculator.
- Keep PDFs/content files in clear, predictable folders.
- **Astro's scoped CSS never applies to elements created via `document.createElement` in a client `<script>`** — only elements written in the component's own template get the `data-astro-cid-*` attribute scoped selectors require. Any CSS targeting JS-built DOM must wrap the selector in `:global(...)`, or it silently no-ops. Hit repeatedly in `CareerHub.astro`.
- A media-query override must be declared **after** its base rule in source order — equal-specificity rules resolve by source order regardless of whether one is nested in `@media`.
- If a Supabase table that should exist returns `PGRST205`, don't assume the migration never ran — PostgREST's schema cache can lag the actual DB state. Verify by re-running the migration (a real "already exists" error proves it's there) before concluding a table is missing.
- Quiz/theory pages are static-generated at **build time** from Supabase — a DB write alone doesn't update the live site; it needs a rebuild + redeploy.
- Netlify free-tier "credits" (distinct from build minutes) can block `netlify deploy --prod` while drafts still work. Workaround: `netlify deploy` (draft) → verify content → `netlify api restoreSiteDeploy --data '{"site_id":"...","deploy_id":"..."}'` to promote it.
- If a "ready" Netlify deploy serves 404s site-wide, don't dig for a root cause — a fresh `npm run build` + redeploy has fixed this every time.
