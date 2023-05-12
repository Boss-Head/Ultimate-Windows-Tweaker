@ECHO OFF & CALL:PTB
title %LNG83%
color 0a

:MENU
cls
echo ================================ %LNG83% =================================
echo %LNG121%
echo ==============================================================================================
echo %LNG94%
echo %LNG106%
echo %LNG122%
echo %LNG123%
echo ==============================================================================================
echo.
set "n1="
set "n2="
set "choice="
echo.
echo %LNG74%
echo.
For /F "Delims=" %%G in ('Choice /N /C 0123456789') Do ( <Nul Set /P"=%%G" & Set "n1=%%G" & For /F "Delims=" %%k in ('Choice /N /C 123456789') Do <Nul Set /P"=%%k" & Set "n2=%%k" ) 
echo.
set "choice=%n1%%n2%"

if %choice%==01 goto INDIVIDUAL
if %choice%==02 goto PRESET
if %choice%==03 goto ABOUT
if %choice%==04 goto EXIT
goto MENU

:INDIVIDUAL
mode 120,40
cls
echo ================================= %LNG99% ===================================
echo.
echo %LNG10% (%LNG117%):
echo.
echo %LNG34%
echo %LNG67%
echo %LNG85%
echo %LNG59%
echo %LNG41%
echo %LNG66%
echo %LNG39%
echo %LNG29%
echo %LNG25%
echo %LNG14%
echo %LNG98%
echo %LNG107%
echo %LNG81%
echo %LNG80%
echo %LNG88%
echo %LNG97%
echo %LNG73%
echo %LNG72%
echo %LNG70%
echo %LNG33%
echo %LNG104%
echo %LNG115%
echo %LNG79%
echo %LNG93%
echo %LNG87%
echo %LNG63%
echo %LNG96%
echo %LNG86%
echo %LNG53%
echo %LNG21%
echo.
echo.%LNG18%
echo.
set "n1="
set "n2="
set "choice="
For /F "Delims=" %%G in ('Choice /N /C 0123456789') Do ( <Nul Set /P"=%%G" & Set "n1=%%G" & For /F "Delims=" %%k in ('Choice /N /C 123456789') Do <Nul Set /P"=%%k" & Set "n2=%%k" ) 
echo.
set "choice=%n1%%n2%"

if "%choice%"=="00" goto :MENU
if "%choice%"=="01" goto :DISABLE_STARTUP_PROGRAMS
if "%choice%"=="02" goto :DISABLE_SERVICES
if "%choice%"=="03" goto :DISABLE_UNUSED_FEATURES
if "%choice%"=="04" goto :DISABLE_ANIMATIONS
if "%choice%"=="05" goto :DISABLE_VISUAL_EFFECTS
if "%choice%"=="06" goto :DISABLE_TIPS_SUGGESTIONS
if "%choice%"=="07" goto :DISABLE_SCHEDULED_TASKS
if "%choice%"=="08" goto :DISABLE_TELEMETRY
if "%choice%"=="09" goto :DISABLE_WINDOWS_HELLO_FACE
if "%choice%"=="10" goto :DISABLE_WINDOWS_HELLO_FINGERPRINT
if "%choice%"=="11" goto :DISABLE_XBOX_GAME_BAR
if "%choice%"=="12" goto :DISABLE_GAME_MODE
if "%choice%"=="13" goto :DISABLE_AUTO_UPDATES
if "%choice%"=="14" goto :ENABLE_LARGE_SYSTEM_CACHE
if "%choice%"=="15" goto :INCREASE_VIRTUAL_MEMORY
if "%choice%"=="16" goto :INCREASE_CPU_PRIORITY
if "%choice%"=="17" goto :INCREASE_FILE_SYSTEM_CACHE
if "%choice%"=="18" goto :INCREASE_NTFS_MEMORY_USAGE
if "%choice%"=="19" goto :INCREASE_NETWORK_THROUGHPUT
if "%choice%"=="20" goto :ENABLE_DMA_MODE
if "%choice%"=="21" goto :DISABLE_HIBERNATION
if "%choice%"=="22" goto :DISABLE_SLEEP
if "%choice%"=="23" goto :DISABLE_REMOTE_ASSISTANCE
if "%choice%"=="24" goto :DISABLE_REMOTE_DESKTOP
if "%choice%"=="25" goto :DISABLE_REMOTE_REGISTRY
if "%choice%"=="26" goto :DISABLE_AUTO_MAINTENANCE
if "%choice%"=="27" goto :DISABLE_ACTION_CENTER
if "%choice%"=="28" goto :DISABLE_ERROR_REPORTING
if "%choice%"=="29" goto :DISABLE_COMPATIBILITY_TELEMETRY
if "%choice%"=="30" goto :DISABLE_MICROSOFT_COMPATIBILITY_APPRAISER
goto :MENU

