@echo off
rem Organization according to Requirements PPT V2
call make_user %TC_ADM_LOGIN% -group=dba	-role="ITAR Admin"

call make_user %TC_ADM_LOGIN% -group=Engineering.Volocopter	-role=Engineer
call make_user %TC_ADM_LOGIN% -group=Engineering.Volocopter  	-role=Reviewer
call make_user %TC_ADM_LOGIN% -group=Engineering.Volocopter  	-role=Approver
call make_user %TC_ADM_LOGIN% -group=Engineering.Volocopter  	-role=Viewer

call make_user %TC_ADM_LOGIN% -group=Manufacturing.Volocopter		-role=Engineer
call make_user %TC_ADM_LOGIN% -group=Manufacturing.Volocopter  	-role=Reviewer
call make_user %TC_ADM_LOGIN% -group=Manufacturing.Volocopter  	-role=Approver
call make_user %TC_ADM_LOGIN% -group=Manufacturing.Volocopter  	-role=Viewer

call make_user %TC_ADM_LOGIN% -group="Configuration Management".Volocopter	-role=Author
call make_user %TC_ADM_LOGIN% -group="Configuration Management".Volocopter  -role=Reviewer
call make_user %TC_ADM_LOGIN% -group="Configuration Management".Volocopter  -role=Approver
call make_user %TC_ADM_LOGIN% -group="Configuration Management".Volocopter	-role=Viewer

call make_user %TC_ADM_LOGIN% -group=Certification.Volocopter		-role=Author
call make_user %TC_ADM_LOGIN% -group=Certification.Volocopter 	-role=Reviewer
call make_user %TC_ADM_LOGIN% -group=Certification.Volocopter 	-role=Approver
call make_user %TC_ADM_LOGIN% -group=Certification.Volocopter		-role=Viewer

call make_user %TC_ADM_LOGIN% -group=Procurement.Volocopter	-role=Author
call make_user %TC_ADM_LOGIN% -group=Procurement.Volocopter 	-role=Reviewer
call make_user %TC_ADM_LOGIN% -group=Procurement.Volocopter 	-role=Approver
call make_user %TC_ADM_LOGIN% -group=Procurement.Volocopter	-role=Viewer

call make_user %TC_ADM_LOGIN% -group="Project Management".Volocopter	-role=Author
call make_user %TC_ADM_LOGIN% -group="Project Management".Volocopter 	-role=Reviewer
call make_user %TC_ADM_LOGIN% -group="Project Management".Volocopter 	-role=Approver
call make_user %TC_ADM_LOGIN% -group="Project Management".Volocopter	-role=Viewer

call make_user %TC_ADM_LOGIN% -group="Chief Engineering".Volocopter		-role=Engineer
call make_user %TC_ADM_LOGIN% -group="Chief Engineering".Volocopter 	-role=Reviewer
call make_user %TC_ADM_LOGIN% -group="Chief Engineering".Volocopter 	-role=Approver
call make_user %TC_ADM_LOGIN% -group="Chief Engineering".Volocopter		-role=Viewer

call make_user %TC_ADM_LOGIN% -group=Quality.Volocopter	-role=Engineer
call make_user %TC_ADM_LOGIN% -group=Quality.Volocopter 	-role=Reviewer
call make_user %TC_ADM_LOGIN% -group=Quality.Volocopter 	-role=Approver
call make_user %TC_ADM_LOGIN% -group=Quality.Volocopter	-role=Viewer

call make_user %TC_ADM_LOGIN% -group=Safety.Volocopter	-role=Engineer
call make_user %TC_ADM_LOGIN% -group=Safety.Volocopter 	-role=Reviewer
call make_user %TC_ADM_LOGIN% -group=Safety.Volocopter 	-role=Approver
call make_user %TC_ADM_LOGIN% -group=Safety.Volocopter	-role=Viewer

call make_user %TC_ADM_LOGIN% -group=Airworthiness.Volocopter	-role=Engineer
call make_user %TC_ADM_LOGIN% -group=Airworthiness.Volocopter 	-role=Reviewer
call make_user %TC_ADM_LOGIN% -group=Airworthiness.Volocopter 	-role=Approver
call make_user %TC_ADM_LOGIN% -group=Airworthiness.Volocopter	-role=Viewer

call make_user %TC_ADM_LOGIN% -group="Standard Parts".Volocopter	-role=Author
call make_user %TC_ADM_LOGIN% -group="Standard Parts".Volocopter 	-role=Approver

call make_user %TC_ADM_LOGIN% -group="Weight Engineering".Volocopter 	-role=Engineer

rem call make_user %TC_ADM_LOGIN% -user=test_designer   -password=test_designer	-OSuser=test_designer 	-group=Engineering.Volocopter 	-person="test_designer"     -role=Design Engineer -licenselevel=author
rem call make_user %TC_ADM_LOGIN% -user=test_reviewer   -password=test_reviewer  	-OSuser=test_reviewer   -group=Engineering.Volocopter 	-person="test_reviewer"     -role=Reviewer  -licenselevel=author
rem call make_user %TC_ADM_LOGIN% -user=test_approver   -password=test_approver   -OSuser=test_approver	-group=Engineering.Volocopter   -person="test_approver"     -role=Approver  -licenselevel=author
rem call make_user %TC_ADM_LOGIN% -user=test_viewer     -password=test_viewer    	-OSuser=test_viewer		-group=Engineering.Volocopter   -person="test_viewer"       -role=Viewer    -licenselevel=consumer