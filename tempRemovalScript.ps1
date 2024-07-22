
$tempPath = "C:\Users\srivi\AppData\Local\Temp"
$LoggerPath ="C:\Personal_dev\Automatic_Temp_Folder_Deletion\automatic-temp-folder-deletion\logger.txt"
$folders = Get-ChildItem -Path $tempPath -Directory
<#
    started logging. Here i will fetch teh child directories and force delete them
    adding them tlogs.
#>
Start-Transcript -Path $LoggerPath -Append
get-date
write-output $folders
# Attempt to delete each folder
foreach ($folder in $folders) {
    try {
        # Attempt to remove the folder
        Remove-Item -Path $folder.FullName -Recurse -Force
        Write-Output "Successfully deleted folder: $($folder.FullName)"
    } catch {
        # Catch errors and output a message
        Write-Output "Failed to delete folder: $($folder.FullName). Error: $_"
    }
}

Write-Output "Deletion process completed."
Stop-Transcript
