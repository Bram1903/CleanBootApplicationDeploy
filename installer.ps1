clear

$title = "Bram's Clean Boot Application Deployer"
$username = $env:UserName

$host.UI.RawUI.WindowTitle = $title
Write-host "Hello, $username"