
IF  EXISTS (SELECT * FROM sysobjects WHERE id = OBJECT_ID(N'[dbo].[Activate_Letter]')) 
DROP PROCEDURE [dbo].[Activate_Letter]
GO
/* Activate_Recommite]    :42 */
IF  EXISTS (SELECT * FROM sysobjects WHERE id = OBJECT_ID(N'[dbo].[Activate_Recommite]')) 
DROP PROCEDURE [dbo].[Activate_Recommite]
GO
/* AnswerLetter]    :42 */
IF  EXISTS (SELECT * FROM sysobjects WHERE id = OBJECT_ID(N'[dbo].[AnswerLetter]')) 
DROP PROCEDURE [dbo].[AnswerLetter]
GO
/* AnswerNote]    :42 */
IF  EXISTS (SELECT * FROM sysobjects WHERE id = OBJECT_ID(N'[dbo].[AnswerNote]')) 
DROP PROCEDURE [dbo].[AnswerNote]
GO
/* Check_duplicate_UserName]    :42 */
IF  EXISTS (SELECT * FROM sysobjects WHERE id = OBJECT_ID(N'[dbo].[Check_duplicate_UserName]')) 
DROP PROCEDURE [dbo].[Check_duplicate_UserName]
GO
/* delete_Accesses]    :42 */
IF  EXISTS (SELECT * FROM sysobjects WHERE id = OBJECT_ID(N'[dbo].[delete_Accesses]')) 
DROP PROCEDURE [dbo].[delete_Accesses]
GO
/* delete_Actions_ByFormID]    :42 */
IF  EXISTS (SELECT * FROM sysobjects WHERE id = OBJECT_ID(N'[dbo].[delete_Actions_ByFormID]')) 
DROP PROCEDURE [dbo].[delete_Actions_ByFormID]
GO
/* Delete_All_Secretariats_Of_User]    :42 */
IF  EXISTS (SELECT * FROM sysobjects WHERE id = OBJECT_ID(N'[dbo].[Delete_All_Secretariats_Of_User]')) 
DROP PROCEDURE [dbo].[Delete_All_Secretariats_Of_User]
GO
/* Delete_All_TemplateGroup_Of_User]    :42 */
IF  EXISTS (SELECT * FROM sysobjects WHERE id = OBJECT_ID(N'[dbo].[Delete_All_TemplateGroup_Of_User]')) 
DROP PROCEDURE [dbo].[Delete_All_TemplateGroup_Of_User]
GO
/* Delete_ArchiveFolder]    :42 */
IF  EXISTS (SELECT * FROM sysobjects WHERE id = OBJECT_ID(N'[dbo].[Delete_ArchiveFolder]')) 
DROP PROCEDURE [dbo].[Delete_ArchiveFolder]
GO
/* Delete_Exported_LetterData]    :42 */
IF  EXISTS (SELECT * FROM sysobjects WHERE id = OBJECT_ID(N'[dbo].[Delete_Exported_LetterData]')) 
DROP PROCEDURE [dbo].[Delete_Exported_LetterData]
GO
/* delete_Extention]    :42 */
IF  EXISTS (SELECT * FROM sysobjects WHERE id = OBJECT_ID(N'[dbo].[delete_Extention]')) 
DROP PROCEDURE [dbo].[delete_Extention]
GO
/* Delete_Letter]    :42 */
IF  EXISTS (SELECT * FROM sysobjects WHERE id = OBJECT_ID(N'[dbo].[Delete_Letter]')) 
DROP PROCEDURE [dbo].[Delete_Letter]
GO
/* delete_LetterArchiveFolder]    :42 */
IF  EXISTS (SELECT * FROM sysobjects WHERE id = OBJECT_ID(N'[dbo].[delete_LetterArchiveFolder]')) 
DROP PROCEDURE [dbo].[delete_LetterArchiveFolder]
GO
/* delete_LetterData]    :42 */
IF  EXISTS (SELECT * FROM sysobjects WHERE id = OBJECT_ID(N'[dbo].[delete_LetterData]')) 
DROP PROCEDURE [dbo].[delete_LetterData]
GO
/* delete_letterImage]    :42 */
IF  EXISTS (SELECT * FROM sysobjects WHERE id = OBJECT_ID(N'[dbo].[delete_letterImage]')) 
DROP PROCEDURE [dbo].[delete_letterImage]
GO
/* delete_LetterWord]    :42 */
IF  EXISTS (SELECT * FROM sysobjects WHERE id = OBJECT_ID(N'[dbo].[delete_LetterWord]')) 
DROP PROCEDURE [dbo].[delete_LetterWord]
GO
/* delete_ParaphTemplate]    :42 */
IF  EXISTS (SELECT * FROM sysobjects WHERE id = OBJECT_ID(N'[dbo].[delete_ParaphTemplate]')) 
DROP PROCEDURE [dbo].[delete_ParaphTemplate]
GO
/* delete_ReCommites]    :42 */
IF  EXISTS (SELECT * FROM sysobjects WHERE id = OBJECT_ID(N'[dbo].[delete_ReCommites]')) 
DROP PROCEDURE [dbo].[delete_ReCommites]
GO
/* Delete_Table]    :42 */
IF  EXISTS (SELECT * FROM sysobjects WHERE id = OBJECT_ID(N'[dbo].[Delete_Table]')) 
DROP PROCEDURE [dbo].[Delete_Table]
GO
/* delete_user]    :42 */
IF  EXISTS (SELECT * FROM sysobjects WHERE id = OBJECT_ID(N'[dbo].[delete_user]')) 
DROP PROCEDURE [dbo].[delete_user]
GO
/* delete_UserTable]    :42 */
IF  EXISTS (SELECT * FROM sysobjects WHERE id = OBJECT_ID(N'[dbo].[delete_UserTable]')) 
DROP PROCEDURE [dbo].[delete_UserTable]
GO
/* Deleted_to_Letter]    :42 */
IF  EXISTS (SELECT * FROM sysobjects WHERE id = OBJECT_ID(N'[dbo].[Deleted_to_Letter]')) 
DROP PROCEDURE [dbo].[Deleted_to_Letter]
GO
/* Draft_to_SentLetter]    :42 */
IF  EXISTS (SELECT * FROM sysobjects WHERE id = OBJECT_ID(N'[dbo].[Draft_to_SentLetter]')) 
DROP PROCEDURE [dbo].[Draft_to_SentLetter]
GO
/* Duplicate_UserShortCut]    :42 */
IF  EXISTS (SELECT * FROM sysobjects WHERE id = OBJECT_ID(N'[dbo].[Duplicate_UserShortCut]')) 
DROP PROCEDURE [dbo].[Duplicate_UserShortCut]
GO
/* Export_LetterData]    :42 */
IF  EXISTS (SELECT * FROM sysobjects WHERE id = OBJECT_ID(N'[dbo].[Export_LetterData]')) 
DROP PROCEDURE [dbo].[Export_LetterData]
GO
/* Folder_hasChild]    :42 */
IF  EXISTS (SELECT * FROM sysobjects WHERE id = OBJECT_ID(N'[dbo].[Folder_hasChild]')) 
DROP PROCEDURE [dbo].[Folder_hasChild]
GO
/* Folder_hasLetter]    :43 */
IF  EXISTS (SELECT * FROM sysobjects WHERE id = OBJECT_ID(N'[dbo].[Folder_hasLetter]')) 
DROP PROCEDURE [dbo].[Folder_hasLetter]
GO
/* Folder_hasRecommite]    :43 */
IF  EXISTS (SELECT * FROM sysobjects WHERE id = OBJECT_ID(N'[dbo].[Folder_hasRecommite]')) 
DROP PROCEDURE [dbo].[Folder_hasRecommite]
GO
/* Get_ActiveUser]    :43 */
IF  EXISTS (SELECT * FROM sysobjects WHERE id = OBJECT_ID(N'[dbo].[Get_ActiveUser]')) 
DROP PROCEDURE [dbo].[Get_ActiveUser]
GO
/* Get_All_Letter]    :43 */
IF  EXISTS (SELECT * FROM sysobjects WHERE id = OBJECT_ID(N'[dbo].[Get_All_Letter]')) 
DROP PROCEDURE [dbo].[Get_All_Letter]
GO
/* Get_ArchiveFolder_ByAccess]    :43 */
IF  EXISTS (SELECT * FROM sysobjects WHERE id = OBJECT_ID(N'[dbo].[Get_ArchiveFolder_ByAccess]')) 
DROP PROCEDURE [dbo].[Get_ArchiveFolder_ByAccess]
GO
/* Get_ArchiveFolder_ByAccessAndTitle]    :43 */
IF  EXISTS (SELECT * FROM sysobjects WHERE id = OBJECT_ID(N'[dbo].[Get_ArchiveFolder_ByAccessAndTitle]')) 
DROP PROCEDURE [dbo].[Get_ArchiveFolder_ByAccessAndTitle]
GO
/* get_ArchiveFolder_byUserID]    :43 */
IF  EXISTS (SELECT * FROM sysobjects WHERE id = OBJECT_ID(N'[dbo].[get_ArchiveFolder_byUserID]')) 
DROP PROCEDURE [dbo].[get_ArchiveFolder_byUserID]
GO
/* get_ArchiveFolder_byUserID_and_Letterid]    :43 */
IF  EXISTS (SELECT * FROM sysobjects WHERE id = OBJECT_ID(N'[dbo].[get_ArchiveFolder_byUserID_and_Letterid]')) 
DROP PROCEDURE [dbo].[get_ArchiveFolder_byUserID_and_Letterid]
GO
/* get_ArchiveFolder_byUserID_and_Place]    :43 */
IF  EXISTS (SELECT * FROM sysobjects WHERE id = OBJECT_ID(N'[dbo].[get_ArchiveFolder_byUserID_and_Place]')) 
DROP PROCEDURE [dbo].[get_ArchiveFolder_byUserID_and_Place]
GO
/* get_ArchiveFolder_byUserID_and_Title]    :43 */
IF  EXISTS (SELECT * FROM sysobjects WHERE id = OBJECT_ID(N'[dbo].[get_ArchiveFolder_byUserID_and_Title]')) 
DROP PROCEDURE [dbo].[get_ArchiveFolder_byUserID_and_Title]
GO 
/* get_DayID_InWeek]    :43 */
IF  EXISTS (SELECT * FROM sysobjects WHERE id = OBJECT_ID(N'[dbo].[get_DayID_InWeek]')) 
DROP PROCEDURE [dbo].[get_DayID_InWeek]
GO
/* get_DestinationOrgID]    :43 */
IF  EXISTS (SELECT * FROM sysobjects WHERE id = OBJECT_ID(N'[dbo].[get_DestinationOrgID]')) 
DROP PROCEDURE [dbo].[get_DestinationOrgID]
GO
/* Get_DraftReceivedLetter_count]    :43 */
IF  EXISTS (SELECT * FROM sysobjects WHERE id = OBJECT_ID(N'[dbo].[Get_DraftReceivedLetter_count]')) 
DROP PROCEDURE [dbo].[Get_DraftReceivedLetter_count]
GO
/* Get_FieldValue_by_LetterID_FieldID]    :43 */
IF  EXISTS (SELECT * FROM sysobjects WHERE id = OBJECT_ID(N'[dbo].[Get_FieldValue_by_LetterID_FieldID]')) 
DROP PROCEDURE [dbo].[Get_FieldValue_by_LetterID_FieldID]
GO
/* Get_FieldValues_by_LetterID]    :43 */
IF  EXISTS (SELECT * FROM sysobjects WHERE id = OBJECT_ID(N'[dbo].[Get_FieldValues_by_LetterID]')) 
DROP PROCEDURE [dbo].[Get_FieldValues_by_LetterID]
GO
/* Get_FollowUP_Count]    :43 */
IF  EXISTS (SELECT * FROM sysobjects WHERE id = OBJECT_ID(N'[dbo].[Get_FollowUP_Count]')) 
DROP PROCEDURE [dbo].[Get_FollowUP_Count]
GO
/* Get_FromOrganizations_ByCode]    :43 */
IF  EXISTS (SELECT * FROM sysobjects WHERE id = OBJECT_ID(N'[dbo].[Get_FromOrganizations_ByCode]')) 
DROP PROCEDURE [dbo].[Get_FromOrganizations_ByCode]
GO
/* Get_FromOrganizationsID_ByCode]    :43 */
IF  EXISTS (SELECT * FROM sysobjects WHERE id = OBJECT_ID(N'[dbo].[Get_FromOrganizationsID_ByCode]')) 
DROP PROCEDURE [dbo].[Get_FromOrganizationsID_ByCode]
GO
/* Get_FromOrganizationsTitle_ByID]    :43 */
IF  EXISTS (SELECT * FROM sysobjects WHERE id = OBJECT_ID(N'[dbo].[Get_FromOrganizationsTitle_ByID]')) 
DROP PROCEDURE [dbo].[Get_FromOrganizationsTitle_ByID]
GO
/* get_indicatorID_BySentLetterID]    :43 */
IF  EXISTS (SELECT * FROM sysobjects WHERE id = OBJECT_ID(N'[dbo].[get_indicatorID_BySentLetterID]')) 
DROP PROCEDURE [dbo].[get_indicatorID_BySentLetterID]
GO
/* Get_innerLetterMemo]    :43 */
IF  EXISTS (SELECT * FROM sysobjects WHERE id = OBJECT_ID(N'[dbo].[Get_innerLetterMemo]')) 
DROP PROCEDURE [dbo].[Get_innerLetterMemo]
GO
/* get_InnerOrganizations]    :43 */
IF  EXISTS (SELECT * FROM sysobjects WHERE id = OBJECT_ID(N'[dbo].[get_InnerOrganizations]')) 
DROP PROCEDURE [dbo].[get_InnerOrganizations]
GO
/* get_LastIndicatorID]    :43 */
IF  EXISTS (SELECT * FROM sysobjects WHERE id = OBJECT_ID(N'[dbo].[get_LastIndicatorID]')) 
DROP PROCEDURE [dbo].[get_LastIndicatorID]
GO
/* Get_LastUserId]    :43 */
IF  EXISTS (SELECT * FROM sysobjects WHERE id = OBJECT_ID(N'[dbo].[Get_LastUserId]')) 
DROP PROCEDURE [dbo].[Get_LastUserId]
GO
/* Get_Letter_By_UserMemo]    :43 */
IF  EXISTS (SELECT * FROM sysobjects WHERE id = OBJECT_ID(N'[dbo].[Get_Letter_By_UserMemo]')) 
DROP PROCEDURE [dbo].[Get_Letter_By_UserMemo]
GO
/* get_Letter_ByIndicator]    :43 */
IF  EXISTS (SELECT * FROM sysobjects WHERE id = OBJECT_ID(N'[dbo].[get_Letter_ByIndicator]')) 
DROP PROCEDURE [dbo].[get_Letter_ByIndicator]
GO
/* Get_Letter_PDF]    :43 */
IF  EXISTS (SELECT * FROM sysobjects WHERE id = OBJECT_ID(N'[dbo].[Get_Letter_PDF]')) 
DROP PROCEDURE [dbo].[Get_Letter_PDF]
GO
/* get_letter_To_Transfer]    :43 */
IF  EXISTS (SELECT * FROM sysobjects WHERE id = OBJECT_ID(N'[dbo].[get_letter_To_Transfer]')) 
DROP PROCEDURE [dbo].[get_letter_To_Transfer]
GO
/* Get_LetterAbstract]    :43 */
IF  EXISTS (SELECT * FROM sysobjects WHERE id = OBJECT_ID(N'[dbo].[Get_LetterAbstract]')) 
DROP PROCEDURE [dbo].[Get_LetterAbstract]
GO
/* Get_LetterAction_By_LetterID]    :43 */
IF  EXISTS (SELECT * FROM sysobjects WHERE id = OBJECT_ID(N'[dbo].[Get_LetterAction_By_LetterID]')) 
DROP PROCEDURE [dbo].[Get_LetterAction_By_LetterID]
GO
/* Get_LetterAttachment]    :43 */
IF  EXISTS (SELECT * FROM sysobjects WHERE id = OBJECT_ID(N'[dbo].[Get_LetterAttachment]')) 
DROP PROCEDURE [dbo].[Get_LetterAttachment]
GO
/* Get_LetterData_by_LetterDataID]    :43 */
IF  EXISTS (SELECT * FROM sysobjects WHERE id = OBJECT_ID(N'[dbo].[Get_LetterData_by_LetterDataID]')) 
DROP PROCEDURE [dbo].[Get_LetterData_by_LetterDataID]
GO
/* Get_LetterData_by_LetterID]    :43 */
IF  EXISTS (SELECT * FROM sysobjects WHERE id = OBJECT_ID(N'[dbo].[Get_LetterData_by_LetterID]')) 
DROP PROCEDURE [dbo].[Get_LetterData_by_LetterID]
GO
/* Get_LetterdataExtention]    :43 */
IF  EXISTS (SELECT * FROM sysobjects WHERE id = OBJECT_ID(N'[dbo].[Get_LetterdataExtention]')) 
DROP PROCEDURE [dbo].[Get_LetterdataExtention]
GO
/* Get_LetterDataIDs]    :43 */
IF  EXISTS (SELECT * FROM sysobjects WHERE id = OBJECT_ID(N'[dbo].[Get_LetterDataIDs]')) 
DROP PROCEDURE [dbo].[Get_LetterDataIDs]
GO
/* Get_letterHistory_by_LetterID]    :43 */
IF  EXISTS (SELECT * FROM sysobjects WHERE id = OBJECT_ID(N'[dbo].[Get_letterHistory_by_LetterID]')) 
DROP PROCEDURE [dbo].[Get_letterHistory_by_LetterID]
GO
/* get_LetterID_ByInCommingNo]    :43 */
IF  EXISTS (SELECT * FROM sysobjects WHERE id = OBJECT_ID(N'[dbo].[get_LetterID_ByInCommingNo]')) 
DROP PROCEDURE [dbo].[get_LetterID_ByInCommingNo]
GO
/* get_LetterID_ByIndicatorid]    :43 */
IF  EXISTS (SELECT * FROM sysobjects WHERE id = OBJECT_ID(N'[dbo].[get_LetterID_ByIndicatorid]')) 
DROP PROCEDURE [dbo].[get_LetterID_ByIndicatorid]
GO
/* get_LetterID_ByRetroActionNo]    :43 */
IF  EXISTS (SELECT * FROM sysobjects WHERE id = OBJECT_ID(N'[dbo].[get_LetterID_ByRetroActionNo]')) 
DROP PROCEDURE [dbo].[get_LetterID_ByRetroActionNo]
GO
/* Get_LetterJpgFile]    :43 */
IF  EXISTS (SELECT * FROM sysobjects WHERE id = OBJECT_ID(N'[dbo].[Get_LetterJpgFile]')) 
DROP PROCEDURE [dbo].[Get_LetterJpgFile]
GO
/* get_LetterMemo_ByID]    :43 */
IF  EXISTS (SELECT * FROM sysobjects WHERE id = OBJECT_ID(N'[dbo].[get_LetterMemo_ByID]')) 
DROP PROCEDURE [dbo].[get_LetterMemo_ByID]
GO
/* Get_LetterTifFile]    :43 */
IF  EXISTS (SELECT * FROM sysobjects WHERE id = OBJECT_ID(N'[dbo].[Get_LetterTifFile]')) 
DROP PROCEDURE [dbo].[Get_LetterTifFile]
GO
/* Get_LetterWordFile]    :43 */
IF  EXISTS (SELECT * FROM sysobjects WHERE id = OBJECT_ID(N'[dbo].[Get_LetterWordFile]')) 
DROP PROCEDURE [dbo].[Get_LetterWordFile]
GO
/* Get_LifeTip_byUserid]    :43 */
IF  EXISTS (SELECT * FROM sysobjects WHERE id = OBJECT_ID(N'[dbo].[Get_LifeTip_byUserid]')) 
DROP PROCEDURE [dbo].[Get_LifeTip_byUserid]
GO
/* get_MaxPage_ByLetterID]    :43 */
IF  EXISTS (SELECT * FROM sysobjects WHERE id = OBJECT_ID(N'[dbo].[get_MaxPage_ByLetterID]')) 
DROP PROCEDURE [dbo].[get_MaxPage_ByLetterID]
GO
/* get_MaxReferenceDataID_By_TableID]    :43 */
IF  EXISTS (SELECT * FROM sysobjects WHERE id = OBJECT_ID(N'[dbo].[get_MaxReferenceDataID_By_TableID]')) 
DROP PROCEDURE [dbo].[get_MaxReferenceDataID_By_TableID]
GO
/* get_NewOrgCode]    :43 */
IF  EXISTS (SELECT * FROM sysobjects WHERE id = OBJECT_ID(N'[dbo].[get_NewOrgCode]')) 
DROP PROCEDURE [dbo].[get_NewOrgCode]
GO
/* get_NewOrgID]    :43 */
IF  EXISTS (SELECT * FROM sysobjects WHERE id = OBJECT_ID(N'[dbo].[get_NewOrgID]')) 
DROP PROCEDURE [dbo].[get_NewOrgID]
GO
/* get_Nowdate]    :43 */
IF  EXISTS (SELECT * FROM sysobjects WHERE id = OBJECT_ID(N'[dbo].[get_Nowdate]')) 
DROP PROCEDURE [dbo].[get_Nowdate]
GO
/* get_NowTime]    :43 */
IF  EXISTS (SELECT * FROM sysobjects WHERE id = OBJECT_ID(N'[dbo].[get_NowTime]')) 
DROP PROCEDURE [dbo].[get_NowTime]
GO
/* get_OrgPreCodeByID]    :43 */
IF  EXISTS (SELECT * FROM sysobjects WHERE id = OBJECT_ID(N'[dbo].[get_OrgPreCodeByID]')) 
DROP PROCEDURE [dbo].[get_OrgPreCodeByID]
GO
/* get_OrgTitleByID]    :43 */
IF  EXISTS (SELECT * FROM sysobjects WHERE id = OBJECT_ID(N'[dbo].[get_OrgTitleByID]')) 
DROP PROCEDURE [dbo].[get_OrgTitleByID]
GO
/* Get_RecommiteJpgFile]    :43 */
IF  EXISTS (SELECT * FROM sysobjects WHERE id = OBJECT_ID(N'[dbo].[Get_RecommiteJpgFile]')) 
DROP PROCEDURE [dbo].[Get_RecommiteJpgFile]
GO
/* get_ReferenceTable]    :43 */
IF  EXISTS (SELECT * FROM sysobjects WHERE id = OBJECT_ID(N'[dbo].[get_ReferenceTable]')) 
DROP PROCEDURE [dbo].[get_ReferenceTable]
GO
/* get_ReferenceTableData_by_tableID]    :43 */
IF  EXISTS (SELECT * FROM sysobjects WHERE id = OBJECT_ID(N'[dbo].[get_ReferenceTableData_by_tableID]')) 
DROP PROCEDURE [dbo].[get_ReferenceTableData_by_tableID]
GO
/* Get_Related_Letters]    :43 */
IF  EXISTS (SELECT * FROM sysobjects WHERE id = OBJECT_ID(N'[dbo].[Get_Related_Letters]')) 
DROP PROCEDURE [dbo].[Get_Related_Letters]
GO
/* get_Subject]    :43 */
IF  EXISTS (SELECT * FROM sysobjects WHERE id = OBJECT_ID(N'[dbo].[get_Subject]')) 
DROP PROCEDURE [dbo].[get_Subject]
GO
/* Get_sys_AppMessage]    :43 */
IF  EXISTS (SELECT * FROM sysobjects WHERE id = OBJECT_ID(N'[dbo].[Get_sys_AppMessage]')) 
DROP PROCEDURE [dbo].[Get_sys_AppMessage]
GO
/* Get_tmp_LetterDataIDs]    :43 */
IF  EXISTS (SELECT * FROM sysobjects WHERE id = OBJECT_ID(N'[dbo].[Get_tmp_LetterDataIDs]')) 
DROP PROCEDURE [dbo].[Get_tmp_LetterDataIDs]
GO
/* get_UserExtention_by_UserID]    :43 */
IF  EXISTS (SELECT * FROM sysobjects WHERE id = OBJECT_ID(N'[dbo].[get_UserExtention_by_UserID]')) 
DROP PROCEDURE [dbo].[get_UserExtention_by_UserID]
GO
/* get_userfields_by_tableID]    :43 */
IF  EXISTS (SELECT * FROM sysobjects WHERE id = OBJECT_ID(N'[dbo].[get_userfields_by_tableID]')) 
DROP PROCEDURE [dbo].[get_userfields_by_tableID]
GO
/* Get_UserMessageCount]    :43 */
IF  EXISTS (SELECT * FROM sysobjects WHERE id = OBJECT_ID(N'[dbo].[Get_UserMessageCount]')) 
DROP PROCEDURE [dbo].[Get_UserMessageCount]
GO
/* Get_UserSecretariat_Tree]    :43 */
IF  EXISTS (SELECT * FROM sysobjects WHERE id = OBJECT_ID(N'[dbo].[Get_UserSecretariat_Tree]')) 
DROP PROCEDURE [dbo].[Get_UserSecretariat_Tree]
GO
/* get_userTable]    :43 */
IF  EXISTS (SELECT * FROM sysobjects WHERE id = OBJECT_ID(N'[dbo].[get_userTable]')) 
DROP PROCEDURE [dbo].[get_userTable]
GO
/* GetLastFormOrderByLetterID]    :43 */
IF  EXISTS (SELECT * FROM sysobjects WHERE id = OBJECT_ID(N'[dbo].[GetLastFormOrderByLetterID]')) 
DROP PROCEDURE [dbo].[GetLastFormOrderByLetterID]
GO
/* GetLetterTemplate_HeaderID]    :43 */
IF  EXISTS (SELECT * FROM sysobjects WHERE id = OBJECT_ID(N'[dbo].[GetLetterTemplate_HeaderID]')) 
DROP PROCEDURE [dbo].[GetLetterTemplate_HeaderID]
GO
/* GetList]    :43 */
IF  EXISTS (SELECT * FROM sysobjects WHERE id = OBJECT_ID(N'[dbo].[GetList]')) 
DROP PROCEDURE [dbo].[GetList]
GO
/* GetNumberOfLetterAttach]    :43 */
IF  EXISTS (SELECT * FROM sysobjects WHERE id = OBJECT_ID(N'[dbo].[GetNumberOfLetterAttach]')) 
DROP PROCEDURE [dbo].[GetNumberOfLetterAttach]
GO
/* GetRecommiteById]    :43 */
IF  EXISTS (SELECT * FROM sysobjects WHERE id = OBJECT_ID(N'[dbo].[GetRecommiteById]')) 
DROP PROCEDURE [dbo].[GetRecommiteById]
GO
/* GetUserLogout_status]    :43 */
IF  EXISTS (SELECT * FROM sysobjects WHERE id = OBJECT_ID(N'[dbo].[GetUserLogout_status]')) 
DROP PROCEDURE [dbo].[GetUserLogout_status]
GO
/* has_PDF]    :43 */
IF  EXISTS (SELECT * FROM sysobjects WHERE id = OBJECT_ID(N'[dbo].[has_PDF]')) 
DROP PROCEDURE [dbo].[has_PDF]
GO
/* hassame_orgtitle]    :44 */
IF  EXISTS (SELECT * FROM sysobjects WHERE id = OBJECT_ID(N'[dbo].[hassame_orgtitle]')) 
DROP PROCEDURE [dbo].[hassame_orgtitle]
GO
/* Import_LetterData]    :44 */
IF  EXISTS (SELECT * FROM sysobjects WHERE id = OBJECT_ID(N'[dbo].[Import_LetterData]')) 
DROP PROCEDURE [dbo].[Import_LetterData]
GO
/* insert_Actions]    :44 */
IF  EXISTS (SELECT * FROM sysobjects WHERE id = OBJECT_ID(N'[dbo].[insert_Actions]')) 
DROP PROCEDURE [dbo].[insert_Actions]
GO
/* insert_All_ReCommites]    :44 */
IF  EXISTS (SELECT * FROM sysobjects WHERE id = OBJECT_ID(N'[dbo].[insert_All_ReCommites]')) 
DROP PROCEDURE [dbo].[insert_All_ReCommites]
GO
/* insert_ArchiveFolder]    :44 */
IF  EXISTS (SELECT * FROM sysobjects WHERE id = OBJECT_ID(N'[dbo].[insert_ArchiveFolder]')) 
DROP PROCEDURE [dbo].[insert_ArchiveFolder]
GO
/* insert_Extention]    :44 */
IF  EXISTS (SELECT * FROM sysobjects WHERE id = OBJECT_ID(N'[dbo].[insert_Extention]')) 
DROP PROCEDURE [dbo].[insert_Extention]
GO
/* insert_FieldAccess]    :44 */
IF  EXISTS (SELECT * FROM sysobjects WHERE id = OBJECT_ID(N'[dbo].[insert_FieldAccess]')) 
DROP PROCEDURE [dbo].[insert_FieldAccess]
GO
/* insert_FieldAccess_by_TableID]    :44 */
IF  EXISTS (SELECT * FROM sysobjects WHERE id = OBJECT_ID(N'[dbo].[insert_FieldAccess_by_TableID]')) 
DROP PROCEDURE [dbo].[insert_FieldAccess_by_TableID]
GO
/* insert_Letter]    :44 */
IF  EXISTS (SELECT * FROM sysobjects WHERE id = OBJECT_ID(N'[dbo].[insert_Letter]')) 
DROP PROCEDURE [dbo].[insert_Letter]
GO
/* insert_Letter_all]    :44 */
IF  EXISTS (SELECT * FROM sysobjects WHERE id = OBJECT_ID(N'[dbo].[insert_Letter_all]')) 
DROP PROCEDURE [dbo].[insert_Letter_all]
GO
/* insert_LetterArchiveFolder]    :44 */
IF  EXISTS (SELECT * FROM sysobjects WHERE id = OBJECT_ID(N'[dbo].[insert_LetterArchiveFolder]')) 
DROP PROCEDURE [dbo].[insert_LetterArchiveFolder]
GO
/* insert_LetterData]    :44 */
IF  EXISTS (SELECT * FROM sysobjects WHERE id = OBJECT_ID(N'[dbo].[insert_LetterData]')) 
DROP PROCEDURE [dbo].[insert_LetterData]
GO
/* insert_LetterText]    :44 */
IF  EXISTS (SELECT * FROM sysobjects WHERE id = OBJECT_ID(N'[dbo].[insert_LetterText]')) 
DROP PROCEDURE [dbo].[insert_LetterText]
GO
/* insert_newActionsAccess]    :44 */
IF  EXISTS (SELECT * FROM sysobjects WHERE id = OBJECT_ID(N'[dbo].[insert_newActionsAccess]')) 
DROP PROCEDURE [dbo].[insert_newActionsAccess]
GO
/* Insert_ParaphTemplate]    :44 */
IF  EXISTS (SELECT * FROM sysobjects WHERE id = OBJECT_ID(N'[dbo].[Insert_ParaphTemplate]')) 
DROP PROCEDURE [dbo].[Insert_ParaphTemplate]
GO
/* insert_ReciveLetter]    :44 */
IF  EXISTS (SELECT * FROM sysobjects WHERE id = OBJECT_ID(N'[dbo].[insert_ReciveLetter]')) 
DROP PROCEDURE [dbo].[insert_ReciveLetter]
GO
/* insert_ReCommites]    :44 */
IF  EXISTS (SELECT * FROM sysobjects WHERE id = OBJECT_ID(N'[dbo].[insert_ReCommites]')) 
DROP PROCEDURE [dbo].[insert_ReCommites]
GO
/* insert_ToOrganizations]    :44 */
IF  EXISTS (SELECT * FROM sysobjects WHERE id = OBJECT_ID(N'[dbo].[insert_ToOrganizations]')) 
DROP PROCEDURE [dbo].[insert_ToOrganizations]
GO
/* insert_UserLog]    :44 */
IF  EXISTS (SELECT * FROM sysobjects WHERE id = OBJECT_ID(N'[dbo].[insert_UserLog]')) 
DROP PROCEDURE [dbo].[insert_UserLog]
GO
/* insert_UserLoginLogout]    :44 */
IF  EXISTS (SELECT * FROM sysobjects WHERE id = OBJECT_ID(N'[dbo].[insert_UserLoginLogout]')) 
DROP PROCEDURE [dbo].[insert_UserLoginLogout]
GO
/* insertReCommites_autoID]    :44 */
IF  EXISTS (SELECT * FROM sysobjects WHERE id = OBJECT_ID(N'[dbo].[insertReCommites_autoID]')) 
DROP PROCEDURE [dbo].[insertReCommites_autoID]
GO
/* insertText]    :44 */
IF  EXISTS (SELECT * FROM sysobjects WHERE id = OBJECT_ID(N'[dbo].[insertText]')) 
DROP PROCEDURE [dbo].[insertText]
GO
/* letterContainText]    :44 */
IF  EXISTS (SELECT * FROM sysobjects WHERE id = OBJECT_ID(N'[dbo].[letterContainText]')) 
DROP PROCEDURE [dbo].[letterContainText]
GO
/* Make_FieldValues_By_LetterID]    :44 */
IF  EXISTS (SELECT * FROM sysobjects WHERE id = OBJECT_ID(N'[dbo].[Make_FieldValues_By_LetterID]')) 
DROP PROCEDURE [dbo].[Make_FieldValues_By_LetterID]
GO
/* min_page]    :44 */
IF  EXISTS (SELECT * FROM sysobjects WHERE id = OBJECT_ID(N'[dbo].[min_page]')) 
DROP PROCEDURE [dbo].[min_page]
GO
/* Move_ParaphTemplate]    :44 */
IF  EXISTS (SELECT * FROM sysobjects WHERE id = OBJECT_ID(N'[dbo].[Move_ParaphTemplate]')) 
DROP PROCEDURE [dbo].[Move_ParaphTemplate]
GO
/* NewRecommiteID]    :44 */
IF  EXISTS (SELECT * FROM sysobjects WHERE id = OBJECT_ID(N'[dbo].[NewRecommiteID]')) 
DROP PROCEDURE [dbo].[NewRecommiteID]
GO
/* Next_page]    :44 */
IF  EXISTS (SELECT * FROM sysobjects WHERE id = OBJECT_ID(N'[dbo].[Next_page]')) 
DROP PROCEDURE [dbo].[Next_page]
GO
/* NextTag]    :44 */
IF  EXISTS (SELECT * FROM sysobjects WHERE id = OBJECT_ID(N'[dbo].[NextTag]')) 
DROP PROCEDURE [dbo].[NextTag]
GO
/* NumberOfLetter_By_SecID]    :44 */
IF  EXISTS (SELECT * FROM sysobjects WHERE id = OBJECT_ID(N'[dbo].[NumberOfLetter_By_SecID]')) 
DROP PROCEDURE [dbo].[NumberOfLetter_By_SecID]
GO
/* NumberOfTemplate_By_TemplateGroupID]    :44 */
IF  EXISTS (SELECT * FROM sysobjects WHERE id = OBJECT_ID(N'[dbo].[NumberOfTemplate_By_TemplateGroupID]')) 
DROP PROCEDURE [dbo].[NumberOfTemplate_By_TemplateGroupID]
GO
/* Org_hasChild]    :44 */
IF  EXISTS (SELECT * FROM sysobjects WHERE id = OBJECT_ID(N'[dbo].[Org_hasChild]')) 
DROP PROCEDURE [dbo].[Org_hasChild]
GO
/* org_hasLetter]    :44 */
IF  EXISTS (SELECT * FROM sysobjects WHERE id = OBJECT_ID(N'[dbo].[org_hasLetter]')) 
DROP PROCEDURE [dbo].[org_hasLetter]
GO
/* Org_is_Secretariat]    :44 */
IF  EXISTS (SELECT * FROM sysobjects WHERE id = OBJECT_ID(N'[dbo].[Org_is_Secretariat]')) 
DROP PROCEDURE [dbo].[Org_is_Secretariat]
GO
/* Recommite_has_JpgFile]    :44 */
IF  EXISTS (SELECT * FROM sysobjects WHERE id = OBJECT_ID(N'[dbo].[Recommite_has_JpgFile]')) 
DROP PROCEDURE [dbo].[Recommite_has_JpgFile]
GO
/* Recommite_Report]    :44 */
IF  EXISTS (SELECT * FROM sysobjects WHERE id = OBJECT_ID(N'[dbo].[Recommite_Report]')) 
DROP PROCEDURE [dbo].[Recommite_Report]
GO
/* Report_Scan]    :44 */
IF  EXISTS (SELECT * FROM sysobjects WHERE id = OBJECT_ID(N'[dbo].[Report_Scan]')) 
DROP PROCEDURE [dbo].[Report_Scan]
GO
/* Report_UserLog]    :44 */
IF  EXISTS (SELECT * FROM sysobjects WHERE id = OBJECT_ID(N'[dbo].[Report_UserLog]')) 
DROP PROCEDURE [dbo].[Report_UserLog]
GO
/* Report_UserTable]    :44 */
IF  EXISTS (SELECT * FROM sysobjects WHERE id = OBJECT_ID(N'[dbo].[Report_UserTable]')) 
DROP PROCEDURE [dbo].[Report_UserTable]
GO
/* SaveAs_Accesses]    :44 */
IF  EXISTS (SELECT * FROM sysobjects WHERE id = OBJECT_ID(N'[dbo].[SaveAs_Accesses]')) 
DROP PROCEDURE [dbo].[SaveAs_Accesses]
GO
/* Select_AlternativeInfo_ByUserID]    :44 */
IF  EXISTS (SELECT * FROM sysobjects WHERE id = OBJECT_ID(N'[dbo].[Select_AlternativeInfo_ByUserID]')) 
DROP PROCEDURE [dbo].[Select_AlternativeInfo_ByUserID]
GO
/* select_CiticalLetterFields]    :44 */
IF  EXISTS (SELECT * FROM sysobjects WHERE id = OBJECT_ID(N'[dbo].[select_CiticalLetterFields]')) 
DROP PROCEDURE [dbo].[select_CiticalLetterFields]
GO
/* Select_ExactCopy]    :44 */
IF  EXISTS (SELECT * FROM sysobjects WHERE id = OBJECT_ID(N'[dbo].[Select_ExactCopy]')) 
DROP PROCEDURE [dbo].[Select_ExactCopy]
GO
/* Select_FieldAccess_by_TableID]    :44 */
IF  EXISTS (SELECT * FROM sysobjects WHERE id = OBJECT_ID(N'[dbo].[Select_FieldAccess_by_TableID]')) 
DROP PROCEDURE [dbo].[Select_FieldAccess_by_TableID]
GO
/* Select_Fields_by_TableID]    :44 */
IF  EXISTS (SELECT * FROM sysobjects WHERE id = OBJECT_ID(N'[dbo].[Select_Fields_by_TableID]')) 
DROP PROCEDURE [dbo].[Select_Fields_by_TableID]
GO
/* Select_FolllowUp_ByLetterID]    :44 */
IF  EXISTS (SELECT * FROM sysobjects WHERE id = OBJECT_ID(N'[dbo].[Select_FolllowUp_ByLetterID]')) 
DROP PROCEDURE [dbo].[Select_FolllowUp_ByLetterID]
GO
/* Select_FollowUP_By_Date]    :44 */
IF  EXISTS (SELECT * FROM sysobjects WHERE id = OBJECT_ID(N'[dbo].[Select_FollowUP_By_Date]')) 
DROP PROCEDURE [dbo].[Select_FollowUP_By_Date]
GO
/* Select_FollowUp_ByStart]    :44 */
IF  EXISTS (SELECT * FROM sysobjects WHERE id = OBJECT_ID(N'[dbo].[Select_FollowUp_ByStart]')) 
DROP PROCEDURE [dbo].[Select_FollowUp_ByStart]
GO
/* select_fromorganization]    :44 */
IF  EXISTS (SELECT * FROM sysobjects WHERE id = OBJECT_ID(N'[dbo].[select_fromorganization]')) 
DROP PROCEDURE [dbo].[select_fromorganization]
GO
/* select_Letter]    :44 */
IF  EXISTS (SELECT * FROM sysobjects WHERE id = OBJECT_ID(N'[dbo].[select_Letter]')) 
DROP PROCEDURE [dbo].[select_Letter]
GO
/* Select_letter_details]    :44 */
IF  EXISTS (SELECT * FROM sysobjects WHERE id = OBJECT_ID(N'[dbo].[Select_letter_details]')) 
DROP PROCEDURE [dbo].[Select_letter_details]
GO
/* Select_LetterReCommite]    :44 */
IF  EXISTS (SELECT * FROM sysobjects WHERE id = OBJECT_ID(N'[dbo].[Select_LetterReCommite]')) 
DROP PROCEDURE [dbo].[Select_LetterReCommite]
GO
/* select_LetterSubject]    :44 */
IF  EXISTS (SELECT * FROM sysobjects WHERE id = OBJECT_ID(N'[dbo].[select_LetterSubject]')) 
DROP PROCEDURE [dbo].[select_LetterSubject]
GO
/* SELECT_ParaphTemplate]    :44 */
IF  EXISTS (SELECT * FROM sysobjects WHERE id = OBJECT_ID(N'[dbo].[SELECT_ParaphTemplate]')) 
DROP PROCEDURE [dbo].[SELECT_ParaphTemplate]
GO
/* select_ReceivedLetters]    :44 */
IF  EXISTS (SELECT * FROM sysobjects WHERE id = OBJECT_ID(N'[dbo].[select_ReceivedLetters]')) 
DROP PROCEDURE [dbo].[select_ReceivedLetters]
GO
/* Select_recommites_byLetterID]    :44 */
IF  EXISTS (SELECT * FROM sysobjects WHERE id = OBJECT_ID(N'[dbo].[Select_recommites_byLetterID]')) 
DROP PROCEDURE [dbo].[Select_recommites_byLetterID]
GO
/* select_sentLetters]    :44 */
IF  EXISTS (SELECT * FROM sysobjects WHERE id = OBJECT_ID(N'[dbo].[select_sentLetters]')) 
DROP PROCEDURE [dbo].[select_sentLetters]
GO
/* select_userLoginLogout]    :44 */
IF  EXISTS (SELECT * FROM sysobjects WHERE id = OBJECT_ID(N'[dbo].[select_userLoginLogout]')) 
DROP PROCEDURE [dbo].[select_userLoginLogout]
GO
/* Select_UserOrgid]    :44 */
IF  EXISTS (SELECT * FROM sysobjects WHERE id = OBJECT_ID(N'[dbo].[Select_UserOrgid]')) 
DROP PROCEDURE [dbo].[Select_UserOrgid]
GO
/* Select_UserSign]    :44 */
IF  EXISTS (SELECT * FROM sysobjects WHERE id = OBJECT_ID(N'[dbo].[Select_UserSign]')) 
DROP PROCEDURE [dbo].[Select_UserSign]
GO
/* selectAddedInfo]    :44 */
IF  EXISTS (SELECT * FROM sysobjects WHERE id = OBJECT_ID(N'[dbo].[selectAddedInfo]')) 
DROP PROCEDURE [dbo].[selectAddedInfo]
GO
/* SelectInfo]    :44 */
IF  EXISTS (SELECT * FROM sysobjects WHERE id = OBJECT_ID(N'[dbo].[SelectInfo]')) 
DROP PROCEDURE [dbo].[SelectInfo]
GO
/* SelectLetter]    :44 */
IF  EXISTS (SELECT * FROM sysobjects WHERE id = OBJECT_ID(N'[dbo].[SelectLetter]')) 
DROP PROCEDURE [dbo].[SelectLetter]
GO
/* SendLetter_To_Other_sec]    :44 */
IF  EXISTS (SELECT * FROM sysobjects WHERE id = OBJECT_ID(N'[dbo].[SendLetter_To_Other_sec]')) 
DROP PROCEDURE [dbo].[SendLetter_To_Other_sec]
GO
/* shrink_Files]    :44 */
IF  EXISTS (SELECT * FROM sysobjects WHERE id = OBJECT_ID(N'[dbo].[shrink_Files]')) 
DROP PROCEDURE [dbo].[shrink_Files]
GO
 
