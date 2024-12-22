if not exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[Accesses]') and OBJECTPROPERTY(id, N'IsUserTable') = 1)
begin
CREATE TABLE [dbo].[Accesses] (
	[ID] [tinyint] IDENTITY (1, 1) NOT NULL ,
	[Title] [nvarchar] (50)  NULL ,
	CONSTRAINT [PK_Accesses] PRIMARY KEY  CLUSTERED 
	(
		[ID]
	)  ON [PRIMARY] 
) ON [PRIMARY]
end
GO

if not exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[AccessType]') and OBJECTPROPERTY(id, N'IsUserTable') = 1)
begin
CREATE TABLE [dbo].[AccessType] (
	[AccessTypeID] [tinyint] NOT NULL ,
	[AccessTypeTitle] [nvarchar] (50)  NOT NULL ,
	CONSTRAINT [PK_AccessType] PRIMARY KEY  CLUSTERED 
	(
		[AccessTypeID]
	)  ON [PRIMARY] 
) ON [PRIMARY]
end
GO

if not exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[Actions]') and OBJECTPROPERTY(id, N'IsUserTable') = 1)
 begin 

CREATE TABLE [dbo].[Actions] (
	[FormTag] [tinyint] NOT NULL ,
	[ID] [int] NOT NULL ,
	[Title] [nvarchar] (50)  NULL 
) ON [PRIMARY]
 

 CREATE  INDEX [IX_Actions_ID] ON [dbo].[Actions]([ID]) ON [PRIMARY]
end

GO


if not exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[ActionsAccess]') and OBJECTPROPERTY(id, N'IsUserTable') = 1)
 begin  

CREATE TABLE [dbo].[ActionsAccess] (
	[AccessID] [tinyint] NOT NULL ,
	[ActionID] [int] NOT NULL ,
	[FormTag] [tinyint] NOT NULL ,
	[HasAccess] [bit] NOT NULL ,
	CONSTRAINT [PK_ActionsAccess] PRIMARY KEY  CLUSTERED 
	(
		[AccessID],
		[ActionID],
		[FormTag]
	) WITH  FILLFACTOR = 90  ON [PRIMARY] 
) ON [PRIMARY]
end

GO


if not exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[ActionType]') and OBJECTPROPERTY(id, N'IsUserTable') = 1)
 begin  
CREATE TABLE [dbo].[ActionType] (
	[ActionTypeID] [int] NOT NULL ,
	[ActionTypeTitle] [nvarchar] (50)  NULL ,
	CONSTRAINT [PK_ActionType] PRIMARY KEY  CLUSTERED 
	(
		[ActionTypeID]
	)  ON [PRIMARY] 
) ON [PRIMARY]
end
GO


if not exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[added]') and OBJECTPROPERTY(id, N'IsUserTable') = 1)
 begin  

CREATE TABLE [dbo].[added] (
	[ID] [int] IDENTITY (1, 1) NOT NULL ,
	[Title] [nvarchar] (100)  NOT NULL ,
	[ParentID] [int] NOT NULL ,
	[Phone] [nvarchar] (30)  NULL ,
	[Fax] [nvarchar] (30)  NULL ,
	[Email] [nvarchar] (30)  NULL ,
	[ResponsibleStaffer] [nvarchar] (50)  NOT NULL ,
	[IsActive] [bit] NULL ,
	[PreCode] [nvarchar] (50)  NULL ,
	[IsInnerOrg] [bit] NOT NULL ,
	[Code] [nvarchar] (10)  NOT NULL ,
	[Number] [int] NOT NULL CONSTRAINT [DF__Added__Number__49F9CC38] DEFAULT (0)
) ON [PRIMARY]

end
GO


if not exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[ApplicationForms]') and OBJECTPROPERTY(id, N'IsUserTable') = 1)
 begin 

CREATE TABLE [dbo].[ApplicationForms] (
	[ID] [tinyint] NOT NULL ,
	[Title] [nvarchar] (50)  NULL 
) ON [PRIMARY]

 CREATE  INDEX [IX_ApplicationForms_ID] ON [dbo].[ApplicationForms]([ID]) ON [PRIMARY]

end
GO


if not exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[ArchiveCenter]') and OBJECTPROPERTY(id, N'IsUserTable') = 1)
 begin  

CREATE TABLE [dbo].[ArchiveCenter] (
	[ArchiveCenterID] [int] NOT NULL ,
	[ArchiveCenterTitle] [nvarchar] (50)  NOT NULL ,
	CONSTRAINT [PK_ArchiveCenter] PRIMARY KEY  CLUSTERED 
	(
		[ArchiveCenterID]
	)  ON [PRIMARY] 
) ON [PRIMARY]

end
GO
if not exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[FromOrganizations]') and OBJECTPROPERTY(id, N'IsUserTable') = 1)
 begin  

CREATE TABLE [dbo].[FromOrganizations] (
	[ID] [int] IDENTITY (1, 1) NOT NULL ,
	[Title] [nvarchar] (100)  NULL ,
	[ParentID] [int] NOT NULL ,
	[Phone] [nvarchar] (30)  NULL ,
	[Fax] [nvarchar] (30)  NULL ,
	[Email] [nvarchar] (30)  NULL ,
	[ResponsibleStaffer] [nvarchar] (50)  NULL ,
	[IsActive] [bit] NULL CONSTRAINT [DF_FromOrganizations_IsActive] DEFAULT (1),
	[PreCode] [nvarchar] (50)  NULL ,
	[IsInnerOrg] [bit] NOT NULL CONSTRAINT [DF_FromOrganizations_IsInnerOrg] DEFAULT (1),
	[Code] [nvarchar] (50)  NULL CONSTRAINT [DF_FromOrganizations_Code] DEFAULT (1),
	[UniqueID] [bigint] NULL ,
	CONSTRAINT [PK_FromOrganizations] PRIMARY KEY  CLUSTERED 
	(
		[ID]
	) WITH  FILLFACTOR = 90  ON [PRIMARY] 
) ON [PRIMARY]
 

 CREATE  UNIQUE  INDEX [fromorganizations_idx] ON [dbo].[FromOrganizations]([Code]) ON [PRIMARY]
 

 CREATE  INDEX [IX_FromOrganizations_Title] ON [dbo].[FromOrganizations]([Title]) ON [PRIMARY]
 

 CREATE  INDEX [IX_FromOrganizations_ParentID] ON [dbo].[FromOrganizations]([ParentID]) ON [PRIMARY]
 

 CREATE  INDEX [IX_FromOrganizations] ON [dbo].[FromOrganizations]([Code]) ON [PRIMARY]
 
end

GO
if not exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[Users]') and OBJECTPROPERTY(id, N'IsUserTable') = 1)
 begin 
CREATE TABLE [dbo].[Users] (
	[Id] [int] IDENTITY (1, 1) NOT NULL ,
	[Title] [nvarchar] (50)  NULL ,
	[UserName] [nvarchar] (50)  NULL ,
	[PassWord] [nvarchar] (100)  NULL ,
	[AccessID] [tinyint] NULL ,
	[FromOrgID] [int] NULL ,
	[DefualtSecretariatID] [tinyint] NOT NULL CONSTRAINT [DF_Users_DefualtSecretariatID] DEFAULT (1),
	[IsSecretariantStaffer] [bit] NULL ,
	[KartableGridInfo] [image] NULL ,
	[DabirGridInfo] [image] NULL ,
	[EndActiveDate] [char] (10)  NULL ,
	[BeginActiveDate] [char] (10)  NULL ,
	[AlternativeUserID] [int] NULL ,
	[AlternativeEndDate] [char] (10)  NULL ,
	[AlternativebeginDate] [char] (10)  NULL ,
	[HasSecureLetterAccess] [bit] NOT NULL CONSTRAINT [DF__Users__HasSecure__5E0BB1DD] DEFAULT (1),
	[SecondOrgID] [int] NULL ,
	[eCartableGridInfo] [varchar] (500)  NULL ,
	[eCartableTheme] [varchar] (50)  NULL ,
	[Email] [nvarchar] (100)  NULL ,
	CONSTRAINT [PK_Users] PRIMARY KEY  CLUSTERED 
	(
		[Id]
	) WITH  FILLFACTOR = 90  ON [PRIMARY] ,
	
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]


 CREATE  INDEX [IX_Users_FromOrgID] ON [dbo].[Users]([FromOrgID]) ON [PRIMARY]


 CREATE  INDEX [IX_Users_AccessID] ON [dbo].[Users]([AccessID]) ON [PRIMARY]


 CREATE  INDEX [IX_Users_DefualtSecretariatID] ON [dbo].[Users]([DefualtSecretariatID]) ON [PRIMARY]


 CREATE  INDEX [IX_Users_SecondOrgID] ON [dbo].[Users]([SecondOrgID]) ON [PRIMARY]



end
GO
if not exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[ArchiveFolder]') and OBJECTPROPERTY(id, N'IsUserTable') = 1)
 begin 
