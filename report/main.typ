#import "template.typ": report

#show: report.with(
  title: "From Constraints to Itineraries: Conversational AI for Accessible Trip Planning in Cape Town",
  app-name: "CapeScape",
  group-name: "Group: MSJ Delivery — COS 734, Semester 2, 2026",
  members: (
    "Justin Marc Cheney (4323819)",
    "Mukize Patrick Habiyrameye (4323665)",
    "Sean Terrence Ushe Botsheane (4202626)",
  ),
  team-rep: "TBD",
)

= 1.0 Background

South African accessible-tourism research motivates this project directly. A 2022
literature review found tourism practice still lacks contextualised, research-based
knowledge on disability beyond bare legal compliance @makuyana2022, and a 2023 study of
disabled domestic travellers found accessibility and reliability of transport, not
attractions themselves, were the dominant barriers to participation @makuyana2023. Both
point at the same gap CapeScape addresses: accessibility support that travels with the
trip-planning process itself, not a bolt-on accommodation.

== 1.1 Existing app research

Accessible-tourism software today clusters into two categories that don't talk to each
other. The first is navigation and wayfinding aids built specifically for visually
impaired travelers: indoor systems combining Bluetooth beacons with pedestrian dead
reckoning to guide museum visits @theodorou2024, and the wider field of outdoor-navigation
apps surveyed by El-Taher et al., who catalogue dozens of point solutions but note none
integrate trip-level planning @eltaher2023. The second category is general-purpose AI
itinerary generation: recent work uses large language models to produce personalized,
preference-driven city itineraries @franco2025generative, but treats accessibility, dietary
needs, and group composition as absent rather than as constraints the plan must satisfy.
NaviGPT narrows this gap furthest, pairing a conversational, multimodal interface with
real-time accessible navigation @zhang2025navigpt, but it is scoped to in-the-moment
obstacle narration, not to building or revising a multi-day Itinerary. No reviewed product
or paper lets a traveler state accessibility, dietary/health, and group-composition
Constraints once and have a Conversational Assistant plan and adapt an entire trip around
them. That gap is the problem CapeScape addresses.

== 1.2 Brainstormed features and interaction model

Brainstorming produced candidates across interaction type, interface type, and core
mechanic. The team settled on a voice-and-text Conversational Assistant as the primary
interaction surface, not a secondary widget bolted onto a browse-first app
(`docs/adr/0003`), on the reasoning that a chat-first design serves the accessibility case
better than a map-and-filter UI a screen-reader or low-vision user has to fight. Mobile is
the primary platform, with a smart-glasses Wearable Extension scoped as a phase-two,
out-of-scope-for-Figma extension rather than a v1 smartwatch companion
(`docs/adr/0002`). The core mechanic is an iterative, dynamic Itinerary builder: the user
states Constraints (non-negotiable) and Preferences (soft, ranked), the Assistant produces
an Itinerary, and the Itinerary is revised through further conversation as Preferences
change or external conditions (e.g. weather) force an adjustment. Multilingual support and
AR landmark recognition were brainstormed but deferred: multilingual support to a
future-scaling claim rather than a v1 feature, and AR landmark recognition folded into the
Wearable Extension's scope. If this approach works, constrained travelers get a single
conversation instead of a manual filter-and-cross-reference exercise across separate apps.
And because the underlying model treats Destination generally rather than tying itself to
Cape Town, the same approach extends to future Destinations without a redesign
(`docs/adr/0001`).

== 1.3 Applying Norman's action cycle

Norman's Gulfs of Execution and Evaluation @norman2013 justify the conversational-first
choice directly. The Gulf of Execution is the distance between a user's goal and the
actions an interface actually offers; a form of accessibility/dietary/group-size filter
checkboxes forces the user to already know which of many controls maps to their need,
whereas stating a Constraint in natural language ("I need wheelchair access and a
nut-free menu") lets the Assistant do that mapping. The Gulf of Evaluation is the distance
between the system's state and the user's ability to interpret it; CapeScape narrows this
by having the Assistant explain *why* a proposed Itinerary satisfies the stated Constraints
and Preferences, rather than presenting a plan with no rationale. A related concern shaped
the hybrid consent model (`docs/adr/0004`): accounting for privacy without cutting users
off from a feature outright. That decision isn't developed further here.

== 1.4 Project objectives

Three measurable objectives, agreed at the team decision meeting, drive every requirement
downstream: (1) *Constraint satisfaction*: does every venue and activity in a generated
Itinerary meet all of the user's stated hard Constraints; (2) *Preference accommodation*:
among Constraint-eligible options, how well does Itinerary content reflect the user's
ranked Preferences; (3) *Adaptivity*: can the Assistant revise an existing Itinerary in
response to updated Preferences or external conditions (e.g. weather-driven closures)
without violating any Constraint. These three map directly onto CONTEXT.md's Constraint /
Preference / Itinerary vocabulary so that later requirements and use cases can be traced
back to a specific objective.

== 1.5 Naming the app

The name CapeScape pairs the destination (Cape Town) with "-scape" to signal a constructed
view or journey rather than a single place. The domain model keeps "Destination," not
"Cape Town," as the first-class entity name throughout (`docs/adr/0001`), so the name reads
as scope for this prototype rather than a hardcoded limit: adding a second Destination is a
content addition to the same model, not a rename.

= 2.0 Roadmap

Draft milestones, taken from the group's submission schedule. Assignees are placeholders
pending the team's next planning session (see Open Items in `PLANNING.md`).

#table(
  columns: (auto, 1fr, auto, auto),
  align: (center, left, center, left),
  table.header([*No.*], [*Milestone*], [*Due*], [*Assignee*]),
  [1], [Team representative + project team], [Done], [MSJ Delivery],
  [2], [Conceptualization (Context Inquiry) + Double Diamond draft], [09/08/2026], [\<Assignee\>],
  [3], [Task Analysis: Requirements Elicitation], [16/08/2026], [\<Assignee\>],
  [4], [Early UX Design — Low Fidelity], [23/08/2026], [\<Assignee\>],
  [5], [AI Feasibility], [30/08/2026], [\<Assignee\>],
  [6], [Survey Design and Data Collection Planning], [06/09/2026], [\<Assignee\>],
  [7], [Iterative UX Design and Usability Testing], [18/09/2026], [\<Assignee\>],
  [8], [Finalizing Requirements \& Design, Project Closure], [27/09/2026], [\<Assignee\>],
)

#bibliography("refs.bib", title: "References", style: "ieee")
