@echo off

cd /d %0\..

call ..\setenv.bat

call plmxml_import %TC_ADM_LOGIN% -transfermode=workflow_template_overwrite -import_mode=overwrite -xml_file=VC_QMS_Document_Release.xml
call plmxml_import %TC_ADM_LOGIN% -transfermode=workflow_template_overwrite -import_mode=overwrite -xml_file=VC_Product_Document_Release.xml
call plmxml_import %TC_ADM_LOGIN% -transfermode=workflow_template_overwrite -import_mode=overwrite -xml_file=VC_Project_Document_Release.xml
call plmxml_import %TC_ADM_LOGIN% -transfermode=workflow_template_overwrite -import_mode=overwrite -xml_file=VC_Interim_Document_Release_CM.xml
call plmxml_import %TC_ADM_LOGIN% -transfermode=workflow_template_overwrite -import_mode=overwrite -xml_file=VC_ECM_Document_Release.xml
call plmxml_import %TC_ADM_LOGIN% -transfermode=workflow_template_overwrite -import_mode=overwrite -xml_file=VC_TCM_Document_Release.xml
call plmxml_import %TC_ADM_LOGIN% -transfermode=workflow_template_overwrite -import_mode=overwrite -xml_file=VC_Part_Prototype_Release.xml
call plmxml_import %TC_ADM_LOGIN% -transfermode=workflow_template_overwrite -import_mode=overwrite -xml_file=VC_Type_Design_Data_Release.xml
call plmxml_import %TC_ADM_LOGIN% -transfermode=workflow_template_overwrite -import_mode=overwrite -xml_file=VC_TDD_Confirmation.xml
call plmxml_import %TC_ADM_LOGIN% -transfermode=workflow_template_overwrite -import_mode=overwrite -xml_file=VC_Research_And_Development_Data_Release.xml
call plmxml_import %TC_ADM_LOGIN% -transfermode=workflow_template_overwrite -import_mode=overwrite -xml_file=VC_Commercial_Part_Release.xml
call plmxml_import %TC_ADM_LOGIN% -transfermode=workflow_template_overwrite -import_mode=overwrite -xml_file=VC_Raw_Material_And_Consumable_Release.xml
call plmxml_import %TC_ADM_LOGIN% -transfermode=workflow_template_overwrite -import_mode=overwrite -xml_file=VC_MBOMPart_Release.xml
call plmxml_import %TC_ADM_LOGIN% -transfermode=workflow_template_overwrite -import_mode=overwrite -xml_file=VC_Redlining_Process.xml
call plmxml_import %TC_ADM_LOGIN% -transfermode=workflow_template_overwrite -import_mode=overwrite -xml_file=VC_Make_Part_Or_Document_Obsolete.xml
call plmxml_import %TC_ADM_LOGIN% -transfermode=workflow_template_overwrite -import_mode=overwrite -xml_file=VC_Sub_Supersede_Predecessor_DocRev.xml
call plmxml_import %TC_ADM_LOGIN% -transfermode=workflow_template_overwrite -import_mode=overwrite -xml_file=VC_Sub_Update_Translate_Document.xml
call plmxml_import %TC_ADM_LOGIN% -transfermode=workflow_template_overwrite -import_mode=overwrite -xml_file=VC_Sub_Translate_Partlist.xml
call plmxml_import %TC_ADM_LOGIN% -transfermode=workflow_template_overwrite -import_mode=overwrite -xml_file=VC_Sub_Translate_UGPART_To_PDF.xml
call plmxml_import %TC_ADM_LOGIN% -transfermode=workflow_template_overwrite -import_mode=overwrite -xml_file=VC_Sub_Translate_UGMASTER_To_STEP.xml
call plmxml_import %TC_ADM_LOGIN% -transfermode=workflow_template_overwrite -import_mode=overwrite -xml_file=VC_Sub_Translate_UGMASTER_To_JT.xml
call plmxml_import %TC_ADM_LOGIN% -transfermode=workflow_template_overwrite -import_mode=overwrite -xml_file=VC_OOTB_Workflows_WithConditionsAttached.xml

call plmxml_import %TC_ADM_LOGIN% -transfermode=workflow_template_overwrite -import_mode=overwrite -xml_file=VC_Restrict_BOM_CM.xml
call plmxml_import %TC_ADM_LOGIN% -transfermode=workflow_template_overwrite -import_mode=overwrite -xml_file=VC_Unlock_BOM_CM.xml

call plmxml_import %TC_ADM_LOGIN% -transfermode=workflow_template_overwrite -import_mode=overwrite -xml_file=VC_CR_Process.xml
call plmxml_import %TC_ADM_LOGIN% -transfermode=workflow_template_overwrite -import_mode=overwrite -xml_file=VC_CN_Process.xml

call plmxml_import %TC_ADM_LOGIN% -transfermode=workflow_template_overwrite -import_mode=overwrite -xml_file=VC_Admin_ERP_Transfer.xml
call plmxml_import %TC_ADM_LOGIN% -transfermode=workflow_template_overwrite -import_mode=overwrite -xml_file=T4EA_File_Transfer.xml
call plmxml_import %TC_ADM_LOGIN% -transfermode=workflow_template_overwrite -import_mode=overwrite -xml_file=T4EA_ItemMaster_Transfer.xml