:PRESET
cls
echo ================================== %LNG108% ====================================
echo.
echo %LNG9% (%LNG117%):
echo.
echo %LNG103%
echo %LNG105%
echo %LNG102%
echo %LNG62%
echo %LNG84%
echo %LNG101%
echo %LNG50%
echo %LNG71%
echo %LNG92%
echo %LNG82%
echo.
echo.%LNG11%
echo.
set "n1="
set "n2="
set "choice="
For /F "Delims=" %%G in ('Choice /N /C 0123456789') Do ( <Nul Set /P"=%%G" & Set "n1=%%G" & For /F "Delims=" %%k in ('Choice /N /C 123456789') Do <Nul Set /P"=%%k" & Set "n2=%%k" ) 
echo.
set "choice=%n1%%n2%"

if "%choice%"=="00" goto :MENU
if "%choice%"=="01" goto :PRESET_GENERAL
if "%choice%"=="02" goto :PRESET_GAMING
if "%choice%"=="03" goto :PRESET_NETWORK
if "%choice%"=="04" goto :PRESET_HIGH_PERFORMANCE
if "%choice%"=="05" goto :PRESET_LOW_END_PC
if "%choice%"=="06" goto :PRESET_PRIVACY
if "%choice%"=="07" goto :PRESET_OFFICE_PRODUCTIVITY
if "%choice%"=="08" goto :PRESET_CREATIVE_WORK
if "%choice%"=="09" goto :PRESET_DEVELOPER
if "%choice%"=="10" goto :PRESET_POWER_SAVER
goto PRESET

:PRESET_GENERAL
echo %LNG46%...
echo.
echo %LNG37%...
wmic startup where "not commandline like '%%autostart%%' and not commandline like '%%autoupdate%%' and not commandline like '%%updater%%' and not commandline like '%%helper%%' and not commandline like '%%driver%%' and not commandline like '%%scheduler%%' and not commandline like '%%updater%%' and not commandline like '%%helper%%' and not commandline like '%%launcher%%' and not commandline like '%%monitor%%' and not commandline like '%%update%%' and not commandline like '%%update.exe%%'" call delete
echo %LNG68%...
sc config "DiagTrack" start=disabled
sc config "dmwappushservice" start=disabled
sc config "WerSvc" start=disabled
sc config "SysMain" start=disabled
sc config "wuauserv" start=disabled
sc config "WindowsSearch" start=disabled
sc config "AppXSvc" start=disabled
echo %LNG90%...
dism /online /disable-feature /featurename:"MicrosoftWindowsPowerShellV2Root" /norestart
dism /online /disable-feature /featurename:"MediaPlayback" /norestart
dism /online /disable-feature /featurename:"WorkFolders-Client" /norestart
dism /online /disable-feature /featurename:"Printing-Foundation-LPRPortMonitor" /norestart
dism /online /disable-feature /featurename:"Printing-Foundation-InternetPrinting-Client" /norestart
dism /online /disable-feature /featurename:"RemoteAssistance" /norestart
echo %LNG61%...
SystemPropertiesPerformance.exe /s AnimationOff
echo %LNG43%...
SystemPropertiesPerformance.exe /s AdjustForBestPerformance
echo %LNG69%...
reg add "HKCU\SOFTWARE\Microsoft\Windows\CurrentVersion\ContentDeliveryManager" /v "SilentInstalled/reg_dword /d 1 /f
echo %LNG56%
pause
goto MENU

:PRESET_GAMING
echo %LNG49%...
echo.
echo %LNG35%...
powercfg /setactive 8c5e7fda-e8bf-4a96-9a85-a6e23a8c635c
echo %LNG111%...
reg add "HKCU\System\GameConfigStore" /v GameDVR_Enabled /t REG_DWORD /d 0 /f
reg add "HKCU\System\GameConfigStore" /v GameBarEnabled /t REG_DWORD /d 0 /f
reg add "HKCU\System\GameConfigStore\Children" /v "" /t REG_SZ /d "" /f
echo %LNG60%
pause
goto MENU

:PRESET_NETWORK
echo %LNG45%...
echo.
echo %LNG77%...
netsh interface tcp set global autotuning=disabled
netsh interface tcp set global congestionprovider=none
echo %LNG26%...
netsh int tcp set global dca=enabled
echo %LNG55%
pause
goto MENU

:PRESET_HIGH_PERFORMANCE
echo %LNG16%...
echo.
echo %LNG91%...
reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\BackgroundAccessApplications" /v GlobalUserDisabled /t REG_DWORD /d 1 /f
echo %LNG65%...
powercfg /setactive 8c5e7fda-e8bf-4a96-9a85-a6e23a8c635c
powercfg -setacvalueindex scheme_current sub_processor 0cc5b647-c1df-4637-891a-dec35c318583 bc5038f7-23e0-4960-96da-33abaf5935ec 0
powercfg -setactive scheme_current
echo %LNG23%
pause
goto MENU

