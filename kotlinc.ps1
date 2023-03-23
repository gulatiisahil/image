$kotlinVersion = "1.6.10"
$kotlinPath = "C:\Program Files\Kotlin\kotlinc\bin\kotlinc.bat"

if (!(Test-Path $kotlinPath)) {
    Write-Host "Kotlin compiler (kotlinc) is not installed. Installing version $kotlinVersion..."
    $url = "https://github.com/JetBrains/kotlin/releases/download/v$kotlinVersion/kotlin-compiler-$kotlinVersion.zip"
    $zipPath = "$env:TEMP\kotlin-$kotlinVersion.zip"
    $extractPath = "$env:TEMP\kotlin-$kotlinVersion"
    Invoke-WebRequest -Uri $url -OutFile $zipPath
    Expand-Archive -Path $zipPath -DestinationPath $extractPath
    $kotlinExtractPath = "$extractPath\kotlinc"
    Move-Item -Path $kotlinExtractPath -Destination "C:\Program Files\Kotlin"
    Write-Host "Kotlin compiler (kotlinc) has been installed successfully."
} else {
    Write-Host "Kotlin compiler (kotlinc) is already installed."
}
