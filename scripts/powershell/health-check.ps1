Write-Host "EDR lab endpoint health check"
Write-Host "Computer: $env:COMPUTERNAME"
Write-Host "Time (UTC): $([DateTime]::UtcNow.ToString('o'))"

$sysmon = Get-Service -Name Sysmon64, Sysmon -ErrorAction SilentlyContinue |
    Select-Object Name, Status, StartType
if ($sysmon) { $sysmon | Format-Table -AutoSize }
else { Write-Warning "Sysmon service was not found." }

$forwarder = Get-Service -Name SplunkForwarder -ErrorAction SilentlyContinue |
    Select-Object Name, Status, StartType
if ($forwarder) { $forwarder | Format-Table -AutoSize }
else { Write-Warning "Splunk Universal Forwarder service was not found." }

Write-Host "Review Sysmon Operational channel and Splunk search results for end-to-end validation."
