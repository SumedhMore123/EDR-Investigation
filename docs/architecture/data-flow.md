# Telemetry Data Flow

## Sources

- Sysmon Operational channel: `Microsoft-Windows-Sysmon/Operational`
- Windows Security channel: `Security` (only events enabled by the lab audit policy)
- PowerShell Operational channel: `Microsoft-Windows-PowerShell/Operational`

## Collection flow

1. Configure Sysmon with a reviewed XML configuration.
2. Confirm event generation in Event Viewer.
3. Configure Splunk Universal Forwarder inputs for the selected channels.
4. Configure outputs to the Splunk receiver.
5. Confirm the receiving port is enabled on Splunk Enterprise.
6. Validate events in the intended index and inspect timestamp, host, source and sourcetype fields.
7. Tune event selection to limit noise and storage consumption.

## Initial validation

Example SPL after ingestion (adjust index and sourcetype to match the actual configuration):

```spl
index=soclab earliest=-15m
| stats count by host source sourcetype
| sort - count
```

Sysmon process creation validation:

```spl
index=soclab EventCode=1
| table _time host User Image ParentImage CommandLine ProcessGuid
| sort - _time
```

Do not assume field names are identical across add-ons or input configurations. Inspect raw events and normalize fields before writing dependent detections.
