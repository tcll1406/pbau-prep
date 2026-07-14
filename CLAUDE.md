# CLAUDE.md

Behavioral guidelines to reduce common LLM coding mistakes. Merge with project-specific instructions as needed.

**Tradeoff:** These guidelines bias toward caution over speed. For trivial tasks, use judgment.

## 1. Think Before Coding

**Don't assume. Don't hide confusion. Surface tradeoffs.**

Before implementing:
- State your assumptions explicitly. If uncertain, ask.
- If multiple interpretations exist, present them - don't pick silently.
- If a simpler approach exists, say so. Push back when warranted.
- If something is unclear, stop. Name what's confusing. Ask.

## 2. Simplicity First

**Minimum code that solves the problem. Nothing speculative.**

- No features beyond what was asked.
- No abstractions for single-use code.
- No "flexibility" or "configurability" that wasn't requested.
- No error handling for impossible scenarios.
- If you write 200 lines and it could be 50, rewrite it.

Ask yourself: "Would a senior engineer say this is overcomplicated?" If yes, simplify.

## 3. Surgical Changes

**Touch only what you must. Clean up only your own mess.**

When editing existing code:
- Don't "improve" adjacent code, comments, or formatting.
- Don't refactor things that aren't broken.
- Match existing style, even if you'd do it differently.
- If you notice unrelated dead code, mention it - don't delete it.

When your changes create orphans:
- Remove imports/variables/functions that YOUR changes made unused.
- Don't remove pre-existing dead code unless asked.

The test: Every changed line should trace directly to the user's request.

## 4. Goal-Driven Execution

**Define success criteria. Loop until verified.**

Transform tasks into verifiable goals:
- "Add validation" → "Write tests for invalid inputs, then make them pass"
- "Fix the bug" → "Write a test that reproduces it, then make it pass"
- "Refactor X" → "Ensure tests pass before and after"

For multi-step tasks, state a brief plan:
```
1. [Step] → verify: [check]
2. [Step] → verify: [check]
3. [Step] → verify: [check]
```

Strong success criteria let you loop independently. Weak criteria ("make it work") require constant clarification.

---

**These guidelines are working if:** fewer unnecessary changes in diffs, fewer rewrites due to overcomplication, and clarifying questions come before implementation rather than after mistakes.


# PBAU Study Platform — Project Spec

This file is the source of truth for this project. Read it fully before doing anything. It exists so you can build correctly the first time without re-asking or reworking.

---

## 0. How to work on this project (read first)

