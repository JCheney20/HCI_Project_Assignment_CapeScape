# CapeScape

AI-assisted, accessible tourism platform. The prototype targets Cape Town, but the domain
model treats the city as one instance of a general "Destination" concept so the report's
scalability argument is a naming discipline, not a retrofit story.

## Language

**Destination**:
A city or region CapeScape operates in. Cape Town is the only Destination implemented in
this prototype; core domain terms, screens, and architecture diagrams should refer to
"Destination," not "Cape Town," so scaling to other cities is a content addition, not a
redesign.
_Avoid_: "City" as a domain term (fine as plain English prose, not as an entity name)

**Accessibility Profile**:
The subset of a user's Constraints (visual/mobility/hearing considerations) that drives UI
adaptation specifically — font size, contrast, voice-first mode — as distinct from the full
Constraint set an Itinerary must satisfy. _(Provisional — confirm this subset relationship
with the team; see the open question in the grilling session.)_

**Constraint**:
A hard requirement an Itinerary must satisfy — accessibility needs (wheelchair access,
screen-reader-compatible venues), dietary/health needs (e.g. allergies), or group
composition (e.g. accommodates a family of 4). Constraints filter which venues/activities
are eligible at all.
_Avoid_: Preference (a Constraint is non-negotiable; a Preference is not)

**Preference**:
A soft, ranked interest that shapes Itinerary content without being a hard requirement
(e.g. enjoys the beach, likes heritage sites, likes cocktails). Preferences rank among
what Constraints already made eligible, and can change mid-trip — driving the
Conversational Assistant's dynamic adjustments to an existing Itinerary.
_Avoid_: Constraint

**Itinerary**:
The trip plan the Conversational Assistant produces from a user's Constraints and
Preferences, then iteratively refines through conversation — in response to the user
changing their Preferences, or to external conditions (e.g. weather) forcing an
adjustment.

**Conversational Assistant**:
The primary interaction surface for CapeScape — a voice-and-text chat interface users
engage with first for recommendations, wayfinding, and Q&A, not a supplementary widget
bolted onto a browse-first app.
_Avoid_: Chatbot (implies a secondary/support tool; here it's the primary interface)

**Wearable Extension**:
A planned second-phase prototype that translates CapeScape's mobile experience to AR smart
glasses, giving hands-free, heads-up landmark and wayfinding info. Out of scope for the
primary Figma deliverable; mobile is the primary platform and this is discussed as a
future-phase extension in the report.
_Avoid_: Smartwatch (the brief's brief mentions "wearable" generically, but the team has
committed to smart glasses specifically, not a smartwatch)
