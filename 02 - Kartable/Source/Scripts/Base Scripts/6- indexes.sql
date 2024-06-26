
if not Exists(Select * from Sysindexes Where(Name = 'PK_Accesses')And(ID =(Select ID from SysObjects Where Name = 'Accesses')) )  
ALTER TABLE dbo.Accesses WITH NOCHECK ADD CONSTRAINT  
	PK_Accesses PRIMARY KEY CLUSTERED 
	(
	ID
	) ON [PRIMARY]

GO

if not Exists(Select * from Sysindexes Where(Name = 'PK_Tables')And(ID =(Select ID from SysObjects Where Name = 'Tables')) )  
ALTER TABLE dbo.Tables WITH NOCHECK ADD CONSTRAINT  
	PK_Tables PRIMARY KEY CLUSTERED 
	(
	TableId
	) ON [PRIMARY]

GO

if not Exists(Select * from Sysindexes Where(Name = 'PK_Urgenceis')And(ID =(Select ID from SysObjects Where Name = 'Urgenceis')) )  
ALTER TABLE dbo.Urgenceis WITH NOCHECK ADD CONSTRAINT  
	PK_Urgenceis PRIMARY KEY CLUSTERED 
	(
	ID
	) WITH FILLFACTOR = 90 ON [PRIMARY]

GO

if not Exists(Select * from Sysindexes Where(Name = 'PK_Secretariats')And(ID =(Select ID from SysObjects Where Name = 'Secretariats')) )  
ALTER TABLE dbo.Secretariats WITH NOCHECK ADD CONSTRAINT  
	PK_Secretariats PRIMARY KEY CLUSTERED 
	(
	SecID
	) WITH FILLFACTOR = 90 ON [PRIMARY]

GO
 
 

if not Exists(Select * from Sysindexes Where(Name = 'PK_WorkGroupOrg')And(ID =(Select ID from SysObjects Where Name = 'WorkGroupOrg')) )  --Ranjbar
ALTER TABLE dbo.WorkGroupOrg WITH NOCHECK ADD CONSTRAINT  
	PK_WorkGroupOrg PRIMARY KEY CLUSTERED 
	(
	WorkGroupOrgID
	) ON [PRIMARY]

GO


if not Exists(Select * from Sysindexes Where(Name = 'PK_RecommiteData_RecommiteDataID')And(ID =(Select ID from SysObjects Where Name = 'RecommiteData')) )  --Ranjbar
ALTER TABLE dbo.RecommiteData WITH NOCHECK ADD CONSTRAINT  
	PK_RecommiteData_RecommiteDataID PRIMARY KEY CLUSTERED 
	(
	RecommiteDataID
	) ON [PRIMARY]

GO

if not Exists(Select * from Sysindexes Where(Name = 'PK_Accesses')And(ID =(Select ID from SysObjects Where Name = 'Accesses')) )  
ALTER TABLE dbo.Accesses WITH NOCHECK ADD CONSTRAINT  
	PK_Accesses PRIMARY KEY CLUSTERED 
	(
	ID
	) ON [PRIMARY]

GO
 
 
 

if not Exists(Select * from Sysindexes Where(Name = 'PK_Accesses')And(ID =(Select ID from SysObjects Where Name = 'Accesses')) )  
ALTER TABLE dbo.Accesses WITH NOCHECK ADD CONSTRAINT  
	PK_Accesses PRIMARY KEY CLUSTERED 
	(
	ID
	) ON [PRIMARY]

GO
 
if not exists ( select * from sysindexes where name ='userShortCut_user_idx')
 CREATE  CLUSTERED  INDEX [userShortCut_user_idx] ON [dbo].[UserShortCut]([UserID]) ON [PRIMARY]
GO

if not exists ( select * from sysindexes where name ='IX_Actions_ID')
   CREATE  INDEX [IX_Actions_ID] ON [dbo].[Actions]([ID]) ON [PRIMARY]
GO

if not exists ( select * from sysindexes where name ='IX_ApplicationForms_ID')   
   CREATE  INDEX [IX_ApplicationForms_ID] ON [dbo].[ApplicationForms]([ID]) ON [PRIMARY]
