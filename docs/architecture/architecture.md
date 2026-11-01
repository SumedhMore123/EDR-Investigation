# EDR Investigation Lab Architecture

## Purpose and scope

This project implements a reproducible, SIEM-backed Windows endpoint detection and investigation lab. It demonstrates telemetry collection, behavioural detection, event correlation, analyst investigation, and controlled response.

It is not a custom endpoint agent, kernel driver, or production EDR platform.

## Logical architecture

```text
+--------------------------+
| Windows 10/11 Lab VM     |
|                          |
| Sysmon                  |
| Windows Security Logs   |
| PowerShell Operational  |
+------------+-------------+
             |
             | Windows Event Log inputs
             v
+--------------------------+
| Splunk Universal         |
| Forwarder                |
| inputs.conf / outputs.conf
+------------+-------------+
             |
             | Forwarding TCP 9997 (lab default)
             v
+--------------------------+
| Splunk Enterprise        |
| Ubuntu Server VM         |
| Index: soclab             |
+------------+-------------+
             |
             v
+--------------------------+
| Detection & Correlation  |
| SPL searches             |
| Sigma rule source        |
| Severity & ATT&CK tags   |
+------------+-------------+
             |
             v
+--------------------------+
| Analyst Investigation    |
| Alert triage             |
| Process tree & timeline  |
| Evidence collection      |
| Incident report          |
+------------+-------------+
             |
             v
+--------------------------+
| Controlled Response      |
| Lab-only actions         |
| Containment simulation   |
| Evidence preservation    |
+--------------------------+
```

## Core components

1. **Endpoint telemetry:** Sysmon records process, network, file, registry and process-access events according to its configuration. Windows Security and PowerShell logs add context.
2. **Collection:** Splunk Universal Forwarder reads selected Windows event channels and forwards events.
3. **Analytics:** Splunk Enterprise stores and searches telemetry. The project uses SPL as its executable detection layer and Sigma as portable detection documentation where practical.
4. **Investigation:** Analysts correlate events by host, user, process GUID, process ID, parent process and time. A single event is not treated as proof of compromise.
5. **Response:** Response actions are explicitly authorized, scoped to the lab, logged and reversible where possible.

## Network and trust boundaries

- Use a host-only or otherwise isolated VM network for simulation.
- Allow only required host-to-host forwarding traffic.
- In the lab, Splunk receiving commonly listens on TCP 9997; verify the configured receiver port rather than assuming it.
- Do not expose Splunk management interfaces or Windows management services to the public internet.
- Do not place credentials, API tokens, private IPs from non-lab environments or sensitive event exports in Git.

## Design decisions

- Start with one Windows endpoint and one Splunk instance to keep the MVP achievable.
- Enable high-value Sysmon events first, then tune volume.
- Event ID 3 (NetworkConnect) and Event ID 7 (ImageLoad) can be high-volume; enable selectively based on lab objectives.
- Use process GUIDs and timestamps for reliable correlation; PIDs can be reused.
- Treat response as a lab demonstration, not autonomous production containment.
