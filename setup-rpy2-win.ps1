$anacondaFilename = "Anaconda3-5.0.0-Windows-x86_64.exe"
$anacondaUrl = "https://repo.continuum.io/archive/" + $anacondaFilename
# download file from anaconda website
$wc = New-Object system.net.webclient
$wc.UseDefaultCredentials = $true
$wc.DownloadFile($anacondaUrl, $anacondaFilename)
# install file
$pathToAnacondaFile = ".\" + $anacondaFilename
& $pathToAnacondaFile | Out-Null
# now install rpy2
# must figure out where user installed anaconda
$pathForAllUsers = "C:\ProgramData\Anaconda3\"
If (Test-Path $pathForAllUsers) {
  $pathToConda = $pathForAllUsers + "Scripts\conda.exe"
} Else {
  $pathToConda = "C:\Users\" + $env:USERNAME + "\Anaconda3\" + "Scripts\conda.exe"
}
& $pathToConda "install" "rpy2" "-y"  | Out-Host
Write-Host "All Done!"