GO

if not exists ( select * from sysindexes where name ='IX_ArchiveFolder_ParentFolderID')     
 CREATE  INDEX [IX_ArchiveFolder_ParentFolderID] ON [dbo].[ArchiveFolder]([ParentFolderID]) ON [PRIMARY]
GO

if not exists ( select * from sysindexes where name ='IX_ArchiveFolder_Title')    
  CREATE  INDEX [IX_ArchiveFolder_Title] ON [dbo].[ArchiveFolder]([Title]) ON [PRIMARY]
GO

if not exists ( select * from sysindexes where name ='IX_ArchiveFolder_UserID')   
   CREATE  INDEX [IX_ArchiveFolder_UserID] ON [dbo].[ArchiveFolder]([UserID]) ON [PRIMARY]
GO

if not exists ( select * from sysindexes where name ='IX_ErrorMessage_ErrorMessage')   
   CREATE  INDEX [IX_ErrorMessage_ErrorMessage] ON [dbo].[ErrorMessage]([ErrorMessage]) ON [PRIMARY]
GO

if not exists ( select * from sysindexes where name ='IX_ErrorMessage_FarsiMessage')    
  CREATE  INDEX [IX_ErrorMessage_FarsiMessage] ON [dbo].[ErrorMessage]([FarsiMessage]) ON [PRIMARY]
GO

if not exists ( select * from sysindexes where name ='IX_FieldAccess_FieldID')   
   CREATE  INDEX [IX_FieldAccess_FieldID] ON [dbo].[FieldAccess]([FieldID]) ON [PRIMARY]
GO

if not exists ( select * from sysindexes where name ='IX_FieldAccess_UserID')    
  CREATE  INDEX [IX_FieldAccess_UserID] ON [dbo].[FieldAccess]([UserID]) ON [PRIMARY]
GO

if not exists ( select * from sysindexes where name ='IX_FieldAccess_AccessTypeID')   
   CREATE  INDEX [IX_FieldAccess_AccessTypeID] ON [dbo].[FieldAccess]([AccessTypeID]) ON [PRIMARY]
GO

if not exists ( select * from sysindexes where name ='IX_Fields_TableID')    
  CREATE  INDEX [IX_Fields_TableID] ON [dbo].[Fields]([TableID]) ON [PRIMARY]
GO

if not exists ( select * from sysindexes where name ='IX_Fields_FieldName')    
  CREATE  INDEX [IX_Fields_FieldName] ON [dbo].[Fields]([FieldName]) ON [PRIMARY]
GO

if not exists ( select * from sysindexes where name ='IX_Fields_FieldGroupID')   
   CREATE  INDEX [IX_Fields_FieldGroupID] ON [dbo].[Fields]([FieldGroupID]) ON [PRIMARY]
GO

if not exists ( select * from sysindexes where name ='IX_Fields_FieldTypeID')    
  CREATE  INDEX [IX_Fields_FieldTypeID] ON [dbo].[Fields]([FieldTypeID]) ON [PRIMARY]
GO


if not exists ( select * from sysindexes where name ='IX_Fields_ReferenceTableID')    
  CREATE  INDEX [IX_Fields_ReferenceTableID] ON [dbo].[Fields]([ReferenceTableID]) ON [PRIMARY]
GO

if not exists ( select * from sysindexes where name ='IX_FollowUp_StartFollowUpID')    
  CREATE  INDEX [IX_FollowUp_StartFollowUpID] ON [dbo].[FollowUp]([StartFollowUpID]) ON [PRIMARY]
GO

if not exists ( select * from sysindexes where name ='IX_FollowUp_FollowUPTypeID')   
   CREATE  INDEX [IX_FollowUp_FollowUPTypeID] ON [dbo].[FollowUp]([FollowUPTypeID]) ON [PRIMARY]
GO

if not exists ( select * from sysindexes where name ='IX_FollowUp_DoneStatusID')    
  CREATE  INDEX [IX_FollowUp_DoneStatusID] ON [dbo].[FollowUp]([DoneStatusID]) ON [PRIMARY]
GO

