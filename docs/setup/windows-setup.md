# Windows Endpoint Setup

1. Create a Windows 10/11 lab VM.
2. Apply updates and create a non-production test account.
3. Configure an isolated/host-only network where possible.
4. Install Sysmon from the official Microsoft Sysinternals distribution.
5. Apply the reviewed project XML in `endpoint/sysmon/sysmon-config.xml`.
6. Verify events in Event Viewer under **Applications and Services Logs → Microsoft → Windows → Sysmon → Operational**.
7. Enable only the audit and PowerShell logging required by the lab.
8. Install Splunk Universal Forwarder and configure local copies of the example inputs/outputs.
9. Confirm forwarding and validate incoming events in Splunk.

Do not commit real machine hostnames, credentials or environment-specific local configuration.
