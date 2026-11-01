param(
    [Parameter(Mandatory = $true)]
    [ValidateNotNullOrEmpty()]
    [string]$OutputDirectory
)

$ErrorActionPreference = 'Stop'

# Triage output can contain sensitive process command lines. Protect the destination.
New-Item -ItemType Directory -Path $OutputDirectory -Force | Out-Null
$timestamp = (Get-Date).ToUniversalTime().ToString('yyyyMMddTHHmmssZ')
$summaryPath = Join-Path $OutputDirectory "triage-$timestamp.txt"

@(
    "Collection time (UTC): $([DateTime]::UtcNow.ToString('o'))"
    "Computer: $env:COMPUTERNAME"
    "User context: $env:USERDOMAIN\$env:USERNAME"
    ""
    "Running processes:"
) | Set-Content -Path $summaryPath -Encoding UTF8

Get-CimInstance Win32_Process |
    Select-Object ProcessId, ParentProcessId, Name, ExecutablePath, CommandLine |
    Format-Table -AutoSize |
    Out-String -Width 240 |
    Add-Content -Path $summaryPath -Encoding UTF8

Write-Output "Triage summary saved to $summaryPath"