CREATE TABLE [dbo].[ArchiveFolder] (
	[FolderID] [int] IDENTITY (1, 1) NOT NULL ,
	[ParentFolderID] [int] NOT NULL ,
	[Title] [nvarchar] (100)  NULL ,
	[UserID] [int] NOT NULL ,
	[Notes] [nvarchar] (500)  NULL ,
	[Place] [nvarchar] (100)  NULL ,
	CONSTRAINT [PK_ArchiveFolder] PRIMARY KEY  CLUSTERED 
	(
		[FolderID]
	)  ON [PRIMARY] 
	
) ON [PRIMARY] 

 CREATE  INDEX [IX_ArchiveFolder_ParentFolderID] ON [dbo].[ArchiveFolder]([ParentFolderID]) ON [PRIMARY] 

 CREATE  INDEX [IX_ArchiveFolder_Title] ON [dbo].[ArchiveFolder]([Title]) ON [PRIMARY] 

 CREATE  INDEX [IX_ArchiveFolder_UserID] ON [dbo].[ArchiveFolder]([UserID]) ON [PRIMARY] 


end
GO

if not exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[Classifications]') and OBJECTPROPERTY(id, N'IsUserTable') = 1)
 begin 

CREATE TABLE [dbo].[Classifications] (
	[ID] [int] NOT NULL ,
	[Title] [nvarchar] (50)  NULL ,
	CONSTRAINT [PK_Classifications] PRIMARY KEY  CLUSTERED 
	(
		[ID]
	) WITH  FILLFACTOR = 90  ON [PRIMARY] 
) ON [PRIMARY]

end

 

if not exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[DoneStatus]') and OBJECTPROPERTY(id, N'IsUserTable') = 1)
 begin  

CREATE TABLE [dbo].[DoneStatus] (
	[DoneStatusID] [tinyint] NOT NULL ,
	[DoneStatustitle] [nvarchar] (50)  NOT NULL ,
	CONSTRAINT [PK_DoneStatus] PRIMARY KEY  CLUSTERED 
	(
		[DoneStatusID]
	)  ON [PRIMARY] 
) ON [PRIMARY]
end
GO


if not exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[Emails]') and OBJECTPROPERTY(id, N'IsUserTable') = 1)
 begin  