:PRESET_LOW_END_PC
echo %LNG32%...
echo.
echo %LNG68%...
sc config "DiagTrack" start=disabled
sc config "dmwappushservice" start=disabled
sc config "WerSvc" start=disabled
sc config "SysMain" start=disabled
sc config "wuauserv" start=disabled
sc config "WindowsSearch" start=disabled
sc config "AppXSvc" start=disabled
echo %LNG90%...
dism /online /disable-feature /featurename:"MicrosoftWindowsPowerShellV2Root" /norestart
dism /online /disable-feature /featurename:"MediaPlayback" /norestart
dism /online /disable-feature /featurename:"WorkFolders-Client" /norestart
dism /online /disable-feature /featurename:"Printing-Foundation-LPRPortMonitor" /norestart
dism /online /disable-feature /featurename:"Printing-Foundation-InternetPrinting-Client" /norestart
dism /online /disable-feature /featurename:"RemoteAssistance" /norestart
echo %LNG61%...
SystemPropertiesPerformance.exe /s AnimationOff
echo %LNG43%...
SystemPropertiesPerformance.exe /s AdjustForBestPerformance
echo %LNG69%...
reg add "HKCU\SOFTWARE\Microsoft\Windows\CurrentVersion\ContentDeliveryManager" /v "SilentInstalled
"
/reg_dword /d 1 /f
echo %LNG42%
pause
goto MENU

:PRESET_PRIVACY
echo %LNG44%...
echo.
echo %LNG31%...
reg add "HKLM\SOFTWARE\Policies\Microsoft\Windows\DataCollection" /v AllowTelemetry /t REG_DWORD /d 0 /f
reg add "HKLM\SOFTWARE\Policies\Microsoft\Windows\AppCompat" /v AITEnable /t REG_DWORD /d 0 /f
reg add "HKLM\SOFTWARE\Policies\Microsoft\Windows\AppCompat" /v DisableInventory /t REG_DWORD /d 1 /f
reg add "HKLM\SOFTWARE\Policies\Microsoft\Windows\AppCompat" /v DisablePCA /t REG_DWORD /d 1 /f
reg add "HKLM\SOFTWARE\Policies\Microsoft\Windows\AppCompat" /v DisableUAR /t REG_DWORD /d 1 /f
reg add "HKLM\SOFTWARE\Policies\Microsoft\Windows\AppCompat" /v DisableWer /t REG_DWORD /d 1 /f
echo %LNG15%...
reg add "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Multimedia\SystemProfile" /v SystemResponsiveness /t REG_DWORD /d 0 /f
reg add "HKLM\SYSTEM\CurrentControlSet\Control\PriorityControl" /v Win32PrioritySeparation /t REG_DWORD /d 2 /f
reg add "HKLM\SYSTEM\CurrentControlSet\Control\Session Manager\Memory Management\PrefetchParameters" /v EnablePrefetcher /t REG_DWORD /d 0 /f
reg add "HKLM\SYSTEM\CurrentControlSet\Control\Session Manager\Memory Management\PrefetchParameters" /v EnableSuperfetch /t REG_DWORD /d 0 /f
echo.
echo %LNG36%!
pause
goto PRESET
:PRESET_GAMING
echo %LNG49%...
echo.
echo %LNG68%...
sc config "DiagTrack" start=disabled
sc config "dmwappushservice" start=disabled
sc config "WerSvc" start=disabled
sc config "SysMain" start=disabled
sc config "wuauserv" start=disabled
sc config "WindowsSearch" start=disabled
sc config "AppXSvc" start=disabled
echo %LNG40%...
powercfg -duplicatescheme e9a42b02-d5df-448d-aa00-03f14749eb61
echo %LNG91%...
reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\BackgroundAccessApplications" /v GlobalUserDisabled /t REG_DWORD /d 1 /f
echo %LNG110%...
reg add "HKCU\System\GameConfigStore" /v GameDVR_Enabled /t REG_DWORD /d 0 /f
reg add "HKLM\SOFTWARE\Policies\Microsoft\Windows\GameDVR" /v AllowGameDVR /t REG_DWORD /d 0 /f
echo %LNG100%...
reg add "HKCU\SOFTWARE\Microsoft\Windows\CurrentVersion\GameDVR" /v AppCaptureEnabled /t REG_DWORD /d 0 /f
echo %LNG109%...
reg add "HKLM\SYSTEM\CurrentControlSet\Services\xbgm" /v Start /t REG_DWORD /d 4 /f
echo %LNG30%...
netsh int tcp set global autotuninglevel=normal
netsh int tcp set global dca=enabled
netsh int tcp set global netdma=enabled
netsh int tcp set heuristics enabled
netsh int tcp set global ecncapability=disabled
netsh int tcp set global rss=enabled
echo %LNG20%...
REG ADD "HKLM\SOFTWARE\NVIDIA Corporation\Global\Stereo3D" /v "Enable" /t REG_DWORD /d 0 /f
REG ADD "HKLM\SOFTWARE\NVIDIA Corporation\Global\Stereo3D" /v "Stereo3D_EnableByDefault" /t REG_DWORD /d 0 /f
REG ADD "HKLM\SOFTWARE\NVIDIA Corporation\Global\Stereo3D" /v "Stereo3DMode" /t REG_DWORD /d 2 /f
REG ADD "HKLM\SOFTWARE\NVIDIA Corporation\Global\Stereo3D" /v "Stereo3DPredefinedMode" /t REG_DWORD /d 1 /f
REG ADD "HKLM\SOFTWARE\NVIDIA Corporation\Global\Stereo3D" /v "Stereo3DPredefinedModeDX10" /t REG_DWORD /d 0 /f
echo.
echo %LNG17%!
pause
goto MENU

