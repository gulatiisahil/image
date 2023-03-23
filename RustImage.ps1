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


// 
& : The term 'rustc' is not recognized as the name of a cmdlet, function, script file, or operable program. Check the spelling of the name, or if a path was included, verify that 
the path is correct and try again.
At line:3 char:8
+ if ((& rustc --version 2>&1) -notmatch $rustVersion) {
+        ~~~~~
    + CategoryInfo          : ObjectNotFound: (rustc:String) [], CommandNotFoundException
    + FullyQualifiedErrorId : CommandNotFoundException