if not exists ( select * from sysindexes where name ='IX_FollowUp_UserID')    
  CREATE  INDEX [IX_FollowUp_UserID] ON [dbo].[FollowUp]([UserID]) ON [PRIMARY]
GO

if not exists ( select * from sysindexes where name ='IX_FollowUp_Letterid')   
   CREATE  INDEX [IX_FollowUp_Letterid] ON [dbo].[FollowUp]([Letterid]) ON [PRIMARY]
GO


if not exists ( select * from sysindexes where name ='IX_FromOrganizations_Title')   
   CREATE  INDEX [IX_FromOrganizations_Title] ON [dbo].[FromOrganizations]([Title]) ON [PRIMARY]
GO

if not exists ( select * from sysindexes where name ='IX_FromOrganizations_ParentID')    
  CREATE  INDEX [IX_FromOrganizations_ParentID] ON [dbo].[FromOrganizations]([ParentID]) ON [PRIMARY]
GO

if not exists ( select * from sysindexes where name ='IX_FromOrganizations')     
 CREATE  INDEX [IX_FromOrganizations] ON [dbo].[FromOrganizations]([Code]) ON [PRIMARY]
GO

if not exists ( select * from sysindexes where name ='ind_idx')    
  CREATE  INDEX [ind_idx] ON [dbo].[Letter]([IndicatorID]) ON [PRIMARY]
GO

if not exists ( select * from sysindexes where name ='letter_idx')   
   CREATE  INDEX [letter_idx] ON [dbo].[Letter]([SecretariatID], [Letter_Type], [MYear], [letterformat], [IndicatorID]) ON [PRIMARY]
GO

if not exists ( select * from sysindexes where name ='myear_idx')    
  CREATE  INDEX [myear_idx] ON [dbo].[Letter]([MYear]) ON [PRIMARY]
GO

if not exists ( select * from sysindexes where name ='secid_idx')    
  CREATE  INDEX [secid_idx] ON [dbo].[Letter]([SecretariatID]) ON [PRIMARY]
GO


if not exists ( select * from sysindexes where name ='letter_type_idx')     
 CREATE  INDEX [letter_type_idx] ON [dbo].[Letter]([Letter_Type]) ON [PRIMARY]
GO

if not exists ( select * from sysindexes where name ='letterformat_idx')     
 CREATE  INDEX [letterformat_idx] ON [dbo].[Letter]([letterformat]) ON [PRIMARY]
GO

if not exists ( select * from sysindexes where name ='incommingno_idx')  
    CREATE  INDEX [incommingno_idx] ON [dbo].[Letter]([IncommingNO]) ON [PRIMARY]
GO

if not exists ( select * from sysindexes where name ='registrationdate_idx')   
   CREATE  INDEX [registrationdate_idx] ON [dbo].[Letter]([RegistrationDate]) ON [PRIMARY]
GO

if not exists ( select * from sysindexes where name ='fromorgid_idx')    
  CREATE  INDEX [fromorgid_idx] ON [dbo].[Letter]([FromOrgID]) ON [PRIMARY]
GO

if not exists ( select * from sysindexes where name ='ToOrgid_idx')   
   CREATE  INDEX [ToOrgid_idx] ON [dbo].[Letter]([ToOrgID]) ON [PRIMARY]
GO
if not exists ( select * from sysindexes where name ='Letter_IDX_Indicator')
 CREATE  UNIQUE  INDEX [Letter_IDX_Indicator] ON [dbo].[Letter]([IndicatorID], [MYear], [SecretariatID], [Letter_Type], [letterformat]) ON [PRIMARY]
GO

if not exists ( select * from sysindexes where name ='IX_Letter_IndicatorID')    
  CREATE  INDEX [IX_Letter_IndicatorID] ON [dbo].[Letter]([IndicatorID]) ON [PRIMARY]
GO

if not exists ( select * from sysindexes where name ='IX_Letter_Letter_Type')   
   CREATE  INDEX [IX_Letter_Letter_Type] ON [dbo].[Letter]([Letter_Type]) ON [PRIMARY]
GO

