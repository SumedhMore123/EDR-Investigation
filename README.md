# EDR Investigation Lab

A lab-based Windows Endpoint Detection, Investigation and Response project using Sysmon, Splunk Universal Forwarder, Splunk Enterprise, Sigma, MITRE ATT&CK and Atomic Red Team.

> Scope: SIEM-backed endpoint detection and investigation. This is not a commercial EDR product or custom kernel-level endpoint agent.

## Objectives
- Collect Windows endpoint telemetry using Sysmon and Windows Event Logs.
- Forward selected telemetry to Splunk Enterprise.
- Develop and validate behavioural detections.
- Correlate endpoint events into investigation timelines.
- Map detections to MITRE ATT&CK.
- Demonstrate safe response workflows and evidence preservation.

## Architecture
See [architecture](docs/architecture/architecture.md) and [data flow](docs/architecture/data-flow.md).

## Technology
| Layer | Technology |
|---|---|
| Endpoint | Windows 10/11 VM |
| Telemetry | Sysmon, Windows Event Logs, PowerShell logging |
| Collection | Splunk Universal Forwarder |
| Analytics | Splunk Enterprise / SPL |
| Detection | Sigma + SPL |
| Simulation | Atomic Red Team |
| Investigation | Splunk searches, timelines, case notes |
| Response | Guarded PowerShell scripts and procedures |

## Repository
- `endpoint/`: endpoint telemetry and forwarder examples
- `splunk/`: indexes, searches, dashboards and alert guidance
- `detections/`: Sigma rules and ATT&CK mapping
- `simulation/`: controlled validation scenarios
- `investigation/`: playbooks and case templates
- `response/`: controlled response scripts
- `docs/`: architecture, setup and workflow documentation

## Lab safety
Run simulations only on isolated systems you own or are authorized to test. Take VM snapshots first. Review prerequisites and cleanup steps. Never commit credentials, API keys, raw sensitive event exports or private evidence.

## Status
Repository scaffold and project planning. Implementation and test evidence will be updated as each component is completed.

## References
- [Microsoft Sysmon](https://learn.microsoft.com/sysinternals/downloads/sysmon)
- [Sysmon event reference](https://learn.microsoft.com/en-us/windows/security/operating-system-security/sysmon/sysmon-events)
- [Splunk Universal Forwarder](https://help.splunk.com/en/splunk-enterprise/forward-and-process-data/forwarding-data)
- [Atomic Red Team](https://www.atomicredteam.io/docs/atomic-red-team)
- [MITRE ATT&CK](https://attack.mitre.org/)
