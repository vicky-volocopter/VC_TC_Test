@echo off
rem Organization according to Requirements PPT V2 - volume01 APPLIES to Volocopter Environments (Test VM dba_volume)
call make_user %TC_ADM_LOGIN% -group=Volocopter                				-volume=dba_volume -v
call make_user %TC_ADM_LOGIN% -group=Engineering.Volocopter      			-volume=dba_volume -v
call make_user %TC_ADM_LOGIN% -group=Manufacturing.Volocopter				-volume=dba_volume -v
call make_user %TC_ADM_LOGIN% -group="Configuration Management".Volocopter  -volume=dba_volume -v
call make_user %TC_ADM_LOGIN% -group=Certification.Volocopter        		-volume=dba_volume -v
call make_user %TC_ADM_LOGIN% -group=Procurement.Volocopter          		-volume=dba_volume -v
call make_user %TC_ADM_LOGIN% -group="Project Management".Volocopter        -volume=dba_volume -v
call make_user %TC_ADM_LOGIN% -group="Chief Engineering".Volocopter         -volume=dba_volume -v
call make_user %TC_ADM_LOGIN% -group=Quality.Volocopter          			-volume=dba_volume -v
call make_user %TC_ADM_LOGIN% -group=Safety.Volocopter          			-volume=dba_volume -v
call make_user %TC_ADM_LOGIN% -group=Airworthiness.Volocopter          	-volume=dba_volume -v
call make_user %TC_ADM_LOGIN% -group="Standard Parts".Volocopter          	-volume=dba_volume -v
call make_user %TC_ADM_LOGIN% -group="Weight Engineering".Volocopter          	-volume=dba_volume -v