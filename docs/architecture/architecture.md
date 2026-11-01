# EDR Investigation Lab Architecture

## Scope
A reproducible SIEM-backed Windows endpoint detection and investigation lab. It demonstrates telemetry collection, behavioural detection, event correlation, analyst investigation and controlled response. It is not a custom endpoint agent, kernel driver or production EDR platform.

## Logical architecture
```text
+----------------------------+
| Windows 10/11 Lab VM       |
| Sysmon | Security | PS Logs|
+-------------+--------------+
              | Windows Event Log inputs
              v
+----------------------------+
| Splunk Universal Forwarder |
| inputs.conf / outputs.conf |
+-------------+--------------+
              | Forwarding (lab example TCP 9997)
              v
+----------------------------+
| Splunk Enterprise (Ubuntu) |
| Index: soclab               |
+-------------+--------------+
              v
+----------------------------+
| Detection & Correlation    |
| SPL | Sigma | ATT&CK tags   |
+-------------+--------------+
              v
+----------------------------+
| Analyst Investigation      |
| Triage | Timeline | Evidence|
+-------------+--------------+
              v
+----------------------------+
| Controlled Lab Response    |
| Guarded actions | Rollback  |
+----------------------------+
```

## Components
1. **Endpoint telemetry:** Sysmon records process, network, file, registry and process-access events according to its configuration. Windows Security and PowerShell logs add context.
2. **Collection:** Splunk Universal Forwarder reads selected Windows event channels and forwards events.
3. **Analytics:** Splunk Enterprise stores and searches telemetry. SPL is the executable detection layer; Sigma is portable rule documentation where practical.
4. **Investigation:** Correlate events by host, user, process GUID, process ID, parent process and time. A single event is not proof of compromise.
5. **Response:** Actions are explicitly authorized, scoped to the lab, logged and reversible where possible.

## Network and trust boundaries
- Prefer host-only or isolated VM networking for simulation.
- Permit only required host-to-host forwarding.
- Verify the configured Splunk receiver port; TCP 9997 is the conventional lab example.
- Do not expose Splunk management interfaces or Windows management services publicly.
- Do not commit credentials, API tokens or sensitive event exports.

## Design decisions
- Start with one Windows endpoint and one Splunk instance.
- Enable high-value Sysmon events first, then tune volume.
- NetworkConnect (Event 3) and ImageLoad (Event 7) can be high-volume; enable selectively.
- Use process GUIDs and timestamps for correlation; PIDs can be reused.
- Response is a lab demonstration, not autonomous production containment.
