# MDE Trial Lifecycle — 30-Day Project Plan

## Important licensing note

This repository is planned around a 30-day evaluation window, but trial length, eligibility, and feature availability depend on the exact Microsoft offer and tenant. The official Microsoft Defender for Endpoint Plan 2 trial guide does not guarantee that every tenant receives identical trial terms. Use the expiration date shown in the Microsoft 365 admin center as the source of truth.

## Before starting the clock

- Confirm the trial SKU is Microsoft Defender for Endpoint Plan 2 or an equivalent offer that explicitly includes all required capabilities.
- Confirm the tenant can access Advanced Hunting and the Live Response settings.
- Confirm the dedicated Windows 11 VM is ready.
- Record the tenant trial start and expiration dates in a private note.
- Take a clean VM snapshot.

## Suggested 30-day work plan

| Period | Goal | Evidence to produce |
|---|---|---|
| Days 1–3 | Trial verification, role setup, portal orientation | Sanitized license/capability checklist |
| Days 4–6 | Onboard one Windows 11 VM | Device inventory evidence and local health-check output |
| Days 7–10 | Validate telemetry and learn device timeline | Sanitized process/file/network/registry results |
| Days 11–16 | Build and tune KQL hunting queries | Query versions, result samples, false-positive notes |
| Days 17–21 | Test controlled behaviours and custom detections | Test records, alert or no-alert outcomes |
| Days 22–25 | Practise triage and native MDE response | Investigation case and Action Center evidence |
| Days 26–28 | Complete a full incident walkthrough | End-to-end case report and screenshots |
| Days 29–30 | Export sanitized evidence and close the lab | Final report, GitHub update, device offboarding plan |

Adjust this plan to the actual trial end date. Do not delay endpoint offboarding until after the license expires.

## Before trial expiration

If the tenant will not be converted to a paid subscription:

1. Export only the evidence needed for the project.
2. Remove tenant IDs, usernames, public IPs, device identifiers, and other sensitive data from screenshots and files.
3. Offboard the lab endpoint using the supported Microsoft procedure before the trial expires.
4. Confirm that the endpoint is no longer reporting to the tenant as expected.
5. Remove downloaded tenant onboarding packages from shared locations and protect any retained evidence.
6. Record the offboarding date and final state.

Microsoft's trial guide explicitly instructs customers who do not renew or purchase a subscription to offboard devices before the trial expires.

Official trial guide: https://learn.microsoft.com/en-us/defender-endpoint/defender-endpoint-trial-user-guide
