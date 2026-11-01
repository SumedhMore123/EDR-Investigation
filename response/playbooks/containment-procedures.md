# MDE Lab Containment Procedures

## Scope

Use native Microsoft Defender for Endpoint response actions as the primary containment workflow. These procedures are for the disposable lab VM only. They are not an authorization to isolate or alter a personal, college, employer, or production endpoint.

## Before taking action

- Confirm the correct device and tenant.
- Confirm the incident evidence and document the reason for containment.
- Preserve relevant evidence or collect an investigation package where appropriate.
- Record the UTC time, operator, device, incident ID, and planned action.
- Obtain explicit approval before disruptive actions.

## Native MDE response sequence

1. Open the incident or device page in the Microsoft Defender portal.
2. Review alert evidence and the device timeline.
3. Collect an investigation package when additional host evidence is needed.
4. Run a Microsoft Defender Antivirus scan when appropriate.
5. Use Live Response for approved remote investigation or remediation. Enable the feature in the portal and confirm role permissions first.
6. Isolate the lab device only when the scenario requires containment and the endpoint is disposable. Isolation changes the device's network connectivity; follow the portal confirmation flow.
7. Track the operation and its result in Action Center.
8. Record the post-action device state and validate whether the threat or test condition has been contained.

## Rollback and recovery

- Do not assume that isolation or remediation succeeded until the portal reports completion.
- Release the device from isolation using the supported Defender portal action after the test is complete and it is safe to reconnect.
- Confirm the endpoint is healthy and reporting.
- Restore the VM snapshot if the test changed endpoint state or cleanup is uncertain.
- Record the recovery time and validation result.

## Important

Live Response and some investigation capabilities require Microsoft Defender for Endpoint Plan 2. Exact action availability depends on licensing, endpoint platform, role permissions, and device configuration. Do not run unreviewed scripts or automatic remediation actions on a system outside the lab.
