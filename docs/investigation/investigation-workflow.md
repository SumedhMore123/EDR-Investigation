# Investigation Workflow

1. **Triage:** Record alert ID, time, host, user, detection name and severity.
2. **Validate telemetry:** Confirm source, event time, timezone and field extraction.
3. **Scope:** Search for related activity on the same host/user and nearby time window.
4. **Reconstruct:** Build process ancestry and timeline using ProcessGuid, ParentProcessGuid where available, PID, image, command line and timestamps.
5. **Enrich:** Review file hashes, signer, destination, DNS and relevant ATT&CK technique references.
6. **Assess:** Separate confirmed observations from hypotheses; record false-positive possibilities.
7. **Respond:** Follow an approved lab playbook. Preserve evidence before altering the host.
8. **Close:** Record outcome, evidence references, actions, detection gaps and follow-up work.

Never treat a single Sysmon event or an unverified reputation lookup as conclusive proof of compromise.
