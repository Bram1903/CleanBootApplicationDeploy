clear

if ($IsWindows -or $ENV:OS) {
    Write-Host "Windows platform detected." -ForegroundColor Green
    Write-Host ""
} else {
    Write-Host "Unfortunately this script only works on a Windows based operating system." -ForegroundColor Red
    Exit
}

$title = "Bram's Clean Boot Application Deployer"
$username = $env:UserName

$host.UI.RawUI.WindowTitle = $title
Write-Host "Hello, $username"