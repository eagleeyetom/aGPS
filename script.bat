@ECHO off
title AGPS installation script

:Start
cls
echo AGPS Installation sctipt by eagleeyetom
echo All credits goes to crypted@xda
echo =======================================
echo 1. Install AT'n'T Specific patch
echo 2. Install Generic Specific patch
echo 3. Install T-Mobile Specific patch
echo 4. Install gps.conf only
echo 5. Install BETA
echo 6. Exit
echo =======================================
set /p choice=I choose (1,2,3,4,5,6):
if %choice%==1 goto ATT
if %choice%==2 goto Generic
if %choice%==3 goto T-Mobile
if %choice%==4 goto GPS
if %choice%==5 goto Beta
if %choice%==6 exit



:ATT Install
cls
echo Running Install Script 
for %%I in (patches\ATT\*) do (
	adb push %%I /system/etc/
)
echo Done!
echo =====
echo Do you want to reboot(?)
echo 1. Yes
echo 2. No
set /p choice=I choose (1,2):
if %choice%==1 goto reboot
if %choice%==2 goto exit
pause
exit

:T-Mobile
cls
echo Running Install Script 
for %%I in (patches\TM\*) do (
	adb push %%I /system/etc/
)
echo Done!
echo =====
echo Do you want to reboot(?)
echo 1. Yes
echo 2. No
set /p choice=I choose (1,2):
if %choice%==1 goto reboot
if %choice%==2 goto exit
pause
exit

:Generic
cls
echo Running Install Script 
for %%I in (patches\Generic\*) do (
	adb push %%I /system/etc/
)
echo Done!
echo =====
echo Do you want to reboot(?)
echo 1. Yes
echo 2. No
set /p choice=I choose (1,2):
if %choice%==1 goto reboot
if %choice%==2 goto exit
pause
exit

:GPS
cls
echo Running Install Script 
for %%I in (patches\GPS\*) do (
	adb push %%I /system/etc/
)
echo Done!
echo =====
echo Do you want to reboot(?)
echo 1. Yes
echo 2. No
set /p choice=I choose (1,2):
if %choice%==1 goto reboot
if %choice%==2 goto exit
pause
exit

:Beta
cls
echo Running Install Script 
for %%I in (patches\beta\*) do (
	adb push %%I /system/etc/
)
echo Done!
echo =====
echo Do you want to reboot(?)
echo 1. Yes
echo 2. No
set /p choice=I choose (1,2):
if %choice%==1 goto reboot
if %choice%==2 goto exit
pause
exit

:exit
echo Thanks for installing script. Don't forget to reboot your phone.
pause
exit

:reboot
echo Now your phone will reboot. Wait a while.
adb reboot
echo POOF! Now you can exit.
pause
exit