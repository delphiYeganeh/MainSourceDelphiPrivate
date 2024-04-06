

declare @sql varchar(8000)
set @sql=''
select @sql=@sql+'
alter table '+o1.name+' drop constraint '+o.name
FROM Sysforeignkeys f ,      Sysobjects o1 ,sysobjects o
where fkeyid = o1.id and constid=o.id
and o.name not in ('FK_ReCommites_FromOrganizations',
'FK_ReCommites_Users','FK_ReCommites_ActionType',
'FK_Users_FromOrganizations','FK_Letter_Subject','FK_Users_FromOrganizations1',
'FK_Letter_SendStatus','FK_Letter_FromOrganizations','FK_Letter_Secretariats',
'FK_ArchiveFolder_Users','FK_Letter_LetterTypes','FK_Emails_Users',
'FK_Letter_Classifications','FK_Letter_FromOrganizations1',
'FK_FieldAccess_Fields','FK_Letter_Urgenceis','FK_FieldAccess_Users',
'FK_Letter_ReceiveTypes','FK_FieldAccess_AccessType','FK_Letter_Users',
'FK_Letter_ActionType','FK_LetterRelation_Letter','FK_LetterRelation_Letter1',
'FK_FollowUp_Letter','FK_ReCommites_Letter','FK_LetterData_Letter',
'FK_LetterArchiveFolder_Letter','FK_LetterFieldValue_Letter','FK_Fields_Tables',
'FK_Fields_FieldType','FK_FollowUp_FollowUpType','FK_FollowUp_Users',
'FK_FollowUp_DoneStatus','FK_LetterArchiveFolder_ArchiveFolder','FK_LetterArchiveFolder_Users',
'FK_News_Urgenceis','FK_LetterFieldValue_Fields','FK_News_Users',
'FK_LetterFieldValue_Users','FK_NewsGroup_Users','FK_NewsGroupUsers_Users',
'FK_NewsGroupUsers_NewsGroup','FK_LetterTemplate_TemplateGroup','FK_NewsUsers_News',
'FK_LetterText_LetterFormats','FK_NewsUsers_Users','FK_ParaphTemplate_Users',
'FK_PhoneGroup_Users','FK_Phone_PhoneGroup','FK_Phone_Users',
'FK_RecommiteData_ReCommites','FK_ReferenceTableData_Tables','FK_Secretariats_ArchiveCenter',
'FK_UserAccArchive_Users','FK_UserAccArchive_ArchiveCenter','FK_UserAccArchive_ArchiveFolder',
'FK_UserAccArchive_Secretariats','FK_UserExtention_Extention','FK_UserExtention_Users',
'FK_UserLog_Users','FK_UserLog_Letter','FK_UserLoginLogout_Users',
'FK_UserTemplateGroup_TemplateGroup','FK_UserShortCut_Users',
'FK_UserNote_Users','FK_UserSecretariats_Secretariats','FK_UserSecretariats_Users',
'FK_FromOrganizations_FromOrganizations','FK_UserTemplateGroup_Users','FK_Letter_LetterFormats','FK_Letter_Letter',
'FK_RelatedSecretariats_Secretariats','FK_UserMessage_Users',
'FK_UserMessage_Users1','FK_WorkGroup_Users','FK_WorkGroupOrg_WorkGroup','FK_WorkGroupOrg_FromOrganizations')

if @sql <> '' 
   Exec(@sql)
 
GO
if not exists (select * from sysobjects where name='FK_ReCommites_FromOrganizations')
ALTER TABLE ReCommites WITH NOCHECK ADD CONSTRAINT   [FK_ReCommites_FromOrganizations] FOREIGN KEY ( [OrgID] ) REFERENCES [dbo].[FromOrganizations] ( [ID] )
GO

if not exists (select * from sysobjects where name='FK_ReCommites_Users')
ALTER TABLE ReCommites WITH NOCHECK ADD CONSTRAINT   [FK_ReCommites_Users] FOREIGN KEY ( [UserID] ) REFERENCES [dbo].[Users] ( [Id] )
GO

if not exists (select * from sysobjects where name='FK_UserAccArchive_ArchiveCenter')
ALTER TABLE UserAccArchive WITH NOCHECK ADD CONSTRAINT   [FK_UserAccArchive_ArchiveCenter] FOREIGN KEY ( [ArchiveCenterID] ) REFERENCES [dbo].[ArchiveCenter] ( [ArchiveCenterID] )
GO