/* sp_Add_GroupRecommite]    :44 */
IF  EXISTS (SELECT * FROM sysobjects WHERE id = OBJECT_ID(N'[dbo].[sp_Add_GroupRecommite]')) 
DROP PROCEDURE [dbo].[sp_Add_GroupRecommite]
GO
/* Sp_AddFileToDB]    :44 */
IF  EXISTS (SELECT * FROM sysobjects WHERE id = OBJECT_ID(N'[dbo].[Sp_AddFileToDB]')) 
DROP PROCEDURE [dbo].[Sp_AddFileToDB]
GO
/* sp_ArchivePlaces]    :44 */
IF  EXISTS (SELECT * FROM sysobjects WHERE id = OBJECT_ID(N'[dbo].[sp_ArchivePlaces]')) 
DROP PROCEDURE [dbo].[sp_ArchivePlaces]
GO
/* sp_board]    :44 */
IF  EXISTS (SELECT * FROM sysobjects WHERE id = OBJECT_ID(N'[dbo].[sp_board]')) 
DROP PROCEDURE [dbo].[sp_board]
GO
/* sp_checkusernotes]    :45 */
IF  EXISTS (SELECT * FROM sysobjects WHERE id = OBJECT_ID(N'[dbo].[sp_checkusernotes]')) 
DROP PROCEDURE [dbo].[sp_checkusernotes]
GO
/* sp_CompleteFieldBook]    :45 */
IF  EXISTS (SELECT * FROM sysobjects WHERE id = OBJECT_ID(N'[dbo].[sp_CompleteFieldBook]')) 
DROP PROCEDURE [dbo].[sp_CompleteFieldBook]
GO
/* sp_dailyRep]    :45 */
IF  EXISTS (SELECT * FROM sysobjects WHERE id = OBJECT_ID(N'[dbo].[sp_dailyRep]')) 
DROP PROCEDURE [dbo].[sp_dailyRep]
GO
/* Sp_Del_NewsGroupUsers]    :45 */
IF  EXISTS (SELECT * FROM sysobjects WHERE id = OBJECT_ID(N'[dbo].[Sp_Del_NewsGroupUsers]')) 
DROP PROCEDURE [dbo].[Sp_Del_NewsGroupUsers]
GO
/* Sp_Del_WorkGroupOrg]    :45 */
IF  EXISTS (SELECT * FROM sysobjects WHERE id = OBJECT_ID(N'[dbo].[Sp_Del_WorkGroupOrg]')) 
DROP PROCEDURE [dbo].[Sp_Del_WorkGroupOrg]
GO
/* Sp_DelayedLetter]    :45 */
IF  EXISTS (SELECT * FROM sysobjects WHERE id = OBJECT_ID(N'[dbo].[Sp_DelayedLetter]')) 
DROP PROCEDURE [dbo].[Sp_DelayedLetter]
GO
/* sp_delphi_Proc]    :45 */
IF  EXISTS (SELECT * FROM sysobjects WHERE id = OBJECT_ID(N'[dbo].[sp_delphi_Proc]')) 
DROP PROCEDURE [dbo].[sp_delphi_Proc]
GO
/* sp_delphi_proceByName]    :45 */
IF  EXISTS (SELECT * FROM sysobjects WHERE id = OBJECT_ID(N'[dbo].[sp_delphi_proceByName]')) 
DROP PROCEDURE [dbo].[sp_delphi_proceByName]
GO
/* Sp_DistinctDate]    :45 */
IF  EXISTS (SELECT * FROM sysobjects WHERE id = OBJECT_ID(N'[dbo].[Sp_DistinctDate]')) 
DROP PROCEDURE [dbo].[Sp_DistinctDate]
GO
/* sp_duplicateOrg]    :45 */
IF  EXISTS (SELECT * FROM sysobjects WHERE id = OBJECT_ID(N'[dbo].[sp_duplicateOrg]')) 
DROP PROCEDURE [dbo].[sp_duplicateOrg]
GO
/* sp_FieldByTableCode]    :45 */
IF  EXISTS (SELECT * FROM sysobjects WHERE id = OBJECT_ID(N'[dbo].[sp_FieldByTableCode]')) 
DROP PROCEDURE [dbo].[sp_FieldByTableCode]
GO
/* Sp_FillBlob]    :45 */
IF  EXISTS (SELECT * FROM sysobjects WHERE id = OBJECT_ID(N'[dbo].[Sp_FillBlob]')) 
DROP PROCEDURE [dbo].[Sp_FillBlob]
GO
/* sp_GetFromHelp]    :45 */
IF  EXISTS (SELECT * FROM sysobjects WHERE id = OBJECT_ID(N'[dbo].[sp_GetFromHelp]')) 
DROP PROCEDURE [dbo].[sp_GetFromHelp]
GO
/* sp_GetTermCode]    :45 */
IF  EXISTS (SELECT * FROM sysobjects WHERE id = OBJECT_ID(N'[dbo].[sp_GetTermCode]')) 
DROP PROCEDURE [dbo].[sp_GetTermCode]
GO
/* sp_inbox]    :45 */
IF  EXISTS (SELECT * FROM sysobjects WHERE id = OBJECT_ID(N'[dbo].[sp_inbox]')) 
DROP PROCEDURE [dbo].[sp_inbox]
GO
/* sp_Letter_Numbers]    :45 */
IF  EXISTS (SELECT * FROM sysobjects WHERE id = OBJECT_ID(N'[dbo].[sp_Letter_Numbers]')) 
DROP PROCEDURE [dbo].[sp_Letter_Numbers]
GO
/* sp_makeRecommited]    :45 */
IF  EXISTS (SELECT * FROM sysobjects WHERE id = OBJECT_ID(N'[dbo].[sp_makeRecommited]')) 
DROP PROCEDURE [dbo].[sp_makeRecommited]
GO
/* sp_recommite_report]    :45 */
IF  EXISTS (SELECT * FROM sysobjects WHERE id = OBJECT_ID(N'[dbo].[sp_recommite_report]')) 
DROP PROCEDURE [dbo].[sp_recommite_report]
GO
/* sp_recommite_statistic]    :45 */
IF  EXISTS (SELECT * FROM sysobjects WHERE id = OBJECT_ID(N'[dbo].[sp_recommite_statistic]')) 
DROP PROCEDURE [dbo].[sp_recommite_statistic]
GO
/* sp_Recommites_Number]    :45 */
IF  EXISTS (SELECT * FROM sysobjects WHERE id = OBJECT_ID(N'[dbo].[sp_Recommites_Number]')) 
DROP PROCEDURE [dbo].[sp_Recommites_Number]
GO
/* sp_ReindexTables]    :45 */
IF  EXISTS (SELECT * FROM sysobjects WHERE id = OBJECT_ID(N'[dbo].[sp_ReindexTables]')) 
DROP PROCEDURE [dbo].[sp_ReindexTables]
GO
/* Sp_Sel_Emails]    :45 */
IF  EXISTS (SELECT * FROM sysobjects WHERE id = OBJECT_ID(N'[dbo].[Sp_Sel_Emails]')) 
DROP PROCEDURE [dbo].[Sp_Sel_Emails]
GO
/* Sp_Sel_ImageData]    :45 */
IF  EXISTS (SELECT * FROM sysobjects WHERE id = OBJECT_ID(N'[dbo].[Sp_Sel_ImageData]')) 
DROP PROCEDURE [dbo].[Sp_Sel_ImageData]
GO
/* Sp_Sel_News]    :45 */
IF  EXISTS (SELECT * FROM sysobjects WHERE id = OBJECT_ID(N'[dbo].[Sp_Sel_News]')) 
DROP PROCEDURE [dbo].[Sp_Sel_News]
GO
/* Sp_Sel_NewsGroup]    :45 */
IF  EXISTS (SELECT * FROM sysobjects WHERE id = OBJECT_ID(N'[dbo].[Sp_Sel_NewsGroup]')) 
DROP PROCEDURE [dbo].[Sp_Sel_NewsGroup]
GO
/* Sp_Sel_Phone]    :45 */
IF  EXISTS (SELECT * FROM sysobjects WHERE id = OBJECT_ID(N'[dbo].[Sp_Sel_Phone]')) 
DROP PROCEDURE [dbo].[Sp_Sel_Phone]
GO
/* Sp_Sel_UserAccArchive]    :45 */
IF  EXISTS (SELECT * FROM sysobjects WHERE id = OBJECT_ID(N'[dbo].[Sp_Sel_UserAccArchive]')) 
DROP PROCEDURE [dbo].[Sp_Sel_UserAccArchive]
GO
/* Sp_Select_Receipt]    :45 */
IF  EXISTS (SELECT * FROM sysobjects WHERE id = OBJECT_ID(N'[dbo].[Sp_Select_Receipt]')) 
DROP PROCEDURE [dbo].[Sp_Select_Receipt]
GO
/* Sp_Select_WorkGroup]    :45 */
IF  EXISTS (SELECT * FROM sysobjects WHERE id = OBJECT_ID(N'[dbo].[Sp_Select_WorkGroup]')) 
DROP PROCEDURE [dbo].[Sp_Select_WorkGroup]
GO
/* sp_SetForeinKey]    :45 */
IF  EXISTS (SELECT * FROM sysobjects WHERE id = OBJECT_ID(N'[dbo].[sp_SetForeinKey]')) 
DROP PROCEDURE [dbo].[sp_SetForeinKey]
GO
/* sp_Statistic]    :45 */
IF  EXISTS (SELECT * FROM sysobjects WHERE id = OBJECT_ID(N'[dbo].[sp_Statistic]')) 
DROP PROCEDURE [dbo].[sp_Statistic]
GO
/* sp_stop_mytrace]    :45 */
IF  EXISTS (SELECT * FROM sysobjects WHERE id = OBJECT_ID(N'[dbo].[sp_stop_mytrace]')) 
DROP PROCEDURE [dbo].[sp_stop_mytrace]
GO
/* Transfer_Get_Letter_By_LetterID]    :45 */
IF  EXISTS (SELECT * FROM sysobjects WHERE id = OBJECT_ID(N'[dbo].[Transfer_Get_Letter_By_LetterID]')) 
DROP PROCEDURE [dbo].[Transfer_Get_Letter_By_LetterID]
GO
/* Transfer_Get_Letterdata_By_LetterDataID]    :45 */
IF  EXISTS (SELECT * FROM sysobjects WHERE id = OBJECT_ID(N'[dbo].[Transfer_Get_Letterdata_By_LetterDataID]')) 
DROP PROCEDURE [dbo].[Transfer_Get_Letterdata_By_LetterDataID]
GO
/* Transfer_Get_LetterData_By_LetterID]    :45 */
IF  EXISTS (SELECT * FROM sysobjects WHERE id = OBJECT_ID(N'[dbo].[Transfer_Get_LetterData_By_LetterID]')) 
DROP PROCEDURE [dbo].[Transfer_Get_LetterData_By_LetterID]
GO
/* Transfer_Get_LetterFieldValue_By_LetterID]    :45 */
IF  EXISTS (SELECT * FROM sysobjects WHERE id = OBJECT_ID(N'[dbo].[Transfer_Get_LetterFieldValue_By_LetterID]')) 
DROP PROCEDURE [dbo].[Transfer_Get_LetterFieldValue_By_LetterID]
GO
/* Transfer_Get_Recommites_By_LetterID]    :45 */
IF  EXISTS (SELECT * FROM sysobjects WHERE id = OBJECT_ID(N'[dbo].[Transfer_Get_Recommites_By_LetterID]')) 
DROP PROCEDURE [dbo].[Transfer_Get_Recommites_By_LetterID]
GO
/* Transfer_Get_SentLetter]    :45 */
IF  EXISTS (SELECT * FROM sysobjects WHERE id = OBJECT_ID(N'[dbo].[Transfer_Get_SentLetter]')) 
DROP PROCEDURE [dbo].[Transfer_Get_SentLetter]
GO
/* Transfer_insert_LetterFieldValue]    :45 */
IF  EXISTS (SELECT * FROM sysobjects WHERE id = OBJECT_ID(N'[dbo].[Transfer_insert_LetterFieldValue]')) 
DROP PROCEDURE [dbo].[Transfer_insert_LetterFieldValue]
GO
/* Transfer_insert_ReCommites]    :45 */
IF  EXISTS (SELECT * FROM sysobjects WHERE id = OBJECT_ID(N'[dbo].[Transfer_insert_ReCommites]')) 
DROP PROCEDURE [dbo].[Transfer_insert_ReCommites]
GO
/* Transfer_Insert_SentLetter]    :45 */
IF  EXISTS (SELECT * FROM sysobjects WHERE id = OBJECT_ID(N'[dbo].[Transfer_Insert_SentLetter]')) 
DROP PROCEDURE [dbo].[Transfer_Insert_SentLetter]
GO
/* Transfer_Insert_SharedLetter]    :45 */
IF  EXISTS (SELECT * FROM sysobjects WHERE id = OBJECT_ID(N'[dbo].[Transfer_Insert_SharedLetter]')) 
DROP PROCEDURE [dbo].[Transfer_Insert_SharedLetter]
GO
/* Transfer_Sent_RelatedSecs]    :45 */
IF  EXISTS (SELECT * FROM sysobjects WHERE id = OBJECT_ID(N'[dbo].[Transfer_Sent_RelatedSecs]')) 
DROP PROCEDURE [dbo].[Transfer_Sent_RelatedSecs]
GO
/* Transfer_shared_RelatedSecs]    :45 */
IF  EXISTS (SELECT * FROM sysobjects WHERE id = OBJECT_ID(N'[dbo].[Transfer_shared_RelatedSecs]')) 
DROP PROCEDURE [dbo].[Transfer_shared_RelatedSecs]
GO
/* Trunsfer_update_Letter]    :45 */
IF  EXISTS (SELECT * FROM sysobjects WHERE id = OBJECT_ID(N'[dbo].[Trunsfer_update_Letter]')) 
DROP PROCEDURE [dbo].[Trunsfer_update_Letter]
GO
/* Trunsfer_update_LetterFieldValue]    :45 */
IF  EXISTS (SELECT * FROM sysobjects WHERE id = OBJECT_ID(N'[dbo].[Trunsfer_update_LetterFieldValue]')) 
DROP PROCEDURE [dbo].[Trunsfer_update_LetterFieldValue]
GO
/* Trunsfer_update_ReCommites]    :45 */
IF  EXISTS (SELECT * FROM sysobjects WHERE id = OBJECT_ID(N'[dbo].[Trunsfer_update_ReCommites]')) 
DROP PROCEDURE [dbo].[Trunsfer_update_ReCommites]
GO
/* Update_all_recommites]    :45 */
IF  EXISTS (SELECT * FROM sysobjects WHERE id = OBJECT_ID(N'[dbo].[Update_all_recommites]')) 
DROP PROCEDURE [dbo].[Update_all_recommites]
GO
/* Update_Archived_letter]    :45 */
IF  EXISTS (SELECT * FROM sysobjects WHERE id = OBJECT_ID(N'[dbo].[Update_Archived_letter]')) 
DROP PROCEDURE [dbo].[Update_Archived_letter]
GO
/* update_ArchiveFolder]    :45 */
IF  EXISTS (SELECT * FROM sysobjects WHERE id = OBJECT_ID(N'[dbo].[update_ArchiveFolder]')) 
DROP PROCEDURE [dbo].[update_ArchiveFolder]
GO
/* update_FromOrganizations_Title]    :45 */
IF  EXISTS (SELECT * FROM sysobjects WHERE id = OBJECT_ID(N'[dbo].[update_FromOrganizations_Title]')) 
DROP PROCEDURE [dbo].[update_FromOrganizations_Title]
GO
/* update_Letter_Finalized]    :45 */
IF  EXISTS (SELECT * FROM sysobjects WHERE id = OBJECT_ID(N'[dbo].[update_Letter_Finalized]')) 
DROP PROCEDURE [dbo].[update_Letter_Finalized]
GO
/* update_Letter_Indicator]    :45 */
IF  EXISTS (SELECT * FROM sysobjects WHERE id = OBJECT_ID(N'[dbo].[update_Letter_Indicator]')) 
DROP PROCEDURE [dbo].[update_Letter_Indicator]
GO
/* update_letter_sendstatusID]    :45 */
IF  EXISTS (SELECT * FROM sysobjects WHERE id = OBJECT_ID(N'[dbo].[update_letter_sendstatusID]')) 
DROP PROCEDURE [dbo].[update_letter_sendstatusID]
GO
/* update_LetterText]    :45 */
IF  EXISTS (SELECT * FROM sysobjects WHERE id = OBJECT_ID(N'[dbo].[update_LetterText]')) 
DROP PROCEDURE [dbo].[update_LetterText]
GO
/* Update_ParaphTemplate]    :45 */
IF  EXISTS (SELECT * FROM sysobjects WHERE id = OBJECT_ID(N'[dbo].[Update_ParaphTemplate]')) 
DROP PROCEDURE [dbo].[Update_ParaphTemplate]
GO
/* update_ReCommites_proceed]    :45 */
IF  EXISTS (SELECT * FROM sysobjects WHERE id = OBJECT_ID(N'[dbo].[update_ReCommites_proceed]')) 
DROP PROCEDURE [dbo].[update_ReCommites_proceed]
GO
/* update_ReCommites_viewDate]    :45 */
IF  EXISTS (SELECT * FROM sysobjects WHERE id = OBJECT_ID(N'[dbo].[update_ReCommites_viewDate]')) 
DROP PROCEDURE [dbo].[update_ReCommites_viewDate]
GO
/* update_UserLoginLogout]    :45 */
IF  EXISTS (SELECT * FROM sysobjects WHERE id = OBJECT_ID(N'[dbo].[update_UserLoginLogout]')) 
DROP PROCEDURE [dbo].[update_UserLoginLogout]
GO
/* UserChange_pass]    :45 */
IF  EXISTS (SELECT * FROM sysobjects WHERE id = OBJECT_ID(N'[dbo].[UserChange_pass]')) 
DROP PROCEDURE [dbo].[UserChange_pass]
GO
/* UserLog_Report]    :45 */
IF  EXISTS (SELECT * FROM sysobjects WHERE id = OBJECT_ID(N'[dbo].[UserLog_Report]')) 
DROP PROCEDURE [dbo].[UserLog_Report]
GO
/* Web_Access]    :45 */
IF  EXISTS (SELECT * FROM sysobjects WHERE id = OBJECT_ID(N'[dbo].[Web_Access]')) 
DROP PROCEDURE [dbo].[Web_Access]
GO
/* web_ArchiveRecommite]    :45 */
IF  EXISTS (SELECT * FROM sysobjects WHERE id = OBJECT_ID(N'[dbo].[web_ArchiveRecommite]')) 
DROP PROCEDURE [dbo].[web_ArchiveRecommite]
GO
/* web_Get_Letter_by_LetterID]    :45 */
IF  EXISTS (SELECT * FROM sysobjects WHERE id = OBJECT_ID(N'[dbo].[web_Get_Letter_by_LetterID]')) 
DROP PROCEDURE [dbo].[web_Get_Letter_by_LetterID]
GO
/* web_Get_LetterData_by_LetterDataID]    :45 */
IF  EXISTS (SELECT * FROM sysobjects WHERE id = OBJECT_ID(N'[dbo].[web_Get_LetterData_by_LetterDataID]')) 
DROP PROCEDURE [dbo].[web_Get_LetterData_by_LetterDataID]
GO
/* web_GetLetterArchiveHistory]    :45 */
IF  EXISTS (SELECT * FROM sysobjects WHERE id = OBJECT_ID(N'[dbo].[web_GetLetterArchiveHistory]')) 
DROP PROCEDURE [dbo].[web_GetLetterArchiveHistory]
GO
/* web_GetLetterAttachment]    :45 */
IF  EXISTS (SELECT * FROM sysobjects WHERE id = OBJECT_ID(N'[dbo].[web_GetLetterAttachment]')) 
DROP PROCEDURE [dbo].[web_GetLetterAttachment]
GO
/* web_GetRecommiteById]    :45 */
IF  EXISTS (SELECT * FROM sysobjects WHERE id = OBJECT_ID(N'[dbo].[web_GetRecommiteById]')) 
DROP PROCEDURE [dbo].[web_GetRecommiteById]
GO
/* web_insert_AnswerLetter]    :45 */
IF  EXISTS (SELECT * FROM sysobjects WHERE id = OBJECT_ID(N'[dbo].[web_insert_AnswerLetter]')) 
DROP PROCEDURE [dbo].[web_insert_AnswerLetter]
GO
/* web_insert_DraftLetter]    :45 */
IF  EXISTS (SELECT * FROM sysobjects WHERE id = OBJECT_ID(N'[dbo].[web_insert_DraftLetter]')) 
DROP PROCEDURE [dbo].[web_insert_DraftLetter]
GO
/* web_insert_innerLetter]    :46 */
IF  EXISTS (SELECT * FROM sysobjects WHERE id = OBJECT_ID(N'[dbo].[web_insert_innerLetter]')) 
DROP PROCEDURE [dbo].[web_insert_innerLetter]
GO
/* web_Insert_LetterData]    :46 */
IF  EXISTS (SELECT * FROM sysobjects WHERE id = OBJECT_ID(N'[dbo].[web_Insert_LetterData]')) 
DROP PROCEDURE [dbo].[web_Insert_LetterData]
GO
/* web_insert_NewReCommite]    :46 */
IF  EXISTS (SELECT * FROM sysobjects WHERE id = OBJECT_ID(N'[dbo].[web_insert_NewReCommite]')) 
DROP PROCEDURE [dbo].[web_insert_NewReCommite]
GO
/* web_insert_ReceivedLetter]    :46 */
IF  EXISTS (SELECT * FROM sysobjects WHERE id = OBJECT_ID(N'[dbo].[web_insert_ReceivedLetter]')) 
DROP PROCEDURE [dbo].[web_insert_ReceivedLetter]
GO
/* web_insert_sentLetter]    :46 */
IF  EXISTS (SELECT * FROM sysobjects WHERE id = OBJECT_ID(N'[dbo].[web_insert_sentLetter]')) 
DROP PROCEDURE [dbo].[web_insert_sentLetter]
GO
/* web_ProceedRecommite]    :46 */
IF  EXISTS (SELECT * FROM sysobjects WHERE id = OBJECT_ID(N'[dbo].[web_ProceedRecommite]')) 
DROP PROCEDURE [dbo].[web_ProceedRecommite]
GO
/* web_Select_LetterReCommite]    :46 */
IF  EXISTS (SELECT * FROM sysobjects WHERE id = OBJECT_ID(N'[dbo].[web_Select_LetterReCommite]')) 
DROP PROCEDURE [dbo].[web_Select_LetterReCommite]
GO
/* ysp_Backup]    :46 */
IF  EXISTS (SELECT * FROM sysobjects WHERE id = OBJECT_ID(N'[dbo].[ysp_Backup]')) 
DROP PROCEDURE [dbo].[ysp_Backup]
GO
/* Ysp_create_Temp_Database]    :46 */
IF  EXISTS (SELECT * FROM sysobjects WHERE id = OBJECT_ID(N'[dbo].[Ysp_create_Temp_Database]')) 
DROP PROCEDURE [dbo].[Ysp_create_Temp_Database]
GO
/* ysp_DELETE_Temp_Database]    :46 */
IF  EXISTS (SELECT * FROM sysobjects WHERE id = OBJECT_ID(N'[dbo].[ysp_DELETE_Temp_Database]')) 
DROP PROCEDURE [dbo].[ysp_DELETE_Temp_Database]
GO
/* ysp_exists_Temp_Database]    :46 */
IF  EXISTS (SELECT * FROM sysobjects WHERE id = OBJECT_ID(N'[dbo].[ysp_exists_Temp_Database]')) 
DROP PROCEDURE [dbo].[ysp_exists_Temp_Database]
GO
/* ysp_shrink]    :46 */
IF  EXISTS (SELECT * FROM sysobjects WHERE id = OBJECT_ID(N'[dbo].[ysp_shrink]')) 
DROP PROCEDURE [dbo].[ysp_shrink]
 
GO

CREATE PROCEDURE [dbo].[Activate_Letter](@receivedMode bit,@indicatorID int ,@myear int, @secID int)
as
    if @receivedMode=1 
 update ReceievedLetters
                 set letter_type=1
                 where IndicatorID=@indicatorID
                 and  MYear=@myear
                 and  SecretariatID=@secID  
else
 update SentLetters
                 set letter_type=1
                 where IndicatorID=@indicatorID
                 and  MYear=@myear
                 and  SecretariatID=@secID

  delete from LetterFile
                 where LetterIndicatorID=@indicatorID
                 and  LetterMYear=@myear
                 and  SecID=@secid  


GO 

CREATE procedure  [dbo].[Activate_Recommite](
               @RecommiteID  int)
 AS
update  [dbo].[ReCommites] 
set proceeded=0,ActionTypeID=1
WHERE
	( RecommiteID	 = @RecommiteID)



GO 


CREATE Procedure [dbo].[AnswerLetter]( @LetterID int,@AnswerLetterID int,@Today char(10))
as

UPDATE Letter SET SentLetterID = @AnswerLetterID
 WHERE   LetterID=@LetterID
DECLARE @Letterformat int

select @letterFormat=letterFormat from letter
 WHERE   LetterID=@LetterID


if @letterFormat=1
begin
 UPDATE ReCommites
 SET Proceeded=1, ProceedDate = @today
 WHERE (Proceeded=0) AND (LetterID=@LetterID)

 UPDATE ReCommites SET ActionTypeID=5 WHERE  (LetterID=@LetterID)
 update letter set LatestActionTypeID=5 where letterid=@letterid

end


GO 

create proc [dbo].[AnswerNote]
@recommiteID int
as
update Recommites
set Staffmemo='پيش نويس صادره آماده شد ',actiontypeid=4
where recommiteid=@recommiteID

 
GO

Create procedure [dbo].[Check_duplicate_UserName]
@UserName nvarchar(50),@result bit  output
as
if exists (SELECT *
  FROM  Users where ltrim(rtrim(username))=ltrim(rtrim(@UserName)))
set @result=1
else
set @result=0

GO 



CREATE PROCEDURE [dbo].[delete_Accesses]
	(@AccessID 	[tinyint])

AS DELETE [dbo].[Accesses] 

WHERE 
	( [ID]	 = @AccessID)







GO 



CREATE PROCEDURE [dbo].[delete_Actions_ByFormID]
	(@FormTag 	[tinyint])

AS DELETE [dbo].[Actions] 

WHERE (
	 [FormTag]	 = @FormTag)







GO 





create procedure [dbo].[Delete_All_Secretariats_Of_User](@userid int)
as
DELETE FROM UserSecretariats
WHERE     (UserId = @UserID)


 

GO
/* Delete_All_TemplateGroup_Of_User]    Script Date: 01/06/2010 00:21:57 */
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


