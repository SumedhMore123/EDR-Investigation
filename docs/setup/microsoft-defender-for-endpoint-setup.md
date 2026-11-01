# Microsoft Defender for Endpoint Plan 2 — Setup

## 1. Confirm the trial and license

1. Activate the Microsoft Defender for Endpoint Plan 2 trial in the Microsoft 365 tenant that will be used for this lab.
2. Open the Microsoft 365 admin center and confirm that the trial subscription is provisioned and active.
3. Verify that the intended analyst account has the required permissions for endpoint onboarding, Advanced Hunting, incident investigation, and response.
4. Record the trial start date and the expiration date displayed by Microsoft in a private project note. Do not publish tenant IDs, account details, or subscription identifiers.

The project uses Plan 2 because the workflow includes Advanced Hunting, custom detection rules, and Live Response. A generic Defender trial or a Plan 1-only license might not provide every capability described here. Confirm the exact SKU and capabilities shown in the tenant before continuing.

Official guide: https://learn.microsoft.com/en-us/defender-endpoint/defender-endpoint-trial-user-guide

## 2. Open the Defender portal

1. Sign in at https://security.microsoft.com.
2. Confirm that the Endpoints area and Microsoft Defender for Endpoint settings are available.
3. Use least-privilege roles. Avoid Global Administrator for day-to-day SOC activities. A read-only role might not expose device inventory or response actions, so assign only the specific roles and permissions required for the lab.

## 3. Configure the endpoint capabilities

In the Defender portal, review Settings > Endpoints and the Advanced features area.

For this project, confirm the availability and configuration of:
- Endpoint detection and response (EDR).
- Advanced Hunting.
- Automated investigation and remediation, where available.
- Live Response. Enable the Live Response capability before attempting a remote session.
- Microsoft Defender Antivirus and cloud-delivered protection on the Windows lab VM.

Do not enable unsigned Live Response script execution unless the lab has a documented need and the additional risk is accepted. Never weaken protections simply to make a test easier.

## 4. Onboard the Windows lab endpoint

1. Create the dedicated Windows 11 VM and take a clean snapshot.
2. In the Defender portal, go to System > Settings > Endpoints > Device management > Onboarding.
3. Select Windows as the operating system.
4. Select the Local script deployment method for a single test device, where that option is available. Microsoft's client onboarding guide lists local script onboarding for Windows 10/11 and Windows 365, with a limit of up to 10 devices for this method.
5. Download the onboarding package created for your tenant.
6. Transfer it securely to the lab VM and follow the exact instructions included in the downloaded package.
7. Run the onboarding script with the required administrator privileges.
8. Wait for the endpoint to appear in Assets > Devices / Device inventory.
9. Run scripts/powershell/health-check.ps1 locally and verify recent device activity in the portal.

Do not modify, repackage, publish, or share the tenant-specific onboarding package. The package is not a generic project file.

Official guide: https://learn.microsoft.com/en-us/defender-endpoint/onboard-client

## 5. Validate telemetry

1. Open Hunting > Advanced Hunting in the Defender portal.
2. Run the basic query below.
3. Replace the device filter with the lab endpoint alias as needed.
4. Confirm that process events are returned for the onboarded VM.

    DeviceProcessEvents
    | where Timestamp > ago(1h)
    | where DeviceName has "LAB"
    | project Timestamp, DeviceId, DeviceName, ReportId, FileName, ProcessCommandLine
    | order by Timestamp desc

A query returning data confirms telemetry visibility for the selected time range. It does not mean that a malicious behaviour was detected or that an alert was generated.

## 6. Build detections only after validation

Use the starter queries in detections/kql. Run each manually, inspect its results, tune false positives, and document the test evidence.

Only then consider creating a custom detection rule from the Advanced Hunting query editor. Microsoft recommends returning Timestamp plus DeviceId and ReportId for MDE event-table detections. Review the rule frequency, lookback, alert details, scope, permissions, and response actions before enabling it.

Official guide: https://learn.microsoft.com/en-us/defender-xdr/custom-detection-rules

## 7. Confirm response permissions

Before the first response exercise:
- Confirm the lab endpoint is the selected device.
- Confirm that Live Response is enabled and the analyst role permits the intended actions.
- Confirm that device isolation and investigation-package collection are available.
- Use Action Center to monitor response-action status.

Live Response documentation: https://learn.microsoft.com/en-us/defender-endpoint/live-response
