REM echo off

cd /d %0\..

call setenv.bat

cls

if exist \03_Preferences\_vc4_import_preferences.cmd goto do1
goto next1
:do1
call \03_Preferences\_vc4_import_preferences.cmd 

:next1
if exist \03_Preferences\_vc4_import_ruletree.cmd goto do2
goto next2
:do2
call \04_Ruletree\_vc4_import_ruletree.cmd

:next2
if exist \03_Preferences\_vc4_import_queries.cmd goto do3
goto next3
:do3
call \05_Queries\_vc4_import_queries.cmd

:next3
if exist \03_Preferences\_vc4_import_all_stylesheets.cmd goto do4
goto next4
:do4
call \06_Rendering\_vc4_import_all_stylesheets.cmd

:next4
if exist \03_Preferences\_vc4_import_workflows.cmd goto do5
goto next5
:do5
call \07_Workflows\_vc4_import_workflows.cmd

:next5
if exist \03_Preferences\_vc4_import_reports.cmd goto do6
goto next6
:do6
call \08_Reports\_vc4_import_reports.cmd

:next6
if exist \03_Preferences\_vc4_import_ClientCustomization goto do7
goto next7
:do7
call \09_ClientCustomization\_vc4_import_ClientCustomization.cmd

:next7
if exist \03_Preferences\_vc4_dispatcher.cmd goto do8
goto next8
:do8
call \12_Dispatcher\_vc4_dispatcher.cmd

:next8
if exist \03_Preferences\_vc4_import_attribute_mapping goto do9
goto next9
:do9
call \13_Attribute_Mapping\_vc4_import_attribute_mapping.cmd

:next9
if exist \03_Preferences\_vc4_import_irdc.cmd goto do10
goto next1
:do10
call \IRDC\_vc4_import_irdc.cmd

echo 
echo ---------
echo All done!
echo ---------




















FOR /F  %%i IN ('dir /b SG_*_ADVANCED_properties_*') DO (
%cls_utility% %TC_USER% %TC_USER_PWD% %TC_USER_GRP% -create -property_definitions -request=%%i 
)

FOR /F  %%i IN ('dir /b SG_*_ADVANCED_blocks_*') DO (
%cls_utility% %TC_USER% %TC_USER_PWD% %TC_USER_GRP% -create -class_definitions -request=%%i 
)

FOR /F  %%i IN ('dir /b SG_*_ADVANCED_aspects_*') DO (
%cls_utility% %TC_USER% %TC_USER_PWD% %TC_USER_GRP% -create -class_definitions -request=%%i 
)

FOR /F  %%i IN ('dir /b SG_*_ADVANCED_applicationClasses_*') DO (
%cls_utility% %TC_USER% %TC_USER_PWD% %TC_USER_GRP% -create -class_definitions -request=%%i 
)

FOR /F  %%i IN ('dir /b SG_*_ADVANCED_nodes.json') DO (
%cls_utility% %TC_USER% %TC_USER_PWD% %TC_USER_GRP% -create -node_definitions -request=%%i
)

cd ..

:END
