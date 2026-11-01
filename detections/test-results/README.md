# MDE Detection and Hunting Test Results

For each query or detection, record:

- Query or rule name, version, and file path.
- Tenant trial/license tier and test date. Do not publish tenant IDs.
- Device/VM snapshot identifier (use a sanitized alias).
- Test name, Atomic test identifier if applicable, and ATT&CK technique.
- Query execution time range and timezone.
- Expected MDE telemetry table and fields.
- Actual row count and sanitized evidence reference.
- Built-in MDE alert generated: yes / no.
- Custom detection rule configured: yes / no; include sanitized rule name and frequency.
- Analyst verdict: true positive / false positive / inconclusive.
- Known false positives and tuning changes.
- Cleanup and endpoint recovery status.

A KQL query returning rows demonstrates telemetry visibility. It does not prove that a built-in or custom detection alert fired. Do not mark a detection as validated until the expected event and alert behaviour have both been tested as applicable.
