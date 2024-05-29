@echo off
@REM #
@REM #
@REM #
@REM # to read umlauts
@REM chcp 65001
if "%COMPUTERNAME%" == "tc-devmain-ap01" goto :LBL_TCDEV_Env
if "%COMPUTERNAME%" == "TC-PROD01" goto :LBL_TCPROD_Env
if "%COMPUTERNAME%" == "WS2016" goto :LBL_DEVVM_Env

:LBL_TCDEV_Env
set TC_SITE=TCDEV
set TSTAMP=`date +"%Y%m%d_%H%M%S"`
set TC_ROOT=E:\plm\tc14\tc_root
set TC_DATA=E:\plmdata\tc_data
REM set TC_ADM_LOGIN=-u=infodba -pf=E:\plm\tc14\tc_root\security\VC_TC_DEV_MAIN_infodba.pwf -g=dba
set TC_ADM_LOGIN=-u=infodba -p=infodba -g=dba
call %TC_DATA%\tc_profilevars.bat
goto LBL_Eof

:LBL_TCPROD_Env
set TC_SITE=TCPROD
set TSTAMP=`date +"%Y%m%d_%H%M%S"`
set TC_ROOT=D:\plm\tc12
set TC_DATA=D:\plmdata\tc12proddata
set TC_ADM_LOGIN=-u=infodba -pf=D:\plm\tc12\security\TC12_PROD_infodba.pwf -g=dba
call %TC_DATA%\tc_profilevars.bat
goto LBL_Eof

:LBL_DEVVM_Env
set TC_SITE=DEVVM
set TSTAMP=`date +"%Y%m%d_%H%M%S"`
set TC_ROOT=D:\plm\tc12
set TC_DATA=D:\plmdata\tc12devdata
set TC_ADM_LOGIN=-u=infodba -pf=D:\plm\tc12\security\TC12DEV_infodba.pwf -g=dba
call %TC_DATA%\tc_profilevars.bat
goto LBL_Eof

:LBL_Eof

@REM #
@REM # EOF
@REM #