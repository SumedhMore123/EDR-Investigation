# Telemetry Data Flow

## Sources
- Sysmon Operational: `Microsoft-Windows-Sysmon/Operational`
- Windows Security: `Security` (only required lab audit events)
- PowerShell Operational: `Microsoft-Windows-PowerShell/Operational`

## Flow
1. Configure Sysmon with reviewed XML.
2. Confirm events in Event Viewer.
3. Configure Universal Forwarder inputs for selected channels.
4. Configure outputs to the Splunk receiver.
5. Confirm the receiver is enabled on Splunk Enterprise.
6. Validate events in the intended index and inspect raw fields.
7. Tune event selection to limit noise and storage.

## Initial validation SPL
```spl
index=soclab earliest=-15m
| stats count by host source sourcetype
| sort - count
```

Process creation validation (adjust field names to actual extracted data):
```spl
index=soclab EventCode=1
| table _time host User Image ParentImage CommandLine ProcessGuid
| sort - _time
```

Do not assume field names are identical across add-ons or input settings. Inspect raw events and normalize fields before building dependent detections.
