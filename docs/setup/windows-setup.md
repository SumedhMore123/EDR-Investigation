# Windows Endpoint Setup

1. Create a Windows 10/11 lab VM.
2. Apply updates and create a dedicated non-production test account.
3. Configure the VM network as isolated/host-only where possible.
4. Install Sysmon from the official Microsoft Sysinternals distribution.
5. Apply the reviewed project configuration in `endpoint/sysmon/sysmon-config.xml`.
6. Verify events in Event Viewer under **Applications and Services Logs → Microsoft → Windows → Sysmon → Operational**.
7. Enable only the audit and PowerShell logging required by the lab.
8. Install Splunk Universal Forwarder and configure the example inputs/outputs after replacing placeholders.
9. Confirm forwarding and validate incoming events in Splunk.

Do not commit a real machine hostname, IP inventory, credentials or local environment configuration.
