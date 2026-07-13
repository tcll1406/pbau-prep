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

---

## First action

Confirm you've read this, then give me a short plan for **Stage 1 only** (section 6). Check my environment first (is Node.js installed?). Do not build until I say go.
