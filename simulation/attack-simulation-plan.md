# MDE Attack Simulation and Validation Plan

## Preconditions

1. Confirm that the test tenant has the required Defender for Endpoint Plan 2 capabilities.
2. Confirm that the dedicated Windows lab VM is onboarded and healthy in the Defender portal.
3. Take a clean VM snapshot.
4. Review the exact test procedure, prerequisites, expected telemetry, and cleanup instructions.
5. Keep the test isolated to the authorized lab endpoint. Do not run tests against a personal or production device.

## Execution

1. Select one controlled, low-impact scenario from test-scenarios.md.
2. Record the UTC start time, VM snapshot identifier, test identifier, and operator.
3. Execute one test only.
4. Review Incidents & alerts and the device timeline in the Defender portal.
5. Run the associated Advanced Hunting query from detections/kql.
6. Record whether telemetry appeared, whether an alert was generated, and how quickly it appeared.
7. Preserve sanitized screenshots and query output. Remove tenant-specific identifiers.
8. Run the documented cleanup and verify the lab returns to baseline.
9. Revert the VM snapshot if cleanup is incomplete or the endpoint state is uncertain.

## Validation status

A query returning telemetry is not the same as an alert firing. Record these separately:
- Telemetry visible: yes / no
- Built-in MDE alert generated: yes / no
- Custom detection rule generated an alert: yes / no / not configured
- Analyst classification: true positive / false positive / inconclusive
- Cleanup verified: yes / no

Do not mark a scenario as passed until the expected evidence has been observed in the tenant.

## Safety boundaries

Do not run destructive actions, credential theft, ransomware, persistence that survives the lab, lateral movement, or data-exfiltration tests for the initial MVP. Do not add broad antivirus exclusions or turn off endpoint protections. Refer to the official Atomic Red Team instructions and use only a test whose impact you understand.