call plmxml_import %TC_ADM_LOGIN% -transfermode=workflow_template_overwrite -import_mode=overwrite -xml_file=VC_Admin_Remove_Any_Status.xml
call plmxml_import %TC_ADM_LOGIN% -transfermode=workflow_template_overwrite -import_mode=overwrite -xml_file=VC_Admin_Set_VC4_Approved.xml
call plmxml_import %TC_ADM_LOGIN% -transfermode=workflow_template_overwrite -import_mode=overwrite -xml_file=VC_Admin_Set_VC4_Canceled.xml
call plmxml_import %TC_ADM_LOGIN% -transfermode=workflow_template_overwrite -import_mode=overwrite -xml_file=VC_Admin_Set_VC4_Prototype_Released.xml
call plmxml_import %TC_ADM_LOGIN% -transfermode=workflow_template_overwrite -import_mode=overwrite -xml_file=VC_Admin_Set_VC4_Released.xml
call plmxml_import %TC_ADM_LOGIN% -transfermode=workflow_template_overwrite -import_mode=overwrite -xml_file=VC_Admin_Set_VC4_Received.xml
call plmxml_import %TC_ADM_LOGIN% -transfermode=workflow_template_overwrite -import_mode=overwrite -xml_file=VC_Admin_Set_VC4_RDD_Released.xml

call plmxml_import %TC_ADM_LOGIN% -transfermode=workflow_template_overwrite -import_mode=overwrite -xml_file=VC_Set_Status_Obsolete.xml
call plmxml_import %TC_ADM_LOGIN% -transfermode=workflow_template_overwrite -import_mode=overwrite -xml_file=VC_Sub_PDF_WaterMark.xml

call plmxml_import %TC_ADM_LOGIN% -transfermode=workflow_template_overwrite -import_mode=overwrite -xml_file="TC Default Baseline Process.xml"

call plmxml_import %TC_ADM_LOGIN% -transfermode=workflow_template_overwrite -import_mode=overwrite -xml_file=VC_Admin_DocUpdate.xml
call plmxml_import %TC_ADM_LOGIN% -transfermode=workflow_template_overwrite -import_mode=overwrite -xml_file=VC_Admin_Test_Translation_Dispatcher_msofficetopdf.xml
call plmxml_import %TC_ADM_LOGIN% -transfermode=workflow_template_overwrite -import_mode=overwrite -xml_file=VC_Admin_Test_Translation_Dispatcher_rendermgttranslator.xml
call plmxml_import %TC_ADM_LOGIN% -transfermode=workflow_template_overwrite -import_mode=overwrite -xml_file=VC_Admin_Test_Translation_CRI_nx2d.xml
call plmxml_import %TC_ADM_LOGIN% -transfermode=workflow_template_overwrite -import_mode=overwrite -xml_file=VC_Admin_Test_Translation_CRI_nx2step214.xml
call plmxml_import %TC_ADM_LOGIN% -transfermode=workflow_template_overwrite -import_mode=overwrite -xml_file=VC_Admin_Test_Translation_CRI_report_partbom.xml
call plmxml_import %TC_ADM_LOGIN% -transfermode=workflow_template_overwrite -import_mode=overwrite -xml_file=VC_Admin_Test_Translation_Dispatcher_nxtopvdirect.xml

call plmxml_import %TC_ADM_LOGIN% -transfermode=workflow_template_overwrite -import_mode=overwrite -xml_file=VC_Sub_Create_DocpageRel_PDF.xml
call plmxml_import %TC_ADM_LOGIN% -transfermode=workflow_template_overwrite -import_mode=overwrite -xml_file=VC_Sub_Create_Product_Doc_CoverpagePDF.xml
call plmxml_import %TC_ADM_LOGIN% -transfermode=workflow_template_overwrite -import_mode=overwrite -xml_file=VC_Sub_Merge_delete_PDF.xml

call plmxml_import %TC_ADM_LOGIN% -transfermode=workflow_template_overwrite -import_mode=overwrite -xml_file=VC_Set_Status_Canceled.xml
call plmxml_import %TC_ADM_LOGIN% -transfermode=workflow_template_overwrite -import_mode=overwrite -xml_file=VC_Sub_PDF_WaterMark_Canceled.xml
call plmxml_import %TC_ADM_LOGIN% -transfermode=workflow_template_overwrite -import_mode=overwrite -xml_file=VC_Sub_Rename_Dwg_PDF.xml
call plmxml_import %TC_ADM_LOGIN% -transfermode=workflow_template_overwrite -import_mode=overwrite -xml_file=VC_On_Demand_Translate_UGMASTER_To_STEP.xml
call plmxml_import %TC_ADM_LOGIN% -transfermode=workflow_template_overwrite -import_mode=overwrite -xml_file=VC_On_Demand_Translate_UGPART_To_PDF.xml

call plmxml_import %TC_ADM_LOGIN% -transfermode=workflow_template_overwrite -import_mode=overwrite -xml_file=VC_Sub_Measured_Mass_Initial_Migration.xml
call plmxml_import %TC_ADM_LOGIN% -transfermode=workflow_template_overwrite -import_mode=overwrite -xml_file=VC_Sub_Measured_Mass_Initial_Update.xml
call plmxml_import %TC_ADM_LOGIN% -transfermode=workflow_template_overwrite -import_mode=overwrite -xml_file=VC_Measured_Mass_Initial_Migration.xml
call plmxml_import %TC_ADM_LOGIN% -transfermode=workflow_template_overwrite -import_mode=overwrite -xml_file=VC_Measured_Mass_Initial_Update.xml
call plmxml_import %TC_ADM_LOGIN% -transfermode=workflow_template_overwrite -import_mode=overwrite -xml_file=VC_Measured_Mass_Reupdate.xml

rem Copy ProgressionPath.plmxml to TC_DATA

rem if not exist %TC_DATA%\ProgressionPath.plmxml.org copy /Y %TC_DATA%\ProgressionPath.plmxml %TC_DATA%\ProgressionPath.plmxml.org
rem copy /Y ProgressionPath.plmxml "%TC_DATA%\ProgressionPath.plmxml" 
