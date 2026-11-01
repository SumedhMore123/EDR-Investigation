# Lab Requirements

## Required tenant and access

- A Microsoft Defender for Endpoint Plan 2 trial or another tenant license that explicitly includes the Plan 2 capabilities used in this project.
- Access to the Microsoft Defender portal at https://security.microsoft.com.
- An account with the minimum required permissions to onboard the endpoint, view device inventory, run Advanced Hunting queries, and perform the selected response actions.
- Confirm the actual trial expiration date and enabled capabilities in the Microsoft 365 admin center before starting the lab.

## Endpoint

- One dedicated Windows 11 VM is recommended for the initial project.
- Keep the VM separate from personal, college, employer, and production systems.
- Apply Windows updates and create a non-production local test account.
- Maintain internet connectivity to Microsoft's required Defender service endpoints.
- Take a clean VM snapshot before onboarding and before each simulation series.

## Host resources

Allocate CPU, memory, and disk according to the host's available capacity. A single Windows endpoint is enough for the MVP; do not add a SIEM VM or extra infrastructure to this EDR-only design.

## Tools

- Microsoft Defender portal
- Microsoft Defender for Endpoint endpoint sensor
- Advanced Hunting (KQL)
- PowerShell for local health checks
- Optional Atomic Red Team tests after reviewing their prerequisites and cleanup steps

## Data handling

Use synthetic accounts and test data. Never upload tenant onboarding scripts, API keys, passwords, real user data, raw sensitive event exports, or unredacted screenshots to GitHub.