- **Plan before building.** Before writing any code for a feature, produce a short written plan (files you'll create/change, the approach, any decision that needs my input). Wait for my "go" before implementing. Reviewing a plan is cheap; rebuilding wrong code is not.
- **Build in the numbered stages in section 6, one at a time.** Do not scaffold the whole app at once. Finish and confirm a stage before starting the next.
- **I am not reviewing code line by line.** Optimize for a correct, working result, not for teaching me the code. Keep explanations to a 2–3 sentence summary of what a stage does and any decision I need to make. No file-by-file walkthroughs unless I ask.
- **Ask only when a requirement is genuinely ambiguous or missing from this spec.** Otherwise proceed. Don't ask permission for routine implementation choices — make them.
- **Keep this file updated.** When we make a lasting decision (a library, a convention, a schema), append it to section 8 so future sessions don't re-derive it.
- **Prefer the simplest thing that works.** No extra dependencies, abstractions, or "future-proofing" unless a stage requires it.

## 1. What this is

A free, bilingual (Catalan / Spanish) web app helping students in the Balearic Islands prepare for the **PBAU** — the university entrance exam run by the UIB (Universitat de les Illes Balears). Primary language of the content is **Catalan**; Spanish is secondary. Audience: 2nd-year Bachillerato students, on mobile as much as desktop.

Goals in priority order: (1) genuinely useful to students, (2) clean and reliable, (3) built efficiently. This is not a commercial product; do not add marketing, paywalls, or account requirements to access content.

## 2. Tech stack (decided — do not substitute)

- **Astro** — framework. Content-driven, mostly static, minimal JS.
- **KaTeX** — rendering LaTeX math in theory and quiz content.
- **Supabase** — database AND authentication (used only from stage 4 onward). Do not add a separate auth provider.
- **Netlify** — deployment.
- Plain vanilla JS for interactivity until a stage genuinely needs a component framework. Do not introduce React or similar preemptively.

Explicitly **out of scope for now** (do not add): Firebase, PostHog or any analytics, SEO tooling, CSS frameworks unless trivial, state-management libraries.

## 3. The content (already prepared — I will provide files when a stage needs them)

All content exists and is clean. Do not generate placeholder content; ask me for the real file when a stage needs it.

- **Theory summaries** (Markdown + LaTeX), one per subject:
  - `Fisica_PBAU_Resum_Complet.md`
  - `MatII_Batx_resum_script.md`
  - `MACS_II_resum_script.md`
  - Math uses `$...$` (inline) and `$$...$$` (block). Must render with KaTeX.
- **Quizzes**: 3 subjects × 50 questions = **150 total**, 5 topics per subject. I will provide these as **clean JSON** (already parsed — you do not need to parse Markdown). Expected shape per question: `id`, `subject`, `topic`, `statement`, `options` (A–D), `correct` (letter), `feedback`. Statement/options/feedback may contain LaTeX.
- **Exam archive PDFs** — official UIB exams and correction criteria. Complete set present:
  - Subjects: Física, Matemàtiques II, Matemàtiques Aplicades a les CCSS II (MACS).
  - Each subject: convocatòria **Juny** and **Juliol**, years **2024, 2025, 2026**.
  - For every exam (`Enunciat…`) there is a matching criteria file (`Criteris…`).
  - Plus official structure/specification docs (e.g. `…Especificacions…`, `Estructura_i_Criteris…`).

## 4. Subjects and quiz topics (exact — use these labels)

**Física**
1. Camp Gravitatori i Lleis de Kepler
2. Camp Elèctric
3. Camp Magnètic i Inducció
4. Ones i Òptica
5. Física Moderna

**Matemàtiques II**
1. Àlgebra Lineal (Matrius i Sistemes)
2. Geometria a l'Espai
3. Anàlisi (Funcions, Límits, Continuïtat i Derivades)
4. Anàlisi (Integrals, Àrees i Teoremes)
5. Probabilitat

**Matemàtiques Aplicades a les CCSS II (MACS)**
1. Probabilitat
2. Estadística Inferencial (Distribució Normal i Intervals)
3. Àlgebra (Matrius i Sistemes d'Equacions)
4. Anàlisi (Funcions, Límits i Derivades)
5. Anàlisi (Integrals i Àrees)

## 5. Feature requirements (the *what* — you decide the *how*)

### Theory pages
- Render each subject's Markdown with LaTeX via KaTeX. Mobile-responsive, readable, formulas must not overflow on narrow screens.

### Exam archive
- A page per subject (or one filterable page) listing exams by year and convocatòria, each linking its Enunciat and matching Criteris PDF. Group clearly by year → convocatòria. Include the official specification/structure docs in a separate "official documents" area.

### Grade calculator (exact rules — do not improvise the formula)
- **Access note (Nota d'accés)** = 0.6 × (Batxillerat average grade) + 0.4 × (General Phase average). Range 5–10.
- **Admission note (Nota d'admissió)** = Access note + weighted electives, up to **max 14**.
- Student may add **up to two** Admission-Phase subjects. Each is weighted **0.1 or 0.2** (student/degree-dependent). Formula: access note + (weight₁ × grade₁) + (weight₂ × grade₂), electives capped at the two best.
- Elective grades must be ≥ 5 to count. Show the resulting access note and admission note clearly.
- Pure frontend, no database.

### Quiz engine
- Student picks subject → topic (or full subject). Multiple-choice, one correct of four (A–D).
- On answering: immediate feedback — correct/incorrect, highlight right answer, show the question's `feedback` explanation. LaTeX renders inside questions and feedback.
- Track score within the session. Order can be fixed or shuffled (your call, note it in section 8).
- Questions come from the provided JSON. Do not hardcode questions in components.

### Auth + progress (stage 5, optional — do not build until earlier stages are done)
- Supabase Auth for optional student login. Content is fully usable without logging in.
- Logged-in users get saved quiz progress/scores via Supabase, protected with Row Level Security.

## 6. Build order (do these in sequence; confirm each before moving on)

1. **Skeleton + one theory page.** Astro project, KaTeX working, render the Física theory Markdown. Run locally. Then deploy to Netlify so there's a live URL early.
2. **Exam archive.** All three subjects, PDFs listed and linked by year/convocatòria with matching criteria.
3. **Grade calculator.** Frontend only, exact rules from section 5.
4. **Quiz engine + Supabase.** Load the 150 questions from JSON into Supabase; build the quiz UI with instant feedback. (I provide the JSON.)
5. **Auth + progress.** Optional. Supabase Auth + saved progress with RLS.

## 7. Conventions

- Catalan is the default content language. Keep UI labels in Catalan; design so a Spanish version can be added later without restructuring (don't hardcode strings in a way that blocks i18n).
- Keep PDFs and content files organized in clear, predictable folders.
- Mobile-first. Test narrow viewports, especially for math rendering.

## 8. Decisions log (append lasting decisions here)

- Stack fixed as in section 2.
- (Add entries as we go: chosen KaTeX integration method, quiz shuffle behavior, Supabase table schema, folder structure, etc.)
- **Stage 1 (skeleton + Física theory page) — decisions:**
  - Node.js installed via the official `.pkg` installer from nodejs.org (Homebrew wasn't usable — no admin/sudo access in the shell environment). Node v22 LTS.
  - Astro scaffolded with the `minimal` + TypeScript `strict` template.
  - KaTeX wired via `remark-math` + `rehype-katex`, passed to Astro's `unified()` markdown processor from `@astrojs/markdown-remark` (Astro 7's new default markdown processor requires this explicit package for remark/rehype plugins).
  - Theory content lives in an Astro content collection at `src/content/teoria/` (config: `src/content.config.ts`), one Markdown file per subject (`fisica.md` so far). Mobile overflow handling for long formulas is scoped CSS on `.katex-display` (`overflow-x: auto`) in the page component.
  - Theory pages are one static route per subject under `src/pages/teoria/` (e.g. `fisica.astro`), not a dynamic `[subject]` route — kept simple since only one subject exists so far; revisit if this duplicates once Mat II and MACS theory pages are added.
  - Source content files (theory Markdown, quiz JSON/Markdown, exam PDFs) live in `PBAUPrepFiles/` at the repo root — **not** committed to git yet and not yet wired into the app beyond copying the Física theory file into the content collection. Exam PDFs will need to move into `public/` (or be fetched from storage) when Stage 2 (exam archive) is built.
  - Netlify site `pbau-prep` (https://pbau-prep.netlify.app) created via Netlify CLI and deployed manually (`netlify deploy --prod --dir=dist`) for a live URL. It is **not yet connected to the GitHub repo** for continuous deployment — linking a repo requires an interactive GitHub OAuth authorization (`netlify init`) that can't run headlessly; do this once from the Netlify dashboard (Site settings → Build & deploy → Link repository → `tcll1406/pbau-prep`, build command `npm run build`, publish directory `dist`) or by running `netlify init` yourself in an interactive terminal.
- **Stage 3 (site restructure — global nav + Learning Hub, Career Hub, FAQ, About) — decisions:**
  - Shared layout `src/layouts/Base.astro` holds the persistent header nav (Inici · Learning Hub · Career Hub · FAQ · Sobre nosaltres) with a vanilla-JS hamburger toggle under a 40rem breakpoint. All pages (existing and new) render through it.
  - Learning Hub subject pages (`/learning/[subject]`) are a single scrollable page, not tabs — theory and exam sections link out to the existing `/teoria/[subject]` and `/examens/[subject]` pages rather than embedding their content, to avoid duplicating long KaTeX output on one page. Quiz section is a "Properament" placeholder per topic (topics sourced from `src/data/subjects.ts`) until Stage 4 wires real quiz data.
  - Career Hub grade calculator follows CLAUDE.md §9.3 precisely (not the earlier, slightly looser §5 wording): elective subjects count only if grade is **strictly greater than 5** (not ≥5), fase general is entered as 5 individual exercise grades and auto-averaged, nota d'accés invalid entirely if that average is below 4, accés clamped to [5,10], admissió clamped to 14, all displayed to 3 decimals.
  - Degree Selector data: user provided `notas_de_corte.json` (5439 entries) and `FQA.json` at the repo root. Normalized via a one-off script into `public/data/degrees.json` (`id`, `name`, `university`, `city`, `duration`, `cutoff` — cutoff `null` for "No aplica"/"..." entries) and fetched client-side (not bundled into the JS chunk, since it's ~830KB) — Career Hub's search only renders results once the query is 2+ characters, capped at 100 rows, to avoid rendering 5000+ DOM nodes. FAQ content was small enough to hand-copy directly into `src/data/faq.ts`.
  - FAQ accordion uses native `<details>/<summary>` — no JS needed for the toggle.
  - Raw source files `notas_de_corte.json` and `FQA.json` at the repo root are left untracked (same treatment as `PBAUPrepFiles/`) — the processed data actually used by the app (`src/data/faq.ts`, `public/data/degrees.json`) is what's committed.

---

## First action

Confirm you've read this, then give me a short plan for **Stage 1 only** (section 6). Check my environment first (is Node.js installed?). Do not build until I say go.


# 9. Site structure & navigation (append — supersedes the flat homepage from stage 1)

The site is organized into 5 top-level areas. A persistent header nav links to all of them. Stages 1–2 already built theory pages (`/teoria/[subject]`) and exam pages (`/examens/[subject]`) — reuse those existing routes, do not recreate them.

**Top-level nav:** Inici · Learning Hub · Career Hub · FAQ · Sobre nosaltres

## 9.1 Home (Inici) — `/`
The storefront. Clean, fast, punchy. Its only job: hook the student in seconds and send them to the right tool. No walls of text.
- Short punchy headline + one-line mission (aiming for the maximum PBAU score, made for the Balearic Islands).
- Two primary calls to action, visually prominent: **Learning Hub** (study) and **Career Hub** (calculate my score / find my degree).
- Keep it lightweight; secondary links (FAQ, About) can live in the footer/nav.

## 9.2 Learning Hub — `/learning` (index) + existing subject routes
An index page linking the three subjects. Each subject has ONE subject page that brings together everything for that subject:
- **Subjects:** Física, Matemàtiques II, MACS II.
- Each subject page contains, in this order:
  1. **Theory summary** — reuse existing `/teoria/[subject]` content (embed or link).
  2. **Quizzes** — 5 topic quizzes × 10 questions each (built in stage 4). Structure it so more questions/quizzes can be added later without rework.
  3. **Previous exams** — reuse existing `/examens/[subject]` content (embed or link).
- Decide whether the subject page is a single scrollable page with sections or a small tabbed layout; note the choice in section 8.

## 9.3 Career Hub — `/career`
The most interactive, "sticky" area. Two tools that work together on one page:

### Degree Selector
- A searchable list/table of Spanish university degrees with their latest **nota de tall (nota de corte)**.
- **Mandatory visible note:** the nota de tall changes every year depending on demand for that degree; previous years are orientation only, not a guarantee. (Official wording confirms: it's the admission note of the last admitted student, differs yearly, and isn't known until places are assigned.)
- Data source for cutoffs is a dataset we provide/maintain (not scraped live). Store as data, not hardcoded in the component.
- Selecting a degree sets the target cutoff used by the calculator (below).

### Grade Calculator (sticky widget)
Sleek, sticky so it stays visible while browsing degrees. Student inputs their grades; it live-updates their final admission note out of 14 and **glows green when it meets/exceeds the selected degree's cutoff**.

**Exact formula (verified against official UIB rules — implement precisely):**
- **Nota d'accés** = 0.6 × (mitjana de batxillerat) + 0.4 × (nota fase general), and only valid if the fase general ≥ 4. Result is capped to the range **5–10**.
  - The fase general grade is the average of the 5 core PBAU exercises (score each 0–10).
- **Nota específica** = a×M1 + b×M2, a value between **0 and 4**, where:
  - M1, M2 = up to two admission-phase (fase específica) subjects.
  - Each subject counts **only if its grade is strictly greater than 5**.
  - a, b = weighting parameters, each **0.1 or 0.2**, chosen by the student per subject (the correct weight depends on the specific degree; the student selects it). Take the two subjects that give the best result.
- **Nota d'admissió** = Nota d'accés + Nota específica, **capped at a maximum of 14**.
- Display all three notes (accés, específica, admissió). Round display to 3 decimals to match official convention.

## 9.4 FAQ — `/faq`
Accordion-style. Answers the bureaucratic/administrative confusion around the PBAU so students can focus on studying: dates, convocatòries (juny/juliol), how the access vs admission note works, validity of grades, re-sits to improve marks, etc. Content to be provided; build the accordion component to accept a list of Q&A items.

## 9.5 About (Sobre nosaltres) — `/about`
The authority/trust builder. Establishes this is tailor-made for the Balearic Islands, not a generic study site.
- **Mission:** demystify the PBAU and give students a strategic advantage.
- Space for the branding and mindset: aiming for the absolute maximum score.
- Keep it concise and credible.

## 9.6 Notes for the build
- Do NOT add auth to gate any of this; all content stays public (auth remains the optional stage-5 stretch goal).
- Keep Catalan as default UI language; structure strings so a Spanish version can be added later.
- Reuse existing components/routes from stages 1–2 rather than duplicating.
- Before building, give me a short plan per section 0, and confirm the Career Hub data (degree list + cutoffs) source with me — that dataset is something I'll provide.
