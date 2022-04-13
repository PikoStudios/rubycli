# Version URI
$verUri = "https://raw.githubusercontent.com/PikoStudios/rubycli/main/.version"

Set-Location ../..

Write-Output "==> STAND BY <== :: Creating 'gembuild' folder"
New-Item -Path gembuild -ItemType Directory

Write-Output "==> STAND BY <== :: Checking version"
$version = Get-Content -Path .version

Write-Output "==> STAND BY <== :: Checking for updates"
$verRequest = Invoke-RestMethod -Uri $verUri

if ($verRequest -eq $version)
{
    Write-Output "* Up to date *"
}
else
{
    $formattedString = "* New version avaliable... Version {0}" -f $verRequest
    Write-Output $formattedString
}

Write-Output "==> INFO <== :: Completed initialization"