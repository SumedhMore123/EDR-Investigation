# Incident Response Process

## Phases
- Preparation: isolate lab, snapshot VMs and verify collection.
- Detection and analysis: validate evidence, scope endpoint and construct timeline.
- Containment: use approved lab-only steps; document impact and rollback.
- Eradication and recovery: remove known test artifacts and restore expected configuration.
- Lessons learned: document detection gaps, false positives and improvements.

## Evidence integrity
Record collection time, collector, host, file path, hash where applicable and transformations. Store sensitive raw evidence outside the public repository. Commit only sanitized synthetic examples.
