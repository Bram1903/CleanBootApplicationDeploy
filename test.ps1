Write-Host "Chocolatey should be succesfully installed." -ForegroundColor Green
Write-Host "Starting the installation of the packages..."

foreach ($package in $packages)
{
    Write-Host "Installing $package..." -ForegroundColor Green
    choco install $package -v
}

Write-Host "All the packages should have been successfully installed." -ForegroundColor Green

$packages = @(
    'googlechrome',
    'jre8',
    'microsoft-teams',
    'python3',
    'malwarebytes',
    'jdk8',
    'vscode',
    'wget',
    'curl,'
    'spotify',
    'amd-ryzen-chipset',
    'php',
    'virtualbox',
    'postman',
    'docker-desktop',
    'pip',
    'whatsapp',
    'github-desktop',
    'discord',
    'cpu-z',
    'nmap',
    'telegram',
    '7zip',
    'git',
    'nodejs',
    'nvm',
    'etcher',
    'obs-studio',
    'geforce-experience',
    'jetbrainstoolbox',
    'microsoft-office-deployment',
    'maven',
    'nordvpn'
)