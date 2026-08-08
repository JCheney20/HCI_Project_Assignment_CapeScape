# Model "Destination" as a first-class concept, not "Cape Town"

The brief requires the report to address scalability beyond Cape Town. We decided to model
the city as a "Destination" concept from the start — Cape Town is the only Destination this
prototype implements, but domain terms, UI copy conventions, and the architecture diagram
should never hardcode "Cape Town" where "Destination" is meant. This costs nothing extra now
and avoids an awkward retrofit story in §1.0/§3.2; the alternative (name everything after
Cape Town, then explain scalability as a hypothetical) was considered and rejected as weaker
evidence for the requirement.
