$path = "C:\Users\kanda\AppData\Local\Programs\oh-my-posh\themes"
$themes = Get-ChildItem -Path $path -File -Recurse -Filter "*omp.json"
$selectedtheme = $themes | Get-Random
oh-my-posh init pwsh --config $selectedtheme | Invoke-Expression
Import-Module -Name Terminal-Icons
Import-Module $env:ChocolateyInstall\helpers\chocolateyProfile.psm1
Write-Host (Get-Item $selectedtheme).Basename
Import-Module -Name Terminal-Icons
Invoke-Expression (& { (zoxide init powershell | Out-String) })