# Incident Response Process

## Phases

- Preparation: isolate the lab, snapshot VMs and verify collection.
- Detection and analysis: validate alert evidence, scope affected host and construct timeline.
- Containment: use lab-only, approved steps; document impact and rollback.
- Eradication and recovery: remove only known test artifacts and restore expected configuration.
- Lessons learned: document detection gaps, false positives and improvements.

## Evidence integrity

Record collection time, collector, host, file path, hash (where applicable) and any transformations. Store sensitive raw evidence outside the public repository. Commit only sanitized, synthetic examples.
