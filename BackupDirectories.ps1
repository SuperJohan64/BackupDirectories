$BackupDirectory = "C:\Backups"
$BackupName = "Backup"
$Timestamp = Get-Date -Format "MM-dd-yy HH-mm"

if (-not (Test-Path $BackupDirectory)) {New-Item $BackupDirectory -ItemType Directory}

Compress-Archive `
    -Path `
        "C:\Test\File1.txt", `
        "C:\Test\File2.txt", `
        "C:\Test\File3.txt", `
    -DestinationPath "$BackupDirectory\$BackupName $Timestamp.zip" `
    -Force