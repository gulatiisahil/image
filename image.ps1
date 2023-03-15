$npm_version = '9.5.0'
$npm_installed = Get-Command npm -ErrorAction SilentlyContinue

if ($npm_installed -eq $null) {
    Write-Host "npm is not installed. Installing npm version $npm_version..."
    Invoke-WebRequest "https://nodejs.org/dist/v$npm_version/node-v$npm_version-x64.msi" -OutFile node.msi
    Start-Process msiexec.exe -ArgumentList '/i', 'node.msi', '/quiet', '/norestart' -Wait
    Write-Host "npm version $npm_version has been installed."
}
else {npm -v

    $npm_version_installed = npm -v
    if ($npm_version_installed -ne $npm_version) {
        Write-Host "npm version $npm_version_installed is installed. Updating to npm version $npm_version..."
        npm install -g npm@$npm_version
        Write-Host "npm has been updated to version $npm_version."
    }
    else {
        Write-Host "npm version $npm_version is already installed."
    }
}
