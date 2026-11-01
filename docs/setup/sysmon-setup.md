# Sysmon Setup and Validation

Use the official Microsoft Sysmon package and review the XML before installation.

The starter configuration is intentionally conservative. Expand it only when a detection requires additional telemetry. Validate the event volume after each change.

Useful event IDs include:

| Event ID | Meaning | Project use |
|---:|---|---|
| 1 | Process creation | Process and parent-child analysis |
| 3 | Network connection | Process-associated network activity; enable selectively |
| 7 | Image loaded | DLL/module investigation; potentially high volume |
| 10 | Process access | Investigate suspicious process access; tune carefully |
| 11 | File create | File drops and staging |
| 12–14 | Registry events | Registry changes and persistence |
| 22 | DNS query | Process-associated DNS context |

Sysmon records observations; it does not decide whether an event is malicious. Correlate signals and investigate context.