create procedure [dbo].[Delete_All_TemplateGroup_Of_User](@userid int)
as
DELETE FROM UserTemplateGroup
WHERE     (UserId = @UserID)



 

GO
/* Delete_ArchiveFolder]    Script Date: 01/06/2010 00:21:57 */
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[Delete_ArchiveFolder](@FolderID [int])  
AS 

/*Ranjbar*/
DELETE UserAccArchive  
WHERE( ArchiveFolderID = @FolderID)  
---
 
delete LetterArchiveFolder 
where ArchiveFolderID = @FolderID  

DELETE ArchiveFolder  
WHERE( FolderID = @FolderID)  



GO
/* Delete_Exported_LetterData]    Script Date: 01/06/2010 00:21:57 */
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO



CREATE proc [dbo].[Delete_Exported_LetterData](@SecretariatID int, @myear tinyint)
as
delete     LetterData
FROM         LetterData 
INNER JOIN       Letter ON LetterData.LetterID = Letter.LetterID
WHERE     (Letter.SecretariatID = @SecretariatID) AND (Letter.MYear = @myear)







GO
/* delete_Extention]    Script Date: 01/06/2010 00:21:57 */
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


CREATE PROCEDURE [dbo].[delete_Extention]
@ExtentionID int 
AS
delete UserExtention where ExtentionID=@ExtentionID
delete Extention where ExtentionID=@ExtentionID





GO
/* Delete_Letter]    Script Date: 01/06/2010 00:21:57 */
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO

CREATE PROCEDURE [dbo].[Delete_Letter]  
@LetterID int,@newInd int  
AS  
declare @letterformat tinyint  
select   @letterformat=letterformat  
from letter  
where letterid=@LetterID  
  
if @letterformat=1   
  UPDATE    Letter  
  SET        LetterFormat = 3 ,memo=memo +'('+cast(indicatorid as varchar(6)), indicatorid=@newind  
 WHERE     (LetterID = @LetterID)  
  
if @letterformat in (2,3)  
begin    
  DELETE [ReCommites]  WHERE     (LetterID = @LetterID)  
  DELETE [LetterText]  WHERE     (LetterID = @LetterID)  
  DELETE [LetterData]  WHERE     (LetterID = @LetterID)  
  DELETE from Letter WHERE     (LetterID = @LetterID)  
end


GO
/* delete_LetterArchiveFolder]    Script Date: 01/06/2010 00:21:57 */
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO




CREATE PROCEDURE [dbo].[delete_LetterArchiveFolder]
	(@LetterArchiveID 	[int])

AS
declare @letterid int

select @letterid =letterid
from[LetterArchiveFolder]
where [LetterArchiveID]	 = @LetterArchiveID


DELETE [dbo].[LetterArchiveFolder]

WHERE
	( [LetterArchiveID]	 = @LetterArchiveID)

if not exists (select * from [LetterArchiveID] where letterid=@letterid) 
update letter
set Archived=0
where letterid=@letterid





GO
/* delete_LetterData]    Script Date: 01/06/2010 00:21:57 */
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


create proc [dbo].[delete_LetterData] (@LetterDataID int )
as
delete       LetterData
WHERE     (LetterDataID = @LetterDataID)






GO
/* delete_letterImage]    Script Date: 01/06/2010 00:21:57 */
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


create proc [dbo].[delete_letterImage]
@Letterdataid int
as
declare @pageNumber int,@Letterid int

select @pageNumber=pageNumber,@Letterid=Letterid from letterdata
WHERE     (Letterdataid = @Letterdataid)

DELETE FROM letterdata
WHERE     (Letterdataid = @Letterdataid)

update letterdata
set pageNumber=pageNumber-1
where @Letterid=Letterid and pageNumber>@pageNumber







GO
/* delete_LetterWord]    Script Date: 01/06/2010 00:21:57 */
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


CREATE PROCEDURE [dbo].[delete_LetterWord]
	(@LetterID 	[int])

AS DELETE [dbo].[LetterData] 

WHERE 
	( [LetterID]	 = @LetterID AND
	 [extention]	 = 3)








GO
/* delete_ParaphTemplate]    Script Date: 01/06/2010 00:21:57 */
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

Create Procedure [dbo].[delete_ParaphTemplate]
@ParaphTemplateID int
as
declare @OrderId tinyint,@Userid int


select @OrderID=Orderid,@Userid=Userid from ParaphTemplate Where ParaphTemplateID=@ParaphTemplateID

delete  ParaphTemplate Where ParaphTemplateID=@ParaphTemplateID


   update ParaphTemplate set OrderId=OrderID-1      where  Userid=@Userid and Orderid>@orderid


GO
/* delete_ReCommites]    Script Date: 01/06/2010 00:21:57 */
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO




CREATE PROCEDURE [dbo].[delete_ReCommites]
	(@RecommiteID 	[int])

AS DELETE [dbo].[ReCommites] 

WHERE 
	( [RecommiteID]	 = @RecommiteID)






GO
/* Delete_Table]    Script Date: 01/06/2010 00:21:57 */
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO











CREATE PROCEDURE [dbo].[Delete_Table](@tableID int)
as

declare @Tablename varchar(50)

select @tablename=Tablename
 from tables
where tableid=@tableid


  delete from tables
  where tableid=@tableid
  
  delete from Fields
  where tableid=@tableid

  exec('drop table '+@tablename)




 

GO
/* delete_user]    Script Date: 01/06/2010 00:21:57 */
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


CREATE Procedure [dbo].[delete_user]
 @userid int 
as
exec sp_SetForeinKey 0



delete ArchiveFolder where UserID=@UserID
delete Emails where UsersID=@UserID
delete FieldAccess where UserID=@UserID
delete FollowUp where UserID=@UserID
delete LetterArchiveFolder where UserID=@UserID
delete NewsGroupUsers where UsersID=@UserID
delete NewsUsers where UsersID=@UserID
delete ParaphTemplate where UserID=@UserID
delete PhoneGroup where UsersID=@UserID
delete Settings where UserID=@UserID
delete UserAccArchive where UserID=@UserID
delete UserExtention where UserId=@UserID
delete UserLog where UserID=@UserID
delete UserLoginLogout where UserID=@UserID  
delete UserNote where UserID=@UserID
delete UserSecretariats where UserId=@UserID
delete UserShortCut where UserID=@UserID
delete UserSign where UserID=@UserID
delete UserTemplateGroup where UserID=@UserID
delete users where id=@UserID

GO
/* delete_UserTable]    Script Date: 01/06/2010 00:21:57 */
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE Procedure [dbo].[delete_UserTable]
 @TableID int
as


UPDATE    Letter
SET      UserTableID = NULL
from letter
inner join  LetterFieldValue on LetterFieldValue.letterid=letter.LetterID
inner join  Fields on Fields.id=LetterFieldValue.FieldID
WHERE TableID = @tableid

delete    LetterFieldValue
from LetterFieldValue
inner join  Fields on Fields.id=LetterFieldValue.FieldID
WHERE TableID = @tableid



DELETE FROM Fields
WHERE     (TableID = @tableid)


delete tables
WHERE     (TableID = @tableid)

GO
/* Deleted_to_Letter]    Script Date: 01/06/2010 00:21:57 */
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO










create PROCEDURE [dbo].[Deleted_to_Letter] 
@LetterID int,@newInd int,@today char(10)
AS
   UPDATE   Letter
   SET        registrationdate=@today,      IndicatorID = @newInd,  LetterFormat = 1
 WHERE     (LetterID = @LetterID)











GO
/* Draft_to_SentLetter]    Script Date: 01/06/2010 00:21:57 */
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO










CREATE PROCEDURE [dbo].[Draft_to_SentLetter]
@LetterID int,@newInd int,@today char(10)
AS
declare @Letter_Type int
select @Letter_Type=Letter_type
from letter
WHERE     (LetterID = @LetterID)

  UPDATE   Letter
   SET        registrationdate=@today,      IndicatorID = @newInd,  LetterFormat = 1
  WHERE     (LetterID = @LetterID)

  if @Letter_Type<>1 
   update recommites
    set proceeded=1 where letterid=@LetterID

declare @receivedLetter int

select top 1 @receivedLetter=Letterid
from letter where sentletterid=@LetterID

if @receivedLetter is not null
 begin
  update recommites
  set proceeded=1,ActionTypeid=5 where letterid=@receivedLetter
  update  letter set LatestActionTypeID=5 where letterid=@receivedLetter
 end


if not exists (select * from recommites where letterid=@LetterID)
 INSERT INTO dbo.ReCommites ( LetterID, ID, Type, ParentId, OrgID, Paraph, RecommiteDate, UserID, IsCopy, Proceeded) 
select LetterID,1,3,0,fromorgid,'',registrationdate,userid,0,0 
from letter
where letterid=@LetterID


GO
/* Duplicate_UserShortCut]    Script Date: 01/06/2010 00:21:58 */
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
Create Procedure [dbo].[Duplicate_UserShortCut]
@UserID int,
@altKey char(1),
@result bit output
as
if exists (SELECT *   FROM UserShortCut where UserID=@UserID and altKey=@altKey)
set @result=1
else
set @result=0


GO
/* Export_LetterData]    Script Date: 01/06/2010 00:21:58 */
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO












CREATE proc [dbo].[Export_LetterData](@LetterdataID int)
as
if not exists (select * from yeganeh_tmp_db.dbo.sysobjects where name='LetterData')
begin
CREATE TABLE yeganeh_tmp_db.dbo.LetterData (
	LetterDataID int  NOT NULL ,
	LetterID int NOT NULL ,
	PageNumber tinyint NOT NULL ,
	Image image NULL ,
	extention tinyint NOT NULL,
	[Description] [nvarchar] (200)  NULL )
end
insert INTO yeganeh_tmp_db.DBO.LetterData (LetterDataID,LetterID,PageNumber,Image,extention)
SELECT     LetterDataID,LetterID,PageNumber,Image,extention
FROM         LetterData
WHERE     (LetterdataID = @LetterdataID)




 

GO
/* Folder_hasChild]    Script Date: 01/06/2010 00:21:58 */
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO











CREATE PROCEDURE [dbo].[Folder_hasChild]
	(@userid int ,@ParentID 	[int],@hasChild bit output)
AS 
if exists( SELECT     *
FROM         ArchiveFolder
WHERE     (ParentFolderID = @ParentID) and (UserID = @userid))
set @haschild=1
else
set @haschild=0








GO
/* Folder_hasLetter]    Script Date: 01/06/2010 00:21:58 */
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO







create procedure [dbo].[Folder_hasLetter](@Folderid int,@hasLetter bit output)
as
if exists (SELECT     *
FROM         LetterArchiveFolder
inner join letter on letter.letterid= LetterArchiveFolder.letterid
WHERE     letterformat<=2 and (ArchiveFolderID = @Folderid)) set @hasLetter=1
else
set @hasLetter=0







GO
/* Folder_hasRecommite]    Script Date: 01/06/2010 00:21:58 */
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

Create  procedure [dbo].[Folder_hasRecommite](@Folderid int,@hasLetter bit output)
as
if exists (SELECT     *
FROM         LetterArchiveFolder
where  ArchiveFolderID = @Folderid) set @hasLetter=1
else
set @hasLetter=0

GO
/* Get_ActiveUser]    Script Date: 01/06/2010 00:21:58 */
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


CREATE  procedure [dbo].[Get_ActiveUser]
as

SELECT     Users.UserName, 
max(case when datepart(hh, LoginTime)<10 then '0'+cast(datepart(hh, LoginTime) as char(1)) else cast(datepart(hh, LoginTime) as char(2)) end +':'+
case when datepart(mi, LoginTime)<10 then '0'+cast(datepart(mi, LoginTime) as char(1)) else cast(datepart(mi, LoginTime) as char(2)) end ) as logintime
FROM         UserLoginLogout 
INNER JOIN   Users ON UserID = Users.Id
where  dbo.Shamsi(LoginTime)=dbo.Shamsi(getdate())
and datediff(mi,LogoutTime,getdate())<5
group by Users.UserName








GO
/* Get_All_Letter]    Script Date: 01/06/2010 00:21:58 */
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[Get_All_Letter]    
    
