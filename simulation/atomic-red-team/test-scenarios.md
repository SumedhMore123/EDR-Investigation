# Controlled Test Scenarios for MDE

Run tests only on the dedicated Windows lab VM after taking a snapshot. Review the upstream test prerequisites, exact commands, expected impact, and cleanup procedure before execution.

| Scenario | ATT&CK area | MDE telemetry to review | Starter query |
|---|---|---|---|
| Benign PowerShell process launch | T1059.001 | Process command line, account, parent process | suspicious-powershell.kql |
| Script interpreter launched by Office | T1059.001 | Process and initiating-process relationship | office-spawned-interpreter.kql |
| Test Run-key value modification | T1547.001 | Registry key, value, modifying process | registry-run-key-modifications.kql |
| Script-host network activity | Depends on observed behaviour | Remote IP/URL, port, protocol, initiating process | suspicious-script-host-network.kql |

## Suggested first validation

Start with a benign PowerShell process that only reads system information, such as launching PowerShell to execute Get-Date. This should generate process telemetry, but it is not expected to be malicious or necessarily trigger a built-in alert.

Use the KQL query to confirm that the event is visible. A telemetry check is a successful sensor/visibility test, not proof that the platform detected an attack.

## Atomic Red Team usage

Use Atomic Red Team only for tests with clear prerequisites and cleanup, on a disposable VM. Do not select tests involving real credential access, destructive changes, ransomware, exfiltration, or persistence that is not fully cleaned up. Record the exact Atomic test identifier and version in the case notes.

## Evidence to capture

- Test name and ATT&CK technique.
- VM snapshot and test time in UTC.
- MDE device name (redacted before publishing).
- Query used and sanitized output.
- Alert or incident ID, if one was generated.
- Analyst verdict, false-positive notes, and cleanup status.
