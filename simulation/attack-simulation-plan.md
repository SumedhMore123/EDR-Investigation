# Attack Simulation Plan

1. Verify isolation and take a clean VM snapshot.
2. Confirm Sysmon and Splunk forwarding are healthy.
3. Select a benign Atomic Red Team test relevant to one project detection.
4. Review prerequisites, test commands and cleanup commands.
5. Execute one test at a time.
6. Record exact test identifier and start/end time in UTC.
7. Validate endpoint telemetry and Splunk ingestion.
8. Run the associated detection and document the result.
9. Perform cleanup and verify the lab returns to baseline.
10. Revert the VM snapshot if cleanup is incomplete.

Authorization and isolation are mandatory. Refer to official Atomic Red Team documentation before running tests.
