# Variables
$verify_urls = @()

Set-Location ../..
Write-Output "==> STAND BY <== :: Creating 'gembuild' folder"

New-Item -Path gembuild -ItemType Directory
