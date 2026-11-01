# Controlled Atomic Red Team Scenarios

Run only on the disposable Windows lab VM after taking a snapshot. Review prerequisites, attack commands and cleanup instructions upstream.

| Scenario | ATT&CK area | Telemetry to validate | Safety notes |
|---|---|---|---|
| PowerShell execution | T1059.001 | Sysmon Event 1, PowerShell logs | Select a benign test with clear cleanup |
| Registry Run-key modification | T1547.001 | Sysmon Events 12–14 | Use a test value and cleanup procedure |
| Process activity with network connection | Network activity context | Sysmon Events 1 and 3, optionally 22 | Use benign controlled destinations |

Record exact upstream Atomic test identifier, commands, expected result, observed evidence and cleanup status. Do not run destructive or credential-theft tests for this MVP.
