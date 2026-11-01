# MDE Advanced Hunting — KQL Starter Queries

These queries are written for Microsoft Defender for Endpoint telemetry in the Microsoft Defender portal's Advanced Hunting experience.

## How to use

1. Confirm that the Windows lab endpoint is onboarded and reporting.
2. Open Hunting > Advanced Hunting at https://security.microsoft.com.
3. Open a query file and paste its contents into the editor.
4. Run it manually and inspect the returned rows.
5. Tune the query for the normal activity in your lab.
6. Record query date, time range, result count, test activity, and false-positive notes.

## Query inventory

| Query | MDE table | Purpose |
|---|---|---|
| suspicious-powershell.kql | DeviceProcessEvents | Find encoded or commonly abused PowerShell command-line indicators |
| office-spawned-interpreter.kql | DeviceProcessEvents | Hunt for script interpreters started by Office applications |
| registry-run-key-modifications.kql | DeviceRegistryEvents | Review changes to common Run and RunOnce autorun locations |
| suspicious-script-host-network.kql | DeviceNetworkEvents | Review network connections initiated by common script hosts |

## Important distinctions

- These are hunting queries, not validated production detections.
- A returned row is telemetry. It is not automatically a true positive.
- A hunting query does not generate an alert unless it is separately configured as a custom detection rule.
- Custom detection rules need additional tuning, permissions, alert metadata, device scope, and appropriate query output. For MDE event-table detections, include Timestamp, DeviceId, and ReportId in the results.
- The starter queries use a recent time filter for manual investigation. Before promoting one to a scheduled custom detection, review Microsoft's requirements and align the query's time range with the detection frequency and lookback.
- Confirm field availability and ActionType values using the schema reference in the portal. Schema and telemetry availability can vary with platform, licensing, and endpoint state.

Official references:
- https://learn.microsoft.com/en-us/defender-xdr/advanced-hunting-schema-tables
- https://learn.microsoft.com/en-us/defender-xdr/custom-detection-rules
