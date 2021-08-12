color f9
NET FILE 1>NUL 2>NUL & IF ERRORLEVEL 1 (goto warn)
goto ok
:warn
@echo off
@title TaskMGR LITE
cls
color 4
echo Warning...You May Need To Run This Program As Admistrator To Kill Some Tasks...Warning
echo .
echo To Acknowledge Press Any Key
pause >NUL
goto ok
:ok
color f9
@echo off
@title TaskMGR LITE
cls
rem code start here <------------------------------------------------------------------------------------------------------
tasklist
echo .
echo .
echo ===============================================================
echo taskkill,exit,refresh:
set /p wtd=
if %wtd%==exit goto exit
if %wtd%==refresh goto refresh
if %wtd%==taskkill goto taskkill
if not %wtd%==r goto error
goto refresh
:taskkill
set /p wttk=Full Name:
taskkill /f /im %wttk%
echo .
echo Press A Key
pause >NUL
goto ok
:exit
exit
:refresh
goto ok
:error
cls
echo error
pause >NUL
goto ok