:PRESET_OFFICE_PRODUCTIVITY
echo %LNG13%...
echo.
echo %LNG37%...
wmic startup where "not commandline like '%%autostart%%' and not commandline like '%%autoupdate%%' and not commandline like '%%updater%%' and not commandline like '%%helper%%' and not commandline like '%%driver%%' and not commandline like '%%scheduler%%' and not commandline like '%%updater%%' and not commandline like '%%helper%%' and not commandline like '%%launcher%%' and not commandline like '%%monitor%%' and not commandline like '%%update%%' and not commandline like '%%update.exe%%'" call delete
echo %LNG68%...
sc config "DiagTrack" start=disabled
sc config "dmwappushservice" start=disabled
sc config "WerSvc" start=disabled
sc config "SysMain" start=disabled
sc config "wuauserv" start=disabled
sc config "WindowsSearch" start=disabled
sc config "AppXSvc" start=disabled
echo %LNG90%...
dism /online /disable-feature /featurename:"MicrosoftWindowsPowerShellV2Root" /norestart
dism /online /disable-feature /featurename:"MediaPlayback" /norestart
dism /online /disable-feature /featurename:"WorkFolders-Client" /norestart
dism /online /disable-feature /featurename:"Printing-Foundation-LPRPortMonitor" /norestart
dism /online /disable-feature /featurename:"Printing-Foundation-InternetPrinting-Client" /norestart
dism /online /disable-feature /featurename:"RemoteAssistance" /norestart
echo %LNG61%...
SystemPropertiesPerformance.exe /s AnimationOff
echo %LNG43%...
SystemPropertiesPerformance.exe /s AdjustForBestPerformance
echo %LNG69%...
reg add "HKCU\SOFTWARE\Microsoft\Windows\CurrentVersion\ContentDeliveryManager" /v "SilentInstalled
" /t REG_DWORD /d 1 /f
echo %LNG58%...
reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\Explorer" /v "AltTabSettings" /t REG_DWORD /d 1 /f
echo %LNG57%...
reg add "HKCU\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\Advanced" /v "Hidden" /t REG_DWORD /d 1 /f
echo %LNG95%...
reg add "HKCU\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\Advanced" /v "HideFileExt" /t REG_DWORD /d 0 /f
echo %LNG76%...
reg add "HKCU\Control Panel\Accessibility\StickyKeys" /v "Flags" /t REG_SZ /d "506" /f
echo %LNG78%...
reg add "HKCU\Control Panel\Accessibility\Keyboard Response" /v "Flags" /t REG_SZ /d "122" /f
echo %LNG75%...
reg add "HKCU\Control Panel\Accessibility\ToggleKeys" /v "Flags" /t REG_SZ /d "58" /f
echo.
echo %LNG12%!
pause
goto :MENU

:PRESET_CREATIVE_WORK
echo %LNG24%...
echo.
echo %LNG37%...
wmic startup where "not commandline like '%%autostart%%' and not commandline like '%%autoupdate%%' and not commandline like '%%updater%%' and not commandline like '%%helper%%' and not commandline like '%%driver%%' and not commandline like '%%scheduler%%' and not commandline like '%%updater%%' and not commandline like '%%helper%%' and not commandline like '%%launcher%%' and not commandline like '%%monitor%%' and not commandline like '%%update%%' and not commandline like '%%update.exe%%'" call delete
echo %LNG68%...
sc config "DiagTrack" start=disabled
sc config "dmwappushservice" start=disabled
sc config "WerSvc" start=disabled
sc config "SysMain" start=disabled
sc config "wuauserv" start=disabled
sc config "WindowsSearch" start=disabled
sc config "AppXSvc" start=disabled
echo %LNG90%...
dism /online /disable-feature /featurename:"MicrosoftWindowsPowerShellV2Root" /norestart
dism /online /disable-feature /featurename:"MediaPlayback" /norestart
dism /online /disable-feature /featurename:"WorkFolders-Client" /norestart
dism /online /disable-feature /featurename:"Printing-Foundation-LPRPortMonitor" /norestart
dism /online /disable-feature /featurename:"Printing-Foundation-InternetPrinting-Client" /norestart
dism /online /disable-feature /featurename:"RemoteAssistance" /norestart
echo %LNG61%...
SystemPropertiesPerformance.exe /s AnimationOff
echo %LNG43%...
SystemPropertiesPerformance.exe /s AdjustForBestPerformance
echo %LNG47%...
reg add "HKCU\Control Panel\Desktop" /v "DragFullWindows" /t REG_SZ /d 0 /f
reg add "HKCU\Control Panel\Desktop" /v "MenuShowDelay" /t REG_SZ /d 0 /f
reg add "HKCU\Control Panel\Desktop" /v "UserPreferencesMask" /t REG_BINARY /d 90 12 03 80 10 00 00 00 /f
echo.
echo %LNG19%!
pause
goto :MENU

