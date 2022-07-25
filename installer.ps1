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

if (!([Security.Principal.WindowsPrincipal] `
[Security.Principal.WindowsIdentity]::GetCurrent() `
).IsInRole([Security.Principal.WindowsBuiltInRole]::Administrator)) {
    Write-Host "$username, unfortunately I need this session to be run as Administrator." -ForegroundColor Red
    Exit
}

Write-Host "Hello, $username"
Write-Host ""

$yes = New-Object System.Management.Automation.Host.ChoiceDescription "&Yes","Will install Chocolatey."
$no = New-Object System.Management.Automation.Host.ChoiceDescription "&No","Will NOT install Chocolatey."
$options = [System.Management.Automation.Host.ChoiceDescription[]]($yes, $no)


$title = "Installing chocolatey" 
$message = "Would you like to install Chocolatey?"
$result = $host.ui.PromptForChoice($title, $message, $options, 1)

switch ($result) {
    0{
        Write-Host "Starting the installation of Chocolatey." -ForegroundColor Green
    }1{
        Write-Host "Installation aborted." -ForegroundColor Red
        Exit
    }
}