if not exists (select * from sysobjects where name='FK_LetterData_Letter')
ALTER TABLE LetterData WITH NOCHECK ADD CONSTRAINT   [FK_LetterData_Letter] FOREIGN KEY ( [LetterID] ) REFERENCES [dbo].[Letter] ( [LetterID] )
GO

if not exists (select * from sysobjects where name='FK_UserAccArchive_ArchiveFolder')
ALTER TABLE UserAccArchive WITH NOCHECK ADD CONSTRAINT   [FK_UserAccArchive_ArchiveFolder] FOREIGN KEY ( [ArchiveFolderID] ) REFERENCES [dbo].[ArchiveFolder] ( [FolderID] )
GO

if not exists (select * from sysobjects where name='FK_LetterArchiveFolder_Letter')
ALTER TABLE LetterArchiveFolder WITH NOCHECK ADD CONSTRAINT   [FK_LetterArchiveFolder_Letter] FOREIGN KEY ( [LetterID] ) REFERENCES [dbo].[Letter] ( [LetterID] )
GO

if not exists (select * from sysobjects where name='FK_UserAccArchive_Secretariats')
ALTER TABLE UserAccArchive WITH NOCHECK ADD CONSTRAINT   [FK_UserAccArchive_Secretariats] FOREIGN KEY ( [SecID] ) REFERENCES [dbo].[Secretariats] ( [SecID] )
GO

if not exists (select * from sysobjects where name='FK_LetterFieldValue_Letter')
ALTER TABLE LetterFieldValue WITH NOCHECK ADD CONSTRAINT   [FK_LetterFieldValue_Letter] FOREIGN KEY ( [LetterID] ) REFERENCES [dbo].[Letter] ( [LetterID] )
GO

if not exists (select * from sysobjects where name='FK_UserExtention_Extention')
ALTER TABLE UserExtention WITH NOCHECK ADD CONSTRAINT   [FK_UserExtention_Extention] FOREIGN KEY ( [ExtentionID] ) REFERENCES [dbo].[Extention] ( [ExtentionID] )
GO

if not exists (select * from sysobjects where name='FK_UserExtention_Users')
ALTER TABLE UserExtention WITH NOCHECK ADD CONSTRAINT   [FK_UserExtention_Users] FOREIGN KEY ( [UserId] ) REFERENCES [dbo].[Users] ( [Id] )
GO

if not exists (select * from sysobjects where name='FK_News_Urgenceis')
ALTER TABLE News WITH NOCHECK ADD CONSTRAINT   [FK_News_Urgenceis] FOREIGN KEY ( [UrgenceisID] ) REFERENCES [dbo].[Urgenceis] ( [ID] )
GO

if not exists (select * from sysobjects where name='FK_News_Users')
ALTER TABLE News WITH NOCHECK ADD CONSTRAINT   [FK_News_Users] FOREIGN KEY ( [UserID] ) REFERENCES [dbo].[Users] ( [Id] )
GO

if not exists (select * from sysobjects where name='FK_UserLoginLogout_Users')
ALTER TABLE UserLoginLogout WITH NOCHECK ADD CONSTRAINT   [FK_UserLoginLogout_Users] FOREIGN KEY ( [UserID] ) REFERENCES [dbo].[Users] ( [Id] )
GO

if not exists (select * from sysobjects where name='FK_UserTemplateGroup_TemplateGroup')
ALTER TABLE UserTemplateGroup WITH NOCHECK ADD CONSTRAINT   [FK_UserTemplateGroup_TemplateGroup] FOREIGN KEY ( [TemplateGroupID] ) REFERENCES [dbo].[TemplateGroup] ( [TemplateGroupID])
Go
ALTER TABLE dbo.UserTemplateGroup NOCHECK CONSTRAINT FK_UserTemplateGroup_TemplateGroup
GO

if not exists (select * from sysobjects where name='FK_UserShortCut_Users')
ALTER TABLE UserShortCut WITH NOCHECK ADD CONSTRAINT   [FK_UserShortCut_Users] FOREIGN KEY ( [UserID] ) REFERENCES [dbo].[Users] ( [Id] )
GO