:PRESET_DEVELOPER
echo %LNG38%...
echo.
echo %LNG37%...
wmic startup where "not commandline like '%%autostart%%' and not commandline like '%%autoupdate%%' and not commandline like '%%updater%%' and not commandline like '%%helper%%' and not commandline like '%%driver%%' and not commandline like '%%scheduler%%' and not commandline like '%%updater%%' and not commandline like '%%helper%%' and not commandline like '%%launcher%%' and not commandline like '%%monitor%%' and not commandline like '%%update%%' and not commandline like '%%update.exe%%'" call delete
echo %LNG68%...
sc config "DiagTrack" start=disabled
sc config "dmwappushservice" start=disabled
sc config "WerSvc" start=disabled
sc config "SysMain" start=disabled
sc config "wuauserv" start=disabled
sc config "WindowsSearch" start=disabled
sc config "AppXSvc" start=disabled
echo %LNG90%...
dism /online /disable-feature /featurename:"MicrosoftWindowsPowerShellV2Root" /norestart
dism /online /disable-feature /featurename:"MediaPlayback" /norestart
dism /online /disable-feature /featurename:"WorkFolders-Client" /norestart
dism /online /disable-feature /featurename:"Printing-Foundation-LPRPortMonitor" /norestart
dism /online /disable-feature /featurename:"Printing-Foundation-InternetPrinting-Client" /norestart
echo %LNG51%...
reg add "HKLM\SOFTWARE\Microsoft\Windows\AppModelUnlock" /t REG_DWORD /f /v "AllowAllTrustedApps" /d 1
reg add "HKLM\SOFTWARE\Microsoft\Windows\AppModelUnlock" /t REG_DWORD /f /v "AllowDevelopmentWithoutDevLicense" /d 1
echo %LNG48%...
reg add "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\AppModelUnlock" /t REG_DWORD /f /v "AllowDevelopmentWithoutDevLicense" /d 1
echo %LNG61%...
SystemPropertiesPerformance.exe /s AnimationOff
echo %LNG43%...
SystemPropertiesPerformance.exe /s AdjustForBestPerformance
echo %LNG69%...
reg add "HKCU\SOFTWARE\Microsoft\Windows\CurrentVersion\ContentDeliveryManager" /v "SilentInstalled
"
echo %LNG27%!
pause
goto MENU

:PRESET_POWER_SAVER
echo %LNG28%...
echo.
echo %LNG54%...
powercfg /setactive a1841308-3541-4fab-bc81-f71556f20b4a
echo %LNG68%...
sc config "XblAuthManager" start=disabled
sc config "XblGameSave" start=disabled
sc config "XboxNetApiSvc" start=disabled
echo %LNG90%...
dism /online /disable-feature /featurename:"Internet-Explorer-Optional-amd64" /norestart
dism /online /disable-feature /featurename:"WindowsMediaPlayer" /norestart
echo %LNG61%...
SystemPropertiesPerformance.exe /s AnimationOff
echo %LNG43%...
SystemPropertiesPerformance.exe /s AdjustForBestPerformance
echo %LNG52%...
powercfg -change -monitor-timeout-ac 15
powercfg -change -monitor-timeout-dc 10
powercfg -change -disk-timeout-ac 15
powercfg -change -disk-timeout-dc 10
powercfg -change -standby-timeout-ac 30
powercfg -change -standby-timeout-dc 20
echo %LNG22%
pause
goto :MENU

