clear

if (!$IsWindows) {
    Write-Host "Unfornatly this script only works on Windows."
    Exit
}

$title = "Bram's Clean Boot Application Deployer"
$username = $env:UserName

$host.UI.RawUI.WindowTitle = $title
Write-Host "Hello, $username"