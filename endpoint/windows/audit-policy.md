# Windows Audit Policy

Enable only the audit subcategories required for project scenarios. Record the policy state in the lab notes and validate that expected Security events are emitted.

Suggested areas:
- Process creation auditing (include command line where appropriate).
- Logon and account logon events for authentication context.
- Policy changes and audit log clearing for defensive visibility.
- Object access only where a specific lab scenario requires it.

Audit policy names and command syntax can vary by Windows edition and policy management method. Document the exact settings used in the tested VM.
