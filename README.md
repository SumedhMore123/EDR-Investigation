# Microsoft Defender for Endpoint — EDR Investigation Lab

A hands-on endpoint detection, investigation, and response project built around **Microsoft Defender for Endpoint (MDE) Plan 2**. The lab uses a dedicated Windows endpoint, the Microsoft Defender portal, Advanced Hunting with KQL, and native EDR response actions.

> **Platform decision:** Microsoft Defender for Endpoint is the EDR solution used by this project. Splunk is not part of the core architecture. This is an implementation and investigation lab using a real EDR platform, not a custom EDR agent.

## Project objectives

- Provision and verify an MDE Plan 2 evaluation tenant.
- Onboard a dedicated Windows 11 lab endpoint.
- Validate endpoint sensor health and cloud reporting.
- Investigate incidents, alerts, device timelines, processes, files, registry changes, and network activity in the Defender portal.
- Develop and tune KQL hunting queries using MDE telemetry.
- Map observed behaviours to MITRE ATT&CK.
- Demonstrate controlled response through device isolation, investigation-package collection, antivirus scans, and Live Response.
- Produce repeatable case notes, evidence references, and test results.

## Architecture

See [architecture](docs/architecture/architecture.md), [data flow](docs/architecture/data-flow.md), and [MDE setup](docs/setup/microsoft-defender-for-endpoint-setup.md).

| Layer | Platform / component |
|---|---|
| Endpoint | Dedicated Windows 11 VM |
| EDR sensor | Microsoft Defender for Endpoint endpoint sensor |
| Management and analytics | Microsoft Defender cloud service and Defender portal |
| Investigation | Device inventory, incidents, alerts, device timeline |
| Threat hunting | Advanced Hunting (KQL) |
| Detection engineering | KQL starter hunts and MDE custom detection rules |
| Response | Native MDE device actions and Live Response |
| Validation | Controlled benign activity and selected Atomic Red Team tests |
| Framework | MITRE ATT&CK |

## Repository layout

- docs/architecture — EDR architecture and telemetry flow
- docs/setup — trial, tenant, endpoint onboarding, and lifecycle steps
- detections/kql — Advanced Hunting starter queries
- detections/mitre-mapping — ATT&CK coverage map
- detections/test-results — validation evidence template
- simulation — controlled test plan and scenarios
- investigation — investigation workflow and case records
- response/playbooks — MDE portal response procedures
- endpoint/windows — optional Windows audit and PowerShell logging references
- scripts — local lab health and evidence utilities

## Trial scope

The project is planned around a **30-day evaluation window** using Microsoft Defender for Endpoint Plan 2 trial access. The actual trial duration, eligibility, and licensed capabilities must be confirmed in the Microsoft 365 admin center for the tenant being used. Record the expiration date shown by Microsoft; do not assume that every offer has identical terms. See [trial lifecycle](docs/setup/trial-lifecycle.md).

## Lab safety

- Use a dedicated, disposable Windows VM and a test tenant. Do not onboard a personal, college, employer, or production endpoint.
- Take a clean VM snapshot before simulations.
- Use least-privilege portal roles. Avoid using Global Administrator for routine investigation.
- Do not disable Microsoft Defender protections or add broad exclusions to make a test pass.
- Use only simulations you understand and are authorized to run. Review cleanup instructions first.
- Never commit tenant-specific onboarding packages, API tokens, credentials, real device identifiers, raw sensitive exports, or unredacted screenshots.

## Current status

**Documentation and starter-query refactor.** The architecture and project workflow are now MDE-focused. The KQL queries and operational steps are starter material and have not yet been executed or validated in the user's tenant. Record actual results before describing a detection or response action as successful.

## Microsoft references

- [Microsoft Defender for Endpoint Plan 2 trial guide](https://learn.microsoft.com/en-us/defender-endpoint/defender-endpoint-trial-user-guide)
- [Onboard Windows client devices](https://learn.microsoft.com/en-us/defender-endpoint/onboard-client)
- [Run a detection test](https://learn.microsoft.com/en-us/defender-endpoint/run-detection-test)
- [Advanced Hunting schema](https://learn.microsoft.com/en-us/defender-xdr/advanced-hunting-schema-tables)
- [Create custom detection rules](https://learn.microsoft.com/en-us/defender-xdr/custom-detection-rules)
- [Live Response](https://learn.microsoft.com/en-us/defender-endpoint/live-response)
- [Microsoft Defender for Endpoint response actions](https://learn.microsoft.com/en-us/defender-endpoint/respond-machine-alerts)
- [MITRE ATT&CK](https://attack.mitre.org/)