if not exists ( select * from sysindexes where name ='IX_Letter_letterformat')   
   CREATE  INDEX [IX_Letter_letterformat] ON [dbo].[Letter]([letterformat]) ON [PRIMARY]
GO

if not exists ( select * from sysindexes where name ='IX_Letter_IncommingNO')    
  CREATE  INDEX [IX_Letter_IncommingNO] ON [dbo].[Letter]([IncommingNO]) ON [PRIMARY]
GO

if not exists ( select * from sysindexes where name ='IX_Letter_FromOrgID')    
  CREATE  INDEX [IX_Letter_FromOrgID] ON [dbo].[Letter]([FromOrgID]) ON [PRIMARY]
GO

if not exists ( select * from sysindexes where name ='IX_Letter_ToOrgID')   
   CREATE  INDEX [IX_Letter_ToOrgID] ON [dbo].[Letter]([ToOrgID]) ON [PRIMARY]
GO

if not exists ( select * from sysindexes where name ='IX_Letter_Signerid')     
 CREATE  INDEX [IX_Letter_Signerid] ON [dbo].[Letter]([Signerid]) ON [PRIMARY]
GO

if not exists ( select * from sysindexes where name ='IX_Letter_ClassificationID')    
  CREATE  INDEX [IX_Letter_ClassificationID] ON [dbo].[Letter]([ClassificationID]) ON [PRIMARY]
GO

if not exists ( select * from sysindexes where name ='IX_Letter_UrgencyID')    
  CREATE  INDEX [IX_Letter_UrgencyID] ON [dbo].[Letter]([UrgencyID]) ON [PRIMARY]
GO

if not exists ( select * from sysindexes where name ='IX_Letter_UserID')   
   CREATE  INDEX [IX_Letter_UserID] ON [dbo].[Letter]([UserID]) ON [PRIMARY]
GO

if not exists ( select * from sysindexes where name ='IX_Letter_MYear')   
   CREATE  INDEX [IX_Letter_MYear] ON [dbo].[Letter]([MYear]) ON [PRIMARY]
GO

if not exists ( select * from sysindexes where name ='IX_Letter_RegistrationDate')    
  CREATE  INDEX [IX_Letter_RegistrationDate] ON [dbo].[Letter]([RegistrationDate]) ON [PRIMARY]
GO

if not exists ( select * from sysindexes where name ='IX_Letter_SecretariatID')    
  CREATE  INDEX [IX_Letter_SecretariatID] ON [dbo].[Letter]([SecretariatID]) ON [PRIMARY]
GO

if not exists ( select * from sysindexes where name ='Letterarchive_Folder_idx')   
   CREATE  INDEX [Letterarchive_Folder_idx] ON [dbo].[LetterArchiveFolder]([ArchiveFolderID]) ON [PRIMARY]
GO

if not exists ( select * from sysindexes where name ='Letterarchive_Letter_Folder_idx')   
   CREATE  INDEX [Letterarchive_Letter_Folder_idx] ON [dbo].[LetterArchiveFolder]([ArchiveFolderID], [LetterID]) ON [PRIMARY]
GO

if not exists ( select * from sysindexes where name ='Letterarchive_Letter_idx')   
   CREATE  INDEX [Letterarchive_Letter_idx] ON [dbo].[LetterArchiveFolder]([LetterID]) ON [PRIMARY]
GO

if not exists ( select * from sysindexes where name ='IX_LetterArchiveFolder_ArchiveFolderID')
      CREATE  INDEX [IX_LetterArchiveFolder_ArchiveFolderID] ON [dbo].[LetterArchiveFolder]([ArchiveFolderID]) ON [PRIMARY]
GO

if not exists ( select * from sysindexes where name ='IX_LetterArchiveFolder_LetterID')   
   CREATE  INDEX [IX_LetterArchiveFolder_LetterID] ON [dbo].[LetterArchiveFolder]([LetterID]) ON [PRIMARY]
GO

if not exists ( select * from sysindexes where name ='IX_LetterArchiveFolder_UserID')    
  CREATE  INDEX [IX_LetterArchiveFolder_UserID] ON [dbo].[LetterArchiveFolder]([UserID]) ON [PRIMARY]
