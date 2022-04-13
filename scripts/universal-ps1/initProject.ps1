Set-Location ../..

Write-Output "==> STAND BY <== :: Creating 'gembuild' folder"
New-Item -Path gembuild -ItemType Directory

Write-Output "==> STAND BY <== :: Checking version"
$version = Get-Content -Path .version

Write-Output "==> STAND BY <== :: Checking for updates"
Invoke-WebRequest -Uri 

Write-Output "==> INFO <== :: Completed initialization"