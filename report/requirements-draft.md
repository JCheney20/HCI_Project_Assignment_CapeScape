# CapeScape — Draft Requirements (Deliverable 2)

**Status:** Draft. This is the "requirements draft" output called for by Deliverable 2 in
`PLANNING.md`, not the formal requirements elicitation — that's Deliverable 3's §3.1, once
a task-analysis method is chosen and the team runs it. Everything here is provisional and
expected to be revised, re-scoped, and prioritized (e.g. MoSCoW) once that happens.

Terminology (Destination, Constraint, Preference, Itinerary, Conversational Assistant,
Accessibility Profile) follows `CONTEXT.md`. Each requirement traces to one of the three
project objectives in `report/main.typ` §1.4: **(O1)** Constraint satisfaction, **(O2)**
Preference accommodation, **(O3)** Adaptivity.

**Target system vs. prototype.** The brief requires no code implementation — the deliverable
is a Figma prototype and this report, not a working backend. Functional requirements below
describe how the *target product* should behave (e.g. detecting a weather change, running a
Conversational Assistant with real language understanding). The Figma prototype demonstrates
each one through a scripted state transition — e.g. a "weather alert" screen the prototype
jumps to on a tap — rather than a live trigger. Read every "the system shall" below as a
target-product behavior the prototype simulates, not a claim about what's actually running.

## Objective metrics (draft, feeds Deliverable 6 Survey Design)

The three objectives in `report/main.typ` §1.4 are directions, not yet measurements. Draft
operationalizations, to be validated once a task-analysis method is chosen (Deliverable 3):

- **O1 Constraint satisfaction** — percentage of generated Itinerary items with zero
  Constraint violations, audited against test personas (target: 100%).
- **O2 Preference accommodation** — user-rated relevance of Itinerary content against
  stated Preferences (1–5 Likert scale).
- **O3 Adaptivity** — time-to-acceptable-revision and/or user acceptance rate of proposed
  changes after a Preference or external-condition update.

## User requirements

High-level needs, stated from the traveler's perspective, independent of implementation:

- **UR1.** As a traveler with accessibility, dietary/health, or group-composition
  Constraints, I need every part of my Itinerary to actually work for those Constraints, so
  I never arrive somewhere I can't use or eat at.
- **UR2.** As a traveler, I want to describe what I need and enjoy in conversation, not by
  hunting through filter menus, so planning a trip doesn't require knowing the app's
  taxonomy in advance.
- **UR3.** As a traveler, I want to understand why the Assistant suggested something, so I
  can trust the plan without independently re-checking each venue.
- **UR4.** As a traveler whose plans or circumstances change mid-trip, I want my Itinerary
  to adjust without starting over, so a closed venue or a new interest doesn't waste the
  planning I already did.
- **UR5.** As a traveler with sensitive Accessibility Profile data, I want to control what
  the app knows about me, so accommodating my disability doesn't mean surrendering
  unrelated privacy.

## System requirements

### Functional

| ID | Requirement | Objective |
|----|-------------|-----------|
| FR1 | The system shall exclude any venue or activity from a generated Itinerary that fails to satisfy at least one of the user's stated Constraints. | O1 |
| FR2 | The Conversational Assistant shall accept Constraints stated in natural language (voice or text), not only through structured form fields. | O1 |
| FR3 | Among Constraint-eligible options, the system shall order and select Itinerary content according to the user's stated Preferences. | O2 |
| FR4 | The system shall let the user add, remove, or re-rank Preferences at any point in the conversation, before or during a trip. | O2 |
| FR5 | The system shall regenerate the affected part of an existing Itinerary when a Preference changes, without dropping any previously satisfied Constraint. | O3 |
| FR6 | The system shall detect when an external condition (e.g. weather) makes a planned Itinerary item infeasible, propose a replacement, and flag the change to the user. | O3 |
| FR7 | The Conversational Assistant shall be able to state, for any Itinerary item, which Constraint(s) and Preference(s) it satisfies, on request. | O1, O2 |
| FR8 | The system shall request consent for a specific data category the first time a feature needs it, if that category wasn't already granted at onboarding (hybrid consent model, `docs/adr/0004`). | — |
| FR9 | The system shall let the user review and change granted data-category consents at any time after onboarding. | — |

### Non-functional

| ID | Requirement | Rationale |
|----|-------------|-----------|
| NFR1 | The mobile interface shall conform to WCAG 2.1 level AA. | Settled team decision (`PLANNING.md`) |
| NFR2 | Accessibility Profile data shall not be exposed to features or screens that don't need it to function. | Accessibility Profile can reveal disability status — higher sensitivity than a beach-vs-heritage preference. Stated as a policy, not a storage architecture: no backend exists to design against at this stage. |
| NFR3 | The domain model shall reference "Destination" as the scoping entity, not hardcode "Cape Town," so a second Destination is a data/content addition, not a redesign. | `docs/adr/0001` |
| NFR4 | The primary v1 prototype shall target mobile; the smart-glasses Wearable Extension is out of scope for the Figma deliverable. | `docs/adr/0002` |
| NFR5 | Multilingual support shall be described as a future-scaling capability, not implemented as a v1 feature. | Settled team decision |
| NFR6 | The Assistant's Itinerary-adjustment responses (FR5, FR6) shall be understandable without the user re-reading the entire prior conversation. | Gulf of Evaluation (`report/main.typ` §1.3) |

## Use cases / user stories

1. **Wheelchair user planning a day out.** *As a wheelchair user, I want to tell the
   Assistant I need step-free access everywhere, so it never proposes a venue I can't
   physically enter.* → FR1, FR2, FR7.
2. **Traveler with a nut allergy adjusting Preferences mid-trip.** *As a traveler with a nut
   allergy who's decided she'd rather do more heritage sites than beaches today, I want to
   tell the Assistant my new interest and have tomorrow's plan update, without it ever
   suggesting a restaurant that isn't safe for me.* → FR3, FR4, FR5.
3. **Family of four re-routed by weather.** *As a parent traveling with three kids, I want
   the Assistant to notice that today's outdoor activity is rained out and propose an
   indoor alternative that still fits our group size, so I don't have to replan from
   scratch.* → FR6, FR1.
4. **First-time user reviewing consent.** *As a new user, I want a fast way to get started
   without answering twenty privacy questions up front, but I also want to see and change
   what I've shared later.* → FR8, FR9.
5. **Low-vision user trusting a suggestion.** *As a low-vision user relying on the voice
   interface, I want to ask "why this place?" and get a short spoken answer, not a wall of
   text I have to parse.* → FR7, NFR6, NFR1.
6. **Deaf traveler avoiding narration-only tours.** *As a deaf traveler, I want the
   Assistant to only suggest tours that don't rely on spoken narration alone — captioned,
   transcript-backed, or sign-language-guided ones — so I'm not paying for an experience I
   can't follow.* → FR1, FR7.

## Open gaps for Deliverable 3

- These requirements aren't yet prioritized (MoSCoW or similar) — deferred per
  `PLANNING.md` Open Items.
- No task-analysis method has been chosen yet to validate or extend this list against real
  user observation.
- System requirements above are still coarse; Deliverable 3 should decompose FR5/FR6 into
  testable acceptance criteria once the task-analysis method surfaces concrete scenarios.
