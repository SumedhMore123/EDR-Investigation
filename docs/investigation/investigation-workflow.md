# Microsoft Defender for Endpoint Investigation Workflow

1. **Triage the alert:** Record incident and alert IDs, severity, detection name, time, device, and affected user.
2. **Validate the endpoint:** Confirm device identity, onboarding state, sensor health, OS, and last-seen information in the Defender portal.
3. **Review alert evidence:** Inspect affected files, processes, accounts, IP addresses, URLs, and related alerts. Distinguish observed facts from the alert's assessment.
4. **Open the device timeline:** Reconstruct activity around the alert time. Review process ancestry, command lines, files, registry changes, network connections, and logon context where available.
5. **Hunt with KQL:** Use Advanced Hunting queries from detections/kql to scope related activity on the device and, where authorized, across other lab devices.
6. **Enrich and correlate:** Review file hashes, signatures, prevalence, remote endpoints, initiating processes, and relevant ATT&CK techniques. Record limitations or missing telemetry.
7. **Assess:** Decide whether the activity is a true positive, false positive, or inconclusive. A suspicious command-line flag or a single telemetry event is not conclusive proof of compromise.
8. **Preserve evidence:** Collect the investigation package or export only the minimum required evidence. Sanitize identifiers and sensitive command lines before publication.
9. **Respond:** Use an approved MDE response playbook. Device isolation and remediation are disruptive and require explicit authorization.
10. **Close:** Record actions, Action Center status, rollback or recovery, lessons learned, and detection gaps.

## Analyst evidence standard

For each conclusion, record:
- Evidence observed in the Defender portal or Advanced Hunting.
- Time range and timezone.
- Device and account scope.
- Query name and result count.
- Competing benign explanations.
- Confidence and rationale.
- Response action, operator approval, and outcome.

Never label an incident as confirmed compromise based only on one heuristic indicator.
