# Display script description
$author = "8comma1"
Write-Host -ForegroundColor Green "This script brought to you by the CodeMaster $author - It calculates the checksum of a file using different algorithms (MD5, SHA1, SHA256, SHA512)."

do {
    # Prompt user for file path
    do {
        $filePath = Read-Host "Enter the file path:"
        $filePath = $filePath.Trim('"')
        if (-not (Test-Path $filePath)) {
            Write-Host "File path does not exist. Please enter a valid file path."
        }
    } while (-not (Test-Path $filePath))

    # Prompt user for algorithm choice
    Write-Host "Choose an algorithm:"
    Write-Host "1. MD5" -ForegroundColor Yellow
    Write-Host "2. SHA1" -ForegroundColor Cyan
    Write-Host "3. SHA256" -ForegroundColor Magenta
    Write-Host "4. SHA512" -ForegroundColor Green
    $algorithmChoice = Read-Host "Enter the number corresponding to the algorithm:"

    # Validate algorithm choice
    switch ($algorithmChoice) {
        "1" { $algorithm = "MD5"; $algorithmColor = "Yellow" }
        "2" { $algorithm = "SHA1"; $algorithmColor = "Cyan" }
        "3" { $algorithm = "SHA256"; $algorithmColor = "Magenta" }
        "4" { $algorithm = "SHA512"; $algorithmColor = "Green" }
        default {
            Write-Host "Invalid algorithm choice. Please enter a valid number."
            exit
        }
    }

    # Calculate checksum
    $stream = [System.IO.File]::OpenRead($filePath)
    $hashAlgorithm = [System.Security.Cryptography.HashAlgorithm]::Create($algorithm)
    $checksum = $hashAlgorithm.ComputeHash($stream)
    $stream.Close()

    # Convert checksum bytes to hexadecimal string
    $checksumString = [System.BitConverter]::ToString($checksum) -replace '-'

    # Display the checksum with algorithm-specific color
    Write-Host "Checksum ($algorithm):" -ForegroundColor $algorithmColor -NoNewline
    Write-Host $checksumString -ForegroundColor $algorithmColor

    # Prompt user to check another file
    $checkAnotherFile = Read-Host "Do you want to check another file? (Y/N)"
    if ($checkAnotherFile.ToUpper() -ne "Y") {
        Write-Host "Press any key to exit..."
        $null = $Host.UI.RawUI.ReadKey("NoEcho,IncludeKeyDown")
        break
    }
} while ($true)

Write-Host "Go forth and do great things!" -ForegroundColor Green
Start-Sleep -Seconds 3