GO

if not exists ( select * from sysindexes where name ='IX_LetterData_LetterID')  
    CREATE  INDEX [IX_LetterData_LetterID] ON [dbo].[LetterData]([LetterID]) ON [PRIMARY]
GO

if not exists ( select * from sysindexes where name ='IX_LetterData_extention')   
   CREATE  INDEX [IX_LetterData_extention] ON [dbo].[LetterData]([extention]) ON [PRIMARY]
GO

if not exists ( select * from sysindexes where name ='IX_LetterFieldValue_LetterID')    
  CREATE  INDEX [IX_LetterFieldValue_LetterID] ON [dbo].[LetterFieldValue]([LetterID]) ON [PRIMARY]
GO

if not exists ( select * from sysindexes where name ='IX_LetterFieldValue_FieldID')    
  CREATE  INDEX [IX_LetterFieldValue_FieldID] ON [dbo].[LetterFieldValue]([FieldID]) ON [PRIMARY]
GO

if not exists ( select * from sysindexes where name ='IX_LetterFieldValue_InsertUserID')   
   CREATE  INDEX [IX_LetterFieldValue_InsertUserID] ON [dbo].[LetterFieldValue]([InsertUserID]) ON [PRIMARY]
GO

if not exists ( select * from sysindexes where name ='IX_LetterTemplate_Title')   
   CREATE  INDEX [IX_LetterTemplate_Title] ON [dbo].[LetterTemplate]([Title]) ON [PRIMARY]
GO

if not exists ( select * from sysindexes where name ='IX_LetterText_LetterID')    
  CREATE  INDEX [IX_LetterText_LetterID] ON [dbo].[LetterText]([LetterID]) ON [PRIMARY]
GO

if not exists ( select * from sysindexes where name ='IX_LetterText_LetterFormat')   
   CREATE  INDEX [IX_LetterText_LetterFormat] ON [dbo].[LetterText]([LetterFormat]) ON [PRIMARY]
GO

if not exists ( select * from sysindexes where name ='IX_ListItems_ListID')   
   CREATE  INDEX [IX_ListItems_ListID] ON [dbo].[ListItems]([ListID]) ON [PRIMARY]
GO

if not exists ( select * from sysindexes where name ='IX_ParaphTemplate_UserID')    
  CREATE  INDEX [IX_ParaphTemplate_UserID] ON [dbo].[ParaphTemplate]([UserID]) ON [PRIMARY]
GO

if not exists ( select * from sysindexes where name ='IX_ParaphTemplate_OrderID')    
  CREATE  INDEX [IX_ParaphTemplate_OrderID] ON [dbo].[ParaphTemplate]([OrderID]) ON [PRIMARY]
GO

if not exists ( select * from sysindexes where name ='IX_ParaphTemplate_Title')     
 CREATE  INDEX [IX_ParaphTemplate_Title] ON [dbo].[ParaphTemplate]([Title]) ON [PRIMARY]
GO

if not exists ( select * from sysindexes where name ='recommite_idx')   
   CREATE  INDEX [recommite_idx] ON [dbo].[ReCommites]([LetterID], [ID], [Type], [ParentId], [OrgID]) ON [PRIMARY]
GO

if not exists ( select * from sysindexes where name ='IX_ReCommites_LetterID') 
     CREATE  INDEX [IX_ReCommites_LetterID] ON [dbo].[ReCommites]([LetterID]) ON [PRIMARY]
GO

if not exists ( select * from sysindexes where name ='IX_ReCommites_ID')   
   CREATE  INDEX [IX_ReCommites_ID] ON [dbo].[ReCommites]([ID]) ON [PRIMARY]
GO

if not exists ( select * from sysindexes where name ='IX_ReCommites_ParentId')  
    CREATE  INDEX [IX_ReCommites_ParentId] ON [dbo].[ReCommites]([ParentId]) ON [PRIMARY]
GO

if not exists ( select * from sysindexes where name ='IX_ReCommites_OrgID')  
    CREATE  INDEX [IX_ReCommites_OrgID] ON [dbo].[ReCommites]([OrgID]) ON [PRIMARY]