if not exists (select * from sysobjects where name='FK_UserNote_Users')
ALTER TABLE UserNote WITH NOCHECK ADD CONSTRAINT   [FK_UserNote_Users] FOREIGN KEY ( [UserID] ) REFERENCES [dbo].[Users] ( [Id] )
GO

if not exists (select * from sysobjects where name='FK_UserSecretariats_Secretariats')
ALTER TABLE UserSecretariats WITH NOCHECK ADD CONSTRAINT   [FK_UserSecretariats_Secretariats] FOREIGN KEY ( [SecId] ) REFERENCES [dbo].[Secretariats] ( [SecID] )
GO

if not exists (select * from sysobjects where name='FK_UserSecretariats_Users')
ALTER TABLE UserSecretariats WITH NOCHECK ADD CONSTRAINT   [FK_UserSecretariats_Users] FOREIGN KEY ( [UserId] ) REFERENCES [dbo].[Users] ( [Id] )
GO

if not exists (select * from sysobjects where name='FK_FromOrganizations_FromOrganizations')
ALTER TABLE FromOrganizations WITH NOCHECK ADD CONSTRAINT   [FK_FromOrganizations_FromOrganizations] FOREIGN KEY ( [ParentID] ) REFERENCES [dbo].[FromOrganizations] ( [ID] )
GO

if not exists (select * from sysobjects where name='FK_Users_FromOrganizations')
ALTER TABLE Users WITH NOCHECK ADD CONSTRAINT   [FK_Users_FromOrganizations] FOREIGN KEY ( [FromOrgID] ) REFERENCES [dbo].[FromOrganizations] ( [ID] )
GO

if not exists (select * from sysobjects where name='FK_Users_FromOrganizations1')
ALTER TABLE Users WITH NOCHECK ADD CONSTRAINT   [FK_Users_FromOrganizations1] FOREIGN KEY ( [SecondOrgID] ) REFERENCES [dbo].[FromOrganizations] ( [ID] )
GO


if not exists (select * from sysobjects where name='FK_Emails_Users')
ALTER TABLE Emails WITH NOCHECK ADD CONSTRAINT   [FK_Emails_Users] FOREIGN KEY ( [UsersID] ) REFERENCES [dbo].[Users] ( [Id] )
GO



if not exists (select * from sysobjects where name='FK_FieldAccess_Fields')
ALTER TABLE FieldAccess WITH NOCHECK ADD CONSTRAINT   [FK_FieldAccess_Fields] FOREIGN KEY ( [FieldID] ) REFERENCES [dbo].[Fields] ( [ID] )
GO

if not exists (select * from sysobjects where name='FK_FieldAccess_Users')
ALTER TABLE FieldAccess WITH NOCHECK ADD CONSTRAINT   [FK_FieldAccess_Users] FOREIGN KEY ( [UserID] ) REFERENCES [dbo].[Users] ( [Id] )
GO

if not exists (select * from sysobjects where name='FK_FieldAccess_AccessType')
ALTER TABLE FieldAccess WITH NOCHECK ADD CONSTRAINT   [FK_FieldAccess_AccessType] FOREIGN KEY ( [AccessTypeID] ) REFERENCES [dbo].[AccessType] ( [AccessTypeID] )
GO

if not exists (select * from sysobjects where name='FK_Fields_Tables')
ALTER TABLE Fields WITH NOCHECK ADD CONSTRAINT   [FK_Fields_Tables] FOREIGN KEY ( [TableID] ) REFERENCES [dbo].[Tables] ( [TableId] )
GO
 

if not exists (select * from sysobjects where name='FK_FollowUp_FollowUpType')
ALTER TABLE FollowUp WITH NOCHECK ADD CONSTRAINT   [FK_FollowUp_FollowUpType] FOREIGN KEY ( [FollowUPTypeID] ) REFERENCES [dbo].[FollowUpType] ( [FollowUpTypeID] )
GO

if not exists (select * from sysobjects where name='FK_FollowUp_Users')
ALTER TABLE FollowUp WITH NOCHECK ADD CONSTRAINT   [FK_FollowUp_Users] FOREIGN KEY ( [UserID] ) REFERENCES [dbo].[Users] ( [Id] )
GO

