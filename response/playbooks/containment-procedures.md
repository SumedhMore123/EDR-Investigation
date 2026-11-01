# Lab Containment Procedures

## Before containment
- Confirm the endpoint is a disposable lab VM.
- Capture a VM snapshot or preserve required evidence.
- Record host, user, alert, timestamp and reason.
- Obtain explicit operator approval.

## Demonstration actions
- Process termination: only for a verified test process, with PID and process-name checks.
- Host isolation: use the simulation script or a documented hypervisor network action. Do not run unreviewed network-disruption automation.
- Preserve logs and record the action and rollback.

## Rollback
Restore the VM network to its documented isolated lab configuration and verify forwarding resumes. Record rollback time and validation result.
