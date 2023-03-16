Invoke-WebRequest -Uri "https://nodejs.org/dist/v16.13.0/node-v16.13.0-x64.msi" -OutFile "node-v16.13.0-x64.msi"
Start-Process msiexec.exe -ArgumentList '/i node-v16.13.0-x64.msi /quiet /norestart' -Wait


npm install -g npm@9.5.0
