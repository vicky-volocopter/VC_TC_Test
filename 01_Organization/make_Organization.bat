@echo off

cd %~dp0

call ..\setTcEnv.bat

if "x%TC_DB_CONNECT%"=="x" goto :notcset


@REM
@rem Syntax for the user.csv-file is:
@rem person|user|password|group|role|option_name1|option_value1|option_name2|option_value2|…|update
@rem
@rem For Instance to create a new user:
@rem Heinz Schmidt|hschmidt|1234|Consumer|Viewer|licenselevel|consumer
@rem To add a default-volume to an existing group:
@rem |||Engineer||defaultvolume|volume01|update
@rem

make_user %TC_ADM_LOGIN% -file="%~dp0user.csv"

pause
goto :EOF

:notcset
echo Dieses Kommando bitte in einer Teamcenter-Shell ausfuehren!
echo Abbruch, es wurde nichts importiert.
pause