if not exists (select * from sysobjects where name='FK_FollowUp_DoneStatus')
ALTER TABLE FollowUp WITH NOCHECK ADD CONSTRAINT   [FK_FollowUp_DoneStatus] FOREIGN KEY ( [DoneStatusID] ) REFERENCES [dbo].[DoneStatus] ( [DoneStatusID] )
GO

if not exists (select * from sysobjects where name='FK_LetterArchiveFolder_ArchiveFolder')
ALTER TABLE LetterArchiveFolder WITH NOCHECK ADD CONSTRAINT   [FK_LetterArchiveFolder_ArchiveFolder] FOREIGN KEY ( [ArchiveFolderID] ) REFERENCES [dbo].[ArchiveFolder] ( [FolderID])

if not exists (select * from sysobjects where name='FK_LetterArchiveFolder_Users')
ALTER TABLE LetterArchiveFolder WITH NOCHECK ADD CONSTRAINT   [FK_LetterArchiveFolder_Users] FOREIGN KEY ( [UserID] ) REFERENCES [dbo].[Users] ( [Id] )
GO

if not exists (select * from sysobjects where name='FK_LetterFieldValue_Fields')
ALTER TABLE LetterFieldValue WITH NOCHECK ADD CONSTRAINT   [FK_LetterFieldValue_Fields] FOREIGN KEY ( [FieldID] ) REFERENCES [dbo].[Fields] ( [ID] )
GO

if not exists (select * from sysobjects where name='FK_Letter_Subject')
ALTER TABLE Letter WITH NOCHECK ADD CONSTRAINT   [FK_Letter_Subject] FOREIGN KEY ( [SubjectID] ) REFERENCES [dbo].[Subject] ( [SubjectID] )
GO

if not exists (select * from sysobjects where name='FK_LetterFieldValue_Users')
ALTER TABLE LetterFieldValue WITH NOCHECK ADD CONSTRAINT   [FK_LetterFieldValue_Users] FOREIGN KEY ( [InsertUserID] ) REFERENCES [dbo].[Users] ( [Id] )
GO
 

if not exists (select * from sysobjects where name='FK_NewsGroup_Users')
ALTER TABLE NewsGroup WITH NOCHECK ADD CONSTRAINT   [FK_NewsGroup_Users] FOREIGN KEY ( [UsersID] ) REFERENCES [dbo].[Users] ( [Id] )
GO

if not exists (select * from sysobjects where name='FK_Letter_FromOrganizations')
ALTER TABLE Letter WITH NOCHECK ADD CONSTRAINT   [FK_Letter_FromOrganizations] FOREIGN KEY ( [FromOrgID] ) REFERENCES [dbo].[FromOrganizations] ( [ID] )
GO

if not exists (select * from sysobjects where name='FK_NewsGroupUsers_Users')
ALTER TABLE NewsGroupUsers WITH NOCHECK ADD CONSTRAINT   [FK_NewsGroupUsers_Users] FOREIGN KEY ( [UsersID] ) REFERENCES [dbo].[Users] ( [Id] )
GO

if not exists (select * from sysobjects where name='FK_Letter_Secretariats')
ALTER TABLE Letter WITH NOCHECK ADD CONSTRAINT   [FK_Letter_Secretariats] FOREIGN KEY ( [SecretariatID] ) REFERENCES [dbo].[Secretariats] ( [SecID] )
GO

if not exists (select * from sysobjects where name='FK_NewsGroupUsers_NewsGroup')
ALTER TABLE NewsGroupUsers WITH NOCHECK ADD CONSTRAINT   [FK_NewsGroupUsers_NewsGroup] FOREIGN KEY ( [NewsGroupID] ) REFERENCES [dbo].[NewsGroup] ( [NewsGroupID] )
GO

if not exists (select * from sysobjects where name='FK_LetterTemplate_TemplateGroup')
ALTER TABLE LetterTemplate WITH NOCHECK ADD CONSTRAINT   [FK_LetterTemplate_TemplateGroup] FOREIGN KEY ( [TemplateGroupID] ) REFERENCES [dbo].[TemplateGroup] ( [TemplateGroupID] )
GO

if not exists (select * from sysobjects where name='FK_LetterText_LetterFormats')
ALTER TABLE LetterText WITH NOCHECK ADD CONSTRAINT   [FK_LetterText_LetterFormats] FOREIGN KEY ( [LetterFormat] ) REFERENCES [dbo].[LetterFormats] ( [Code] )
GO
 
