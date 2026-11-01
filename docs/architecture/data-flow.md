# Microsoft Defender for Endpoint Data Flow

## Primary telemetry path

1. Prepare a supported Windows endpoint and confirm that the tenant has the required MDE Plan 2 trial capability.
2. In the Microsoft Defender portal, select the Windows onboarding method and download the tenant-specific onboarding package.
3. Run the onboarding procedure on the dedicated lab endpoint using the deployment instructions provided by Microsoft.
4. Verify that the endpoint appears in Device inventory and that its sensor reports healthy status.
5. MDE endpoint signals are sent to the Microsoft cloud service for analytics and threat detection.
6. Review generated alerts, incidents, device information, and the device timeline in the Defender portal.
7. Use Advanced Hunting KQL to inspect process, network, registry, and file telemetry.
8. Perform approved response actions from the device or incident page and verify the result in Action Center.

## Main Advanced Hunting tables

| Table | Typical investigation use |
|---|---|
| DeviceProcessEvents | Process creation, command lines, parent process, account context |
| DeviceNetworkEvents | Network connections and initiating process context |
| DeviceRegistryEvents | Registry key and value creation or modification |
| DeviceFileEvents | File creation, modification, hashes, and origin metadata |
| DeviceLogonEvents | Logon and authentication activity |
| DeviceInfo | Endpoint identity, OS, onboarding state, and sensor metadata |

Use the schema reference available in the portal to confirm table columns and ActionType values for the tenant.

## Validation checkpoints

- The device is visible in Device inventory.
- The device onboarding status and sensor health are healthy.
- Recent process activity is visible in Advanced Hunting.
- The KQL query returns events from the intended lab endpoint.
- A controlled test produces the expected telemetry or alert.
- Response actions appear in Action Center with a recorded status.

No Splunk receiver, Universal Forwarder, or separate SIEM ingestion path is required for this project's core design. Do not add a secondary collector unless the project scope changes.