GO

if not exists ( select * from sysindexes where name ='IX_ReCommites_UserID')  
    CREATE  INDEX [IX_ReCommites_UserID] ON [dbo].[ReCommites]([UserID]) ON [PRIMARY]
GO

if not exists ( select * from sysindexes where name ='IX_ReCommites_DeadLineDate')    
  CREATE  INDEX [IX_ReCommites_DeadLineDate] ON [dbo].[ReCommites]([DeadLineDate]) ON [PRIMARY]
GO

if not exists ( select * from sysindexes where name ='IX_ReCommites_ActionTypeID')   
   CREATE  INDEX [IX_ReCommites_ActionTypeID] ON [dbo].[ReCommites]([ActionTypeID]) ON [PRIMARY]
GO

if not exists ( select * from sysindexes where name ='IX_ReceiveTypes_Title')   
   CREATE  INDEX [IX_ReceiveTypes_Title] ON [dbo].[ReceiveTypes]([Title]) ON [PRIMARY]
GO

if not exists ( select * from sysindexes where name ='IX_RecommiteData_RecommiteID')   
   CREATE  INDEX [IX_RecommiteData_RecommiteID] ON [dbo].[RecommiteData]([RecommiteID]) ON [PRIMARY]
GO

if not exists ( select * from sysindexes where name ='IX_RecommiteData_extention')   
   CREATE  INDEX [IX_RecommiteData_extention] ON [dbo].[RecommiteData]([extention]) ON [PRIMARY]
GO

if not exists ( select * from sysindexes where name ='IX_ReferenceTableData_TableID')   
   CREATE  INDEX [IX_ReferenceTableData_TableID] ON [dbo].[ReferenceTableData]([TableID]) ON [PRIMARY]
GO

if not exists ( select * from sysindexes where name ='IX_ReferenceTableData_DataID')    
  CREATE  INDEX [IX_ReferenceTableData_DataID] ON [dbo].[ReferenceTableData]([DataID]) ON [PRIMARY]
GO

if not exists ( select * from sysindexes where name ='IX_RelatedSecretariats_DestinationSecID')  
    CREATE  INDEX [IX_RelatedSecretariats_DestinationSecID] ON [dbo].[RelatedSecretariats]([DestinationSecID]) ON [PRIMARY]
GO

if not exists ( select * from sysindexes where name ='IX_RelatedSecretariats_DestinationOrgID_inSource')     
 CREATE  INDEX [IX_RelatedSecretariats_DestinationOrgID_inSource] ON [dbo].[RelatedSecretariats]([DestinationOrgID_inSource]) ON [PRIMARY]
GO

if not exists ( select * from sysindexes where name ='IX_Secretariats_ArchiveCenterID')    
  CREATE  INDEX [IX_Secretariats_ArchiveCenterID] ON [dbo].[Secretariats]([ArchiveCenterID]) ON [PRIMARY]
GO

if not exists ( select * from sysindexes where name ='IX_Secretariats_Precode') 
     CREATE  INDEX [IX_Secretariats_Precode] ON [dbo].[Secretariats]([Precode]) ON [PRIMARY]
GO

if not exists ( select * from sysindexes where name ='IX_Tables_TableType')   
   CREATE  INDEX [IX_Tables_TableType] ON [dbo].[Tables]([TableType]) ON [PRIMARY]
GO
if not exists ( select * from sysindexes where name ='User_extention_idx')
 CREATE  UNIQUE  INDEX [User_extention_idx] ON [dbo].[UserExtention]([UserId], [ExtentionID]) ON [PRIMARY]
GO

if not exists ( select * from sysindexes where name ='IX_UserExtention_UserId')  
    CREATE  INDEX [IX_UserExtention_UserId] ON [dbo].[UserExtention]([UserId]) ON [PRIMARY]
GO

if not exists ( select * from sysindexes where name ='IX_UserExtention_ExtentionID')   
   CREATE  INDEX [IX_UserExtention_ExtentionID] ON [dbo].[UserExtention]([ExtentionID]) ON [PRIMARY]
GO

