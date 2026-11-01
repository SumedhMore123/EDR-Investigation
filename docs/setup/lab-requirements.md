# Lab Requirements

## Minimum topology
- One Windows 10/11 VM for endpoint telemetry and simulation.
- One Ubuntu VM running Splunk Enterprise, or an existing Splunk Enterprise lab instance.
- Splunk Universal Forwarder installed on Windows.
- Host-only or isolated lab network with endpoint-to-Splunk connectivity.

Allocate CPU, memory and disk based on available host resources. Keep the VM count minimal for the MVP. Take clean snapshots before installing telemetry tools and before each simulation series.

Use synthetic accounts and test data. Never execute adversary simulations on personal or production endpoints. Verify cleanup steps and revert snapshots when needed.
