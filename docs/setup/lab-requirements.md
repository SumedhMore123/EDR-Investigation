# Lab Requirements

## Minimum topology

- One Windows 10/11 virtual machine for endpoint telemetry and simulation.
- One Ubuntu virtual machine running Splunk Enterprise, or an existing Splunk Enterprise lab instance.
- Splunk Universal Forwarder installed on Windows.
- Host-only or isolated lab network with endpoint-to-Splunk connectivity.

## Suggested resources

Allocate CPU, memory and disk based on the host's available resources. Keep the VM count minimal for the MVP. Take clean snapshots before installing telemetry tools and before each simulation series.

## Safety

Use synthetic accounts and test data. Never execute adversary simulations on a personal or production endpoint. Verify cleanup steps and revert snapshots when needed.
