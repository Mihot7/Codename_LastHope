@echo off
color 09
set build=1
rem Initialization
echo.
chcp 65001
set project=LastHope
rem to be changed to your project name later
set system_files=%cd%\system
set programs_folder=%cd%\programs
set data_folder=%cd%\userdata
set plugins_folder=%cd%\plugins
set config_folder=%cd%\config
set shell=%system_files%\shell.bat
set /p ver=<"config/ver"
rem set /p color=<"config/color"
rem set /p boot=<"config/boot"
rem set /p build=<"config/build"
rem set /p builder=<"config/builder"
echo Starting kernel and watchdog... Please wait.
rem Start the kernel
"%system_files%\kernel.bat"
echo Watchdog error has occurred.
pause
exit