CREATE TABLE [dbo].[Emails] (
	[EmailsID] [int] IDENTITY (1, 1) NOT NULL ,
	[Code] [int] NOT NULL ,
	[Subject] [nvarchar] (200)  NOT NULL ,
	[SendAddress] [nvarchar] (100)  NULL ,
	[ReciveAddress] [nvarchar] (100)  NULL ,
	[Memo] [image] NULL ,
	[AttachFile] [image] NULL ,
	[AttachFileName] [nvarchar] (50)  NULL ,
	[Status] [smallint] NULL ,
	[DateEmail] [nvarchar] (10)  NOT NULL ,
	[TimeEmail] [nvarchar] (10)  NOT NULL ,
	[IsAnswer] [bit] NULL ,
	[IsReciveEmail] [bit] NULL ,
	[UsersID] [int] NOT NULL ,
	[IsRead] [bit] NULL ,
	[IsPersonal] [bit] NULL ,
	[IsImportant] [bit] NULL ,
	[IsSecret] [bit] NULL ,
	[EmailNuFromDate] [nvarchar] (20)  NULL ,
	CONSTRAINT [PK_Emails] PRIMARY KEY  CLUSTERED 
	(
		[EmailsID]
	)  ON [PRIMARY] 
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
 

 CREATE  INDEX [IX_Emails_Code] ON [dbo].[Emails]([Code]) ON [PRIMARY]
 

 CREATE  INDEX [IX_Emails_Subject] ON [dbo].[Emails]([Subject]) ON [PRIMARY]
 

 CREATE  INDEX [IX_Emails_EmailNuFromDate] ON [dbo].[Emails]([EmailNuFromDate]) ON [PRIMARY]
 

 CREATE  INDEX [IX_Emails_SendAddress] ON [dbo].[Emails]([SendAddress]) ON [PRIMARY]
 

end

GO

if not exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[ErrorMessage]') and OBJECTPROPERTY(id, N'IsUserTable') = 1)
 begin 

CREATE TABLE [dbo].[ErrorMessage] (
	[Errorid] [bigint] IDENTITY (1, 1) NOT NULL ,
	[ErrorMessage] [nvarchar] (255)  NULL ,
	[ErrorDate] [nvarchar] (10)  NULL ,
	[UserCode] [int] NULL ,
	[FarsiMessage] [nvarchar] (255)  NULL ,
	[ShowMessage] [bit] NULL CONSTRAINT [DF_ErrorMessage_ShowMessage] DEFAULT (1),
	CONSTRAINT [PK_ErrorMessage] PRIMARY KEY  CLUSTERED 
	(
		[Errorid]
	)  ON [PRIMARY] 
) ON [PRIMARY]
 

 CREATE  INDEX [IX_ErrorMessage_ErrorMessage] ON [dbo].[ErrorMessage]([ErrorMessage]) ON [PRIMARY]
 

 CREATE  INDEX [IX_ErrorMessage_FarsiMessage] ON [dbo].[ErrorMessage]([FarsiMessage]) ON [PRIMARY]
end
GO


if not exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[Extention]') and OBJECTPROPERTY(id, N'IsUserTable') = 1)
 begin  

CREATE TABLE [dbo].[Extention] (
	[ExtentionID] [int] IDENTITY (1, 1) NOT NULL ,
	[ExtentionTitle] [nvarchar] (200)  NOT NULL ,
	[Extention] [varchar] (5)  NOT NULL ,
	[IsSystem] [bit] NOT NULL CONSTRAINT [DF__Extention__IsSys__3E88198C] DEFAULT (0),
	CONSTRAINT [PK_Extention] PRIMARY KEY  CLUSTERED 
	(
		[ExtentionID]
	)  ON [PRIMARY] 
) ON [PRIMARY]
end

GO
if not exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[Fields]') and OBJECTPROPERTY(id, N'IsUserTable') = 1)
 begin  

CREATE TABLE [dbo].[Fields] (
	[ID] [int] IDENTITY (1, 1) NOT NULL ,
	[FieldName] [nvarchar] (50)  NOT NULL ,
	[TableID] [int] NOT NULL CONSTRAINT [DF_Fields_TableID] DEFAULT (1),
	[Description] [nvarchar] (50)  NULL ,
	[IsWhere] [bit] NOT NULL CONSTRAINT [DF_Fields_IsWhere] DEFAULT (1),
	[ISString] [bit] NOT NULL CONSTRAINT [DF_Fields_ISString] DEFAULT (1),
	[IsLike] [bit] NOT NULL CONSTRAINT [DF_Fields_IsLike] DEFAULT (1),
	[EveryLike] [bit] NOT NULL CONSTRAINT [DF_Fields_EveryLike] DEFAULT (0),
	[VisibleInGrid] [bit] NOT NULL CONSTRAINT [DF_Fields_VisibleInGrid] DEFAULT (1),
	[isblob] [bit] NULL CONSTRAINT [DF__Fields__isblob__4AEDF071] DEFAULT (0),
	[FieldTypeID] [int] NULL ,
	[ReferenceTableID] [int] NULL ,
	[order] [int] NULL CONSTRAINT [DF__Fields__order__0A9E6132] DEFAULT (1),
	[FieldGroupID] [int] NULL ,
	[isboolean] [bit] NULL ,
	CONSTRAINT [PK_Fields] PRIMARY KEY  CLUSTERED 
	(
		[ID]
	)  ON [PRIMARY]
) ON [PRIMARY]
 

 CREATE  INDEX [IX_Fields_TableID] ON [dbo].[Fields]([TableID]) ON [PRIMARY]
 

 CREATE  INDEX [IX_Fields_FieldName] ON [dbo].[Fields]([FieldName]) ON [PRIMARY]
 

 CREATE  INDEX [IX_Fields_FieldGroupID] ON [dbo].[Fields]([FieldGroupID]) ON [PRIMARY]
 

 CREATE  INDEX [IX_Fields_FieldTypeID] ON [dbo].[Fields]([FieldTypeID]) ON [PRIMARY]
 

 CREATE  INDEX [IX_Fields_ReferenceTableID] ON [dbo].[Fields]([ReferenceTableID]) ON [PRIMARY]


end

GO

if not exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[FieldAccess]') and OBJECTPROPERTY(id, N'IsUserTable') = 1)
 begin  

CREATE TABLE [dbo].[FieldAccess] (
	[FieldAccessID] [int] IDENTITY (1, 1) NOT NULL ,
	[FieldID] [int] NOT NULL ,
	[UserID] [int] NOT NULL ,
	[AccessTypeID] [tinyint] NOT NULL ,
	CONSTRAINT [PK_FieldAccess] PRIMARY KEY  CLUSTERED 
	(
		[FieldAccessID]
	)  ON [PRIMARY] 
) ON [PRIMARY]


 CREATE  INDEX [IX_FieldAccess_FieldID] ON [dbo].[FieldAccess]([FieldID]) ON [PRIMARY]


 CREATE  INDEX [IX_FieldAccess_UserID] ON [dbo].[FieldAccess]([UserID]) ON [PRIMARY]


 CREATE  INDEX [IX_FieldAccess_AccessTypeID] ON [dbo].[FieldAccess]([AccessTypeID]) ON [PRIMARY]



end

GO




if not exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[FieldType]') and OBJECTPROPERTY(id, N'IsUserTable') = 1)
 begin 

CREATE TABLE [dbo].[FieldType] (
	[FieldTypeID] [int] NOT NULL ,
	[FieldTypeTitle] [nvarchar] (50)  NOT NULL ,
	CONSTRAINT [PK_FieldType] PRIMARY KEY  CLUSTERED 
	(
		[FieldTypeID]
	)  ON [PRIMARY] 
) ON [PRIMARY]
end

GO

if not exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[FollowUpType]') and OBJECTPROPERTY(id, N'IsUserTable') = 1)
 begin 
CREATE TABLE [dbo].[FollowUpType] (
	[FollowUpTypeID] [int] IDENTITY (1, 1) NOT NULL ,
	[FollowUpTypeTitle] [nvarchar] (50)  NOT NULL ,
	CONSTRAINT [PK_FollowUpType] PRIMARY KEY  CLUSTERED 
	(
		[FollowUpTypeID]
	)  ON [PRIMARY] 
) ON [PRIMARY]
end

GO




if not exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[ImageData]') and OBJECTPROPERTY(id, N'IsUserTable') = 1)
 begin 

CREATE TABLE [dbo].[ImageData] (
	[ImageDataID] [int] IDENTITY (1, 1) NOT NULL ,
	[Data] [image] NULL ,
	[FileName] [nvarchar] (50)  NULL ,
	[TableName] [nvarchar] (50)  NOT NULL ,
	[TableID] [int] NOT NULL ,
	[Tag] [int] NULL ,
	CONSTRAINT [PK_ImageData] PRIMARY KEY  CLUSTERED 
	(
		[ImageDataID]
	)  ON [PRIMARY] 
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
 

 CREATE  INDEX [IX_ImageData_TableName] ON [dbo].[ImageData]([TableName]) ON [PRIMARY]
 

 CREATE  INDEX [IX_ImageData_TableID] ON [dbo].[ImageData]([TableID]) ON [PRIMARY]
 end
GO


if not exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[Letter]') and OBJECTPROPERTY(id, N'IsUserTable') = 1)
 begin 
CREATE TABLE [dbo].[Letter] (
	[LetterID] [int] IDENTITY (1, 1) NOT NULL ,
	[IndicatorID] [int] NOT NULL ,
	[MYear] [tinyint] NOT NULL ,
	[SecretariatID] [int] NOT NULL CONSTRAINT [DF__Letter__Secretar__1DBB5747] DEFAULT (1),
	[Letter_Type] [int] NOT NULL CONSTRAINT [DF__Letter__Letter_T__1EAF7B80] DEFAULT (1),
	[letterformat] [int] NOT NULL CONSTRAINT [DF__Letter__letterfo__1FA39FB9] DEFAULT (1),
	[IncommingNO] [nvarchar] (50)  NULL ,
	[Incommingdate] [nvarchar] (10)  NULL ,
	[CenterNo] [nvarchar] (50)  NULL ,
	[CenterDate] [char] (10)  NULL ,
	[FromOrgID] [int] NOT NULL CONSTRAINT [DF__Letter__FromOrgI__2097C3F2] DEFAULT ((-1)),
	[ToOrgID] [int] NOT NULL CONSTRAINT [DF__Letter__ToOrgID__218BE82B] DEFAULT (0),
	[Signerid] [nvarchar] (50)  NULL ,
	[ClassificationID] [int] NOT NULL CONSTRAINT [DF__Letter__Classifi__22800C64] DEFAULT (1),
	[UrgencyID] [int] NOT NULL CONSTRAINT [DF__Letter__UrgencyI__2374309D] DEFAULT (1),
	[Memo] [nvarchar] (2000)  NULL ,
	[AttachTitle] [nvarchar] (50)  NULL ,
	[NumberOfAttachPages] [smallint] NULL CONSTRAINT [DF__Letter__NumberOf__246854D6] DEFAULT (1),
	[NumberOfPage] [tinyint] NOT NULL CONSTRAINT [DF__Letter__NumberOf__255C790F] DEFAULT (1),
	[ReceiveTypeID] [int] NOT NULL CONSTRAINT [DF__Letter__ReceiveT__26509D48] DEFAULT (1),
	[UserID] [int] NOT NULL CONSTRAINT [DF__Letter__UserID__2744C181] DEFAULT (0),
	[RetroactionNo] [nvarchar] (50)  NULL ,
	[UserMemo] [nvarchar] (255)  NULL ,
	[RegistrationDate] [char] (10)  NOT NULL ,
	[RegistrationTime] [varchar] (5)  NOT NULL ,
	[FollowLetterNo] [nvarchar] (50)  NULL ,
	[ToStaffer] [nvarchar] (50)  NULL ,
	[SentLetterID] [int] NULL ,
	[TemplateID] [int] NULL ,
	[HeaderID] [int] NULL ,
	[LetterRecommites] [nvarchar] (500)  NULL ,
	[PreCode] [nvarchar] (50)  NULL ,
	[fromstaffer] [nvarchar] (50)  NULL ,
	[Finalized] [bit] NOT NULL CONSTRAINT [DF__Letter__Finalize__4BE214AA] DEFAULT (1),
	[SendStatusID] [int] NOT NULL CONSTRAINT [DF__Letter__SendStat__4CD638E3] DEFAULT (1),
	[LastUpdate] [datetime] NOT NULL CONSTRAINT [DF__Letter__LastUpda__7D446614] DEFAULT (getdate()),
	[UserTableID] [int] NULL ,
	[UniqueID] [bigint] NULL ,
	[Archived] [bit] NOT NULL CONSTRAINT [DF__Letter__Archived__047B7388] DEFAULT (0),
	[SubjectDescription] [nvarchar] (255)  NULL ,
	[SubjectID] [int] NULL ,
	[LatestActionTypeID] [int] NULL ,
	[LatestActionReason] [nvarchar] (255)  NULL ,
	[DeadLineDate] [char] (10)  NULL ,
	[ActionTypeID] [int] NOT NULL CONSTRAINT [DF__Letter__ActionTy__657894D2] DEFAULT (1),
	[UserTableID2] [int] NULL ,
	[EmailNuFromDate] [nvarchar] (20)  NULL ,
	CONSTRAINT [PK_Letter] PRIMARY KEY  CLUSTERED 
	(
		[LetterID]
	)  ON [PRIMARY]
) ON [PRIMARY]
 

 CREATE  INDEX [ind_idx] ON [dbo].[Letter]([IndicatorID]) ON [PRIMARY]
 

 CREATE  INDEX [letter_idx] ON [dbo].[Letter]([SecretariatID], [Letter_Type], [MYear], [letterformat], [IndicatorID]) ON [PRIMARY]
 

 CREATE  INDEX [myear_idx] ON [dbo].[Letter]([MYear]) ON [PRIMARY]
 

 CREATE  INDEX [secid_idx] ON [dbo].[Letter]([SecretariatID]) ON [PRIMARY]
 

 CREATE  INDEX [letter_type_idx] ON [dbo].[Letter]([Letter_Type]) ON [PRIMARY]
 

 CREATE  INDEX [letterformat_idx] ON [dbo].[Letter]([letterformat]) ON [PRIMARY]
 

 CREATE  INDEX [incommingno_idx] ON [dbo].[Letter]([IncommingNO]) ON [PRIMARY]
 

 CREATE  INDEX [registrationdate_idx] ON [dbo].[Letter]([RegistrationDate]) ON [PRIMARY]
 

 CREATE  INDEX [fromorgid_idx] ON [dbo].[Letter]([FromOrgID]) ON [PRIMARY]
 

 CREATE  INDEX [ToOrgid_idx] ON [dbo].[Letter]([ToOrgID]) ON [PRIMARY]
 

 CREATE  UNIQUE  INDEX [Letter_IDX_Indicator] ON [dbo].[Letter]([IndicatorID], [MYear], [SecretariatID], [Letter_Type], [letterformat]) ON [PRIMARY]
 

 CREATE  INDEX [IX_Letter_IndicatorID] ON [dbo].[Letter]([IndicatorID]) ON [PRIMARY]
 

 CREATE  INDEX [IX_Letter_Letter_Type] ON [dbo].[Letter]([Letter_Type]) ON [PRIMARY]
 

 CREATE  INDEX [IX_Letter_letterformat] ON [dbo].[Letter]([letterformat]) ON [PRIMARY]
 

 CREATE  INDEX [IX_Letter_IncommingNO] ON [dbo].[Letter]([IncommingNO]) ON [PRIMARY]
 

 CREATE  INDEX [IX_Letter_FromOrgID] ON [dbo].[Letter]([FromOrgID]) ON [PRIMARY]
 

 CREATE  INDEX [IX_Letter_ToOrgID] ON [dbo].[Letter]([ToOrgID]) ON [PRIMARY]
 

 CREATE  INDEX [IX_Letter_Signerid] ON [dbo].[Letter]([Signerid]) ON [PRIMARY]
 

 CREATE  INDEX [IX_Letter_ClassificationID] ON [dbo].[Letter]([ClassificationID]) ON [PRIMARY]
 

 CREATE  INDEX [IX_Letter_UrgencyID] ON [dbo].[Letter]([UrgencyID]) ON [PRIMARY]
 

 CREATE  INDEX [IX_Letter_UserID] ON [dbo].[Letter]([UserID]) ON [PRIMARY]
 

 CREATE  INDEX [IX_Letter_MYear] ON [dbo].[Letter]([MYear]) ON [PRIMARY]
 
 
 CREATE  INDEX [IX_Letter_RegistrationDate] ON [dbo].[Letter]([RegistrationDate]) ON [PRIMARY]
 

 CREATE  INDEX [IX_Letter_SecretariatID] ON [dbo].[Letter]([SecretariatID]) ON [PRIMARY]
 


 end
GO


if not exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[LetterArchiveFolder]') and OBJECTPROPERTY(id, N'IsUserTable') = 1)
 begin  

CREATE TABLE [dbo].[LetterArchiveFolder] (
	[LetterArchiveID] [int] IDENTITY (1, 1) NOT NULL ,
	[ArchiveFolderID] [int] NOT NULL ,
	[LetterID] [int] NOT NULL ,
	[ArchiveDate] [char] (10)  NOT NULL ,
	[Page] [int] NULL ,
	[ArchiveNotes] [nvarchar] (50)  NULL ,
	[UserID] [int] NOT NULL CONSTRAINT [DF__LetterArc__UserI__5C23696B] DEFAULT (0),
	CONSTRAINT [PK_LetterArchiveFolder] PRIMARY KEY  CLUSTERED 
	(
		[LetterArchiveID]
	)  ON [PRIMARY] 
	
) ON [PRIMARY]
 

 CREATE  INDEX [Letterarchive_Folder_idx] ON [dbo].[LetterArchiveFolder]([ArchiveFolderID]) ON [PRIMARY]
 

 CREATE  INDEX [Letterarchive_Letter_Folder_idx] ON [dbo].[LetterArchiveFolder]([ArchiveFolderID], [LetterID]) ON [PRIMARY]
 

 CREATE  INDEX [Letterarchive_Letter_idx] ON [dbo].[LetterArchiveFolder]([LetterID]) ON [PRIMARY]
 

 CREATE  INDEX [IX_LetterArchiveFolder_ArchiveFolderID] ON [dbo].[LetterArchiveFolder]([ArchiveFolderID]) ON [PRIMARY]
 

 CREATE  INDEX [IX_LetterArchiveFolder_LetterID] ON [dbo].[LetterArchiveFolder]([LetterID]) ON [PRIMARY]
 

 CREATE  INDEX [IX_LetterArchiveFolder_UserID] ON [dbo].[LetterArchiveFolder]([UserID]) ON [PRIMARY]
 


 end
GO


if not exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[LetterData]') and OBJECTPROPERTY(id, N'IsUserTable') = 1)
 begin  

CREATE TABLE [dbo].[LetterData] (
	[LetterDataID] [int] IDENTITY (1, 1) NOT NULL ,
	[LetterID] [int] NOT NULL ,
	[PageNumber] [tinyint] NOT NULL CONSTRAINT [DF_letterdata_pageNumber] DEFAULT (0),
	[Image] [image] NULL ,
	[extention] [tinyint] NOT NULL CONSTRAINT [DF_LetterData_extention] DEFAULT (1),
	[Description] [nvarchar] (200)  NULL ,
	[LastUpdate] [datetime] NULL CONSTRAINT [DF__LetterDat__LastU__07C1F487] DEFAULT (getdate()),
	[UniqueID] [bigint] NULL ,
	[ListItemsID] [int] NULL ,
	CONSTRAINT [PK_LetterData] PRIMARY KEY  CLUSTERED 
	(
		[LetterDataID]
	) WITH  FILLFACTOR = 90  ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
 

 CREATE  INDEX [IX_LetterData_LetterID] ON [dbo].[LetterData]([LetterID]) ON [PRIMARY]
 

 CREATE  INDEX [IX_LetterData_extention] ON [dbo].[LetterData]([extention]) ON [PRIMARY]
 


end
--------------  ta inja -----------------------

GO

if not exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[LetterFieldValue]') and OBJECTPROPERTY(id, N'IsUserTable') = 1)
 begin 
-------------------------------------INJA

CREATE TABLE [dbo].[LetterFieldValue] (
	[LetterFieldValueID] [int] IDENTITY (1, 1) NOT NULL ,
	[LetterID] [int] NOT NULL ,
	[FieldID] [int] NOT NULL ,
	[FieldValue] [nvarchar] (2000)  NULL ,
	[uniqueID] [bigint] NULL ,
	[LastUpdate] [datetime] NULL CONSTRAINT [DF__LetterFie__LastU__0020D2BF] DEFAULT (getdate()),
	[InsertUserID] [int] NOT NULL CONSTRAINT [DF__LetterFie__Inser__7AF2094E] DEFAULT (0),
	[FormOrder] [tinyint] NOT NULL CONSTRAINT [DF__LetterFie__FormO__5EFFD616] DEFAULT (1),
	CONSTRAINT [PK_LetterFieldValue] PRIMARY KEY  CLUSTERED 
	(
		[LetterFieldValueID]
	)  ON [PRIMARY] ,
	
) ON [PRIMARY]


 CREATE  INDEX [IX_LetterFieldValue_LetterID] ON [dbo].[LetterFieldValue]([LetterID]) ON [PRIMARY]


 CREATE  INDEX [IX_LetterFieldValue_FieldID] ON [dbo].[LetterFieldValue]([FieldID]) ON [PRIMARY]


 CREATE  INDEX [IX_LetterFieldValue_InsertUserID] ON [dbo].[LetterFieldValue]([InsertUserID]) ON [PRIMARY]





end
GO

if not exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[LetterFormats]') and OBJECTPROPERTY(id, N'IsUserTable') = 1)
 begin 

CREATE TABLE [dbo].[LetterFormats] (
	[Code] [int] NOT NULL ,
	[Title] [nvarchar] (50)  NULL ,
	CONSTRAINT [PK_LetterTypes] PRIMARY KEY  CLUSTERED 
	(
		[Code]
	) WITH  FILLFACTOR = 90  ON [PRIMARY] 
) ON [PRIMARY]
end
GO



if not exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[LetterRelation]') and OBJECTPROPERTY(id, N'IsUserTable') = 1)
 begin 

CREATE TABLE [dbo].[LetterRelation] (
	[LetterRelationID] [int] IDENTITY (1, 1) NOT NULL ,
	[MainLetterID] [int] NOT NULL ,
	[SubLetterID] [int] NOT NULL ,
	[Ord] [tinyint] NOT NULL CONSTRAINT [DF_LetterRelation_Ord] DEFAULT (1),
	CONSTRAINT [PK_LetterRelation] PRIMARY KEY  CLUSTERED 
	(
		[LetterRelationID]
	)  ON [PRIMARY] ,
	
) ON [PRIMARY]




end

if not exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[LetterTemplate]') and OBJECTPROPERTY(id, N'IsUserTable') = 1)
 begin 

CREATE TABLE [dbo].[LetterTemplate] (
	[ID] [int] IDENTITY (1, 1) NOT NULL ,
	[Document] [image] NULL ,
	[Title] [nvarchar] (50)  NULL ,
	[validHeader] [smallint] NULL ,
	[TemplateGroupID] [int] NOT NULL CONSTRAINT [DF__LetterTem__Templ__4DCA5D1C] DEFAULT (1),
	CONSTRAINT [PK_LetterTemplate] PRIMARY KEY  CLUSTERED 
	(
		[ID]
	) WITH  FILLFACTOR = 90  ON [PRIMARY] ,
	
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]


 CREATE  INDEX [IX_LetterTemplate_Title] ON [dbo].[LetterTemplate]([Title]) ON [PRIMARY]




end
GO

if not exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[LetterText]') and OBJECTPROPERTY(id, N'IsUserTable') = 1)
 begin 

CREATE TABLE [dbo].[LetterText] (
	[LetterID] [int] NULL ,
	[LetterFormat] [int] NOT NULL CONSTRAINT [DF_LetterText_LetterFormat] DEFAULT (1),
	[TypeText] [ntext]  NULL ,
	
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]


 CREATE  INDEX [IX_LetterText_LetterID] ON [dbo].[LetterText]([LetterID]) ON [PRIMARY]


 CREATE  INDEX [IX_LetterText_LetterFormat] ON [dbo].[LetterText]([LetterFormat]) ON [PRIMARY]





end

if not exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[LetterTypes]') and OBJECTPROPERTY(id, N'IsUserTable') = 1)
 begin 

CREATE TABLE [dbo].[LetterTypes] (
	[ID] [int] NOT NULL ,
	[Title] [nvarchar] (50)  NULL ,
	[PreCode] [nvarchar] (10)  NULL ,
	CONSTRAINT [PK_LetterTypes_1] PRIMARY KEY  CLUSTERED 
	(
		[ID]
	) WITH  FILLFACTOR = 90  ON [PRIMARY] 
) ON [PRIMARY]
end
GO


if not exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[LifeTips]') and OBJECTPROPERTY(id, N'IsUserTable') = 1)
 begin 

CREATE TABLE [dbo].[LifeTips] (
	[id] [int] NOT NULL ,
	[title] [nvarchar] (150)  NULL ,
	CONSTRAINT [PK_LifeTips] PRIMARY KEY  CLUSTERED 
	(
		[id]
	)  ON [PRIMARY] 
) ON [PRIMARY]
end
GO


if not exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[ListItems]') and OBJECTPROPERTY(id, N'IsUserTable') = 1)
 begin 


CREATE TABLE [dbo].[ListItems] (
	[ListItemsID] [int] IDENTITY (1, 1) NOT NULL ,
	[ListID] [tinyint] NOT NULL ,
	[KeyValue] [int] NOT NULL ,
	[Title] [nvarchar] (50)  NULL ,
	[Notes] [nvarchar] (255)  NULL ,
	[UsersID] [int] NULL ,
	CONSTRAINT [PK_List] PRIMARY KEY  CLUSTERED 
	(
		[ListItemsID]
	)  ON [PRIMARY] 
) ON [PRIMARY]


 CREATE  INDEX [IX_ListItems_ListID] ON [dbo].[ListItems]([ListID]) ON [PRIMARY]
end
GO


if not exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[News]') and OBJECTPROPERTY(id, N'IsUserTable') = 1)
 begin 

CREATE TABLE [dbo].[News] (
	[NewsID] [int] IDENTITY (1, 1) NOT NULL ,
	[Code] [int] NOT NULL ,
	[Title] [nvarchar] (300)  NOT NULL ,
	[Memo] [nvarchar] (3000)  NULL ,
	[UrgenceisID] [int] NULL CONSTRAINT [DF_News_UrgencyID] DEFAULT (1),
	[DateAnnounce] [nvarchar] (10)  NULL ,
	[TimeAnnounce] [nvarchar] (10)  NULL ,
	[DateExpire] [nvarchar] (10)  NULL ,
	[UserID] [int] NOT NULL ,
	CONSTRAINT [PK_News] PRIMARY KEY  CLUSTERED 
	(
		[NewsID]
	)  ON [PRIMARY] ,
	
) ON [PRIMARY]


 CREATE  INDEX [IX_News_Code] ON [dbo].[News]([Code]) ON [PRIMARY]


 CREATE  INDEX [IX_News_Title] ON [dbo].[News]([Title]) ON [PRIMARY]


 CREATE  INDEX [IX_News_UserID] ON [dbo].[News]([UserID]) ON [PRIMARY]





end
GO
if not exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[NewsGroup]') and OBJECTPROPERTY(id, N'IsUserTable') = 1)
 begin 

CREATE TABLE [dbo].[NewsGroup] (
	[NewsGroupID] [int] IDENTITY (1, 1) NOT NULL ,
	[Title] [nvarchar] (50)  NOT NULL ,
	[Descript] [nvarchar] (300)  NULL ,
	[UsersID] [int] NOT NULL ,
	CONSTRAINT [PK_NewsGroup] PRIMARY KEY  CLUSTERED 
	(
		[NewsGroupID]
	)  ON [PRIMARY] ,
	
) ON [PRIMARY]


 CREATE  INDEX [IX_NewsGroup_Title] ON [dbo].[NewsGroup]([Title]) ON [PRIMARY]


 CREATE  INDEX [IX_NewsGroup_UsersID] ON [dbo].[NewsGroup]([UsersID]) ON [PRIMARY]




end
GO

if not exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[NewsGroupUsers]') and OBJECTPROPERTY(id, N'IsUserTable') = 1)
 begin 

CREATE TABLE [dbo].[NewsGroupUsers] (
	[NewsGroupUsersID] [int] IDENTITY (1, 1) NOT NULL ,
	[UsersID] [int] NOT NULL ,
	[NewsGroupID] [int] NOT NULL ,
	CONSTRAINT [PK_NewsGroupUsers] PRIMARY KEY  CLUSTERED 
	(
		[NewsGroupUsersID]
	)  ON [PRIMARY] ,
	
) ON [PRIMARY]


 CREATE  INDEX [IX_NewsGroupUsers_UsersID] ON [dbo].[NewsGroupUsers]([UsersID]) ON [PRIMARY]


 CREATE  INDEX [IX_NewsGroupUsers_NewsGroupID] ON [dbo].[NewsGroupUsers]([NewsGroupID]) ON [PRIMARY]




end
GO

if not exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[NewsUsers]') and OBJECTPROPERTY(id, N'IsUserTable') = 1)
 begin 

CREATE TABLE [dbo].[NewsUsers] (
	[NewsUsersID] [int] IDENTITY (1, 1) NOT NULL ,
	[NewsID] [int] NOT NULL ,
	[UsersID] [int] NOT NULL ,
	[IsRead] [bit] NULL ,
	[NotShow] [bit] NULL ,
	CONSTRAINT [PK_NewsUsers] PRIMARY KEY  CLUSTERED 
	(
		[NewsUsersID]
	)  ON [PRIMARY] ,
	
) ON [PRIMARY]


 CREATE  INDEX [IX_NewsUsers_NewsID] ON [dbo].[NewsUsers]([NewsID]) ON [PRIMARY]


 CREATE  INDEX [IX_NewsUsers_UsersID] ON [dbo].[NewsUsers]([UsersID]) ON [PRIMARY]




end
GO

if not exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[ParaphTemplate]') and OBJECTPROPERTY(id, N'IsUserTable') = 1)
 begin 

CREATE TABLE [dbo].[ParaphTemplate] (
	[ParaphTemplateID] [int] IDENTITY (1, 1) NOT NULL ,
	[UserID] [int] NOT NULL ,
	[OrderID] [tinyint] NOT NULL ,
	[Title] [nvarchar] (50)  NOT NULL ,
	[Paraph] [nvarchar] (500)  NOT NULL ,
	CONSTRAINT [PK_ParaphTemplate] PRIMARY KEY  CLUSTERED 
	(
		[ParaphTemplateID]
	)  ON [PRIMARY] ,
	
) ON [PRIMARY]


 CREATE  INDEX [IX_ParaphTemplate_UserID] ON [dbo].[ParaphTemplate]([UserID]) ON [PRIMARY]


 CREATE  INDEX [IX_ParaphTemplate_OrderID] ON [dbo].[ParaphTemplate]([OrderID]) ON [PRIMARY]


 CREATE  INDEX [IX_ParaphTemplate_Title] ON [dbo].[ParaphTemplate]([Title]) ON [PRIMARY]




end
GO
if not exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[PhoneGroup]') and OBJECTPROPERTY(id, N'IsUserTable') = 1)
 begin 

CREATE TABLE [dbo].[PhoneGroup] (
	[PhoneGroupID] [int] IDENTITY (1, 1) NOT NULL ,
	[Code] [int] NOT NULL ,
	[Title] [nvarchar] (50)  NOT NULL ,
	[UsersID] [int] NOT NULL ,
	CONSTRAINT [PK_PhoneGroup] PRIMARY KEY  CLUSTERED 
	(
		[PhoneGroupID]
	)  ON [PRIMARY] ,
	
) ON [PRIMARY]


 CREATE  INDEX [IX_PhoneGroup_Title] ON [dbo].[PhoneGroup]([Title]) ON [PRIMARY]


 CREATE  INDEX [IX_PhoneGroup_UsersID] ON [dbo].[PhoneGroup]([UsersID]) ON [PRIMARY]




end
GO
if not exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[Phone]') and OBJECTPROPERTY(id, N'IsUserTable') = 1)
 begin 

CREATE TABLE [dbo].[Phone] (
	[PhoneID] [int] IDENTITY (1, 1) NOT NULL ,
	[Code] [int] NOT NULL ,
	[Title] [nvarchar] (50)  NOT NULL ,
	[PersonName] [nvarchar] (50)  NULL ,
	[Tel1] [nvarchar] (20)  NULL ,
	[Tel2] [nvarchar] (20)  NULL ,
	[Mobile] [nvarchar] (20)  NULL ,
	[Fax] [nvarchar] (20)  NULL ,
	[Email] [nvarchar] (50)  NULL ,
	[Internet] [nvarchar] (500)  NULL ,
	[Address] [nvarchar] (500)  NULL ,
	[ZipCode] [nvarchar] (30)  NULL ,
	[Descript] [nvarchar] (500)  NULL ,
	[PhoneGroupID] [int] NULL ,
	[UsersID] [int] NOT NULL ,
	[IsPublic] [bit] NULL ,
	CONSTRAINT [PK_Phone] PRIMARY KEY  CLUSTERED 
	(
		[PhoneID]
	)  ON [PRIMARY] ,
	
) ON [PRIMARY]


 CREATE  INDEX [IX_Phone_Title] ON [dbo].[Phone]([Title]) ON [PRIMARY]


 CREATE  INDEX [IX_Phone_PersonName] ON [dbo].[Phone]([PersonName]) ON [PRIMARY]


 CREATE  INDEX [IX_Phone_Tel1] ON [dbo].[Phone]([Tel1]) ON [PRIMARY]


 CREATE  INDEX [IX_Phone_Tel2] ON [dbo].[Phone]([Tel2]) ON [PRIMARY]


 CREATE  INDEX [IX_Phone_Mobile] ON [dbo].[Phone]([Mobile]) ON [PRIMARY]


 CREATE  INDEX [IX_Phone_UsersID] ON [dbo].[Phone]([UsersID]) ON [PRIMARY]


 CREATE  INDEX [IX_Phone_Email] ON [dbo].[Phone]([Email]) ON [PRIMARY]




end
GO



if not exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[Receipt]') and OBJECTPROPERTY(id, N'IsUserTable') = 1)
 begin 
CREATE TABLE [dbo].[Receipt] (
	[ReceiptID] [int] IDENTITY (1, 1) NOT NULL ,
	[Title] [nvarchar] (50)  NULL ,
	[Memo] [nvarchar] (2000)  NULL ,
	[Descript] [nvarchar] (500)  NULL ,
	CONSTRAINT [PK_Receipt_ReceiptID] PRIMARY KEY  CLUSTERED 
	(
		[ReceiptID]
	)  ON [PRIMARY] 
) ON [PRIMARY]


 CREATE  INDEX [IX_Receipt_Title] ON [dbo].[Receipt]([Title]) ON [PRIMARY]

end
GO

if not exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[ReceiveTypes]') and OBJECTPROPERTY(id, N'IsUserTable') = 1)
 begin 

CREATE TABLE [dbo].[ReceiveTypes] (
	[ID] [int] NOT NULL ,
	[Title] [nvarchar] (50)  NULL ,
	CONSTRAINT [PK_ReceiveTypes] PRIMARY KEY  CLUSTERED 
	(
		[ID]
	) WITH  FILLFACTOR = 90  ON [PRIMARY] 
) ON [PRIMARY]


 CREATE  INDEX [IX_ReceiveTypes_Title] ON [dbo].[ReceiveTypes]([Title]) ON [PRIMARY]
end
GO


if not exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[RecommiteData]') and OBJECTPROPERTY(id, N'IsUserTable') = 1)
 begin 

CREATE TABLE [dbo].[RecommiteData] (
	[RecommiteDataID] [int] IDENTITY (1, 1) NOT NULL ,
	[RecommiteID] [int] NOT NULL ,
	[Image] [image] NULL ,
	[extention] [tinyint] NOT NULL ,
	[UniqueID] [bigint] NULL ,
	CONSTRAINT [PK_RecommiteData_RecommiteDataID] PRIMARY KEY  CLUSTERED 
	(
		[RecommiteDataID]
	)  ON [PRIMARY] ,
	
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]


 CREATE  INDEX [IX_RecommiteData_RecommiteID] ON [dbo].[RecommiteData]([RecommiteID]) ON [PRIMARY]


 CREATE  INDEX [IX_RecommiteData_extention] ON [dbo].[RecommiteData]([extention]) ON [PRIMARY]




end
GO

if not exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[ReCommites]') and OBJECTPROPERTY(id, N'IsUserTable') = 1)
 begin 

CREATE TABLE [dbo].[ReCommites] (
	[RecommiteID] [int] IDENTITY (1, 1) NOT NULL ,
	[LetterID] [int] NOT NULL ,
	[ID] [smallint] NOT NULL ,
	[Type] [tinyint] NOT NULL CONSTRAINT [DF_ReCommites_Type] DEFAULT (1),
	[ParentId] [smallint] NOT NULL CONSTRAINT [DF_ReCommites_ParentId] DEFAULT (0),
	[OrgID] [int] NOT NULL ,
	[Paraph] [nvarchar] (500)  NULL ,
	[RecommiteDate] [varchar] (10)  NOT NULL ,
	[UserID] [int] NOT NULL CONSTRAINT [DF_ReCommites_UserID] DEFAULT (1),
	[IsCopy] [bit] NULL ,
	[Proceeded] [bit] NOT NULL CONSTRAINT [DF_ReCommites_Done] DEFAULT (0),
	[ProceedDate] [varchar] (10)  NULL ,
	[staffmemo] [nvarchar] (255)  NULL ,
	[viewdate] [char] (10)  NULL ,
	[OrgStaff] [nvarchar] (50)  NULL ,
	[DeadLineDate] [char] (10)  NULL ,
	[LastUpdate] [datetime] NULL CONSTRAINT [DF__ReCommite__LastU__7F2CAE86] DEFAULT (getdate()),
	[UniqueID] [bigint] NULL ,
	[ActionTypeID] [int] NULL CONSTRAINT [DF__ReCommite__Actio__056F97C1] DEFAULT (1),
	[DeadLineToint] [int] NULL ,
	[IsAnswer] [bit] NULL ,
	[ISFollowup] [bit] NULL ,
	CONSTRAINT [PK_ReCommites] PRIMARY KEY  CLUSTERED 
	(
		[RecommiteID]
	)  ON [PRIMARY] ,
	
) ON [PRIMARY]


 CREATE  INDEX [recommite_idx] ON [dbo].[ReCommites]([LetterID], [ID], [Type], [ParentId], [OrgID]) ON [PRIMARY]


 CREATE  INDEX [IX_ReCommites_LetterID] ON [dbo].[ReCommites]([LetterID]) ON [PRIMARY]


 CREATE  INDEX [IX_ReCommites_ID] ON [dbo].[ReCommites]([ID]) ON [PRIMARY]


 CREATE  INDEX [IX_ReCommites_ParentId] ON [dbo].[ReCommites]([ParentId]) ON [PRIMARY]


 CREATE  INDEX [IX_ReCommites_OrgID] ON [dbo].[ReCommites]([OrgID]) ON [PRIMARY]


 CREATE  INDEX [IX_ReCommites_UserID] ON [dbo].[ReCommites]([UserID]) ON [PRIMARY]


 CREATE  INDEX [IX_ReCommites_DeadLineDate] ON [dbo].[ReCommites]([DeadLineDate]) ON [PRIMARY]


 CREATE  INDEX [IX_ReCommites_ActionTypeID] ON [dbo].[ReCommites]([ActionTypeID]) ON [PRIMARY]




end
GO

if not exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[RecommiteTypes]') and OBJECTPROPERTY(id, N'IsUserTable') = 1)
 begin 

CREATE TABLE [dbo].[RecommiteTypes] (
	[ID] [tinyint] NOT NULL ,
	[Title] [nvarchar] (50)  NULL ,
	[ReceiveMode] [bit] NULL ,
	[InnerOrganize] [bit] NULL ,
	CONSTRAINT [PK_RecommiteTypes] PRIMARY KEY  CLUSTERED 
	(
		[ID]
	) WITH  FILLFACTOR = 90  ON [PRIMARY] 
) ON [PRIMARY]
end
GO


if not exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[ReferenceTableData]') and OBJECTPROPERTY(id, N'IsUserTable') = 1)
 begin 

CREATE TABLE [dbo].[ReferenceTableData] (
	[ReferenceTableDataID] [int] IDENTITY (1, 1) NOT NULL ,
	[TableID] [int] NOT NULL ,
	[DataID] [tinyint] NOT NULL ,
	[DataTitle] [nvarchar] (50)  NOT NULL ,
	CONSTRAINT [PK_ReferenceTableData] PRIMARY KEY  CLUSTERED 
	(
		[ReferenceTableDataID]
	)  ON [PRIMARY] ,
	
) ON [PRIMARY]


 CREATE  INDEX [IX_ReferenceTableData_TableID] ON [dbo].[ReferenceTableData]([TableID]) ON [PRIMARY]


 CREATE  INDEX [IX_ReferenceTableData_DataID] ON [dbo].[ReferenceTableData]([DataID]) ON [PRIMARY]




end
GO

if not exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[RelatedSecretariats]') and OBJECTPROPERTY(id, N'IsUserTable') = 1)
 begin 

CREATE TABLE [dbo].[RelatedSecretariats] (
	[RelatedSecretariatID] [int] IDENTITY (1, 1) NOT NULL ,
	[RelatedSecretariatTitle] [nvarchar] (50)  NOT NULL ,
	[DestinationOrgID_inSource] [int] NOT NULL ,
	[DestinationSecID] [int] NOT NULL ,
	[DestinationServerIP] [varchar] (30)  NULL ,
	[DestinationServerDB] [varchar] (50)  NULL ,
	CONSTRAINT [PK_RelatedSecretarats] PRIMARY KEY  CLUSTERED 
	(
		[RelatedSecretariatID]
	)  ON [PRIMARY] ,
	
) ON [PRIMARY]


 CREATE  INDEX [IX_RelatedSecretariats_DestinationSecID] ON [dbo].[RelatedSecretariats]([DestinationSecID]) ON [PRIMARY]


 CREATE  INDEX [IX_RelatedSecretariats_DestinationOrgID_inSource] ON [dbo].[RelatedSecretariats]([DestinationOrgID_inSource]) ON [PRIMARY]



end
GO

if not exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[Secretariats]') and OBJECTPROPERTY(id, N'IsUserTable') = 1)
 begin 
CREATE TABLE [dbo].[Secretariats] (
	[SecID] [int] IDENTITY (1, 1) NOT NULL ,
	[SecTitle] [nvarchar] (50)  NULL ,
	[Precode] [nvarchar] (50)  NULL ,
	[ServerID] [int] NOT NULL CONSTRAINT [DF__Secretari__Serve__05D9AC15] DEFAULT (0),
	[ArchiveCenterID] [int] NOT NULL CONSTRAINT [DF__Secretari__Archi__79FDE515] DEFAULT (0),
	CONSTRAINT [PK_Secretariats] PRIMARY KEY  CLUSTERED 
	(
		[SecID]
	) WITH  FILLFACTOR = 90  ON [PRIMARY] ,
	
) ON [PRIMARY]


 CREATE  INDEX [IX_Secretariats_ArchiveCenterID] ON [dbo].[Secretariats]([ArchiveCenterID]) ON [PRIMARY]


 CREATE  INDEX [IX_Secretariats_Precode] ON [dbo].[Secretariats]([Precode]) ON [PRIMARY]




end
GO

if not exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[SendStatus]') and OBJECTPROPERTY(id, N'IsUserTable') = 1)
 begin 
CREATE TABLE [dbo].[SendStatus] (
	[SendStatusID] [int] NOT NULL ,
	[SendStatusTitle] [nvarchar] (100)  NOT NULL ,
	CONSTRAINT [PK_SendStatus] PRIMARY KEY  CLUSTERED 
	(
		[SendStatusID]
	)  ON [PRIMARY] 
) ON [PRIMARY]
end
GO


if not exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[Sentenses]') and OBJECTPROPERTY(id, N'IsUserTable') = 1)
 begin 
CREATE TABLE [dbo].[Sentenses] (
	[ID] [int] IDENTITY (1, 1) NOT NULL ,
	[SentenseName] [nvarchar] (50)  NULL ,
	[SentensValue] [nvarchar] (255)  NULL ,
	CONSTRAINT [PK_Sentenses] PRIMARY KEY  CLUSTERED 
	(
		[ID]
	) WITH  FILLFACTOR = 90  ON [PRIMARY] 
) ON [PRIMARY]
end
GO


if not exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[Settings]') and OBJECTPROPERTY(id, N'IsUserTable') = 1)
 begin 

CREATE TABLE [dbo].[Settings] (
	[UserID] [int] NOT NULL ,
	[VariableId] [int] NOT NULL ,
	[Value] [nvarchar] (255)  NULL ,
	[description] [nvarchar] (50)  NULL ,
	CONSTRAINT [PK_Settings] PRIMARY KEY  CLUSTERED 
	(
		[UserID],
		[VariableId]
	) WITH  FILLFACTOR = 90  ON [PRIMARY] 
) ON [PRIMARY]
end
GO


if not exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[Subject]') and OBJECTPROPERTY(id, N'IsUserTable') = 1)
 begin 

CREATE TABLE [dbo].[Subject] (
	[SubjectID] [int] IDENTITY (1, 1) NOT NULL ,
	[SubjectTitle] [nvarchar] (50)  NOT NULL ,
	[IsActive] [bit] NOT NULL CONSTRAINT [DF__Subject__IsActiv__75392FF8] DEFAULT (1),
	CONSTRAINT [PK_Subject] PRIMARY KEY  CLUSTERED 
	(
		[SubjectID]
	)  ON [PRIMARY] 
) ON [PRIMARY]
end
GO


if not exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[sys_AppMessage]') and OBJECTPROPERTY(id, N'IsUserTable') = 1)
 begin 

CREATE TABLE [dbo].[sys_AppMessage] (
	[ID] [int] NOT NULL ,
	[FarsiMessage] [nvarchar] (255)  NULL ,
	CONSTRAINT [PK_sys_AppMessage] PRIMARY KEY  CLUSTERED 
	(
		[ID]
	)  ON [PRIMARY] 
) ON [PRIMARY]
end
GO


if not exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[Tables]') and OBJECTPROPERTY(id, N'IsUserTable') = 1)
 begin 

CREATE TABLE [dbo].[Tables] (
	[TableId] [int] NOT NULL ,
	[TableName] [nvarchar] (50)  NULL ,
	[Description] [nvarchar] (50)  NULL ,
	[TableType] [tinyint] NULL ,
	[TableCode] [varchar] (50)  NULL ,
	[UserField1] [nvarchar] (50)  NULL ,
	[UserField2] [nvarchar] (50)  NULL ,
	CONSTRAINT [PK_Tables] PRIMARY KEY  CLUSTERED 
	(
		[TableId]
	)  ON [PRIMARY] 
) ON [PRIMARY]


 CREATE  INDEX [IX_Tables_TableType] ON [dbo].[Tables]([TableType]) ON [PRIMARY]
end
GO


if not exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[TemplateGroup]') and OBJECTPROPERTY(id, N'IsUserTable') = 1)
 begin 

CREATE TABLE [dbo].[TemplateGroup] (
	[TemplateGroupID] [int] IDENTITY (1, 1) NOT NULL ,
	[TemplateGroupTitle] [nvarchar] (100)  NOT NULL ,
	CONSTRAINT [PK_TemplateGroup] PRIMARY KEY  CLUSTERED 
	(
		[TemplateGroupID]
	)  ON [PRIMARY] 
) ON [PRIMARY]

end
GO

if not exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[Urgenceis]') and OBJECTPROPERTY(id, N'IsUserTable') = 1)
 begin 

CREATE TABLE [dbo].[Urgenceis] (
	[ID] [int] NOT NULL ,
	[Title] [nvarchar] (50)  NULL ,
	CONSTRAINT [PK_Urgenceis] PRIMARY KEY  CLUSTERED 
	(
		[ID]
	) WITH  FILLFACTOR = 90  ON [PRIMARY] 
) ON [PRIMARY]
end
GO


if not exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[UserAccArchive]') and OBJECTPROPERTY(id, N'IsUserTable') = 1)
 begin 

CREATE TABLE [dbo].[UserAccArchive] (
	[UserAccArchiveID] [int] IDENTITY (1, 1) NOT NULL ,
	[SecID] [int] NOT NULL ,
	[UserID] [int] NOT NULL ,
	[ArchiveCenterID] [int] NOT NULL ,
	[ArchiveFolderID] [int] NOT NULL ,
	[ISAccess] [bit] NULL ,
	CONSTRAINT [PK_UserAccArchive] PRIMARY KEY  CLUSTERED 
	(
		[UserAccArchiveID]
	)  ON [PRIMARY] ,
	
) ON [PRIMARY]


 CREATE  INDEX [IX_UserAccArchive_SecID] ON [dbo].[UserAccArchive]([SecID]) ON [PRIMARY]


 CREATE  INDEX [IX_UserAccArchive_UserID] ON [dbo].[UserAccArchive]([UserID]) ON [PRIMARY]


 CREATE  INDEX [IX_UserAccArchive_ArchiveCenterID] ON [dbo].[UserAccArchive]([ArchiveCenterID]) ON [PRIMARY]


 CREATE  INDEX [IX_UserAccArchive_ArchiveFolderID] ON [dbo].[UserAccArchive]([ArchiveFolderID]) ON [PRIMARY]







end
GO

if not exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[UserExtention]') and OBJECTPROPERTY(id, N'IsUserTable') = 1)
 begin 
CREATE TABLE [dbo].[UserExtention] (
	[UserExtentionID] [int] IDENTITY (1, 1) NOT NULL ,
	[UserId] [int] NOT NULL ,
	[ExtentionID] [int] NOT NULL ,
	[ReaderApplication] [nvarchar] (2000)  NULL ,
	CONSTRAINT [PK_UserExtention] PRIMARY KEY  CLUSTERED 
	(
		[UserExtentionID]
	)  ON [PRIMARY] ,
	
) ON [PRIMARY]


 CREATE  UNIQUE  INDEX [User_extention_idx] ON [dbo].[UserExtention]([UserId], [ExtentionID]) ON [PRIMARY]


 CREATE  INDEX [IX_UserExtention_UserId] ON [dbo].[UserExtention]([UserId]) ON [PRIMARY]


 CREATE  INDEX [IX_UserExtention_ExtentionID] ON [dbo].[UserExtention]([ExtentionID]) ON [PRIMARY]




end
GO
if not exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[UserLog]') and OBJECTPROPERTY(id, N'IsUserTable') = 1)
 begin 

CREATE TABLE [dbo].[UserLog] (
	[UserID] [int] NOT NULL ,
	[FormID] [int] NOT NULL CONSTRAINT [DF_UserLog_FormID] DEFAULT (1),
	[ActionID] [int] NOT NULL ,
	[Time1] [datetime] NOT NULL CONSTRAINT [DF_UserLog_Time1] DEFAULT (getdate()),
	[LetterID] [int] NULL 
) ON [PRIMARY]


 CREATE  INDEX [IX_UserLog_UserID] ON [dbo].[UserLog]([UserID]) ON [PRIMARY]


 CREATE  INDEX [IX_UserLog_FormID] ON [dbo].[UserLog]([FormID]) ON [PRIMARY]


 CREATE  INDEX [IX_UserLog_ActionID] ON [dbo].[UserLog]([ActionID]) ON [PRIMARY]


 CREATE  INDEX [IX_UserLog_LetterID] ON [dbo].[UserLog]([LetterID]) ON [PRIMARY]


 CREATE  INDEX [IX_UserLog_User_Act_Form] ON [dbo].[UserLog]([UserID], [ActionID], [FormID]) ON [PRIMARY]


 CREATE  INDEX [IX_UserLog_User_Act_Form_Letter] ON [dbo].[UserLog]([UserID], [ActionID], [FormID], [LetterID]) ON [PRIMARY]
end
GO


if not exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[UserLoginLogout]') and OBJECTPROPERTY(id, N'IsUserTable') = 1)
 begin 
CREATE TABLE [dbo].[UserLoginLogout] (
	[UserLoginLogoutID] [int] IDENTITY (1, 1) NOT NULL ,
	[UserID] [int] NOT NULL ,
	[IPAddress] [char] (15)  NULL ,
	[LoginTime] [datetime] NOT NULL CONSTRAINT [DF_UserLoginLogout_LoginTime] DEFAULT (getdate()),
	[LogoutTime] [datetime] NOT NULL CONSTRAINT [DF_UserLoginLogout_LogoutTime] DEFAULT (getdate()),
	[isSafeLogout] [bit] NOT NULL CONSTRAINT [DF_UserLoginLogout_isSafeLogout] DEFAULT (0),
	CONSTRAINT [PK_UserLoginLogout] PRIMARY KEY  CLUSTERED 
	(
		[UserLoginLogoutID]
	)  ON [PRIMARY] ,
	
) ON [PRIMARY]


 CREATE  INDEX [IX_UserLoginLogout_UserID] ON [dbo].[UserLoginLogout]([UserID]) ON [PRIMARY]




end
GO

if not exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[UserMessage]') and OBJECTPROPERTY(id, N'IsUserTable') = 1)
 begin 

CREATE TABLE [dbo].[UserMessage] (
	[UserMessageID] [bigint] IDENTITY (1, 1) NOT NULL ,
	[To_] [int] NOT NULL ,
	[Code] [int] NULL ,
	[From_] [int] NULL ,
	[MsgDate] [varchar] (10)  NULL ,
	[MsgTime] [varchar] (6)  NULL ,
	[Subject] [nvarchar] (50)  NULL ,
	[Message] [text]  NULL ,
	[Status] [int] NULL ,
	CONSTRAINT [PK_UserMessage] PRIMARY KEY  CLUSTERED 
	(
		[UserMessageID]
	)  ON [PRIMARY] ,
	
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]


 CREATE  INDEX [UserMessage_To_status_idx] ON [dbo].[UserMessage]([To_], [Status]) ON [PRIMARY]




end
GO

if not exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[UserNote]') and OBJECTPROPERTY(id, N'IsUserTable') = 1)
 begin 

CREATE TABLE [dbo].[UserNote] (
	[UserNoteID] [int] IDENTITY (1, 1) NOT NULL ,
	[UserID] [int] NOT NULL ,
	[Note] [ntext]  NULL ,
	[CreateDate] [char] (10)  NOT NULL ,
	CONSTRAINT [PK_UserNote] PRIMARY KEY  CLUSTERED 
	(
		[UserNoteID]
	)  ON [PRIMARY] ,
	
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]


 CREATE  INDEX [IX_UserNote_UserID] ON [dbo].[UserNote]([UserID]) ON [PRIMARY]



end
GO


GO

if not exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[UserSecretariats]') and OBJECTPROPERTY(id, N'IsUserTable') = 1)
 begin 

CREATE TABLE [dbo].[UserSecretariats] (
	[UserId] [int] NOT NULL ,
	[SecId] [int] NOT NULL ,
	CONSTRAINT [PK_UserSecretariats] PRIMARY KEY  CLUSTERED 
	(
		[UserId],
		[SecId]
	) WITH  FILLFACTOR = 90  ON [PRIMARY] ,
	
) ON [PRIMARY]




end
GO

if not exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[UserShortCut]') and OBJECTPROPERTY(id, N'IsUserTable') = 1)
 begin 
CREATE TABLE [dbo].[UserShortCut] (
	[userShortCutID] [int] IDENTITY (1, 1) NOT NULL ,
	[UserID] [int] NOT NULL ,
	[keyText] [nvarchar] (100)  NOT NULL ,
	[altKey] [char] (1)  NOT NULL ,
	CONSTRAINT [PK_UserShortCut] PRIMARY KEY  NONCLUSTERED 
	(
		[userShortCutID]
	)  ON [PRIMARY] ,
	
) ON [PRIMARY]


 CREATE  CLUSTERED  INDEX [userShortCut_user_idx] ON [dbo].[UserShortCut]([UserID]) ON [PRIMARY]


 CREATE  INDEX [userShortCut_keytext_idx] ON [dbo].[UserShortCut]([keyText]) ON [PRIMARY]


 CREATE  UNIQUE  INDEX [UserShortcut_altkey_idx] ON [dbo].[UserShortCut]([UserID], [altKey]) ON [PRIMARY]




end
GO

if not exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[UserSign]') and OBJECTPROPERTY(id, N'IsUserTable') = 1)
 begin 

CREATE TABLE [dbo].[UserSign] (
	[UserID] [int] NOT NULL ,
	[UserSign] [image] NOT NULL ,
	CONSTRAINT [PK_UserSign] PRIMARY KEY  CLUSTERED 
	(
		[UserID]
	)  ON [PRIMARY] 
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
end
GO


if not exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[UserTemplateGroup]') and OBJECTPROPERTY(id, N'IsUserTable') = 1)
 begin 

CREATE TABLE [dbo].[UserTemplateGroup] (
	[UserTemplateGroupID] [int] IDENTITY (1, 1) NOT NULL ,
	[TemplateGroupID] [int] NOT NULL ,
	[UserID] [int] NOT NULL ,
	CONSTRAINT [PK_UserTemplateGroup] PRIMARY KEY  CLUSTERED 
	(
		[UserTemplateGroupID]
	)  ON [PRIMARY] ,
	
) ON [PRIMARY]


 CREATE  INDEX [IX_UserTemplateGroup_TemplateGroupID] ON [dbo].[UserTemplateGroup]([TemplateGroupID]) ON [PRIMARY]


 CREATE  INDEX [IX_UserTemplateGroup_UserID] ON [dbo].[UserTemplateGroup]([UserID]) ON [PRIMARY]





end
GO



if not exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[WorkGroup]') and OBJECTPROPERTY(id, N'IsUserTable') = 1)
 begin 

CREATE TABLE [dbo].[WorkGroup] (
	[WorkGroupID] [int] IDENTITY (1, 1) NOT NULL ,
	[Title] [nvarchar] (50)  NULL ,
	[Descript] [nvarchar] (300)  NULL ,
	[UserID] [int] NOT NULL ,
	CONSTRAINT [PK_WorkGroup] PRIMARY KEY  CLUSTERED 
	(
		[WorkGroupID]
	)  ON [PRIMARY] ,
	
) ON [PRIMARY]


 CREATE  INDEX [IX_WorkGroup] ON [dbo].[WorkGroup]([UserID]) ON [PRIMARY]




end
GO

if not exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[WorkGroupOrg]') and OBJECTPROPERTY(id, N'IsUserTable') = 1)
 begin 

CREATE TABLE [dbo].[WorkGroupOrg] (
	[WorkGroupOrgID] [int] IDENTITY (1, 1) NOT NULL ,
	[FromOrgID] [int] NOT NULL ,
	[WorkGroupID] [int] NOT NULL ,
	CONSTRAINT [PK_WorkGroupOrg] PRIMARY KEY  CLUSTERED 
	(
		[WorkGroupOrgID]
	)  ON [PRIMARY] ,
	
) ON [PRIMARY]


 CREATE  INDEX [IX_WorkGroupOrg_FromOrgID] ON [dbo].[WorkGroupOrg]([FromOrgID]) ON [PRIMARY]


 CREATE  INDEX [IX_WorkGroupOrg_WorkGroupID] ON [dbo].[WorkGroupOrg]([WorkGroupID]) ON [PRIMARY]




end

go


if not exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[FollowUp]') and OBJECTPROPERTY(id, N'IsUserTable') = 1)
 begin  

CREATE TABLE [dbo].[FollowUp] (
	[FollowUPID] [int] IDENTITY (1, 1) NOT NULL ,
	[StartFollowUpID] [int] NULL ,
	[FollowUPTypeID] [int] NOT NULL ,
	[DoneStatusID] [tinyint] NOT NULL CONSTRAINT [DF_FollowUp_DoneStatusID] DEFAULT (1),
	[UserID] [int] NOT NULL ,
	[Comment] [nvarchar] (255)  NULL ,
	[ToDoDate] [char] (10)  NULL ,
	[ToDoTime] [char] (5)  NULL ,
	[DoneComment] [nvarchar] (255)  NULL ,
	[HasAlarm] [bit] NULL ,
	[Letterid] [int] NULL CONSTRAINT [DF_FollowUp_Letterid] DEFAULT (0),
	CONSTRAINT [PK_FollowUp] PRIMARY KEY  CLUSTERED 
	(
		[FollowUPID]
	)  ON [PRIMARY] ,
	
) ON [PRIMARY]
 
 CREATE  INDEX [IX_FollowUp_StartFollowUpID] ON [dbo].[FollowUp]([StartFollowUpID]) ON [PRIMARY]
 
 CREATE  INDEX [IX_FollowUp_FollowUPTypeID] ON [dbo].[FollowUp]([FollowUPTypeID]) ON [PRIMARY]
 
 CREATE  INDEX [IX_FollowUp_DoneStatusID] ON [dbo].[FollowUp]([DoneStatusID]) ON [PRIMARY]
 
 CREATE  INDEX [IX_FollowUp_UserID] ON [dbo].[FollowUp]([UserID]) ON [PRIMARY]
 
 CREATE  INDEX [IX_FollowUp_Letterid] ON [dbo].[FollowUp]([Letterid]) ON [PRIMARY]
 


end
GO