@Secretariatid int,    
@myear tinyint,    
@Letter_Type int,    
@LetterFormat int,    
@where nvarchar(2000),    
@top smallint ,    
@archiveFolderID int,    
@ArchiveStatus tinyint -- 0 ,1 and 2(= all)    
as    
declare @sqlCommand nvarchar(4000)    
DECLARE @InnerNo NVARCHAR(500);    
declare @Delimeter char(1)    
set @Delimeter=dbo.GetSystemValue(44)    
set @InnerNo=case  dbo.GetSystemValue(35)    
                   when 0 then ''    
                   when 1 then 'isnull(Secretariats.Precode,'''')+'''+@Delimeter+'''+'    
                   when 2 then 'cast(Myear as char(2))+'''+@Delimeter+'''+'    
                   when 3 then 'cast(indicatorid as nvarchar(10))+'''+@Delimeter+'''+'    
                   when 4 then 'case when len(sender.Code)>5 then sender.PreCode else sender.Code end +'''+@Delimeter+'''+'    
                   when 5 then 'case when len(Deliver.Code)>5 then Deliver.PreCode else Deliver.Code end +'''+@Delimeter+'''+'    
                   when 6 then 'isnull(LetterTypes.PreCode,'''')+'''+@Delimeter+'''+'    
                   when 7 then 'isnull(UserMemo,'''')+'''+@Delimeter+'''+'    
                   when 8 then 'isnull(Deliver.Precode,'''')+'''+@Delimeter+'''+' end+    
    
             case  dbo.GetSystemValue(36)    
                   when 0 then ''    
                   when 1 then 'isnull(Secretariats.Precode,'''')+'''+@Delimeter+'''+'    
                   when 2 then 'cast(Myear as char(2))+'''+@Delimeter+'''+'    
                   when 3 then 'cast(indicatorid as nvarchar(10))+'''+@Delimeter+'''+'    
                   when 4 then 'case when len(sender.Code)>5 then sender.PreCode else sender.Code end +'''+@Delimeter+'''+'    
                   when 5 then 'case when len(Deliver.Code)>5 then Deliver.PreCode else Deliver.Code end +'''+@Delimeter+'''+'    
                   when 6 then 'isnull(LetterTypes.PreCode,'''')+'''+@Delimeter+'''+'    
                   when 7 then 'isnull(UserMemo,'''')+'''+@Delimeter+'''+'    
                   when 8 then 'isnull(Deliver.Precode,'''')+'''+@Delimeter+'''+' end+    
    
             case  dbo.GetSystemValue(37)    
                   when 0 then ''    
                   when 1 then 'isnull(Secretariats.Precode,'''')+'''+@Delimeter+'''+'    
                   when 2 then 'cast(Myear as char(2))+'''+@Delimeter+'''+'    
                   when 3 then 'cast(indicatorid as nvarchar(10))+'''+@Delimeter+'''+'    
                   when 4 then 'case when len(sender.Code)>5 then sender.PreCode else sender.Code end +'''+@Delimeter+'''+'    
                   when 5 then 'case when len(Deliver.Code)>5 then Deliver.PreCode else Deliver.Code end +'''+@Delimeter+'''+'    
                   when 6 then 'isnull(LetterTypes.PreCode,'''')+'''+@Delimeter+'''+'    
                   when 7 then 'isnull(UserMemo,'''')+'''+@Delimeter+'''+'    
                   when 8 then 'isnull(Deliver.Precode,'''')+'''+@Delimeter+'''+' end+    
    
             case  dbo.GetSystemValue(38)    
                   when 0 then ''    
                   when 1 then 'isnull(Secretariats.Precode,'''')+'''+@Delimeter+'''+'    
                   when 2 then 'cast(Myear as char(2))+'''+@Delimeter+'''+'    
                   when 3 then 'cast(indicatorid as nvarchar(10))+'''+@Delimeter+'''+'    
                   when 4 then 'case when len(sender.Code)>5 then sender.PreCode else sender.Code end +'''+@Delimeter+'''+'    
                   when 5 then 'case when len(Deliver.Code)>5 then Deliver.PreCode else Deliver.Code end +'''+@Delimeter+'''+'    
                   when 6 then 'isnull(LetterTypes.PreCode,'''')+'''+@Delimeter+'''+'    
                   when 7 then 'isnull(UserMemo,'''')+'''+@Delimeter+'''+'    
                   when 8 then 'isnull(Deliver.Precode,'''')+'''+@Delimeter+'''+' end+    
    
             case  dbo.GetSystemValue(39)    
                   when 0 then ''    
                   when 1 then 'isnull(Secretariats.Precode,'''')+'''+@Delimeter+'''+'                       when 2 then 'cast(Myear as char(2))+'''+@Delimeter+'''+'    
                   when 3 then 'cast(indicatorid as nvarchar(10))+'''+@Delimeter+'''+'    
                   when 4 then 'case when len(sender.Code)>5 then sender.PreCode else sender.Code end +'''+@Delimeter+'''+'    
                   when 5 then 'case when len(Deliver.Code)>5 then Deliver.PreCode else Deliver.Code end +'''+@Delimeter+'''+'    
                   when 6 then 'isnull(LetterTypes.PreCode,'''')+'''+@Delimeter+'''+'    
                   when 7 then 'isnull(UserMemo,'''')+'''+@Delimeter+'''+'    
                   when 8 then 'isnull(Deliver.Precode,'''')+'''+@Delimeter+'''+' end+    
    
             case  dbo.GetSystemValue(40)    
                   when 0 then ''    
                   when 1 then 'isnull(Secretariats.Precode,'''')+'''+@Delimeter+'''+'    
                   when 2 then 'cast(Myear as char(2))+'''+@Delimeter+'''+'    
                   when 3 then 'cast(indicatorid as nvarchar(10))+'''+@Delimeter+'''+'    
                   when 4 then 'case when len(sender.Code)>5 then sender.PreCode else sender.Code end +'''+@Delimeter+'''+'    
                   when 5 then 'case when len(Deliver.Code)>5 then Deliver.PreCode else Deliver.Code end +'''+@Delimeter+'''+'    
                   when 6 then 'isnull(LetterTypes.PreCode,'''')+'''+@Delimeter+'''+'    
                   when 7 then 'isnull(UserMemo,'''')+'''+@Delimeter+'''+'    
                   when 8 then 'isnull(Deliver.Precode,'''')+'''+@Delimeter+'''+' end    
    
IF len(@InnerNo)>5    
if substring(@InnerNo,len(@InnerNo)-4,5)='+'''+@Delimeter+'''+'    
   set @InnerNo=substring(@InnerNo,1,len(@InnerNo)-5)    
    
if @innerno<>''    
set @InnerNo='replace(replace(ltrim(rtrim('+@InnerNo+')),'''+@Delimeter+@Delimeter+''','''+@Delimeter+'''),'''+@Delimeter+@Delimeter+''','''+@Delimeter+''')'    
else    
set @innerno='cast(indicatorid as nvarchar(500))'    
    
set @sqlCommand='SELECT top  '+Cast(@top as varchar(5)) +'     Letter.LetterID, Letter.IndicatorID, Letter.MYear, Letter.SecretariatID,    
                      Letter.Letter_Type, Letter.letterformat, Letter.IncommingNO, Letter.FromOrgID,Letter.IncommingDate,    
                      Letter.ToOrgID, Letter.UrgencyID, Letter.Memo, Letter.RetroactionNo, Letter.RegistrationDate, Letter.FollowLetterNo,    
                      Letter.ToStaffer, Letter.SentLetterID, Letter.TemplateID, Letter.UserMemo,Letter.DeadLineDate, sender.Title AS SenderTitle,    
                      Deliver.Title AS DeliverTitle,dbo.has_Page(Letter.letterid) has_Page,    
dbo.has_WordPage(Letter.letterid) has_WordPage,dbo.has_file(letter.letterID) has_file,    
LetterTypes.Title LetterTypeTitle,LetterRecommites,sendstatusTitle,'+@innerno+'  InnerNo,Letter.Archived    
,ActionTypeTitle   
 , Letter.SignerID , (Select Title from FromOrganizations FO Where(FO.ID = Letter.SignerID)) as SignerTitle   
,Letter.ReceiveTypeID  
  
FROM Letter left  JOIN    
     FromOrganizations sender ON Letter.ToOrgID = sender.ID left JOIN    
     FromOrganizations Deliver ON Letter.FromOrgID = Deliver.ID    
     Left join LetterTypes on LetterTypes.ID=Letter.Letter_type    
     inner join sendstatus on sendstatus.sendstatusID=Letter.sendstatusID    
     inner join Secretariats on Secretariats.Secid=Letter.SecretariatID    
     left JOIN ActionType  ON ActionType.ActionTypeID = Letter.LatestActionTypeID'    
    
    
if @archiveFolderID>0    
set @sqlCommand=@sqlCommand+'    
Left join LetterArchiveFolder on LetterArchiveFolder.Letterid=Letter.LetterID '    
    
set @sqlCommand=@sqlCommand+' where letter.Finalized=1 '    
    
    
    
set @where=isnull(ltrim(rtrim(@where)),'')    
if @where <>'' set @where =' and '+@where    
    
if @Letter_Type<>0    
  set @where=@where+' and (Letter_Type = '+Cast(@Letter_Type as varchar(5))+')'    
    
if @Secretariatid<>0    
  set @where=@where+' and (Secretariatid = '+Cast(@Secretariatid as varchar(5))+')'    
    
if @Myear<>0    
  set @where=@where+' and (myear = '+Cast(@myear as varchar(5))+')'    
    
    
    
if @LetterFormat<>0    
  set @where=@where+' and (LetterFormat = '+Cast(@LetterFormat as varchar(5))+')'    
    
if @archiveFolderID>0    
    
  set @where=@where+' and (archiveFolderID = '+Cast(@archiveFolderID as varchar(5))+')'    
    
if @ArchiveStatus=0    
 set @where=@where+' and archived=0'    
    
if @ArchiveStatus=1    
 set @where=@where+' and archived=1'    
    
if @ArchiveStatus=2    
 begin    
   set @where=@where+' and    
       not exists (SELECT  * FROM   LetterArchiveFolder,ArchiveFolder Where    
       LetterArchiveFolder.ArchiveFolderID = ArchiveFolder.FolderID    
       and  (ArchiveFolder.UserID=0 or ArchiveFolder.UserID>=10000)  and Letterid =Letter.LetterID)  and archived=1'    
end    
    
    
set @sqlCommand=@sqlCommand+@where + ' order by indicatorid desc '    
    
exec sp_executesql   @sqlCommand    
    



GO
/* Get_ArchiveFolder_ByAccess]    Script Date: 01/06/2010 00:21:58 */
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[Get_ArchiveFolder_ByAccess] @userID int , @SecID int , @ArchiveCenterID int 
AS   
SELECT AF.*  
FROM ArchiveFolder AF
Inner Join UserAccArchive UAA On UAA.ArchiveFolderID = AF.FolderID  
Where(UAA.SecID = @SecID)
And(UAA.UserID = @userID)  
And(UAA.ArchiveCenterID = @ArchiveCenterID)
And(UAA.IsAccess = 1)


GO
/* Get_ArchiveFolder_ByAccessAndTitle]    Script Date: 01/06/2010 00:21:58 */
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[Get_ArchiveFolder_ByAccessAndTitle] @userID int , @SecID int , @ArchiveCenterID int  , @like nvarchar(100)  
AS   
SELECT AF.*  
FROM ArchiveFolder AF
Inner Join UserAccArchive UAA On UAA.ArchiveFolderID = AF.FolderID  
Where(UAA.SecID = @SecID)
And(UAA.UserID = @userID)  
And(UAA.ArchiveCenterID = @ArchiveCenterID)
And(UAA.IsAccess = 1)
And( AF.Title like '%'+@like+'%' or AF.place like  '%'+@like+'%' )  


GO
/* get_ArchiveFolder_byUserID]    Script Date: 01/06/2010 00:21:58 */
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO





CREATE PROCEDURE [dbo].[get_ArchiveFolder_byUserID]
@userID int
AS

SELECT      *
FROM         ArchiveFolder
WHERE     (UserID = @userID)




GO
/* get_ArchiveFolder_byUserID_and_Letterid]    Script Date: 01/06/2010 00:21:58 */
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO




CREATE PROCEDURE [dbo].[get_ArchiveFolder_byUserID_and_Letterid]
@Letterid int,@userid int
AS
SELECT     LetterArchiveFolder.*, ArchiveFolder.Title, ArchiveFolder.Place,users.Title usertitle
FROM         LetterArchiveFolder 
INNER JOIN   ArchiveFolder ON LetterArchiveFolder.ArchiveFolderID = ArchiveFolder.FolderID
left join users on users.id=LetterArchiveFolder.userID
WHERE     (LetterArchiveFolder.LetterID = @Letterid) and archivefolder.userid=@userid



 

GO
/* get_ArchiveFolder_byUserID_and_Place]    Script Date: 01/06/2010 00:21:58 */
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO





CREATE  PROCEDURE [dbo].[get_ArchiveFolder_byUserID_and_Place]
@userID int,@Place nvarchar(100),@FolderID int output
AS

SELECT      top 1 @FolderID=FolderID
FROM         ArchiveFolder
WHERE     (UserID = @userID)  and (Place=@Place)













GO
/* get_ArchiveFolder_byUserID_and_Title]    Script Date: 01/06/2010 00:21:58 */
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO



CREATE  PROCEDURE [dbo].[get_ArchiveFolder_byUserID_and_Title]
@userID int,@like nvarchar(100)
AS

SELECT      *
FROM         ArchiveFolder
WHERE     (UserID = @userID)  and ( title like '%'+@like+'%' or place like  '%'+@like+'%' )





GO
/* Get_DatabaseName_By_Year]    Script Date: 01/06/2010 00:21:58 */
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


/* get_DayID_InWeek]    Script Date: 01/06/2010 00:21:58 */
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO





CREATE PROCEDURE [dbo].[get_DayID_InWeek]
	(@DayID tinyint output)
AS 
SET DATEFIRST 6
select @DayID=datepart(dw,getdate())-1


GO
/* get_DestinationOrgID]    Script Date: 01/06/2010 00:21:58 */
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO



CREATE procedure [dbo].[get_DestinationOrgID](@DestinationServerIP varchar(30),@DestinationServerDB varchar(50),@DestinationSecID int,@DestinationOrgID int output)
as

SELECT     @DestinationOrgID=DestinationOrgID_inSource
FROM         RelatedSecretariats
WHERE     (DestinationServerIP = @DestinationServerIP) AND (DestinationServerDB = @DestinationServerDB) and DestinationSecID=@DestinationSecID



GO
/* Get_DraftReceivedLetter_count]    Script Date: 01/06/2010 00:21:58 */
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[Get_DraftReceivedLetter_count]
@Myear tinyint,@secretariatid int ,@count int output

AS
select @count=count(*)
from letter
where Myear=@Myear and letter_type=1 and letterformat=2 and secretariatid=@secretariatid

set @count=isnull(@Count,0)

GO
/* Get_FieldValue_by_LetterID_FieldID]    Script Date: 01/06/2010 00:21:58 */
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

create  procedure [dbo].[Get_FieldValue_by_LetterID_FieldID]
@LetterID int,@FieldID int ,@fieldValue nvarchar(2000) output
as
SELECT  @fieldValue=LetterFieldValue.FieldValue
FROM         LetterFieldValue
WHERE letterid=@LetterID
 and FieldID=@FieldID

set @fieldValue=isnull(@fieldValue,'')



GO
/* Get_FieldValues_by_LetterID]    Script Date: 01/06/2010 00:21:58 */
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO




CREATE procedure [dbo].[Get_FieldValues_by_LetterID]
@LetterID int,@UserID int,@FormOrder tinyint
as
SELECT  LetterFieldValue.*,Fields.[order],
Fields.[Description],Fields.FieldTypeID,Fields.ReferenceTableID,
isnull(FieldAccess.AccessTypeID,1) AccessTypeID
FROM         LetterFieldValue
left join  Fields on Fields.ID = LetterFieldValue.FieldID
left join   FieldAccess on FieldAccess.FieldID=Fields.ID
WHERE    FormOrder = @FormOrder and LetterFieldValue.letterid=@LetterID
 and FieldAccess.UserID=@userID
ORDER BY Fields.[order]











GO
/* Get_FollowUP_Count]    Script Date: 01/06/2010 00:21:58 */
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE Procedure [dbo].[Get_FollowUP_Count](@UserID int ,@BDate char(10), @Edate char(10),
@DonStatusID int,@Count int output)
as

SELECT     @Count=Count(*)
FROM  FollowUp
WHERE
    (@UserID = 0 or FollowUp.UserID = @UserID) AND
    (FollowUp.ToDoDate between  @BDate and @Edate)
and (@DonStatusID=0 or FollowUp.DoneStatusID = @DonStatusID)

set @Count=isnull(@Count,0)

GO
/* Get_FromOrganizations_ByCode]    Script Date: 01/06/2010 00:21:58 */
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO





CREATE PROCEDURE [dbo].[Get_FromOrganizations_ByCode] @Code nvarchar(10),@ID int output , @ResponsibleStaffer nvarchar(50) output
AS

select top 1 @ID= ID,@ResponsibleStaffer=ResponsibleStaffer
from dbo.FromOrganizations
WHERE 	Code	 = @Code and isactive=1

set @id=isnull(@id,0)
set @ResponsibleStaffer=isnull(@ResponsibleStaffer,'')


GO
/* Get_FromOrganizationsID_ByCode]    Script Date: 01/06/2010 00:21:58 */
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[Get_FromOrganizationsID_ByCode] @Code nvarchar(10),@ID int output 
AS

select top 1 @ID= ID
from dbo.FromOrganizations
WHERE 	Code	 = @Code and isactive=1

set @id=isnull(@id,0)

GO
/* Get_FromOrganizationsTitle_ByID]    Script Date: 01/06/2010 00:21:58 */
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[Get_FromOrganizationsTitle_ByID]  
(@ID [int],  
@Title [nvarchar](100) output,  
@ResponsibleStaffer [nvarchar](50) output , 
@code nvarchar(10) output )  
AS 
Select  @Title  = Title,  
@ResponsibleStaffer  = ResponsibleStaffer,  
@code=code  from [dbo].[FromOrganizations]   
WHERE ( [ID]  = @ID)
/*Ranjbar*/
if @ResponsibleStaffer is null
   Set @ResponsibleStaffer = '' --'بدون مسئول'  
----

GO
/* get_indicatorID_BySentLetterID]    Script Date: 01/06/2010 00:21:58 */
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO









CREATE procedure [dbo].[get_indicatorID_BySentLetterID](@SentLetterID int,@indicatorID int output)
as
select top 1 @indicatorID=indicatorID from letter where 
SentLetterID =@SentLetterID
 set @indicatorID=isnull(@indicatorID,-1)












GO
/* Get_innerLetterMemo]    Script Date: 01/06/2010 00:21:58 */
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO




CREATE Procedure [dbo].[Get_innerLetterMemo]
@Letterid int,@memo nvarchar(500) output ,@is_Inner bit output
as
SELECT     @is_Inner= case when Letter_Type=3 then 1 else 0 end, @Memo=Memo
FROM         Letter
WHERE     (LetterID = @Letterid)


 

GO
/* get_InnerOrganizations]    Script Date: 01/06/2010 00:21:58 */
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


CREATE procedure [dbo].[get_InnerOrganizations]
as

SELECT * FROM FromOrganizations
where IsInnerOrg=1 and isactive=1
order by isactive desc


GO
/* get_LastIndicatorID]    Script Date: 01/06/2010 00:21:58 */
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE procedure [dbo].[get_LastIndicatorID](@letter_type tinyint ,@SecretariatID int,@Myear int,
@LetterFormat tinyint,@newIndicatorid int output)
as
declare @RecivedInd int ,@SentInd  int,@innerind int,@Docind int
Select @RecivedInd=isnull(max(indicatorID),0)+1 from Letter where myear=@myear and LetterFormat=@LetterFormat
 and SecretariatID=@SecretariatID and letter_type=1 

Select @SentInd=isnull(max(indicatorID),0)+1 from Letter where myear=@myear and LetterFormat=@LetterFormat
 and SecretariatID=@SecretariatID and letter_type=2 


 Select @innerind=isnull(max(indicatorID),0)+1 from Letter where myear=@myear and LetterFormat=@LetterFormat
 and SecretariatID=@SecretariatID and letter_type=3

 Select @Docind=isnull(max(indicatorID),0)+1 from Letter where myear=@myear and LetterFormat=@LetterFormat
 and SecretariatID=@SecretariatID and letter_type=4

  if @RecivedInd<dbo.GetSystemValue(3) 
    set  @RecivedInd=dbo.GetSystemValue(3)


  if @SentInd<dbo.GetSystemValue(3) 
    set  @SentInd=dbo.GetSystemValue(3)

  if @innerind<dbo.GetSystemValue(3) 
    set  @innerind=dbo.GetSystemValue(3)


if @letter_type=3 
 begin
  set @newIndicatorid=@innerind
  return
 end
if @letter_type=4 
 begin
  set @newIndicatorid=@docind
  return
 end


 if dbo.GetSystemValue(5)=0
  begin
     if @SentInd>@RecivedInd
        set @newIndicatorid=@SentInd
       else
        set @newIndicatorid=@RecivedInd

  end

 if dbo.GetSystemValue(5)=1
   begin
    if @letter_type=1
     set @newIndicatorid=@RecivedInd
    if @letter_type=2
     set @newIndicatorid=@SentInd
   end

 if dbo.GetSystemValue(5)=2
  begin
   if @letter_type=2
      set @newIndicatorid=2*(1+(@SentInd-1)/2)

   if @letter_type=1
      set @newIndicatorid=2*(1+(@RecivedInd-1)/2)+1
  end

 if dbo.GetSystemValue(5)=3
  begin
   if @letter_type=1
      set @newIndicatorid=2*(1+(@RecivedInd-1)/2)

   if @letter_type=2
      set @newIndicatorid=2*(1+(@SentInd -1)/2)+1
  end


GO
/* Get_LastUserId]    Script Date: 01/06/2010 00:21:58 */
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

create proc [dbo].[Get_LastUserId](@id int output)
as
SELECT     @id=MAX(Id)
FROM         Users




GO
/* Get_Letter_By_UserMemo]    Script Date: 01/06/2010 00:21:58 */
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE Procedure [dbo].[Get_Letter_By_UserMemo]
@UserMemo nvarchar(255),@Letter_Type tinyint
as
SELECT   Letter.LetterID,letter.Letter_Type, Letter.IndicatorID, Letter.MYear, Secretariats.SecTitle, LetterTypes.Title AS LetterType, Letter.IncommingNO,
                      Letter.Incommingdate, Letter.Memo, Letter.AttachTitle, Letter.RetroactionNo, Letter.UserMemo, Letter.RegistrationDate, Letter.FollowLetterNo, 
                      Letter.SubjectDescription, Subject.SubjectTitle, Classifications.Title AS ClassificationTitle, FromOrganizations_1.Title AS FromTitle, 
                      FromOrganizations.Title AS ToTitle
FROM         Letter INNER JOIN
                      Secretariats ON Letter.SecretariatID = Secretariats.SecID INNER JOIN
                      LetterTypes ON Letter.Letter_Type = LetterTypes.ID INNER JOIN
                      FromOrganizations ON Letter.FromOrgID = FromOrganizations.ID INNER JOIN
                      FromOrganizations FromOrganizations_1 ON Letter.ToOrgID = FromOrganizations_1.ID INNER JOIN
                      Classifications ON Letter.ClassificationID = Classifications.ID LEFT OUTER JOIN
                      Subject ON Letter.SubjectID = Subject.SubjectID
WHERE     (Letter_Type=@Letter_Type or @Letter_Type=0) and (Letter.UserMemo like '%'+@UserMemo+'%')  
/*union 
SELECT   Letter.LetterID,letter.Letter_Type, Letter.IndicatorID, Letter.MYear, Secretariats.SecTitle, LetterTypes.Title AS LetterType, Letter.IncommingNO,
                      Letter.Incommingdate, Letter.Memo, Letter.AttachTitle, Letter.RetroactionNo, Letter.UserMemo, Letter.RegistrationDate, Letter.FollowLetterNo, 
                      Letter.SubjectDescription, Subject.SubjectTitle, Classifications.Title AS ClassificationTitle, FromOrganizations_1.Title AS FromTitle, 
                      FromOrganizations.Title AS ToTitle
FROM         Letter INNER JOIN
                      Secretariats ON Letter.SecretariatID = Secretariats.SecID INNER JOIN
                      LetterTypes ON Letter.Letter_Type = LetterTypes.ID INNER JOIN
                      FromOrganizations ON Letter.FromOrgID = FromOrganizations.ID INNER JOIN
                      FromOrganizations FromOrganizations_1 ON Letter.ToOrgID = FromOrganizations_1.ID INNER JOIN
                      Classifications ON Letter.ClassificationID = Classifications.ID LEFT OUTER JOIN
                      Subject ON Letter.SubjectID = Subject.SubjectID
WHERE     usermemo like '%-%' and 
@usermemo between ltrim(rtrim(substring(UserMemo,1,charindex('-',usermemo)-1))) and  ltrim(rtrim(substring(UserMemo,charindex('-',usermemo)+1,100)))
and (Letter_Type=@Letter_Type or @Letter_Type=0) 
*/

GO
/* get_Letter_ByIndicator]    Script Date: 01/06/2010 00:21:58 */
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO









CREATE PROCEDURE [dbo].[get_Letter_ByIndicator]
	(@IndicatorID 	[int],
	 @MYear 	[tinyint],
	 @SecretariatID 	[tinyint],
	 @Letter_Type 	[tinyint],
	 @letterformat 	[tinyint])

AS 
SELECT     FromOrganizations.Title AS FromorgTitle, FromOrganizations_1.Title AS ToorgTitle,
 Letter.LetterID, Letter.IncommingNO, Letter.Incommingdate,Letter.Memo, Letter.RegistrationDate
FROM         Letter INNER JOIN
                      FromOrganizations ON Letter.FromOrgID = FromOrganizations.ID INNER JOIN
                      FromOrganizations FromOrganizations_1 ON Letter.ToOrgID = FromOrganizations_1.ID
WHERE 
	( [IndicatorID]	 = @IndicatorID AND
	 [MYear]	 = @MYear AND
	 [SecretariatID]	 = @SecretariatID AND
	 [Letter_Type]	 = @Letter_Type AND
	 [letterformat]	 = @letterformat)




 

GO
/* Get_Letter_PDF]    Script Date: 01/06/2010 00:21:58 */
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO







create procedure [dbo].[Get_Letter_PDF](@LetterID int)
as
select top 1 *
from  letterdata
where LetterID=@LetterID  
and Extention=5




 

GO
/* get_letter_To_Transfer]    Script Date: 01/06/2010 00:21:59 */
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO



CREATE procedure [dbo].[get_letter_To_Transfer]
@fromSecID int,
@ToSecID int,
@FromDate char(10),
--@SentLetters bit,
--@all_letters bit,
@maxSize int
as

/*
if @all_letters=1 and @SentLetters=1 

SELECT   l.*,1 SentType 
FROM ReCommites RC 
INNER JOIN Letter l ON RC.LetterID = L.LetterID
where l.SecretariatID=@FromSecID  and Registrationdate >=@FromDate AND (Rc.Proceeded = 0) and 
Rc.OrgID in (
select orgid 
from UserSecretariats 
INNER JOIN  Users ON UserSecretariats.UserId = Users.Id
WHERE     (UserSecretariats.SecId = @ToSecID) AND (Users.DefualtSecretariatID = @fromSecID))

union

select  l.*,2 SentType 
from Letter l
where SecretariatID=@ToSecID and letterFormat=2 and letter_type=1 and  sendstatus=3
and Registrationdate >=@FromDate  

else

if @all_letters=1  AND @SentLetters=0


SELECT   l.*,1 SentType 
FROM ReCommites RC 
INNER JOIN Letter l ON RC.LetterID = L.LetterID
where l.SecretariatID=@FromSecID  and Registrationdate >=@FromDate AND (Rc.Proceeded = 0) and 
Rc.OrgID in (
select orgid 
from UserSecretariats 
INNER JOIN  Users ON UserSecretariats.UserId = Users.Id
WHERE     (UserSecretariats.SecId = @ToSecID) AND (Users.DefualtSecretariatID = @fromSecID))



if  @SentLetters=1 AND @all_letters=0*/

select  l.*,2 SentType 
from Letter l
where SecretariatID=@ToSecID and letterFormat=2 and letter_type=1 and  sendstatusid=2
and Registrationdate >=@FromDate  













GO
/* Get_LetterAbstract]    Script Date: 01/06/2010 00:21:59 */
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO



CREATE PROCEDURE [dbo].[Get_LetterAbstract]
	@LetterID int

AS
SELECT     IndicatorID, IncommingNO, Incommingdate, RegistrationDate, Memo
FROM         Letter
WHERE 
	LetterID=@LetterID






GO
/* Get_LetterAction_By_LetterID]    Script Date: 01/06/2010 00:21:59 */
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[Get_LetterAction_By_LetterID]
	@LetterID int
AS
BEGIN
	SET NOCOUNT ON;
SELECT     LetterID, LatestActionTypeID, LatestActionReason
FROM         Letter
WHERE     (LetterID = @LetterID)
END


GO
/* Get_LetterAttachment]    Script Date: 01/06/2010 00:21:59 */
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE Procedure [dbo].[Get_LetterAttachment]
@letterID int 
as

SELECT     LetterData.LetterDataID, Extention.ExtentionTitle, Extention.Extention, LetterData.PageNumber, LetterData.Description
FROM       LetterData 
INNER JOIN  Extention ON LetterData.extention = Extention.ExtentionID
WHERE LetterID=@LetterID





GO
/* Get_LetterData_by_LetterDataID]    Script Date: 01/06/2010 00:21:59 */
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO




create proc [dbo].[Get_LetterData_by_LetterDataID](@LetterDataID int )
as
SELECT     LetterDataID, Image
FROM        LetterData
WHERE     (LetterDataID = @LetterDataID)






GO
/* Get_LetterData_by_LetterID]    Script Date: 01/06/2010 00:21:59 */
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE proc [dbo].[Get_LetterData_by_LetterID](@LetterID int)

as
SELECT      letterid,LetterDataID, LetterData.Extention, description
FROM LetterData left JOIN
      Extention ON LetterData.extention = Extention.ExtentionID
WHERE     (Extention.IsSystem = 0) AND (LetterData.LetterID = @LetterID)



GO
/* Get_LetterdataExtention]    Script Date: 01/06/2010 00:21:59 */
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE procedure [dbo].[Get_LetterdataExtention](@LetterID int,@result tinyint output)
as 
set @result=0
SELECT     top 1 @result=extention
FROM         LetterData
WHERE     LetterID=@LetterID and extention in (1,2)

GO
/* Get_LetterDataIDs]    Script Date: 01/06/2010 00:21:59 */
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO



CREATE proc [dbo].[Get_LetterDataIDs](@SecretariatID int, @myear tinyint)
as
SELECT     LetterData.LetterDataID  
FROM         LetterData 
INNER JOIN       Letter ON LetterData.LetterID = Letter.LetterID
WHERE     (Letter.SecretariatID = @SecretariatID) AND (Letter.MYear = @myear)









GO
/* Get_letterHistory_by_LetterID]    Script Date: 01/06/2010 00:21:59 */
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE procedure [dbo].[Get_letterHistory_by_LetterID](@LetterID int )
as 
declare @MainLetterID int

select @MainLetterID=MainLetterID
from letterRelation
where SubLetterid=@letterid

select 
     Letter.LetterID, Secretariats.secTitle,Letter.IndicatorID,  Letter.IncommingNO,Letter.IncommingDate,  Letter.Memo, sender.Title AS SenderTitle, 
                      Deliver.Title AS DeliverTitle,LetterTypes.Title LetterTypeTitle,LetterRecommites,registrationdate,CenterNo,CenterDate
from letterRelation   
 inner join letter on letter.letterid=letterRelation.subletterid
 left  JOIN           FromOrganizations sender ON Letter.ToOrgID = sender.ID
left JOIN     FromOrganizations Deliver ON Letter.FromOrgID = Deliver.ID 
Left join LetterTypes on LetterTypes.ID=Letter.Letter_type 
inner join Secretariats on Secretariats.Secid=Letter.SecretariatID
where MainLetterID=@MainLetterID



GO
/* get_LetterID_ByInCommingNo]    Script Date: 01/06/2010 00:21:59 */
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


CREATE PROCEDURE [dbo].[get_LetterID_ByInCommingNo]
	(@InCommingNo nvarchar(50),@Myear tinyint,@LetterFormat tinyint,@SecretariatID smallint,@LetterID  int output)
AS 
set @letterid=0

SELECT     top 1 @LetterID=LetterID
FROM         Letter
WHERE     InCommingNo =@InCommingNo 
 and LetterFormat=@LetterFormat  and( Myear in (@Myear,@myear-1) ) and 
( SecretariatID=@SecretariatID or @SecretariatID=0)
order by Myear desc

 


GO
/* get_LetterID_ByIndicatorid]    Script Date: 01/06/2010 00:21:59 */
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO







CREATE PROCEDURE [dbo].[get_LetterID_ByIndicatorid]
	(@indicatrid int,@Myear tinyint,@LetterFormat tinyint,@letter_type tinyint,@SecretariatID smallint,@LetterID  int output)
AS 
set @letterID=0
SELECT    top 1 @LetterID=LetterID
from letter
where  
(indicatorid=@indicatrid  or @indicatrid=0) and 
(LetterFormat=@LetterFormat or @letterFormat=0)  and 
(letter_type=@letter_type  or @letter_type=0) and 
( SecretariatID=@SecretariatID or @secretariatid=0)
and(Myear=@Myear or Myear=@myear-1 or @myear=0)
order by Myear desc





GO
/* get_LetterID_ByRetroActionNo]    Script Date: 01/06/2010 00:21:59 */
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO











CREATE PROCEDURE [dbo].[get_LetterID_ByRetroActionNo]
	(@RetroActionNo nvarchar(50),@Myear tinyint,@LetterFormat tinyint,@SecretariatID smallint,@LetterID  int output)
AS 
set @letterid=0
SELECT     top 1 @LetterID=LetterID
FROM         Letter
WHERE     (RetroActionNo =@RetroActionNo)
 and myear=@Myear  and LetterFormat=@LetterFormat  and 
( SecretariatID=@SecretariatID or @SecretariatID=0)



GO
/* Get_LetterJpgFile]    Script Date: 01/06/2010 00:21:59 */
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE procedure [dbo].[Get_LetterJpgFile](@LetterID int)  
as  
Select *  
from letterdata  
where LetterID = @LetterID  /* and PageNumber= @pagenumber  */
And Extention=1  



GO
/* get_LetterMemo_ByID]    Script Date: 01/06/2010 00:21:59 */
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO











CREATE PROCEDURE [dbo].[get_LetterMemo_ByID]
	(@LetterID  int,@memo nvarchar(500) output)
AS 
SELECT     @memo=Memo
FROM         Letter
WHERE     (LetterID =@LetterID)



 

GO
/* Get_LetterTifFile]    Script Date: 01/06/2010 00:21:59 */
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO






create procedure [dbo].[Get_LetterTifFile](@LetterID int)
as
select *
from letterdata
where LetterID=@LetterID
and Extention=2




GO
/* Get_LetterWordFile]    Script Date: 01/06/2010 00:21:59 */
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


CREATE PROCEDURE [dbo].[Get_LetterWordFile](@LetterID int) AS

SELECT     *
FROM         LetterData
WHERE     (extention = 3) AND (LetterID = @LetterID)




 

GO
/* Get_LifeTip_byUserid]    Script Date: 01/06/2010 00:21:59 */
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE Procedure [dbo].[Get_LifeTip_byUserid](@Userid int,@lifeTip nvarchar(255) output)

as
declare @DayofYear int,@dw int, @n int,@u int,@j int,@k int,@lifeTipID int


exec get_DayID_InWeek @dw output
if @dw=6
 begin
  set @lifeTip=''
  return
 end


set @DayofYear=6*(datepart(dy,getdate())/7)+@dw

select @n=count(*) from LifeTips
select @u=10--count(*) from users
select @j=count(*) from users where id<=@userid

set @k=@n/@u
set @lifeTipID= (((@DayofYear+@j)%(@k+1))*@u+@DayofYear%@u+1)%@n+1

select  @lifeTip=Title from Lifetips where id=@lifeTipID

GO
/* get_MaxPage_ByLetterID]    Script Date: 01/06/2010 00:21:59 */
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO










CREATE procedure [dbo].[get_MaxPage_ByLetterID](@extention tinyint,@letterid int,@PageNumber int output)
as

SELECT    @PageNumber=isnull(max(PageNumber),0)
FROM         LetterData
WHERE     (extention = @extention) AND (LetterID = @LetterID)



 

GO
/* get_MaxReferenceDataID_By_TableID]    Script Date: 01/06/2010 00:21:59 */
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO



create proc [dbo].[get_MaxReferenceDataID_By_TableID]
@tableID int,@maxDataID int output
as
SELECT     @maxDataID=isnull(MAX(DataID)+1,1)
FROM         ReferenceTableData
WHERE     (TableID = @tableID)


 

GO
/* get_NewOrgCode]    Script Date: 01/06/2010 00:21:59 */
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO







CREATE PROCEDURE [dbo].[get_NewOrgCode]
	(@ParentID [int] ,@newCode nvarchar(50) output)
AS 
declare @ParentCode nvarchar(50),@maxCode Nvarchar(50)

select @ParentCode=Code from Fromorganizations where id=@Parentid
select @maxCode=max(code) from  Fromorganizations where Parentid=@Parentid

if @maxCode is not null and isnumeric(@maxcode)=1
    set @newCode=cast(cast(@maxcode as int)+1 as nvarchar(50))
    
else
set @newCode=@parentCode+'01'

set @newcode=Replace(ltrim(rtrim(@newCode)),' ','0')



GO
/* get_NewOrgID]    Script Date: 01/06/2010 00:21:59 */
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO




CREATE PROCEDURE [dbo].[get_NewOrgID]
	(@isInner bit, @NewID [int] output)
AS 
 select @NewID=isnull(max(CAST(CODE AS float)),0)+1  from  FromOrganizations
WHERE ISNUMERIC(CODE)=1
 and replace(code,' ','') not in ('.','-')



GO
/* get_Nowdate]    Script Date: 01/06/2010 00:21:59 */
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO






CREATE procedure [dbo].[get_Nowdate](@date datetime output )
as
select @date=getdate()






GO
/* get_NowTime]    Script Date: 01/06/2010 00:21:59 */
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


CREATE procedure [dbo].[get_NowTime] (@time char(5)output)
as
select @time=case when datepart(hour,getdate())<10 then '0'+convert(char(1),datepart(hour,getdate()))
   else convert(char(2),datepart(hour,getdate())) end +':' + convert(char(2),datepart(minute,getdate()))






 

GO
/* get_OrgPreCodeByID]    Script Date: 01/06/2010 00:22:00 */
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[get_OrgPreCodeByID]
	(@ID 	[int],@PreCode nvarchar(50) output)

AS 
select @PreCode=PreCode
 from FromOrganizations
 WHERE ( [ID]	 = @ID)



 

GO
/* get_OrgTitleByID]    Script Date: 01/06/2010 00:22:00 */
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO










CREATE PROCEDURE [dbo].[get_OrgTitleByID]
	(@ID 	[int],@title nvarchar(250) output)

AS 
select @title=title
 from FromOrganizations
 WHERE ( [ID]	 = @ID)


 

GO
/* Get_RecommiteJpgFile]    Script Date: 01/06/2010 00:22:00 */
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO









create procedure [dbo].[Get_RecommiteJpgFile](@RecommiteID  int)
as
select top 1 *
from Recommitedata
where RecommiteID=@RecommiteID
and Extention=1




 

GO
/* get_ReferenceTable]    Script Date: 01/06/2010 00:22:00 */
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO




create procedure [dbo].[get_ReferenceTable]
@like  nvarchar(100)
as
SELECT     Tables.*
FROM         Tables
WHERE     (TableType = 4) and description like '%'+@like+'%'





GO
/* get_ReferenceTableData_by_tableID]    Script Date: 01/06/2010 00:22:00 */
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


create  procedure [dbo].[get_ReferenceTableData_by_tableID]
@tableID int
as
SELECT     *
FROM         ReferenceTableData
WHERE     (TableID = @tableID)





GO
/* Get_Related_Letters]    Script Date: 01/06/2010 00:22:00 */
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO





CREATE Procedure [dbo].[Get_Related_Letters](@LetterID int )
as
CREATE TABLE #RelatedLetters (
	[Id]int identity(1,1)  NOT NULL ,
	[ParentID] [int] NOT NULL ,
	[LetterID] [int] NOT NULL ,
        LetterType tinyint ,
        RetroactionNo nvarchar(50),
        FollowLetterNo nvarchar(50), 
        Done tinyint 
) ON [PRIMARY]

insert into #RelatedLetters(ParentID,LetterID,LetterType,FollowLetterNo,RetroactionNo,Done)
select 0,LetterID,Letter_type,isnull(ltrim(FollowLetterNo),''),isnull(ltrim(RetroactionNo),''),0
from letter
where letterid=@letterid

while exists (select * from #RelatedLetters where done=0)
 begin
update #RelatedLetters
set done=2
where done=0

insert into #RelatedLetters
select id ,letter.letterid,letter.letter_type,isnull(ltrim(FollowLetterNo),''),isnull(ltrim(RetroactionNo),''),0
from letter,#RelatedLetters r
where done=2 and   
r.letter_type=1 and letter.letter_type=1 and 
 letter.incommingno=r.FollowLetterNo

insert into #RelatedLetters
select id ,letter.letterid,letter.letter_type,isnull(ltrim(FollowLetterNo),''),isnull(ltrim(RetroactionNo),''),0
from letter,#RelatedLetters r
where done=2 and   
r.letter_type=2 and letter.letter_type=2 and 
 letter.indicatorid=r.FollowLetterNo



insert into #RelatedLetters
select id ,letter.letterid,letter.letter_type,isnull(ltrim(FollowLetterNo),''),isnull(ltrim(RetroactionNo),''),0
from letter,#RelatedLetters r
where done=2 and   
r.letter_type=1 and letter.letter_type=2 and 
 letter.indicatorid=r.RetroactionNo



insert into #RelatedLetters
select id ,letter.letterid,letter.letter_type,isnull(ltrim(FollowLetterNo),''),isnull(ltrim(RetroactionNo),''),0
from letter,#RelatedLetters r
where done=2 and   
r.letter_type=2 and letter.letter_type=1 and 
 letter.incommingno=r.RetroactionNo

update #RelatedLetters
set done=1
where done=2
end

SELECT     r.*,IndicatorID, MYear,  IncommingNO, Incommingdate, Memo,  
                      Letter.LetterRecommites, t.Title AS FromorgTitle, FromOrganizations.Title AS ToOrgTitle into tempp
FROM       #RelatedLetters r 
inner join Letter            on letter.letterid=r.letterid 
INNER JOIN FromOrganizations ON Letter.FromOrgID = FromOrganizations.ID 
INNER JOIN FromOrganizations t ON Letter.ToOrgID = t.ID


 

GO
/* get_Subject]    Script Date: 01/06/2010 00:22:00 */
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO






create procedure [dbo].[get_Subject]
@like  nvarchar(100)
as
SELECT     *
FROM         Subject
WHERE    subjectTitle like '%'+@like+'%'


GO
/* Get_sys_AppMessage]    Script Date: 01/06/2010 00:22:00 */
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO






create PROCEDURE [dbo].[Get_sys_AppMessage]
	(@ID 	[int])

AS select * from  [dbo].[sys_AppMessage] 

WHERE 
	( [ID]	 = @ID)



 

GO
/* Get_tmp_LetterDataIDs]    Script Date: 01/06/2010 00:22:00 */
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO











CREATE proc [dbo].[Get_tmp_LetterDataIDs]
as
SELECT     LetterDataID  
FROM         yeganeh_tmp_db.dbo.LetterData



GO
/* get_UserExtention_by_UserID]    Script Date: 01/06/2010 00:22:00 */
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


CREATE procedure [dbo].[get_UserExtention_by_UserID] (@userID int )
as

SELECT UserExtention.*
FROM   UserExtention
WHERE (UserId = @UserId)
      and extentionid in (SELECT ExtentionID FROM Extention WHERE IsSystem = 0)








GO
/* get_userfields_by_tableID]    Script Date: 01/06/2010 00:22:00 */
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO



CREATE procedure [dbo].[get_userfields_by_tableID]
@tableID int
as
SELECT     Fields.*
FROM         Fields
WHERE     (Fields.TableID = @tableID)



 

GO
/* Get_UserMessageCount]    Script Date: 01/06/2010 00:22:00 */
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO

-- 86 -8- 13


CREATE  procedure [dbo].[Get_UserMessageCount](@to int,@count int output)
as
SELECT   @count=  COUNT(*) 
FROM         UserMessage
WHERE     (To_ = @to) and status=1


GO
/* Get_UserSecretariat_Tree]    Script Date: 01/06/2010 00:22:00 */
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


CREATE proc [dbo].[Get_UserSecretariat_Tree] @userid int
as
Declare @aCount int
CREATE TABLE dbo.#M
	(ID int NOT NULL IDENTITY (0, 1),
	SecID int NULL,
	Title nVarchar(100) NULL,
	ParentID int NULL,
	Proceed bit NULL ,
        Tag int NULL )  ON [PRIMARY]
insert into #m(SecID , Title , ParentID , Proceed , Tag)
Select 0 as SecID , 'کارتابل' as Title ,-1 as ParentID ,0 as Proceed , 1 as Tag

insert into #m(SecID , Title , ParentID , Proceed,Tag)
Select SecID , SecTitle as Title ,0 as ParentID,0 as Proceed ,  10 as Tag
From Secretariats
where secid in (SELECT SecId FROM UserSecretariats WHERE  UserId = @userid)

Select @aCount = Count(SecID)+1
From Secretariats
where secid in (SELECT SecId FROM UserSecretariats WHERE  UserId = @userid)

insert into #m(SecID , Title , ParentID , Proceed , Tag)
Select 0 as SecID , 'ارسالهاي بايگاني نشده' as Title ,-1 as ParentID ,1 as Proceed , 2 as Tag

Set @aCount = @aCount+1
insert into #m(SecID , Title , ParentID , Proceed , Tag)
Select 0 as SecID , 'تمامي ارسال شده ها' as Title ,-1 as ParentID ,1 as Proceed , 3 as Tag

insert into #m(SecID , Title , ParentID , Proceed , Tag)
Select SecID , SecTitle as Title ,@aCount as ParentID , 1 as Proceed , 30 as Tag
From Secretariats  
where secid in (SELECT SecId FROM UserSecretariats WHERE  UserId = @userid)

Select ID , SecID , LTrim(RTrim(Title))as Title , ParentID , Proceed , Tag 
from #M
Order by ID



GO
/* get_userTable]    Script Date: 01/06/2010 00:22:00 */
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO



create procedure [dbo].[get_userTable]
@like  nvarchar(100)
as
SELECT     Tables.*
FROM         Tables
WHERE     (TableType = 3) and description like '%'+@like+'%'

 

GO
/* GetLastFormOrderByLetterID]    Script Date: 01/06/2010 00:22:00 */
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
Create Procedure [dbo].[GetLastFormOrderByLetterID]
@LetterID int,@formOrder tinyint out
as
select @formOrder=max(FormOrder)
from dbo.LetterFieldValue
where letterid=@letterid

set @formOrder=isnull(@formOrder,0)


GO
/* GetLetterTemplate_HeaderID]    Script Date: 01/06/2010 00:22:00 */
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


CREATE proc [dbo].[GetLetterTemplate_HeaderID]
@letterid int
as
select LetterID,TemplateId,headerid,FromOrgID,fromorganizations.PreCode
from letter
inner join fromorganizations on fromorganizations.id=letter.fromorgid
where letterid=@letterid









GO
/* GetList]    Script Date: 01/06/2010 00:22:00 */
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO






CREATE PROCEDURE [dbo].[GetList](@ListID int)
 AS

SELECT     KeyValue, Title, Notes
FROM         ListItems
where ListID=@ListID
 

GO
/* GetNumberOfLetterAttach]    Script Date: 01/06/2010 00:22:00 */
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create Procedure [dbo].[GetNumberOfLetterAttach](@LetterID int,@number int out)
 AS  
 
SELECT    @number=count( LetterDataID)
FROM         LetterData
WHERE     LetterID=@LetterID and extention>3


set @number=isnull(@number,0)

GO
/* GetRecommiteById]    Script Date: 01/06/2010 00:22:00 */
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

Create Procedure [dbo].[GetRecommiteById]
( @recommiteId int)
AS

select R.*,isnull(FO.Title,Lfo.title) RecommiterTitle
 from Recommites R 
inner join letter L on R.LetterID = L.LetterID 
left join Recommites PR on R.LetterId=PR.LetterId and R.ParentId=PR.ID 
left join dbo.FromOrganizations FO on PR.OrgID=FO.ID --where recommiteId=
left join dbo.FromOrganizations LFO on L.ToOrgID=LFO.ID 
where R.recommiteId=@recommiteId


GO
/* GetUserLogout_status]    Script Date: 01/06/2010 00:22:00 */
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO




CREATE PROCEDURE [dbo].[GetUserLogout_status]
	( @UserID 	[int] , @logout bit output, @isSafeLogout 	bit output)
AS

declare @LogoutTime datetime
set @logout=0
set @isSafeLogout=0
select top 1 @LogoutTime=LogoutTime,@isSafeLogout=isSafeLogout
from UserLoginLogout
where userid=@UserID
order by UserLoginLogoutID desc
if @LogoutTime is null set @logout=1
if @isSafeLogout=1
 set @logout=1
else
 if DATEDIFF(second, @LogoutTime,getdate())>60
 set @logout=1







GO
/* has_PDF]    Script Date: 01/06/2010 00:22:00 */
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[has_PDF]
@LetterID int,@result bit output
AS

if exists(
SELECT     PageNumber
FROM         LetterData
WHERE     LetterID=@LetterID and extention=5)
set @result=1
else
set @result=0



 


GO
/* hassame_orgtitle]    Script Date: 01/06/2010 00:22:01 */
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO


CREATE procedure [dbo].[hassame_orgtitle](@title nvarchar(255),@id int output)
as
set @id=-1
select top 1  @id=id
from fromorganizations
where replace(title,' ','')=replace(@title,' ','')
or   replace(email,' ','')=replace(@title,' ','')

GO
/* Import_LetterData]    Script Date: 01/06/2010 00:22:01 */
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO



CREATE proc [dbo].[Import_LetterData](@LetterDataID int)
as

set identity_insert letterdata on
insert into letterdata(LetterDataID,LetterID,PageNumber,Image,extention)
SELECT    LetterDataID,LetterID,PageNumber,Image,extention
FROM         yeganeh_tmp_db.DBO.LetterData
where  LetterDataID=@LetterDataID
and not exists (select letterdataid from letterdata where letterdataid=@LetterDataID)
set identity_insert letterdata off



GO
/* insert_Actions]    Script Date: 01/06/2010 00:22:01 */
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO




CREATE PROCEDURE [dbo].[insert_Actions]
	(@FormTag 	[tinyint],
	 @ID 	[int],
	 @Title 	[nvarchar](50))

AS INSERT INTO [dbo].[Actions] 
	 ( [FormTag],
	 [ID],
	 [Title]) 
 
VALUES 
	( @FormTag,
	 @ID,
	 @Title)





 

GO
/* insert_All_ReCommites]    Script Date: 01/06/2010 00:22:01 */
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO





CREATE PROCEDURE [dbo].[insert_All_ReCommites]
AS INSERT INTO [dbo].[ReCommites] 
	 (
	 [LetterID],
	 [ID],
	 [Type],
	 [ParentId],
	 [OrgID],
	 [Paraph],
	 [RecommiteDate],
	 [UserID],
	 [IsCopy],
	 [Proceeded]) 
select letterid,1,3,0,fromorgid,'',registrationdate,userid,0,0 
from letter
where letterid not in (select distinct letterid from recommites)




GO
/* insert_ArchiveFolder]    Script Date: 01/06/2010 00:22:01 */
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO








CREATE PROCEDURE [dbo].[insert_ArchiveFolder]
	(@FolderID 	[int] output,
	 @ParentFolderID 	[int],
	 @Title 	[nvarchar](100),
	 @UserID 	[int],
	 @Notes 	[nvarchar](500),
              @Place nvarchar(100))

AS INSERT INTO [dbo].[ArchiveFolder] 
	 ( 
	 [ParentFolderID],
	 [Title],
	 [UserID],
	 [Notes],
                Place) 
 
VALUES 
	(
	 @ParentFolderID,
	 @Title,
	 @UserID,
	 @Notes,
@Place )

select @folderid= @@identity







GO
/* insert_Extention]    Script Date: 01/06/2010 00:22:01 */
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[insert_Extention]
@ExtentionID int 
 AS


delete UserExtention where ExtentionID=@ExtentionID
INSERT INTO UserExtention (UserId, ExtentionID) select id,@ExtentionID from users





GO
/* insert_FieldAccess]    Script Date: 01/06/2010 00:22:01 */
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE procedure [dbo].[insert_FieldAccess]
as

INSERT INTO FieldAccess ([FieldID] ,[UserID] ,[AccessTypeID])
SELECT fields.id,users.id,3
FROM Fields,Users
where tableid in (SELECT TableID FROM Tables WHERE TableType = 3)
and str(fields.id)+'m'+str(users.id) not in (select str(fieldid)+'m'+str(userid) from FieldAccess)


GO
/* insert_FieldAccess_by_TableID]    Script Date: 01/06/2010 00:22:01 */
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO

CREATE procedure [dbo].[insert_FieldAccess_by_TableID]
@TableID int
as

INSERT INTO FieldAccess ([FieldID] ,[UserID] ,[AccessTypeID])
SELECT fields.id,users.id,3
FROM Fields,Users
where tableid=@TableID
and str(fields.id)+'m'+str(users.id) not in (select str(fieldid)+'m'+str(userid) from FieldAccess)

GO
/* insert_Letter]    Script Date: 01/06/2010 00:22:01 */
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO




CREATE PROCEDURE [dbo].[insert_Letter]
	(@IndicatorID 	[int],
	 @MYear 	[tinyint],
	 @SecretariatID 	[tinyint],
	 @Letter_Type 	[tinyint],
	 @letterformat 	[tinyint],
	 @IncommingNO 	[nvarchar](50),
	 @Incommingdate 	[nvarchar](10),
	 @CenterNo 	[nvarchar](50),
	 @CenterDate 	[char](10),
	 @FromOrgID 	[int],
	 @ToOrgID 	[int],
	 @Signerid 	[nvarchar](50),
	 @ClassificationID 	[tinyint],
	 @UrgencyID 	[smallint],
	 @Memo 	[nvarchar](500),
	 @AttachTitle 	[nvarchar](50),
	 @NumberOfAttachPages 	[smallint],
	 @NumberOfPage 	[tinyint],
	 @ReceiveTypeID 	[tinyint],
	 @UserID 	[int],
	 @RetroactionNo 	[nvarchar](50),
	 @UserMemo 	[nvarchar](255),
	 @RegistrationDate 	[char](10),
	 @RegistrationTime 	[varchar](5),
	 @FollowLetterNo 	[nvarchar](50),
	 @ToStaffer 	[nvarchar](50),
	 @SentLetterID 	[int],
	 @TemplateID 	[int],
	 @HeaderID 	[int],
	 @LetterRecommites 	[nvarchar](500),
	 @FromStaffer 	[nvarchar](50),
	 @Finalized 	[bit],
	 @SendStatusID 	[tinyint],
@Exists bit output)


AS 
if exists (select *
from letter WHERE
	[IndicatorID]	 = @IndicatorID AND
	 [MYear]	 = @MYear AND
	 [SecretariatID] = @SecretariatID AND
	 [Letter_Type]	 = @Letter_Type AND
	 [letterformat]	 = @letterformat)
  set @Exists=1
 else
  set @Exists=0


if @Exists=0 
INSERT INTO [dbo].[Letter] 
	([IndicatorID],	 [MYear],	         [SecretariatID],[Letter_Type],	 [letterformat],
 	 [IncommingNO],	 [Incommingdate],	 [CenterNo],	 [CenterDate],	 [FromOrgID],	 [ToOrgID],
	 [Signerid],	 [ClassificationID],	 [UrgencyID],	 [Memo],	 [AttachTitle],	 [NumberOfAttachPages],
	 [NumberOfPage], [ReceiveTypeID],	 [UserID],	 [RetroactionNo],[UserMemo],
	 [RegistrationDate],[RegistrationTime],	 [FollowLetterNo],[ToStaffer],	 [SentLetterID],
	 [TemplateID],	 [HeaderID],	 [LetterRecommites],	 [FromStaffer],	 [Finalized],	 [SendStatusID]) 
 
VALUES 
	(@IndicatorID,	 @MYear,	         @SecretariatID, @Letter_Type,	 @letterformat,
	 @IncommingNO,	 @Incommingdate,	 @CenterNo,	 @CenterDate,	 @FromOrgID,	 @ToOrgID,
	 @Signerid,	 @ClassificationID,	 @UrgencyID,	 @Memo,	 @AttachTitle,	 @NumberOfAttachPages,
	 @NumberOfPage,	 @ReceiveTypeID,	 @UserID,	 @RetroactionNo,	 @UserMemo,
	 @RegistrationDate,	 @RegistrationTime,	 @FollowLetterNo,	 @ToStaffer,	 @SentLetterID,
	 @TemplateID,	 @HeaderID,	 @LetterRecommites,	 @FromStaffer,	 @Finalized,	 @SendStatusID)





GO
/* insert_Letter_all]    Script Date: 01/06/2010 00:22:01 */
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO



CREATE PROCEDURE [dbo].[insert_Letter_all]
	(@IndicatorID 	[int],	 @MYear 	[tinyint],	 @SecretariatID 	[tinyint],
	 @Letter_Type 	[tinyint],	 @letterformat 	[tinyint],	 @IncommingNO 	[nvarchar](50),
	 @Incommingdate 	[nvarchar](10),	 @CenterNo 	[nvarchar](50),	 @CenterDate 	[char](10),
	 @FromOrgID 	[int],	 @ToOrgID 	[int],	 @Signerid 	[nvarchar](50),
	 @ClassificationID 	[tinyint],	 @UrgencyID 	[smallint],	 @Memo 	[nvarchar](500),
	 @AttachTitle 	[nvarchar](50),	 @NumberOfAttachPages 	[smallint],	 @NumberOfPage 	[tinyint],
	 @ReceiveTypeID 	[tinyint],	 @UserID 	[int],	 @RetroactionNo 	[nvarchar](50),
	 @UserMemo 	[nvarchar](255),	 @RegistrationDate 	[char](10), @RegistrationTime 	[varchar](5),
	 @FollowLetterNo 	[nvarchar](50),	 @ToStaffer 	[nvarchar](50),	 @SentLetterID 	[int],
	 @TemplateID 	[int],	 @HeaderID 	[int],	 @LetterRecommites 	[nvarchar](500),
	 @FromStaffer 	[nvarchar](50),	 @Finalized 	[bit],	 @SendStatusID 	[tinyint],
@Exists bit output,
@LetterID int output)


AS 
if exists (select *
from letter WHERE 
	[IndicatorID]	 = @IndicatorID AND
	 [MYear]	 = @MYear AND
	 [SecretariatID] = @SecretariatID AND
	 [Letter_Type]	 = @Letter_Type AND
	 [letterformat]	 = @letterformat)
  set @Exists=1
 else
  set @Exists=0


if @Exists=0 
INSERT INTO .[dbo].[Letter] 
	([IndicatorID],	 [MYear],	         [SecretariatID],[Letter_Type],	 [letterformat],
 	 [IncommingNO],	 [Incommingdate],	 [CenterNo],	 [CenterDate],	 [FromOrgID],	 [ToOrgID],
	 [Signerid],	 [ClassificationID],	 [UrgencyID],	 [Memo],	 [AttachTitle],	 [NumberOfAttachPages],
	 [NumberOfPage], [ReceiveTypeID],	 [UserID],	 [RetroactionNo],[UserMemo],
	 [RegistrationDate],[RegistrationTime],	 [FollowLetterNo],[ToStaffer],	 [SentLetterID],
	 [TemplateID],	 [HeaderID],	 [LetterRecommites],	 [FromStaffer],	 [Finalized],	 [SendStatusID])
 
VALUES 
	(@IndicatorID,	 @MYear,	         @SecretariatID, @Letter_Type,	 @letterformat,
	 @IncommingNO,	 @Incommingdate,	 @CenterNo,	 @CenterDate,	 @FromOrgID,	 @ToOrgID,
	 @Signerid,	 @ClassificationID,	 @UrgencyID,	 @Memo,	 @AttachTitle,	 @NumberOfAttachPages,
	 @NumberOfPage,	 @ReceiveTypeID,	 @UserID,	 @RetroactionNo,	 @UserMemo,
	 @RegistrationDate,	 @RegistrationTime,	 @FollowLetterNo,	 @ToStaffer,	 @SentLetterID,
	 @TemplateID,	 @HeaderID,	 @LetterRecommites,	 @FromStaffer,	 @Finalized,	 @SendStatusID)

select @LetterID=Letterid 
from letter WHERE 
	[IndicatorID]	 = @IndicatorID AND
	 [MYear]	 = @MYear AND
	 [SecretariatID] = @SecretariatID AND
	 [Letter_Type]	 = @Letter_Type AND
	 [letterformat]	 = @letterformat



GO
/* insert_LetterArchiveFolder]    Script Date: 01/06/2010 00:22:01 */
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


CREATE PROCEDURE [dbo].[insert_LetterArchiveFolder]
(@LetterArchiveID 	[int] output,
	 @ArchiveFolderID 	[int],
	 @LetterID 	[int],
	 @ArchiveDate 	[char](10),
	 @Page 	[int],
	 @ArchiveNotes 	[nvarchar](50),@UserID int)

AS INSERT INTO [dbo].[LetterArchiveFolder]
	 ( 
	 [ArchiveFolderID],
	 [LetterID],
	 [ArchiveDate],
	 [Page],
	 [ArchiveNotes],UserID) 
 
VALUES 
	(
	 @ArchiveFolderID,
	 @LetterID,
	 @ArchiveDate,
	 @Page,
	 @ArchiveNotes,@UserID)

set @LetterArchiveID=@@identity



GO
/* insert_LetterData]    Script Date: 01/06/2010 00:22:02 */
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[insert_LetterData]
	(@LetterDataID 	[int] output,
	 @LetterID 	[int],
	 @PageNumber 	[tinyint],
	 @extention 	[tinyint])

AS INSERT INTO [dbo].[LetterData] 
	 (  [LetterID],
	 [PageNumber],
	 [extention]) 
 
VALUES 
	( @LetterID,
	 @PageNumber,
	 @extention)

set  @LetterDataID=@@identity



GO
/* insert_LetterText]    Script Date: 01/06/2010 00:22:02 */
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO



CREATE PROCEDURE [dbo].[insert_LetterText]
	(@LetterID int,
	 @TypeText   	ntext)
AS 
if exists(select * from [dbo].[LetterText] 
 WHERE     (LetterID = @LetterID))
update LetterText 
set TypeText=@TypeText
 WHERE     (LetterID = @LetterID)
else
INSERT INTO [dbo].[LetterText] 
	 ( [LetterID],
	 [TypeText]) 
 
VALUES 
	( @LetterID,
	 @TypeText  )






GO
/* insert_newActionsAccess]    Script Date: 01/06/2010 00:22:02 */
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO



CREATE PROCEDURE [dbo].[insert_newActionsAccess]
AS 

delete from ActionsAccess where str(formtag)+str(ActionID) not in (select str(formtag)+str(ID) from 
actions)

INSERT INTO [dbo].[ActionsAccess] 
	 ( [AccessID],
	 [ActionID],
	 [FormTag],
	 [HasAccess]) 

SELECT     Accesses.ID,  Actions.ID,Actions.FormTag,1 
FROM         Accesses,Actions 
where str(accesses.id)+Str(actions.id) not in 
 (select str(accesses.id)+Str(actionid)  from dbo.ActionsAccess)



GO
/* Insert_ParaphTemplate]    Script Date: 01/06/2010 00:22:02 */
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


Create Procedure [dbo].[Insert_ParaphTemplate]
@UserID int,@Title nvarchar(50),@Paraph nvarchar(500)
as
declare @OrderID tinyint

select @OrderID=max(OrderID)+1 from ParaphTemplate where UserID=@Userid

if @OrderID is null set @OrderID=1

INSERT INTO ParaphTemplate (UserID ,OrderID ,Title,Paraph)
VALUES (@UserID,@OrderID,@Title,@Paraph)


GO
/* insert_ReciveLetter]    Script Date: 01/06/2010 00:22:02 */
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[insert_ReciveLetter]  
 (@letterID integer output,  
  @IndicatorID  int,  
  @MYear  tinyint,  
  @SecretariatID  tinyint,  
  @Letter_Type  tinyint,  
  @letterformat  tinyint,  
  @Memo  nvarchar(500),  
  @UserID  int,  
  @RegistrationDate  char(10),  
  @RegistrationTime  varchar(5),  
  @OrgID int)  
AS  
  
declare @OrgStaff nvarchar(50)  
select @OrgStaff=ResponsibleStaffer  
from dbo.FromOrganizations  
where id=@orgid  
  
INSERT INTO dbo.Letter   
(IndicatorID,  MYear,  SecretariatID,  Letter_Type,  letterformat,  Memo,  UserID,  RegistrationDate,  RegistrationTime,  FromOrgID,ReceiveTypeID/*Ranjbar*/)   
VALUES   
(@IndicatorID,  @MYear,  @SecretariatID,  @Letter_Type,  @letterformat,  @Memo,  @UserID,  @RegistrationDate,  @RegistrationTime,  @OrgID,2)  
  
SET @LetterID=@@Identity  
  
INSERT INTO dbo.ReCommites   (LetterID, ID, Type,  ParentId,  OrgID,  Paraph,  RecommiteDate,  UserID,  IsCopy,  Proceeded,OrgStaff)   
values(@letterid,1,3,0,@orgid,'',@registrationdate,@userid,0,0,@OrgStaff)  


GO
/* insert_ReCommites]    Script Date: 01/06/2010 00:22:02 */
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


CREATE PROCEDURE [dbo].[insert_ReCommites]
	(@LetterID 	[int],
	 @ID 	[smallint],
	 @Type 	[tinyint],
	 @ParentId 	[smallint],
	 @OrgID 	[int],
	 @Paraph 	[nvarchar](500),
	 @RecommiteDate 	[varchar](10),
	 @UserID 	[tinyint],
	 @IsCopy 	[bit],
	 @Proceeded 	[bit],
@RecommiteID int output)

AS

declare @OrgStaff nvarchar(50)
select top 1 @OrgStaff=ResponsibleStaffer	
from dbo.FromOrganizations 
WHERE 	id	 = @OrgID

 INSERT INTO [dbo].[ReCommites] 
	 (
	 [LetterID],
	 [ID],
	 [Type],
	 [ParentId],
	 [OrgID],
	 [Paraph],
	 [RecommiteDate],
	 [UserID],
	 [IsCopy],
	 [Proceeded],
OrgStaff) 
 
VALUES 
	( 
	 @LetterID,
	 @ID,
	 @Type,
	 @ParentId,
	 @OrgID,
	 @Paraph,
	 @RecommiteDate,
	 @UserID,
	 @IsCopy,
	 @Proceeded,
@OrgStaff )

set @RecommiteID=@@identity




GO
/* insert_ToOrganizations]    Script Date: 01/06/2010 00:22:02 */
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


create PROCEDURE [dbo].[insert_ToOrganizations]
	(@Title [nvarchar](100),@id int output)

AS 
declare @code varchar(50)
select @code =max(id)+1
from FromOrganizations

INSERT INTO [FromOrganizations] 
	 ( [Title],	 [ParentID],	 [IsActive],	 [IsInnerOrg],	 [Code]) 
VALUES 	( @Title,	 4,	 1,	 0,	 @code)

set @id=@@identity



GO
/* insert_UserLog]    Script Date: 01/06/2010 00:22:02 */
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO









CREATE PROCEDURE [dbo].[insert_UserLog]
	(@UserID 	[tinyint],
	 @ActionID 	[int],
	 @LetterID	[int])

AS INSERT INTO [dbo].[UserLog] 
	 ( [UserID],
	 [ActionID],
	 [LetterID]) 
 
VALUES
	( @UserID,
	 @ActionID,
	 @LetterID)









GO
/* insert_UserLoginLogout]    Script Date: 01/06/2010 00:22:02 */
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO






CREATE PROCEDURE [dbo].[insert_UserLoginLogout]
	( @UserID 	[int],
	 @IPAddress 	[char](15),
@UserLoginLogoutID int output)

AS 

INSERT INTO [dbo].[UserLoginLogout] 
	 ( [UserID],
	 [IPAddress]) 
 
VALUES 
	(
	 @UserID,
	 @IPAddress)
set @UserLoginLogoutID=@@identity




GO
/* insertReCommites_autoID]    Script Date: 01/06/2010 00:22:02 */
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO



create  PROCEDURE [dbo].[insertReCommites_autoID]
	(@LetterID 	[int],
	 @Type 	[tinyint],
	 @ParentId 	[smallint],
	 @OrgID 	[int],
	 @Paraph 	[nvarchar](500),
	 @RecommiteDate 	[varchar](10),
	 @UserID 	[tinyint],
	 @IsCopy 	[bit])

AS 
declare	 @ID int,@orgstaff nvarchar (50)

select @id=max(id)+1
from recommites
where Letterid=@LetterID

select @orgstaff=ResponsibleStaffer
from fromorganizations
where id=@OrgID

INSERT INTO [ReCommites] 
	 ( [LetterID],
	 [ID],
	 [Type],
	 [ParentId],
	 [OrgID],
	 [Paraph],
	 [RecommiteDate],
	 [UserID],
	 [IsCopy],orgstaff) 
 
VALUES 
	( @LetterID,
	 @ID,
	 @Type,
	 @ParentId,
	 @OrgID,
	 @Paraph,
	 @RecommiteDate,
	 @UserID,
	 @IsCopy,@orgstaff)



 

GO
/* insertText]    Script Date: 01/06/2010 00:22:02 */
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO







CREATE PROCEDURE [dbo].[insertText]
 @Text nvarchar(4000),@MYear int,@indicator int,@receivedMode bit
AS
 declare @i int,@W nvarchar(50)
set @text=ltrim(rtrim(@text))
if @text=''  return
     while charindex(' ',@Text)>0
       begin
        set @i=charindex(' ',@Text);
        set @w=substring(@Text,1,@i-1);
        exec insertWordInLetter @w,@MYear ,@indicator ,@receivedMode 
        set @Text=ltrim(rtrim(substring(@text,@i,len(@text)-@i+1)));
       end;
  exec insertWordInLetter @Text,@MYear ,@indicator ,@receivedMode







GO
/* letterContainText]    Script Date: 01/06/2010 00:22:02 */
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[letterContainText]
 @secID tinyint,@where nvarchar(500)
AS

 declare @sqlCommand nvarchar(4000)
set @where=ltrim(rtrim(isnull(@where,'')))

 set  @sqlcommand='SELECT    distinct Letter.LetterID,Letter_type, indicatorid, RegistrationDate, 
Memo, FromOrganizations.Title AS FromTitle, ToOrganizations.Title AS ToTitle
FROM         LetterText 
INNER JOIN   Letter on letter.letterid=LetterText.letterid
INNER JOIN     FromOrganizations ON FromOrgID = FromOrganizations.ID
INNER JOIN  FromOrganizations ToOrganizations ON ToOrgID = ToOrganizations.ID  where (Letter.SecretariatID='+cast(@secId as varchar(3)) +' or '+cast(@SeCID as varchar(3))+' = 0)'

if @where<>'' set @sqlcommand=@sqlcommand+' and '+@where
exec sp_executesql @sqlcommand


 

GO
/* Make_FieldValues_By_LetterID]    Script Date: 01/06/2010 00:22:02 */
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


CREATE procedure [dbo].[Make_FieldValues_By_LetterID]
@LetterID int,@FormOrder tinyint
as

declare @tableID int, @tableID2 int,@TableID0 int,@userid int /*Ranjbar*/ 
 
select @TableID=UserTableID,@tableID2=UsertableID2,@userid=userid/*Ranjbar*/ 
from letter
where letterid=@LetterID
 
if @tableID is not null or @tableID2 is not null
begin

delete LetterFieldValue
from LetterFieldValue
inner join  Fields on Fields.id=LetterFieldValue.fieldid
where Letterid =@letterid and  
(
(tableid<>@TableID and formorder=1) or 
(tableid<>@TableID2 and formorder=2)
)

if @FormOrder=1 
set @TableID0=@tableID
else
set @TableID0=@tableID2 

insert into  LetterFieldValue(letterid,FieldID,formOrder,insertuserid/*Ranjbar*/)
 select @letterID,ID, @FormOrder,@userid/*Ranjbar*/
 from Fields
 where tableid=@TableID0 and
 id not in (select FieldID from LetterFieldValue where Letterid=@LetterID and formOrder=@formOrder)

INSERT INTO FieldAccess ([FieldID] ,[UserID] ,[AccessTypeID])
SELECT fields.id,users.id,3
FROM Fields,Users
where tableid=@TableID0
and str(fields.id)+'m'+str(users.id) not in 
(select str(fieldid)+'m'+str(userid) from FieldAccess)
 
end



GO
/* min_page]    Script Date: 01/06/2010 00:22:02 */
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO



























CREATE procedure [dbo].[min_page](@LetterID int,@haspage bit output,@minpage tinyint output)
as

SELECT     @minpage=MIN(PageNumber)
FROM         LetterData
 WHERE     (LetterID = @LetterID and extention=1)

if @minpage is null set @haspage=0 else set @haspage=1
set @minpage=isnull(@minpage,1)







GO
/* Move_ParaphTemplate]    Script Date: 01/06/2010 00:22:02 */
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE Procedure [dbo].[Move_ParaphTemplate]
@ParaphTemplateID int,@Step smallint
as
declare @swapParaphTemplateID int,@OrderId tinyint,@Userid int


select @OrderID=Orderid,@Userid=Userid from ParaphTemplate Where ParaphTemplateID=@ParaphTemplateID


SELECT @swapParaphTemplateID=ParaphTemplateID
FROM ParaphTemplate
Where UserID=@UserID and OrderID=@OrderID+@Step

if @swapParaphTemplateID is not null
  begin
   update ParaphTemplate set OrderId=@OrderID+@Step where ParaphTemplateID=@ParaphTemplateID
   update ParaphTemplate set OrderId=@OrderID      where  ParaphTemplateID=@SwapParaphTemplateID
  end

GO
/* NewRecommiteID]    Script Date: 01/06/2010 00:22:02 */
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[NewRecommiteID](@letterID int,@type int,@NewID int output)
AS

SELECT     @NewID=ISNULL(MAX(ID), 0) + 1   FROM ReCommites WHERE LetterID=@letterID and type=@type


GO
/* Next_page]    Script Date: 01/06/2010 00:22:02 */
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
Create procedure [dbo].[Next_page](@LetterID int,@CurrentPage tinyint,@Next bit ,@newPage tinyint output)
as
if @next=1
 begin

SELECT     @newPage=MIN(PageNumber)
FROM         LetterData
 WHERE     (LetterID = @LetterID and extention=1 and PageNumber>@CurrentPage)

if @newPage is null
SELECT     @newPage=MIN(PageNumber)
FROM         LetterData
 WHERE     (LetterID = @LetterID and extention=1 )

end
else
 begin

SELECT     @newPage=max(PageNumber)
FROM         LetterData
 WHERE     (LetterID = @LetterID and extention=1 and PageNumber<@CurrentPage)

if @newPage is null
SELECT     @newPage=max(PageNumber)
FROM         LetterData
 WHERE     (LetterID = @LetterID and extention=1 )

end


GO
/* NextTag]    Script Date: 01/06/2010 00:22:03 */
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO





create PROCEDURE [dbo].[NextTag]
@formtag tinyint
AS
if @formtag>0 
SELECT     MAX(ID)+1
FROM         Actions
WHERE     (FormTag =@formtag)
else
SELECT     MAX(FormTag)+1
FROM         Actions



GO
/* NumberOfLetter_By_SecID]    Script Date: 01/06/2010 00:22:03 */
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO









CREATE PROCEDURE [dbo].[NumberOfLetter_By_SecID]
@secID int,@Number_OF_Letter int output
 AS
select @Number_OF_Letter =count(*) from letter where secretariatid=@secid





 

GO
/* NumberOfTemplate_By_TemplateGroupID]    Script Date: 01/06/2010 00:22:03 */
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO








CREATE PROCEDURE [dbo].[NumberOfTemplate_By_TemplateGroupID]
@TemplateGroupID int,@Number_OF_Template int output
 AS
select @Number_OF_Template =count(*) from LetterTemplate where TemplateGroupid=@TemplateGroupid



 

GO
/* Org_hasChild]    Script Date: 01/06/2010 00:22:03 */
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO






CREATE PROCEDURE [dbo].[Org_hasChild]
	(@ParentID 	[int],@hasChild bit output)
AS 
if exists( select * from  FromOrganizations
 WHERE  [ParentID]	 = @ParentID)
set @haschild=1
else
set @haschild=0






GO
/* org_hasLetter]    Script Date: 01/06/2010 00:22:03 */
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO







CREATE procedure [dbo].[org_hasLetter](@orgid int,@count int output)
as
set @count=0
select @count=count(1)
from recommites
where orgid=@orgid



 

GO
/* Org_is_Secretariat]    Script Date: 01/06/2010 00:22:03 */
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO





CREATE PROCEDURE [dbo].[Org_is_Secretariat]
@orgid int ,@IsSecretariat bit output
as
set @IsSecretariat=0


Select  @IsSecretariat=cast(case when r.DestinationOrgID_inSource is null then 0 else 1 end as bit)  
 from fromorganizations LEFT JOIN RelatedSecretariats R ON FromOrganizations.ID = R.DestinationOrgID_inSource
where id=@orgid


 

GO
/* Recommite_has_JpgFile]    Script Date: 01/06/2010 00:22:03 */
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO





CREATE  procedure [dbo].[Recommite_has_JpgFile](@RecommiteID  int,@hasJpg bit output)
as
if exists(select  *
from Recommitedata
where RecommiteID=@RecommiteID
and Extention=1  and image is not null)  set @hasJpg=1 else set @hasJpg=0





GO
/* Recommite_Report]    Script Date: 01/06/2010 00:22:03 */
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO








create proc [dbo].[Recommite_Report]
 @begindate char(10),@enddate char(10),@secid int ,@letter_type int 
as

select Recommiteid,orgid,dbo.ShamsiDateDiff(recommitedate,isnull(Proceeddate,'1385/06/08'))delay ,proceeded into #abs
from recommites
inner join letter on letter.letterid=recommites.letterid
where recommitedate between @begindate  and @enddate
and letter.Secretariatid=@secid
and (@letter_type=0) or (Letter_type=@letter_type)


select *
from #abs
inner join fromorganizations on Fromorganizations.id=orgid


 

GO
/* Report_Scan]    Script Date: 01/06/2010 00:22:03 */
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

create  Procedure [dbo].[Report_Scan]
@where nvarchar(1000),@Extention tinyint
as
set @extention=2
declare @sqlCommand nvarchar(4000)
set @sqlCommand='select
  LetterFormats.Title AS FormatTitle, LetterTypes.Title LetterTypeTitle, Count(*) All_cnt ,sum(case when ld.letterid is null then 1 else 0 end  ) Scanned
from Letter as L
  left join (Select distinct letterid from letterdata where extention in (1,2)) ld on ld.letterid=l.letterid
  Left JOIN LetterFormats ON L.letterformat = LetterFormats.Code
 left JOIN LetterTypes ON l.Letter_type = LetterTypes.ID'
set @where=isnull(ltrim(rtrim(@where)),'')
if @where<>''
 set @sqlCommand=@sqlCommand+' where '+@where
 set @sqlCommand=@sqlCommand+' group by LetterFormats.Title, LetterTypes.Title '

exec sp_executesql @sqlCommand

GO
/* Report_UserLog]    Script Date: 01/06/2010 00:22:03 */
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

Create PROCEDURE [dbo].[Report_UserLog]
@Secretariatid int,
@myear tinyint,
@where nvarchar(2000)
as 
declare @sqlCommand nvarchar(4000)

set @sqlCommand='
SELECT     top 1000
 ApplicationForms.Title AS FormTitle,
 Users.Title AS UserTitle,
 Actions.Title AS ActionTitle,
 Letter.IndicatorID,
 LetterTypes.Title AS LetterType,
 Letter.IncommingNO,
 Letter.Incommingdate,
 Letter.RegistrationDate,
 Letter.Memo,
 dbo.Shamsi(UserLog.Time1) AS Date,
 right(cast(UserLog.Time1 as varchar(50)),7) as Time

FROM       UserLog
INNER JOIN Users            ON Users.Id = UserLog.UserID
INNER JOIN Actions          ON UserLog.ActionID = Actions.ID 
INNER JOIN ApplicationForms ON ApplicationForms.ID = Actions.FormTag
LEFT  JOIN Letter           ON UserLog.LetterID = Letter.LetterID
LEFT  JOIN LetterTypes      ON Letter.Letter_Type = LetterTypes.ID '


set @where=isnull(ltrim(rtrim(@where)),'')
if @where <>'' set @where =' and '+@where

if @Secretariatid<>0
  set @where=@where+' and (Secretariatid = '+Cast(@Secretariatid as varchar(5))+')'

if @Myear<>0
  set @where=@where+' and (myear = '+Cast(@myear as varchar(5))+')'

if substring(@where,1,4)=' and' set @where=' where '+substring(@where,5,4000)

 set @sqlCommand=@sqlCommand+@where + ' order by time1  '
exec(@sqlCommand)



GO
/* Report_UserTable]    Script Date: 01/06/2010 00:22:03 */
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO




CREATE procedure [dbo].[Report_UserTable]
@tableID int,@LetterWhere nvarchar(2000),@UserTableWhere nvarchar(2000)
as

declare @sql nvarchar(4000)

set @sql= 'select LetterID into ##Uletters from Letter '

if @UserTableWhere<>'' 
 set @sql=@sql+' where  '+@UserTableWhere

exec(@SQL)


set @sql='Select l.LetterID into ##r from Letter l
 inner join ##Uletters on ##Uletters.LetterID=l.LetterID
 where UserTableID='+cast(@tableID as varchar(5))+' and '+@LetterWhere

exec(@Sql)
 
set @sql= 'create  table ##m (LetterID int '

SELECT     top 60 identity(int,1,1) id , Fields.Description,cast (fields.id as int ) fieldid into #m
FROM      Fields
WHERE     (tableid = @tableID)
order by [order]


SELECT     @sql=@sql+' ,['+isnull(Description,'')+'_'+
Cast((select count(*) from #m where isnull(Description,'')=isnull(m.Description,'') and id <=m.id) as varchar(3))+
'] nvarchar(2000)'
FROM      #m m

set @sql= @sql+')'

print @sql 
exec(@sql)
declare @insert  varchar(8000)


set @insert= 'insert into ##m select LetterID'


SELECT    @insert=@insert+',(select FieldValue from LetterFieldValue where FieldId='+cast(fieldid as varchar(10))+' and letterid=r.LetterID and formorder=2) '
FROM       #m

set @insert= @insert+' from ##r r '

exec(@insert)


select ##m.*,IndicatorID,IncommingNO,IncommingDate,CenterNo,CenterDate
,Memo,RetroactionNo,UserMemo,RegistrationDate,FollowLetterNo,LetterRecommites
,sender.Title AS SenderTitle ,Deliver.Title AS DeliverTitle,LetterTypes.Title LetterTypeTitle,ActionTypeTitle
FROM  ##m
inner join Letter on ##m.Letterid=Letter.Letterid 
left  JOIN FromOrganizations sender ON Letter.ToOrgID = sender.ID 
left JOIN  FromOrganizations Deliver ON Letter.FromOrgID = Deliver.ID 
Left join LetterTypes on LetterTypes.ID=Letter.Letter_type 
left join Secretariats on Secretariats.Secid=Letter.SecretariatID
left JOIN ActionType  ON ActionType.ActionTypeID = Letter.LatestActionTypeID

drop table ##m  
drop table ##Uletters
drop table ##r



GO
/* SaveAs_Accesses]    Script Date: 01/06/2010 00:22:03 */
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


CREATE  PROCEDURE [dbo].[SaveAs_Accesses]
	( @Title nvarchar(50),@oldaccessID int ,@newID int output)

AS
 INSERT INTO [dbo].[Accesses] 
	 ( [Title]) 
 
VALUES ( @Title)

select @newID=max(ID)
from accesses


insert into ActionsAccess(accessid,ActionID, FormTag, HasAccess)
SELECT     @newid,ActionID, FormTag, HasAccess
FROM         ActionsAccess
where accessid=@oldaccessID

insert into ActionsAccess(accessid,ActionID, FormTag, HasAccess)
SELECT     Accesses.ID AS accessid, Actions.ID AS actionid, Actions.FormTag, 0 AS hasaccess
FROM         Actions , Accesses
where str(Accesses.ID)+str(Actions.ID) not in (select str(accessid)+str(ActionID) from ActionsAccess)









GO
/* Select_AlternativeInfo_ByUserID]    Script Date: 01/06/2010 00:22:03 */
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
Create Procedure [dbo].[Select_AlternativeInfo_ByUserID]
@UserID int
as
SELECT [Id]
      ,[AlternativeUserID]
      ,[AlternativebeginDate]
      ,[AlternativeEndDate]
  FROM [ydabir].[dbo].[Users]
where id=@userID

GO
/* select_CiticalLetterFields]    Script Date: 01/06/2010 00:22:03 */
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO






CREATE PROCEDURE [dbo].[select_CiticalLetterFields]
	@LetterID int

AS
select   LetterID, IndicatorID, MYear, SecretariatID, Letter_Type, letterformat
from Letter
WHERE LetterID=@LetterID





GO
/* Select_ExactCopy]    Script Date: 01/06/2010 00:22:03 */
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
























CREATE PROCEDURE [dbo].[Select_ExactCopy](@LetterID int) AS

Select recommites.*,org.title,org.IsInnerOrg
From recommites inner join fromorganizations org on org.id=orgid
where LetterID=@LetterID
 and type=1
























GO
/* Select_FieldAccess_by_TableID]    Script Date: 01/06/2010 00:22:03 */
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


Create Procedure [dbo].[Select_FieldAccess_by_TableID]
@UserID int ,@TableID int
as

SELECT     *
FROM         FieldAccess
WHERE     (UserID = @UserID) AND (FieldID in ( SELECT  ID FROM   Fields WHERE TableID =@TableID))



GO
/* Select_Fields_by_TableID]    Script Date: 01/06/2010 00:22:03 */
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

create Procedure [dbo].[Select_Fields_by_TableID]
@LetterID int
as

SELECT     ID,Description
FROM      Fields
WHERE   TableID in ( SELECT UserTableID2  FROM   Letter WHERE LetterID =@LetterID)
or     TableID in ( SELECT UserTableID   FROM   Letter WHERE LetterID =@LetterID)


GO
/* Select_FolllowUp_ByLetterID]    Script Date: 01/06/2010 00:22:03 */
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE Procedure [dbo].[Select_FolllowUp_ByLetterID](@LetterID int, @userID int ,@StartFollowUpID int output)
as

  select top 1 @StartFollowUpID=StartFollowUpID
  from followup
  where letterid=@letterid and userid=@userID
set  @StartFollowUpID=isnull( @StartFollowUpID ,0)




GO
/* Select_FollowUP_By_Date]    Script Date: 01/06/2010 00:22:03 */
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE Procedure [dbo].[Select_FollowUP_By_Date](@UserID int ,@BDate char(10), @Edate char(10),
@DonStatusID int)
as
declare @today char(10)
set @today=dbo.shamsi(getdate())

SELECT     FollowUPID,Letter.Letterid, FollowUp.StartFollowUpID, FollowUp.FollowUPTypeID, FollowUp.DoneStatusID,
 substring(ToDoDate,6,5) ToDoDate, HasAlarm,isnull(cast(Indicatorid as varchar(5))+' - '+Memo,Comment) Comment,
 FollowUPTypeTitle, DoneStatustitle, case when ToDoDate=@today then 0  when ToDoDate>@today then 1 else -1 end DelayStatus
FROM  FollowUp
left JOIN   Letter ON FollowUp.LetterID = Letter.LetterID
left JOIN   FollowUPType ON FollowUp.FollowUPTypeID = FollowUPType.FollowUPTypeID
left JOIN   DoneStatus ON FollowUp.DoneStatusID = DoneStatus.DoneStatusID
WHERE     (@UserID = 0 or FollowUp.UserID = @UserID) AND (FollowUp.ToDoDate between  @BDate and @Edate)
and (@DonStatusID=0 or FollowUp.DoneStatusID = @DonStatusID)
order by  ToDoDate

GO
/* Select_FollowUp_ByStart]    Script Date: 01/06/2010 00:22:04 */
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


CREATE Procedure [dbo].[Select_FollowUp_ByStart](@StartFollowUpID int)
as

select *
from followup
where StartFollowUpID=@StartFollowUpID


GO
/* select_fromorganization]    Script Date: 01/06/2010 00:22:04 */
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO















create PROCEDURE [dbo].[select_fromorganization] AS
SELECT    FromOrganizations.ID,  FromOrganizations_1.Title AS parent,FromOrganizations.ResponsibleStaffer,
FromOrganizations.Title
FROM         FromOrganizations INNER JOIN
                      FromOrganizations FromOrganizations_1 ON FromOrganizations.ParentID = FromOrganizations_1.ID
WHERE     (FromOrganizations.ParentID <> 1000001)
and FromOrganizations.id not like '9%'
ORDER BY cast(FromOrganizations.id as varchar(10))




GO
/* select_Letter]    Script Date: 01/06/2010 00:22:04 */
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO

CREATE PROCEDURE [dbo].[select_Letter]  
 @LetterID int    
AS  
Select Letter.*,title senderTitle , dbo.InnerNo(Letter.LetterID) as IndicatorInnerNo
from Letter left JOIN  
     FromOrganizations ON Letter.ToOrgID = FromOrganizations.ID  
WHERE   
 LetterID=@LetterID

GO
/* Select_letter_details]    Script Date: 01/06/2010 00:22:04 */
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE Procedure [dbo].[Select_letter_details]
@letterid int ,
@IndicatorID varchar(10) output ,
@RegistrationDate char(10) output,
@Memo nvarchar(500) output,
@LetterRecommites nvarchar(500) output,
@latestParaph nvarchar(500) output

as
Select
@IndicatorID=cast (IndicatorID as varchar(10)),
@RegistrationDate=RegistrationDate,
@Memo=memo,
@LetterRecommites=LetterRecommites
from Letter
where letterid=@letterid

Select top 1 @latestParaph=isnull(Paraph,'')
from Recommites
where letterid=@letterid order by id desc

GO
/* Select_LetterReCommite]    Script Date: 01/06/2010 00:22:04 */
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO











CREATE PROCEDURE [dbo].[Select_LetterReCommite]	

(@letterID 	[int],@type tinyint)  AS 

SELECT R.*,f.title+' - '+r.OrgStaff orgtitle,IsInnerOrg 

FROM ReCommites R  

inner join FromOrganizations f on f.ID=r.OrgID 

where Letterid=@letterID and type=@type











GO
/* select_LetterSubject]    Script Date: 01/06/2010 00:22:04 */
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO


CREATE PROCEDURE [dbo].[select_LetterSubject]
	@LetterID int

AS
SELECT    registrationdate,registrationtime,indicatorid, LetterID, SubjectID, SubjectDescription, UserMemo,lastupdate
FROM         Letter
WHERE     LetterID=@LetterID


 


GO
/* SELECT_ParaphTemplate]    Script Date: 01/06/2010 00:22:04 */
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
Create Procedure [dbo].[SELECT_ParaphTemplate]
@UserID int
as

SELECT *
FROM ParaphTemplate
Where Userid=@UserID
order by OrderID

GO
/* select_ReceivedLetters]    Script Date: 01/06/2010 00:22:04 */
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO









CREATE PROCEDURE [dbo].[select_ReceivedLetters]
	@IndicatorID 	int,
	 @MYear 	tinyint,
	 @LetterFormat tinyint,@Secretariatid int

AS
SELECT     ReceivedLetters.*, FromOrgANIZATIONS.Title
FROM         ReceivedLetters 
INNER JOIN  FromOrgANIZATIONS ON ReceivedLetters.tOOrgID = FromOrgANIZATIONS.ID
WHERE 
	IndicatorID	 = @IndicatorID AND
	 MYear = @MYear and
              (LetterFormat=@LetterFormat or @letterformat=0) and
              Secretariatid=@Secretariatid




GO
/* Select_recommites_byLetterID]    Script Date: 01/06/2010 00:22:04 */
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


CREATE procedure [dbo].[Select_recommites_byLetterID]
@letterId int
as

SELECT     FromOrganizations.Title AS [ارجاع شونده], FromOrganizations_1.Title AS [ارجاع دهنده], FromOrganizations_1.ResponsibleStaffer AS [نام ارجاع دهنده], 
                      FromOrganizations.ResponsibleStaffer AS [نام ارجاع گيرنده], Users.Title AS [کاربر ثبت کننده], ReCommites.Paraph AS [مضمون ارجاع], 
                      ReCommites.RecommiteDate AS [تاريخ ارجاع], ReCommites.IsCopy AS [کپي؟], ReCommites.Proceeded AS [اقدام شده؟], 
                      ReCommites.ProceedDate AS [تاريخ اقدام يا ارجاع], ReCommites.staffmemo AS [ملاحظات بايگاني], ReCommites.viewdate AS [تاريخ مشاهده], 
                      ReCommites.OrgStaff AS [نام ارجاع شونده ], ReCommites.DeadLineDate AS [مهلت اقدام], RecommiteTypes.Title AS [نوع ارجاع]
FROM       ReCommites
left join  RecommiteTypes ON RecommiteTypes.ID = ReCommites.Type
left JOIN  Users ON ReCommites.UserID = Users.Id 
left JOIN  FromOrganizations ON ReCommites.OrgID = FromOrganizations.ID 
left JOIN  ReCommites ReCommites_1 ON ReCommites.LetterID = ReCommites_1.LetterID AND   ReCommites.ParentId = ReCommites_1.ID
LEFT JOIN  FromOrganizations FromOrganizations_1 on  FromOrganizations_1.ID = ReCommites_1.OrgID 
WHERE    recommites.type=3 and (ReCommites.LetterID = @letterId)




GO
/* select_sentLetters]    Script Date: 01/06/2010 00:22:04 */
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO













CREATE PROCEDURE [dbo].[select_sentLetters]
	@IndicatorID 	int,
	 @MYear 	tinyint,
	 @LetterFormat tinyint,
              @Secretariatid tinyint

	 

AS
SELECT     SentLetters.*, FromOrgANIZATIONS.Title
FROM         SentLetters
INNER JOIN  FromOrgANIZATIONS ON SentLetters.ToOrgID = FromOrgANIZATIONS.ID
WHERE 
	IndicatorID	 = @IndicatorID AND
	 MYear = @MYear and
              (LetterFormat=@LetterFormat or @letterformat=0) and
              Secretariatid=@Secretariatid






GO
/* select_userLoginLogout]    Script Date: 01/06/2010 00:22:04 */
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO












CREATE procedure [dbo].[select_userLoginLogout](@bdate char(10), @edate char(10), @userid int)
as
SELECT     Users.UserName, IPAddress, 
dbo.Shamsi(LoginTime) LoginDate,cast(datepart(hh, LoginTime) as varchar(2))+':'+cast (datepart(mi, LoginTime) as varchar(2)) LoginTime,
 dbo.Shamsi(LogoutTime) LogoutDate,cast(datepart(hh, LogoutTime) as varchar(2))+':'+cast (datepart(mi, LogoutTime) as varchar(2)) LogoutTime,
                      isSafeLogout
FROM         UserLoginLogout INNER JOIN
                      Users ON UserID = Users.Id
where dbo.Shamsi(LoginTime)  between @bdate and @edate







 

GO
/* Select_UserOrgid]    Script Date: 01/06/2010 00:22:04 */
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE Procedure [dbo].[Select_UserOrgid]
@UserID int,@today char(10)
as
create  table #Org (Orgid int,Comment nvarchar(255))
insert into #Org
SELECT  	[FromOrgID],case when id=@userid then 'سمت اصلي' else 'جانشين'  end
FROM [Users]
where @userID=id or (AlternativeUserID=@userid and @today between AlternativebeginDate and AlternativeEndDate )


insert into #Org
SELECT [SecondOrgID],case when id=@userid then 'سمت دوم' else 'جانشين'  end
FROM [Users]
where [SecondOrgID] is not null and  (@userID=id or (AlternativeUserID=@userid and @today between AlternativebeginDate and AlternativeEndDate ))

update #Org
set comment=comment+':'+title
from #Org
inner join fromorganizations on fromorganizations.id=#Org.orgid


select *
from #Org


GO
/* Select_UserSign]    Script Date: 01/06/2010 00:22:04 */
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE Proc [dbo].[Select_UserSign]
@UserID int
as

SELECT [UserID]
      ,UserSign
  FROM userSign
where UserID=@UserID

GO
/* selectAddedInfo]    Script Date: 01/06/2010 00:22:04 */
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO











CREATE PROCEDURE [dbo].[selectAddedInfo]
@where nvarchar(2000) 
as
declare @sqlCommand nvarchar(4000)
set @sqlcommand='SELECT *  FROM vw_AddedInfo AI '

if @where<>'' set @sqlCommand=@sqlCommand+'  where  '+@where
exec sp_executesql @sqlCommand






GO
/* SelectInfo]    Script Date: 01/06/2010 00:22:04 */
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO



CREATE  PROCEDURE [dbo].[SelectInfo]
@where nvarchar(1900)
as 
declare @mainTable varchar(50), @PrimaryCode varchar(50)
select @mainTable=value
from settings
where userid=-1 and variableid=24

select @PrimaryCode=value
from settings
where userid=-1 and variableid=26

declare @sqlCommand nvarchar(4000)
set @sqlcommand='select l.*,dbo.innerno(l.LetterID) innerno,
ReceiveTypes.Title AS ReciveTitle,Classifications.Title AS ClassificatioTitle,Urgenceis.Title AS UrgencyTitle,Users.Title AS UserTitle,
LetterFormats.Title AS FormatTitle,ToOrganizations.Title AS ToOrgTitle,LetterTemplate.Title AS TemplateTitle, 
FromOrganizations.Title AS FromTitle,f.title SignerTitle,dbo.ArchivePlaces(l.letterID,0) ArchivePlaces,FromOrganizations.PreCode, isnull(FromOrganizations.PreCode,FromOrganizations.Code) 
Org_PreCode,  ai.*
FROM  Letter l
LEFT JOIN '+@mainTable+'  AI  on l.UserMemo=cast (ltrim(ai.'+@PrimaryCode+' ) as nvarchar(255) )
LEFT JOIN fromorganizations f on f.id=l.signerid
LEFT JOIN ReceiveTypes ReceiveTypes ON ReceiveTypes.ID = L.ReceiveTypeID
LEFT JOIN Classifications Classifications ON L.ClassificationID = Classifications.ID 
LEFT JOIN Urgenceis Urgenceis ON L.UrgencyID = Urgenceis.ID
LEFT JOIN Users Users ON L.UserID = Users.Id
LEFT JOIN FromOrganizations FromOrganizations ON L.FromOrgID = FromOrganizations.ID 
LEFT JOIN fromorganizations ToOrganizations  ON L.ToOrgID = ToOrganizations.ID 
LEFT JOIN LetterFormats LetterFormats ON L.letterformat = LetterFormats.Code
LEFT JOIN LetterTemplate LetterTemplate ON l.TemplateID = LetterTemplate.ID '

if @where<>'' set @sqlCommand=@sqlCommand+' where '+@where

exec sp_executesql @sqlCommand





GO
/* SelectLetter]    Script Date: 01/06/2010 00:22:04 */
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE  PROCEDURE [dbo].[SelectLetter]
@where nvarchar(2000) 
as 
declare @sqlCommand nvarchar(4000)
set @sqlCommand='select l.*, 
 ReceiveTypes.Title AS ReciveTitle, Classifications.Title AS ClassificatioTitle, Urgenceis.Title AS UrgencyTitle, Users.Title AS UserTitle, 
 LetterFormats.Title AS FormatTitle, ToOrg.Title AS ToOrgTitle, LetterTemplate.Title AS TemplateTitle,  
 FromOrganizations.Title AS FromTitle,LetterTypes.Title LetterTypeTitle, AnswerLetter.MYear AnswerMYear , AnswerLetter.IndicatorID  AnswerIndicatorID
from Letter as L
 Left JOIN ReceiveTypes ON ReceiveTypes.ID = L.ReceiveTypeID
 Left JOIN Classifications ON L.ClassificationID = Classifications.ID 
 Left JOIN Urgenceis ON L.UrgencyID = Urgenceis.ID
 Left JOIN Users ON L.UserID = Users.Id
 Left JOIN FromOrganizations ON L.FromOrgID = FromOrganizations.ID 
 Left JOIN fromOrganizations ToOrg ON L.ToOrgID = ToOrg.ID
 Left JOIN LetterFormats ON L.letterformat = LetterFormats.Code
 left JOIN LetterTemplate ON l.TemplateID = LetterTemplate.ID
 left JOIN LetterTypes ON l.Letter_type = LetterTypes.ID
 LEFT JOIN     Letter AnswerLetter ON L.SentLetterID = AnswerLetter.LetterID ' 
set @where=isnull(ltrim(rtrim(@where)),'')
if @where<>'' 
 set @sqlCommand=@sqlCommand+' where '+@where
 set @sqlCommand=@sqlCommand+' order by l.indicatorid desc '

exec sp_executesql @sqlCommand







GO
/* SendLetter_To_Other_sec]    Script Date: 01/06/2010 00:22:04 */
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[SendLetter_To_Other_sec]
 @NewSecID int ,@letterid int 
as 

declare @newLetterId int

insert into letter(IndicatorID,MYear,SecretariatID,Letter_Type,letterformat,IncommingNO,Incommingdate,FromOrgID,ToOrgID
,Signerid,ClassificationID,UrgencyID,Memo,AttachTitle,NumberOfAttachPages,NumberOfPage,ReceiveTypeID,UserID,
RetroactionNo,UserMemo,RegistrationDate,RegistrationTime,FollowLetterNo,ToStaffer,SentLetterID,TemplateID,HeaderID,
LetterRecommites,FromStaffer,Finalized,SendStatusid)
select dbo.newIndicatorid(1,2,myear,@NewSecID) IndicatorID,
MYear,
@NewSecID SecretariatID,1 Letter_Type,2 letterformat,
cast(indicatorid as varchar(5))+isnull('/'+Secretariats.PreCode,'') IncommingNO,
registrationdate Incommingdate,FromOrgID,ToOrgID,Signerid,ClassificationID,UrgencyID,Memo,AttachTitle,
NumberOfAttachPages,NumberOfPage,ReceiveTypeID,UserID,RetroactionNo,UserMemo,RegistrationDate,RegistrationTime,
FollowLetterNo,ToStaffer,SentLetterID,TemplateID,HeaderID,LetterRecommites,FromStaffer,Finalized,2
from letter
inner join Secretariats on Secretariats.secid=letter.SecretariatID
where letterid =@letterid and sendstatusid=1

set @newLetterId=@@identity

insert into letterdata(LetterID,PageNumber,Image,extention,Description )
select @newLetterId,PageNumber,Image,extention,Description 
from letterdata
where letterid=@letterid

insert into recommites(LetterID,ID,Type,ParentId,OrgID,Paraph,RecommiteDate,UserID,IsCopy,Proceeded,ProceedDate,
staffmemo,viewdate,OrgStaff,DeadLineDate)
select @newLetterId,ID,Type,ParentId,OrgID,Paraph,RecommiteDate,UserID,IsCopy,Proceeded,ProceedDate,staffmemo,viewdate,OrgStaff,DeadLineDate
from recommites
where letterid=@letterid


insert into LetterText(LetterID, TypeText, LetterFormat)
SELECT   @newLetterId  , TypeText, LetterFormat
FROM         LetterText
where LetterID=@LetterID



declare @mainLetterid int,@newOrd tinyint
if exists (select * from LetterRelation where subletterid =@letterid)
  begin
    select @newOrd=max(ord)+1 from  LetterRelation where subletterid =@letterid
    select @mainLetterid=mainLetterid from LetterRelation where subletterid =@letterid
    INSERT INTO LetterRelation(MainLetterID,SubLetterID,Ord) values (@mainLetterid,@newLetterId,@newOrd)
  end
else
  begin
    select @mainLetterid=@letterid
    INSERT INTO LetterRelation(MainLetterID,SubLetterID,Ord) values (@mainLetterid,@letterid,1)
    INSERT INTO LetterRelation(MainLetterID,SubLetterID,Ord) values (@mainLetterid,@newLetterId,2)
  end



update letter
set SendStatusid=3
where letterid=@letterid





GO
/* shrink_Files]    Script Date: 01/06/2010 00:22:04 */
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO












create procedure [dbo].[shrink_Files](@number int,@dbanme nvarchar(50),@logPath nvarchar(255))
as
declare @i int
set @i=1 
while @i<=@number 
 begin
  dbcc shrinkfile(1,1)
  dbcc shrinkfile(2,1)
  exec(N'backup log '+@dbanme+' to disk='''+@logPath+'''')
  set @i=@i+1
  print 'stage '+cast(@i as varchar(3)) +' completetd. '
 end



 
GO









CREATE procedure [dbo].[sp_Add_GroupRecommite]( @letterid int,@Type tinyint,@OrgID int,@Paraph nvarchar(500),@RecommiteDate char(10),
@UserID int ,@IsCopy bit ,@Proceeded bit,@OrgStaff nvarchar(100))
as


declare @id int

select  @id=max(id)
from recommites
where letterid=@letterid and type=@type

set @id=isnull(@id,0)

update recommites
set Proceeded=@Proceeded
where letterid=@letterid and id=@id and type=@type

INSERT INTO ReCommites
                      (LetterID, id,Type, ParentId,OrgID, Paraph, RecommiteDate, UserID, IsCopy, Proceeded, OrgStaff)
VALUES                (@letterid ,@id+1,@Type ,@Id,@OrgID ,@Paraph ,@RecommiteDate ,@UserID ,@IsCopy,0,@OrgStaff)



 

GO
/* Sp_AddFileToDB]    Script Date: 01/06/2010 00:22:05 */
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO

CREATE Procedure [dbo].[Sp_AddFileToDB] @DBName nVarchar(50) 
As

Declare @MaxFileID int
Declare @FileSizeInMB int
Declare @FileName nVarchar(50)
Declare @NewFileName nVarchar(50)
Declare @NewFilePath nVarchar(500)

Declare @NewFileNu int
Declare @MDFSqlText nVarchar(1000)
Declare @SqlText nVarchar(1000)

Select @MaxFileID = Max(FileID) 
FROM dbo.sysfiles  
WHERE Groupid = (SELECT u.groupid FROM dbo.sysfilegroups u WHERE u.groupname = N'PRIMARY')

Select @FileSizeInMB = ( (size * (8192/1024))/1024 ) , @FileName = Name , @NewFilePath = FileName
from dbo.sysfiles
Where Groupid = (SELECT u.groupid FROM dbo.sysfilegroups u WHERE u.groupname = N'PRIMARY') 
And(FileID = @MaxFileID )

Set @NewFileName = @FileName

Set @NewFilePath = Substring(@NewFilePath,1, Len(RTrim(@NewFilePath))-Len(RTrim(@NewFileName)+'.mdb')  )
if @MaxFileID = 1  --.mdf
   Set @NewFileNu = 2
else
   Set @NewFileNu   = Cast(Substring(@NewFileName,Len(RTrim(@NewFileName))-1 ,Len(RTrim(@NewFileName))) as int)+1

if Len( Cast(@NewFileNu as nvarchar) ) = 1
   Set @NewFileName = @DBName+'_Data_'+ '0' +Cast(@NewFileNu as nvarchar)
else
   Set @NewFileName = @DBName+'_Data_'+ Cast(@NewFileNu as nvarchar)
/*
Select @NewFilePath
Select @MaxFileID
Select @NewFileNu
Select @NewFileName
Select @FileSizeInMB --*/

if @FileSizeInMB > 3800 --MB
begin
   if @MaxFileID = 1  --mdf قرار دادن ماكزيمم حجم براي فايل
   begin
      Set @MDFSqlText = 'Use Master ALTER DATABASE ['+ @DBName +'] MODIFY FILE (NAME = N'''+ RTrim(@FileName) +''', MAXSIZE = '+ Cast(@FileSizeInMB+30 as nvarchar(10)) +') '
      Exec(@MDFSqlText)
      Print @MDFSqlText
   end 

   Set @SqlText = 'use Master '+
   'ALTER DATABASE [' + RTrim(@DBName) + '] 
    ADD FILE( NAME = '''+@NewFileName+''' , FILENAME = ''' + @NewFilePath + @NewFileName + '.NDF'' , 
             SIZE = 1 , MAXSIZE = 4000 , FILEGROWTH = 10% ) '
   Exec(@SqlText)
   Print @SqlText