:ABOUT
mode 120,35
cls
echo =============================================== %LNG114% =================================================
echo.
echo %LNG2%
echo %LNG1%
echo %LNG3%
echo %LNG7%
echo %LNG5%
echo %LNG4%
echo.
echo %LNG6%
echo.
echo ================================================ %LNG112% ===============================================
echo.
echo %LNG120%
echo %LNG89%
echo %LNG118%
echo.
echo ================================================ %LNG113% ============================================
echo.
echo %LNG8%
echo - %LNG64%
echo - %LNG119%
echo - %LNG124%
echo - %LNG116%
echo.
echo.
pause
goto MENU
:INGLES
SET "LNG1=cases such as general use, gaming, network, high performance, low-end PCs, privacy, office productivity,"
SET "LNG2=This is a Windows Optimization Script designed to help users optimize their system for various use"
SET "LNG3=creative work, and development. The script is designed to apply a set of predefined optimizations"
SET "LNG4=ALWAYS DO RESEARCH BEFORE APPLYING RANDOM TWEAKS, NEVER TRUST ANY SOFTWARE WITHOUT RESEARCH"
SET "LNG5=You can use multiple presets but be warned they might not be fully compatible together"
SET "LNG6=The script is provided as-is and without warranty of any kind. Use at your own risk."
SET "LNG7=specific to each use case, you can also apply individual tweaks aswell."
SET "LNG8=The following resources were used in the development of this script:"
SET "LNG9=Select the number of the preset optimization you want to apply"
SET "LNG10=Select the number of the optimization you want to apply"
SET "LNG11=Enter the number of the preset optimization to apply:"
SET "LNG12=Office Productivity Optimization applied successfully"
SET "LNG13=Applying Office Productivity Optimization preset"
SET "LNG14=[10]  Disable Windows Hello fingerprint recognition"
SET "LNG15=Applying tweaks to improve system performance"
SET "LNG16=Applying High Performance Optimization preset"
SET "LNG17=Gaming Optimization preset applied successfully"
SET "LNG18=Enter the number of the optimization to apply:"
SET "LNG19=Creative Work Optimization applied successfully"
SET "LNG20=Applying NVIDIA graphics settings for gaming"
SET "LNG21=[30]  Disable Microsoft Compatibility Appraiser"
SET "LNG22=Power Saver Optimization applied successfully."
SET "LNG23=High Performance Optimization preset applied."
SET "LNG24=Applying Creative Work Optimization preset"
SET "LNG25=[09]   Disable Windows Hello face recognition"
SET "LNG26=Enabling network throughput optimization"
SET "LNG27=Developer Optimization applied successfully"
SET "LNG28=Applying Power Saver Optimization preset"
SET "LNG29=[08]   Disable telemetry and data collection"
SET "LNG30=Setting network optimization for gaming"
SET "LNG31=Disabling telemetry and data collection"
SET "LNG32=Applying Low End PC Optimization preset"
SET "LNG33=[20]  Enable DMA Mode for Hard Disk Drives"
SET "LNG34=[01]   Disable unnecessary startup programs"
SET "LNG35=Setting power plan to high performance"
SET "LNG36=Privacy Optimization applied successfully"
SET "LNG37=Disabling unnecessary startup programs"
SET "LNG38=Applying Developer Optimization preset"
SET "LNG39=[07]   Disable unnecessary scheduled tasks"
SET "LNG40=Setting processor performance to high"
SET "LNG41=[05]   Disable unnecessary visual effects"
SET "LNG42=Low End PC Optimization preset applied."
SET "LNG43=Disabling unnecessary visual effects"
SET "LNG44=Applying Privacy Optimization preset"
SET "LNG45=Applying Network Optimization preset"
SET "LNG46=Applying General Optimization preset"
SET "LNG47=Optimizing system for creative work"
SET "LNG48=Enabling Developer Mode for Windows"
SET "LNG49=Applying Gaming Optimization preset"
SET "LNG50=[07]   Office Productivity Optimization"
SET "LNG51=Setting Developer Mode for Windows"
SET "LNG52=Applying additional power settings"
SET "LNG53=[29]  Disable Compatibility Telemetry"
SET "LNG54=Setting power plan to Power Saver"
SET "LNG55=Network Optimization preset applied."
SET "LNG56=General Optimization preset applied."
SET "LNG57=Enabling hidden files and folders"
SET "LNG58=Enabling classic Alt+Tab switcher"
SET "LNG59=[04]   Disable unnecessary animations"
SET "LNG60=Gaming Optimization preset applied."
SET "LNG61=Disabling unnecessary animations"
SET "LNG62=[04]   High Performance Optimization"
SET "LNG63=[26]  Disable Automatic Maintenance"
SET "LNG64=Microsoft documentation and forums"
SET "LNG65=Disabling system cooling policy"
SET "LNG66=[06]   Disable tips and suggestions"
SET "LNG67=[02]   Disable unnecessary services"
SET "LNG68=Disabling unnecessary services"
SET "LNG69=Disabling tips and suggestions"
SET "LNG70=[19]  Increase Network Throughput"
SET "LNG71=[08]   Creative Work Optimization"
SET "LNG72=[18]  Increase NTFS Memory Usage"
SET "LNG73=[17]  Increase File System Cache"
SET "LNG74=Type the number of your choice:"
SET "LNG75=Disabling Toggle Keys prompt"
SET "LNG76=Disabling Sticky Keys prompt"
SET "LNG77=Disabling network throttling"
SET "LNG78=Disabling Filter Keys prompt"
SET "LNG79=[23]  Disable Remote Assistance"
SET "LNG80=[14]  Enable Large System Cache"
SET "LNG81=[13]  Disable Automatic Updates"
SET "LNG82=[10]  Power Saver Optimization"
SET "LNG83=WINDOWS OPTIMIZATION SCRIPT"
SET "LNG84=[05]   Low End PC Optimization"
SET "LNG85=[03]   Disable unused features"
SET "LNG86=[28]  Disable Error Reporting"
SET "LNG87=[25]  Disable Remote Registry"
SET "LNG88=[15]  Increase Virtual Memory"
SET "LNG89=Release Date: March 27, 2023"
SET "LNG90=Disabling unused features"
SET "LNG91=Disabling background apps"
SET "LNG92=[09]   Developer Optimization"
SET "LNG93=[24]  Disable Remote Desktop"
SET "LNG94=[01] Individual Optimizations"
SET "LNG95=Enabling file extensions"
SET "LNG96=[27]  Disable Action Center"
SET "LNG97=[16]  Increase CPU Priority"
SET "LNG98=[11]  Disable Xbox Game Bar"
SET "LNG99=INDIVIDUAL OPTIMIZATIONS"
SET "LNG100=Disabling Xbox Game Bar"
SET "LNG101=[06]   Privacy Optimization"
SET "LNG102=[03]   Network Optimization"
SET "LNG103=[01]   General Optimization"
SET "LNG104=[21]  Disable Hibernation"
SET "LNG105=[02]   Gaming Optimization"
SET "LNG106=[02] Preset Optimizations"
SET "LNG107=[12]  Disable Game Mode"
SET "LNG108=PRESET OPTIMIZATIONS"
SET "LNG109=Disabling Xbox Live"
SET "LNG110=Disabling Game DVR"
SET "LNG111=Setting game mode"
SET "LNG112=SCRIPT INFORMATION"
SET "LNG113=CREDITS AND THANKS"
SET "LNG114=ABOUT THIS SCRIPT"
SET "LNG115=[22]  Disable Sleep"
SET "LNG116=The Tech Community"
SET "LNG117=Enter 0 to go back"
SET "LNG118=Author: Liu#4069"
SET "LNG119=Stack Overflow"
SET "LNG120=Version: 1.0"
SET "LNG121=Version 1.0"
SET "LNG122=[03] About"
SET "LNG123=[04] Exit"
SET "LNG124=Github"
GOTO:EOF

