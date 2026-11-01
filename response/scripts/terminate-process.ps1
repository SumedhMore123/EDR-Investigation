param(
    [Parameter(Mandatory = $true)]
    [ValidateRange(1, 2147483647)]
    [int]$ProcessId,

    [Parameter(Mandatory = $true)]
    [string]$ExpectedProcessName,

    [switch]$ConfirmLabAction
)

$ErrorActionPreference = 'Stop'

if (-not $ConfirmLabAction) {
    throw "Safety stop: re-run with -ConfirmLabAction only after verifying this is an approved lab process."
}

$process = Get-Process -Id $ProcessId -ErrorAction Stop
if ($process.ProcessName -ne $ExpectedProcessName) {
    throw "Process name mismatch. Expected '$ExpectedProcessName', found '$($process.ProcessName)'. No action taken."
}

Write-Warning "Terminating PID $ProcessId ($ExpectedProcessName). This action is disruptive."
Stop-Process -Id $ProcessId -Confirm
