@echo off

REM This can be run from MDT/SCCM like this (given you stored it in \Scripts\BiosSledgehammer):
REM ---
REM cmd.exe /c "%SCRIPTROOT%\BiosSledgehammer\RunVisible.bat"
REM ---

SET PS_PART_PATH=WindowsPowerShell\v1.0\powershell.exe 
 
SET PS_EXE=C:\Windows\System32\%PS_PART_PATH% 
SET PS_EXE_SYSNATIVE=c:\windows\sysnative\%PS_PART_PATH% 
 
REM We need to make sure to start the 64-bit PowerShell on a 64-bit machine. 
REM If we are running in WoW, C:\windows\sysnative is active, in any other case it is not 
IF EXIST "%PS_EXE_SYSNATIVE%" SET PS_EXE=%PS_EXE_SYSNATIVE% 
 
start "BIOS Sledgehammer" /wait %PS_EXE% -ExecutionPolicy Bypass -File "%~dp0BiosSledgehammer.ps1" -WaitAtEnd 


