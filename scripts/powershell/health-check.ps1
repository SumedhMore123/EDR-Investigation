# Local health checks for the Microsoft Defender for Endpoint lab endpoint.
# This script does not onboard devices or change security configuration.

$ErrorActionPreference = 'Continue'

Write-Host "MDE lab endpoint health check"
Write-Host "Computer: $env:COMPUTERNAME"
Write-Host "Time (UTC): $([DateTime]::UtcNow.ToString('o'))"

$sense = Get-Service -Name Sense -ErrorAction SilentlyContinue |
    Select-Object Name, Status, StartType

if ($sense) {
    $sense | Format-Table -AutoSize
} else {
    Write-Warning "The Sense service was not found. Check Windows support, MDE onboarding, and endpoint prerequisites."
}

if (Get-Command Get-MpComputerStatus -ErrorAction SilentlyContinue) {
    try {
        $status = Get-MpComputerStatus
        [pscustomobject]@{
            AMServiceEnabled        = $status.AMServiceEnabled
            AntivirusEnabled        = $status.AntivirusEnabled
            RealTimeProtection      = $status.RealTimeProtectionEnabled
            AntivirusSignatureAge  = $status.AntivirusSignatureAge
        } | Format-List
    } catch {
        Write-Warning "Could not query Microsoft Defender Antivirus status: $($_.Exception.Message)"
    }
} else {
    Write-Warning "Get-MpComputerStatus is not available in this PowerShell session."
}

Write-Host "Important: local service status does not prove cloud connectivity, license assignment, or successful tenant onboarding."
Write-Host "Confirm device health and recent telemetry in the Microsoft Defender portal."
