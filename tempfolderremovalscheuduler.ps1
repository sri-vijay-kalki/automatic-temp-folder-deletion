# Define the script path
$scriptPath = "C:\Personal_dev\Automatic_Temp_Folder_Deletion\automatic-temp-folder-deletion\tempRemovalScript.ps1"

# Create a trigger to run the script weekly on sunday at 11 pm
$trigger = New-JobTrigger -Weekly -DaysOfWeek Sunday -At "11:00PM"

# Register the scheduled job
Register-ScheduledJob -Name "DeleteTempFoldersJob" -FilePath $scriptPath -Trigger $trigger

Write-Output "Scheduled job 'DeleteTempFoldersJob' has been created to run sunday at 11:00 pM."