end



GO
/* sp_ArchivePlaces]    Script Date: 01/06/2010 00:22:05 */
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

 
CREATE PROCEDURE [dbo].[sp_ArchivePlaces]  
@LetterID int,@UserID  int, @result  nvarchar(1000) output
as
set @result=''
SELECT   @result=@result +' , '+isnull(Place,'') +'-'+Title
FROM         LetterArchiveFolder 
INNER JOIN          ArchiveFolder ON LetterArchiveFolder.ArchiveFolderID = ArchiveFolder.FolderID
where  ArchiveFolder.UserID=@userid and Letterid =@LetterID
if @result<>'' set  @result=substring(@result,4,1000)


GO
/* sp_board]    Script Date: 01/06/2010 00:22:05 */
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO






CREATE    PROCEDURE [dbo].[sp_board] 
@OrgID int,@myear tinyint,@date char(10)
as
if isnull(@date,'')='' set @date='0'

SELECT SL.IndicatorID, SL.MYear, SL.SecretariatID, SL.Letter_type, SL.LetterFormat, 
SL.FromOrgID, SL.ToOrgID,  SL.UrgencyID,  SL.Memo, SL.AttachTitle,
 SL.RegistrationDate, SL.RegistrationTime, SL.FollowLetterNo, SL.ToStaffer,
  RC.Paraph, RC.RecommiteDate, '' no1
