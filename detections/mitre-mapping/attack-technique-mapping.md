# MITRE ATT&CK Mapping

| Behaviour | ATT&CK technique | Evidence source | Notes |
|---|---|---|---|
| PowerShell execution | T1059.001 | Sysmon Event 1 / PowerShell logs | Encoded command is an indicator, not proof |
| Registry Run key persistence | T1547.001 | Sysmon Events 12–14 | Validate exact path and process context |
| Suspicious Office child process | T1059 | Sysmon Event 1 | Parent-child relationship requires field normalization |
| LSASS process access | T1003.001 (investigation context) | Sysmon Event 10 | Process access alone does not prove credential dumping |

Re-check technique identifiers against the current ATT&CK knowledge base before final publication.
