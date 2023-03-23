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

v2
$rustVersion = "1.58.0"
$env:PATH += ";C:\Users\{your-username}\.cargo\bin"

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

v3
$rustVersion = "1.58.0"
$rustInstallPath = "$env:USERPROFILE\.cargo\bin"

if ((& rustc --version 2>&1) -notmatch $rustVersion) {
    Write-Host "Rust version $rustVersion is not installed. Installing Rust..."
    $url = "https://win.rustup.rs/x86_64"
    $exePath = "$env:TEMP\rustup-init.exe"
    Invoke-WebRequest -Uri $url -OutFile $exePath
    Start-Process -FilePath $exePath -ArgumentList "/silent" -Wait
    Write-Host "Rust version $rustVersion has been installed successfully."
}

if ($env:Path.Split(';') -notcontains $rustInstallPath) {
    Write-Host "Adding Rust install path to system PATH environment variable..."
    $env:Path += ";$rustInstallPath"
    [Environment]::SetEnvironmentVariable("Path", $env:Path, "Machine")
    Write-Host "Rust install path added to system PATH environment variable."
} else {
    Write-Host "Rust install path is already in system PATH environment variable."
}




// 
& : The term 'rustc' is not recognized as the name of a cmdlet, function, script file, or operable program. Check the spelling of the name, or if a path was included, verify that 
the path is correct and try again.
At line:4 char:8
+ if ((& rustc --version 2>&1) -notmatch $rustVersion) {
+        ~~~~~
    + CategoryInfo          : ObjectNotFound: (rustc:String) [], CommandNotFoundException
    + FullyQualifiedErrorId : CommandNotFoundException
 
Adding Rust install path to system PATH environment variable...
Rust install path added to system PATH environment variable
