param(
    [switch]$ConfirmLabSimulation
)

if (-not $ConfirmLabSimulation) {
    throw "Safety stop: this script performs no network changes. Pass -ConfirmLabSimulation to record a simulated isolation action."
}

$record = [pscustomobject]@{
    TimestampUtc = [DateTime]::UtcNow.ToString('o')
    Host = $env:COMPUTERNAME
    Action = 'SIMULATED_HOST_ISOLATION'
    ChangedNetworkConfiguration = $false
    Note = 'No firewall, adapter, route or network configuration was changed.'
}

$record | ConvertTo-Json -Depth 3
