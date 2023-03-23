$rustVersion = "1.58.0"

if ((& rustc --version 2>&1) -notmatch $rustVersion) {
    Write-Host "Rust version $rustVersion is not installed. Installing Rust..."
    $url = "https://win.rustup.rs/x86_64"
    $exePath = "$env:TEMP\rustup-init.exe"
    Invoke-WebRequest -Uri $url -OutFile $exePath
    Start-Process -FilePath $exePath -ArgumentList "/silent" -Wait
    Write-Host "Rust version $rustVersion has been installed successfully."
} else {
    Write-Host "Rust version $rustVersion is already installed."
}