FROM ReCommites RC 
INNER JOIN SentLetters SL ON RC.LetterIndicatorID = SL.IndicatorID AND RC.LetterMyear = SL.MYear AND
 RC.SecretariatID = SL.SecretariatID AND RC.LetterFormat = SL.LetterFormat 
INNER JOIN RecommiteTypes ON RC.Type = RecommiteTypes.ID
WHERE    (Rc.OrgID = @OrgID)and RecommiteTypes.InnerOrganize=1 
and sl.myear=@myear and (RC.RecommiteDate=@date or @date='0')
 and RecommiteTypes.ReceiveMode=0
union
SELECT RL.IndicatorID, RL.MYear, RL.SecretariatID, RL.Letter_type, RL.LetterFormat, 
RL.FromOrgID, RL.ToOrgID,  RL.UrgencyID,  RL.Memo, RL.AttachTitle,
 RL.RegistrationDate, RL.RegistrationTime, RL.FollowLetterNo, RL.ToStaffer,
  RC.Paraph, RC.RecommiteDate,  no1
FROM ReCommites RC 
INNER JOIN ReceivedLetters RL ON RC.LetterIndicatorID = RL.IndicatorID AND RC.LetterMyear = RL.MYear AND 
 RC.SecretariatID = RL.SecretariatID AND RC.LetterFormat = RL.LetterFormat 
INNER JOIN RecommiteTypes ON RC.Type = RecommiteTypes.ID
WHERE  (Rc.OrgID = @OrgID) and RecommiteTypes.ReceiveMode=1 and RecommiteTypes.InnerOrganize=1 
and rl.myear=@myear  and (RC.RecommiteDate=@date or @date='0')
order by 1 desc


GO
/* sp_checkusernotes]    Script Date: 01/06/2010 00:22:05 */
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO









CREATE proc [dbo].[sp_checkusernotes]
@USERID INT ,@DateID int ,@where nvarchar(1000)
AS
 declare @sql nvarchar (4000)

set @sql=' SELECT top 10000 *,substring(note,1,100)+'' ...'' as Abstract  from UserNote where userid='+cast(@USERID as varchar(5))
set @where =ltrim(rtrim(isnull(@where ,'')))
if @where <>'' 
set @sql=@sql+' and '+@where 

if @DateID<>0
begin
 declare @today char(10),@dw tinyint,@bdate char(10),@edate char(10)
 set @today=dbo.shamsi(getdate())
 set @dw=datepart(dw,getdate())
 select @bdate=begindate,@edate=Enddate from HistoryDateList(@today ,@dw) where id=@DateID
 set @sql=@sql+' AND CreateDate between '''+@bdate+''' and '''+@edate+''''
end

exec sp_executesql @sql



GO
/* sp_CompleteFieldBook]    Script Date: 01/06/2010 00:22:05 */
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO



CREATE PROCEDURE [dbo].[sp_CompleteFieldBook](@tableName varchar(50),@description varchar(50) ,
@tableid int output)
as
if @tablename is null return
if not exists( select *
from tables where  replace(
replace(tableName,'[',''),']','')= replace(replace(@tableName,'[',''),']',''))
begin
 select @tableid=max(tableid)+1 from tables
 insert into tables (tableid,tablename,description)
 values(@tableid,@tablename,@description)
end
else
if (select description from tables where  replace(
replace(tableName,'[',''),']','')= replace(replace(@tableName,'[',''),']','')) is null

update tablename
set description=@description
where    replace(replace(tableName,'[',''),']','')= replace(replace(@tableName,'[',''),']','')
 
select @tableid=tableid from tables where replace(replace(tableName,'[',''),']','')= replace(replace(@tableName,'[',''),']','')


insert into Fields(TableID, FieldName, Description,islike,isstring,everylike)
SELECT  @tableid,syscolumns_f.name,isnull((select cast(value as varchar(50)) from sysproperties where id = syscolumns_f.id AND smallid = syscolumns_f.colid and
 name='MS_Description'),syscolumns_f.name) Description,dbo.islike(systypes.name),
dbo.isstring(systypes.name),dbo.everylike(systypes.name,syscolumns_f.length)
FROM  sysobjects sysobjects_f
INNER JOIN syscolumns syscolumns_f ON sysobjects_f.id = syscolumns_f.id
inner join systypes on syscolumns_f.xtype=systypes.xtype
where replace(replace(sysobjects_f.name,'[',''),']','')=replace(replace(@tablename,'[',''),']','')
and  syscolumns_f.name not in (SELECT     FieldName
FROM         Fields
WHERE     (TableID = @tableid))
return @tableid


 

GO
/* sp_dailyRep]    Script Date: 01/06/2010 00:22:05 */
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO



CREATE     PROCEDURE [dbo].[sp_dailyRep] 
@myear tinyint,@bdate char(10),@edate char(10),@where nvarchar(1000)
as
 declare @sql nvarchar (4000)

declare @rw nvarchar(255)

set @RW='WHERE l.myear=l.myear'--+cast(@myear as varchar(10))


set @rw=@rw+' AND (L.RegistrationDaTE between '''+@bdate+''' and '''+@edate+''')'

set @sql='select distinct l.LetterID, IndicatorID, Memo, AttachTitle,RegistrationDate,  ToStaffer, FollowLetterNo, 
UserMemo, RetroactionNo, NumberOfPage, NumberOfAttachPages, CenterDate, CenterNo,IncommingDate,
lettertypes.title ReceiveMode ,SentLetterID, Incommingno,
lETTERrecommites RECOMMITES,TTO.title toorgtitle,
Classifications.Title AS Classificationtitle, Urgenceis.Title AS UrgencyTitle, LetterFormats.Title AS FormatTitle,
 LetterTemplate.Title AS TemplateTitle, FromOrganizations.Title AS SignerTitle,Users.Title UserTitle
FROM ReCommites RC 
INNER JOIN Letter L ON RC.LetterID = l.LetterID 
left JOIN ReCommites PRC ON RC.LetterID = PRC.LetterID AND PRC.ID = RC.ParentId 
left JOIN FromOrganizations FO ON FO.ID = PRC.OrgID 
left JOIN fromOrganizations TTO ON TTO.ID = l.ToOrgID 
LEFT JOIN LETTERTYPES on lettertypes.id=l.letter_type
left JOIN RecommiteTypes    ON RC.Type = RecommiteTypes.ID 
Left JOIN Urgenceis         ON L.UrgencyID = Urgenceis.ID 
LEFT JOIN FromOrganizations ON L.Signerid=FromOrganizations.ID
LEFT JOIN LetterFormats     ON L.letterformat = LetterFormats.Code 
LEFT JOIN Classifications   ON L.ClassificationID = Classifications.ID 
LEFT JOIN LetterTemplate    ON L.TemplateID = LetterTemplate.ID 
LEFT JOIN Users    ON L.UserID = Users.ID '+@rW



set @where=isnull(ltrim(rtrim(@where)),'')
if @where<>''
select @sql=@sql+' and  '+@where

set @sql=@sql+' order by 1 desc'
exec(@sql)




GO
/* Sp_Del_NewsGroupUsers]    Script Date: 01/06/2010 00:22:05 */
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

Create Procedure [dbo].[Sp_Del_NewsGroupUsers] @NewsGroupID int 
As  
  Delete From NewsGroupUsers  
  Where(NewsGroupID = @NewsGroupID)


GO
/* Sp_Del_WorkGroupOrg]    Script Date: 01/06/2010 00:22:05 */
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

Create Procedure [dbo].[Sp_Del_WorkGroupOrg] @WorkGroupID int 
As
  Delete From WorkGroupOrg
  Where WorkGroupID = @WorkGroupID


GO
/* Sp_DelayedLetter]    Script Date: 01/06/2010 00:22:05 */
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[Sp_DelayedLetter]  
@SecretariatID int,@myear tinyint,@DeadLine int, @userID int , @Tag Tinyint  /*Ranjbar*/ 
as  
  
declare  
@sql nvarchar (4000),  
@rw nvarchar(500),  
@Today char(10),  
@deadlineDate char(10),  
@OrgID int,  
@todayToint varchar(10)  
  
select @today=dbo.shamsi(getdate())  
set @todayToint=cast(dbo.ShamsiToInt(@today) as varchar(10))  
  
SELECT     @OrgID=FromOrgID  
FROM         Users  
WHERE     Id = @userID  
  
set @RW='WHERE (Rc.deadlinedate is not null or ChildRecommite.Deadlinedate is not null) and ( L.myear='+cast(@myear as varchar(10))+
') AND (Rc.OrgID = '+ cast(@OrgID as varchar(10))+') '  
    
if @SecretariatID>0  
set @rw=@rw+' AND (SecretariatID = '+cast(@SecretariatID as varchar(10))+')'  
else  
set @rw=@rw+' AND (SecretariatID in (SELECT SecId FROM UserSecretariats WHERE UserId = '+cast(@userid as varchar(5))+'))'  
  
/* Ranjbar 88.03.16  
set @rw=@rw+' AND (case when Rc.Proceeded=1 and ChildRecommite.Proceeded=0 then ChildRecommite.DeadLineToint  
     when Rc.Proceeded=0  then RC.DeadLineToint else  '''+@todayToint+''' end-'+@todayToint+' )< '+cast(@DeadLine as varchar(5))  
*/
--كارتابل
if @Tag = 1
   set @rw=@rw+' AND (case when Rc.Proceeded=0  then RC.DeadLineToint else  '''+@todayToint+''' end-'+@todayToint+' )< '+cast(@DeadLine as varchar(5)) 
--ارسالهاي بايگاني نشده
if @Tag = 2
   set @rw=@rw+' AND (case when Rc.Proceeded=1 and ChildRecommite.Proceeded=0 then ChildRecommite.DeadLineToint  
       else  '''+@todayToint+''' end-'+@todayToint+' )< '+cast(@DeadLine as varchar(5))  
--//---
  
set @sql=' SELECT count( *)  
FROM ReCommites RC  
INNER JOIN Letter L ON RC.LetterID = L.LetterID  
left JOIN ReCommites ChildRecommite ON RC.LetterID = ChildRecommite.LetterID AND  
RC.ID = ChildRecommite.ParentId  AND ChildRecommite.type = RC.type '  
  
set @sql=@sql+@rW  
  
exec sp_executesql  @sql  
  


GO
/* sp_delphi_Proc]    Script Date: 01/06/2010 00:22:05 */
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO




CREATE  procedure  [dbo].[sp_delphi_Proc] (@spN varchar(50) )
as

declare @line1 varchar(1000),@line2 varchar(8000),@id int, @count int ,@spname varchar(100),@spType varchar(50),@colname varchar(100),
@isoutparam bit,@temp int,@length int,@isFunction bit ,@Rtype nvarchar(100),@Rpname nvarchar(100)

  SELECT    identity(int,1,1) id, name  into #m
  FROM         sysobjects
  WHERE     (xtype = 'p') AND (status >= 0)
         and (isnull(@spn,'')='' or name like '%'+@spn) 


select @count=max(id)
from #m

set @id=1

while @id<=@count 
 begin
   select @spname=name from #m where id=@id
   declare spcol cursor for
    select substring(syscolumns.name,2,100),max(dbo.delphiType(systypes.name)),max(colid),max( isoutparam),max(syscolumns.length)
    FROM    syscolumns INNER JOIN
            sysobjects ON syscolumns.id = sysobjects.id INNER JOIN
            systypes ON syscolumns.xtype = systypes.xtype
    WHERE     (sysobjects.xtype = 'p') AND (sysobjects.name = @spname)
    group by substring(syscolumns.name,2,100)
   order by 3

if (    select count(syscolumns.name)
    FROM    syscolumns INNER JOIN
            sysobjects ON syscolumns.id = sysobjects.id 
    WHERE      (sysobjects.name =@spname) and syscolumns.isoutparam=1)=1 
set @isFunction =1
else 
set @isFunction=0

    open  spcol
    fetch next from spcol into @colname,@spType,@temp,@isoutparam,@length
    set @line1=case when @isfunction=0 then 'Procedure  ' else 'function ' end+'Exec_'+@spname+'('
    set @line2='';

    while @@Fetch_Status=0 
     begin
      if @colname='type' set @colname='_Type'
      set @line1=@line1+case when @isfunction=0 or @isoutparam=0 then  @colname+':'+@spType+';' else '' end
      set @line2=@line2+'
  with ADOSP.Parameters.AddParameter do
      begin
      DataType := ft'+@spType+';
      Direction := '+case @isoutparam when 0 then 'pdInput;' else 'pdoutput;' end +'
      Name:=''@'+@colname+''';'+case when @spType like '%string%' then '
      size:= '+cast(@length as varchar(10))+';' else '' end+
case @isoutparam when 0 then  '
      Value :='+@colname+';
' else '' end +'
    end;
'
if  @isoutparam=1 set  @Rtype=@spType;
if  @isoutparam=1 set  @Rpname=@colname;
    fetch next from spcol into @colname,@spType,@temp,@isoutparam,@length
     end;
if @line1 like '%;' set @line1=substring(@line1,1,len(@line1)-1)
set @line1=@line1+case when  @isfunction=0 then ');' else '):'+@Rtype+';' end 
    print replace(@line1+'
'+@line1+'
 var ADOSP:TADOStoredProc;  
 begin
  ADOSP:=TADOStoredProc.create(nil);
  ADOSP.ProcedureName:='''+@spname+''';
',';;',';')
PRINT @LINE2

    print
'    ADOSP.Connection:=dm.YeganehConnection; 
    ADOSP.ExecProc;    
'+case when @isfunction=0 then '' else 
'   Result:=ADOSP.Parameters.ParamByname(''@'+@Rpname+''').value;' end+'
end;'


  close spcol
  deallocate spcol
  set @id=@id+1
 end




GO
/* sp_delphi_proceByName]    Script Date: 01/06/2010 00:22:05 */
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE  procedure  [dbo].[sp_delphi_proceByName](@spN varchar(50) )
as

declare @ALL VARCHAR(4000),@line1 varchar(1000),@line2 varchar(4000),@id int, @count int ,@spname varchar(100),@spType varchar(50),@colname varchar(100)

  SELECT    identity(int,1,1) id, name  into #m
  FROM         sysobjects
  WHERE     (xtype = 'p') AND (status >= 0)
         and (isnull(@spn,'')='' or name like @spn)


select @count=max(id)
from #m



set @id=1

while @id<=@count
 begin
   select @spname=name from #m where id=@id
   declare spcol cursor for
    select substring(syscolumns.name,2,100),max(dbo.delphiType(systypes.name))
    FROM    syscolumns INNER JOIN
            sysobjects ON syscolumns.id = sysobjects.id INNER JOIN
            systypes ON syscolumns.xtype = systypes.xtype
    WHERE     (sysobjects.xtype = 'p') AND (sysobjects.name = @spname)
    group by substring(syscolumns.name,2,100)
    open  spcol
    fetch next from spcol into @colname,@spType
    set @line1='Procedure  Open_'+@spname+'(';
    set @line2='';


    while @@Fetch_Status=0
     begin
      if @colname='type' set @colname='_Type'
      set @line1=@line1+@colname+':'+@spType+';'
      set @line2=@line2+'ParamByName(''@'+ @colname+''').value:='+@colName+';
'
    fetch next from spcol into @colname,@spType
     end

    SET @ALL= @line1+');
'+@line1+');
  begin
  with Dm.' + @spname +',parameters do
   begin
    Close;
    ' + @LINE2+'    Open;
   end;
end;'


PRINT Replace(REPLACE(@all,';;',';'),';)',')')

  close spcol
  deallocate spcol
  set @id=@id+1
 end
select  'object '+name+': TADOStoredProc
  Connection = YeganehConnection
  CursorType = ctStatic
  ProcedureName = '''+name+'''
end','
object D'+name+': TDataSource
  DataSet = '+name+'
end'
  FROM         sysobjects
  WHERE     (xtype = 'p') AND (status >= 0)
         and (isnull(@spn,'')='' or name like @spn)




GO
/* Sp_DistinctDate]    Script Date: 01/06/2010 00:22:05 */
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO

CREATE PROCEDURE [dbo].[Sp_DistinctDate] @MyFarsiToday nvarchar(10)     
As    
  declare @today char(10) , @dw tinyint    
  /*Set @today = dbo.shamsi(getdate())   Ranjbar*/  
  Set @today = @MyFarsiToday  
  /*Set @dw = datepart(dw , getdate()) --weekday   
  Select * from HistoryDateList(@Today ,@dw)  Ranjbar*/    
  Select * from HistoryDateList(@Today ,7)
  Order by ID 


GO
/* sp_duplicateOrg]    Script Date: 01/06/2010 00:22:05 */
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO




CREATE procedure [dbo].[sp_duplicateOrg](@code nvarchar(50),@title nvarchar(100),@exsits bit output)
as

if exists (
SELECT   *
FROM         FromOrganizations
WHERE     (replace(Code,' ','') = replace(@code,' ',''))   )
set @exsits=1
else
set @exsits=0







GO
/* sp_FieldByTableCode]    Script Date: 01/06/2010 00:22:05 */
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


create PROCEDURE [dbo].[sp_FieldByTableCode]
 @tableid int
as
select *
from fields
where tableid=@tableid





GO
/* Sp_FillBlob]    Script Date: 01/06/2010 00:22:05 */
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

Create Procedure [dbo].[Sp_FillBlob] 
As
CREATE TABLE #TempTable(ID int IDENTITY (1, 1) NOT NULL , MyBlobField image NULL)
Select *  from #TempTable


GO
/* sp_GetFromHelp]    Script Date: 01/06/2010 00:22:05 */
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO



CREATE PROCEDURE [dbo].[sp_GetFromHelp] 
@Formtag int
as
select htmlHelp
from FormsHelp
where formTag=@formtag








GO
/* sp_GetTermCode]    Script Date: 01/06/2010 00:22:05 */
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


CREATE PROCEDURE [dbo].[sp_GetTermCode](@today char(10)) 
AS
declare @Code char(3)
select top 1 @code=code
from behdasht..lt53 
where  @today between bdate and edate
order by 1 desc


if @code is null
select top 1 @code=code
from behdasht..lt53 
order by 1 desc

 