:PTB
chcp 1252>nul
SET "LNG1=casos como uso geral, jogos, rede, alto desempenho, PCs de baixo custo, privacidade, produtividade de escritório,"
SET "LNG2=Este é um script de otimização do Windows projetado para ajudar os usuários a otimizar seu sistema para vários usos"
SET "LNG3=trabalho criativo e desenvolvimento.  O script é projetado para aplicar um conjunto de otimizações predefinidas"
SET "LNG4=SEMPRE PESQUISE ANTES DE APLICAR AJUSTES ALEATÓRIOS, NUNCA CONFIE EM NENHUM SOFTWARE SEM PESQUISAR"
SET "LNG5=Você pode usar várias predefinições, mas esteja avisado de que elas podem não ser totalmente compatíveis entre si"
SET "LNG6=O script é fornecido como está e sem qualquer tipo de garantia.  Use por sua conta e risco."
SET "LNG7=específico para cada caso de uso, você também pode aplicar ajustes individuais."
SET "LNG8=Os seguintes recursos foram utilizados no desenvolvimento deste roteiro:"
SET "LNG9=Selecione o número da otimização predefinida que deseja aplicar"
SET "LNG10=Selecione o número da otimização que deseja aplicar"
SET "LNG11=Insira o número da otimização predefinida a ser aplicada:"
SET "LNG12=Otimização da produtividade do escritório aplicada com sucesso"
SET "LNG13=Aplicando a predefinição Office Productivity Optimization"
SET "LNG14=[10] Desative o reconhecimento de impressão digital do Windows Hello"
SET "LNG15=Aplicando ajustes para melhorar o desempenho do sistema"
SET "LNG16=Aplicando a predefinição de otimização de alto desempenho"
SET "LNG17=Predefinição de otimização de jogos aplicada com sucesso"
SET "LNG18=Digite o número da otimização a ser aplicada:"
SET "LNG19=Otimização do trabalho criativo aplicada com sucesso"
SET "LNG20=Aplicando as configurações gráficas da NVIDIA para jogos"
SET "LNG21=[30] Desativar o avaliador de compatibilidade da Microsoft"
SET "LNG22=Otimização de economia de energia aplicada com sucesso."
SET "LNG23=Predefinição de otimização de alto desempenho aplicada."
SET "LNG24=Aplicando a predefinição de otimização de trabalho criativo"
SET "LNG25=[09] Desative o reconhecimento facial do Windows Hello"
SET "LNG26=Ativando a otimização da taxa de transferência da rede"
SET "LNG27=Otimização do desenvolvedor aplicada com sucesso"
SET "LNG28=Aplicando a predefinição de otimização de economia de energia"
SET "LNG29=[08] Desative a telemetria e a coleta de dados"
SET "LNG30=Configurando a otimização de rede para jogos"
SET "LNG31=Desativando a telemetria e a coleta de dados"
SET "LNG32=Aplicando a predefinição de otimização de PC de baixo custo"
SET "LNG33=[20] Ativar modo DMA para unidades de disco rígido"
SET "LNG34=[01] Desative programas de inicialização desnecessários"
SET "LNG35=Configurando o plano de energia para alto desempenho"
SET "LNG36=Otimização de privacidade aplicada com sucesso"
SET "LNG37=Desativando programas de inicialização desnecessários"
SET "LNG38=Aplicando a predefinição de otimização do desenvolvedor"
SET "LNG39=[07] Desativar tarefas agendadas desnecessárias"
SET "LNG40=Configurando o desempenho do processador para alto"
SET "LNG41=[05] Desative efeitos visuais desnecessários"
SET "LNG42=Aplicada a predefinição de otimização de PC de baixo custo."
SET "LNG43=Desativando efeitos visuais desnecessários"
SET "LNG44=Aplicando a predefinição de otimização de privacidade"
SET "LNG45=Aplicando a predefinição de otimização de rede"
SET "LNG46=Aplicando a predefinição de otimização geral"
SET "LNG47=Sistema de otimização para trabalho criativo"
SET "LNG48=Ativando o modo de desenvolvedor para Windows"
SET "LNG49=Aplicando a predefinição de otimização de jogos"
SET "LNG50=[07] Otimização da produtividade do escritório"
SET "LNG51=Configurando o modo de desenvolvedor para Windows"
SET "LNG52=Aplicando configurações de energia adicionais"
SET "LNG53=[29] Desativar telemetria de compatibilidade"
SET "LNG54=Configurando o plano de energia para Economia de energia"
SET "LNG55=Predefinição de otimização de rede aplicada."
SET "LNG56=Predefinição de otimização geral aplicada."
SET "LNG57=Ativando arquivos e pastas ocultos"
SET "LNG58=Ativando o alternador Alt Tab clássico"
SET "LNG59=[04] Desative animações desnecessárias"
SET "LNG60=Predefinição de otimização de jogos aplicada."
SET "LNG61=Desativando animações desnecessárias"
SET "LNG62=[04] Otimização de alto desempenho"
SET "LNG63=[26] Desativar manutenção automática"
SET "LNG64=Documentação e fóruns da Microsoft"
SET "LNG65=Desativando a política de resfriamento do sistema"
SET "LNG66=[06] Desativar dicas e sugestões"
SET "LNG67=[02] Desativar serviços desnecessários"
SET "LNG68=Desabilitando serviços desnecessários"
SET "LNG69=Desativando dicas e sugestões"
SET "LNG70=[19] Aumente a taxa de transferência da rede"
SET "LNG71=[08] Otimização do Trabalho Criativo"
SET "LNG72=[18] Aumente o uso de memória NTFS"
SET "LNG73=[17] Aumente o Cache do Sistema de Arquivos"
SET "LNG74=Digite o número de sua escolha:"
SET "LNG75=Desativando o prompt de teclas de alternância"
SET "LNG76=Desativando o prompt de Sticky Keys"
SET "LNG77=Desabilitando limitação de rede"
SET "LNG78=Desativando o prompt de chaves de filtro"
SET "LNG79=[23] Desativar a Assistência Remota"
SET "LNG80=[14] Ativar cache de sistema grande"
SET "LNG81=[13] Desativar atualizações automáticas"
SET "LNG82=[10] Otimização de economia de energia"
SET "LNG83=SCRIPT DE OTIMIZAÇÃO DO WINDOWS"
SET "LNG84=[05] Otimização de PC de baixo custo"
SET "LNG85=[03] Desativar recursos não utilizados"
SET "LNG86=[28] Desativar relatórios de erros"
SET "LNG87=[25] Desativar registro remoto"
SET "LNG88=[15] Aumente a memória virtual"
SET "LNG89=Data de lançamento: 27 de março de 2023"
SET "LNG90=Desativando recursos não utilizados"
SET "LNG91=Desativando aplicativos em segundo plano"
SET "LNG92=[09] Otimização do desenvolvedor"
SET "LNG93=[24] Desativar área de trabalho remota"
SET "LNG94=[01] Otimizações individuais"
SET "LNG95=Ativando extensões de arquivo"
SET "LNG96=[27] Desativar Central de Ações"
SET "LNG97=[16] Aumente a prioridade da CPU"
SET "LNG98=[11] Desative a barra de jogos do Xbox"
SET "LNG99=OTIMIZAÇÕES INDIVIDUAIS"
SET "LNG100=Desativando a barra de jogos do Xbox"
SET "LNG101=[06] Otimização de privacidade"
SET "LNG102=[03] Otimização de rede"
SET "LNG103=[01] Otimização geral"
SET "LNG104=[21] Desativar hibernação"
SET "LNG105=[02] Otimização de jogos"
SET "LNG106=[02] Otimizações predefinidas"
SET "LNG107=[12] Desativar modo de jogo"
SET "LNG108=OTIMIZAÇÕES PREDEFINIDAS"
SET "LNG109=Desativando o Xbox Live"
SET "LNG110=Desativando o DVR do jogo"
SET "LNG111=Configurando o modo de jogo"
SET "LNG112=INFORMAÇÕES DO ROTEIRO"
SET "LNG113=CRÉDITOS E AGRADECIMENTOS"
SET "LNG114=SOBRE ESTE ESCRITÓRIO"
SET "LNG115=[22] Desativar suspensão"
SET "LNG116=A comunidade tecnológica"
SET "LNG117=Digite 0 para voltar"
SET "LNG118=Autor: Liu"
SET "LNG119=Estouro de Pilha"
SET "LNG120=Versão: 1.0"
SET "LNG121=Versão 1.0"
SET "LNG122=[03] Sobre"
SET "LNG123=[04] Sair"
SET "LNG124=GithubGenericName"
GOTO:EOF
