# MITRE ATT&CK Mapping

| Behaviour | ATT&CK technique | MDE evidence source | Investigation notes |
|---|---|---|---|
| PowerShell execution | T1059.001 — PowerShell | DeviceProcessEvents | Encoded or obfuscated command indicators require contextual review; legitimate administration is common. |
| Office application starts a script interpreter | T1059 — Command and Scripting Interpreter | DeviceProcessEvents | Verify the parent/child process relationship and business context. |
| Run / RunOnce autorun registry modification | T1547.001 — Registry Run Keys / Startup Folder | DeviceRegistryEvents | Verify key, value data, initiating process, signer, and whether the change is expected. |
| Script interpreter makes an unusual network connection | Context-dependent; assess T1071 only when application-layer command and control is supported by evidence | DeviceNetworkEvents | A network connection alone does not establish command and control. Review destination, process, URL, timing, and surrounding events. |

## Mapping rules

- Map only behaviour supported by collected evidence.
- Do not infer a technique from a process name alone.
- Treat command-line indicators as leads, not verdicts.
- Re-check technique names and identifiers against the current MITRE ATT&CK knowledge base before final publication.
