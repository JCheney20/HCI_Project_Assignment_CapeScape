# COS 734 Group Project — Planning

Source: `COS 734 S2 2026 - Group Project.pdf`. Report scaffold lives in `report/` (Typst,
compile with `typst compile main.typ`).

Use case: AI-assisted, accessible tourism app platform for Cape Town (commissioned by
Cape Town Tourism). No code implementation required — deliverables are a technical
report, interactive prototype (Figma), and slide presentation.

## Team
- Group size: 3-4 members (solo allowed, same expectations)
- Team representative: TBD
- Group name: MSJ Delivery
- Members: Justin Marc Cheney (4323819), Mukize Patrick Habiyrameye (4323665), Sean Terrence Ushe Botsheane (4202626) — per `report/main.typ`
- App name: CapeScape (filled into `report/main.typ`'s `app-name` field)
- Report title: "From Constraints to Itineraries: Conversational AI for Accessible Trip
  Planning in Cape Town" (app name "CapeScape" already appears on the title page
  separately, so the title itself doesn't repeat it)

## Settled team decisions (team meeting)

- **Primary persona**: travelers whose visual/mobility disability, dietary/health needs
  (e.g. allergies), or group composition (e.g. family of 4) impose non-negotiable trip
  Constraints — not one narrow disability category. See `docs/adr/0005-broadened-persona.md`.
- **Multilingual support**: a future-scaling claim only, not a v1 prototype feature.
- **Core mechanic**: an iterative/dynamic AI-driven itinerary builder. Users enter
  Constraints (hard requirements) and Preferences (soft interests); the Conversational
  Assistant produces an Itinerary and iterates on it through conversation. See
  `docs/adr/0006-constraints-vs-preferences.md` and `CONTEXT.md`.
- **Objectives** (measurable, for §1.0): (1) does the system meet the user's Constraints,
  (2) does it accommodate the user's Preferences, (3) can it adapt the Itinerary to updated
  Preferences or external conditions (e.g. weather-driven changes)?
- **WCAG target**: AA conformance.
- **Task analysis method**: still to be decided, deferred to closer to Deliverable 3
  (16/08/2026).

## Open items
- Task analysis method + justification (Deliverable 3)
- Requirements prioritization scheme (e.g. MoSCoW) — see "Open gaps" in
  `report/requirements-draft.md`
- Roadmap milestone assignees in `report/main.typ` §2.0 (currently `<Assignee>` placeholders)
- Team representative (title page in `report/main.typ` currently says `TBD`)

## Deliverable 2 output (drafted 10/08/2026)

- `report/main.typ` (+ `report/template.typ`, `report/refs.bib`) — §1.0 Background (existing
  app research, brainstormed features, Norman's action-cycle analysis, objectives, app
  naming) and a draft §2.0 Roadmap. Compiles clean with `typst compile main.typ`, §1.0 fits
  the 2-page budget.
- `report/requirements-draft.md` — draft functional/non-functional and system/user
  requirements + 5 use cases, explicitly provisional pending Deliverable 3's formal
  elicitation.
- Citations resolved: 6 papers (Makuyana et al. 2022, Makuyana & Dube 2023, El-Taher et al.
  2023, Theodorou et al. 2024, Zhang et al. 2025, Franco et al. 2025), all within 5 years,
  plus Norman (2013) as the foundational HCI-theory citation the brief's methodology
  requires. Swaps out the earlier IEEE candidate (Ceccarini & Prandi 2019) from the
  questionnaire, which had aged past the 5-year citation window.

## Submission schedule

| # | Deliverable | Due | Report section(s) | Status |
|---|---|---|---|---|
| 1 | Team representative + project team | done | title page | ✅ |
| 2 | Conceptualization (Context Inquiry) + Double Diamond draft | 09/08/2026 | §1.0 Background, requirements draft | ✅ drafted |
| 3 | Task Analysis: Requirements Elicitation | 16/08/2026 | §3.1 Requirements Elicitation | ☐ |
| 4 | Early UX Design — Low Fidelity | 23/08/2026 | §3.2 Architectural Design, §3.3 Low-Fi Prototypes | ☐ |
| 5 | AI Feasibility | 30/08/2026 | §3.4 AI Feasibility Report | ☐ |
| 6 | Survey Design and Data Collection Planning | 06/09/2026 | §3.5 Survey Design | ☐ |
| 7 | Iterative UX Design and Usability Testing | 18/09/2026 | §4.0 Preliminary results | ☐ |
| 8 | Finalizing Requirements & Design, Project Closure (report + presentation) | 27/09/2026 | whole report + slides + demo | ☐ |

## Per-milestone notes (from the brief)

- **Wk2 — Conceptualization**: research existing apps, brainstorm features/interaction/
  interface type, apply Norman's evaluation/execution model, set project objectives,
  draft roadmap, name the app. Output: 1-2 page summary + draft requirements
  (functional/non-functional, system & user) + use cases/user stories. Cite 3-6 papers.
- **Wk3 — Task analysis**: elicit & prioritise requirements, justify the task-analysis
  method chosen (no single right answer — justify with observations/evidence).
- **Wk4 — Early UX**: user journey maps, low-fi wireframes in Figma, apply HCI
  principles/heuristics/accessibility guidelines, address Gulf of Execution & Gulf of
  Evaluation, consider digital literacy/inclusion/culture/behaviour.
- **Wk5 — AI feasibility**: how the model learns from data, data inputs/outputs, UI
  integration, privacy & security. Cite 3-6 papers.
- **Wk6 — Survey & data collection**: survey instrument, sampling strategy, ~5
  participants, core features for evaluation, UWC ethics form draft.
- **Wk7 — Iterative UX & usability testing**: mid/high-fi Figma, test with 3-5
  participants, document feedback + actionable design changes.
- **Wk8 — Finalize**: requirement traceability (map each user need → system feature),
  close remaining gaps.
- **Wk9 — Closure**: high-fi prototype, final UX research findings, complete design
  artifacts (personas, journeys, wireframes, design system), final report, slides +
  recorded demo, individual & group reflection.

## Cross-cutting requirements (don't forget)
- Justify every design decision — "never one size fits all" in HCI.
- Address **scalability** (beyond Cape Town), **privacy/ethics** (location, travel
  history, accessibility prefs, AI recommendations).
- Consider **emerging tech**: AR sightseeing, computer vision landmark recognition,
  conversational AI/multilingual support.
- WCAG accessibility compliance; smartwatch/wearable cross-device experience.
- References: IEEE or ACM style, sources from last 5 years, no Wikipedia/blogs.
- Cite any AI-generated text use per UWC policy (avoid plagiarism).

## Report formatting rules (from the docx template)
- Times New Roman throughout; body 12pt, headers 12-14pt max.
- Each top-level section starts on a new page (handled by `report/template.typ`).
- Page budgets: §1.0 max 2pp, §2.0 max 1-2pp, §3.0 max 3-5pp, §4.0 max 1-2pp.
