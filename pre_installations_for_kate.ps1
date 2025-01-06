[Net.WebRequest]::DefaultWebProxy.Credentials = [Net.CredentialCache]::DefaultCredentials
# $env:chocolateyProxyLocation = 'https://local.proxy.address:8001'

# Un-comment the following lines if your proxy server requires explicit authentication and
# substitute your username and password.
#$env:chocolateyProxyUser = 'username'
#$env:chocolateyProxyPassword = 'password'

# Run the downloaded install script from the same folder as this script
# $process = Start-Process -FilePath "$PSScriptRoot\install.ps1" -Wait -PassThru
$process = Start-Process -FilePath "powershell.exe" -ArgumentList "-ExecutionPolicy Bypass -File `"$PSScriptRoot\install.ps1`"" -Wait -PassThru

# Optionally, check if the install.ps1 script terminated successfully
if ($process.ExitCode -eq 0) {
    Write-Host "install.ps1 script terminated successfully."
} else {
    Write-Host "install.ps1 script terminated with exit code: $($process.ExitCode)"
}

# Check if the installation of Chocolatey was successful
if (Test-Path "C:\ProgramData\chocolatey") {
    Write-Host "Chocolatey installation completed successfully."

    # Install nodejs-lts using Chocolatey
    $nodeProcess = Start-Process -FilePath "C:\ProgramData\chocolatey\bin\choco.exe" -ArgumentList "install", "nodejs-lts", "-y" -Wait -PassThru

    # Check if the installation of nodejs-lts was successful
    if ($nodeProcess.ExitCode -eq 0) {
        Write-Host "nodejs-lts installation completed successfully."
    } else {
        Write-Host "nodejs-lts installation failed with exit code: $($nodeProcess.ExitCode)"
    }

    # Install jq using Chocolatey
    $jqProcess = Start-Process -FilePath "C:\ProgramData\chocolatey\bin\choco.exe" -ArgumentList "install", "jq", "-y" -Wait -PassThru

    # Check if the installation of jq was successful
    if ($jqProcess.ExitCode -eq 0) {
        Write-Host "jq installation completed successfully."
    } else {
        Write-Host "jq installation failed with exit code: $($jqProcess.ExitCode)"
    }

     # Install llvm using Chocolatey
    $llvmProcess = Start-Process -FilePath "C:\ProgramData\chocolatey\bin\choco.exe" -ArgumentList "install", "llvm", "-y" -Wait -PassThru

    # Check if the installation of llvm was successful
    if ($llvmProcess.ExitCode -eq 0) {
        Write-Host "llvm installation completed successfully."
    } else {
        Write-Host "llvm installation failed with exit code: $($llvmProcess.ExitCode)"
    }

     # Install prettier using npm
    $prettierProcess = Start-Process -FilePath "C:\Program Files\nodejs\npm.cmd" -ArgumentList "install", "-g", "prettier" -Wait -PassThru

    # Check if the installation of prettier was successful
    if ($prettierProcess.ExitCode -eq 0) {
        Write-Host "prettier installation completed successfully."
    } else {
        Write-Host "prettier installation failed with exit code: $($prettierProcess.ExitCode)"
    }
} else {
    Write-Host "Chocolatey installation failed or is not found."
}