GO
/* sp_inbox]    Script Date: 01/06/2010 00:22:05 */
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[sp_inbox]
@SecretariatID int, 
@LetterFormat tinyint,
@OrgID int,
@Proceeded bit,
@Type tinyint,@myear tinyint,@date tinyint,@ArchiveFolderID int ,@where nvarchar(1000),
@userID int,@Letter_Type int,@DeadLine int,@orderClause varchar(50)=' rc.recommitedate desc,l.indicatorid desc'
as
declare
@sql nvarchar (4000),
@rw nvarchar(2000),
@Today char(10),
@Proceed bit,-- @Proceed
@todayToint varchar(10)

select @today=dbo.shamsi(getdate())

set @Proceed=@Proceeded

set @RW='WHERE    (Rc.OrgID = '+
cast(@OrgID as varchar(10))+') AND (Rc.Proceeded = '+cast(@Proceeded as varchar(2))+')
  and  L.myear='+cast(@myear as varchar(10))

if @LetterFormat>0 set @rw=@rw+' and (l.LetterFormat ='+cast( @LetterFormat as varchar(2))+')'
else set @rw=@rw+' and (l.LetterFormat in (1,2))'


if @letter_Type>0
set @rw=@rw+' AND (l.letter_Type = '+cast(@Letter_Type as varchar(2))+')'

if @type>0
set @rw=@rw+' AND (Rc.Type = '+cast(@Type as varchar(2))+')'

if @ArchiveFolderID>0
set @rw=@rw+' AND (ArchiveFolderID = '+cast(@ArchiveFolderID as varchar(10))+')'

if @date<>0
begin
 declare @dw tinyint,@bdate char(10),@edate char(10)
 set @dw=datepart(dw,getdate())
 select @bdate=begindate,@edate=Enddate from HistoryDateList(@today ,@dw) where id=@date
 set @rw=@rw+' AND (RC.RecommiteDate between '''+@bdate+''' and '''+@edate+''')'
end

if @SecretariatID>0
set @rw=@rw+' AND (SecretariatID = '+cast(@SecretariatID as varchar(10))+')'
else
set @rw=@rw+' AND (SecretariatID in (SELECT SecId FROM UserSecretariats WHERE UserId = '+cast(@userid as varchar(5))+'))'


set @todayToint=cast(dbo.ShamsiToInt(@today) as varchar(10))

if @DeadLine between -1 and 30
 set @rw=@rw+' AND ('+
case when @Proceed=1 then 'case when ChildRecommite.Proceeded=0 then ISNULL(ChildRecommite.DeadLineToint,'+@todayToint+') else  '''+@todayToint+''' end '
else  'ISNULL(RC.DeadLineToint ,'+@todayToint+') ' end+' -'+@todayToint+' )<= '+cast(@DeadLine as varchar(5))


set @sql=' SELECT top 100  L.LetterID,L.SignerID, L.IndicatorID, L.MYear, L.SecretariatID, L.Letter_Type, L.letterformat, L.IncommingNO, L.Incommingdate, L.ClassificationID,
L.UrgencyID, L.Memo, L.Tostaffer,l.SentLetterID,L.AttachTitle, L.NumberOfAttachPages, L.NumberOfPage, L.ReceiveTypeID, L.UserID, L.RetroactionNo, L.UserMemo, L.RegistrationDate,
l.toorgid,l.fromorgid,L.FollowLetterNo, L.LetterRecommites,l.finalized,l.CenterNo,l.CenterDate,l.templateID,l.headerID,
l.registrationTime,l.fromstaffer,l.sendStatusID,L.LastUpdate,L.UserTableID,
DBO.INNERNO(L.Letterid)  InnerNo, PRC.OrgID,  RC.ParentId,  RC.Paraph, RC.RecommiteDate,  RC.Proceeded,
 RC.ProceedDate, RecommiteTypes.id ReType,RecommiteTypes.Title RecommitTypeTitle,
case when fo.title is null then 0 else 1 end IsInner, isnull(FO.Title,TTO.title) RecommiterTitle,tto.title sendertitle,rc.recommiteid,
 rc.id, RC.ViewDate, RC.StaffMemo,

isnull(incommingno,indicatorid)  Yincommingno,Secretariats.PreCode,RC.IsCopy
,dbo.has_Page(l.letterid) has_Page,
dbo.has_WordPage(l.letterid) has_WordPage,
dbo.has_file(l.letterid) has_file,'''' FirstView,'+
'isnull('+
case when @Proceed=1 then 'ChildRecommite.DeadLineToint' else 'RC.DeadLineToint' end+'-'+@todayToint+',0) DeadLineDays,'+
case when @Proceed=1 then 'ChildRecommite.DeadLineDate ' else  'RC.Deadlinedate  ' end+' DeadLineDate ,'+
case when @Proceed=1 then 'ISNULL(ChildRecommite.Paraph,RC.Paraph) '   else ''' ''' end +' ChildParaph ,'+
case when @Proceed=1 then 'RecommitedOrg.Title '   else ''' ''' end +' ChildOrg, '+
case when @Proceed=1 then ' ChildRecommite.ActionTypeID'  else  ' RC.ActionTypeID'   end +' ActionTypeID '+
'   FROM ReCommites RC
INNER JOIN Letter L ON RC.LetterID = L.LetterID
INNER JOIN Secretariats  ON Secretariats.Secid = L.SecretariatID
left JOIN ReCommites PRC ON RC.LetterID = PRC.LetterID AND PRC.ID = RC.ParentId  AND PRC.type = RC.type
left JOIN FromOrganizations FO ON FO.ID = PRC.OrgID
left JOIN FromOrganizations TTO ON TTO.ID = L.ToOrgID 
INNER JOIN RecommiteTypes ON RC.Type = RecommiteTypes.ID '+
case when @Proceed=1 then '
left JOIN ReCommites ChildRecommite ON RC.LetterID = ChildRecommite.LetterID AND RC.ID = ChildRecommite.ParentId  AND ChildRecommite.type = RC.type 
left JOIN FromOrganizations RecommitedOrg ON RecommitedOrg.ID = ChildRecommite.OrgID '
else '' end

if @archiveFolderID<>0  
set @sql=@sql+' 
Left join LetterArchiveFolder on LetterArchiveFolder.Letterid=Rc.RecommiteID '

set @sql=@sql+@rW


set @where=isnull(ltrim(rtrim(@where)),'')
if (@where<>'') 
select @sql=@sql+' and '+@where

if isnull(ltrim(@orderClause),'')='' 
 set @orderClause=' rc.recommitedate desc,l.indicatorid desc'


set @sql=@sql+' order by '+@orderClause
exec sp_executesql  @sql
PRINT @sql


GO
/* sp_Letter_Numbers]    Script Date: 01/06/2010 00:22:06 */
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO







CREATE procedure [dbo].[sp_Letter_Numbers]
@bdate char(10),@edate Char(10),
@receivedNum int output,
@SentNum int output,
@recommitesNum int output,
@SecID int
as
set @receivedNum=0
set @SentNum=0
set @recommitesNum=0

select @receivedNum=count(*) from Letter where registrationdate between @bdate and @edate and (secretariatid=@SecID or @SecID=0) and Letter_type=1
select @SentNum=count(*) from Letter where registrationdate between @bdate and @edate and (secretariatid=@SecID or @SecID=0) and Letter_type=2
select @recommitesNum=count(*)-@SentNum-@receivedNum from ReCommites
inner join letter on letter.letterid=ReCommites.LetterId where ReCommitedate between @bdate and @edate and (secretariatid=@SecID or @SecID=0)





GO
/* sp_makeRecommited]    Script Date: 01/06/2010 00:22:06 */
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO
Create PROCEDURE [dbo].[sp_makeRecommited]

	(
		@recommiteId int,
        @ProceedDate char(10),
        @staffmemo  nvarchar(255)

	)

AS
UPDATE ReCommites
   SET  Proceeded = 1
      ,ProceedDate = @ProceedDate
      ,staffmemo = @staffmemo
 WHERE  recommiteId=@recommiteId

GO
/* sp_recommite_report]    Script Date: 01/06/2010 00:22:06 */
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
 
CREATE  PROCEDURE [dbo].[sp_recommite_report]
@SecretariatID int,@myear tinyint,@where nvarchar(1000)

as
declare @sql nvarchar (4000),@rw nvarchar(2000),@Today char(10)

select @today=dbo.shamsi(getdate())

set @RW=' 
 WHERE  not (l.letter_type=2 and l.letterformat=1 ) and  (l.LetterFormat <3) AND  L.myear='+cast(@myear as varchar(10))
if @SecretariatID>0 
set @rw=@rw+'
 AND (SecretariatID = '+cast(@SecretariatID as varchar(10))+')'


set @sql=' SELECT top 1000 L.LetterID, L.IndicatorID,L.IncommingDate,L.IncommingNo, L.Memo, L.RetroactionNo,
 L.RegistrationDate, L.FollowLetterNo, L.ToStaffer,sender.Title AS SenderTitle,
 Deliver.Title AS DeliverTitle,LetterTypes.Title LetterTypeTitle,LetterRecommites, RC.Paraph,
 RC.RecommiteDate,  RC.Proceeded, RC.ProceedDate, RecommiteTypes.Title RecommitTypeTitle,
isnull(PFO.Title,SENDER.title) RecommiterTitle,Fo.Title Recommited, RC.ViewDate, RC.StaffMemo,
dbo.shamsidatediff(prc.DeadLineDate,isnull(Rc.Proceeddate,'''+@today+''')) DeadlineDays,
dbo.shamsidatediff(rc.Recommitedate,isnull(Rc.Proceeddate,'''+@today+''')) ProgressDays,
prc.DeadLineDate,ActionTypeTitle 
FROM ReCommites RC 
left JOIN ReCommites PRC ON RC.LetterID = PRC.LetterID AND PRC.ID = RC.ParentId  AND PRC.type = RC.type 
INNER JOIN Letter L ON RC.LetterID = L.LetterID
INNER JOIN Secretariats  ON Secretariats.Secid = L.SecretariatID
left JOIN FromOrganizations FO ON FO.ID = RC.OrgID 
left JOIN FromOrganizations PFO ON PFO.ID = PRC.OrgID 
left JOIN  FromOrganizations sender ON l.ToOrgID = sender.ID
left JOIN  FromOrganizations Deliver ON l.FromOrgID = Deliver.ID 
Left join LetterTypes on LetterTypes.ID=l.Letter_type 
left JOIN RecommiteTypes ON RC.Type = RecommiteTypes.ID 
left JOIN ActionType  ON ActionType.ActionTypeID = RC.ActionTypeID'

set @sql=@sql+@rW

set @where=isnull(ltrim(rtrim(@where)),'')
 if (@where<>'') 
   select @sql=@sql+' and '+@where

set @sql=@sql+' order by rc.recommitedate desc,l.indicatorid desc'
exec sp_executesql  @sql
PRINT @sql



GO
/* sp_recommite_statistic]    Script Date: 01/06/2010 00:22:06 */
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE  PROCEDURE [dbo].[sp_recommite_statistic] 
@SecretariatID int,@myear tinyint,@where nvarchar(1000)

as
declare @sql nvarchar (4000),@rw nvarchar(2000),@Today char(10)

select @today=dbo.shamsi(getdate())

set @RW=' 
 WHERE  not (l.letter_type=2 and l.letterformat=1 ) and  (l.LetterFormat <3) AND  L.myear='+cast(@myear as varchar(10))
if @SecretariatID>0 
set @rw=@rw+'
 AND (SecretariatID = '+cast(@SecretariatID as varchar(10))+')'


set @sql=' SELECT top 1000   Fo.Title Recommited, 
min(dbo.Recommite_DeadLine(rc.Recommiteid,isnull(Rc.Proceeddate,'''+@today+'''))) MinDeadlineDays,
max(dbo.Recommite_DeadLine(rc.Recommiteid,isnull(Rc.Proceeddate,'''+@today+'''))) MaxDeadlineDays,
avg(dbo.Recommite_DeadLine(rc.Recommiteid,isnull(Rc.Proceeddate,'''+@today+'''))) AvgDeadlineDays,
min(dbo.shamsidatediff(rc.Recommitedate,isnull(Rc.Proceeddate,'''+@today+'''))) MinProgressDays,
max(dbo.shamsidatediff(rc.Recommitedate,isnull(Rc.Proceeddate,'''+@today+'''))) MaxProgressDays,
avg(dbo.shamsidatediff(rc.Recommitedate,isnull(Rc.Proceeddate,'''+@today+'''))) AvgProgressDays

FROM ReCommites RC 
INNER JOIN Letter L ON RC.LetterID = L.LetterID
INNER JOIN Secretariats  ON Secretariats.Secid = L.SecretariatID
left JOIN FromOrganizations FO ON FO.ID = RC.OrgID '

set @sql=@sql+@rW

set @where=isnull(ltrim(rtrim(@where)),'')
 if (@where<>'') 
   select @sql=@sql+' and '+@where

set @sql=@sql+'
 group by  Fo.Title
 order by Fo.Title '
exec sp_executesql  @sql
PRINT @sql




GO
/* sp_Recommites_Number]    Script Date: 01/06/2010 00:22:06 */
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO








create procedure [dbo].[sp_Recommites_Number]
@bdate char(10),@edate Char(10) as
SELECT     Title,
 sum(case when Proceeded=1 then 1 else 0 end) as Proceed,
sum(case when Proceeded=0 then 1 else 0 end) as NotProceed, 
sum(case when Proceeded=1 then dbo.ShamsiDateDiff(RecommiteDate, ProceedDate) else 0 end) SumProceed into #m
FROM         ReCommites INNER JOIN
                      FromOrganizations ON ReCommites.OrgID = FromOrganizations.ID
WHERE     (RecommiteDate BETWEEN @bdate AND @edate)
group by title

SELECT     *,case when Proceed>0 then  round(cast(SumProceed as float)/Proceed,2)  else 0 end as avgProceed
FROM         #m



 

GO
/* sp_ReindexTables]    Script Date: 01/06/2010 00:22:06 */
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO





CREATE PROCEDURE [dbo].[sp_ReindexTables]
as
declare  @Name varchar(50)
declare  @SQL nvarchar(100)
declare Main_Cursor cursor for  
           select name from sysobjects
           where type='U' order by name
 open  Main_Cursor 
 fetch next from Main_Cursor into @Name

 while @@Fetch_Status=0 
  begin
    set @sql='dbcc dbreindex( ['+@name+'] )'
    print @sql+'...'
    exec sp_executesql @SQL        
   fetch next from Main_Cursor into @Name
  end 

 close Main_Cursor
 deallocate Main_Cursor




GO
/* Sp_Sel_Emails]    Script Date: 01/06/2010 00:22:06 */
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE Procedure [dbo].[Sp_Sel_Emails] @Status SmallInt , @UsersID int     
As  
begin  
   Select EmailsID,Code,Subject,SendAddress,ReciveAddress,  
          Status,DateEmail,TimeEmail,IsRead,IsAnswer,  
          UsersID,AttachFileName,IsReciveEmail    
   from Emails  
   Where(Status = @Status)
   And(UsersID = @UsersID)
end 


GO
/* Sp_Sel_ImageData]    Script Date: 01/06/2010 00:22:06 */
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

Create Procedure [dbo].[Sp_Sel_ImageData] @TableName Nvarchar(50) , @TableID int 
As
Select * 
from ImageData
Where(TableName = @TableName)
  And(TableID = @TableID)


GO
/* Sp_Sel_News]    Script Date: 01/06/2010 00:22:06 */
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

Create Procedure [dbo].[Sp_Sel_News] @Like Nvarchar(50)    
As  
if @Like = ''  
   Select Top 500 * From News Order BY NewsID Desc  
else  
begin  
   Set @Like = '%'+@Like+'%'  
   Select Top 500 * From News Where(Title like @Like) Order BY NewsID Desc  
end  



GO
/* Sp_Sel_NewsGroup]    Script Date: 01/06/2010 00:22:06 */
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

Create Procedure [dbo].[Sp_Sel_NewsGroup] @UsersID Int  
As  
Select * from NewsGroup   
Where(UsersID = @UsersID)


GO
/* Sp_Sel_Phone]    Script Date: 01/06/2010 00:22:06 */
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE Procedure [dbo].[Sp_Sel_Phone] @UserSID Int    
As    
Select *
from Phone
Where (1=1)
And((IsPublic=1)or(UsersID = @UserSID))
Order By Code 



GO
/* Sp_Sel_UserAccArchive]    Script Date: 01/06/2010 00:22:06 */
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE Procedure [dbo].[Sp_Sel_UserAccArchive] @SecID int , @userID int  , @ArchiveCenterID int
As  
Select *  
From UserAccArchive  
Where(SecID = @SecID)
And(UserID = @userID)  
And(ArchiveCenterID = @ArchiveCenterID)

GO
/* Sp_Select_Receipt]    Script Date: 01/06/2010 00:22:06 */
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

Create Procedure [dbo].[Sp_Select_Receipt] @ReceiptID int = 0  
as  
if @ReceiptID = 0
   Select * from Receipt
else 
   Select * from Receipt Where(ReceiptID = @ReceiptID )  

GO
/* Sp_Select_WorkGroup]    Script Date: 01/06/2010 00:22:06 */
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

Create Procedure [dbo].[Sp_Select_WorkGroup] @UserID int 
As
  Select * From WorkGroup Where UserID = @UserID


GO
/* sp_SetForeinKey]    Script Date: 01/06/2010 00:22:06 */
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


CREATE  Procedure [dbo].[sp_SetForeinKey]
@inp bit
 as
    declare  @Name varchar(50)
    declare  @SQL nvarchar(100)
    declare Main_Cursor cursor for
               select name from sysobjects
               where type='U' order by name
     open  Main_Cursor
     fetch next from Main_Cursor into @Name
    
     while @@Fetch_Status=0 
      begin
       if @inp=0  set @sql='alter table ['+@name+'] nocheck constraint all'
        else set @sql='alter table ['+@name+'] check constraint all'
        exec sp_executesql @SQL        
       fetch next from Main_Cursor into @Name
      end
    
     close Main_Cursor
     deallocate Main_Cursor

GO
/* sp_Statistic]    Script Date: 01/06/2010 00:22:06 */
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO










CREATE  procedure [dbo].[sp_Statistic]
@Secretariatid int,@myear tinyint,@Letter_Type int,@LetterFormat int, @where nvarchar(2000),@archiveFolderID int,@GroupBy int
as 

set @where= case when isnull(ltrim(rtrim(@where)),'')<>'' then
                          'where len(registrationdate)=10 and '+@where else ' where len(registrationdate)=10' end

if @Letter_Type<>0 
  set @where=@where+' and (Letter_Type = '+Cast(@Letter_Type as varchar(5))+')'

if @Secretariatid<>0 
  set @where=@where+' and (Secretariatid = '+Cast(@Secretariatid as varchar(5))+')'

if @Myear<>0 
  set @where=@where+' and (myear = '+Cast(@myear as varchar(5))+')'

if @LetterFormat<>0 
  set @where=@where+' and (LetterFormat = '+Cast(@LetterFormat as varchar(5))+')'



declare @sql nvarchar(4000),@select  varchar(500),@joins varchar(500)



set @joins =case when @groupby<8         then ' '
                             when @groupby=8 then ' left JOIN Classifications ON Letter.ClassificationID = Classifications.ID '                     
                             when @groupby=9 then ' left JOIN Urgenceis ON Letter.UrgencyID = Urgenceis.ID '                     
                             when @groupby=10 then ' left JOIN  Fromorganizations  ToOrganizations ON Letter.ToOrgID = ToOrganizations.ID '
                             when @groupby=11 then ' left JOIN  Fromorganizations   ON Letter.FromOrgID = Fromorganizations.ID '   
                             when @groupby=12 then ' left JOIN  users   ON Letter.userid = users.ID '   end

           


declare @Field varchar(100)
set @field= case @groupby 
                         when 1  then 'registrationdate '
                          when 2  then 'dbo.ShamsiDayOfWeek(registrationdate) '
                          when 3  then 'substring(registrationdate,6,2) '
                          when 4  then 'dbo.fasl(registrationdate) '
                          when 5  then 'substring(registrationdate,1,4) '
                          when 6  then 'substring(registrationTime,1,2) '
                          when 7  then 'dbo.pm(registrationtime) '
                          when 8  then 'Classifications.Title '
                          when 9  then 'Urgenceis.Title '
                          when 10 then 'ToOrganizations.title ' 
                          when 11 then 'FromOrganizations.title ' 
                          when 12 then 'users.title ' end

set @select ='select '+@field+' ,count(1)  from letter '

create table ##s(id int identity(1,1),title nvarchar(255),number int)


set @sql=' insert  into ##s(title,number) '+@select+  @joins+@where+
+'group by '+@field +' order by 2 desc '

exec(@sql)

if @groupby in (1,10,11)
 begin
   declare @c int,@d int
   select  @d=number from ##s where id=50 
   set @d=isnull(@d,0)
   select @c=sum(number) from ##s where number<=@d
   delete from ##s where number<=@d
   set  IDENTITY_INSERT ##s On
   insert into ##s(id,title,number) values(50,'ساير ',@c)
 end
  
 
create table #s(id int identity(1,1),title nvarchar(255),number int)

insert into #s(title,number)
select title,number from ##s order by title

select cast(id as int) id ,title,number
from #s
order by title

drop table ##s

 


GO
/* sp_stop_mytrace]    Script Date: 01/06/2010 00:22:06 */
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROC [dbo].[sp_stop_mytrace]
  @queue_handle int
AS

PRINT 'Stopping the following trace:'

SELECT * FROM master.dbo.activetraces
WHERE queue_handle = @queue_handle

-- destroy the queue
EXEC master..xp_trace_destroyqueue @queue_handle

DELETE FROM master.dbo.activetraces
WHERE queue_handle = @queue_handle

GO
/* Transfer_Get_Letter_By_LetterID]    Script Date: 01/06/2010 00:22:07 */
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


create procedure [dbo].[Transfer_Get_Letter_By_LetterID](@Letterid int output)
as

SELECT     Letter.*, org.Title AS OrgTitle
FROM         Letter INNER JOIN
                      FromOrganizations org ON Letter.ToOrgID = org.ID
WHERE     (Letter.LetterID =@Letterid)



GO
/* Transfer_Get_Letterdata_By_LetterDataID]    Script Date: 01/06/2010 00:22:07 */
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO





CREATE PROCEDURE [dbo].[Transfer_Get_Letterdata_By_LetterDataID]
@LetterDataID int
AS
select *
from LetterData
where LetterDataID=@LetterDataID




GO
/* Transfer_Get_LetterData_By_LetterID]    Script Date: 01/06/2010 00:22:07 */
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO





CREATE Procedure [dbo].[Transfer_Get_LetterData_By_LetterID](@LetterID int,@maxSize int )

as
select LetterDataID,LastUpdate,Extention
from letterdata
where letterid=@LetterID
and pagenumber<=dbo.NumberOfPage_ByMaxSize(@letterID,@maxSize)

 

GO
/* Transfer_Get_LetterFieldValue_By_LetterID]    Script Date: 01/06/2010 00:22:07 */
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO









CREATE procedure [dbo].[Transfer_Get_LetterFieldValue_By_LetterID](@LetterID int )
as
select * 
from LetterFieldValue 
where letterid=@LetterID



GO
/* Transfer_Get_Recommites_By_LetterID]    Script Date: 01/06/2010 00:22:07 */
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO





CREATE procedure [dbo].[Transfer_Get_Recommites_By_LetterID](@LetterID int )
as
select Recommites.*,org.Title AS OrgTitle
from Recommites
 INNER JOIN   FromOrganizations org ON Recommites.OrgID = org.ID
where letterid=@LetterID


GO
/* Transfer_Get_SentLetter]    Script Date: 01/06/2010 00:22:07 */
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO



CREATE procedure [dbo].[Transfer_Get_SentLetter]
@RelatedSecretariatID int,
@FromDate char(10)
as


declare @ToSecID int,@DestinationOrgID_inSource int


select @ToSecID=DestinationSecID,@DestinationOrgID_inSource=DestinationOrgID_inSource
from RelatedSecretariats
where  RelatedSecretariatID=@RelatedSecretariatID



SELECT     top 100 l.*
FROM       Letter l
WHERE     letterformat=1 
      and letter_type                               = 2
      and sendstatusid                              = 2
      and Registrationdate                          >= @FromDate  
      and l.ToOrgID                                  = @DestinationOrgID_inSource
and exists(select * from letterdata where letterid=l.letterid)


GO
/* Transfer_insert_LetterFieldValue]    Script Date: 01/06/2010 00:22:07 */
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


CREATE PROCEDURE [dbo].[Transfer_insert_LetterFieldValue]
	(@LetterID 	[int],
	 @FieldID 	[int],
	 @FieldValue 	[nvarchar](2000),
	 @LastUpdate	[datetime],
         @LetterFieldValueID 	[int] output)

AS INSERT INTO[LetterFieldValue] 
	 ( 
	 [LetterID],
	 [FieldID],
	 [FieldValue],
	 LastUpdate)

VALUES
	(
	 @LetterID,
	 @FieldID,
	 @FieldValue,
	 @LastUpdate) 
set @LetterFieldValueID=@@identity





GO
/* Transfer_insert_ReCommites]    Script Date: 01/06/2010 00:22:07 */
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


CREATE PROCEDURE [dbo].[Transfer_insert_ReCommites]
	(
	 @LetterID 	[int],
	 @ID 	[smallint],
	 @Type 	[tinyint],
	 @ParentId 	[smallint],
	 @OrgID 	[int],
	 @Paraph 	[nvarchar](500),
	 @RecommiteDate 	[varchar](10),
	 @UserID 	[tinyint],
	 @IsCopy 	[bit],
	 @Proceeded 	[bit],
	 @ProceedDate 	[varchar](10),
	 @staffmemo 	[nvarchar](255),
	 @viewdate 	[char](10),
	 @OrgStaff 	[nvarchar](50),
	 @DeadLineDate 	[char](10),
	 @LastUpdate 	[datetime],
         @RecommiteID 	 int output )

AS INSERT INTO  [ReCommites] 
	 ( 
	 [LetterID],
	 [ID],
	 [Type],
	 [ParentId],
	 [OrgID],
	 [Paraph],
	 [RecommiteDate],
	 [UserID],
	 [IsCopy],
	 [Proceeded],
	 [ProceedDate],
	 [staffmemo],
	 [viewdate],
	 [OrgStaff],
	 [DeadLineDate],
	 [LastUpdate])

VALUES 
	( 
	 @LetterID,
	 @ID,
	 @Type,
	 @ParentId,
	 @OrgID,
	 @Paraph,
	 @RecommiteDate,
	 @UserID,
	 @IsCopy,
	 @Proceeded,
	 @ProceedDate,
	 @staffmemo,
	 @viewdate,
	 @OrgStaff,
	 @DeadLineDate,
	 @LastUpdate)

set @RecommiteID=@@identity

exec Transfer_Get_LetterData_By_LetterID 5242, 1000



GO
/* Transfer_Insert_SentLetter]    Script Date: 01/06/2010 00:22:07 */
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO






CREATE PROCEDURE [dbo].[Transfer_Insert_SentLetter]
	(@IndicatorID 	[int],
	 @MYear 	[tinyint],
	 @SecretariatID 	[tinyint],
	 @Letter_Type 	[tinyint],
	 @letterformat 	[tinyint],
	 @IncommingNO 	[nvarchar](50),
	 @Incommingdate 	[nvarchar](10),
	 @CenterNo 	[nvarchar](50),
	 @CenterDate 	[char](10),
	 @FromOrgID 	[int],
	 @ToOrgID 	[int],
	 @Signerid 	[nvarchar](50),
	 @ClassificationID 	[tinyint],
	 @UrgencyID 	[smallint],
	 @Memo 	[nvarchar](500),
	 @AttachTitle 	[nvarchar](50),
	 @NumberOfAttachPages 	[smallint],
	 @NumberOfPage 	[tinyint],
	 @ReceiveTypeID 	[tinyint],
	 @UserID 	[int],
	 @RetroactionNo 	[nvarchar](50),
	 @UserMemo 	[nvarchar](255),
	 @RegistrationDate 	[char](10),
	 @RegistrationTime 	[varchar](5),
	 @FollowLetterNo 	[nvarchar](50),
	 @ToStaffer 	[nvarchar](50),
	 @SentLetterID 	[int],
	 @TemplateID 	[int],
	 @HeaderID 	[int],
	 @LetterRecommites 	[nvarchar](500),
	 @FromStaffer 	[nvarchar](50),
	 @Finalized 	[bit],
	 @SendStatusID 	[tinyint],
@LetterID int output)

AS INSERT INTO  [Letter] 
	 ( [IndicatorID],	 [MYear],	 [SecretariatID],	 [Letter_Type],
	 [letterformat],	 [IncommingNO],	 [Incommingdate],	 [CenterNo],
	 [CenterDate],
	 [FromOrgID],
	 [ToOrgID],
	 [Signerid],
	 [ClassificationID],
	 [UrgencyID],
	 [Memo],
	 [AttachTitle],
	 [NumberOfAttachPages],
	 [NumberOfPage],
	 [ReceiveTypeID],
	 [UserID],
	 [RetroactionNo],
	 [UserMemo],
	 [RegistrationDate],
	 [RegistrationTime],
	 [FollowLetterNo],
	 [ToStaffer],
	 [SentLetterID],
	 [TemplateID],
	 [HeaderID],
	 [LetterRecommites],
	 [FromStaffer],
	 [Finalized],
	 [SendStatusID]) 

VALUES 
	( @IndicatorID,
	 @MYear,
	 @SecretariatID,
	 @Letter_Type,
	 @letterformat,
	 @IncommingNO,
	 @Incommingdate,
	 @CenterNo,
	 @CenterDate,
	 @FromOrgID,
	 @ToOrgID,
	 @Signerid,
	 @ClassificationID,
	 @UrgencyID,
	 @Memo,
	 @AttachTitle,
	 @NumberOfAttachPages,
	 @NumberOfPage,
	 @ReceiveTypeID,
	 @UserID,
	 @RetroactionNo,
	 @UserMemo,
	 @RegistrationDate,
	 @RegistrationTime,
	 @FollowLetterNo,
	 @ToStaffer,
	 @SentLetterID,
	 @TemplateID,
	 @HeaderID,
	 @LetterRecommites,
	 @FromStaffer,
	 @Finalized,
	 @SendStatusID)
select @letterID=@@identity


GO
/* Transfer_Insert_SharedLetter]    Script Date: 01/06/2010 00:22:07 */
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO





CREATE PROCEDURE [dbo].[Transfer_Insert_SharedLetter]

	(@IndicatorID 	[int],
	 @MYear 	[tinyint],
	 @SecretariatID 	[tinyint],
	 @Letter_Type 	[tinyint],
	 @letterformat 	[tinyint],
	 @IncommingNO 	[nvarchar](50),
	 @Incommingdate 	[nvarchar](10),
	 @CenterNo 	[nvarchar](50),
	 @CenterDate 	[char](10),
	 @FromOrgID 	[int],
	 @ToOrgID 	[int],
	 @Signerid 	[nvarchar](50),
	 @ClassificationID 	[tinyint],
	 @UrgencyID 	[smallint],
	 @Memo 	[nvarchar](500),
	 @AttachTitle 	[nvarchar](50),
	 @NumberOfAttachPages 	[smallint],
	 @NumberOfPage 	[tinyint],
	 @ReceiveTypeID 	[tinyint],
	 @UserID 	[int],
	 @RetroactionNo 	[nvarchar](50),
	 @UserMemo 	[nvarchar](255),
	 @RegistrationDate 	[char](10),
	 @RegistrationTime 	[varchar](5),
	 @FollowLetterNo 	[nvarchar](50),
	 @ToStaffer 	[nvarchar](50),
	 @SentLetterID 	[int],
	 @TemplateID 	[int],
	 @HeaderID 	[int],
	 @LetterRecommites 	[nvarchar](500),
	 @FromStaffer 	[nvarchar](50),
	 @Finalized 	[bit],
	 @SendStatusID 	[tinyint],
	 @LastUpdate 	datetime,
	 @UserTableID 	[int],
	 @UniqueID  bigint,
@LetterID int output)

AS INSERT INTO  [Letter] 
	 ( [IndicatorID],	 [MYear],	 [SecretariatID],	 [Letter_Type],
	 [letterformat],	 [IncommingNO],	 [Incommingdate],	 [CenterNo],
	 [CenterDate],
	 [FromOrgID],
	 [ToOrgID],
	 [Signerid],
	 [ClassificationID],
	 [UrgencyID],
	 [Memo],
	 [AttachTitle],
	 [NumberOfAttachPages],
	 [NumberOfPage],
	 [ReceiveTypeID],
	 [UserID],
	 [RetroactionNo],
	 [UserMemo],
	 [RegistrationDate],
	 [RegistrationTime],
	 [FollowLetterNo],
	 [ToStaffer],
	 [SentLetterID],
	 [TemplateID],
	 [HeaderID],
	 [LetterRecommites],
	 [FromStaffer],
	 [Finalized],
	 [SendStatusID],
	 LastUpdate 	,
	 UserTableID 	,
	 UniqueID ) 
VALUES 
	( @IndicatorID,
	 @MYear,
	 @SecretariatID,
	 @Letter_Type,
	 @letterformat,
	 @IncommingNO,
	 @Incommingdate,
	 @CenterNo,
	 @CenterDate,
	 @FromOrgID,
	 @ToOrgID,
	 @Signerid,
	 @ClassificationID,
	 @UrgencyID,
	 @Memo,
	 @AttachTitle,
	 @NumberOfAttachPages,
	 @NumberOfPage,
	 @ReceiveTypeID,
	 @UserID,
	 @RetroactionNo,
	 @UserMemo,
	 @RegistrationDate,
	 @RegistrationTime,
	 @FollowLetterNo,
	 @ToStaffer,
	 @SentLetterID,
	 @TemplateID,
	 @HeaderID,
	 @LetterRecommites,
	 @FromStaffer,
	 @Finalized,
	 @SendStatusID,
	 @LastUpdate 	,
	 @UserTableID 	,
	 @UniqueID )
select @letterID=@@identity




GO
/* Transfer_Sent_RelatedSecs]    Script Date: 01/06/2010 00:22:08 */
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


create  procedure [dbo].[Transfer_Sent_RelatedSecs]
as


SELECT     *,dbo.get_Number_Of_Letter_RelatedSecretariatID(RelatedSecretariatID) Number_of_letters
FROM         RelatedSecretariats 




GO
/* Transfer_shared_RelatedSecs]    Script Date: 01/06/2010 00:22:08 */
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO



CREATE  procedure [dbo].[Transfer_shared_RelatedSecs]
as

SELECT     RelatedSecretariatID, RelatedSecretariatTitle, DestinationOrgID_inSource, RelationType, SourceSecID, 
                      ServerIP, DbName, DestinationSecID
FROM         RelatedSecretariats INNER JOIN
                      Server ON RelatedSecretariats.DestinationServerID = Server.ServerID
WHERE     RelationType in ( 2, 3)




GO
/* Trunsfer_update_Letter]    Script Date: 01/06/2010 00:22:08 */
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO






CREATE  PROCEDURE [dbo].[Trunsfer_update_Letter]
	(@LetterID 	[int],
	 @IncommingNO 	[nvarchar](50),
	 @Incommingdate 	[nvarchar](10),
	 @CenterNo 	[nvarchar](50),
	 @CenterDate 	[char](10),
	 @ClassificationID 	[tinyint],
	 @UrgencyID 	[smallint],
	 @Memo 	[nvarchar](500),
	 @AttachTitle 	[nvarchar](50),
	 @NumberOfAttachPages 	[smallint],
	 @NumberOfPage 	[tinyint],
	 @ReceiveTypeID 	[tinyint],
	 @RetroactionNo 	[nvarchar](50),
	 @UserMemo 	[nvarchar](255),
	 @FollowLetterNo 	[nvarchar](50),
	 @ToStaffer 	[nvarchar](50),
	 @LetterRecommites 	[nvarchar](500),
	 @FromStaffer 	[nvarchar](50),
	 @Finalized 	[bit],
	 @UserTableID 	[int],
	 @LastUpdate	[datetime])

AS UPDATE  [Letter] 

SET      [IncommingNO]	 = @IncommingNO,
	 [Incommingdate]	 = @Incommingdate,
	 [CenterNo]	 = @CenterNo,
	 [CenterDate]	 = @CenterDate,
	 [ClassificationID]	 = @ClassificationID,
	 [UrgencyID]	 = @UrgencyID,
	 [Memo]	 = @Memo,
	 [AttachTitle]	 = @AttachTitle,
	 [NumberOfAttachPages]	 = @NumberOfAttachPages,
	 [NumberOfPage]	 = @NumberOfPage,
	 [ReceiveTypeID]	 = @ReceiveTypeID,
	 [RetroactionNo]	 = @RetroactionNo,
	 [UserMemo]	 = @UserMemo,
	 [FollowLetterNo]	 = @FollowLetterNo,
	 [ToStaffer]	 = @ToStaffer,
	 [LetterRecommites]	 = @LetterRecommites,
	 [FromStaffer]	 = @FromStaffer,
	 [Finalized]	 = @Finalized,
	 [LastUpdate]	 = @LastUpdate,
	 [UserTableID]	 = @UserTableID


WHERE 
	( [LetterID]	 = @LetterID)




GO
/* Trunsfer_update_LetterFieldValue]    Script Date: 01/06/2010 00:22:08 */
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO




CREATE  PROCEDURE [dbo].[Trunsfer_update_LetterFieldValue]
	(@LetterFieldValueID 	[int],
	 @FieldValue 	[nvarchar](2000),
	 @LastUpdate	[datetime])

AS UPDATE  [LetterFieldValue] 

SET  [FieldValue]	 = @FieldValue,
	 [LastUpdate]	 = @LastUpdate

WHERE 
	( [LetterFieldValueID]	 = @LetterFieldValueID)




GO
/* Trunsfer_update_ReCommites]    Script Date: 01/06/2010 00:22:08 */
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO



CREATE  PROCEDURE [dbo].[Trunsfer_update_ReCommites]
	(@RecommiteID 	[int],
	 @Paraph 	[nvarchar](500),
	 @IsCopy 	[bit],
	 @Proceeded 	[bit],
	 @ProceedDate 	[varchar](10),
	 @DeadLineDate 	[char](10),
	 @LastUpdate	[datetime])

AS UPDATE  [ReCommites] 

SET 	 [Paraph]	 = @Paraph,
	 [IsCopy]	 = @IsCopy,
	 [Proceeded]	 = @Proceeded,
	 [ProceedDate]	 = @ProceedDate,
	 [DeadLineDate]	 = @DeadLineDate ,
	 [LastUpdate]	 = @LastUpdate
WHERE 
	( [RecommiteID]	 = @RecommiteID)




GO
/* Update_all_recommites]    Script Date: 01/06/2010 00:22:08 */
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO




CREATE PROCEDURE [dbo].[Update_all_recommites] AS
declare @i int
set @i=1
update letter
set letterRecommites=FromOrganizations.Title+'  '+recommitedate
from letter inner join recommites on recommites.letterid=letter.letterid
inner join fromorganizations on fromorganizations.id=recommites.orgid
where recommites.id=1 and type=3


while @i<16
 begin
set @i=@i+1
update letter
set letterRecommites=letterRecommites+','+FromOrganizations.Title+'  '+recommitedate
from letter inner join recommites on recommites.letterid=letter.letterid
inner join fromorganizations on fromorganizations.id=recommites.orgid
where recommites.id=@i  and type=3


update letter
set letterRecommites=letterRecommites+','+FromOrganizations.Title+'  '+recommitedate
from letter inner join recommites on recommites.letterid=letter.letterid
inner join fromorganizations on fromorganizations.id=recommites.orgid
where recommites.id=@i-1 and type=2

update letter
set letterRecommites=letterRecommites+','+FromOrganizations.Title+'  '+recommitedate
from letter inner join recommites on recommites.letterid=letter.letterid
inner join fromorganizations on fromorganizations.id=recommites.orgid
where recommites.id=@i-1 and type=1
end








GO
/* Update_Archived_letter]    Script Date: 01/06/2010 00:22:08 */
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO


CREATE Procedure [dbo].[Update_Archived_letter]
@Letterid int,@archived bit
as

UPDATE    Letter
SET        archived = @archived  
WHERE     (LetterID = @LetterID)




GO
/* update_ArchiveFolder]    Script Date: 01/06/2010 00:22:08 */
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO






CREATE PROCEDURE [dbo].[update_ArchiveFolder]
	(@FolderID 	[int],
	 @Title 	[nvarchar](100),
	 @Notes 	[nvarchar](500),
 @Place nvarchar(100))

AS UPDATE [dbo].[ArchiveFolder] 

SET  [Title]	 = @Title,
	 [Notes]	 = @Notes,
 Place=@Place

WHERE 
	( [FolderID]	 = @FolderID)




GO
/* update_FromOrganizations_Title]    Script Date: 01/06/2010 00:22:08 */
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO









CREATE procedure [dbo].[update_FromOrganizations_Title](@ID INT, @Newtitle nVARCHAR(200),@NewResponsibleStaffer nvarchar(100),@newID int output)
as
insert into FromOrganizations(Title, ParentID, Phone, Fax, Email, ResponsibleStaffer, IsActive, PreCode, IsInnerOrg, Code)
select @Newtitle, ParentID, Phone, Fax, Email, @NewResponsibleStaffer, IsActive, PreCode, IsInnerOrg, Code
from FromOrganizations
where ID=@ID

set @newID=@@identity

Update FromOrganizations
set Isactive=0,Code='_'+Code
where ID=@ID



Update FromOrganizations
set ParentId=@newID
where ParentId=@ID




GO
/* update_Letter_Finalized]    Script Date: 01/06/2010 00:22:08 */
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO




CREATE PROCEDURE [dbo].[update_Letter_Finalized]
	(@LetterID 	[int],
	 @Finalized 	[bit])

AS 
UPDATE .[dbo].[Letter]  
SET  [Finalized]	 = @Finalized  
WHERE  ( [LetterID]	 = @LetterID)

 

GO
/* update_Letter_Indicator]    Script Date: 01/06/2010 00:22:08 */
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO










CREATE PROCEDURE [dbo].[update_Letter_Indicator]
	(@LetterID 	[int],
	 @NewIndicatorID 	[int],
	 @NewSecretariatID 	[tinyint],
	 @NewLetter_Type 	[tinyint],
	 @Newletterformat 	[tinyint],
	 @NewRegistrationDate 	[char](10),@Updated bit output)

AS
declare @myear int
select @myear=myear
from letter 
where ( [LetterID]	 = @LetterID)


set @updated=1


if not exists (SELECT   *  
FROM         Letter
WHERE     (IndicatorID = @NewIndicatorID) AND (MYear = @myear) AND (SecretariatID = @NewSecretariatID) AND (Letter_Type = @NewLetter_Type) AND (letterformat = @Newletterformat))
 UPDATE [dbo].[Letter] 

SET  [IndicatorID]	 = @NewIndicatorID,
	 [SecretariatID]	 = @NewSecretariatID,
	 [Letter_Type]	 = @NewLetter_Type,
	 [letterformat]	 = @Newletterformat,
	 [RegistrationDate]	 = @NewRegistrationDate 

WHERE 
	( [LetterID]	 = @LetterID)
else 
set @updated=0







GO
/* update_letter_sendstatusID]    Script Date: 01/06/2010 00:22:08 */
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO


create proc [dbo].[update_letter_sendstatusID]( @LetterID int ,@SendStatusID tinyint)
as
UPDATE    Letter
SET              SendStatusID = @SendStatusID
WHERE     (LetterID = @LetterID)



GO
/* update_LetterText]    Script Date: 01/06/2010 00:22:08 */
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO








create PROCEDURE [dbo].[update_LetterText]
	(@LetterID  	int,
	 @TypeText   	[nvarchar](4000))

AS UPDATE [dbo].[LetterText] 

SET 	 [TypeText]	 = @TypeText 

WHERE 
	( LetterID = @LetterID  )


GO
/* Update_ParaphTemplate]    Script Date: 01/06/2010 00:22:08 */
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
Create Procedure [dbo].[Update_ParaphTemplate]
@ParaphTemplateID int,@Title nvarchar(50) ,@Paraph nvarchar(500)
as

UPDATE [ydabir].[dbo].[ParaphTemplate]
   SET [Title] = @Title
      ,[Paraph] = @Paraph
 WHERE ParaphTemplateID=@ParaphTemplateID

GO
/* update_ReCommites_proceed]    Script Date: 01/06/2010 00:22:08 */
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO




CREATE PROCEDURE [dbo].[update_ReCommites_proceed]
	(@RecommiteID int,
	 @Proceeded 	[bit],
	 @ProceedDate 	[nvarchar](10),
 @actionTypeID tinyint)

AS UPDATE [dbo].[ReCommites] 


SET  [Proceeded]	 = @Proceeded,
	 [ProceedDate]	 = @ProceedDate ,
      actionTypeID=@actionTypeID

WHERE 
	( RecommiteID	 = @RecommiteID)




GO
/* update_ReCommites_viewDate]    Script Date: 01/06/2010 00:22:08 */
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO

CREATE PROCEDURE [dbo].[update_ReCommites_viewDate]
	(@RecommiteID int,
	 @ViewDate 	[char](10))

AS UPDATE [dbo].[ReCommites] 

SET  	 ViewDate=@ViewDate


WHERE 
	( RecommiteID	 = @RecommiteID)






GO
/* update_UserLoginLogout]    Script Date: 01/06/2010 00:22:08 */
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO



CREATE PROCEDURE [dbo].[update_UserLoginLogout]
	( @UserLoginLogoutID	[int],
	 @isSafeLogout 	[bit])

AS
 UPDATE [dbo].[UserLoginLogout] 

SET          [LogoutTime]	 = getdate(),
	 [isSafeLogout]	 = @isSafeLogout 

WHERE 	( [UserLoginLogoutID]	 = @UserLoginLogoutID)








GO
/* UserChange_pass]    Script Date: 01/06/2010 00:22:08 */
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO




CREATE PROCEDURE [dbo].[UserChange_pass] (@userID int,@newPass nvarchar(100) )
AS

 
update users
set password=@newPass
where id=@userid 



GO
/* UserLog_Report]    Script Date: 01/06/2010 00:22:08 */
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO



CREATE PROCEDURE [dbo].[UserLog_Report] 
AS
SELECT     Users.Title AS usertitle, Actions.Title AS actiontitle, UserLog.Time1 AS Time, Letter.IndicatorID, LetterTypes.Title AS Letter_type
FROM         UserLog INNER JOIN
                      Users ON UserLog.UserID = Users.Id INNER JOIN
                      Actions ON UserLog.ActionID = Actions.ID LEFT OUTER JOIN
                      Letter ON UserLog.LetterID = Letter.LetterID LEFT OUTER JOIN
                      LetterTypes ON Letter.Letter_Type = LetterTypes.ID
ORDER BY LetterTypes.Title





GO
/* Web_Access]    Script Date: 01/06/2010 00:22:08 */
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE Procedure [dbo].[Web_Access](@userid int,@Result varchar(100) output)
as
set @result=''
SELECT    @result=@result+case when hasaccess=1 then
case ActionID
when 1001 then 'Incomming'
when 1002 then 'Outgoing'
when 1026 then 'Draft'
when 1060 then 'Inner'
when 1058 then 'Drop_Attach'
end+';'
else '' end
FROM         ActionsAccess INNER JOIN
                      Users ON ActionsAccess.AccessID = Users.AccessID
WHERE     (Users.Id = @userid) AND (ActionsAccess.ActionID IN (1001, 1002, 1026, 1058, 1060))

GO
/* web_ArchiveRecommite]    Script Date: 01/06/2010 00:22:09 */
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO



CREATE PROCEDURE [dbo].[web_ArchiveRecommite]
	(@RecommiteID 	[int],
	 @ArchiveFolderID 	[int],
	 @ArchiveDate 	[char](10),
	 @Page 	[int],
	 @ArchiveNotes 	[nvarchar](50),
	 @StaffMemo 	[nvarchar](255),
	 @LetterArchiveID 	[int] output)

AS

declare @LetterId int

select @LetterId=LetterId from Recommites where RecommiteId=@RecommiteId

INSERT INTO [dbo].[LetterArchiveFolder]
	 (
	 [ArchiveFolderID],
	 [LetterID],
	 [ArchiveDate],
	 [Page],
	 [ArchiveNotes])

VALUES
	(
	 @ArchiveFolderID,
	 @LetterID,
	 @ArchiveDate,
	 @Page,
	 @ArchiveNotes)

Update Recommites Set Proceeded=1, staffMemo=@StaffMemo where RecommiteId=@RecommiteId

set @LetterArchiveID=@@identity




GO
/* web_Get_Letter_by_LetterID]    Script Date: 01/06/2010 00:22:09 */
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE proc [dbo].[web_Get_Letter_by_LetterID]
(@LetterID int )
as
SELECT     Letter.*,Html 
FROM       Letter
left JOIN  lettertext ON lettertext.LetterID = Letter.LetterID
WHERE     (Letter.LetterID = @LetterID)










GO
/* web_Get_LetterData_by_LetterDataID]    Script Date: 01/06/2010 00:22:09 */
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO




Create proc [dbo].[web_Get_LetterData_by_LetterDataID]
(@LetterDataID int )
as
SELECT     LetterData.*, Extention.ExtentionTitle, Extention.Extention
FROM       LetterData 
INNER JOIN  Extention ON LetterData.extention = Extention.ExtentionID
WHERE     (LetterDataID = @LetterDataID)








GO
/* web_GetLetterArchiveHistory]    Script Date: 01/06/2010 00:22:09 */
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[web_GetLetterArchiveHistory]
(
	@letterId int,
	@userId int
)
AS

SELECT     dbo.LetterArchiveFolder.ArchiveDate, dbo.ArchiveFolder.*
FROM         dbo.ArchiveFolder INNER JOIN
                      dbo.LetterArchiveFolder ON dbo.ArchiveFolder.FolderID = dbo.LetterArchiveFolder.ArchiveFolderID
Where LetterId = @letterId and ArchiveFolder.UserId=@userId


GO
/* web_GetLetterAttachment]    Script Date: 01/06/2010 00:22:09 */
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

create Procedure [dbo].[web_GetLetterAttachment]
@letterID int 
as

SELECT     LetterData.*, Extention.ExtentionTitle, Extention.Extention
FROM       LetterData 
INNER JOIN  Extention ON LetterData.extention = Extention.ExtentionID
WHERE LetterID=@LetterID







GO
/* web_GetRecommiteById]    Script Date: 01/06/2010 00:22:09 */
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[web_GetRecommiteById]
(@recommiteId int )
AS

SELECT R.*,f.title+' - '+r.OrgStaff RecommiterTitle,IsInnerOrg

FROM ReCommites R  

inner join FromOrganizations f on f.ID=r.OrgID

Where r.RecommiteId=@recommiteId


GO
/* web_insert_AnswerLetter]    Script Date: 01/06/2010 00:22:09 */
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[web_insert_AnswerLetter]
	(
     @LetterID 	[int] output,
     @Indicator 	[int] output,
     @RecommiteId [int] output,
	 @ToOrgTitle 	nvarchar(100),
	 @Signerid 	[nvarchar](50),
	 @ClassificationID 	[tinyint],
	 @UrgencyID 	[smallint],
	 @Memo 	[nvarchar](500),
	 @UserID 	[int],
	 @RetroactionNo 	[nvarchar](50),
	 @UserMemo 	[nvarchar](255),
	 @FollowLetterNo 	[nvarchar](50),
	 @ToStaffer 	[nvarchar](50),
	 @fromstaffer 	[nvarchar](50),
	 @LetterFromOrgID int,
     @receivedLetterID int )

AS 
declare @ToOrgID int,@IndicatorID int ,@FromOrgID 	int,  @MYear tinyint,@SecretariatID tinyint,
        @RegistrationDate 	[char](10),	@RegistrationTime 	[varchar](5)


if not exists (select * from fromorganizations where replace(title,' ','')=replace(@toorgtitle,' ',''))
insert into Fromorganizations(Title,parentid,isinnerorg) values(@toorgtitle,3,0)

select top 1 @ToOrgID=Id from fromorganizations where replace(title,' ','')=replace(@toorgtitle,' ','')

select @RegistrationTime=case when datepart(hour,getdate())<10 then '0'+convert(char(1),datepart(hour,getdate()))
   else convert(char(2),datepart(hour,getdate())) end +':' + convert(char(2),datepart(minute,getdate()))

set @RegistrationDate=dbo.shamsi(getdate())

set @myear=cast (substring(@RegistrationDate,3,2) as tinyint)

SELECT     @SecretariatID=DefualtSecretariatID, @FromOrgID=FromOrgID
FROM         Users
where id=@userid

set @IndicatorID=dbo.newIndicatorid(2,2,@myear,@SecretariatID)

INSERT INTO [Letter] 
	 ( [IndicatorID],
	 [MYear],
	 [SecretariatID],
	 [Letter_Type],
	 [letterformat],
	 [FromOrgID],
	 [ToOrgID],
	 [Signerid],
	 [ClassificationID],
	 [UrgencyID],
	 [Memo],
	 [UserID],
	 [RetroactionNo],
	 [UserMemo],
	 [RegistrationDate],
	 [RegistrationTime],
	 [FollowLetterNo],
	 [ToStaffer],
	 [fromstaffer],
	 [Finalized]) 
 
VALUES 
	( 
	 @IndicatorID,
	 @MYear,
	 @SecretariatID,
	 2,--Letter_Type
	 2,--letterformat
	 @LetterFromOrgID,
	 @ToOrgID,
	 @Signerid,
	 @ClassificationID,
	 @UrgencyID,
	 @Memo,
	 @UserID,
	 @RetroactionNo,
	 @UserMemo,
	 @RegistrationDate,
	 @RegistrationTime,
	 @FollowLetterNo,
	 @ToStaffer,
	 @fromstaffer,
	 0 --Finalized
       )

select @letterid=max(letterid) from letter
select @Indicator = @IndicatorId

exec web_insert_NewReCommite @LetterID,3,0,@FromOrgID,'ثبت پيش نويس جواب نامه',@registrationdate,@UserID,0,0,@RecommiteId output
update letter
set SentLetterID=@letterid
where letterid=@receivedLetterID



GO
/* web_insert_DraftLetter]    Script Date: 01/06/2010 00:22:09 */
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[web_insert_DraftLetter]
	(@Indicator 	[int] output,
	 @LetterId int output,
	 @RecommiteId int output,
	 @ToOrgTitle 	nvarchar(100),
	 @Signerid 	[nvarchar](50),
	 @ClassificationID 	[tinyint],
	 @UrgencyID 	[smallint],
	 @Memo 	[nvarchar](500),
	 @UserID 	[int],
	 @RetroactionNo 	[nvarchar](50),
	 @UserMemo 	[nvarchar](255),
	 @FollowLetterNo 	[nvarchar](50),
	 @ToStaffer 	[nvarchar](50),
	 @fromstaffer 	[nvarchar](50))

AS 
declare @ToOrgID int,@IndicatorID int ,@FromOrgID 	int,  @MYear tinyint,@SecretariatID tinyint,
        @RegistrationDate 	[char](10),	@RegistrationTime 	[varchar](5)


if not exists (select * from fromorganizations where replace(title,' ','')=replace(@toorgtitle,' ',''))
insert into Fromorganizations(Title,parentid,isinnerorg) values(@toorgtitle,3,0)

select top 1 @ToOrgID=Id from fromorganizations where replace(title,' ','')=replace(@toorgtitle,' ','')

select @RegistrationTime=case when datepart(hour,getdate())<10 then '0'+convert(char(1),datepart(hour,getdate()))
   else convert(char(2),datepart(hour,getdate())) end +':' + convert(char(2),datepart(minute,getdate()))

set @RegistrationDate=dbo.shamsi(getdate())

set @myear=cast (substring(@RegistrationDate,3,2) as tinyint)

SELECT     @SecretariatID=DefualtSecretariatID, @FromOrgID=FromOrgID
FROM         Users
where id=@userid

set @IndicatorID=dbo.newIndicatorid(2,2,@myear,@SecretariatID)

INSERT INTO [Letter] 
	 ( [IndicatorID],
	 [MYear],
	 [SecretariatID],
	 [Letter_Type],
	 [letterformat],
	 [FromOrgID],
	 [ToOrgID],
	 [Signerid],
	 [ClassificationID],
	 [UrgencyID],
	 [Memo],
	 [UserID],
	 [RetroactionNo],
	 [UserMemo],
	 [RegistrationDate],
	 [RegistrationTime],
	 [FollowLetterNo],
	 [ToStaffer],
	 [fromstaffer],
	 [Finalized]) 
 
VALUES 
	( 
	 @IndicatorID,
	 @MYear,
	 @SecretariatID,
	 2,--Letter_Type
	 2,--letterformat
	 @FromOrgID,
	 @ToOrgID,
	 @Signerid,
	 @ClassificationID,
	 @UrgencyID,
	 @Memo,
	 @UserID,
	 @RetroactionNo,
	 @UserMemo,
	 @RegistrationDate,
	 @RegistrationTime,
	 @FollowLetterNo,
	 @ToStaffer,
	 @fromstaffer,
	 0 --Finalized
       )

select @letterid=max(letterid) from letter
select @Indicator = @IndicatorID

exec web_insert_NewReCommite @LetterID,3,0,@FromOrgID,'ثبت نامه پيش نويس',@registrationdate,@UserID,0,0,@RecommiteId output
							 
select @RecommiteId


GO 



CREATE PROCEDURE [dbo].[web_insert_innerLetter]
	(@LetterID 	[int] output,
	 @Memo 	ntext,
	 @UserID 	[int],
	 @UserMemo 	[nvarchar](255),
@html ntext)

AS 
declare @IndicatorID int ,@FromOrgID 	int,  @MYear tinyint,@SecretariatID tinyint,
        @RegistrationDate 	[char](10),	@RegistrationTime 	[varchar](5)



select @RegistrationTime=case when datepart(hour,getdate())<10 then '0'+convert(char(1),datepart(hour,getdate()))
   else convert(char(2),datepart(hour,getdate())) end +':' + convert(char(2),datepart(minute,getdate()))

set @RegistrationDate=dbo.shamsi(getdate())

set @myear=cast (substring(@RegistrationDate,3,2) as tinyint)

SELECT     @SecretariatID=DefualtSecretariatID, @FromOrgID=FromOrgID
FROM         Users
where id=@userid

set @IndicatorID=dbo.newIndicatorid(3,1,@myear,@SecretariatID)

INSERT INTO [Letter] 
	 ( [IndicatorID],
	 [MYear],
	 [SecretariatID],
	 [Letter_Type],
	 [letterformat],
	 [FromOrgID],
	 [ToOrgID],
	 [Memo],
	 [UserID],
	 [UserMemo],
	 [RegistrationDate],
	 [RegistrationTime],
	 [Finalized]) 
 
VALUES 
	( 
	 @IndicatorID,
	 @MYear,
	 @SecretariatID,
	 3,--Letter_Type
	 1,--letterformat
	 @FromOrgID,
	 3,--@ToOrgID,
	 @Memo,
	 @UserID,
	 @UserMemo,
	 @RegistrationDate,
	 @RegistrationTime,
	 1 --Finalized
       )

select @letterid=max(letterid) from letter

declare @recommiteId int
exec web_insert_NewReCommite @LetterID,3,0,@FromOrgID,'نامه داخلي',@registrationdate,@UserID,0,0,@recommiteId output


insert into Lettertext values(@letterid,1,'',@html)


GO 

create PROCEDURE [dbo].[web_Insert_LetterData]
	(@LetterDataID 	[int] output,
	 @LetterID 	[int],
	 @PageNumber 	[tinyint],
	 @extention 	[tinyint],
	 @description [nvarchar](200)='',
	 @image [image] = null)

AS INSERT INTO [dbo].[LetterData] 
	 (  [LetterID],
	 [PageNumber],
	 [extention],
	 [image],
	 [description]) 
 
VALUES 
	( @LetterID,
	 @PageNumber,
	 @extention,
	 @image,
	 @description)

set  @LetterDataID=@@identity





GO 
CREATE PROCEDURE [dbo].[web_insert_NewReCommite]
	(@LetterID 	[int],
	 @Type 	[tinyint],
	 @ParentId 	[smallint],
	 @OrgID 	[int],
	 @Paraph 	[nvarchar](500),
	 @RecommiteDate 	[varchar](10),
	 @UserID 	[tinyint],
	 @IsCopy 	[bit],
	 @Proceeded 	[bit],
	 @RecommiteId [int] output)
AS
declare @OrgStaff nvarchar(50),@NewID int

select top 1 @OrgStaff=ResponsibleStaffer       

from dbo.FromOrganizations 

WHERE             id         = @OrgID
SELECT     @NewID=ISNULL(MAX(ID), 0) + 1   FROM ReCommites WHERE LetterID=@letterID and type=@type
INSERT INTO [dbo].[ReCommites] 
             (
             [LetterID],
             [ID],
             [Type],
             [ParentId],
             [OrgID],
             [Paraph],
             [RecommiteDate],
             [UserID],
             [IsCopy],
             [Proceeded],
			 OrgStaff) 
VALUES
            ( 
             @LetterID,
             @NewID,
             @Type,
             @ParentId,
             @OrgID,
             @Paraph,
             @RecommiteDate,
             @UserID,
             @IsCopy,
             @Proceeded,
			 @OrgStaff )

select @RecommiteId = @@identity



GO 


CREATE PROCEDURE [dbo].[web_insert_ReceivedLetter]
	(@Indicator 	[int] output,
	 @LetterID 	[int] output,
	 @RecommiteId int output,
	 @ToOrgTitle 	nvarchar(100),
	 @Signerid 	[nvarchar](50),
	 @ClassificationID 	[tinyint],
	 @UrgencyID 	[smallint],
	 @Memo 	[nvarchar](500),
	 @UserID 	[int],
	 @RetroactionNo 	[nvarchar](50),
	 @UserMemo 	[nvarchar](255),
	 @FollowLetterNo 	[nvarchar](50),
	 @ToStaffer 	[nvarchar](50),
	 @fromstaffer 	[nvarchar](50),
	 @IncommingNO 	[nvarchar](50),
	 @Incommingdate 	[nvarchar](10),
	 @CenterNo 	[nvarchar](50),
	 @CenterDate 	[char](10),
	 @FromOrgID 	[int],
	 @NumberOfPage 	[tinyint],
	 @ReceiveTypeID 	[tinyint])
AS 
declare @ToOrgID int,@IndicatorID int ,@UserFromOrgID 	int,  @MYear tinyint,@SecretariatID tinyint,
        @RegistrationDate 	[char](10),	@RegistrationTime 	[varchar](5)


if not exists (select * from fromorganizations where replace(title,' ','')=replace(@toorgtitle,' ',''))
insert into Fromorganizations(Title,parentid,isinnerorg) values(@toorgtitle,3,0)

select top 1 @ToOrgID=Id from fromorganizations where replace(title,' ','')=replace(@toorgtitle,' ','')

select @RegistrationTime=case when datepart(hour,getdate())<10 then '0'+convert(char(1),datepart(hour,getdate()))
   else convert(char(2),datepart(hour,getdate())) end +':' + convert(char(2),datepart(minute,getdate()))

set @RegistrationDate=dbo.shamsi(getdate())

set @myear=cast (substring(@RegistrationDate,3,2) as tinyint)

SELECT     @SecretariatID=DefualtSecretariatID, @UserFromOrgID=FromOrgID
FROM         Users
where id=@userid

set @IndicatorID=dbo.newIndicatorid(1,1,@myear,@SecretariatID)

INSERT INTO [Letter] 
	 ( [IndicatorID],	 [MYear],	 [SecretariatID],	 [Letter_Type],	 [letterformat],	 [FromOrgID],	 [ToOrgID],
	 [Signerid],	 [ClassificationID],	 [UrgencyID],	 [Memo],	 [UserID],	 [RetroactionNo],	 [UserMemo],
	 [RegistrationDate],	 [RegistrationTime],	 [FollowLetterNo],	 [ToStaffer],	 [fromstaffer],	 [Finalized],IncommingNO ,
     Incommingdate,CenterNo,CenterDate,NumberOfPage ,ReceiveTypeID) 
 
VALUES 
	( 
	 @IndicatorID,	 @MYear,	 @SecretariatID,
	 1,--Letter_Type
	 1,--letterformat
	 @FromOrgID,
	 @ToOrgID,
	 @Signerid,
	 @ClassificationID,
	 @UrgencyID,
	 @Memo,
	 @UserID,
	 @RetroactionNo,
	 @UserMemo,
	 @RegistrationDate,
	 @RegistrationTime,
	 @FollowLetterNo,
	 @ToStaffer,
	 @fromstaffer,
	 0, --Finalized
      @IncommingNO , @Incommingdate,@CenterNo,@CenterDate ,@NumberOfPage ,@ReceiveTypeID)

select @letterid=max(letterid) from letter

exec web_insert_NewReCommite @LetterID,3,0,@FromOrgID,'ثبت نامه',@registrationdate,@UserID,0,0,@RecommiteId output

select @Indicator = @IndicatorID

select @RecommiteId




GO 


CREATE PROCEDURE [dbo].[web_insert_sentLetter]
	(@Indicator 	[int] output,
	 @LetterID 	[int] output,
	 @RecommiteId int output,
	 @ToOrgTitle 	nvarchar(100),
	 @Signerid 	[nvarchar](50),
	 @ClassificationID 	[tinyint],
	 @UrgencyID 	[smallint],
	 @Memo 	[nvarchar](500),
	 @UserID 	[int],
	 @RetroactionNo 	[nvarchar](50),
	 @UserMemo 	[nvarchar](255),
	 @FollowLetterNo 	[nvarchar](50),
	 @ToStaffer 	[nvarchar](50),
	 @fromstaffer 	[nvarchar](50),
	 @FromOrgID 	[int],
	 @NumberOfPage 	[tinyint],
	 @ReceiveTypeID 	[tinyint])
AS 
declare @ToOrgID int,@IndicatorID int ,@UserFromOrgID 	int,  @MYear tinyint,@SecretariatID tinyint,
        @RegistrationDate 	[char](10),	@RegistrationTime 	[varchar](5)


if not exists (select * from fromorganizations where replace(title,' ','')=replace(@toorgtitle,' ',''))
insert into Fromorganizations(Title,parentid,isinnerorg) values(@toorgtitle,3,0)

select top 1 @ToOrgID=Id from fromorganizations where replace(title,' ','')=replace(@toorgtitle,' ','')

select @RegistrationTime=case when datepart(hour,getdate())<10 then '0'+convert(char(1),datepart(hour,getdate()))
   else convert(char(2),datepart(hour,getdate())) end +':' + convert(char(2),datepart(minute,getdate()))

set @RegistrationDate=dbo.shamsi(getdate())

set @myear=cast (substring(@RegistrationDate,3,2) as tinyint)

SELECT     @SecretariatID=DefualtSecretariatID, @UserFromOrgID=FromOrgID
FROM         Users
where id=@userid

set @IndicatorID=dbo.newIndicatorid(2,1,@myear,@SecretariatID)

INSERT INTO [Letter] 
	 ( [IndicatorID],	 [MYear],	 [SecretariatID],	 [Letter_Type],	 [letterformat],	 [FromOrgID],	 [ToOrgID],
	 [Signerid],	 [ClassificationID],	 [UrgencyID],	 [Memo],	 [UserID],	 [RetroactionNo],	 [UserMemo],
	 [RegistrationDate],	 [RegistrationTime],	 [FollowLetterNo],	 [ToStaffer],	 [fromstaffer],	 [Finalized],
	 NumberOfPage ,ReceiveTypeID) 
 
VALUES 
	( 
	 @IndicatorID,	 @MYear,	 @SecretariatID,
	 2,--Letter_Type
	 1,--letterformat
	 @FromOrgID,
	 @ToOrgID,
	 @Signerid,
	 @ClassificationID,
	 @UrgencyID,
	 @Memo,
	 @UserID,
	 @RetroactionNo,
	 @UserMemo,
	 @RegistrationDate,
	 @RegistrationTime,
	 @FollowLetterNo,
	 @ToStaffer,
	 @fromstaffer,
	 0, --Finalized
     @NumberOfPage ,@ReceiveTypeID)

select @letterid=max(letterid) from letter

exec web_insert_NewReCommite @LetterID,3,0,@FromOrgID,'ثبت نامه',@registrationdate,@UserID,0,0,@RecommiteId output

select @Indicator = @IndicatorID

select @RecommiteId




GO 

CREATE PROCEDURE [dbo].[web_ProceedRecommite]
	
	(
		@recommiteId int
	)

AS
	Update Recommites Set Proceeded=1 where recommiteId=@recommiteId 
	/* SET NOCOUNT ON */



GO 

CREATE PROCEDURE [dbo].[web_Select_LetterReCommite]


(@letterID 	[int],@type tinyint)  AS 

SELECT R.*,f.title+' - '+isnull(r.OrgStaff,'') Recommitertitle,IsInnerOrg 

FROM ReCommites R  

inner join FromOrganizations f on f.ID=r.OrgID 

where Letterid=@letterID and type=@type







GO 


create procedure [dbo].[ysp_Backup](@dbname nvarchar(50),@path nvarchar(255))
 as
Exec('backup database '+@dbname+' to disk='''+@path+'''')









GO 


create proc [dbo].[Ysp_create_Temp_Database](@Path nvarchar(255))
as
declare @sql nvarchar(1000)
set @sql=
'CREATE DATABASE [yeganeh_tmp_db]  ON PRIMARY (NAME = N''yeganeh_tmp_db_Data'', FILENAME = N'''+@Path+'yeganeh_tmp_db_Data.MDF'' ,
 SIZE = 1, FILEGROWTH = 10%)
 LOG ON (NAME = N''yeganeh_tmp_db_Log'', FILENAME = N'''+@Path+'yeganeh_tmp_db_Log.LDF'' , SIZE = 1, FILEGROWTH = 10%)'

exec master..sp_executesql  @sql




GO 

CREATE PROCEDURE [dbo].[ysp_DELETE_Temp_Database]
AS
if exists (SELECT name
FROM master.dbo.sysdatabases
WHERE name = 'yeganeh_tmp_db')
drop database [yeganeh_tmp_db]




GO 

CREATE PROCEDURE [dbo].[ysp_exists_Temp_Database](@exists bit output)
AS
if exists (SELECT name
FROM master.dbo.sysdatabases
WHERE name = 'yeganeh_tmp_db')
  set @exists=1  else set @exists=0


GO 
CREATE procedure [dbo].[ysp_shrink](@dbname nvarchar(50),@path nvarchar(255))
 as
Exec('backup log '+@dbname+' with truncate_only')

  dbcc shrinkfile(1,1)
 dbcc shrinkfile(2,1)

