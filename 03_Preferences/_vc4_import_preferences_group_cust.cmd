@echo off

REM Changing directory to path where the batch file resides
cd /d %~dp0

call ..\setenv.bat

set PREFS_ROOT=%cd%

if not defined TC_ROOT goto ENV_MISSING

:START_PROCESS
echo Import of Teamcenter group preferences

cd %PREFS_ROOT%\Group\Volocopter

for /f "usebackq delims=." %%i in (`dir /b *.xml`) do (
	echo importing Preference: %%i...
	call preferences_manager %TC_ADM_LOGIN% -mode=import -file=%%i.xml -scope=GROUP -target=Volocopter -action=OVERRIDE
	echo ---------------------------------------------------------------------
	echo.
)

cd %PREFS_ROOT%\Group\Volocopter\ConfigurationManagement

for /f "usebackq delims=." %%i in (`dir /b *.xml`) do (
	echo importing Preference: %%i...
	call preferences_manager %TC_ADM_LOGIN% -mode=import -file=%%i.xml -scope=GROUP -target="Configuration Management.Volocopter" -action=OVERRIDE
	echo ---------------------------------------------------------------------
	echo.
)

cd %PREFS_ROOT%\Group\Volocopter\ChiefEngineering

for /f "usebackq delims=." %%i in (`dir /b *.xml`) do (
	echo importing Preference: %%i...
	call preferences_manager %TC_ADM_LOGIN% -mode=import -file=%%i.xml -scope=GROUP -target="Chief Engineering.Volocopter" -action=OVERRIDE
	echo ---------------------------------------------------------------------
	echo.
)

cd %PREFS_ROOT%\Group\Volocopter\StandardParts

for /f "usebackq delims=." %%i in (`dir /b *.xml`) do (
	echo importing Preference: %%i...
	call preferences_manager %TC_ADM_LOGIN% -mode=import -file=%%i.xml -scope=GROUP -target="Standard Parts.Volocopter" -action=OVERRIDE
	echo ---------------------------------------------------------------------
	echo.
)

pause
goto :EOF

:ENV_MISSING
echo You need to run this script in a Teamcenter environment