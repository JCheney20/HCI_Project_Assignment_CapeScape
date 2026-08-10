---
status: accepted; amends ADR-0005
---

# Hearing impairment joins the broadened persona as a Constraint category

ADR-0005 broadened the primary persona to travelers with visual or mobility disability,
dietary/health needs, or group composition — but dropped hearing impairment from the
wording despite `CONTEXT.md`'s Accessibility Profile definition already listing
visual/mobility/hearing as the considerations that drive UI adaptation. Grilling this gap
confirmed hearing was meant to be part of the broadened persona from the start. The
persona now reads: travelers whose visual, mobility, or hearing disability, dietary/health
needs, or group composition impose Constraints an Itinerary must satisfy. Hearing is a
filtering Constraint like wheelchair access, not merely a UI-adaptation setting: it now
excludes venues that don't offer hearing-loop induction systems, captioned/transcript-backed
audio guides, or sign-language tour availability, mirroring how a mobility Constraint
excludes venues without step-free access. This also resolves the "provisional" flag on
`CONTEXT.md`'s Accessibility Profile definition — that subset relationship (visual/mobility/
hearing Constraints double as UI-adaptation drivers; dietary/health and group-composition
Constraints don't) was correct as written, just blocked on the persona catching up.
