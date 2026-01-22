@echo off
setlocal

REM -----------------------------------------
REM  Documents Backup to Proxmox Backup Server
REM -----------------------------------------

REM Change to the Proxmox Backup Client directory
cd "C:\Program Files\PBS-Client"

REM Run the backup
proxmoxbackupclient_go.exe ^
  -baseurl "https://pbs:8007" ^
  -certfingerprint "ADD YOURS HERE" ^
  -authid "user@pbs!scripting_token" ^
  -secret "ADD YOUR HERE" ^
  -backupdir "C:\Users\YOURUSER\documents" ^
  -datastore "store1" ^
  -namespace "nodes" ^
  -backup-id "YOUR-NODENAME-c-docs" ^
  -pxarout "c-users-YOURUSER-docs"

endlocal
