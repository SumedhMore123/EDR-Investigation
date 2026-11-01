# Windows Endpoint Setup

This guide covers the lab endpoint only. Complete the tenant and trial prerequisites in [Microsoft Defender for Endpoint setup](microsoft-defender-for-endpoint-setup.md) first.

1. Create a dedicated Windows 11 VM and take a clean snapshot.
2. Apply updates and create a non-production test account.
3. Confirm the endpoint can reach Microsoft's Defender cloud service endpoints.
4. In the Defender portal, open System > Settings > Endpoints > Device management > Onboarding.
5. Select the Windows operating system and choose the Local script method for a single lab endpoint, where available.
6. Download the onboarding package generated for your tenant. Keep this package private; it is tenant-specific and must never be committed to Git.
7. Follow the exact instructions in the downloaded Microsoft package and run the onboarding script with the required administrator privileges.
8. Open Assets > Devices (or Device inventory, depending on portal navigation) and confirm that the endpoint appears.
9. Run the local checks in scripts/powershell/health-check.ps1 and confirm the endpoint sensor service is present.
10. Run a basic Advanced Hunting query from detections/kql/README.md and confirm recent telemetry from the lab VM is returned.

Do not manually modify sensor files, repackage the onboarding package, or disable Microsoft Defender protections to force onboarding. If the device does not appear, troubleshoot licensing, prerequisites, service connectivity, and onboarding status using Microsoft's documentation.
