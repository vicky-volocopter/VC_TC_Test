@echo off

cd /d %0\..

call ..\setEnv.bat

call 1_make_roles
call 2_make_groups_main
call 3_make_users
