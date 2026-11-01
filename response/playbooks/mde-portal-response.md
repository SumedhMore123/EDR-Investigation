# MDE Portal Response Playbook

This playbook is for the dedicated Windows lab VM. Response actions can disrupt a device; never use this workflow against an endpoint unless you own it or have explicit authorization.

## 1. Confirm and scope

- Open the incident in the Microsoft Defender portal.
- Confirm the device, user, alert time, severity, and evidence.
- Review the device timeline and related process, file, registry, and network events.
- Use Advanced Hunting to scope activity around the event and identify related activity.

## 2. Preserve evidence

- Record the incident ID, alert ID, device alias, timestamps, query name, and observed findings.
- Collect an investigation package from the device when the case requires additional host context.
- Sanitize downloaded material before storing or publishing it. Treat investigation packages and raw event exports as sensitive.

## 3. Select response actions

Use the response action appropriate to the confirmed lab scenario:

| Action | Use |
|---|---|
| Run antivirus scan | Run an appropriate Microsoft Defender Antivirus scan |
| Collect investigation package | Gather device evidence for offline review |
| Live Response | Perform approved remote investigation or remediation commands |
| Isolate device | Contain the dedicated lab VM from the network when isolation is required |
| Automated investigation | Review and use available investigation/remediation capabilities within the trial |

Do not automate isolation or remediation before validating the query and the endpoint scope.

## 4. Verify the outcome

- Monitor the operation in Action Center.
- Confirm the action completed successfully; do not assume success from clicking the action.
- Check the endpoint state and device health.
- For isolation, release the lab VM only after the exercise is complete and it is safe to reconnect.
- Restore the VM snapshot if cleanup or recovery is uncertain.

## 5. Record the case

Record the analyst decision, response rationale, approval, action status, recovery result, and any detection gap. Distinguish an MDE built-in alert from a custom detection alert and from a manual hunting result.

## Licensing and permissions

Live Response and other response capabilities can depend on the Plan 2 license, role permissions, endpoint platform, and portal configuration. Verify availability in the tenant before the exercise.

References:
- https://learn.microsoft.com/en-us/defender-endpoint/live-response
- https://learn.microsoft.com/en-us/defender-endpoint/investigate-machines
- https://learn.microsoft.com/en-us/defender-endpoint/respond-machine-alerts
