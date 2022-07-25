clear

if ($IsWindows -or $ENV:OS) {
    Write-Host "Windows platform detected."
} else {
    Write-Host "Unfornatly this script only works on a Windows based operating system."
    Exit
}

$title = "Bram's Clean Boot Application Deployer"
$username = $env:UserName

$host.UI.RawUI.WindowTitle = $title
Write-Host "Hello, $username"