# EDR Investigation Lab

A lab-based Windows Endpoint Detection, Investigation and Response (EDR) project using Sysmon, Splunk Universal Forwarder, Splunk Enterprise, Sigma, MITRE ATT&CK and Atomic Red Team.

> **Project scope:** This is a SIEM-backed endpoint detection and incident investigation lab. It is not a commercial EDR product or a custom kernel-level endpoint agent.

## Objectives

- Collect Windows endpoint telemetry with Sysmon and Windows Event Logging.
- Forward selected telemetry to Splunk Enterprise.
- Develop and validate behavioural detections.
- Correlate endpoint events into investigation timelines.
- Map detections to MITRE ATT&CK.
- Demonstrate safe, controlled response workflows and evidence preservation.

## Architecture

See [architecture overview](docs/architecture/architecture.md) and [data flow](docs/architecture/data-flow.md).

## Technology

| Layer | Technology |
|---|---|
| Endpoint | Windows 10/11 VM |
| Telemetry | Sysmon, Windows Event Logs, PowerShell logging |
| Collection | Splunk Universal Forwarder |
| Analytics | Splunk Enterprise / SPL |
| Detection format | Sigma + SPL |
| Simulation | Atomic Red Team |
| Investigation | Splunk searches, timelines and case notes |
| Response | PowerShell scripts with explicit safeguards |

## Repository map

- `endpoint/`: endpoint telemetry and forwarder examples
- `splunk/`: indexes, searches, dashboards and alert guidance
- `detections/`: Sigma rules and ATT&CK mapping
- `simulation/`: authorized validation scenarios
- `investigation/`: investigation playbooks and case templates
- `response/`: controlled response scripts and procedures
- `docs/`: setup, architecture and operational documentation

## Lab safety

Run simulations only on isolated systems you own or are explicitly authorized to test. Take VM snapshots first. Review every test's prerequisites and cleanup steps. Do not run destructive tests on production systems. Response scripts are intended for lab use and must be reviewed before execution.

## Status

Planning and repository scaffold. Implementation status and test evidence will be updated as each component is completed.

## Roadmap

1. Build endpoint and Splunk lab.
2. Validate telemetry ingestion.
3. Implement detections.
4. Build dashboards and investigation workflow.
5. Validate using controlled simulations.
6. Implement guarded response procedures and publish evidence.

## References

- [Microsoft Sysmon](https://learn.microsoft.com/sysinternals/downloads/sysmon)
- [Sysmon event reference](https://learn.microsoft.com/en-us/windows/security/operating-system-security/sysmon/sysmon-events)
- [Splunk Universal Forwarder configuration](https://help.splunk.com/en/splunk-enterprise/forward-and-process-data/forwarding-data)
- [Atomic Red Team documentation](https://www.atomicredteam.io/docs/atomic-red-team)
- [MITRE ATT&CK](https://attack.mitre.org/)