if not exists (select * from sysobjects where name='FK_NewsUsers_Users')
ALTER TABLE NewsUsers WITH NOCHECK ADD CONSTRAINT   [FK_NewsUsers_Users] FOREIGN KEY ( [UsersID] ) REFERENCES [dbo].[Users] ( [Id] )
GO

if not exists (select * from sysobjects where name='FK_Letter_FromOrganizations1')
ALTER TABLE Letter WITH NOCHECK ADD CONSTRAINT   [FK_Letter_FromOrganizations1] FOREIGN KEY ( [ToOrgID] ) REFERENCES [dbo].[FromOrganizations] ( [ID] )
GO
ALTER TABLE dbo.Letter NOCHECK CONSTRAINT FK_Letter_FromOrganizations1  /*«„ﬂ«‰ ﬁ—«— œ«œ‰ „ﬁœ«— ’›— œ— ¬ÌœÌ*/
GO


if not exists (select * from sysobjects where name='FK_ParaphTemplate_Users')
ALTER TABLE ParaphTemplate WITH NOCHECK ADD CONSTRAINT   [FK_ParaphTemplate_Users] FOREIGN KEY ( [UserID] ) REFERENCES [dbo].[Users] ( [Id] )
GO
 
if not exists (select * from sysobjects where name='FK_PhoneGroup_Users')
ALTER TABLE PhoneGroup WITH NOCHECK ADD CONSTRAINT   [FK_PhoneGroup_Users] FOREIGN KEY ( [UsersID] ) REFERENCES [dbo].[Users] ( [Id] )
GO
 

if not exists (select * from sysobjects where name='FK_Phone_PhoneGroup')
ALTER TABLE Phone WITH NOCHECK ADD CONSTRAINT   [FK_Phone_PhoneGroup] FOREIGN KEY ( [PhoneGroupID] ) REFERENCES [dbo].[PhoneGroup] ( [PhoneGroupID] )
GO

if not exists (select * from sysobjects where name='FK_Letter_Users')
ALTER TABLE Letter WITH NOCHECK ADD CONSTRAINT   [FK_Letter_Users] FOREIGN KEY ( [UserID] ) REFERENCES [dbo].[Users] ( [Id] )
GO

if not exists (select * from sysobjects where name='FK_Phone_Users')
ALTER TABLE Phone WITH NOCHECK ADD CONSTRAINT   [FK_Phone_Users] FOREIGN KEY ( [UsersID] ) REFERENCES [dbo].[Users] ( [Id] )
GO
 
if not exists (select * from sysobjects where name='FK_RecommiteData_ReCommites')
ALTER TABLE RecommiteData WITH NOCHECK ADD CONSTRAINT   [FK_RecommiteData_ReCommites] FOREIGN KEY ( [RecommiteID] ) REFERENCES [dbo].[ReCommites] ( [RecommiteID] )
GO

if not exists (select * from sysobjects where name='FK_LetterRelation_Letter')
ALTER TABLE LetterRelation WITH NOCHECK ADD CONSTRAINT   [FK_LetterRelation_Letter] FOREIGN KEY ( [MainLetterID] ) REFERENCES [dbo].[Letter] ( [LetterID] )
GO

if not exists (select * from sysobjects where name='FK_ReferenceTableData_Tables')
ALTER TABLE ReferenceTableData WITH NOCHECK ADD CONSTRAINT   [FK_ReferenceTableData_Tables] FOREIGN KEY ( [TableID] ) REFERENCES [dbo].[Tables] ( [TableId] )
GO

if not exists (select * from sysobjects where name='FK_LetterRelation_Letter1')
ALTER TABLE LetterRelation WITH NOCHECK ADD CONSTRAINT   [FK_LetterRelation_Letter1] FOREIGN KEY ( [MainLetterID] ) REFERENCES [dbo].[Letter] ( [LetterID] )
GO

if not exists (select * from sysobjects where name='FK_Secretariats_ArchiveCenter')
ALTER TABLE Secretariats WITH NOCHECK ADD CONSTRAINT   [FK_Secretariats_ArchiveCenter] FOREIGN KEY ( [ArchiveCenterID] ) REFERENCES [dbo].[ArchiveCenter] ( [ArchiveCenterID] )
GO

