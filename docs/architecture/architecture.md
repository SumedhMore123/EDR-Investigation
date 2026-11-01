# Microsoft Defender for Endpoint Lab Architecture

## Scope

This project uses Microsoft Defender for Endpoint (MDE) Plan 2 as the actual EDR platform. The goal is to demonstrate endpoint onboarding, endpoint telemetry visibility, detection engineering, investigation, and response using MDE's built-in cloud service and portal.

This is not a custom endpoint agent and does not use Splunk as a central log collector or SIEM in the core workflow.

## Logical architecture

    +---------------------------------------+
    | Dedicated Windows 11 lab VM           |
    | Microsoft Defender endpoint sensor    |
    +-------------------+-------------------+
                        |
                        | Onboarded endpoint telemetry
                        v
    +---------------------------------------+
    | Microsoft Defender for Endpoint cloud |
    | Analytics, detections, threat intel    |
    +-------------------+-------------------+
                        |
              +---------+----------+
              |                    |
              v                    v
    +----------------------+  +----------------------+
    | Defender portal      |  | Advanced Hunting      |
    | Incidents / alerts   |  | KQL over MDE tables   |
    | Device inventory     |  | Process / network /   |
    | Device timeline      |  | registry / file data  |
    +----------+-----------+  +----------+-----------+
               |                         |
               +------------+------------+
                            v
    +---------------------------------------+
    | Analyst investigation                 |
    | Triage, scope, timeline, evidence      |
    +-------------------+-------------------+
                        |
                        v
    +---------------------------------------+
    | Native MDE response                   |
    | Isolate, scan, collect package,       |
    | Live Response, Action Center          |
    +---------------------------------------+

## Components

1. **Endpoint:** A dedicated Windows 11 VM with Microsoft Defender for Endpoint onboarded. The MDE sensor is part of the supported endpoint security stack; onboarding connects the device to the tenant.
2. **Cloud service:** MDE receives endpoint signals and applies cloud analytics and threat intelligence to produce alerts, incidents, and investigation context.
3. **Defender portal:** The analyst reviews device inventory, incidents, alerts, device timelines, and available response actions.
4. **Advanced Hunting:** KQL queries inspect MDE tables such as DeviceProcessEvents, DeviceNetworkEvents, DeviceRegistryEvents, and DeviceFileEvents. These tables depend on successfully onboarded devices and available telemetry.
5. **Response:** Native device actions and Live Response are used for approved investigation and containment. Actions are logged and their outcomes are verified in the portal.

## Trust boundaries and safety

- Use a dedicated test tenant and a disposable VM.
- Keep endpoint connectivity to Microsoft cloud services available; do not attempt to block MDE service communication.
- Do not expose remote management services to the internet.
- Restrict portal access using least-privilege roles and device scope.
- Device isolation is disruptive. Use it only on the lab VM after evidence collection and explicit approval.
- Do not upload tenant-specific onboarding packages or credentials to this repository.

## Design decisions

- MDE Plan 2 is the target trial tier because the project uses Advanced Hunting, custom detections, and Live Response.
- One Windows 11 endpoint is sufficient for the initial proof of concept.
- Sysmon, Splunk Enterprise, and Splunk Universal Forwarder are not required for the core project.
- Optional Windows audit or PowerShell logging can supplement MDE only when a specific investigation gap justifies the additional data.
- Starter KQL is not considered production-ready until it has been tested, tuned, and documented with evidence.
