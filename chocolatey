# Load the list of packages from another PowerShell script file
$packageList = Get-Content -Path ".\packages.ps1" -Raw | Invoke-Expression

# Check if Chocolatey is already installed
if (!(Get-Command choco -ErrorAction SilentlyContinue)) {

    # Enable execution of PowerShell scripts
    Set-ExecutionPolicy Bypass -Scope Process

    # Install Chocolatey
    iwr https://chocolatey.org/install.ps1 -UseBasicParsing | iex
}

# Check if each package is installed using Chocolatey
foreach ($package in $packageList) {
    if (!(Get-Command $package -ErrorAction SilentlyContinue)) {
        # Install the package using Chocolatey
        Write-Host "Installing $package..."
        choco install $package -y
    } else {
        Write-Host "$package is already installed."
    }
}
