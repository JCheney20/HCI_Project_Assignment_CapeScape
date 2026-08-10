# Constraints and Preferences are separate first-class categories, not one weighted list

Itinerary generation needs to distinguish hard requirements from soft interests. We decided
Constraints (non-negotiable — accessibility, dietary, group size) and Preferences (soft,
ranked interests — beach, cocktails, heritage) are modeled as two separate categories
rather than a single unified weighted-preference list. Constraints filter which
venues/activities are eligible at all; Preferences rank among what's already eligible.
This mirrors how the team's own language already treats them ("must accommodate... must
allow..." vs. "enjoy going to... like...") and keeps a wheelchair-accessibility requirement
from ever being "outranked" by a strong beach preference the way a single weighted list
could allow.
