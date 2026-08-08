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
A user-set record of accessibility needs and preferences (visual/mobility/hearing
considerations, preferred language) that drives both recommendation ranking and UI
adaptation (font size, contrast, voice-first mode).

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
