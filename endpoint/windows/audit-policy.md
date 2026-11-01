# Optional Windows Audit Policy

Microsoft Defender for Endpoint is the primary telemetry and detection platform for this project. Additional Windows audit policy is optional and should be enabled only when a documented investigation requirement is not met by the MDE telemetry available in the tenant.

Potential supplemental areas:
- Process creation auditing, including command-line capture where appropriate.
- Logon and account logon events.
- Policy changes and audit log clearing.
- Object access only when a specific scenario requires it.

Before changing policy, record the baseline and expected evidence. Audit policy names and syntax vary by Windows edition and management method. Keep exports protected because Security logs can contain sensitive identifiers. This is not a replacement for MDE onboarding.
