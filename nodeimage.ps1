$nodeVersion = "v16.13.0"
$nodePath = "C:\Program Files\nodejs\node.exe"

if (!(Test-Path $nodePath)) {
    Write-Host "Node.js is not installed. Installing version $nodeVersion..."
    $url = "https://nodejs.org/dist/$nodeVersion/node-$nodeVersion-x64.msi"
    $msiPath = "$env:TEMP\node-$nodeVersion-x64.msi"
    Invoke-WebRequest -Uri $url -OutFile $msiPath
    Start-Process msiexec.exe -ArgumentList "/i $msiPath /quiet /norestart" -Wait
    Write-Host "Node.js has been installed successfully."
} else {
    Write-Host "Node.js is already installed."
}
