# Automatic Temp Folder Deletion Script

## Description
This script is designed to automatically delete temporary folders from the specified directory (`C:\Users\srivi\AppData\Local\Temp`) on a weekly basis. It schedules a job to run every Sunday at 11:00 PM to perform the cleanup. Additionally, it logs the deletion process in a log file (`logger.txt`).

## Requirements
- Windows PowerShell
- Appropriate permissions to delete folders in the specified directory

## Installation
1. **Download the Script:**
   - Save the `tempRemovalScript.ps1` file to a desired location, e.g., `C:\Personal_dev\Automatic_Temp_Folder_Deletion\tempRemovalScript.ps1`.

2. **Create and Save the Scheduler Script:**
   - Save the scheduler script provided below as `tempFolderRemovalScheduler.ps1` in the same directory.

