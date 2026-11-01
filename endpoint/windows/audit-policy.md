# Windows Audit Policy

Enable only the audit subcategories required for project scenarios. Record policy state and validate expected Security events.

Suggested areas:
- Process creation auditing (include command line where appropriate).
- Logon and account logon events.
- Policy changes and audit log clearing.
- Object access only where a specific scenario requires it.

Audit policy names and command syntax can vary by Windows edition and policy management method. Document the exact settings used in the tested VM.
