@echo off

REM Changing directory to path where the batch file resides
cd /d %~dp0

call ..\setenv.bat

if not defined TC_ROOT goto ENV_MISSING

:START_PROCESS
Echo Import of Teamcenter site preferences

REM Changing directory to "Site" folder of preferences
cd /d Site

REM Caching path to any file inside the current directory within a temporary text file
dir /s /b >%cd%\dir_cache.txt

REM Caching path to .xml files (= preferences) inside the current directory within a temporary text file
find ".xml" < %cd%\dir_cache.txt > %cd%\pref_name_cache.txt

REM For each xml file preference_manager utility is called for import with OVERRIDE mode
FOR /F %%i in (%cd%\pref_name_cache.txt) do (

	@echo importing Preference: %%i...
	@call preferences_manager %TC_ADM_LOGIN% -mode=import -file=%%i -scope=SITE -action=OVERRIDE
	@echo ---------------------------------------------------------------------
	@echo.
)

REM Deleting the cache files
del %cd%\dir_cache.txt
del %cd%\pref_name_cache.txt
pause
goto :EOF

:ENV_MISSING
echo You need to run this script in a Teamcenter environment