if not exists (select * from sysobjects where name='FK_FollowUp_Letter')
ALTER TABLE FollowUp WITH NOCHECK ADD CONSTRAINT   [FK_FollowUp_Letter] FOREIGN KEY ( [Letterid] ) REFERENCES [dbo].[Letter] ( [LetterID] )
GO
ALTER TABLE dbo.FollowUp NOCHECK CONSTRAINT FK_FollowUp_Letter
GO


if not exists (select * from sysobjects where name='FK_UserAccArchive_Users')
ALTER TABLE UserAccArchive WITH NOCHECK ADD CONSTRAINT   [FK_UserAccArchive_Users] FOREIGN KEY ( [UserID] ) REFERENCES [dbo].[Users] ( [Id] )
GO

if not exists (select * from sysobjects where name='FK_ReCommites_Letter')
ALTER TABLE ReCommites WITH NOCHECK ADD CONSTRAINT   [FK_ReCommites_Letter] FOREIGN KEY ( [LetterID] ) REFERENCES [dbo].[Letter] ( [LetterID] )
GO

if not exists (select * from sysobjects where name='FK_Users_UserSign')
ALTER TABLE dbo.Users WITH NOCHECK ADD CONSTRAINT  FK_Users_UserSign FOREIGN KEY (Id ) REFERENCES dbo.UserSign (UserID)
GO
ALTER TABLE dbo.Users NOCHECK CONSTRAINT FK_Users_UserSign
GO

if not exists (select * from sysobjects where name='FK_UserTemplateGroup_Users')
ALTER TABLE dbo.UserTemplateGroup WITH NOCHECK ADD CONSTRAINT FK_UserTemplateGroup_Users FOREIGN KEY(UserID) REFERENCES dbo.Users(Id)
GO

if not exists (select * from sysobjects where name='FK_Letter_LetterFormats')
ALTER TABLE dbo.Letter WITH NOCHECK ADD CONSTRAINT FK_Letter_LetterFormats FOREIGN KEY (letterformat ) REFERENCES dbo.LetterFormats(Code)
GO
if not exists (select * from sysobjects where name='FK_Letter_Letter')
ALTER TABLE dbo.Letter WITH NOCHECK ADD CONSTRAINT FK_Letter_Letter FOREIGN KEY (SentLetterID) REFERENCES dbo.Letter (LetterID)
GO
if not exists (select * from sysobjects where name='FK_RelatedSecretariats_Secretariats')
ALTER TABLE dbo.RelatedSecretariats WITH NOCHECK ADD CONSTRAINT FK_RelatedSecretariats_Secretariats FOREIGN KEY (DestinationSecID) REFERENCES dbo.Secretariats(SecID)
GO
if not exists (select * from sysobjects where name='FK_UserMessage_Users')
ALTER TABLE dbo.UserMessage WITH NOCHECK ADD CONSTRAINT FK_UserMessage_Users FOREIGN KEY (To_) REFERENCES dbo.Users (Id)
GO
if not exists (select * from sysobjects where name='FK_UserMessage_Users1')
ALTER TABLE dbo.UserMessage WITH NOCHECK ADD CONSTRAINT FK_UserMessage_Users1 FOREIGN KEY (From_) REFERENCES dbo.Users(Id)
GO
if not exists (select * from sysobjects where name='FK_WorkGroup_Users')
ALTER TABLE dbo.WorkGroup WITH NOCHECK ADD CONSTRAINT FK_WorkGroup_Users FOREIGN KEY(UserID) REFERENCES dbo.Users(Id)
GO
if not exists (select * from sysobjects where name='FK_WorkGroupOrg_WorkGroup')
ALTER TABLE dbo.WorkGroupOrg WITH NOCHECK ADD CONSTRAINT FK_WorkGroupOrg_WorkGroup FOREIGN KEY(WorkGroupID) REFERENCES dbo.WorkGroup(WorkGroupID)
GO
if not exists (select * from sysobjects where name='FK_WorkGroupOrg_FromOrganizations')
ALTER TABLE dbo.WorkGroupOrg WITH NOCHECK ADD CONSTRAINT FK_WorkGroupOrg_FromOrganizations FOREIGN KEY(FromOrgID) REFERENCES dbo.FromOrganizations(ID)
GO
