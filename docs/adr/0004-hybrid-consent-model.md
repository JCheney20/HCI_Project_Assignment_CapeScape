# Hybrid consent model: accept-all onboarding + revisitable per-category toggles + just-in-time gating

Personalization draws on location, travel history, and Accessibility Profile data —
the latter is unusually sensitive since it can reveal disability status. We decided on a
hybrid consent model rather than a single blanket consent or strict per-category-only
onboarding: users get a fast "accept all" flow at first run, can revisit and toggle
individual data categories at any time, and if they later try to use a specific feature
that needs a category they didn't grant, they're prompted for that specific consent before
access is allowed. We rejected pure blanket consent (too coarse for disability-status data
to defensibly satisfy the brief's privacy/ethics requirement) and pure per-category-only
onboarding (adds first-run friction that doesn't match how most users actually behave).