if not exists ( select * from sysindexes where name ='IX_UserLog_UserID')    
  CREATE  INDEX [IX_UserLog_UserID] ON [dbo].[UserLog]([UserID]) ON [PRIMARY]
GO

if not exists ( select * from sysindexes where name ='IX_UserLog_FormID')   
  CREATE  INDEX [IX_UserLog_FormID] ON [dbo].[UserLog]([FormID]) ON [PRIMARY]
GO

if not exists ( select * from sysindexes where name ='IX_UserLog_ActionID')  
    CREATE  INDEX [IX_UserLog_ActionID] ON [dbo].[UserLog]([ActionID]) ON [PRIMARY]
GO

if not exists ( select * from sysindexes where name ='IX_UserLog_LetterID')   
   CREATE  INDEX [IX_UserLog_LetterID] ON [dbo].[UserLog]([LetterID]) ON [PRIMARY]
GO

if not exists ( select * from sysindexes where name ='IX_UserLog_User_Act_Form')   
   CREATE  INDEX [IX_UserLog_User_Act_Form] ON [dbo].[UserLog]([UserID], [ActionID], [FormID]) ON [PRIMARY]
GO

if not exists ( select * from sysindexes where name ='IX_UserLog_User_Act_Form_Letter')    
  CREATE  INDEX [IX_UserLog_User_Act_Form_Letter] ON [dbo].[UserLog]([UserID], [ActionID], [FormID], [LetterID]) ON [PRIMARY]
GO

if not exists ( select * from sysindexes where name ='IX_UserLoginLogout_UserID')  
    CREATE  INDEX [IX_UserLoginLogout_UserID] ON [dbo].[UserLoginLogout]([UserID]) ON [PRIMARY]
GO

if not exists ( select * from sysindexes where name ='UserMessage_To_status_idx')    
  CREATE  INDEX [UserMessage_To_status_idx] ON [dbo].[UserMessage]([To_], [Status]) ON [PRIMARY]
GO

if not exists ( select * from sysindexes where name ='IX_UserNote_UserID')   
   CREATE  INDEX [IX_UserNote_UserID] ON [dbo].[UserNote]([UserID]) ON [PRIMARY]
GO

if not exists ( select * from sysindexes where name ='userShortCut_keytext_idx')    
  CREATE  INDEX [userShortCut_keytext_idx] ON [dbo].[UserShortCut]([keyText]) ON [PRIMARY]
GO
if not exists ( select * from sysindexes where name ='UserShortcut_altkey_idx') 
 CREATE  UNIQUE  INDEX [UserShortcut_altkey_idx] ON [dbo].[UserShortCut]([UserID], [altKey]) ON [PRIMARY]
GO

if not exists ( select * from sysindexes where name ='IX_UserTemplateGroup_TemplateGroupID')    
  CREATE  INDEX [IX_UserTemplateGroup_TemplateGroupID] ON [dbo].[UserTemplateGroup]([TemplateGroupID]) ON [PRIMARY]
GO

if not exists ( select * from sysindexes where name ='IX_UserTemplateGroup_UserID')    
  CREATE  INDEX [IX_UserTemplateGroup_UserID] ON [dbo].[UserTemplateGroup]([UserID]) ON [PRIMARY]
GO

if not exists ( select * from sysindexes where name ='IX_Users_FromOrgID')     
 CREATE  INDEX [IX_Users_FromOrgID] ON [dbo].[Users]([FromOrgID]) ON [PRIMARY]
GO

if not exists ( select * from sysindexes where name ='IX_Users_AccessID')    
  CREATE  INDEX [IX_Users_AccessID] ON [dbo].[Users]([AccessID]) ON [PRIMARY]
GO

if not exists ( select * from sysindexes where name ='IX_Users_DefualtSecretariatID')   
   CREATE  INDEX [IX_Users_DefualtSecretariatID] ON [dbo].[Users]([DefualtSecretariatID]) ON [PRIMARY]
GO

if not exists ( select * from sysindexes where name ='IX_Users_SecondOrgID')   
   CREATE  INDEX [IX_Users_SecondOrgID] ON [dbo].[Users]([SecondOrgID]) ON [PRIMARY]
GO

