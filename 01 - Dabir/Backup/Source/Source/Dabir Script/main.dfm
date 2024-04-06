object FmMain: TFmMain
  Left = 223
  Top = 65
  AutoScroll = False
  BiDiMode = bdLeftToRight
  BorderIcons = [biSystemMenu]
  ClientHeight = 208
  ClientWidth = 383
  Color = clBtnFace
  Font.Charset = ARABIC_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  ParentBiDiMode = False
  Position = poDesktopCenter
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 15
    Top = 40
    Width = 54
    Height = 13
    Caption = 'Dabir 5.4.8'
  end
  object Label2: TLabel
    Left = 315
    Top = 72
    Width = 60
    Height = 13
    Caption = #1583#1587#1578#1608#1585' '#1580#1575#1585#1610':'
  end
  object Label3: TLabel
    Left = 2
    Top = 72
    Width = 157
    Height = 13
    Caption = ' '#1583#1585' '#1589#1608#1585#1578' '#1576#1585#1608#1586' '#1582#1591#1575' '#1583#1608#1576#1575#1585#1607' '#1575#1580#1585#1575' '#1705#1606#1610#1583' '
    Font.Charset = ARABIC_CHARSET
    Font.Color = clGray
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object Button1: TButton
    Left = 128
    Top = 8
    Width = 121
    Height = 33
    Caption = #1575#1580#1585#1575#1610' '#1583#1587#1578#1608#1585#1575#1578
    Font.Charset = ARABIC_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 0
    OnClick = Button1Click
  end
  object ProgressBar: TProgressBar
    Left = 0
    Top = 191
    Width = 383
    Height = 17
    Align = alBottom
    Max = 9
    TabOrder = 1
  end
  object SubCommand: TMemo
    Left = 0
    Top = 102
    Width = 383
    Height = 89
    Align = alBottom
    BiDiMode = bdLeftToRight
    ParentBiDiMode = False
    ReadOnly = True
    TabOrder = 2
  end
  object MemoTables: TMemo
    Left = 16
    Top = 89
    Width = 770
    Height = 89
    BiDiMode = bdLeftToRight
    Lines.Strings = (
      
        'if not exists (select * from sysobjects where id = object_id(N'#39'[' +
        'dbo].[EmailAddresses]'#39') and OBJECTPROPERTY(id, N'#39'IsUserTable'#39') =' +
        ' 1)'
      'begin'
      'CREATE TABLE [dbo].[EmailAddresses]('
      #9'[ID] [int] IDENTITY(1,1) NOT NULL,'
      #9'[EmailAddress] [varchar](50)  NOT NULL,'
      #9'[UserName] [varchar](50)  NOT NULL,'
      #9'[PassWord] [varchar](64)  NOT NULL,'
      #9'[Recievehost] [varchar](50)  NOT NULL,'
      #9'[SendHost] [varchar](50)  NOT NULL,'
      #9'[RecivePort] [smallint] NOT NULL,'
      #9'[SendPort] [smallint] NOT NULL,'
      #9'[AuthenticationType] [varchar](50)  NOT NULL,'
      #9'[SSLOption] [varchar](50)  NOT NULL,'
      #9'[ReciverOrgID] [int] NOT NULL,'
      #9'[ReciverSecID] [int] NOT NULL,'
      #9'[IsActive] [bit] NOT NULL,'
      #9'[ConnectionTimeOut] [smallint] NOT NULL,'
      ' CONSTRAINT [PK_EmailAddresses] PRIMARY KEY CLUSTERED '
      '('
      #9'[ID] ASC'
      ') ON [PRIMARY]'
      ') ON [PRIMARY]'
      'end'
      'GO'
      ''
      
        ' if not exists (select * from dbo.sysobjects where id = object_i' +
        'd(N'#39'[dbo].[Accesses]'#39') and OBJECTPROPERTY(id, N'#39'IsUserTable'#39') = ' +
        '1)'
      'begin'
      'CREATE TABLE [dbo].[Accesses] ('
      #9'[ID] [tinyint] IDENTITY (1, 1) NOT NULL ,'
      #9'[Title] [nvarchar] (50)  NULL ,'
      #9'CONSTRAINT [PK_Accesses] PRIMARY KEY  CLUSTERED '
      #9'('
      #9#9'[ID]'
      #9')  ON [PRIMARY] '
      ') ON [PRIMARY]'
      'end'
      ''
      'GO'
      ''
      
        'if not exists (select * from dbo.sysobjects where id = object_id' +
        '(N'#39'[dbo].[AccessType]'#39') and OBJECTPROPERTY(id, N'#39'IsUserTable'#39') =' +
        ' 1)'
      'begin'
      'CREATE TABLE [dbo].[AccessType] ('
      #9'[AccessTypeID] [tinyint] NOT NULL ,'
      #9'[AccessTypeTitle] [nvarchar] (50)  NOT NULL ,'
      #9'CONSTRAINT [PK_AccessType] PRIMARY KEY  CLUSTERED '
      #9'('
      #9#9'[AccessTypeID]'
      #9')  ON [PRIMARY] '
      ') ON [PRIMARY]'
      'end'
      'GO'
      ''
      
        'if not exists (select * from dbo.sysobjects where id = object_id' +
        '(N'#39'[dbo].[Actions]'#39') and OBJECTPROPERTY(id, N'#39'IsUserTable'#39') = 1)'
      ' begin '
      ''
      'CREATE TABLE [dbo].[Actions] ('
      #9'[FormTag] [tinyint] NOT NULL ,'
      #9'[ID] [int] NOT NULL ,'
      #9'[Title] [nvarchar] (50)  NULL '
      ') ON [PRIMARY]'
      ' '
      ''
      
        ' CREATE  INDEX [IX_Actions_ID] ON [dbo].[Actions]([ID]) ON [PRIM' +
        'ARY]'
      'end'
      ''
      'GO'
      ''
      ''
      
        'if not exists (select * from dbo.sysobjects where id = object_id' +
        '(N'#39'[dbo].[ActionsAccess]'#39') and OBJECTPROPERTY(id, N'#39'IsUserTable'#39 +
        ') = 1)'
      ' begin  '
      ''
      'CREATE TABLE [dbo].[ActionsAccess] ('
      #9'[AccessID] [tinyint] NOT NULL ,'
      #9'[ActionID] [int] NOT NULL ,'
      #9'[FormTag] [tinyint] NOT NULL ,'
      #9'[HasAccess] [bit] NOT NULL ,'
      #9'CONSTRAINT [PK_ActionsAccess] PRIMARY KEY  CLUSTERED '
      #9'('
      #9#9'[AccessID],'
      #9#9'[ActionID],'
      #9#9'[FormTag]'
      #9') WITH  FILLFACTOR = 90  ON [PRIMARY] '
      ') ON [PRIMARY]'
      'end'
      ''
      'GO'
      ''
      ''
      
        'if not exists (select * from dbo.sysobjects where id = object_id' +
        '(N'#39'[dbo].[ActionType]'#39') and OBJECTPROPERTY(id, N'#39'IsUserTable'#39') =' +
        ' 1)'
      ' begin  '
      'CREATE TABLE [dbo].[ActionType] ('
      #9'[ActionTypeID] [int] NOT NULL ,'
      #9'[ActionTypeTitle] [nvarchar] (50)  NULL ,'
      #9'CONSTRAINT [PK_ActionType] PRIMARY KEY  CLUSTERED '
      #9'('
      #9#9'[ActionTypeID]'
      #9')  ON [PRIMARY] '
      ') ON [PRIMARY]'
      'end'
      'GO'
      ''
      ''
      
        'if not exists (select * from dbo.sysobjects where id = object_id' +
        '(N'#39'[dbo].[added]'#39') and OBJECTPROPERTY(id, N'#39'IsUserTable'#39') = 1)'
      ' begin  '
      ''
      'CREATE TABLE [dbo].[added] ('
      #9'[ID] [int] IDENTITY (1, 1) NOT NULL ,'
      #9'[Title] [nvarchar] (100)  NOT NULL ,'
      #9'[ParentID] [int] NOT NULL ,'
      #9'[Phone] [nvarchar] (30)  NULL ,'
      #9'[Fax] [nvarchar] (30)  NULL ,'
      #9'[Email] [nvarchar] (30)  NULL ,'
      #9'[ResponsibleStaffer] [nvarchar] (50)  NOT NULL ,'
      #9'[IsActive] [bit] NULL ,'
      #9'[PreCode] [nvarchar] (50)  NULL ,'
      #9'[IsInnerOrg] [bit] NOT NULL ,'
      #9'[Code] [nvarchar] (10)  NOT NULL ,'
      
        #9'[Number] [int] NOT NULL CONSTRAINT [DF__Added__Number__49F9CC38' +
        '] DEFAULT (0)'
      ') ON [PRIMARY]'
      ''
      'end'
      'GO'
      ''
      ''
      
        'if not exists (select * from dbo.sysobjects where id = object_id' +
        '(N'#39'[dbo].[ApplicationForms]'#39') and OBJECTPROPERTY(id, N'#39'IsUserTab' +
        'le'#39') = 1)'
      ' begin '
      ''
      'CREATE TABLE [dbo].[ApplicationForms] ('
      #9'[ID] [tinyint] NOT NULL ,'
      #9'[Title] [nvarchar] (50)  NULL '
      ') ON [PRIMARY]'
      ''
      
        ' CREATE  INDEX [IX_ApplicationForms_ID] ON [dbo].[ApplicationFor' +
        'ms]([ID]) ON [PRIMARY]'
      ''
      'end'
      'GO'
      ''
      ''
      
        'if not exists (select * from dbo.sysobjects where id = object_id' +
        '(N'#39'[dbo].[ArchiveCenter]'#39') and OBJECTPROPERTY(id, N'#39'IsUserTable'#39 +
        ') = 1)'
      ' begin  '
      ''
      'CREATE TABLE [dbo].[ArchiveCenter] ('
      #9'[ArchiveCenterID] [int] NOT NULL ,'
      #9'[ArchiveCenterTitle] [nvarchar] (50)  NOT NULL ,'
      #9'CONSTRAINT [PK_ArchiveCenter] PRIMARY KEY  CLUSTERED '
      #9'('
      #9#9'[ArchiveCenterID]'
      #9')  ON [PRIMARY] '
      ') ON [PRIMARY]'
      ''
      'end'
      'GO'
      
        'if not exists (select * from dbo.sysobjects where id = object_id' +
        '(N'#39'[dbo].[FromOrganizations]'#39') and OBJECTPROPERTY(id, N'#39'IsUserTa' +
        'ble'#39') = 1)'
      ' begin  '
      ''
      'CREATE TABLE [dbo].[FromOrganizations] ('
      #9'[ID] [int] IDENTITY (1, 1) NOT NULL ,'
      #9'[Title] [nvarchar] (100)  NULL ,'
      #9'[ParentID] [int] NOT NULL ,'
      #9'[Phone] [nvarchar] (30)  NULL ,'
      #9'[Fax] [nvarchar] (30)  NULL ,'
      #9'[Email] [nvarchar] (30)  NULL ,'
      #9'[ResponsibleStaffer] [nvarchar] (50)  NULL ,'
      
        #9'[IsActive] [bit] NULL CONSTRAINT [DF_FromOrganizations_IsActive' +
        '] DEFAULT (1),'
      #9'[PreCode] [nvarchar] (50)  NULL ,'
      
        #9'[IsInnerOrg] [bit] NOT NULL CONSTRAINT [DF_FromOrganizations_Is' +
        'InnerOrg] DEFAULT (1),'
      
        #9'[Code] [nvarchar] (50)  NULL CONSTRAINT [DF_FromOrganizations_C' +
        'ode] DEFAULT (1),'
      #9'[UniqueID] [bigint] NULL ,'
      #9'CONSTRAINT [PK_FromOrganizations] PRIMARY KEY  CLUSTERED '
      #9'('
      #9#9'[ID]'
      #9') WITH  FILLFACTOR = 90  ON [PRIMARY] '
      ') ON [PRIMARY]'
      ' '
      ''
      
        ' CREATE  UNIQUE  INDEX [fromorganizations_idx] ON [dbo].[FromOrg' +
        'anizations]([Code]) ON [PRIMARY]'
      ' '
      ''
      
        ' CREATE  INDEX [IX_FromOrganizations_Title] ON [dbo].[FromOrgani' +
        'zations]([Title]) ON [PRIMARY]'
      ' '
      ''
      
        ' CREATE  INDEX [IX_FromOrganizations_ParentID] ON [dbo].[FromOrg' +
        'anizations]([ParentID]) ON [PRIMARY]'
      ' '
      ''
      
        ' CREATE  INDEX [IX_FromOrganizations] ON [dbo].[FromOrganization' +
        's]([Code]) ON [PRIMARY]'
      ' '
      'end'
      ''
      'GO'
      
        'if not exists (select * from dbo.sysobjects where id = object_id' +
        '(N'#39'[dbo].[Users]'#39') and OBJECTPROPERTY(id, N'#39'IsUserTable'#39') = 1)'
      ' begin '
      'CREATE TABLE [dbo].[Users] ('
      #9'[Id] [int] IDENTITY (1, 1) NOT NULL ,'
      #9'[Title] [nvarchar] (50)  NULL ,'
      #9'[UserName] [nvarchar] (50)  NULL ,'
      #9'[PassWord] [nvarchar] (100)  NULL ,'
      #9'[AccessID] [tinyint] NULL ,'
      #9'[FromOrgID] [int] NULL ,'
      
        #9'[DefualtSecretariatID] [tinyint] NOT NULL CONSTRAINT [DF_Users_' +
        'DefualtSecretariatID] DEFAULT (1),'
      #9'[IsSecretariantStaffer] [bit] NULL ,'
      #9'[KartableGridInfo] [image] NULL ,'
      #9'[DabirGridInfo] [image] NULL ,'
      #9'[EndActiveDate] [char] (10)  NULL ,'
      #9'[BeginActiveDate] [char] (10)  NULL ,'
      #9'[AlternativeUserID] [int] NULL ,'
      #9'[AlternativeEndDate] [char] (10)  NULL ,'
      #9'[AlternativebeginDate] [char] (10)  NULL ,'
      
        #9'[HasSecureLetterAccess] [bit] NOT NULL CONSTRAINT [DF__Users__H' +
        'asSecure__5E0BB1DD] DEFAULT (1),'
      #9'[SecondOrgID] [int] NULL ,'
      #9'[eCartableGridInfo] [varchar] (500)  NULL ,'
      #9'[eCartableTheme] [varchar] (50)  NULL ,'
      #9'[Email] [nvarchar] (100)  NULL ,'
      #9'CONSTRAINT [PK_Users] PRIMARY KEY  CLUSTERED '
      #9'('
      #9#9'[Id]'
      #9') WITH  FILLFACTOR = 90  ON [PRIMARY] ,'
      #9
      ') ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]'
      ''
      ''
      
        ' CREATE  INDEX [IX_Users_FromOrgID] ON [dbo].[Users]([FromOrgID]' +
        ') ON [PRIMARY]'
      ''
      ''
      
        ' CREATE  INDEX [IX_Users_AccessID] ON [dbo].[Users]([AccessID]) ' +
        'ON [PRIMARY]'
      ''
      ''
      
        ' CREATE  INDEX [IX_Users_DefualtSecretariatID] ON [dbo].[Users](' +
        '[DefualtSecretariatID]) ON [PRIMARY]'
      ''
      ''
      
        ' CREATE  INDEX [IX_Users_SecondOrgID] ON [dbo].[Users]([SecondOr' +
        'gID]) ON [PRIMARY]'
      ''
      ''
      ''
      'end'
      'GO'
      
        'if not exists (select * from dbo.sysobjects where id = object_id' +
        '(N'#39'[dbo].[ArchiveFolder]'#39') and OBJECTPROPERTY(id, N'#39'IsUserTable'#39 +
        ') = 1)'
      ' begin '
      'CREATE TABLE [dbo].[ArchiveFolder] ('
      #9'[FolderID] [int] IDENTITY (1, 1) NOT NULL ,'
      #9'[ParentFolderID] [int] NOT NULL ,'
      #9'[Title] [nvarchar] (100)  NULL ,'
      #9'[UserID] [int] NOT NULL ,'
      #9'[Notes] [nvarchar] (500)  NULL ,'
      #9'[Place] [nvarchar] (100)  NULL ,'
      #9'CONSTRAINT [PK_ArchiveFolder] PRIMARY KEY  CLUSTERED '
      #9'('
      #9#9'[FolderID]'
      #9')  ON [PRIMARY] '
      #9
      ') ON [PRIMARY] '
      ''
      
        ' CREATE  INDEX [IX_ArchiveFolder_ParentFolderID] ON [dbo].[Archi' +
        'veFolder]([ParentFolderID]) ON [PRIMARY] '
      ''
      
        ' CREATE  INDEX [IX_ArchiveFolder_Title] ON [dbo].[ArchiveFolder]' +
        '([Title]) ON [PRIMARY] '
      ''
      
        ' CREATE  INDEX [IX_ArchiveFolder_UserID] ON [dbo].[ArchiveFolder' +
        ']([UserID]) ON [PRIMARY] '
      ''
      ''
      'end'
      'GO'
      ''
      
        'if not exists (select * from dbo.sysobjects where id = object_id' +
        '(N'#39'[dbo].[Classifications]'#39') and OBJECTPROPERTY(id, N'#39'IsUserTabl' +
        'e'#39') = 1)'
      ' begin '
      ''
      'CREATE TABLE [dbo].[Classifications] ('
      #9'[ID] [int] NOT NULL ,'
      #9'[Title] [nvarchar] (50)  NULL ,'
      #9'CONSTRAINT [PK_Classifications] PRIMARY KEY  CLUSTERED '
      #9'('
      #9#9'[ID]'
      #9') WITH  FILLFACTOR = 90  ON [PRIMARY] '
      ') ON [PRIMARY]'
      ''
      'end'
      ''
      ' '
      ''
      
        'if not exists (select * from dbo.sysobjects where id = object_id' +
        '(N'#39'[dbo].[DoneStatus]'#39') and OBJECTPROPERTY(id, N'#39'IsUserTable'#39') =' +
        ' 1)'
      ' begin  '
      ''
      'CREATE TABLE [dbo].[DoneStatus] ('
      #9'[DoneStatusID] [tinyint] NOT NULL ,'
      #9'[DoneStatustitle] [nvarchar] (50)  NOT NULL ,'
      #9'CONSTRAINT [PK_DoneStatus] PRIMARY KEY  CLUSTERED '
      #9'('
      #9#9'[DoneStatusID]'
      #9')  ON [PRIMARY] '
      ') ON [PRIMARY]'
      'end'
      'GO'
      ''
      ''
      
        'if not exists (select * from dbo.sysobjects where id = object_id' +
        '(N'#39'[dbo].[Emails]'#39') and OBJECTPROPERTY(id, N'#39'IsUserTable'#39') = 1)'
      ' begin  '
      ''
      'CREATE TABLE [dbo].[Emails] ('
      #9'[EmailsID] [int] IDENTITY (1, 1) NOT NULL ,'
      #9'[Code] [int] NOT NULL ,'
      #9'[Subject] [nvarchar] (200)  NOT NULL ,'
      #9'[SendAddress] [nvarchar] (100)  NULL ,'
      #9'[ReciveAddress] [nvarchar] (100)  NULL ,'
      #9'[Memo] [image] NULL ,'
      #9'[AttachFile] [image] NULL ,'
      #9'[AttachFileName] [nvarchar] (50)  NULL ,'
      #9'[Status] [smallint] NULL ,'
      #9'[DateEmail] [nvarchar] (10)  NOT NULL ,'
      #9'[TimeEmail] [nvarchar] (10)  NOT NULL ,'
      #9'[IsAnswer] [bit] NULL ,'
      #9'[IsReciveEmail] [bit] NULL ,'
      #9'[UsersID] [int] NOT NULL ,'
      #9'[IsRead] [bit] NULL ,'
      #9'[IsPersonal] [bit] NULL ,'
      #9'[IsImportant] [bit] NULL ,'
      #9'[IsSecret] [bit] NULL ,'
      #9'[EmailNuFromDate] [nvarchar] (20)  NULL ,'
      #9'CONSTRAINT [PK_Emails] PRIMARY KEY  CLUSTERED '
      #9'('
      #9#9'[EmailsID]'
      #9')  ON [PRIMARY] '
      ') ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]'
      ' '
      ''
      
        ' CREATE  INDEX [IX_Emails_Code] ON [dbo].[Emails]([Code]) ON [PR' +
        'IMARY]'
      ' '
      ''
      
        ' CREATE  INDEX [IX_Emails_Subject] ON [dbo].[Emails]([Subject]) ' +
        'ON [PRIMARY]'
      ' '
      ''
      
        ' CREATE  INDEX [IX_Emails_EmailNuFromDate] ON [dbo].[Emails]([Em' +
        'ailNuFromDate]) ON [PRIMARY]'
      ' '
      ''
      
        ' CREATE  INDEX [IX_Emails_SendAddress] ON [dbo].[Emails]([SendAd' +
        'dress]) ON [PRIMARY]'
      ' '
      ''
      'end'
      ''
      'GO'
      ''
      
        'if not exists (select * from dbo.sysobjects where id = object_id' +
        '(N'#39'[dbo].[ErrorMessage]'#39') and OBJECTPROPERTY(id, N'#39'IsUserTable'#39')' +
        ' = 1)'
      ' begin '
      ''
      'CREATE TABLE [dbo].[ErrorMessage] ('
      #9'[Errorid] [bigint] IDENTITY (1, 1) NOT NULL ,'
      #9'[ErrorMessage] [nvarchar] (255)  NULL ,'
      #9'[ErrorDate] [nvarchar] (10)  NULL ,'
      #9'[UserCode] [int] NULL ,'
      #9'[FarsiMessage] [nvarchar] (255)  NULL ,'
      
        #9'[ShowMessage] [bit] NULL CONSTRAINT [DF_ErrorMessage_ShowMessag' +
        'e] DEFAULT (1),'
      #9'CONSTRAINT [PK_ErrorMessage] PRIMARY KEY  CLUSTERED '
      #9'('
      #9#9'[Errorid]'
      #9')  ON [PRIMARY] '
      ') ON [PRIMARY]'
      ' '
      ''
      
        ' CREATE  INDEX [IX_ErrorMessage_ErrorMessage] ON [dbo].[ErrorMes' +
        'sage]([ErrorMessage]) ON [PRIMARY]'
      ' '
      ''
      
        ' CREATE  INDEX [IX_ErrorMessage_FarsiMessage] ON [dbo].[ErrorMes' +
        'sage]([FarsiMessage]) ON [PRIMARY]'
      'end'
      'GO'
      ''
      ''
      
        'if not exists (select * from dbo.sysobjects where id = object_id' +
        '(N'#39'[dbo].[Extention]'#39') and OBJECTPROPERTY(id, N'#39'IsUserTable'#39') = ' +
        '1)'
      ' begin  '
      ''
      'CREATE TABLE [dbo].[Extention] ('
      #9'[ExtentionID] [int] IDENTITY (1, 1) NOT NULL ,'
      #9'[ExtentionTitle] [nvarchar] (200)  NOT NULL ,'
      #9'[Extention] [varchar] (5)  NOT NULL ,'
      
        #9'[IsSystem] [bit] NOT NULL CONSTRAINT [DF__Extention__IsSys__3E8' +
        '8198C] DEFAULT (0),'
      #9'CONSTRAINT [PK_Extention] PRIMARY KEY  CLUSTERED '
      #9'('
      #9#9'[ExtentionID]'
      #9')  ON [PRIMARY] '
      ') ON [PRIMARY]'
      'end'
      ''
      'GO'
      
        'if not exists (select * from dbo.sysobjects where id = object_id' +
        '(N'#39'[dbo].[Fields]'#39') and OBJECTPROPERTY(id, N'#39'IsUserTable'#39') = 1)'
      ' begin  '
      ''
      'CREATE TABLE [dbo].[Fields] ('
      #9'[ID] [int] IDENTITY (1, 1) NOT NULL ,'
      #9'[FieldName] [nvarchar] (50)  NOT NULL ,'
      
        #9'[TableID] [int] NOT NULL CONSTRAINT [DF_Fields_TableID] DEFAULT' +
        ' (1),'
      #9'[Description] [nvarchar] (50)  NULL ,'
      
        #9'[IsWhere] [bit] NOT NULL CONSTRAINT [DF_Fields_IsWhere] DEFAULT' +
        ' (1),'
      
        #9'[ISString] [bit] NOT NULL CONSTRAINT [DF_Fields_ISString] DEFAU' +
        'LT (1),'
      
        #9'[IsLike] [bit] NOT NULL CONSTRAINT [DF_Fields_IsLike] DEFAULT (' +
        '1),'
      
        #9'[EveryLike] [bit] NOT NULL CONSTRAINT [DF_Fields_EveryLike] DEF' +
        'AULT (0),'
      
        #9'[VisibleInGrid] [bit] NOT NULL CONSTRAINT [DF_Fields_VisibleInG' +
        'rid] DEFAULT (1),'
      
        #9'[isblob] [bit] NULL CONSTRAINT [DF__Fields__isblob__4AEDF071] D' +
        'EFAULT (0),'
      #9'[FieldTypeID] [int] NULL ,'
      #9'[ReferenceTableID] [int] NULL ,'
      
        #9'[order] [int] NULL CONSTRAINT [DF__Fields__order__0A9E6132] DEF' +
        'AULT (1),'
      #9'[FieldGroupID] [int] NULL ,'
      #9'[isboolean] [bit] NULL ,'
      #9'CONSTRAINT [PK_Fields] PRIMARY KEY  CLUSTERED '
      #9'('
      #9#9'[ID]'
      #9')  ON [PRIMARY]'
      ') ON [PRIMARY]'
      ' '
      ''
      
        ' CREATE  INDEX [IX_Fields_TableID] ON [dbo].[Fields]([TableID]) ' +
        'ON [PRIMARY]'
      ' '
      ''
      
        ' CREATE  INDEX [IX_Fields_FieldName] ON [dbo].[Fields]([FieldNam' +
        'e]) ON [PRIMARY]'
      ' '
      ''
      
        ' CREATE  INDEX [IX_Fields_FieldGroupID] ON [dbo].[Fields]([Field' +
        'GroupID]) ON [PRIMARY]'
      ' '
      ''
      
        ' CREATE  INDEX [IX_Fields_FieldTypeID] ON [dbo].[Fields]([FieldT' +
        'ypeID]) ON [PRIMARY]'
      ' '
      ''
      
        ' CREATE  INDEX [IX_Fields_ReferenceTableID] ON [dbo].[Fields]([R' +
        'eferenceTableID]) ON [PRIMARY]'
      ''
      ''
      'end'
      ''
      'GO'
      ''
      
        'if not exists (select * from dbo.sysobjects where id = object_id' +
        '(N'#39'[dbo].[FieldAccess]'#39') and OBJECTPROPERTY(id, N'#39'IsUserTable'#39') ' +
        '= 1)'
      ' begin  '
      ''
      'CREATE TABLE [dbo].[FieldAccess] ('
      #9'[FieldAccessID] [int] IDENTITY (1, 1) NOT NULL ,'
      #9'[FieldID] [int] NOT NULL ,'
      #9'[UserID] [int] NOT NULL ,'
      #9'[AccessTypeID] [tinyint] NOT NULL ,'
      #9'CONSTRAINT [PK_FieldAccess] PRIMARY KEY  CLUSTERED '
      #9'('
      #9#9'[FieldAccessID]'
      #9')  ON [PRIMARY] '
      ') ON [PRIMARY]'
      ''
      ''
      
        ' CREATE  INDEX [IX_FieldAccess_FieldID] ON [dbo].[FieldAccess]([' +
        'FieldID]) ON [PRIMARY]'
      ''
      ''
      
        ' CREATE  INDEX [IX_FieldAccess_UserID] ON [dbo].[FieldAccess]([U' +
        'serID]) ON [PRIMARY]'
      ''
      ''
      
        ' CREATE  INDEX [IX_FieldAccess_AccessTypeID] ON [dbo].[FieldAcce' +
        'ss]([AccessTypeID]) ON [PRIMARY]'
      ''
      ''
      ''
      'end'
      ''
      'GO'
      ''
      ''
      ''
      ''
      
        'if not exists (select * from dbo.sysobjects where id = object_id' +
        '(N'#39'[dbo].[FieldType]'#39') and OBJECTPROPERTY(id, N'#39'IsUserTable'#39') = ' +
        '1)'
      ' begin '
      ''
      'CREATE TABLE [dbo].[FieldType] ('
      #9'[FieldTypeID] [int] NOT NULL ,'
      #9'[FieldTypeTitle] [nvarchar] (50)  NOT NULL ,'
      #9'CONSTRAINT [PK_FieldType] PRIMARY KEY  CLUSTERED '
      #9'('
      #9#9'[FieldTypeID]'
      #9')  ON [PRIMARY] '
      ') ON [PRIMARY]'
      'end'
      ''
      'GO'
      ''
      
        'if not exists (select * from dbo.sysobjects where id = object_id' +
        '(N'#39'[dbo].[FollowUpType]'#39') and OBJECTPROPERTY(id, N'#39'IsUserTable'#39')' +
        ' = 1)'
      ' begin '
      'CREATE TABLE [dbo].[FollowUpType] ('
      #9'[FollowUpTypeID] [int] IDENTITY (1, 1) NOT NULL ,'
      #9'[FollowUpTypeTitle] [nvarchar] (50)  NOT NULL ,'
      #9'CONSTRAINT [PK_FollowUpType] PRIMARY KEY  CLUSTERED '
      #9'('
      #9#9'[FollowUpTypeID]'
      #9')  ON [PRIMARY] '
      ') ON [PRIMARY]'
      'end'
      ''
      'GO'
      ''
      ''
      ''
      ''
      
        'if not exists (select * from dbo.sysobjects where id = object_id' +
        '(N'#39'[dbo].[ImageData]'#39') and OBJECTPROPERTY(id, N'#39'IsUserTable'#39') = ' +
        '1)'
      ' begin '
      ''
      'CREATE TABLE [dbo].[ImageData] ('
      #9'[ImageDataID] [int] IDENTITY (1, 1) NOT NULL ,'
      #9'[Data] [image] NULL ,'
      #9'[FileName] [nvarchar] (50)  NULL ,'
      #9'[TableName] [nvarchar] (50)  NOT NULL ,'
      #9'[TableID] [int] NOT NULL ,'
      #9'[Tag] [int] NULL ,'
      #9'CONSTRAINT [PK_ImageData] PRIMARY KEY  CLUSTERED '
      #9'('
      #9#9'[ImageDataID]'
      #9')  ON [PRIMARY] '
      ') ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]'
      ' '
      ''
      
        ' CREATE  INDEX [IX_ImageData_TableName] ON [dbo].[ImageData]([Ta' +
        'bleName]) ON [PRIMARY]'
      ' '
      ''
      
        ' CREATE  INDEX [IX_ImageData_TableID] ON [dbo].[ImageData]([Tabl' +
        'eID]) ON [PRIMARY]'
      ' end'
      'GO'
      ''
      ''
      
        'if not exists (select * from dbo.sysobjects where id = object_id' +
        '(N'#39'[dbo].[Letter]'#39') and OBJECTPROPERTY(id, N'#39'IsUserTable'#39') = 1)'
      ' begin '
      'CREATE TABLE [dbo].[Letter] ('
      #9'[LetterID] [int] IDENTITY (1, 1) NOT NULL ,'
      #9'[IndicatorID] [int] NOT NULL ,'
      #9'[MYear] [tinyint] NOT NULL ,'
      #9'[SecretariatID] [int] NOT NULL  DEFAULT (1),'
      #9'[Letter_Type] [int] NOT NULL  DEFAULT (1),'
      #9'[letterformat] [int] NOT NULL  DEFAULT (1),'
      #9'[IncommingNO] [nvarchar] (50)  NULL ,'
      #9'[Incommingdate] [nvarchar] (10)  NULL ,'
      #9'[CenterNo] [nvarchar] (50)  NULL ,'
      #9'[CenterDate] [char] (10)  NULL ,'
      #9'[FromOrgID] [int] NOT NULL  DEFAULT ((-1)),'
      #9'[ToOrgID] [int] NOT NULL  DEFAULT (0),'
      #9'[Signerid] [nvarchar] (50)  NULL ,'
      #9'[ClassificationID] [int] NOT NULL  DEFAULT (1),'
      
        #9'[UrgencyID] [int] NOT NULL CONSTRAINT [DF__Letter__UrgencyI__23' +
        '74309D] DEFAULT (1),'
      #9'[Memo] [nvarchar] (2000)  NULL ,'
      #9'[AttachTitle] [nvarchar] (50)  NULL ,'
      
        #9'[NumberOfAttachPages] [smallint] NULL CONSTRAINT [DF__Letter__N' +
        'umberOf__246854D6] DEFAULT (1),'
      
        #9'[NumberOfPage] [tinyint] NOT NULL CONSTRAINT [DF__Letter__Numbe' +
        'rOf__255C790F] DEFAULT (1),'
      
        #9'[ReceiveTypeID] [int] NOT NULL CONSTRAINT [DF__Letter__ReceiveT' +
        '__26509D48] DEFAULT (1),'
      
        #9'[UserID] [int] NOT NULL CONSTRAINT [DF__Letter__UserID__2744C18' +
        '1] DEFAULT (0),'
      #9'[RetroactionNo] [nvarchar] (50)  NULL ,'
      #9'[UserMemo] [nvarchar] (255)  NULL ,'
      #9'[RegistrationDate] [char] (10)  NOT NULL ,'
      #9'[RegistrationTime] [varchar] (5)  NOT NULL ,'
      #9'[FollowLetterNo] [nvarchar] (50)  NULL ,'
      #9'[ToStaffer] [nvarchar] (50)  NULL ,'
      #9'[SentLetterID] [int] NULL ,'
      #9'[TemplateID] [int] NULL ,'
      #9'[HeaderID] [int] NULL ,'
      #9'[LetterRecommites] [nvarchar] (500)  NULL ,'
      #9'[PreCode] [nvarchar] (50)  NULL ,'
      #9'[fromstaffer] [nvarchar] (50)  NULL ,'
      
        #9'[Finalized] [bit] NOT NULL CONSTRAINT [DF__Letter__Finalize__4B' +
        'E214AA] DEFAULT (1),'
      
        #9'[SendStatusID] [int] NOT NULL CONSTRAINT [DF__Letter__SendStat_' +
        '_4CD638E3] DEFAULT (1),'
      
        #9'[LastUpdate] [datetime] NOT NULL CONSTRAINT [DF__Letter__LastUp' +
        'da__7D446614] DEFAULT (getdate()),'
      #9'[UserTableID] [int] NULL ,'
      #9'[UniqueID] [bigint] NULL ,'
      
        #9'[Archived] [bit] NOT NULL CONSTRAINT [DF__Letter__Archived__047' +
        'B7388] DEFAULT (0),'
      #9'[SubjectDescription] [nvarchar] (255)  NULL ,'
      #9'[SubjectID] [int] NULL ,'
      #9'[LatestActionTypeID] [int] NULL ,'
      #9'[LatestActionReason] [nvarchar] (255)  NULL ,'
      #9'[DeadLineDate] [char] (10)  NULL ,'
      
        #9'[ActionTypeID] [int] NOT NULL CONSTRAINT [DF__Letter__ActionTy_' +
        '_657894D2] DEFAULT (1),'
      #9'[UserTableID2] [int] NULL ,'
      #9'[EmailNuFromDate] [nvarchar] (20)  NULL ,'
      #9'CONSTRAINT [PK_Letter] PRIMARY KEY  CLUSTERED '
      #9'('
      #9#9'[LetterID]'
      #9')  ON [PRIMARY]'
      ') ON [PRIMARY]'
      ' '
      ''
      
        ' CREATE  INDEX [ind_idx] ON [dbo].[Letter]([IndicatorID]) ON [PR' +
        'IMARY]'
      ' '
      ''
      
        ' CREATE  INDEX [letter_idx] ON [dbo].[Letter]([SecretariatID], [' +
        'Letter_Type], [MYear], [letterformat], [IndicatorID]) ON [PRIMAR' +
        'Y]'
      ' '
      ''
      
        ' CREATE  INDEX [myear_idx] ON [dbo].[Letter]([MYear]) ON [PRIMAR' +
        'Y]'
      ' '
      ''
      
        ' CREATE  INDEX [secid_idx] ON [dbo].[Letter]([SecretariatID]) ON' +
        ' [PRIMARY]'
      ' '
      ''
      
        ' CREATE  INDEX [letter_type_idx] ON [dbo].[Letter]([Letter_Type]' +
        ') ON [PRIMARY]'
      ' '
      ''
      
        ' CREATE  INDEX [letterformat_idx] ON [dbo].[Letter]([letterforma' +
        't]) ON [PRIMARY]'
      ' '
      ''
      
        ' CREATE  INDEX [incommingno_idx] ON [dbo].[Letter]([IncommingNO]' +
        ') ON [PRIMARY]'
      ' '
      ''
      
        ' CREATE  INDEX [registrationdate_idx] ON [dbo].[Letter]([Registr' +
        'ationDate]) ON [PRIMARY]'
      ' '
      ''
      
        ' CREATE  INDEX [fromorgid_idx] ON [dbo].[Letter]([FromOrgID]) ON' +
        ' [PRIMARY]'
      ' '
      ''
      
        ' CREATE  INDEX [ToOrgid_idx] ON [dbo].[Letter]([ToOrgID]) ON [PR' +
        'IMARY]'
      ' '
      ''
      
        ' CREATE  UNIQUE  INDEX [Letter_IDX_Indicator] ON [dbo].[Letter](' +
        '[IndicatorID], [MYear], [SecretariatID], [Letter_Type], [letterf' +
        'ormat]) ON [PRIMARY]'
      ' '
      ''
      
        ' CREATE  INDEX [IX_Letter_IndicatorID] ON [dbo].[Letter]([Indica' +
        'torID]) ON [PRIMARY]'
      ' '
      ''
      
        ' CREATE  INDEX [IX_Letter_Letter_Type] ON [dbo].[Letter]([Letter' +
        '_Type]) ON [PRIMARY]'
      ' '
      ''
      
        ' CREATE  INDEX [IX_Letter_letterformat] ON [dbo].[Letter]([lette' +
        'rformat]) ON [PRIMARY]'
      ' '
      ''
      
        ' CREATE  INDEX [IX_Letter_IncommingNO] ON [dbo].[Letter]([Incomm' +
        'ingNO]) ON [PRIMARY]'
      ' '
      ''
      
        ' CREATE  INDEX [IX_Letter_FromOrgID] ON [dbo].[Letter]([FromOrgI' +
        'D]) ON [PRIMARY]'
      ' '
      ''
      
        ' CREATE  INDEX [IX_Letter_ToOrgID] ON [dbo].[Letter]([ToOrgID]) ' +
        'ON [PRIMARY]'
      ' '
      ''
      
        ' CREATE  INDEX [IX_Letter_Signerid] ON [dbo].[Letter]([Signerid]' +
        ') ON [PRIMARY]'
      ' '
      ''
      
        ' CREATE  INDEX [IX_Letter_ClassificationID] ON [dbo].[Letter]([C' +
        'lassificationID]) ON [PRIMARY]'
      ' '
      ''
      
        ' CREATE  INDEX [IX_Letter_UrgencyID] ON [dbo].[Letter]([UrgencyI' +
        'D]) ON [PRIMARY]'
      ' '
      ''
      
        ' CREATE  INDEX [IX_Letter_UserID] ON [dbo].[Letter]([UserID]) ON' +
        ' [PRIMARY]'
      ' '
      ''
      
        ' CREATE  INDEX [IX_Letter_MYear] ON [dbo].[Letter]([MYear]) ON [' +
        'PRIMARY]'
      ' '
      ' '
      
        ' CREATE  INDEX [IX_Letter_RegistrationDate] ON [dbo].[Letter]([R' +
        'egistrationDate]) ON [PRIMARY]'
      ' '
      ''
      
        ' CREATE  INDEX [IX_Letter_SecretariatID] ON [dbo].[Letter]([Secr' +
        'etariatID]) ON [PRIMARY]'
      ' '
      ''
      ''
      ' end'
      'GO'
      ''
      ''
      
        'if not exists (select * from dbo.sysobjects where id = object_id' +
        '(N'#39'[dbo].[LetterArchiveFolder]'#39') and OBJECTPROPERTY(id, N'#39'IsUser' +
        'Table'#39') = 1)'
      ' begin  '
      ''
      'CREATE TABLE [dbo].[LetterArchiveFolder] ('
      #9'[LetterArchiveID] [int] IDENTITY (1, 1) NOT NULL ,'
      #9'[ArchiveFolderID] [int] NOT NULL ,'
      #9'[LetterID] [int] NOT NULL ,'
      #9'[ArchiveDate] [char] (10)  NOT NULL ,'
      #9'[Page] [int] NULL ,'
      #9'[ArchiveNotes] [nvarchar] (50)  NULL ,'
      
        #9'[UserID] [int] NOT NULL CONSTRAINT [DF__LetterArc__UserI__5C236' +
        '96B] DEFAULT (0),'
      #9'CONSTRAINT [PK_LetterArchiveFolder] PRIMARY KEY  CLUSTERED '
      #9'('
      #9#9'[LetterArchiveID]'
      #9')  ON [PRIMARY] '
      #9
      ') ON [PRIMARY]'
      ' '
      ''
      
        ' CREATE  INDEX [Letterarchive_Folder_idx] ON [dbo].[LetterArchiv' +
        'eFolder]([ArchiveFolderID]) ON [PRIMARY]'
      ' '
      ''
      
        ' CREATE  INDEX [Letterarchive_Letter_Folder_idx] ON [dbo].[Lette' +
        'rArchiveFolder]([ArchiveFolderID], [LetterID]) ON [PRIMARY]'
      ' '
      ''
      
        ' CREATE  INDEX [Letterarchive_Letter_idx] ON [dbo].[LetterArchiv' +
        'eFolder]([LetterID]) ON [PRIMARY]'
      ' '
      ''
      
        ' CREATE  INDEX [IX_LetterArchiveFolder_ArchiveFolderID] ON [dbo]' +
        '.[LetterArchiveFolder]([ArchiveFolderID]) ON [PRIMARY]'
      ' '
      ''
      
        ' CREATE  INDEX [IX_LetterArchiveFolder_LetterID] ON [dbo].[Lette' +
        'rArchiveFolder]([LetterID]) ON [PRIMARY]'
      ' '
      ''
      
        ' CREATE  INDEX [IX_LetterArchiveFolder_UserID] ON [dbo].[LetterA' +
        'rchiveFolder]([UserID]) ON [PRIMARY]'
      ' '
      ''
      ''
      ' end'
      'GO'
      ''
      ''
      
        'if not exists (select * from dbo.sysobjects where id = object_id' +
        '(N'#39'[dbo].[LetterData]'#39') and OBJECTPROPERTY(id, N'#39'IsUserTable'#39') =' +
        ' 1)'
      ' begin  '
      ''
      'CREATE TABLE [dbo].[LetterData] ('
      #9'[LetterDataID] [int] IDENTITY (1, 1) NOT NULL ,'
      #9'[LetterID] [int] NOT NULL ,'
      
        #9'[PageNumber] [tinyint] NOT NULL CONSTRAINT [DF_letterdata_pageN' +
        'umber] DEFAULT (0),'
      #9'[Image] [image] NULL ,'
      
        #9'[extention] [tinyint] NOT NULL CONSTRAINT [DF_LetterData_extent' +
        'ion] DEFAULT (1),'
      #9'[Description] [nvarchar] (200)  NULL ,'
      
        #9'[LastUpdate] [datetime] NULL CONSTRAINT [DF__LetterDat__LastU__' +
        '07C1F487] DEFAULT (getdate()),'
      #9'[UniqueID] [bigint] NULL ,'
      #9'[ListItemsID] [int] NULL ,'
      #9'CONSTRAINT [PK_LetterData] PRIMARY KEY  CLUSTERED '
      #9'('
      #9#9'[LetterDataID]'
      #9') WITH  FILLFACTOR = 90  ON [PRIMARY]'
      ') ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]'
      ' '
      ''
      
        ' CREATE  INDEX [IX_LetterData_LetterID] ON [dbo].[LetterData]([L' +
        'etterID]) ON [PRIMARY]'
      ' '
      ''
      
        ' CREATE  INDEX [IX_LetterData_extention] ON [dbo].[LetterData]([' +
        'extention]) ON [PRIMARY]'
      ' '
      ''
      ''
      'end'
      '--------------  ta inja -----------------------'
      ''
      'GO'
      ''
      
        'if not exists (select * from dbo.sysobjects where id = object_id' +
        '(N'#39'[dbo].[LetterFieldValue]'#39') and OBJECTPROPERTY(id, N'#39'IsUserTab' +
        'le'#39') = 1)'
      ' begin '
      '-------------------------------------INJA'
      ''
      'CREATE TABLE [dbo].[LetterFieldValue] ('
      #9'[LetterFieldValueID] [int] IDENTITY (1, 1) NOT NULL ,'
      #9'[LetterID] [int] NOT NULL ,'
      #9'[FieldID] [int] NOT NULL ,'
      #9'[FieldValue] [nvarchar] (2000)  NULL ,'
      #9'[uniqueID] [bigint] NULL ,'
      
        #9'[LastUpdate] [datetime] NULL CONSTRAINT [DF__LetterFie__LastU__' +
        '0020D2BF] DEFAULT (getdate()),'
      
        #9'[InsertUserID] [int] NOT NULL CONSTRAINT [DF__LetterFie__Inser_' +
        '_7AF2094E] DEFAULT (0),'
      
        #9'[FormOrder] [tinyint] NOT NULL CONSTRAINT [DF__LetterFie__FormO' +
        '__5EFFD616] DEFAULT (1),'
      #9'CONSTRAINT [PK_LetterFieldValue] PRIMARY KEY  CLUSTERED '
      #9'('
      #9#9'[LetterFieldValueID]'
      #9')  ON [PRIMARY] ,'
      #9
      ') ON [PRIMARY]'
      ''
      ''
      
        ' CREATE  INDEX [IX_LetterFieldValue_LetterID] ON [dbo].[LetterFi' +
        'eldValue]([LetterID]) ON [PRIMARY]'
      ''
      ''
      
        ' CREATE  INDEX [IX_LetterFieldValue_FieldID] ON [dbo].[LetterFie' +
        'ldValue]([FieldID]) ON [PRIMARY]'
      ''
      ''
      
        ' CREATE  INDEX [IX_LetterFieldValue_InsertUserID] ON [dbo].[Lett' +
        'erFieldValue]([InsertUserID]) ON [PRIMARY]'
      ''
      ''
      ''
      ''
      ''
      'end'
      'GO'
      ''
      
        'if not exists (select * from dbo.sysobjects where id = object_id' +
        '(N'#39'[dbo].[LetterFormats]'#39') and OBJECTPROPERTY(id, N'#39'IsUserTable'#39 +
        ') = 1)'
      ' begin '
      ''
      'CREATE TABLE [dbo].[LetterFormats] ('
      #9'[Code] [int] NOT NULL ,'
      #9'[Title] [nvarchar] (50)  NULL ,'
      #9'CONSTRAINT [PK_LetterTypes] PRIMARY KEY  CLUSTERED '
      #9'('
      #9#9'[Code]'
      #9') WITH  FILLFACTOR = 90  ON [PRIMARY] '
      ') ON [PRIMARY]'
      'end'
      'GO'
      ''
      ''
      ''
      
        'if not exists (select * from dbo.sysobjects where id = object_id' +
        '(N'#39'[dbo].[LetterRelation]'#39') and OBJECTPROPERTY(id, N'#39'IsUserTable' +
        #39') = 1)'
      ' begin '
      ''
      'CREATE TABLE [dbo].[LetterRelation] ('
      #9'[LetterRelationID] [int] IDENTITY (1, 1) NOT NULL ,'
      #9'[MainLetterID] [int] NOT NULL ,'
      #9'[SubLetterID] [int] NOT NULL ,'
      
        #9'[Ord] [tinyint] NOT NULL CONSTRAINT [DF_LetterRelation_Ord] DEF' +
        'AULT (1),'
      #9'CONSTRAINT [PK_LetterRelation] PRIMARY KEY  CLUSTERED '
      #9'('
      #9#9'[LetterRelationID]'
      #9')  ON [PRIMARY] ,'
      #9
      ') ON [PRIMARY]'
      ''
      ''
      ''
      ''
      'end'
      ''
      
        'if not exists (select * from dbo.sysobjects where id = object_id' +
        '(N'#39'[dbo].[LetterTemplate]'#39') and OBJECTPROPERTY(id, N'#39'IsUserTable' +
        #39') = 1)'
      ' begin '
      ''
      'CREATE TABLE [dbo].[LetterTemplate] ('
      #9'[ID] [int] IDENTITY (1, 1) NOT NULL ,'
      #9'[Document] [image] NULL ,'
      #9'[Title] [nvarchar] (50)  NULL ,'
      #9'[validHeader] [smallint] NULL ,'
      
        #9'[TemplateGroupID] [int] NOT NULL CONSTRAINT [DF__LetterTem__Tem' +
        'pl__4DCA5D1C] DEFAULT (1),'
      #9'CONSTRAINT [PK_LetterTemplate] PRIMARY KEY  CLUSTERED '
      #9'('
      #9#9'[ID]'
      #9') WITH  FILLFACTOR = 90  ON [PRIMARY] ,'
      #9
      ') ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]'
      ''
      ''
      
        ' CREATE  INDEX [IX_LetterTemplate_Title] ON [dbo].[LetterTemplat' +
        'e]([Title]) ON [PRIMARY]'
      ''
      ''
      ''
      ''
      'end'
      'GO'
      ''
      
        'if not exists (select * from dbo.sysobjects where id = object_id' +
        '(N'#39'[dbo].[LetterText]'#39') and OBJECTPROPERTY(id, N'#39'IsUserTable'#39') =' +
        ' 1)'
      ' begin '
      ''
      'CREATE TABLE [dbo].[LetterText] ('
      #9'[LetterID] [int] NULL ,'
      
        #9'[LetterFormat] [int] NOT NULL CONSTRAINT [DF_LetterText_LetterF' +
        'ormat] DEFAULT (1),'
      #9'[TypeText] [ntext]  NULL ,'
      #9
      ') ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]'
      ''
      ''
      
        ' CREATE  INDEX [IX_LetterText_LetterID] ON [dbo].[LetterText]([L' +
        'etterID]) ON [PRIMARY]'
      ''
      ''
      
        ' CREATE  INDEX [IX_LetterText_LetterFormat] ON [dbo].[LetterText' +
        ']([LetterFormat]) ON [PRIMARY]'
      ''
      ''
      ''
      ''
      ''
      'end'
      ''
      
        'if not exists (select * from dbo.sysobjects where id = object_id' +
        '(N'#39'[dbo].[LetterTypes]'#39') and OBJECTPROPERTY(id, N'#39'IsUserTable'#39') ' +
        '= 1)'
      ' begin '
      ''
      'CREATE TABLE [dbo].[LetterTypes] ('
      #9'[ID] [int] NOT NULL ,'
      #9'[Title] [nvarchar] (50)  NULL ,'
      #9'[PreCode] [nvarchar] (10)  NULL ,'
      #9'CONSTRAINT [PK_LetterTypes_1] PRIMARY KEY  CLUSTERED '
      #9'('
      #9#9'[ID]'
      #9') WITH  FILLFACTOR = 90  ON [PRIMARY] '
      ') ON [PRIMARY]'
      'end'
      'GO'
      ''
      ''
      
        'if not exists (select * from dbo.sysobjects where id = object_id' +
        '(N'#39'[dbo].[LifeTips]'#39') and OBJECTPROPERTY(id, N'#39'IsUserTable'#39') = 1' +
        ')'
      ' begin '
      ''
      'CREATE TABLE [dbo].[LifeTips] ('
      #9'[id] [int] NOT NULL ,'
      #9'[title] [nvarchar] (150)  NULL ,'
      #9'CONSTRAINT [PK_LifeTips] PRIMARY KEY  CLUSTERED '
      #9'('
      #9#9'[id]'
      #9')  ON [PRIMARY] '
      ') ON [PRIMARY]'
      'end'
      'GO'
      ''
      ''
      
        'if not exists (select * from dbo.sysobjects where id = object_id' +
        '(N'#39'[dbo].[ListItems]'#39') and OBJECTPROPERTY(id, N'#39'IsUserTable'#39') = ' +
        '1)'
      ' begin '
      ''
      ''
      'CREATE TABLE [dbo].[ListItems] ('
      #9'[ListItemsID] [int] IDENTITY (1, 1) NOT NULL ,'
      #9'[ListID] [tinyint] NOT NULL ,'
      #9'[KeyValue] [int] NOT NULL ,'
      #9'[Title] [nvarchar] (50)  NULL ,'
      #9'[Notes] [nvarchar] (255)  NULL ,'
      #9'[UsersID] [int] NULL ,'
      #9'CONSTRAINT [PK_List] PRIMARY KEY  CLUSTERED '
      #9'('
      #9#9'[ListItemsID]'
      #9')  ON [PRIMARY] '
      ') ON [PRIMARY]'
      ''
      ''
      
        ' CREATE  INDEX [IX_ListItems_ListID] ON [dbo].[ListItems]([ListI' +
        'D]) ON [PRIMARY]'
      'end'
      'GO'
      ''
      ''
      
        'if not exists (select * from dbo.sysobjects where id = object_id' +
        '(N'#39'[dbo].[News]'#39') and OBJECTPROPERTY(id, N'#39'IsUserTable'#39') = 1)'
      ' begin '
      ''
      'CREATE TABLE [dbo].[News] ('
      #9'[NewsID] [int] IDENTITY (1, 1) NOT NULL ,'
      #9'[Code] [int] NOT NULL ,'
      #9'[Title] [nvarchar] (300)  NOT NULL ,'
      #9'[Memo] [nvarchar] (3000)  NULL ,'
      
        #9'[UrgenceisID] [int] NULL CONSTRAINT [DF_News_UrgencyID] DEFAULT' +
        ' (1),'
      #9'[DateAnnounce] [nvarchar] (10)  NULL ,'
      #9'[TimeAnnounce] [nvarchar] (10)  NULL ,'
      #9'[DateExpire] [nvarchar] (10)  NULL ,'
      #9'[UserID] [int] NOT NULL ,'
      #9'CONSTRAINT [PK_News] PRIMARY KEY  CLUSTERED '
      #9'('
      #9#9'[NewsID]'
      #9')  ON [PRIMARY] ,'
      #9
      ') ON [PRIMARY]'
      ''
      ''
      
        ' CREATE  INDEX [IX_News_Code] ON [dbo].[News]([Code]) ON [PRIMAR' +
        'Y]'
      ''
      ''
      
        ' CREATE  INDEX [IX_News_Title] ON [dbo].[News]([Title]) ON [PRIM' +
        'ARY]'
      ''
      ''
      
        ' CREATE  INDEX [IX_News_UserID] ON [dbo].[News]([UserID]) ON [PR' +
        'IMARY]'
      ''
      ''
      ''
      ''
      ''
      'end'
      'GO'
      
        'if not exists (select * from dbo.sysobjects where id = object_id' +
        '(N'#39'[dbo].[NewsGroup]'#39') and OBJECTPROPERTY(id, N'#39'IsUserTable'#39') = ' +
        '1)'
      ' begin '
      ''
      'CREATE TABLE [dbo].[NewsGroup] ('
      #9'[NewsGroupID] [int] IDENTITY (1, 1) NOT NULL ,'
      #9'[Title] [nvarchar] (50)  NOT NULL ,'
      #9'[Descript] [nvarchar] (300)  NULL ,'
      #9'[UsersID] [int] NOT NULL ,'
      #9'CONSTRAINT [PK_NewsGroup] PRIMARY KEY  CLUSTERED '
      #9'('
      #9#9'[NewsGroupID]'
      #9')  ON [PRIMARY] ,'
      #9
      ') ON [PRIMARY]'
      ''
      ''
      
        ' CREATE  INDEX [IX_NewsGroup_Title] ON [dbo].[NewsGroup]([Title]' +
        ') ON [PRIMARY]'
      ''
      ''
      
        ' CREATE  INDEX [IX_NewsGroup_UsersID] ON [dbo].[NewsGroup]([User' +
        'sID]) ON [PRIMARY]'
      ''
      ''
      ''
      ''
      'end'
      'GO'
      ''
      
        'if not exists (select * from dbo.sysobjects where id = object_id' +
        '(N'#39'[dbo].[NewsGroupUsers]'#39') and OBJECTPROPERTY(id, N'#39'IsUserTable' +
        #39') = 1)'
      ' begin '
      ''
      'CREATE TABLE [dbo].[NewsGroupUsers] ('
      #9'[NewsGroupUsersID] [int] IDENTITY (1, 1) NOT NULL ,'
      #9'[UsersID] [int] NOT NULL ,'
      #9'[NewsGroupID] [int] NOT NULL ,'
      #9'CONSTRAINT [PK_NewsGroupUsers] PRIMARY KEY  CLUSTERED '
      #9'('
      #9#9'[NewsGroupUsersID]'
      #9')  ON [PRIMARY] ,'
      #9
      ') ON [PRIMARY]'
      ''
      ''
      
        ' CREATE  INDEX [IX_NewsGroupUsers_UsersID] ON [dbo].[NewsGroupUs' +
        'ers]([UsersID]) ON [PRIMARY]'
      ''
      ''
      
        ' CREATE  INDEX [IX_NewsGroupUsers_NewsGroupID] ON [dbo].[NewsGro' +
        'upUsers]([NewsGroupID]) ON [PRIMARY]'
      ''
      ''
      ''
      ''
      'end'
      'GO'
      ''
      
        'if not exists (select * from dbo.sysobjects where id = object_id' +
        '(N'#39'[dbo].[NewsUsers]'#39') and OBJECTPROPERTY(id, N'#39'IsUserTable'#39') = ' +
        '1)'
      ' begin '
      ''
      'CREATE TABLE [dbo].[NewsUsers] ('
      #9'[NewsUsersID] [int] IDENTITY (1, 1) NOT NULL ,'
      #9'[NewsID] [int] NOT NULL ,'
      #9'[UsersID] [int] NOT NULL ,'
      #9'[IsRead] [bit] NULL ,'
      #9'[NotShow] [bit] NULL ,'
      #9'CONSTRAINT [PK_NewsUsers] PRIMARY KEY  CLUSTERED '
      #9'('
      #9#9'[NewsUsersID]'
      #9')  ON [PRIMARY] ,'
      #9
      ') ON [PRIMARY]'
      ''
      ''
      
        ' CREATE  INDEX [IX_NewsUsers_NewsID] ON [dbo].[NewsUsers]([NewsI' +
        'D]) ON [PRIMARY]'
      ''
      ''
      
        ' CREATE  INDEX [IX_NewsUsers_UsersID] ON [dbo].[NewsUsers]([User' +
        'sID]) ON [PRIMARY]'
      ''
      ''
      ''
      ''
      'end'
      'GO'
      ''
      
        'if not exists (select * from dbo.sysobjects where id = object_id' +
        '(N'#39'[dbo].[ParaphTemplate]'#39') and OBJECTPROPERTY(id, N'#39'IsUserTable' +
        #39') = 1)'
      ' begin '
      ''
      'CREATE TABLE [dbo].[ParaphTemplate] ('
      #9'[ParaphTemplateID] [int] IDENTITY (1, 1) NOT NULL ,'
      #9'[UserID] [int] NOT NULL ,'
      #9'[OrderID] [tinyint] NOT NULL ,'
      #9'[Title] [nvarchar] (50)  NOT NULL ,'
      #9'[Paraph] [nvarchar] (500)  NOT NULL ,'
      #9'CONSTRAINT [PK_ParaphTemplate] PRIMARY KEY  CLUSTERED '
      #9'('
      #9#9'[ParaphTemplateID]'
      #9')  ON [PRIMARY] ,'
      #9
      ') ON [PRIMARY]'
      ''
      ''
      
        ' CREATE  INDEX [IX_ParaphTemplate_UserID] ON [dbo].[ParaphTempla' +
        'te]([UserID]) ON [PRIMARY]'
      ''
      ''
      
        ' CREATE  INDEX [IX_ParaphTemplate_OrderID] ON [dbo].[ParaphTempl' +
        'ate]([OrderID]) ON [PRIMARY]'
      ''
      ''
      
        ' CREATE  INDEX [IX_ParaphTemplate_Title] ON [dbo].[ParaphTemplat' +
        'e]([Title]) ON [PRIMARY]'
      ''
      ''
      ''
      ''
      'end'
      'GO'
      
        'if not exists (select * from dbo.sysobjects where id = object_id' +
        '(N'#39'[dbo].[PhoneGroup]'#39') and OBJECTPROPERTY(id, N'#39'IsUserTable'#39') =' +
        ' 1)'
      ' begin '
      ''
      'CREATE TABLE [dbo].[PhoneGroup] ('
      #9'[PhoneGroupID] [int] IDENTITY (1, 1) NOT NULL ,'
      #9'[Code] [int] NOT NULL ,'
      #9'[Title] [nvarchar] (50)  NOT NULL ,'
      #9'[UsersID] [int] NOT NULL ,'
      #9'CONSTRAINT [PK_PhoneGroup] PRIMARY KEY  CLUSTERED '
      #9'('
      #9#9'[PhoneGroupID]'
      #9')  ON [PRIMARY] ,'
      #9
      ') ON [PRIMARY]'
      ''
      ''
      
        ' CREATE  INDEX [IX_PhoneGroup_Title] ON [dbo].[PhoneGroup]([Titl' +
        'e]) ON [PRIMARY]'
      ''
      ''
      
        ' CREATE  INDEX [IX_PhoneGroup_UsersID] ON [dbo].[PhoneGroup]([Us' +
        'ersID]) ON [PRIMARY]'
      ''
      ''
      ''
      ''
      'end'
      'GO'
      
        'if not exists (select * from dbo.sysobjects where id = object_id' +
        '(N'#39'[dbo].[Phone]'#39') and OBJECTPROPERTY(id, N'#39'IsUserTable'#39') = 1)'
      ' begin '
      ''
      'CREATE TABLE [dbo].[Phone] ('
      #9'[PhoneID] [int] IDENTITY (1, 1) NOT NULL ,'
      #9'[Code] [int] NOT NULL ,'
      #9'[Title] [nvarchar] (50)  NOT NULL ,'
      #9'[PersonName] [nvarchar] (50)  NULL ,'
      #9'[Tel1] [nvarchar] (20)  NULL ,'
      #9'[Tel2] [nvarchar] (20)  NULL ,'
      #9'[Mobile] [nvarchar] (20)  NULL ,'
      #9'[Fax] [nvarchar] (20)  NULL ,'
      #9'[Email] [nvarchar] (50)  NULL ,'
      #9'[Internet] [nvarchar] (500)  NULL ,'
      #9'[Address] [nvarchar] (500)  NULL ,'
      #9'[ZipCode] [nvarchar] (30)  NULL ,'
      #9'[Descript] [nvarchar] (500)  NULL ,'
      #9'[PhoneGroupID] [int] NULL ,'
      #9'[UsersID] [int] NOT NULL ,'
      #9'[IsPublic] [bit] NULL ,'
      #9'CONSTRAINT [PK_Phone] PRIMARY KEY  CLUSTERED '
      #9'('
      #9#9'[PhoneID]'
      #9')  ON [PRIMARY] ,'
      #9
      ') ON [PRIMARY]'
      ''
      ''
      
        ' CREATE  INDEX [IX_Phone_Title] ON [dbo].[Phone]([Title]) ON [PR' +
        'IMARY]'
      ''
      ''
      
        ' CREATE  INDEX [IX_Phone_PersonName] ON [dbo].[Phone]([PersonNam' +
        'e]) ON [PRIMARY]'
      ''
      ''
      
        ' CREATE  INDEX [IX_Phone_Tel1] ON [dbo].[Phone]([Tel1]) ON [PRIM' +
        'ARY]'
      ''
      ''
      
        ' CREATE  INDEX [IX_Phone_Tel2] ON [dbo].[Phone]([Tel2]) ON [PRIM' +
        'ARY]'
      ''
      ''
      
        ' CREATE  INDEX [IX_Phone_Mobile] ON [dbo].[Phone]([Mobile]) ON [' +
        'PRIMARY]'
      ''
      ''
      
        ' CREATE  INDEX [IX_Phone_UsersID] ON [dbo].[Phone]([UsersID]) ON' +
        ' [PRIMARY]'
      ''
      ''
      
        ' CREATE  INDEX [IX_Phone_Email] ON [dbo].[Phone]([Email]) ON [PR' +
        'IMARY]'
      ''
      ''
      ''
      ''
      'end'
      'GO'
      ''
      ''
      ''
      
        'if not exists (select * from dbo.sysobjects where id = object_id' +
        '(N'#39'[dbo].[Receipt]'#39') and OBJECTPROPERTY(id, N'#39'IsUserTable'#39') = 1)'
      ' begin '
      'CREATE TABLE [dbo].[Receipt] ('
      #9'[ReceiptID] [int] IDENTITY (1, 1) NOT NULL ,'
      #9'[Title] [nvarchar] (50)  NULL ,'
      #9'[Memo] [nvarchar] (2000)  NULL ,'
      #9'[Descript] [nvarchar] (500)  NULL ,'
      #9'CONSTRAINT [PK_Receipt_ReceiptID] PRIMARY KEY  CLUSTERED '
      #9'('
      #9#9'[ReceiptID]'
      #9')  ON [PRIMARY] '
      ') ON [PRIMARY]'
      ''
      ''
      
        ' CREATE  INDEX [IX_Receipt_Title] ON [dbo].[Receipt]([Title]) ON' +
        ' [PRIMARY]'
      ''
      'end'
      'GO'
      ''
      
        'if not exists (select * from dbo.sysobjects where id = object_id' +
        '(N'#39'[dbo].[ReceiveTypes]'#39') and OBJECTPROPERTY(id, N'#39'IsUserTable'#39')' +
        ' = 1)'
      ' begin '
      ''
      'CREATE TABLE [dbo].[ReceiveTypes] ('
      #9'[ID] [int] NOT NULL ,'
      #9'[Title] [nvarchar] (50)  NULL ,'
      #9'CONSTRAINT [PK_ReceiveTypes] PRIMARY KEY  CLUSTERED '
      #9'('
      #9#9'[ID]'
      #9') WITH  FILLFACTOR = 90  ON [PRIMARY] '
      ') ON [PRIMARY]'
      ''
      ''
      
        ' CREATE  INDEX [IX_ReceiveTypes_Title] ON [dbo].[ReceiveTypes]([' +
        'Title]) ON [PRIMARY]'
      'end'
      'GO'
      ''
      ''
      
        'if not exists (select * from dbo.sysobjects where id = object_id' +
        '(N'#39'[dbo].[RecommiteData]'#39') and OBJECTPROPERTY(id, N'#39'IsUserTable'#39 +
        ') = 1)'
      ' begin '
      ''
      'CREATE TABLE [dbo].[RecommiteData] ('
      #9'[RecommiteDataID] [int] IDENTITY (1, 1) NOT NULL ,'
      #9'[RecommiteID] [int] NOT NULL ,'
      #9'[Image] [image] NULL ,'
      #9'[extention] [tinyint] NOT NULL ,'
      #9'[UniqueID] [bigint] NULL ,'
      
        #9'CONSTRAINT [PK_RecommiteData_RecommiteDataID] PRIMARY KEY  CLUS' +
        'TERED '
      #9'('
      #9#9'[RecommiteDataID]'
      #9')  ON [PRIMARY] ,'
      #9
      ') ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]'
      ''
      ''
      
        ' CREATE  INDEX [IX_RecommiteData_RecommiteID] ON [dbo].[Recommit' +
        'eData]([RecommiteID]) ON [PRIMARY]'
      ''
      ''
      
        ' CREATE  INDEX [IX_RecommiteData_extention] ON [dbo].[RecommiteD' +
        'ata]([extention]) ON [PRIMARY]'
      ''
      ''
      ''
      ''
      'end'
      'GO'
      ''
      
        'if not exists (select * from dbo.sysobjects where id = object_id' +
        '(N'#39'[dbo].[ReCommites]'#39') and OBJECTPROPERTY(id, N'#39'IsUserTable'#39') =' +
        ' 1)'
      ' begin '
      ''
      'CREATE TABLE [dbo].[ReCommites] ('
      #9'[RecommiteID] [int] IDENTITY (1, 1) NOT NULL ,'
      #9'[LetterID] [int] NOT NULL ,'
      #9'[ID] [smallint] NOT NULL ,'
      
        #9'[Type] [tinyint] NOT NULL CONSTRAINT [DF_ReCommites_Type] DEFAU' +
        'LT (1),'
      
        #9'[ParentId] [smallint] NOT NULL CONSTRAINT [DF_ReCommites_Parent' +
        'Id] DEFAULT (0),'
      #9'[OrgID] [int] NOT NULL ,'
      #9'[Paraph] [nvarchar] (500)  NULL ,'
      #9'[RecommiteDate] [varchar] (10)  NOT NULL ,'
      
        #9'[UserID] [int] NOT NULL CONSTRAINT [DF_ReCommites_UserID] DEFAU' +
        'LT (1),'
      #9'[IsCopy] [bit] NULL ,'
      
        #9'[Proceeded] [bit] NOT NULL CONSTRAINT [DF_ReCommites_Done] DEFA' +
        'ULT (0),'
      #9'[ProceedDate] [varchar] (10)  NULL ,'
      #9'[staffmemo] [nvarchar] (255)  NULL ,'
      #9'[viewdate] [char] (10)  NULL ,'
      #9'[OrgStaff] [nvarchar] (50)  NULL ,'
      #9'[DeadLineDate] [char] (10)  NULL ,'
      
        #9'[LastUpdate] [datetime] NULL CONSTRAINT [DF__ReCommite__LastU__' +
        '7F2CAE86] DEFAULT (getdate()),'
      #9'[UniqueID] [bigint] NULL ,'
      
        #9'[ActionTypeID] [int] NULL CONSTRAINT [DF__ReCommite__Actio__056' +
        'F97C1] DEFAULT (1),'
      #9'[DeadLineToint] [int] NULL ,'
      #9'[IsAnswer] [bit] NULL ,'
      #9'[ISFollowup] [bit] NULL ,'
      #9'CONSTRAINT [PK_ReCommites] PRIMARY KEY  CLUSTERED '
      #9'('
      #9#9'[RecommiteID]'
      #9')  ON [PRIMARY] ,'
      #9
      ') ON [PRIMARY]'
      ''
      ''
      
        ' CREATE  INDEX [recommite_idx] ON [dbo].[ReCommites]([LetterID],' +
        ' [ID], [Type], [ParentId], [OrgID]) ON [PRIMARY]'
      ''
      ''
      
        ' CREATE  INDEX [IX_ReCommites_LetterID] ON [dbo].[ReCommites]([L' +
        'etterID]) ON [PRIMARY]'
      ''
      ''
      
        ' CREATE  INDEX [IX_ReCommites_ID] ON [dbo].[ReCommites]([ID]) ON' +
        ' [PRIMARY]'
      ''
      ''
      
        ' CREATE  INDEX [IX_ReCommites_ParentId] ON [dbo].[ReCommites]([P' +
        'arentId]) ON [PRIMARY]'
      ''
      ''
      
        ' CREATE  INDEX [IX_ReCommites_OrgID] ON [dbo].[ReCommites]([OrgI' +
        'D]) ON [PRIMARY]'
      ''
      ''
      
        ' CREATE  INDEX [IX_ReCommites_UserID] ON [dbo].[ReCommites]([Use' +
        'rID]) ON [PRIMARY]'
      ''
      ''
      
        ' CREATE  INDEX [IX_ReCommites_DeadLineDate] ON [dbo].[ReCommites' +
        ']([DeadLineDate]) ON [PRIMARY]'
      ''
      ''
      
        ' CREATE  INDEX [IX_ReCommites_ActionTypeID] ON [dbo].[ReCommites' +
        ']([ActionTypeID]) ON [PRIMARY]'
      ''
      ''
      ''
      ''
      'end'
      'GO'
      ''
      
        'if not exists (select * from dbo.sysobjects where id = object_id' +
        '(N'#39'[dbo].[RecommiteTypes]'#39') and OBJECTPROPERTY(id, N'#39'IsUserTable' +
        #39') = 1)'
      ' begin '
      ''
      'CREATE TABLE [dbo].[RecommiteTypes] ('
      #9'[ID] [tinyint] NOT NULL ,'
      #9'[Title] [nvarchar] (50)  NULL ,'
      #9'[ReceiveMode] [bit] NULL ,'
      #9'[InnerOrganize] [bit] NULL ,'
      #9'CONSTRAINT [PK_RecommiteTypes] PRIMARY KEY  CLUSTERED '
      #9'('
      #9#9'[ID]'
      #9') WITH  FILLFACTOR = 90  ON [PRIMARY] '
      ') ON [PRIMARY]'
      'end'
      'GO'
      ''
      ''
      
        'if not exists (select * from dbo.sysobjects where id = object_id' +
        '(N'#39'[dbo].[ReferenceTableData]'#39') and OBJECTPROPERTY(id, N'#39'IsUserT' +
        'able'#39') = 1)'
      ' begin '
      ''
      'CREATE TABLE [dbo].[ReferenceTableData] ('
      #9'[ReferenceTableDataID] [int] IDENTITY (1, 1) NOT NULL ,'
      #9'[TableID] [int] NOT NULL ,'
      #9'[DataID] [tinyint] NOT NULL ,'
      #9'[DataTitle] [nvarchar] (50)  NOT NULL ,'
      #9'CONSTRAINT [PK_ReferenceTableData] PRIMARY KEY  CLUSTERED '
      #9'('
      #9#9'[ReferenceTableDataID]'
      #9')  ON [PRIMARY] ,'
      #9
      ') ON [PRIMARY]'
      ''
      ''
      
        ' CREATE  INDEX [IX_ReferenceTableData_TableID] ON [dbo].[Referen' +
        'ceTableData]([TableID]) ON [PRIMARY]'
      ''
      ''
      
        ' CREATE  INDEX [IX_ReferenceTableData_DataID] ON [dbo].[Referenc' +
        'eTableData]([DataID]) ON [PRIMARY]'
      ''
      ''
      ''
      ''
      'end'
      'GO'
      ''
      
        'if not exists (select * from dbo.sysobjects where id = object_id' +
        '(N'#39'[dbo].[RelatedSecretariats]'#39') and OBJECTPROPERTY(id, N'#39'IsUser' +
        'Table'#39') = 1)'
      ' begin '
      ''
      'CREATE TABLE [dbo].[RelatedSecretariats] ('
      #9'[RelatedSecretariatID] [int] IDENTITY (1, 1) NOT NULL ,'
      #9'[RelatedSecretariatTitle] [nvarchar] (50)  NOT NULL ,'
      #9'[DestinationOrgID_inSource] [int] NOT NULL ,'
      #9'[DestinationSecID] [int] NOT NULL ,'
      #9'[DestinationServerIP] [varchar] (30)  NULL ,'
      #9'[DestinationServerDB] [varchar] (50)  NULL ,'
      #9'CONSTRAINT [PK_RelatedSecretarats] PRIMARY KEY  CLUSTERED '
      #9'('
      #9#9'[RelatedSecretariatID]'
      #9')  ON [PRIMARY] ,'
      #9
      ') ON [PRIMARY]'
      ''
      ''
      
        ' CREATE  INDEX [IX_RelatedSecretariats_DestinationSecID] ON [dbo' +
        '].[RelatedSecretariats]([DestinationSecID]) ON [PRIMARY]'
      ''
      ''
      
        ' CREATE  INDEX [IX_RelatedSecretariats_DestinationOrgID_inSource' +
        '] ON [dbo].[RelatedSecretariats]([DestinationOrgID_inSource]) ON' +
        ' [PRIMARY]'
      ''
      ''
      ''
      'end'
      'GO'
      ''
      
        'if not exists (select * from dbo.sysobjects where id = object_id' +
        '(N'#39'[dbo].[Secretariats]'#39') and OBJECTPROPERTY(id, N'#39'IsUserTable'#39')' +
        ' = 1)'
      ' begin '
      'CREATE TABLE [dbo].[Secretariats] ('
      #9'[SecID] [int] IDENTITY (1, 1) NOT NULL ,'
      #9'[SecTitle] [nvarchar] (50)  NULL ,'
      #9'[Precode] [nvarchar] (50)  NULL ,'
      
        #9'[ServerID] [int] NOT NULL CONSTRAINT [DF__Secretari__Serve__05D' +
        '9AC15] DEFAULT (0),'
      
        #9'[ArchiveCenterID] [int] NOT NULL CONSTRAINT [DF__Secretari__Arc' +
        'hi__79FDE515] DEFAULT (0),'
      #9'CONSTRAINT [PK_Secretariats] PRIMARY KEY  CLUSTERED '
      #9'('
      #9#9'[SecID]'
      #9') WITH  FILLFACTOR = 90  ON [PRIMARY] ,'
      #9
      ') ON [PRIMARY]'
      ''
      ''
      
        ' CREATE  INDEX [IX_Secretariats_ArchiveCenterID] ON [dbo].[Secre' +
        'tariats]([ArchiveCenterID]) ON [PRIMARY]'
      ''
      ''
      
        ' CREATE  INDEX [IX_Secretariats_Precode] ON [dbo].[Secretariats]' +
        '([Precode]) ON [PRIMARY]'
      ''
      ''
      ''
      ''
      'end'
      'GO'
      ''
      
        'if not exists (select * from dbo.sysobjects where id = object_id' +
        '(N'#39'[dbo].[SendStatus]'#39') and OBJECTPROPERTY(id, N'#39'IsUserTable'#39') =' +
        ' 1)'
      ' begin '
      'CREATE TABLE [dbo].[SendStatus] ('
      #9'[SendStatusID] [int] NOT NULL ,'
      #9'[SendStatusTitle] [nvarchar] (100)  NOT NULL ,'
      #9'CONSTRAINT [PK_SendStatus] PRIMARY KEY  CLUSTERED '
      #9'('
      #9#9'[SendStatusID]'
      #9')  ON [PRIMARY] '
      ') ON [PRIMARY]'
      'end'
      'GO'
      ''
      ''
      
        'if not exists (select * from dbo.sysobjects where id = object_id' +
        '(N'#39'[dbo].[Sentenses]'#39') and OBJECTPROPERTY(id, N'#39'IsUserTable'#39') = ' +
        '1)'
      ' begin '
      'CREATE TABLE [dbo].[Sentenses] ('
      #9'[ID] [int] IDENTITY (1, 1) NOT NULL ,'
      #9'[SentenseName] [nvarchar] (50)  NULL ,'
      #9'[SentensValue] [nvarchar] (255)  NULL ,'
      #9'CONSTRAINT [PK_Sentenses] PRIMARY KEY  CLUSTERED '
      #9'('
      #9#9'[ID]'
      #9') WITH  FILLFACTOR = 90  ON [PRIMARY] '
      ') ON [PRIMARY]'
      'end'
      'GO'
      ''
      ''
      
        'if not exists (select * from dbo.sysobjects where id = object_id' +
        '(N'#39'[dbo].[Settings]'#39') and OBJECTPROPERTY(id, N'#39'IsUserTable'#39') = 1' +
        ')'
      ' begin '
      ''
      'CREATE TABLE [dbo].[Settings] ('
      #9'[UserID] [int] NOT NULL ,'
      #9'[VariableId] [int] NOT NULL ,'
      #9'[Value] [nvarchar] (255)  NULL ,'
      #9'[description] [nvarchar] (50)  NULL ,'
      #9'CONSTRAINT [PK_Settings] PRIMARY KEY  CLUSTERED '
      #9'('
      #9#9'[UserID],'
      #9#9'[VariableId]'
      #9') WITH  FILLFACTOR = 90  ON [PRIMARY] '
      ') ON [PRIMARY]'
      'end'
      'GO'
      ''
      ''
      
        'if not exists (select * from dbo.sysobjects where id = object_id' +
        '(N'#39'[dbo].[Subject]'#39') and OBJECTPROPERTY(id, N'#39'IsUserTable'#39') = 1)'
      ' begin '
      ''
      'CREATE TABLE [dbo].[Subject] ('
      #9'[SubjectID] [int] IDENTITY (1, 1) NOT NULL ,'
      #9'[SubjectTitle] [nvarchar] (50)  NOT NULL ,'
      
        #9'[IsActive] [bit] NOT NULL CONSTRAINT [DF__Subject__IsActiv__753' +
        '92FF8] DEFAULT (1),'
      #9'CONSTRAINT [PK_Subject] PRIMARY KEY  CLUSTERED '
      #9'('
      #9#9'[SubjectID]'
      #9')  ON [PRIMARY] '
      ') ON [PRIMARY]'
      'end'
      'GO'
      ''
      ''
      
        'if not exists (select * from dbo.sysobjects where id = object_id' +
        '(N'#39'[dbo].[sys_AppMessage]'#39') and OBJECTPROPERTY(id, N'#39'IsUserTable' +
        #39') = 1)'
      ' begin '
      ''
      'CREATE TABLE [dbo].[sys_AppMessage] ('
      #9'[ID] [int] NOT NULL ,'
      #9'[FarsiMessage] [nvarchar] (255)  NULL ,'
      #9'CONSTRAINT [PK_sys_AppMessage] PRIMARY KEY  CLUSTERED '
      #9'('
      #9#9'[ID]'
      #9')  ON [PRIMARY] '
      ') ON [PRIMARY]'
      'end'
      'GO'
      ''
      ''
      
        'if not exists (select * from dbo.sysobjects where id = object_id' +
        '(N'#39'[dbo].[Tables]'#39') and OBJECTPROPERTY(id, N'#39'IsUserTable'#39') = 1)'
      ' begin '
      ''
      'CREATE TABLE [dbo].[Tables] ('
      #9'[TableId] [int] NOT NULL ,'
      #9'[TableName] [nvarchar] (50)  NULL ,'
      #9'[Description] [nvarchar] (50)  NULL ,'
      #9'[TableType] [tinyint] NULL ,'
      #9'[TableCode] [varchar] (50)  NULL ,'
      #9'[UserField1] [nvarchar] (50)  NULL ,'
      #9'[UserField2] [nvarchar] (50)  NULL ,'
      #9'CONSTRAINT [PK_Tables] PRIMARY KEY  CLUSTERED '
      #9'('
      #9#9'[TableId]'
      #9')  ON [PRIMARY] '
      ') ON [PRIMARY]'
      ''
      ''
      
        ' CREATE  INDEX [IX_Tables_TableType] ON [dbo].[Tables]([TableTyp' +
        'e]) ON [PRIMARY]'
      'end'
      'GO'
      ''
      ''
      
        'if not exists (select * from dbo.sysobjects where id = object_id' +
        '(N'#39'[dbo].[TemplateGroup]'#39') and OBJECTPROPERTY(id, N'#39'IsUserTable'#39 +
        ') = 1)'
      ' begin '
      ''
      'CREATE TABLE [dbo].[TemplateGroup] ('
      #9'[TemplateGroupID] [int] IDENTITY (1, 1) NOT NULL ,'
      #9'[TemplateGroupTitle] [nvarchar] (100)  NOT NULL ,'
      #9'CONSTRAINT [PK_TemplateGroup] PRIMARY KEY  CLUSTERED '
      #9'('
      #9#9'[TemplateGroupID]'
      #9')  ON [PRIMARY] '
      ') ON [PRIMARY]'
      ''
      'end'
      'GO'
      ''
      
        'if not exists (select * from dbo.sysobjects where id = object_id' +
        '(N'#39'[dbo].[Urgenceis]'#39') and OBJECTPROPERTY(id, N'#39'IsUserTable'#39') = ' +
        '1)'
      ' begin '
      ''
      'CREATE TABLE [dbo].[Urgenceis] ('
      #9'[ID] [int] NOT NULL ,'
      #9'[Title] [nvarchar] (50)  NULL ,'
      #9'CONSTRAINT [PK_Urgenceis] PRIMARY KEY  CLUSTERED '
      #9'('
      #9#9'[ID]'
      #9') WITH  FILLFACTOR = 90  ON [PRIMARY] '
      ') ON [PRIMARY]'
      'end'
      'GO'
      ''
      ''
      
        'if not exists (select * from dbo.sysobjects where id = object_id' +
        '(N'#39'[dbo].[UserAccArchive]'#39') and OBJECTPROPERTY(id, N'#39'IsUserTable' +
        #39') = 1)'
      ' begin '
      ''
      'CREATE TABLE [dbo].[UserAccArchive] ('
      #9'[UserAccArchiveID] [int] IDENTITY (1, 1) NOT NULL ,'
      #9'[SecID] [int] NOT NULL ,'
      #9'[UserID] [int] NOT NULL ,'
      #9'[ArchiveCenterID] [int] NOT NULL ,'
      #9'[ArchiveFolderID] [int] NOT NULL ,'
      #9'[ISAccess] [bit] NULL ,'
      #9'CONSTRAINT [PK_UserAccArchive] PRIMARY KEY  CLUSTERED '
      #9'('
      #9#9'[UserAccArchiveID]'
      #9')  ON [PRIMARY] ,'
      #9
      ') ON [PRIMARY]'
      ''
      ''
      
        ' CREATE  INDEX [IX_UserAccArchive_SecID] ON [dbo].[UserAccArchiv' +
        'e]([SecID]) ON [PRIMARY]'
      ''
      ''
      
        ' CREATE  INDEX [IX_UserAccArchive_UserID] ON [dbo].[UserAccArchi' +
        've]([UserID]) ON [PRIMARY]'
      ''
      ''
      
        ' CREATE  INDEX [IX_UserAccArchive_ArchiveCenterID] ON [dbo].[Use' +
        'rAccArchive]([ArchiveCenterID]) ON [PRIMARY]'
      ''
      ''
      
        ' CREATE  INDEX [IX_UserAccArchive_ArchiveFolderID] ON [dbo].[Use' +
        'rAccArchive]([ArchiveFolderID]) ON [PRIMARY]'
      ''
      ''
      ''
      ''
      ''
      ''
      ''
      'end'
      'GO'
      ''
      
        'if not exists (select * from dbo.sysobjects where id = object_id' +
        '(N'#39'[dbo].[UserExtention]'#39') and OBJECTPROPERTY(id, N'#39'IsUserTable'#39 +
        ') = 1)'
      ' begin '
      'CREATE TABLE [dbo].[UserExtention] ('
      #9'[UserExtentionID] [int] IDENTITY (1, 1) NOT NULL ,'
      #9'[UserId] [int] NOT NULL ,'
      #9'[ExtentionID] [int] NOT NULL ,'
      #9'[ReaderApplication] [nvarchar] (2000)  NULL ,'
      #9'CONSTRAINT [PK_UserExtention] PRIMARY KEY  CLUSTERED '
      #9'('
      #9#9'[UserExtentionID]'
      #9')  ON [PRIMARY] ,'
      #9
      ') ON [PRIMARY]'
      ''
      ''
      
        ' CREATE  UNIQUE  INDEX [User_extention_idx] ON [dbo].[UserExtent' +
        'ion]([UserId], [ExtentionID]) ON [PRIMARY]'
      ''
      ''
      
        ' CREATE  INDEX [IX_UserExtention_UserId] ON [dbo].[UserExtention' +
        ']([UserId]) ON [PRIMARY]'
      ''
      ''
      
        ' CREATE  INDEX [IX_UserExtention_ExtentionID] ON [dbo].[UserExte' +
        'ntion]([ExtentionID]) ON [PRIMARY]'
      ''
      ''
      ''
      ''
      'end'
      'GO'
      
        'if not exists (select * from dbo.sysobjects where id = object_id' +
        '(N'#39'[dbo].[UserLog]'#39') and OBJECTPROPERTY(id, N'#39'IsUserTable'#39') = 1)'
      ' begin '
      ''
      'CREATE TABLE [dbo].[UserLog] ('
      #9'[UserID] [int] NOT NULL ,'
      
        #9'[FormID] [int] NOT NULL CONSTRAINT [DF_UserLog_FormID] DEFAULT ' +
        '(1),'
      #9'[ActionID] [int] NOT NULL ,'
      
        #9'[Time1] [datetime] NOT NULL CONSTRAINT [DF_UserLog_Time1] DEFAU' +
        'LT (getdate()),'
      #9'[LetterID] [int] NULL '
      ') ON [PRIMARY]'
      ''
      ''
      
        ' CREATE  INDEX [IX_UserLog_UserID] ON [dbo].[UserLog]([UserID]) ' +
        'ON [PRIMARY]'
      ''
      ''
      
        ' CREATE  INDEX [IX_UserLog_FormID] ON [dbo].[UserLog]([FormID]) ' +
        'ON [PRIMARY]'
      ''
      ''
      
        ' CREATE  INDEX [IX_UserLog_ActionID] ON [dbo].[UserLog]([ActionI' +
        'D]) ON [PRIMARY]'
      ''
      ''
      
        ' CREATE  INDEX [IX_UserLog_LetterID] ON [dbo].[UserLog]([LetterI' +
        'D]) ON [PRIMARY]'
      ''
      ''
      
        ' CREATE  INDEX [IX_UserLog_User_Act_Form] ON [dbo].[UserLog]([Us' +
        'erID], [ActionID], [FormID]) ON [PRIMARY]'
      ''
      ''
      
        ' CREATE  INDEX [IX_UserLog_User_Act_Form_Letter] ON [dbo].[UserL' +
        'og]([UserID], [ActionID], [FormID], [LetterID]) ON [PRIMARY]'
      'end'
      'GO'
      ''
      ''
      
        'if not exists (select * from dbo.sysobjects where id = object_id' +
        '(N'#39'[dbo].[UserLoginLogout]'#39') and OBJECTPROPERTY(id, N'#39'IsUserTabl' +
        'e'#39') = 1)'
      ' begin '
      'CREATE TABLE [dbo].[UserLoginLogout] ('
      #9'[UserLoginLogoutID] [int] IDENTITY (1, 1) NOT NULL ,'
      #9'[UserID] [int] NOT NULL ,'
      #9'[IPAddress] [char] (15)  NULL ,'
      
        #9'[LoginTime] [datetime] NOT NULL CONSTRAINT [DF_UserLoginLogout_' +
        'LoginTime] DEFAULT (getdate()),'
      
        #9'[LogoutTime] [datetime] NOT NULL CONSTRAINT [DF_UserLoginLogout' +
        '_LogoutTime] DEFAULT (getdate()),'
      
        #9'[isSafeLogout] [bit] NOT NULL CONSTRAINT [DF_UserLoginLogout_is' +
        'SafeLogout] DEFAULT (0),'
      #9'CONSTRAINT [PK_UserLoginLogout] PRIMARY KEY  CLUSTERED '
      #9'('
      #9#9'[UserLoginLogoutID]'
      #9')  ON [PRIMARY] ,'
      #9
      ') ON [PRIMARY]'
      ''
      ''
      
        ' CREATE  INDEX [IX_UserLoginLogout_UserID] ON [dbo].[UserLoginLo' +
        'gout]([UserID]) ON [PRIMARY]'
      ''
      ''
      ''
      ''
      'end'
      'GO'
      ''
      
        'if not exists (select * from dbo.sysobjects where id = object_id' +
        '(N'#39'[dbo].[UserMessage]'#39') and OBJECTPROPERTY(id, N'#39'IsUserTable'#39') ' +
        '= 1)'
      ' begin '
      ''
      'CREATE TABLE [dbo].[UserMessage] ('
      #9'[UserMessageID] [bigint] IDENTITY (1, 1) NOT NULL ,'
      #9'[To_] [int] NOT NULL ,'
      #9'[Code] [int] NULL ,'
      #9'[From_] [int] NULL ,'
      #9'[MsgDate] [varchar] (10)  NULL ,'
      #9'[MsgTime] [varchar] (6)  NULL ,'
      #9'[Subject] [nvarchar] (50)  NULL ,'
      #9'[Message] [text]  NULL ,'
      #9'[Status] [int] NULL ,'
      #9'CONSTRAINT [PK_UserMessage] PRIMARY KEY  CLUSTERED '
      #9'('
      #9#9'[UserMessageID]'
      #9')  ON [PRIMARY] ,'
      #9
      ') ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]'
      ''
      ''
      
        ' CREATE  INDEX [UserMessage_To_status_idx] ON [dbo].[UserMessage' +
        ']([To_], [Status]) ON [PRIMARY]'
      ''
      ''
      ''
      ''
      'end'
      'GO'
      ''
      
        'if not exists (select * from dbo.sysobjects where id = object_id' +
        '(N'#39'[dbo].[UserNote]'#39') and OBJECTPROPERTY(id, N'#39'IsUserTable'#39') = 1' +
        ')'
      ' begin '
      ''
      'CREATE TABLE [dbo].[UserNote] ('
      #9'[UserNoteID] [int] IDENTITY (1, 1) NOT NULL ,'
      #9'[UserID] [int] NOT NULL ,'
      #9'[Note] [ntext]  NULL ,'
      #9'[CreateDate] [char] (10)  NOT NULL ,'
      #9'CONSTRAINT [PK_UserNote] PRIMARY KEY  CLUSTERED '
      #9'('
      #9#9'[UserNoteID]'
      #9')  ON [PRIMARY] ,'
      #9
      ') ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]'
      ''
      ''
      
        ' CREATE  INDEX [IX_UserNote_UserID] ON [dbo].[UserNote]([UserID]' +
        ') ON [PRIMARY]'
      ''
      ''
      ''
      'end'
      'GO'
      ''
      ''
      'GO'
      ''
      
        'if not exists (select * from dbo.sysobjects where id = object_id' +
        '(N'#39'[dbo].[UserSecretariats]'#39') and OBJECTPROPERTY(id, N'#39'IsUserTab' +
        'le'#39') = 1)'
      ' begin '
      ''
      'CREATE TABLE [dbo].[UserSecretariats] ('
      #9'[UserId] [int] NOT NULL ,'
      #9'[SecId] [int] NOT NULL ,'
      #9'CONSTRAINT [PK_UserSecretariats] PRIMARY KEY  CLUSTERED '
      #9'('
      #9#9'[UserId],'
      #9#9'[SecId]'
      #9') WITH  FILLFACTOR = 90  ON [PRIMARY] ,'
      #9
      ') ON [PRIMARY]'
      ''
      ''
      ''
      ''
      'end'
      'GO'
      ''
      
        'if not exists (select * from dbo.sysobjects where id = object_id' +
        '(N'#39'[dbo].[UserShortCut]'#39') and OBJECTPROPERTY(id, N'#39'IsUserTable'#39')' +
        ' = 1)'
      ' begin '
      'CREATE TABLE [dbo].[UserShortCut] ('
      #9'[userShortCutID] [int] IDENTITY (1, 1) NOT NULL ,'
      #9'[UserID] [int] NOT NULL ,'
      #9'[keyText] [nvarchar] (100)  NOT NULL ,'
      #9'[altKey] [char] (1)  NOT NULL ,'
      #9'CONSTRAINT [PK_UserShortCut] PRIMARY KEY  NONCLUSTERED '
      #9'('
      #9#9'[userShortCutID]'
      #9')  ON [PRIMARY] ,'
      #9
      ') ON [PRIMARY]'
      ''
      ''
      
        ' CREATE  CLUSTERED  INDEX [userShortCut_user_idx] ON [dbo].[User' +
        'ShortCut]([UserID]) ON [PRIMARY]'
      ''
      ''
      
        ' CREATE  INDEX [userShortCut_keytext_idx] ON [dbo].[UserShortCut' +
        ']([keyText]) ON [PRIMARY]'
      ''
      ''
      
        ' CREATE  UNIQUE  INDEX [UserShortcut_altkey_idx] ON [dbo].[UserS' +
        'hortCut]([UserID], [altKey]) ON [PRIMARY]'
      ''
      ''
      ''
      ''
      'end'
      'GO'
      ''
      
        'if not exists (select * from dbo.sysobjects where id = object_id' +
        '(N'#39'[dbo].[UserSign]'#39') and OBJECTPROPERTY(id, N'#39'IsUserTable'#39') = 1' +
        ')'
      ' begin '
      ''
      'CREATE TABLE [dbo].[UserSign] ('
      #9'[UserID] [int] NOT NULL ,'
      #9'[UserSign] [image] NOT NULL ,'
      #9'CONSTRAINT [PK_UserSign] PRIMARY KEY  CLUSTERED '
      #9'('
      #9#9'[UserID]'
      #9')  ON [PRIMARY] '
      ') ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]'
      'end'
      'GO'
      ''
      ''
      
        'if not exists (select * from dbo.sysobjects where id = object_id' +
        '(N'#39'[dbo].[UserTemplateGroup]'#39') and OBJECTPROPERTY(id, N'#39'IsUserTa' +
        'ble'#39') = 1)'
      ' begin '
      ''
      'CREATE TABLE [dbo].[UserTemplateGroup] ('
      #9'[UserTemplateGroupID] [int] IDENTITY (1, 1) NOT NULL ,'
      #9'[TemplateGroupID] [int] NOT NULL ,'
      #9'[UserID] [int] NOT NULL ,'
      #9'CONSTRAINT [PK_UserTemplateGroup] PRIMARY KEY  CLUSTERED '
      #9'('
      #9#9'[UserTemplateGroupID]'
      #9')  ON [PRIMARY] ,'
      #9
      ') ON [PRIMARY]'
      ''
      ''
      
        ' CREATE  INDEX [IX_UserTemplateGroup_TemplateGroupID] ON [dbo].[' +
        'UserTemplateGroup]([TemplateGroupID]) ON [PRIMARY]'
      ''
      ''
      
        ' CREATE  INDEX [IX_UserTemplateGroup_UserID] ON [dbo].[UserTempl' +
        'ateGroup]([UserID]) ON [PRIMARY]'
      ''
      ''
      ''
      ''
      ''
      'end'
      'GO'
      ''
      ''
      ''
      
        'if not exists (select * from dbo.sysobjects where id = object_id' +
        '(N'#39'[dbo].[WorkGroup]'#39') and OBJECTPROPERTY(id, N'#39'IsUserTable'#39') = ' +
        '1)'
      ' begin '
      ''
      'CREATE TABLE [dbo].[WorkGroup] ('
      #9'[WorkGroupID] [int] IDENTITY (1, 1) NOT NULL ,'
      #9'[Title] [nvarchar] (50)  NULL ,'
      #9'[Descript] [nvarchar] (300)  NULL ,'
      #9'[UserID] [int] NOT NULL ,'
      #9'CONSTRAINT [PK_WorkGroup] PRIMARY KEY  CLUSTERED '
      #9'('
      #9#9'[WorkGroupID]'
      #9')  ON [PRIMARY] ,'
      #9
      ') ON [PRIMARY]'
      ''
      ''
      
        ' CREATE  INDEX [IX_WorkGroup] ON [dbo].[WorkGroup]([UserID]) ON ' +
        '[PRIMARY]'
      ''
      ''
      ''
      ''
      'end'
      'GO'
      ''
      
        'if not exists (select * from dbo.sysobjects where id = object_id' +
        '(N'#39'[dbo].[WorkGroupOrg]'#39') and OBJECTPROPERTY(id, N'#39'IsUserTable'#39')' +
        ' = 1)'
      ' begin '
      ''
      'CREATE TABLE [dbo].[WorkGroupOrg] ('
      #9'[WorkGroupOrgID] [int] IDENTITY (1, 1) NOT NULL ,'
      #9'[FromOrgID] [int] NOT NULL ,'
      #9'[WorkGroupID] [int] NOT NULL ,'
      #9'CONSTRAINT [PK_WorkGroupOrg] PRIMARY KEY  CLUSTERED '
      #9'('
      #9#9'[WorkGroupOrgID]'
      #9')  ON [PRIMARY] ,'
      #9
      ') ON [PRIMARY]'
      ''
      ''
      
        ' CREATE  INDEX [IX_WorkGroupOrg_FromOrgID] ON [dbo].[WorkGroupOr' +
        'g]([FromOrgID]) ON [PRIMARY]'
      ''
      ''
      
        ' CREATE  INDEX [IX_WorkGroupOrg_WorkGroupID] ON [dbo].[WorkGroup' +
        'Org]([WorkGroupID]) ON [PRIMARY]'
      ''
      ''
      ''
      ''
      'end'
      ''
      'go'
      ''
      ''
      
        'if not exists (select * from dbo.sysobjects where id = object_id' +
        '(N'#39'[dbo].[FollowUp]'#39') and OBJECTPROPERTY(id, N'#39'IsUserTable'#39') = 1' +
        ')'
      ' begin  '
      ''
      'CREATE TABLE [dbo].[FollowUp] ('
      #9'[FollowUPID] [int] IDENTITY (1, 1) NOT NULL ,'
      #9'[StartFollowUpID] [int] NULL ,'
      #9'[FollowUPTypeID] [int] NOT NULL ,'
      
        #9'[DoneStatusID] [tinyint] NOT NULL CONSTRAINT [DF_FollowUp_DoneS' +
        'tatusID] DEFAULT (1),'
      #9'[UserID] [int] NOT NULL ,'
      #9'[Comment] [nvarchar] (255)  NULL ,'
      #9'[ToDoDate] [char] (10)  NULL ,'
      #9'[ToDoTime] [char] (5)  NULL ,'
      #9'[DoneComment] [nvarchar] (255)  NULL ,'
      #9'[HasAlarm] [bit] NULL ,'
      
        #9'[Letterid] [int] NULL CONSTRAINT [DF_FollowUp_Letterid] DEFAULT' +
        ' (0),'
      #9'CONSTRAINT [PK_FollowUp] PRIMARY KEY  CLUSTERED '
      #9'('
      #9#9'[FollowUPID]'
      #9')  ON [PRIMARY] ,'
      #9
      ') ON [PRIMARY]'
      ' '
      
        ' CREATE  INDEX [IX_FollowUp_StartFollowUpID] ON [dbo].[FollowUp]' +
        '([StartFollowUpID]) ON [PRIMARY]'
      ' '
      
        ' CREATE  INDEX [IX_FollowUp_FollowUPTypeID] ON [dbo].[FollowUp](' +
        '[FollowUPTypeID]) ON [PRIMARY]'
      ' '
      
        ' CREATE  INDEX [IX_FollowUp_DoneStatusID] ON [dbo].[FollowUp]([D' +
        'oneStatusID]) ON [PRIMARY]'
      ' '
      
        ' CREATE  INDEX [IX_FollowUp_UserID] ON [dbo].[FollowUp]([UserID]' +
        ') ON [PRIMARY]'
      ' '
      
        ' CREATE  INDEX [IX_FollowUp_Letterid] ON [dbo].[FollowUp]([Lette' +
        'rid]) ON [PRIMARY]'
      ' '
      ''
      ''
      'end'
      'GO'
      ' declare @do bit ,@sql varchar(8000)'
      ' set @do=0'
      ''
      'if exists(SELECT *'
      'FROM  syscolumns c,systypes t'
      
        ' where  c.xtype=t.xtype and  c.id=object_id('#39'letter'#39') and t.name' +
        '<>'#39'int'#39' '
      'and c.name in ('#39'SecretariatID'#39','#39'Letter_Type'#39','#39'letterformat'#39','
      
        #39'ClassificationID'#39','#39'UrgencyID'#39','#39'ReceiveTypeID'#39','#39'UserID'#39','#39'SendSta' +
        'tusID'#39','
      #39'UserTableID'#39','#39'SubjectID'#39','#39'LatestActionTypeID'#39','#39'ActionTypeID'#39'))'
      'set @do=1'
      ''
      'if @do=1'
      'BEGIN'
      ''
      ''
      'set @sql='#39#39
      'select @sql=@sql+'#39
      'alter table '#39'+o1.name+'#39' drop constraint '#39'+o.name'
      
        'FROM Sysforeignkeys f ,      Sysobjects o1 ,Sysobjects o2 ,sysob' +
        'jects o'
      
        'where o2.id=rkeyid and '#39'letter'#39' in (o1.name,o2.name) and fkeyid ' +
        '= o1.id and constid=o.id'
      ''
      'exec( @sql)'
      'End'
      ''
      ''
      'if @do=1'
      'BEGIN'
      ' set @sql='#39#39
      ' select @sql=@sql+'#39
      ' alter table Letter drop constraint '#39'+name'
      ''
      ' from sysobjects'
      ' where type='#39'd'#39' and parent_obj=object_id('#39'letter'#39')'
      ' exec(@sql)'
      'end'
      ''
      'if @do=1'
      'BEGIN'
      ' CREATE TABLE dbo.Tmp_Letter'
      #9'('
      #9'LetterID int NOT NULL IDENTITY (1, 1),'
      #9'IndicatorID int NOT NULL,'
      #9'MYear tinyint NOT NULL,'
      #9'SecretariatID int NOT NULL default 1,'
      #9'Letter_Type int NOT NULL default 1,'
      #9'letterformat int NOT NULL default 1,'
      #9'IncommingNO nvarchar(50) NULL,'
      #9'Incommingdate nvarchar(10) NULL,'
      #9'CenterNo nvarchar(50) NULL,'
      #9'CenterDate char(10) NULL,'
      #9'FromOrgID int NOT NULL,'
      #9'ToOrgID int NOT NULL default 1,'
      #9'Signerid nvarchar(50) NULL,'
      #9'ClassificationID int NOT NULL default 1,'
      #9'UrgencyID int NOT NULL default 1,'
      #9'Memo nvarchar(2000) NULL,'
      #9'AttachTitle nvarchar(50) NULL,'
      #9'NumberOfAttachPages smallint NULL DEFAULT (1),'
      #9'NumberOfPage tinyint NOT NULL DEFAULT (1),'
      #9'ReceiveTypeID int NOT NULL DEFAULT (1),'
      #9'UserID int NOT NULL DEFAULT (0),'
      #9'RetroactionNo nvarchar(50) NULL,'
      #9'UserMemo nvarchar(255) NULL,'
      #9'RegistrationDate char(10) NOT NULL,'
      #9'RegistrationTime varchar(5) NOT NULL,'
      #9'FollowLetterNo nvarchar(50) NULL,'
      #9'ToStaffer nvarchar(50) NULL,'
      #9'SentLetterID int NULL,'
      #9'TemplateID int NULL,'
      #9'HeaderID int NULL,'
      #9'LetterRecommites nvarchar(500) NULL,'
      #9'PreCode nvarchar(50) NULL,'
      #9'fromstaffer nvarchar(50) NULL,'
      #9'Finalized bit NOT NULL default 1,'
      #9'SendStatusID int NOT NULL default 1,'
      #9'LastUpdate datetime NOT NULL DEFAULT (getdate()),'
      #9'UserTableID int NULL,'
      #9'Archived bit NOT NULL DEFAULT (0),'
      #9'UniqueID bigint NULL,'
      #9'SubjectDescription nvarchar(255) NULL,'
      #9'SubjectID int NULL,'
      #9'LatestActionTypeID int NULL,'
      #9'LatestActionReason nvarchar(255) NULL,'
      #9'DeadLineDate char(10) NULL,'
      #9'ActionTypeID int NOT NULL DEFAULT (1),'
      #9'UserTableID2 int NULL,'
      #9'EmailNuFromDate nvarchar(20) NULL'
      #9')  ON [PRIMARY]'
      ''
      'SET IDENTITY_INSERT dbo.Tmp_Letter on'
      ''
      'INSERT INTO Tmp_Letter'
      
        '           (LetterID ,IndicatorID ,MYear ,SecretariatID ,Letter_' +
        'Type ,letterformat ,IncommingNO ,Incommingdate ,CenterNo ,Center' +
        'Date ,FromOrgID ,ToOrgID'
      
        ' ,Signerid ,ClassificationID ,UrgencyID ,Memo ,AttachTitle ,Numb' +
        'erOfAttachPages ,NumberOfPage ,ReceiveTypeID ,UserID'
      
        ' ,RetroactionNo ,UserMemo ,RegistrationDate ,RegistrationTime ,F' +
        'ollowLetterNo ,ToStaffer ,SentLetterID ,TemplateID ,HeaderID ,Le' +
        'tterRecommites  '
      ',fromstaffer ,Finalized'
      
        ' ,SendStatusID ,LastUpdate ,UserTableID ,Archived ,UniqueID ,Sub' +
        'jectDescription ,SubjectID)'
      
        'SELECT LetterID ,IndicatorID ,MYear ,SecretariatID ,Letter_Type ' +
        ',letterformat ,IncommingNO ,Incommingdate ,CenterNo ,CenterDate ' +
        ',FromOrgID ,ToOrgID'
      
        ' ,Signerid ,ClassificationID ,UrgencyID ,Memo ,AttachTitle ,Numb' +
        'erOfAttachPages ,NumberOfPage ,ReceiveTypeID ,UserID'
      
        ' ,RetroactionNo ,UserMemo ,RegistrationDate ,RegistrationTime ,F' +
        'ollowLetterNo ,ToStaffer ,SentLetterID ,TemplateID ,HeaderID ,Le' +
        'tterRecommites '
      ',fromstaffer ,Finalized'
      
        ' ,SendStatusID ,LastUpdate ,UserTableID ,Archived ,UniqueID ,Sub' +
        'jectDescription ,SubjectID'
      'FROM Letter'
      ''
      'SET IDENTITY_INSERT dbo.Tmp_Letter off'
      ''
      'drop table Letter'
      'EXECUTE sp_rename N'#39'dbo.Tmp_Letter'#39', N'#39'Letter'#39', '#39'OBJECT'#39
      ''
      'end'
      'GO'
      '')
    ParentBiDiMode = False
    ReadOnly = True
    TabOrder = 3
  end
  object Memofields: TMemo
    Left = 35
    Top = 158
    Width = 770
    Height = 89
    BiDiMode = bdLeftToRight
    Lines.Strings = (
      ''
      'if exists (select * from sysobjects where name='#39'PK_Settings'#39')'
      'ALTER TABLE dbo.Settings '#9'DROP CONSTRAINT PK_Settings'
      ''
      'if not exists (select * from syscolumns c,sysobjects o'
      'where o.id=c.id and o.name='#39'Settings'#39' and c.name='#39'VariableName'#39')'
      'alter table Settings add   VariableName varchar(50)     '
      'go'
      'if not exists (select * from syscolumns c,sysobjects o'
      
        'where o.id=c.id and o.name='#39'ArchiveFolder'#39' and c.name='#39'ArchiveCe' +
        'nterID'#39')'
      
        'alter TABLE ArchiveFolder add ArchiveCenterID  int Not Null defa' +
        'ult -1'
      ' '
      'GO'
      ''
      'if not exists (select * from syscolumns c,sysobjects o'
      'where o.id=c.id and o.name='#39'Accesses'#39' and c.name='#39'ID'#39')'
      'alter TABLE Accesses add ID  tinyint Not Null default 0'
      'GO'
      'if not exists (select * from syscolumns c,sysobjects o'
      
        'where o.id=c.id and o.name='#39'Accesses'#39' and c.name='#39'Title'#39')       ' +
        '                                                                ' +
        '                                                                ' +
        '         '
      
        'alter TABLE Accesses add Title  nvarchar(50) Null               ' +
        '                                                                ' +
        '                                                                ' +
        '                                '
      '                               '
      'else'
      'alter TABLE Accesses alter column Title  nvarchar(50)  Null'
      'GO'
      'if not exists (select * from syscolumns c,sysobjects o'
      
        'where o.id=c.id and o.name='#39'AccessType'#39' and c.name='#39'AccessTypeID' +
        #39')                                                              ' +
        '                                                                ' +
        '         '
      
        'alter TABLE AccessType add AccessTypeID  tinyint Not Null defaul' +
        't 0                                                             ' +
        '                                                                ' +
        '                   '
      '                                            '
      'GO'
      'if not exists (select * from syscolumns c,sysobjects o'
      
        'where o.id=c.id and o.name='#39'AccessType'#39' and c.name='#39'AccessTypeTi' +
        'tle'#39')                                                           ' +
        '                                                                ' +
        '         '
      
        'alter TABLE AccessType add AccessTypeTitle  nvarchar(50) Not Nul' +
        'l default 0                                                     ' +
        '                                                                ' +
        '             '
      '                                                  '
      'GO'
      'if not exists (select * from syscolumns c,sysobjects o'
      
        'where o.id=c.id and o.name='#39'Actions'#39' and c.name='#39'FormTag'#39')      ' +
        '                                                                ' +
        '                                                                ' +
        '         '
      'alter TABLE Actions add FormTag  tinyint Not Null default 0'
      'GO'
      'if not exists (select * from syscolumns c,sysobjects o'
      
        'where o.id=c.id and o.name='#39'Actions'#39' and c.name='#39'ID'#39')           ' +
        '                                                                ' +
        '                                                                ' +
        '         '
      
        'alter TABLE Actions add ID  int Not Null default 0              ' +
        '                                                                ' +
        '                                                                ' +
        '                                  '
      '                             '
      'GO'
      'if not exists (select * from syscolumns c,sysobjects o'
      
        'where o.id=c.id and o.name='#39'Actions'#39' and c.name='#39'Title'#39')        ' +
        '                                                                ' +
        '                                                                ' +
        '         '
      
        'alter TABLE Actions add Title  nvarchar(50) Null                ' +
        '                                                                ' +
        '                                                                ' +
        '                                  '
      '                             '
      'else'
      'alter TABLE Actions alter column Title  nvarchar(50)  Null'
      'GO'
      'if not exists (select * from syscolumns c,sysobjects o'
      
        'where o.id=c.id and o.name='#39'ActionsAccess'#39' and c.name='#39'AccessID'#39 +
        ')                                                               ' +
        '                                                                ' +
        '         '
      
        'alter TABLE ActionsAccess add AccessID  tinyint Not Null default' +
        ' 0                                                              ' +
        '                                                                ' +
        '                      '
      '                                         '
      'GO'
      'if not exists (select * from syscolumns c,sysobjects o'
      
        'where o.id=c.id and o.name='#39'ActionsAccess'#39' and c.name='#39'ActionID'#39 +
        ')                                                               ' +
        '                                                                ' +
        '         '
      
        'alter TABLE ActionsAccess add ActionID  int Not Null default 0  ' +
        '                                                                ' +
        '                                                                ' +
        '                         '
      '                                      '
      'GO'
      'if not exists (select * from syscolumns c,sysobjects o'
      
        'where o.id=c.id and o.name='#39'ActionsAccess'#39' and c.name='#39'FormTag'#39')' +
        '                                                                ' +
        '                                                                ' +
        '         '
      
        'alter TABLE ActionsAccess add FormTag  tinyint Not Null default ' +
        '0                                                               ' +
        '                                                                ' +
        '                      '
      '                                         '
      'GO'
      'if not exists (select * from syscolumns c,sysobjects o'
      
        'where o.id=c.id and o.name='#39'ActionsAccess'#39' and c.name='#39'HasAccess' +
        #39')                                                              ' +
        '                                                                ' +
        '         '
      
        'alter TABLE ActionsAccess add HasAccess  bit Not Null default 0 ' +
        '                                                                ' +
        '                                                                ' +
        '                       '
      '                                        '
      'GO'
      'if not exists (select * from syscolumns c,sysobjects o'
      
        'where o.id=c.id and o.name='#39'ActionType'#39' and c.name='#39'ActionTypeID' +
        #39')                                                              ' +
        '                                                                ' +
        '         '
      
        'alter TABLE ActionType add ActionTypeID  int Not Null default 0 ' +
        '                                                                ' +
        '                                                                ' +
        '                       '
      '                                        '
      'GO'
      'if not exists (select * from syscolumns c,sysobjects o'
      
        'where o.id=c.id and o.name='#39'ActionType'#39' and c.name='#39'ActionTypeTi' +
        'tle'#39')                                                           ' +
        '                                                                ' +
        '         '
      
        'alter TABLE ActionType add ActionTypeTitle  nvarchar(50) Null   ' +
        '                                                                ' +
        '                                                                ' +
        '                       '
      '                                        '
      'else'
      
        'alter TABLE ActionType alter column ActionTypeTitle  nvarchar(50' +
        ')  Null'
      'GO'
      'if not exists (select * from syscolumns c,sysobjects o'
      
        'where o.id=c.id and o.name='#39'added'#39' and c.name='#39'ID'#39')             ' +
        '                                                                ' +
        '                                                                ' +
        '         '
      
        'alter TABLE added add ID  int Not Null default 0                ' +
        '                                                                ' +
        '                                                                ' +
        '                                  '
      '                             '
      'GO'
      'if not exists (select * from syscolumns c,sysobjects o'
      
        'where o.id=c.id and o.name='#39'added'#39' and c.name='#39'Title'#39')          ' +
        '                                                                ' +
        '                                                                ' +
        '         '
      
        'alter TABLE added add Title  nvarchar(100) Not Null default 0   ' +
        '                                                                ' +
        '                                                                ' +
        '                         '
      '                                      '
      'GO'
      'if not exists (select * from syscolumns c,sysobjects o'
      
        'where o.id=c.id and o.name='#39'added'#39' and c.name='#39'ParentID'#39')       ' +
        '                                                                ' +
        '                                                                ' +
        '         '
      
        'alter TABLE added add ParentID  int Not Null default 0          ' +
        '                                                                ' +
        '                                                                ' +
        '                             '
      '                                  '
      'GO'
      'if not exists (select * from syscolumns c,sysobjects o'
      
        'where o.id=c.id and o.name='#39'added'#39' and c.name='#39'Phone'#39')          ' +
        '                                                                ' +
        '                                                                ' +
        '         '
      
        'alter TABLE added add Phone  nvarchar(30) Null                  ' +
        '                                                                ' +
        '                                                                ' +
        '                              '
      '                                 '
      'else'
      'alter TABLE added alter column Phone  nvarchar(30)  Null'
      'GO'
      'if not exists (select * from syscolumns c,sysobjects o'
      
        'where o.id=c.id and o.name='#39'added'#39' and c.name='#39'Fax'#39')            ' +
        '                                                                ' +
        '                                                                ' +
        '         '
      
        'alter TABLE added add Fax  nvarchar(30) Null                    ' +
        '                                                                ' +
        '                                                                ' +
        '                                '
      '                               '
      'else'
      'alter TABLE added alter column Fax  nvarchar(30)  Null'
      'GO'
      'if not exists (select * from syscolumns c,sysobjects o'
      
        'where o.id=c.id and o.name='#39'added'#39' and c.name='#39'Email'#39')          ' +
        '                                                                ' +
        '                                                                ' +
        '         '
      
        'alter TABLE added add Email  nvarchar(30) Null                  ' +
        '                                                                ' +
        '                                                                ' +
        '                                '
      '                               '
      'else'
      'alter TABLE added alter column Email  nvarchar(30)  Null'
      'GO'
      'if not exists (select * from syscolumns c,sysobjects o'
      
        'where o.id=c.id and o.name='#39'added'#39' and c.name='#39'ResponsibleStaffe' +
        'r'#39')                                                             ' +
        '                                                                ' +
        '         '
      
        'alter TABLE added add ResponsibleStaffer  nvarchar(50) Not Null ' +
        'default 0                                                       ' +
        '                                                                ' +
        '               '
      '                                                '
      'GO'
      'if not exists (select * from syscolumns c,sysobjects o'
      
        'where o.id=c.id and o.name='#39'added'#39' and c.name='#39'IsActive'#39')       ' +
        '                                                                ' +
        '                                                                ' +
        '         '
      
        'alter TABLE added add IsActive  bit Null                        ' +
        '                                                                ' +
        '                                                                ' +
        '                                      '
      '                         '
      'else'
      'alter TABLE added alter column IsActive  bit  Null'
      'GO'
      'if not exists (select * from syscolumns c,sysobjects o'
      
        'where o.id=c.id and o.name='#39'added'#39' and c.name='#39'PreCode'#39')        ' +
        '                                                                ' +
        '                                                                ' +
        '         '
      
        'alter TABLE added add PreCode  nvarchar(50) Null                ' +
        '                                                                ' +
        '                                                                ' +
        '                             '
      '                                  '
      'else'
      'alter TABLE added alter column PreCode  nvarchar(50)  Null'
      'GO'
      'if not exists (select * from syscolumns c,sysobjects o'
      
        'where o.id=c.id and o.name='#39'added'#39' and c.name='#39'IsInnerOrg'#39')     ' +
        '                                                                ' +
        '                                                                ' +
        '         '
      
        'alter TABLE added add IsInnerOrg  bit Not Null default 0        ' +
        '                                                                ' +
        '                                                                ' +
        '                            '
      '                                   '
      'GO'
      'if not exists (select * from syscolumns c,sysobjects o'
      
        'where o.id=c.id and o.name='#39'added'#39' and c.name='#39'Code'#39')           ' +
        '                                                                ' +
        '                                                                ' +
        '         '
      
        'alter TABLE added add Code  nvarchar(10) Not Null default 0     ' +
        '                                                                ' +
        '                                                                ' +
        '                       '
      '                                        '
      'GO'
      'if not exists (select * from syscolumns c,sysobjects o'
      
        'where o.id=c.id and o.name='#39'added'#39' and c.name='#39'Number'#39')         ' +
        '                                                                ' +
        '                                                                ' +
        '         '
      
        'alter TABLE added add Number  int Not Null  default (0)         ' +
        '                                                                ' +
        '                                                                ' +
        '                            '
      '                                   '
      'GO'
      'if not exists (select * from syscolumns c,sysobjects o'
      
        'where o.id=c.id and o.name='#39'ApplicationForms'#39' and c.name='#39'ID'#39')  ' +
        '                                                                ' +
        '                                                                ' +
        '         '
      
        'alter TABLE ApplicationForms add ID  tinyint Not Null default 0 ' +
        '                                                                ' +
        '                                                                ' +
        '                          '
      '                                     '
      'GO'
      'if not exists (select * from syscolumns c,sysobjects o'
      
        'where o.id=c.id and o.name='#39'ApplicationForms'#39' and c.name='#39'Title'#39 +
        ')                                                               ' +
        '                                                                ' +
        '         '
      
        'alter TABLE ApplicationForms add Title  nvarchar(50) Null       ' +
        '                                                                ' +
        '                                                                ' +
        '                            '
      '                                   '
      'else'
      
        'alter TABLE ApplicationForms alter column Title  nvarchar(50)  N' +
        'ull'
      'GO'
      'if not exists (select * from syscolumns c,sysobjects o'
      
        'where o.id=c.id and o.name='#39'ArchiveCenter'#39' and c.name='#39'ArchiveCe' +
        'nterID'#39')                                                        ' +
        '                                                                ' +
        '         '
      
        'alter TABLE ArchiveCenter add ArchiveCenterID  int Not Null defa' +
        'ult 0                                                           ' +
        '                                                                ' +
        '                   '
      '                                            '
      'GO'
      'if not exists (select * from syscolumns c,sysobjects o'
      
        'where o.id=c.id and o.name='#39'ArchiveCenter'#39' and c.name='#39'ArchiveCe' +
        'nterTitle'#39')                                                     ' +
        '                                                                ' +
        '         '
      
        'alter TABLE ArchiveCenter add ArchiveCenterTitle  nvarchar(50) N' +
        'ot Null default 0                                               ' +
        '                                                                ' +
        '           '
      '                                                    '
      'GO'
      'if not exists (select * from syscolumns c,sysobjects o'
      
        'where o.id=c.id and o.name='#39'ArchiveFolder'#39' and c.name='#39'FolderID'#39 +
        ')                                                               ' +
        '                                                                ' +
        '         '
      
        'alter TABLE ArchiveFolder add FolderID  int Not Null default 0  ' +
        '                                                                ' +
        '                                                                ' +
        '                          '
      '                                     '
      'GO'
      'if not exists (select * from syscolumns c,sysobjects o'
      
        'where o.id=c.id and o.name='#39'ArchiveFolder'#39' and c.name='#39'ParentFol' +
        'derID'#39')                                                         ' +
        '                                                                ' +
        '         '
      
        'alter TABLE ArchiveFolder add ParentFolderID  int Not Null defau' +
        'lt 0                                                            ' +
        '                                                                ' +
        '                     '
      '                                          '
      'GO'
      'if not exists (select * from syscolumns c,sysobjects o'
      
        'where o.id=c.id and o.name='#39'ArchiveFolder'#39' and c.name='#39'Title'#39')  ' +
        '                                                                ' +
        '                                                                ' +
        '         '
      
        'alter TABLE ArchiveFolder add Title  nvarchar(100) Null         ' +
        '                                                                ' +
        '                                                                ' +
        '                             '
      '                                  '
      'else'
      
        'alter TABLE ArchiveFolder alter column Title  nvarchar(100)  Nul' +
        'l'
      'GO'
      'if not exists (select * from syscolumns c,sysobjects o'
      
        'where o.id=c.id and o.name='#39'ArchiveFolder'#39' and c.name='#39'UserID'#39') ' +
        '                                                                ' +
        '                                                                ' +
        '         '
      
        'alter TABLE ArchiveFolder add UserID  int Not Null default 0    ' +
        '                                                                ' +
        '                                                                ' +
        '                          '
      '                                     '
      'GO'
      'if not exists (select * from syscolumns c,sysobjects o'
      
        'where o.id=c.id and o.name='#39'ArchiveFolder'#39' and c.name='#39'Notes'#39')  ' +
        '                                                                ' +
        '                                                                ' +
        '         '
      
        'alter TABLE ArchiveFolder add Notes  nvarchar(500) Null         ' +
        '                                                                ' +
        '                                                                ' +
        '                          '
      '                                     '
      'else'
      
        'alter TABLE ArchiveFolder alter column Notes  nvarchar(500)  Nul' +
        'l'
      'GO'
      'if not exists (select * from syscolumns c,sysobjects o'
      
        'where o.id=c.id and o.name='#39'ArchiveFolder'#39' and c.name='#39'Place'#39')  ' +
        '                                                                ' +
        '                                                                ' +
        '         '
      
        'alter TABLE ArchiveFolder add Place  nvarchar(100) Null         ' +
        '                                                                ' +
        '                                                                ' +
        '                           '
      '                                    '
      'else'
      
        'alter TABLE ArchiveFolder alter column Place  nvarchar(100)  Nul' +
        'l'
      'GO'
      'if not exists (select * from syscolumns c,sysobjects o'
      
        'where o.id=c.id and o.name='#39'Classifications'#39' and c.name='#39'ID'#39')   ' +
        '                                                                ' +
        '                                                                ' +
        '         '
      
        'alter TABLE Classifications add ID  int Not Null default 0      ' +
        '                                                                ' +
        '                                                                ' +
        '                               '
      '                                '
      'GO'
      'if not exists (select * from syscolumns c,sysobjects o'
      
        'where o.id=c.id and o.name='#39'Classifications'#39' and c.name='#39'Title'#39')' +
        '                                                                ' +
        '                                                                ' +
        '         '
      
        'alter TABLE Classifications add Title  nvarchar(50) Null        ' +
        '                                                                ' +
        '                                                                ' +
        '                               '
      '                                '
      'else'
      
        'alter TABLE Classifications alter column Title  nvarchar(50)  Nu' +
        'll'
      'GO'
      'if not exists (select * from syscolumns c,sysobjects o'
      
        'where o.id=c.id and o.name='#39'DoneStatus'#39' and c.name='#39'DoneStatusID' +
        #39')                                                              ' +
        '                                                                ' +
        '         '
      
        'alter TABLE DoneStatus add DoneStatusID  tinyint Not Null defaul' +
        't 0                                                             ' +
        '                                                                ' +
        '                   '
      '                                            '
      'GO'
      'if not exists (select * from syscolumns c,sysobjects o'
      
        'where o.id=c.id and o.name='#39'DoneStatus'#39' and c.name='#39'DoneStatusti' +
        'tle'#39')                                                           ' +
        '                                                                ' +
        '         '
      
        'alter TABLE DoneStatus add DoneStatustitle  nvarchar(50) Not Nul' +
        'l default 0                                                     ' +
        '                                                                ' +
        '              '
      '                                                 '
      'GO'
      'if not exists (select * from syscolumns c,sysobjects o'
      
        'where o.id=c.id and o.name='#39'Emails'#39' and c.name='#39'EmailsID'#39')      ' +
        '                                                                ' +
        '                                                                ' +
        '         '
      
        'alter TABLE Emails add EmailsID  int Not Null default 0         ' +
        '                                                                ' +
        '                                                                ' +
        '                               '
      '                                '
      'GO'
      'if not exists (select * from syscolumns c,sysobjects o'
      
        'where o.id=c.id and o.name='#39'Emails'#39' and c.name='#39'Code'#39')          ' +
        '                                                                ' +
        '                                                                ' +
        '         '
      
        'alter TABLE Emails add Code  int Not Null default 0             ' +
        '                                                                ' +
        '                                                                ' +
        '                                '
      '                               '
      'GO'
      'if not exists (select * from syscolumns c,sysobjects o'
      
        'where o.id=c.id and o.name='#39'Emails'#39' and c.name='#39'Subject'#39')       ' +
        '                                                                ' +
        '                                                                ' +
        '         '
      
        'alter TABLE Emails add Subject  nvarchar(200) Not Null default 0' +
        '                                                                ' +
        '                                                                ' +
        '                       '
      '                                        '
      'GO'
      'if not exists (select * from syscolumns c,sysobjects o'
      
        'where o.id=c.id and o.name='#39'Emails'#39' and c.name='#39'SendAddress'#39')   ' +
        '                                                                ' +
        '                                                                ' +
        '         '
      
        'alter TABLE Emails add SendAddress  nvarchar(100) Null          ' +
        '                                                                ' +
        '                                                                ' +
        '                          '
      '                                     '
      'else'
      'alter TABLE Emails alter column SendAddress  nvarchar(100)  Null'
      'GO'
      'if not exists (select * from syscolumns c,sysobjects o'
      
        'where o.id=c.id and o.name='#39'Emails'#39' and c.name='#39'ReciveAddress'#39') ' +
        '                                                                ' +
        '                                                                ' +
        '         '
      
        'alter TABLE Emails add ReciveAddress  nvarchar(100) Null        ' +
        '                                                                ' +
        '                                                                ' +
        '                         '
      '                                      '
      'else'
      
        'alter TABLE Emails alter column ReciveAddress  nvarchar(100)  Nu' +
        'll'
      'GO'
      'if not exists (select * from syscolumns c,sysobjects o'
      
        'where o.id=c.id and o.name='#39'Emails'#39' and c.name='#39'Memo'#39')          ' +
        '                                                                ' +
        '                                                                ' +
        '         '
      
        'alter TABLE Emails add Memo  image Null                         ' +
        '                                                                ' +
        '                                                                ' +
        '                                    '
      '                           '
      ''
      'GO'
      'if not exists (select * from syscolumns c,sysobjects o'
      
        'where o.id=c.id and o.name='#39'Emails'#39' and c.name='#39'AttachFile'#39')    ' +
        '                                                                ' +
        '                                                                ' +
        '         '
      
        'alter TABLE Emails add AttachFile  image Null                   ' +
        '                                                                ' +
        '                                                                ' +
        '                                   '
      '                            '
      ''
      'GO'
      'if not exists (select * from syscolumns c,sysobjects o'
      
        'where o.id=c.id and o.name='#39'Emails'#39' and c.name='#39'AttachFileName'#39')' +
        '                                                                ' +
        '                                                                ' +
        '         '
      
        'alter TABLE Emails add AttachFileName  nvarchar(50) Null        ' +
        '                                                                ' +
        '                                                                ' +
        '                          '
      '                                     '
      'else'
      
        'alter TABLE Emails alter column AttachFileName  nvarchar(50)  Nu' +
        'll'
      'GO'
      'if not exists (select * from syscolumns c,sysobjects o'
      
        'where o.id=c.id and o.name='#39'Emails'#39' and c.name='#39'Status'#39')        ' +
        '                                                                ' +
        '                                                                ' +
        '         '
      
        'alter TABLE Emails add Status  smallint Null                    ' +
        '                                                                ' +
        '                                                                ' +
        '                                      '
      '                         '
      'else'
      'alter TABLE Emails alter column Status  smallint  Null'
      'GO'
      'if not exists (select * from syscolumns c,sysobjects o'
      
        'where o.id=c.id and o.name='#39'Emails'#39' and c.name='#39'DateEmail'#39')     ' +
        '                                                                ' +
        '                                                                ' +
        '         '
      
        'alter TABLE Emails add DateEmail  nvarchar(10) Not Null default ' +
        '0                                                               ' +
        '                                                                ' +
        '                      '
      '                                         '
      'GO'
      'if not exists (select * from syscolumns c,sysobjects o'
      
        'where o.id=c.id and o.name='#39'Emails'#39' and c.name='#39'TimeEmail'#39')     ' +
        '                                                                ' +
        '                                                                ' +
        '         '
      
        'alter TABLE Emails add TimeEmail  nvarchar(10) Not Null default ' +
        '0                                                               ' +
        '                                                                ' +
        '                      '
      '                                         '
      'GO'
      'if not exists (select * from syscolumns c,sysobjects o'
      
        'where o.id=c.id and o.name='#39'Emails'#39' and c.name='#39'IsAnswer'#39')      ' +
        '                                                                ' +
        '                                                                ' +
        '         '
      
        'alter TABLE Emails add IsAnswer  bit Null                       ' +
        '                                                                ' +
        '                                                                ' +
        '                                      '
      '                         '
      'else'
      'alter TABLE Emails alter column IsAnswer  bit  Null'
      'GO'
      'if not exists (select * from syscolumns c,sysobjects o'
      
        'where o.id=c.id and o.name='#39'Emails'#39' and c.name='#39'IsReciveEmail'#39') ' +
        '                                                                ' +
        '                                                                ' +
        '         '
      
        'alter TABLE Emails add IsReciveEmail  bit Null                  ' +
        '                                                                ' +
        '                                                                ' +
        '                                    '
      '                           '
      'else'
      'alter TABLE Emails alter column IsReciveEmail  bit  Null'
      'GO'
      'if not exists (select * from syscolumns c,sysobjects o'
      
        'where o.id=c.id and o.name='#39'Emails'#39' and c.name='#39'UsersID'#39')       ' +
        '                                                                ' +
        '                                                                ' +
        '         '
      
        'alter TABLE Emails add UsersID  int Not Null default 0          ' +
        '                                                                ' +
        '                                                                ' +
        '                               '
      '                                '
      'GO'
      'if not exists (select * from syscolumns c,sysobjects o'
      
        'where o.id=c.id and o.name='#39'Emails'#39' and c.name='#39'IsRead'#39')        ' +
        '                                                                ' +
        '                                                                ' +
        '         '
      
        'alter TABLE Emails add IsRead  bit Null                         ' +
        '                                                                ' +
        '                                                                ' +
        '                                       '
      '                        '
      'else'
      'alter TABLE Emails alter column IsRead  bit  Null'
      'GO'
      'if not exists (select * from syscolumns c,sysobjects o'
      
        'where o.id=c.id and o.name='#39'Emails'#39' and c.name='#39'IsPersonal'#39')    ' +
        '                                                                ' +
        '                                                                ' +
        '         '
      
        'alter TABLE Emails add IsPersonal  bit Null                     ' +
        '                                                                ' +
        '                                                                ' +
        '                                      '
      '                         '
      'else'
      'alter TABLE Emails alter column IsPersonal  bit  Null'
      'GO'
      'if not exists (select * from syscolumns c,sysobjects o'
      
        'where o.id=c.id and o.name='#39'Emails'#39' and c.name='#39'IsImportant'#39')   ' +
        '                                                                ' +
        '                                                                ' +
        '         '
      
        'alter TABLE Emails add IsImportant  bit Null                    ' +
        '                                                                ' +
        '                                                                ' +
        '                                     '
      '                          '
      'else'
      'alter TABLE Emails alter column IsImportant  bit  Null'
      'GO'
      'if not exists (select * from syscolumns c,sysobjects o'
      
        'where o.id=c.id and o.name='#39'Emails'#39' and c.name='#39'IsSecret'#39')      ' +
        '                                                                ' +
        '                                                                ' +
        '         '
      
        'alter TABLE Emails add IsSecret  bit Null                       ' +
        '                                                                ' +
        '                                                                ' +
        '                                       '
      '                        '
      'else'
      'alter TABLE Emails alter column IsSecret  bit  Null'
      'GO'
      'if not exists (select * from syscolumns c,sysobjects o'
      
        'where o.id=c.id and o.name='#39'Emails'#39' and c.name='#39'EmailNuFromDate'#39 +
        ')                                                               ' +
        '                                                                ' +
        '         '
      
        'alter TABLE Emails add EmailNuFromDate  nvarchar(20) Null       ' +
        '                                                                ' +
        '                                                                ' +
        '                        '
      '                                       '
      'else'
      
        'alter TABLE Emails alter column EmailNuFromDate  nvarchar(20)  N' +
        'ull'
      'GO'
      'if not exists (select * from syscolumns c,sysobjects o'
      
        'where o.id=c.id and o.name='#39'ErrorMessage'#39' and c.name='#39'Errorid'#39') ' +
        '                                                                ' +
        '                                                                ' +
        '         '
      
        'alter TABLE ErrorMessage add Errorid  bigint Not Null default 0 ' +
        '                                                                ' +
        '                                                                ' +
        '                         '
      '                                      '
      'GO'
      'if not exists (select * from syscolumns c,sysobjects o'
      
        'where o.id=c.id and o.name='#39'ErrorMessage'#39' and c.name='#39'ErrorMessa' +
        'ge'#39')                                                            ' +
        '                                                                ' +
        '         '
      
        'alter TABLE ErrorMessage add ErrorMessage  nvarchar(255) Null   ' +
        '                                                                ' +
        '                                                                ' +
        '                   '
      '                                            '
      'else'
      
        'alter TABLE ErrorMessage alter column ErrorMessage  nvarchar(255' +
        ')  Null'
      'GO'
      'if not exists (select * from syscolumns c,sysobjects o'
      
        'where o.id=c.id and o.name='#39'ErrorMessage'#39' and c.name='#39'ErrorDate'#39 +
        ')                                                               ' +
        '                                                                ' +
        '         '
      
        'alter TABLE ErrorMessage add ErrorDate  nvarchar(10) Null       ' +
        '                                                                ' +
        '                                                                ' +
        '                        '
      '                                       '
      'else'
      
        'alter TABLE ErrorMessage alter column ErrorDate  nvarchar(10)  N' +
        'ull'
      'GO'
      'if not exists (select * from syscolumns c,sysobjects o'
      
        'where o.id=c.id and o.name='#39'ErrorMessage'#39' and c.name='#39'UserCode'#39')' +
        '                                                                ' +
        '                                                                ' +
        '         '
      
        'alter TABLE ErrorMessage add UserCode  int Null                 ' +
        '                                                                ' +
        '                                                                ' +
        '                               '
      '                                '
      'else'
      'alter TABLE ErrorMessage alter column UserCode  int  Null'
      'GO'
      'if not exists (select * from syscolumns c,sysobjects o'
      
        'where o.id=c.id and o.name='#39'ErrorMessage'#39' and c.name='#39'FarsiMessa' +
        'ge'#39')                                                            ' +
        '                                                                ' +
        '         '
      
        'alter TABLE ErrorMessage add FarsiMessage  nvarchar(255) Null   ' +
        '                                                                ' +
        '                                                                ' +
        '                    '
      '                                           '
      'else'
      
        'alter TABLE ErrorMessage alter column FarsiMessage  nvarchar(255' +
        ')  Null'
      'GO'
      'if not exists (select * from syscolumns c,sysobjects o'
      
        'where o.id=c.id and o.name='#39'ErrorMessage'#39' and c.name='#39'ShowMessag' +
        'e'#39')                                                             ' +
        '                                                                ' +
        '         '
      
        'alter TABLE ErrorMessage add ShowMessage  bit Null  default (1) ' +
        '                                                                ' +
        '                                                                ' +
        '                     '
      '                                          '
      'else'
      'alter TABLE ErrorMessage alter column ShowMessage  bit  Null'
      'GO'
      'if not exists (select * from syscolumns c,sysobjects o'
      
        'where o.id=c.id and o.name='#39'Extention'#39' and c.name='#39'ExtentionID'#39')' +
        '                                                                ' +
        '                                                                ' +
        '         '
      
        'alter TABLE Extention add ExtentionID  int Not Null default 0   ' +
        '                                                                ' +
        '                                                                ' +
        '                          '
      '                                     '
      'GO'
      'if not exists (select * from syscolumns c,sysobjects o'
      
        'where o.id=c.id and o.name='#39'Extention'#39' and c.name='#39'ExtentionTitl' +
        'e'#39')                                                             ' +
        '                                                                ' +
        '         '
      
        'alter TABLE Extention add ExtentionTitle  nvarchar(200) Not Null' +
        ' default 0                                                      ' +
        '                                                                ' +
        '                 '
      '                                              '
      'GO'
      'if not exists (select * from syscolumns c,sysobjects o'
      
        'where o.id=c.id and o.name='#39'Extention'#39' and c.name='#39'Extention'#39')  ' +
        '                                                                ' +
        '                                                                ' +
        '         '
      
        'alter TABLE Extention add Extention  varchar(5) Not Null default' +
        ' 0                                                              ' +
        '                                                                ' +
        '                      '
      '                                         '
      'GO'
      'if not exists (select * from syscolumns c,sysobjects o'
      
        'where o.id=c.id and o.name='#39'Extention'#39' and c.name='#39'IsSystem'#39')   ' +
        '                                                                ' +
        '                                                                ' +
        '         '
      
        'alter TABLE Extention add IsSystem  bit Not Null  default (0)   ' +
        '                                                                ' +
        '                                                                ' +
        '                           '
      '                                    '
      'GO'
      'if not exists (select * from syscolumns c,sysobjects o'
      
        'where o.id=c.id and o.name='#39'FieldAccess'#39' and c.name='#39'FieldAccess' +
        'ID'#39')                                                            ' +
        '                                                                ' +
        '         '
      
        'alter TABLE FieldAccess add FieldAccessID  int Not Null default ' +
        '0                                                               ' +
        '                                                                ' +
        '                        '
      '                                       '
      'GO'
      'if not exists (select * from syscolumns c,sysobjects o'
      
        'where o.id=c.id and o.name='#39'FieldAccess'#39' and c.name='#39'FieldID'#39')  ' +
        '                                                                ' +
        '                                                                ' +
        '         '
      
        'alter TABLE FieldAccess add FieldID  int Not Null default 0     ' +
        '                                                                ' +
        '                                                                ' +
        '                             '
      '                                  '
      'GO'
      'if not exists (select * from syscolumns c,sysobjects o'
      
        'where o.id=c.id and o.name='#39'FieldAccess'#39' and c.name='#39'UserID'#39')   ' +
        '                                                                ' +
        '                                                                ' +
        '         '
      
        'alter TABLE FieldAccess add UserID  int Not Null default 0      ' +
        '                                                                ' +
        '                                                                ' +
        '                            '
      '                                   '
      'GO'
      'if not exists (select * from syscolumns c,sysobjects o'
      
        'where o.id=c.id and o.name='#39'FieldAccess'#39' and c.name='#39'AccessTypeI' +
        'D'#39')                                                             ' +
        '                                                                ' +
        '         '
      
        'alter TABLE FieldAccess add AccessTypeID  tinyint Not Null defau' +
        'lt 0                                                            ' +
        '                                                                ' +
        '                    '
      '                                           '
      'GO'
      'if not exists (select * from syscolumns c,sysobjects o'
      
        'where o.id=c.id and o.name='#39'Fields'#39' and c.name='#39'ID'#39')            ' +
        '                                                                ' +
        '                                                                ' +
        '         '
      
        'alter TABLE Fields add ID  int Not Null default 0               ' +
        '                                                                ' +
        '                                                                ' +
        '                                    '
      '                           '
      'GO'
      'if not exists (select * from syscolumns c,sysobjects o'
      
        'where o.id=c.id and o.name='#39'Fields'#39' and c.name='#39'FieldName'#39')     ' +
        '                                                                ' +
        '                                                                ' +
        '         '
      
        'alter TABLE Fields add FieldName  nvarchar(50) Not Null default ' +
        '0                                                               ' +
        '                                                                ' +
        '                      '
      '                                         '
      'GO'
      'if not exists (select * from syscolumns c,sysobjects o'
      
        'where o.id=c.id and o.name='#39'Fields'#39' and c.name='#39'TableID'#39')       ' +
        '                                                                ' +
        '                                                                ' +
        '         '
      
        'alter TABLE Fields add TableID  int Not Null  default ((1))     ' +
        '                                                                ' +
        '                                                                ' +
        '                               '
      '                                '
      'GO'
      'if not exists (select * from syscolumns c,sysobjects o'
      
        'where o.id=c.id and o.name='#39'Fields'#39' and c.name='#39'Description'#39')   ' +
        '                                                                ' +
        '                                                                ' +
        '         '
      
        'alter TABLE Fields add Description  nvarchar(50) Null           ' +
        '                                                                ' +
        '                                                                ' +
        '                               '
      '                                '
      'else'
      'alter TABLE Fields alter column Description  nvarchar(50)  Null'
      'GO'
      'if not exists (select * from syscolumns c,sysobjects o'
      
        'where o.id=c.id and o.name='#39'Fields'#39' and c.name='#39'IsWhere'#39')       ' +
        '                                                                ' +
        '                                                                ' +
        '         '
      
        'alter TABLE Fields add IsWhere  bit Not Null  default ((1))     ' +
        '                                                                ' +
        '                                                                ' +
        '                             '
      '                                  '
      'GO'
      'if not exists (select * from syscolumns c,sysobjects o'
      
        'where o.id=c.id and o.name='#39'Fields'#39' and c.name='#39'ISString'#39')      ' +
        '                                                                ' +
        '                                                                ' +
        '         '
      
        'alter TABLE Fields add ISString  bit Not Null  default ((1))    ' +
        '                                                                ' +
        '                                                                ' +
        '                               '
      '                                '
      'GO'
      'if not exists (select * from syscolumns c,sysobjects o'
      
        'where o.id=c.id and o.name='#39'Fields'#39' and c.name='#39'IsLike'#39')        ' +
        '                                                                ' +
        '                                                                ' +
        '         '
      
        'alter TABLE Fields add IsLike  bit Not Null  default ((1))      ' +
        '                                                                ' +
        '                                                                ' +
        '                                 '
      '                              '
      'GO'
      'if not exists (select * from syscolumns c,sysobjects o'
      
        'where o.id=c.id and o.name='#39'Fields'#39' and c.name='#39'EveryLike'#39')     ' +
        '                                                                ' +
        '                                                                ' +
        '         '
      
        'alter TABLE Fields add EveryLike  bit Not Null  default ((0))   ' +
        '                                                                ' +
        '                                                                ' +
        '                              '
      '                                 '
      'GO'
      'if not exists (select * from syscolumns c,sysobjects o'
      
        'where o.id=c.id and o.name='#39'Fields'#39' and c.name='#39'VisibleInGrid'#39') ' +
        '                                                                ' +
        '                                                                ' +
        '         '
      
        'alter TABLE Fields add VisibleInGrid  bit Not Null  default ((1)' +
        ')                                                               ' +
        '                                                                ' +
        '                              '
      '                                 '
      'GO'
      'if not exists (select * from syscolumns c,sysobjects o'
      
        'where o.id=c.id and o.name='#39'Fields'#39' and c.name='#39'isblob'#39')        ' +
        '                                                                ' +
        '                                                                ' +
        '         '
      
        'alter TABLE Fields add isblob  bit Null  default ((0))          ' +
        '                                                                ' +
        '                                                                ' +
        '                                    '
      '                           '
      'else'
      'alter TABLE Fields alter column isblob  bit  Null'
      'GO'
      'if not exists (select * from syscolumns c,sysobjects o'
      
        'where o.id=c.id and o.name='#39'Fields'#39' and c.name='#39'FieldTypeID'#39')   ' +
        '                                                                ' +
        '                                                                ' +
        '         '
      
        'alter TABLE Fields add FieldTypeID  int Null                    ' +
        '                                                                ' +
        '                                                                ' +
        '                                     '
      '                          '
      'else'
      'alter TABLE Fields alter column FieldTypeID  int  Null'
      'GO'
      'if not exists (select * from syscolumns c,sysobjects o'
      
        'where o.id=c.id and o.name='#39'Fields'#39' and c.name='#39'ReferenceTableID' +
        #39')                                                              ' +
        '                                                                ' +
        '         '
      
        'alter TABLE Fields add ReferenceTableID  int Null               ' +
        '                                                                ' +
        '                                                                ' +
        '                                '
      '                               '
      'else'
      'alter TABLE Fields alter column ReferenceTableID  int  Null'
      'GO'
      'if not exists (select * from syscolumns c,sysobjects o'
      
        'where o.id=c.id and o.name='#39'Fields'#39' and c.name='#39'FieldGroupID'#39')  ' +
        '                                                                ' +
        '                                                                ' +
        '         '
      
        'alter TABLE Fields add FieldGroupID  int Null                   ' +
        '                                                                ' +
        '                                                                ' +
        '                                     '
      '                          '
      'else'
      'alter TABLE Fields alter column FieldGroupID  int  Null'
      'GO'
      'if not exists (select * from syscolumns c,sysobjects o'
      
        'where o.id=c.id and o.name='#39'Fields'#39' and c.name='#39'isboolean'#39')     ' +
        '                                                                ' +
        '                                                                ' +
        '         '
      
        'alter TABLE Fields add isboolean  bit Null                      ' +
        '                                                                ' +
        '                                                                ' +
        '                                       '
      '                        '
      'else'
      'alter TABLE Fields alter column isboolean  bit  Null'
      'GO'
      'if not exists (select * from syscolumns c,sysobjects o'
      
        'where o.id=c.id and o.name='#39'FieldType'#39' and c.name='#39'FieldTypeID'#39')' +
        '                                                                ' +
        '                                                                ' +
        '         '
      
        'alter TABLE FieldType add FieldTypeID  int Not Null default 0   ' +
        '                                                                ' +
        '                                                                ' +
        '                          '
      '                                     '
      'GO'
      'if not exists (select * from syscolumns c,sysobjects o'
      
        'where o.id=c.id and o.name='#39'FieldType'#39' and c.name='#39'FieldTypeTitl' +
        'e'#39')                                                             ' +
        '                                                                ' +
        '         '
      
        'alter TABLE FieldType add FieldTypeTitle  nvarchar(50) Not Null ' +
        'default 0                                                       ' +
        '                                                                ' +
        '                  '
      '                                             '
      'GO'
      'if not exists (select * from syscolumns c,sysobjects o'
      
        'where o.id=c.id and o.name='#39'FollowUp'#39' and c.name='#39'FollowUPID'#39')  ' +
        '                                                                ' +
        '                                                                ' +
        '         '
      
        'alter TABLE FollowUp add FollowUPID  int Not Null default 0     ' +
        '                                                                ' +
        '                                                                ' +
        '                          '
      '                                     '
      'GO'
      'if not exists (select * from syscolumns c,sysobjects o'
      
        'where o.id=c.id and o.name='#39'FollowUp'#39' and c.name='#39'StartFollowUpI' +
        'D'#39')                                                             ' +
        '                                                                ' +
        '         '
      
        'alter TABLE FollowUp add StartFollowUpID  int Null              ' +
        '                                                                ' +
        '                                                                ' +
        '                               '
      '                                '
      'else'
      'alter TABLE FollowUp alter column StartFollowUpID  int  Null'
      'GO'
      'if not exists (select * from syscolumns c,sysobjects o'
      
        'where o.id=c.id and o.name='#39'FollowUp'#39' and c.name='#39'FollowUPTypeID' +
        #39')                                                              ' +
        '                                                                ' +
        '         '
      
        'alter TABLE FollowUp add FollowUPTypeID  int Not Null default 0 ' +
        '                                                                ' +
        '                                                                ' +
        '                      '
      '                                         '
      'GO'
      'if not exists (select * from syscolumns c,sysobjects o'
      
        'where o.id=c.id and o.name='#39'FollowUp'#39' and c.name='#39'DoneStatusID'#39')' +
        '                                                                ' +
        '                                                                ' +
        '         '
      
        'alter TABLE FollowUp add DoneStatusID  tinyint Not Null  default' +
        ' ((1))                                                          ' +
        '                                                                ' +
        '                    '
      '                                           '
      'GO'
      'if not exists (select * from syscolumns c,sysobjects o'
      
        'where o.id=c.id and o.name='#39'FollowUp'#39' and c.name='#39'UserID'#39')      ' +
        '                                                                ' +
        '                                                                ' +
        '         '
      
        'alter TABLE FollowUp add UserID  int Not Null default 0         ' +
        '                                                                ' +
        '                                                                ' +
        '                             '
      '                                  '
      'GO'
      'if not exists (select * from syscolumns c,sysobjects o'
      
        'where o.id=c.id and o.name='#39'FollowUp'#39' and c.name='#39'Comment'#39')     ' +
        '                                                                ' +
        '                                                                ' +
        '         '
      
        'alter TABLE FollowUp add Comment  nvarchar(255) Null            ' +
        '                                                                ' +
        '                                                                ' +
        '                         '
      '                                      '
      'else'
      'alter TABLE FollowUp alter column Comment  nvarchar(255)  Null'
      'GO'
      'if not exists (select * from syscolumns c,sysobjects o'
      
        'where o.id=c.id and o.name='#39'FollowUp'#39' and c.name='#39'ToDoDate'#39')    ' +
        '                                                                ' +
        '                                                                ' +
        '         '
      
        'alter TABLE FollowUp add ToDoDate  char(10) Null                ' +
        '                                                                ' +
        '                                                                ' +
        '                             '
      '                                  '
      'else'
      'alter TABLE FollowUp alter column ToDoDate  char(10)  Null'
      'GO'
      'if not exists (select * from syscolumns c,sysobjects o'
      
        'where o.id=c.id and o.name='#39'FollowUp'#39' and c.name='#39'ToDoTime'#39')    ' +
        '                                                                ' +
        '                                                                ' +
        '         '
      
        'alter TABLE FollowUp add ToDoTime  char(5) Null                 ' +
        '                                                                ' +
        '                                                                ' +
        '                               '
      '                                '
      'else'
      'alter TABLE FollowUp alter column ToDoTime  char(5)  Null'
      'GO'
      'if not exists (select * from syscolumns c,sysobjects o'
      
        'where o.id=c.id and o.name='#39'FollowUp'#39' and c.name='#39'DoneComment'#39') ' +
        '                                                                ' +
        '                                                                ' +
        '         '
      
        'alter TABLE FollowUp add DoneComment  nvarchar(255) Null        ' +
        '                                                                ' +
        '                                                                ' +
        '                     '
      '                                          '
      'else'
      
        'alter TABLE FollowUp alter column DoneComment  nvarchar(255)  Nu' +
        'll'
      'GO'
      'if not exists (select * from syscolumns c,sysobjects o'
      
        'where o.id=c.id and o.name='#39'FollowUp'#39' and c.name='#39'HasAlarm'#39')    ' +
        '                                                                ' +
        '                                                                ' +
        '         '
      
        'alter TABLE FollowUp add HasAlarm  bit Null                     ' +
        '                                                                ' +
        '                                                                ' +
        '                                   '
      '                            '
      'else'
      'alter TABLE FollowUp alter column HasAlarm  bit  Null'
      'GO'
      'if not exists (select * from syscolumns c,sysobjects o'
      
        'where o.id=c.id and o.name='#39'FollowUp'#39' and c.name='#39'Letterid'#39')    ' +
        '                                                                ' +
        '                                                                ' +
        '         '
      
        'alter TABLE FollowUp add Letterid  int Null  default ((0))      ' +
        '                                                                ' +
        '                                                                ' +
        '                               '
      '                                '
      'else'
      'alter TABLE FollowUp alter column Letterid  int  Null'
      'GO'
      'if not exists (select * from syscolumns c,sysobjects o'
      
        'where o.id=c.id and o.name='#39'FollowUpType'#39' and c.name='#39'FollowUpTy' +
        'peID'#39')                                                          ' +
        '                                                                ' +
        '         '
      
        'alter TABLE FollowUpType add FollowUpTypeID  int Not Null defaul' +
        't 0                                                             ' +
        '                                                                ' +
        '                  '
      '                                             '
      'GO'
      'if not exists (select * from syscolumns c,sysobjects o'
      
        'where o.id=c.id and o.name='#39'FollowUpType'#39' and c.name='#39'FollowUpTy' +
        'peTitle'#39')                                                       ' +
        '                                                                ' +
        '         '
      
        'alter TABLE FollowUpType add FollowUpTypeTitle  nvarchar(50) Not' +
        ' Null default 0                                                 ' +
        '                                                                ' +
        '          '
      '                                                     '
      'GO'
      'if not exists (select * from syscolumns c,sysobjects o'
      
        'where o.id=c.id and o.name='#39'FromOrganizations'#39' and c.name='#39'ID'#39') ' +
        '                                                                ' +
        '                                                                ' +
        '         '
      
        'alter TABLE FromOrganizations add ID  int Not Null default 0    ' +
        '                                                                ' +
        '                                                                ' +
        '                          '
      '                                     '
      'GO'
      'if not exists (select * from syscolumns c,sysobjects o'
      
        'where o.id=c.id and o.name='#39'FromOrganizations'#39' and c.name='#39'Title' +
        #39')                                                              ' +
        '                                                                ' +
        '         '
      
        'alter TABLE FromOrganizations add Title  nvarchar(100) Null     ' +
        '                                                                ' +
        '                                                                ' +
        '                         '
      '                                      '
      'else'
      
        'alter TABLE FromOrganizations alter column Title  nvarchar(100) ' +
        ' Null'
      'GO'
      'if not exists (select * from syscolumns c,sysobjects o'
      
        'where o.id=c.id and o.name='#39'FromOrganizations'#39' and c.name='#39'Paren' +
        'tID'#39')                                                           ' +
        '                                                                ' +
        '         '
      
        'alter TABLE FromOrganizations add ParentID  int Not Null default' +
        ' 0                                                              ' +
        '                                                                ' +
        '                     '
      '                                          '
      'GO'
      'if not exists (select * from syscolumns c,sysobjects o'
      
        'where o.id=c.id and o.name='#39'FromOrganizations'#39' and c.name='#39'Phone' +
        #39')                                                              ' +
        '                                                                ' +
        '         '
      
        'alter TABLE FromOrganizations add Phone  nvarchar(30) Null      ' +
        '                                                                ' +
        '                                                                ' +
        '                      '
      '                                         '
      'else'
      
        'alter TABLE FromOrganizations alter column Phone  nvarchar(30)  ' +
        'Null'
      'GO'
      'if not exists (select * from syscolumns c,sysobjects o'
      
        'where o.id=c.id and o.name='#39'FromOrganizations'#39' and c.name='#39'Fax'#39')' +
        '                                                                ' +
        '                                                                ' +
        '         '
      
        'alter TABLE FromOrganizations add Fax  nvarchar(30) Null        ' +
        '                                                                ' +
        '                                                                ' +
        '                        '
      '                                       '
      'else'
      
        'alter TABLE FromOrganizations alter column Fax  nvarchar(30)  Nu' +
        'll'
      'GO'
      'if not exists (select * from syscolumns c,sysobjects o'
      
        'where o.id=c.id and o.name='#39'FromOrganizations'#39' and c.name='#39'Email' +
        #39')                                                              ' +
        '                                                                ' +
        '         '
      
        'alter TABLE FromOrganizations add Email  nvarchar(30) Null      ' +
        '                                                                ' +
        '                                                                ' +
        '                        '
      '                                       '
      'else'
      
        'alter TABLE FromOrganizations alter column Email  nvarchar(30)  ' +
        'Null'
      'GO'
      'if not exists (select * from syscolumns c,sysobjects o'
      
        'where o.id=c.id and o.name='#39'FromOrganizations'#39' and c.name='#39'Respo' +
        'nsibleStaffer'#39')                                                 ' +
        '                                                                ' +
        '      '
      '   '
      
        'alter TABLE FromOrganizations add ResponsibleStaffer  nvarchar(5' +
        '0) Null                                                         ' +
        '                                                                ' +
        '               '
      '                                                '
      'else'
      
        'alter TABLE FromOrganizations alter column ResponsibleStaffer  n' +
        'varchar(50)  Null'
      'GO'
      'if not exists (select * from syscolumns c,sysobjects o'
      
        'where o.id=c.id and o.name='#39'FromOrganizations'#39' and c.name='#39'IsAct' +
        'ive'#39')                                                           ' +
        '                                                                ' +
        '         '
      
        'alter TABLE FromOrganizations add IsActive  bit Null  default (1' +
        ')                                                               ' +
        '                                                                ' +
        '                        '
      '                                       '
      'else'
      'alter TABLE FromOrganizations alter column IsActive  bit  Null'
      'GO'
      'if not exists (select * from syscolumns c,sysobjects o'
      
        'where o.id=c.id and o.name='#39'FromOrganizations'#39' and c.name='#39'PreCo' +
        'de'#39')                                                            ' +
        '                                                                ' +
        '         '
      
        'alter TABLE FromOrganizations add PreCode  nvarchar(50) Null    ' +
        '                                                                ' +
        '                                                                ' +
        '                     '
      '                                          '
      'else'
      
        'alter TABLE FromOrganizations alter column PreCode  nvarchar(50)' +
        '  Null'
      'GO'
      'if not exists (select * from syscolumns c,sysobjects o'
      
        'where o.id=c.id and o.name='#39'FromOrganizations'#39' and c.name='#39'IsInn' +
        'erOrg'#39')                                                         ' +
        '                                                                ' +
        '         '
      
        'alter TABLE FromOrganizations add IsInnerOrg  bit Not Null  defa' +
        'ult (1)                                                         ' +
        '                                                                ' +
        '                   '
      '                                            '
      'GO'
      'if not exists (select * from syscolumns c,sysobjects o'
      
        'where o.id=c.id and o.name='#39'FromOrganizations'#39' and c.name='#39'Code'#39 +
        ')                                                               ' +
        '                                                                ' +
        '         '
      
        'alter TABLE FromOrganizations add Code  nvarchar(50) Null  defau' +
        'lt (1)                                                          ' +
        '                                                                ' +
        '                 '
      '                                              '
      'else'
      
        'alter TABLE FromOrganizations alter column Code  nvarchar(50)  N' +
        'ull'
      'GO'
      'if not exists (select * from syscolumns c,sysobjects o'
      
        'where o.id=c.id and o.name='#39'FromOrganizations'#39' and c.name='#39'Uniqu' +
        'eID'#39')                                                           ' +
        '                                                                ' +
        '         '
      
        'alter TABLE FromOrganizations add UniqueID  bigint Null         ' +
        '                                                                ' +
        '                                                                ' +
        '                           '
      '                                    '
      'else'
      
        'alter TABLE FromOrganizations alter column UniqueID  bigint  Nul' +
        'l'
      'GO'
      'if not exists (select * from syscolumns c,sysobjects o'
      
        'where o.id=c.id and o.name='#39'ImageData'#39' and c.name='#39'ImageDataID'#39')' +
        '                                                                ' +
        '                                                                ' +
        '         '
      
        'alter TABLE ImageData add ImageDataID  int Not Null default 0   ' +
        '                                                                ' +
        '                                                                ' +
        '                     '
      '                                          '
      'GO'
      'if not exists (select * from syscolumns c,sysobjects o'
      
        'where o.id=c.id and o.name='#39'ImageData'#39' and c.name='#39'Data'#39')       ' +
        '                                                                ' +
        '                                                                ' +
        '         '
      
        'alter TABLE ImageData add Data  image Null                      ' +
        '                                                                ' +
        '                                                                ' +
        '                                 '
      '                              '
      ''
      'GO'
      'if not exists (select * from syscolumns c,sysobjects o'
      
        'where o.id=c.id and o.name='#39'ImageData'#39' and c.name='#39'FileName'#39')   ' +
        '                                                                ' +
        '                                                                ' +
        '         '
      
        'alter TABLE ImageData add FileName  nvarchar(50) Null           ' +
        '                                                                ' +
        '                                                                ' +
        '                         '
      '                                      '
      'else'
      'alter TABLE ImageData alter column FileName  nvarchar(50)  Null'
      'GO'
      'if not exists (select * from syscolumns c,sysobjects o'
      
        'where o.id=c.id and o.name='#39'ImageData'#39' and c.name='#39'TableName'#39')  ' +
        '                                                                ' +
        '                                                                ' +
        '         '
      
        'alter TABLE ImageData add TableName  nvarchar(50) Not Null defau' +
        'lt 0                                                            ' +
        '                                                                ' +
        '               '
      '                                                '
      'GO'
      'if not exists (select * from syscolumns c,sysobjects o'
      
        'where o.id=c.id and o.name='#39'ImageData'#39' and c.name='#39'TableID'#39')    ' +
        '                                                                ' +
        '                                                                ' +
        '         '
      
        'alter TABLE ImageData add TableID  int Not Null default 0       ' +
        '                                                                ' +
        '                                                                ' +
        '                          '
      '                                     '
      'GO'
      'if not exists (select * from syscolumns c,sysobjects o'
      
        'where o.id=c.id and o.name='#39'ImageData'#39' and c.name='#39'Tag'#39')        ' +
        '                                                                ' +
        '                                                                ' +
        '         '
      
        'alter TABLE ImageData add Tag  int Null                         ' +
        '                                                                ' +
        '                                                                ' +
        '                                     '
      '                          '
      'else'
      'alter TABLE ImageData alter column Tag  int  Null'
      'GO'
      'if not exists (select * from syscolumns c,sysobjects o'
      
        'where o.id=c.id and o.name='#39'Letter'#39' and c.name='#39'LetterID'#39')      ' +
        '                                                                ' +
        '                                                                ' +
        '         '
      
        'alter TABLE Letter add LetterID  int Not Null default 0         ' +
        '                                                                ' +
        '                                                                ' +
        '                               '
      '                                '
      'GO'
      'if not exists (select * from syscolumns c,sysobjects o'
      
        'where o.id=c.id and o.name='#39'Letter'#39' and c.name='#39'IndicatorID'#39')   ' +
        '                                                                ' +
        '                                                                ' +
        '         '
      
        'alter TABLE Letter add IndicatorID  int Not Null default 0      ' +
        '                                                                ' +
        '                                                                ' +
        '                              '
      '                                 '
      'GO'
      'if not exists (select * from syscolumns c,sysobjects o'
      
        'where o.id=c.id and o.name='#39'Letter'#39' and c.name='#39'MYear'#39')         ' +
        '                                                                ' +
        '                                                                ' +
        '         '
      
        'alter TABLE Letter add MYear  tinyint Not Null default 0        ' +
        '                                                                ' +
        '                                                                ' +
        '                              '
      '                                 '
      'GO'
      'if not exists (select * from syscolumns c,sysobjects o'
      'where o.id=c.id and o.name='#39'Letter'#39' and c.name='#39'SecretariatID'#39')'
      
        'alter TABLE Letter add SecretariatID  int Not Null  default ((1)' +
        ')'
      'GO'
      'if not exists (select * from syscolumns c,sysobjects o'
      'where o.id=c.id and o.name='#39'Letter'#39' and c.name='#39'Letter_Type'#39')'
      'alter TABLE Letter add Letter_Type  int Not Null  default ((1))'
      ''
      ''
      'GO'
      'if not exists (select * from syscolumns c,sysobjects o'
      
        'where o.id=c.id and o.name='#39'Letter'#39' and c.name='#39'letterformat'#39')  ' +
        '                                                                ' +
        '                                                                ' +
        '         '
      
        'alter TABLE Letter add letterformat  int Not Null  default ((1))' +
        ' '
      'GO'
      'if not exists (select * from syscolumns c,sysobjects o'
      
        'where o.id=c.id and o.name='#39'Letter'#39' and c.name='#39'IncommingNO'#39')   ' +
        '                                                                ' +
        '                                                                ' +
        '         '
      
        'alter TABLE Letter add IncommingNO  nvarchar(50) Null           ' +
        '                                                                ' +
        '                                                                ' +
        '                          '
      '                                     '
      'else'
      'alter TABLE Letter alter column IncommingNO  nvarchar(50)  Null'
      'GO'
      'if not exists (select * from syscolumns c,sysobjects o'
      
        'where o.id=c.id and o.name='#39'Letter'#39' and c.name='#39'Incommingdate'#39') ' +
        '                                                                ' +
        '                                                                ' +
        '         '
      
        'alter TABLE Letter add Incommingdate  nvarchar(10) Null         ' +
        '                                                                ' +
        '                                                                ' +
        '                         '
      '                                      '
      'else'
      
        'alter TABLE Letter alter column Incommingdate  nvarchar(10)  Nul' +
        'l'
      'GO'
      'if not exists (select * from syscolumns c,sysobjects o'
      
        'where o.id=c.id and o.name='#39'Letter'#39' and c.name='#39'CenterNo'#39')      ' +
        '                                                                ' +
        '                                                                ' +
        '         '
      
        'alter TABLE Letter add CenterNo  nvarchar(50) Null              ' +
        '                                                                ' +
        '                                                                ' +
        '                             '
      '                                  '
      'else'
      'alter TABLE Letter alter column CenterNo  nvarchar(50)  Null'
      'GO'
      'if not exists (select * from syscolumns c,sysobjects o'
      
        'where o.id=c.id and o.name='#39'Letter'#39' and c.name='#39'CenterDate'#39')    ' +
        '                                                                ' +
        '                                                                ' +
        '         '
      
        'alter TABLE Letter add CenterDate  char(10) Null                ' +
        '                                                                ' +
        '                                                                ' +
        '                               '
      '                                '
      'else'
      'alter TABLE Letter alter column CenterDate  char(10)  Null'
      'GO'
      'if not exists (select * from syscolumns c,sysobjects o'
      
        'where o.id=c.id and o.name='#39'Letter'#39' and c.name='#39'FromOrgID'#39')     ' +
        '                                                                ' +
        '                                                                ' +
        '         '
      
        'alter TABLE Letter add FromOrgID  int Not Null  default ((-1))  ' +
        '                                                                ' +
        '                                                                ' +
        '                          '
      '                                     '
      'GO'
      'if not exists (select * from syscolumns c,sysobjects o'
      
        'where o.id=c.id and o.name='#39'Letter'#39' and c.name='#39'ToOrgID'#39')       ' +
        '                                                                ' +
        '                                                                ' +
        '         '
      
        'alter TABLE Letter add ToOrgID  int Not Null  default ((0))     ' +
        '                                                                ' +
        '                                                                ' +
        '                             '
      '                                  '
      'GO'
      'if not exists (select * from syscolumns c,sysobjects o'
      
        'where o.id=c.id and o.name='#39'Letter'#39' and c.name='#39'Signerid'#39')      ' +
        '                                                                ' +
        '                                                                ' +
        '         '
      
        'alter TABLE Letter add Signerid  nvarchar(50) Null              ' +
        '                                                                ' +
        '                                                                ' +
        '                                '
      '                               '
      'else'
      'alter TABLE Letter alter column Signerid  nvarchar(50)  Null'
      'GO'
      'if not exists (select * from syscolumns c,sysobjects o'
      
        'where o.id=c.id and o.name='#39'Letter'#39' and c.name='#39'ClassificationID' +
        #39')'
      
        'alter TABLE Letter add ClassificationID  int Not Null  default (' +
        '(1))'
      ''
      'GO'
      'if not exists (select * from syscolumns c,sysobjects o'
      'where o.id=c.id and o.name='#39'Letter'#39' and c.name='#39'UrgencyID'#39')'
      
        'alter TABLE Letter add UrgencyID  int Not Null  default ((1))   ' +
        '                                                                ' +
        '                                                                ' +
        '                           '
      '                          '
      'GO'
      'if not exists (select * from syscolumns c,sysobjects o'
      
        'where o.id=c.id and o.name='#39'Letter'#39' and c.name='#39'Memo'#39')          ' +
        '                                                                ' +
        '                                                                ' +
        '         '
      
        'alter TABLE Letter add Memo  nvarchar(2000) Null                ' +
        '                                                                ' +
        '                                                                ' +
        '                             '
      '                                  '
      'else'
      'alter TABLE Letter alter column Memo  nvarchar(2000)  Null'
      'GO'
      'if not exists (select * from syscolumns c,sysobjects o'
      
        'where o.id=c.id and o.name='#39'Letter'#39' and c.name='#39'AttachTitle'#39')   ' +
        '                                                                ' +
        '                                                                ' +
        '         '
      'alter TABLE Letter add AttachTitle  nvarchar(255) Null'
      'else'
      'alter TABLE Letter alter column AttachTitle  nvarchar(255)  Null'
      'GO'
      'if not exists (select * from syscolumns c,sysobjects o'
      
        'where o.id=c.id and o.name='#39'Letter'#39' and c.name='#39'NumberOfAttachPa' +
        'ges'#39')                                                           ' +
        '                                                                ' +
        '         '
      
        'alter TABLE Letter add NumberOfAttachPages  smallint Null  defau' +
        'lt ((1))                                                        ' +
        '                                                                ' +
        '                  '
      '                                             '
      'else'
      
        'alter TABLE Letter alter column NumberOfAttachPages  smallint  N' +
        'ull'
      'GO'
      'if not exists (select * from syscolumns c,sysobjects o'
      
        'where o.id=c.id and o.name='#39'Letter'#39' and c.name='#39'NumberOfPage'#39')  ' +
        '                                                                ' +
        '                                                                ' +
        '         '
      
        'alter TABLE Letter add NumberOfPage  tinyint Not Null  default (' +
        '(1))                                                            ' +
        '                                                                ' +
        '                     '
      '                                          '
      'GO'
      'if not exists (select * from syscolumns c,sysobjects o'
      'where o.id=c.id and o.name='#39'Letter'#39' and c.name='#39'ReceiveTypeID'#39')'
      
        'alter TABLE Letter add ReceiveTypeID  int Not Null  default ((1)' +
        ') '
      'GO'
      'if not exists (select * from syscolumns c,sysobjects o'
      
        'where o.id=c.id and o.name='#39'Letter'#39' and c.name='#39'UserID'#39')        ' +
        '                                                                ' +
        '                                                                ' +
        '         '
      
        'alter TABLE Letter add UserID  int Not Null  default ((0))      ' +
        '                                                                ' +
        '                                                                ' +
        '                              '
      '                                 '
      'GO'
      'if not exists (select * from syscolumns c,sysobjects o'
      
        'where o.id=c.id and o.name='#39'Letter'#39' and c.name='#39'RetroactionNo'#39') ' +
        '                                                                ' +
        '                                                                ' +
        '         '
      
        'alter TABLE Letter add RetroactionNo  nvarchar(50) Null         ' +
        '                                                                ' +
        '                                                                ' +
        '                           '
      '                                    '
      'else'
      
        'alter TABLE Letter alter column RetroactionNo  nvarchar(50)  Nul' +
        'l'
      'GO'
      'if not exists (select * from syscolumns c,sysobjects o'
      
        'where o.id=c.id and o.name='#39'Letter'#39' and c.name='#39'UserMemo'#39')      ' +
        '                                                                ' +
        '                                                                ' +
        '         '
      
        'alter TABLE Letter add UserMemo  nvarchar(255) Null             ' +
        '                                                                ' +
        '                                                                ' +
        '                           '
      '                                    '
      'else'
      'alter TABLE Letter alter column UserMemo  nvarchar(255)  Null'
      'GO'
      'if not exists (select * from syscolumns c,sysobjects o'
      
        'where o.id=c.id and o.name='#39'Letter'#39' and c.name='#39'RegistrationDate' +
        #39')                                                              ' +
        '                                                                ' +
        '         '
      
        'alter TABLE Letter add RegistrationDate  char(10) Not Null defau' +
        'lt 0                                                            ' +
        '                                                                ' +
        '                     '
      '                                          '
      'GO'
      'if not exists (select * from syscolumns c,sysobjects o'
      
        'where o.id=c.id and o.name='#39'Letter'#39' and c.name='#39'RegistrationTime' +
        #39')                                                              ' +
        '                                                                ' +
        '         '
      
        'alter TABLE Letter add RegistrationTime  varchar(5) Not Null def' +
        'ault 0                                                          ' +
        '                                                                ' +
        '                    '
      '                                           '
      'GO'
      'if not exists (select * from syscolumns c,sysobjects o'
      
        'where o.id=c.id and o.name='#39'Letter'#39' and c.name='#39'FollowLetterNo'#39')' +
        '                                                                ' +
        '                                                                ' +
        '         '
      
        'alter TABLE Letter add FollowLetterNo  nvarchar(50) Null        ' +
        '                                                                ' +
        '                                                                ' +
        '                           '
      '                                    '
      'else'
      
        'alter TABLE Letter alter column FollowLetterNo  nvarchar(50)  Nu' +
        'll'
      'GO'
      'if not exists (select * from syscolumns c,sysobjects o'
      
        'where o.id=c.id and o.name='#39'Letter'#39' and c.name='#39'ToStaffer'#39')     ' +
        '                                                                ' +
        '                                                                ' +
        '         '
      
        'alter TABLE Letter add ToStaffer  nvarchar(50) Null             ' +
        '                                                                ' +
        '                                                                ' +
        '                              '
      '                                 '
      'else'
      'alter TABLE Letter alter column ToStaffer  nvarchar(50)  Null'
      'GO'
      'if not exists (select * from syscolumns c,sysobjects o'
      
        'where o.id=c.id and o.name='#39'Letter'#39' and c.name='#39'SentLetterID'#39')  ' +
        '                                                                ' +
        '                                                                ' +
        '         '
      
        'alter TABLE Letter add SentLetterID  int Null                   ' +
        '                                                                ' +
        '                                                                ' +
        '                                    '
      '                           '
      'else'
      'alter TABLE Letter alter column SentLetterID  int  Null'
      'GO'
      'if not exists (select * from syscolumns c,sysobjects o'
      
        'where o.id=c.id and o.name='#39'Letter'#39' and c.name='#39'TemplateID'#39')    ' +
        '                                                                ' +
        '                                                                ' +
        '         '
      
        'alter TABLE Letter add TemplateID  int Null                     ' +
        '                                                                ' +
        '                                                                ' +
        '                                    '
      '                           '
      'else'
      'alter TABLE Letter alter column TemplateID  int  Null'
      'GO'
      'if not exists (select * from syscolumns c,sysobjects o'
      
        'where o.id=c.id and o.name='#39'Letter'#39' and c.name='#39'HeaderID'#39')      ' +
        '                                                                ' +
        '                                                                ' +
        '         '
      
        'alter TABLE Letter add HeaderID  int Null                       ' +
        '                                                                ' +
        '                                                                ' +
        '                                     '
      '                          '
      'else'
      'alter TABLE Letter alter column HeaderID  int  Null'
      'GO'
      'if not exists (select * from syscolumns c,sysobjects o'
      
        'where o.id=c.id and o.name='#39'Letter'#39' and c.name='#39'LetterRecommites' +
        #39')                                                              ' +
        '                                                                ' +
        '         '
      
        'alter TABLE Letter add LetterRecommites  nvarchar(500) Null     ' +
        '                                                                ' +
        '                                                                ' +
        '                       '
      '                                        '
      'else'
      
        'alter TABLE Letter alter column LetterRecommites  nvarchar(500) ' +
        ' Null'
      'GO'
      'if not exists (select * from syscolumns c,sysobjects o'
      
        'where o.id=c.id and o.name='#39'Letter'#39' and c.name='#39'PreCode'#39')       ' +
        '                                                                ' +
        '                                                                ' +
        '         '
      
        'alter TABLE Letter add PreCode  nvarchar(50) Null               ' +
        '                                                                ' +
        '                                                                ' +
        '                              '
      '                                 '
      'else'
      'alter TABLE Letter alter column PreCode  nvarchar(50)  Null'
      'GO'
      'if not exists (select * from syscolumns c,sysobjects o'
      
        'where o.id=c.id and o.name='#39'Letter'#39' and c.name='#39'fromstaffer'#39')   ' +
        '                                                                ' +
        '                                                                ' +
        '         '
      
        'alter TABLE Letter add fromstaffer  nvarchar(50) Null           ' +
        '                                                                ' +
        '                                                                ' +
        '                             '
      '                                  '
      'else'
      'alter TABLE Letter alter column fromstaffer  nvarchar(50)  Null'
      'GO'
      'if not exists (select * from syscolumns c,sysobjects o'
      
        'where o.id=c.id and o.name='#39'Letter'#39' and c.name='#39'Finalized'#39')     ' +
        '                                                                ' +
        '                                                                ' +
        '         '
      
        'alter TABLE Letter add Finalized  bit Not Null  default ((1))   ' +
        '                                                                ' +
        '                                                                ' +
        '                               '
      '                                '
      'GO'
      'if not exists (select * from syscolumns c,sysobjects o'
      'where o.id=c.id and o.name='#39'Letter'#39' and c.name='#39'SendStatusID'#39')'
      
        'alter TABLE Letter add SendStatusID  int Not Null  default ((1))' +
        ' '
      'GO'
      'if not exists (select * from syscolumns c,sysobjects o'
      
        'where o.id=c.id and o.name='#39'Letter'#39' and c.name='#39'LastUpdate'#39')    ' +
        '                                                                ' +
        '                                                                ' +
        '         '
      
        'alter TABLE Letter add LastUpdate  datetime Not Null  default (g' +
        'etdate())                                                       ' +
        '                                                                ' +
        '                 '
      '                                              '
      'GO'
      'if not exists (select * from syscolumns c,sysobjects o'
      
        'where o.id=c.id and o.name='#39'Letter'#39' and c.name='#39'UserTableID'#39')   ' +
        '                                                                ' +
        '                                                                ' +
        '         '
      
        'alter TABLE Letter add UserTableID  int Null                    ' +
        '                                                                ' +
        '                                                                ' +
        '                                    '
      '                           '
      'else'
      'alter TABLE Letter alter column UserTableID  int  Null'
      'GO'
      'if not exists (select * from syscolumns c,sysobjects o'
      
        'where o.id=c.id and o.name='#39'Letter'#39' and c.name='#39'UniqueID'#39')      ' +
        '                                                                ' +
        '                                                                ' +
        '         '
      
        'alter TABLE Letter add UniqueID  bigint Null                    ' +
        '                                                                ' +
        '                                                                ' +
        '                                    '
      '                           '
      'else'
      'alter TABLE Letter alter column UniqueID  bigint  Null'
      'GO'
      'if not exists (select * from syscolumns c,sysobjects o'
      
        'where o.id=c.id and o.name='#39'Letter'#39' and c.name='#39'Archived'#39')      ' +
        '                                                                ' +
        '                                                                ' +
        '         '
      
        'alter TABLE Letter add Archived  bit Not Null  default ((0))    ' +
        '                                                                ' +
        '                                                                ' +
        '                             '
      '                                  '
      'GO'
      'if not exists (select * from syscolumns c,sysobjects o'
      
        'where o.id=c.id and o.name='#39'Letter'#39' and c.name='#39'SubjectDescripti' +
        'on'#39')                                                            ' +
        '                                                                ' +
        '         '
      
        'alter TABLE Letter add SubjectDescription  nvarchar(255) Null   ' +
        '                                                                ' +
        '                                                                ' +
        '                        '
      '                                       '
      'else'
      
        'alter TABLE Letter alter column SubjectDescription  nvarchar(255' +
        ')  Null'
      'GO'
      'if not exists (select * from syscolumns c,sysobjects o'
      
        'where o.id=c.id and o.name='#39'Letter'#39' and c.name='#39'SubjectID'#39')     ' +
        '                                                                ' +
        '                                                                ' +
        '         '
      
        'alter TABLE Letter add SubjectID  int Null                      ' +
        '                                                                ' +
        '                                                                ' +
        '                                      '
      '                         '
      'else'
      'alter TABLE Letter alter column SubjectID  int  Null'
      'GO'
      'if not exists (select * from syscolumns c,sysobjects o'
      
        'where o.id=c.id and o.name='#39'Letter'#39' and c.name='#39'LatestActionType' +
        'ID'#39')                                                            ' +
        '                                                                ' +
        '         '
      'alter TABLE Letter add LatestActionTypeID  int Null   '
      'GO'
      'if not exists (select * from syscolumns c,sysobjects o'
      
        'where o.id=c.id and o.name='#39'Letter'#39' and c.name='#39'LatestActionReas' +
        'on'#39')                                                            ' +
        '                                                                ' +
        '         '
      
        'alter TABLE Letter add LatestActionReason  nvarchar(255) Null   ' +
        '                                                                ' +
        '                                                                ' +
        '                      '
      '                                         '
      'else'
      
        'alter TABLE Letter alter column LatestActionReason  nvarchar(255' +
        ')  Null'
      'GO'
      'if not exists (select * from syscolumns c,sysobjects o'
      
        'where o.id=c.id and o.name='#39'Letter'#39' and c.name='#39'DeadLineDate'#39')  ' +
        '                                                                ' +
        '                                                                ' +
        '         '
      
        'alter TABLE Letter add DeadLineDate  char(10) Null              ' +
        '                                                                ' +
        '                                                                ' +
        '                              '
      '                                 '
      'else'
      'alter TABLE Letter alter column DeadLineDate  char(10)  Null'
      'GO'
      'if not exists (select * from syscolumns c,sysobjects o'
      
        'where o.id=c.id and o.name='#39'Letter'#39' and c.name='#39'ActionTypeID'#39')  ' +
        '                                                                ' +
        '                                                                ' +
        '         '
      
        'alter TABLE Letter add ActionTypeID  int Not Null  default ((1))' +
        '                                                                ' +
        '                                                                ' +
        '                          '
      '                                     '
      'GO'
      'if not exists (select * from syscolumns c,sysobjects o'
      
        'where o.id=c.id and o.name='#39'Letter'#39' and c.name='#39'UserTableID2'#39')  ' +
        '                                                                ' +
        '                                                                ' +
        '         '
      
        'alter TABLE Letter add UserTableID2  int Null                   ' +
        '                                                                ' +
        '                                                                ' +
        '                                   '
      '                            '
      'else'
      'alter TABLE Letter alter column UserTableID2  int  Null'
      'GO'
      'if not exists (select * from syscolumns c,sysobjects o'
      
        'where o.id=c.id and o.name='#39'Letter'#39' and c.name='#39'EmailNuFromDate'#39 +
        ')                                                               ' +
        '                                                                ' +
        '         '
      
        'alter TABLE Letter add EmailNuFromDate  nvarchar(20) Null       ' +
        '                                                                ' +
        '                                                                ' +
        '                        '
      '                                       '
      'else'
      
        'alter TABLE Letter alter column EmailNuFromDate  nvarchar(20)  N' +
        'ull'
      'GO'
      'if not exists (select * from syscolumns c,sysobjects o'
      
        'where o.id=c.id and o.name='#39'LetterArchiveFolder'#39' and c.name='#39'Let' +
        'terArchiveID'#39')                                                  ' +
        '                                                                ' +
        '        '
      ' '
      
        'alter TABLE LetterArchiveFolder add LetterArchiveID  int Not Nul' +
        'l default 0                                                     ' +
        '                                                                ' +
        '                 '
      '                                              '
      'GO'
      'if not exists (select * from syscolumns c,sysobjects o'
      
        'where o.id=c.id and o.name='#39'LetterArchiveFolder'#39' and c.name='#39'Arc' +
        'hiveFolderID'#39')                                                  ' +
        '                                                                ' +
        '        '
      ' '
      
        'alter TABLE LetterArchiveFolder add ArchiveFolderID  int Not Nul' +
        'l default 0                                                     ' +
        '                                                                ' +
        '                 '
      '                                              '
      'GO'
      'if not exists (select * from syscolumns c,sysobjects o'
      
        'where o.id=c.id and o.name='#39'LetterArchiveFolder'#39' and c.name='#39'Let' +
        'terID'#39')                                                         ' +
        '                                                                ' +
        '         '
      
        'alter TABLE LetterArchiveFolder add LetterID  int Not Null defau' +
        'lt 0                                                            ' +
        '                                                                ' +
        '                      '
      '                                         '
      'GO'
      'if not exists (select * from syscolumns c,sysobjects o'
      
        'where o.id=c.id and o.name='#39'LetterArchiveFolder'#39' and c.name='#39'Arc' +
        'hiveDate'#39')                                                      ' +
        '                                                                ' +
        '         '
      
        'alter TABLE LetterArchiveFolder add ArchiveDate  char(10) Not Nu' +
        'll default 0                                                    ' +
        '                                                                ' +
        '              '
      '                                                 '
      'GO'
      'if not exists (select * from syscolumns c,sysobjects o'
      
        'where o.id=c.id and o.name='#39'LetterArchiveFolder'#39' and c.name='#39'Pag' +
        'e'#39')                                                             ' +
        '                                                                ' +
        '         '
      
        'alter TABLE LetterArchiveFolder add Page  int Null              ' +
        '                                                                ' +
        '                                                                ' +
        '                                '
      '                               '
      'else'
      'alter TABLE LetterArchiveFolder alter column Page  int  Null'
      'GO'
      'if not exists (select * from syscolumns c,sysobjects o'
      
        'where o.id=c.id and o.name='#39'LetterArchiveFolder'#39' and c.name='#39'Arc' +
        'hiveNotes'#39')                                                     ' +
        '                                                                ' +
        '         '
      
        'alter TABLE LetterArchiveFolder add ArchiveNotes  nvarchar(50) N' +
        'ull                                                             ' +
        '                                                                ' +
        '                  '
      '                                             '
      'else'
      
        'alter TABLE LetterArchiveFolder alter column ArchiveNotes  nvarc' +
        'har(50)  Null'
      'GO'
      'if not exists (select * from syscolumns c,sysobjects o'
      
        'where o.id=c.id and o.name='#39'LetterArchiveFolder'#39' and c.name='#39'Use' +
        'rID'#39')                                                           ' +
        '                                                                ' +
        '         '
      
        'alter TABLE LetterArchiveFolder add UserID  int Not Null  defaul' +
        't (0)                                                           ' +
        '                                                                ' +
        '                      '
      '                                         '
      'GO'
      'if not exists (select * from syscolumns c,sysobjects o'
      
        'where o.id=c.id and o.name='#39'LetterData'#39' and c.name='#39'LetterDataID' +
        #39')                                                              ' +
        '                                                                ' +
        '         '
      
        'alter TABLE LetterData add LetterDataID  int Not Null default 0 ' +
        '                                                                ' +
        '                                                                ' +
        '                        '
      '                                       '
      'GO'
      'if not exists (select * from syscolumns c,sysobjects o'
      
        'where o.id=c.id and o.name='#39'LetterData'#39' and c.name='#39'LetterID'#39')  ' +
        '                                                                ' +
        '                                                                ' +
        '         '
      
        'alter TABLE LetterData add LetterID  int Not Null default 0     ' +
        '                                                                ' +
        '                                                                ' +
        '                            '
      '                                   '
      'GO'
      'if not exists (select * from syscolumns c,sysobjects o'
      
        'where o.id=c.id and o.name='#39'LetterData'#39' and c.name='#39'PageNumber'#39')' +
        '                                                                ' +
        '                                                                ' +
        '         '
      
        'alter TABLE LetterData add PageNumber  tinyint Not Null  default' +
        ' (0)                                                            ' +
        '                                                                ' +
        '                    '
      '                                           '
      'GO'
      'if not exists (select * from syscolumns c,sysobjects o'
      
        'where o.id=c.id and o.name='#39'LetterData'#39' and c.name='#39'Image'#39')     ' +
        '                                                                ' +
        '                                                                ' +
        '         '
      
        'alter TABLE LetterData add Image  image Null                    ' +
        '                                                                ' +
        '                                                                ' +
        '                                 '
      '                              '
      ''
      'GO'
      'if not exists (select * from syscolumns c,sysobjects o'
      
        'where o.id=c.id and o.name='#39'LetterData'#39' and c.name='#39'extention'#39') ' +
        '                                                                ' +
        '                                                                ' +
        '         '
      
        'alter TABLE LetterData add extention  tinyint Not Null  default ' +
        '(1)                                                             ' +
        '                                                                ' +
        '                        '
      '                                       '
      'GO'
      'if not exists (select * from syscolumns c,sysobjects o'
      
        'where o.id=c.id and o.name='#39'LetterData'#39' and c.name='#39'Description'#39 +
        ')                                                               ' +
        '                                                                ' +
        '         '
      
        'alter TABLE LetterData add Description  nvarchar(200) Null      ' +
        '                                                                ' +
        '                                                                ' +
        '                         '
      '                                      '
      'else'
      
        'alter TABLE LetterData alter column Description  nvarchar(200)  ' +
        'Null'
      'GO'
      'if not exists (select * from syscolumns c,sysobjects o'
      
        'where o.id=c.id and o.name='#39'LetterData'#39' and c.name='#39'LastUpdate'#39')' +
        '                                                                ' +
        '                                                                ' +
        '         '
      
        'alter TABLE LetterData add LastUpdate  datetime Null  default (g' +
        'etdate())                                                       ' +
        '                                                                ' +
        '                '
      '                                               '
      'else'
      'alter TABLE LetterData alter column LastUpdate  datetime  Null'
      'GO'
      'if not exists (select * from syscolumns c,sysobjects o'
      
        'where o.id=c.id and o.name='#39'LetterData'#39' and c.name='#39'UniqueID'#39')  ' +
        '                                                                ' +
        '                                                                ' +
        '         '
      
        'alter TABLE LetterData add UniqueID  bigint Null                ' +
        '                                                                ' +
        '                                                                ' +
        '                                 '
      '                              '
      'else'
      'alter TABLE LetterData alter column UniqueID  bigint  Null'
      'GO'
      'if not exists (select * from syscolumns c,sysobjects o'
      
        'where o.id=c.id and o.name='#39'LetterData'#39' and c.name='#39'ListItemsID'#39 +
        ')                                                               ' +
        '                                                                ' +
        '         '
      
        'alter TABLE LetterData add ListItemsID  int Null                ' +
        '                                                                ' +
        '                                                                ' +
        '                                  '
      '                             '
      'else'
      'alter TABLE LetterData alter column ListItemsID  int  Null'
      'GO'
      'if not exists (select * from syscolumns c,sysobjects o'
      
        'where o.id=c.id and o.name='#39'LetterFieldValue'#39' and c.name='#39'Letter' +
        'FieldValueID'#39')                                                  ' +
        '                                                                ' +
        '         '
      
        'alter TABLE LetterFieldValue add LetterFieldValueID  int Not Nul' +
        'l default 0                                                     ' +
        '                                                                ' +
        '                   '
      '                                            '
      'GO'
      'if not exists (select * from syscolumns c,sysobjects o'
      
        'where o.id=c.id and o.name='#39'LetterFieldValue'#39' and c.name='#39'Letter' +
        'ID'#39')                                                            ' +
        '                                                                ' +
        '         '
      
        'alter TABLE LetterFieldValue add LetterID  int Not Null default ' +
        '0                                                               ' +
        '                                                                ' +
        '                         '
      '                                      '
      'GO'
      'if not exists (select * from syscolumns c,sysobjects o'
      
        'where o.id=c.id and o.name='#39'LetterFieldValue'#39' and c.name='#39'FieldI' +
        'D'#39')                                                             ' +
        '                                                                ' +
        '         '
      
        'alter TABLE LetterFieldValue add FieldID  int Not Null default 0' +
        '                                                                ' +
        '                                                                ' +
        '                           '
      '                                    '
      'GO'
      'if not exists (select * from syscolumns c,sysobjects o'
      
        'where o.id=c.id and o.name='#39'LetterFieldValue'#39' and c.name='#39'FieldV' +
        'alue'#39')                                                          ' +
        '                                                                ' +
        '         '
      
        'alter TABLE LetterFieldValue add FieldValue  nvarchar(2000) Null' +
        '                                                                ' +
        '                                                                ' +
        '                       '
      '                                        '
      'else'
      
        'alter TABLE LetterFieldValue alter column FieldValue  nvarchar(2' +
        '000)  Null'
      'GO'
      'if not exists (select * from syscolumns c,sysobjects o'
      
        'where o.id=c.id and o.name='#39'LetterFieldValue'#39' and c.name='#39'unique' +
        'ID'#39')                                                            ' +
        '                                                                ' +
        '         '
      
        'alter TABLE LetterFieldValue add uniqueID  bigint Null          ' +
        '                                                                ' +
        '                                                                ' +
        '                               '
      '                                '
      'else'
      'alter TABLE LetterFieldValue alter column uniqueID  bigint  Null'
      'GO'
      'if not exists (select * from syscolumns c,sysobjects o'
      
        'where o.id=c.id and o.name='#39'LetterFieldValue'#39' and c.name='#39'LastUp' +
        'date'#39')                                                          ' +
        '                                                                ' +
        '         '
      
        'alter TABLE LetterFieldValue add LastUpdate  datetime Null  defa' +
        'ult (getdate())                                                 ' +
        '                                                                ' +
        '              '
      '                                                 '
      'else'
      
        'alter TABLE LetterFieldValue alter column LastUpdate  datetime  ' +
        'Null'
      'GO'
      'if not exists (select * from syscolumns c,sysobjects o'
      
        'where o.id=c.id and o.name='#39'LetterFieldValue'#39' and c.name='#39'Insert' +
        'UserID'#39')                                                        ' +
        '                                                                ' +
        '         '
      
        'alter TABLE LetterFieldValue add InsertUserID  int Not Null  def' +
        'ault (0)                                                        ' +
        '                                                                ' +
        '                     '
      '                                          '
      'GO'
      'if not exists (select * from syscolumns c,sysobjects o'
      
        'where o.id=c.id and o.name='#39'LetterFieldValue'#39' and c.name='#39'FormOr' +
        'der'#39')                                                           ' +
        '                                                                ' +
        '         '
      
        'alter TABLE LetterFieldValue add FormOrder  tinyint Not Null  de' +
        'fault (1)                                                       ' +
        '                                                                ' +
        '                    '
      '                                           '
      'GO'
      'if not exists (select * from syscolumns c,sysobjects o'
      
        'where o.id=c.id and o.name='#39'LetterFormats'#39' and c.name='#39'Code'#39')   ' +
        '                                                                ' +
        '                                                                ' +
        '         '
      
        'alter TABLE LetterFormats add Code  int Not Null default 0      ' +
        '                                                                ' +
        '                                                                ' +
        '                          '
      '                                     '
      ''
      'GO'
      'if not exists (select * from syscolumns c,sysobjects o'
      
        'where o.id=c.id and o.name='#39'LetterFormats'#39' and c.name='#39'Title'#39')  ' +
        '                                                                ' +
        '                                                                ' +
        '         '
      
        'alter TABLE LetterFormats add Title  nvarchar(50) Null          ' +
        '                                                                ' +
        '                                                                ' +
        '                             '
      '                                  '
      'else'
      'alter TABLE LetterFormats alter column Title  nvarchar(50)  Null'
      'GO'
      'if not exists (select * from syscolumns c,sysobjects o'
      
        'where o.id=c.id and o.name='#39'LetterRelation'#39' and c.name='#39'LetterRe' +
        'lationID'#39')                                                      ' +
        '                                                                ' +
        '         '
      
        'alter TABLE LetterRelation add LetterRelationID  int Not Null de' +
        'fault 0                                                         ' +
        '                                                                ' +
        '                     '
      '                                          '
      'GO'
      'if not exists (select * from syscolumns c,sysobjects o'
      
        'where o.id=c.id and o.name='#39'LetterRelation'#39' and c.name='#39'MainLett' +
        'erID'#39')                                                          ' +
        '                                                                ' +
        '         '
      
        'alter TABLE LetterRelation add MainLetterID  int Not Null defaul' +
        't 0                                                             ' +
        '                                                                ' +
        '                       '
      '                                        '
      'GO'
      'if not exists (select * from syscolumns c,sysobjects o'
      
        'where o.id=c.id and o.name='#39'LetterRelation'#39' and c.name='#39'SubLette' +
        'rID'#39')                                                           ' +
        '                                                                ' +
        '         '
      
        'alter TABLE LetterRelation add SubLetterID  int Not Null default' +
        ' 0                                                              ' +
        '                                                                ' +
        '                       '
      '                                        '
      'GO'
      'if not exists (select * from syscolumns c,sysobjects o'
      
        'where o.id=c.id and o.name='#39'LetterRelation'#39' and c.name='#39'Ord'#39')   ' +
        '                                                                ' +
        '                                                                ' +
        '         '
      
        'alter TABLE LetterRelation add Ord  tinyint Not Null  default (1' +
        ')                                                               ' +
        '                                                                ' +
        '                          '
      '                                     '
      'GO'
      'if not exists (select * from syscolumns c,sysobjects o'
      
        'where o.id=c.id and o.name='#39'LetterTemplate'#39' and c.name='#39'ID'#39')    ' +
        '                                                                ' +
        '                                                                ' +
        '         '
      
        'alter TABLE LetterTemplate add ID  int Not Null default 0       ' +
        '                                                                ' +
        '                                                                ' +
        '                            '
      '                                   '
      'GO'
      'if not exists (select * from syscolumns c,sysobjects o'
      
        'where o.id=c.id and o.name='#39'LetterTemplate'#39' and c.name='#39'Document' +
        #39')                                                              ' +
        '                                                                ' +
        '         '
      
        'alter TABLE LetterTemplate add Document  image Null             ' +
        '                                                                ' +
        '                                                                ' +
        '                           '
      '                                    '
      ''
      'GO'
      'if not exists (select * from syscolumns c,sysobjects o'
      
        'where o.id=c.id and o.name='#39'LetterTemplate'#39' and c.name='#39'Title'#39') ' +
        '                                                                ' +
        '                                                                ' +
        '         '
      
        'alter TABLE LetterTemplate add Title  nvarchar(50) Null         ' +
        '                                                                ' +
        '                                                                ' +
        '                            '
      '                                   '
      'else'
      
        'alter TABLE LetterTemplate alter column Title  nvarchar(50)  Nul' +
        'l'
      'GO'
      'if not exists (select * from syscolumns c,sysobjects o'
      
        'where o.id=c.id and o.name='#39'LetterTemplate'#39' and c.name='#39'validHea' +
        'der'#39')                                                           ' +
        '                                                                ' +
        '         '
      
        'alter TABLE LetterTemplate add validHeader  smallint Null       ' +
        '                                                                ' +
        '                                                                ' +
        '                           '
      '                                    '
      'else'
      
        'alter TABLE LetterTemplate alter column validHeader  smallint  N' +
        'ull'
      'GO'
      'if not exists (select * from syscolumns c,sysobjects o'
      
        'where o.id=c.id and o.name='#39'LetterTemplate'#39' and c.name='#39'Template' +
        'GroupID'#39')                                                       ' +
        '                                                                ' +
        '        '
      ' '
      
        'alter TABLE LetterTemplate add TemplateGroupID  int Not Null  de' +
        'fault (1)                                                       ' +
        '                                                                ' +
        '                '
      '                                               '
      'GO'
      'if not exists (select * from syscolumns c,sysobjects o'
      
        'where o.id=c.id and o.name='#39'LetterText'#39' and c.name='#39'LetterID'#39')  ' +
        '                                                                ' +
        '                                                                ' +
        '         '
      
        'alter TABLE LetterText add LetterID  int Null                   ' +
        '                                                                ' +
        '                                                                ' +
        '                                    '
      '                           '
      'else'
      'alter TABLE LetterText alter column LetterID  int  Null'
      'GO'
      'if not exists (select * from syscolumns c,sysobjects o'
      
        'where o.id=c.id and o.name='#39'LetterText'#39' and c.name='#39'LetterFormat' +
        #39')                                                              ' +
        '                                                                ' +
        '         '
      
        'alter TABLE LetterText add LetterFormat  int Not Null  default (' +
        '1)                                                              ' +
        '                                                                ' +
        '                        '
      '                                       '
      'GO'
      'if not exists (select * from syscolumns c,sysobjects o'
      
        'where o.id=c.id and o.name='#39'LetterText'#39' and c.name='#39'TypeText'#39')  ' +
        '                                                                ' +
        '                                                                ' +
        '         '
      
        'alter TABLE LetterText add TypeText  ntext Null                 ' +
        '                                                                ' +
        '                                                                ' +
        '                               '
      '                                '
      ''
      'GO'
      'if not exists (select * from syscolumns c,sysobjects o'
      
        'where o.id=c.id and o.name='#39'LetterText'#39' and c.name='#39'Html'#39')      ' +
        '                                                                ' +
        '                                                                ' +
        '         '
      
        'alter TABLE LetterText add Html  ntext Null                     ' +
        '                                                                ' +
        '                                                                ' +
        '                                    '
      '                           '
      ''
      'GO'
      'if not exists (select * from syscolumns c,sysobjects o'
      
        'where o.id=c.id and o.name='#39'LetterTypes'#39' and c.name='#39'ID'#39')       ' +
        '                                                                ' +
        '                                                                ' +
        '         '
      
        'alter TABLE LetterTypes add ID  int Not Null default 0          ' +
        '                                                                ' +
        '                                                                ' +
        '                              '
      '                                 '
      'GO'
      'if not exists (select * from syscolumns c,sysobjects o'
      
        'where o.id=c.id and o.name='#39'LetterTypes'#39' and c.name='#39'Title'#39')    ' +
        '                                                                ' +
        '                                                                ' +
        '         '
      
        'alter TABLE LetterTypes add Title  nvarchar(50) Null            ' +
        '                                                                ' +
        '                                                                ' +
        '                              '
      '                                 '
      'else'
      'alter TABLE LetterTypes alter column Title  nvarchar(50)  Null'
      'GO'
      'if not exists (select * from syscolumns c,sysobjects o'
      
        'where o.id=c.id and o.name='#39'LetterTypes'#39' and c.name='#39'PreCode'#39')  ' +
        '                                                                ' +
        '                                                                ' +
        '         '
      
        'alter TABLE LetterTypes add PreCode  nvarchar(10) Null          ' +
        '                                                                ' +
        '                                                                ' +
        '                         '
      '                                      '
      'else'
      'alter TABLE LetterTypes alter column PreCode  nvarchar(10)  Null'
      'GO'
      'if not exists (select * from syscolumns c,sysobjects o'
      
        'where o.id=c.id and o.name='#39'LifeTips'#39' and c.name='#39'id'#39')          ' +
        '                                                                ' +
        '                                                                ' +
        '         '
      
        'alter TABLE LifeTips add id  int Not Null default 0             ' +
        '                                                                ' +
        '                                                                ' +
        '                                    '
      '                           '
      'GO'
      'if not exists (select * from syscolumns c,sysobjects o'
      
        'where o.id=c.id and o.name='#39'LifeTips'#39' and c.name='#39'title'#39')       ' +
        '                                                                ' +
        '                                                                ' +
        '         '
      
        'alter TABLE LifeTips add title  nvarchar(150) Null              ' +
        '                                                                ' +
        '                                                                ' +
        '                                  '
      '                             '
      'else'
      'alter TABLE LifeTips alter column title  nvarchar(150)  Null'
      'GO'
      'if not exists (select * from syscolumns c,sysobjects o'
      
        'where o.id=c.id and o.name='#39'ListItems'#39' and c.name='#39'ListItemsID'#39')' +
        '                                                                ' +
        '                                                                ' +
        '         '
      
        'alter TABLE ListItems add ListItemsID  int Not Null default 0   ' +
        '                                                                ' +
        '                                                                ' +
        '                            '
      '                                   '
      'GO'
      'if not exists (select * from syscolumns c,sysobjects o'
      
        'where o.id=c.id and o.name='#39'ListItems'#39' and c.name='#39'ListID'#39')     ' +
        '                                                                ' +
        '                                                                ' +
        '         '
      
        'alter TABLE ListItems add ListID  tinyint Not Null default 0    ' +
        '                                                                ' +
        '                                                                ' +
        '                              '
      '                                 '
      'GO'
      'if not exists (select * from syscolumns c,sysobjects o'
      
        'where o.id=c.id and o.name='#39'ListItems'#39' and c.name='#39'KeyValue'#39')   ' +
        '                                                                ' +
        '                                                                ' +
        '         '
      
        'alter TABLE ListItems add KeyValue  int Not Null default 0      ' +
        '                                                                ' +
        '                                                                ' +
        '                            '
      '                                   '
      'GO'
      'if not exists (select * from syscolumns c,sysobjects o'
      
        'where o.id=c.id and o.name='#39'ListItems'#39' and c.name='#39'Title'#39')      ' +
        '                                                                ' +
        '                                                                ' +
        '         '
      
        'alter TABLE ListItems add Title  nvarchar(50) Null              ' +
        '                                                                ' +
        '                                                                ' +
        '                                 '
      '                              '
      'else'
      'alter TABLE ListItems alter column Title  nvarchar(50)  Null'
      'GO'
      'if not exists (select * from syscolumns c,sysobjects o'
      
        'where o.id=c.id and o.name='#39'ListItems'#39' and c.name='#39'Notes'#39')      ' +
        '                                                                ' +
        '                                                                ' +
        '         '
      
        'alter TABLE ListItems add Notes  nvarchar(255) Null             ' +
        '                                                                ' +
        '                                                                ' +
        '                              '
      '                                 '
      'else'
      'alter TABLE ListItems alter column Notes  nvarchar(255)  Null'
      'GO'
      'if not exists (select * from syscolumns c,sysobjects o'
      
        'where o.id=c.id and o.name='#39'ListItems'#39' and c.name='#39'UsersID'#39')    ' +
        '                                                                ' +
        '                                                                ' +
        '         '
      
        'alter TABLE ListItems add UsersID  int Null                     ' +
        '                                                                ' +
        '                                                                ' +
        '                                     '
      '                          '
      'else'
      'alter TABLE ListItems alter column UsersID  int  Null'
      'GO'
      'if not exists (select * from syscolumns c,sysobjects o'
      
        'where o.id=c.id and o.name='#39'News'#39' and c.name='#39'NewsID'#39')          ' +
        '                                                                ' +
        '                                                                ' +
        '         '
      
        'alter TABLE News add NewsID  int Not Null default 0             ' +
        '                                                                ' +
        '                                                                ' +
        '                             '
      '                                  '
      'GO'
      'if not exists (select * from syscolumns c,sysobjects o'
      
        'where o.id=c.id and o.name='#39'News'#39' and c.name='#39'Code'#39')            ' +
        '                                                                ' +
        '                                                                ' +
        '         '
      
        'alter TABLE News add Code  int Not Null default 0               ' +
        '                                                                ' +
        '                                                                ' +
        '                               '
      '                                '
      'GO'
      'if not exists (select * from syscolumns c,sysobjects o'
      
        'where o.id=c.id and o.name='#39'News'#39' and c.name='#39'Title'#39')           ' +
        '                                                                ' +
        '                                                                ' +
        '         '
      
        'alter TABLE News add Title  nvarchar(300) Not Null default 0    ' +
        '                                                                ' +
        '                                                                ' +
        '                         '
      '                                      '
      'GO'
      'if not exists (select * from syscolumns c,sysobjects o'
      
        'where o.id=c.id and o.name='#39'News'#39' and c.name='#39'Memo'#39')            ' +
        '                                                                ' +
        '                                                                ' +
        '         '
      
        'alter TABLE News add Memo  nvarchar(3000) Null                  ' +
        '                                                                ' +
        '                                                                ' +
        '                            '
      '                                   '
      'else'
      'alter TABLE News alter column Memo  nvarchar(3000)  Null'
      'GO'
      'if not exists (select * from syscolumns c,sysobjects o'
      
        'where o.id=c.id and o.name='#39'News'#39' and c.name='#39'UrgenceisID'#39')     ' +
        '                                                                ' +
        '                                                                ' +
        '         '
      'alter TABLE News add UrgenceisID  int Null  default ((1))'
      'GO'
      'if not exists (select * from syscolumns c,sysobjects o'
      
        'where o.id=c.id and o.name='#39'News'#39' and c.name='#39'DateAnnounce'#39')    ' +
        '                                                                ' +
        '                                                                ' +
        '         '
      
        'alter TABLE News add DateAnnounce  nvarchar(10) Null            ' +
        '                                                                ' +
        '                                                                ' +
        '                        '
      '                                       '
      'else'
      'alter TABLE News alter column DateAnnounce  nvarchar(10)  Null'
      'GO'
      'if not exists (select * from syscolumns c,sysobjects o'
      
        'where o.id=c.id and o.name='#39'News'#39' and c.name='#39'TimeAnnounce'#39')    ' +
        '                                                                ' +
        '                                                                ' +
        '         '
      
        'alter TABLE News add TimeAnnounce  nvarchar(10) Null            ' +
        '                                                                ' +
        '                                                                ' +
        '                        '
      '                                       '
      'else'
      'alter TABLE News alter column TimeAnnounce  nvarchar(10)  Null'
      'GO'
      'if not exists (select * from syscolumns c,sysobjects o'
      
        'where o.id=c.id and o.name='#39'News'#39' and c.name='#39'DateExpire'#39')      ' +
        '                                                                ' +
        '                                                                ' +
        '         '
      
        'alter TABLE News add DateExpire  nvarchar(10) Null              ' +
        '                                                                ' +
        '                                                                ' +
        '                            '
      '                                   '
      'else'
      'alter TABLE News alter column DateExpire  nvarchar(10)  Null'
      'GO'
      'if not exists (select * from syscolumns c,sysobjects o'
      
        'where o.id=c.id and o.name='#39'News'#39' and c.name='#39'UserID'#39')          ' +
        '                                                                ' +
        '                                                                ' +
        '         '
      
        'alter TABLE News add UserID  int Not Null default 0             ' +
        '                                                                ' +
        '                                                                ' +
        '                               '
      '                                '
      'GO'
      'if not exists (select * from syscolumns c,sysobjects o'
      
        'where o.id=c.id and o.name='#39'NewsGroup'#39' and c.name='#39'NewsGroupID'#39')' +
        '                                                                ' +
        '                                                                ' +
        '         '
      
        'alter TABLE NewsGroup add NewsGroupID  int Not Null default 0   ' +
        '                                                                ' +
        '                                                                ' +
        '                    '
      '                                           '
      'GO'
      'if not exists (select * from syscolumns c,sysobjects o'
      
        'where o.id=c.id and o.name='#39'NewsGroup'#39' and c.name='#39'Title'#39')      ' +
        '                                                                ' +
        '                                                                ' +
        '         '
      
        'alter TABLE NewsGroup add Title  nvarchar(50) Not Null default 0' +
        '                                                                ' +
        '                                                                ' +
        '                     '
      '                                          '
      'GO'
      'if not exists (select * from syscolumns c,sysobjects o'
      
        'where o.id=c.id and o.name='#39'NewsGroup'#39' and c.name='#39'Descript'#39')   ' +
        '                                                                ' +
        '                                                                ' +
        '         '
      
        'alter TABLE NewsGroup add Descript  nvarchar(300) Null          ' +
        '                                                                ' +
        '                                                                ' +
        '                         '
      '                                      '
      'else'
      'alter TABLE NewsGroup alter column Descript  nvarchar(300)  Null'
      'GO'
      'if not exists (select * from syscolumns c,sysobjects o'
      
        'where o.id=c.id and o.name='#39'NewsGroup'#39' and c.name='#39'UsersID'#39')    ' +
        '                                                                ' +
        '                                                                ' +
        '         '
      
        'alter TABLE NewsGroup add UsersID  int Not Null default 0       ' +
        '                                                                ' +
        '                                                                ' +
        '                         '
      '                                      '
      'GO'
      'if not exists (select * from syscolumns c,sysobjects o'
      
        'where o.id=c.id and o.name='#39'NewsGroupUsers'#39' and c.name='#39'NewsGrou' +
        'pUsersID'#39')                                                      ' +
        '                                                                ' +
        '   '
      '      '
      
        'alter TABLE NewsGroupUsers add NewsGroupUsersID  int Not Null de' +
        'fault 0                                                         ' +
        '                                                                ' +
        '            '
      '                                                   '
      'GO'
      'if not exists (select * from syscolumns c,sysobjects o'
      
        'where o.id=c.id and o.name='#39'NewsGroupUsers'#39' and c.name='#39'UsersID'#39 +
        ')                                                               ' +
        '                                                                ' +
        '         '
      
        'alter TABLE NewsGroupUsers add UsersID  int Not Null default 0  ' +
        '                                                                ' +
        '                                                                ' +
        '                     '
      '                                          '
      'GO'
      'if not exists (select * from syscolumns c,sysobjects o'
      
        'where o.id=c.id and o.name='#39'NewsGroupUsers'#39' and c.name='#39'NewsGrou' +
        'pID'#39')                                                           ' +
        '                                                                ' +
        '       '
      '  '
      
        'alter TABLE NewsGroupUsers add NewsGroupID  int Not Null default' +
        ' 0                                                              ' +
        '                                                                ' +
        '                '
      '                                               '
      'GO'
      'if not exists (select * from syscolumns c,sysobjects o'
      
        'where o.id=c.id and o.name='#39'NewsUsers'#39' and c.name='#39'NewsUsersID'#39')' +
        '                                                                ' +
        '                                                                ' +
        '         '
      
        'alter TABLE NewsUsers add NewsUsersID  int Not Null default 0   ' +
        '                                                                ' +
        '                                                                ' +
        '                     '
      '                                          '
      'GO'
      'if not exists (select * from syscolumns c,sysobjects o'
      
        'where o.id=c.id and o.name='#39'NewsUsers'#39' and c.name='#39'NewsID'#39')     ' +
        '                                                                ' +
        '                                                                ' +
        '         '
      
        'alter TABLE NewsUsers add NewsID  int Not Null default 0        ' +
        '                                                                ' +
        '                                                                ' +
        '                         '
      '                                      '
      'GO'
      'if not exists (select * from syscolumns c,sysobjects o'
      
        'where o.id=c.id and o.name='#39'NewsUsers'#39' and c.name='#39'UsersID'#39')    ' +
        '                                                                ' +
        '                                                                ' +
        '         '
      
        'alter TABLE NewsUsers add UsersID  int Not Null default 0       ' +
        '                                                                ' +
        '                                                                ' +
        '                          '
      '                                     '
      'GO'
      'if not exists (select * from syscolumns c,sysobjects o'
      
        'where o.id=c.id and o.name='#39'NewsUsers'#39' and c.name='#39'IsRead'#39')     ' +
        '                                                                ' +
        '                                                                ' +
        '         '
      
        'alter TABLE NewsUsers add IsRead  bit Null                      ' +
        '                                                                ' +
        '                                                                ' +
        '                                  '
      '                             '
      'else'
      'alter TABLE NewsUsers alter column IsRead  bit  Null'
      'GO'
      'if not exists (select * from syscolumns c,sysobjects o'
      
        'where o.id=c.id and o.name='#39'NewsUsers'#39' and c.name='#39'NotShow'#39')    ' +
        '                                                                ' +
        '                                                                ' +
        '         '
      
        'alter TABLE NewsUsers add NotShow  bit Null                     ' +
        '                                                                ' +
        '                                                                ' +
        '                                '
      '                               '
      'else'
      'alter TABLE NewsUsers alter column NotShow  bit  Null'
      'GO'
      'if not exists (select * from syscolumns c,sysobjects o'
      
        'where o.id=c.id and o.name='#39'ParaphTemplate'#39' and c.name='#39'ParaphTe' +
        'mplateID'#39')                                                      ' +
        '                                                                ' +
        '     '
      '    '
      
        'alter TABLE ParaphTemplate add ParaphTemplateID  int Not Null de' +
        'fault 0                                                         ' +
        '                                                                ' +
        '               '
      '                                                '
      'GO'
      'if not exists (select * from syscolumns c,sysobjects o'
      
        'where o.id=c.id and o.name='#39'ParaphTemplate'#39' and c.name='#39'UserID'#39')' +
        '                                                                ' +
        '                                                                ' +
        '         '
      
        'alter TABLE ParaphTemplate add UserID  int Not Null default 0   ' +
        '                                                                ' +
        '                                                                ' +
        '                       '
      '                                        '
      'GO'
      'if not exists (select * from syscolumns c,sysobjects o'
      
        'where o.id=c.id and o.name='#39'ParaphTemplate'#39' and c.name='#39'OrderID'#39 +
        ')                                                               ' +
        '                                                                ' +
        '         '
      
        'alter TABLE ParaphTemplate add OrderID  tinyint Not Null default' +
        ' 0                                                              ' +
        '                                                                ' +
        '                    '
      '                                           '
      'GO'
      'if not exists (select * from syscolumns c,sysobjects o'
      
        'where o.id=c.id and o.name='#39'ParaphTemplate'#39' and c.name='#39'Title'#39') ' +
        '                                                                ' +
        '                                                                ' +
        '         '
      
        'alter TABLE ParaphTemplate add Title  nvarchar(50) Not Null defa' +
        'ult 0                                                           ' +
        '                                                                ' +
        '                   '
      '                                            '
      'GO'
      'if not exists (select * from syscolumns c,sysobjects o'
      
        'where o.id=c.id and o.name='#39'ParaphTemplate'#39' and c.name='#39'Paraph'#39')' +
        '                                                                ' +
        '                                                                ' +
        '         '
      
        'alter TABLE ParaphTemplate add Paraph  nvarchar(500) Not Null de' +
        'fault 0                                                         ' +
        '                                                                ' +
        '              '
      '                                                 '
      'GO'
      'if not exists (select * from syscolumns c,sysobjects o'
      
        'where o.id=c.id and o.name='#39'Phone'#39' and c.name='#39'PhoneID'#39')        ' +
        '                                                                ' +
        '                                                                ' +
        '         '
      
        'alter TABLE Phone add PhoneID  int Not Null default 0           ' +
        '                                                                ' +
        '                                                                ' +
        '                             '
      '                                  '
      'GO'
      'if not exists (select * from syscolumns c,sysobjects o'
      
        'where o.id=c.id and o.name='#39'Phone'#39' and c.name='#39'Code'#39')           ' +
        '                                                                ' +
        '                                                                ' +
        '         '
      
        'alter TABLE Phone add Code  int Not Null default 0              ' +
        '                                                                ' +
        '                                                                ' +
        '                               '
      '                                '
      'GO'
      'if not exists (select * from syscolumns c,sysobjects o'
      
        'where o.id=c.id and o.name='#39'Phone'#39' and c.name='#39'Title'#39')          ' +
        '                                                                ' +
        '                                                                ' +
        '         '
      
        'alter TABLE Phone add Title  nvarchar(50) Not Null default 0    ' +
        '                                                                ' +
        '                                                                ' +
        '                          '
      '                                     '
      'GO'
      'if not exists (select * from syscolumns c,sysobjects o'
      
        'where o.id=c.id and o.name='#39'Phone'#39' and c.name='#39'PersonName'#39')     ' +
        '                                                                ' +
        '                                                                ' +
        '         '
      
        'alter TABLE Phone add PersonName  nvarchar(50) Null             ' +
        '                                                                ' +
        '                                                                ' +
        '                         '
      '                                      '
      'else'
      'alter TABLE Phone alter column PersonName  nvarchar(50)  Null'
      'GO'
      'if not exists (select * from syscolumns c,sysobjects o'
      
        'where o.id=c.id and o.name='#39'Phone'#39' and c.name='#39'Tel1'#39')           ' +
        '                                                                ' +
        '                                                                ' +
        '         '
      
        'alter TABLE Phone add Tel1  nvarchar(20) Null                   ' +
        '                                                                ' +
        '                                                                ' +
        '                                 '
      '                              '
      'else'
      'alter TABLE Phone alter column Tel1  nvarchar(20)  Null'
      'GO'
      'if not exists (select * from syscolumns c,sysobjects o'
      
        'where o.id=c.id and o.name='#39'Phone'#39' and c.name='#39'Tel2'#39')           ' +
        '                                                                ' +
        '                                                                ' +
        '         '
      
        'alter TABLE Phone add Tel2  nvarchar(20) Null                   ' +
        '                                                                ' +
        '                                                                ' +
        '                                 '
      '                              '
      'else'
      'alter TABLE Phone alter column Tel2  nvarchar(20)  Null'
      'GO'
      'if not exists (select * from syscolumns c,sysobjects o'
      
        'where o.id=c.id and o.name='#39'Phone'#39' and c.name='#39'Mobile'#39')         ' +
        '                                                                ' +
        '                                                                ' +
        '         '
      
        'alter TABLE Phone add Mobile  nvarchar(20) Null                 ' +
        '                                                                ' +
        '                                                                ' +
        '                               '
      '                                '
      'else'
      'alter TABLE Phone alter column Mobile  nvarchar(20)  Null'
      'GO'
      'if not exists (select * from syscolumns c,sysobjects o'
      
        'where o.id=c.id and o.name='#39'Phone'#39' and c.name='#39'Fax'#39')            ' +
        '                                                                ' +
        '                                                                ' +
        '         '
      
        'alter TABLE Phone add Fax  nvarchar(20) Null                    ' +
        '                                                                ' +
        '                                                                ' +
        '                                '
      '                               '
      'else'
      'alter TABLE Phone alter column Fax  nvarchar(20)  Null'
      'GO'
      'if not exists (select * from syscolumns c,sysobjects o'
      
        'where o.id=c.id and o.name='#39'Phone'#39' and c.name='#39'Email'#39')          ' +
        '                                                                ' +
        '                                                                ' +
        '         '
      
        'alter TABLE Phone add Email  nvarchar(50) Null                  ' +
        '                                                                ' +
        '                                                                ' +
        '                                '
      '                               '
      'else'
      'alter TABLE Phone alter column Email  nvarchar(50)  Null'
      'GO'
      'if not exists (select * from syscolumns c,sysobjects o'
      
        'where o.id=c.id and o.name='#39'Phone'#39' and c.name='#39'Internet'#39')       ' +
        '                                                                ' +
        '                                                                ' +
        '         '
      
        'alter TABLE Phone add Internet  nvarchar(500) Null              ' +
        '                                                                ' +
        '                                                                ' +
        '                             '
      '                                  '
      'else'
      'alter TABLE Phone alter column Internet  nvarchar(500)  Null'
      'GO'
      'if not exists (select * from syscolumns c,sysobjects o'
      
        'where o.id=c.id and o.name='#39'Phone'#39' and c.name='#39'Address'#39')        ' +
        '                                                                ' +
        '                                                                ' +
        '         '
      
        'alter TABLE Phone add Address  nvarchar(500) Null               ' +
        '                                                                ' +
        '                                                                ' +
        '                            '
      '                                   '
      'else'
      'alter TABLE Phone alter column Address  nvarchar(500)  Null'
      'GO'
      'if not exists (select * from syscolumns c,sysobjects o'
      
        'where o.id=c.id and o.name='#39'Phone'#39' and c.name='#39'ZipCode'#39')        ' +
        '                                                                ' +
        '                                                                ' +
        '         '
      
        'alter TABLE Phone add ZipCode  nvarchar(30) Null                ' +
        '                                                                ' +
        '                                                                ' +
        '                             '
      '                                  '
      'else'
      'alter TABLE Phone alter column ZipCode  nvarchar(30)  Null'
      'GO'
      'if not exists (select * from syscolumns c,sysobjects o'
      
        'where o.id=c.id and o.name='#39'Phone'#39' and c.name='#39'Descript'#39')       ' +
        '                                                                ' +
        '                                                                ' +
        '         '
      
        'alter TABLE Phone add Descript  nvarchar(500) Null              ' +
        '                                                                ' +
        '                                                                ' +
        '                             '
      '                                  '
      'else'
      'alter TABLE Phone alter column Descript  nvarchar(500)  Null'
      'GO'
      'if not exists (select * from syscolumns c,sysobjects o'
      
        'where o.id=c.id and o.name='#39'Phone'#39' and c.name='#39'PhoneGroupID'#39')   ' +
        '                                                                ' +
        '                                                                ' +
        '         '
      
        'alter TABLE Phone add PhoneGroupID  int Null                    ' +
        '                                                                ' +
        '                                                                ' +
        '                                '
      '                               '
      'else'
      'alter TABLE Phone alter column PhoneGroupID  int  Null'
      'GO'
      'if not exists (select * from syscolumns c,sysobjects o'
      
        'where o.id=c.id and o.name='#39'Phone'#39' and c.name='#39'UsersID'#39')        ' +
        '                                                                ' +
        '                                                                ' +
        '         '
      
        'alter TABLE Phone add UsersID  int Not Null default 0           ' +
        '                                                                ' +
        '                                                                ' +
        '                              '
      '                                 '
      'GO'
      'if not exists (select * from syscolumns c,sysobjects o'
      
        'where o.id=c.id and o.name='#39'Phone'#39' and c.name='#39'IsPublic'#39')       ' +
        '                                                                ' +
        '                                                                ' +
        '         '
      
        'alter TABLE Phone add IsPublic  bit Null                        ' +
        '                                                                ' +
        '                                                                ' +
        '                                       '
      '                        '
      'else'
      'alter TABLE Phone alter column IsPublic  bit  Null'
      'GO'
      'if not exists (select * from syscolumns c,sysobjects o'
      
        'where o.id=c.id and o.name='#39'PhoneGroup'#39' and c.name='#39'PhoneGroupID' +
        #39')                                                              ' +
        '                                                                ' +
        '         '
      
        'alter TABLE PhoneGroup add PhoneGroupID  int Not Null default 0 ' +
        '                                                                ' +
        '                                                                ' +
        '                   '
      '                                            '
      'GO'
      'if not exists (select * from syscolumns c,sysobjects o'
      
        'where o.id=c.id and o.name='#39'PhoneGroup'#39' and c.name='#39'Code'#39')      ' +
        '                                                                ' +
        '                                                                ' +
        '         '
      
        'alter TABLE PhoneGroup add Code  int Not Null default 0         ' +
        '                                                                ' +
        '                                                                ' +
        '                          '
      '                                     '
      'GO'
      'if not exists (select * from syscolumns c,sysobjects o'
      
        'where o.id=c.id and o.name='#39'PhoneGroup'#39' and c.name='#39'Title'#39')     ' +
        '                                                                ' +
        '                                                                ' +
        '         '
      
        'alter TABLE PhoneGroup add Title  nvarchar(50) Not Null default ' +
        '0                                                               ' +
        '                                                                ' +
        '                     '
      '                                          '
      'GO'
      'if not exists (select * from syscolumns c,sysobjects o'
      
        'where o.id=c.id and o.name='#39'PhoneGroup'#39' and c.name='#39'UsersID'#39')   ' +
        '                                                                ' +
        '                                                                ' +
        '         '
      
        'alter TABLE PhoneGroup add UsersID  int Not Null default 0      ' +
        '                                                                ' +
        '                                                                ' +
        '                         '
      '                                      '
      'GO'
      'if not exists (select * from syscolumns c,sysobjects o'
      
        'where o.id=c.id and o.name='#39'Receipt'#39' and c.name='#39'ReceiptID'#39')    ' +
        '                                                                ' +
        '                                                                ' +
        '         '
      
        'alter TABLE Receipt add ReceiptID  int Not Null default 0       ' +
        '                                                                ' +
        '                                                                ' +
        '                             '
      '                                  '
      'GO'
      'if not exists (select * from syscolumns c,sysobjects o'
      
        'where o.id=c.id and o.name='#39'Receipt'#39' and c.name='#39'Title'#39')        ' +
        '                                                                ' +
        '                                                                ' +
        '         '
      
        'alter TABLE Receipt add Title  nvarchar(50) Null                ' +
        '                                                                ' +
        '                                                                ' +
        '                                  '
      '                             '
      'else'
      'alter TABLE Receipt alter column Title  nvarchar(50)  Null'
      'GO'
      'if not exists (select * from syscolumns c,sysobjects o'
      
        'where o.id=c.id and o.name='#39'Receipt'#39' and c.name='#39'Memo'#39')         ' +
        '                                                                ' +
        '                                                                ' +
        '         '
      
        'alter TABLE Receipt add Memo  nvarchar(2000) Null               ' +
        '                                                                ' +
        '                                                                ' +
        '                            '
      '                                   '
      'else'
      'alter TABLE Receipt alter column Memo  nvarchar(2000)  Null'
      'GO'
      'if not exists (select * from syscolumns c,sysobjects o'
      
        'where o.id=c.id and o.name='#39'Receipt'#39' and c.name='#39'Descript'#39')     ' +
        '                                                                ' +
        '                                                                ' +
        '         '
      
        'alter TABLE Receipt add Descript  nvarchar(500) Null            ' +
        '                                                                ' +
        '                                                                ' +
        '                             '
      '                                  '
      'else'
      'alter TABLE Receipt alter column Descript  nvarchar(500)  Null'
      'GO'
      'if not exists (select * from syscolumns c,sysobjects o'
      
        'where o.id=c.id and o.name='#39'ReceiveTypes'#39' and c.name='#39'ID'#39')      ' +
        '                                                                ' +
        '                                                                ' +
        '         '
      
        'alter TABLE ReceiveTypes add ID  int Not Null default 0         ' +
        '                                                                ' +
        '                                                                ' +
        '                            '
      '                                   '
      'GO'
      'if not exists (select * from syscolumns c,sysobjects o'
      
        'where o.id=c.id and o.name='#39'ReceiveTypes'#39' and c.name='#39'Title'#39')   ' +
        '                                                                ' +
        '                                                                ' +
        '         '
      
        'alter TABLE ReceiveTypes add Title  nvarchar(50) Null           ' +
        '                                                                ' +
        '                                                                ' +
        '                            '
      '                                   '
      'else'
      'alter TABLE ReceiveTypes alter column Title  nvarchar(50)  Null'
      'GO'
      'if not exists (select * from syscolumns c,sysobjects o'
      
        'where o.id=c.id and o.name='#39'RecommiteData'#39' and c.name='#39'Recommite' +
        'DataID'#39')                                                        ' +
        '                                                                ' +
        '     '
      '    '
      
        'alter TABLE RecommiteData add RecommiteDataID  int Not Null defa' +
        'ult 0                                                           ' +
        '                                                                ' +
        '               '
      '                                                '
      'GO'
      'if not exists (select * from syscolumns c,sysobjects o'
      
        'where o.id=c.id and o.name='#39'RecommiteData'#39' and c.name='#39'Recommite' +
        'ID'#39')                                                            ' +
        '                                                                ' +
        '         '
      
        'alter TABLE RecommiteData add RecommiteID  int Not Null default ' +
        '0                                                               ' +
        '                                                                ' +
        '                  '
      '                                             '
      'GO'
      'if not exists (select * from syscolumns c,sysobjects o'
      
        'where o.id=c.id and o.name='#39'RecommiteData'#39' and c.name='#39'Image'#39')  ' +
        '                                                                ' +
        '                                                                ' +
        '         '
      
        'alter TABLE RecommiteData add Image  image Null                 ' +
        '                                                                ' +
        '                                                                ' +
        '                            '
      '                                   '
      ''
      'GO'
      'if not exists (select * from syscolumns c,sysobjects o'
      
        'where o.id=c.id and o.name='#39'RecommiteData'#39' and c.name='#39'extention' +
        #39')                                                              ' +
        '                                                                ' +
        '         '
      
        'alter TABLE RecommiteData add extention  tinyint Not Null defaul' +
        't 0                                                             ' +
        '                                                                ' +
        '                    '
      '                                           '
      'GO'
      'if not exists (select * from syscolumns c,sysobjects o'
      
        'where o.id=c.id and o.name='#39'RecommiteData'#39' and c.name='#39'UniqueID'#39 +
        ')                                                               ' +
        '                                                                ' +
        '         '
      
        'alter TABLE RecommiteData add UniqueID  bigint Null             ' +
        '                                                                ' +
        '                                                                ' +
        '                            '
      '                                   '
      'else'
      'alter TABLE RecommiteData alter column UniqueID  bigint  Null'
      'GO'
      'if not exists (select * from syscolumns c,sysobjects o'
      
        'where o.id=c.id and o.name='#39'ReCommites'#39' and c.name='#39'RecommiteID'#39 +
        ')                                                               ' +
        '                                                                ' +
        '         '
      
        'alter TABLE ReCommites add RecommiteID  int Not Null default 0  ' +
        '                                                                ' +
        '                                                                ' +
        '                     '
      '                                          '
      'GO'
      'if not exists (select * from syscolumns c,sysobjects o'
      
        'where o.id=c.id and o.name='#39'ReCommites'#39' and c.name='#39'LetterID'#39')  ' +
        '                                                                ' +
        '                                                                ' +
        '         '
      
        'alter TABLE ReCommites add LetterID  int Not Null default 0     ' +
        '                                                                ' +
        '                                                                ' +
        '                         '
      '                                      '
      'GO'
      'if not exists (select * from syscolumns c,sysobjects o'
      
        'where o.id=c.id and o.name='#39'ReCommites'#39' and c.name='#39'ID'#39')        ' +
        '                                                                ' +
        '                                                                ' +
        '         '
      
        'alter TABLE ReCommites add ID  smallint Not Null default 0      ' +
        '                                                                ' +
        '                                                                ' +
        '                          '
      '                                     '
      'GO'
      'if not exists (select * from syscolumns c,sysobjects o'
      
        'where o.id=c.id and o.name='#39'ReCommites'#39' and c.name='#39'Type'#39')      ' +
        '                                                                ' +
        '                                                                ' +
        '         '
      
        'alter TABLE ReCommites add Type  tinyint Not Null  default ((1))' +
        '                                                                ' +
        '                                                                ' +
        '                       '
      '                                        '
      'GO'
      'if not exists (select * from syscolumns c,sysobjects o'
      
        'where o.id=c.id and o.name='#39'ReCommites'#39' and c.name='#39'ParentId'#39')  ' +
        '                                                                ' +
        '                                                                ' +
        '         '
      
        'alter TABLE ReCommites add ParentId  smallint Not Null  default ' +
        '((0))                                                           ' +
        '                                                                ' +
        '                     '
      '                                          '
      'GO'
      'if not exists (select * from syscolumns c,sysobjects o'
      
        'where o.id=c.id and o.name='#39'ReCommites'#39' and c.name='#39'OrgID'#39')     ' +
        '                                                                ' +
        '                                                                ' +
        '         '
      
        'alter TABLE ReCommites add OrgID  int Not Null default 0        ' +
        '                                                                ' +
        '                                                                ' +
        '                          '
      '                                     '
      'GO'
      'if not exists (select * from syscolumns c,sysobjects o'
      
        'where o.id=c.id and o.name='#39'ReCommites'#39' and c.name='#39'Paraph'#39')    ' +
        '                                                                ' +
        '                                                                ' +
        '         '
      
        'alter TABLE ReCommites add Paraph  nvarchar(500) Null           ' +
        '                                                                ' +
        '                                                                ' +
        '                        '
      '                                       '
      'else'
      'alter TABLE ReCommites alter column Paraph  nvarchar(500)  Null'
      'GO'
      'if not exists (select * from syscolumns c,sysobjects o'
      
        'where o.id=c.id and o.name='#39'ReCommites'#39' and c.name='#39'RecommiteDat' +
        'e'#39')                                                             ' +
        '                                                                ' +
        '         '
      
        'alter TABLE ReCommites add RecommiteDate  varchar(10) Not Null d' +
        'efault 0                                                        ' +
        '                                                                ' +
        '            '
      '                                                   '
      'GO'
      'if not exists (select * from syscolumns c,sysobjects o'
      'where o.id=c.id and o.name='#39'ReCommites'#39' and c.name='#39'UserID'#39')'
      'alter TABLE ReCommites add UserID  int Not Null  default (1) '
      'GO'
      'if not exists (select * from syscolumns c,sysobjects o'
      
        'where o.id=c.id and o.name='#39'ReCommites'#39' and c.name='#39'IsCopy'#39')    ' +
        '                                                                ' +
        '                                                                ' +
        '         '
      
        'alter TABLE ReCommites add IsCopy  bit Null                     ' +
        '                                                                ' +
        '                                                                ' +
        '                                 '
      '                              '
      'else'
      'alter TABLE ReCommites alter column IsCopy  bit  Null'
      'GO'
      'if not exists (select * from syscolumns c,sysobjects o'
      
        'where o.id=c.id and o.name='#39'ReCommites'#39' and c.name='#39'Proceeded'#39') ' +
        '                                                                ' +
        '                                                                ' +
        '         '
      
        'alter TABLE ReCommites add Proceeded  bit Not Null  default ((0)' +
        ')                                                               ' +
        '                                                                ' +
        '                     '
      '                                          '
      'GO'
      'if not exists (select * from syscolumns c,sysobjects o'
      
        'where o.id=c.id and o.name='#39'ReCommites'#39' and c.name='#39'ProceedDate'#39 +
        ')                                                               ' +
        '                                                                ' +
        '         '
      
        'alter TABLE ReCommites add ProceedDate  varchar(10) Null        ' +
        '                                                                ' +
        '                                                                ' +
        '                      '
      '                                         '
      'else'
      
        'alter TABLE ReCommites alter column ProceedDate  varchar(10)  Nu' +
        'll'
      'GO'
      'if not exists (select * from syscolumns c,sysobjects o'
      
        'where o.id=c.id and o.name='#39'ReCommites'#39' and c.name='#39'staffmemo'#39') ' +
        '                                                                ' +
        '                                                                ' +
        '         '
      
        'alter TABLE ReCommites add staffmemo  nvarchar(255) Null        ' +
        '                                                                ' +
        '                                                                ' +
        '                      '
      '                                         '
      'else'
      
        'alter TABLE ReCommites alter column staffmemo  nvarchar(255)  Nu' +
        'll'
      'GO'
      'if not exists (select * from syscolumns c,sysobjects o'
      
        'where o.id=c.id and o.name='#39'ReCommites'#39' and c.name='#39'viewdate'#39')  ' +
        '                                                                ' +
        '                                                                ' +
        '         '
      
        'alter TABLE ReCommites add viewdate  char(10) Null              ' +
        '                                                                ' +
        '                                                                ' +
        '                           '
      '                                    '
      'else'
      'alter TABLE ReCommites alter column viewdate  char(10)  Null'
      'GO'
      'if not exists (select * from syscolumns c,sysobjects o'
      
        'where o.id=c.id and o.name='#39'ReCommites'#39' and c.name='#39'OrgStaff'#39')  ' +
        '                                                                ' +
        '                                                                ' +
        '         '
      
        'alter TABLE ReCommites add OrgStaff  nvarchar(50) Null          ' +
        '                                                                ' +
        '                                                                ' +
        '                         '
      '                                      '
      'else'
      'alter TABLE ReCommites alter column OrgStaff  nvarchar(50)  Null'
      'GO'
      'if not exists (select * from syscolumns c,sysobjects o'
      
        'where o.id=c.id and o.name='#39'ReCommites'#39' and c.name='#39'DeadLineDate' +
        #39')                                                              ' +
        '                                                                ' +
        '         '
      
        'alter TABLE ReCommites add DeadLineDate  char(10) Null          ' +
        '                                                                ' +
        '                                                                ' +
        '                        '
      '                                       '
      'else'
      'alter TABLE ReCommites alter column DeadLineDate  char(10)  Null'
      'GO'
      'if not exists (select * from syscolumns c,sysobjects o'
      
        'where o.id=c.id and o.name='#39'ReCommites'#39' and c.name='#39'LastUpdate'#39')' +
        '                                                                ' +
        '                                                                ' +
        '         '
      
        'alter TABLE ReCommites add LastUpdate  datetime Null  default (g' +
        'etdate())                                                       ' +
        '                                                                ' +
        '              '
      '                                                 '
      'else'
      'alter TABLE ReCommites alter column LastUpdate  datetime  Null'
      'GO'
      'if not exists (select * from syscolumns c,sysobjects o'
      
        'where o.id=c.id and o.name='#39'ReCommites'#39' and c.name='#39'UniqueID'#39')  ' +
        '                                                                ' +
        '                                                                ' +
        '         '
      
        'alter TABLE ReCommites add UniqueID  bigint Null                ' +
        '                                                                ' +
        '                                                                ' +
        '                              '
      '                                 '
      'else'
      'alter TABLE ReCommites alter column UniqueID  bigint  Null'
      'GO'
      'if not exists (select * from syscolumns c,sysobjects o'
      
        'where o.id=c.id and o.name='#39'ReCommites'#39' and c.name='#39'ActionTypeID' +
        #39')'
      'alter TABLE ReCommites add ActionTypeID  int Null  default ((1))'
      'GO'
      'if not exists (select * from syscolumns c,sysobjects o'
      
        'where o.id=c.id and o.name='#39'ReCommites'#39' and c.name='#39'DeadLineToin' +
        't'#39')                                                             ' +
        '                                                                ' +
        '         '
      
        'alter TABLE ReCommites add DeadLineToint  int Null              ' +
        '                                                                ' +
        '                                                                ' +
        '                             '
      '                                  '
      'else'
      'alter TABLE ReCommites alter column DeadLineToint  int  Null'
      'GO'
      'if not exists (select * from syscolumns c,sysobjects o'
      
        'where o.id=c.id and o.name='#39'ReCommites'#39' and c.name='#39'IsAnswer'#39')  ' +
        '                                                                ' +
        '                                                                ' +
        '         '
      
        'alter TABLE ReCommites add IsAnswer  bit Null                   ' +
        '                                                                ' +
        '                                                                ' +
        '                                '
      '                               '
      'else'
      'alter TABLE ReCommites alter column IsAnswer  bit  Null'
      'GO'
      'if not exists (select * from syscolumns c,sysobjects o'
      
        'where o.id=c.id and o.name='#39'ReCommites'#39' and c.name='#39'ISFollowup'#39')' +
        '                                                                ' +
        '                                                                ' +
        '         '
      'alter TABLE ReCommites add ISFollowup  bit Null'
      'else'
      'alter TABLE ReCommites alter column ISFollowup  bit  Null'
      'GO'
      'if not exists (select * from syscolumns c,sysobjects o'
      'where o.id=c.id and o.name='#39'ReCommites'#39' and c.name='#39'Finallized'#39')'
      'alter TABLE ReCommites add Finallized bit not null default 1'
      'GO'
      ''
      'if not exists (select * from syscolumns c,sysobjects o'
      
        'where o.id=c.id and o.name='#39'RecommiteTypes'#39' and c.name='#39'ID'#39')    ' +
        '                                                                ' +
        '                                                                ' +
        '         '
      
        'alter TABLE RecommiteTypes add ID  tinyint Not Null default 0   ' +
        '                                                                ' +
        '                                                                ' +
        '                        '
      '                                       '
      'GO'
      'if not exists (select * from syscolumns c,sysobjects o'
      
        'where o.id=c.id and o.name='#39'RecommiteTypes'#39' and c.name='#39'Title'#39') ' +
        '                                                                ' +
        '                                                                ' +
        '         '
      
        'alter TABLE RecommiteTypes add Title  nvarchar(50) Null         ' +
        '                                                                ' +
        '                                                                ' +
        '                          '
      '                                     '
      'else'
      
        'alter TABLE RecommiteTypes alter column Title  nvarchar(50)  Nul' +
        'l'
      'GO'
      'if not exists (select * from syscolumns c,sysobjects o'
      
        'where o.id=c.id and o.name='#39'RecommiteTypes'#39' and c.name='#39'ReceiveM' +
        'ode'#39')                                                           ' +
        '                                                                ' +
        '        '
      ' '
      
        'alter TABLE RecommiteTypes add ReceiveMode  bit Null            ' +
        '                                                                ' +
        '                                                                ' +
        '                         '
      '                                      '
      'else'
      'alter TABLE RecommiteTypes alter column ReceiveMode  bit  Null'
      'GO'
      'if not exists (select * from syscolumns c,sysobjects o'
      
        'where o.id=c.id and o.name='#39'RecommiteTypes'#39' and c.name='#39'InnerOrg' +
        'anize'#39')                                                         ' +
        '                                                                ' +
        '        '
      ' '
      
        'alter TABLE RecommiteTypes add InnerOrganize  bit Null          ' +
        '                                                                ' +
        '                                                                ' +
        '                         '
      '                                      '
      'else'
      'alter TABLE RecommiteTypes alter column InnerOrganize  bit  Null'
      'GO'
      'if not exists (select * from syscolumns c,sysobjects o'
      
        'where o.id=c.id and o.name='#39'ReferenceTableData'#39' and c.name='#39'Refe' +
        'renceTableDataID'#39')                                              ' +
        '                                                               '
      '          '
      
        'alter TABLE ReferenceTableData add ReferenceTableDataID  int Not' +
        ' Null default 0                                                 ' +
        '                                                                ' +
        '         '
      '                                                      '
      'GO'
      'if not exists (select * from syscolumns c,sysobjects o'
      
        'where o.id=c.id and o.name='#39'ReferenceTableData'#39' and c.name='#39'Tabl' +
        'eID'#39')                                                           ' +
        '                                                                ' +
        '         '
      
        'alter TABLE ReferenceTableData add TableID  int Not Null default' +
        ' 0                                                              ' +
        '                                                                ' +
        '                    '
      '                                           '
      'GO'
      'if not exists (select * from syscolumns c,sysobjects o'
      
        'where o.id=c.id and o.name='#39'ReferenceTableData'#39' and c.name='#39'Data' +
        'ID'#39')                                                            ' +
        '                                                                ' +
        '         '
      
        'alter TABLE ReferenceTableData add DataID  tinyint Not Null defa' +
        'ult 0                                                           ' +
        '                                                                ' +
        '                  '
      '                                             '
      'GO'
      'if not exists (select * from syscolumns c,sysobjects o'
      
        'where o.id=c.id and o.name='#39'ReferenceTableData'#39' and c.name='#39'Data' +
        'Title'#39')                                                         ' +
        '                                                                ' +
        '         '
      
        'alter TABLE ReferenceTableData add DataTitle  nvarchar(50) Not N' +
        'ull default 0                                                   ' +
        '                                                                ' +
        '            '
      '                                                   '
      'GO'
      'if not exists (select * from syscolumns c,sysobjects o'
      
        'where o.id=c.id and o.name='#39'RelatedSecretariats'#39' and c.name='#39'Rel' +
        'atedSecretariatID'#39')                                             ' +
        '                                                                ' +
        '     '
      '    '
      
        'alter TABLE RelatedSecretariats add RelatedSecretariatID  int No' +
        't Null default 0                                                ' +
        '                                                                ' +
        '              '
      '                                                 '
      'GO'
      'if not exists (select * from syscolumns c,sysobjects o'
      
        'where o.id=c.id and o.name='#39'RelatedSecretariats'#39' and c.name='#39'Rel' +
        'atedSecretariatTitle'#39')                                          ' +
        '                                                                ' +
        '     '
      '    '
      
        'alter TABLE RelatedSecretariats add RelatedSecretariatTitle  nva' +
        'rchar(50) Not Null default 0                                    ' +
        '                                                                ' +
        '      '
      '                                                         '
      'GO'
      'if not exists (select * from syscolumns c,sysobjects o'
      
        'where o.id=c.id and o.name='#39'RelatedSecretariats'#39' and c.name='#39'Des' +
        'tinationOrgID_inSource'#39')                                        ' +
        '                                                                '
      '         '
      
        'alter TABLE RelatedSecretariats add DestinationOrgID_inSource  i' +
        'nt Not Null default 0                                           ' +
        '                                                                ' +
        '         '
      '                                                      '
      'GO'
      'if not exists (select * from syscolumns c,sysobjects o'
      
        'where o.id=c.id and o.name='#39'RelatedSecretariats'#39' and c.name='#39'Des' +
        'tinationSecID'#39')                                                 ' +
        '                                                                ' +
        '       '
      '  '
      
        'alter TABLE RelatedSecretariats add DestinationSecID  int Not Nu' +
        'll default 0                                                    ' +
        '                                                                ' +
        '                '
      '                                               '
      'GO'
      'if not exists (select * from syscolumns c,sysobjects o'
      
        'where o.id=c.id and o.name='#39'RelatedSecretariats'#39' and c.name='#39'Des' +
        'tinationServerIP'#39')                                              ' +
        '                                                                ' +
        '     '
      '    '
      
        'alter TABLE RelatedSecretariats add DestinationServerIP  varchar' +
        '(30) Null                                                       ' +
        '                                                                ' +
        '                '
      '                                               '
      'else'
      
        'alter TABLE RelatedSecretariats alter column DestinationServerIP' +
        '  varchar(30)  Null'
      'GO'
      'if not exists (select * from syscolumns c,sysobjects o'
      
        'where o.id=c.id and o.name='#39'RelatedSecretariats'#39' and c.name='#39'Des' +
        'tinationServerDB'#39')                                              ' +
        '                                                                ' +
        '    '
      '     '
      
        'alter TABLE RelatedSecretariats add DestinationServerDB  varchar' +
        '(50) Null                                                       ' +
        '                                                                ' +
        '               '
      '                                                '
      'else'
      
        'alter TABLE RelatedSecretariats alter column DestinationServerDB' +
        '  varchar(50)  Null'
      'GO'
      'if not exists (select * from syscolumns c,sysobjects o'
      
        'where o.id=c.id and o.name='#39'Secretariats'#39' and c.name='#39'SecID'#39')   ' +
        '                                                                ' +
        '                                                                ' +
        '         '
      
        'alter TABLE Secretariats add SecID  int Not Null default 0      ' +
        '                                                                ' +
        '                                                                ' +
        '                             '
      '                                  '
      'GO'
      'if not exists (select * from syscolumns c,sysobjects o'
      
        'where o.id=c.id and o.name='#39'Secretariats'#39' and c.name='#39'SecTitle'#39')' +
        '                                                                ' +
        '                                                                ' +
        '         '
      
        'alter TABLE Secretariats add SecTitle  nvarchar(50) Null        ' +
        '                                                                ' +
        '                                                                ' +
        '                             '
      '                                  '
      'else'
      
        'alter TABLE Secretariats alter column SecTitle  nvarchar(50)  Nu' +
        'll'
      'GO'
      'if not exists (select * from syscolumns c,sysobjects o'
      
        'where o.id=c.id and o.name='#39'Secretariats'#39' and c.name='#39'Precode'#39') ' +
        '                                                                ' +
        '                                                                ' +
        '         '
      
        'alter TABLE Secretariats add Precode  nvarchar(50) Null         ' +
        '                                                                ' +
        '                                                                ' +
        '                           '
      '                                    '
      'else'
      
        'alter TABLE Secretariats alter column Precode  nvarchar(50)  Nul' +
        'l'
      'GO'
      'if not exists (select * from syscolumns c,sysobjects o'
      
        'where o.id=c.id and o.name='#39'Secretariats'#39' and c.name='#39'ServerID'#39')' +
        '                                                                ' +
        '                                                                ' +
        '         '
      
        'alter TABLE Secretariats add ServerID  int Not Null  default (0)' +
        '                                                                ' +
        '                                                                ' +
        '                          '
      '                                     '
      'GO'
      'if not exists (select * from syscolumns c,sysobjects o'
      
        'where o.id=c.id and o.name='#39'Secretariats'#39' and c.name='#39'ArchiveCen' +
        'terID'#39')                                                         ' +
        '                                                                ' +
        '         '
      
        'alter TABLE Secretariats add ArchiveCenterID  int Not Null  defa' +
        'ult (0)                                                         ' +
        '                                                                ' +
        '                     '
      '                                          '
      'GO'
      'if not exists (select * from syscolumns c,sysobjects o'
      
        'where o.id=c.id and o.name='#39'SendStatus'#39' and c.name='#39'SendStatusID' +
        #39')                                                              ' +
        '                                                                ' +
        '         '
      
        'alter TABLE SendStatus add SendStatusID  int Not Null default 0 ' +
        '                                                                ' +
        '                                                                ' +
        '                      '
      '                                         '
      'GO'
      'if not exists (select * from syscolumns c,sysobjects o'
      
        'where o.id=c.id and o.name='#39'SendStatus'#39' and c.name='#39'SendStatusTi' +
        'tle'#39')                                                           ' +
        '                                                                ' +
        '         '
      
        'alter TABLE SendStatus add SendStatusTitle  nvarchar(100) Not Nu' +
        'll default 0                                                    ' +
        '                                                                ' +
        '             '
      '                                                  '
      'GO'
      'if not exists (select * from syscolumns c,sysobjects o'
      
        'where o.id=c.id and o.name='#39'Sentenses'#39' and c.name='#39'ID'#39')         ' +
        '                                                                ' +
        '                                                                ' +
        '         '
      
        'alter TABLE Sentenses add ID  int Not Null default 0            ' +
        '                                                                ' +
        '                                                                ' +
        '                               '
      '                                '
      'GO'
      'if not exists (select * from syscolumns c,sysobjects o'
      
        'where o.id=c.id and o.name='#39'Sentenses'#39' and c.name='#39'SentenseName'#39 +
        ')                                                               ' +
        '                                                                ' +
        '         '
      
        'alter TABLE Sentenses add SentenseName  nvarchar(50) Null       ' +
        '                                                                ' +
        '                                                                ' +
        '                     '
      '                                          '
      'else'
      
        'alter TABLE Sentenses alter column SentenseName  nvarchar(50)  N' +
        'ull'
      'GO'
      'if not exists (select * from syscolumns c,sysobjects o'
      
        'where o.id=c.id and o.name='#39'Sentenses'#39' and c.name='#39'SentensValue'#39 +
        ')                                                               ' +
        '                                                                ' +
        '         '
      
        'alter TABLE Sentenses add SentensValue  nvarchar(255) Null      ' +
        '                                                                ' +
        '                                                                ' +
        '                      '
      '                                         '
      'else'
      
        'alter TABLE Sentenses alter column SentensValue  nvarchar(255)  ' +
        'Null'
      'GO'
      'if not exists (select * from syscolumns c,sysobjects o'
      
        'where o.id=c.id and o.name='#39'Settings'#39' and c.name='#39'UserID'#39')      ' +
        '                                                                ' +
        '                                                                ' +
        '         '
      
        'alter TABLE Settings add UserID  int Not Null default 0         ' +
        '                                                                ' +
        '                                                                ' +
        '                              '
      '                                 '
      'GO'
      'if not exists (select * from syscolumns c,sysobjects o'
      
        'where o.id=c.id and o.name='#39'Settings'#39' and c.name='#39'VariableId'#39')  ' +
        '                                                                ' +
        '                                                                ' +
        '         '
      
        'alter TABLE Settings add VariableId  int Not Null default 0     ' +
        '                                                                ' +
        '                                                                ' +
        '                             '
      '                                  '
      'GO'
      'if not exists (select * from syscolumns c,sysobjects o'
      
        'where o.id=c.id and o.name='#39'Settings'#39' and c.name='#39'Value'#39')       ' +
        '                                                                ' +
        '                                                                ' +
        '         '
      
        'alter TABLE Settings add Value  nvarchar(255) Null              ' +
        '                                                                ' +
        '                                                                ' +
        '                               '
      '                                '
      'else'
      'alter TABLE Settings alter column Value  nvarchar(255)  Null'
      'GO'
      'if not exists (select * from syscolumns c,sysobjects o'
      
        'where o.id=c.id and o.name='#39'Settings'#39' and c.name='#39'description'#39') ' +
        '                                                                ' +
        '                                                                ' +
        '         '
      
        'alter TABLE Settings add description  nvarchar(50) Null         ' +
        '                                                                ' +
        '                                                                ' +
        '                             '
      '                                  '
      'else'
      
        'alter TABLE Settings alter column description  nvarchar(50)  Nul' +
        'l'
      'GO'
      'if not exists (select * from syscolumns c,sysobjects o'
      
        'where o.id=c.id and o.name='#39'Subject'#39' and c.name='#39'SubjectID'#39')    ' +
        '                                                                ' +
        '                                                                ' +
        '         '
      
        'alter TABLE Subject add SubjectID  int Not Null default 0       ' +
        '                                                                ' +
        '                                                                ' +
        '                             '
      '                                  '
      'GO'
      'if not exists (select * from syscolumns c,sysobjects o'
      
        'where o.id=c.id and o.name='#39'Subject'#39' and c.name='#39'SubjectTitle'#39') ' +
        '                                                                ' +
        '                                                                ' +
        '         '
      
        'alter TABLE Subject add SubjectTitle  nvarchar(50) Not Null defa' +
        'ult 0                                                           ' +
        '                                                                ' +
        '                     '
      '                                          '
      'GO'
      'if not exists (select * from syscolumns c,sysobjects o'
      
        'where o.id=c.id and o.name='#39'Subject'#39' and c.name='#39'IsActive'#39')     ' +
        '                                                                ' +
        '                                                                ' +
        '         '
      
        'alter TABLE Subject add IsActive  bit Not Null  default (1)     ' +
        '                                                                ' +
        '                                                                ' +
        '                              '
      '                                 '
      'GO'
      'if not exists (select * from syscolumns c,sysobjects o'
      
        'where o.id=c.id and o.name='#39'sys_AppMessage'#39' and c.name='#39'ID'#39')    ' +
        '                                                                ' +
        '                                                                ' +
        '         '
      
        'alter TABLE sys_AppMessage add ID  int Not Null default 0       ' +
        '                                                                ' +
        '                                                                ' +
        '                         '
      '                                      '
      'GO'
      'if not exists (select * from syscolumns c,sysobjects o'
      
        'where o.id=c.id and o.name='#39'sys_AppMessage'#39' and c.name='#39'FarsiMes' +
        'sage'#39')                                                          ' +
        '                                                                ' +
        '        '
      ' '
      
        'alter TABLE sys_AppMessage add FarsiMessage  nvarchar(255) Null ' +
        '                                                                ' +
        '                                                                ' +
        '                '
      '                                               '
      'else'
      
        'alter TABLE sys_AppMessage alter column FarsiMessage  nvarchar(2' +
        '55)  Null'
      'GO'
      'if not exists (select * from syscolumns c,sysobjects o'
      
        'where o.id=c.id and o.name='#39'Tables'#39' and c.name='#39'TableId'#39')       ' +
        '                                                                ' +
        '                                                                ' +
        '         '
      
        'alter TABLE Tables add TableId  int Not Null default 0          ' +
        '                                                                ' +
        '                                                                ' +
        '                               '
      '                                '
      'GO'
      'if not exists (select * from syscolumns c,sysobjects o'
      
        'where o.id=c.id and o.name='#39'Tables'#39' and c.name='#39'TableName'#39')     ' +
        '                                                                ' +
        '                                                                ' +
        '         '
      'alter TABLE Tables add TableName  nvarchar(50) Null '
      'GO'
      'if not exists (select * from syscolumns c,sysobjects o'
      
        'where o.id=c.id and o.name='#39'Tables'#39' and c.name='#39'Description'#39')   ' +
        '                                                                ' +
        '                                                                ' +
        '         '
      'alter TABLE Tables add Description  nvarchar(50) Null '
      'GO'
      'if not exists (select * from syscolumns c,sysobjects o'
      
        'where o.id=c.id and o.name='#39'Tables'#39' and c.name='#39'TableType'#39')     ' +
        '                                                                ' +
        '                                                                ' +
        '         '
      'alter TABLE Tables add TableType  tinyint Null  '
      'GO'
      'if not exists (select * from syscolumns c,sysobjects o'
      
        'where o.id=c.id and o.name='#39'Tables'#39' and c.name='#39'TableCode'#39')     ' +
        '                                                                ' +
        '                                                                ' +
        '         '
      
        'alter TABLE Tables add TableCode  varchar(50) Null              ' +
        '                                                                ' +
        '                                                                ' +
        '                             '
      '                                  '
      'else'
      'alter TABLE Tables alter column TableCode  varchar(50)  Null'
      'GO'
      'if not exists (select * from syscolumns c,sysobjects o'
      
        'where o.id=c.id and o.name='#39'Tables'#39' and c.name='#39'UserField1'#39')    ' +
        '                                                                ' +
        '                                                                ' +
        '         '
      
        'alter TABLE Tables add UserField1  nvarchar(50) Null            ' +
        '                                                                ' +
        '                                                                ' +
        '                             '
      '                                  '
      'else'
      'alter TABLE Tables alter column UserField1  nvarchar(50)  Null'
      'GO'
      'if not exists (select * from syscolumns c,sysobjects o'
      
        'where o.id=c.id and o.name='#39'Tables'#39' and c.name='#39'UserField2'#39')    ' +
        '                                                                ' +
        '                                                                ' +
        '         '
      
        'alter TABLE Tables add UserField2  nvarchar(50) Null            ' +
        '                                                                ' +
        '                                                                ' +
        '                             '
      '                                  '
      'else'
      'alter TABLE Tables alter column UserField2  nvarchar(50)  Null'
      'GO'
      'if not exists (select * from syscolumns c,sysobjects o'
      
        'where o.id=c.id and o.name='#39'TemplateGroup'#39' and c.name='#39'TemplateG' +
        'roupID'#39')                                                        ' +
        '                                                                ' +
        '       '
      '  '
      
        'alter TABLE TemplateGroup add TemplateGroupID  int Not Null defa' +
        'ult 0                                                           ' +
        '                                                                ' +
        '                '
      '                                               '
      'GO'
      'if not exists (select * from syscolumns c,sysobjects o'
      
        'where o.id=c.id and o.name='#39'TemplateGroup'#39' and c.name='#39'TemplateG' +
        'roupTitle'#39')                                                     ' +
        '                                                                ' +
        '       '
      '  '
      
        'alter TABLE TemplateGroup add TemplateGroupTitle  nvarchar(100) ' +
        'Not Null default 0                                              ' +
        '                                                                ' +
        '       '
      '                                                        '
      'GO'
      'if not exists (select * from syscolumns c,sysobjects o'
      
        'where o.id=c.id and o.name='#39'Urgenceis'#39' and c.name='#39'ID'#39')         ' +
        '                                                                ' +
        '                                                                ' +
        '         '
      
        'alter TABLE Urgenceis add ID  int Not Null default 0            ' +
        '                                                                ' +
        '                                                                ' +
        '                                '
      '                               '
      'GO'
      'if not exists (select * from syscolumns c,sysobjects o'
      
        'where o.id=c.id and o.name='#39'Urgenceis'#39' and c.name='#39'Title'#39')      ' +
        '                                                                ' +
        '                                                                ' +
        '         '
      
        'alter TABLE Urgenceis add Title  nvarchar(50) Null              ' +
        '                                                                ' +
        '                                                                ' +
        '                                '
      '                               '
      'else'
      'alter TABLE Urgenceis alter column Title  nvarchar(50)  Null'
      'GO'
      'if not exists (select * from syscolumns c,sysobjects o'
      
        'where o.id=c.id and o.name='#39'UserAccArchive'#39' and c.name='#39'UserAccA' +
        'rchiveID'#39')                                                      ' +
        '                                                                ' +
        '       '
      '  '
      
        'alter TABLE UserAccArchive add UserAccArchiveID  int Not Null de' +
        'fault 0                                                         ' +
        '                                                                ' +
        '                 '
      '                                              '
      'GO'
      'if not exists (select * from syscolumns c,sysobjects o'
      
        'where o.id=c.id and o.name='#39'UserAccArchive'#39' and c.name='#39'SecID'#39') ' +
        '                                                                ' +
        '                                                                ' +
        '         '
      
        'alter TABLE UserAccArchive add SecID  int Not Null default 0    ' +
        '                                                                ' +
        '                                                                ' +
        '                         '
      '                                      '
      'GO'
      'if not exists (select * from syscolumns c,sysobjects o'
      
        'where o.id=c.id and o.name='#39'UserAccArchive'#39' and c.name='#39'UserID'#39')' +
        '                                                                ' +
        '                                                                ' +
        '         '
      
        'alter TABLE UserAccArchive add UserID  int Not Null default 0   ' +
        '                                                                ' +
        '                                                                ' +
        '                        '
      '                                       '
      'GO'
      'if not exists (select * from syscolumns c,sysobjects o'
      
        'where o.id=c.id and o.name='#39'UserAccArchive'#39' and c.name='#39'ArchiveC' +
        'enterID'#39')                                                       ' +
        '                                                                ' +
        '        '
      ' '
      
        'alter TABLE UserAccArchive add ArchiveCenterID  int Not Null def' +
        'ault 0                                                          ' +
        '                                                                ' +
        '                  '
      '                                             '
      'GO'
      'if not exists (select * from syscolumns c,sysobjects o'
      
        'where o.id=c.id and o.name='#39'UserAccArchive'#39' and c.name='#39'ArchiveF' +
        'olderID'#39')                                                       ' +
        '                                                                ' +
        '         '
      
        'alter TABLE UserAccArchive add ArchiveFolderID  int Not Null def' +
        'ault 0                                                          ' +
        '                                                                ' +
        '                   '
      '                                            '
      'GO'
      'if not exists (select * from syscolumns c,sysobjects o'
      
        'where o.id=c.id and o.name='#39'UserAccArchive'#39' and c.name='#39'ISAccess' +
        #39')                                                              ' +
        '                                                                ' +
        '         '
      
        'alter TABLE UserAccArchive add ISAccess  bit Null               ' +
        '                                                                ' +
        '                                                                ' +
        '                               '
      '                                '
      'else'
      'alter TABLE UserAccArchive alter column ISAccess  bit  Null'
      'GO'
      'if not exists (select * from syscolumns c,sysobjects o'
      
        'where o.id=c.id and o.name='#39'UserExtention'#39' and c.name='#39'UserExten' +
        'tionID'#39')                                                        ' +
        '                                                                ' +
        '         '
      
        'alter TABLE UserExtention add UserExtentionID  int Not Null defa' +
        'ult 0                                                           ' +
        '                                                                ' +
        '                   '
      '                                            '
      'GO'
      'if not exists (select * from syscolumns c,sysobjects o'
      
        'where o.id=c.id and o.name='#39'UserExtention'#39' and c.name='#39'UserId'#39') ' +
        '                                                                ' +
        '                                                                ' +
        '         '
      
        'alter TABLE UserExtention add UserId  int Not Null default 0    ' +
        '                                                                ' +
        '                                                                ' +
        '                          '
      '                                     '
      'GO'
      'if not exists (select * from syscolumns c,sysobjects o'
      
        'where o.id=c.id and o.name='#39'UserExtention'#39' and c.name='#39'Extention' +
        'ID'#39')                                                            ' +
        '                                                                ' +
        '         '
      
        'alter TABLE UserExtention add ExtentionID  int Not Null default ' +
        '0                                                               ' +
        '                                                                ' +
        '                       '
      '                                        '
      'GO'
      'if not exists (select * from syscolumns c,sysobjects o'
      
        'where o.id=c.id and o.name='#39'UserExtention'#39' and c.name='#39'ReaderApp' +
        'lication'#39')                                                      ' +
        '                                                                ' +
        '         '
      
        'alter TABLE UserExtention add ReaderApplication  nvarchar(2000) ' +
        'Null                                                            ' +
        '                                                                ' +
        '                 '
      '                                              '
      'else'
      
        'alter TABLE UserExtention alter column ReaderApplication  nvarch' +
        'ar(2000)  Null'
      'GO'
      'if not exists (select * from syscolumns c,sysobjects o'
      'where o.id=c.id and o.name='#39'UserLog'#39' and c.name='#39'UserID'#39')'
      'alter TABLE UserLog add UserID  int Not Null default 0'
      'else'
      
        'alter TABLE UserLog alter column UserID  int Not Null           ' +
        '                                                                ' +
        '                                                                ' +
        '                              '
      '                             '
      'GO'
      'if not exists (select * from syscolumns c,sysobjects o'
      'where o.id=c.id and o.name='#39'UserLog'#39' and c.name='#39'FormID'#39')'
      'alter TABLE UserLog add FormID  int Not Null  default ((1))'
      ''
      'GO'
      'if not exists (select * from syscolumns c,sysobjects o'
      
        'where o.id=c.id and o.name='#39'UserLog'#39' and c.name='#39'ActionID'#39')     ' +
        '                                                                ' +
        '                                                                ' +
        '         '
      
        'alter TABLE UserLog add ActionID  int Not Null default 0        ' +
        '                                                                ' +
        '                                                                ' +
        '                             '
      '                                  '
      'GO'
      'if not exists (select * from syscolumns c,sysobjects o'
      
        'where o.id=c.id and o.name='#39'UserLog'#39' and c.name='#39'Time1'#39')        ' +
        '                                                                ' +
        '                                                                ' +
        '         '
      
        'alter TABLE UserLog add Time1  datetime Not Null  default (getda' +
        'te())                                                           ' +
        '                                                                ' +
        '                   '
      '                                            '
      'GO'
      'if not exists (select * from syscolumns c,sysobjects o'
      
        'where o.id=c.id and o.name='#39'UserLog'#39' and c.name='#39'LetterID'#39')     ' +
        '                                                                ' +
        '                                                                ' +
        '         '
      
        'alter TABLE UserLog add LetterID  int Null                      ' +
        '                                                                ' +
        '                                                                ' +
        '                                     '
      '                          '
      'else'
      'alter TABLE UserLog alter column LetterID  int  Null'
      'GO'
      'if not exists (select * from syscolumns c,sysobjects o'
      
        'where o.id=c.id and o.name='#39'UserLoginLogout'#39' and c.name='#39'UserLog' +
        'inLogoutID'#39')                                                    ' +
        '                                                                ' +
        '      '
      '   '
      
        'alter TABLE UserLoginLogout add UserLoginLogoutID  int Not Null ' +
        'default 0                                                       ' +
        '                                                                ' +
        '               '
      '                                                '
      'GO'
      'if not exists (select * from syscolumns c,sysobjects o'
      
        'where o.id=c.id and o.name='#39'UserLoginLogout'#39' and c.name='#39'UserID'#39 +
        ')                                                               ' +
        '                                                                ' +
        '         '
      
        'alter TABLE UserLoginLogout add UserID  int Not Null default 0  ' +
        '                                                                ' +
        '                                                                ' +
        '                        '
      '                                       '
      'GO'
      'if not exists (select * from syscolumns c,sysobjects o'
      
        'where o.id=c.id and o.name='#39'UserLoginLogout'#39' and c.name='#39'IPAddre' +
        'ss'#39')                                                            ' +
        '                                                                ' +
        '         '
      
        'alter TABLE UserLoginLogout add IPAddress  char(15) Null        ' +
        '                                                                ' +
        '                                                                ' +
        '                         '
      '                                      '
      'else'
      
        'alter TABLE UserLoginLogout alter column IPAddress  char(15)  Nu' +
        'll'
      'GO'
      'if not exists (select * from syscolumns c,sysobjects o'
      
        'where o.id=c.id and o.name='#39'UserLoginLogout'#39' and c.name='#39'LoginTi' +
        'me'#39')                                                            ' +
        '                                                                ' +
        '         '
      
        'alter TABLE UserLoginLogout add LoginTime  datetime Not Null  de' +
        'fault (getdate())                                               ' +
        '                                                                ' +
        '           '
      '                                                    '
      'GO'
      'if not exists (select * from syscolumns c,sysobjects o'
      
        'where o.id=c.id and o.name='#39'UserLoginLogout'#39' and c.name='#39'LogoutT' +
        'ime'#39')                                                           ' +
        '                                                                ' +
        '         '
      
        'alter TABLE UserLoginLogout add LogoutTime  datetime Not Null  d' +
        'efault (getdate())                                              ' +
        '                                                                ' +
        '         '
      '                                                      '
      'GO'
      'if not exists (select * from syscolumns c,sysobjects o'
      
        'where o.id=c.id and o.name='#39'UserLoginLogout'#39' and c.name='#39'isSafeL' +
        'ogout'#39')                                                         ' +
        '                                                                ' +
        '         '
      
        'alter TABLE UserLoginLogout add isSafeLogout  bit Not Null  defa' +
        'ult (0)                                                         ' +
        '                                                                ' +
        '                   '
      '                                            '
      'GO'
      'if not exists (select * from syscolumns c,sysobjects o'
      
        'where o.id=c.id and o.name='#39'UserMessage'#39' and c.name='#39'UserMessage' +
        'ID'#39')                                                            ' +
        '                                                                ' +
        '         '
      
        'alter TABLE UserMessage add UserMessageID  bigint Not Null defau' +
        'lt 0                                                            ' +
        '                                                                ' +
        '                '
      '                                               '
      'GO'
      'if not exists (select * from syscolumns c,sysobjects o'
      
        'where o.id=c.id and o.name='#39'UserMessage'#39' and c.name='#39'To_'#39')      ' +
        '                                                                ' +
        '                                                                ' +
        '         '
      
        'alter TABLE UserMessage add To_  int Not Null default 0         ' +
        '                                                                ' +
        '                                                                ' +
        '                           '
      '                                    '
      'GO'
      'if not exists (select * from syscolumns c,sysobjects o'
      
        'where o.id=c.id and o.name='#39'UserMessage'#39' and c.name='#39'Code'#39')     ' +
        '                                                                ' +
        '                                                                ' +
        '         '
      
        'alter TABLE UserMessage add Code  int Null                      ' +
        '                                                                ' +
        '                                                                ' +
        '                                  '
      '                             '
      'else'
      'alter TABLE UserMessage alter column Code  int  Null'
      'GO'
      'if not exists (select * from syscolumns c,sysobjects o'
      
        'where o.id=c.id and o.name='#39'UserMessage'#39' and c.name='#39'From_'#39')    ' +
        '                                                                ' +
        '                                                                ' +
        '         '
      
        'alter TABLE UserMessage add From_  int Null                     ' +
        '                                                                ' +
        '                                                                ' +
        '                                 '
      '                              '
      'else'
      'alter TABLE UserMessage alter column From_  int  Null'
      'GO'
      'if not exists (select * from syscolumns c,sysobjects o'
      
        'where o.id=c.id and o.name='#39'UserMessage'#39' and c.name='#39'MsgDate'#39')  ' +
        '                                                                ' +
        '                                                                ' +
        '         '
      
        'alter TABLE UserMessage add MsgDate  varchar(10) Null           ' +
        '                                                                ' +
        '                                                                ' +
        '                        '
      '                                       '
      'else'
      'alter TABLE UserMessage alter column MsgDate  varchar(10)  Null'
      'GO'
      'if not exists (select * from syscolumns c,sysobjects o'
      
        'where o.id=c.id and o.name='#39'UserMessage'#39' and c.name='#39'MsgTime'#39')  ' +
        '                                                                ' +
        '                                                                ' +
        '         '
      
        'alter TABLE UserMessage add MsgTime  varchar(6) Null            ' +
        '                                                                ' +
        '                                                                ' +
        '                         '
      '                                      '
      'else'
      'alter TABLE UserMessage alter column MsgTime  varchar(6)  Null'
      'GO'
      'if not exists (select * from syscolumns c,sysobjects o'
      
        'where o.id=c.id and o.name='#39'UserMessage'#39' and c.name='#39'Subject'#39')  ' +
        '                                                                ' +
        '                                                                ' +
        '         '
      
        'alter TABLE UserMessage add Subject  nvarchar(50) Null          ' +
        '                                                                ' +
        '                                                                ' +
        '                         '
      '                                      '
      'else'
      'alter TABLE UserMessage alter column Subject  nvarchar(50)  Null'
      'GO'
      'if not exists (select * from syscolumns c,sysobjects o'
      
        'where o.id=c.id and o.name='#39'UserMessage'#39' and c.name='#39'Message'#39')  ' +
        '                                                                ' +
        '                                                                ' +
        '         '
      
        'alter TABLE UserMessage add Message  text Null                  ' +
        '                                                                ' +
        '                                                                ' +
        '                             '
      '                                  '
      ''
      'GO'
      'if not exists (select * from syscolumns c,sysobjects o'
      
        'where o.id=c.id and o.name='#39'UserMessage'#39' and c.name='#39'Status'#39')   ' +
        '                                                                ' +
        '                                                                ' +
        '         '
      
        'alter TABLE UserMessage add Status  int Null                    ' +
        '                                                                ' +
        '                                                                ' +
        '                                  '
      '                             '
      'else'
      'alter TABLE UserMessage alter column Status  int  Null'
      'GO'
      'if not exists (select * from syscolumns c,sysobjects o'
      
        'where o.id=c.id and o.name='#39'UserNote'#39' and c.name='#39'UserNoteID'#39')  ' +
        '                                                                ' +
        '                                                                ' +
        '         '
      
        'alter TABLE UserNote add UserNoteID  int Not Null default 0     ' +
        '                                                                ' +
        '                                                                ' +
        '                         '
      '                                      '
      'GO'
      'if not exists (select * from syscolumns c,sysobjects o'
      
        'where o.id=c.id and o.name='#39'UserNote'#39' and c.name='#39'UserID'#39')      ' +
        '                                                                ' +
        '                                                                ' +
        '         '
      
        'alter TABLE UserNote add UserID  int Not Null default 0         ' +
        '                                                                ' +
        '                                                                ' +
        '                            '
      '                                   '
      'GO'
      'if not exists (select * from syscolumns c,sysobjects o'
      
        'where o.id=c.id and o.name='#39'UserNote'#39' and c.name='#39'Note'#39')        ' +
        '                                                                ' +
        '                                                                ' +
        '         '
      
        'alter TABLE UserNote add Note  ntext Null                       ' +
        '                                                                ' +
        '                                                                ' +
        '                                   '
      '                            '
      ''
      'GO'
      'if not exists (select * from syscolumns c,sysobjects o'
      
        'where o.id=c.id and o.name='#39'UserNote'#39' and c.name='#39'CreateDate'#39')  ' +
        '                                                                ' +
        '                                                                ' +
        '         '
      
        'alter TABLE UserNote add CreateDate  char(10) Not Null default 0' +
        '                                                                ' +
        '                                                                ' +
        '                    '
      '                                           '
      'GO'
      'if not exists (select * from syscolumns c,sysobjects o'
      
        'where o.id=c.id and o.name='#39'Users'#39' and c.name='#39'Id'#39')             ' +
        '                                                                ' +
        '                                                                ' +
        '         '
      
        'alter TABLE Users add Id  int Not Null default 0                ' +
        '                                                                ' +
        '                                                                ' +
        '                                   '
      '                            '
      'GO'
      'if not exists (select * from syscolumns c,sysobjects o'
      
        'where o.id=c.id and o.name='#39'Users'#39' and c.name='#39'Title'#39')          ' +
        '                                                                ' +
        '                                                                ' +
        '         '
      
        'alter TABLE Users add Title  nvarchar(50) Null                  ' +
        '                                                                ' +
        '                                                                ' +
        '                                   '
      '                            '
      'else'
      'alter TABLE Users alter column Title  nvarchar(50)  Null'
      'GO'
      'if not exists (select * from syscolumns c,sysobjects o'
      
        'where o.id=c.id and o.name='#39'Users'#39' and c.name='#39'UserName'#39')       ' +
        '                                                                ' +
        '                                                                ' +
        '         '
      
        'alter TABLE Users add UserName  nvarchar(50) Null               ' +
        '                                                                ' +
        '                                                                ' +
        '                            '
      '                                   '
      'else'
      'alter TABLE Users alter column UserName  nvarchar(50)  Null'
      'GO'
      'if not exists (select * from syscolumns c,sysobjects o'
      
        'where o.id=c.id and o.name='#39'Users'#39' and c.name='#39'PassWord'#39')       ' +
        '                                                                ' +
        '                                                                ' +
        '         '
      
        'alter TABLE Users add PassWord  nvarchar(100) Null              ' +
        '                                                                ' +
        '                                                                ' +
        '                           '
      '                                    '
      'else'
      'alter TABLE Users alter column PassWord  nvarchar(100)  Null'
      'GO'
      'if not exists (select * from syscolumns c,sysobjects o'
      
        'where o.id=c.id and o.name='#39'Users'#39' and c.name='#39'AccessID'#39')       ' +
        '                                                                ' +
        '                                                                ' +
        '         '
      
        'alter TABLE Users add AccessID  tinyint Null                    ' +
        '                                                                ' +
        '                                                                ' +
        '                                    '
      '                           '
      'else'
      'alter TABLE Users alter column AccessID  tinyint  Null'
      'GO'
      'if not exists (select * from syscolumns c,sysobjects o'
      
        'where o.id=c.id and o.name='#39'Users'#39' and c.name='#39'FromOrgID'#39')      ' +
        '                                                                ' +
        '                                                                ' +
        '         '
      
        'alter TABLE Users add FromOrgID  int Null                       ' +
        '                                                                ' +
        '                                                                ' +
        '                                    '
      '                           '
      'else'
      'alter TABLE Users alter column FromOrgID  int  Null'
      'GO'
      'if not exists (select * from syscolumns c,sysobjects o'
      
        'where o.id=c.id and o.name='#39'Users'#39' and c.name='#39'DefualtSecretaria' +
        'tID'#39')                                                           ' +
        '                                                                ' +
        '         '
      
        'alter TABLE Users add DefualtSecretariatID  tinyint Not Null  de' +
        'fault ((1))                                                     ' +
        '                                                                ' +
        '                    '
      '                                           '
      'GO'
      'if not exists (select * from syscolumns c,sysobjects o'
      
        'where o.id=c.id and o.name='#39'Users'#39' and c.name='#39'IsSecretariantSta' +
        'ffer'#39')                                                          ' +
        '                                                                ' +
        '         '
      
        'alter TABLE Users add IsSecretariantStaffer  bit Null           ' +
        '                                                                ' +
        '                                                                ' +
        '                               '
      '                                '
      'else'
      'alter TABLE Users alter column IsSecretariantStaffer  bit  Null'
      'GO'
      'if not exists (select * from syscolumns c,sysobjects o'
      
        'where o.id=c.id and o.name='#39'Users'#39' and c.name='#39'KartableGridInfo'#39 +
        ')                                                               ' +
        '                                                                ' +
        '         '
      
        'alter TABLE Users add KartableGridInfo  image Null              ' +
        '                                                                ' +
        '                                                                ' +
        '                               '
      '                                '
      ''
      'GO'
      'if not exists (select * from syscolumns c,sysobjects o'
      
        'where o.id=c.id and o.name='#39'Users'#39' and c.name='#39'DabirGridInfo'#39')  ' +
        '                                                                ' +
        '                                                                ' +
        '         '
      
        'alter TABLE Users add DabirGridInfo  image Null                 ' +
        '                                                                ' +
        '                                                                ' +
        '                                 '
      '                              '
      ''
      'GO'
      'if not exists (select * from syscolumns c,sysobjects o'
      
        'where o.id=c.id and o.name='#39'Users'#39' and c.name='#39'EndActiveDate'#39')  ' +
        '                                                                ' +
        '                                                                ' +
        '         '
      
        'alter TABLE Users add EndActiveDate  char(10) Null              ' +
        '                                                                ' +
        '                                                                ' +
        '                             '
      '                                  '
      'else'
      'alter TABLE Users alter column EndActiveDate  char(10)  Null'
      'GO'
      'if not exists (select * from syscolumns c,sysobjects o'
      
        'where o.id=c.id and o.name='#39'Users'#39' and c.name='#39'BeginActiveDate'#39')' +
        '                                                                ' +
        '                                                                ' +
        '         '
      
        'alter TABLE Users add BeginActiveDate  char(10) Null            ' +
        '                                                                ' +
        '                                                                ' +
        '                            '
      '                                   '
      'else'
      'alter TABLE Users alter column BeginActiveDate  char(10)  Null'
      'GO'
      'if not exists (select * from syscolumns c,sysobjects o'
      
        'where o.id=c.id and o.name='#39'Users'#39' and c.name='#39'AlternativeUserID' +
        #39')                                                              ' +
        '                                                                ' +
        '         '
      
        'alter TABLE Users add AlternativeUserID  int Null               ' +
        '                                                                ' +
        '                                                                ' +
        '                                 '
      '                              '
      'else'
      'alter TABLE Users alter column AlternativeUserID  int  Null'
      'GO'
      'if not exists (select * from syscolumns c,sysobjects o'
      
        'where o.id=c.id and o.name='#39'Users'#39' and c.name='#39'AlternativeEndDat' +
        'e'#39')                                                             ' +
        '                                                                ' +
        '         '
      
        'alter TABLE Users add AlternativeEndDate  char(10) Null         ' +
        '                                                                ' +
        '                                                                ' +
        '                          '
      '                                     '
      'else'
      
        'alter TABLE Users alter column AlternativeEndDate  char(10)  Nul' +
        'l'
      'GO'
      'if not exists (select * from syscolumns c,sysobjects o'
      
        'where o.id=c.id and o.name='#39'Users'#39' and c.name='#39'AlternativebeginD' +
        'ate'#39')                                                           ' +
        '                                                                ' +
        '         '
      
        'alter TABLE Users add AlternativebeginDate  char(10) Null       ' +
        '                                                                ' +
        '                                                                ' +
        '                          '
      '                                     '
      'else'
      
        'alter TABLE Users alter column AlternativebeginDate  char(10)  N' +
        'ull'
      'GO'
      'if not exists (select * from syscolumns c,sysobjects o'
      
        'where o.id=c.id and o.name='#39'Users'#39' and c.name='#39'HasSecureLetterAc' +
        'cess'#39')                                                          ' +
        '                                                                ' +
        '         '
      
        'alter TABLE Users add HasSecureLetterAccess  bit Not Null  defau' +
        'lt ((1))                                                        ' +
        '                                                                ' +
        '                  '
      '                                             '
      'GO'
      'if not exists (select * from syscolumns c,sysobjects o'
      
        'where o.id=c.id and o.name='#39'Users'#39' and c.name='#39'SecondOrgID'#39')    ' +
        '                                                                ' +
        '                                                                ' +
        '         '
      
        'alter TABLE Users add SecondOrgID  int Null                     ' +
        '                                                                ' +
        '                                                                ' +
        '                                  '
      '                             '
      'else'
      'alter TABLE Users alter column SecondOrgID  int  Null'
      'GO'
      'if not exists (select * from syscolumns c,sysobjects o'
      
        'where o.id=c.id and o.name='#39'Users'#39' and c.name='#39'eCartableGridInfo' +
        #39')                                                              ' +
        '                                                                ' +
        '         '
      
        'alter TABLE Users add eCartableGridInfo  varchar(500) Null      ' +
        '                                                                ' +
        '                                                                ' +
        '                         '
      '                                      '
      'else'
      
        'alter TABLE Users alter column eCartableGridInfo  varchar(500)  ' +
        'Null'
      'GO'
      'if not exists (select * from syscolumns c,sysobjects o'
      
        'where o.id=c.id and o.name='#39'Users'#39' and c.name='#39'eCartableTheme'#39') ' +
        '                                                                ' +
        '                                                                ' +
        '         '
      
        'alter TABLE Users add eCartableTheme  varchar(50) Null          ' +
        '                                                                ' +
        '                                                                ' +
        '                         '
      '                                      '
      'else'
      'alter TABLE Users alter column eCartableTheme  varchar(50)  Null'
      'GO'
      'if not exists (select * from syscolumns c,sysobjects o'
      
        'where o.id=c.id and o.name='#39'Users'#39' and c.name='#39'Email'#39')          ' +
        '                                                                ' +
        '                                                                ' +
        '         '
      
        'alter TABLE Users add Email  nvarchar(100) Null                 ' +
        '                                                                ' +
        '                                                                ' +
        '                                '
      '                               '
      'else'
      'alter TABLE Users alter column Email  nvarchar(100)  Null'
      'GO'
      'if not exists (select * from syscolumns c,sysobjects o'
      
        'where o.id=c.id and o.name='#39'UserSecretariats'#39' and c.name='#39'UserId' +
        #39')                                                              ' +
        '                                                                ' +
        '         '
      
        'alter TABLE UserSecretariats add UserId  int Not Null default 0 ' +
        '                                                                ' +
        '                                                                ' +
        '                         '
      '                                      '
      'GO'
      'if not exists (select * from syscolumns c,sysobjects o'
      
        'where o.id=c.id and o.name='#39'UserSecretariats'#39' and c.name='#39'SecId'#39 +
        ')                                                               ' +
        '                                                                ' +
        '         '
      
        'alter TABLE UserSecretariats add SecId  int Not Null default 0  ' +
        '                                                                ' +
        '                                                                ' +
        '                          '
      '                                     '
      'GO'
      'if not exists (select * from syscolumns c,sysobjects o'
      
        'where o.id=c.id and o.name='#39'UserShortCut'#39' and c.name='#39'userShortC' +
        'utID'#39')                                                          ' +
        '                                                                ' +
        '         '
      
        'alter TABLE UserShortCut add userShortCutID  int Not Null defaul' +
        't 0                                                             ' +
        '                                                                ' +
        '                    '
      '                                           '
      'GO'
      'if not exists (select * from syscolumns c,sysobjects o'
      
        'where o.id=c.id and o.name='#39'UserShortCut'#39' and c.name='#39'UserID'#39')  ' +
        '                                                                ' +
        '                                                                ' +
        '         '
      
        'alter TABLE UserShortCut add UserID  int Not Null default 0     ' +
        '                                                                ' +
        '                                                                ' +
        '                          '
      '                                     '
      'GO'
      'if not exists (select * from syscolumns c,sysobjects o'
      
        'where o.id=c.id and o.name='#39'UserShortCut'#39' and c.name='#39'keyText'#39') ' +
        '                                                                ' +
        '                                                                ' +
        '         '
      
        'alter TABLE UserShortCut add keyText  nvarchar(100) Not Null def' +
        'ault 0                                                          ' +
        '                                                                ' +
        '                '
      '                                               '
      'GO'
      'if not exists (select * from syscolumns c,sysobjects o'
      
        'where o.id=c.id and o.name='#39'UserShortCut'#39' and c.name='#39'altKey'#39')  ' +
        '                                                                ' +
        '                                                                ' +
        '         '
      
        'alter TABLE UserShortCut add altKey  char(1) Not Null default 0 ' +
        '                                                                ' +
        '                                                                ' +
        '                       '
      '                                        '
      'GO'
      'if not exists (select * from syscolumns c,sysobjects o'
      
        'where o.id=c.id and o.name='#39'UserSign'#39' and c.name='#39'UserID'#39')      ' +
        '                                                                ' +
        '                                                                ' +
        '         '
      
        'alter TABLE UserSign add UserID  int Not Null default 0         ' +
        '                                                                ' +
        '                                                                ' +
        '                             '
      '                                  '
      'GO'
      'if not exists (select * from syscolumns c,sysobjects o'
      
        'where o.id=c.id and o.name='#39'UserSign'#39' and c.name='#39'UserSign'#39')    ' +
        '                                                                ' +
        '                                                                ' +
        '         '
      
        'alter TABLE UserSign add UserSign  image Not Null default 0     ' +
        '                                                                ' +
        '                                                                ' +
        '                         '
      '                                      '
      'GO'
      'if not exists (select * from syscolumns c,sysobjects o'
      
        'where o.id=c.id and o.name='#39'UserTemplateGroup'#39' and c.name='#39'UserT' +
        'emplateGroupID'#39')                                                ' +
        '                                                                '
      '         '
      
        'alter TABLE UserTemplateGroup add UserTemplateGroupID  int Not N' +
        'ull default 0                                                   ' +
        '                                                                ' +
        '         '
      '                                                      '
      'GO'
      'if not exists (select * from syscolumns c,sysobjects o'
      
        'where o.id=c.id and o.name='#39'UserTemplateGroup'#39' and c.name='#39'Templ' +
        'ateGroupID'#39')                                                    ' +
        '                                                                ' +
        '   '
      '      '
      
        'alter TABLE UserTemplateGroup add TemplateGroupID  int Not Null ' +
        'default 0                                                       ' +
        '                                                                ' +
        '             '
      '                                                  '
      'GO'
      'if not exists (select * from syscolumns c,sysobjects o'
      
        'where o.id=c.id and o.name='#39'UserTemplateGroup'#39' and c.name='#39'UserI' +
        'D'#39')                                                             ' +
        '                                                                ' +
        '         '
      
        'alter TABLE UserTemplateGroup add UserID  int Not Null default 0' +
        '                                                                ' +
        '                                                                ' +
        '                     '
      '                                          '
      'GO'
      'if not exists (select * from syscolumns c,sysobjects o'
      
        'where o.id=c.id and o.name='#39'WorkGroup'#39' and c.name='#39'WorkGroupID'#39')' +
        '                                                                ' +
        '                                                                ' +
        '         '
      
        'alter TABLE WorkGroup add WorkGroupID  int Not Null default 0   ' +
        '                                                                ' +
        '                                                                ' +
        '                     '
      '                                          '
      'GO'
      'if not exists (select * from syscolumns c,sysobjects o'
      
        'where o.id=c.id and o.name='#39'WorkGroup'#39' and c.name='#39'Title'#39')      ' +
        '                                                                ' +
        '                                                                ' +
        '         '
      
        'alter TABLE WorkGroup add Title  nvarchar(50) Null              ' +
        '                                                                ' +
        '                                                                ' +
        '                              '
      '                                 '
      'else'
      'alter TABLE WorkGroup alter column Title  nvarchar(50)  Null'
      'GO'
      'if not exists (select * from syscolumns c,sysobjects o'
      
        'where o.id=c.id and o.name='#39'WorkGroup'#39' and c.name='#39'Descript'#39')   ' +
        '                                                                ' +
        '                                                                ' +
        '         '
      
        'alter TABLE WorkGroup add Descript  nvarchar(300) Null          ' +
        '                                                                ' +
        '                                                                ' +
        '                         '
      '                                      '
      'else'
      'alter TABLE WorkGroup alter column Descript  nvarchar(300)  Null'
      'GO'
      'if not exists (select * from syscolumns c,sysobjects o'
      
        'where o.id=c.id and o.name='#39'WorkGroup'#39' and c.name='#39'UserID'#39')     ' +
        '                                                                ' +
        '                                                                ' +
        '         '
      
        'alter TABLE WorkGroup add UserID  int Not Null default 0        ' +
        '                                                                ' +
        '                                                                ' +
        '                          '
      '                                     '
      'GO'
      'if not exists (select * from syscolumns c,sysobjects o'
      
        'where o.id=c.id and o.name='#39'WorkGroupOrg'#39' and c.name='#39'WorkGroupO' +
        'rgID'#39')                                                          ' +
        '                                                                ' +
        '     '
      '    '
      
        'alter TABLE WorkGroupOrg add WorkGroupOrgID  int Not Null defaul' +
        't 0                                                             ' +
        '                                                                ' +
        '               '
      '                                                '
      'GO'
      'if not exists (select * from syscolumns c,sysobjects o'
      
        'where o.id=c.id and o.name='#39'WorkGroupOrg'#39' and c.name='#39'FromOrgID'#39 +
        ')                                                               ' +
        '                                                                ' +
        '         '
      
        'alter TABLE WorkGroupOrg add FromOrgID  int Not Null default 0  ' +
        '                                                                ' +
        '                                                                ' +
        '                    '
      '                                           '
      'GO'
      'if not exists (select * from syscolumns c,sysobjects o'
      
        'where o.id=c.id and o.name='#39'WorkGroupOrg'#39' and c.name='#39'WorkGroupI' +
        'D'#39')                                                             ' +
        '                                                                ' +
        '        '
      ' '
      
        'alter TABLE WorkGroupOrg add WorkGroupID  int Not Null default 0' +
        '                                                                ' +
        '                                                                ' +
        '                  '
      '                                             '
      'GO'
      ''
      ''
      'GO'
      
        'if exists (select * from sysindexes where name = '#39'IX_UserLog_Act' +
        'ionID'#39')'
      ''
      'DROP INDEX userlog.IX_UserLog_ActionID '
      'GO'
      
        'if exists (select * from sysindexes where name = '#39'IX_UserLog_Use' +
        'r_Act_Form'#39')'
      'DROP INDEX UserLog.IX_UserLog_User_Act_Form'
      'GO'
      
        'if exists (select * from sysindexes where name = '#39'IX_UserLog_Use' +
        'r_Act_Form_Letter'#39')'
      'DROP INDEX UserLog.IX_UserLog_User_Act_Form_Letter'
      'GO'
      
        'alter table dbo.UserLog alter column ActionID nvarchar(50) not n' +
        'ull'
      ''
      'GO'
      ''
      
        'CREATE NONCLUSTERED INDEX [IX_UserLog_ActionID] ON [dbo].[UserLo' +
        'g]'
      '( '#9'[ActionID] ASC            )'
      ''
      ''
      'GO'
      ''
      
        'CREATE NONCLUSTERED INDEX [IX_UserLog_User_Act_Form] ON [dbo].[U' +
        'serLog] '
      '( '#9'[UserID] ASC,'
      #9'[ActionID] ASC,'
      #9'[FormID] ASC )'
      'GO'
      ''
      
        'CREATE NONCLUSTERED INDEX [IX_UserLog_User_Act_Form_Letter] ON [' +
        'dbo].[UserLog]'
      '( '#9'[UserID] ASC,'
      #9'[ActionID] ASC,'
      #9'[FormID] ASC,'
      #9'[LetterID] ASC )'
      ''
      ''
      'go'
      
        'if exists (select * from sysindexes where name = '#39'IX_Actions_ID'#39 +
        ')'
      'DROP INDEX Actions.IX_Actions_ID '
      'GO'
      
        'if  Exists(Select * from Sysindexes Where Name='#39'PK_ActionsAccess' +
        #39')'
      'ALTER TABLE dbo.ActionsAccess DROP CONSTRAINT PK_ActionsAccess'
      'GO'
      
        'alter table dbo.ActionsAccess alter column ActionID nvarchar(50)' +
        ' not null'
      'GO'
      ''
      'alter table dbo.Actions alter column ID nvarchar(50) not null'
      'GO'
      'CREATE NONCLUSTERED INDEX [IX_Actions_ID] ON [dbo].[Actions] '
      '('
      #9'[ID] ASC'
      ') '
      ''
      'GO'
      ''
      'ALTER TABLE dbo.ActionsAccess ADD CONSTRAINT'
      #9'PK_ActionsAccess PRIMARY KEY CLUSTERED '
      #9'('
      #9'AccessID,'
      #9'ActionID,'
      #9'FormTag'
      #9')'
      'GO'
      ''
      
        'IF  EXISTS (SELECT * FROM sysobjects WHERE id = OBJECT_ID(N'#39'[dbo' +
        '].[dropDefault]'#39') AND type in (N'#39'P'#39', N'#39'PC'#39'))'
      'DROP PROCEDURE [dbo].[dropDefault]'
      'GO'
      'Create Procedure [dbo].[dropDefault]'
      '@tablename varchar(100),'
      '@colname varchar(100)'
      'as'
      ''
      'declare @dfName varchar(100),@sql nvarchar(4000)'
      ''
      'select top 1 @dfname=o.name'
      'from sysconstraints sc,sysobjects o,syscolumns c'
      
        'where sc.id=object_id(@tablename) and o.id=sc.constid and c.id=s' +
        'c.id and c.colid=sc.colid'
      'and o.type='#39'd'#39
      'and c.name=@colname'
      ''
      'set @sql='#39'ALTER TABLE '#39'+@tablename+'#39' DROP CONSTRAINT '#39'+@dfname'
      ' if @sql is not null'
      'exec(@sql)'
      'GO'
      'EXEC dropDefault '#39'UserAccArchive'#39','#39'ArchiveCenterID'#39
      'go'
      
        ' IF  EXISTS (SELECT * FROM sysindexes WHERE name = N'#39'IX_UserAccA' +
        'rchive_ArchiveCenterID'#39')'
      'DROP INDEX UserAccArchive.IX_UserAccArchive_ArchiveCenterID'
      'GO'
      ''
      
        'IF  EXISTS (SELECT * FROM sysobjects WHERE name='#39'FK_UserAccArchi' +
        've_ArchiveCenter'#39')'
      
        'ALTER TABLE [dbo].[UserAccArchive] DROP CONSTRAINT [FK_UserAccAr' +
        'chive_ArchiveCenter]'
      'GO'
      
        'IF  EXISTS (SELECT * FROM sysobjects o,syscolumns c WHERE o.id=c' +
        '.id and c.name='#39'ArchiveCenterID'#39' and o.name='#39'UserAccArchive'#39')'
      'ALTER TABLE [dbo].[UserAccArchive] DROP column ArchiveCenterID'
      'GO'
      '')
    ParentBiDiMode = False
    ReadOnly = True
    TabOrder = 4
    Visible = False
  end
  object MemoFunctions: TMemo
    Left = 70
    Top = 212
    Width = 770
    Height = 89
    BiDiMode = bdLeftToRight
    Lines.Strings = (
      ''
      
        'IF  EXISTS (SELECT * FROM sysobjects WHERE id=object_id(N'#39'[dbo].' +
        '[ArchiveFolders]'#39') AND type in (N'#39'FN'#39', N'#39'IF'#39', N'#39'TF'#39', N'#39'FS'#39', N'#39'FT' +
        #39'))'
      'DROP FUNCTION [dbo].[ArchiveFolders]'
      'GO'
      ''
      
        'IF  EXISTS (SELECT * FROM sysobjects WHERE id=object_id(N'#39'[dbo].' +
        '[ArchiveID]'#39') AND type in (N'#39'FN'#39', N'#39'IF'#39', N'#39'TF'#39', N'#39'FS'#39', N'#39'FT'#39'))'
      'DROP FUNCTION [dbo].[ArchiveID]'
      'GO'
      ''
      
        'IF  EXISTS (SELECT * FROM sysobjects WHERE id=object_id(N'#39'[dbo].' +
        '[ArchivePlaces]'#39') AND type in (N'#39'FN'#39', N'#39'IF'#39', N'#39'TF'#39', N'#39'FS'#39', N'#39'FT'#39 +
        '))'
      'DROP FUNCTION [dbo].[ArchivePlaces]'
      'GO'
      ''
      
        'IF  EXISTS (SELECT * FROM sysobjects WHERE id=object_id(N'#39'[dbo].' +
        '[delphiType]'#39') AND type in (N'#39'FN'#39', N'#39'IF'#39', N'#39'TF'#39', N'#39'FS'#39', N'#39'FT'#39'))'
      'DROP FUNCTION [dbo].[delphiType]'
      'GO'
      ''
      
        'IF  EXISTS (SELECT * FROM sysobjects WHERE id=object_id(N'#39'[dbo].' +
        '[everyLike]'#39') AND type in (N'#39'FN'#39', N'#39'IF'#39', N'#39'TF'#39', N'#39'FS'#39', N'#39'FT'#39'))'
      'DROP FUNCTION [dbo].[everyLike]'
      'GO'
      ''
      
        'IF  EXISTS (SELECT * FROM sysobjects WHERE id=object_id(N'#39'[dbo].' +
        '[Fasl]'#39') AND type in (N'#39'FN'#39', N'#39'IF'#39', N'#39'TF'#39', N'#39'FS'#39', N'#39'FT'#39'))'
      'DROP FUNCTION [dbo].[Fasl]'
      'GO'
      ''
      
        'IF  EXISTS (SELECT * FROM sysobjects WHERE id=object_id(N'#39'[dbo].' +
        '[get_Number_Of_Letter_RelatedSecretariatID]'#39') AND type in (N'#39'FN'#39 +
        ', N'#39'IF'#39', N'#39'TF'#39', N'#39'FS'#39', '
      'N'#39'FT'#39'))'
      'DROP FUNCTION [dbo].[get_Number_Of_Letter_RelatedSecretariatID]'
      'GO'
      ''
      
        'IF  EXISTS (SELECT * FROM sysobjects WHERE id=object_id(N'#39'[dbo].' +
        '[GetSystemValue]'#39') AND type in (N'#39'FN'#39', N'#39'IF'#39', N'#39'TF'#39', N'#39'FS'#39', N'#39'FT' +
        #39'))'
      'DROP FUNCTION [dbo].[GetSystemValue]'
      'GO'
      ''
      
        'IF  EXISTS (SELECT * FROM sysobjects WHERE id=object_id(N'#39'[dbo].' +
        '[has_file]'#39') AND type in (N'#39'FN'#39', N'#39'IF'#39', N'#39'TF'#39', N'#39'FS'#39', N'#39'FT'#39'))'
      'DROP FUNCTION [dbo].[has_file]'
      'GO'
      ''
      
        'IF  EXISTS (SELECT * FROM sysobjects WHERE id=object_id(N'#39'[dbo].' +
        '[has_Page]'#39') AND type in (N'#39'FN'#39', N'#39'IF'#39', N'#39'TF'#39', N'#39'FS'#39', N'#39'FT'#39'))'
      'DROP FUNCTION [dbo].[has_Page]'
      'GO'
      ''
      
        'IF  EXISTS (SELECT * FROM sysobjects WHERE id=object_id(N'#39'[dbo].' +
        '[has_tifPage]'#39') AND type in (N'#39'FN'#39', N'#39'IF'#39', N'#39'TF'#39', N'#39'FS'#39', N'#39'FT'#39'))'
      'DROP FUNCTION [dbo].[has_tifPage]'
      'GO'
      ''
      
        'IF  EXISTS (SELECT * FROM sysobjects WHERE id=object_id(N'#39'[dbo].' +
        '[has_WordPage]'#39') AND type in (N'#39'FN'#39', N'#39'IF'#39', N'#39'TF'#39', N'#39'FS'#39', N'#39'FT'#39')' +
        ')'
      'DROP FUNCTION [dbo].[has_WordPage]'
      'GO'
      ''
      
        'IF  EXISTS (SELECT * FROM sysobjects WHERE id=object_id(N'#39'[dbo].' +
        '[InnerNo]'#39') AND type in (N'#39'FN'#39', N'#39'IF'#39', N'#39'TF'#39', N'#39'FS'#39', N'#39'FT'#39'))'
      'DROP FUNCTION [dbo].[InnerNo]'
      'GO'
      ''
      
        'IF  EXISTS (SELECT * FROM sysobjects WHERE id=object_id(N'#39'[dbo].' +
        '[Is_ParentId]'#39') AND type in (N'#39'FN'#39', N'#39'IF'#39', N'#39'TF'#39', N'#39'FS'#39', N'#39'FT'#39'))'
      'DROP FUNCTION [dbo].[Is_ParentId]'
      'GO'
      ''
      
        'IF  EXISTS (SELECT * FROM sysobjects WHERE id=object_id(N'#39'[dbo].' +
        '[isLike]'#39') AND type in (N'#39'FN'#39', N'#39'IF'#39', N'#39'TF'#39', N'#39'FS'#39', N'#39'FT'#39'))'
      'DROP FUNCTION [dbo].[isLike]'
      'GO'
      ''
      
        'IF  EXISTS (SELECT * FROM sysobjects WHERE id=object_id(N'#39'[dbo].' +
        '[IsString]'#39') AND type in (N'#39'FN'#39', N'#39'IF'#39', N'#39'TF'#39', N'#39'FS'#39', N'#39'FT'#39'))'
      'DROP FUNCTION [dbo].[IsString]'
      'GO'
      ''
      
        'IF  EXISTS (SELECT * FROM sysobjects WHERE id=object_id(N'#39'[dbo].' +
        '[Letter_Archived]'#39') AND type in (N'#39'FN'#39', N'#39'IF'#39', N'#39'TF'#39', N'#39'FS'#39', N'#39'F' +
        'T'#39'))'
      'DROP FUNCTION [dbo].[Letter_Archived]'
      'GO'
      ''
      
        'IF  EXISTS (SELECT * FROM sysobjects WHERE id=object_id(N'#39'[dbo].' +
        '[MiladiLeapyear]'#39') AND type in (N'#39'FN'#39', N'#39'IF'#39', N'#39'TF'#39', N'#39'FS'#39', N'#39'FT' +
        #39'))'
      'DROP FUNCTION [dbo].[MiladiLeapyear]'
      'GO'
      ''
      
        'IF  EXISTS (SELECT * FROM sysobjects WHERE id=object_id(N'#39'[dbo].' +
        '[newIndicatorid]'#39') AND type in (N'#39'FN'#39', N'#39'IF'#39', N'#39'TF'#39', N'#39'FS'#39', N'#39'FT' +
        #39'))'
      'DROP FUNCTION [dbo].[newIndicatorid]'
      'GO'
      ''
      
        'IF  EXISTS (SELECT * FROM sysobjects WHERE id=object_id(N'#39'[dbo].' +
        '[Number_Of_Inbox]'#39') AND type in (N'#39'FN'#39', N'#39'IF'#39', N'#39'TF'#39', N'#39'FS'#39', N'#39'F' +
        'T'#39'))'
      'DROP FUNCTION [dbo].[Number_Of_Inbox]'
      'GO'
      ''
      
        'IF  EXISTS (SELECT * FROM sysobjects WHERE id=object_id(N'#39'[dbo].' +
        '[Number_Of_Week]'#39') AND type in (N'#39'FN'#39', N'#39'IF'#39', N'#39'TF'#39', N'#39'FS'#39', N'#39'FT' +
        #39'))'
      'DROP FUNCTION [dbo].[Number_Of_Week]'
      'GO'
      ''
      
        'IF  EXISTS (SELECT * FROM sysobjects WHERE id=object_id(N'#39'[dbo].' +
        '[NumberOfPage_ByMaxSize]'#39') AND type in (N'#39'FN'#39', N'#39'IF'#39', N'#39'TF'#39', N'#39'F' +
        'S'#39', N'#39'FT'#39'))'
      'DROP FUNCTION [dbo].[NumberOfPage_ByMaxSize]'
      'GO'
      ''
      
        'IF  EXISTS (SELECT * FROM sysobjects WHERE id=object_id(N'#39'[dbo].' +
        '[ParentId]'#39') AND type in (N'#39'FN'#39', N'#39'IF'#39', N'#39'TF'#39', N'#39'FS'#39', N'#39'FT'#39'))'
      'DROP FUNCTION [dbo].[ParentId]'
      'GO'
      ''
      
        'IF  EXISTS (SELECT * FROM sysobjects WHERE id=object_id(N'#39'[dbo].' +
        '[Recommite_DeadLine]'#39') AND type in (N'#39'FN'#39', N'#39'IF'#39', N'#39'TF'#39', N'#39'FS'#39', ' +
        'N'#39'FT'#39'))'
      'DROP FUNCTION [dbo].[Recommite_DeadLine]'
      'GO'
      ''
      
        'IF  EXISTS (SELECT * FROM sysobjects WHERE id=object_id(N'#39'[dbo].' +
        '[Recommite_FirstProceed]'#39') AND type in (N'#39'FN'#39', N'#39'IF'#39', N'#39'TF'#39', N'#39'F' +
        'S'#39', N'#39'FT'#39'))'
      'DROP FUNCTION [dbo].[Recommite_FirstProceed]'
      'GO'
      ''
      
        'IF  EXISTS (SELECT * FROM sysobjects WHERE id=object_id(N'#39'[dbo].' +
        '[Recommite_FirstView]'#39') AND type in (N'#39'FN'#39', N'#39'IF'#39', N'#39'TF'#39', N'#39'FS'#39',' +
        ' N'#39'FT'#39'))'
      'DROP FUNCTION [dbo].[Recommite_FirstView]'
      'GO'
      ''
      
        'IF  EXISTS (SELECT * FROM sysobjects WHERE id=object_id(N'#39'[dbo].' +
        '[Recommite_has_done]'#39') AND type in (N'#39'FN'#39', N'#39'IF'#39', N'#39'TF'#39', N'#39'FS'#39', ' +
        'N'#39'FT'#39'))'
      'DROP FUNCTION [dbo].[Recommite_has_done]'
      'GO'
      ''
      
        'IF  EXISTS (SELECT * FROM sysobjects WHERE id=object_id(N'#39'[dbo].' +
        '[Recommites_by_indicator]'#39') AND type in (N'#39'FN'#39', N'#39'IF'#39', N'#39'TF'#39', N'#39 +
        'FS'#39', N'#39'FT'#39'))'
      'DROP FUNCTION [dbo].[Recommites_by_indicator]'
      'GO'
      ''
      ''
      
        'CREATE FUNCTION [dbo].[ArchiveFolders] (@LetterID int,@UserID  t' +
        'inyint)'
      'RETURNS nvarchar(1000)'
      'BEGIN'
      'declare @result  nvarchar(1000)'
      'set @result='#39#39
      'SELECT   @result=@result +'#39' , '#39'+Title +'#39' - '#39'+ArchiveDate'
      'FROM         LetterArchiveFolder'
      
        'INNER JOIN          ArchiveFolder ON LetterArchiveFolder.Archive' +
        'FolderID = ArchiveFolder.FolderID'
      'where  ArchiveFolder.UserID=@userid and Letterid =@LetterID'
      
        'if @result<>'#39#39' set  @result='#39#1576#1575#1610#1711#1575#1606#1610' '#1583#1585': '#39'+substring(@result,4,1' +
        '000)'
      'return(@result)'
      'end'
      ''
      'GO'
      ''
      ''
      
        'CREATE FUNCTION [dbo].[ArchiveID] (@Sid int,@fid  tinyint,@Myear' +
        ' tinyint,@page tinyint)'
      'RETURNS varchar(20)'
      'BEGIN'
      'declare @result vaRCHAR(20)'
      ''
      'if isnull(@fid,0)=0'
      
        'SET @result=cast(@sid as varchar(8))+'#39'/'#39'+cast(@myear as char(2))' +
        '+'#39'/'#39'+cast(@page as varchar(4))'
      'else'
      
        'SET @result=cast(@sid as varchar(8))+'#39'-'#39'+cast(@fid as varchar(2)' +
        ')++'#39'/'#39'+cast(@myear as char(2))+'#39'/'#39'+cast(@page as varchar(4))'
      'return(@result)'
      'END'
      ''
      ' '
      'GO'
      ''
      ''
      ''
      ''
      
        'CREATE FUNCTION [dbo].[ArchivePlaces] (@LetterID int,@UserID  ti' +
        'nyint)  '
      'RETURNS nvarchar(1000)'
      'BEGIN'
      'declare @result  nvarchar(1000)'
      'set @result='#39#39
      'SELECT   @result=@result +'#39' , '#39'+Place '
      'FROM         LetterArchiveFolder '
      
        'INNER JOIN          ArchiveFolder ON LetterArchiveFolder.Archive' +
        'FolderID = ArchiveFolder.FolderID'
      'where  ArchiveFolder.UserID=@userid and Letterid =@LetterID'
      'if @result<>'#39#39' set  @result=substring(@result,4,1000)'
      'return(@result)'
      'end'
      ''
      ''
      ''
      'GO '
      ''
      ''
      'CREATE FUNCTION [dbo].[delphiType] (@typeName varchar(100))  '
      'RETURNS varchar(20) AS  '
      'BEGIN '
      'Return'
      '(case  '
      'when  @typeName in ('#39'int'#39','#39'bigint'#39','#39'smallint'#39') then '#39'integer'#39
      'when  @typeName in ('#39'tinyint'#39') then '#39'integer'#39
      'when  @typeName in ('#39'bit'#39') then '#39'boolean'#39
      
        'when  @typeName in ('#39'varchar'#39','#39'char'#39','#39'sysname'#39','#39'text'#39','#39'shamsiDat' +
        'e'#39','#39'tel'#39','#39'path'#39','#39'time'#39') then '#39'string'#39
      'when  @typeName in ('#39'nvarchar'#39','#39'ntext'#39') then '#39'widestring'#39
      'when  @typeName in ('#39'sql_variant'#39') then '#39'variant'#39
      'when  @typeName in ('#39'float'#39') then '#39'real'#39'  else @typeName'#9'end)'
      ''
      'END'
      ''
      ''
      ''
      ''
      'GO '
      ''
      
        'CREATE FUNCTION [dbo].[everyLike](@fieldType varchar(50),@len in' +
        't)'
      'RETURNS  bit AS  '
      'BEGIN '
      
        ' return case when @fieldType in('#39'varchar'#39','#39'nvarchar'#39','#39'text'#39') and' +
        ' @len>50 then 1 else 0 end'
      'END'
      ''
      ''
      ''
      ''
      ''
      'GO '
      ''
      'CREATE FUNCTION [dbo].[Fasl](@date char(10))'
      'RETURNS varchar(50) AS  '
      'BEGIN '
      'declare @m tinyint,@f tinyint'
      'set @m=cast(substring(@date,6,2) as tinyint)'
      'set @f=case when @m>1 then (@m-1)/3+1 else 1 end'
      'return(case @f when 1 then '#39#1576#1607#1575#1585#39' '
      'when 2 then '#39#1578#1575#1576#1587#1578#1575#1606#39
      'when 3 then '#39#1662#1575#1610#1610#1586#39
      'else '#39#1586#1605#1587#1578#1575#1606#39' end) '
      'END'
      ''
      ''
      ''
      ''
      ''
      'GO '
      ''
      
        'create function [dbo].[get_Number_Of_Letter_RelatedSecretariatID' +
        ']('
      '@RelatedSecretariatID int)'
      'returns int'
      'begin'
      'declare  @Number_Of_Letter int '
      'SELECT    @Number_Of_Letter= COUNT(*)  '
      'FROM         Letter INNER JOIN'
      
        '                      RelatedSecretariats ON Letter.ToOrgID = Re' +
        'latedSecretariats.DestinationOrgID_inSource'
      
        'WHERE     ((RelatedSecretariats.RelatedSecretariatID = @RelatedS' +
        'ecretariatID) AND Letter.SendStatusID=2 and letterformat=1)'
      ''
      ''
      'set @Number_Of_Letter=isnull(@Number_Of_Letter,0)'
      'return(@Number_Of_Letter)'
      'end'
      ''
      ''
      ''
      'GO '
      ''
      'CREATE FUNCTION [dbo].[GetSystemValue](@varID int)'
      'RETURNS nvarchar(255)  AS  '
      'BEGIN '
      
        'if not exists(select * from settings where variableid=@varID and' +
        ' userid=-1)'
      ' return(0)'
      ''
      ''
      
        ' return(select value from settings where variableid=@varID and u' +
        'serid=-1)'
      'END'
      ''
      ''
      'GO '
      ''
      'CREATE FUNCTION [dbo].[has_file](@LetterID int)'
      'RETURNS bit AS  '
      'BEGIN '
      'declare @res bit'
      ''
      'if exists('
      'SELECT     LetterDataID'
      'FROM         LetterData'
      'WHERE     LetterID=@LetterID and extention>3)'
      'or ('
      'SELECT    count( LetterDataID)'
      'FROM         LetterData'
      'WHERE     LetterID=@LetterID and extention=3)>1'
      'set @res=1'
      'else'
      'set @res=0'
      'return(@res)'
      ''
      'END'
      ''
      ''
      ' '
      ''
      'GO '
      ''
      ''
      ''
      'CREATE FUNCTION [dbo].[has_Page](@LetterID int)'
      'RETURNS bit AS  '
      'BEGIN '
      'declare @res bit'
      'if exists('
      'SELECT     PageNumber'
      'FROM         LetterData'
      'WHERE     LetterID=@LetterID and extention in (1,2))'
      'set @res=1'
      'else'
      'set @res=0'
      'return(@res)'
      ''
      'END'
      ''
      ''
      ''
      'GO '
      'CREATE FUNCTION [dbo].[has_tifPage](@LetterID int)'
      'RETURNS bit AS  '
      'BEGIN '
      'declare @res bit'
      ''
      'if exists('
      'SELECT     PageNumber'
      'FROM         LetterData'
      'WHERE     LetterID=@LetterID and extention in (1,2))'
      'set @res=1'
      'else'
      'set @res=0'
      'return(@res)'
      ''
      'END'
      ''
      ''
      'GO '
      'create FUNCTION [dbo].[has_WordPage](@LetterID int)'
      'RETURNS bit AS  '
      'BEGIN '
      'declare @res bit'
      ''
      'if exists('
      'SELECT     PageNumber'
      'FROM         LetterData'
      'WHERE     LetterID=@LetterID and extention=3)'
      'set @res=1'
      'else'
      'set @res=0'
      'return(@res)'
      ''
      'END'
      ''
      ''
      ' '
      ''
      'GO '
      ''
      ''
      'CREATE function [dbo].[InnerNo](@LetterID int)'
      '  returns nvarchar(200)'
      'begin'
      
        'declare @SecCode nvarchar(50),@MYear nchar(2), @IndicatorID nvar' +
        'char(10), @ToOrgCode  nvarchar(50),'
      
        '@FromOrgCode  nvarchar(50), @LetterTypCode  nvarchar(10),@result' +
        ' nvarchar(4000),@UserMemo nvarchar(255),'
      '@FromPrecode  nvarchar(50)'
      ''
      'SELECT'
      '@SecCode=ltrim(isnull(Secretariats.Precode,'#39#39')),'
      '@MYear=Letter.MYear,'
      '@IndicatorID=Letter.IndicatorID,'
      
        '@FromOrgCode= case when len(fromorg.code)>5  then  FromOrg.Code ' +
        ' else ltrim(isnull(fromorg.code,'#39#39')) end ,'
      
        '@ToOrgCode= case when len(Toorg.code)>5  then  Toorg.Code  else ' +
        'ltrim(isnull(Toorg.code,'#39#39')) end ,'
      '@LetterTypCode=ltrim(isnull(LetterTypes.PreCode,'#39#39')),'
      '@UserMemo=ltrim(isnull(Usermemo,'#39#39')),'
      '@FromPrecode=ltrim(isnull(fromorg.Precode,'#39#39'))'
      'FROM         Letter'
      'INNER JOIN  FromOrganizations Toorg ON Letter.ToorgID = Toorg.ID'
      
        'INNER JOIN  FromOrganizations FromOrg ON Letter.FromOrgID = From' +
        'Org.ID'
      'INNER JOIN  LetterTypes ON Letter.Letter_Type = LetterTypes.ID'
      
        'INNER JOIN  Secretariats ON Letter.SecretariatID = Secretariats.' +
        'SecID'
      'WHERE     (Letter.LetterID = @LetterID)       '
      ''
      'declare @Delimeter char(1)'
      'set @Delimeter=ltrim(dbo.GetSystemValue(44))'
      ''
      ''
      'set @result=case  dbo.GetSystemValue(35)'
      '                   when 0 then '#39#39
      '                   when 1 then @SecCode+@Delimeter'
      '                   when 2 then @MYear+@Delimeter'
      '                   when 3 then @IndicatorID+@Delimeter'
      '                   when 4 then @ToOrgCode+@Delimeter'
      '                   when 5 then @FromOrgCode+@Delimeter'
      '                   when 6 then @LetterTypCode+@Delimeter'
      '                   when 7 then @UserMemo+@Delimeter'
      '                   when 8 then @FromPrecode+@Delimeter end+'
      ''
      '             case  dbo.GetSystemValue(36)'
      '                   when 0 then '#39#39
      '                   when 1 then @SecCode+@Delimeter'
      '                   when 2 then @MYear+@Delimeter'
      '                   when 3 then @IndicatorID+@Delimeter'
      '                   when 4 then @ToOrgCode+@Delimeter'
      '                   when 5 then @FromOrgCode+@Delimeter'
      '                   when 6 then @LetterTypCode+@Delimeter'
      '                   when 7 then @UserMemo+@Delimeter '
      '                   when 8 then @FromPrecode+@Delimeter end+'
      ''
      '             case  dbo.GetSystemValue(37)'
      '                   when 0 then '#39#39
      '                   when 1 then @SecCode+@Delimeter'
      '                   when 2 then @MYear+@Delimeter'
      '                   when 3 then @IndicatorID+@Delimeter'
      '                   when 4 then @ToOrgCode+@Delimeter'
      '                   when 5 then @FromOrgCode+@Delimeter'
      '                   when 6 then @LetterTypCode+@Delimeter'
      '                   when 7 then @UserMemo+@Delimeter '
      '                   when 8 then @FromPrecode+@Delimeter end+'
      ''
      '             case  dbo.GetSystemValue(38)'
      '                   when 0 then '#39#39
      '                   when 1 then @SecCode+@Delimeter'
      '                   when 2 then @MYear+@Delimeter'
      '                   when 3 then @IndicatorID+@Delimeter'
      '                   when 4 then @ToOrgCode+@Delimeter'
      '                   when 5 then @FromOrgCode+@Delimeter'
      '                   when 6 then @LetterTypCode+@Delimeter'
      '                   when 7 then @UserMemo+@Delimeter '
      '                   when 8 then @FromPrecode+@Delimeter end+'
      ''
      '             case  dbo.GetSystemValue(39)'
      '                   when 0 then '#39#39
      '                   when 1 then @SecCode+@Delimeter'
      '                   when 2 then @MYear+@Delimeter'
      '                   when 3 then @IndicatorID+@Delimeter'
      '                   when 4 then @ToOrgCode+@Delimeter'
      '                   when 5 then @FromOrgCode+@Delimeter'
      '                   when 6 then @LetterTypCode+@Delimeter'
      '                   when 7 then @UserMemo+@Delimeter '
      '                   when 8 then @FromPrecode+@Delimeter end+'
      ''
      '             case  dbo.GetSystemValue(40)'
      '                   when 0 then '#39#39
      '                   when 1 then @SecCode+@Delimeter'
      '                   when 2 then @MYear+@Delimeter'
      '                   when 3 then @IndicatorID+@Delimeter'
      '                   when 4 then @ToOrgCode+@Delimeter'
      '                   when 5 then @FromOrgCode+@Delimeter'
      '                   when 6 then @LetterTypCode+@Delimeter'
      '                   when 7 then @UserMemo+@Delimeter '
      '                   when 8 then @FromPrecode+@Delimeter end'
      ''
      'while charindex('#39'  '#39',@result)<>0'
      '  begin'
      '   Set @result=replace(@result,'#39'  '#39','#39' '#39')'
      '   Set @result=replace(@result,'#39'/ '#39','#39'/'#39')'
      '   Set @result=replace(@result,'#39' /'#39','#39'/'#39')'
      '  end '
      ''
      
        'set @result=replace(ltrim(rtrim(@result)),@Delimeter+@Delimeter,' +
        '@Delimeter)'
      'set @result=replace(@result,@Delimeter+@Delimeter,@Delimeter)'
      ''
      ''
      'if substring(@result,len(@result),1)=@Delimeter'
      '   set @result=substring(@result,1,len(@result)-1)'
      ''
      'if substring(@result,1,1)=@Delimeter'
      '   set @result=substring(@result,2,len(@result)-1)'
      ''
      ''
      'return(@result)'
      'end'
      ''
      ''
      'GO '
      ''
      ''
      
        'CREATE   FUNCTION [dbo].[Is_ParentId] (@ChildID int,@ParentID in' +
        't)'
      'RETURNS bit AS'
      'BEGIN'
      ''
      ' declare @PI int,@CurID int,@stoper int'
      'if @childid=@parentid return(1)'
      'if @ParentID<5 return(1)'
      ' set @CurID=@ChildID'
      'set @stoper=1'
      ' while @CurID<>0 and @stoper<4'
      '   begin'
      '    select @PI=ParentID from FromOrganizations where id=@CurID'
      '    if @PI=@ParentID return(1)  else set @CurID=@PI'
      '   set @stoper=@stoper+1'
      '   end'
      'return(0)'
      'END'
      ''
      ''
      ''
      ''
      'GO '
      ''
      'CREATE FUNCTION [dbo].[isLike](@fieldType varchar(50))'
      'RETURNS  bit AS  '
      'BEGIN '
      
        ' return case when @fieldType in ('#39'float'#39','#39'int'#39','#39'bit'#39','#39'money'#39','#39'bi' +
        'gint'#39','#39'datetime'#39') then 0 else 1 end'
      'END'
      ''
      ''
      ''
      ''
      'GO '
      ''
      'CREATE FUNCTION [dbo].[IsString](@fieldType varchar(50))'
      'RETURNS bit  AS'
      'BEGIN'
      
        'return case when @fieldType in ('#39'float'#39','#39'int'#39','#39'bit'#39','#39'money'#39','#39'big' +
        'int'#39') then 0 else 1 end'
      'END'
      ''
      ''
      ''
      'GO '
      'create function [dbo].[Letter_Archived](@letterID int )'
      'returns bit'
      'begin'
      'if exists(SELECT     *'
      'FROM         LetterArchiveFolder INNER JOIN'
      
        '                      ArchiveFolder ON LetterArchiveFolder.Archi' +
        'veFolderID = ArchiveFolder.FolderID'
      
        'WHERE     (ArchiveFolder.UserID = 0) AND (LetterArchiveFolder.Le' +
        'tterID =@letterID ))'
      'return(1)'
      ''
      'return(0)'
      'end'
      ''
      ''
      ''
      ''
      ''
      ''
      'GO '
      ''
      ''
      ''
      'CREATE FUNCTION [dbo].[MiladiLeapyear](@y int)'
      'RETURNS int AS'
      'BEGIN'
      
        '     if ((@y%4=0) and (@y%100<>0)) or ((@y%100=0) and ((@y/100)%' +
        '4=0))'
      'return 1'
      ''
      'return 0'
      ''
      'END'
      ''
      'GO'
      ''
      ''
      ''
      ''
      ''
      ''
      ''
      ''
      
        'CREATE FUNCTION [dbo].[newIndicatorid](@letter_type int,@LetterF' +
        'ormat int,@myear int,@SecretariatID int)'
      'RETURNS int AS  '
      'BEGIN'
      
        'declare @RecivedInd int ,@SentInd  int,@innerind int,@newIndicat' +
        'orid int'
      ''
      
        'Select @RecivedInd=isnull(max(indicatorID),0)+1 from Letter wher' +
        'e myear=@myear and LetterFormat=@LetterFormat'
      ' and SecretariatID=@SecretariatID and letter_type=1 '
      ''
      
        'Select @SentInd=isnull(max(indicatorID),0)+1 from Letter where m' +
        'year=@myear and LetterFormat=@LetterFormat'
      ' and SecretariatID=@SecretariatID and letter_type=2 '
      ''
      ''
      
        ' Select @innerind=isnull(max(indicatorID),0)+1 from Letter where' +
        ' myear=@myear and LetterFormat=@LetterFormat'
      ' and SecretariatID=@SecretariatID and letter_type=3'
      ''
      '  if @RecivedInd<dbo.GetSystemValue(3)'
      '    set  @RecivedInd=dbo.GetSystemValue(3)'
      ''
      ''
      '  if @SentInd<dbo.GetSystemValue(3) '
      '    set  @SentInd=dbo.GetSystemValue(3)'
      ''
      '  if @innerind<dbo.GetSystemValue(3) '
      '    set  @innerind=dbo.GetSystemValue(3)'
      ''
      ''
      'if @letter_type=3 '
      '  return(@innerind)'
      '  '
      ''
      ' if dbo.GetSystemValue(5)=0'
      '  begin'
      '     if @SentInd>@RecivedInd '
      '        set @newIndicatorid=@SentInd'
      '       else'
      '        set @newIndicatorid=@RecivedInd'
      ''
      '  end'
      ''
      ' if dbo.GetSystemValue(5)=1'
      '   begin'
      '    if @letter_type=1 '
      '     set @newIndicatorid=@RecivedInd'
      '    if @letter_type=2'
      '     set @newIndicatorid=@SentInd'
      '   end'
      ''
      ' if dbo.GetSystemValue(5)=2'
      '  begin'
      '   if @letter_type=2'
      '      set @newIndicatorid=2*(1+(@SentInd-1)/2)'
      ''
      '   if @letter_type=1'
      '      set @newIndicatorid=2*(1+(@RecivedInd-1)/2)+1'
      '  end'
      ''
      ' if dbo.GetSystemValue(5)=3'
      '  begin'
      '   if @letter_type=1'
      '      set @newIndicatorid=2*(1+(@RecivedInd-1)/2)'
      ''
      '   if @letter_type=2'
      '      set @newIndicatorid=2*(1+(@SentInd -1)/2)+1'
      '  end'
      'return(@newIndicatorid) '
      'END'
      ''
      ''
      ''
      ''
      'GO '
      ''
      
        'CREATE  function [dbo].[Number_Of_Inbox](@SecretariatID int, @Le' +
        'tterFormat tinyint,@OrgID int,'
      '@Proceeded bit,@myear tinyint,@Letter_Type int)'
      'returns int'
      ''
      'begin'
      ''
      'return( SELECT count(Letter.letterID)'
      'FROM ReCommites'
      'INNER JOIN Letter  ON ReCommites.LetterID = Letter.LetterID'
      'where (Letter.myear= @myear)'
      'and (SecretariatID=@SecretariatID or @SecretariatID=0)'
      'and (LetterFormat =@LetterFormat or  @LetterFormat=0)'
      'and (OrgID =@OrgID )'
      'and (Proceeded = @Proceeded)'
      'and ( Letter_Type=@Letter_Type or @Letter_Type=0))'
      ''
      'end'
      ''
      ''
      ''
      ''
      'GO '
      'CREATE FUNCTION [dbo].[Number_Of_Week] (@D datetime)'
      'RETURNS tinyint'
      ' AS'
      'BEGIN'
      'declare @r tinyint'
      
        'if (datepart(month,@d)>3) or (datepart(month,@d)=3 and datepart(' +
        'day,@d)>20)'
      'select @r=datepart(week,@d)-11 --if getdate>='#39'Mar 21'#39
      'else'
      'select @r=datepart(week,@d)+41--if getdate<'#39'Mar 21'#39
      'return(@r)'
      'END'
      ''
      ''
      ''
      'GO '
      ''
      ''
      
        'CREATE FUNCTION [dbo].[NumberOfPage_ByMaxSize] (@letterID int ,@' +
        'MaxSize int)'
      'RETURNS int AS'
      'BEGIN'
      'declare @result int'
      'set @result=-1'
      'select top 1 @result=Pagenumber'
      'from letterdata ld'
      
        'where (select sum(datalength(image)) from letterData where lette' +
        'rid=@letterID and pagenumber<=ld.Pagenumber)<=1000*@MaxSize'
      'order by Pagenumber desc'
      'return(@result)'
      'END'
      ''
      ''
      ''
      ''
      'GO '
      ''
      ''
      ''
      'CREATE FUNCTION [dbo].[ParentId] (@ID int)'
      'RETURNS int AS'
      'BEGIN'
      ' declare @i int,@PI int,@CurID int'
      ' set @i=0'
      ' set @CurID=@id'
      ' while @i<10'
      '   begin'
      '    select @PI=ParentID from FromOrganizations where id=@CurID'
      '    if @PI=1 return(@CurID)   else set @CurID=@PI'
      ''
      '    set @i=@i+1'
      '   end'
      'return(@PI)'
      'END'
      ''
      ''
      ''
      ''
      'GO'
      ''
      
        'CREATE  FUNCTION [dbo].[Recommite_DeadLine](@RecommiteID int,@to' +
        'day char(10))'
      'RETURNS int AS'
      'BEGIN'
      
        'declare @letterid int, @deadlinedate char(10),@parentID int,@pro' +
        'ceeded bit'
      ''
      
        'select @parentID=id ,@letterid=letterid,@proceeded=proceeded,@de' +
        'adlinedate=deadlinedate from recommites where  RecommiteID=@Reco' +
        'mmiteID'
      ''
      'if @proceeded=1'
      'select @deadlinedate=min(deadlinedate)'
      'from recommites'
      'where letterid=@LetterID and Parentid=@ParentID and proceeded=0'
      ''
      'if isnull(@deadlinedate,'#39#39')='#39#39' return(null)'
      ''
      'return(dbo.ShamsiDatediff(@today,@deadlinedate))'
      'END'
      ''
      ''
      'GO'
      
        'CREATE  FUNCTION [dbo].[Recommite_FirstProceed](@RecommiteID int' +
        ')'
      'RETURNS  varchar(10) AS'
      'BEGIN'
      ''
      'declare @result char(10)'
      'declare @id int,@letterid int'
      'select @id=id,@Letterid=Letterid'
      'from [ReCommites]'
      'where (RecommiteID=@RecommiteID )'
      ''
      'select @result=Proceeddate from  ReCommites'
      'where Letterid=@Letterid and parentid=@id'
      ''
      'set @result=isnull(@result,'#39'-'#39')'
      'return(@result)'
      'END'
      ''
      ''
      ''
      ''
      'GO'
      ''
      ''
      
        'CREATE  FUNCTION [dbo].[Recommite_FirstView](@RecommiteID '#9'[int]' +
        ')'
      'RETURNS  varchar(10) AS'
      'BEGIN'
      'declare @result char(10)'
      'declare @id int,@letterid int'
      'select @id=id,@Letterid=Letterid'
      'from [ReCommites]'
      'where (RecommiteID=@RecommiteID )'
      ''
      'select @result=Viewdate from  ReCommites'
      'where Letterid=@Letterid and parentid=@id'
      ''
      'set @result=isnull(@result,'#39'-'#39')'
      'return(@result)'
      'END'
      ''
      ''
      ''
      'GO'
      ''
      'CREATE function [dbo].[Recommite_has_done](@RecommiteID int)'
      'returns tinyint'
      'begin'
      'declare   @LetterID int, @ID int, @Type int'
      ''
      'SELECT     @LetterID=LetterID, @ID=ID,@Type=Type'
      'FROM         ReCommites'
      'WHERE     (RecommiteID = @RecommiteID)'
      'declare @all int ,@done int'
      ''
      'if exists (select *'
      'from  ReCommites'
      
        'WHERE     LetterID=@LetterID and Type=@Type and id>@id and proce' +
        'eded=0)  return(2)'
      ''
      'return(1)'
      ''
      'end'
      ''
      ''
      ''
      ''
      'GO'
      ''
      ''
      'CREATE  FUNCTION [dbo].[Recommites_by_indicator](@LetterID int )'
      'RETURNS nvarchar(500) AS'
      'BEGIN'
      ''
      ''
      'declare @res nvarchar(500)'
      'set @res='#39#39
      ''
      
        'SELECT       @res=@res+'#39','#39'+FromOrganizations.Title+'#39'  '#39'+recommit' +
        'edate'
      'FROM         ReCommites  INNER JOIN'
      
        '                      FromOrganizations ON ReCommites.OrgID = Fr' +
        'omOrganizations.ID'
      'WHERE     (ReCommites.LetterID = @LetterID)'
      ''
      'if @res<>'#39#39' set @res=substring(@res,2,len(@res)-1)'
      ''
      'return(@res)'
      ''
      'END'
      ''
      ''
      ''
      ''
      'GO')
    ParentBiDiMode = False
    ReadOnly = True
    TabOrder = 5
  end
  object MemoDatas: TMemo
    Left = 98
    Top = 274
    Width = 770
    Height = 89
    BiDiMode = bdLeftToRight
    Lines.Strings = (
      'if Not Exists(Select * from ApplicationForms Where [ID] = 7 )'
      'begin'
      '   Insert into ApplicationForms([ID],Title)'
      '   Values(7,'#39#1601#1585#1605' '#1575#1587#1705#1606' '#1606#1575#1605#1607#39')'
      'end'
      'go'
      'if Not Exists(Select * from ApplicationForms Where [ID] = 8 )'
      
        '   Insert into ApplicationForms([ID],Title)  Values(8,'#39' '#1705#1575#1585#1578#1575#1576#1604' ' +
        #39')'
      'go'
      'delete sys_AppMessage'
      'go'
      'INSERT INTO sys_AppMessage(ID, FarsiMessage)'
      'VALUES     (2, '#39#1588#1605#1575' '#1576#1607' '#1575#1610#1606'  '#1602#1575#1576#1604#1610#1578' '#1583#1587#1578#1585#1587#1610' '#1606#1583#1575#1585#1610#1583#39')'
      'INSERT INTO sys_AppMessage(ID, FarsiMessage)'
      'VALUES     (3, '#39#1575#1610#1606' '#1606#1575#1605#1607' '#1662#1610#1585#1608' '#1606#1583#1575#1585#1583#39')'
      'INSERT INTO sys_AppMessage(ID, FarsiMessage)'
      'VALUES     (4, '#39#1575#1610#1606' '#1606#1575#1605#1607' '#1593#1591#1601' '#1606#1583#1575#1585#1583#39')'
      'INSERT INTO sys_AppMessage(ID, FarsiMessage)'
      'VALUES     (25, '#39#1570#1610#1575' '#1575#1586' '#1582#1585#1608#1580' '#1605#1591#1605#1574#1606' '#1607#1587#1578#1610#1583#39')'
      'INSERT INTO sys_AppMessage(ID, FarsiMessage)'
      
        'VALUES     (26, '#39#1602#1576#1604#1575' '#1576#1575#1610#1583' '#1606#1575#1605#1607' '#1585#1575' '#1584#1582#1610#1585#1607' '#1603#1606#1610#1583#1570#1610#1575' '#1575#1610#1606' '#1603#1575#1585' '#1585#1575' '#1575#1606#1580#1575 +
        #1605' '#1583#1607#1605#39')'
      'INSERT INTO sys_AppMessage(ID, FarsiMessage)'
      'VALUES     (27, '#39#1570#1610#1575' '#1575#1591#1604#1575#1593#1575#1578' '#1584#1582#1610#1585#1607' '#1588#1608#1583#39')'
      'INSERT INTO sys_AppMessage(ID, FarsiMessage)'
      
        'VALUES     (28, '#39#1588#1605#1575' '#1705#1575#1585#1578#1575#1576#1604' '#1606#1583#1575#1585#1610#1583' '#1608' '#1601#1602#1591' '#1605#1610' '#1578#1608#1575#1606#1610#1583' '#1575#1586' '#1606#1586#1605' '#1575#1601#1586#1575#1586 +
        ' '#1583#1576#1610#1585' '#1582#1575#1606#1607' '#1575#1587#1578#1601#1575#1583#1607' '#1705#1606#1610#1583#39')'
      'INSERT INTO sys_AppMessage(ID, FarsiMessage)'
      'VALUES     (29, '#39' '#1711#1610#1585#1606#1583#1607' '#1606#1575#1605#1607' '#1606#1605#1610' '#1578#1608#1575#1606#1583' '#1582#1575#1604#1610' '#1576#1605#1575#1606#1583#39')'
      'INSERT INTO sys_AppMessage(ID, FarsiMessage)'
      'VALUES     (30, '#39#1593#1606#1608#1575#1606'  '#1585#1575' '#1608#1575#1585#1583' '#1606#1705#1585#1583#1607' '#1575#1610#1583#39')'
      'INSERT INTO sys_AppMessage(ID, FarsiMessage)'
      'VALUES     (31, '#39#1575#1605#1585#1608#1586#39')'
      'INSERT INTO sys_AppMessage(ID, FarsiMessage)'
      'VALUES     (32, '#39#1575#1587#1578' '#1570#1610#1575' '#1605#1575#1610#1604#1610#1583' '#1606#1587#1582#1607' '#1662#1588#1578#1610#1576#1575#1606' '#1578#1607#1610#1607' '#1606#1605#1575#1610#1610#1583#39')'
      'INSERT INTO sys_AppMessage(ID, FarsiMessage)'
      'VALUES     (33, '#39#1570#1610#1575' '#1575#1586' '#1601#1593#1575#1604' '#1603#1585#1583#1606' '#1606#1575#1605#1607' '#1605#1591#1605#1574#1606' '#1607#1587#1578#1610#1583#39')'
      'INSERT INTO sys_AppMessage(ID, FarsiMessage)'
      'VALUES     (34, '#39' '#1570#1610#1575' '#1576#1607' '#1606#1575#1605#1607' '#1662#1610#1588' '#1606#1608#1610#1587'  '#1576#1575' '#1588#1605#1575#1585#1607#39')'
      'INSERT INTO sys_AppMessage(ID, FarsiMessage)'
      'VALUES     (35, '#39#1588#1605#1575#1585#1607' '#1583#1576#1610#1585#1582#1575#1606#1607' '#1575#1582#1578#1589#1575#1589' '#1605#1610' '#1583#1607#1610#1583#1567#39')'
      'INSERT INTO sys_AppMessage(ID, FarsiMessage)'
      'VALUES     (36, '#39#1570#1610#1575' '#1575#1586' '#1581#1584#1601' '#1587#1605#1578#39')'
      'INSERT INTO sys_AppMessage(ID, FarsiMessage)'
      'VALUES     (37, '#39#1605#1591#1605#1574#1606' '#1607#1587#1578#1610#1583#39')'
      'INSERT INTO sys_AppMessage(ID, FarsiMessage)'
      'VALUES     (38, '#39#1570#1610#1575' '#1575#1586' '#1581#1584#1601' '#1606#1575#1605#1607' '#1605#1591#1605#1574#1606' '#1607#1587#1578#1610#1583#1567#39')'
      'INSERT INTO sys_AppMessage(ID, FarsiMessage)'
      'VALUES     (39, '#39#1570#1610#1575' '#1575#1586' '#1581#1584#1601' '#1605#1591#1605#1574#1606' '#1607#1587#1578#1610#1583#39')'
      'INSERT INTO sys_AppMessage(ID, FarsiMessage)'
      'VALUES     (40, '#39#1570#1610#1575' '#1575#1586' '#1581#1584#1601' '#1605#1608#1590#1608#1593#39')'
      'INSERT INTO sys_AppMessage(ID, FarsiMessage)'
      'VALUES     (41, '#39#1570#1610#1575' '#1575#1586' '#1581#1584#1601' '#1586#1608#1606#1603#1606#39')'
      'INSERT INTO sys_AppMessage(ID, FarsiMessage)'
      'VALUES     (42, '#39#1570#1610#1575' '#1575#1586' '#1583#1585#1580' '#1602#1575#1604#1576' '#1580#1583#1610#1583' '#1605#1591#1605#1574#1606' '#1607#1587#1578#1610#1583#39')'
      'INSERT INTO sys_AppMessage(ID, FarsiMessage)'
      'VALUES     (43, '#39#1570#1610#1575' '#1575#1586' '#1581#1584#1601' '#1602#1575#1604#1576'  '#1606#1575#1605#1607'  '#1576#1575' '#1593#1606#1608#1575#1606#39')'
      'INSERT INTO sys_AppMessage(ID, FarsiMessage)'
      'VALUES     (44, '#39#1570#1610#1575' '#1575#1586' '#1670#1575#1662' '#1605#1591#1605#1574#1606' '#1607#1587#1578#1610#1583#39')'
      'INSERT INTO sys_AppMessage(ID, FarsiMessage)'
      'VALUES     (45, '#39#1570#1610#1575' '#1575#1610#1606' '#1588#1605#1575#1585#1607' '#1585#1575' '#1584#1582#1610#1585#1607' '#1605#1610' '#1603#1606#1610#1583#39')'
      'INSERT INTO sys_AppMessage(ID, FarsiMessage)'
      'VALUES     (46, '#39#1570#1610#1575' '#1605#1591#1605#1574#1606' '#1607#1587#1578#1610#1583#39')'
      'INSERT INTO sys_AppMessage(ID, FarsiMessage)'
      
        'VALUES     (47, '#39#1575#1610#1606' '#1606#1587#1582#1607' '#1575#1586' '#1606#1585#1605' '#1575#1601#1586#1575#1585' '#1575#1610#1606' '#1575#1605#1705#1575#1606' '#1585#1575' '#1662#1588#1578#1610#1576#1575#1606#1610' '#1606#1605#1610 +
        ' '#1705#1606#1583#39')'
      'INSERT INTO sys_AppMessage(ID, FarsiMessage)'
      'VALUES     (48, '#39#1588#1605#1575' '#1576#1607' '#1575#1610#1606' '#1602#1575#1576#1604#1610#1578' '#1583#1587#1578#1585#1587#1610' '#1606#1583#1575#1585#1610#1583#39')'
      'INSERT INTO sys_AppMessage(ID, FarsiMessage)'
      
        'VALUES     (49, '#39#1575#1610#1606' '#1606#1587#1582#1607' '#1575#1586' '#1606#1585#1605' '#1575#1601#1586#1575#1585' '#1575#1610#1606' '#1575#1605#1705#1575#1606' '#1585#1575' '#1662#1588#1578#1610#1576#1575#1606#1610' '#1606#1605#1610 +
        ' '#1705#1606#1583#39')'
      'INSERT INTO sys_AppMessage(ID, FarsiMessage)'
      'VALUES     (50, '#39#1575#1610#1606' '#1606#1575#1605#1607' '#1593#1591#1601' '#1606#1583#1575#1585#1583' '#39')'
      'INSERT INTO sys_AppMessage(ID, FarsiMessage)'
      'VALUES     (51, '#39#1575#1610#1606' '#1606#1575#1605#1607' '#1662#1610#1585#1608' '#1606#1583#1575#1585#1583#39')'
      'INSERT INTO sys_AppMessage(ID, FarsiMessage)'
      'VALUES     (52, '#39#1575#1610#1606' '#1602#1587#1605#1578' '#1583#1585' '#1575#1610#1606' '#1606#1587#1582#1607' '#1662#1588#1578#1610#1576#1575#1606#1610' '#1606#1605#1610' '#1588#1608#1583#39')'
      'INSERT INTO sys_AppMessage(ID, FarsiMessage)'
      'VALUES     (53, '#39#1601#1575#1610#1604' word '#1576#1585#1575#1610' '#1575#1610#1606' '#1606#1575#1605#1607' '#1608#1580#1608#1583' '#1606#1583#1575#1585#1583#1602#39')'
      'INSERT INTO sys_AppMessage(ID, FarsiMessage)'
      'VALUES     (54, '#39#1588#1605#1575#1585#1607' '#1575#1610#1606' '#1606#1575#1605#1607' '#1576#1607' '#39')'
      'INSERT INTO sys_AppMessage(ID, FarsiMessage)'
      'VALUES     (55, '#39#1578#1594#1610#1610#1585' '#1610#1575#1601#1578#39')'
      'INSERT INTO sys_AppMessage(ID, FarsiMessage)'
      'VALUES     (56, '#39#1606#1575#1605' '#1705#1575#1585#1576#1585' '#1610#1575' '#1705#1604#1605#1607' '#1593#1576#1608#1585' '#1575#1588#1578#1576#1575#1607' '#1605#1610' '#1576#1575#1588#1583#39')'
      'INSERT INTO sys_AppMessage(ID, FarsiMessage)'
      
        'VALUES     (57, '#39#1601#1602#1591' '#1603#1575#1585#1576#1585#1610' '#1603#1607' '#1602#1576#1604#1575' '#1608#1575#1585#1583' '#1588#1583#1607' '#1575#1587#1578' '#1605#1610' '#1578#1608#1575#1606#1583' '#1602#1601#1604' '#1585#1575 +
        ' '#1576#1575#1586' '#1603#1606#1583#39')'
      'INSERT INTO sys_AppMessage(ID, FarsiMessage)'
      
        'VALUES     (58, '#39#1588#1605#1575' '#1705#1575#1585#1605#1606#1583' '#1583#1576#1610#1585#1582#1575#1606#1607' '#1606#1610#1587#1578#1610#1583' '#1608' '#1601#1602#1591' '#1583#1587#1578#1585#1587#1610' '#1576#1607' '#1705#1575#1585#1578 +
        #1575#1576#1604' '#1583#1575#1585#1610#1583#39')'
      'INSERT INTO sys_AppMessage(ID, FarsiMessage)'
      'VALUES     (59, '#39#1588#1605#1575' '#1576#1607' '#1607#1610#1670' '#1583#1576#1610#1585#1582#1575#1606#1607' '#1575#1610' '#1583#1587#1578#1585#1587#1610' '#1606#1583#1575#1585#1610#1583#39')'
      'INSERT INTO sys_AppMessage(ID, FarsiMessage)'
      'VALUES     (60, '#39#1582#1591#1575' '#1583#1585' '#1579#1576#1578' '#1575#1591#1604#1575#1593#1575#1578#39')'
      'INSERT INTO sys_AppMessage(ID, FarsiMessage)'
      'VALUES     (61, '#39#1575#1576#1578#1583#1575' '#1586#1610#1585' '#1605#1580#1605#1608#1593#1607' '#1607#1575#1610' '#1575#1610#1606' '#1587#1605#1578' '#1585#1575' '#1581#1584#1601' '#1705#1606#1610#1583#39')'
      'INSERT INTO sys_AppMessage(ID, FarsiMessage)'
      
        'VALUES     (62, '#39#1581#1583' '#1575#1602#1604' '#1610#1705' '#1606#1575#1605#1607' '#1610#1575' '#1575#1585#1580#1575#1593' '#1576#1585#1575#1610' '#1575#1610#1606' '#1587#1605#1578' '#1579#1576#1578' '#1588#1583#1607' '#1575#1587 +
        #1578' '#1604#1584#1575' '#1606#1605#1610' '#1578#1608#1575#1606' '#1570#1606#1585#1575' '#1581#1584#1601' '#1705#1585#1583#39')'
      'INSERT INTO sys_AppMessage(ID, FarsiMessage)'
      'VALUES     (63, '#39#1606#1575#1605#1607' '#1602#1576#1604#1610' '#1585#1575' '#1584#1582#1610#1585#1607' '#1705#1606#1610#1583#39')'
      'INSERT INTO sys_AppMessage(ID, FarsiMessage)'
      'VALUES     (64, '#39' '#1575#1610#1606' '#1705#1583' '#1583#1585' '#1587#1575#1586#1605#1575#1606' '#1607#1575#1610' '#1591#1585#1601' '#1605#1705#1575#1578#1576#1607' '#1608#1580#1608#1583' '#1606#1583#1575#1585#1583#39')'
      'INSERT INTO sys_AppMessage(ID, FarsiMessage)'
      'VALUES     (65, '#39' '#1601#1585#1587#1578#1606#1583#1607' '#1606#1575#1605#1607' '#1606#1605#1610' '#1578#1608#1575#1606#1583' '#1582#1575#1604#1610' '#1576#1605#1575#1606#1583#39')'
      'INSERT INTO sys_AppMessage(ID, FarsiMessage)'
      'VALUES     (66, '#39' '#1605#1590#1605#1608#1606' '#1606#1575#1605#1607' '#1606#1605#1610' '#1578#1608#1575#1606#1583' '#1582#1575#1604#1610' '#1576#1605#1575#1606#1583#39')'
      'INSERT INTO sys_AppMessage(ID, FarsiMessage)'
      'VALUES     (67, '#39#1606#1575#1605#1607' '#1585#1575' '#1584#1582#1610#1585#1607' '#1705#1606#1610#1583#39')'
      'INSERT INTO sys_AppMessage(ID, FarsiMessage)'
      'VALUES     (69, '#39#1588#1605#1575#1585#1607' '#1606#1575#1605#1607' '#1606#1605#1610' '#1578#1608#1575#1606#1583' '#1582#1575#1604#1610' '#1576#1605#1575#1606#1583#39')'
      'INSERT INTO sys_AppMessage(ID, FarsiMessage)'
      
        'VALUES     (70, '#39#1582#1591#1575': '#1575#1581#1578#1605#1575#1604#1575' '#1583#1608' '#1593#1606#1608#1575#1606' '#1610#1705#1587#1575#1606' '#1585#1575' '#1575#1606#1578#1582#1575#1576' '#1705#1585#1583#1607' '#1575#1610#1583#39 +
        ')'
      'INSERT INTO sys_AppMessage(ID, FarsiMessage)'
      'VALUES     (72, '#39#1578#1705#1585#1575#1585' '#1705#1604#1605#1607' '#1593#1576#1608#1585' '#1576#1575' '#1705#1604#1605#1607' '#1593#1576#1608#1585' '#1610#1705#1610' '#1606#1610#1587#1578#39')'
      'INSERT INTO sys_AppMessage(ID, FarsiMessage)'
      'VALUES     (73, '#39#1588#1605#1575#1585#1607' '#1585#1583#1610#1601' '#1576#1575#1610#1583' '#1593#1583#1583' '#1576#1575#1588#1583#39')'
      'INSERT INTO sys_AppMessage(ID, FarsiMessage)'
      'VALUES     (74, '#39' '#1606#1575#1605#1607' '#1583#1585' '#1586#1608#1606#1705#1606' :'#39')'
      'INSERT INTO sys_AppMessage(ID, FarsiMessage)'
      'VALUES     (75, '#39' '#1576#1575#1610#1711#1575#1606#1610' '#1588#1583#39')'
      'INSERT INTO sys_AppMessage(ID, FarsiMessage)'
      'VALUES     (76, '#39#1582#1591#1575' '#1583#1585' '#1601#1585#1575#1582#1608#1575#1606#1610' '#1578#1589#1608#1610#1585#39')'
      'INSERT INTO sys_AppMessage(ID, FarsiMessage)'
      'VALUES     (77, '#39'  '#1570#1610#1575' '#1576#1607' '#1606#1575#1605#1607' '#1581#1584#1601' '#1588#1583#1607'    '#1576#1575' '#1588#1605#1575#1585#1607#39')'
      'INSERT INTO sys_AppMessage(ID, FarsiMessage)'
      'VALUES     (78, '#39#1705#1604#1605#1607' '#1593#1576#1608#1585' '#1601#1593#1604#1610' '#1582#1608#1583' '#1585#1575' '#1583#1585#1587#1578' '#1608#1575#1585#1583' '#1705#1606#1610#1583#39')'
      'INSERT INTO sys_AppMessage(ID, FarsiMessage)'
      'VALUES     (79, '#39' '#1705#1604#1605#1607' '#1593#1576#1608#1585' '#1588#1605#1575' '#1576#1575' '#1605#1608#1601#1602#1610#1578' '#1578#1594#1610#1610#1585' '#1705#1585#1583#39')'
      'INSERT INTO sys_AppMessage(ID, FarsiMessage)'
      'VALUES     (80, '#39#1570#1610#1575' '#1575#1586' '#1601#1593#1575#1604' '#1705#1585#1583#1606' '#1575#1610#1606' '#1575#1585#1580#1575#1593' '#1605#1591#1605#1574#1606' '#1607#1587#1578#1610#1583#1567#39')'
      'INSERT INTO sys_AppMessage(ID, FarsiMessage)'
      'VALUES     (81, '#39#1570#1610#1575' '#1575#1586' '#1581#1584#1601' '#1605#1608#1590#1608#1593'  '#39')'
      'INSERT INTO sys_AppMessage(ID, FarsiMessage)'
      'VALUES     (82, '#39#1575#1576#1578#1583#1575' '#1586#1610#1585#1605#1580#1605#1608#1593#1607' '#1607#1575#1610' '#1575#1610#1606' '#1605#1608#1590#1608#1593' '#1585#1575' '#1581#1584#1601' '#1603#1606#1610#1583#39')'
      'INSERT INTO sys_AppMessage(ID, FarsiMessage)'
      
        'VALUES     (83, '#39#1583#1585' '#1575#1610#1606' '#1605#1608#1590#1608#1593' '#1606#1575#1605#1607' '#1607#1575#1610#1610' '#1576#1575#1610#1711#1575#1606#1610' '#1588#1583#1607' '#1575#1587#1578' '#1604#1584#1575' '#1606#1605#1610' ' +
        #1578#1608#1575#1606' '#1570#1606' '#1585#1575' '#1581#1584#1601' '#1603#1585#1583#39')'
      'INSERT INTO sys_AppMessage(ID, FarsiMessage)'
      
        'VALUES     (84, '#39' '#1606#1575#1605#1607' '#1583#1585' '#1575#1610#1606' '#1583#1576#1610#1585#1582#1575#1606#1607' '#1608#1580#1608#1583' '#1583#1575#1585#1583' '#1604#1584#1575' '#1606#1605#1610' '#1578#1608#1575#1606' '#1570#1606 +
        ' '#1585#1575' '#1581#1584#1601' '#1603#1585#1583#39')'
      'INSERT INTO sys_AppMessage(ID, FarsiMessage)'
      
        'VALUES     (85, '#39#1705#1575#1585#1576#1585' '#1583#1610#1711#1585#1610' '#1576#1575' '#1705#1583' '#1705#1575#1585#1576#1585#1610' '#1588#1605#1575' '#1608#1575#1585#1583' '#1587#1610#1587#1578#1605' '#1588#1583#1607' '#1575#1587#1578 +
        ' '#39')'
      'INSERT INTO sys_AppMessage(ID, FarsiMessage)'
      
        'VALUES     (86, '#39#1606#1575#1605#1607' '#1583#1610#1711#1585#1610' '#1583#1585' '#1581#1575#1604' '#1608#1610#1585#1575#1610#1588' '#1575#1587#1578' '#1604#1584#1575' '#1606#1605#1610' '#1578#1608#1575#1606' '#1575#1610#1606' '#1606 +
        #1575#1605#1607' '#1585#1575' '#1582#1608#1575#1606#1583' '#39')'
      'INSERT INTO sys_AppMessage(ID, FarsiMessage)'
      'VALUES     (87, '#39#1605#1578#1606' '#1575#1585#1580#1575#1593' '#1585#1575' '#1605#1588#1582#1589' '#1705#1606#1610#1583#39')'
      'INSERT INTO sys_AppMessage(ID, FarsiMessage)'
      'VALUES     (88, '#39#1570#1610#1575' '#1575#1586' '#1581#1584#1601' '#1711#1585#1608#1607' '#39')'
      'INSERT INTO sys_AppMessage(ID, FarsiMessage)'
      
        'VALUES     (89, '#39#1602#1575#1604#1576'  '#1583#1585' '#1575#1610#1606' '#1711#1585#1608#1607' '#1608#1580#1608#1583' '#1583#1575#1585#1583' '#1604#1584#1575' '#1606#1605#1610' '#1578#1608#1575#1606' '#1575#1606' '#1585#1575' ' +
        #1581#1584#1601' '#1705#1585#1583#39')'
      'go'
      ''
      ''
      ''
      ''
      ''
      
        'if not exists (select * from fields where fieldname='#39'Org_PreCode' +
        #39')'
      
        'INSERT INTO Fields ( FieldName,TableID,Description,IsWhere,ISStr' +
        'ing,IsLike,EveryLike,VisibleInGrid)'
      ' VALUES ('#39'Org_PreCode'#39',1,'#39#1662#1610#1588' '#1705#1583#39',1,1,1,1,1)'
      'GO'
      '  /*'
      'declare @userid int'
      'select @userid=max(id)'
      'from users'
      ''
      'set @userid=isnull(@userid,1)'
      ''
      ''
      'insert into settings(userid,variableid,value)'
      'select id,variableid,value'
      'from users,settings'
      'where userid=@userID'
      'and str(id)+str(variableid)'
      'not in (select str(userid)+str(variableid) from settings) */'
      ''
      'GO'
      'if not exists(select * from SendStatus where SendStatusID=1 )'
      
        'insert into SendStatus(SendStatusID,SendStatusTitle) values(1,'#39#1593 +
        #1575#1583#1610#39')'
      ''
      'go'
      'if not exists(select * from SendStatus where SendStatusID=2 )'
      
        'insert into SendStatus(SendStatusID,SendStatusTitle) values(2,'#39#1570 +
        #1605#1575#1583#1607' '#1575#1585#1587#1575#1604#39')'
      'go'
      'if not exists(select * from SendStatus where SendStatusID=3 )'
      
        'insert into SendStatus(SendStatusID,SendStatusTitle) values(3,'#39#1575 +
        #1585#1587#1575#1604' '#1588#1583#1607#39')'
      'go'
      'if not exists(select * from SendStatus where SendStatusID=4 )'
      
        'insert into SendStatus(SendStatusID,SendStatusTitle) values(4,'#39#1583 +
        #1585#1610#1575#1601#1578' '#1588#1583#1607#39')'
      'go'
      ''
      
        'if not exists (SELECT *  FROM FollowUpType where FollowUpTypeTit' +
        'le='#39#1578#1605#1575#1587' '#1578#1604#1601#1606#1610#39
      
        ')  insert into FollowUpType(FollowUpTypeTitle) values('#39#1578#1605#1575#1587' '#1578#1604#1601#1606 +
        #1610#39')'
      
        'if not exists (SELECT *  FROM FollowUpType where FollowUpTypeTit' +
        'le='#39#1575#1585#1587#1575#1604' '#1662#1610#1575#1605#39')'
      
        ' insert into FollowUpType(FollowUpTypeTitle) values('#39#1575#1585#1587#1575#1604' '#1662#1610#1575#1605#39 +
        ')'
      
        'if not exists (SELECT *  FROM FollowUpType where FollowUpTypeTit' +
        'le='#39#1575#1585#1587#1575#1604' '#1606#1575#1605#1607' '#1583#1575#1582#1604#1610#39')'
      
        ' insert into FollowUpType(FollowUpTypeTitle) values('#39#1575#1585#1587#1575#1604' '#1606#1575#1605#1607' ' +
        #1583#1575#1582#1604#1610#39')'
      
        'if not exists (SELECT *  FROM FollowUpType where FollowUpTypeTit' +
        'le='#39#1575#1602#1583#1575#1605' '#1585#1608#1610' '#1606#1575#1605#1607#39')'
      
        ' insert into FollowUpType(FollowUpTypeTitle) values('#39#1575#1602#1583#1575#1605' '#1585#1608#1610' '#1606 +
        #1575#1605#1607#39')'
      
        'if not exists (SELECT *  FROM FollowUpType where FollowUpTypeTit' +
        'le='#39#1580#1608#1575#1576' '#1606#1575#1605#1607' '#1608#1575#1585#1583#1607#39')'
      
        ' insert into FollowUpType(FollowUpTypeTitle) values('#39#1580#1608#1575#1576' '#1606#1575#1605#1607' '#1608 +
        #1575#1585#1583#1607#39')'
      
        'if not exists (SELECT *  FROM FollowUpType where FollowUpTypeTit' +
        'le='#39#1575#1585#1587#1575#1604' '#1606#1575#1605#1607' '#1589#1575#1583#1585#1607#39')'
      
        'insert into FollowUpType(FollowUpTypeTitle) values('#39#1575#1585#1587#1575#1604' '#1606#1575#1605#1607' '#1589 +
        #1575#1583#1585#1607#39')'
      
        'if not exists (SELECT *  FROM FollowUpType where FollowUpTypeTit' +
        'le='#39#1575#1585#1587#1575#1604' '#1601#1575#1705#1587#39')'
      
        ' insert into FollowUpType(FollowUpTypeTitle) values('#39#1575#1585#1587#1575#1604' '#1601#1575#1705#1587#39 +
        ')'
      
        'if not exists (SELECT *  FROM FollowUpType where FollowUpTypeTit' +
        'le='#39#1575#1585#1587#1575#1604' e-mail'#39')'
      
        ' insert into FollowUpType(FollowUpTypeTitle) values('#39#1575#1585#1587#1575#1604' e-mai' +
        'l'#39')'
      
        'if not exists (SELECT *  FROM FollowUpType where FollowUpTypeTit' +
        'le='#39'SMS'#39')'
      ' insert into FollowUpType(FollowUpTypeTitle) values('#39'SMS'#39')'
      
        'if not exists (SELECT *  FROM FollowUpType where FollowUpTypeTit' +
        'le='#39#1662#1610#1711#1610#1585#1610' '#1662#1575#1587#1582' '#1606#1575#1605#1607#39')'
      
        'insert into FollowUpType(FollowUpTypeTitle) values('#39#1662#1610#1711#1610#1585#1610' '#1662#1575#1587#1582' ' +
        #1606#1575#1605#1607#39')'
      ''
      
        'if not exists (SELECT *  FROM FollowUpType where FollowUpTypeTit' +
        'le='#39#1587#1575#1610#1585' '#1575#1602#1583#1575#1605#1575#1578#39')'
      
        'insert into FollowUpType(FollowUpTypeTitle) values('#39#1587#1575#1610#1585' '#1575#1602#1583#1575#1605#1575#1578 +
        #39')'
      'GO'
      'if not exists (select * from ActionType where ActionTypeid=1 )'
      'insert into ActionType values(1,'#39#1575#1585#1580#1575#1593#39');'
      'if not exists (select * from ActionType where ActionTypeid=2 )'
      'insert into ActionType values(2,'#39#1575#1585#1580#1575#1593' '#1588#1583#1607#39');'
      'if not exists (select * from ActionType where ActionTypeid=3 )'
      'insert into ActionType values(3,'#39#1575#1602#1583#1575#1605' '#1608' '#1576#1575#1610#1711#1575#1606#1610#39');'
      'if not exists (select * from ActionType where ActionTypeid=4 )'
      'insert into ActionType values(4,'#39#1578#1607#1610#1607' '#1662#1610#1588' '#1606#1608#1610#1587#39');'
      'if not exists (select * from ActionType where ActionTypeid=5 )'
      'insert into ActionType values(5,'#39#1580#1608#1575#1576' '#1583#1575#1583#1607' '#1588#1583#39');'
      ''
      
        '----------------------------------------------------------------' +
        '----------------------------------------------------------------' +
        '------------------------------------------------------------'
      '---'
      'GO'
      'if not exists (select * from  lifetips where id=1)'
      
        'insert into lifetips values(1,'#39#1576#1607#1578#1585#1610#1606' '#1705#1575#1585#1607#1575' '#1587#1607' '#1705#1575#1585' '#1575#1587#1578':'#1578#1608#1575#1590#1593' '#1576#1607#1606 +
        #1711#1575#1605' '#1583#1608#1604#1578#1548' '#1593#1601#1608' '#1607#1606#1711#1575#1605' '#1602#1583#1585#1578' '#1608' '#1576#1582#1588#1588' '#1576#1583#1608#1606' '#1605#1606#1578#39')'
      'GO'
      'if not exists (select * from  lifetips where id=2)'
      
        'insert into lifetips values(2,'#39' '#1605#1610#1575#1606#1607#8204#1585#1608#1610' '#1583#1585' '#1582#1585#1580' '#1610#1705' '#1606#1610#1605#1607' '#1605#1593#1610#1588#1578' '#1575 +
        #1587#1578#39')'
      'GO'
      'if not exists (select * from  lifetips where id=3)'
      
        'insert into lifetips values(3,'#39#160' '#1583#1587#1578' '#1576#1711#1610#1585#1548' '#1588#1605#1575' '#1585#1575' '#1575#1586' '#1583#1610#1711#1585#1575#1606' '#1580#1583#1575' ' +
        #1605#1610' '#1705#1606#1583#1548' '#1583#1587#1578' '#1576#1583#1607' '#1575#1578#1581#1575#1583' '#1575#1610#1580#1575#1583' '#1605#1610' '#1705#1606#1583'.'#39')'
      'GO'
      'if not exists (select * from  lifetips where id=4)'
      
        'insert into lifetips values(4,'#39#171#1575#1576#1578#1583#1575' '#1578#1608' '#1585#1575' '#1606#1575#1583#1610#1583#1607' '#1605#1610' '#1711#1610#1585#1606#1583#1548' '#1587#1662#1587 +
        ' '#1605#1587#1582#1585#1607' '#1575#1578' '#1605#1610' '#1705#1606#1606#1583' '#1608' '#1576#1593#1583' '#1576#1575' '#1578#1608' '#1605#1610' '#1580#1606#1711#1606#1583'. '#1608#1604#1610' '#1583#1585' '#1606#1607#1575#1610#1578' '#1662#1610#1585#1608#1586#1610' '#1575#1586' '#1570 +
        #1606' '#1578#1608#1587#1578#187#39')'
      'GO'
      'if not exists (select * from  lifetips where id=5)'
      
        'insert into lifetips values(5,'#39#171#1575#1585#1586#1588' '#1575#1582#1604#1575#1602#1610#1548' '#1576#1587#1578#1607' '#1576#1607' '#1578#1593#1583#1575#1583' '#1608#1592#1575#1610#1601 +
        #1610' '#1575#1587#1578' '#1705#1607' '#1570#1583#1605#1610' '#1575#1606#1580#1575#1605' '#1605#1610' '#1583#1607#1583#187#1705#1578#1585#1610#1606#1711#39')'
      'GO'
      'if not exists (select * from  lifetips where id=6)'
      
        'insert into lifetips values(6,'#39#171#1575#1711#1585' '#1586#1606#1583#1711#1610' '#1576#1575' '#1578#1608' '#1587#1585' '#1606#1575#1587#1575#1586#1711#1575#1585#1610' '#1583#1575#1585 +
        #1583' '#1578#1608' '#1576#1575' '#1575#1608' '#1587#1575#1586#1588' '#1705#1606#187' - '#1575#1587#1662#1575#1585#1578#39')'
      'GO'
      'if not exists (select * from  lifetips where id=7)'
      
        'insert into lifetips values(7,'#39#171#1575#1606#1587#1575#1606' '#1607#1605' '#1605#1610#1578#1608#1575#1606#1583' '#1583#1575#1610#1585#1607' '#1576#1575#1588#1583' '#1607#1605' '#1610 +
        #1705' '#1582#1591' '#1585#1575#1587#1578'. '#1588#1605#1575' '#1605#1610' '#1582#1608#1575#1607#1610#1583' '#1670#1607' '#1603#1575#1585' '#1603#1606#1610#1583#1610' '#8230#1578#1575' '#1575#1576#1583' '#1583#1608#1585' '#1582#1608#1583#1578#1575#1606' '#1576#1670#1585#1582#1610#1583' ' +
        #1610#1575' '#1578#1575' '#1576#1610' '#1606#1607#1575#1610#1578' '#1575#1583#1575#1605#1607' '
      #1576#1583#1607#1610#1583#1610#187#1605#1608#1585#1610#1587' '#1605#1578#1585#1604#1610#1606#1711#39')'
      'GO'
      'if not exists (select * from  lifetips where id=8)'
      
        'insert into lifetips values(8,'#39#171#1576#1585' '#1607#1585' '#1670#1607' '#1607#1605#1610' '#1604#1585#1586#1610' '#1605#1610#8204#1583#1575#1606' '#1705#1607' '#1607#1605#1575#1606 +
        ' '#1575#1585#1586#1610#39')'
      'GO'
      'if not exists (select * from  lifetips where id=9) '
      
        'insert into lifetips values(9,'#39#171#1576#1585#1583#1576#1575#1585#1610' '#1576#1607' '#1593#1606#1608#1575#1606' '#1610#1575#1585#1610' '#1705#1606#1606#1583#1607' '#1705#1575#1601#1610 +
        ' '#1575#1587#1578' '#1608' '#1575#1711#1585' '#1576#1585#1583#1576#1575#1585' '#1606#1610#1587#1578#1610' '#1582#1608#1583' '#1585#1575' '#1576#1607' '#1576#1585#1583#1576#1575#1585#1610' '#1608#1575#1583#1575#1585' '#1705#1606#187#39')'
      'GO'
      'if not exists (select * from  lifetips where id=10)'
      
        'insert into lifetips values(10,'#39#171#1578#1601#1705#1585' '#1575#1606#1587#1575#1606' '#1605#1575#1606#1606#1583' '#1610#1705' '#1670#1578#1585' '#1606#1580#1575#1578' '#1605#1610 +
        ' '#1576#1575#1588#1583' '#1610#1593#1606#1610' '#1578#1606#1607#1575' '#1586#1605#1575#1606#1610' '#1605#1610' '#1578#1608#1575#1606#1583' '#1705#1575#1585' '#1705#1606#1583' '#1705#1607' '#1576#1575#1586' '#1576#1575#1588#1583#187#39')'
      'GO'
      'if not exists (select * from  lifetips where id=11) '
      
        'insert into lifetips values(11,'#39#171#1588#1593#1575#1585' '#1711#1575#1604#1610#1604#1607#187': '#1705#1575#1585' '#1705#1606#1610#1583' '#1578#1575' '#1607#1605#1607' '#1594 +
        #1589#1607#8204#1607#1575' '#1608' '#1662#1585#1610#1588#1575#1606#1610#1607#1575#1610' '#1582#1608#1583' '#1585#1575' '#1601#1585#1575#1605#1608#1588' '#1705#1606#1610#1583'.'#39')'
      'GO'
      'if not exists (select * from  lifetips where id=12) '
      
        'insert into lifetips values(12,'#39#171#1605#1606' '#1570#1610#1606#1583#1607' '#1585#1575' '#1583#1608#1587#1578' '#1583#1575#1585#1605' '#1586#1610#1585#1575' '#1576#1602#1610#1607 +
        ' '#1593#1605#1585#1605' '#1585#1575' '#1576#1575#1610#1583' '#1583#1585' '#1570#1606' '#1576#1711#1584#1585#1575#1606#1605#187#39')'
      'GO'
      'if not exists (select * from  lifetips where id=13)'
      
        'insert into lifetips values(13,'#39#171#1605#1608#1601#1602#1610#1578#187' '#1576#1583#1587#1578#8204#1570#1608#1585#1583#1606' '#1670#1610#1586#1610' '#1575#1587#1578' '#1705#1607' ' +
        #1583#1608#1587#1578' '#1583#1575#1585#1610' '#1608' '#171#1582#1608#1588#1576#1582#1578#1610#187' '#1583#1608#1587#1578' '#1583#1575#1588#1578#1606' '#1670#1610#1586#1610' '#1575#1587#1578' '#1705#1607' '#1576#1583#1587#1578#8204#1570#1608#1585#1583#1607#8204#1575#1610'.'#39')'
      'GO'
      'if not exists (select * from  lifetips where id=14)'
      
        'insert into lifetips values(14,'#39#171#1607#1610#1670' '#1608#1602#1578' '#1576#1575' '#1610#1607' '#1570#1583#1605' '#1575#1581#1605#1602' '#1583#1607#1606' '#1576#1607' '#1583 +
        #1607#1606' '#1606#1588#1608'. '#1670#1608#1606' '#1603#1587#1575#1606#1610' '#1603#1607' '#1575#1586' '#1576#1610#1585#1608#1606' '#1606#1592#1575#1585#1607#8204#1711#1585' '#1575#1610#1606' '#1583#1593#1608#1575' '#1607#1587#1578#1606#1583#1548' '#1575#1581#1605#1602#8204#1578#1585' '#1575 +
        #1586' '#1575#1608#1606#1610' '#1607#1587#1578#1606#1583' '#1603#1607' '#1576#1578#1608#1606#1606' '
      #1578#1588#1582#1610#1589' '#1576#1583#1606' '#1581#1602' '#1576#1575' '#1578#1608#1574#1607' '#1610#1575' '#1575#1608#1606'.'#187#39')'
      'GO'
      'if not exists (select * from  lifetips where id=15) '
      
        'insert into lifetips values(15,'#39#171#1610#1705' '#1575#1606#1587#1575#1606' '#1576#1575' '#1580#1585#1575#1611#1578' '#1610#1705' '#1580#1605#1593#1610#1578' '#1575#1587#1578#187 +
        #39')'
      'GO'
      'if not exists (select * from  lifetips where id=16) '
      
        'insert into lifetips values(16,'#39#1570#1583#1605' '#1607#1575#1610' '#1576#1586#1585#1711' '#1576#1607' '#1582#1608#1588#1610' '#1607#1575#1610' '#1705#1608#1578#1575#1607' '#1607 +
        #1606#1711#1575#1605' '#1578#1606' '#1606#1605#1610' '#1583#1607#1606#1583' .'#39')'
      'GO'
      'if not exists (select * from  lifetips where id=17) '
      
        'insert into lifetips values(17,'#39#1570#1583#1605#1610' '#1605#1610' '#1578#1608#1575#1606#1583' '#1576#1575#1585#1607#1575' '#1608' '#1576#1575#1585#1607#1575' '#1576#1607' '#1588 +
        #1610#1608#1607' '#1607#1575#1610' '#1711#1608#1606#1575#1711#1608#1606' '#1602#1607#1585#1605#1575#1606' '#1588#1608#1583' .'#39')'
      'GO'
      'if not exists (select * from  lifetips where id=18) '
      
        'insert into lifetips values(18,'#39#1570#1606#1705#1607' '#1605#1610#8204#1582#1608#1575#1607#1583' '#1585#1608#1586#1610' '#1662#1585#1610#1583#1606' '#1570#1605#1608#1586#1583#1548' ' +
        #1606#1582#1587#1578' '#1605#1610#8204#1576#1575#1610#1583' '#1575#1610#1587#1578#1575#1583#1606#1548' '#1585#1575#1607' '#1585#1601#1578#1606#1548' '#1583#1608#1610#1583#1606' '#1608' '#1576#1575#1604#1575#1585#1601#1578#1606' '#1570#1605#1608#1586#1583'. '#1662#1585#1608#1575#1586' '#1585#1575 +
        ' '#1576#1575' '#1662#1585#1608#1575#1586' '#1570#1594#1575#1586' '#1606#1605#1610#8204#1705#1606#1606#1583'.'#160#160' '#1606#1610#1670#1607#39')'
      'GO'
      'if not exists (select * from  lifetips where id=19) '
      
        'insert into lifetips values(19,'#39#1575#1586' '#1575#1610#1606' '#1705#1607' '#1605#1606' '#1705#1575#1588#1578#1605' '#1608' '#1583#1610#1711#1585#1575#1606' '#1576#1585#1583#1575 +
        #1588#1578#1606#1583' '#1711#1604#1607' '#1575#1610' '#1606#1583#1575#1585#1605'. '#1662#1588#1610#1605#1575#1606#1610' '#1601#1602#1591' '#1608#1602#1578#1610' '#1605#1593#1606#1610' '#1583#1575#1585#1583' '#1705#1607' '#1576#1705#1575#1585#1610#1605' '#1575#1605#1575' '#1705#1587#1610' ' +
        #1583#1585#1608' '#1606#1705#1606#1583'.'#39')'
      'GO'
      'if not exists (select * from  lifetips where id=20) '
      
        'insert into lifetips values(20,'#39#1575#1586' '#1593#1575#1580#1586#1578#1585#1610#1606' '#1605#1585#1583#1605' '#1705#1587#1610' '#1575#1587#1578' '#1705#1607' '#1606#1578#1608#1575 +
        #1606#1583' '#1583#1608#1587#1578' '#1662#1610#1583#1575' '#1705#1606#1583' '#1608' '#1575#1586' '#1575#1608' '#1593#1575#1580#1586#1578#1585' '#1570#1606#1705#1607' '#1583#1608#1587#1578#1588' '#1585#1575' '#1575#1586' '#1582#1608#1583' '#1583#1608#1585' '#1705#1606#1583'. '#1575#1605 +
        #1575#1605' '#1593#1604#1610'('#1593')'#39')'
      'GO'
      'if not exists (select * from  lifetips where id=21) '
      
        'insert into lifetips values(21,'#39#1575#1588#1578#1576#1575#1607' '#1585#1575' '#1605#1581#1705#1608#1605' '#1705#1606' '#1606#1607' '#1570#1606#1705#1607' '#1575#1588#1578#1576#1575 +
        #1607' '#1575#1586' '#1575#1608' '#1587#1585' '#1586#1583#1607' . '#171#1588#1705#1587#1662#1610#1585#187#39')'
      'GO'
      'if not exists (select * from  lifetips where id=22) '
      
        'insert into lifetips values(22,'#39#1575#1588#1578#1576#1575#1607#1575#1578' '#1575#1606#1587#1575#1606#1607#1575#1610' '#1576#1586#1585#1711' '#1602#1575#1576#1604' '#1575#1581#1578#1585 +
        #1575#1605' '#1575#1587#1578' . '#1586#1610#1585#1575' '#1579#1605#1585' '#1576#1582#1588' '#1578#1585' '#1575#1586' '#1581#1602#1575#1610#1602' '#1575#1606#1587#1575#1606#1607#1575#1610' '#1705#1608#1670#1705' '#1575#1587#1578'. '#171#1601#1585#1583#1585#1610#1588' '#1606#1610#1670 +
        #1607#187#39')'
      'GO'
      'if not exists (select * from  lifetips where id=23) '
      
        'insert into lifetips values(23,'#39#1575#1711#1585' '#1570#1583#1605' '#1582#1608#1576#1610' '#1576#1575' '#1578#1608' '#1576#1583#1610' '#1705#1585#1583#1548#1670#1606#1575#1606' ' +
        #1608#1575#1606#1605#1608#1583' '#1705#1606' '#1705#1607' '#1606#1601#1607#1605#1610#1583#1607#8204#1575#1610'. '#1575#1608' '#1578#1608#1580#1607' '#1582#1608#1575#1607#1583' '#1705#1585#1583' '#1608' '#1605#1583#1578' '#1586#1610#1575#1583#1610' '#1605#1583#1610#1608#1606' '#1578#1608' ' +
        #1582#1608#1575#1607#1583' '#1576#1608#1583'.'#160' '#1610#1608#1607#1575#1606' '#1608#1604#1601#1711#1575#1606#1711' '#1711#1608#1578#1607#39')'
      'GO'
      'if not exists (select * from  lifetips where id=24) '
      
        'insert into lifetips values(24,'#39#1575#1711#1585' '#1570#1583#1605' '#1582#1608#1576#1610' '#1576#1607' '#1578#1608' '#1576#1583#1610' '#1705#1585#1583' '#1670#1606#1575#1606' ' +
        #1608#1575#1606#1605#1608#1583' '#1705#1606' '#1705#1607' '#1606#1601#1607#1605#1610#1583#1607' '#1575#1610' '#1575#1608' '#1586#1605#1575#1606' '#1586#1610#1575#1583#1610' '#1585#1575' '#1605#1583#1610#1608#1606' '#1578#1608' '#1606#1582#1608#1575#1607#1583' '#1605#1575#1606#1583'. '#1575 +
        #1601#1604#1575#1591#1608#1606#39')'
      'GO'
      'if not exists (select * from  lifetips where id=25) '
      
        'insert into lifetips values(25,'#39#1575#1711#1585' '#1570#1585#1605#1575#1606' '#1588#1605#1575' '#1583#1585' '#1582#1583#1605#1578' '#1583#1610#1711#1585#1575#1606' '#1606#1610#1587 +
        #1578#1548' '#1604#1575#1576#1583' '#1570#1585#1605#1575#1606#1610' '#1581#1602#1610#1585' '#1575#1587#1578'.'#39')'
      'GO'
      'if not exists (select * from  lifetips where id=26) '
      
        'insert into lifetips values(26,'#39#1575#1711#1585' '#1575#1586' '#1705#1587#1610' '#1605#1578#1606#1601#1585#1610' '#1575#1586' '#1602#1587#1605#1578#1610' '#1575#1586' '#1582#1608 +
        #1583#1578' '#1583#1585' '#1575#1608' '#1605#1578#1606#1601#1585#1610#1548' '#1670#1610#1586#1610' '#1705#1607' '#1575#1586' '#1605#1575' '#1606#1610#1587#1578' '#1606#1605#1610#8204#1578#1608#1575#1606#1583' '#1575#1601#1705#1575#1585' '#1605#1575' '#1585#1575' '#1605#1594#1588#1608#1588' ' +
        #1705#1606#1583'.'#160#160#160' '#1607#1585#1605#1575#1606' '#1607#1587#1607#39')'
      'GO'
      'if not exists (select * from  lifetips where id=27) '
      
        'insert into lifetips values(27,'#39#1575#1711#1585' '#1575#1605#1585#1608#1586' '#1582#1608#1575#1587#1578#1610' '#1608' '#1606#1578#1608#1575#1606#1587#1578#1610' '#1548' '#1705#1607 +
        ' '#1605#1593#1584#1608#1585#1610' ... '#1608#1604#1610' '#1575#1711#1585' '#1585#1608#1586#1610' '#1578#1608#1575#1606#1587#1578#1610' '#1608' '#1606#1582#1608#1575#1587#1578#1610' '#1548' '#1605#1606#1578#1592#1585' '#1585#1608#1586#1610' '#1576#1575#1588' '#1705#1607' '#1576 +
        #1582#1608#1575#1607#1610' '#1608' '#1606#1578#1608#1575#1606#1610' . '#171' '#1601#1585#1583#1585#1610#1588' '
      #1606#1610#1670#1607#187#39')'
      'GO'
      'if not exists (select * from  lifetips where id=28) '
      
        'insert into lifetips values(28,'#39#1575#1711#1585' '#1582#1604#1602' '#1608' '#1582#1608#1610' '#1582#1608#1583' '#1585#1575' '#1705#1606#1578#1585#1604' '#1606#1705#1606#1610#1583 +
        #1548' '#1576#1585#1606#1583#1607' '#1606#1582#1608#1575#1607#1610#1583' '#1588#1583'.'#39')'
      'GO'
      'if not exists (select * from  lifetips where id=29) '
      
        'insert into lifetips values(29,'#39#1575#1711#1585' '#1583#1587#1578' '#1578#1602#1583#1610#1585' '#1608' '#1587#1585#1606#1608#1588#1578' '#1585#1575' '#1601#1585#1575#1605#1608#1588 +
        ' '#1705#1606#1610#1605' '#1662#1587' '#1575#1586' '#1662#1610#1588#1585#1601#1578' '#1606#1610#1586' '#1575#1601#1587#1585#1583#1607' '#1608' '#1585#1606#1580#1608#1585' '#1582#1608#1575#1607#1610#1605' '#1588#1583' .'#39')'
      'GO'
      'if not exists (select * from  lifetips where id=30) '
      
        'insert into lifetips values(30,'#39#1575#1711#1585' '#1583#1608#1587#1578' '#1583#1575#1585#1610' '#1575#1586' '#1604#1581#1592#1575#1578' '#1582#1608#1583' '#1575#1587#1578#1601#1575 +
        #1583#1607' '#1705#1606#1610' .'#1604#1584#1578' '#1582#1608#1583' '#1608' '#1575#1587#1578#1601#1575#1583#1607' '#1582#1608#1583' '#1585#1575' '#1575#1586' '#1607#1605#1575#1606' '#1583#1602#1575#1610#1602' '#1608' '#1579#1575#1606#1610#1607' '#1607#1575' '#1576#1583#1575#1606'. ' +
        #1575#1601#1604#1575#1591#1608#1606#39')'
      'GO'
      'if not exists (select * from  lifetips where id=31) '
      
        'insert into lifetips values(31,'#39#1575#1711#1585' '#1586#1606#1583#1711#1610' '#1575#1578' '#1583#1585' '#1582#1591#1585' '#1606#1610#1587#1578'. '#1582#1608#1583' '#1585#1575 +
        ' '#1576#1607' '#1587#1578#1610#1586' '#1605#1610#1601#1705#1606'.'#39')'
      'GO'
      'if not exists (select * from  lifetips where id=32) '
      
        'insert into lifetips values(32,'#39#1575#1711#1585' '#1602#1585#1575#1585' '#1576#1575#1588#1583' '#1576#1575#1610#1587#1578#1610' '#1608' '#1576#1607' '#1591#1585#1601' '#1607#1585 +
        ' '#1587#1711#1610' '#1705#1607' '#1662#1575#1585#1587' '#1605#1610#8204#1705#1606#1583' '#1587#1606#1711' '#1662#1585#1578#1575#1576' '#1705#1606#1610#1548' '#1607#1585#1711#1586' '#1576#1607' '#1605#1602#1589#1583' '#1606#1605#1610#8204#1585#1587#1610'.'#160#160' '#1604#1575#1585#1606#1587 +
        ' '#1575#1587#1578#1585#1606#39')'
      'GO'
      'if not exists (select * from  lifetips where id=33) '
      
        'insert into lifetips values(33,'#39#1575#1711#1585' '#1605#1610#8204#1582#1608#1575#1607#1610#1583' '#1583#1585' '#1586#1606#1583#1711#1610' '#1583#1608#1587#1578#1575#1606' '#1608#1601 +
        #1575#1583#1575#1585' '#1608' '#1610#1575#1585#1575#1606' '#1594#1605#1582#1608#1575#1585' '#1583#1575#1588#1578#1607#8204#1576#1575#1588#1610#1583#1548' '#1705#1605' '#1608' '#1582#1610#1604#1610' '#1583#1610#1585' '#1576#1575' '#1605#1585#1583#1605' '#1583#1608#1587#1578' '#1588#1608#1610#1583 +
        ' .'#171#1607#1585#1588#1604#187#39')'
      'GO'
      'if not exists (select * from  lifetips where id=34) '
      
        'insert into lifetips values(34,'#39#1575#1711#1585' '#1605#1610#8204#1583#1575#1606#1587#1578#1606#1583' '#1578#1575' '#1603#1606#1608#1606' '#1670#1606#1583' '#1576#1575#1585' '#1581 +
        #1585#1601#1607#1575#1610' '#1583#1610#1711#1585#1575#1606' '#1585#1575' '#1576#1583' '#1601#1607#1605#1610#1583#1607#8204#1575#1606#1583#1548' '#1607#1610#1670#1603#1587' '#1583#1585' '#1580#1605#1593' '#1575#1610#1606#1607#1605#1607' '#1662#1585' '#1581#1585#1601#1610' '#1606#1605#1610#8204#1603 +
        #1585#1583'. '#1610#1608#1607#1575#1606' '#1608#1604#1601#1711#1575#1606#1711' '#1711#1608#1578#1607#39')'
      'GO'
      'if not exists (select * from  lifetips where id=35) '
      
        'insert into lifetips values(35,'#39#1575#1711#1585' '#1607#1605#1608#1575#1585#1607' '#1605#1575#1606#1606#1583' '#1711#1584#1588#1578#1607' '#1576#1610#1606#1583#1610#1588#1610#1583#1548 +
        ' '#1607#1605#1610#1588#1607' '#1607#1605#1575#1606' '#1670#1610#1586#1607#1575#1610#1610' '#1585#1575' '#1576#1607#8204#1583#1587#1578' '#1605#1610#8204#1570#1608#1585#1610#1583' '#1603#1607' '#1578#1575' '#1576#1581#1575#1604' '#1603#1587#1576' '#1603#1585#1583#1607#8204#1575#1610#1583' .' +
        #1601#1575#1610#1606#1605#1606#39')'
      'GO'
      'if not exists (select * from  lifetips where id=36) '
      
        'insert into lifetips values(36,'#39#1575#1606#1587#1575#1606' '#1576#1585#1575#1610' '#1662#1610#1585#1608#1586#1610' '#1570#1601#1585#1610#1583#1607' '#1588#1583#1607' '#1575#1587#1578 +
        #1548' '#1575#1608' '#1585#1575' '#1605#1610#1578#1608#1575#1606' '#1606#1575#1576#1608#1583' '#1705#1585#1583' '#1608#1604#1610' '#1606#1605#1610#1578#1608#1575#1606' '#1588#1705#1587#1578' '#1583#1575#1583'. '#171#1605#1575#1607#1610#1711#1610#1585' '#1608#1583#1585#1610#1575#187#160' ' +
        #1575#1585#1606#1587#1578' '#1607#1605#1610#1606#1711#1608#1610#39')'
      'GO'
      'if not exists (select * from  lifetips where id=37) '
      
        'insert into lifetips values(37,'#39#1575#1606#1587#1575#1606' '#1606#1602#1591#1607' '#1575#1610' '#1575#1587#1578' '#1576#1610#1606' '#1583#1608' '#1576#1610' '#1606#1607#1575#1610 +
        #1578'.'#1576#1610' '#1606#1607#1575#1610#1578' '#1604#1580#1606' '#1608' '#1576#1610' '#1606#1607#1575#1610#1578' '#1601#1585#1588#1578#1607' .'#160'"'#160' '#171#1583#1705#1578#1585' '#1588#1585#1610#1593#1578#1610#187#39')'
      'GO'
      'if not exists (select * from  lifetips where id=38) '
      
        'insert into lifetips values(38,'#39#1575#1610#1606#160#1588#1610#1608#1607' '#1587#1711' '#1575#1587#1578' '#1705#1607#160#1576#1607' '#1578#1604#1575#1601#1610' '#1587#1606#1711#1610 +
        ' '#1705#1607' '#1576#1607' '#1575#1608' '#1586#1583#1607#8204#1575#1606#1583#1548' '#1587#1711' '#1583#1610#1711#1585#1610' '#1585#1575' '#1711#1575#1586' '#1605#1610#8204#1711#1610#1585#1583'. '#171#1586#1607#1575#1585#187#39')'
      'GO'
      'if not exists (select * from  lifetips where id=39) '
      
        'insert into lifetips values(39,'#39#1576#1575#1591#1606' '#1608#1587#1610#1585#1578' '#1605#1585#1583#1605' '#1585#1575' '#1583#1585' '#1581#1610#1606' '#1576#1583#1576#1582#1578#1610 +
        ' '#1570#1606#1575#1606' '#1605#1610#8204#1578#1608#1575#1606' '#1588#1606#1575#1582#1578'.'#160#160#160' '#1583#1575#1606#1610#1575#1604' '#1606#1576#1610#39')'
      'GO'
      'if not exists (select * from  lifetips where id=40) '
      
        'insert into lifetips values(40,'#39#1576#1575#1604#1575#1578#1585' '#1575#1586' '#1607#1605#1607' '#1670#1610#1586' '#1575#1610#1606#8204#1575#1587#1578#8204#1705#1607' '#1576#1575' ' +
        #1582#1608#1583#1605#1575#1606' '#1589#1575#1583#1602' '#1576#1575#1588#1610#1605'. '#171#1608#1610#1604#1610#1575#1605' '#1588#1705#1587#1662#1610#1585#187#39')'
      'GO'
      'if not exists (select * from  lifetips where id=41)'
      
        'insert into lifetips values(41,'#39#1576#1583#1578#1585#1610#1606' '#1608' '#1582#1591#1585#1606#1575#1705#1578#1585#1610#1606' '#1705#1604#1605#1575#1578' '#1575#1610#1606#1587#1578':' +
        ' '#171#1607#1605#1607' '#1575#1610#1606' '#1580#1608#1585#1606#1583#187'. '#1578#1608#1604#1587#1578#1608#1610#39')'
      'GO'
      'if not exists (select * from  lifetips where id=42)'
      
        'insert into lifetips values(42,'#39#1576#1583#1608#1606' '#1583#1575#1588#1578#1606' '#1576#1575#1586#1610#1705#1606' '#1607#1575#1610' '#1576#1586#1585#1711' '#1575#1605#1705#1575#1606 +
        ' '#1576#1585#1583#1606' '#1608#1580#1608#1583' '#1583#1575#1585#1583' '#1575#1605#1575' '#1576#1575' '#1583#1575#1588#1578#1606' '#1576#1575#1586#1610#1705#1606' '#1607#1575#1610' '#1576#1586#1585#1711' '#1607#1605' '#1605#1610' '#1578#1608#1575#1606' '#1605#1610#1583#1575#1606' '#1585#1575 +
        ' '#1576#1607' '#1581#1585#1610#1601' '#1608#1575#1711#1584#1575#1585' '#1705#1585#1583'.'#39')'
      'GO'
      'if not exists (select * from  lifetips where id=43) '
      
        'insert into lifetips values(43,'#39#1576#1585#1575#1610' '#1575#1586#1583#1608#1575#1580' '#1705#1585#1583#1606' '#1604#1581#1592#1607#8204#1575#1610' '#1583#1585#1606#1711' '#1606#1705 +
        #1606#1610#1583'. '#1575#1711#1585' '#1586#1606' '#1582#1608#1576#1610' '#1606#1589#1610#1576#1578#1575#1606' '#1588#1608#1583#1548' '#1582#1608#1588#1576#1582#1578' '#1605#1610#8204#1711#1585#1583#1610#1583' '#1608' '#1575#1711#1585' '#1586#1606' '#1576#1583#1610' '#1711#1610#1585#1578#1575 +
        #1606' '#1570#1605#1583' ['#1605#1579#1604' '#1605#1606'] '#1601#1610#1604#1587#1608#1601' '
      #1605#1610#8204#1588#1608#1610#1583'. '#171#1587#1602#1585#1575#1591#187#39')'
      'GO'
      'if not exists (select * from  lifetips where id=44) '
      
        'insert into lifetips values(44,'#39#1576#1585#1575#1610' '#1578#1585#1576#1610#1578' '#1575#1585#1575#1583#1607' '#1576#1607#1578#1585#1610#1606' '#1586#1605#1575#1606' '#1575#1610#1575 +
        #1605' '#1580#1608#1575#1606#1610' '#1575#1587#1578'. '#171#1601#1610#1579#1575#1594#1608#1585#1579#187#39')'
      'GO'
      'if not exists (select * from  lifetips where id=45)'
      
        'insert into lifetips values(45,'#39#1576#1586#1585#1711' '#1578#1585#1610#1606' '#1583#1587#1578#1575#1608#1585#1583#1607#1575#1610' '#1578#1575#1585#1610#1582' '#1705#1575#1585' '#1575 +
        #1606#1587#1575#1606' '#1607#1575#1610#1610' '#1576#1608#1583#1607' '#1705#1607' '#1601#1602#1591' '#1575#1606#1583#1705#1610' '#1575#1586' '#1575#1606#1576#1608#1607' '#1607#1605#1578#1575#1610#1575#1606' '#1582#1608#1583' '#1662#1610#1588' '#1578#1585' '#1576#1608#1583#1607' '#1575#1606#1583 +
        '.'#39')'
      'GO'
      'if not exists (select * from  lifetips where id=46) '
      
        'insert into lifetips values(46,'#39#1576#1586#1585#1711#1578#1585#1610#1606' '#1583#1585#1587' '#1586#1606#1583#1711#1610' '#1575#1610#1606#1587#1578#8204#1705#1607' '#1711#1575#1607#1610 +
        ' '#1575#1581#1605#1602#8204#1607#1575' '#1607#1605' '#1583#1585#1587#1578' '#1605#1610#8204#1711#1608#1610#1606#1583'. '#1608#1610#1606#1587#1578#1608#1606' '#1670#1585#1670#1610#1604#39')'
      'GO'
      'if not exists (select * from  lifetips where id=47) '
      
        'insert into lifetips values(47,'#39#1576#1606#1583#1607' '#1570#1606#1610' '#1705#1607' '#1583#1585' '#1576#1606#1583' '#1570#1606#1610'. '#171#1575#1576#1608#1587#1593#1610#1583 +
        ' '#1575#1576#1608#8204#1575#1604#1582#1610#1585#187#39')'
      'GO'
      'if not exists (select * from  lifetips where id=48) '
      
        'insert into lifetips values(48,'#39#1576#1607' '#1580#1575#1610' '#1575#1610#1606' '#1603#1607' '#1587#1593#1610' '#1603#1606#1610#1583' '#1605#1585#1583' '#1605#1608#1601#1602#1610 +
        #1578' '#1576#1575#1588#1610#1583#1548' '#1587#1593#1610' '#1603#1606#1610#1583' '#1605#1585#1583' '#1575#1585#1586#1588#1607#1575' '#1576#1575#1588#1610#1583'.'#1570#1604#1576#1585#1578' '#1575#1606#1610#1588#1578#1610#1606#39')'
      'GO'
      'if not exists (select * from  lifetips where id=49) '
      
        'insert into lifetips values(49,'#39#1576#1607#1578#1585#1610#1606' '#1583#1608#1587#1578' '#1578#1608' '#1570#1606#1587#1578' '#1705#1607' '#1575#1588#1578#1576#1575#1607#1575#1578' ' +
        #1578#1608' '#1585#1575' '#1601#1585#1575#1605#1608#1588' '#1705#1606#1583' '#1608' '#1582#1608#1576#1610#1607#1575#1610#1578' '#1585#1575' '#1576#1607' '#1610#1575#1583' '#1583#1575#1588#1578#1607' '#1576#1575#1588#1583'.'#1575#1605#1575#1605' '#1581#1587#1606' '#1593#1587#1711#1585#1610'(' +
        #1593')'#39')'
      'GO'
      'if not exists (select * from  lifetips where id=50) '
      
        'insert into lifetips values(50,'#39#1576#1607#1578#1585#1610#1606' '#1705#1575#1585#1548' '#1705#1575#1585#1610' '#1575#1587#1578' '#1705#1607' '#1575#1586' '#1575#1606#1580#1575#1605 +
        ' '#1570#1606' '#1604#1584#1578' '#1605#1610' '#1576#1585#1610#1605'. '#1588#1594#1604#1610' '#1585#1575' '#1576#1662#1584#1610#1585' '#1705#1607' '#1593#1575#1588#1602' '#1570#1606' '#1576#1575#1588#1610'.'#39')'
      'GO'
      'if not exists (select * from  lifetips where id=51) '
      
        'insert into lifetips values(51,'#39#1662#1608#1604' '#1582#1608#1588#1576#1582#1578#1610' '#1606#1605#1610#8204#1570#1608#1585#1583' ... '#1575#1605#1575' '#1588#1705#1604 +
        ' '#1583#1604#1662#1584#1610#1585#1578#1585#1610' '#1575#1586' '#1576#1583#1576#1582#1578#1610' '#1585#1575' '#1576#1585#1575#1610#1578#1575#1606' '#1601#1585#1575#1607#1605' '#1605#1610#8204#1587#1575#1586#1583'. '#171#1575#1587#1662#1575#1610#1705' '#1605#1610#1604#1610#1711#1575#1606#187#39 +
        ')'
      'GO'
      'if not exists (select * from  lifetips where id=52) '
      
        'insert into lifetips values(52,'#39#1662#1610#1585#1608#1586#1610' '#1570#1606' '#1606#1610#1587#1578' '#1705#1607' '#1607#1585#1711#1586' '#1586#1605#1610#1606' '#1606#1582#1608#1585 +
        #1610#1548' '#1570#1606#1587#1578#1705#1607' '#1576#1593#1583#1575#1586' '#1607#1585' '#1586#1605#1610#1606' '#1582#1608#1585#1583#1606#1610' '#1576#1585#1582#1610#1586#1610'.'#160' '#1711#1575#1606#1583#1610#39')'
      'GO'
      'if not exists (select * from  lifetips where id=53) '
      
        'insert into lifetips values(53,'#39#1578#1601#1575#1608#1578' '#1576#1585#1606#1583#1607' '#1608' '#1576#1575#1586#1606#1583#1607' '#1583#1585' '#1593#1605#1604' '#1608' '#1576#1610 +
        ' '#1593#1605#1604#1610' '#1575#1587#1578#39')'
      'GO'
      'if not exists (select * from  lifetips where id=54) '
      
        'insert into lifetips values(54,'#39#1578#1606#1607#1575' 99 '#1583#1585#1589#1583' '#1605#1585#1583#1607#1575' '#1607#1587#1578#1606#1583' '#1705#1607' '#1576#1575#1593#1579 +
        ' '#1576#1583#1606#1575#1605#1610' 1 '#1583#1585#1589#1583' '#1576#1575#1602#1610' '#1605#1575#1606#1583#1607' '#1605#1610' '#1588#1608#1606#1583' !'#39')'
      'GO'
      'if not exists (select * from  lifetips where id=55) '
      
        'insert into lifetips values(55,'#39#1578#1606#1607#1575' '#1601#1585#1602' '#1576#1610#1606' '#1605#1608#1601#1602#1610#1578' '#1608' '#1588#1705#1587#1578#1548' '#1606#1608#1593' ' +
        #1606#1711#1575#1607' '#1575#1587#1578'.'#39')'
      'GO'
      'if not exists (select * from  lifetips where id=56) '
      
        'insert into lifetips values(56,'#39#1670#1606#1575#1606' '#1576#1575#1588' '#1705#1607' '#1576#1607' '#1607#1605#1607' '#1576#1578#1608#1575#1606#1610' '#1576#1711#1608#1574#1610' ' +
        #1670#1608#1606' '#1605#1606' '#1576#1575#1588' ! '#171#1705#1575#1606#1578#187#39')'
      'GO'
      'if not exists (select * from  lifetips where id=57) '
      
        'insert into lifetips values(57,'#39#1670#1607#1575#1585' '#1585#1608#1588' '#1576#1585#1575#1610' '#1575#1578#1604#1575#1601' '#1608#1602#1578' '#1608#1580#1608#1583' '#1583#1575#1585 +
        #1583': '#1705#1575#1585#8204#1606#1705#1585#1583#1606#1548' '#1705#1605' '#1705#1575#1585#8204#1705#1585#1583#1606#1548' '#1576#1583' '#1705#1575#1585#8204#1705#1585#1583#1606' '#1608' '#1705#1575#1585' '#1576#1610#1607#1608#1583#1607#8204' '#1705#1585#1583#1606'.'#160#171#1570#1576#1607#8204 +
        #1583#1608#1604#1575#8204#1585#1608#1588#187#160#39')'
      'GO'
      'if not exists (select * from  lifetips where id=58) '
      
        'insert into lifetips values(58,'#39#1581#1578#1610' '#1605#1610#1605#1608#1606#1607#1575' '#1606#1610#1586' '#1711#1575#1607#1610' '#1575#1586' '#1583#1585#1582#1578' '#1605#1610#8204 +
        #1575#1601#1578#1606#1583'. '#171#1590#1585#1576#8204#1575#1604#1605#1579#1604#8204#1688#1575#1662#1606#1610#187#39')'
      'GO'
      'if not exists (select * from  lifetips where id=59) '
      
        'insert into lifetips values(59,'#39#1581#1602#1610#1602#1578' '#1576#1585#1575#1610' '#1570#1583#1605#1610#1548' '#1607#1605#1575#1606#1587#1578' '#1603#1607' '#1575#1586' '#1575#1608 +
        ' '#1610#1603' '#1570#1583#1605' '#1605#1610#8204#1587#1575#1586#1583'. '#171#1586#1605#1610#1606' '#1575#1606#1587#1575#1606#1607#1575#187#1570#1606#1578#1608#1575#1606' '#1587#1606#1578' '#1575#1711#1586#1608#1662#1585#1610#39')'
      'GO'
      'if not exists (select * from  lifetips where id=60) '
      
        'insert into lifetips values(60,'#39#1581#1602#1610#1602#1578' '#1670#1610#1586#1610' '#1606#1610#1587#1578' '#1705#1607' '#1606#1608#1588#1578#1607' '#1605#1610#8204#1588#1608#1583' ' +
        '.. '#1570#1606' '#1670#1610#1586#1610' '#1575#1587#1578' '#1705#1607' '#1587#1593#1610' '#1605#1610#8204#1588#1608#1583' '#1662#1606#1607#1575#1606' '#1576#1605#1575#1606#1583'!'#39')'
      'GO'
      'if not exists (select * from  lifetips where id=61) '
      
        'insert into lifetips values(61,'#39#1582#1583#1575#1608#1606#1583' '#1570#1586#1575#1583#1610#160#1585#1575' '#1570#1601#1585#1610#1583#160#1608' '#1576#1588#1585' '#1576#1606#1583#1711 +
        #1610' '#1585#1575'. '#171#1570#1606#1583#1585#1607' '#1588#1610#1606#1607#187#160#39')'
      'GO'
      'if not exists (select * from  lifetips where id=62) '
      
        'insert into lifetips values(62,'#39#1582#1585#1583#1605#1606#1583' '#1576#1607' '#1705#1575#1585' '#1582#1608#1610#1588' '#1578#1705#1610#1607' '#1605#1610#1705#1606#1583' '#1608' ' +
        #1606#1575#1583#1575#1606' '#1576#1607' '#1570#1585#1586#1608#1610' '#1582#1608#1610#1588' . '#171#1581#1590#1585#1578' '#1593#1604#1610' ('#1593')'#187#39')'
      'GO'
      'if not exists (select * from  lifetips where id=63) '
      
        'insert into lifetips values(63,'#39#1582#1606#1583#1607' '#1601#1585#1575#1608#1575#1606' '#1608' '#1576#1604#1606#1583' '#1608' '#1662#1610#1711#1610#1585' '#1548' '#1606#1601#1610 +
        #1585' '#1601#1585#1575' '#1585#1587#1610#1583#1606' '#1607#1606#1711#1575#1605#1607' '#1585#1606#1580' '#1608' '#1587#1582#1578#1610' '#1575#1587#1578'.'#39')'
      'GO'
      'if not exists (select * from  lifetips where id=64) '
      
        'insert into lifetips values(64,'#39#1582#1608#1576' '#1711#1608#1588' '#1705#1585#1583#1606' '#1585#1575' '#1610#1575#1583' '#1576#1711#1610#1585#1610#1605' ... '#1711 +
        #1575#1607' '#1601#1585#1589#1578#1607#1575' '#1576#1587#1610#1575#1585' '#1570#1607#1587#1578#1607' '#1583#1585' '#1605#1610' '#1586#1606#1606#1583' . "'#39')'
      'GO'
      'if not exists (select * from  lifetips where id=65) '
      
        'insert into lifetips values(65,'#39#1583#1585' '#1576#1610#1606' '#1578#1605#1575#1605#1610' '#1605#1585#1583#1605' '#1578#1606#1607#1575' '#1593#1602#1604' '#1575#1587#1578' '#1603 +
        #1607' '#1576#1607' '#1593#1583#1575#1604#1578' '#1578#1602#1587#1610#1605' '#1588#1583#1607' '#1586#1610#1585#1575' '#1607#1605#1607' '#1601#1603#1585' '#1605#1610#8204#1603#1606#1606#1583' '#1576#1607' '#1575#1606#1583#1575#1586#1607' '#1603#1575#1601#1610' '#1593#1575#1602#1604#1606#1583'.' +
        #160' '#1585#1606#1607' '#1583#1603#1575#1585#1578#39')'
      'GO'
      'if not exists (select * from  lifetips where id=66) '
      
        'insert into lifetips values(66,'#39#1583#1585' '#1580#1607#1575#1606' '#1578#1606#1607#1575' '#1583#1608' '#1711#1585#1608#1607' '#1575#1586' '#1605#1585#1583#1605' '#1607#1587#1578 +
        #1606#1583' '#1705#1607' '#1607#1585#1711#1586' '#1578#1594#1610#1610#1585' '#1606#1605#1610#8204#1610#1575#1576#1606#1583#1563' '#1576#1585#1578#1585#1610#1606' '#1582#1585#1583#1605#1606#1583#1575#1606' '#1608' '#1662#1587#1578#8204#1578#1585#1610#1606' '#1576#1610#8204#1582#1585#1583#1575#1606'.' +
        #39')'
      'GO'
      'if not exists (select * from  lifetips where id=67) '
      
        'insert into lifetips values(67,'#39#1583#1585#1608#1594' '#1605#1579#1604' '#1576#1585#1601' '#1575#1587#1578#1548' '#1607#1585' '#1670#1607' '#1570#1606#1585#1575' '#1576#1594#1604 +
        #1578#1575#1606#1610#1583' '#1576#1586#1585#1711#1578#1585' '#1605#1610' '#1588#1608#1583'. '#160'"'#39')'
      'GO'
      'if not exists (select * from  lifetips where id=68) '
      
        'insert into lifetips values(68,'#39#1583#1604' '#1576#1610' '#1583#1608#1587#1578' '#1583#1585#1582#1578' '#1576#1610' '#1579#1605#1585' '#1575#1587#1578'. '#1581#1590#1585#1578 +
        ' '#1593#1604#1610' ('#1593')'#39')'
      'GO'
      'if not exists (select * from  lifetips where id=69)'
      
        'insert into lifetips values(69,'#39#1583#1606#1610#1575' '#1585#1575' '#1606#1711#1607#8204#1583#1575#1585#1610#1583'. '#1605#1610#8204#1582#1608#1575#1607#1605' '#1662#1610#1575#1583 +
        #1607' '#1588#1608#1605'. '#171#1570#1606#1578#1608#1606#1610' '#1606#1610#1608#1604#1610#187#39')'
      'GO'
      'if not exists (select * from  lifetips where id=70)'
      
        'insert into lifetips values(70,'#39#1583#1608#1587#1578' '#1607#1585' '#1705#1587' '#1582#1585#1583' '#1608' '#1583#1575#1606#1588' '#1575#1608' '#1608' '#1583#1588#1605#1606#1588 +
        ' '#1580#1607#1604' '#1608' '#1606#1575#1583#1575#1606#1610' '#1575#1608#1587#1578'. '#1575#1605#1575#1605' '#1585#1590#1575'('#1593')'#39')'
      'GO'
      'if not exists (select * from  lifetips where id=71) '
      
        'insert into lifetips values(71,'#39#1583#1608#1587#1578#1575#1606' '#1580#1583#1610#1583' '#1662#1610#1583#1575' '#1705#1606#1610#1583' '#1575#1605#1575' '#1583#1608#1587#1578#1575#1606 +
        ' '#1602#1583#1610#1605#1610' '#1585#1575' '#1607#1605' '#1581#1601#1592' '#1705#1606#1610#1583#1548' '#1575#1610#1606#1607#1575' '#1606#1602#1585#1607' '#1608' '#1570#1606#1607#1575' '#1591#1604#1575' '#1607#1587#1578#1606#1583'. '#171#1662#1585#1605#1608#1583#1575#1576#1578#1585#1575#187 +
        #39')'
      'GO'
      'if not exists (select * from  lifetips where id=72) '
      
        'insert into lifetips values(72,'#39#1583#1608#1587#1578#1575#1606' '#1601#1585#1575#1608#1575#1606' '#1606#1588#1575#1606' '#1583#1607#1606#1583#1607' '#1705#1575#1605#1610#1575#1576#1610 +
        ' '#1583#1585' '#1586#1606#1583#1711#1610' '#1606#1610#1587#1578' '#1548' '#1576#1604#1705#1607' '#1606#1588#1575#1606' '#1606#1575#1576#1608#1583#1610' '#1586#1605#1575#1606' '#1548' '#1576#1607' '#1711#1608#1606#1607' '#1575#1610' '#1711#1587#1578#1585#1583#1607' '#1575#1587#1578'.'#39 +
        ')'
      'GO'
      'if not exists (select * from  lifetips where id=73) '
      
        'insert into lifetips values(73,'#39#1583#1608#1587#1578#1610' '#1576#1575' '#1605#1585#1583#1605' '#1610#1705' '#1606#1610#1605#1607' '#1593#1602#1604' '#1608' '#1582#1608#1576' ' +
        #1662#1585#1587#1610#1583#1606' '#1610#1705' '#1606#1610#1605#1607' '#1583#1575#1606#1588'.'#171#1585#1587#1608#1604#8204#1575#1705#1585#1605'('#1589')'#187#39')'
      'GO'
      'if not exists (select * from  lifetips where id=74) '
      
        'insert into lifetips values(74,'#39#1583#1610#1608#1575#1606#1711#1610' '#1576#1588#1585' '#1570#1606#1670#1606#1575#1606' '#1590#1585#1608#1585#1610' '#1575#1587#1578' '#1705#1607' ' +
        #1583#1610#1608#1575#1606#1607' '#1606#1576#1608#1583#1606' '#1582#1608#1583' '#1588#1705#1604' '#1583#1610#1711#1585#1610' '#1575#1586' '#1583#1610#1608#1575#1606#1711#1610' '#1575#1587#1578'. '#160#1662#1575#1587#1705#1575#1604#39')'
      'GO'
      'if not exists (select * from  lifetips where id=75) '
      
        'insert into lifetips values(75,'#39#1585#1575#1586' '#1605#1608#1602#1593' '#1583#1608#1587#1578#1610' '#1585#1575' '#1586#1605#1575#1606' '#1583#1588#1605#1606#1610' '#1575#1576#1585 +
        #1575#1586' '#1705#1585#1583#1606#1563' '#1583#1608#1585' '#1575#1586' '#1580#1608#1575#1606#1605#1585#1583#1610' '#1575#1606#1587#1575#1606#1610#1578' '#1608' '#1605#1585#1583#1575#1606#1711#1610' '#1575#1587#1578'.'#1575#1605#1575#1605' '#1580#1593#1601#1585' '#1589#1575#1583#1602'('#1593')' +
        #39')'
      'GO'
      'if not exists (select * from  lifetips where id=76) '
      
        'insert into lifetips values(76,'#39#1586#1606' '#1576#1608#1583#1606' '#1705#1575#1585' '#1576#1587#1610#1575#1585' '#1588#1575#1602#1610' '#1575#1587#1578' '#1548' '#1670#1608#1606 +
        ' '#1605#1593#1605#1608#1604#1575' '#1605#1587#1578#1604#1586#1605' '#1587#1585' '#1608' '#1705#1604#1607' '#1586#1583#1606' '#1576#1575' '#1605#1585#1583#1607#1575#1587#1578#39')'
      'GO'
      'if not exists (select * from  lifetips where id=77) '
      
        'insert into lifetips values(77,'#39#1586#1606' '#1586#1588#1578' '#1583#1585' '#1583#1606#1610#1575' '#1608#1580#1608#1583' '#1606#1583#1575#1585#1583' '#1601#1602#1591' '#1576#1585 +
        #1582#1610' '#1575#1586' '#1586#1606#1575#1606' '#1607#1587#1578#1606#1583' '#1705#1607' '#1606#1605#1610#8204#1578#1608#1575#1606#1606#1583' '#1582#1608#1583' '#1585#1575' '#1586#1610#1576#1575' '#1580#1604#1608#1607' '#1583#1607#1606#1583'.'#160#160#160' '#1576#1585#1606#1575#1585#1583' ' +
        #1588#1575#1608#39')'
      'GO'
      'if not exists (select * from  lifetips where id=78) '
      
        'insert into lifetips values(78,'#39#1586#1606#1607#1575#1610#1610' '#1705#1607' '#1576#1607' '#1583#1606#1576#1575#1604' '#1576#1585#1575#1576#1585#1610' '#1576#1575' '#1605#1585#1583 +
        #1607#1575' '#1607#1587#1578#1606#1583' '#1570#1585#1586#1608#1610' '#1576#1587#1610#1575#1585' '#1705#1608#1670#1705#1610' '#1583#1575#1585#1606#1583' ! '#1578#1610#1605#1608#1578#1610' '#1604#1610#1585#1610#39')'
      'GO'
      'if not exists (select * from  lifetips where id=79) '
      
        'insert into lifetips values(79,'#39#1586#1610#1606' '#1585#1608#1610' '#1583#1604' '#1593#1575#1588#1602' '#1575#1586' '#1593#1585#1588' '#1601#1586#1608#1606' '#1576#1575#1588#1583 +
        '.'#187' '#1605#1608#1604#1608#1610':'#39')'
      'GO'
      'if not exists (select * from  lifetips where id=80) '
      
        'insert into lifetips values(80,'#39#1587#1585#1593#1578' '#1662#1582#1588' '#1606#1711#1585#1588' '#1576#1583' '#1576#1610#1588' '#1578#1585' '#1575#1586' '#1606#1711#1585#1588' ' +
        #1582#1608#1576' '#1575#1587#1578'.'#39')'
      'GO'
      'if not exists (select * from  lifetips where id=81) '
      
        'insert into lifetips values(81,'#39#1587#1705#1608#1578' '#1580#1608#1575#1576#1610' '#1594#1610#1585#1602#1575#1576#1604' '#1662#1575#1587#1582' '#1575#1587#1578'.'#160#160#160' ' +
        #1580'. '#1705'. '#1670#1587#1578#1585#1578#1608#1606#39')'
      'GO'
      'if not exists (select * from  lifetips where id=82) '
      
        'insert into lifetips values(82,'#39#1588#1575#1583#1610#1607#1575#1610' '#1588#1605#1575' '#1607#1605#1575#1606' '#1594#1605#1607#1575#1610' '#1588#1605#1575#1587#1578' '#1705#1607' ' +
        #1606#1602#1575#1576#1588' '#1585#1575' '#1576#1585#1583#1575#1588#1578#1607' '#1575#1606#1583' . '#1608' '#1670#1575#1607#1610' '#1705#1607' '#1582#1606#1583#1607' '#1607#1575#1610#1578#1575#1606' '#1575#1586' '#1570#1606' '#1605#1610' '#1580#1608#1588#1583' '#1607#1605#1575#1606' ' +
        #1575#1587#1578' '#1705#1607' '#1575#1586' '#1575#1588#1705#1607#1575#1610#1578#1575#1606' '#1662#1585' '
      #1588#1583#1607' '#1575#1587#1578'. "'#160' '#171#1580#1576#1585#1575#1606' '#1582#1604#1610#1604' '#1580#1576#1585#1575#1606#187#39')'
      'GO'
      'if not exists (select * from  lifetips where id=83) '
      
        'insert into lifetips values(83,'#39#1588#1605#1575' '#1605#1605#1705#1606' '#1575#1587#1578' '#1576#1578#1608#1575#1606#1610#1583' '#1711#1604#1610' '#1585#1575' '#1586#1610#1585' ' +
        #1662#1575' '#1604#1711#1583#1605#1575#1604' '#1705#1606#1610#1583#1548' '#1575#1605#1575' '#1605#1581#1575#1604' '#1575#1587#1578' '#1576#1578#1608#1575#1606#1610#1583' '#1593#1591#1585' '#1570#1606#1585#1575' '#1583#1585' '#1601#1590#1575' '#1605#1581#1608' '#1587#1575#1586#1610#1583'. ' +
        #171#1608#1604#1578#1585#1563' '#1606#1608#1610#1587#1606#1583#1607' '#1601#1585#1575#1606#1587#1608#1610' '#1610#1610#1610#1610'-'
      #1610#1610#1610#1610#187#39')'
      'GO'
      'if not exists (select * from  lifetips where id=84) '
      
        'insert into lifetips values(84,'#39#1588#1608#1607#1585#1605' '#1711#1601#1578' '#1576#1607' '#1601#1590#1575#1610' '#1576#1610#1588#1578#1585#1610' '#1575#1581#1578#1610#1575#1580' ' +
        #1583#1575#1585#1583' '#1548' '#1605#1606' '#1607#1605' '#1575#1608' '#1585#1575#1576#1607' '#1576#1610#1585#1608#1606' '#1582#1575#1606#1607' '#1601#1585#1587#1578#1575#1583#1605' '#1608' '#1583#1585' '#1585#1575' '#1662#1588#1578' '#1587#1585#1588' '#1602#1601#1604' '#1705#1585#1583#1605 +
        ' "'#1585#1586' '#1570#1606#1610#39')'
      'GO'
      'if not exists (select * from  lifetips where id=85) '
      
        'insert into lifetips values(85,'#39#1588#1705#1608#1607' '#1583#1606#1610#1608#1610' '#1607#1605#1670#1608#1606' '#1583#1575#1610#1585#1607#8204#1575#1610' '#1575#1587#1578' '#1576#1585 +
        ' '#1587#1591#1581' '#1570#1576' '#1705#1607' '#1604#1581#1592#1607' '#1576#1607' '#1604#1581#1592#1607' '#1576#1607' '#1576#1586#1585#1711#1610' '#1570#1606' '#1575#1601#1586#1608#1583#1607' '#1605#1610#8204#1588#1608#1583' '#1608' '#1587#1662#1587' '#1583#1585' '#1606#1607#1575#1610#1578 +
        ' '#1576#1586#1585#1711#1610' '#1607#1610#1670' '#1605#1610#8204#8204#1588#1608#1583'. '#171
      #1608#1610#1604#1610#1575#1605' '#1588#1705#1587#1662#1610#1585#187#39')'
      'GO'
      'if not exists (select * from  lifetips where id=86) '
      
        'insert into lifetips values(86,'#39#1593#1588#1602' '#1578#1606#1607#1575' '#1576#1607' '#1670#1588#1605#1575#1606' '#1610#1705#1583#1610#1711#1585' '#1582#1610#1585#1607' '#1588#1583 +
        #1606' '#1606#1610#1587#1578#1548' '#1576#1604#1705#1607' '#1605#1578#1601#1602#1575' '#1576#1607' '#1576#1610#1585#1608#1606#1548' '#1576#1607' '#1580#1607#1578' '#1605#1593#1610#1606#1610' '#1606#1711#1575#1607' '#1705#1585#1583#1606' '#1575#1587#1578'.'#171#1583#1705#1578#1585' '#1578#1575 +
        #1605#1587'.'#1570'.'#1607#1585#1610#1587#187#39')'
      'GO'
      'if not exists (select * from  lifetips where id=87) '
      
        'insert into lifetips values(87,'#39#1593#1588#1602' '#1593#1610#1606#1705' '#1587#1576#1586#1610' '#1575#1587#1578' '#1705#1607' '#1576#1575' '#1570#1606' '#1575#1606#1587#1575#1606 +
        ' '#1705#1575#1607' '#1585#1575' '#1610#1608#1606#1580#1607' '#1605#1610#8204#1576#1610#1606#1583'.'#160' '#1605#1575#1585#1705' '#1578#1608#1575#1610#1606#39')'
      'GO'
      'if not exists (select * from  lifetips where id=88) '
      
        'insert into lifetips values(88,'#39#1601#1585#1602' '#1605#1575' '#1576#1575' '#1583#1610#1608#1575#1606#1607' '#1607#1575' '#1583#1585' '#1575#1610#1606' '#1575#1587#1578' '#1705 +
        #1607' '#1605#1575' '#1583#1585' '#1575#1705#1579#1585#1610#1578' '#1607#1587#1578#1610#1605'. '#171#1605#1610#1588#1604' '#1601#1608#1705#1608#187#39')'
      'GO'
      'if not exists (select * from  lifetips where id=89) '
      
        'insert into lifetips values(89,'#39#1601#1705#1585' '#1605#1610' '#1705#1606#1610#1583' '#1602#1576#1604' '#1575#1586' '#1575#1610#1606#1705#1607' '#1610#1705' '#1605#1585#1583' ' +
        #1575#1593#1578#1585#1575#1601' '#1705#1606#1583' '#1705#1607' '#1711#1605' '#1588#1583#1607' '#1575#1587#1578' '#1670#1606#1583' '#1585#1575#1607' '#1583#1610#1711#1585' '#1585#1575' '#1576#1575#1610#1583' '#1576#1575#1604#1575' '#1608' '#1662#1575#1610#1610#1606' '#1576#1585#1608#1583' ' +
        #1610'!'#39')'
      'GO'
      'if not exists (select * from  lifetips where id=90) '
      
        'insert into lifetips values(90,'#39#1602#1604#1576#1610' '#1583#1575#1588#1578#1607' '#1576#1575#1588' '#1705#1607' '#1607#1585#1711#1586' '#1587#1582#1578#1610' '#1587#1606#1711' ' +
        #1585#1575' '#1576#1607' '#1582#1608#1583' '#1606#1711#1610#1585#1583' '#1608' '#1575#1581#1587#1575#1587#1610' '#1583#1575#1588#1578#1607' '#1576#1575#1588' '#1705#1607' '#1607#1585#1711#1586' '#1570#1586#1575#1585' '#1583#1607#1606#1583#1607' '#1606#1576#1575#1588#1583' . "'#160 +
        #171#1670#1575#1585#1604#1586' '#1583#1610#1705#1606#1586#187#39')'
      'GO'
      'if not exists (select * from  lifetips where id=91) '
      
        'insert into lifetips values(91,'#39#1602#1607#1585#1605#1575#1606#1575#1606' '#1570#1606#1575#1606#1610' '#1607#1587#1578#1606#1583' '#1705#1607' '#1605#1610' '#1583#1575#1606#1606#1583 +
        ' '#1705#1610#1587#1578#1606#1583'.'#39')'
      'GO'
      'if not exists (select * from  lifetips where id=92) '
      
        'insert into lifetips values(92,'#39#1711#1575#1607' '#1570#1606' '#1602#1583#1585' '#1587#1585#1711#1585#1605' '#1578#1605#1610#1586' '#1705#1585#1583#1606' '#1605#1594#1575#1586#1607 +
        ' '#1605#1610' '#1588#1608#1610#1605' '#1705#1607' '#1601#1585#1575#1605#1608#1588' '#1605#1610' '#1705#1606#1610#1605' '#1583#1585' '#1585#1575' '#1576#1607' '#1585#1608#1610' '#1605#1588#1578#1585#1610#1575#1606' '#1576#1575#1586' '#1705#1606#1610#1605'.'#39')'
      'GO'
      'if not exists (select * from  lifetips where id=93) '
      
        'insert into lifetips values(93,'#39#1711#1575#1607#1610' '#1578#1606#1607#1575' '#1585#1575#1607' '#1583#1585#1605#1575#1606' '#1585#1608#1575#1606#1607#1575#1610' '#1662#1585#1610#1588 +
        #1575#1606' '#1548' '#1601#1585#1575#1605#1608#1588#1610' '#1575#1587#1578'.'#39')'
      'GO'
      'if not exists (select * from  lifetips where id=94) '
      
        'insert into lifetips values(94,'#39#1711#1601#1578#1711#1608' '#1576#1575' '#1570#1583#1605#1610#1575#1606' '#1578#1585#1587#1608' '#1548' '#1582#1608#1575#1585#1610' '#1576#1583#1606 +
        #1576#1575#1604' '#1583#1575#1585#1583'.'#39')'
      'GO'
      'if not exists (select * from  lifetips where id=95) '
      
        'insert into lifetips values(95,'#39#1604#1581#1592#1575#1578' '#1585#1575' '#1711#1584#1585#1575#1606#1583#1610#1605' '#1578#1575' '#1576#1607' '#1582#1608#1588#1576#1582#1578#1610' ' +
        #1576#1585#1587#1610#1605' '#1575#1605#1575' '#1583#1585#1610#1594' '#1575#1586' '#1570#1606#1705#1607' '#1604#1581#1592#1575#1578#1610' '#1585#1575' '#1705#1607' '#1711#1584#1585#1575#1606#1583#1610#1605' '#1607#1605#1575#1606' '#1604#1581#1592#1575#1578' '#1582#1608#1588#1576#1582#1578#1610' ' +
        #1576#1608#1583'. '#1575#1601#1604#1575#1591#1608#1606#39')'
      'GO'
      'if not exists (select * from  lifetips where id=96) '
      'insert into lifetips values(96,'#39#1605#1575#1583#1585' '#1588#1575#1607#1705#1575#1585' '#1591#1576#1610#1593#1578' '#1575#1587#1578'. '#171#1711#1608#1578#1607#187#39')'
      'GO'
      'if not exists (select * from  lifetips where id=97)'
      
        'insert into lifetips values(97,'#39#1605#1583#1578#1607#1575' '#1662#1610#1588' '#1570#1605#1608#1582#1578#1605' '#1705#1607' '#1606#1576#1575#1610#1583' '#1576#1575' '#1582#1608#1705 +
        ' '#1705#1588#1578#1610' '#1711#1585#1601#1578#1548' '#1582#1610#1604#1610' '#1705#1579#1610#1601' '#1605#1610#8204#8204#1588#1608#1610' '#1608' '#1605#1607#1605#8204#1578#1585' '#1570#1606#1705#1607' '#1582#1608#1705' '#1575#1585' '#1575#1610#1606' '#1705#1575#1585' '#1604#1584#1578' '#1605 +
        #1610#8204#1576#1585#1583'.'#39')'
      'GO'
      'if not exists (select * from  lifetips where id=98)'
      
        'insert into lifetips values(98,'#39#1605#1585#1575#1602#1576' '#1576#1575#1588#1610#1583' '#1670#1610#1586#1607#1575#1610#1610' '#1585#1575' '#1705#1607' '#1583#1608#1587#1578' '#1583 +
        #1575#1585#1610#1583' '#1576#1583#1587#1578#8204#1570#1608#1585#1610#1583' '#1608#1711#1585#1606#1607' '#1606#1575#1670#1575#1585#1582#1608#1575#1607#1610#1583' '#1576#1608#1583' '#1670#1610#1586#1607#1575#1610#1610' '#1585#1575' '#1705#1607' '#1576#1583#1587#1578' '#1570#1608#1585#1583#1607#8204#1575 +
        #1610#1583' '#1583#1608#1587#1578' '#1583#1575#1588#1578#1607#8204#1576#1575#1588#1610#1583#160' '#1580#1585#1580' '#1576#1585#1606#1575#1585#1583' '
      #1588#1575#1608#39')'
      'GO'
      'if not exists (select * from  lifetips where id=99) '
      
        'insert into lifetips values(99,'#39#1605#1585#1583#1605#1575#1606' '#1578#1608#1575#1606#1605#1606#1583' '#1583#1585' '#1582#1608#1575#1576' '#1606#1610#1586' '#1548' '#1585#1607#1587 +
        #1662#1575#1585' '#1580#1575#1583#1607' '#1662#1610#1588#1585#1601#1578#1606#1583' .'#39')'
      'GO'
      'if not exists (select * from  lifetips where id=100) '
      
        'insert into lifetips values(100,'#39#1605#1585#1583#1607#1575' '#1575#1586' '#1589#1601#1578' '#1580#1608#1575#1606' '#1576#1585#1575#1610' '#1586#1606#1607#1575#1610' '#1586#1610 +
        #1585' 18 '#1587#1575#1604' '#1608' '#1605#1585#1583#1607#1575#1610' '#1586#1610#1585' 80 '#1587#1575#1604' '#1575#1587#1578#1601#1575#1583#1607' '#1605#1610' '#1705#1606#1606#1583' !!! "'#1606#1575#1606#1587#1610' '#1604#1610#1606' '#1583#1586#1605#1608 +
        #1606#1583#39')'
      'GO'
      'if not exists (select * from  lifetips where id=101) '
      
        'insert into lifetips values(101,'#39#1605#1585#1583#1607#1575' '#1583#1575#1585#1575#1610' '#1602#1608#1607' '#1610' '#1576#1610#1606#1575#1610#1610' '#1607#1587#1578#1606#1583' ' +
        #1608#1604#1610' '#1586#1606#1607#1575' '#1575#1586' '#1576#1610#1606#1588' '#1576#1585#1582#1608#1585#1583#1575#1585#1606#1583' . '#1608#1610#1705#1578#1608#1585' '#1607#1608#1711#1608#39')'
      'GO'
      'if not exists (select * from  lifetips where id=102) '
      
        'insert into lifetips values(102,'#39#1605#1585#1583#1607#1575' '#1585#1575' '#1588#1580#1575#1593#1578' '#1576#1607' '#1580#1604#1608' '#1605#1610#8204#1585#1575#1606#1583' '#1608 +
        ' '#1586#1606#1607#1575' '#1585#1575' '#1581#1587#1575#1583#1578'. '#1576#1585#1606#1575#1585#1583' '#1588#1575#1608#39')'
      'GO'
      'if not exists (select * from  lifetips where id=103) '
      
        'insert into lifetips values(103,'#39#1605#1606' '#1587#1578#1575#1610#1588#1711#1585' '#1605#1593#1604#1605#1610' '#1607#1587#1578#1605' '#1705#1607' '#1575#1606#1583#1610#1588#1610 +
        #1583#1606' '#1585#1575' '#1576#1607' '#1605#1606' '#1576#1610#1575#1605#1608#1586#1583' '#1606#1607' '#1575#1606#1583#1610#1588#1607' '#1607#1575' '#1585#1575'. '#171#1575#1587#1578#1575#1583' '#1605#1591#1607#1585#1610#187#39')'
      'GO'
      'if not exists (select * from  lifetips where id=104) '
      
        'insert into lifetips values(104,'#39#1606#1582#1587#1578#1610#1606' '#1606#1588#1575#1606#1607' '#1601#1587#1575#1583' '#1578#1585#1705' '#1589#1583#1575#1602#1578' '#1575#1587#1578 +
        '. '#171#1605#1610#1588#1604' '#1583#1608' '#1605#1608#1606#1578#1610#187#39')'
      'GO'
      'if not exists (select * from  lifetips where id=105) '
      
        'insert into lifetips values(105,'#39#1606#1602#1610#1590' '#1610#1705' '#1602#1590#1610#1607' '#1589#1575#1583#1602' '#1610#1705' '#1602#1590#1610#1607' '#1705#1575#1584#1576' ' +
        #1575#1587#1578#1548' '#1575#1605#1575' '#1606#1602#1610#1590' '#1610#1705' '#1581#1602#1610#1602#1578' '#1688#1585#1601' '#1711#1575#1607#1610' '#1581#1602#1610#1602#1578' '#1688#1585#1601' '#1583#1610#1711#1585#1610' '#1575#1587#1578'. '#171#1606#1610#1604#1587' '#1576#1608#1585#187#39 +
        ')'
      'GO'
      'if not exists (select * from  lifetips where id=106) '
      
        'insert into lifetips values(106,'#39#1606#1711#1575#1607' '#1605#1575' '#1576#1607' '#1586#1606#1583#1711#1610' '#1608' '#1705#1585#1583#1575#1585' '#1605#1575' '#1578#1593#1610 +
        #1610#1606' '#1705#1606#1606#1583#1607' '#1610' '#1581#1608#1575#1583#1579#1610' '#1575#1587#1578' '#1705#1607' '#1576#1585' '#1605#1575' '#1605#1610' '#1711#1584#1585#1583'.'#39')'
      'GO'
      'if not exists (select * from  lifetips where id=107) '
      'insert into lifetips values(107,'#39#1606#1711#1585#1588' '#1607#1575' '#1608#1575#1711#1610#1585#1583#1575#1585' '#1607#1587#1578#1606#1583'.'#39')'
      'GO'
      'if not exists (select * from  lifetips where id=108) '
      
        'insert into lifetips values(108,'#39#1606#1605#1610#8204#1578#1608#1575#1606#1610#1605' '#1705#1575#1585#1610' '#1705#1606#1610#1605' '#1705#1607' '#1605#1585#1594#1575#1606' '#1594 +
        #1605' '#1576#1575#1604#1575#1610' '#1587#1585' '#1605#1575' '#1662#1585#1608#1575#1586' '#1606#1705#1606#1606#1583' '#1575#1605#1575' '#1605#1610#8204#1578#1608#1575#1606#1610#1605' '#1606#1711#1584#1575#1585#1610#1605' '#1705#1607' '#1585#1608#1610' '#1587#1585' '#1605#1575' '#1570#1588#1610 +
        #1575#1606#1607' '#1576#1587#1575#1586#1606#1583'. '#171#1590#1585#1576#8204#1575#1604#1605#1579#1604' '#1670#1610#1606#1610#187#39')'
      'GO'
      'if not exists (select * from  lifetips where id=109) '
      
        'insert into lifetips values(109,'#39#1606#1607' '#1575#1586' '#1582#1608#1583#1578' '#1578#1593#1585#1610#1601' '#1705#1606' '#1608' '#1606#1607' '#1576#1583#1711#1608#1610#1610 +
        '. '#1575#1711#1585' '#1575#1586' '#1582#1608#1583#1578' '#1578#1593#1585#1610#1601' '#1705#1606#1610' '#1602#1576#1608#1604' '#1606#1605#1610#8204#1705#1606#1606#1583' '#1608' '#1575#1711#1585' '#1576#1583#1711#1608#1610#1610' '#1705#1606#1610' '#1576#1610#1588' '#1575#1586' '#1570#1606 +
        #1670#1607' '#1575#1592#1607#1575#1585' '#1583#1575#1588#1578#1610' '#1578#1608' '#1585#1575' '#1576#1583' '#1582#1608#1575#1607#1606#1583' '
      #1662#1606#1583#1575#1588#1578'. '#160' '#1705#1606#1601#1608#1587#1610#1608#1587#39')'
      'GO'
      'if not exists (select * from  lifetips where id=110) '
      
        'insert into lifetips values(110,'#39#1607#1585' '#1670#1607' '#1605#1608#1575#1606#1593' '#1580#1583#1610' '#1578#1585' '#1608' '#1587#1582#1578' '#1578#1585' '#1576#1575#1588 +
        #1583' , '#1604#1584#1578' '#1578#1604#1575#1588' '#1608' '#1662#1610#1585#1608#1586#1610' '#1576#1610#1588#1578#1585' '#1575#1587#1578' . '#171#1575#1585#1610#1603' '#1576#1575#1578#1585#1608#1608#1585#1578#187#39')'
      'GO'
      'if not exists (select * from  lifetips where id=111) '
      
        'insert into lifetips values(111,'#39#1607#1585#1711#1586' '#1583#1585' '#1605#1610#1575#1606' '#1605#1608#1580#1608#1583#1575#1578' '#1605#1582#1604#1608#1602#1610' '#1603#1607' ' +
        #1576#1585#1575#1610' '#1603#1576#1608#1578#1585' '#1588#1583#1606' '#1570#1601#1585#1610#1583#1607' '#1588#1583#1607' '#1603#1585#1603#1587' '#1606#1605#1610#1588#1608#1583'. '#1575#1610#1606' '#1582#1589#1604#1578' '#1583#1585' '#1605#1610#1575#1606' '#1607#1610#1670' '#1610#1603' '#1575 +
        #1586' '#1605#1582#1604#1608#1602#1575#1578' '#1606#1610#1587#1578' '#1580#1586' '
      #1570#1583#1605#1610#1575#1606'. '#171#1608#1610#1603#1578#1608#1585#1607#1608#1711#1608#1563' '#1576#1610#1606#1608#1575#1610#1575#1606#187#39')'
      'GO'
      'if not exists (select * from  lifetips where id=112) '
      
        'insert into lifetips values(112,'#39#1607#1585#1711#1586' '#1605#1585#1583#1610' '#1608#1604#1608' '#1576#1587#1610#1575#1585' '#1606#1575#1583#1575#1606' '#1585#1575' '#1606#1583 +
        #1610#1583#1605' '#1705#1607' '#1575#1586' '#1608#1610' '#1670#1610#1586#1610' '#1606#1578#1608#1575#1606#1587#1578#1607#8204#1575#1605' '#1576#1610#1575#1605#1608#1586#1605'.'#160' '#1711#1575#1604#1610#1604#1607#39')'
      'GO'
      'if not exists (select * from  lifetips where id=113) '
      
        'insert into lifetips values(113,'#39#1607#1605' '#1585#1606#1711' '#1583#1610#1711#1585' '#1705#1587#1575#1606' '#1588#1583#1606' '#1548' '#1576#1575#1608#1585' '#1607#1610#1670 +
        ' '#1705#1583#1575#1605' '#1575#1586' '#1576#1586#1585#1711#1575#1606' '#1606#1576#1608#1583#1607' '#1575#1587#1578' .'#39')'
      'GO'
      'if not exists (select * from  lifetips where id=114) '
      
        'insert into lifetips values(114,'#39#1607#1605#1607' '#1605#1585#1583#1605' '#1585#1575' '#171#1576#1593#1590#1610' '#1605#1608#1575#1602#1593#187' '#1605#1610#8204#1578#1608#1575 +
        #1606' '#1601#1585#1610#1601#1578' '#1608' '#1576#1593#1590#1610' '#1575#1586' '#1605#1585#1583#1605' '#1585#1575' '#1576#1585#1575#1610' '#171#1607#1605#1607' '#1593#1605#1585#187'. '#1604#1610#1705#1606' '#1606#1605#1610#1578#1608#1575#1606' '#1607#1605#1607' '#1605#1585#1583#1605' ' +
        #1585#1575' '#1576#1585#1575#1610' '#1607#1605#1607' '#1593#1605#1585' '#1601#1585#1610#1576' '#1583#1575#1583'.'#39')'
      'GO'
      'if not exists (select * from  lifetips where id=115) '
      
        'insert into lifetips values(115,'#39#1607#1605#1610#1588#1607' '#1583#1585'  '#1586#1606#1583#1711#1610' '#1575#1578' '#1607#1583#1601' '#1608' '#1576#1585#1606#1575#1605#1607 +
        ' '#1585#1610#1586#1610' '#1583#1575#1588#1578#1607' '#1576#1575#1588'. '#1575#1601#1604#1575#1591#1608#1606#39')'
      'GO'
      'if not exists (select * from  lifetips where id=116) '
      
        'insert into lifetips values(116,'#39#1607#1610#1670' '#1670#1610#1586' '#1576#1607#1578#1585' '#1575#1586' '#1705#1575#1585' '#1705#1585#1583#1606' '#1576#1580#1575#1610' '#1594 +
        #1589#1607' '#1582#1608#1585#1583#1606#1548' '#1570#1583#1605#1610' '#1585#1575' '#1576#1607' '#1582#1608#1588#1576#1582#1578#1610' '#1606#1586#1583#1610#1705' '#1606#1605#1610#8204#1587#1575#1586#1583'. '#171#1605#1608#1585#1610#1587' '#1605#1578#1585#1604#1610#1606#1711#187#39')'
      'GO'
      'if not exists (select * from  lifetips where id=117) '
      
        'insert into lifetips values(117,'#39#1607#1610#1670' '#1588#1593#1585#1610' '#1588#1575#1593#1585' '#1606#1583#1575#1585#1583#1548' '#1607#1585' '#1582#1608#1575#1606#1606#1583#1607 +
        #8204#1610' '#1588#1593#1585#1610' '#1588#1575#1593#1585' '#1570#1606' '#1604#1581#1592#1607#8204#1610' '#1588#1593#1585' '#1575#1587#1578'.'#160' '#160#1662#1575#1576#1604#1608' '#1606#1585#1608#1583#1575#39')'
      'GO'
      'if not exists (select * from  lifetips where id=118) '
      
        'insert into lifetips values(118,'#39#1607#1610#1670#1608#1602#1578' '#1576#1575' '#1570#1583#1605#1607#1575#1610' '#1576#1583' '#1608' '#1605#1606#1601#1610' '#1607#1605#1589#1581 +
        #1576#1578' '#1606#1576#1575#1588' '#1608' '#1576#1575' '#1575#1608#1606#1607#1575' '#1585#1575#1576#1591#1607' '#1606#1583#1575#1588#1578#1607' '#1576#1575#1588'. '#1575#1711#1607' '#1578#1608' '#1582#1608#1576#1610' '#1578#1608' '#1585#1575' '#1576#1607' '#1585#1575#1607' '#1576#1583 +
        ' '#1605#1610#1705#1588#1606#1583'.'#39')'
      'GO'
      'if not exists (select * from  lifetips where id=119) '
      
        'insert into lifetips values(119,'#39#1607#1610#1670#1608#1602#1578' '#1606#1605#1610#8204#1578#1608#1575#1606#1610#1583' '#1576#1575' '#1605#1588#1578' '#1711#1585#1607#8204#1705#1585 +
        #1583#1607' '#1583#1587#1578' '#1705#1587#1610' '#1585#1575' '#1576#1607' '#1711#1585#1605#1610' '#1576#1601#1588#1575#1585#1610#1583'.'#160' '#1711#1575#1606#1583#1610#39')'
      'GO'
      'if not exists (select * from  lifetips where id=120) '
      
        'insert into lifetips values(120,'#39#1608#1580#1583#1575#1606' '#1589#1583#1575#1610' '#1582#1583#1575#1608#1606#1583#1610' '#1575#1587#1578'. '#171#1604#1575#1605#1575#1585#1578 +
        #1610#1606#187#39')'
      'GO'
      'if not exists (select * from  lifetips where id=121) '
      
        'insert into lifetips values(121,'#39#1608#1592#1610#1601#1607' '#1576#1575#1593#1579' '#1605#1610#8204#1588#1608#1583' '#1578#1575' '#1705#1575#1585#1607#1575' '#1585#1575' '#1576 +
        #1607#8204#1582#1608#1576#1610' '#1575#1606#1580#1575#1605' '#1583#1607#1610#1548' '#1575#1605#1575' '#1593#1588#1602' '#1705#1605#1705' '#1605#1610#8204#1705#1606#1583' '#1578#1575' '#1570#1606#8204#1607#1575' '#1585#1575' '#1586#1610#1576#1575' '#1575#1606#1580#1575#1605' '#1583#1607#1610'.' +
        ' '#171#1590#1585#1576' '#1575#1604#1605#1579#1604' '#1705#1608#1576#1575#1610#1610#187#39')'
      'GO'
      'if not exists (select * from  lifetips where id=122) '
      
        'insert into lifetips values(122,'#39#1608#1602#1578#1610' '#1575#1606#1587#1575#1606' '#1583#1608#1587#1578' '#1608#1575#1602#1593#1610' '#1583#1575#1585#1583' '#1603#1607' '#1582 +
        #1608#1583#1588' '#1607#1605' '#1583#1608#1587#1578' '#1608#1575#1602#1593#1610' '#1576#1575#1588#1583'. '#171#1575#1605#1585#1587#1608#1606#187#39')'
      'GO'
      'if not exists (select * from  lifetips where id=123) '
      
        'insert into lifetips values(123,'#39#1608#1602#1578#1610' '#1580#1608#1575#1606#1578#1585' '#1576#1608#1583#1605' '#1607#1605#1607' '#1670#1610#1586' '#1585#1575' '#1576#1607' ' +
        #1582#1575#1591#1585' '#1605#1610#8204#1570#1608#1585#1583#1605#1548' '#1581#1575#1604#1575' '#1605#1610#8204#1582#1608#1575#1587#1578' '#1575#1578#1601#1575#1602' '#1575#1601#1578#1575#1583#1607' '#1576#1575#1588#1583' '#1610#1575' '#1606#1607'!'#171' '#1605#1575#1585#1705' '#1578#1608#1575#1610 +
        #1606#187#39')'
      'GO'
      'if not exists (select * from  lifetips where id=124) '
      
        'insert into lifetips values(124,'#39#1608#1602#1578#1610' '#1603#1576#1608#1578#1585#1610' '#1588#1585#1608#1593' '#1576#1607' '#1605#1593#1575#1588#1585#1578' '#1576#1575' '#1603 +
        #1604#1575#1594#1607#1575' '#1605#1610#1603#1606#1583' '#1662#1585#1607#1575#1610#1588' '#1587#1601#1610#1583' '#1605#1610#1605#1575#1606#1583#1548' '#1608#1604#1610' '#1602#1604#1576#1588' '#1587#1610#1575#1607' '#1605#1610#1588#1608#1583'. '#171#1605#1575#1585#1603' '#1578#1608#1575#1610#1606 +
        #187#39')'
      'GO'
      'if not exists (select * from  lifetips where id=125)'
      
        'insert into lifetips values(125,'#39#1608#1602#1578#1610' '#1606#1607#1575#1604' '#1570#1586#1575#1583#1610' '#1585#1610#1588#1607' '#1711#1585#1601#1578' '#1576#1607' '#1587#1585 +
        #1593#1578' '#1585#1588#1583' '#1608#1606#1605#1608' '#1605#1610#8204#1705#1606#1583'. '#171#1580#1608#1585#1580' '#1608#1575#1588#1606#1711#1578#1606#187#39')'
      'GO'
      'if not exists (select * from  lifetips where id=126)'
      
        'insert into lifetips values(126,'#39#1608#1602#1578#1610' '#1607#1605#1607' '#1576#1575' '#1605#1606' '#1607#1605#8204#1593#1602#1610#1583#1607' '#1605#1610#8204#8204#1588#1608#1606 +
        #1583' '#1578#1575#1586#1607' '#1575#1581#1587#1575#1587' '#1605#1610#8204#1705#1606#1605' '#1705#1607' '#1575#1588#1578#1576#1575#1607' '#1705#1585#1583#1607#8204#1575#1605'. '#171#1575#1587#1705#1575#1585' '#1608#1575#1610#1604#1583#187#39')'
      'GO'
      'if not exists (select * from  lifetips where id=127) '
      
        'insert into lifetips values(127,'#39#1610'.'#1582#1575#1606#1607' '#1576#1583#1608#1606' '#1586#1606' '#1593#1601#1610#1601#1548' '#1711#1608#1585#1587#1578#1575#1606' '#1575#1587 +
        #1578'. '#171#1576#1575#1604#1586#1575#1603#187#39')'
      'GO'
      'if not exists (select * from  lifetips where id=128) '
      
        'insert into lifetips values(128,'#39#1610#1575' '#1670#1606#1575#1606' '#1606#1605#1575#1610' '#1705#1607' '#1607#1587#1578#1610#1548' '#1610#1575' '#1670#1606#1575#1606' '#1576 +
        #1575#1588' '#1705#1607' '#1605#1610#8204#1606#1605#1575#1610#1610#160#171#1576#1575#1610#1586#1610#1583' '#1576#1587#1591#1575#1605#1610#187#39')'
      'GO'
      'if not exists (select * from  lifetips where id=129) '
      
        'insert into lifetips values(129,'#39#1705#1575#1585#1575#1610#1610' '#1575#1587#1575#1587' '#1576#1602#1575' '#1575#1587#1578'. '#1575#1579#1585#1576#1582#1588#1610' '#1575#1587 +
        #1575#1587' '#1605#1608#1601#1602#1610#1578' '#1575#1587#1578'.'#39')'
      'GO'
      'if not exists (select * from  lifetips where id=130) '
      
        'insert into lifetips values(130,'#39#1705#1575#1585#1605#1606#1583#1575#1606' '#1606#1575#1576#1705#1575#1585' '#1548' '#1575#1586' '#1583#1586#1583#1575#1606' '#1608' '#1570#1588 +
        #1608#1576#1711#1585#1575#1606' '#1576#1610#1588#1578#1585' '#1576#1607' '#1705#1588#1608#1585' '#1570#1587#1610#1576' '#1605#1610' '#1585#1587#1575#1606#1606#1583'.'#39')'
      'GO'
      'if not exists (select * from  lifetips where id=131) '
      
        'insert into lifetips values(131,'#39#1705#1587#1610' '#1705#1607' '#1576#1607' '#1605#1606' '#1575#1593#1578#1605#1575#1583' '#1605#1610' '#1705#1606#1583#1548' '#1575#1586' ' +
        #1705#1587#1610' '#1603#1607' '#1605#1585#1575' '#1583#1608#1587#1578' '#1583#1575#1585#1583' '#1711#1575#1605#1610' '#1601#1585#1575#1578#1585' '#1606#1607#1575#1583#1607' '#1575#1587#1578'.'#39')'
      'GO'
      'if not exists (select * from  lifetips where id=132) '
      
        'insert into lifetips values(132,'#39#1705#1587#1610' '#1705#1607' '#1586#1610#1575#1583' '#1581#1586#1601' '#1605#1610#8204#1586#1606#1583#1548#160#1610#1575' '#1586#1610#1575#1583 +
        ' '#1605#1610#8204#1583#1575#1606#1583' '#1610#1575' '#1586#1610#1575#1583' '#1583#1585#1608#1594' '#1605#1610#8204#1711#1608#1610#1583'.'#39')'
      'GO'
      'if not exists (select * from  lifetips where id=133) '
      
        'insert into lifetips values(133,'#39#1705#1587#1610' '#1705#1607' '#1605#1610#8204#1582#1608#1575#1607#1583' '#1585#1575#1586#1610' '#1585#1575' '#1581#1601#1592' '#1705#1606#1583 +
        ' '#1576#1575#1610#1583' '#1575#1610#1606' '#1608#1575#1602#1593#1610#1578' '#1585#1575' '#1705#1607' '#1585#1575#1586#1610' '#1583#1575#1585#1583#1548' '#1705#1578#1605#1575#1606' '#1705#1606#1583'.'#160' '#160#1711#1608#1578#1607#39')'
      'GO'
      'if not exists (select * from  lifetips where id=134) '
      
        'insert into lifetips values(134,'#39#1705#1587#1610#8204#1705#1607' '#1581#1601#1592' '#1580#1575#1606' '#1585#1575' '#1605#1602#1583#1605' '#1576#1585' '#1570#1586#1575#1583#1610 +
        ' '#1576#1583#1575#1606#1583#1548' '#1604#1610#1575#1602#1578' '#1570#1586#1575#1583#1610' '#1585#1575' '#1606#1583#1575#1585#1583'. '#171#1576#1606#1580#1575#1605#1610#1606' '#1601#1585#1575#1606#1705#1604#1610#1606#187#39')'
      'GO'
      'if not exists (select * from  lifetips where id=135) '
      
        'insert into lifetips values(135,'#39#1670#1606#1575#1606' '#1606#1610#1587#1578' '#1705#1607' '#1607#1585' '#1711#1585#1601#1578#1575#1585' '#1576#1607' '#1576#1604#1575#1610#1610 +
        ' '#1602#1575#1576#1604' '#1605#1604#1575#1605#1578' '#1576#1575#1588#1583'.      '#1581#1590#1585#1578' '#1593#1604#1610' ('#1593')'#39')'
      'GO'
      'if not exists (select * from  lifetips where id=136) '
      
        'insert into lifetips values(136,'#39#1575#1605#1608#1585' '#1670#1606#1575#1606' '#1578#1587#1604#1610#1605' '#1605#1602#1583#1585#1575#1578' '#1607#1587#1578#1606#1583' '#1705#1607 +
        ' '#1581#1578#1610' '#1711#1575#1607#1610' '#1578#1583#1576#1610#1585' '#1605#1608#1580#1576' '#1605#1585#1711' '#1605#1610' '#1588#1608#1583'.      .'#1581#1590#1585#1578' '#1593#1604#1610' ('#1593')'#39')'
      'GO'
      'if not exists (select * from  lifetips where id=137) '
      
        'insert into lifetips values(137,'#39#1607#1585' '#1705#1587' '#1705#1607' '#1575#1601#1587#1575#1585#1588' '#1585#1575' '#1576#1607' '#1570#1585#1586#1608#1610#1588' '#1576#1587 +
        #1662#1575#1585#1583' '#1548' '#1576#1607' '#1608#1587#1610#1604#1607' '#1575#1580#1604' '#1575#1586' '#1662#1575#1610' '#1583#1585' '#1605#1610' '#1570#1610#1583'.      .'#1581#1590#1585#1578' '#1593#1604#1610' ('#1593')'#39')'
      'GO'
      'if not exists (select * from  lifetips where id=138) '
      
        'insert into lifetips values(138,'#39#1607#1585#1705#1587' '#1705#1607' '#1593#1605#1604#1588' '#1575#1608#1585#1575' '#1593#1602#1576' '#1576#1610#1606#1583#1575#1586#1583' '#1606 +
        #1688#1575#1583' '#1608' '#1606#1587#1576#1588' '#1606#1605#1610' '#1578#1608#1575#1606#1583' '#1575#1608' '#1585#1575' '#1662#1610#1588' '#1576#1576#1585#1583'.      '#1581#1590#1585#1578' '#1593#1604#1610' ('#1593')'#39')'
      'GO'
      'if not exists (select * from  lifetips where id=139) '
      
        'insert into lifetips values(139,'#39#1605#1575#1583#1575#1605#1610' '#1705#1607' '#1583#1585#1583#1578' '#1576#1575' '#1578#1608' '#1605#1610' '#1587#1575#1586#1583' '#1578#1608 +
        ' '#1607#1605' '#1576#1575' '#1583#1585#1583#1578' '#1576#1587#1575#1586'.      '#1581#1590#1585#1578' '#1593#1604#1610' ('#1593')'#39')'
      'GO'
      'if not exists (select * from  lifetips where id=140) '
      
        'insert into lifetips values(140,'#39#1576#1607#1578#1585#1610#1606' '#1662#1575#1585#1587#1575#1610#1610' '#1662#1606#1607#1575#1606' '#1583#1575#1588#1578#1606' '#1662#1575#1585#1587 +
        #1575#1610#1610' '#1575#1587#1578'.      '#1581#1590#1585#1578' '#1593#1604#1610' ('#1593')'#39')'
      'GO'
      'if not exists (select * from  lifetips where id=141) '
      
        'insert into lifetips values(141,'#39#1570#1583#1605' '#1606#1610#1705#1608#1705#1575#1585' '#1575#1586' '#1582#1608#1583' '#1705#1575#1585' '#1576#1607#1578#1585' '#1608' '#1593 +
        #1575#1605#1604' '#1588#1585' '#1575#1586' '#1582#1608#1583' '#1588#1585' '#1576#1583' '#1578#1585' '#1575#1587#1578'.      '#1581#1590#1585#1578' '#1593#1604#1610' ('#1593')'#39')'
      'GO'
      'if not exists (select * from  lifetips where id=142) '
      
        'insert into lifetips values(142,'#39#1576#1578#1585#1587#1610#1583' '#1575#1586' '#1581#1605#1604#1607' '#1588#1582#1589' '#1705#1585#1610#1605' '#1605#1608#1602#1593#1610' '#1705 +
        #1607' '#1711#1585#1587#1606#1607' '#1588#1608#1583' '#1608' '#1575#1606#1587#1575#1606' '#1662#1587#1578' '#1605#1608#1602#1593#1610' '#1705#1607' '#1587#1610#1585' '#1588#1608#1583'.      .'#1581#1590#1585#1578' '#1593#1604#1610' ('#1593')'#39')'
      'GO'
      'if not exists (select * from  lifetips where id=143) '
      
        'insert into lifetips values(143,'#39#1593#1610#1576' '#1578#1608' '#1605#1575#1583#1575#1605#1610' '#1705#1607' '#1583#1606#1610#1575' '#1576#1607' '#1578#1608' '#1585#1608#1610 +
        ' '#1570#1608#1585#1583#1607' '#1575#1587#1578' '#1662#1608#1588#1610#1583#1607' '#1575#1587#1578'.      .'#1581#1590#1585#1578' '#1593#1604#1610' ('#1593')'#39')'
      'GO'
      'if not exists (select * from  lifetips where id=144) '
      
        'insert into lifetips values(144,'#39#1576#1610' '#1606#1610#1575#1586#1610' '#1583#1585' '#1594#1585#1576#1578' '#1608#1591#1606' '#1575#1587#1578' '#1608' '#1606#1610#1575#1586 +
        #1605#1606#1583#1610' '#1583#1585' '#1608#1591#1606' '#1594#1585#1576#1578'.      '#1581#1590#1585#1578' '#1593#1604#1610' ('#1593')'#39')'
      'GO'
      'if not exists (select * from  lifetips where id=145) '
      
        'insert into lifetips values(145,'#39#1586#1576#1575#1606' '#1581#1610#1608#1575#1606#1610' '#1583#1585#1606#1583#1607' '#1575#1587#1578' '#1575#1711#1585' '#1585#1607#1575' '#1588 +
        #1608#1583' '#1605#1610' '#1711#1586#1583'.      '#1581#1590#1585#1578' '#1593#1604#1610' ('#1593')'#39')'
      'GO'
      'if not exists (select * from  lifetips where id=146) '
      
        'insert into lifetips values(146,'#39#1606#1575#1583#1575#1606' '#1585#1575' '#1606#1582#1608#1575#1607#1610' '#1583#1610#1583' '#1605#1711#1585' '#1610#1575' '#1575#1601#1585#1575 +
        #1591' '#1711#1585' '#1610#1575' '#1578#1601#1585#1610' '#1711#1585'.      '#1581#1590#1585#1578' '#1593#1604#1610' ('#1593')'#39')'
      'GO'
      'if not exists (select * from  lifetips where id=147) '
      
        'insert into lifetips values(147,'#39#1607#1606#1711#1575#1605#1610' '#1705#1607' '#1593#1602#1604' '#1705#1575#1605#1604' '#1711#1588#1578' '#1587#1582#1606' '#1705#1605' '#1605 +
        #1610' '#1588#1608#1583'.      '#1581#1590#1585#1578' '#1593#1604#1610' ('#1593')'#39')'
      'GO'
      'if not exists (select * from  lifetips where id=148) '
      
        'insert into lifetips values(148,'#39#1606#1601#1587' '#1705#1588#1610#1583#1606' '#1575#1606#1587#1575#1606' '#1602#1583#1605' '#1607#1575#1610' '#1575#1608' '#1576#1607' '#1587 +
        #1608#1610' '#1605#1585#1711' '#1575#1587#1578'.      .'#1581#1590#1585#1578' '#1593#1604#1610' ('#1593')'#39')'
      'GO'
      'if not exists (select * from  lifetips where id=149) '
      
        'insert into lifetips values(149,'#39#1607#1585#1670#1610#1586#1610' '#1705#1607' '#1602#1575#1576#1604' '#1588#1605#1575#1585#1588' '#1575#1587#1578' '#1662#1575#1610#1575#1606' ' +
        #1605#1610' '#1662#1584#1610#1585#1583' '#1608' '#1607#1585' '#1570#1606#1670#1607' '#1605#1608#1585#1583' '#1575#1606#1578#1592#1575#1585' '#1575#1587#1578' '#1601#1585#1575' '#1605#1610' '#1585#1587#1583'.      '#1581#1590#1585#1578' '#1593#1604#1610' ('#1593')' +
        #39')'
      'GO'
      'if not exists (select * from  lifetips where id=150) '
      
        'insert into lifetips values(150,'#39#1575#1586' '#1583#1587#1578' '#1583#1575#1583#1606' '#1601#1585#1589#1578' '#1605#1608#1580#1576' '#1606#1583#1575#1605#1578' '#1608' '#1575 +
        #1606#1583#1608#1607' '#1575#1587#1578'.      '#1581#1590#1585#1578' '#1593#1604#1610' ('#1593')'#39')'
      'GO'
      'if not exists (select * from  lifetips where id=151) '
      
        'insert into lifetips values(151,'#39#1593#1592#1605#1578' '#1582#1575#1604#1602' '#1583#1585' '#1606#1586#1583' '#1578#1608' '#1548' '#1605#1582#1604#1608#1602#1575#1578' '#1585 +
        #1575' '#1583#1585#1670#1588#1605#1578' '#1705#1608#1670#1705' '#1605#1610' '#1705#1606#1583'.      '#1581#1590#1585#1578' '#1593#1604#1610' ('#1593')'#39')'
      'GO'
      'if not exists (select * from  lifetips where id=152) '
      
        'insert into lifetips values(152,'#39#1580#1604#1576' '#1605#1581#1576#1578' '#1606#1589#1601' '#1582#1585#1583' '#1575#1587#1578'.      '#1581#1590#1585#1578 +
        ' '#1593#1604#1610' ('#1593')'#39')'
      'GO'
      'if not exists (select * from  lifetips where id=153)'
      
        'insert into lifetips values(153,'#39#1610#1575#1585#1610' '#1582#1583#1575' '#1576#1607' '#1602#1583#1585' '#1606#1610#1575#1586' '#1606#1575#1586#1604' '#1605#1610' '#1711#1585 +
        #1583#1583'.      '#1581#1590#1585#1578' '#1593#1604#1610' ('#1593')'#39')'
      'GO'
      'if not exists (select * from  lifetips where id=154)'
      
        'insert into lifetips values(154,'#39#1583#1670#1575#1585' '#1578#1606#1711#1583#1587#1578#1610' '#1606#1588#1583' '#1607#1585#1705#1587' '#1705#1607' '#1583#1585' '#1586#1606#1583 +
        #1711#1610' '#1575#1602#1578#1589#1575#1583' '#1585#1575' '#1583#1585' '#1662#1610#1588' '#1711#1585#1601#1578'.      '#1581#1590#1585#1578' '#1593#1604#1610' ('#1593')'#39')'
      'GO'
      'if not exists (select * from  lifetips where id=155) '
      
        'insert into lifetips values(155,'#39#1594#1589#1607' '#1606#1589#1601' '#1662#1610#1585#1610' '#1575#1587#1578'.      '#1581#1590#1585#1578' '#1593#1604#1610 +
        ' ('#1593')'#39')'
      'GO'
      'if not exists (select * from  lifetips where id=156) '
      
        'insert into lifetips values(156,'#39#1705#1605#1610' '#1593#1575#1574#1604#1607' '#1610#1705#1610' '#1575#1586' '#1583#1608' '#1578#1608#1575#1606#1711#1585#1610' '#1575#1587#1578 +
        '.      '#1581#1590#1585#1578' '#1593#1604#1610' ('#1593')'#39')'
      'GO'
      'if not exists (select * from  lifetips where id=157) '
      
        'insert into lifetips values(157,'#39#1570#1583#1605#1610' '#1583#1585' '#1586#1610#1585' '#1586#1576#1575#1606#1588' '#1606#1607#1601#1578#1607' '#1575#1587#1578'.   ' +
        '   .'#1581#1590#1585#1578' '#1593#1604#1610' ('#1593')'#39')'
      'GO'
      'if not exists (select * from  lifetips where id=158) '
      
        'insert into lifetips values(158,'#39#1607#1604#1575#1705' '#1588#1583' '#1705#1587#1610' '#1705#1607' '#1575#1585#1586#1588' '#1582#1608#1583' '#1585#1575#1606#1588#1606#1575#1582 +
        #1578'.      '#1581#1590#1585#1578' '#1593#1604#1610' ('#1593')'#39')'
      'GO'
      'if not exists (select * from  lifetips where id=159) '
      
        'insert into lifetips values(159,'#39#1570#1583#1605' '#1589#1576#1608#1585' '#1662#1610#1585#1608#1586#1610' '#1585#1575' '#1575#1586' '#1583#1587#1578' '#1606#1605#1610' '#1583 +
        #1607#1583'. '#1575#1711#1585' '#1670#1607' '#1576#1607' '#1583#1585#1575#1586#1575' '#1576#1705#1588#1583'.      '#1581#1590#1585#1578' '#1593#1604#1610' ('#1593')'#39')'
      'GO'
      'if not exists (select * from  lifetips where id=160) '
      
        'insert into lifetips values(160,'#39#1607#1585#1705#1587' '#1576#1607' '#1605#1604#1705' '#1585#1587#1610#1583' '#1605#1606#1581#1589#1585#1575' '#1582#1608#1583' '#1585#1575' ' +
        #1583#1610#1583' '#1608' '#1583#1610#1711#1585#1575#1606' '#1585#1575' '#1606#1575#1583#1610#1583#1607' '#1575#1606#1711#1575#1588#1578'.      '#1581#1590#1585#1578' '#1593#1604#1610' ('#1593')'#39')'
      'GO'
      'if not exists (select * from  lifetips where id=161)'
      
        'insert into lifetips values(161,'#39#1601#1602#1585' '#1608' '#1578#1606#1711#1583#1587#1578#1610' '#1576#1586#1585#1711#1578#1585#1610#1606' '#1605#1585#1711' '#1575#1587#1578'.' +
        '      .'#1581#1590#1585#1578' '#1593#1604#1610' ('#1593')'#39')'
      'GO'
      'if not exists (select * from  lifetips where id=162)'
      
        'insert into lifetips values(162,'#39#1605#1585#1711' '#1606#1586#1583#1610#1705' '#1575#1587#1578' '#1608' '#1607#1605#1606#1588#1610#1606#1610' '#1575#1606#1583#1705'.  ' +
        '    '#1581#1590#1585#1578' '#1593#1604#1610' ('#1593')'#39')'
      'GO'
      'if not exists (select * from  lifetips where id=163)'
      
        'insert into lifetips values(163,'#39#1605#1585#1583#1605' '#1583#1588#1605#1606' '#1670#1610#1586#1610' '#1607#1587#1578#1606#1583' '#1705#1607' '#1570#1606' '#1585#1575' '#1606 +
        #1605#1610' '#1583#1575#1606#1606#1583'.      '#1581#1590#1585#1578' '#1593#1604#1610' ('#1593')'#39')'
      'GO'
      'if not exists (select * from  lifetips where id=164)'
      
        'insert into lifetips values(164,'#39#1576#1575#1605#1583#1575#1583' '#1576#1585#1575#1610' '#1570#1606#1575#1606#1610' '#1705#1607' '#1670#1588#1605' '#1576#1610#1606#1575' '#1583 +
        #1575#1585#1606#1583' '#1585#1608#1588#1606' '#1575#1587#1578'.      .'#1581#1590#1585#1578' '#1593#1604#1610' ('#1593')'#39')'
      'GO'
      'if not exists (select * from  lifetips where id=165)'
      
        'insert into lifetips values(165,'#39#1604#1580#1575#1580#1578' '#1608' '#1605#1602#1575#1608#1605#1578' '#1576#1610' '#1583#1604#1610#1604' '#1578#1583#1576#1610#1585' '#1608' ' +
        #1575#1606#1583#1610#1588#1607' '#1585#1575' '#1575#1586' '#1576#1610#1606' '#1605#1610' '#1576#1585#1583'.      '#1581#1590#1585#1578' '#1593#1604#1610' ('#1593')'#39')'
      'GO'
      'if not exists (select * from  lifetips where id=166)'
      
        'insert into lifetips values(166,'#39#1575#1610' '#1601#1585#1586#1606#1583' '#1570#1583#1605' '#1548#1570#1606#1670#1607' '#1576#1610#1588#1578#1585' '#1575#1586' '#1605#1593#1575 +
        #1588#1578' '#1575#1606#1583#1608#1582#1578#1607' '#1575#1610' '#1578#1608' '#1583#1585' '#1575#1606' '#1582#1586#1575#1606#1607' '#1583#1575#1585' '#1583#1610#1711#1585#1610' '#1607#1587#1578#1610'.      '#1581#1590#1585#1578' '#1593#1604#1610' ('#1593')'#39')'
      'GO'
      'if not exists (select * from  lifetips where id=167)'
      
        'insert into lifetips values(167,'#39#1575#1586' '#1583#1587#1578#1578' '#1606#1585#1601#1578#1607' '#1605#1575#1604#1610' '#1705#1607' '#1576#1607' '#1578#1608' '#1662#1606#1583 +
        #1610' '#1583#1575#1583#1607' '#1575#1587#1578'.      .'#1581#1590#1585#1578' '#1593#1604#1610' ('#1593')'#39')'
      'go'
      ''
      'if not exists (select * from TemplateGroup)'
      ' begin'
      
        '  insert into TemplateGroup(TemplateGroupTitle) values ('#39#1705#1604#1610#1607' '#1602#1575 +
        #1604#1576' '#1607#1575' '#39')'
      '  declare @id  int'
      '  select @id=max(TemplateGroupID) from TemplateGroup'
      
        '  update lettertemplate set TemplateGroupID=@id where TemplateGr' +
        'oupID=1'
      '  insert into UserTemplateGroup(TemplateGroupID,UserID)'
      '     select @id,id from users where'
      
        '        id not in (select userid from UserTemplateGroup where Te' +
        'mplateGroupID=@id)'
      'end'
      'Go'
      ''
      'if not exists (select *'
      'from sysindexes'
      'where name ='#39'UserShortcut_altkey_idx'#39')'
      'CREATE UNIQUE'
      
        '  INDEX [UserShortcut_altkey_idx] ON [dbo].[UserShortCut] ([User' +
        'ID], [altKey]) ON [PRIMARY]'
      'GO'
      ''
      
        'IF  EXISTS (SELECT * FROM sysobjects WHERE id = OBJECT_ID(N'#39'[dbo' +
        '].[Tr_Ins_ArchiveFolder]'#39'))'
      'DROP TRIGGER [dbo].[Tr_Ins_ArchiveFolder]'
      'GO'
      'INSERT INTO ArchiveFolder  ( ParentFolderID , Title , UserID)'
      'select 0 ,'#39#1576#1575#1610#1711#1575#1606#1610#39' ,ID'
      'from users'
      'where  ID not in (select distinct userid from ArchiveFolder)'
      'GO'
      ''
      ''
      ''
      ''
      
        'Insert into UserAccArchive(UserID,SecID,ArchiveFolderID,IsAccess' +
        ')'
      'Select US.UserID, S.SecID ,AF.FolderID,1'
      'From Secretariats S ,ArchiveFolder AF,UserSecretariats US'
      'Where(S.SecID = US.Secid) and  AF.ArchiveCenterID>0 and '
      'not Exists(Select * From UserAccArchive '
      
        'Where UserID = us.UserID And SecID =s.SecID And  ArchiveFolderID' +
        '=AF.FolderID)'
      ' '
      'GO  '
      'If Not Exists(Select * From ReceiveTypes Where(Id=7)) '
      'Insert into ReceiveTypes'
      'Values(7,'#39#1575#1610#1605#1610#1604#39')'
      'Go'
      
        'Update ArchiveFolder set ArchiveCenterID=UserID/10000 where user' +
        'id>10000 or userid=0'
      'Go'
      ''
      'DROP INDEX Actions.IX_Actions_ID'
      'GO'
      'ALTER TABLE dbo.ActionsAccess DROP CONSTRAINT PK_ActionsAccess'
      'GO'
      'alter table dbo.Actions alter column ID nvarchar(50) not null'
      'GO'
      
        'alter table dbo.ActionsAccess alter column ActionID nvarchar(50)' +
        ' not null'
      'GO'
      ''
      'Update Actions set ID = '#39'AAbout'#39' where ID = '#39'1048'#39
      ' Update Actions set ID = '#39'AActiveUser'#39' where ID = '#39'1051'#39
      ' Update Actions set ID = '#39'AAddExtention'#39' where ID = '#39'1056'#39
      ' Update Actions set ID = '#39'AaddLetterData'#39' where ID = '#39'1030'#39
      ' Update Actions set ID = '#39'AAnswer'#39' where ID = '#39'1008'#39
      ' Update Actions set ID = '#39'AARCHIVE'#39' where ID = '#39'1006'#39
      ' Update Actions set ID = '#39'AArchiveFolders'#39' where ID = '#39'1043'#39
      ' Update Actions set ID = '#39'ABackup'#39' where ID = '#39'1013'#39
      ' Update Actions set ID = '#39#39' where ID = '#39'1015'#39
      ' Update Actions set ID = '#39'AChangeColor'#39' where ID = '#39'1007'#39
      ' Update Actions set ID = '#39'AchangePassword'#39' where ID = '#39'1041'#39
      ' Update Actions set ID = '#39'Aclose'#39' where ID = '#39'1005'#39
      ' Update Actions set ID = '#39'Action1'#39' where ID in( '#39'1054'#39', '#39'5003'#39')'
      ' Update Actions set ID = '#39'Action14'#39' where ID = '#39'1055'#39
      ' Update Actions set ID = '#39'Action2'#39' where ID = '#39'1044'#39
      ' Update Actions set ID = '#39'Action3'#39' where ID = '#39'1049'#39
      ' Update Actions set ID = '#39'Action4'#39' where ID = '#39'1045'#39
      ' Update Actions set ID = '#39'ACustomizeGrid'#39' where ID = '#39'1061'#39
      ' Update Actions set ID = '#39'Adailyrep'#39' where ID = '#39'1038'#39
      ' Update Actions set ID = '#39'ADarftIns'#39' where ID = '#39'1026'#39
      ' Update Actions set ID = '#39'ADelete'#39' where ID = '#39'1078'#39
      ' Update Actions set ID = '#39'Adeleted_toLetter'#39' where ID = '#39'1012'#39
      ' Update Actions set ID = '#39'adeleteScan'#39' where ID = '#39'1058'#39
      ' Update Actions set ID = '#39'adeleteWord'#39' where ID = '#39'1052'#39
      ' Update Actions set ID = '#39'ADraftToLetter'#39' where ID = '#39'1027'#39
      ' Update Actions set ID = '#39'AEditSecs'#39' where ID = '#39'1034'#39
      ' Update Actions set ID = '#39'AErrorMsg'#39' where ID = '#39'1035'#39
      ' Update Actions set ID = '#39'AexportData'#39' where ID = '#39'1046'#39
      ' Update Actions set ID = '#39'AExpotToWord'#39' where ID = '#39'1024'#39
      ' Update Actions set ID = '#39'AfillLetterData'#39' where ID = '#39'1039'#39
      ' Update Actions set ID = '#39'Afix'#39' where ID = '#39'1004'#39
      ' Update Actions set ID = '#39'AFollow'#39' where ID = '#39'1009'#39
      ' Update Actions set ID = '#39'AFromOrganize'#39' where ID = '#39'1010'#39
      ' Update Actions set ID = '#39'AFulltext'#39' where ID = '#39'1032'#39
      ' Update Actions set ID = '#39'AinnerLetter'#39' where ID = '#39'1060'#39
      ' Update Actions set ID = '#39'AInsert'#39' where ID = '#39'5004'#39
      ' Update Actions set ID = '#39'ALetterReport'#39' where ID = '#39'1028'#39
      ' Update Actions set ID = '#39'AloadPDF'#39' where ID = '#39'1062'#39
      ' Update Actions set ID = '#39'alock'#39' where ID = '#39'1042'#39
      ' Update Actions set ID = '#39'AOtherReceivers'#39' where ID = '#39'1020'#39
      ' Update Actions set ID = '#39'Apicture'#39' where ID = '#39'1021'#39
      ' Update Actions set ID = '#39'ArecDraftIns'#39' where ID = '#39'1057'#39
      ' Update Actions set ID = '#39'Arecommite'#39' where ID = '#39'1003'#39
      ' Update Actions set ID = '#39'ARecommiteGroup'#39' where ID = '#39'1053'#39
      ' Update Actions set ID = '#39'ArestorLtterData'#39' where ID = '#39'1047'#39
      ' Update Actions set ID = '#39'AretroAction'#39' where ID = '#39'1011'#39
      ' Update Actions set ID = '#39'AsecChange'#39' where ID = '#39'1033'#39
      ' Update Actions set ID = '#39'ASendToOtherSec'#39' where ID = '#39'1059'#39
      ' Update Actions set ID = '#39'ASentense'#39' where ID = '#39'1031'#39
      ' Update Actions set ID = '#39'AshortCut'#39' where ID = '#39'1040'#39
      ' Update Actions set ID = '#39'AShrinck'#39' where ID = '#39'1014'#39
      ' Update Actions set ID = '#39'Astatistic'#39' where ID = '#39'1037'#39
      ' Update Actions set ID = '#39'ASystemSetting'#39' where ID = '#39'1036'#39
      ' Update Actions set ID = '#39'ATemplate'#39' where ID = '#39'1023'#39
      ' Update Actions set ID = '#39'ATemplateGroup'#39' where ID = '#39'1050'#39
      ' Update Actions set ID = '#39'ATExactCopy'#39' where ID = '#39'1019'#39
      ' Update Actions set ID = '#39'AUpdateFax'#39' where ID = '#39'1063'#39
      ' Update Actions set ID = '#39'AUsers'#39' where ID = '#39'1017'#39
      ' Update Actions set ID = '#39'AUserSetting'#39' where ID = '#39'1018'#39
      ' Update Actions set ID = '#39'AviewAllletter'#39' where ID = '#39'1016'#39
      ' Update Actions set ID = '#39'AWordMain'#39' where ID = '#39'1025'#39
      ' Update Actions set ID = '#39'ChangeYear'#39' where ID = '#39'1022'#39
      
        ' Update Actions set ID = '#39'DataSetCancel'#39' where ID in( '#39'2005'#39','#39'30' +
        '05'#39')'
      ' Update Actions set ID = '#39'DataSetDelete1'#39' where ID = '#39'5001'#39
      
        ' Update Actions set ID = '#39'DataSetEdit'#39' where ID in ('#39'2003'#39','#39'3003' +
        #39')'
      
        ' Update Actions set ID = '#39'DataSetInsert'#39' where ID IN ( '#39'2001'#39','#39'3' +
        '001'#39')'
      
        ' Update Actions set ID = '#39'DataSetPost'#39' where ID IN( '#39'2004'#39','#39'3004' +
        #39')'
      ' Update Actions set ID = '#39'LockOldYear'#39' where ID = '#39'2099'#39
      ' Update Actions set ID = '#39'ReceiveInsert'#39' where ID = '#39'1001'#39
      ' Update Actions set ID = '#39'SendInsert'#39' where ID = '#39'1002'#39
      'GO'
      ''
      ''
      
        'if not exists(select * from Actions where FormTag=8 and id='#39'Arec' +
        'ommite'#39')'
      
        'INSERT INTO Actions(FormTag,ID,Title) VALUES(8 ,'#39'Arecommite'#39','#39#1587#1608 +
        #1575#1576#1602' '#1575#1585#1580#1575#1593#39')'
      ''
      
        'if not exists(select * from Actions where FormTag=8 and id='#39'ACha' +
        'ngeColor'#39')'
      
        'INSERT INTO Actions(FormTag,ID,Title) VALUES(8 ,'#39'AChangeColor'#39','#39 +
        #1578#1594#1610#1610#1585' '#1592#1575#1607#1585' '#1587#1610#1587#1578#1605#39')'
      ''
      
        'if not exists(select * from Actions where FormTag=8 and id='#39'AAns' +
        'wer'#39')'
      
        'INSERT INTO Actions(FormTag,ID,Title) VALUES(8 ,'#39'AAnswer'#39','#39#1580#1608#1575#1576#39 +
        ')'
      ''
      
        'if not exists(select * from Actions where FormTag=8 and id='#39'AFol' +
        'low'#39')'
      
        'INSERT INTO Actions(FormTag,ID,Title) VALUES(8 ,'#39'AFollow'#39','#39#1662#1610#1585#1608#39 +
        ')'
      ''
      
        'if not exists(select * from Actions where FormTag=8 and id='#39'Aret' +
        'roAction'#39')'
      
        'INSERT INTO Actions(FormTag,ID,Title) VALUES(8 ,'#39'AretroAction'#39','#39 +
        #1593#1591#1601#39')'
      ''
      
        'if not exists(select * from Actions where FormTag=8 and id='#39'Avie' +
        'wAllletter'#39')'
      
        'INSERT INTO Actions(FormTag,ID,Title) VALUES(8 ,'#39'AviewAllletter'#39 +
        ','#39#1580#1586#1574#1610#1575#1578' '#1606#1575#1605#1607#39')'
      ''
      
        'if not exists(select * from Actions where FormTag=8 and id='#39'AUse' +
        'rSetting'#39')'
      
        'INSERT INTO Actions(FormTag,ID,Title) VALUES(8 ,'#39'AUserSetting'#39','#39 +
        #1578#1606#1592#1610#1605#1575#1578' '#1705#1575#1585#1576#1585#1610#39')'
      ''
      
        'if not exists(select * from Actions where FormTag=8 and id='#39'Apic' +
        'ture'#39')'
      
        'INSERT INTO Actions(FormTag,ID,Title) VALUES(8 ,'#39'Apicture'#39','#39#1578#1589#1608#1610 +
        #1585#39')'
      ''
      
        'if not exists(select * from Actions where FormTag=8 and id='#39'AEdi' +
        't'#39')'
      
        'INSERT INTO Actions(FormTag,ID,Title) VALUES(8 ,'#39'AEdit'#39','#39#1608#1610#1585#1575#1610#1588' ' +
        ' '#1606#1575#1605#1607#39')'
      ''
      
        'if not exists(select * from Actions where FormTag=8 and id='#39'Chan' +
        'geYear'#39')'
      
        'INSERT INTO Actions(FormTag,ID,Title) VALUES(8 ,'#39'ChangeYear'#39','#39#1578#1594 +
        #1610#1610#1585' '#1587#1575#1604' '#1580#1575#1585#1610#39')'
      ''
      
        'if not exists(select * from Actions where FormTag=8 and id='#39'AExp' +
        'otToWord'#39')'
      
        'INSERT INTO Actions(FormTag,ID,Title) VALUES(8 ,'#39'AExpotToWord'#39','#39 +
        #1575#1585#1587#1575#1604' '#1576#1607' Word'#39')'
      ''
      
        'if not exists(select * from Actions where FormTag=8 and id='#39'AWor' +
        'dMain'#39')'
      
        'INSERT INTO Actions(FormTag,ID,Title) VALUES(8 ,'#39'AWordMain'#39','#39#1582#1608#1575 +
        #1606#1583#1606' '#1601#1575#1610#1604' word'#39')'
      ''
      
        'if not exists(select * from Actions where FormTag=8 and id='#39'ADar' +
        'ftIns'#39')'
      
        'INSERT INTO Actions(FormTag,ID,Title) VALUES(8 ,'#39'ADarftIns'#39','#39#1579#1576#1578 +
        ' '#1662#1610#1588#1606#1608#1610#1587#39')'
      ''
      
        'if not exists(select * from Actions where FormTag=8 and id='#39'Asec' +
        'Change'#39')'
      
        'INSERT INTO Actions(FormTag,ID,Title) VALUES(8 ,'#39'AsecChange'#39','#39#1578#1594 +
        #1610#1610#1585' '#1583#1576#1610#1585#1582#1575#1606#1607' '#1580#1575#1585#1610#39')'
      ''
      
        'if not exists(select * from Actions where FormTag=8 and id='#39'ADoC' +
        'ommite'#39')'
      
        'INSERT INTO Actions(FormTag,ID,Title) VALUES(8 ,'#39'ADoCommite'#39','#39#1575#1602 +
        #1583#1575#1605' '#1608' '#1576#1575#1610#1711#1575#1606#1610#39')'
      ''
      
        'if not exists(select * from Actions where FormTag=8 and id='#39'Anew' +
        'Recommite'#39')'
      
        'INSERT INTO Actions(FormTag,ID,Title) VALUES(8 ,'#39'AnewRecommite'#39',' +
        #39#1575#1585#1580#1575#1593' '#1606#1575#1605#1607#39')'
      ''
      
        'if not exists(select * from Actions where FormTag=8 and id='#39'Asho' +
        'rtCut'#39')'
      
        'INSERT INTO Actions(FormTag,ID,Title) VALUES(8 ,'#39'AshortCut'#39','#39#1705#1604#1610 +
        #1583' '#1607#1575#1610' '#1605#1610#1575#1606#1576#1585#39')'
      ''
      
        'if not exists(select * from Actions where FormTag=8 and id='#39'Acha' +
        'ngePassword'#39')'
      
        'INSERT INTO Actions(FormTag,ID,Title) VALUES(8 ,'#39'AchangePassword' +
        #39','#39#1578#1594#1610#1610#1585' '#1603#1604#1605#1607' '#1593#1576#1608#1585#39')'
      ''
      
        'if not exists(select * from Actions where FormTag=8 and id='#39'AAct' +
        'ivate'#39')'
      
        'INSERT INTO Actions(FormTag,ID,Title) VALUES(8 ,'#39'AActivate'#39','#39#1601#1593#1575 +
        #1604' '#1603#1585#1583#1606' '#1575#1610#1606' '#1575#1585#1580#1575#1593#39')'
      ''
      
        'if not exists(select * from Actions where FormTag=8 and id='#39'AArc' +
        'hive'#39')'
      
        'INSERT INTO Actions(FormTag,ID,Title) VALUES(8 ,'#39'AArchive'#39','#39#1576#1575#1610#1711 +
        #1575#1606#1610' '#1588#1582#1589#1610#39')'
      ''
      
        'if not exists(select * from Actions where FormTag=8 and id='#39'aarc' +
        'hiveOrganize'#39')'
      
        'INSERT INTO Actions(FormTag,ID,Title) VALUES(8 ,'#39'aarchiveOrganiz' +
        'e'#39','#39#1662#1585#1608#1606#1583#1607' '#1607#1575#1610' '#1576#1575#1610#1711#1575#1606#1610#39')'
      ''
      
        'if not exists(select * from Actions where FormTag=8 and id='#39'Aswi' +
        'tchUser'#39')'
      
        'INSERT INTO Actions(FormTag,ID,Title) VALUES(8 ,'#39'AswitchUser'#39','#39#1582 +
        #1585#1608#1580' '#1575#1586' '#1606#1585#1605' '#1575#1601#1586#1575#1585' '#1608' '#1608#1585#1608#1583' '#1705#1575#1585#1576#1585' '#1583#1610#1711#1585#39')'
      ''
      
        'if not exists(select * from Actions where FormTag=8 and id='#39'Avie' +
        'wArchiveNote'#39')'
      
        'INSERT INTO Actions(FormTag,ID,Title) VALUES(8 ,'#39'AviewArchiveNot' +
        'e'#39','#39#1608#1610#1585#1575#1610#1588' '#1605#1578#1606' '#1576#1575#1610#1711#1575#1606#1610#39')'
      ''
      
        'if not exists(select * from Actions where FormTag=8 and id='#39'Anot' +
        'ePad'#39')'
      
        'INSERT INTO Actions(FormTag,ID,Title) VALUES(8 ,'#39'AnotePad'#39','#39#1610#1575#1583#1583 +
        #1575#1588#1578' '#1607#1575#39')'
      ''
      
        'if not exists(select * from Actions where FormTag=8 and id='#39'Acti' +
        'on2'#39')'
      
        'INSERT INTO Actions(FormTag,ID,Title) VALUES(8 ,'#39'Action2'#39','#39#1705#1575#1585#1576#1585 +
        #1575#1606' '#1601#1593#1575#1604' '#1583#1585' '#1588#1576#1705#1607#39')'
      ''
      
        'if not exists(select * from Actions where FormTag=8 and id='#39'Send' +
        'ToSecretariat'#39')'
      
        'INSERT INTO Actions(FormTag,ID,Title) VALUES(8 ,'#39'SendToSecretari' +
        'at'#39','#39#1575#1585#1587#1575#1604' '#1576#1585#1575#1610' '#1583#1576#1610#1585#1582#1575#1606#1607#39')'
      ''
      
        'if not exists(select * from Actions where FormTag=8 and id='#39'ALoa' +
        'dPDF'#39')'
      
        'INSERT INTO Actions(FormTag,ID,Title) VALUES(8 ,'#39'ALoadPDF'#39','#39'PDF'#39 +
        ')'
      ''
      
        'if not exists(select * from Actions where FormTag=8 and id='#39'Avie' +
        'wRecommite'#39')'
      
        'INSERT INTO Actions(FormTag,ID,Title) VALUES(8 ,'#39'AviewRecommite'#39 +
        ','#39#1605#1588#1575#1607#1583#1607' '#1575#1585#1580#1575#1593#39')'
      ''
      
        'if not exists(select * from Actions where FormTag=8 and id='#39'ACus' +
        'tomizeGrid'#39')'
      
        'INSERT INTO Actions(FormTag,ID,Title) VALUES(8 ,'#39'ACustomizeGrid'#39 +
        ','#39#1578#1606#1592#1610#1605#1575#1578' '#1587#1578#1608#1606' '#1607#1575#1610' '#1580#1583#1608#1604#39')'
      ''
      
        'if not exists(select * from Actions where FormTag=8 and id='#39'Ainn' +
        'erLetter'#39')'
      
        'INSERT INTO Actions(FormTag,ID,Title) VALUES(8 ,'#39'AinnerLetter'#39','#39 +
        #1579#1576#1578' '#1606#1575#1605#1607' '#1583#1575#1582#1604#1610#39')'
      ''
      
        'if not exists(select * from Actions where FormTag=8 and id='#39'ASen' +
        'dMessage'#39')'
      
        'INSERT INTO Actions(FormTag,ID,Title) VALUES(8 ,'#39'ASendMessage'#39','#39 +
        #1575#1585#1587#1575#1604' '#1662#1610#1594#1575#1605#39')'
      ''
      
        'if not exists(select * from Actions where FormTag=8 and id='#39'AGet' +
        'Message'#39')'
      
        'INSERT INTO Actions(FormTag,ID,Title) VALUES(8 ,'#39'AGetMessage'#39','#39#1583 +
        #1585#1610#1575#1601#1578' '#1662#1610#1575#1605#39')'
      ''
      
        'if not exists(select * from Actions where FormTag=8 and id='#39'AEdi' +
        'tSubject'#39')'
      
        'INSERT INTO Actions(FormTag,ID,Title) VALUES(8 ,'#39'AEditSubject'#39','#39 +
        #1605#1588#1582#1589#1575#1578' '#1576#1575#1610#1711#1575#1606#1610#39')'
      ''
      
        'if not exists(select * from Actions where FormTag=8 and id='#39'ABro' +
        'wsArchive'#39')'
      
        'INSERT INTO Actions(FormTag,ID,Title) VALUES(8 ,'#39'ABrowsArchive'#39',' +
        #39#1576#1585#1585#1587#1610' '#1587#1575#1576#1602#1607' '#1576#1585' '#1575#1587#1575#1587' '#1578#1608#1590#1610#1581#1575#1578#39')'
      ''
      
        'if not exists(select * from Actions where FormTag=8 and id='#39'Acti' +
        'on3'#39')'
      
        'INSERT INTO Actions(FormTag,ID,Title) VALUES(8 ,'#39'Action3'#39','#39#1581#1575#1604#1578' ' +
        #1575#1606#1578#1592#1575#1585#39')'
      ''
      
        'if not exists(select * from Actions where FormTag=8 and id='#39'Acti' +
        'on4'#39')'
      
        'INSERT INTO Actions(FormTag,ID,Title) VALUES(8 ,'#39'Action4'#39','#39#1608#1585#1608#1583' ' +
        #1705#1575#1585#1576#1585' '#1583#1610#1711#1585#39')'
      ''
      
        'if not exists(select * from Actions where FormTag=8 and id='#39'Aadd' +
        'LetterData'#39')'
      
        'INSERT INTO Actions(FormTag,ID,Title) VALUES(8 ,'#39'AaddLetterData'#39 +
        ','#39#1662#1610#1608#1587#1578' '#1607#1575#1610' '#1606#1575#1605#1607#39')'
      ''
      
        'if not exists(select * from Actions where FormTag=8 and id='#39'Adel' +
        'eteWord'#39')'
      
        'INSERT INTO Actions(FormTag,ID,Title) VALUES(8 ,'#39'AdeleteWord'#39','#39' ' +
        ' Word '#1581#1584#1601#39')'
      ''
      
        'if not exists(select * from Actions where FormTag=8 and id='#39'Lett' +
        'erFollowUp'#39')'
      
        'INSERT INTO Actions(FormTag,ID,Title) VALUES(8 ,'#39'LetterFollowUp'#39 +
        ','#39#1575#1610#1580#1575#1583' '#1586#1606#1580#1610#1585#1607' '#1662#1610#1711#1610#1585#1610' '#1606#1575#1605#1607#39')'
      ''
      
        'if not exists(select * from Actions where FormTag=8 and id='#39'Acti' +
        'on7'#39')'
      
        'INSERT INTO Actions(FormTag,ID,Title) VALUES(8 ,'#39'Action7'#39','#39#1575#1610#1580#1575#1583 +
        ' '#1662#1610#1711#1610#1585#1610#39')'
      ''
      
        'if not exists(select * from Actions where FormTag=8 and id='#39'Acti' +
        'on8'#39')'
      
        'INSERT INTO Actions(FormTag,ID,Title) VALUES(8 ,'#39'Action8'#39','#39#1606#1605#1575#1610#1588 +
        ' '#1662#1606#1580#1585#1607' '#1662#1610#1711#1610#1585#1610#39')'
      ''
      
        'if not exists(select * from Actions where FormTag=8 and id='#39'Acti' +
        'on1'#39')'
      
        'INSERT INTO Actions(FormTag,ID,Title) VALUES(8 ,'#39'Action1'#39','#39#1711#1586#1575#1585#1588 +
        ' '#1575#1586' '#1575#1602#1583#1575#1605#1575#1578' '#1608' '#1575#1585#1580#1575#1593#1575#1578#39')'
      ''
      
        'if not exists(select * from Actions where FormTag=8 and id='#39'Acti' +
        'on6'#39')'
      
        'INSERT INTO Actions(FormTag,ID,Title) VALUES(8 ,'#39'Action6'#39','#39#1570#1605#1575#1585' ' +
        #1575#1586' '#1575#1602#1583#1575#1605#1575#1578' '#1608' '#1575#1585#1580#1575#1593#1575#1578#39')'
      ''
      
        'if not exists(select * from Actions where FormTag=8 and id='#39'AAdd' +
        'AlternativeUser'#39')'
      
        'INSERT INTO Actions(FormTag,ID,Title) VALUES(8 ,'#39'AAddAlternative' +
        'User'#39','#39#1578#1593#1610#1610#1606' '#1580#1575#1606#1588#1610#1606' '#1605#1608#1602#1578#39')'
      ''
      
        'if not exists(select * from Actions where FormTag=8 and id='#39'ACha' +
        'ngeOrgID'#39')'
      
        'INSERT INTO Actions(FormTag,ID,Title) VALUES(8 ,'#39'AChangeOrgID'#39','#39 +
        #1583#1610#1583#1606' '#1705#1575#1585#1578#1575#1576#1604' '#1607#1575#1610' '#1583#1610#1711#1585#39')'
      ''
      
        'if not exists(select * from Actions where FormTag=8 and id='#39'Acti' +
        'on9'#39')'
      
        'INSERT INTO Actions(FormTag,ID,Title) VALUES(8 ,'#39'Action9'#39','#39#1584#1582#1610#1585#1607 +
        ' '#1583#1585' '#1601#1575#1610#1604#39')'
      ''
      
        'if not exists(select * from Actions where FormTag=8 and id='#39'aLoa' +
        'dFile'#39')'
      
        'INSERT INTO Actions(FormTag,ID,Title) VALUES(8 ,'#39'aLoadFile'#39','#39#1582#1608#1575 +
        #1606#1583#1606' '#1587#1585#1610#1593' '#1601#1575#1610#1604' '#1607#1575' '#39')'
      ''
      
        'if not exists(select * from Actions where FormTag=8 and id='#39'Acti' +
        'on5'#39')'
      
        'INSERT INTO Actions(FormTag,ID,Title) VALUES(8 ,'#39'Action5'#39','#39#1606#1605#1575#1610#1588 +
        ' '#1604#1610#1587#1578' '#1582#1576#1585#1607#1575#39')'
      ''
      
        'if not exists(select * from Actions where FormTag=8 and id='#39'Emai' +
        'l'#39')'
      'INSERT INTO Actions(FormTag,ID,Title) VALUES(8 ,'#39'Email'#39','#39#1575#1610#1605#1610#1604#39')'
      ''
      
        'if not exists(select * from Actions where FormTag=8 and id='#39'Act_' +
        'WorkGroup'#39')'
      
        'INSERT INTO Actions(FormTag,ID,Title) VALUES(8 ,'#39'Act_WorkGroup'#39',' +
        #39#1578#1593#1585#1610#1601' '#1711#1585#1608#1607' '#1705#1575#1585#1610#39')'
      ''
      
        'if not exists(select * from Actions where FormTag=8 and id='#39'ActP' +
        'hone'#39')'
      
        'INSERT INTO Actions(FormTag,ID,Title) VALUES(8 ,'#39'ActPhone'#39','#39#1583#1601#1578#1585 +
        #1670#1607' '#1578#1604#1601#1606#39')'
      ''
      
        'if not exists(select * from Actions where FormTag=8 and id='#39'ADra' +
        'ftToLetter'#39')'
      
        'INSERT INTO Actions(FormTag,ID,Title) VALUES(8 ,'#39'ADraftToLetter'#39 +
        ','#39#1575#1582#1578#1589#1575#1589' '#1588#1605#1575#1585#1607' '#1583#1576#1610#1585#1582#1575#1606#1607#39')'
      ''
      
        'if not exists(select * from Actions where FormTag=1 and id='#39'ALet' +
        'terChainFollow'#39')'
      
        'INSERT INTO Actions(FormTag,ID,Title) VALUES(1 ,'#39'ALetterChainFol' +
        'low'#39','#39#1575#1610#1580#1575#1583' '#1586#1606#1580#1610#1585#1607' '#1662#1610#1711#1610#1585#1610' '#1606#1575#1605#1607#39')'
      ''
      
        'if not exists(select * from Actions where FormTag=1 and id='#39'AddF' +
        'ollow'#39')'
      
        'INSERT INTO Actions(FormTag,ID,Title) VALUES(1 ,'#39'AddFollow'#39','#39#1575#1610#1580 +
        #1575#1583' '#1662#1610#1711#1610#1585#1610#39')'
      ''
      
        'if not exists(select * from Actions where FormTag=1 and id='#39'ASho' +
        'wFollow'#39')'
      
        'INSERT INTO Actions(FormTag,ID,Title) VALUES(1 ,'#39'AShowFollow'#39','#39#1606 +
        #1605#1575#1610#1588' '#1662#1606#1580#1585#1607' '#1662#1610#1711#1610#1585#1610#39')'
      ''
      
        'if not exists(select * from Actions where FormTag=1 and id='#39'Rece' +
        'iveInsert'#39')'
      
        'INSERT INTO Actions(FormTag,ID,Title) VALUES(1 ,'#39'ReceiveInsert'#39',' +
        #39#1579#1576#1578' '#1608#1575#1585#1583#1607#39')'
      ''
      
        'if not exists(select * from Actions where FormTag=1 and id='#39'Send' +
        'Insert'#39')'
      
        'INSERT INTO Actions(FormTag,ID,Title) VALUES(1 ,'#39'SendInsert'#39','#39#1579#1576 +
        #1578' '#1589#1575#1583#1585#1607#39')'
      ''
      
        'if not exists(select * from Actions where FormTag=1 and id='#39'Arec' +
        'ommite'#39')'
      
        'INSERT INTO Actions(FormTag,ID,Title) VALUES(1 ,'#39'Arecommite'#39','#39#1575#1585 +
        #1580#1575#1593#1575#1578' '#1606#1575#1605#1607#39')'
      ''
      
        'if not exists(select * from Actions where FormTag=1 and id='#39'Afix' +
        #39')'
      
        'INSERT INTO Actions(FormTag,ID,Title) VALUES(1 ,'#39'Afix'#39','#39#1608#1610#1585#1575#1610#1588' '#1608 +
        ' '#1587#1575#1586#1605#1575#1606#1583#1607#1610' '#1575#1591#1604#1575#1593#1575#1578' '#1579#1575#1576#1578#39')'
      ''
      
        'if not exists(select * from Actions where FormTag=1 and id='#39'AARC' +
        'HIVE'#39')'
      
        'INSERT INTO Actions(FormTag,ID,Title) VALUES(1 ,'#39'AARCHIVE'#39','#39#1586#1608#1606#1705 +
        #1606' '#1606#1575#1605#1607#39')'
      ''
      
        'if not exists(select * from Actions where FormTag=1 and id='#39'ACha' +
        'ngeColor'#39')'
      
        'INSERT INTO Actions(FormTag,ID,Title) VALUES(1 ,'#39'AChangeColor'#39','#39 +
        #1578#1594#1610#1610#1585' '#1592#1575#1607#1585' '#1587#1610#1587#1578#1605#39')'
      ''
      
        'if not exists(select * from Actions where FormTag=1 and id='#39'AAns' +
        'wer'#39')'
      
        'INSERT INTO Actions(FormTag,ID,Title) VALUES(1 ,'#39'AAnswer'#39','#39#1580#1608#1575#1576' ' +
        #1606#1575#1605#1607#39')'
      ''
      
        'if not exists(select * from Actions where FormTag=1 and id='#39'ASho' +
        'wFollowLetter'#39')'
      
        'INSERT INTO Actions(FormTag,ID,Title) VALUES(1 ,'#39'AShowFollowLett' +
        'er'#39','#39#1662#1610#1585#1608#39')'
      ''
      
        'if not exists(select * from Actions where FormTag=1 and id='#39'AFro' +
        'mOrganize'#39')'
      
        'INSERT INTO Actions(FormTag,ID,Title) VALUES(1 ,'#39'AFromOrganize'#39',' +
        #39#1608#1610#1585#1575#1610#1588' '#1608' '#1587#1575#1586#1605#1575#1606#1583#1607#1610' '#1670#1575#1585#1578' '#1587#1575#1586#1605#1575#1606#1610#39')'
      ''
      
        'if not exists(select * from Actions where FormTag=1 and id='#39'Aret' +
        'roAction'#39')'
      
        'INSERT INTO Actions(FormTag,ID,Title) VALUES(1 ,'#39'AretroAction'#39','#39 +
        #1593#1591#1601#39')'
      ''
      
        'if not exists(select * from Actions where FormTag=1 and id='#39'Adel' +
        'eted_toLetter'#39')'
      
        'INSERT INTO Actions(FormTag,ID,Title) VALUES(1 ,'#39'Adeleted_toLett' +
        'er'#39','#39#1576#1575#1586#1610#1575#1576#1610' '#1606#1575#1605#1607#39')'
      ''
      
        'if not exists(select * from Actions where FormTag=1 and id='#39'ABac' +
        'kup'#39')'
      
        'INSERT INTO Actions(FormTag,ID,Title) VALUES(1 ,'#39'ABackup'#39','#39#1578#1607#1610#1607' ' +
        #1601#1575#1610#1604' '#1662#1588#1578#1610#1576#1575#1606#39')'
      ''
      
        'if not exists(select * from Actions where FormTag=1 and id='#39'AShr' +
        'inck'#39')'
      
        'INSERT INTO Actions(FormTag,ID,Title) VALUES(1 ,'#39'AShrinck'#39','#39#1576#1607#1610#1606 +
        #1607' '#1587#1575#1586#1610' '#1601#1575#1610#1604#1607#1575#1610' '#1576#1575#1606#1603' '#1575#1591#1604#1575#1593#1575#1578#1610#39')'
      ''
      
        'if not exists(select * from Actions where FormTag=1 and id='#39'acce' +
        'ss'#39')'
      
        'INSERT INTO Actions(FormTag,ID,Title) VALUES(1 ,'#39'access'#39','#39#1578#1593#1585#1610#1601' ' +
        #1587#1591#1581' '#1583#1587#1578#1585#1587#1610#39')'
      ''
      
        'if not exists(select * from Actions where FormTag=1 and id='#39'Avie' +
        'wAllletter'#39')'
      
        'INSERT INTO Actions(FormTag,ID,Title) VALUES(1 ,'#39'AviewAllletter'#39 +
        ','#39#1608#1610#1585#1575#1610#1588' '#1606#1575#1605#1607#39')'
      ''
      
        'if not exists(select * from Actions where FormTag=1 and id='#39'AUse' +
        'rs'#39')'
      
        'INSERT INTO Actions(FormTag,ID,Title) VALUES(1 ,'#39'AUsers'#39','#39#1578#1593#1585#1610#1601' ' +
        #1603#1575#1585#1576#1585#39')'
      ''
      
        'if not exists(select * from Actions where FormTag=1 and id='#39'AUse' +
        'rSetting'#39')'
      
        'INSERT INTO Actions(FormTag,ID,Title) VALUES(1 ,'#39'AUserSetting'#39','#39 +
        #1578#1606#1592#1610#1605#1575#1578' '#1603#1575#1585#1576#1585#1610#39')'
      ''
      
        'if not exists(select * from Actions where FormTag=1 and id='#39'ATEx' +
        'actCopy'#39')'
      
        'INSERT INTO Actions(FormTag,ID,Title) VALUES(1 ,'#39'ATExactCopy'#39','#39#1606 +
        #1605#1575#1610#1588' '#1585#1608#1606#1608#1588#1578' '#1606#1575#1605#1607#39')'
      ''
      
        'if not exists(select * from Actions where FormTag=1 and id='#39'AOth' +
        'erReceivers'#39')'
      
        'INSERT INTO Actions(FormTag,ID,Title) VALUES(1 ,'#39'AOtherReceivers' +
        #39','#39' '#1606#1605#1575#1610#1588' '#1583#1610#1711#1585'  '#1711#1610#1585#1606#1583#1711#1575#1606#39')'
      ''
      
        'if not exists(select * from Actions where FormTag=1 and id='#39'Apic' +
        'ture'#39')'
      
        'INSERT INTO Actions(FormTag,ID,Title) VALUES(1 ,'#39'Apicture'#39','#39#1578#1589#1608#1610 +
        #1585#39')'
      ''
      
        'if not exists(select * from Actions where FormTag=1 and id='#39'Chan' +
        'geYear'#39')'
      
        'INSERT INTO Actions(FormTag,ID,Title) VALUES(1 ,'#39'ChangeYear'#39','#39#1578#1594 +
        #1610#1610#1585' '#1587#1575#1604' '#1580#1575#1585#1610#39')'
      ''
      
        'if not exists(select * from Actions where FormTag=1 and id='#39'ATem' +
        'plate'#39')'
      
        'INSERT INTO Actions(FormTag,ID,Title) VALUES(1 ,'#39'ATemplate'#39','#39#1575#1590#1575 +
        #1601#1607' '#1603#1585#1583#1606' '#1602#1575#1604#1576'  '#1607#1575#1610' '#1606#1575#1605#1607#39')'
      ''
      
        'if not exists(select * from Actions where FormTag=1 and id='#39'AExp' +
        'otToWord'#39')'
      
        'INSERT INTO Actions(FormTag,ID,Title) VALUES(1 ,'#39'AExpotToWord'#39','#39 +
        'Word'#39')'
      ''
      
        'if not exists(select * from Actions where FormTag=1 and id='#39'AWor' +
        'dMain'#39')'
      
        'INSERT INTO Actions(FormTag,ID,Title) VALUES(1 ,'#39'AWordMain'#39','#39'wor' +
        'd '#1582#1608#1575#1606#1583#1606' '#1601#1575#1610#1604' '#39')'
      ''
      
        'if not exists(select * from Actions where FormTag=1 and id='#39'ADar' +
        'ftIns'#39')'
      
        'INSERT INTO Actions(FormTag,ID,Title) VALUES(1 ,'#39'ADarftIns'#39','#39#1579#1576#1578 +
        ' '#1662#1610#1588#1606#1608#1610#1587#39')'
      ''
      
        'if not exists(select * from Actions where FormTag=1 and id='#39'ADra' +
        'ftToLetter'#39')'
      
        'INSERT INTO Actions(FormTag,ID,Title) VALUES(1 ,'#39'ADraftToLetter'#39 +
        ','#39#1575#1582#1578#1589#1575#1589' '#1588#1605#1575#1585#1607' '#1583#1576#1610#1585#1582#1575#1606#1607#39')'
      ''
      
        'if not exists(select * from Actions where FormTag=1 and id='#39'ALet' +
        'terReport'#39')'
      
        'INSERT INTO Actions(FormTag,ID,Title) VALUES(1 ,'#39'ALetterReport'#39',' +
        #39' '#1711#1586#1575#1585#1588' '#1575#1586' '#1606#1575#1605#1607' '#1607#1575#39')'
      ''
      
        'if not exists(select * from Actions where FormTag=1 and id='#39'Aadd' +
        'LetterData'#39')'
      
        'INSERT INTO Actions(FormTag,ID,Title) VALUES(1 ,'#39'AaddLetterData'#39 +
        ','#39#1662#1610#1608#1587#1578' '#1607#1575#1610' '#1606#1575#1605#1607#39')'
      ''
      
        'if not exists(select * from Actions where FormTag=1 and id='#39'AFul' +
        'ltext'#39')'
      
        'INSERT INTO Actions(FormTag,ID,Title) VALUES(1 ,'#39'AFulltext'#39','#39#1580#1587#1578 +
        #1580#1608' '#1610' '#1605#1601#1607#1608#1605#1610' '#1583#1585' '#1605#1578#1606' '#1606#1575#1605#1607' '#1607#1575#39')'
      ''
      
        'if not exists(select * from Actions where FormTag=1 and id='#39'Asec' +
        'Change'#39')'
      
        'INSERT INTO Actions(FormTag,ID,Title) VALUES(1 ,'#39'AsecChange'#39','#39#1578#1594 +
        #1610#1610#1585' '#1583#1576#1610#1585#1582#1575#1606#1607' '#1580#1575#1585#1610#39')'
      ''
      
        'if not exists(select * from Actions where FormTag=1 and id='#39'AEdi' +
        'tSecs'#39')'
      
        'INSERT INTO Actions(FormTag,ID,Title) VALUES(1 ,'#39'AEditSecs'#39','#39#1583#1576#1610 +
        #1585#1582#1575#1606#1607' '#1607#1575#1610' '#1605#1608#1580#1608#1583' '#1583#1585' '#1606#1585#1605' '#1575#1601#1586#1575#1585#39')'
      ''
      
        'if not exists(select * from Actions where FormTag=1 and id='#39'AErr' +
        'orMsg'#39')'
      
        'INSERT INTO Actions(FormTag,ID,Title) VALUES(1 ,'#39'AErrorMsg'#39','#39#1605#1583#1610 +
        #1585#1610#1578' '#1662#1610#1594#1575#1605' '#1607#1575#1610' '#1582#1591#1575#39')'
      ''
      
        'if not exists(select * from Actions where FormTag=1 and id='#39'ASys' +
        'temSetting'#39')'
      
        'INSERT INTO Actions(FormTag,ID,Title) VALUES(1 ,'#39'ASystemSetting'#39 +
        ','#39#1578#1606#1592#1610#1605#1575#1578' '#1583#1576#1610#1585#1582#1575#1606#1607#39')'
      ''
      
        'if not exists(select * from Actions where FormTag=1 and id='#39'Asta' +
        'tistic'#39')'
      
        'INSERT INTO Actions(FormTag,ID,Title) VALUES(1 ,'#39'Astatistic'#39','#39#1570#1605 +
        #1575#1585' '#1607#1575#39')'
      ''
      
        'if not exists(select * from Actions where FormTag=1 and id='#39'Adai' +
        'lyrep'#39')'
      
        'INSERT INTO Actions(FormTag,ID,Title) VALUES(1 ,'#39'Adailyrep'#39','#39#1711#1586#1575 +
        #1585#1588' '#1585#1608#1586#1575#1606#1607#39')'
      ''
      
        'if not exists(select * from Actions where FormTag=1 and id='#39'Afil' +
        'lLetterData'#39')'
      
        'INSERT INTO Actions(FormTag,ID,Title) VALUES(1 ,'#39'AfillLetterData' +
        #39','#39#1575#1582#1578#1589#1575#1589'  '#1578#1589#1608#1610#1585' '#1606#1575#1605#1607' '#1607#1575' '#1576#1607' '#1589#1608#1585#1578' '#1711#1585#1608#1607#1610#39')'
      ''
      
        'if not exists(select * from Actions where FormTag=1 and id='#39'Asho' +
        'rtCut'#39')'
      
        'INSERT INTO Actions(FormTag,ID,Title) VALUES(1 ,'#39'AshortCut'#39','#39#1705#1604#1610 +
        #1583' '#1607#1575#1610' '#1605#1610#1575#1606#1576#1585#39')'
      ''
      
        'if not exists(select * from Actions where FormTag=1 and id='#39'Acha' +
        'ngePassword'#39')'
      
        'INSERT INTO Actions(FormTag,ID,Title) VALUES(1 ,'#39'AchangePassword' +
        #39','#39#1578#1594#1610#1610#1585' '#1603#1604#1605#1607' '#1593#1576#1608#1585#39')'
      ''
      
        'if not exists(select * from Actions where FormTag=1 and id='#39'AArc' +
        'hiveFolders'#39')'
      
        'INSERT INTO Actions(FormTag,ID,Title) VALUES(1 ,'#39'AArchiveFolders' +
        #39','#39#1608#1610#1585#1575#1610#1588' '#1608' '#1587#1575#1605#1575#1606#1583#1607#1610' '#1662#1585#1608#1606#1583#1607' '#1607#1575#1610' '#1576#1575#1610#1711#1575#1606#1610#39')'
      ''
      
        'if not exists(select * from Actions where FormTag=1 and id='#39'Aloa' +
        'dImages'#39')'
      
        'INSERT INTO Actions(FormTag,ID,Title) VALUES(1 ,'#39'AloadImages'#39','#39#1601 +
        #1585#1575#1582#1608#1575#1606#1610' '#1578#1589#1608#1610#1585' '#1606#1575#1605#1607' '#1607#1575' '#1608' '#1579#1576#1578' '#1576#1607' '#1589#1608#1585#1578' '#1662#1610#1588' '#1606#1608#1610#1587#39')'
      ''
      
        'if not exists(select * from Actions where FormTag=1 and id='#39'Logi' +
        'nLogoutReport'#39')'
      
        'INSERT INTO Actions(FormTag,ID,Title) VALUES(1 ,'#39'LoginLogoutRepo' +
        'rt'#39','#39#1711#1586#1575#1585#1588' '#1608#1585#1608#1583' '#1608' '#1582#1585#1608#1580' '#1603#1575#1585#1576#1585#1575#1606#39')'
      ''
      
        'if not exists(select * from Actions where FormTag=1 and id='#39'Aexp' +
        'ortData'#39')'
      
        'INSERT INTO Actions(FormTag,ID,Title) VALUES(1 ,'#39'AexportData'#39','#39#1576 +
        #1575#1610#1711#1575#1606#1610' '#1578#1589#1575#1608#1610#1585' '#1606#1575#1605#1607' '#1607#1575#39')'
      ''
      
        'if not exists(select * from Actions where FormTag=1 and id='#39'Ares' +
        'torLtterData'#39')'
      
        'INSERT INTO Actions(FormTag,ID,Title) VALUES(1 ,'#39'ArestorLtterDat' +
        'a'#39','#39#1576#1585#1711#1585#1583#1575#1606#1583#1606' '#1578#1589#1575#1608#1610#1585' '#1606#1575#1605#1607' '#1607#1575#1610' '#1576#1575#1610#1711#1575#1606#1610' '#1588#1583#1607#39')'
      ''
      
        'if not exists(select * from Actions where FormTag=1 and id='#39'Acha' +
        'ngeLetterProperties'#39')'
      
        'INSERT INTO Actions(FormTag,ID,Title) VALUES(1 ,'#39'AchangeLetterPr' +
        'operties'#39','#39#1578#1594#1610#1610#1585' '#1605#1588#1582#1589#1575#1578' '#1575#1587#1575#1587#1610' '#1606#1575#1605#1607#39')'
      ''
      
        'if not exists(select * from Actions where FormTag=1 and id='#39'ATem' +
        'plateGroup'#39')'
      
        'INSERT INTO Actions(FormTag,ID,Title) VALUES(1 ,'#39'ATemplateGroup'#39 +
        ','#39' '#1578#1593#1585#1610#1601' '#1711#1585#1608#1607#1575#1610' '#1602#1575#1604#1576' '#1606#1575#1605#1607' '#1607#1575#39')'
      ''
      
        'if not exists(select * from Actions where FormTag=1 and id='#39'AAct' +
        'iveUser'#39')'
      
        'INSERT INTO Actions(FormTag,ID,Title) VALUES(1 ,'#39'AActiveUser'#39','#39#1711 +
        #1586#1575#1585#1588' '#1705#1575#1585#1576#1585#1575#1606' '#1601#1593#1575#1604#39')'
      ''
      
        'if not exists(select * from Actions where FormTag=1 and id='#39'adel' +
        'eteWord'#39')'
      
        'INSERT INTO Actions(FormTag,ID,Title) VALUES(1 ,'#39'adeleteWord'#39','#39'W' +
        'ord '#1581#1584#1601#39')'
      ''
      
        'if not exists(select * from Actions where FormTag=1 and id='#39'ARec' +
        'ommiteGroup'#39')'
      
        'INSERT INTO Actions(FormTag,ID,Title) VALUES(1 ,'#39'ARecommiteGroup' +
        #39','#39#1575#1585#1580#1575#1593' '#1711#1585#1608#1607#1610#39')'
      ''
      
        'if not exists(select * from Actions where FormTag=1 and id='#39'AGro' +
        'upRecommite'#39')'
      
        'INSERT INTO Actions(FormTag,ID,Title) VALUES(1 ,'#39'AGroupRecommite' +
        #39','#39#1585#1608#1606#1608#1588#1578' '#1711#1585#1608#1607#1610#39')'
      ''
      
        'if not exists(select * from Actions where FormTag=1 and id='#39'AAdd' +
        'Extention'#39')'
      
        'INSERT INTO Actions(FormTag,ID,Title) VALUES(1 ,'#39'AAddExtention'#39',' +
        #39#1578#1593#1585#1610#1601' '#1575#1606#1608#1575#1593' '#1601#1575#1610#1604' '#1607#1575#1610' '#1662#1610#1608#1587#1578#39')'
      ''
      
        'if not exists(select * from Actions where FormTag=1 and id='#39'Arec' +
        'DraftIns'#39')'
      
        'INSERT INTO Actions(FormTag,ID,Title) VALUES(1 ,'#39'ArecDraftIns'#39','#39 +
        #1662#1610#1588' '#1606#1608#1610#1587' '#1608#1575#1585#1583#1607#39')'
      ''
      
        'if not exists(select * from Actions where FormTag=1 and id='#39'Anew' +
        'Recommite'#39')'
      
        'INSERT INTO Actions(FormTag,ID,Title) VALUES(1 ,'#39'AnewRecommite'#39',' +
        #39#1575#1585#1580#1575#1593' '#1606#1575#1605#1607#39')'
      ''
      
        'if not exists(select * from Actions where FormTag=1 and id='#39'ADoC' +
        'ommite'#39')'
      
        'INSERT INTO Actions(FormTag,ID,Title) VALUES(1 ,'#39'ADoCommite'#39','#39#1575#1602 +
        #1583#1575#1605' '#1608' '#1576#1575#1610#1711#1575#1606#1610#39')'
      ''
      
        'if not exists(select * from Actions where FormTag=1 and id='#39'Aloa' +
        'dPDF'#39')'
      
        'INSERT INTO Actions(FormTag,ID,Title) VALUES(1 ,'#39'AloadPDF'#39','#39'PDF'#39 +
        ')'
      ''
      
        'if not exists(select * from Actions where FormTag=1 and id='#39'ACus' +
        'tomizeGrid'#39')'
      
        'INSERT INTO Actions(FormTag,ID,Title) VALUES(1 ,'#39'ACustomizeGrid'#39 +
        ','#39#1578#1606#1592#1610#1605#1575#1578' '#1587#1578#1608#1606' '#1607#1575#1610' '#1580#1583#1608#1604#39')'
      ''
      
        'if not exists(select * from Actions where FormTag=1 and id='#39'Ainn' +
        'erLetter'#39')'
      
        'INSERT INTO Actions(FormTag,ID,Title) VALUES(1 ,'#39'AinnerLetter'#39','#39 +
        #1579#1576#1578' '#1606#1575#1605#1607' '#1583#1575#1582#1604#1610#39')'
      ''
      
        'if not exists(select * from Actions where FormTag=1 and id='#39'ASen' +
        'dToOtherSec'#39')'
      
        'INSERT INTO Actions(FormTag,ID,Title) VALUES(1 ,'#39'ASendToOtherSec' +
        #39','#39#1575#1585#1587#1575#1604' '#1576#1607' '#1583#1576#1610#1585#1582#1575#1606#1607' '#1607#1575#1610' '#1583#1610#1711#1585#39')'
      ''
      
        'if not exists(select * from Actions where FormTag=1 and id='#39'adel' +
        'eteScan'#39')'
      
        'INSERT INTO Actions(FormTag,ID,Title) VALUES(1 ,'#39'adeleteScan'#39','#39#1581 +
        #1584#1601' '#1578#1589#1608#1610#1585' '#1606#1575#1605#1607#39')'
      ''
      
        'if not exists(select * from Actions where FormTag=1 and id='#39'ARel' +
        'atedSecretariat'#39')'
      
        'INSERT INTO Actions(FormTag,ID,Title) VALUES(1 ,'#39'ARelatedSecreta' +
        'riat'#39','#39#1578#1606#1592#1610#1605' '#1583#1576#1610#1585#1582#1575#1606#1607' '#1607#1575#1610' '#1605#1585#1578#1576#1591' '#1576#1575' '#1587#1575#1586#1605#1575#1606#39')'
      ''
      
        'if not exists(select * from Actions where FormTag=1 and id='#39'Allo' +
        'wEditWord'#39')'
      
        'INSERT INTO Actions(FormTag,ID,Title) VALUES(1 ,'#39'AllowEditWord'#39',' +
        #39#1602#1575#1576#1604#1610#1578' '#1608#1610#1585#1575#1610#1588' '#1601#1575#1610#1604' '#1607#1575#1610' word'#39')'
      ''
      
        'if not exists(select * from Actions where FormTag=1 and id='#39'Aimp' +
        'ort'#39')'
      
        'INSERT INTO Actions(FormTag,ID,Title) VALUES(1 ,'#39'Aimport'#39','#39#1601#1585#1575#1582#1608 +
        #1575#1606#1610' '#1575#1591#1604#1575#1593#1575#1578' '#1606#1585#1605' '#1575#1601#1586#1575#1585' '#1607#1575#1610' '#1583#1610#1711#1585#39')'
      ''
      
        'if not exists(select * from Actions where FormTag=1 and id='#39'Amon' +
        'itorTables'#39')'
      
        'INSERT INTO Actions(FormTag,ID,Title) VALUES(1 ,'#39'AmonitorTables'#39 +
        ','#39#1605#1583#1610#1585#1610#1578' '#1575#1591#1604#1575#1593#1575#1578' '#1601#1585#1575#1582#1608#1575#1606#1610' '#1588#1583#1607#39')'
      ''
      
        'if not exists(select * from Actions where FormTag=1 and id='#39'ARec' +
        'ommiteList'#39')'
      
        'INSERT INTO Actions(FormTag,ID,Title) VALUES(1 ,'#39'ARecommiteList'#39 +
        ','#39#1604#1610#1587#1578' '#1575#1585#1580#1575#1593#1575#1578' '#1576#1585#1575#1610' '#1670#1575#1662#39')'
      ''
      
        'if not exists(select * from Actions where FormTag=1 and id='#39'ALet' +
        'terNoSetting'#39')'
      
        'INSERT INTO Actions(FormTag,ID,Title) VALUES(1 ,'#39'ALetterNoSettin' +
        'g'#39','#39#1578#1606#1592#1610#1605' '#1588#1705#1604' '#1588#1605#1575#1585#1607' '#1606#1575#1605#1607#39')'
      ''
      
        'if not exists(select * from Actions where FormTag=1 and id='#39'AUse' +
        'rTable'#39')'
      
        'INSERT INTO Actions(FormTag,ID,Title) VALUES(1 ,'#39'AUserTable'#39','#39#1578#1593 +
        #1585#1610#1601' '#1601#1585#1605' '#1607#1575#1610' '#1575#1583#1575#1585#1610#39')'
      ''
      
        'if not exists(select * from Actions where FormTag=1 and id='#39'AInp' +
        'utRefferenceTable'#39')'
      
        'INSERT INTO Actions(FormTag,ID,Title) VALUES(1 ,'#39'AInputRefferenc' +
        'eTable'#39','#39#1578#1593#1585#1610#1601' '#1580#1583#1575#1608#1604' '#1605#1585#1580#1593#39')'
      ''
      
        'if not exists(select * from Actions where FormTag=1 and id='#39'aRep' +
        'ortUserTable'#39')'
      
        'INSERT INTO Actions(FormTag,ID,Title) VALUES(1 ,'#39'aReportUserTabl' +
        'e'#39','#39#1711#1586#1575#1585#1588' '#1575#1586' '#1601#1585#1605' '#1607#1575#1610' '#1575#1583#1575#1585#1610#39')'
      ''
      
        'if not exists(select * from Actions where FormTag=1 and id='#39'AARc' +
        'hiveLetter'#39')'
      
        'INSERT INTO Actions(FormTag,ID,Title) VALUES(1 ,'#39'AARchiveLetter'#39 +
        ','#39#1570#1585#1588#1610#1608' '#1606#1575#1605#1607#39')'
      ''
      
        'if not exists(select * from Actions where FormTag=1 and id='#39'Aadd' +
        '_Externaldata'#39')'
      
        'INSERT INTO Actions(FormTag,ID,Title) VALUES(1 ,'#39'Aadd_Externalda' +
        'ta'#39','#39#1576#1585#1608#1586' '#1585#1587#1575#1606#1610' '#1575#1591#1604#1575#1593#1575#1578' '#1578#1705#1605#1610#1604#1610#39')'
      ''
      
        'if not exists(select * from Actions where FormTag=1 and id='#39'aSEN' +
        'DMessage'#39')'
      
        'INSERT INTO Actions(FormTag,ID,Title) VALUES(1 ,'#39'aSENDMessage'#39','#39 +
        #1575#1585#1587#1575#1604' '#1662#1610#1575#1605#39')'
      ''
      
        'if not exists(select * from Actions where FormTag=1 and id='#39'Aget' +
        'Message'#39')'
      
        'INSERT INTO Actions(FormTag,ID,Title) VALUES(1 ,'#39'AgetMessage'#39','#39#1583 +
        #1585#1610#1575#1601#1578' '#1662#1610#1575#1605#39')'
      ''
      
        'if not exists(select * from Actions where FormTag=1 and id='#39'AEdi' +
        'tSubject'#39')'
      
        'INSERT INTO Actions(FormTag,ID,Title) VALUES(1 ,'#39'AEditSubject'#39','#39 +
        #1575#1582#1578#1589#1575#1589' '#1605#1588#1582#1589#1575#1578' '#1576#1575#1610#1711#1575#1606#1610#39')'
      ''
      
        'if not exists(select * from Actions where FormTag=1 and id='#39'ABro' +
        'wsArchive'#39')'
      
        'INSERT INTO Actions(FormTag,ID,Title) VALUES(1 ,'#39'ABrowsArchive'#39',' +
        #39#1576#1585#1585#1587#1610' '#1587#1575#1576#1602#1607' '#1576#1585' '#1575#1587#1575#1587' '#1578#1608#1590#1610#1581#1575#1578#39')'
      ''
      
        'if not exists(select * from Actions where FormTag=1 and id='#39'Edit' +
        'LetterText'#39')'
      
        'INSERT INTO Actions(FormTag,ID,Title) VALUES(1 ,'#39'EditLetterText'#39 +
        ','#39#1608#1610#1585#1575#1610#1588' '#1605#1578#1606' '#1576#1575#1610#1711#1575#1606#1610#39')'
      ''
      
        'if not exists(select * from Actions where FormTag=1 and id='#39'AddN' +
        'ote'#39')'
      
        'INSERT INTO Actions(FormTag,ID,Title) VALUES(1 ,'#39'AddNote'#39','#39#1610#1575#1583#1583#1575 +
        #1588#1578' '#1607#1575#39')'
      ''
      
        'if not exists(select * from Actions where FormTag=1 and id='#39'ASen' +
        'dLetterToSec'#39')'
      
        'INSERT INTO Actions(FormTag,ID,Title) VALUES(1 ,'#39'ASendLetterToSe' +
        'c'#39','#39#1575#1585#1587#1575#1604' '#1662#1610#1588#1606#1608#1610#1587' '#1576#1585#1575#1610' '#1583#1576#1610#1585#1582#1575#1606#1607#39')'
      ''
      
        'if not exists(select * from Actions where FormTag=1 and id='#39'View' +
        'Recommite'#39')'
      
        'INSERT INTO Actions(FormTag,ID,Title) VALUES(1 ,'#39'ViewRecommite'#39',' +
        #39#1605#1588#1575#1607#1583#1607' '#1575#1585#1580#1575#1593#39')'
      ''
      
        'if not exists(select * from Actions where FormTag=1 and id='#39'Acti' +
        'vateRecommite'#39')'
      
        'INSERT INTO Actions(FormTag,ID,Title) VALUES(1 ,'#39'ActivateRecommi' +
        'te'#39','#39#1601#1593#1575#1604' '#1705#1585#1583#1606' '#1575#1610#1606' '#1575#1585#1580#1575#1593#39')'
      ''
      
        'if not exists(select * from Actions where FormTag=1 and id='#39'ADel' +
        'ete'#39')'
      
        'INSERT INTO Actions(FormTag,ID,Title) VALUES(1 ,'#39'ADelete'#39','#39#1581#1584#1601' '#1606 +
        #1575#1605#1607#39')'
      ''
      
        'if not exists(select * from Actions where FormTag=1 and id='#39'ASwi' +
        'tchUser'#39')'
      
        'INSERT INTO Actions(FormTag,ID,Title) VALUES(1 ,'#39'ASwitchUser'#39','#39#1608 +
        #1585#1608#1583' '#1705#1575#1585#1576#1585' '#1583#1610#1711#1585#39')'
      ''
      
        'if not exists(select * from Actions where FormTag=1 and id='#39'ALet' +
        'terHistory'#39')'
      
        'INSERT INTO Actions(FormTag,ID,Title) VALUES(1 ,'#39'ALetterHistory'#39 +
        ','#39#1587#1608#1575#1576#1602' '#1606#1575#1605#1607' '#1583#1585' '#1705#1604#1610#1607' '#1583#1576#1610#1585#1582#1575#1606#1607' '#1607#1575#39')'
      ''
      
        'if not exists(select * from Actions where FormTag=1 and id='#39'AArc' +
        'hiveCenter'#39')'
      
        'INSERT INTO Actions(FormTag,ID,Title) VALUES(1 ,'#39'AArchiveCenter'#39 +
        ','#39#1578#1593#1585#1610#1601' '#1605#1585#1575#1705#1586' '#1576#1575#1610#1711#1575#1606#1610#39')'
      ''
      
        'if not exists(select * from Actions where FormTag=1 and id='#39'AddL' +
        'etterSubject'#39')'
      
        'INSERT INTO Actions(FormTag,ID,Title) VALUES(1 ,'#39'AddLetterSubjec' +
        't'#39','#39#1578#1593#1585#1610#1601' '#1605#1608#1590#1608#1593#1575#1578' '#1606#1575#1605#1607#39')'
      ''
      
        'if not exists(select * from Actions where FormTag=1 and id='#39'ARec' +
        'ommiteReport'#39')'
      
        'INSERT INTO Actions(FormTag,ID,Title) VALUES(1 ,'#39'ARecommiteRepor' +
        't'#39','#39#1711#1586#1575#1585#1588' '#1575#1586' '#1575#1602#1583#1575#1605#1575#1578' '#1608' '#1575#1585#1580#1575#1593#1575#1578#39')'
      ''
      
        'if not exists(select * from Actions where FormTag=1 and id='#39'ARec' +
        'ommiteStat'#39')'
      
        'INSERT INTO Actions(FormTag,ID,Title) VALUES(1 ,'#39'ARecommiteStat'#39 +
        ','#39#1570#1605#1575#1585' '#1575#1586' '#1575#1602#1583#1575#1605#1575#1578' '#1608' '#1575#1585#1580#1575#1593#1575#1578#39')'
      ''
      
        'if not exists(select * from Actions where FormTag=1 and id='#39'AddD' +
        'ocument'#39')'
      
        'INSERT INTO Actions(FormTag,ID,Title) VALUES(1 ,'#39'AddDocument'#39','#39#1579 +
        #1576#1578' '#1587#1606#1583' '#1607#1575#1610' '#1594#1610#1585' '#1575#1586' '#1606#1575#1605#1607#39')'
      ''
      
        'if not exists(select * from Actions where FormTag=1 and id='#39'Scan' +
        'L'#39')'
      
        'INSERT INTO Actions(FormTag,ID,Title) VALUES(1 ,'#39'ScanL'#39','#39#1711#1586#1575#1585#1588' '#1575 +
        #1586' '#1575#1587#1705#1606' '#1606#1575#1605#1607' '#1607#1575#39')'
      ''
      
        'if not exists(select * from Actions where FormTag=1 and id='#39'ASav' +
        'eWord'#39')'
      
        'INSERT INTO Actions(FormTag,ID,Title) VALUES(1 ,'#39'ASaveWord'#39','#39#1584#1582#1610 +
        #1585#1607' '#1583#1585' '#1601#1575#1610#1604#39')'
      ''
      
        'if not exists(select * from Actions where FormTag=1 and id='#39'Exac' +
        'tCopy'#39')'
      
        'INSERT INTO Actions(FormTag,ID,Title) VALUES(1 ,'#39'ExactCopy'#39','#39#1585#1608#1606 +
        #1608#1588#1578#39')'
      ''
      
        'if not exists(select * from Actions where FormTag=1 and id='#39'Lock' +
        'OldYear'#39')'
      
        'INSERT INTO Actions(FormTag,ID,Title) VALUES(1 ,'#39'LockOldYear'#39','#39#1576 +
        #1587#1578#1607' '#1588#1583#1606' '#1606#1575#1605#1607' '#1607#1575#1610' '#1587#1575#1604' '#1602#1576#1604#39')'
      ''
      
        'if not exists(select * from Actions where FormTag=1 and id='#39'AAcc' +
        'essField'#39')'
      
        'INSERT INTO Actions(FormTag,ID,Title) VALUES(1 ,'#39'AAccessField'#39','#39 +
        #1578#1606#1591#1610#1605' '#1587#1591#1581' '#1583#1587#1578#1585#1587#1610' '#1601#1585#1605' '#1607#1575#39')'
      ''
      
        'if not exists(select * from Actions where FormTag=1 and id='#39'AUpd' +
        'ateFax'#39')'
      
        'INSERT INTO Actions(FormTag,ID,Title) VALUES(1 ,'#39'AUpdateFax'#39','#39#1576#1585 +
        #1608#1586' '#1585#1587#1575#1606#1610' '#1601#1705#1587' '#1607#1575#39')'
      ''
      
        'if not exists(select * from Actions where FormTag=1 and id='#39'Aloa' +
        'dFile'#39')'
      
        'INSERT INTO Actions(FormTag,ID,Title) VALUES(1 ,'#39'AloadFile'#39','#39#1582#1608#1575 +
        #1606#1583#1606' '#1587#1585#1610#1593' '#1601#1575#1610#1604' '#1662#1610#1608#1587#1578#1610' '#39')'
      ''
      
        'if not exists(select * from Actions where FormTag=1 and id='#39'Arep' +
        'ort_userLog'#39')'
      
        'INSERT INTO Actions(FormTag,ID,Title) VALUES(1 ,'#39'Areport_userLog' +
        #39','#39#1576#1585#1585#1587#1610' '#1575#1593#1605#1575#1604' '#1575#1606#1580#1575#1605' '#1588#1583#1607' '#1705#1575#1585#1576#1585#1575#1606#39')'
      ''
      
        'if not exists(select * from Actions where FormTag=1 and id='#39'APri' +
        'ntFish'#39')'
      
        'INSERT INTO Actions(FormTag,ID,Title) VALUES(1 ,'#39'APrintFish'#39','#39#1670#1575 +
        #1662' '#1585#1587#1610#1583#39')'
      ''
      
        'if not exists(select * from Actions where FormTag=1 and id='#39'Act_' +
        'WorkGroup'#39')'
      
        'INSERT INTO Actions(FormTag,ID,Title) VALUES(1 ,'#39'Act_WorkGroup'#39',' +
        #39#1578#1593#1585#1610#1601' '#1711#1585#1608#1607' '#1705#1575#1585#1610#39')'
      ''
      
        'if not exists(select * from Actions where FormTag=1 and id='#39'AddG' +
        'roupNews'#39')'
      
        'INSERT INTO Actions(FormTag,ID,Title) VALUES(1 ,'#39'AddGroupNews'#39','#39 +
        #1578#1593#1585#1610#1601' '#1711#1585#1608#1607' '#1582#1576#1585#1610#39')'
      ''
      
        'if not exists(select * from Actions where FormTag=1 and id='#39'AddN' +
        'ews'#39')'
      
        'INSERT INTO Actions(FormTag,ID,Title) VALUES(1 ,'#39'AddNews'#39','#39#1578#1593#1585#1610#1601 +
        ' '#1582#1576#1585#39')'
      ''
      
        'if not exists(select * from Actions where FormTag=1 and id='#39'News' +
        'List'#39')'
      
        'INSERT INTO Actions(FormTag,ID,Title) VALUES(1 ,'#39'NewsList'#39','#39#1606#1605#1575#1610 +
        #1588' '#1604#1610#1587#1578' '#1582#1576#1585#1607#1575#39')'
      ''
      
        'if not exists(select * from Actions where FormTag=1 and id='#39'Repo' +
        'rtRelatedLetter'#39')'
      
        'INSERT INTO Actions(FormTag,ID,Title) VALUES(1 ,'#39'ReportRelatedLe' +
        'tter'#39','#39#1606#1605#1575#1610#1588' '#1575#1585#1578#1576#1575#1591' '#1576#1610#1606' '#1606#1575#1605#1607' '#1607#1575#39')'
      ''
      
        'if not exists(select * from Actions where FormTag=1 and id='#39'Emai' +
        'l'#39')'
      'INSERT INTO Actions(FormTag,ID,Title) VALUES(1 ,'#39'Email'#39','#39#1575#1610#1605#1610#1604#39')'
      ''
      
        'if not exists(select * from Actions where FormTag=1 and id='#39'ActP' +
        'hone'#39')'
      
        'INSERT INTO Actions(FormTag,ID,Title) VALUES(1 ,'#39'ActPhone'#39','#39#1583#1601#1578#1585 +
        #1670#1607' '#1578#1604#1601#1606#39')'
      ''
      
        'if not exists(select * from Actions where FormTag=1 and id='#39'Conv' +
        'ertEmailToLetter'#39')'
      
        'INSERT INTO Actions(FormTag,ID,Title) VALUES(1 ,'#39'ConvertEmailToL' +
        'etter'#39','#39#1579#1576#1578' '#1606#1575#1605#1607' '#1607#1575#1610' '#1608#1575#1585#1583#1607' '#1575#1586' '#1575#1610#1605#1610#1604#39')'
      ''
      
        'if not exists(select * from Actions where FormTag=1 and id='#39'AddS' +
        'ysEmail'#39')'
      
        'INSERT INTO Actions(FormTag,ID,Title) VALUES(1 ,'#39'AddSysEmail'#39','#39#1579 +
        #1576#1578' '#1575#1610#1605#1610#1604' '#1607#1575#1610' '#1587#1610#1587#1578#1605#39')'
      ''
      
        'if not exists(select * from Actions where FormTag=3 and id='#39'Data' +
        'SetInsert'#39')'
      
        'INSERT INTO Actions(FormTag,ID,Title) VALUES(3 ,'#39'DataSetInsert'#39',' +
        #39#1580#1583#1610#1583#39')'
      ''
      
        'if not exists(select * from Actions where FormTag=3 and id='#39'Data' +
        'SetEdit'#39')'
      
        'INSERT INTO Actions(FormTag,ID,Title) VALUES(3 ,'#39'DataSetEdit'#39','#39#1608 +
        #1610#1585#1575#1610#1588' '#39')'
      ''
      
        'if not exists(select * from Actions where FormTag=3 and id='#39'Data' +
        'SetPost'#39')'
      
        'INSERT INTO Actions(FormTag,ID,Title) VALUES(3 ,'#39'DataSetPost'#39','#39#1584 +
        #1582#1610#1585#1607#39')'
      ''
      
        'if not exists(select * from Actions where FormTag=3 and id='#39'Amak' +
        'eRecommite'#39')'
      
        'INSERT INTO Actions(FormTag,ID,Title) VALUES(3 ,'#39'AmakeRecommite'#39 +
        ','#39#1575#1585#1580#1575#1593#1575#1578' '#1606#1575#1605#1607#39')'
      ''
      
        'if not exists(select * from Actions where FormTag=2 and id='#39'Data' +
        'SetInsert'#39')'
      
        'INSERT INTO Actions(FormTag,ID,Title) VALUES(2 ,'#39'DataSetInsert'#39',' +
        #39#1580#1583#1610#1583#39')'
      ''
      
        'if not exists(select * from Actions where FormTag=2 and id='#39'Data' +
        'SetEdit'#39')'
      
        'INSERT INTO Actions(FormTag,ID,Title) VALUES(2 ,'#39'DataSetEdit'#39','#39#1608 +
        #1610#1585#1575#1610#1588' '#39')'
      ''
      
        'if not exists(select * from Actions where FormTag=2 and id='#39'Data' +
        'SetPost'#39')'
      
        'INSERT INTO Actions(FormTag,ID,Title) VALUES(2 ,'#39'DataSetPost'#39','#39#1584 +
        #1582#1610#1585#1607#39')'
      ''
      
        'if not exists(select * from Actions where FormTag=5 and id='#39'Data' +
        'SetDelete1'#39')'
      
        'INSERT INTO Actions(FormTag,ID,Title) VALUES(5 ,'#39'DataSetDelete1'#39 +
        ','#39#1581#1584#1601' '#39')'
      ''
      
        'if not exists(select * from Actions where FormTag=5 and id='#39'Acti' +
        'on1'#39')'
      
        'INSERT INTO Actions(FormTag,ID,Title) VALUES(5 ,'#39'Action1'#39','#39#1582#1585#1608#1580#39 +
        ')'
      ''
      
        'if not exists(select * from Actions where FormTag=5 and id='#39'AIns' +
        'ert'#39')'
      
        'INSERT INTO Actions(FormTag,ID,Title) VALUES(5 ,'#39'AInsert'#39','#39#1580#1583#1610#1583#39 +
        ')'
      ''
      
        'if not exists(select * from Actions where FormTag=5 and id='#39'AArc' +
        'hiveRecommite'#39')'
      
        'INSERT INTO Actions(FormTag,ID,Title) VALUES(5 ,'#39'AArchiveRecommi' +
        'te'#39','#39#1575#1585#1580#1575#1593' '#1576#1607' '#1576#1575#1610#1711#1575#1606#1610#39')'
      ''
      
        'if not exists(select * from Actions where FormTag=5 and id='#39'Atyp' +
        'eRecommite'#39')'
      
        'INSERT INTO Actions(FormTag,ID,Title) VALUES(5 ,'#39'AtypeRecommite'#39 +
        ','#39#1575#1585#1587#1575#1604' '#1576#1585#1575#1610' '#1578#1575#1610#1662#39')'
      ''
      
        'if not exists(select * from Actions where FormTag=7 and id='#39'Apos' +
        't'#39')'
      'INSERT INTO Actions(FormTag,ID,Title) VALUES(7 ,'#39'Apost'#39','#39#1584#1582#1610#1585#1607#39')'
      ''
      
        'if not exists(select * from Actions where FormTag=7 and id='#39'NewP' +
        'age'#39')'
      
        'INSERT INTO Actions(FormTag,ID,Title) VALUES(7 ,'#39'NewPage'#39','#39#1589#1601#1581#1607' ' +
        #1580#1583#1610#1583#39')'
      ''
      
        'if not exists(select * from Actions where FormTag=7 and id='#39'AEDi' +
        't'#39')'
      
        'INSERT INTO Actions(FormTag,ID,Title) VALUES(7 ,'#39'AEDit'#39','#39#1608#1610#1585#1575#1610#1588#39 +
        ')'
      ''
      
        'if not exists(select * from Actions where FormTag=7 and id='#39'Apri' +
        'ntt'#39')'
      'INSERT INTO Actions(FormTag,ID,Title) VALUES(7 ,'#39'Aprintt'#39','#39#1670#1575#1662#39')'
      ''
      
        'if not exists(select * from Actions where FormTag=7 and id='#39'ACle' +
        'ar'#39')'
      'INSERT INTO Actions(FormTag,ID,Title) VALUES(7 ,'#39'AClear'#39','#39#1662#1575#1603#39')'
      ''
      
        'if not exists(select * from Actions where FormTag=7 and id='#39'Scan' +
        #39')'
      'INSERT INTO Actions(FormTag,ID,Title) VALUES(7 ,'#39'Scan'#39','#39#1575#1587#1603#1606#39')'
      ''
      
        'if not exists(select * from Actions where FormTag=7 and id='#39'Open' +
        'File'#39')'
      
        'INSERT INTO Actions(FormTag,ID,Title) VALUES(7 ,'#39'OpenFile'#39','#39#1582#1608#1575#1606 +
        #1583#1606' '#1575#1586' '#1601#1575#1610#1604#39')'
      ''
      
        'if not exists(select * from Actions where FormTag=7 and id='#39'Adel' +
        'ete'#39')'
      'INSERT INTO Actions(FormTag,ID,Title) VALUES(7 ,'#39'Adelete'#39','#39#1581#1584#1601#39')'
      ''
      
        'if not exists(select * from Actions where FormTag=7 and id='#39'Save' +
        'As'#39')'
      
        'INSERT INTO Actions(FormTag,ID,Title) VALUES(7 ,'#39'SaveAs'#39','#39#1584#1582#1610#1585#1607' ' +
        #1583#1585' '#1601#1575#1610#1604#39')'
      ''
      
        'if not exists(select * from Actions where FormTag=7 and id='#39'Sign' +
        'Pic'#39')'
      
        'INSERT INTO Actions(FormTag,ID,Title) VALUES(7 ,'#39'SignPic'#39','#39#1583#1585#1580' '#1575 +
        #1605#1590#1575#39')'
      ''
      
        'if not exists(select * from Actions where FormTag=7 and id='#39'ActS' +
        'aveAll'#39')'
      
        'INSERT INTO Actions(FormTag,ID,Title) VALUES(7 ,'#39'ActSaveAll'#39','#39#1584#1582 +
        #1610#1585#1607' '#1607#1605#1607' '#1578#1589#1575#1608#1610#1585#39')'
      ''
      
        'if not exists(select * from Actions where FormTag=7 and id='#39'ASBD' +
        'elAllData'#39')'
      
        'INSERT INTO Actions(FormTag,ID,Title) VALUES(7 ,'#39'ASBDelAllData'#39',' +
        #39#1581#1584#1601' '#1607#1605#1607' '#1578#1589#1575#1608#1610#1585#39')'
      'GO'
      'delete     Actions'
      'WHERE     (isnumeric( ID) = 1)'
      'GO'
      ''
      ''
      
        'Update ActionsAccess set ActionID = '#39'AAbout'#39' where ActionID = '#39'1' +
        '048'#39
      
        ' Update ActionsAccess set ActionID = '#39'AActiveUser'#39' where ActionI' +
        'D = '#39'1051'#39
      
        ' Update ActionsAccess set ActionID = '#39'AAddExtention'#39' where Actio' +
        'nID = '#39'1056'#39
      
        ' Update ActionsAccess set ActionID = '#39'AaddLetterData'#39' where Acti' +
        'onID = '#39'1030'#39
      
        ' Update ActionsAccess set ActionID = '#39'AAnswer'#39' where ActionID = ' +
        #39'1008'#39
      
        ' Update ActionsAccess set ActionID = '#39'AARCHIVE'#39' where ActionID =' +
        ' '#39'1006'#39
      
        ' Update ActionsAccess set ActionID = '#39'AArchiveFolders'#39' where Act' +
        'ionID = '#39'1043'#39
      
        ' Update ActionsAccess set ActionID = '#39'ABackup'#39' where ActionID = ' +
        #39'1013'#39
      
        ' Update ActionsAccess set ActionID = '#39'access'#39' where ActionID = '#39 +
        '1015'#39
      
        ' Update ActionsAccess set ActionID = '#39'AChangeColor'#39' where Action' +
        'ID = '#39'1007'#39
      
        ' Update ActionsAccess set ActionID = '#39'AchangePassword'#39' where Act' +
        'ionID = '#39'1041'#39
      
        ' Update ActionsAccess set ActionID = '#39'Aclose'#39' where ActionID = '#39 +
        '1005'#39
      
        ' Update ActionsAccess set ActionID = '#39'Action1'#39' where ActionID in' +
        '( '#39'1054'#39', '#39'5003'#39')'
      
        ' Update ActionsAccess set ActionID = '#39'Action14'#39' where ActionID =' +
        ' '#39'1055'#39
      
        ' Update ActionsAccess set ActionID = '#39'Action2'#39' where ActionID = ' +
        #39'1044'#39
      
        ' Update ActionsAccess set ActionID = '#39'Action3'#39' where ActionID = ' +
        #39'1049'#39
      
        ' Update ActionsAccess set ActionID = '#39'Action4'#39' where ActionID = ' +
        #39'1045'#39
      
        ' Update ActionsAccess set ActionID = '#39'ACustomizeGrid'#39' where Acti' +
        'onID = '#39'1061'#39
      
        ' Update ActionsAccess set ActionID = '#39'Adailyrep'#39' where ActionID ' +
        '= '#39'1038'#39
      
        ' Update ActionsAccess set ActionID = '#39'ADarftIns'#39' where ActionID ' +
        '= '#39'1026'#39
      
        ' Update ActionsAccess set ActionID = '#39'ADelete'#39' where ActionID = ' +
        #39'1078'#39
      
        ' Update ActionsAccess set ActionID = '#39'Adeleted_toLetter'#39' where A' +
        'ctionID = '#39'1012'#39
      
        ' Update ActionsAccess set ActionID = '#39'adeleteScan'#39' where ActionI' +
        'D = '#39'1058'#39
      
        ' Update ActionsAccess set ActionID = '#39'adeleteWord'#39' where ActionI' +
        'D = '#39'1052'#39
      
        ' Update ActionsAccess set ActionID = '#39'ADraftToLetter'#39' where Acti' +
        'onID = '#39'1027'#39
      
        ' Update ActionsAccess set ActionID = '#39'AEditSecs'#39' where ActionID ' +
        '= '#39'1034'#39
      
        ' Update ActionsAccess set ActionID = '#39'AErrorMsg'#39' where ActionID ' +
        '= '#39'1035'#39
      
        ' Update ActionsAccess set ActionID = '#39'AexportData'#39' where ActionI' +
        'D = '#39'1046'#39
      
        ' Update ActionsAccess set ActionID = '#39'AExpotToWord'#39' where Action' +
        'ID = '#39'1024'#39
      
        ' Update ActionsAccess set ActionID = '#39'AfillLetterData'#39' where Act' +
        'ionID = '#39'1039'#39
      
        ' Update ActionsAccess set ActionID = '#39'Afix'#39' where ActionID = '#39'10' +
        '04'#39
      
        ' Update ActionsAccess set ActionID = '#39'AFollow'#39' where ActionID = ' +
        #39'1009'#39
      
        ' Update ActionsAccess set ActionID = '#39'AFromOrganize'#39' where Actio' +
        'nID = '#39'1010'#39
      
        ' Update ActionsAccess set ActionID = '#39'AFulltext'#39' where ActionID ' +
        '= '#39'1032'#39
      
        ' Update ActionsAccess set ActionID = '#39'AinnerLetter'#39' where Action' +
        'ID = '#39'1060'#39
      
        ' Update ActionsAccess set ActionID = '#39'AInsert'#39' where ActionID = ' +
        #39'5004'#39
      
        ' Update ActionsAccess set ActionID = '#39'ALetterReport'#39' where Actio' +
        'nID = '#39'1028'#39
      
        ' Update ActionsAccess set ActionID = '#39'AloadPDF'#39' where ActionID =' +
        ' '#39'1062'#39
      
        ' Update ActionsAccess set ActionID = '#39'alock'#39' where ActionID = '#39'1' +
        '042'#39
      
        ' Update ActionsAccess set ActionID = '#39'AOtherReceivers'#39' where Act' +
        'ionID = '#39'1020'#39
      
        ' Update ActionsAccess set ActionID = '#39'Apicture'#39' where ActionID =' +
        ' '#39'1021'#39
      
        ' Update ActionsAccess set ActionID = '#39'ArecDraftIns'#39' where Action' +
        'ID = '#39'1057'#39
      
        ' Update ActionsAccess set ActionID = '#39'Arecommite'#39' where ActionID' +
        ' = '#39'1003'#39
      
        ' Update ActionsAccess set ActionID = '#39'ARecommiteGroup'#39' where Act' +
        'ionID = '#39'1053'#39
      
        ' Update ActionsAccess set ActionID = '#39'ArestorLtterData'#39' where Ac' +
        'tionID = '#39'1047'#39
      
        ' Update ActionsAccess set ActionID = '#39'AretroAction'#39' where Action' +
        'ID = '#39'1011'#39
      
        ' Update ActionsAccess set ActionID = '#39'AsecChange'#39' where ActionID' +
        ' = '#39'1033'#39
      
        ' Update ActionsAccess set ActionID = '#39'ASendToOtherSec'#39' where Act' +
        'ionID = '#39'1059'#39
      
        ' Update ActionsAccess set ActionID = '#39'ASentense'#39' where ActionID ' +
        '= '#39'1031'#39
      
        ' Update ActionsAccess set ActionID = '#39'AshortCut'#39' where ActionID ' +
        '= '#39'1040'#39
      
        ' Update ActionsAccess set ActionID = '#39'AShrinck'#39' where ActionID =' +
        ' '#39'1014'#39
      
        ' Update ActionsAccess set ActionID = '#39'Astatistic'#39' where ActionID' +
        ' = '#39'1037'#39
      
        ' Update ActionsAccess set ActionID = '#39'ASystemSetting'#39' where Acti' +
        'onID = '#39'1036'#39
      
        ' Update ActionsAccess set ActionID = '#39'ATemplate'#39' where ActionID ' +
        '= '#39'1023'#39
      
        ' Update ActionsAccess set ActionID = '#39'ATemplateGroup'#39' where Acti' +
        'onID = '#39'1050'#39
      
        ' Update ActionsAccess set ActionID = '#39'ATExactCopy'#39' where ActionI' +
        'D = '#39'1019'#39
      
        ' Update ActionsAccess set ActionID = '#39'AUpdateFax'#39' where ActionID' +
        ' = '#39'1063'#39
      
        ' Update ActionsAccess set ActionID = '#39'AUsers'#39' where ActionID = '#39 +
        '1017'#39
      
        ' Update ActionsAccess set ActionID = '#39'AUserSetting'#39' where Action' +
        'ID = '#39'1018'#39
      
        ' Update ActionsAccess set ActionID = '#39'AviewAllletter'#39' where Acti' +
        'onID = '#39'1016'#39
      
        ' Update ActionsAccess set ActionID = '#39'AWordMain'#39' where ActionID ' +
        '= '#39'1025'#39
      
        ' Update ActionsAccess set ActionID = '#39'ChangeYear'#39' where ActionID' +
        ' = '#39'1022'#39
      
        ' Update ActionsAccess set ActionID = '#39'DataSetCancel'#39' where Actio' +
        'nID in( '#39'2005'#39','#39'3005'#39')'
      
        ' Update ActionsAccess set ActionID = '#39'DataSetDelete1'#39' where Acti' +
        'onID = '#39'5001'#39
      
        ' Update ActionsAccess set ActionID = '#39'DataSetEdit'#39' where ActionI' +
        'D in ('#39'2003'#39','#39'3003'#39')'
      
        ' Update ActionsAccess set ActionID = '#39'DataSetInsert'#39' where Actio' +
        'nID IN ( '#39'2001'#39','#39'3001'#39')'
      
        ' Update ActionsAccess set ActionID = '#39'DataSetPost'#39' where ActionI' +
        'D IN( '#39'2004'#39','#39'3004'#39')'
      
        ' Update ActionsAccess set ActionID = '#39'LockOldYear'#39' where ActionI' +
        'D = '#39'2099'#39
      
        ' Update ActionsAccess set ActionID = '#39'ReceiveInsert'#39' where Actio' +
        'nID = '#39'1001'#39
      
        ' Update ActionsAccess set ActionID = '#39'SendInsert'#39' where ActionID' +
        ' = '#39'1002'#39
      ''
      'GO'
      'delete     ActionsAccess'
      'WHERE     (isnumeric( ActionID) = 1)'
      ''
      'GO'
      'execute insert_newActionsAccess'
      'GO'
      ''
      'CREATE NONCLUSTERED INDEX [IX_Actions_ID] ON [dbo].[Actions]'
      '('
      #9'[ID] ASC'
      ')'
      ''
      'GO'
      ''
      'ALTER TABLE dbo.ActionsAccess ADD CONSTRAINT'
      #9'PK_ActionsAccess PRIMARY KEY CLUSTERED'
      #9'('
      #9'AccessID,'
      #9'ActionID,'
      #9'FormTag'
      #9')'
      ''
      'GO'
      ''
      ''
      ''
      'update extention set extention='#39'doc'#39' where extentionid=3'
      ''
      ''
      'GO'
      ''
      'ALTER TABLE dbo.Settings  alter column VariableId int null'
      'go'
      'delete settings where'
      'VariableId in (27,50,101,107,'
      '108,109,110,111,207,208,209,311,411,512,701,709,723,724,725,730,'
      
        '741,761,762,763,764,1001,771,772,1002,1003,1007,1008,1009,1010,1' +
        '011,1012,1014,1015,1016,1017,1110,'
      '2000,2001,2005)'
      ''
      'delete settings where userid=-1 and variableID in (10,11,12,14)'
      ''
      ''
      ''
      
        'update settings set variablename='#39'ShowLetterCenterNoPanel'#39' where' +
        ' userid>=0 and variableID=1107'
      
        'update settings set variablename='#39'SelectedScanner'#39' where userid>' +
        '=0 and variableID=56'
      
        'update settings set variablename='#39'ConvertFaxToA4'#39' where userid>=' +
        '0 and variableID=77'
      
        'update settings set variablename='#39'IninitialSearchDate'#39' where use' +
        'rid>=0 and variableID=745'
      
        'update settings set variablename='#39'PrinterIndex'#39' where userid>=0 ' +
        'and variableID=2100'
      
        'update settings set variablename='#39'InsertSignInWord'#39' where userid' +
        '>=0 and variableID=746'
      
        'update settings set variablename='#39'AskValueForEmptyFieldInWordTem' +
        'plate'#39' where userid>=0 and variableID=747'
      
        'update settings set variablename='#39'DefaultEmailSubject'#39' where use' +
        'rid>=0 and variableID=2050'
      
        'update settings set variablename='#39'EmailSendHost'#39' where userid>=0' +
        ' and variableID=2051'
      
        'update settings set variablename='#39'EmailReciveHost'#39' where userid>' +
        '=0 and variableID=2055'
      
        'update settings set variablename='#39'EmailSendPort'#39' where userid>=0' +
        ' and variableID=2052'
      
        'update settings set variablename='#39'EmailRecivePort'#39' where userid>' +
        '=0 and variableID=2053'
      
        'update settings set variablename='#39'EmailEmailConTime'#39' where useri' +
        'd>=0 and variableID=2054'
      
        'update settings set variablename='#39'EmailReciveAddress'#39' where user' +
        'id>=0 and variableID=2056'
      
        'update settings set variablename='#39'EmailUserName'#39' where userid>=0' +
        ' and variableID=2057'
      
        'update settings set variablename='#39'EmailPassword'#39' where userid>=0' +
        ' and variableID=2058'
      
        'update settings set variablename='#39'EmailSSL'#39' where userid>=0 and ' +
        'variableID=2059'
      
        'update settings set variablename='#39'EmailAutenticationType'#39' where ' +
        'userid>=0 and variableID=2060'
      
        'update settings set variablename='#39'SkinFileName'#39' where userid>=0 ' +
        'and variableID=2070'
      
        'update settings set variablename='#39'MemoFont'#39' where userid>=0 and ' +
        'variableID=2007'
      
        'update settings set variablename='#39'FocusedColor'#39' where userid>=0 ' +
        'and variableID=1013'
      
        'update settings set variablename='#39'RootFromOrg'#39' where userid>=0 a' +
        'nd variableID=318'
      
        'update settings set variablename='#39'SubjectOrder'#39' where userid>=0 ' +
        'and variableID=627'
      
        'Update settings set variablename='#39'ArchiveList'#39' where userid>=0 a' +
        'nd variableID=626'
      
        'update settings set variablename='#39'Enterkey'#39' where userid>=0 and ' +
        'variableID=714'
      
        'update settings set variablename='#39'ShowSubjectCodeInTree'#39' where u' +
        'serid>=0 and variableID=726'
      
        'update settings set variablename='#39'ShowOriginalErrorMessage'#39' wher' +
        'e userid>=0 and variableID=715'
      
        'update settings set variablename='#39'InitialReceivedMode'#39' where use' +
        'rid>=0 and variableID=742'
      
        'update settings set variablename='#39'InitialArchiveMode '#39' where use' +
        'rid>=0 and variableID=743'
      
        'update settings set variablename='#39'InitialDisplyMode  '#39' where use' +
        'rid>=0 and variableID=744'
      
        'update settings set variablename='#39'DefaultProceed '#39' where userid>' +
        '=0 and variableID=1111'
      
        'update settings set variablename='#39'DefaultisCopy  '#39' where userid>' +
        '=0 and variableID=1112'
      
        'update settings set variablename='#39'DefaultInnerCopy'#39' where userid' +
        '>=0 and variableID=1113'
      
        'update settings set variablename='#39'ReciveIsCopy '#39' where userid>=0' +
        ' and variableID=1114'
      
        'update settings set variablename='#39'DefaultSClassificationID'#39' wher' +
        'e userid>=0 and variableID=202'
      
        'update settings set variablename='#39'DefaultSUrgencyID    '#39' where u' +
        'serid>=0 and variableID=203'
      
        'update settings set variablename='#39'DefaultSNumberOfAttachPages'#39' w' +
        'here userid>=0 and variableID=204'
      
        'update settings set variablename='#39'DefaultSNumberOfPage '#39' where u' +
        'serid>=0 and variableID=205'
      
        'update settings set variablename='#39'DefaultSReceiveTypeID'#39' where u' +
        'serid>=0 and variableID=206'
      
        'update settings set variablename='#39'DefaultSFromOrgId  '#39' where use' +
        'rid>=0 and variableID=213'
      
        'update settings set variablename='#39'DefualtSSigner     '#39' where use' +
        'rid>=0 and variableID=210'
      
        'update settings set variablename='#39'DefaultRClassificationID'#39' wher' +
        'e userid>=0 and variableID=102'
      
        'update settings set variablename='#39'DefaultRUrgencyID    '#39' where u' +
        'serid>=0 and variableID=103'
      
        'update settings set variablename='#39'DefaultRNumberOfAttachPages'#39' w' +
        'here userid>=0 and variableID=104'
      
        'update settings set variablename='#39'DefaultRNumberOfPage '#39' where u' +
        'serid>=0 and variableID=105'
      
        'update settings set variablename='#39'DefaultRReceiveTypeID'#39' where u' +
        'serid>=0 and variableID=106'
      
        'update settings set variablename='#39'DefaultRFromOrgId  '#39' where use' +
        'rid>=0 and variableID=113'
      
        'update settings set variablename='#39'ListFromorg'#39' where userid>=0 a' +
        'nd variableID=114'
      
        'update settings set variablename='#39'ChartOrderByTitle'#39' where useri' +
        'd>=0 and variableID=115'
      
        'update settings set variablename='#39'HasJpg'#39' where userid>=0 and va' +
        'riableID=25'
      
        'update settings set variablename='#39'ShowLetterPropertyPanel'#39' where' +
        ' userid>=0 and variableID=1004'
      
        'update settings set variablename='#39'ShowLetterAttachPanel'#39' where u' +
        'serid>=0 and variableID=1005'
      
        'update settings set variablename='#39'ShowLetterUserMemoPanel'#39' where' +
        ' userid>=0 and variableID=1006'
      ''
      
        'update settings set variablename='#39'DeadlineForRecommite'#39' where us' +
        'erid=-1 and variableID=1'
      
        'update settings set variablename='#39'MaxLetterToShow'#39' where userid=' +
        '-1 and variableID=2'
      
        'update settings set variablename='#39'BeginIndicator'#39' where userid=-' +
        '1 and variableID=3'
      
        'update settings set variablename='#39'EqualAnswerIndicator'#39' where us' +
        'erid=-1 and variableID=4'
      
        'update settings set variablename='#39'UniqeIndicator'#39' where userid=-' +
        '1 and variableID=5'
      
        'update settings set variablename='#39'InsertLog'#39' where userid=-1 and' +
        ' variableID=6'
      
        'update settings set variablename='#39'Version'#39' where userid=-1 and v' +
        'ariableID=7'
      
        'update settings set variablename='#39'DayInWeekForBackup '#39' where use' +
        'rid=-1 and variableID=8'
      
        'update settings set variablename='#39'FaxCartableOrgID'#39' where userid' +
        '=-1 and variableID=9'
      
        'update settings set variablename='#39'BackupMade'#39' where userid=-1 an' +
        'd variableID= 13'
      
        'update settings set variablename='#39'UserMemoDisplay'#39' where userid=' +
        '-1 and variableID=15'
      
        'update settings set variablename='#39'OrgName'#39' where userid=-1 and v' +
        'ariableID=16'
      
        'update settings set variablename='#39'FullTextSearch'#39' where userid=-' +
        '1 and variableID=17'
      
        'update settings set variablename='#39'LetterHasArchiveCopy'#39' where us' +
        'erid=-1 and variableID=18'
      
        'update settings set variablename='#39'BackupPath'#39' where userid=-1 an' +
        'd variableID=19'
      
        'update settings set variablename='#39'FaxExtention'#39' where userid=-1 ' +
        'and variableID=21'
      
        'update settings set variablename='#39'FaxDirectory'#39' where userid=-1 ' +
        'and variableID=22'
      
        'update settings set variablename='#39'FaxUpdate'#39' where userid=-1 and' +
        ' variableID=23'
      
        'update settings set variablename='#39'RelatedTableName'#39' where userid' +
        '=-1 and variableID=24'
      
        'update settings set variablename='#39'RelatedDisplayField'#39' where use' +
        'rid=-1 and variableID=25'
      
        'update settings set variablename='#39'RelatedIDField'#39' where userid=-' +
        '1 and variableID=26'
      
        'update settings set variablename='#39'RefreshPriodTime'#39' where userid' +
        '=-1 and variableID=28'
      
        'update settings set variablename='#39'AllowMultiUser'#39' where userid=-' +
        '1 and variableID=29'
      
        'update settings set variablename='#39'RecommiteCopy'#39' where userid=-1' +
        ' and variableID=30'
      
        'update settings set variablename='#39'UseTemplate'#39' where userid=-1 a' +
        'nd variableID=31'
      
        'update settings set variablename='#39'ShowFarsiCaption'#39' where userid' +
        '=-1 and variableID=33'
      
        'update settings set variablename='#39'ServerID'#39' where userid=-1 and ' +
        'variableID=34'
      
        'update settings set variablename='#39'LetterFormulaPart1'#39' where user' +
        'id=-1 and variableID=35'
      
        'update settings set variablename='#39'LetterFormulaPart2'#39' where user' +
        'id=-1 and variableID=36'
      
        'update settings set variablename='#39'LetterFormulaPart3'#39' where user' +
        'id=-1 and variableID=37'
      
        'update settings set variablename='#39'LetterFormulaPart4'#39' where user' +
        'id=-1 and variableID=38'
      
        'update settings set variablename='#39'LetterFormulaPart5'#39' where user' +
        'id=-1 and variableID=39'
      
        'update settings set variablename='#39'LetterFormulaPart6'#39' where user' +
        'id=-1 and variableID=40'
      
        'update settings set variablename='#39'ReplicatePriod'#39' where userid=-' +
        '1 and variableID=41'
      
        'update settings set variablename='#39'MaxReplicateAttachSize'#39' where ' +
        'userid=-1 and variableID=42'
      
        'update settings set variablename='#39'ShowLifeTips'#39' where userid=-1 ' +
        'and variableID=43'
      
        'update settings set variablename='#39'LetterFormulaSeperator'#39' where ' +
        'userid=-1 and variableID=44'
      
        'update settings set variablename='#39'HasReplicate'#39' where userid=-1 ' +
        'and variableID=45'
      
        'update settings set variablename='#39'EmailSubject'#39' Where userid=-1 ' +
        'and variableID=70'
      
        'update settings set variablename='#39'EmailSendHost'#39' where   userid=' +
        '-1 and variableID=71'
      
        'update settings set variablename='#39'EmailReciveHost'#39' where userid=' +
        '-1 and variableID=72'
      
        'update settings set variablename='#39'EmailSendPort'#39' where userid=-1' +
        ' and variableID=73'
      
        'update settings set variablename='#39'EmailRecivePort'#39' where userid=' +
        '-1 and variableID=74'
      
        'update settings set variablename='#39'EmailConTime'#39' where userid=-1 ' +
        'and variableID=75'
      
        'update settings set variablename='#39'EmailCoAddress'#39' where userid=-' +
        '1 and variableID=76'
      
        'update settings set variablename='#39'DefaultOrgPreCode'#39' where useri' +
        'd=-1 and variableID=77'
      
        'update settings set variablename='#39'FaxUpdatePriod'#39' where userid=-' +
        '1 and variableID=78'
      
        'update settings set variablename='#39'99'#39' where userid=-1 and variab' +
        'leID=99'
      ''
      
        'if exists (select * from syscolumns  where name='#39'description'#39' an' +
        'd id=object_id('#39'settings'#39'))'
      'begin'
      ''
      
        'if not exists(select * from settings where variablename ='#39'Defaul' +
        'tRecieverTitle'#39')'
      'INSERT INTO  Settings ([UserID]     ,[Value]  ,[VariableName])'
      
        'SELECT    UserID,  Description,   '#39'DefaultRecieverTitle'#39'+cast(Va' +
        'riableId-14 as char(1))'
      'FROM         Settings'
      'WHERE     VariableId between 15 and 18 and userid>0'
      ''
      
        'update settings set variablename='#39'DefaultReciever1'#39' where userid' +
        '>=0 and variableID=15'
      
        'update settings set variablename='#39'DefaultReciever2'#39' where userid' +
        '>=0 and variableID=16'
      
        'update settings set variablename='#39'DefaultReciever3'#39' where userid' +
        '>=0 and variableID=17'
      
        'update settings set variablename='#39'DefaultReciever4'#39' where userid' +
        '>=0 and variableID=18'
      ' alter table Settings drop column description'
      ' --alter table Settings drop column variableID'
      ' exec SetsystemValue '#39'RecommiteOtherAfterAssignNo'#39','#39'1'#39
      'end'
      ''
      ''
      'GO'
      '')
    ParentBiDiMode = False
    ReadOnly = True
    TabOrder = 6
  end
  object MemoTriggers: TMemo
    Left = 141
    Top = 343
    Width = 770
    Height = 89
    BiDiMode = bdLeftToRight
    Lines.Strings = (
      ''
      ''
      
        'if exists (select * from dbo.sysobjects where id = object_id(N'#39'[' +
        'dbo].[Tr_Ins_ArchiveFolder]'#39') and OBJECTPROPERTY(id, N'#39'IsTrigger' +
        #39') = 1)'
      'drop trigger [dbo].[Tr_Ins_ArchiveFolder]'
      'GO'
      ''
      
        'if exists (select * from dbo.sysobjects where id = object_id(N'#39'[' +
        'dbo].[Tr_Del_News]'#39') and OBJECTPROPERTY(id, N'#39'IsTrigger'#39') = 1)'
      'drop trigger [dbo].[Tr_Del_News]'
      'GO'
      ''
      
        'if exists (select * from dbo.sysobjects where id = object_id(N'#39'[' +
        'dbo].[Tr_Del_NewsGroupUsers]'#39') and OBJECTPROPERTY(id, N'#39'IsTrigge' +
        'r'#39') = 1)'
      'drop trigger [dbo].[Tr_Del_NewsGroupUsers]'
      'GO'
      ''
      
        'if exists (select * from dbo.sysobjects where id = object_id(N'#39'[' +
        'dbo].[Update_LetterRecommites]'#39') and OBJECTPROPERTY(id, N'#39'IsTrig' +
        'ger'#39') = 1)'
      'drop trigger [dbo].[Update_LetterRecommites]'
      'GO'
      ''
      
        'if exists (select * from dbo.sysobjects where id = object_id(N'#39'[' +
        'dbo].[Tr_NotDel_SendStatus]'#39') and OBJECTPROPERTY(id, N'#39'IsTrigger' +
        #39') = 1)'
      'drop trigger [dbo].[Tr_NotDel_SendStatus]'
      'GO'
      ''
      
        'if exists (select * from dbo.sysobjects where id = object_id(N'#39'[' +
        'dbo].[Delete_Users]'#39') and OBJECTPROPERTY(id, N'#39'IsTrigger'#39') = 1)'
      'drop trigger [dbo].[Delete_Users]'
      'GO'
      ''
      
        'if exists (select * from dbo.sysobjects where id = object_id(N'#39'[' +
        'dbo].[Tr_Del_Users]'#39') and OBJECTPROPERTY(id, N'#39'IsTrigger'#39') = 1)'
      'drop trigger [dbo].[Tr_Del_Users]'
      'GO'
      ''
      
        'if exists (select * from dbo.sysobjects where id = object_id(N'#39'[' +
        'dbo].[user_ins]'#39') and OBJECTPROPERTY(id, N'#39'IsTrigger'#39') = 1)'
      'drop trigger [dbo].[user_ins]'
      'GO'
      ''
      
        'if exists (select * from dbo.sysobjects where id = object_id(N'#39'[' +
        'dbo].[Tr_Del_WorkGroupOrg]'#39') and OBJECTPROPERTY(id, N'#39'IsTrigger'#39 +
        ') = 1)'
      'drop trigger [dbo].[Tr_Del_WorkGroupOrg]'
      'GO'
      ''
      
        'Create Trigger [dbo].[Tr_Ins_ArchiveFolder] on [dbo].[ArchiveFol' +
        'der]'
      'After Insert'
      'As'
      'Declare @ArchiveFolderID int'
      'Declare @UserID int'
      'Select Top 1 @ArchiveFolderID = FolderID , @UserID = UserID'
      'From Inserted'
      ''
      
        'Delete from UserAccArchive Where ArchiveFolderID = @ArchiveFolde' +
        'rID'
      ''
      
        'Insert into UserAccArchive(SecID,UserID,ArchiveFolderID,ISAccess' +
        ')'
      'Select US.SecID , US.UserID  , @ArchiveFolderID , 1'
      'from UserSecretariats US , Secretariats S ,Users U'
      'Where US.SecID = S.SecID'
      '  And US.UserID = U.ID and u.id=@UserID'
      'Order By US.SecID , US.UserID'
      'GO'
      ''
      ''
      'Create Trigger Tr_Del_News'
      'ON dbo.News'
      'for Delete'
      'As'
      '  Set nocount on'
      '  Declare @DeleteID int'
      '  Select @DeleteID = NewsID From Deleted'
      
        '  --if Exists(Select * from ImageData Where(TableName = '#39'News'#39')A' +
        'nd(TableID = @DeleteID))'
      
        '  Delete From ImageData Where(TableName = '#39'News'#39')And(TableID = @' +
        'DeleteID)'
      '  Delete From NewsUsers Where(NewsID = @DeleteID)'
      '  Set nocount Off'
      'GO'
      ''
      ''
      ''
      'Create TRIGGER Tr_Del_NewsGroupUsers '
      'ON NewsGroup '
      'For DELETE '
      'AS'
      'Set nocount on'
      'Declare @DeleteID Int'
      'Select top 1 @DeleteID = NewsGroupID From Deleted'
      
        'if Exists(Select * from NewsGroupUsers Where(NewsGroupID = @Dele' +
        'teID ))'
      '   Delete From NewsGroupUsers Where(NewsGroupID = @DeleteID)'
      'Set nocount off '
      'GO'
      ''
      ''
      'CREATE TRIGGER Update_LetterRecommites ON dbo.ReCommites '
      'FOR INSERT, UPDATE, DELETE'
      'AS'
      
        'declare @Letterid int,@actionTypeID tinyint ,@Paraph nvarchar(50' +
        '0)'
      ''
      ''
      'SELECT    @letterid=LetterID  ,@actionTypeID=actionTypeID'
      'FROM         inserted'
      ''
      'if @letterid is null'
      'SELECT    @letterid=LetterID'
      'FROM        deleted'
      ''
      'select top 1 @paraph=isnull(Paraph,'#39#39') '
      'from Recommites'
      'where letterid=@Letterid'
      'order by recommitedate desc ,recommiteid desc '
      ''
      ''
      'UPDATE    Letter'
      
        'SET    LetterRecommites =CAST(dbo.Recommites_by_indicator(Letter' +
        'ID)+'#39
      #1570#1582#1585#1610#1606' '#1662#1575#1585#1575#1601': '#39'+@paraph AS NVARCHAR(500))'
      ' ,latestActionTypeid=@actionTypeID'
      'where Letterid=@letterid'
      ''
      'GO'
      ''
      ''
      'CREATE Trigger Tr_NotDel_SendStatus'
      'On SendStatus'
      'instead of Delete'
      'As'
      '  Select * from SendStatus'
      
        '  --RaisError('#39'(Trigger) '#1608#1580#1608#1583' '#1606#1583#1575#1585#1583' SendStatus '#1575#1605#1603#1575#1606' '#1581#1584#1601' '#1575#1586' '#1580#1583#1608#1604 +
        ' '#39', 16, 1)'
      'GO'
      ''
      ''
      ''
      ''
      ''
      ''
      ''
      'CREATE TRIGGER [Delete_Users] ON dbo.Users'
      'FOR  DELETE'
      'AS'
      'set nocount on'
      'declare  @ui int'
      'select @ui=id from deleted'
      'if @ui<>0'
      'delete from settings'
      'where userid=@ui'
      ''
      'delete'
      'FROM         UserSecretariats'
      'where userid=@ui'
      ''
      ''
      'delete'
      'FROM         UserTemplateGroup'
      'where userid=@ui'
      ''
      'delete'
      'FROM         UserExtention'
      'where userid=@ui'
      'GO'
      ''
      ''
      'Create Trigger Tr_Del_Users'
      'On dbo.Users'
      'for Delete'
      'As'
      '  Delete From UserAccArchive'
      '  Where UserID = (Select Top 1 ID from Deleted)'
      ''
      ''
      'GO'
      'CREATE TRIGGER [user_ins] ON dbo.Users'
      'FOR INSERT'
      'AS'
      'set nocount on'
      'declare  @ui int,@defSec int '
      'select @ui=id,@defSec= DefualtSecretariatID from inserted'
      ''
      ''
      'delete from settings'
      'where userid=@ui'
      ''
      ''
      'insert into settings(userid,VariableName,Value)'
      'SELECT @ui, VariableName, Value '
      'FROM Settings'
      'where userid=0'
      ''
      'delete'
      'FROM         UserTemplateGroup'
      'where userid=@ui'
      'insert into     UserTemplateGroup'
      'select @ui,TemplateGroupID'
      'from TemplateGroup'
      ''
      ''
      ''
      'delete'
      'FROM         UserSecretariats'
      'where userid=@ui'
      'insert into     UserSecretariats'
      'values(@ui,@defSec)'
      ''
      ''
      'delete'
      'FROM         UserExtention'
      'where userid=@ui'
      ''
      'insert into     UserExtention'
      '(userid,extentionid)'
      ''
      'select @ui,extentionid'
      'from extention'
      ''
      'if not exists (select * from ArchiveFolder where userid=@ui)'
      
        ' INSERT INTO ArchiveFolder ( ParentFolderID , Title , UserID) va' +
        'lues( 0 ,'#39#1576#1575#1610#1711#1575#1606#1610#39' ,@ui)'
      'set nocount off'
      ''
      ''
      'GO'
      ''
      'CREATE TRIGGER Tr_Del_WorkGroupOrg ON WorkGroup '
      'FOR DELETE '
      'AS'
      'Declare @DeleteID Int'
      'Select @DeleteID = WorkGroupID From Deleted'
      ''
      
        'if Exists(Select * from WorkGroupOrg Where(WorkGroupID = @Delete' +
        'ID ))'
      '   Delete From WorkGroupOrg'
      '   Where(WorkGroupID = @DeleteID)  '
      ''
      ''
      ''
      ''
      'GO')
    ParentBiDiMode = False
    ReadOnly = True
    TabOrder = 7
  end
  object MemoIndexes: TMemo
    Left = 200
    Top = 405
    Width = 770
    Height = 89
    BiDiMode = bdLeftToRight
    Lines.Strings = (
      ''
      
        'if not Exists(Select * from Sysindexes Where(Name like  '#39'PK%'#39')An' +
        'd(ID =object_id('#39'Accesses'#39')) )  '
      'ALTER TABLE dbo.Accesses WITH NOCHECK ADD CONSTRAINT  '
      #9'PK_Accesses PRIMARY KEY CLUSTERED '
      #9'('
      #9'ID'
      #9') ON [PRIMARY]'
      ''
      'GO'
      ''
      
        'if not Exists(Select * from Sysindexes Where(Name like  '#39'PK%'#39')An' +
        'd(ID =object_Id('#39'Tables'#39')) )  '
      'ALTER TABLE dbo.Tables WITH NOCHECK ADD CONSTRAINT  '
      #9'PK_Tables PRIMARY KEY CLUSTERED '
      #9'('
      #9'TableId'
      #9') ON [PRIMARY]'
      ''
      'GO'
      ''
      ''
      ''
      
        'if not Exists(Select * from Sysindexes Where(Name like  '#39'PK%'#39')An' +
        'd(ID =object_Id('#39'Letter'#39')) )'
      'ALTER TABLE dbo.Letter ADD CONSTRAINT'
      #9'PK_Letter PRIMARY KEY CLUSTERED '
      #9'('
      #9'LetterID'
      #9') ON [PRIMARY]'
      ''
      ''
      'GO'
      ''
      
        'if not Exists(Select * from Sysindexes Where(Name like  '#39'pk%'#39')An' +
        'd(ID =object_Id('#39'Urgenceis'#39')) )  '
      'ALTER TABLE dbo.Urgenceis WITH NOCHECK ADD CONSTRAINT  '
      #9'PK_Urgenceis PRIMARY KEY CLUSTERED '
      #9'('
      #9'ID'
      #9') WITH FILLFACTOR = 90 ON [PRIMARY]'
      ''
      'GO'
      ''
      
        'if not Exists(Select * from Sysindexes Where(Name like  '#39'PK%'#39')An' +
        'd(ID =object_Id('#39'Secretariats'#39')) )  '
      'ALTER TABLE dbo.Secretariats WITH NOCHECK ADD CONSTRAINT  '
      #9'PK_Secretariats PRIMARY KEY CLUSTERED '
      #9'('
      #9'SecID'
      #9') WITH FILLFACTOR = 90 ON [PRIMARY]'
      ''
      'GO'
      ' '
      ' '
      ''
      
        'if not Exists(Select * from Sysindexes Where(name like  '#39'PK%'#39')An' +
        'd(ID =object_Id('#39'WorkGroupOrg'#39')) )  --Ranjbar'
      'ALTER TABLE dbo.WorkGroupOrg WITH NOCHECK ADD CONSTRAINT  '
      #9'PK_WorkGroupOrg PRIMARY KEY CLUSTERED '
      #9'('
      #9'WorkGroupOrgID'
      #9') ON [PRIMARY]'
      ''
      'GO'
      ''
      ''
      
        'if not Exists(Select * from Sysindexes Where(name like  '#39'PK%'#39')An' +
        'd(ID =object_Id('#39'RecommiteData'#39')) )  --Ranjbar'
      'ALTER TABLE dbo.RecommiteData WITH NOCHECK ADD CONSTRAINT  '
      #9'PK_RecommiteData_RecommiteDataID PRIMARY KEY CLUSTERED '
      #9'('
      #9'RecommiteDataID'
      #9') ON [PRIMARY]'
      ''
      'GO'
      ''
      ' '
      ' '
      
        'if not exists ( select * from sysindexes where name ='#39'userShortC' +
        'ut_user_idx'#39')'
      
        ' CREATE  CLUSTERED  INDEX [userShortCut_user_idx] ON [dbo].[User' +
        'ShortCut]([UserID]) ON [PRIMARY]'
      'GO'
      ''
      
        'if not exists ( select * from sysindexes where name ='#39'IX_Actions' +
        '_ID'#39')'
      
        '   CREATE  INDEX [IX_Actions_ID] ON [dbo].[Actions]([ID]) ON [PR' +
        'IMARY]'
      'GO'
      ''
      
        'if not exists ( select * from sysindexes where name ='#39'IX_Applica' +
        'tionForms_ID'#39')   '
      
        '   CREATE  INDEX [IX_ApplicationForms_ID] ON [dbo].[ApplicationF' +
        'orms]([ID]) ON [PRIMARY]'
      'GO'
      ''
      
        'if not exists ( select * from sysindexes where name ='#39'IX_Archive' +
        'Folder_ParentFolderID'#39')     '
      
        ' CREATE  INDEX [IX_ArchiveFolder_ParentFolderID] ON [dbo].[Archi' +
        'veFolder]([ParentFolderID]) ON [PRIMARY]'
      'GO'
      ''
      
        'if not exists ( select * from sysindexes where name ='#39'IX_Archive' +
        'Folder_Title'#39')    '
      
        '  CREATE  INDEX [IX_ArchiveFolder_Title] ON [dbo].[ArchiveFolder' +
        ']([Title]) ON [PRIMARY]'
      'GO'
      ''
      
        'if not exists ( select * from sysindexes where name ='#39'IX_Archive' +
        'Folder_UserID'#39')   '
      
        '   CREATE  INDEX [IX_ArchiveFolder_UserID] ON [dbo].[ArchiveFold' +
        'er]([UserID]) ON [PRIMARY]'
      'GO'
      ''
      
        'if not exists ( select * from sysindexes where name ='#39'IX_ErrorMe' +
        'ssage_ErrorMessage'#39')   '
      
        '   CREATE  INDEX [IX_ErrorMessage_ErrorMessage] ON [dbo].[ErrorM' +
        'essage]([ErrorMessage]) ON [PRIMARY]'
      'GO'
      ''
      
        'if not exists ( select * from sysindexes where name ='#39'IX_ErrorMe' +
        'ssage_FarsiMessage'#39')    '
      
        '  CREATE  INDEX [IX_ErrorMessage_FarsiMessage] ON [dbo].[ErrorMe' +
        'ssage]([FarsiMessage]) ON [PRIMARY]'
      'GO'
      ''
      
        'if not exists ( select * from sysindexes where name ='#39'IX_FieldAc' +
        'cess_FieldID'#39')   '
      
        '   CREATE  INDEX [IX_FieldAccess_FieldID] ON [dbo].[FieldAccess]' +
        '([FieldID]) ON [PRIMARY]'
      'GO'
      ''
      
        'if not exists ( select * from sysindexes where name ='#39'IX_FieldAc' +
        'cess_UserID'#39')    '
      
        '  CREATE  INDEX [IX_FieldAccess_UserID] ON [dbo].[FieldAccess]([' +
        'UserID]) ON [PRIMARY]'
      'GO'
      ''
      
        'if not exists ( select * from sysindexes where name ='#39'IX_FieldAc' +
        'cess_AccessTypeID'#39')   '
      
        '   CREATE  INDEX [IX_FieldAccess_AccessTypeID] ON [dbo].[FieldAc' +
        'cess]([AccessTypeID]) ON [PRIMARY]'
      'GO'
      ''
      
        'if not exists ( select * from sysindexes where name ='#39'IX_Fields_' +
        'TableID'#39')    '
      
        '  CREATE  INDEX [IX_Fields_TableID] ON [dbo].[Fields]([TableID])' +
        ' ON [PRIMARY]'
      'GO'
      ''
      
        'if not exists ( select * from sysindexes where name ='#39'IX_Fields_' +
        'FieldName'#39')    '
      
        '  CREATE  INDEX [IX_Fields_FieldName] ON [dbo].[Fields]([FieldNa' +
        'me]) ON [PRIMARY]'
      'GO'
      ''
      
        'if not exists ( select * from sysindexes where name ='#39'IX_Fields_' +
        'FieldGroupID'#39')   '
      
        '   CREATE  INDEX [IX_Fields_FieldGroupID] ON [dbo].[Fields]([Fie' +
        'ldGroupID]) ON [PRIMARY]'
      'GO'
      ''
      
        'if not exists ( select * from sysindexes where name ='#39'IX_Fields_' +
        'FieldTypeID'#39')    '
      
        '  CREATE  INDEX [IX_Fields_FieldTypeID] ON [dbo].[Fields]([Field' +
        'TypeID]) ON [PRIMARY]'
      'GO'
      ''
      ''
      
        'if not exists ( select * from sysindexes where name ='#39'IX_Fields_' +
        'ReferenceTableID'#39')    '
      
        '  CREATE  INDEX [IX_Fields_ReferenceTableID] ON [dbo].[Fields]([' +
        'ReferenceTableID]) ON [PRIMARY]'
      'GO'
      ''
      
        'if not exists ( select * from sysindexes where name ='#39'IX_FollowU' +
        'p_StartFollowUpID'#39')    '
      
        '  CREATE  INDEX [IX_FollowUp_StartFollowUpID] ON [dbo].[FollowUp' +
        ']([StartFollowUpID]) ON [PRIMARY]'
      'GO'
      ''
      
        'if not exists ( select * from sysindexes where name ='#39'IX_FollowU' +
        'p_FollowUPTypeID'#39')   '
      
        '   CREATE  INDEX [IX_FollowUp_FollowUPTypeID] ON [dbo].[FollowUp' +
        ']([FollowUPTypeID]) ON [PRIMARY]'
      'GO'
      ''
      
        'if not exists ( select * from sysindexes where name ='#39'IX_FollowU' +
        'p_DoneStatusID'#39')    '
      
        '  CREATE  INDEX [IX_FollowUp_DoneStatusID] ON [dbo].[FollowUp]([' +
        'DoneStatusID]) ON [PRIMARY]'
      'GO'
      ''
      
        'if not exists ( select * from sysindexes where name ='#39'IX_FollowU' +
        'p_UserID'#39')    '
      
        '  CREATE  INDEX [IX_FollowUp_UserID] ON [dbo].[FollowUp]([UserID' +
        ']) ON [PRIMARY]'
      'GO'
      ''
      
        'if not exists ( select * from sysindexes where name ='#39'IX_FollowU' +
        'p_Letterid'#39')   '
      
        '   CREATE  INDEX [IX_FollowUp_Letterid] ON [dbo].[FollowUp]([Let' +
        'terid]) ON [PRIMARY]'
      'GO'
      ''
      ''
      
        'if not exists ( select * from sysindexes where name ='#39'IX_FromOrg' +
        'anizations_Title'#39')   '
      
        '   CREATE  INDEX [IX_FromOrganizations_Title] ON [dbo].[FromOrga' +
        'nizations]([Title]) ON [PRIMARY]'
      'GO'
      ''
      
        'if not exists ( select * from sysindexes where name ='#39'IX_FromOrg' +
        'anizations_ParentID'#39')    '
      
        '  CREATE  INDEX [IX_FromOrganizations_ParentID] ON [dbo].[FromOr' +
        'ganizations]([ParentID]) ON [PRIMARY]'
      'GO'
      ''
      
        'if not exists ( select * from sysindexes where name ='#39'IX_FromOrg' +
        'anizations'#39')     '
      
        ' CREATE  INDEX [IX_FromOrganizations] ON [dbo].[FromOrganization' +
        's]([Code]) ON [PRIMARY]'
      'GO'
      ''
      
        'if not exists ( select * from sysindexes where name ='#39'ind_idx'#39') ' +
        '   '
      
        '  CREATE  INDEX [ind_idx] ON [dbo].[Letter]([IndicatorID]) ON [P' +
        'RIMARY]'
      'GO'
      ''
      
        'if not exists ( select * from sysindexes where name ='#39'letter_idx' +
        #39')   '
      
        '   CREATE  INDEX [letter_idx] ON [dbo].[Letter]([SecretariatID],' +
        ' [Letter_Type], [MYear], [letterformat], [IndicatorID]) ON [PRIM' +
        'ARY]'
      'GO'
      ''
      
        'if not exists ( select * from sysindexes where name ='#39'myear_idx'#39 +
        ')    '
      
        '  CREATE  INDEX [myear_idx] ON [dbo].[Letter]([MYear]) ON [PRIMA' +
        'RY]'
      'GO'
      ''
      
        'if not exists ( select * from sysindexes where name ='#39'secid_idx'#39 +
        ')    '
      
        '  CREATE  INDEX [secid_idx] ON [dbo].[Letter]([SecretariatID]) O' +
        'N [PRIMARY]'
      'GO'
      ''
      ''
      
        'if not exists ( select * from sysindexes where name ='#39'letter_typ' +
        'e_idx'#39')     '
      
        ' CREATE  INDEX [letter_type_idx] ON [dbo].[Letter]([Letter_Type]' +
        ') ON [PRIMARY]'
      'GO'
      ''
      
        'if not exists ( select * from sysindexes where name ='#39'letterform' +
        'at_idx'#39')     '
      
        ' CREATE  INDEX [letterformat_idx] ON [dbo].[Letter]([letterforma' +
        't]) ON [PRIMARY]'
      'GO'
      ''
      
        'if not exists ( select * from sysindexes where name ='#39'incommingn' +
        'o_idx'#39')  '
      
        '    CREATE  INDEX [incommingno_idx] ON [dbo].[Letter]([Incomming' +
        'NO]) ON [PRIMARY]'
      'GO'
      ''
      
        'if not exists ( select * from sysindexes where name ='#39'registrati' +
        'ondate_idx'#39')   '
      
        '   CREATE  INDEX [registrationdate_idx] ON [dbo].[Letter]([Regis' +
        'trationDate]) ON [PRIMARY]'
      'GO'
      ''
      
        'if not exists ( select * from sysindexes where name ='#39'fromorgid_' +
        'idx'#39')    '
      
        '  CREATE  INDEX [fromorgid_idx] ON [dbo].[Letter]([FromOrgID]) O' +
        'N [PRIMARY]'
      'GO'
      ''
      
        'if not exists ( select * from sysindexes where name ='#39'ToOrgid_id' +
        'x'#39')   '
      
        '   CREATE  INDEX [ToOrgid_idx] ON [dbo].[Letter]([ToOrgID]) ON [' +
        'PRIMARY]'
      'GO'
      
        'if not exists ( select * from sysindexes where name ='#39'Letter_IDX' +
        '_Indicator'#39')'
      
        ' CREATE  UNIQUE  INDEX [Letter_IDX_Indicator] ON [dbo].[Letter](' +
        '[IndicatorID], [MYear], [SecretariatID], [Letter_Type], [letterf' +
        'ormat]) ON [PRIMARY]'
      'GO'
      ''
      
        'if not exists ( select * from sysindexes where name ='#39'IX_Letter_' +
        'IndicatorID'#39')    '
      
        '  CREATE  INDEX [IX_Letter_IndicatorID] ON [dbo].[Letter]([Indic' +
        'atorID]) ON [PRIMARY]'
      'GO'
      ''
      
        'if not exists ( select * from sysindexes where name ='#39'IX_Letter_' +
        'Letter_Type'#39')   '
      
        '   CREATE  INDEX [IX_Letter_Letter_Type] ON [dbo].[Letter]([Lett' +
        'er_Type]) ON [PRIMARY]'
      'GO'
      ''
      
        'if not exists ( select * from sysindexes where name ='#39'IX_Letter_' +
        'letterformat'#39')   '
      
        '   CREATE  INDEX [IX_Letter_letterformat] ON [dbo].[Letter]([let' +
        'terformat]) ON [PRIMARY]'
      'GO'
      ''
      
        'if not exists ( select * from sysindexes where name ='#39'IX_Letter_' +
        'IncommingNO'#39')    '
      
        '  CREATE  INDEX [IX_Letter_IncommingNO] ON [dbo].[Letter]([Incom' +
        'mingNO]) ON [PRIMARY]'
      'GO'
      ''
      
        'if not exists ( select * from sysindexes where name ='#39'IX_Letter_' +
        'FromOrgID'#39')    '
      
        '  CREATE  INDEX [IX_Letter_FromOrgID] ON [dbo].[Letter]([FromOrg' +
        'ID]) ON [PRIMARY]'
      'GO'
      ''
      
        'if not exists ( select * from sysindexes where name ='#39'IX_Letter_' +
        'ToOrgID'#39')   '
      
        '   CREATE  INDEX [IX_Letter_ToOrgID] ON [dbo].[Letter]([ToOrgID]' +
        ') ON [PRIMARY]'
      'GO'
      ''
      
        'if not exists ( select * from sysindexes where name ='#39'IX_Letter_' +
        'Signerid'#39')     '
      
        ' CREATE  INDEX [IX_Letter_Signerid] ON [dbo].[Letter]([Signerid]' +
        ') ON [PRIMARY]'
      'GO'
      ''
      
        'if not exists ( select * from sysindexes where name ='#39'IX_Letter_' +
        'ClassificationID'#39')    '
      
        '  CREATE  INDEX [IX_Letter_ClassificationID] ON [dbo].[Letter]([' +
        'ClassificationID]) ON [PRIMARY]'
      'GO'
      ''
      
        'if not exists ( select * from sysindexes where name ='#39'IX_Letter_' +
        'UrgencyID'#39')    '
      
        '  CREATE  INDEX [IX_Letter_UrgencyID] ON [dbo].[Letter]([Urgency' +
        'ID]) ON [PRIMARY]'
      'GO'
      ''
      
        'if not exists ( select * from sysindexes where name ='#39'IX_Letter_' +
        'UserID'#39')   '
      
        '   CREATE  INDEX [IX_Letter_UserID] ON [dbo].[Letter]([UserID]) ' +
        'ON [PRIMARY]'
      'GO'
      ''
      
        'if not exists ( select * from sysindexes where name ='#39'IX_Letter_' +
        'MYear'#39')   '
      
        '   CREATE  INDEX [IX_Letter_MYear] ON [dbo].[Letter]([MYear]) ON' +
        ' [PRIMARY]'
      'GO'
      ''
      
        'if not exists ( select * from sysindexes where name ='#39'IX_Letter_' +
        'RegistrationDate'#39')    '
      
        '  CREATE  INDEX [IX_Letter_RegistrationDate] ON [dbo].[Letter]([' +
        'RegistrationDate]) ON [PRIMARY]'
      'GO'
      ''
      
        'if not exists ( select * from sysindexes where name ='#39'IX_Letter_' +
        'SecretariatID'#39')    '
      
        '  CREATE  INDEX [IX_Letter_SecretariatID] ON [dbo].[Letter]([Sec' +
        'retariatID]) ON [PRIMARY]'
      'GO'
      ''
      
        'if not exists ( select * from sysindexes where name ='#39'Letterarch' +
        'ive_Folder_idx'#39')   '
      
        '   CREATE  INDEX [Letterarchive_Folder_idx] ON [dbo].[LetterArch' +
        'iveFolder]([ArchiveFolderID]) ON [PRIMARY]'
      'GO'
      ''
      
        'if not exists ( select * from sysindexes where name ='#39'Letterarch' +
        'ive_Letter_Folder_idx'#39')   '
      
        '   CREATE  INDEX [Letterarchive_Letter_Folder_idx] ON [dbo].[Let' +
        'terArchiveFolder]([ArchiveFolderID], [LetterID]) ON [PRIMARY]'
      'GO'
      ''
      
        'if not exists ( select * from sysindexes where name ='#39'Letterarch' +
        'ive_Letter_idx'#39')   '
      
        '   CREATE  INDEX [Letterarchive_Letter_idx] ON [dbo].[LetterArch' +
        'iveFolder]([LetterID]) ON [PRIMARY]'
      'GO'
      ''
      
        'if not exists ( select * from sysindexes where name ='#39'IX_LetterA' +
        'rchiveFolder_ArchiveFolderID'#39')'
      
        '      CREATE  INDEX [IX_LetterArchiveFolder_ArchiveFolderID] ON ' +
        '[dbo].[LetterArchiveFolder]([ArchiveFolderID]) ON [PRIMARY]'
      'GO'
      ''
      
        'if not exists ( select * from sysindexes where name ='#39'IX_LetterA' +
        'rchiveFolder_LetterID'#39')   '
      
        '   CREATE  INDEX [IX_LetterArchiveFolder_LetterID] ON [dbo].[Let' +
        'terArchiveFolder]([LetterID]) ON [PRIMARY]'
      'GO'
      ''
      
        'if not exists ( select * from sysindexes where name ='#39'IX_LetterA' +
        'rchiveFolder_UserID'#39')    '
      
        '  CREATE  INDEX [IX_LetterArchiveFolder_UserID] ON [dbo].[Letter' +
        'ArchiveFolder]([UserID]) ON [PRIMARY]'
      'GO'
      ''
      
        'if not exists ( select * from sysindexes where name ='#39'IX_LetterD' +
        'ata_LetterID'#39')  '
      
        '    CREATE  INDEX [IX_LetterData_LetterID] ON [dbo].[LetterData]' +
        '([LetterID]) ON [PRIMARY]'
      'GO'
      ''
      
        'if not exists ( select * from sysindexes where name ='#39'IX_LetterD' +
        'ata_extention'#39')   '
      
        '   CREATE  INDEX [IX_LetterData_extention] ON [dbo].[LetterData]' +
        '([extention]) ON [PRIMARY]'
      'GO'
      ''
      
        'if not exists ( select * from sysindexes where name ='#39'IX_LetterF' +
        'ieldValue_LetterID'#39')    '
      
        '  CREATE  INDEX [IX_LetterFieldValue_LetterID] ON [dbo].[LetterF' +
        'ieldValue]([LetterID]) ON [PRIMARY]'
      'GO'
      ''
      
        'if not exists ( select * from sysindexes where name ='#39'IX_LetterF' +
        'ieldValue_FieldID'#39')    '
      
        '  CREATE  INDEX [IX_LetterFieldValue_FieldID] ON [dbo].[LetterFi' +
        'eldValue]([FieldID]) ON [PRIMARY]'
      'GO'
      ''
      
        'if not exists ( select * from sysindexes where name ='#39'IX_LetterF' +
        'ieldValue_InsertUserID'#39')   '
      
        '   CREATE  INDEX [IX_LetterFieldValue_InsertUserID] ON [dbo].[Le' +
        'tterFieldValue]([InsertUserID]) ON [PRIMARY]'
      'GO'
      ''
      
        'if not exists ( select * from sysindexes where name ='#39'IX_LetterT' +
        'emplate_Title'#39')   '
      
        '   CREATE  INDEX [IX_LetterTemplate_Title] ON [dbo].[LetterTempl' +
        'ate]([Title]) ON [PRIMARY]'
      'GO'
      ''
      
        'if not exists ( select * from sysindexes where name ='#39'IX_LetterT' +
        'ext_LetterID'#39')    '
      
        '  CREATE  INDEX [IX_LetterText_LetterID] ON [dbo].[LetterText]([' +
        'LetterID]) ON [PRIMARY]'
      'GO'
      ''
      
        'if not exists ( select * from sysindexes where name ='#39'IX_LetterT' +
        'ext_LetterFormat'#39')   '
      
        '   CREATE  INDEX [IX_LetterText_LetterFormat] ON [dbo].[LetterTe' +
        'xt]([LetterFormat]) ON [PRIMARY]'
      'GO'
      ''
      
        'if not exists ( select * from sysindexes where name ='#39'IX_ListIte' +
        'ms_ListID'#39')   '
      
        '   CREATE  INDEX [IX_ListItems_ListID] ON [dbo].[ListItems]([Lis' +
        'tID]) ON [PRIMARY]'
      'GO'
      ''
      
        'if not exists ( select * from sysindexes where name ='#39'IX_ParaphT' +
        'emplate_UserID'#39')    '
      
        '  CREATE  INDEX [IX_ParaphTemplate_UserID] ON [dbo].[ParaphTempl' +
        'ate]([UserID]) ON [PRIMARY]'
      'GO'
      ''
      
        'if not exists ( select * from sysindexes where name ='#39'IX_ParaphT' +
        'emplate_OrderID'#39')    '
      
        '  CREATE  INDEX [IX_ParaphTemplate_OrderID] ON [dbo].[ParaphTemp' +
        'late]([OrderID]) ON [PRIMARY]'
      'GO'
      ''
      
        'if not exists ( select * from sysindexes where name ='#39'IX_ParaphT' +
        'emplate_Title'#39')     '
      
        ' CREATE  INDEX [IX_ParaphTemplate_Title] ON [dbo].[ParaphTemplat' +
        'e]([Title]) ON [PRIMARY]'
      'GO'
      ''
      
        'if not exists ( select * from sysindexes where name ='#39'recommite_' +
        'idx'#39')   '
      
        '   CREATE  INDEX [recommite_idx] ON [dbo].[ReCommites]([LetterID' +
        '], [ID], [Type], [ParentId], [OrgID]) ON [PRIMARY]'
      'GO'
      ''
      
        'if not exists ( select * from sysindexes where name ='#39'IX_ReCommi' +
        'tes_LetterID'#39') '
      
        '     CREATE  INDEX [IX_ReCommites_LetterID] ON [dbo].[ReCommites' +
        ']([LetterID]) ON [PRIMARY]'
      'GO'
      ''
      
        'if not exists ( select * from sysindexes where name ='#39'IX_ReCommi' +
        'tes_ID'#39')   '
      
        '   CREATE  INDEX [IX_ReCommites_ID] ON [dbo].[ReCommites]([ID]) ' +
        'ON [PRIMARY]'
      'GO'
      ''
      
        'if not exists ( select * from sysindexes where name ='#39'IX_ReCommi' +
        'tes_ParentId'#39')  '
      
        '    CREATE  INDEX [IX_ReCommites_ParentId] ON [dbo].[ReCommites]' +
        '([ParentId]) ON [PRIMARY]'
      'GO'
      ''
      
        'if not exists ( select * from sysindexes where name ='#39'IX_ReCommi' +
        'tes_OrgID'#39')  '
      
        '    CREATE  INDEX [IX_ReCommites_OrgID] ON [dbo].[ReCommites]([O' +
        'rgID]) ON [PRIMARY]'
      'GO'
      ''
      
        'if not exists ( select * from sysindexes where name ='#39'IX_ReCommi' +
        'tes_UserID'#39')  '
      
        '    CREATE  INDEX [IX_ReCommites_UserID] ON [dbo].[ReCommites]([' +
        'UserID]) ON [PRIMARY]'
      'GO'
      ''
      
        'if not exists ( select * from sysindexes where name ='#39'IX_ReCommi' +
        'tes_DeadLineDate'#39')    '
      
        '  CREATE  INDEX [IX_ReCommites_DeadLineDate] ON [dbo].[ReCommite' +
        's]([DeadLineDate]) ON [PRIMARY]'
      'GO'
      ''
      
        'if not exists ( select * from sysindexes where name ='#39'IX_ReCommi' +
        'tes_ActionTypeID'#39')   '
      
        '   CREATE  INDEX [IX_ReCommites_ActionTypeID] ON [dbo].[ReCommit' +
        'es]([ActionTypeID]) ON [PRIMARY]'
      'GO'
      ''
      
        'if not exists ( select * from sysindexes where name ='#39'IX_Receive' +
        'Types_Title'#39')   '
      
        '   CREATE  INDEX [IX_ReceiveTypes_Title] ON [dbo].[ReceiveTypes]' +
        '([Title]) ON [PRIMARY]'
      'GO'
      ''
      
        'if not exists ( select * from sysindexes where name ='#39'IX_Recommi' +
        'teData_RecommiteID'#39')   '
      
        '   CREATE  INDEX [IX_RecommiteData_RecommiteID] ON [dbo].[Recomm' +
        'iteData]([RecommiteID]) ON [PRIMARY]'
      'GO'
      ''
      
        'if not exists ( select * from sysindexes where name ='#39'IX_Recommi' +
        'teData_extention'#39')   '
      
        '   CREATE  INDEX [IX_RecommiteData_extention] ON [dbo].[Recommit' +
        'eData]([extention]) ON [PRIMARY]'
      'GO'
      ''
      
        'if not exists ( select * from sysindexes where name ='#39'IX_Referen' +
        'ceTableData_TableID'#39')   '
      
        '   CREATE  INDEX [IX_ReferenceTableData_TableID] ON [dbo].[Refer' +
        'enceTableData]([TableID]) ON [PRIMARY]'
      'GO'
      ''
      
        'if not exists ( select * from sysindexes where name ='#39'IX_Referen' +
        'ceTableData_DataID'#39')    '
      
        '  CREATE  INDEX [IX_ReferenceTableData_DataID] ON [dbo].[Referen' +
        'ceTableData]([DataID]) ON [PRIMARY]'
      'GO'
      ''
      
        'if not exists ( select * from sysindexes where name ='#39'IX_Related' +
        'Secretariats_DestinationSecID'#39')  '
      
        '    CREATE  INDEX [IX_RelatedSecretariats_DestinationSecID] ON [' +
        'dbo].[RelatedSecretariats]([DestinationSecID]) ON [PRIMARY]'
      'GO'
      ''
      
        'if not exists ( select * from sysindexes where name ='#39'IX_Related' +
        'Secretariats_DestinationOrgID_inSource'#39')     '
      
        ' CREATE  INDEX [IX_RelatedSecretariats_DestinationOrgID_inSource' +
        '] ON [dbo].[RelatedSecretariats]([DestinationOrgID_inSource]) ON' +
        ' [PRIMARY]'
      'GO'
      ''
      
        'if not exists ( select * from sysindexes where name ='#39'IX_Secreta' +
        'riats_ArchiveCenterID'#39')    '
      
        '  CREATE  INDEX [IX_Secretariats_ArchiveCenterID] ON [dbo].[Secr' +
        'etariats]([ArchiveCenterID]) ON [PRIMARY]'
      'GO'
      ''
      
        'if not exists ( select * from sysindexes where name ='#39'IX_Secreta' +
        'riats_Precode'#39') '
      
        '     CREATE  INDEX [IX_Secretariats_Precode] ON [dbo].[Secretari' +
        'ats]([Precode]) ON [PRIMARY]'
      'GO'
      ''
      
        'if not exists ( select * from sysindexes where name ='#39'IX_Tables_' +
        'TableType'#39')   '
      
        '   CREATE  INDEX [IX_Tables_TableType] ON [dbo].[Tables]([TableT' +
        'ype]) ON [PRIMARY]'
      'GO'
      
        'if not exists ( select * from sysindexes where name ='#39'User_exten' +
        'tion_idx'#39')'
      
        ' CREATE  UNIQUE  INDEX [User_extention_idx] ON [dbo].[UserExtent' +
        'ion]([UserId], [ExtentionID]) ON [PRIMARY]'
      'GO'
      ''
      
        'if not exists ( select * from sysindexes where name ='#39'IX_UserExt' +
        'ention_UserId'#39')  '
      
        '    CREATE  INDEX [IX_UserExtention_UserId] ON [dbo].[UserExtent' +
        'ion]([UserId]) ON [PRIMARY]'
      'GO'
      ''
      
        'if not exists ( select * from sysindexes where name ='#39'IX_UserExt' +
        'ention_ExtentionID'#39')   '
      
        '   CREATE  INDEX [IX_UserExtention_ExtentionID] ON [dbo].[UserEx' +
        'tention]([ExtentionID]) ON [PRIMARY]'
      'GO'
      ''
      
        'if not exists ( select * from sysindexes where name ='#39'IX_UserLog' +
        '_UserID'#39')    '
      
        '  CREATE  INDEX [IX_UserLog_UserID] ON [dbo].[UserLog]([UserID])' +
        ' ON [PRIMARY]'
      'GO'
      ''
      
        'if not exists ( select * from sysindexes where name ='#39'IX_UserLog' +
        '_FormID'#39')   '
      
        '  CREATE  INDEX [IX_UserLog_FormID] ON [dbo].[UserLog]([FormID])' +
        ' ON [PRIMARY]'
      'GO'
      ''
      
        'if not exists ( select * from sysindexes where name ='#39'IX_UserLog' +
        '_ActionID'#39')  '
      
        '    CREATE  INDEX [IX_UserLog_ActionID] ON [dbo].[UserLog]([Acti' +
        'onID]) ON [PRIMARY]'
      'GO'
      ''
      
        'if not exists ( select * from sysindexes where name ='#39'IX_UserLog' +
        '_LetterID'#39')   '
      
        '   CREATE  INDEX [IX_UserLog_LetterID] ON [dbo].[UserLog]([Lette' +
        'rID]) ON [PRIMARY]'
      'GO'
      ''
      
        'if not exists ( select * from sysindexes where name ='#39'IX_UserLog' +
        '_User_Act_Form'#39')   '
      
        '   CREATE  INDEX [IX_UserLog_User_Act_Form] ON [dbo].[UserLog]([' +
        'UserID], [ActionID], [FormID]) ON [PRIMARY]'
      'GO'
      ''
      
        'if not exists ( select * from sysindexes where name ='#39'IX_UserLog' +
        '_User_Act_Form_Letter'#39')    '
      
        '  CREATE  INDEX [IX_UserLog_User_Act_Form_Letter] ON [dbo].[User' +
        'Log]([UserID], [ActionID], [FormID], [LetterID]) ON [PRIMARY]'
      'GO'
      ''
      
        'if not exists ( select * from sysindexes where name ='#39'IX_UserLog' +
        'inLogout_UserID'#39')  '
      
        '    CREATE  INDEX [IX_UserLoginLogout_UserID] ON [dbo].[UserLogi' +
        'nLogout]([UserID]) ON [PRIMARY]'
      'GO'
      ''
      
        'if not exists ( select * from sysindexes where name ='#39'UserMessag' +
        'e_To_status_idx'#39')    '
      
        '  CREATE  INDEX [UserMessage_To_status_idx] ON [dbo].[UserMessag' +
        'e]([To_], [Status]) ON [PRIMARY]'
      'GO'
      ''
      
        'if not exists ( select * from sysindexes where name ='#39'IX_UserNot' +
        'e_UserID'#39')   '
      
        '   CREATE  INDEX [IX_UserNote_UserID] ON [dbo].[UserNote]([UserI' +
        'D]) ON [PRIMARY]'
      'GO'
      ''
      
        'if not exists ( select * from sysindexes where name ='#39'userShortC' +
        'ut_keytext_idx'#39')    '
      
        '  CREATE  INDEX [userShortCut_keytext_idx] ON [dbo].[UserShortCu' +
        't]([keyText]) ON [PRIMARY]'
      'GO'
      
        'if not exists ( select * from sysindexes where name ='#39'UserShortc' +
        'ut_altkey_idx'#39') '
      
        ' CREATE  UNIQUE  INDEX [UserShortcut_altkey_idx] ON [dbo].[UserS' +
        'hortCut]([UserID], [altKey]) ON [PRIMARY]'
      'GO'
      ''
      
        'if not exists ( select * from sysindexes where name ='#39'IX_UserTem' +
        'plateGroup_TemplateGroupID'#39')    '
      
        '  CREATE  INDEX [IX_UserTemplateGroup_TemplateGroupID] ON [dbo].' +
        '[UserTemplateGroup]([TemplateGroupID]) ON [PRIMARY]'
      'GO'
      ''
      
        'if not exists ( select * from sysindexes where name ='#39'IX_UserTem' +
        'plateGroup_UserID'#39')    '
      
        '  CREATE  INDEX [IX_UserTemplateGroup_UserID] ON [dbo].[UserTemp' +
        'lateGroup]([UserID]) ON [PRIMARY]'
      'GO'
      ''
      
        'if not exists ( select * from sysindexes where name ='#39'IX_Users_F' +
        'romOrgID'#39')     '
      
        ' CREATE  INDEX [IX_Users_FromOrgID] ON [dbo].[Users]([FromOrgID]' +
        ') ON [PRIMARY]'
      'GO'
      ''
      
        'if not exists ( select * from sysindexes where name ='#39'IX_Users_A' +
        'ccessID'#39')    '
      
        '  CREATE  INDEX [IX_Users_AccessID] ON [dbo].[Users]([AccessID])' +
        ' ON [PRIMARY]'
      'GO'
      ''
      
        'if not exists ( select * from sysindexes where name ='#39'IX_Users_D' +
        'efualtSecretariatID'#39')   '
      
        '   CREATE  INDEX [IX_Users_DefualtSecretariatID] ON [dbo].[Users' +
        ']([DefualtSecretariatID]) ON [PRIMARY]'
      'GO'
      ''
      
        'if not exists ( select * from sysindexes where name ='#39'IX_Users_S' +
        'econdOrgID'#39')   '
      
        '   CREATE  INDEX [IX_Users_SecondOrgID] ON [dbo].[Users]([Second' +
        'OrgID]) ON [PRIMARY]'
      'GO'
      
        'if exists (select * from dbo.sysindexes where name = N'#39'fromorgan' +
        'izations_idx'#39' and id = object_id(N'#39'[dbo].[FromOrganizations]'#39'))'
      'drop index [dbo].[FromOrganizations].[fromorganizations_idx]'
      'GO'
      ''
      '')
    ParentBiDiMode = False
    ReadOnly = True
    TabOrder = 8
  end
  object MemoProcedures: TMemo
    Left = 248
    Top = 451
    Width = 770
    Height = 89
    BiDiMode = bdLeftToRight
    Lines.Strings = (
      ''
      ''
      
        'IF  EXISTS (SELECT * FROM sysobjects WHERE id = OBJECT_ID(N'#39'[dbo' +
        '].[GetLetterIDByFollowID]'#39') AND type in (N'#39'P'#39', N'#39'PC'#39'))'
      'DROP PROCEDURE [dbo].[GetLetterIDByFollowID]'
      'GO'
      ''
      
        'IF  EXISTS (SELECT * FROM sysobjects WHERE id = OBJECT_ID(N'#39'[dbo' +
        '].[SetSystemSetting]'#39') AND type in (N'#39'P'#39', N'#39'PC'#39'))'
      'DROP PROCEDURE [dbo].[SetSystemSetting]'
      'GO '
      
        'IF  EXISTS (SELECT * FROM sysobjects WHERE id  = OBJECT_ID(N'#39'[db' +
        'o].[SetUserSetting]'#39') AND type in (N'#39'P'#39', N'#39'PC'#39'))'
      'DROP PROCEDURE [dbo].[SetUserSetting]'
      'GO'
      
        'IF  EXISTS (SELECT * FROM sysobjects WHERE id = OBJECT_ID(N'#39'[dbo' +
        '].[GetSystemSetting]'#39') AND type in (N'#39'P'#39', N'#39'PC'#39'))'
      'DROP PROCEDURE [dbo].[GetSystemSetting]'
      'GO'
      
        'IF  EXISTS (SELECT * FROM sysobjects WHERE id = OBJECT_ID(N'#39'[dbo' +
        '].[GetUserSetting]'#39') AND type in (N'#39'P'#39', N'#39'PC'#39'))'
      'DROP PROCEDURE [dbo].[GetUserSetting]'
      'GO'
      ''
      
        'IF  EXISTS (SELECT * FROM sysobjects WHERE id = OBJECT_ID(N'#39'[dbo' +
        '].[GetExtentionIDByName]'#39') AND type in (N'#39'P'#39', N'#39'PC'#39'))'
      'DROP PROCEDURE [dbo].[GetExtentionIDByName]'
      'GO'
      ''
      
        'IF  EXISTS (SELECT * FROM sysobjects WHERE id = OBJECT_ID(N'#39'[dbo' +
        '].[GetRecommiter]'#39') AND type in (N'#39'P'#39', N'#39'PC'#39'))'
      'DROP PROCEDURE [dbo].[GetRecommiter]'
      'GO'
      
        'IF  EXISTS (SELECT * FROM sysobjects WHERE id = OBJECT_ID(N'#39'[dbo' +
        '].[GetfieldValueByLetterID]'#39') AND type in (N'#39'P'#39', N'#39'PC'#39'))'
      'DROP PROCEDURE [dbo].[GetfieldValueByLetterID]'
      ''
      'GO'
      ''
      
        'IF  EXISTS (SELECT * FROM sysobjects WHERE id = OBJECT_ID(N'#39'[dbo' +
        '].[Sp_Details_Follow]'#39') AND type in (N'#39'P'#39', N'#39'PC'#39'))'
      'DROP PROCEDURE [dbo].[Sp_Details_Follow]'
      'GO'
      
        'IF  EXISTS (SELECT * FROM sysobjects WHERE id = OBJECT_ID(N'#39'[dbo' +
        '].[Sp_Memo_Follow]'#39') AND type in (N'#39'P'#39', N'#39'PC'#39'))'
      'DROP PROCEDURE [dbo].[Sp_Memo_Follow]'
      'GO'
      
        'IF  EXISTS (SELECT * FROM sysobjects WHERE id = OBJECT_ID(N'#39'[dbo' +
        '].[Sp_Recommites_follow]'#39') AND type in (N'#39'P'#39', N'#39'PC'#39'))'
      'DROP PROCEDURE [dbo].[Sp_Recommites_follow]'
      'GO'
      
        'IF  EXISTS (SELECT * FROM sysobjects WHERE id = OBJECT_ID(N'#39'[dbo' +
        '].[Sp_Proceed_Follow]'#39') AND type in (N'#39'P'#39', N'#39'PC'#39'))'
      'DROP PROCEDURE [dbo].[Sp_Proceed_Follow]'
      'GO'
      
        'IF  EXISTS (SELECT * FROM sysobjects WHERE id = OBJECT_ID(N'#39'[dbo' +
        '].[Sp_SentMail_Follow]'#39') AND type in (N'#39'P'#39', N'#39'PC'#39'))'
      'DROP PROCEDURE [dbo].[Sp_SentMail_Follow]'
      'GO'
      
        'IF  EXISTS (SELECT * FROM sysobjects WHERE id = OBJECT_ID(N'#39'[dbo' +
        '].[GetFollowCode]'#39') AND type in (N'#39'P'#39', N'#39'PC'#39'))'
      'DROP PROCEDURE [dbo].[GetFollowCode]'
      'GO'
      
        'IF  EXISTS (SELECT * FROM sysobjects WHERE id = OBJECT_ID(N'#39'[dbo' +
        '].[GetCheckCode]'#39') AND type in (N'#39'P'#39', N'#39'PC'#39'))'
      'DROP PROCEDURE [dbo].[GetCheckCode]'
      'GO'
      ''
      
        'IF  EXISTS (SELECT * FROM sysobjects WHERE id = OBJECT_ID(N'#39'[dbo' +
        '].[Activate_Letter]'#39')) '
      'DROP PROCEDURE [dbo].[Activate_Letter]'
      'GO'
      ''
      
        'IF  EXISTS (SELECT * FROM sysobjects WHERE id = OBJECT_ID(N'#39'[dbo' +
        '].[Activate_Recommite]'#39')) '
      'DROP PROCEDURE [dbo].[Activate_Recommite]'
      'GO'
      ''
      
        'IF  EXISTS (SELECT * FROM sysobjects WHERE id = OBJECT_ID(N'#39'[dbo' +
        '].[AnswerLetter]'#39')) '
      'DROP PROCEDURE [dbo].[AnswerLetter]'
      'GO'
      ''
      
        'IF  EXISTS (SELECT * FROM sysobjects WHERE id = OBJECT_ID(N'#39'[dbo' +
        '].[AnswerNote]'#39')) '
      'DROP PROCEDURE [dbo].[AnswerNote]'
      'GO'
      ''
      
        'IF  EXISTS (SELECT * FROM sysobjects WHERE id = OBJECT_ID(N'#39'[dbo' +
        '].[Check_duplicate_UserName]'#39')) '
      'DROP PROCEDURE [dbo].[Check_duplicate_UserName]'
      'GO'
      ''
      
        'IF  EXISTS (SELECT * FROM sysobjects WHERE id = OBJECT_ID(N'#39'[dbo' +
        '].[delete_Accesses]'#39')) '
      'DROP PROCEDURE [dbo].[delete_Accesses]'
      'GO'
      
        'IF  EXISTS (SELECT * FROM sysobjects WHERE id = OBJECT_ID(N'#39'[dbo' +
        '].[delete_Actions_ByFormID]'#39'))'
      'DROP PROCEDURE [dbo].[delete_Actions_ByFormID]'
      'GO'
      
        'IF  EXISTS (SELECT * FROM sysobjects WHERE id = OBJECT_ID(N'#39'[dbo' +
        '].[Delete_All_Secretariats_Of_User]'#39'))'
      'DROP PROCEDURE [dbo].[Delete_All_Secretariats_Of_User]'
      'GO'
      
        'IF  EXISTS (SELECT * FROM sysobjects WHERE id = OBJECT_ID(N'#39'[dbo' +
        '].[Delete_All_TemplateGroup_Of_User]'#39'))'
      'DROP PROCEDURE [dbo].[Delete_All_TemplateGroup_Of_User]'
      'GO'
      
        'IF  EXISTS (SELECT * FROM sysobjects WHERE id = OBJECT_ID(N'#39'[dbo' +
        '].[Delete_ArchiveFolder]'#39'))'
      'DROP PROCEDURE [dbo].[Delete_ArchiveFolder]'
      'GO'
      
        'IF  EXISTS (SELECT * FROM sysobjects WHERE id = OBJECT_ID(N'#39'[dbo' +
        '].[Delete_Exported_LetterData]'#39'))'
      'DROP PROCEDURE [dbo].[Delete_Exported_LetterData]'
      'GO'
      
        'IF  EXISTS (SELECT * FROM sysobjects WHERE id = OBJECT_ID(N'#39'[dbo' +
        '].[delete_Extention]'#39'))'
      'DROP PROCEDURE [dbo].[delete_Extention]'
      'GO'
      
        'IF  EXISTS (SELECT * FROM sysobjects WHERE id = OBJECT_ID(N'#39'[dbo' +
        '].[Delete_Letter]'#39'))'
      'DROP PROCEDURE [dbo].[Delete_Letter]'
      'GO'
      
        'IF  EXISTS (SELECT * FROM sysobjects WHERE id = OBJECT_ID(N'#39'[dbo' +
        '].[delete_LetterArchiveFolder]'#39'))'
      'DROP PROCEDURE [dbo].[delete_LetterArchiveFolder]'
      'GO'
      
        'IF  EXISTS (SELECT * FROM sysobjects WHERE id = OBJECT_ID(N'#39'[dbo' +
        '].[delete_LetterData]'#39'))'
      'DROP PROCEDURE [dbo].[delete_LetterData]'
      'GO'
      
        'IF  EXISTS (SELECT * FROM sysobjects WHERE id = OBJECT_ID(N'#39'[dbo' +
        '].[delete_letterImage]'#39'))'
      'DROP PROCEDURE [dbo].[delete_letterImage]'
      'GO'
      
        'IF  EXISTS (SELECT * FROM sysobjects WHERE id = OBJECT_ID(N'#39'[dbo' +
        '].[delete_LetterWord]'#39'))'
      'DROP PROCEDURE [dbo].[delete_LetterWord]'
      'GO'
      
        'IF  EXISTS (SELECT * FROM sysobjects WHERE id = OBJECT_ID(N'#39'[dbo' +
        '].[delete_ParaphTemplate]'#39'))'
      'DROP PROCEDURE [dbo].[delete_ParaphTemplate]'
      'GO'
      
        'IF  EXISTS (SELECT * FROM sysobjects WHERE id = OBJECT_ID(N'#39'[dbo' +
        '].[delete_ReCommites]'#39'))'
      'DROP PROCEDURE [dbo].[delete_ReCommites]'
      'GO'
      
        'IF  EXISTS (SELECT * FROM sysobjects WHERE id = OBJECT_ID(N'#39'[dbo' +
        '].[Delete_Table]'#39'))'
      'DROP PROCEDURE [dbo].[Delete_Table]'
      'GO'
      
        'IF  EXISTS (SELECT * FROM sysobjects WHERE id = OBJECT_ID(N'#39'[dbo' +
        '].[delete_user]'#39'))'
      'DROP PROCEDURE [dbo].[delete_user]'
      'GO'
      
        'IF  EXISTS (SELECT * FROM sysobjects WHERE id = OBJECT_ID(N'#39'[dbo' +
        '].[delete_UserTable]'#39'))'
      'DROP PROCEDURE [dbo].[delete_UserTable]'
      'GO'
      
        'IF  EXISTS (SELECT * FROM sysobjects WHERE id = OBJECT_ID(N'#39'[dbo' +
        '].[Deleted_to_Letter]'#39'))'
      'DROP PROCEDURE [dbo].[Deleted_to_Letter]'
      'GO'
      
        'IF  EXISTS (SELECT * FROM sysobjects WHERE id = OBJECT_ID(N'#39'[dbo' +
        '].[Draft_to_SentLetter]'#39'))'
      'DROP PROCEDURE [dbo].[Draft_to_SentLetter]'
      'GO'
      
        'IF  EXISTS (SELECT * FROM sysobjects WHERE id = OBJECT_ID(N'#39'[dbo' +
        '].[Duplicate_UserShortCut]'#39'))'
      'DROP PROCEDURE [dbo].[Duplicate_UserShortCut]'
      'GO'
      
        'IF  EXISTS (SELECT * FROM sysobjects WHERE id = OBJECT_ID(N'#39'[dbo' +
        '].[Export_LetterData]'#39'))'
      'DROP PROCEDURE [dbo].[Export_LetterData]'
      'GO'
      
        'IF  EXISTS (SELECT * FROM sysobjects WHERE id = OBJECT_ID(N'#39'[dbo' +
        '].[Folder_hasChild]'#39'))'
      'DROP PROCEDURE [dbo].[Folder_hasChild]'
      'GO'
      
        'IF  EXISTS (SELECT * FROM sysobjects WHERE id = OBJECT_ID(N'#39'[dbo' +
        '].[Folder_hasLetter]'#39'))'
      'DROP PROCEDURE [dbo].[Folder_hasLetter]'
      'GO'
      
        'IF  EXISTS (SELECT * FROM sysobjects WHERE id = OBJECT_ID(N'#39'[dbo' +
        '].[Folder_hasRecommite]'#39'))'
      'DROP PROCEDURE [dbo].[Folder_hasRecommite]'
      'GO'
      
        'IF  EXISTS (SELECT * FROM sysobjects WHERE id = OBJECT_ID(N'#39'[dbo' +
        '].[Get_ActiveUser]'#39'))'
      'DROP PROCEDURE [dbo].[Get_ActiveUser]'
      'GO'
      
        'IF  EXISTS (SELECT * FROM sysobjects WHERE id = OBJECT_ID(N'#39'[dbo' +
        '].[Get_All_Letter]'#39'))'
      'DROP PROCEDURE [dbo].[Get_All_Letter]'
      'GO'
      
        'IF  EXISTS (SELECT * FROM sysobjects WHERE id = OBJECT_ID(N'#39'[dbo' +
        '].[Get_ArchiveFolder_ByAccess]'#39'))'
      'DROP PROCEDURE [dbo].[Get_ArchiveFolder_ByAccess]'
      'GO'
      
        'IF  EXISTS (SELECT * FROM sysobjects WHERE id = OBJECT_ID(N'#39'[dbo' +
        '].[Get_ArchiveFolder_ByAccessAndTitle]'#39'))'
      'DROP PROCEDURE [dbo].[Get_ArchiveFolder_ByAccessAndTitle]'
      'GO'
      
        'IF  EXISTS (SELECT * FROM sysobjects WHERE id = OBJECT_ID(N'#39'[dbo' +
        '].[get_ArchiveFolder_byUserID]'#39'))'
      'DROP PROCEDURE [dbo].[get_ArchiveFolder_byUserID]'
      'GO'
      
        'IF  EXISTS (SELECT * FROM sysobjects WHERE id = OBJECT_ID(N'#39'[dbo' +
        '].[get_ArchiveFolder_byUserID_and_Letterid]'#39'))'
      'DROP PROCEDURE [dbo].[get_ArchiveFolder_byUserID_and_Letterid]'
      'GO'
      
        'IF  EXISTS (SELECT * FROM sysobjects WHERE id = OBJECT_ID(N'#39'[dbo' +
        '].[get_ArchiveFolder_byUserID_and_Place]'#39'))'
      'DROP PROCEDURE [dbo].[get_ArchiveFolder_byUserID_and_Place]'
      'GO'
      
        'IF  EXISTS (SELECT * FROM sysobjects WHERE id = OBJECT_ID(N'#39'[dbo' +
        '].[get_ArchiveFolder_byUserID_and_Title]'#39'))'
      'DROP PROCEDURE [dbo].[get_ArchiveFolder_byUserID_and_Title]'
      'GO'
      
        'IF  EXISTS (SELECT * FROM sysobjects WHERE id = OBJECT_ID(N'#39'[dbo' +
        '].[get_DayID_InWeek]'#39'))'
      'DROP PROCEDURE [dbo].[get_DayID_InWeek]'
      'GO'
      
        'IF  EXISTS (SELECT * FROM sysobjects WHERE id = OBJECT_ID(N'#39'[dbo' +
        '].[get_DestinationOrgID]'#39'))'
      'DROP PROCEDURE [dbo].[get_DestinationOrgID]'
      'GO'
      
        'IF  EXISTS (SELECT * FROM sysobjects WHERE id = OBJECT_ID(N'#39'[dbo' +
        '].[Get_DraftReceivedLetter_count]'#39'))'
      'DROP PROCEDURE [dbo].[Get_DraftReceivedLetter_count]'
      'GO'
      
        'IF  EXISTS (SELECT * FROM sysobjects WHERE id = OBJECT_ID(N'#39'[dbo' +
        '].[Get_DraftLetter_count]'#39'))'
      'DROP PROCEDURE [dbo].[Get_DraftLetter_count]'
      'GO'
      
        'IF  EXISTS (SELECT * FROM sysobjects WHERE id = OBJECT_ID(N'#39'[dbo' +
        '].[Get_FieldValue_by_LetterID_FieldID]'#39'))'
      'DROP PROCEDURE [dbo].[Get_FieldValue_by_LetterID_FieldID]'
      'GO'
      
        'IF  EXISTS (SELECT * FROM sysobjects WHERE id = OBJECT_ID(N'#39'[dbo' +
        '].[Get_FieldValues_by_LetterID]'#39'))'
      'DROP PROCEDURE [dbo].[Get_FieldValues_by_LetterID]'
      'GO'
      
        'IF  EXISTS (SELECT * FROM sysobjects WHERE id = OBJECT_ID(N'#39'[dbo' +
        '].[Get_FollowUP_Count]'#39'))'
      'DROP PROCEDURE [dbo].[Get_FollowUP_Count]'
      'GO'
      
        'IF  EXISTS (SELECT * FROM sysobjects WHERE id = OBJECT_ID(N'#39'[dbo' +
        '].[Get_FromOrganizations_ByCode]'#39'))'
      'DROP PROCEDURE [dbo].[Get_FromOrganizations_ByCode]'
      'GO'
      
        'IF  EXISTS (SELECT * FROM sysobjects WHERE id = OBJECT_ID(N'#39'[dbo' +
        '].[Get_FromOrganizationsID_ByCode]'#39'))'
      'DROP PROCEDURE [dbo].[Get_FromOrganizationsID_ByCode]'
      'GO'
      
        'IF  EXISTS (SELECT * FROM sysobjects WHERE id = OBJECT_ID(N'#39'[dbo' +
        '].[Get_FromOrganizationsTitle_ByID]'#39'))'
      'DROP PROCEDURE [dbo].[Get_FromOrganizationsTitle_ByID]'
      'GO'
      
        'IF  EXISTS (SELECT * FROM sysobjects WHERE id = OBJECT_ID(N'#39'[dbo' +
        '].[get_indicatorID_BySentLetterID]'#39'))'
      'DROP PROCEDURE [dbo].[get_indicatorID_BySentLetterID]'
      'GO'
      
        'IF  EXISTS (SELECT * FROM sysobjects WHERE id = OBJECT_ID(N'#39'[dbo' +
        '].[Get_innerLetterMemo]'#39'))'
      'DROP PROCEDURE [dbo].[Get_innerLetterMemo]'
      'GO'
      
        'IF  EXISTS (SELECT * FROM sysobjects WHERE id = OBJECT_ID(N'#39'[dbo' +
        '].[get_InnerOrganizations]'#39'))'
      'DROP PROCEDURE [dbo].[get_InnerOrganizations]'
      'GO'
      
        'IF  EXISTS (SELECT * FROM sysobjects WHERE id = OBJECT_ID(N'#39'[dbo' +
        '].[get_LastIndicatorID]'#39'))'
      'DROP PROCEDURE [dbo].[get_LastIndicatorID]'
      'GO'
      
        'IF  EXISTS (SELECT * FROM sysobjects WHERE id = OBJECT_ID(N'#39'[dbo' +
        '].[Get_LastUserId]'#39'))'
      'DROP PROCEDURE [dbo].[Get_LastUserId]'
      'GO'
      
        'IF  EXISTS (SELECT * FROM sysobjects WHERE id = OBJECT_ID(N'#39'[dbo' +
        '].[Get_Letter_By_UserMemo]'#39'))'
      'DROP PROCEDURE [dbo].[Get_Letter_By_UserMemo]'
      'GO'
      
        'IF  EXISTS (SELECT * FROM sysobjects WHERE id = OBJECT_ID(N'#39'[dbo' +
        '].[get_Letter_ByIndicator]'#39'))'
      'DROP PROCEDURE [dbo].[get_Letter_ByIndicator]'
      'GO'
      
        'IF  EXISTS (SELECT * FROM sysobjects WHERE id = OBJECT_ID(N'#39'[dbo' +
        '].[Get_Letter_PDF]'#39'))'
      'DROP PROCEDURE [dbo].[Get_Letter_PDF]'
      'GO'
      
        'IF  EXISTS (SELECT * FROM sysobjects WHERE id = OBJECT_ID(N'#39'[dbo' +
        '].[get_letter_To_Transfer]'#39'))'
      'DROP PROCEDURE [dbo].[get_letter_To_Transfer]'
      'GO'
      
        'IF  EXISTS (SELECT * FROM sysobjects WHERE id = OBJECT_ID(N'#39'[dbo' +
        '].[Get_LetterAbstract]'#39'))'
      'DROP PROCEDURE [dbo].[Get_LetterAbstract]'
      'GO'
      
        'IF  EXISTS (SELECT * FROM sysobjects WHERE id = OBJECT_ID(N'#39'[dbo' +
        '].[Get_LetterAction_By_LetterID]'#39'))'
      'DROP PROCEDURE [dbo].[Get_LetterAction_By_LetterID]'
      'GO'
      
        'IF  EXISTS (SELECT * FROM sysobjects WHERE id = OBJECT_ID(N'#39'[dbo' +
        '].[Get_LetterAttachment]'#39'))'
      'DROP PROCEDURE [dbo].[Get_LetterAttachment]'
      'GO'
      
        'IF  EXISTS (SELECT * FROM sysobjects WHERE id = OBJECT_ID(N'#39'[dbo' +
        '].[Get_LetterData_by_LetterDataID]'#39'))'
      'DROP PROCEDURE [dbo].[Get_LetterData_by_LetterDataID]'
      'GO'
      
        'IF  EXISTS (SELECT * FROM sysobjects WHERE id = OBJECT_ID(N'#39'[dbo' +
        '].[Get_LetterData_by_LetterID]'#39'))'
      'DROP PROCEDURE [dbo].[Get_LetterData_by_LetterID]'
      'GO'
      
        'IF  EXISTS (SELECT * FROM sysobjects WHERE id = OBJECT_ID(N'#39'[dbo' +
        '].[Get_LetterdataExtention]'#39'))'
      'DROP PROCEDURE [dbo].[Get_LetterdataExtention]'
      'GO'
      
        'IF  EXISTS (SELECT * FROM sysobjects WHERE id = OBJECT_ID(N'#39'[dbo' +
        '].[Get_LetterDataIDs]'#39'))'
      'DROP PROCEDURE [dbo].[Get_LetterDataIDs]'
      'GO'
      
        'IF  EXISTS (SELECT * FROM sysobjects WHERE id = OBJECT_ID(N'#39'[dbo' +
        '].[Get_letterHistory_by_LetterID]'#39'))'
      'DROP PROCEDURE [dbo].[Get_letterHistory_by_LetterID]'
      'GO'
      
        'IF  EXISTS (SELECT * FROM sysobjects WHERE id = OBJECT_ID(N'#39'[dbo' +
        '].[get_LetterID_ByInCommingNo]'#39'))'
      'DROP PROCEDURE [dbo].[get_LetterID_ByInCommingNo]'
      'GO'
      
        'IF  EXISTS (SELECT * FROM sysobjects WHERE id = OBJECT_ID(N'#39'[dbo' +
        '].[get_LetterID_ByIndicatorid]'#39'))'
      'DROP PROCEDURE [dbo].[get_LetterID_ByIndicatorid]'
      'GO'
      
        'IF  EXISTS (SELECT * FROM sysobjects WHERE id = OBJECT_ID(N'#39'[dbo' +
        '].[get_LetterID_ByRetroActionNo]'#39'))'
      'DROP PROCEDURE [dbo].[get_LetterID_ByRetroActionNo]'
      'GO'
      
        'IF  EXISTS (SELECT * FROM sysobjects WHERE id = OBJECT_ID(N'#39'[dbo' +
        '].[Get_LetterJpgFile]'#39'))'
      'DROP PROCEDURE [dbo].[Get_LetterJpgFile]'
      'GO'
      
        'IF  EXISTS (SELECT * FROM sysobjects WHERE id = OBJECT_ID(N'#39'[dbo' +
        '].[get_LetterMemo_ByID]'#39'))'
      'DROP PROCEDURE [dbo].[get_LetterMemo_ByID]'
      'GO'
      
        'IF  EXISTS (SELECT * FROM sysobjects WHERE id = OBJECT_ID(N'#39'[dbo' +
        '].[Get_LetterTifFile]'#39'))'
      'DROP PROCEDURE [dbo].[Get_LetterTifFile]'
      'GO'
      
        ' IF  EXISTS (SELECT * FROM sysobjects WHERE id = OBJECT_ID(N'#39'[db' +
        'o].[Get_LetterWordFile]'#39'))'
      'DROP PROCEDURE [dbo].[Get_LetterWordFile]'
      'GO'
      ''
      
        'IF  EXISTS (SELECT * FROM sysobjects WHERE id = OBJECT_ID(N'#39'[dbo' +
        '].[Get_LifeTip_byUserid]'#39'))'
      'DROP PROCEDURE [dbo].[Get_LifeTip_byUserid]'
      'GO'
      ''
      
        'IF  EXISTS (SELECT * FROM sysobjects WHERE id = OBJECT_ID(N'#39'[dbo' +
        '].[get_MaxPage_ByLetterID]'#39'))'
      'DROP PROCEDURE [dbo].[get_MaxPage_ByLetterID]'
      'GO'
      ''
      
        'IF  EXISTS (SELECT * FROM sysobjects WHERE id = OBJECT_ID(N'#39'[dbo' +
        '].[get_MaxReferenceDataID_By_TableID]'#39'))'
      'DROP PROCEDURE [dbo].[get_MaxReferenceDataID_By_TableID]'
      'GO'
      ''
      
        'IF  EXISTS (SELECT * FROM sysobjects WHERE id = OBJECT_ID(N'#39'[dbo' +
        '].[get_NewOrgCode]'#39'))'
      'DROP PROCEDURE [dbo].[get_NewOrgCode]'
      'GO'
      ''
      
        'IF  EXISTS (SELECT * FROM sysobjects WHERE id = OBJECT_ID(N'#39'[dbo' +
        '].[get_NewOrgID]'#39'))'
      'DROP PROCEDURE [dbo].[get_NewOrgID]'
      'GO'
      ''
      
        'IF  EXISTS (SELECT * FROM sysobjects WHERE id = OBJECT_ID(N'#39'[dbo' +
        '].[get_Nowdate]'#39'))'
      'DROP PROCEDURE [dbo].[get_Nowdate]'
      'GO'
      
        'IF  EXISTS (SELECT * FROM sysobjects WHERE id = OBJECT_ID(N'#39'[dbo' +
        '].[get_NowTime]'#39'))'
      'DROP PROCEDURE [dbo].[get_NowTime]'
      'GO'
      
        'IF  EXISTS (SELECT * FROM sysobjects WHERE id = OBJECT_ID(N'#39'[dbo' +
        '].[get_OrgPreCodeByID]'#39'))'
      'DROP PROCEDURE [dbo].[get_OrgPreCodeByID]'
      'GO'
      
        'IF  EXISTS (SELECT * FROM sysobjects WHERE id = OBJECT_ID(N'#39'[dbo' +
        '].[get_OrgTitleByID]'#39'))'
      'DROP PROCEDURE [dbo].[get_OrgTitleByID]'
      'GO'
      
        'IF  EXISTS (SELECT * FROM sysobjects WHERE id = OBJECT_ID(N'#39'[dbo' +
        '].[Get_RecommiteJpgFile]'#39'))'
      'DROP PROCEDURE [dbo].[Get_RecommiteJpgFile]'
      'GO'
      
        'IF  EXISTS (SELECT * FROM sysobjects WHERE id = OBJECT_ID(N'#39'[dbo' +
        '].[get_ReferenceTable]'#39'))'
      'DROP PROCEDURE [dbo].[get_ReferenceTable]'
      'GO'
      
        'IF  EXISTS (SELECT * FROM sysobjects WHERE id = OBJECT_ID(N'#39'[dbo' +
        '].[get_ReferenceTableData_by_tableID]'#39'))'
      'DROP PROCEDURE [dbo].[get_ReferenceTableData_by_tableID]'
      'GO'
      
        'IF  EXISTS (SELECT * FROM sysobjects WHERE id = OBJECT_ID(N'#39'[dbo' +
        '].[Get_Related_Letters]'#39'))'
      'DROP PROCEDURE [dbo].[Get_Related_Letters]'
      'GO'
      
        'IF  EXISTS (SELECT * FROM sysobjects WHERE id = OBJECT_ID(N'#39'[dbo' +
        '].[get_Subject]'#39'))'
      'DROP PROCEDURE [dbo].[get_Subject]'
      'GO'
      
        'IF  EXISTS (SELECT * FROM sysobjects WHERE id = OBJECT_ID(N'#39'[dbo' +
        '].[Get_sys_AppMessage]'#39'))'
      'DROP PROCEDURE [dbo].[Get_sys_AppMessage]'
      'GO'
      
        'IF  EXISTS (SELECT * FROM sysobjects WHERE id = OBJECT_ID(N'#39'[dbo' +
        '].[Get_tmp_LetterDataIDs]'#39'))'
      'DROP PROCEDURE [dbo].[Get_tmp_LetterDataIDs]'
      'GO'
      
        'IF  EXISTS (SELECT * FROM sysobjects WHERE id = OBJECT_ID(N'#39'[dbo' +
        '].[get_UserExtention_by_UserID]'#39'))'
      'DROP PROCEDURE [dbo].[get_UserExtention_by_UserID]'
      'GO'
      
        'IF  EXISTS (SELECT * FROM sysobjects WHERE id = OBJECT_ID(N'#39'[dbo' +
        '].[get_userfields_by_tableID]'#39'))'
      'DROP PROCEDURE [dbo].[get_userfields_by_tableID]'
      'GO'
      
        'IF  EXISTS (SELECT * FROM sysobjects WHERE id = OBJECT_ID(N'#39'[dbo' +
        '].[Get_UserMessageCount]'#39'))'
      'DROP PROCEDURE [dbo].[Get_UserMessageCount]'
      'GO'
      
        'IF  EXISTS (SELECT * FROM sysobjects WHERE id = OBJECT_ID(N'#39'[dbo' +
        '].[Get_UserSecretariat_Tree]'#39'))'
      'DROP PROCEDURE [dbo].[Get_UserSecretariat_Tree]'
      'GO'
      
        'IF  EXISTS (SELECT * FROM sysobjects WHERE id = OBJECT_ID(N'#39'[dbo' +
        '].[get_userTable]'#39'))'
      'DROP PROCEDURE [dbo].[get_userTable]'
      'GO'
      
        'IF  EXISTS (SELECT * FROM sysobjects WHERE id = OBJECT_ID(N'#39'[dbo' +
        '].[GetLastFormOrderByLetterID]'#39'))'
      'DROP PROCEDURE [dbo].[GetLastFormOrderByLetterID]'
      'GO'
      
        'IF  EXISTS (SELECT * FROM sysobjects WHERE id = OBJECT_ID(N'#39'[dbo' +
        '].[GetLetterTemplate_HeaderID]'#39'))'
      'DROP PROCEDURE [dbo].[GetLetterTemplate_HeaderID]'
      'GO'
      
        'IF  EXISTS (SELECT * FROM sysobjects WHERE id = OBJECT_ID(N'#39'[dbo' +
        '].[GetList]'#39'))'
      'DROP PROCEDURE [dbo].[GetList]'
      'GO'
      
        'IF  EXISTS (SELECT * FROM sysobjects WHERE id = OBJECT_ID(N'#39'[dbo' +
        '].[GetNumberOfLetterAttach]'#39'))'
      'DROP PROCEDURE [dbo].[GetNumberOfLetterAttach]'
      'GO'
      
        'IF  EXISTS (SELECT * FROM sysobjects WHERE id = OBJECT_ID(N'#39'[dbo' +
        '].[GetRecommiteById]'#39'))'
      'DROP PROCEDURE [dbo].[GetRecommiteById]'
      'GO'
      
        'IF  EXISTS (SELECT * FROM sysobjects WHERE id = OBJECT_ID(N'#39'[dbo' +
        '].[GetUserLogout_status]'#39'))'
      'DROP PROCEDURE [dbo].[GetUserLogout_status]'
      'GO'
      
        'IF  EXISTS (SELECT * FROM sysobjects WHERE id = OBJECT_ID(N'#39'[dbo' +
        '].[has_PDF]'#39'))'
      'DROP PROCEDURE [dbo].[has_PDF]'
      'GO'
      
        'IF  EXISTS (SELECT * FROM sysobjects WHERE id = OBJECT_ID(N'#39'[dbo' +
        '].[hassame_orgtitle]'#39'))'
      'DROP PROCEDURE [dbo].[hassame_orgtitle]'
      'GO'
      
        'IF  EXISTS (SELECT * FROM sysobjects WHERE id = OBJECT_ID(N'#39'[dbo' +
        '].[Import_LetterData]'#39'))'
      'DROP PROCEDURE [dbo].[Import_LetterData]'
      'GO'
      
        'IF  EXISTS (SELECT * FROM sysobjects WHERE id = OBJECT_ID(N'#39'[dbo' +
        '].[insert_Actions]'#39'))'
      'DROP PROCEDURE [dbo].[insert_Actions]'
      'GO'
      
        'IF  EXISTS (SELECT * FROM sysobjects WHERE id = OBJECT_ID(N'#39'[dbo' +
        '].[insert_All_ReCommites]'#39'))'
      'DROP PROCEDURE [dbo].[insert_All_ReCommites]'
      'GO'
      
        'IF  EXISTS (SELECT * FROM sysobjects WHERE id = OBJECT_ID(N'#39'[dbo' +
        '].[insert_ArchiveFolder]'#39'))'
      'DROP PROCEDURE [dbo].[insert_ArchiveFolder]'
      'GO'
      
        'IF  EXISTS (SELECT * FROM sysobjects WHERE id = OBJECT_ID(N'#39'[dbo' +
        '].[insert_Extention]'#39'))'
      'DROP PROCEDURE [dbo].[insert_Extention]'
      'GO'
      
        'IF  EXISTS (SELECT * FROM sysobjects WHERE id = OBJECT_ID(N'#39'[dbo' +
        '].[insert_FieldAccess]'#39'))'
      'DROP PROCEDURE [dbo].[insert_FieldAccess]'
      'GO'
      
        'IF  EXISTS (SELECT * FROM sysobjects WHERE id = OBJECT_ID(N'#39'[dbo' +
        '].[insert_FieldAccess_by_TableID]'#39'))'
      'DROP PROCEDURE [dbo].[insert_FieldAccess_by_TableID]'
      'GO'
      
        'IF  EXISTS (SELECT * FROM sysobjects WHERE id = OBJECT_ID(N'#39'[dbo' +
        '].[insert_Letter]'#39'))'
      'DROP PROCEDURE [dbo].[insert_Letter]'
      'GO'
      
        'IF  EXISTS (SELECT * FROM sysobjects WHERE id = OBJECT_ID(N'#39'[dbo' +
        '].[insert_Letter_all]'#39'))'
      'DROP PROCEDURE [dbo].[insert_Letter_all]'
      'GO'
      
        'IF  EXISTS (SELECT * FROM sysobjects WHERE id = OBJECT_ID(N'#39'[dbo' +
        '].[insert_LetterArchiveFolder]'#39'))'
      'DROP PROCEDURE [dbo].[insert_LetterArchiveFolder]'
      'GO'
      
        'IF  EXISTS (SELECT * FROM sysobjects WHERE id = OBJECT_ID(N'#39'[dbo' +
        '].[insert_LetterData]'#39'))'
      'DROP PROCEDURE [dbo].[insert_LetterData]'
      'GO'
      
        'IF  EXISTS (SELECT * FROM sysobjects WHERE id = OBJECT_ID(N'#39'[dbo' +
        '].[insert_LetterText]'#39'))'
      'DROP PROCEDURE [dbo].[insert_LetterText]'
      'GO'
      
        'IF  EXISTS (SELECT * FROM sysobjects WHERE id = OBJECT_ID(N'#39'[dbo' +
        '].[insert_newActionsAccess]'#39'))'
      'DROP PROCEDURE [dbo].[insert_newActionsAccess]'
      'GO'
      
        'IF  EXISTS (SELECT * FROM sysobjects WHERE id = OBJECT_ID(N'#39'[dbo' +
        '].[Insert_ParaphTemplate]'#39'))'
      'DROP PROCEDURE [dbo].[Insert_ParaphTemplate]'
      'GO'
      
        'IF  EXISTS (SELECT * FROM sysobjects WHERE id = OBJECT_ID(N'#39'[dbo' +
        '].[insert_ReciveLetter]'#39'))'
      'DROP PROCEDURE [dbo].[insert_ReciveLetter]'
      'GO'
      
        'IF  EXISTS (SELECT * FROM sysobjects WHERE id = OBJECT_ID(N'#39'[dbo' +
        '].[insert_ReCommites]'#39'))'
      'DROP PROCEDURE [dbo].[insert_ReCommites]'
      'GO'
      
        'IF  EXISTS (SELECT * FROM sysobjects WHERE id = OBJECT_ID(N'#39'[dbo' +
        '].[insert_ReCommites]'#39'))'
      'DROP PROCEDURE [dbo].[insert_ReCommites]'
      'GO'
      
        'IF  EXISTS (SELECT * FROM sysobjects WHERE id = OBJECT_ID(N'#39'[dbo' +
        '].[Insert_OtherRecievers]'#39'))'
      'DROP PROCEDURE [dbo].[Insert_OtherRecievers]'
      ''
      'GO'
      
        'IF  EXISTS (SELECT * FROM sysobjects WHERE id = OBJECT_ID(N'#39'[dbo' +
        '].[insert_ToOrganizations]'#39'))'
      'DROP PROCEDURE [dbo].[insert_ToOrganizations]'
      'GO'
      
        'IF  EXISTS (SELECT * FROM sysobjects WHERE id = OBJECT_ID(N'#39'[dbo' +
        '].[insert_UserLog]'#39'))'
      'DROP PROCEDURE [dbo].[insert_UserLog]'
      'GO'
      
        'IF  EXISTS (SELECT * FROM sysobjects WHERE id = OBJECT_ID(N'#39'[dbo' +
        '].[insert_UserLoginLogout]'#39'))'
      'DROP PROCEDURE [dbo].[insert_UserLoginLogout]'
      'GO'
      
        'IF  EXISTS (SELECT * FROM sysobjects WHERE id = OBJECT_ID(N'#39'[dbo' +
        '].[insertReCommites_autoID]'#39'))'
      'DROP PROCEDURE [dbo].[insertReCommites_autoID]'
      'GO'
      
        'IF  EXISTS (SELECT * FROM sysobjects WHERE id = OBJECT_ID(N'#39'[dbo' +
        '].[insertText]'#39'))'
      'DROP PROCEDURE [dbo].[insertText]'
      'GO'
      
        'IF  EXISTS (SELECT * FROM sysobjects WHERE id = OBJECT_ID(N'#39'[dbo' +
        '].[letterContainText]'#39'))'
      'DROP PROCEDURE [dbo].[letterContainText]'
      'GO'
      
        'IF  EXISTS (SELECT * FROM sysobjects WHERE id = OBJECT_ID(N'#39'[dbo' +
        '].[Make_FieldValues_By_LetterID]'#39'))'
      'DROP PROCEDURE [dbo].[Make_FieldValues_By_LetterID]'
      'GO'
      
        'IF  EXISTS (SELECT * FROM sysobjects WHERE id = OBJECT_ID(N'#39'[dbo' +
        '].[min_page]'#39'))'
      'DROP PROCEDURE [dbo].[min_page]'
      'GO'
      
        'IF  EXISTS (SELECT * FROM sysobjects WHERE id = OBJECT_ID(N'#39'[dbo' +
        '].[Move_ParaphTemplate]'#39'))'
      'DROP PROCEDURE [dbo].[Move_ParaphTemplate]'
      'GO'
      
        'IF  EXISTS (SELECT * FROM sysobjects WHERE id = OBJECT_ID(N'#39'[dbo' +
        '].[NewRecommiteID]'#39'))'
      'DROP PROCEDURE [dbo].[NewRecommiteID]'
      'GO'
      
        'IF  EXISTS (SELECT * FROM sysobjects WHERE id = OBJECT_ID(N'#39'[dbo' +
        '].[Next_page]'#39'))'
      'DROP PROCEDURE [dbo].[Next_page]'
      'GO'
      
        'IF  EXISTS (SELECT * FROM sysobjects WHERE id = OBJECT_ID(N'#39'[dbo' +
        '].[NextTag]'#39'))'
      'DROP PROCEDURE [dbo].[NextTag]'
      'GO'
      
        'IF  EXISTS (SELECT * FROM sysobjects WHERE id = OBJECT_ID(N'#39'[dbo' +
        '].[NumberOfLetter_By_SecID]'#39'))'
      'DROP PROCEDURE [dbo].[NumberOfLetter_By_SecID]'
      'GO'
      
        'IF  EXISTS (SELECT * FROM sysobjects WHERE id = OBJECT_ID(N'#39'[dbo' +
        '].[NumberOfTemplate_By_TemplateGroupID]'#39'))'
      'DROP PROCEDURE [dbo].[NumberOfTemplate_By_TemplateGroupID]'
      'GO'
      
        ' IF  EXISTS (SELECT * FROM sysobjects WHERE id = OBJECT_ID(N'#39'[db' +
        'o].[Org_hasChild]'#39'))'
      'DROP PROCEDURE [dbo].[Org_hasChild]'
      'GO'
      
        ' IF  EXISTS (SELECT * FROM sysobjects WHERE id = OBJECT_ID(N'#39'[db' +
        'o].[org_hasLetter]'#39'))'
      'DROP PROCEDURE [dbo].[org_hasLetter]'
      'GO'
      
        ' IF  EXISTS (SELECT * FROM sysobjects WHERE id = OBJECT_ID(N'#39'[db' +
        'o].[Org_is_Secretariat]'#39'))'
      'DROP PROCEDURE [dbo].[Org_is_Secretariat]'
      'GO'
      
        ' IF  EXISTS (SELECT * FROM sysobjects WHERE id = OBJECT_ID(N'#39'[db' +
        'o].[Recommite_has_JpgFile]'#39'))'
      'DROP PROCEDURE [dbo].[Recommite_has_JpgFile]'
      'GO'
      
        ' IF  EXISTS (SELECT * FROM sysobjects WHERE id = OBJECT_ID(N'#39'[db' +
        'o].[Recommite_Report]'#39'))'
      'DROP PROCEDURE [dbo].[Recommite_Report]'
      'GO'
      
        ' IF  EXISTS (SELECT * FROM sysobjects WHERE id = OBJECT_ID(N'#39'[db' +
        'o].[Report_Scan]'#39')) '
      'DROP PROCEDURE [dbo].[Report_Scan]'
      'GO'
      
        'IF  EXISTS (SELECT * FROM sysobjects WHERE id = OBJECT_ID(N'#39'[dbo' +
        '].[Report_UserLog]'#39'))'
      'DROP PROCEDURE [dbo].[Report_UserLog]'
      'GO'
      
        'IF  EXISTS (SELECT * FROM sysobjects WHERE id = OBJECT_ID(N'#39'[dbo' +
        '].[Report_UserTable]'#39'))'
      'DROP PROCEDURE [dbo].[Report_UserTable]'
      'GO'
      
        'IF  EXISTS (SELECT * FROM sysobjects WHERE id = OBJECT_ID(N'#39'[dbo' +
        '].[SaveAs_Accesses]'#39'))'
      'DROP PROCEDURE [dbo].[SaveAs_Accesses]'
      'GO'
      
        'IF  EXISTS (SELECT * FROM sysobjects WHERE id = OBJECT_ID(N'#39'[dbo' +
        '].[Select_AlternativeInfo_ByUserID]'#39'))'
      'DROP PROCEDURE [dbo].[Select_AlternativeInfo_ByUserID]'
      'GO'
      
        'IF  EXISTS (SELECT * FROM sysobjects WHERE id = OBJECT_ID(N'#39'[dbo' +
        '].[select_CiticalLetterFields]'#39'))'
      'DROP PROCEDURE [dbo].[select_CiticalLetterFields]'
      'GO'
      
        'IF  EXISTS (SELECT * FROM sysobjects WHERE id = OBJECT_ID(N'#39'[dbo' +
        '].[Select_ExactCopy]'#39'))'
      'DROP PROCEDURE [dbo].[Select_ExactCopy]'
      'GO'
      
        'IF  EXISTS (SELECT * FROM sysobjects WHERE id = OBJECT_ID(N'#39'[dbo' +
        '].[Select_FieldAccess_by_TableID]'#39'))'
      'DROP PROCEDURE [dbo].[Select_FieldAccess_by_TableID]'
      'GO'
      
        'IF  EXISTS (SELECT * FROM sysobjects WHERE id = OBJECT_ID(N'#39'[dbo' +
        '].[Select_Fields_by_TableID]'#39'))'
      'DROP PROCEDURE [dbo].[Select_Fields_by_TableID]'
      'GO'
      
        'IF  EXISTS (SELECT * FROM sysobjects WHERE id = OBJECT_ID(N'#39'[dbo' +
        '].[Select_FolllowUp_ByLetterID]'#39'))'
      'DROP PROCEDURE [dbo].[Select_FolllowUp_ByLetterID]'
      'GO'
      
        'IF  EXISTS (SELECT * FROM sysobjects WHERE id = OBJECT_ID(N'#39'[dbo' +
        '].[Select_FollowUP_By_Date]'#39'))'
      'DROP PROCEDURE [dbo].[Select_FollowUP_By_Date]'
      'GO'
      
        'IF  EXISTS (SELECT * FROM sysobjects WHERE id = OBJECT_ID(N'#39'[dbo' +
        '].[Select_FollowUp_ByStart]'#39'))'
      'DROP PROCEDURE [dbo].[Select_FollowUp_ByStart]'
      'GO'
      
        'IF  EXISTS (SELECT * FROM sysobjects WHERE id = OBJECT_ID(N'#39'[dbo' +
        '].[select_fromorganization]'#39'))'
      'DROP PROCEDURE [dbo].[select_fromorganization]'
      'GO'
      
        'IF  EXISTS (SELECT * FROM sysobjects WHERE id = OBJECT_ID(N'#39'[dbo' +
        '].[select_Letter]'#39'))'
      'DROP PROCEDURE [dbo].[select_Letter]'
      'GO'
      
        'IF  EXISTS (SELECT * FROM sysobjects WHERE id = OBJECT_ID(N'#39'[dbo' +
        '].[Select_letter_details]'#39'))'
      'DROP PROCEDURE [dbo].[Select_letter_details]'
      'GO'
      ''
      
        'IF  EXISTS (SELECT * FROM sysobjects WHERE id = OBJECT_ID(N'#39'[dbo' +
        '].[Select_LetterReCommite]'#39')) '
      'DROP PROCEDURE [dbo].[Select_LetterReCommite]'
      'GO'
      ''
      
        'IF  EXISTS (SELECT * FROM sysobjects WHERE id = OBJECT_ID(N'#39'[dbo' +
        '].[select_LetterSubject]'#39')) '
      'DROP PROCEDURE [dbo].[select_LetterSubject]'
      'GO'
      ''
      
        'IF  EXISTS (SELECT * FROM sysobjects WHERE id = OBJECT_ID(N'#39'[dbo' +
        '].[SELECT_ParaphTemplate]'#39')) '
      'DROP PROCEDURE [dbo].[SELECT_ParaphTemplate]'
      'GO'
      ''
      
        'IF  EXISTS (SELECT * FROM sysobjects WHERE id = OBJECT_ID(N'#39'[dbo' +
        '].[select_ReceivedLetters]'#39')) '
      'DROP PROCEDURE [dbo].[select_ReceivedLetters]'
      'GO'
      ''
      
        'IF  EXISTS (SELECT * FROM sysobjects WHERE id = OBJECT_ID(N'#39'[dbo' +
        '].[Select_recommites_byLetterID]'#39')) '
      'DROP PROCEDURE [dbo].[Select_recommites_byLetterID]'
      'GO'
      ''
      
        'IF  EXISTS (SELECT * FROM sysobjects WHERE id = OBJECT_ID(N'#39'[dbo' +
        '].[select_sentLetters]'#39')) '
      'DROP PROCEDURE [dbo].[select_sentLetters]'
      'GO'
      ''
      
        'IF  EXISTS (SELECT * FROM sysobjects WHERE id = OBJECT_ID(N'#39'[dbo' +
        '].[select_userLoginLogout]'#39')) '
      'DROP PROCEDURE [dbo].[select_userLoginLogout]'
      'GO'
      ''
      
        'IF  EXISTS (SELECT * FROM sysobjects WHERE id = OBJECT_ID(N'#39'[dbo' +
        '].[Select_UserOrgid]'#39')) '
      'DROP PROCEDURE [dbo].[Select_UserOrgid]'
      'GO'
      ''
      
        'IF  EXISTS (SELECT * FROM sysobjects WHERE id = OBJECT_ID(N'#39'[dbo' +
        '].[Select_UserSign]'#39')) '
      'DROP PROCEDURE [dbo].[Select_UserSign]'
      'GO'
      ''
      
        'IF  EXISTS (SELECT * FROM sysobjects WHERE id = OBJECT_ID(N'#39'[dbo' +
        '].[selectAddedInfo]'#39')) '
      'DROP PROCEDURE [dbo].[selectAddedInfo]'
      'GO'
      ''
      
        'IF  EXISTS (SELECT * FROM sysobjects WHERE id = OBJECT_ID(N'#39'[dbo' +
        '].[SelectInfo]'#39')) '
      'DROP PROCEDURE [dbo].[SelectInfo]'
      'GO'
      ''
      
        'IF  EXISTS (SELECT * FROM sysobjects WHERE id = OBJECT_ID(N'#39'[dbo' +
        '].[SelectLetter]'#39'))'
      'DROP PROCEDURE [dbo].[SelectLetter]'
      'GO'
      ''
      
        'IF  EXISTS (SELECT * FROM sysobjects WHERE id = OBJECT_ID(N'#39'[dbo' +
        '].[SendLetter_To_Other_sec]'#39')) '
      'DROP PROCEDURE [dbo].[SendLetter_To_Other_sec]'
      'GO'
      ''
      
        'IF  EXISTS (SELECT * FROM sysobjects WHERE id = OBJECT_ID(N'#39'[dbo' +
        '].[shrink_Files]'#39')) '
      'DROP PROCEDURE [dbo].[shrink_Files]'
      'GO'
      ''
      ''
      
        'IF  EXISTS (SELECT * FROM sysobjects WHERE id = OBJECT_ID(N'#39'[dbo' +
        '].[sp_Add_GroupRecommite]'#39')) '
      'DROP PROCEDURE [dbo].[sp_Add_GroupRecommite]'
      'GO'
      ''
      
        'IF  EXISTS (SELECT * FROM sysobjects WHERE id = OBJECT_ID(N'#39'[dbo' +
        '].[Sp_AddFileToDB]'#39')) '
      'DROP PROCEDURE [dbo].[Sp_AddFileToDB]'
      'GO'
      ''
      
        'IF  EXISTS (SELECT * FROM sysobjects WHERE id = OBJECT_ID(N'#39'[dbo' +
        '].[sp_ArchivePlaces]'#39')) '
      'DROP PROCEDURE [dbo].[sp_ArchivePlaces]'
      'GO'
      ''
      
        'IF  EXISTS (SELECT * FROM sysobjects WHERE id = OBJECT_ID(N'#39'[dbo' +
        '].[sp_board]'#39')) '
      'DROP PROCEDURE [dbo].[sp_board]'
      'GO'
      ''
      
        'IF  EXISTS (SELECT * FROM sysobjects WHERE id = OBJECT_ID(N'#39'[dbo' +
        '].[sp_checkusernotes]'#39')) '
      'DROP PROCEDURE [dbo].[sp_checkusernotes]'
      'GO'
      ''
      
        'IF  EXISTS (SELECT * FROM sysobjects WHERE id = OBJECT_ID(N'#39'[dbo' +
        '].[sp_CompleteFieldBook]'#39')) '
      'DROP PROCEDURE [dbo].[sp_CompleteFieldBook]'
      'GO'
      ''
      
        'IF  EXISTS (SELECT * FROM sysobjects WHERE id = OBJECT_ID(N'#39'[dbo' +
        '].[sp_dailyRep]'#39')) '
      'DROP PROCEDURE [dbo].[sp_dailyRep]'
      'GO'
      ''
      
        'IF  EXISTS (SELECT * FROM sysobjects WHERE id = OBJECT_ID(N'#39'[dbo' +
        '].[Sp_Del_NewsGroupUsers]'#39')) '
      'DROP PROCEDURE [dbo].[Sp_Del_NewsGroupUsers]'
      'GO'
      ''
      
        'IF  EXISTS (SELECT * FROM sysobjects WHERE id = OBJECT_ID(N'#39'[dbo' +
        '].[Sp_Del_WorkGroupOrg]'#39')) '
      'DROP PROCEDURE [dbo].[Sp_Del_WorkGroupOrg]'
      'GO'
      ''
      
        'IF  EXISTS (SELECT * FROM sysobjects WHERE id = OBJECT_ID(N'#39'[dbo' +
        '].[Sp_DelayedLetter]'#39')) '
      'DROP PROCEDURE [dbo].[Sp_DelayedLetter]'
      'GO'
      ''
      
        'IF  EXISTS (SELECT * FROM sysobjects WHERE id = OBJECT_ID(N'#39'[dbo' +
        '].[sp_delphi_Proc]'#39')) '
      'DROP PROCEDURE [dbo].[sp_delphi_Proc]'
      'GO'
      ''
      
        'IF  EXISTS (SELECT * FROM sysobjects WHERE id = OBJECT_ID(N'#39'[dbo' +
        '].[sp_delphi_proceByName]'#39')) '
      'DROP PROCEDURE [dbo].[sp_delphi_proceByName]'
      'GO'
      ''
      
        'IF  EXISTS (SELECT * FROM sysobjects WHERE id = OBJECT_ID(N'#39'[dbo' +
        '].[Sp_DistinctDate]'#39')) '
      'DROP PROCEDURE [dbo].[Sp_DistinctDate]'
      'GO'
      ''
      
        'IF  EXISTS (SELECT * FROM sysobjects WHERE id = OBJECT_ID(N'#39'[dbo' +
        '].[sp_duplicateOrg]'#39')) '
      'DROP PROCEDURE [dbo].[sp_duplicateOrg]'
      'GO'
      ''
      
        'IF  EXISTS (SELECT * FROM sysobjects WHERE id = OBJECT_ID(N'#39'[dbo' +
        '].[sp_FieldByTableCode]'#39')) '
      'DROP PROCEDURE [dbo].[sp_FieldByTableCode]'
      'GO'
      ''
      
        'IF  EXISTS (SELECT * FROM sysobjects WHERE id = OBJECT_ID(N'#39'[dbo' +
        '].[Sp_FillBlob]'#39')) '
      'DROP PROCEDURE [dbo].[Sp_FillBlob]'
      'GO'
      ''
      
        'IF  EXISTS (SELECT * FROM sysobjects WHERE id = OBJECT_ID(N'#39'[dbo' +
        '].[sp_GetFromHelp]'#39')) '
      'DROP PROCEDURE [dbo].[sp_GetFromHelp]'
      'GO'
      ''
      
        'IF  EXISTS (SELECT * FROM sysobjects WHERE id = OBJECT_ID(N'#39'[dbo' +
        '].[sp_GetTermCode]'#39')) '
      'DROP PROCEDURE [dbo].[sp_GetTermCode]'
      'GO'
      ''
      
        'IF  EXISTS (SELECT * FROM sysobjects WHERE id = OBJECT_ID(N'#39'[dbo' +
        '].[sp_inbox]'#39')) '
      'DROP PROCEDURE [dbo].[sp_inbox]'
      'GO'
      ''
      
        'IF  EXISTS (SELECT * FROM sysobjects WHERE id = OBJECT_ID(N'#39'[dbo' +
        '].[sp_Letter_Numbers]'#39')) '
      'DROP PROCEDURE [dbo].[sp_Letter_Numbers]'
      'GO'
      ''
      
        'IF  EXISTS (SELECT * FROM sysobjects WHERE id = OBJECT_ID(N'#39'[dbo' +
        '].[sp_makeRecommited]'#39')) '
      'DROP PROCEDURE [dbo].[sp_makeRecommited]'
      'GO'
      ''
      
        'IF  EXISTS (SELECT * FROM sysobjects WHERE id = OBJECT_ID(N'#39'[dbo' +
        '].[sp_recommite_report]'#39')) '
      'DROP PROCEDURE [dbo].[sp_recommite_report]'
      'GO'
      ''
      
        'IF  EXISTS (SELECT * FROM sysobjects WHERE id = OBJECT_ID(N'#39'[dbo' +
        '].[sp_recommite_statistic]'#39')) '
      'DROP PROCEDURE [dbo].[sp_recommite_statistic]'
      'GO'
      ''
      
        'IF  EXISTS (SELECT * FROM sysobjects WHERE id = OBJECT_ID(N'#39'[dbo' +
        '].[sp_Recommites_Number]'#39')) '
      'DROP PROCEDURE [dbo].[sp_Recommites_Number]'
      'GO'
      ''
      
        'IF  EXISTS (SELECT * FROM sysobjects WHERE id = OBJECT_ID(N'#39'[dbo' +
        '].[sp_ReindexTables]'#39')) '
      'DROP PROCEDURE [dbo].[sp_ReindexTables]'
      'GO'
      ''
      
        'IF  EXISTS (SELECT * FROM sysobjects WHERE id = OBJECT_ID(N'#39'[dbo' +
        '].[Sp_Sel_Emails]'#39')) '
      'DROP PROCEDURE [dbo].[Sp_Sel_Emails]'
      'GO'
      ''
      
        'IF  EXISTS (SELECT * FROM sysobjects WHERE id = OBJECT_ID(N'#39'[dbo' +
        '].[Sp_Sel_ImageData]'#39')) '
      'DROP PROCEDURE [dbo].[Sp_Sel_ImageData]'
      'GO'
      ''
      
        'IF  EXISTS (SELECT * FROM sysobjects WHERE id = OBJECT_ID(N'#39'[dbo' +
        '].[Sp_Sel_News]'#39')) '
      'DROP PROCEDURE [dbo].[Sp_Sel_News]'
      'GO'
      ''
      
        'IF  EXISTS (SELECT * FROM sysobjects WHERE id = OBJECT_ID(N'#39'[dbo' +
        '].[Sp_Sel_NewsGroup]'#39')) '
      'DROP PROCEDURE [dbo].[Sp_Sel_NewsGroup]'
      'GO'
      ''
      
        'IF  EXISTS (SELECT * FROM sysobjects WHERE id = OBJECT_ID(N'#39'[dbo' +
        '].[Sp_Sel_Phone]'#39')) '
      'DROP PROCEDURE [dbo].[Sp_Sel_Phone]'
      'GO'
      ''
      
        'IF  EXISTS (SELECT * FROM sysobjects WHERE id = OBJECT_ID(N'#39'[dbo' +
        '].[Sp_Sel_UserAccArchive]'#39')) '
      'DROP PROCEDURE [dbo].[Sp_Sel_UserAccArchive]'
      'GO'
      ''
      
        'IF  EXISTS (SELECT * FROM sysobjects WHERE id = OBJECT_ID(N'#39'[dbo' +
        '].[Sp_Select_Receipt]'#39')) '
      'DROP PROCEDURE [dbo].[Sp_Select_Receipt]'
      'GO'
      ''
      
        'IF  EXISTS (SELECT * FROM sysobjects WHERE id = OBJECT_ID(N'#39'[dbo' +
        '].[Sp_Select_WorkGroup]'#39')) '
      'DROP PROCEDURE [dbo].[Sp_Select_WorkGroup]'
      'GO'
      ''
      
        'IF  EXISTS (SELECT * FROM sysobjects WHERE id = OBJECT_ID(N'#39'[dbo' +
        '].[sp_SetForeinKey]'#39')) '
      'DROP PROCEDURE [dbo].[sp_SetForeinKey]'
      'GO'
      ''
      
        'IF  EXISTS (SELECT * FROM sysobjects WHERE id = OBJECT_ID(N'#39'[dbo' +
        '].[sp_Statistic]'#39')) '
      'DROP PROCEDURE [dbo].[sp_Statistic]'
      'GO'
      ''
      
        'IF  EXISTS (SELECT * FROM sysobjects WHERE id = OBJECT_ID(N'#39'[dbo' +
        '].[sp_stop_mytrace]'#39')) '
      'DROP PROCEDURE [dbo].[sp_stop_mytrace]'
      'GO'
      ''
      
        'IF  EXISTS (SELECT * FROM sysobjects WHERE id = OBJECT_ID(N'#39'[dbo' +
        '].[Transfer_Get_Letter_By_LetterID]'#39')) '
      'DROP PROCEDURE [dbo].[Transfer_Get_Letter_By_LetterID]'
      'GO'
      ''
      
        'IF  EXISTS (SELECT * FROM sysobjects WHERE id = OBJECT_ID(N'#39'[dbo' +
        '].[Transfer_Get_Letterdata_By_LetterDataID]'#39')) '
      'DROP PROCEDURE [dbo].[Transfer_Get_Letterdata_By_LetterDataID]'
      'GO'
      ''
      
        'IF  EXISTS (SELECT * FROM sysobjects WHERE id = OBJECT_ID(N'#39'[dbo' +
        '].[Transfer_Get_LetterData_By_LetterID]'#39')) '
      'DROP PROCEDURE [dbo].[Transfer_Get_LetterData_By_LetterID]'
      'GO'
      ''
      
        'IF  EXISTS (SELECT * FROM sysobjects WHERE id = OBJECT_ID(N'#39'[dbo' +
        '].[Transfer_Get_LetterFieldValue_By_LetterID]'#39')) '
      'DROP PROCEDURE [dbo].[Transfer_Get_LetterFieldValue_By_LetterID]'
      'GO'
      ''
      
        'IF  EXISTS (SELECT * FROM sysobjects WHERE id = OBJECT_ID(N'#39'[dbo' +
        '].[Transfer_Get_Recommites_By_LetterID]'#39')) '
      'DROP PROCEDURE [dbo].[Transfer_Get_Recommites_By_LetterID]'
      'GO'
      ''
      
        'IF  EXISTS (SELECT * FROM sysobjects WHERE id = OBJECT_ID(N'#39'[dbo' +
        '].[Transfer_Get_SentLetter]'#39')) '
      'DROP PROCEDURE [dbo].[Transfer_Get_SentLetter]'
      'GO'
      ''
      
        'IF  EXISTS (SELECT * FROM sysobjects WHERE id = OBJECT_ID(N'#39'[dbo' +
        '].[Transfer_insert_LetterFieldValue]'#39')) '
      'DROP PROCEDURE [dbo].[Transfer_insert_LetterFieldValue]'
      'GO'
      ''
      
        'IF  EXISTS (SELECT * FROM sysobjects WHERE id = OBJECT_ID(N'#39'[dbo' +
        '].[Transfer_insert_ReCommites]'#39')) '
      'DROP PROCEDURE [dbo].[Transfer_insert_ReCommites]'
      'GO'
      ''
      
        'IF  EXISTS (SELECT * FROM sysobjects WHERE id = OBJECT_ID(N'#39'[dbo' +
        '].[Transfer_Insert_SentLetter]'#39')) '
      'DROP PROCEDURE [dbo].[Transfer_Insert_SentLetter]'
      'GO'
      ''
      
        'IF  EXISTS (SELECT * FROM sysobjects WHERE id = OBJECT_ID(N'#39'[dbo' +
        '].[Transfer_Insert_SharedLetter]'#39')) '
      'DROP PROCEDURE [dbo].[Transfer_Insert_SharedLetter]'
      'GO'
      ''
      
        'IF  EXISTS (SELECT * FROM sysobjects WHERE id = OBJECT_ID(N'#39'[dbo' +
        '].[Transfer_Sent_RelatedSecs]'#39')) '
      'DROP PROCEDURE [dbo].[Transfer_Sent_RelatedSecs]'
      'GO'
      ''
      
        'IF  EXISTS (SELECT * FROM sysobjects WHERE id = OBJECT_ID(N'#39'[dbo' +
        '].[Transfer_shared_RelatedSecs]'#39')) '
      'DROP PROCEDURE [dbo].[Transfer_shared_RelatedSecs]'
      'GO'
      ''
      
        'IF  EXISTS (SELECT * FROM sysobjects WHERE id = OBJECT_ID(N'#39'[dbo' +
        '].[Trunsfer_update_Letter]'#39')) '
      'DROP PROCEDURE [dbo].[Trunsfer_update_Letter]'
      'GO'
      ''
      
        'IF  EXISTS (SELECT * FROM sysobjects WHERE id = OBJECT_ID(N'#39'[dbo' +
        '].[Trunsfer_update_LetterFieldValue]'#39')) '
      'DROP PROCEDURE [dbo].[Trunsfer_update_LetterFieldValue]'
      'GO'
      ''
      
        'IF  EXISTS (SELECT * FROM sysobjects WHERE id = OBJECT_ID(N'#39'[dbo' +
        '].[Trunsfer_update_ReCommites]'#39')) '
      'DROP PROCEDURE [dbo].[Trunsfer_update_ReCommites]'
      'GO'
      ''
      
        'IF  EXISTS (SELECT * FROM sysobjects WHERE id = OBJECT_ID(N'#39'[dbo' +
        '].[Update_all_recommites]'#39')) '
      'DROP PROCEDURE [dbo].[Update_all_recommites]'
      'GO'
      ''
      
        'IF  EXISTS (SELECT * FROM sysobjects WHERE id = OBJECT_ID(N'#39'[dbo' +
        '].[Update_Archived_letter]'#39')) '
      'DROP PROCEDURE [dbo].[Update_Archived_letter]'
      'GO'
      ''
      
        'IF  EXISTS (SELECT * FROM sysobjects WHERE id = OBJECT_ID(N'#39'[dbo' +
        '].[update_ArchiveFolder]'#39')) '
      'DROP PROCEDURE [dbo].[update_ArchiveFolder]'
      'GO'
      ''
      
        'IF  EXISTS (SELECT * FROM sysobjects WHERE id = OBJECT_ID(N'#39'[dbo' +
        '].[update_FromOrganizations_Title]'#39')) '
      'DROP PROCEDURE [dbo].[update_FromOrganizations_Title]'
      'GO'
      ''
      
        'IF  EXISTS (SELECT * FROM sysobjects WHERE id = OBJECT_ID(N'#39'[dbo' +
        '].[update_Letter_Finalized]'#39')) '
      'DROP PROCEDURE [dbo].[update_Letter_Finalized]'
      'GO'
      ''
      
        'IF  EXISTS (SELECT * FROM sysobjects WHERE id = OBJECT_ID(N'#39'[dbo' +
        '].[update_Letter_Indicator]'#39')) '
      'DROP PROCEDURE [dbo].[update_Letter_Indicator]'
      'GO'
      ''
      
        'IF  EXISTS (SELECT * FROM sysobjects WHERE id = OBJECT_ID(N'#39'[dbo' +
        '].[update_letter_sendstatusID]'#39')) '
      'DROP PROCEDURE [dbo].[update_letter_sendstatusID]'
      'GO'
      ''
      
        'IF  EXISTS (SELECT * FROM sysobjects WHERE id = OBJECT_ID(N'#39'[dbo' +
        '].[update_LetterText]'#39')) '
      'DROP PROCEDURE [dbo].[update_LetterText]'
      'GO'
      ''
      
        'IF  EXISTS (SELECT * FROM sysobjects WHERE id = OBJECT_ID(N'#39'[dbo' +
        '].[Update_ParaphTemplate]'#39')) '
      'DROP PROCEDURE [dbo].[Update_ParaphTemplate]'
      'GO'
      ''
      
        'IF  EXISTS (SELECT * FROM sysobjects WHERE id = OBJECT_ID(N'#39'[dbo' +
        '].[update_ReCommites_proceed]'#39')) '
      'DROP PROCEDURE [dbo].[update_ReCommites_proceed]'
      'GO'
      ''
      
        'IF  EXISTS (SELECT * FROM sysobjects WHERE id = OBJECT_ID(N'#39'[dbo' +
        '].[update_ReCommites_viewDate]'#39')) '
      'DROP PROCEDURE [dbo].[update_ReCommites_viewDate]'
      'GO'
      ''
      
        'IF  EXISTS (SELECT * FROM sysobjects WHERE id = OBJECT_ID(N'#39'[dbo' +
        '].[update_UserLoginLogout]'#39')) '
      'DROP PROCEDURE [dbo].[update_UserLoginLogout]'
      'GO'
      ''
      
        'IF  EXISTS (SELECT * FROM sysobjects WHERE id = OBJECT_ID(N'#39'[dbo' +
        '].[UserChange_pass]'#39')) '
      'DROP PROCEDURE [dbo].[UserChange_pass]'
      'GO'
      ''
      
        'IF  EXISTS (SELECT * FROM sysobjects WHERE id = OBJECT_ID(N'#39'[dbo' +
        '].[UserLog_Report]'#39')) '
      'DROP PROCEDURE [dbo].[UserLog_Report]'
      'GO'
      ''
      
        'IF  EXISTS (SELECT * FROM sysobjects WHERE id = OBJECT_ID(N'#39'[dbo' +
        '].[Web_Access]'#39')) '
      'DROP PROCEDURE [dbo].[Web_Access]'
      'GO'
      ''
      
        'IF  EXISTS (SELECT * FROM sysobjects WHERE id = OBJECT_ID(N'#39'[dbo' +
        '].[web_ArchiveRecommite]'#39')) '
      'DROP PROCEDURE [dbo].[web_ArchiveRecommite]'
      'GO'
      ''
      
        'IF  EXISTS (SELECT * FROM sysobjects WHERE id = OBJECT_ID(N'#39'[dbo' +
        '].[web_Get_Letter_by_LetterID]'#39')) '
      'DROP PROCEDURE [dbo].[web_Get_Letter_by_LetterID]'
      'GO'
      ''
      
        'IF  EXISTS (SELECT * FROM sysobjects WHERE id = OBJECT_ID(N'#39'[dbo' +
        '].[web_Get_LetterData_by_LetterDataID]'#39')) '
      'DROP PROCEDURE [dbo].[web_Get_LetterData_by_LetterDataID]'
      'GO'
      ''
      
        'IF  EXISTS (SELECT * FROM sysobjects WHERE id = OBJECT_ID(N'#39'[dbo' +
        '].[web_GetLetterArchiveHistory]'#39')) '
      'DROP PROCEDURE [dbo].[web_GetLetterArchiveHistory]'
      'GO'
      ''
      
        'IF  EXISTS (SELECT * FROM sysobjects WHERE id = OBJECT_ID(N'#39'[dbo' +
        '].[web_GetLetterAttachment]'#39')) '
      'DROP PROCEDURE [dbo].[web_GetLetterAttachment]'
      'GO'
      ''
      
        'IF  EXISTS (SELECT * FROM sysobjects WHERE id = OBJECT_ID(N'#39'[dbo' +
        '].[web_GetRecommiteById]'#39')) '
      'DROP PROCEDURE [dbo].[web_GetRecommiteById]'
      'GO'
      ''
      
        'IF  EXISTS (SELECT * FROM sysobjects WHERE id = OBJECT_ID(N'#39'[dbo' +
        '].[web_insert_AnswerLetter]'#39')) '
      'DROP PROCEDURE [dbo].[web_insert_AnswerLetter]'
      'GO'
      ''
      
        'IF  EXISTS (SELECT * FROM sysobjects WHERE id = OBJECT_ID(N'#39'[dbo' +
        '].[web_insert_DraftLetter]'#39')) '
      'DROP PROCEDURE [dbo].[web_insert_DraftLetter]'
      'GO'
      ''
      
        'IF  EXISTS (SELECT * FROM sysobjects WHERE id = OBJECT_ID(N'#39'[dbo' +
        '].[web_insert_innerLetter]'#39')) '
      'DROP PROCEDURE [dbo].[web_insert_innerLetter]'
      'GO'
      ''
      
        'IF  EXISTS (SELECT * FROM sysobjects WHERE id = OBJECT_ID(N'#39'[dbo' +
        '].[web_Insert_LetterData]'#39')) '
      'DROP PROCEDURE [dbo].[web_Insert_LetterData]'
      'GO'
      ''
      
        'IF  EXISTS (SELECT * FROM sysobjects WHERE id = OBJECT_ID(N'#39'[dbo' +
        '].[web_insert_NewReCommite]'#39')) '
      'DROP PROCEDURE [dbo].[web_insert_NewReCommite]'
      'GO'
      ''
      
        'IF  EXISTS (SELECT * FROM sysobjects WHERE id = OBJECT_ID(N'#39'[dbo' +
        '].[web_insert_ReceivedLetter]'#39')) '
      'DROP PROCEDURE [dbo].[web_insert_ReceivedLetter]'
      'GO'
      ''
      
        'IF  EXISTS (SELECT * FROM sysobjects WHERE id = OBJECT_ID(N'#39'[dbo' +
        '].[web_insert_sentLetter]'#39')) '
      'DROP PROCEDURE [dbo].[web_insert_sentLetter]'
      'GO'
      ''
      
        'IF  EXISTS (SELECT * FROM sysobjects WHERE id = OBJECT_ID(N'#39'[dbo' +
        '].[web_ProceedRecommite]'#39')) '
      'DROP PROCEDURE [dbo].[web_ProceedRecommite]'
      'GO'
      ''
      
        'IF  EXISTS (SELECT * FROM sysobjects WHERE id = OBJECT_ID(N'#39'[dbo' +
        '].[web_Select_LetterReCommite]'#39')) '
      'DROP PROCEDURE [dbo].[web_Select_LetterReCommite]'
      'GO'
      ''
      
        'IF  EXISTS (SELECT * FROM sysobjects WHERE id = OBJECT_ID(N'#39'[dbo' +
        '].[ysp_Backup]'#39')) '
      'DROP PROCEDURE [dbo].[ysp_Backup]'
      'GO'
      ''
      
        'IF  EXISTS (SELECT * FROM sysobjects WHERE id = OBJECT_ID(N'#39'[dbo' +
        '].[Ysp_create_Temp_Database]'#39')) '
      'DROP PROCEDURE [dbo].[Ysp_create_Temp_Database]'
      'GO'
      ''
      
        'IF  EXISTS (SELECT * FROM sysobjects WHERE id = OBJECT_ID(N'#39'[dbo' +
        '].[ysp_DELETE_Temp_Database]'#39')) '
      'DROP PROCEDURE [dbo].[ysp_DELETE_Temp_Database]'
      'GO'
      ''
      
        'IF  EXISTS (SELECT * FROM sysobjects WHERE id = OBJECT_ID(N'#39'[dbo' +
        '].[ysp_exists_Temp_Database]'#39')) '
      'DROP PROCEDURE [dbo].[ysp_exists_Temp_Database]'
      'GO'
      ''
      
        'IF  EXISTS (SELECT * FROM sysobjects WHERE id = OBJECT_ID(N'#39'[dbo' +
        '].[ysp_shrink]'#39')) '
      'DROP PROCEDURE [dbo].[ysp_shrink]'
      ' '
      'GO'
      ' '
      'GO'
      ''
      ''
      'CREATE Proc [dbo].[GetLetterIDByFollowID]'
      '@followID char(13),@LetterID int out'
      'as'
      'begin'
      ''
      
        'declare @Secid int,@IndicatorID int ,@CorrectCheckCode char(3),@' +
        'CheckCode char(3),@Letter_type int'
      ''
      'if (substring(@followid,8,1)<>'#39'/'#39') or '
      'isnumeric(substring(@followid,1,7))=0 or'
      'isnumeric(substring(@followid,9,5))=0'
      'begin'
      '  set @letterid=0'
      '  return'
      'end'
      ' '
      'set @secid=cast(substring(@followID,4,3) as int)'
      'set @CheckCode=substring(@followID,1,3) '
      ''
      ''
      'set @Letter_type=cast(substring(@followID,7,1) as int)'
      'set @IndicatorID=cast(substring(@followID,9,5) as int)'
      ''
      
        'if exists (select * from letter where IndicatorID=@IndicatorID a' +
        'nd SecretariatID=@secid and '
      '@Letter_type=Letter_type)'
      'select @LetterID=max(LetterID) '
      'from letter '
      'where IndicatorID=@IndicatorID and SecretariatID=@secid and '
      'Letter_type=@Letter_type'
      'else'
      'select @LetterID=0 '
      ''
      'execute GetCheckCode @LetterID, @CorrectCheckCode output'
      ''
      'if @CorrectCheckCode<>@CheckCode'
      'select @LetterID=0 '
      ''
      ''
      'end'
      ''
      ''
      ''
      'GO '
      'create proc [dbo].[Sp_Details_Follow]'
      '@letterid int'
      'as'
      
        'SELECT L.IndicatorID, L.IncommingNO, L.RegistrationDate, FO.Titl' +
        'e as fot FROM Letter AS L'
      
        ' INNER JOIN FromOrganizations AS FO ON L.ToOrgID = FO.ID WHERE (' +
        'L.LetterID = @letterid)'
      ''
      ''
      ''
      'GO '
      'CREATE proc [dbo].[Sp_Memo_Follow]'
      '@letterid int'
      'as'
      'SELECT [Memo] FROM [Letter] where letterid=@letterid'
      ''
      ' '
      'GO'
      'CREATE proc [dbo].[Sp_Recommites_follow]'
      '@letterID int'
      'as'
      
        'SELECT FO.title+'#39'('#39'+FO.responsiblestaffer+'#39')'#39' as fot, RC.Paraph ' +
        'FROM ReCommites RC '
      'inner join fromorganizations FO on'
      'RC.orgid=FO.id where letterid=@letterid'
      ''
      ' '
      'GO'
      'CREATE proc [dbo].[Sp_Proceed_Follow]'
      '@letterID int'
      'as'
      ''
      
        'SELECT AT.actiontypetitle as att FROM Letter L inner join Action' +
        'Type AT on'
      'L.latestActionTypeID=AT.actiontypeid where L.letterid=@letterid'
      ''
      ' '
      'GO'
      'CREATE proc [dbo].[Sp_SentMail_Follow]'
      '@letterID int'
      'as'
      ''
      ''
      ''
      'declare @i int'
      
        'set @i=(select sentletterid from letter where letterid=@letterid' +
        ' )'
      'select indicatorid from letter where letterid=@i'
      ''
      ''
      'GO '
      'CREATE Procedure [dbo].[GetFollowCode]'
      '@letterID int,@Code varchar(100) output'
      'as'
      
        'declare @SecretariatID varchar(4),@IndicatorID varchar(5),@Check' +
        ' char(3), @LetterType char(1)'
      ''
      
        'select @SecretariatID=Cast(SecretariatID AS VARCHAR(3)),@Indicat' +
        'orID=Cast(IndicatorID as varchar(5)), @LetterType=Cast(Letter_Ty' +
        'pe as char(1))'
      'from Letter'
      'where LetterID=@LetterID'
      ''
      'exec GetCheckCode @letterID,@Check output'
      ''
      'while len(@SecretariatID)<3 '
      '  set @SecretariatID='#39'0'#39'+@SecretariatID'
      ''
      'while len(@IndicatorID)<5'
      '  set @IndicatorID='#39'0'#39'+@IndicatorID'
      ''
      'set @Code=@Check+@SecretariatID+@LetterType +'#39'/'#39'+@IndicatorID '
      'GO '
      ''
      'CREATE Procedure [dbo].[GetCheckCode]'
      '@L int,@CheckCode char(3) out'
      ' '
      'as'
      ''
      
        'declare @s varchar(8),@a1 int,@a2 int,@a3 int,@a4 int,@a5 int,@a' +
        '6 int,@a7 int,@a8 int'
      ''
      'set @s=cast(@l as varchar(8))'
      ''
      ' while len(@s)<8'
      '   set @s='#39'0'#39'+@s'
      ''
      'set @a1=cast(substring(@s,1,1) as int)'
      'set @a2=cast(substring(@s,2,1) as int)'
      'set @a3=cast(substring(@s,3,1) as int)'
      'set @a4=cast(substring(@s,4,1) as int)'
      'set @a5=cast(substring(@s,5,1) as int)'
      'set @a6=cast(substring(@s,6,1) as int)'
      'set @a7=cast(substring(@s,7,1) as int)'
      'set @a8=cast(substring(@s,8,1) as int)'
      ''
      
        'set @CheckCode=cast(100+@a8+(@a4+@a5+8)*(@a3+@a6+3)*(@a2+@a7+5)*' +
        '(@a1+@a8+7)%900 as char(3))'
      '  GO'
      ''
      
        'CREATE PROCEDURE [dbo].[Activate_Letter](@receivedMode bit,@indi' +
        'catorID int ,@myear int, @secID int)'
      'as'
      '    if @receivedMode=1 '
      ' update ReceievedLetters'
      '                 set letter_type=1'
      '                 where IndicatorID=@indicatorID'
      '                 and  MYear=@myear'
      '                 and  SecretariatID=@secID  '
      'else'
      ' update SentLetters'
      '                 set letter_type=1'
      '                 where IndicatorID=@indicatorID'
      '                 and  MYear=@myear'
      '                 and  SecretariatID=@secID'
      ''
      '  delete from LetterFile'
      '                 where LetterIndicatorID=@indicatorID'
      '                 and  LetterMYear=@myear'
      '                 and  SecID=@secid  '
      ''
      ''
      'GO '
      ''
      'CREATE procedure  [dbo].[Activate_Recommite]('
      '               @RecommiteID  int)'
      ' AS'
      'update  [dbo].[ReCommites] '
      'set proceeded=0,ActionTypeID=1'
      'WHERE'
      #9'( RecommiteID'#9' = @RecommiteID)'
      ''
      ''
      ''
      'GO '
      ''
      ''
      
        'CREATE Procedure [dbo].[AnswerLetter]( @LetterID int,@AnswerLett' +
        'erID int,@Today char(10))'
      'as'
      ''
      'UPDATE Letter SET SentLetterID = @AnswerLetterID'
      ' WHERE   LetterID=@LetterID'
      'DECLARE @Letterformat int'
      ''
      'select @letterFormat=letterFormat from letter'
      ' WHERE   LetterID=@LetterID'
      ''
      ''
      'if @letterFormat=1'
      'begin'
      ' UPDATE ReCommites'
      ' SET Proceeded=1, ProceedDate = @today'
      ' WHERE (Proceeded=0) AND (LetterID=@LetterID)'
      ''
      
        ' UPDATE ReCommites SET ActionTypeID=5 WHERE  (LetterID=@LetterID' +
        ')'
      ' update letter set LatestActionTypeID=5 where letterid=@letterid'
      ''
      'end'
      ''
      ''
      'GO '
      ''
      'create proc [dbo].[AnswerNote]'
      '@recommiteID int'
      'as'
      'update Recommites'
      'set Staffmemo='#39#1662#1610#1588' '#1606#1608#1610#1587' '#1589#1575#1583#1585#1607' '#1570#1605#1575#1583#1607' '#1588#1583' '#39',actiontypeid=4'
      'where recommiteid=@recommiteID'
      ''
      ' '
      'GO'
      ''
      'Create procedure [dbo].[Check_duplicate_UserName]'
      '@UserName nvarchar(50),@result bit  output'
      'as'
      'if exists (SELECT *'
      
        '  FROM  Users where ltrim(rtrim(username))=ltrim(rtrim(@UserName' +
        ')))'
      'set @result=1'
      'else'
      'set @result=0'
      ''
      'GO '
      ''
      ''
      ''
      'CREATE PROCEDURE [dbo].[delete_Accesses]'
      #9'(@AccessID '#9'[tinyint])'
      ''
      'AS DELETE [dbo].[Accesses] '
      ''
      'WHERE '
      #9'( [ID]'#9' = @AccessID)'
      ''
      ''
      ''
      ''
      ''
      ''
      ''
      'GO '
      ''
      ''
      ''
      'CREATE PROCEDURE [dbo].[delete_Actions_ByFormID]'
      #9'(@FormTag '#9'[tinyint])'
      ''
      'AS DELETE [dbo].[Actions] '
      ''
      'WHERE ('
      #9' [FormTag]'#9' = @FormTag)'
      ''
      ''
      ''
      ''
      ''
      ''
      ''
      'GO '
      ''
      ''
      ''
      ''
      ''
      
        'create procedure [dbo].[Delete_All_Secretariats_Of_User](@userid' +
        ' int)'
      'as'
      'DELETE FROM UserSecretariats'
      'WHERE     (UserId = @UserID)'
      ''
      ''
      ' '
      ''
      'GO'
      'SET ANSI_NULLS ON'
      'GO'
      'SET QUOTED_IDENTIFIER ON'
      'GO'
      ''
      ''
      
        'create procedure [dbo].[Delete_All_TemplateGroup_Of_User](@useri' +
        'd int)'
      'as'
      'DELETE FROM UserTemplateGroup'
      'WHERE     (UserId = @UserID)'
      ''
      ''
      ''
      ' '
      ''
      'GO'
      'SET ANSI_NULLS ON'
      'GO'
      'SET QUOTED_IDENTIFIER ON'
      'GO'
      ''
      'CREATE PROCEDURE [dbo].[Delete_ArchiveFolder](@FolderID [int])  '
      'AS'
      ''
      'DELETE UserAccArchive  '
      'WHERE( ArchiveFolderID = @FolderID)  '
      '---'
      ' '
      'delete LetterArchiveFolder '
      'where ArchiveFolderID = @FolderID  '
      ''
      'DELETE ArchiveFolder  '
      'WHERE( FolderID = @FolderID)  '
      ''
      ''
      ''
      'GO '
      ''
      ''
      
        'CREATE proc [dbo].[Delete_Exported_LetterData](@SecretariatID in' +
        't, @myear tinyint)'
      'as'
      'delete     LetterData'
      'FROM         LetterData '
      'INNER JOIN       Letter ON LetterData.LetterID = Letter.LetterID'
      
        'WHERE     (Letter.SecretariatID = @SecretariatID) AND (Letter.MY' +
        'ear = @myear)'
      ''
      ''
      ''
      ''
      ''
      ''
      ''
      'GO'
      ''
      ''
      'CREATE PROCEDURE [dbo].[delete_Extention]'
      '@ExtentionID int'
      'AS'
      'delete UserExtention where ExtentionID=@ExtentionID'
      'delete Extention where ExtentionID=@ExtentionID'
      ''
      ''
      ''
      ''
      ''
      'GO'
      ''
      'CREATE PROCEDURE [dbo].[Delete_Letter]  '
      '@LetterID int,@newInd int  '
      'AS  '
      'declare @letterformat tinyint  '
      'select   @letterformat=letterformat  '
      'from letter  '
      'where letterid=@LetterID  '
      '  '
      'if @letterformat=1   '
      '  UPDATE    Letter  '
      
        '  SET        LetterFormat = 3 ,memo=memo +'#39'('#39'+cast(indicatorid a' +
        's varchar(6)), indicatorid=@newind  '
      ' WHERE     (LetterID = @LetterID)  '
      '  '
      'if @letterformat in (2,3)  '
      'begin    '
      '  DELETE [ReCommites]  WHERE     (LetterID = @LetterID)  '
      '  DELETE [LetterText]  WHERE     (LetterID = @LetterID)  '
      '  DELETE [LetterData]  WHERE     (LetterID = @LetterID)  '
      '  DELETE from Letter WHERE     (LetterID = @LetterID)  '
      'end'
      ''
      ''
      'GO'
      ''
      ''
      ''
      'CREATE PROCEDURE [dbo].[delete_LetterArchiveFolder]'
      #9'(@LetterArchiveID '#9'[int])'
      ''
      'AS'
      'declare @letterid int'
      ''
      'select @letterid =letterid'
      'from[LetterArchiveFolder]'
      'where [LetterArchiveID]'#9' = @LetterArchiveID'
      ''
      ''
      'DELETE [dbo].[LetterArchiveFolder]'
      ''
      'WHERE'
      #9'( [LetterArchiveID]'#9' = @LetterArchiveID)'
      ''
      
        'if not exists (select * from [LetterArchiveID] where letterid=@l' +
        'etterid) '
      'update letter'
      'set Archived=0'
      'where letterid=@letterid'
      ''
      ''
      ''
      ''
      ''
      'GO'
      ''
      'create proc [dbo].[delete_LetterData] (@LetterDataID int )'
      'as'
      'delete       LetterData'
      'WHERE     (LetterDataID = @LetterDataID)'
      ''
      ''
      ''
      ''
      ''
      ''
      'GO'
      ''
      ''
      'create proc [dbo].[delete_letterImage]'
      '@Letterdataid int'
      'as'
      'declare @pageNumber int,@Letterid int'
      ''
      'select @pageNumber=pageNumber,@Letterid=Letterid from letterdata'
      'WHERE     (Letterdataid = @Letterdataid)'
      ''
      'DELETE FROM letterdata'
      'WHERE     (Letterdataid = @Letterdataid)'
      ''
      'update letterdata'
      'set pageNumber=pageNumber-1'
      'where @Letterid=Letterid and pageNumber>@pageNumber'
      ''
      ''
      ''
      ''
      ''
      ''
      ''
      'GO'
      ''
      'CREATE PROCEDURE [dbo].[delete_LetterWord]'
      #9'(@LetterID '#9'[int])'
      ''
      'AS DELETE [dbo].[LetterData] '
      ''
      'WHERE '
      #9'( [LetterID]'#9' = @LetterID AND'
      #9' [extention]'#9' = 3)'
      ''
      ''
      ''
      ''
      ''
      ''
      ''
      ''
      'GO '
      'Create Procedure [dbo].[delete_ParaphTemplate]'
      '@ParaphTemplateID int'
      'as'
      'declare @OrderId tinyint,@Userid int'
      ''
      ''
      
        'select @OrderID=Orderid,@Userid=Userid from ParaphTemplate Where' +
        ' ParaphTemplateID=@ParaphTemplateID'
      ''
      'delete  ParaphTemplate Where ParaphTemplateID=@ParaphTemplateID'
      ''
      ''
      
        '   update ParaphTemplate set OrderId=OrderID-1      where  Useri' +
        'd=@Userid and Orderid>@orderid'
      ''
      ''
      'GO'
      ''
      ''
      ''
      ''
      'CREATE PROCEDURE [dbo].[delete_ReCommites]'
      #9'(@RecommiteID '#9'[int])'
      ''
      'AS DELETE [dbo].[ReCommites] '
      ''
      'WHERE '
      #9'( [RecommiteID]'#9' = @RecommiteID)'
      ''
      ''
      ''
      ''
      ''
      ''
      'GO'
      ''
      ''
      'CREATE PROCEDURE [dbo].[Delete_Table](@tableID int)'
      'as'
      ''
      'declare @Tablename varchar(50)'
      ''
      'select @tablename=Tablename'
      ' from tables'
      'where tableid=@tableid'
      ''
      ''
      '  delete from tables'
      '  where tableid=@tableid'
      '  '
      '  delete from Fields'
      '  where tableid=@tableid'
      ''
      '  exec('#39'drop table '#39'+@tablename)'
      ''
      ''
      ''
      ''
      ' '
      ''
      'GO'
      ''
      ''
      ''
      'CREATE Procedure [dbo].[delete_user]'
      ' @userid int '
      'as'
      'exec sp_SetForeinKey 0'
      ''
      ''
      ''
      'delete ArchiveFolder where UserID=@UserID'
      'delete Emails where UsersID=@UserID'
      'delete FieldAccess where UserID=@UserID'
      'delete FollowUp where UserID=@UserID'
      'delete LetterArchiveFolder where UserID=@UserID'
      'delete NewsGroupUsers where UsersID=@UserID'
      'delete NewsUsers where UsersID=@UserID'
      'delete ParaphTemplate where UserID=@UserID'
      'delete PhoneGroup where UsersID=@UserID'
      'delete Settings where UserID=@UserID'
      'delete UserAccArchive where UserID=@UserID'
      'delete UserExtention where UserId=@UserID'
      'delete UserLog where UserID=@UserID'
      'delete UserLoginLogout where UserID=@UserID  '
      'delete UserNote where UserID=@UserID'
      'delete UserSecretariats where UserId=@UserID'
      'delete UserShortCut where UserID=@UserID'
      'delete UserSign where UserID=@UserID'
      'delete UserTemplateGroup where UserID=@UserID'
      'delete users where id=@UserID'
      ''
      'GO'
      ''
      ''
      'CREATE Procedure [dbo].[delete_UserTable]'
      ' @TableID int'
      'as'
      ''
      ''
      'UPDATE    Letter'
      'SET      UserTableID = NULL'
      'from letter'
      
        'inner join  LetterFieldValue on LetterFieldValue.letterid=letter' +
        '.LetterID'
      'inner join  Fields on Fields.id=LetterFieldValue.FieldID'
      'WHERE TableID = @tableid'
      ''
      'delete    LetterFieldValue'
      'from LetterFieldValue'
      'inner join  Fields on Fields.id=LetterFieldValue.FieldID'
      'WHERE TableID = @tableid'
      ''
      ''
      ''
      'DELETE FROM Fields'
      'WHERE     (TableID = @tableid)'
      ''
      ''
      'delete tables'
      'WHERE     (TableID = @tableid)'
      ''
      'GO'
      ''
      ''
      'create PROCEDURE [dbo].[Deleted_to_Letter]'
      '@LetterID int,@newInd int,@today char(10)'
      'AS'
      '   UPDATE   Letter'
      
        '   SET        registrationdate=@today,      IndicatorID = @newIn' +
        'd,  LetterFormat = 1'
      ' WHERE     (LetterID = @LetterID)'
      ''
      ''
      ''
      'GO'
      ''
      ''
      ''
      ''
      'Create PROCEDURE [dbo].[Draft_to_SentLetter]'
      
        '@LetterID int,@newInd int,@today char(10),@IsCopy bit ,@Proceed ' +
        'bit'
      'AS'
      ''
      'declare @Letter_Type int'
      'select @Letter_Type=Letter_type'
      'from letter'
      'WHERE     (LetterID = @LetterID)'
      ''
      '  UPDATE   Letter'
      
        '   SET        registrationdate=@today,      IndicatorID = @newIn' +
        'd,  LetterFormat = 1'
      '  WHERE     (LetterID = @LetterID)'
      ''
      ''
      '  if @Letter_Type<>1 '
      'begin'
      'if @Proceed=1   '
      ' update recommites'
      '    set proceeded=1 where letterid=@LetterID  and finallized=1'
      ''
      'if @IsCopy=1   '
      ' update recommites'
      '    set IsCopy=1 where letterid=@LetterID  and finallized=1'
      'end'
      ''
      'declare @receivedLetter int'
      ''
      'select top 1 @receivedLetter=Letterid'
      'from letter where sentletterid=@LetterID'
      ''
      'if @receivedLetter is not null'
      ' begin'
      '  update recommites'
      '  set proceeded=1,ActionTypeid=5 where letterid=@receivedLetter'
      
        '  update  letter set LatestActionTypeID=5 where letterid=@receiv' +
        'edLetter'
      ' end'
      ''
      ''
      
        'if not exists (select * from recommites where letterid=@LetterID' +
        ')'
      
        ' INSERT INTO dbo.ReCommites ( LetterID, ID, Type, ParentId, OrgI' +
        'D, Paraph, RecommiteDate, UserID, IsCopy, Proceeded,OrgStaff) '
      
        'select LetterID,1,3,0,fromorgid,'#39#39',registrationdate,userid,0,0 ,' +
        #39#39
      'from letter'
      'where letterid=@LetterID'
      'declare @maxID int,@parent int'
      ''
      'select @maxID=MAX(id)'
      'from ReCommites'
      'where LetterID=@LetterID and Type=3'
      ''
      'if @maxID is null '
      'begin '
      '  set @maxID=1'
      '  set @Parent=0'
      'end'
      'else'
      'begin '
      '  set @Parent=@maxID'
      '  set @maxID=@maxID+1'
      'end'
      '  if @Letter_Type<>1    '
      
        ' INSERT INTO dbo.ReCommites ( LetterID, ID, Type, ParentId, OrgI' +
        'D, Paraph, RecommiteDate, UserID, IsCopy, Proceeded,OrgStaff) '
      
        'select LetterID,@maxID,3,@Parent,toorgid,'#39#39',registrationdate,use' +
        'rid,0,0 ,'#39#39
      'from letter'
      'where letterid=@LetterID'
      ''
      ''
      'update ReCommites'
      'set Finallized=1'
      'where letterid=@LetterID'
      ''
      '  if @Letter_Type<>1 '
      'begin'
      'if @Proceed=1   '
      ' update recommites'
      '    set proceeded=1 where letterid=@LetterID  '
      ''
      'if @IsCopy=1   '
      ' update recommites'
      '    set IsCopy=1 where letterid=@LetterID '
      'end'
      ''
      ''
      'GO'
      'Create Procedure [dbo].[Duplicate_UserShortCut]'
      '@UserID int,'
      '@altKey char(1),'
      '@result bit output'
      'as'
      
        'if exists (SELECT *   FROM UserShortCut where UserID=@UserID and' +
        ' altKey=@altKey)'
      'set @result=1'
      'else'
      'set @result=0'
      ''
      ''
      'GO'
      ''
      ''
      ''
      ''
      ''
      ''
      ''
      ''
      ''
      ''
      ''
      ''
      'CREATE proc [dbo].[Export_LetterData](@LetterdataID int)'
      'as'
      
        'if not exists (select * from yeganeh_tmp_db.dbo.sysobjects where' +
        ' name='#39'LetterData'#39')'
      'begin'
      'CREATE TABLE yeganeh_tmp_db.dbo.LetterData ('
      #9'LetterDataID int  NOT NULL ,'
      #9'LetterID int NOT NULL ,'
      #9'PageNumber tinyint NOT NULL ,'
      #9'Image image NULL ,'
      #9'extention tinyint NOT NULL,'
      #9'[Description] [nvarchar] (200)  NULL )'
      'end'
      
        'insert INTO yeganeh_tmp_db.DBO.LetterData (LetterDataID,LetterID' +
        ',PageNumber,Image,extention)'
      'SELECT     LetterDataID,LetterID,PageNumber,Image,extention'
      'FROM         LetterData'
      'WHERE     (LetterdataID = @LetterdataID)'
      ''
      ''
      ''
      ''
      ' '
      ''
      'GO'
      ''
      ''
      ''
      ''
      ''
      ''
      ''
      'CREATE PROCEDURE [dbo].[Folder_hasChild]'
      #9'(@userid int ,@ParentID '#9'[int],@hasChild bit output)'
      'AS '
      'if exists( SELECT     *'
      'FROM         ArchiveFolder'
      'WHERE     (ParentFolderID = @ParentID) and (UserID = @userid))'
      'set @haschild=1'
      'else'
      'set @haschild=0'
      ''
      ''
      ''
      ''
      ''
      ''
      ''
      ''
      'GO'
      ''
      ''
      ''
      
        'create procedure [dbo].[Folder_hasLetter](@Folderid int,@hasLett' +
        'er bit output)'
      'as'
      'if exists (SELECT     *'
      'FROM         LetterArchiveFolder'
      
        'inner join letter on letter.letterid= LetterArchiveFolder.letter' +
        'id'
      
        'WHERE     letterformat<=2 and (ArchiveFolderID = @Folderid)) set' +
        ' @hasLetter=1'
      'else'
      'set @hasLetter=0'
      ''
      ''
      ''
      ''
      ''
      ''
      ''
      'GO'
      
        'Create  procedure [dbo].[Folder_hasRecommite](@Folderid int,@has' +
        'Letter bit output)'
      'as'
      'if exists (SELECT     *'
      'FROM         LetterArchiveFolder'
      'where  ArchiveFolderID = @Folderid) set @hasLetter=1'
      'else'
      'set @hasLetter=0'
      ''
      'GO '
      ''
      'CREATE  procedure [dbo].[Get_ActiveUser]'
      'as'
      'SELECT     UserID,MAX(UserLoginLogoutID) ID into #LastLogout'
      ''
      'FROM         UserLoginLogout '
      'where  dbo.Shamsi(LoginTime)=dbo.Shamsi(getdate())'
      'group by Userid'
      ' '
      
        'SELECT     Users.UserName,case when datepart(hh, LoginTime)<10 t' +
        'hen '#39'0'#39'+cast(datepart(hh, LoginTime) as char(1)) else cast(datep' +
        'art(hh, LoginTime) as '
      'char(2)) end +'#39':'#39'+'
      
        'case when datepart(mi, LoginTime)<10 then '#39'0'#39'+cast(datepart(mi, ' +
        'LoginTime) as char(1)) else cast(datepart(mi, LoginTime) as char' +
        '(2)) end  as logintime'
      'FROM    #LastLogout'
      
        'inner join  UserLoginLogout  on UserLoginLogout.UserLoginLogoutI' +
        'D=#LastLogout.ID'
      'INNER JOIN   Users ON #LastLogout.UserID = Users.Id'
      
        'where  datediff(ss,LogoutTime,getdate())<90  and (isSafeLogout=0' +
        ')'
      ''
      ''
      ''
      ''
      ''
      ''
      ''
      ''
      ''
      'GO'
      ''
      'CREATE PROCEDURE [dbo].[Get_All_Letter]'
      ''
      '@Secretariatid int,    '
      '@myear tinyint,    '
      '@Letter_Type int,    '
      '@LetterFormat int,    '
      '@where nvarchar(2000),    '
      '@top smallint ,    '
      '@archiveFolderID int,    '
      '@ArchiveStatus tinyint ,-- 0 ,1 and 2(= all) '
      '@userid int   '
      'as    '
      
        'declare @sqlCommand nvarchar(4000)   ,@archiveLetter nvarchar(40' +
        '00)'
      'DECLARE @InnerNo NVARCHAR(500);    '
      'declare @Delimeter char(1)    '
      'set @Delimeter=dbo.GetSystemValue(44)    '
      'set @InnerNo=case  dbo.GetSystemValue(35)    '
      '                   when 0 then '#39#39'    '
      
        '                   when 1 then '#39'isnull(Secretariats.Precode,'#39#39#39#39 +
        ')+'#39#39#39'+@Delimeter+'#39#39#39'+'#39'    '
      
        '                   when 2 then '#39'cast(Myear as char(2))+'#39#39#39'+@Deli' +
        'meter+'#39#39#39'+'#39'    '
      
        '                   when 3 then '#39'cast(indicatorid as nvarchar(10)' +
        ')+'#39#39#39'+@Delimeter+'#39#39#39'+'#39'    '
      
        '                   when 4 then '#39'case when len(sender.Code)>5 the' +
        'n sender.PreCode else sender.Code end +'#39#39#39'+@Delimeter+'#39#39#39'+'#39'    '
      
        '                   when 5 then '#39'case when len(Deliver.Code)>5 th' +
        'en Deliver.PreCode else Deliver.Code end +'#39#39#39'+@Delimeter+'#39#39#39'+'#39'  ' +
        '  '
      
        '                   when 6 then '#39'isnull(LetterTypes.PreCode,'#39#39#39#39')' +
        '+'#39#39#39'+@Delimeter+'#39#39#39'+'#39'    '
      
        '                   when 7 then '#39'isnull(UserMemo,'#39#39#39#39')+'#39#39#39'+@Delim' +
        'eter+'#39#39#39'+'#39'    '
      
        '                   when 8 then '#39'isnull(Deliver.Precode,'#39#39#39#39')+'#39#39#39 +
        '+@Delimeter+'#39#39#39'+'#39' end+    '
      '    '
      '             case  dbo.GetSystemValue(36)    '
      '                   when 0 then '#39#39'    '
      
        '                   when 1 then '#39'isnull(Secretariats.Precode,'#39#39#39#39 +
        ')+'#39#39#39'+@Delimeter+'#39#39#39'+'#39'    '
      
        '                   when 2 then '#39'cast(Myear as char(2))+'#39#39#39'+@Deli' +
        'meter+'#39#39#39'+'#39'    '
      
        '                   when 3 then '#39'cast(indicatorid as nvarchar(10)' +
        ')+'#39#39#39'+@Delimeter+'#39#39#39'+'#39'    '
      
        '                   when 4 then '#39'case when len(sender.Code)>5 the' +
        'n sender.PreCode else sender.Code end +'#39#39#39'+@Delimeter+'#39#39#39'+'#39'    '
      
        '                   when 5 then '#39'case when len(Deliver.Code)>5 th' +
        'en Deliver.PreCode else Deliver.Code end +'#39#39#39'+@Delimeter+'#39#39#39'+'#39'  ' +
        '  '
      
        '                   when 6 then '#39'isnull(LetterTypes.PreCode,'#39#39#39#39')' +
        '+'#39#39#39'+@Delimeter+'#39#39#39'+'#39'    '
      
        '                   when 7 then '#39'isnull(UserMemo,'#39#39#39#39')+'#39#39#39'+@Delim' +
        'eter+'#39#39#39'+'#39'    '
      
        '                   when 8 then '#39'isnull(Deliver.Precode,'#39#39#39#39')+'#39#39#39 +
        '+@Delimeter+'#39#39#39'+'#39' end+    '
      '    '
      '             case  dbo.GetSystemValue(37)    '
      '                   when 0 then '#39#39'    '
      
        '                   when 1 then '#39'isnull(Secretariats.Precode,'#39#39#39#39 +
        ')+'#39#39#39'+@Delimeter+'#39#39#39'+'#39'    '
      
        '                   when 2 then '#39'cast(Myear as char(2))+'#39#39#39'+@Deli' +
        'meter+'#39#39#39'+'#39'    '
      
        '                   when 3 then '#39'cast(indicatorid as nvarchar(10)' +
        ')+'#39#39#39'+@Delimeter+'#39#39#39'+'#39'    '
      
        '                   when 4 then '#39'case when len(sender.Code)>5 the' +
        'n sender.PreCode else sender.Code end +'#39#39#39'+@Delimeter+'#39#39#39'+'#39'    '
      
        '                   when 5 then '#39'case when len(Deliver.Code)>5 th' +
        'en Deliver.PreCode else Deliver.Code end +'#39#39#39'+@Delimeter+'#39#39#39'+'#39'  ' +
        '  '
      
        '                   when 6 then '#39'isnull(LetterTypes.PreCode,'#39#39#39#39')' +
        '+'#39#39#39'+@Delimeter+'#39#39#39'+'#39'    '
      
        '                   when 7 then '#39'isnull(UserMemo,'#39#39#39#39')+'#39#39#39'+@Delim' +
        'eter+'#39#39#39'+'#39'    '
      
        '                   when 8 then '#39'isnull(Deliver.Precode,'#39#39#39#39')+'#39#39#39 +
        '+@Delimeter+'#39#39#39'+'#39' end+    '
      '    '
      '             case  dbo.GetSystemValue(38)    '
      '                   when 0 then '#39#39'    '
      
        '                   when 1 then '#39'isnull(Secretariats.Precode,'#39#39#39#39 +
        ')+'#39#39#39'+@Delimeter+'#39#39#39'+'#39'    '
      
        '                   when 2 then '#39'cast(Myear as char(2))+'#39#39#39'+@Deli' +
        'meter+'#39#39#39'+'#39'    '
      
        '                   when 3 then '#39'cast(indicatorid as nvarchar(10)' +
        ')+'#39#39#39'+@Delimeter+'#39#39#39'+'#39'    '
      
        '                   when 4 then '#39'case when len(sender.Code)>5 the' +
        'n sender.PreCode else sender.Code end +'#39#39#39'+@Delimeter+'#39#39#39'+'#39'    '
      
        '                   when 5 then '#39'case when len(Deliver.Code)>5 th' +
        'en Deliver.PreCode else Deliver.Code end +'#39#39#39'+@Delimeter+'#39#39#39'+'#39'  ' +
        '  '
      
        '                   when 6 then '#39'isnull(LetterTypes.PreCode,'#39#39#39#39')' +
        '+'#39#39#39'+@Delimeter+'#39#39#39'+'#39'    '
      
        '                   when 7 then '#39'isnull(UserMemo,'#39#39#39#39')+'#39#39#39'+@Delim' +
        'eter+'#39#39#39'+'#39'    '
      
        '                   when 8 then '#39'isnull(Deliver.Precode,'#39#39#39#39')+'#39#39#39 +
        '+@Delimeter+'#39#39#39'+'#39' end+    '
      '    '
      '             case  dbo.GetSystemValue(39)    '
      '                   when 0 then '#39#39'    '
      
        '                   when 1 then '#39'isnull(Secretariats.Precode,'#39#39#39#39 +
        ')+'#39#39#39'+@Delimeter+'#39#39#39'+'#39'                       when 2 then '#39'cast(M' +
        'year as char(2))+'#39#39#39'+@Delimeter+'#39#39#39'+'#39'    '
      
        '                   when 3 then '#39'cast(indicatorid as nvarchar(10)' +
        ')+'#39#39#39'+@Delimeter+'#39#39#39'+'#39'    '
      
        '                   when 4 then '#39'case when len(sender.Code)>5 the' +
        'n sender.PreCode else sender.Code end +'#39#39#39'+@Delimeter+'#39#39#39'+'#39'    '
      
        '                   when 5 then '#39'case when len(Deliver.Code)>5 th' +
        'en Deliver.PreCode else Deliver.Code end +'#39#39#39'+@Delimeter+'#39#39#39'+'#39'  ' +
        '  '
      
        '                   when 6 then '#39'isnull(LetterTypes.PreCode,'#39#39#39#39')' +
        '+'#39#39#39'+@Delimeter+'#39#39#39'+'#39'    '
      
        '                   when 7 then '#39'isnull(UserMemo,'#39#39#39#39')+'#39#39#39'+@Delim' +
        'eter+'#39#39#39'+'#39'    '
      
        '                   when 8 then '#39'isnull(Deliver.Precode,'#39#39#39#39')+'#39#39#39 +
        '+@Delimeter+'#39#39#39'+'#39' end+    '
      '    '
      '             case  dbo.GetSystemValue(40)    '
      '                   when 0 then '#39#39'    '
      
        '                   when 1 then '#39'isnull(Secretariats.Precode,'#39#39#39#39 +
        ')+'#39#39#39'+@Delimeter+'#39#39#39'+'#39'    '
      
        '                   when 2 then '#39'cast(Myear as char(2))+'#39#39#39'+@Deli' +
        'meter+'#39#39#39'+'#39'    '
      
        '                   when 3 then '#39'cast(indicatorid as nvarchar(10)' +
        ')+'#39#39#39'+@Delimeter+'#39#39#39'+'#39'    '
      
        '                   when 4 then '#39'case when len(sender.Code)>5 the' +
        'n sender.PreCode else sender.Code end +'#39#39#39'+@Delimeter+'#39#39#39'+'#39'    '
      
        '                   when 5 then '#39'case when len(Deliver.Code)>5 th' +
        'en Deliver.PreCode else Deliver.Code end +'#39#39#39'+@Delimeter+'#39#39#39'+'#39'  ' +
        '  '
      
        '                   when 6 then '#39'isnull(LetterTypes.PreCode,'#39#39#39#39')' +
        '+'#39#39#39'+@Delimeter+'#39#39#39'+'#39'    '
      
        '                   when 7 then '#39'isnull(UserMemo,'#39#39#39#39')+'#39#39#39'+@Delim' +
        'eter+'#39#39#39'+'#39'    '
      
        '                   when 8 then '#39'isnull(Deliver.Precode,'#39#39#39#39')+'#39#39#39 +
        '+@Delimeter+'#39#39#39'+'#39' end    '
      '    '
      'IF len(@InnerNo)>5    '
      
        'if substring(@InnerNo,len(@InnerNo)-4,5)='#39'+'#39#39#39'+@Delimeter+'#39#39#39'+'#39' ' +
        '   '
      '   set @InnerNo=substring(@InnerNo,1,len(@InnerNo)-5)    '
      '    '
      'if @innerno<>'#39#39'    '
      'set @InnerNo='#39'replace(replace(ltrim(rtrim'
      
        '('#39'+@InnerNo+'#39')),'#39#39#39'+@Delimeter+@Delimeter+'#39#39#39','#39#39#39'+@Delimeter+'#39#39#39 +
        '),'#39#39#39'+@Delimeter+@Delimeter+'#39#39#39','#39#39#39'+@Delimeter+'#39#39#39')'#39'    '
      'else    '
      'set @innerno='#39'cast(indicatorid as nvarchar(500))'#39'    '
      ''
      'set @archiveLetter='#39'select  l.LetterID'
      'from LETTER L'
      'LEFT JOIN LetterArchiveFolder laf ON laf.Letterid=l.letterid'
      'LEFT join archivefolder af  on laf.ArchiveFolderID=af.FolderID'
      
        'LEFT join UserAccArchive uac on uac.ArchiveFolderID=af.FolderID ' +
        'and uac.secid=L.SecretariatID'
      
        'where ISNULL(uac.UserID,'#39'+cast(@userid as varchar(10))+'#39')='#39'+cast' +
        '(@userid as varchar(10))+'#39' and ISNULL(uac.ISAccess,1)=1'#39
      ''
      '    '
      
        'set @sqlCommand='#39'SELECT top  '#39'+Cast(@top as varchar(5)) +'#39'     L' +
        'etter.LetterID, Letter.IndicatorID, Letter.MYear, Letter.Secreta' +
        'riatID,    '
      
        '                      Letter.Letter_Type, Letter.letterformat, L' +
        'etter.IncommingNO, Letter.FromOrgID,Letter.IncommingDate,    '
      
        '                      Letter.ToOrgID, Letter.UrgencyID, Letter.M' +
        'emo, Letter.RetroactionNo, Letter.RegistrationDate, Letter.Follo' +
        'wLetterNo,    '
      
        '                      Letter.ToStaffer, Letter.SentLetterID, Let' +
        'ter.TemplateID, Letter.UserMemo,Letter.DeadLineDate, sender.Titl' +
        'e AS SenderTitle,    '
      
        '                      Deliver.Title AS DeliverTitle,dbo.has_Page' +
        '(Letter.letterid) has_Page,    '
      
        'dbo.has_WordPage(Letter.letterid) has_WordPage,dbo.has_file(lett' +
        'er.letterID) has_file, Letter.SubjectID,   '
      
        'LetterTypes.Title LetterTypeTitle,LetterRecommites,sendstatusTit' +
        'le,'#39'+@innerno+'#39'  InnerNo,Letter.Archived    '
      ',ActionTypeTitle   '
      
        ' , Letter.SignerID , (Select Title from FromOrganizations FO Whe' +
        're(FO.ID = Letter.SignerID)) as SignerTitle   '
      ',Letter.ReceiveTypeID , letter.ClassificationID '
      '  '
      'FROM Letter left  JOIN    '
      
        '     FromOrganizations sender ON Letter.ToOrgID = sender.ID left' +
        ' JOIN    '
      
        '     FromOrganizations Deliver ON Letter.FromOrgID = Deliver.ID ' +
        '   '
      
        '     Left join LetterTypes on LetterTypes.ID=Letter.Letter_type ' +
        '   '
      
        '     inner join sendstatus on sendstatus.sendstatusID=Letter.sen' +
        'dstatusID    '
      
        '     inner join Secretariats on Secretariats.Secid=Letter.Secret' +
        'ariatID    '
      
        '     left JOIN ActionType  ON ActionType.ActionTypeID = Letter.L' +
        'atestActionTypeID'#39'    '
      '    '
      '    '
      'if @archiveFolderID>0    '
      'set @sqlCommand=@sqlCommand+'#39'    '
      
        'Left join LetterArchiveFolder on LetterArchiveFolder.Letterid=Le' +
        'tter.LetterID '#39'    '
      '    '
      'set @sqlCommand=@sqlCommand+'#39' where letter.Finalized=1 '#39'    '
      '    '
      '    '
      '    '
      'set @where=isnull(ltrim(rtrim(@where)),'#39#39')    '
      'if @where <>'#39#39' set @where ='#39' and '#39'+@where    '
      '    '
      'if @Letter_Type<>0    '
      
        '  set @where=@where+'#39' and (Letter_Type = '#39'+Cast(@Letter_Type as ' +
        'varchar(5))+'#39')'#39'    '
      '    '
      'if @Secretariatid<>0    '
      
        '  set @where=@where+'#39' and (Secretariatid = '#39'+Cast(@Secretariatid' +
        ' as varchar(5))+'#39')'#39'    '
      '    '
      'if @Myear<>0    '
      
        '  set @where=@where+'#39' and (myear = '#39'+Cast(@myear as varchar(5))+' +
        #39')'#39'    '
      '    '
      '    '
      '    '
      'if @LetterFormat<>0    '
      
        '  set @where=@where+'#39' and (LetterFormat = '#39'+Cast(@LetterFormat a' +
        's varchar(5))+'#39')'#39'    '
      '    '
      ' '
      'if @ArchiveStatus=0    '
      ' set @where=@where+'#39' and archived=0'#39
      '    '
      'if @ArchiveStatus=1    '
      ' set @where=@where+'#39' and archived=1'#39' '
      '    '
      'set @archiveLetter=@archiveLetter+@where     '
      '    '
      'if @ArchiveStatus=2    '
      ' begin    '
      '   set @where=@where+'#39' and    '
      
        '       not exists (SELECT  * FROM   LetterArchiveFolder,ArchiveF' +
        'older Where'
      
        '       LetterArchiveFolder.ArchiveFolderID = ArchiveFolder.Folde' +
        'rID    '
      
        '       and  (ArchiveFolder.UserID=0 or ArchiveFolder.Archivecent' +
        'erid>0)  and Letterid =Letter.LetterID)  and archived=1'#39'    '
      'end    '
      ''
      '   '
      'if @archiveFolderID>0    '
      
        '    set @where=@where+'#39' and (archiveFolderID = '#39'+Cast(@archiveFo' +
        'lderID as varchar(5))+'#39')'#39'     '
      
        'set @where=@where +'#39' and Letter.letterid in ('#39'+@archiveLetter+'#39')' +
        #39
      '    '
      
        'set @sqlCommand=@sqlCommand+@where + '#39' order by indicatorid desc' +
        ' '#39'    '
      'print @sqlcommand    '
      'exec sp_executesql   @sqlCommand    '
      ''
      'GO'
      ''
      ''
      ''
      ''
      ''
      ''
      'CREATE PROCEDURE [dbo].[get_DayID_InWeek]'
      #9'(@DayID tinyint output)'
      'AS '
      'SET DATEFIRST 6'
      'select @DayID=datepart(dw,getdate())-1'
      ''
      ''
      'GO '
      ''
      
        'CREATE procedure [dbo].[get_DestinationOrgID](@DestinationServer' +
        'IP varchar(30),@DestinationServerDB varchar(50),@DestinationSecI' +
        'D '
      'int,@DestinationOrgID int output)'
      'as'
      ''
      'SELECT     @DestinationOrgID=DestinationOrgID_inSource'
      'FROM         RelatedSecretariats'
      
        'WHERE     (DestinationServerIP = @DestinationServerIP) AND (Dest' +
        'inationServerDB = @DestinationServerDB) and DestinationSecID=@De' +
        'stinationSecID'
      ''
      ''
      ''
      'GO'
      ''
      ''
      'CREATE PROCEDURE [dbo].[Get_DraftReceivedLetter_count]'
      '@Myear tinyint,@secretariatid int ,@count int output'
      ''
      'AS'
      'select @count=count(*)'
      'from letter'
      
        'where Myear=@Myear and letter_type=1 and letterformat=2 and secr' +
        'etariatid=@secretariatid'
      ''
      'set @count=isnull(@Count,0)'
      ''
      'GO'
      ''
      ''
      'CREATE PROCEDURE [dbo].[Get_DraftLetter_count]'
      '@Myear tinyint,@secretariatid int ,@count int output'
      ''
      'AS'
      'select @count=count(*)'
      'from letter'
      
        'where Myear=@Myear and letterformat=2 and secretariatid=@secreta' +
        'riatid     and finalized=1'
      ''
      'set @count=isnull(@Count,0)'
      'GO'
      ''
      'create  procedure [dbo].[Get_FieldValue_by_LetterID_FieldID]'
      '@LetterID int,@FieldID int ,@fieldValue nvarchar(2000) output'
      'as'
      'SELECT  @fieldValue=LetterFieldValue.FieldValue'
      'FROM         LetterFieldValue'
      'WHERE letterid=@LetterID'
      ' and FieldID=@FieldID'
      ''
      'set @fieldValue=isnull(@fieldValue,'#39#39')'
      ''
      ' '
      'GO'
      ''
      ''
      ''
      ''
      'CREATE procedure [dbo].[Get_FieldValues_by_LetterID]'
      '@LetterID int,@UserID int,@FormOrder tinyint'
      'as'
      'SELECT  LetterFieldValue.*,Fields.[order],'
      'Fields.[Description],Fields.FieldTypeID,Fields.ReferenceTableID,'
      'isnull(FieldAccess.AccessTypeID,1) AccessTypeID'
      'FROM         LetterFieldValue'
      'left join  Fields on Fields.ID = LetterFieldValue.FieldID'
      'left join   FieldAccess on FieldAccess.FieldID=Fields.ID'
      
        'WHERE    FormOrder = @FormOrder and LetterFieldValue.letterid=@L' +
        'etterID'
      ' and FieldAccess.UserID=@userID'
      'ORDER BY Fields.[order]'
      ''
      ''
      ''
      ''
      ''
      ''
      ''
      ''
      ''
      ''
      ''
      'GO '
      
        'CREATE Procedure [dbo].[Get_FollowUP_Count](@UserID int ,@BDate ' +
        'char(10), @Edate char(10),'
      '@DonStatusID int,@Count int output)'
      'as'
      ''
      'SELECT     @Count=Count(*)'
      'FROM  FollowUp'
      'WHERE'
      '    (@UserID = 0 or FollowUp.UserID = @UserID) AND'
      '    (FollowUp.ToDoDate between  @BDate and @Edate)'
      'and (@DonStatusID=0 or FollowUp.DoneStatusID = @DonStatusID)'
      ''
      'set @Count=isnull(@Count,0)'
      ''
      'GO '
      ''
      
        'CREATE PROCEDURE [dbo].[Get_FromOrganizations_ByCode] @Code nvar' +
        'char(10),@ID int output , @ResponsibleStaffer nvarchar(50) outpu' +
        't'
      'AS'
      ''
      'select top 1 @ID= ID,@ResponsibleStaffer=ResponsibleStaffer'
      'from dbo.FromOrganizations'
      'WHERE '#9'Code'#9' = @Code and isactive=1'
      ''
      'set @id=isnull(@id,0)'
      'set @ResponsibleStaffer=isnull(@ResponsibleStaffer,'#39#39')'
      ''
      ''
      'GO'
      
        'CREATE PROCEDURE [dbo].[Get_FromOrganizationsID_ByCode] @Code nv' +
        'archar(10),@ID int output'
      'AS'
      ''
      'select top 1 @ID= ID'
      'from dbo.FromOrganizations'
      'WHERE '#9'Code'#9' = @Code and isactive=1'
      ''
      'set @id=isnull(@id,0)'
      ''
      'GO'
      ''
      'CREATE PROCEDURE [dbo].[Get_FromOrganizationsTitle_ByID]  '
      '(@ID [int],  '
      '@Title [nvarchar](100) output,  '
      '@ResponsibleStaffer [nvarchar](50) output , '
      '@code nvarchar(10) output )  '
      'AS '
      'Select  @Title  = Title,  '
      '@ResponsibleStaffer  = ResponsibleStaffer,  '
      '@code=code  from [dbo].[FromOrganizations]   '
      'WHERE ( [ID]  = @ID)'
      ' '
      'if @ResponsibleStaffer is null'
      '   Set @ResponsibleStaffer = '#39#39' --'#39#1576#1583#1608#1606' '#1605#1587#1574#1608#1604#39'  '
      '----'
      ''
      'GO'
      ''
      
        'CREATE procedure [dbo].[get_indicatorID_BySentLetterID](@SentLet' +
        'terID int,@indicatorID int output)'
      'as'
      'select top 1 @indicatorID=indicatorID from letter where '
      'SentLetterID =@SentLetterID'
      ' set @indicatorID=isnull(@indicatorID,-1)'
      ''
      ''
      ''
      ''
      ''
      ''
      ''
      ''
      ''
      ''
      ''
      ''
      'GO'
      'CREATE Procedure [dbo].[Get_innerLetterMemo]'
      '@Letterid int,@memo nvarchar(500) output ,@is_Inner bit output'
      'as'
      
        'SELECT     @is_Inner= case when Letter_Type=3 then 1 else 0 end,' +
        ' @Memo=Memo'
      'FROM         Letter'
      'WHERE     (LetterID = @Letterid)'
      'set @Memo =isnull(@Memo,'#39#39')'
      'set @is_Inner=isnull(@Memo,0)'
      ''
      ''
      ''
      ' '
      ''
      'GO'
      ''
      ''
      'CREATE procedure [dbo].[get_InnerOrganizations]'
      'as'
      ''
      'SELECT * FROM FromOrganizations'
      'where IsInnerOrg=1 and isactive=1'
      'order by isactive desc'
      ''
      ''
      'GO'
      
        'CREATE procedure [dbo].[get_LastIndicatorID](@letter_type tinyin' +
        't ,@SecretariatID int,@Myear int,'
      '@LetterFormat tinyint,@newIndicatorid int output)'
      'as'
      'declare @RecivedInd int ,@SentInd  int,@innerind int,@Docind int'
      
        'Select @RecivedInd=isnull(max(indicatorID),0)+1 from Letter wher' +
        'e myear=@myear and LetterFormat=@LetterFormat'
      ' and SecretariatID=@SecretariatID and letter_type=1 '
      ''
      
        'Select @SentInd=isnull(max(indicatorID),0)+1 from Letter where m' +
        'year=@myear and LetterFormat=@LetterFormat'
      ' and SecretariatID=@SecretariatID and letter_type=2 '
      ''
      ''
      
        ' Select @innerind=isnull(max(indicatorID),0)+1 from Letter where' +
        ' myear=@myear and LetterFormat=@LetterFormat'
      ' and SecretariatID=@SecretariatID and letter_type=3'
      ''
      
        ' Select @Docind=isnull(max(indicatorID),0)+1 from Letter where m' +
        'year=@myear and LetterFormat=@LetterFormat'
      ' and SecretariatID=@SecretariatID and letter_type=4'
      ''
      '  if @RecivedInd<dbo.GetSystemValue(3) '
      '    set  @RecivedInd=dbo.GetSystemValue(3)'
      ''
      ''
      '  if @SentInd<dbo.GetSystemValue(3) '
      '    set  @SentInd=dbo.GetSystemValue(3)'
      ''
      '  if @innerind<dbo.GetSystemValue(3) '
      '    set  @innerind=dbo.GetSystemValue(3)'
      ''
      ''
      'if @letter_type=3 '
      ' begin'
      '  set @newIndicatorid=@innerind'
      '  return'
      ' end'
      'if @letter_type=4 '
      ' begin'
      '  set @newIndicatorid=@docind'
      '  return'
      ' end'
      ''
      ''
      ' if dbo.GetSystemValue(5)=0'
      '  begin'
      '     if @SentInd>@RecivedInd'
      '        set @newIndicatorid=@SentInd'
      '       else'
      '        set @newIndicatorid=@RecivedInd'
      ''
      '  end'
      ''
      ' if dbo.GetSystemValue(5)=1'
      '   begin'
      '    if @letter_type=1'
      '     set @newIndicatorid=@RecivedInd'
      '    if @letter_type=2'
      '     set @newIndicatorid=@SentInd'
      '   end'
      ''
      ' if dbo.GetSystemValue(5)=2'
      '  begin'
      '   if @letter_type=2'
      '      set @newIndicatorid=2*(1+(@SentInd-1)/2)'
      ''
      '   if @letter_type=1'
      '      set @newIndicatorid=2*(1+(@RecivedInd-1)/2)+1'
      '  end'
      ''
      ' if dbo.GetSystemValue(5)=3'
      '  begin'
      '   if @letter_type=1'
      '      set @newIndicatorid=2*(1+(@RecivedInd-1)/2)'
      ''
      '   if @letter_type=2'
      '      set @newIndicatorid=2*(1+(@SentInd -1)/2)+1'
      '  end'
      ''
      ''
      'GO '
      ''
      'create proc [dbo].[Get_LastUserId](@id int output)'
      'as'
      'SELECT     @id=MAX(Id)'
      'FROM         Users'
      ''
      ''
      ''
      ''
      'GO'
      ''
      'CREATE Procedure [dbo].[Get_Letter_By_UserMemo]'
      '@UserMemo nvarchar(255),@Letter_Type tinyint'
      'as'
      
        'SELECT   Letter.LetterID,letter.Letter_Type, Letter.IndicatorID,' +
        ' Letter.MYear, Secretariats.SecTitle, LetterTypes.Title AS Lette' +
        'rType, Letter.IncommingNO,'
      
        '                      Letter.Incommingdate, Letter.Memo, Letter.' +
        'AttachTitle, Letter.RetroactionNo, Letter.UserMemo, Letter.Regis' +
        'trationDate, '
      'Letter.FollowLetterNo, '
      
        '                      Letter.SubjectDescription, Subject.Subject' +
        'Title, Classifications.Title AS ClassificationTitle, FromOrganiz' +
        'ations_1.Title AS FromTitle, '
      '                      FromOrganizations.Title AS ToTitle'
      'FROM         Letter INNER JOIN'
      
        '                      Secretariats ON Letter.SecretariatID = Sec' +
        'retariats.SecID INNER JOIN'
      
        '                      LetterTypes ON Letter.Letter_Type = Letter' +
        'Types.ID INNER JOIN'
      
        '                      FromOrganizations ON Letter.FromOrgID = Fr' +
        'omOrganizations.ID INNER JOIN'
      
        '                      FromOrganizations FromOrganizations_1 ON L' +
        'etter.ToOrgID = FromOrganizations_1.ID INNER JOIN'
      
        '                      Classifications ON Letter.ClassificationID' +
        ' = Classifications.ID LEFT OUTER JOIN'
      
        '                      Subject ON Letter.SubjectID = Subject.Subj' +
        'ectID'
      
        'WHERE     (Letter_Type=@Letter_Type or @Letter_Type=0) and (Lett' +
        'er.UserMemo like '#39'%'#39'+@UserMemo+'#39'%'#39')  '
      '/*union'
      
        'SELECT   Letter.LetterID,letter.Letter_Type, Letter.IndicatorID,' +
        ' Letter.MYear, Secretariats.SecTitle, LetterTypes.Title AS Lette' +
        'rType, Letter.IncommingNO,'
      
        '                      Letter.Incommingdate, Letter.Memo, Letter.' +
        'AttachTitle, Letter.RetroactionNo, Letter.UserMemo, Letter.Regis' +
        'trationDate, '
      'Letter.FollowLetterNo, '
      
        '                      Letter.SubjectDescription, Subject.Subject' +
        'Title, Classifications.Title AS ClassificationTitle, FromOrganiz' +
        'ations_1.Title AS FromTitle, '
      '                      FromOrganizations.Title AS ToTitle'
      'FROM         Letter INNER JOIN'
      
        '                      Secretariats ON Letter.SecretariatID = Sec' +
        'retariats.SecID INNER JOIN'
      
        '                      LetterTypes ON Letter.Letter_Type = Letter' +
        'Types.ID INNER JOIN'
      
        '                      FromOrganizations ON Letter.FromOrgID = Fr' +
        'omOrganizations.ID INNER JOIN'
      
        '                      FromOrganizations FromOrganizations_1 ON L' +
        'etter.ToOrgID = FromOrganizations_1.ID INNER JOIN'
      
        '                      Classifications ON Letter.ClassificationID' +
        ' = Classifications.ID LEFT OUTER JOIN'
      
        '                      Subject ON Letter.SubjectID = Subject.Subj' +
        'ectID'
      'WHERE     usermemo like '#39'%-%'#39' and '
      
        '@usermemo between ltrim(rtrim(substring(UserMemo,1,charindex('#39'-'#39 +
        ',usermemo)-1))) and  ltrim(rtrim(substring(UserMemo,charindex('#39'-' +
        #39',usermemo)+1,100)))'
      'and (Letter_Type=@Letter_Type or @Letter_Type=0) '
      '*/'
      ''
      'GO'
      ''
      ''
      ''
      ''
      ''
      ''
      ''
      ''
      ''
      ''
      'CREATE PROCEDURE [dbo].[get_Letter_ByIndicator]'
      #9'(@IndicatorID '#9'[int],'
      #9' @MYear '#9'[tinyint],'
      #9' @SecretariatID '#9'[tinyint],'
      #9' @Letter_Type '#9'[tinyint],'
      #9' @letterformat '#9'[tinyint])'
      ''
      'AS '
      
        'SELECT     FromOrganizations.Title AS FromorgTitle, FromOrganiza' +
        'tions_1.Title AS ToorgTitle,'
      
        ' Letter.LetterID, Letter.IncommingNO, Letter.Incommingdate,Lette' +
        'r.Memo, Letter.RegistrationDate'
      'FROM         Letter INNER JOIN'
      
        '                      FromOrganizations ON Letter.FromOrgID = Fr' +
        'omOrganizations.ID INNER JOIN'
      
        '                      FromOrganizations FromOrganizations_1 ON L' +
        'etter.ToOrgID = FromOrganizations_1.ID'
      'WHERE '
      #9'( [IndicatorID]'#9' = @IndicatorID AND'
      #9' [MYear]'#9' = @MYear AND'
      #9' [SecretariatID]'#9' = @SecretariatID AND'
      #9' [Letter_Type]'#9' = @Letter_Type AND'
      #9' [letterformat]'#9' = @letterformat)'
      ''
      ''
      ''
      ''
      ' '
      ''
      'GO '
      ''
      ''
      ''
      ''
      ''
      ''
      ''
      'create procedure [dbo].[Get_Letter_PDF](@LetterID int)'
      'as'
      'select top 1 *'
      'from  letterdata'
      'where LetterID=@LetterID  '
      'and Extention=5'
      ''
      ''
      ''
      ''
      ' '
      ''
      'GO '
      ''
      ''
      'CREATE procedure [dbo].[get_letter_To_Transfer]'
      '@fromSecID int,'
      '@ToSecID int,'
      '@FromDate char(10),'
      '--@SentLetters bit,'
      '--@all_letters bit,'
      '@maxSize int'
      'as'
      ''
      '/*'
      'if @all_letters=1 and @SentLetters=1 '
      ''
      'SELECT   l.*,1 SentType '
      'FROM ReCommites RC '
      'INNER JOIN Letter l ON RC.LetterID = L.LetterID'
      
        'where l.SecretariatID=@FromSecID  and Registrationdate >=@FromDa' +
        'te AND (Rc.Proceeded = 0) and '
      'Rc.OrgID in ('
      'select orgid '
      'from UserSecretariats '
      'INNER JOIN  Users ON UserSecretariats.UserId = Users.Id'
      
        'WHERE     (UserSecretariats.SecId = @ToSecID) AND (Users.Defualt' +
        'SecretariatID = @fromSecID))'
      ''
      'union'
      ''
      'select  l.*,2 SentType '
      'from Letter l'
      
        'where SecretariatID=@ToSecID and letterFormat=2 and letter_type=' +
        '1 and  sendstatus=3'
      'and Registrationdate >=@FromDate  '
      ''
      'else'
      ''
      'if @all_letters=1  AND @SentLetters=0'
      ''
      ''
      'SELECT   l.*,1 SentType '
      'FROM ReCommites RC '
      'INNER JOIN Letter l ON RC.LetterID = L.LetterID'
      
        'where l.SecretariatID=@FromSecID  and Registrationdate >=@FromDa' +
        'te AND (Rc.Proceeded = 0) and '
      'Rc.OrgID in ('
      'select orgid '
      'from UserSecretariats '
      'INNER JOIN  Users ON UserSecretariats.UserId = Users.Id'
      
        'WHERE     (UserSecretariats.SecId = @ToSecID) AND (Users.Defualt' +
        'SecretariatID = @fromSecID))'
      ''
      ''
      ''
      'if  @SentLetters=1 AND @all_letters=0*/'
      ''
      'select  l.*,2 SentType '
      'from Letter l'
      
        'where SecretariatID=@ToSecID and letterFormat=2 and letter_type=' +
        '1 and  sendstatusid=2'
      'and Registrationdate >=@FromDate  '
      ''
      ''
      ''
      ''
      ''
      ''
      ''
      ''
      ''
      ''
      ''
      ''
      ''
      'GO '
      ''
      ''
      ''
      'CREATE PROCEDURE [dbo].[Get_LetterAbstract]'
      #9'@LetterID int'
      ''
      'AS'
      
        'SELECT     IndicatorID, IncommingNO, Incommingdate, Registration' +
        'Date, Memo'
      'FROM         Letter'
      'WHERE '
      #9'LetterID=@LetterID'
      ''
      ''
      ''
      ''
      ''
      ''
      'GO '
      ''
      'CREATE PROCEDURE [dbo].[Get_LetterAction_By_LetterID]'
      #9'@LetterID int'
      'AS'
      'BEGIN'
      #9'SET NOCOUNT ON;'
      'SELECT     LetterID, LatestActionTypeID, LatestActionReason'
      'FROM         Letter'
      'WHERE     (LetterID = @LetterID)'
      'END'
      ''
      ''
      'GO '
      'CREATE Procedure [dbo].[Get_LetterAttachment]'
      '@letterID int '
      'as'
      ''
      
        'SELECT     LetterData.LetterDataID, Extention.ExtentionTitle, Ex' +
        'tention.Extention, LetterData.PageNumber, LetterData.Description'
      'FROM       LetterData '
      
        'INNER JOIN  Extention ON LetterData.extention = Extention.Extent' +
        'ionID'
      'WHERE LetterID=@LetterID'
      ''
      ''
      ''
      ''
      ''
      'GO'
      ''
      ''
      ''
      ''
      
        'create proc [dbo].[Get_LetterData_by_LetterDataID](@LetterDataID' +
        ' int )'
      'as'
      'SELECT     LetterDataID, Image'
      'FROM        LetterData'
      'WHERE     (LetterDataID = @LetterDataID)'
      ''
      ''
      ''
      ''
      ''
      ''
      'GO'
      ''
      'CREATE proc [dbo].[Get_LetterData_by_LetterID](@LetterID int)'
      ''
      'as'
      
        'SELECT      letterid,LetterDataID, LetterData.Extention, descrip' +
        'tion'
      'FROM LetterData left JOIN'
      '      Extention ON LetterData.extention = Extention.ExtentionID'
      
        'WHERE     (Extention.IsSystem = 0) AND (LetterData.LetterID = @L' +
        'etterID)'
      ''
      ''
      ''
      'GO '
      
        'CREATE procedure [dbo].[Get_LetterdataExtention](@LetterID int,@' +
        'result tinyint output)'
      'as '
      'set @result=0'
      'SELECT     top 1 @result=extention'
      'FROM         LetterData'
      'WHERE     LetterID=@LetterID and extention in (1,2)'
      ''
      'GO '
      ''
      ''
      ''
      
        'CREATE proc [dbo].[Get_LetterDataIDs](@SecretariatID int, @myear' +
        ' tinyint)'
      'as'
      'SELECT     LetterData.LetterDataID  '
      'FROM         LetterData '
      'INNER JOIN       Letter ON LetterData.LetterID = Letter.LetterID'
      
        'WHERE     (Letter.SecretariatID = @SecretariatID) AND (Letter.MY' +
        'ear = @myear)'
      ''
      ''
      ''
      ''
      ''
      ''
      ''
      ''
      ''
      'GO'
      ''
      
        'CREATE procedure [dbo].[Get_letterHistory_by_LetterID](@LetterID' +
        ' int )'
      'as '
      'declare @MainLetterID int'
      ''
      'select @MainLetterID=MainLetterID'
      'from letterRelation'
      'where SubLetterid=@letterid'
      ''
      'select '
      
        '     Letter.LetterID, Secretariats.secTitle,Letter.IndicatorID, ' +
        ' Letter.IncommingNO,Letter.IncommingDate,  Letter.Memo, sender.T' +
        'itle AS SenderTitle, '
      
        '                      Deliver.Title AS DeliverTitle,LetterTypes.' +
        'Title LetterTypeTitle,LetterRecommites,registrationdate,CenterNo' +
        ',CenterDate'
      'from letterRelation'
      ' inner join letter on letter.letterid=letterRelation.subletterid'
      
        ' left  JOIN           FromOrganizations sender ON Letter.ToOrgID' +
        ' = sender.ID'
      
        'left JOIN     FromOrganizations Deliver ON Letter.FromOrgID = De' +
        'liver.ID '
      'Left join LetterTypes on LetterTypes.ID=Letter.Letter_type '
      
        'inner join Secretariats on Secretariats.Secid=Letter.Secretariat' +
        'ID'
      'where MainLetterID=@MainLetterID'
      ''
      ''
      ''
      'GO'
      ''
      ''
      'CREATE PROCEDURE [dbo].[get_LetterID_ByInCommingNo]'
      
        #9'(@InCommingNo nvarchar(50),@Myear tinyint,@LetterFormat tinyint' +
        ',@SecretariatID smallint,@LetterID  int output)'
      'AS '
      'set @letterid=0'
      ''
      'SELECT     top 1 @LetterID=LetterID'
      'FROM         Letter'
      'WHERE     InCommingNo =@InCommingNo '
      
        ' and LetterFormat=@LetterFormat  and( Myear in (@Myear,@myear-1)' +
        ' ) and '
      '( SecretariatID=@SecretariatID or @SecretariatID=0)'
      'order by Myear desc'
      ''
      ' '
      ''
      ''
      'GO'
      ''
      ''
      'CREATE PROCEDURE [dbo].[get_LetterID_ByIndicatorid]'
      
        #9'(@indicatrid int,@Myear tinyint,@LetterFormat tinyint,@letter_t' +
        'ype tinyint,@SecretariatID smallint,@LetterID  int output)'
      'AS '
      'set @letterID=0'
      'SELECT    top 1 @LetterID=LetterID'
      'from letter'
      'where  '
      '(indicatorid=@indicatrid  or @indicatrid=0) and '
      '(LetterFormat=@LetterFormat or @letterFormat=0)  and '
      '(letter_type=@letter_type  or @letter_type=0) and '
      '( SecretariatID=@SecretariatID or @secretariatid=0)'
      'and(Myear=@Myear or Myear=@myear-1 or @myear=0)'
      'order by Myear desc'
      ''
      ''
      ''
      ''
      ''
      'GO'
      ''
      ''
      ''
      ''
      ''
      'CREATE PROCEDURE [dbo].[get_LetterID_ByRetroActionNo]'
      
        #9'(@RetroActionNo nvarchar(50),@Myear tinyint,@LetterFormat tinyi' +
        'nt,@SecretariatID smallint,@LetterID  int output)'
      'AS '
      'set @letterid=0'
      'SELECT     top 1 @LetterID=LetterID'
      'FROM         Letter'
      'WHERE     (RetroActionNo =@RetroActionNo)'
      ' and myear=@Myear  and LetterFormat=@LetterFormat  and '
      '( SecretariatID=@SecretariatID or @SecretariatID=0)'
      ''
      ''
      ''
      'GO'
      'CREATE procedure [dbo].[Get_LetterJpgFile](@LetterID int)'
      'as  '
      'Select *'
      'from letterdata  '
      'where LetterID = @LetterID  /* and PageNumber= @pagenumber  */'
      'And Extention=1  '
      ''
      ''
      ''
      'GO'
      ''
      ''
      ''
      ''
      ''
      ''
      ''
      ''
      ''
      'CREATE PROCEDURE [dbo].[get_LetterMemo_ByID]'
      #9'(@LetterID  int,@memo nvarchar(500) output)'
      'AS'
      'SELECT     @memo=Memo'
      'FROM         Letter'
      'WHERE     (LetterID =@LetterID)'
      ''
      ''
      ''
      ' '
      ''
      'GO'
      ''
      ''
      ''
      ''
      ''
      ''
      'create procedure [dbo].[Get_LetterTifFile](@LetterID int)'
      'as'
      'select *'
      'from letterdata'
      'where LetterID=@LetterID'
      'and Extention=2'
      ''
      ''
      ''
      ''
      'GO'
      ''
      ''
      'CREATE PROCEDURE [dbo].[Get_LetterWordFile](@LetterID int) AS'
      ''
      'SELECT     *'
      'FROM         LetterData'
      'WHERE     (extention = 3) AND (LetterID = @LetterID)'
      ''
      ''
      ''
      ''
      ' '
      ''
      'GO '
      ''
      
        'CREATE Procedure [dbo].[Get_LifeTip_byUserid](@Userid int,@lifeT' +
        'ip nvarchar(255) output)'
      ''
      'as'
      
        'declare @DayofYear int,@dw int, @n int,@u int,@j int,@k int,@lif' +
        'eTipID int'
      ''
      ''
      'exec get_DayID_InWeek @dw output'
      'if @dw=6'
      ' begin'
      '  set @lifeTip='#39#39
      '  return'
      ' end'
      ''
      ''
      'set @DayofYear=6*(datepart(dy,getdate())/7)+@dw'
      ''
      'select @n=count(*) from LifeTips'
      'select @u=10--count(*) from users'
      'select @j=count(*) from users where id<=@userid'
      ''
      'set @k=@n/@u'
      
        'set @lifeTipID= (((@DayofYear+@j)%(@k+1))*@u+@DayofYear%@u+1)%@n' +
        '+1'
      ''
      'select  @lifeTip=Title from Lifetips where id=@lifeTipID'
      ''
      'GO'
      
        '/* get_MaxPage_ByLetterID]    Script Date: 01/06/2010 00:21:59 *' +
        '/'
      'SET ANSI_NULLS ON'
      'GO'
      'SET QUOTED_IDENTIFIER ON'
      'GO'
      ''
      ''
      ''
      ''
      ''
      ''
      ''
      ''
      ''
      ''
      
        'CREATE procedure [dbo].[get_MaxPage_ByLetterID](@extention tinyi' +
        'nt,@letterid int,@PageNumber int output)'
      'as'
      ''
      'SELECT    @PageNumber=isnull(max(PageNumber),0)'
      'FROM         LetterData'
      'WHERE     (extention = @extention) AND (LetterID = @LetterID)'
      ''
      ''
      ''
      ' '
      ''
      'GO'
      
        '/* get_MaxReferenceDataID_By_TableID]    Script Date: 01/06/2010' +
        ' 00:21:59 */'
      'SET ANSI_NULLS ON'
      'GO'
      'SET QUOTED_IDENTIFIER ON'
      'GO'
      ''
      ''
      ''
      'create proc [dbo].[get_MaxReferenceDataID_By_TableID]'
      '@tableID int,@maxDataID int output'
      'as'
      'SELECT     @maxDataID=isnull(MAX(DataID)+1,1)'
      'FROM         ReferenceTableData'
      'WHERE     (TableID = @tableID)'
      ''
      ''
      ' '
      ''
      'GO'
      '/* get_NewOrgCode]    Script Date: 01/06/2010 00:21:59 */'
      'SET ANSI_NULLS ON'
      'GO'
      'SET QUOTED_IDENTIFIER OFF'
      'GO'
      ''
      ''
      ''
      ''
      ''
      ''
      ''
      'CREATE PROCEDURE [dbo].[get_NewOrgCode]'
      #9'(@ParentID [int] ,@newCode nvarchar(50) output)'
      'AS '
      'declare @ParentCode nvarchar(50),@maxCode Nvarchar(50)'
      ''
      
        'select @ParentCode=Code from Fromorganizations where id=@Parenti' +
        'd'
      
        'select @maxCode=max(code) from  Fromorganizations where Parentid' +
        '=@Parentid'
      ''
      'if @maxCode is not null and isnumeric(@maxcode)=1'
      '    set @newCode=cast(cast(@maxcode as int)+1 as nvarchar(50))'
      '    '
      'else'
      'set @newCode=@parentCode+'#39'01'#39
      ''
      'set @newcode=Replace(ltrim(rtrim(@newCode)),'#39' '#39','#39'0'#39')'
      ''
      ''
      ''
      'GO'
      ''
      ''
      'CREATE PROCEDURE [dbo].[get_NewOrgID]'
      #9'(@isInner bit, @NewID [int] output)'
      'AS'
      ' if @isInner =1'
      
        ' select @NewID=isnull(max(CAST(CODE AS float)),0)+1  from  FromO' +
        'rganizations'
      'WHERE ISNUMERIC(CODE)=1'
      ' and replace(code,'#39' '#39','#39#39') not in ('#39'.'#39','#39'-'#39')'
      'else set @newID=99999'
      ''
      ''
      'GO'
      ''
      ''
      ''
      ''
      ''
      ''
      'CREATE procedure [dbo].[get_Nowdate](@date datetime output )'
      'as'
      'select @date=getdate()'
      ''
      ''
      ''
      ''
      ''
      ''
      'GO'
      '/* get_NowTime]    Script Date: 01/06/2010 00:21:59 */'
      'SET ANSI_NULLS ON'
      'GO'
      'SET QUOTED_IDENTIFIER ON'
      'GO'
      ''
      ''
      'CREATE procedure [dbo].[get_NowTime] (@time char(5)output)'
      'as'
      
        'select @time=case when datepart(hour,getdate())<10 then '#39'0'#39'+conv' +
        'ert(char(1),datepart(hour,getdate()))'
      
        '   else convert(char(2),datepart(hour,getdate())) end +'#39':'#39' + con' +
        'vert(char(2),datepart(minute,getdate()))'
      ''
      ''
      ''
      ''
      ''
      ''
      ' '
      ''
      'GO'
      '/* get_OrgPreCodeByID]    Script Date: 01/06/2010 00:22:00 */'
      'SET ANSI_NULLS ON'
      'GO'
      'SET QUOTED_IDENTIFIER ON'
      'GO'
      ''
      'CREATE PROCEDURE [dbo].[get_OrgPreCodeByID]'
      #9'(@ID '#9'[int],@PreCode nvarchar(50) output)'
      ''
      'AS '
      'select @PreCode=PreCode'
      ' from FromOrganizations'
      ' WHERE ( [ID]'#9' = @ID)'
      ''
      ''
      ''
      ' '
      ''
      'GO'
      '/* get_OrgTitleByID]    Script Date: 01/06/2010 00:22:00 */'
      'SET ANSI_NULLS ON'
      'GO'
      'SET QUOTED_IDENTIFIER ON'
      'GO'
      ''
      ''
      ''
      ''
      ''
      ''
      ''
      ''
      ''
      ''
      'CREATE PROCEDURE [dbo].[get_OrgTitleByID]'
      #9'(@ID '#9'[int],@title nvarchar(250) output)'
      ''
      'AS'
      'select @title=title'
      ' from FromOrganizations'
      ' WHERE ( [ID]'#9' = @ID)'
      ''
      ''
      ' '
      ''
      'GO'
      '/* Get_RecommiteJpgFile]    Script Date: 01/06/2010 00:22:00 */'
      'SET ANSI_NULLS ON'
      'GO'
      'SET QUOTED_IDENTIFIER ON'
      'GO'
      ''
      ''
      ''
      ''
      ''
      ''
      ''
      ''
      ''
      'create procedure [dbo].[Get_RecommiteJpgFile](@RecommiteID  int)'
      'as'
      'select top 1 *'
      'from Recommitedata'
      'where RecommiteID=@RecommiteID'
      'and Extention=1'
      ''
      ''
      ''
      ''
      ' '
      ''
      'GO'
      '/* get_ReferenceTable]    Script Date: 01/06/2010 00:22:00 */'
      'SET ANSI_NULLS ON'
      'GO'
      'SET QUOTED_IDENTIFIER ON'
      'GO'
      ''
      ''
      ''
      ''
      'create procedure [dbo].[get_ReferenceTable]'
      '@like  nvarchar(100)'
      'as'
      'SELECT     Tables.*'
      'FROM         Tables'
      'WHERE     (TableType = 4) and description like '#39'%'#39'+@like+'#39'%'#39
      ''
      ''
      ''
      ''
      ''
      'GO'
      
        '/* get_ReferenceTableData_by_tableID]    Script Date: 01/06/2010' +
        ' 00:22:00 */'
      'SET ANSI_NULLS ON'
      'GO'
      'SET QUOTED_IDENTIFIER ON'
      'GO'
      ''
      ''
      'create  procedure [dbo].[get_ReferenceTableData_by_tableID]'
      '@tableID int'
      'as'
      'SELECT     *'
      'FROM         ReferenceTableData'
      'WHERE     (TableID = @tableID)'
      ''
      ''
      ''
      ''
      ''
      'GO'
      '/* Get_Related_Letters]    Script Date: 01/06/2010 00:22:00 */'
      'SET ANSI_NULLS ON'
      'GO'
      'SET QUOTED_IDENTIFIER ON'
      'GO'
      ''
      ''
      ''
      ''
      ''
      'CREATE Procedure [dbo].[Get_Related_Letters](@LetterID int )'
      'as'
      'CREATE TABLE #RelatedLetters ('
      #9'[Id]int identity(1,1)  NOT NULL ,'
      #9'[ParentID] [int] NOT NULL ,'
      #9'[LetterID] [int] NOT NULL ,'
      '        LetterType tinyint ,'
      '        RetroactionNo nvarchar(50),'
      '        FollowLetterNo nvarchar(50),'
      '        Done tinyint '
      ') ON [PRIMARY]'
      ''
      
        'insert into #RelatedLetters(ParentID,LetterID,LetterType,FollowL' +
        'etterNo,RetroactionNo,Done)'
      
        'select 0,LetterID,Letter_type,isnull(ltrim(FollowLetterNo),'#39#39'),i' +
        'snull(ltrim(RetroactionNo),'#39#39'),0'
      'from letter'
      'where letterid=@letterid'
      ''
      'while exists (select * from #RelatedLetters where done=0)'
      ' begin'
      'update #RelatedLetters'
      'set done=2'
      'where done=0'
      ''
      'insert into #RelatedLetters'
      
        'select id ,letter.letterid,letter.letter_type,isnull(ltrim(Follo' +
        'wLetterNo),'#39#39'),isnull(ltrim(RetroactionNo),'#39#39'),0'
      'from letter,#RelatedLetters r'
      'where done=2 and   '
      'r.letter_type=1 and letter.letter_type=1 and '
      ' letter.incommingno=r.FollowLetterNo'
      ''
      'insert into #RelatedLetters'
      
        'select id ,letter.letterid,letter.letter_type,isnull(ltrim(Follo' +
        'wLetterNo),'#39#39'),isnull(ltrim(RetroactionNo),'#39#39'),0'
      'from letter,#RelatedLetters r'
      'where done=2 and   '
      'r.letter_type=2 and letter.letter_type=2 and '
      ' letter.indicatorid=r.FollowLetterNo'
      ''
      ''
      ''
      'insert into #RelatedLetters'
      
        'select id ,letter.letterid,letter.letter_type,isnull(ltrim(Follo' +
        'wLetterNo),'#39#39'),isnull(ltrim(RetroactionNo),'#39#39'),0'
      'from letter,#RelatedLetters r'
      'where done=2 and'
      'r.letter_type=1 and letter.letter_type=2 and '
      ' letter.indicatorid=r.RetroactionNo'
      ''
      ''
      ''
      'insert into #RelatedLetters'
      
        'select id ,letter.letterid,letter.letter_type,isnull(ltrim(Follo' +
        'wLetterNo),'#39#39'),isnull(ltrim(RetroactionNo),'#39#39'),0'
      'from letter,#RelatedLetters r'
      'where done=2 and   '
      'r.letter_type=2 and letter.letter_type=1 and '
      ' letter.incommingno=r.RetroactionNo'
      ''
      'update #RelatedLetters'
      'set done=1'
      'where done=2'
      'end'
      ''
      
        'SELECT     r.*,IndicatorID, MYear,  IncommingNO, Incommingdate, ' +
        'Memo,  '
      
        '                      Letter.LetterRecommites, t.Title AS Fromor' +
        'gTitle, FromOrganizations.Title AS ToOrgTitle into tempp'
      'FROM       #RelatedLetters r '
      'inner join Letter            on letter.letterid=r.letterid '
      
        'INNER JOIN FromOrganizations ON Letter.FromOrgID = FromOrganizat' +
        'ions.ID '
      'INNER JOIN FromOrganizations t ON Letter.ToOrgID = t.ID'
      ''
      ''
      ' '
      ''
      'GO'
      '/* get_Subject]    Script Date: 01/06/2010 00:22:00 */'
      'SET ANSI_NULLS ON'
      'GO'
      'SET QUOTED_IDENTIFIER OFF'
      'GO'
      ''
      ''
      ''
      ''
      ''
      ''
      'create procedure [dbo].[get_Subject]'
      '@like  nvarchar(100)'
      'as'
      'SELECT     *'
      'FROM         Subject'
      'WHERE    subjectTitle like '#39'%'#39'+@like+'#39'%'#39
      ''
      ''
      'GO'
      '/* Get_sys_AppMessage]    Script Date: 01/06/2010 00:22:00 */'
      'SET ANSI_NULLS ON'
      'GO'
      'SET QUOTED_IDENTIFIER ON'
      'GO'
      ''
      ''
      ''
      ''
      ''
      ''
      'create PROCEDURE [dbo].[Get_sys_AppMessage]'
      #9'(@ID '#9'[int])'
      ''
      'AS select * from  [dbo].[sys_AppMessage]'
      ''
      'WHERE '
      #9'( [ID]'#9' = @ID)'
      ''
      ''
      ''
      ' '
      ''
      'GO'
      '/* Get_tmp_LetterDataIDs]    Script Date: 01/06/2010 00:22:00 */'
      'SET ANSI_NULLS ON'
      'GO'
      'SET QUOTED_IDENTIFIER ON'
      'GO'
      ''
      ''
      ''
      ''
      ''
      ''
      ''
      ''
      ''
      ''
      ''
      'CREATE proc [dbo].[Get_tmp_LetterDataIDs]'
      'as'
      'SELECT     LetterDataID  '
      'FROM         yeganeh_tmp_db.dbo.LetterData'
      ''
      ''
      ''
      'GO '
      
        'CREATE procedure [dbo].[get_UserExtention_by_UserID] (@userID in' +
        't )'
      'as'
      ''
      'SELECT UserExtention.*'
      'FROM   UserExtention'
      'WHERE (UserId = @UserId)'
      
        '      and extentionid in (SELECT ExtentionID FROM Extention WHER' +
        'E IsSystem = 0)'
      ''
      ''
      ''
      ''
      ''
      ''
      ''
      ''
      'GO '
      ''
      'CREATE procedure [dbo].[get_userfields_by_tableID]'
      '@tableID int'
      'as'
      'SELECT     Fields.*'
      'FROM         Fields'
      'WHERE     (Fields.TableID = @tableID)'
      ''
      ''
      ''
      ' '
      ''
      'GO'
      '/* Get_UserMessageCount]    Script Date: 01/06/2010 00:22:00 */'
      'SET ANSI_NULLS ON'
      'GO'
      'SET QUOTED_IDENTIFIER OFF'
      'GO'
      ''
      '-- 86 -8- 13'
      ''
      ''
      
        'CREATE  procedure [dbo].[Get_UserMessageCount](@to int,@count in' +
        't output)'
      'as'
      'SELECT   @count=  COUNT(*) '
      'FROM         UserMessage'
      'WHERE     (To_ = @to) and status=1'
      ''
      ''
      'GO'
      ''
      'CREATE proc [dbo].[Get_UserSecretariat_Tree] @userid int'
      'as'
      'Declare @aCount int'
      'CREATE TABLE dbo.#M'
      #9'(ID int NOT NULL IDENTITY (0, 1),'
      #9'SecID int NULL,'
      #9'Title nVarchar(100) NULL,'
      #9'ParentID int NULL,'
      #9'Proceed bit NULL ,'
      '        Tag int NULL )  ON [PRIMARY]'
      'insert into #m(SecID , Title , ParentID , Proceed , Tag)'
      
        'Select 0 as SecID , '#39#1705#1575#1585#1578#1575#1576#1604#39' as Title ,-1 as ParentID ,0 as Pro' +
        'ceed , 1 as Tag'
      ''
      'insert into #m(SecID , Title , ParentID , Proceed,Tag)'
      
        'Select SecID , SecTitle as Title ,0 as ParentID,0 as Proceed ,  ' +
        '10 as Tag'
      'From Secretariats'
      
        'where secid in (SELECT SecId FROM UserSecretariats WHERE  UserId' +
        ' = @userid)'
      ''
      'Select @aCount = Count(SecID)+1'
      'From Secretariats'
      
        'where secid in (SELECT SecId FROM UserSecretariats WHERE  UserId' +
        ' = @userid)'
      ''
      'insert into #m(SecID , Title , ParentID , Proceed , Tag)'
      
        'Select 0 as SecID , '#39#1575#1585#1587#1575#1604#1607#1575#1610' '#1576#1575#1610#1711#1575#1606#1610' '#1606#1588#1583#1607#39' as Title ,-1 as Pare' +
        'ntID ,1 as Proceed , 2 as Tag'
      ''
      'Set @aCount = @aCount+1'
      'insert into #m(SecID , Title , ParentID , Proceed , Tag)'
      
        'Select 0 as SecID , '#39#1578#1605#1575#1605#1610' '#1575#1585#1587#1575#1604' '#1588#1583#1607' '#1607#1575#39' as Title ,-1 as ParentI' +
        'D ,1 as Proceed , 3 as Tag'
      ''
      'insert into #m(SecID , Title , ParentID , Proceed , Tag)'
      
        'Select SecID , SecTitle as Title ,@aCount as ParentID , 1 as Pro' +
        'ceed , 30 as Tag'
      'From Secretariats  '
      
        'where secid in (SELECT SecId FROM UserSecretariats WHERE  UserId' +
        ' = @userid)'
      ''
      
        'Select ID , SecID , LTrim(RTrim(Title))as Title , ParentID , Pro' +
        'ceed , Tag '
      'from #M'
      'Order by ID'
      ''
      ''
      ''
      'GO'
      ''
      ''
      ''
      'create procedure [dbo].[get_userTable]'
      '@like  nvarchar(100)'
      'as'
      'SELECT     Tables.*'
      'FROM         Tables'
      'WHERE     (TableType = 3) and description like '#39'%'#39'+@like+'#39'%'#39
      ''
      ' '
      ''
      'GO'
      'Create Procedure [dbo].[GetLastFormOrderByLetterID]'
      '@LetterID int,@formOrder tinyint out'
      'as'
      'select @formOrder=max(FormOrder)'
      'from dbo.LetterFieldValue'
      'where letterid=@letterid'
      ''
      'set @formOrder=isnull(@formOrder,0)'
      ''
      ''
      'GO'
      ''
      ''
      'CREATE proc [dbo].[GetLetterTemplate_HeaderID]'
      '@letterid int'
      'as'
      
        'select LetterID,TemplateId,headerid,FromOrgID,fromorganizations.' +
        'PreCode'
      'from letter'
      
        'inner join fromorganizations on fromorganizations.id=letter.from' +
        'orgid'
      'where letterid=@letterid'
      ''
      ''
      ''
      ''
      ''
      ''
      ''
      ''
      ''
      'GO'
      ''
      ''
      ''
      ''
      ''
      ''
      'CREATE PROCEDURE [dbo].[GetList](@ListID int)'
      ' AS'
      ''
      'SELECT     KeyValue, Title, Notes'
      'FROM         ListItems'
      'where ListID=@ListID'
      ' '
      ''
      'GO '
      
        'create Procedure [dbo].[GetNumberOfLetterAttach](@LetterID int,@' +
        'number int out)'
      ' AS  '
      ' '
      'SELECT    @number=count( LetterDataID)'
      'FROM         LetterData'
      'WHERE     LetterID=@LetterID and extention>3'
      ''
      ''
      'set @number=isnull(@number,0)'
      ''
      'GO'
      ''
      'Create Procedure [dbo].[GetRecommiteById]'
      '( @recommiteId int)'
      'AS'
      ''
      'select R.*,isnull(FO.Title,Lfo.title) RecommiterTitle'
      ' from Recommites R '
      'inner join letter L on R.LetterID = L.LetterID '
      
        'left join Recommites PR on R.LetterId=PR.LetterId and R.ParentId' +
        '=PR.ID '
      
        'left join dbo.FromOrganizations FO on PR.OrgID=FO.ID --where rec' +
        'ommiteId='
      'left join dbo.FromOrganizations LFO on L.ToOrgID=LFO.ID '
      'where R.recommiteId=@recommiteId'
      ''
      ''
      'GO'
      ''
      ''
      ''
      'CREATE PROCEDURE [dbo].[GetUserLogout_status]'
      
        #9'( @UserID '#9'[int] , @logout bit output, @isSafeLogout '#9'bit outpu' +
        't)'
      'AS'
      ''
      'declare @LogoutTime datetime'
      'set @logout=0'
      'set @isSafeLogout=0'
      'select top 1 @LogoutTime=LogoutTime,@isSafeLogout=isSafeLogout'
      'from UserLoginLogout'
      'where userid=@UserID'
      'order by UserLoginLogoutID desc'
      'if @LogoutTime is null set @logout=1'
      'if @isSafeLogout=1'
      ' set @logout=1'
      'else'
      ' if DATEDIFF(second, @LogoutTime,getdate())>60'
      ' set @logout=1'
      ''
      ''
      ''
      ''
      ''
      ''
      ''
      'GO'
      'CREATE PROCEDURE [dbo].[has_PDF]'
      '@LetterID int,@result bit output'
      'AS'
      ''
      'if exists('
      'SELECT     PageNumber'
      'FROM         LetterData'
      'WHERE     LetterID=@LetterID and extention=5)'
      'set @result=1'
      'else'
      'set @result=0'
      ''
      ''
      ''
      ' '
      ''
      ''
      'GO'
      ''
      ''
      
        'CREATE procedure [dbo].[hassame_orgtitle](@title nvarchar(255),@' +
        'id int output)'
      'as'
      'set @id=-1'
      'select top 1  @id=id'
      'from fromorganizations'
      'where replace(title,'#39' '#39','#39#39')=replace(@title,'#39' '#39','#39#39')'
      'or   replace(email,'#39' '#39','#39#39')=replace(@title,'#39' '#39','#39#39')'
      ''
      'GO'
      ''
      ''
      ''
      'CREATE proc [dbo].[Import_LetterData](@LetterDataID int)'
      'as'
      ''
      'set identity_insert letterdata on'
      
        'insert into letterdata(LetterDataID,LetterID,PageNumber,Image,ex' +
        'tention)'
      'SELECT    LetterDataID,LetterID,PageNumber,Image,extention'
      'FROM         yeganeh_tmp_db.DBO.LetterData'
      'where  LetterDataID=@LetterDataID'
      
        'and not exists (select letterdataid from letterdata where letter' +
        'dataid=@LetterDataID)'
      'set identity_insert letterdata off'
      ''
      ''
      ''
      'GO'
      ''
      ''
      ''
      ''
      'CREATE PROCEDURE [dbo].[insert_Actions]'
      #9'('
      #9' @FormTag '#9'[tinyint],'
      #9' @ID '#9'[nvarchar](50),'
      #9' @Title '#9'[nvarchar](50)'
      ')'
      ''
      'AS INSERT INTO [dbo].[Actions]'
      #9' ( [FormTag],'
      #9' [ID],'
      #9' [Title])'
      ''
      'VALUES'
      #9'( @FormTag,'
      #9' @ID,'
      #9' @Title)'
      ''
      ''
      'GO'
      ''
      'CREATE PROCEDURE [dbo].[insert_All_ReCommites]'
      'AS INSERT INTO [dbo].[ReCommites] '
      #9' ('
      #9' [LetterID],'
      #9' [ID],'
      #9' [Type],'
      #9' [ParentId],'
      #9' [OrgID],'
      #9' [Paraph],'
      #9' [RecommiteDate],'
      #9' [UserID],'
      #9' [IsCopy],'
      #9' [Proceeded]) '
      'select letterid,1,3,0,fromorgid,'#39#39',registrationdate,userid,0,0 '
      'from letter'
      'where letterid not in (select distinct letterid from recommites)'
      ''
      ''
      ''
      ''
      'GO'
      ''
      ''
      ''
      ''
      ''
      ''
      ''
      'GO'
      'CREATE PROCEDURE [dbo].[insert_Extention]'
      '@ExtentionID int '
      ' AS'
      ''
      ''
      'delete UserExtention where ExtentionID=@ExtentionID'
      
        'INSERT INTO UserExtention (UserId, ExtentionID) select id,@Exten' +
        'tionID from users'
      ''
      ''
      ''
      ''
      ''
      'GO'
      'CREATE procedure [dbo].[insert_FieldAccess]'
      'as'
      ''
      'INSERT INTO FieldAccess ([FieldID] ,[UserID] ,[AccessTypeID])'
      'SELECT fields.id,users.id,3'
      'FROM Fields,Users'
      
        'where tableid in (SELECT TableID FROM Tables WHERE TableType = 3' +
        ')'
      
        'and str(fields.id)+'#39'm'#39'+str(users.id) not in (select str(fieldid)' +
        '+'#39'm'#39'+str(userid) from FieldAccess)'
      ''
      ''
      'GO'
      ''
      'CREATE procedure [dbo].[insert_FieldAccess_by_TableID]'
      '@TableID int'
      'as'
      ''
      'INSERT INTO FieldAccess ([FieldID] ,[UserID] ,[AccessTypeID])'
      'SELECT fields.id,users.id,3'
      'FROM Fields,Users'
      'where tableid=@TableID'
      
        'and str(fields.id)+'#39'm'#39'+str(users.id) not in (select str(fieldid)' +
        '+'#39'm'#39'+str(userid) from FieldAccess)'
      ''
      'GO'
      ''
      ''
      ''
      'CREATE PROCEDURE [dbo].[insert_Letter]'
      #9'(@IndicatorID '#9'[int],'
      #9' @MYear '#9'[tinyint],'
      #9' @SecretariatID '#9'[tinyint],'
      #9' @Letter_Type '#9'[tinyint],'
      #9' @letterformat '#9'[tinyint],'
      #9' @IncommingNO '#9'[nvarchar](50),'
      #9' @Incommingdate '#9'[nvarchar](10),'
      #9' @CenterNo '#9'[nvarchar](50),'
      #9' @CenterDate '#9'[char](10),'
      #9' @FromOrgID '#9'[int],'
      #9' @ToOrgID '#9'[int],'
      #9' @Signerid '#9'[nvarchar](50),'
      #9' @ClassificationID '#9'[tinyint],'
      #9' @UrgencyID '#9'[smallint],'
      #9' @Memo '#9'[nvarchar](500),'
      #9' @AttachTitle '#9'[nvarchar](50),'
      #9' @NumberOfAttachPages '#9'[smallint],'
      #9' @NumberOfPage '#9'[tinyint],'
      #9' @ReceiveTypeID '#9'[tinyint],'
      #9' @UserID '#9'[int],'
      #9' @RetroactionNo '#9'[nvarchar](50),'
      #9' @UserMemo '#9'[nvarchar](255),'
      #9' @RegistrationDate '#9'[char](10),'
      #9' @RegistrationTime '#9'[varchar](5),'
      #9' @FollowLetterNo '#9'[nvarchar](50),'
      #9' @ToStaffer '#9'[nvarchar](50),'
      #9' @SentLetterID '#9'[int],'
      #9' @TemplateID '#9'[int],'
      #9' @HeaderID '#9'[int],'
      #9' @LetterRecommites '#9'[nvarchar](500),'
      #9' @FromStaffer '#9'[nvarchar](50),'
      #9' @Finalized '#9'[bit],'
      #9' @SendStatusID '#9'[tinyint],'
      '@Exists bit output)'
      ''
      ''
      'AS '
      'if exists (select *'
      'from letter WHERE'
      #9'[IndicatorID]'#9' = @IndicatorID AND'
      #9' [MYear]'#9' = @MYear AND'
      #9' [SecretariatID] = @SecretariatID AND'
      #9' [Letter_Type]'#9' = @Letter_Type AND'
      #9' [letterformat]'#9' = @letterformat)'
      '  set @Exists=1'
      ' else'
      '  set @Exists=0'
      ''
      ''
      'if @Exists=0 '
      'INSERT INTO [dbo].[Letter] '
      
        #9'([IndicatorID],'#9' [MYear],'#9'         [SecretariatID],[Letter_Type' +
        '],'#9' [letterformat],'
      
        ' '#9' [IncommingNO],'#9' [Incommingdate],'#9' [CenterNo],'#9' [CenterDate],'#9 +
        ' [FromOrgID],'#9' [ToOrgID],'
      
        #9' [Signerid],'#9' [ClassificationID],'#9' [UrgencyID],'#9' [Memo],'#9' [Atta' +
        'chTitle],'#9' [NumberOfAttachPages],'
      
        #9' [NumberOfPage], [ReceiveTypeID],'#9' [UserID],'#9' [RetroactionNo],[' +
        'UserMemo],'
      
        #9' [RegistrationDate],[RegistrationTime],'#9' [FollowLetterNo],[ToSt' +
        'affer],'#9' [SentLetterID],'
      
        #9' [TemplateID],'#9' [HeaderID],'#9' [LetterRecommites],'#9' [FromStaffer]' +
        ','#9' [Finalized],'#9' [SendStatusID]) '
      ' '
      'VALUES '
      
        #9'(@IndicatorID,'#9' @MYear,'#9'         @SecretariatID, @Letter_Type,'#9 +
        ' @letterformat,'
      
        #9' @IncommingNO,'#9' @Incommingdate,'#9' @CenterNo,'#9' @CenterDate,'#9' @Fro' +
        'mOrgID,'#9' @ToOrgID,'
      
        #9' @Signerid,'#9' @ClassificationID,'#9' @UrgencyID,'#9' @Memo,'#9' @AttachTi' +
        'tle,'#9' @NumberOfAttachPages,'
      
        #9' @NumberOfPage,'#9' @ReceiveTypeID,'#9' @UserID,'#9' @RetroactionNo,'#9' @U' +
        'serMemo,'
      
        #9' @RegistrationDate,'#9' @RegistrationTime,'#9' @FollowLetterNo,'#9' @ToS' +
        'taffer,'#9' @SentLetterID,'
      
        #9' @TemplateID,'#9' @HeaderID,'#9' @LetterRecommites,'#9' @FromStaffer,'#9' @' +
        'Finalized,'#9' @SendStatusID)'
      ''
      ''
      ''
      ''
      ''
      'GO'
      ''
      ''
      ''
      'CREATE PROCEDURE [dbo].[insert_Letter_all]'
      
        #9'(@IndicatorID '#9'[int],'#9' @MYear '#9'[tinyint],'#9' @SecretariatID '#9'[tin' +
        'yint],'
      
        #9' @Letter_Type '#9'[tinyint],'#9' @letterformat '#9'[tinyint],'#9' @Incommin' +
        'gNO '#9'[nvarchar](50),'
      
        #9' @Incommingdate '#9'[nvarchar](10),'#9' @CenterNo '#9'[nvarchar](50),'#9' @' +
        'CenterDate '#9'[char](10),'
      
        #9' @FromOrgID '#9'[int],'#9' @ToOrgID '#9'[int],'#9' @Signerid '#9'[nvarchar](50' +
        '),'
      
        #9' @ClassificationID '#9'[tinyint],'#9' @UrgencyID '#9'[smallint],'#9' @Memo ' +
        #9'[nvarchar](500),'
      
        #9' @AttachTitle '#9'[nvarchar](50),'#9' @NumberOfAttachPages '#9'[smallint' +
        '],'#9' @NumberOfPage '#9'[tinyint],'
      
        #9' @ReceiveTypeID '#9'[tinyint],'#9' @UserID '#9'[int],'#9' @RetroactionNo '#9'[' +
        'nvarchar](50),'
      
        #9' @UserMemo '#9'[nvarchar](255),'#9' @RegistrationDate '#9'[char](10), @R' +
        'egistrationTime '#9'[varchar](5),'
      
        #9' @FollowLetterNo '#9'[nvarchar](50),'#9' @ToStaffer '#9'[nvarchar](50),'#9 +
        ' @SentLetterID '#9'[int],'
      
        #9' @TemplateID '#9'[int],'#9' @HeaderID '#9'[int],'#9' @LetterRecommites '#9'[nv' +
        'archar](500),'
      
        #9' @FromStaffer '#9'[nvarchar](50),'#9' @Finalized '#9'[bit],'#9' @SendStatus' +
        'ID '#9'[tinyint],'
      '@Exists bit output,'
      '@LetterID int output)'
      ''
      ''
      'AS '
      'if exists (select *'
      'from letter WHERE '
      #9'[IndicatorID]'#9' = @IndicatorID AND'
      #9' [MYear]'#9' = @MYear AND'
      #9' [SecretariatID] = @SecretariatID AND'
      #9' [Letter_Type]'#9' = @Letter_Type AND'
      #9' [letterformat]'#9' = @letterformat)'
      '  set @Exists=1'
      ' else'
      '  set @Exists=0'
      ''
      ''
      'if @Exists=0 '
      'INSERT INTO .[dbo].[Letter] '
      
        #9'([IndicatorID],'#9' [MYear],'#9'         [SecretariatID],[Letter_Type' +
        '],'#9' [letterformat],'
      
        ' '#9' [IncommingNO],'#9' [Incommingdate],'#9' [CenterNo],'#9' [CenterDate],'#9 +
        ' [FromOrgID],'#9' [ToOrgID],'
      
        #9' [Signerid],'#9' [ClassificationID],'#9' [UrgencyID],'#9' [Memo],'#9' [Atta' +
        'chTitle],'#9' [NumberOfAttachPages],'
      
        #9' [NumberOfPage], [ReceiveTypeID],'#9' [UserID],'#9' [RetroactionNo],[' +
        'UserMemo],'
      
        #9' [RegistrationDate],[RegistrationTime],'#9' [FollowLetterNo],[ToSt' +
        'affer],'#9' [SentLetterID],'
      
        #9' [TemplateID],'#9' [HeaderID],'#9' [LetterRecommites],'#9' [FromStaffer]' +
        ','#9' [Finalized],'#9' [SendStatusID])'
      ' '
      'VALUES '
      
        #9'(@IndicatorID,'#9' @MYear,'#9'         @SecretariatID, @Letter_Type,'#9 +
        ' @letterformat,'
      
        #9' @IncommingNO,'#9' @Incommingdate,'#9' @CenterNo,'#9' @CenterDate,'#9' @Fro' +
        'mOrgID,'#9' @ToOrgID,'
      
        #9' @Signerid,'#9' @ClassificationID,'#9' @UrgencyID,'#9' @Memo,'#9' @AttachTi' +
        'tle,'#9' @NumberOfAttachPages,'
      
        #9' @NumberOfPage,'#9' @ReceiveTypeID,'#9' @UserID,'#9' @RetroactionNo,'#9' @U' +
        'serMemo,'
      
        #9' @RegistrationDate,'#9' @RegistrationTime,'#9' @FollowLetterNo,'#9' @ToS' +
        'taffer,'#9' @SentLetterID,'
      
        #9' @TemplateID,'#9' @HeaderID,'#9' @LetterRecommites,'#9' @FromStaffer,'#9' @' +
        'Finalized,'#9' @SendStatusID)'
      ''
      'select @LetterID=Letterid '
      'from letter WHERE '
      #9'[IndicatorID]'#9' = @IndicatorID AND'
      #9' [MYear]'#9' = @MYear AND'
      #9' [SecretariatID] = @SecretariatID AND'
      #9' [Letter_Type]'#9' = @Letter_Type AND'
      #9' [letterformat]'#9' = @letterformat'
      ''
      ''
      ''
      'GO'
      ''
      ''
      'CREATE PROCEDURE [dbo].[insert_LetterArchiveFolder]'
      '(@LetterArchiveID '#9'[int] output,'
      #9' @ArchiveFolderID '#9'[int],'
      #9' @LetterID '#9'[int],'
      #9' @ArchiveDate '#9'[char](10),'
      #9' @Page '#9'[int],'
      #9' @ArchiveNotes '#9'[nvarchar](50),@UserID int)'
      ''
      'AS INSERT INTO [dbo].[LetterArchiveFolder]'
      #9' ( '
      #9' [ArchiveFolderID],'
      #9' [LetterID],'
      #9' [ArchiveDate],'
      #9' [Page],'
      #9' [ArchiveNotes],UserID) '
      ' '
      'VALUES '
      #9'('
      #9' @ArchiveFolderID,'
      #9' @LetterID,'
      #9' @ArchiveDate,'
      #9' @Page,'
      #9' @ArchiveNotes,@UserID)'
      ''
      'set @LetterArchiveID=@@identity'
      ''
      ''
      ''
      'GO '
      ''
      'CREATE PROCEDURE [dbo].[insert_LetterData]'
      #9'(@LetterDataID '#9'[int] output,'
      #9' @LetterID '#9'[int],'
      #9' @PageNumber '#9'[tinyint],'
      #9' @extention '#9'[tinyint])'
      ''
      'AS INSERT INTO [dbo].[LetterData] '
      #9' (  [LetterID],'
      #9' [PageNumber],'
      #9' [extention]) '
      ' '
      'VALUES '
      #9'( @LetterID,'
      #9' @PageNumber,'
      #9' @extention)'
      ''
      'set  @LetterDataID=@@identity'
      ''
      ''
      ''
      'GO'
      'CREATE PROCEDURE [dbo].[insert_LetterText]'
      #9'(@LetterID int,'
      #9' @TypeText   '#9'ntext)'
      'AS '
      'if exists(select * from [dbo].[LetterText] '
      ' WHERE     (LetterID = @LetterID))'
      'update LetterText '
      'set TypeText=@TypeText'
      ' WHERE     (LetterID = @LetterID)'
      'else'
      'INSERT INTO [dbo].[LetterText] '
      #9' ( [LetterID],'
      #9' [TypeText])'
      ' '
      'VALUES '
      #9'( @LetterID,'
      #9' @TypeText  )'
      ''
      ''
      ''
      ''
      ''
      ''
      'GO '
      ''
      'CREATE PROCEDURE [dbo].[insert_newActionsAccess]'
      'AS'
      ''
      
        'delete from ActionsAccess where str(formtag)+ActionID not in (se' +
        'lect str(formtag)+ID from'
      'actions)'
      ''
      'INSERT INTO [dbo].[ActionsAccess] '
      #9' ( [AccessID],'
      #9' [ActionID],'
      #9' [FormTag],'
      #9' [HasAccess])'
      ''
      'SELECT     Accesses.ID,  Actions.ID,Actions.FormTag,1 '
      'FROM         Accesses,Actions '
      'where str(accesses.id)+actions.id not in'
      ' (select str(accesses.id)+actionid  from dbo.ActionsAccess)'
      ''
      'GO'
      ''
      ''
      'Create Procedure [dbo].[Insert_ParaphTemplate]'
      '@UserID int,@Title nvarchar(50),@Paraph nvarchar(500)'
      'as'
      'declare @OrderID tinyint'
      ''
      
        'select @OrderID=max(OrderID)+1 from ParaphTemplate where UserID=' +
        '@Userid'
      ''
      'if @OrderID is null set @OrderID=1'
      ''
      'INSERT INTO ParaphTemplate (UserID ,OrderID ,Title,Paraph)'
      'VALUES (@UserID,@OrderID,@Title,@Paraph)'
      ''
      ''
      'GO'
      ''
      'CREATE PROCEDURE [dbo].[insert_ReciveLetter]  '
      ' (@letterID integer output,  '
      '  @IndicatorID  int,  '
      '  @MYear  tinyint,  '
      '  @SecretariatID  tinyint,  '
      '  @Letter_Type  tinyint,  '
      '  @letterformat  tinyint,  '
      '  @Memo  nvarchar(500),  '
      '  @UserID  int,  '
      '  @RegistrationDate  char(10),  '
      '  @RegistrationTime  varchar(5),  '
      '  @OrgID int)  '
      'AS  '
      '  '
      'declare @OrgStaff nvarchar(50)  '
      'select @OrgStaff=ResponsibleStaffer  '
      'from dbo.FromOrganizations  '
      'where id=@orgid  '
      ''
      'INSERT INTO dbo.Letter   '
      
        '(IndicatorID,  MYear,  SecretariatID,  Letter_Type,  letterforma' +
        't,  Memo,  UserID,  RegistrationDate,  RegistrationTime,  FromOr' +
        'gID,ReceiveTypeID )   '
      'VALUES   '
      
        '(@IndicatorID,  @MYear,  @SecretariatID,  @Letter_Type,  @letter' +
        'format,  @Memo,  @UserID,  @RegistrationDate,  @RegistrationTime' +
        ',  @OrgID,2)  '
      '  '
      'SET @LetterID=@@Identity  '
      '  '
      
        'INSERT INTO dbo.ReCommites   (LetterID, ID, Type,  ParentId,  Or' +
        'gID,  Paraph,  RecommiteDate,  UserID,  IsCopy,  Proceeded,OrgSt' +
        'aff)   '
      
        'values(@letterid,1,3,0,@orgid,'#39#39',@registrationdate,@userid,0,0,@' +
        'OrgStaff)  '
      ''
      ''
      'GO'
      ''
      'CREATE PROCEDURE [dbo].[insert_ReCommites]'
      #9'(@LetterID '#9'[int],'
      #9' @ID '#9'[smallint],'
      #9' @Type '#9'[tinyint],'
      #9' @ParentId '#9'[smallint],'
      #9' @OrgID '#9'[int],'
      #9' @Paraph '#9'[nvarchar](500),'
      #9' @RecommiteDate '#9'[varchar](10),'
      #9' @UserID '#9'[tinyint],'
      #9' @IsCopy '#9'[bit],'
      #9' @Proceeded '#9'[bit],'
      '@RecommiteID int output)'
      ''
      'AS'
      ''
      'declare @OrgStaff nvarchar(50)'
      'select top 1 @OrgStaff=ResponsibleStaffer'#9
      'from dbo.FromOrganizations '
      'WHERE '#9'id'#9' = @OrgID'
      ''
      ' INSERT INTO [dbo].[ReCommites]'
      #9' ('
      #9' [LetterID],'
      #9' [ID],'
      #9' [Type],'
      #9' [ParentId],'
      #9' [OrgID],'
      #9' [Paraph],'
      #9' [RecommiteDate],'
      #9' [UserID],'
      #9' [IsCopy],'
      #9' [Proceeded],'
      'OrgStaff) '
      ' '
      'VALUES '
      #9'( '
      #9' @LetterID,'
      #9' @ID,'
      #9' @Type,'
      #9' @ParentId,'
      #9' @OrgID,'
      #9' @Paraph,'
      #9' @RecommiteDate,'
      #9' @UserID,'
      #9' @IsCopy,'
      #9' @Proceeded,'
      '@OrgStaff )'
      ''
      'set @RecommiteID=@@identity'
      ''
      ''
      ''
      ''
      'GO'
      ''
      'create PROCEDURE [dbo].[insert_ToOrganizations]'
      #9'(@Title [nvarchar](100),@id int output)'
      ''
      'AS '
      'declare @code varchar(50)'
      'select @code =max(id)+1'
      'from FromOrganizations'
      ''
      'INSERT INTO [FromOrganizations] '
      #9' ( [Title],'#9' [ParentID],'#9' [IsActive],'#9' [IsInnerOrg],'#9' [Code]) '
      'VALUES '#9'( @Title,'#9' 4,'#9' 1,'#9' 0,'#9' @code)'
      ''
      'set @id=@@identity'
      ''
      ''
      ''
      'GO '
      ''
      ''
      ''
      'CREATE PROCEDURE [dbo].[insert_UserLog]'
      #9'(@UserID '#9'[tinyint],'
      #9' @FormTag [int],'
      #9' @ActionID '#9'[nvarchar](50),'
      #9' @LetterID'#9'[int])'
      ''
      'AS INSERT INTO [dbo].[UserLog]'
      #9' ( [UserID],'
      #9' [FormID],'
      #9' [ActionID],'
      #9' [LetterID])'
      ''
      'VALUES'
      #9'( @UserID,'
      #9' @FormTag,'
      #9' @ActionID,'
      #9' @LetterID)'
      ''
      ''
      ''
      ''
      ''
      ''
      'GO '
      ''
      'CREATE PROCEDURE [dbo].[insert_UserLoginLogout]'
      #9'( @UserID '#9'[int],'
      #9' @IPAddress '#9'[char](15),'
      '@UserLoginLogoutID int output)'
      ''
      'AS '
      ''
      'INSERT INTO [dbo].[UserLoginLogout] '
      #9' ( [UserID],'
      #9' [IPAddress]) '
      ' '
      'VALUES '
      #9'('
      #9' @UserID,'
      #9' @IPAddress)'
      'set @UserLoginLogoutID=@@identity'
      ''
      ''
      ''
      ''
      'GO'
      ''
      ''
      ''
      'create  PROCEDURE [dbo].[insertReCommites_autoID]'
      #9'(@LetterID '#9'[int],'
      #9' @Type '#9'[tinyint],'
      #9' @ParentId '#9'[smallint],'
      #9' @OrgID '#9'[int],'
      #9' @Paraph '#9'[nvarchar](500),'
      #9' @RecommiteDate '#9'[varchar](10),'
      #9' @UserID '#9'[tinyint],'
      #9' @IsCopy '#9'[bit])'
      ''
      'AS '
      'declare'#9' @ID int,@orgstaff nvarchar (50)'
      ''
      'select @id=max(id)+1'
      'from recommites'
      'where Letterid=@LetterID'
      ''
      'select @orgstaff=ResponsibleStaffer'
      'from fromorganizations'
      'where id=@OrgID'
      ''
      'INSERT INTO [ReCommites] '
      #9' ( [LetterID],'
      #9' [ID],'
      #9' [Type],'
      #9' [ParentId],'
      #9' [OrgID],'
      #9' [Paraph],'
      #9' [RecommiteDate],'
      #9' [UserID],'
      #9' [IsCopy],orgstaff) '
      ' '
      'VALUES'
      #9'( @LetterID,'
      #9' @ID,'
      #9' @Type,'
      #9' @ParentId,'
      #9' @OrgID,'
      #9' @Paraph,'
      #9' @RecommiteDate,'
      #9' @UserID,'
      #9' @IsCopy,@orgstaff)'
      ''
      ''
      ''
      ' '
      ''
      'GO'
      ''
      ''
      'CREATE PROCEDURE [dbo].[insertText]'
      
        ' @Text nvarchar(4000),@MYear int,@indicator int,@receivedMode bi' +
        't'
      'AS'
      ' declare @i int,@W nvarchar(50)'
      'set @text=ltrim(rtrim(@text))'
      'if @text='#39#39'  return'
      '     while charindex('#39' '#39',@Text)>0'
      '       begin'
      '        set @i=charindex('#39' '#39',@Text);'
      '        set @w=substring(@Text,1,@i-1);'
      
        '        exec insertWordInLetter @w,@MYear ,@indicator ,@received' +
        'Mode '
      
        '        set @Text=ltrim(rtrim(substring(@text,@i,len(@text)-@i+1' +
        ')));'
      '       end;'
      
        '  exec insertWordInLetter @Text,@MYear ,@indicator ,@receivedMod' +
        'e'
      ''
      ''
      ''
      ''
      ''
      ''
      ''
      'GO '
      'CREATE PROCEDURE [dbo].[letterContainText]'
      ' @secID tinyint,@where nvarchar(500)'
      'AS'
      ''
      ' declare @sqlCommand nvarchar(4000)'
      'set @where=ltrim(rtrim(isnull(@where,'#39#39')))'
      ''
      
        ' set  @sqlcommand='#39'SELECT    distinct Letter.LetterID,Letter_typ' +
        'e, indicatorid, RegistrationDate, '
      
        'Memo, FromOrganizations.Title AS FromTitle, ToOrganizations.Titl' +
        'e AS ToTitle'
      'FROM         LetterText '
      'INNER JOIN   Letter on letter.letterid=LetterText.letterid'
      
        'INNER JOIN     FromOrganizations ON FromOrgID = FromOrganization' +
        's.ID'
      
        'INNER JOIN  FromOrganizations ToOrganizations ON ToOrgID = ToOrg' +
        'anizations.ID  where (Letter.SecretariatID='#39'+cast(@secId as varc' +
        'har(3)) +'#39' or '#39'+cast'
      '(@SeCID as varchar(3))+'#39' = 0)'#39
      ''
      'if @where<>'#39#39' set @sqlcommand=@sqlcommand+'#39' and '#39'+@where'
      'exec sp_executesql @sqlcommand'
      ''
      ''
      ' '
      ''
      'GO'
      ''
      ''
      'CREATE procedure [dbo].[Make_FieldValues_By_LetterID]'
      '@LetterID int,@FormOrder tinyint'
      'as'
      ''
      'declare @tableID int, @tableID2 int,@TableID0 int,@userid int   '
      ''
      
        'select @TableID=UserTableID,@tableID2=UsertableID2,@userid=useri' +
        'd  '
      'from letter'
      'where letterid=@LetterID'
      ' '
      'if @tableID is not null or @tableID2 is not null'
      'begin'
      ''
      'delete LetterFieldValue'
      'from LetterFieldValue'
      'inner join  Fields on Fields.id=LetterFieldValue.fieldid'
      'where Letterid =@letterid and  '
      '('
      '(tableid<>@TableID and formorder=1) or '
      '(tableid<>@TableID2 and formorder=2)'
      ')'
      ''
      'if @FormOrder=1 '
      'set @TableID0=@tableID'
      'else'
      'set @TableID0=@tableID2 '
      ''
      
        'insert into  LetterFieldValue(letterid,FieldID,formOrder,insertu' +
        'serid )'
      ' select @letterID,ID, @FormOrder,@userid '
      ' from Fields'
      ' where tableid=@TableID0 and'
      
        ' id not in (select FieldID from LetterFieldValue where Letterid=' +
        '@LetterID and formOrder=@formOrder)'
      ''
      'INSERT INTO FieldAccess ([FieldID] ,[UserID] ,[AccessTypeID])'
      'SELECT fields.id,users.id,3'
      'FROM Fields,Users'
      'where tableid=@TableID0'
      'and str(fields.id)+'#39'm'#39'+str(users.id) not in '
      '(select str(fieldid)+'#39'm'#39'+str(userid) from FieldAccess)'
      ''
      'end'
      ''
      ''
      ''
      'GO'
      ''
      
        'CREATE procedure [dbo].[min_page](@LetterID int,@haspage bit out' +
        'put,@minpage tinyint output)'
      'as'
      ''
      'SELECT     @minpage=MIN(PageNumber)'
      'FROM         LetterData'
      ' WHERE     (LetterID = @LetterID and extention=1)'
      ''
      'if @minpage is null set @haspage=0 else set @haspage=1'
      'set @minpage=isnull(@minpage,1)'
      ''
      ''
      ''
      ''
      ''
      ''
      ''
      'GO'
      ''
      'CREATE Procedure [dbo].[Move_ParaphTemplate]'
      '@ParaphTemplateID int,@Step smallint'
      'as'
      'declare @swapParaphTemplateID int,@OrderId tinyint,@Userid int'
      ''
      ''
      
        'select @OrderID=Orderid,@Userid=Userid from ParaphTemplate Where' +
        ' ParaphTemplateID=@ParaphTemplateID'
      ''
      ''
      'SELECT @swapParaphTemplateID=ParaphTemplateID'
      'FROM ParaphTemplate'
      'Where UserID=@UserID and OrderID=@OrderID+@Step'
      ''
      'if @swapParaphTemplateID is not null'
      '  begin'
      
        '   update ParaphTemplate set OrderId=@OrderID+@Step where Paraph' +
        'TemplateID=@ParaphTemplateID'
      
        '   update ParaphTemplate set OrderId=@OrderID      where  Paraph' +
        'TemplateID=@SwapParaphTemplateID'
      '  end'
      ''
      'GO'
      ''
      ''
      
        'CREATE PROCEDURE [dbo].[NewRecommiteID](@letterID int,@type int,' +
        '@NewID int output)'
      'AS'
      ''
      
        'SELECT     @NewID=ISNULL(MAX(ID), 0) + 1   FROM ReCommites WHERE' +
        ' LetterID=@letterID and type=@type'
      ''
      ''
      'GO'
      ''
      
        'Create procedure [dbo].[Next_page](@LetterID int,@CurrentPage ti' +
        'nyint,@Next bit ,@newPage tinyint output)'
      'as'
      'if @next=1'
      ' begin'
      ''
      'SELECT     @newPage=MIN(PageNumber)'
      'FROM         LetterData'
      
        ' WHERE     (LetterID = @LetterID and extention=1 and PageNumber>' +
        '@CurrentPage)'
      ''
      'if @newPage is null'
      'SELECT     @newPage=MIN(PageNumber)'
      'FROM         LetterData'
      ' WHERE     (LetterID = @LetterID and extention=1 )'
      ''
      'end'
      'else'
      ' begin'
      ''
      'SELECT     @newPage=max(PageNumber)'
      'FROM         LetterData'
      
        ' WHERE     (LetterID = @LetterID and extention=1 and PageNumber<' +
        '@CurrentPage)'
      ''
      'if @newPage is null'
      'SELECT     @newPage=max(PageNumber)'
      'FROM         LetterData'
      ' WHERE     (LetterID = @LetterID and extention=1 )'
      ''
      'end'
      ''
      ''
      'GO'
      ''
      ''
      ''
      ''
      ''
      ''
      'create PROCEDURE [dbo].[NextTag]'
      '@formtag tinyint'
      'AS'
      'if @formtag>0 '
      'SELECT     MAX(ID)+1'
      'FROM         Actions'
      'WHERE     (FormTag =@formtag)'
      'else'
      'SELECT     MAX(FormTag)+1'
      'FROM         Actions'
      ''
      ''
      ''
      'GO'
      ''
      'CREATE PROCEDURE [dbo].[NumberOfLetter_By_SecID]'
      '@secID int,@Number_OF_Letter int output'
      ' AS'
      
        'select @Number_OF_Letter =count(*) from letter where secretariat' +
        'id=@secid'
      ''
      ''
      ''
      ''
      ''
      ' '
      ''
      'GO'
      ''
      'CREATE PROCEDURE [dbo].[NumberOfTemplate_By_TemplateGroupID]'
      '@TemplateGroupID int,@Number_OF_Template int output'
      ' AS'
      
        'select @Number_OF_Template =count(*) from LetterTemplate where T' +
        'emplateGroupid=@TemplateGroupid'
      ''
      ''
      ''
      ' '
      ''
      'GO'
      ''
      'CREATE PROCEDURE [dbo].[Org_hasChild]'
      #9'(@ParentID '#9'[int],@hasChild bit output)'
      'AS '
      'if exists( select * from  FromOrganizations'
      ' WHERE  [ParentID]'#9' = @ParentID)'
      'set @haschild=1'
      'else'
      'set @haschild=0'
      ''
      ''
      ''
      ''
      ''
      ''
      'GO'
      ''
      ''
      ''
      ''
      ''
      ''
      ''
      ''
      
        'CREATE procedure [dbo].[org_hasLetter](@orgid int,@count int out' +
        'put)'
      'as'
      'set @count=0'
      'select @count=count(1)'
      'from recommites'
      'where orgid=@orgid'
      ''
      ''
      ''
      ' '
      ''
      'GO'
      ''
      ''
      ''
      ''
      'CREATE PROCEDURE [dbo].[Org_is_Secretariat]'
      '@orgid int ,@IsSecretariat bit output'
      'as'
      'set @IsSecretariat=0'
      ''
      ''
      
        'Select  @IsSecretariat=cast(case when r.DestinationOrgID_inSourc' +
        'e is null then 0 else 1 end as bit)  '
      
        ' from fromorganizations LEFT JOIN RelatedSecretariats R ON FromO' +
        'rganizations.ID = R.DestinationOrgID_inSource'
      'where id=@orgid'
      ''
      ''
      ' '
      ''
      'GO'
      ''
      ''
      ''
      ''
      
        'CREATE  procedure [dbo].[Recommite_has_JpgFile](@RecommiteID  in' +
        't,@hasJpg bit output)'
      'as'
      'if exists(select  *'
      'from Recommitedata'
      'where RecommiteID=@RecommiteID'
      
        'and Extention=1  and image is not null)  set @hasJpg=1 else set ' +
        '@hasJpg=0'
      ''
      ''
      ''
      ''
      ''
      'GO'
      ''
      ''
      ''
      ''
      ''
      ''
      ''
      'create proc [dbo].[Recommite_Report]'
      
        ' @begindate char(10),@enddate char(10),@secid int ,@letter_type ' +
        'int '
      'as'
      ''
      
        'select Recommiteid,orgid,dbo.ShamsiDateDiff(recommitedate,isnull' +
        '(Proceeddate,'#39'1385/06/08'#39'))delay ,proceeded into #abs'
      'from recommites'
      'inner join letter on letter.letterid=recommites.letterid'
      'where recommitedate between @begindate  and @enddate'
      'and letter.Secretariatid=@secid'
      'and (@letter_type=0) or (Letter_type=@letter_type)'
      ''
      ''
      'select *'
      'from #abs'
      'inner join fromorganizations on Fromorganizations.id=orgid'
      ''
      ''
      ' '
      ''
      'GO'
      ''
      'create  Procedure [dbo].[Report_Scan]'
      '@where nvarchar(1000),@Extention tinyint'
      'as'
      'set @extention=2'
      'declare @sqlCommand nvarchar(4000)'
      'set @sqlCommand='#39'select'
      
        '  LetterFormats.Title AS FormatTitle, LetterTypes.Title LetterTy' +
        'peTitle, Count(*) All_cnt ,sum(case when ld.letterid is null the' +
        'n 1 else 0 end  ) Scanned'
      'from Letter as L'
      
        '  left join (Select distinct letterid from letterdata where exte' +
        'ntion in (1,2)) ld on ld.letterid=l.letterid'
      '  Left JOIN LetterFormats ON L.letterformat = LetterFormats.Code'
      ' left JOIN LetterTypes ON l.Letter_type = LetterTypes.ID'#39
      'set @where=isnull(ltrim(rtrim(@where)),'#39#39')'
      'if @where<>'#39#39
      ' set @sqlCommand=@sqlCommand+'#39' where '#39'+@where'
      
        ' set @sqlCommand=@sqlCommand+'#39' group by LetterFormats.Title, Let' +
        'terTypes.Title '#39
      ''
      'exec sp_executesql @sqlCommand'
      ''
      'GO '
      ''
      'Create PROCEDURE [dbo].[Report_UserLog]'
      '@Secretariatid int,'
      '@myear tinyint,'
      '@where nvarchar(2000)'
      'as '
      'declare @sqlCommand nvarchar(4000)'
      ''
      'set @sqlCommand='#39
      'SELECT     top 1000'
      ' ApplicationForms.Title AS FormTitle,'
      ' Users.Title AS UserTitle,'
      ' Actions.Title AS ActionTitle,'
      ' Letter.IndicatorID,'
      ' LetterTypes.Title AS LetterType,'
      ' Letter.IncommingNO,'
      ' Letter.Incommingdate,'
      ' Letter.RegistrationDate,'
      ' Letter.Memo,'
      ' dbo.Shamsi(UserLog.Time1) AS Date,'
      ' right(cast(UserLog.Time1 as varchar(50)),7) as Time'
      ''
      'FROM       UserLog'
      'INNER JOIN Users            ON Users.Id = UserLog.UserID'
      'INNER JOIN Actions          ON UserLog.ActionID = Actions.ID '
      
        'INNER JOIN ApplicationForms ON ApplicationForms.ID = Actions.For' +
        'mTag'
      
        'LEFT  JOIN Letter           ON UserLog.LetterID = Letter.LetterI' +
        'D'
      
        'LEFT  JOIN LetterTypes      ON Letter.Letter_Type = LetterTypes.' +
        'ID '#39
      ''
      ''
      'set @where=isnull(ltrim(rtrim(@where)),'#39#39')'
      'if @where <>'#39#39' set @where ='#39' and '#39'+@where'
      ''
      'if @Secretariatid<>0'
      
        '  set @where=@where+'#39' and (Secretariatid = '#39'+Cast(@Secretariatid' +
        ' as varchar(5))+'#39')'#39
      ''
      'if @Myear<>0'
      
        '  set @where=@where+'#39' and (myear = '#39'+Cast(@myear as varchar(5))+' +
        #39')'#39
      ''
      
        'if substring(@where,1,4)='#39' and'#39' set @where='#39' where '#39'+substring(@' +
        'where,5,4000)'
      ''
      ' set @sqlCommand=@sqlCommand+@where + '#39' order by time1  '#39
      'exec(@sqlCommand)'
      ''
      ''
      ''
      'GO'
      ''
      'CREATE procedure [dbo].[Report_UserTable]'
      
        '@tableID int,@LetterWhere nvarchar(2000),@UserTableWhere nvarcha' +
        'r(2000)'
      'as'
      ''
      'declare @sql nvarchar(4000)'
      ''
      'set @sql= '#39'select LetterID into ##Uletters from Letter '#39
      ''
      'if @UserTableWhere<>'#39#39' '
      ' set @sql=@sql+'#39' where  '#39'+@UserTableWhere'
      ''
      'exec(@SQL)'
      ''
      ''
      'set @sql='#39'Select l.LetterID,1 formorder into ##r from Letter l'
      ' inner join ##Uletters on ##Uletters.LetterID=l.LetterID'
      ' where UserTableID='#39'+cast(@tableID as varchar(5))'
      ''
      ''
      ''
      'exec(@Sql)'
      'set @sql='#39'insert into ##r Select l.LetterID,2  from Letter l'
      ' inner join ##Uletters on ##Uletters.LetterID=l.LetterID'
      ' where UserTableID2='#39'+cast(@tableID as varchar(5))'
      ''
      'exec(@Sql)'
      ' '
      'set @sql= '#39'create  table ##m (LetterID int '#39
      ''
      
        'SELECT     top 60 identity(int,1,1) id , Fields.Description,cast' +
        ' (fields.id as int ) fieldid,ReferenceTableID into #Fields'
      'FROM      Fields'
      'WHERE     (tableid = @tableID)'
      'order by [order]'
      ''
      ''
      
        'SELECT     @sql=@sql+'#39' ,['#39'+isnull(Description,'#39#39')+'#39'] nvarchar(20' +
        '00)'#39
      'FROM      #Fields '
      ''
      ''
      'set @sql= @sql+'#39')'#39
      ' '
      'exec(@sql)'
      'declare @insert  varchar(8000)'
      ''
      ''
      'set @insert= '#39'insert into ##m select LetterID'#39
      ''
      ''
      'SELECT    @insert=@insert+'
      'case when ReferenceTableID is null then '
      
        #39',(select FieldValue from LetterFieldValue where FieldId='#39'+cast(' +
        'fieldid as varchar(10))+'#39' and letterid=r.LetterID and LetterFiel' +
        'dValue.formorder=r.formorder) '
      #39
      'else'
      
        #39',(select DataTitle From ReferenceTableData where tableid='#39'+cast' +
        '(ReferenceTableID as varchar(8))+'#39
      
        ' and DataID=(select FieldValue from LetterFieldValue where Field' +
        'Id='#39'+cast(fieldid as varchar(10))+'#39' and letterid=r.LetterID and '
      'LetterFieldValue.formorder=r.formorder)) '#39
      'end'
      'FROM      #Fields'
      ''
      ''
      ''
      'set @insert= @insert+'#39' from ##r r '#39
      ''
      'exec(@insert)'
      ''
      ''
      
        'select ##m.*,IndicatorID,IncommingNO,IncommingDate,CenterNo,Cent' +
        'erDate'
      
        ',Memo,RetroactionNo,UserMemo,RegistrationDate,FollowLetterNo,Let' +
        'terRecommites'
      
        ',sender.Title AS SenderTitle ,Deliver.Title AS DeliverTitle,Lett' +
        'erTypes.Title LetterTypeTitle,ActionTypeTitle'
      'FROM  ##m'
      'inner join Letter on ##m.Letterid=Letter.Letterid '
      
        'left  JOIN FromOrganizations sender ON Letter.ToOrgID = sender.I' +
        'D '
      
        'left JOIN  FromOrganizations Deliver ON Letter.FromOrgID = Deliv' +
        'er.ID '
      'Left join LetterTypes on LetterTypes.ID=Letter.Letter_type '
      
        'left join Secretariats on Secretariats.Secid=Letter.SecretariatI' +
        'D'
      
        'left JOIN ActionType  ON ActionType.ActionTypeID = Letter.Latest' +
        'ActionTypeID'
      ''
      'drop table ##m  '
      'drop table ##Uletters'
      'drop table ##r'
      ''
      ''
      ''
      ''
      'GO'
      ''
      'CREATE  PROCEDURE [dbo].[SaveAs_Accesses]'
      #9'( @Title nvarchar(50),@oldaccessID int ,@newID int output)'
      ''
      'AS'
      ' INSERT INTO [dbo].[Accesses]'
      #9' ( [Title])'
      ''
      'VALUES ( @Title)'
      ''
      'select @newID=max(ID)'
      'from accesses'
      ''
      ''
      'insert into ActionsAccess(accessid,ActionID, FormTag, HasAccess)'
      'SELECT     @newid,ActionID, FormTag, HasAccess'
      'FROM         ActionsAccess'
      'where accessid=@oldaccessID'
      ''
      'insert into ActionsAccess(accessid,ActionID, FormTag, HasAccess)'
      
        'SELECT     Accesses.ID AS accessid, Actions.ID AS actionid, Acti' +
        'ons.FormTag, 0 AS hasaccess'
      'FROM         Actions , Accesses'
      
        'where str(Accesses.ID)+Actions.ID not in (select str(accessid)+A' +
        'ctionID from ActionsAccess)'
      ''
      ''
      ''
      ''
      ''
      ''
      ''
      ''
      ''
      'GO'
      'Create Procedure [dbo].[Select_AlternativeInfo_ByUserID]'
      '@UserID int'
      'as'
      'SELECT [Id]'
      '      ,[AlternativeUserID]'
      '      ,[AlternativebeginDate]'
      '      ,[AlternativeEndDate]'
      '  FROM  Users '
      'where id=@userID'
      ''
      'GO'
      ''
      ''
      'CREATE PROCEDURE [dbo].[select_CiticalLetterFields]'
      #9'@LetterID int'
      ''
      'AS'
      
        'select   LetterID, IndicatorID, MYear, SecretariatID, Letter_Typ' +
        'e, letterformat'
      'from Letter'
      'WHERE LetterID=@LetterID'
      ''
      ''
      ''
      ''
      ''
      'GO'
      ''
      ''
      'CREATE PROCEDURE [dbo].[Select_ExactCopy](@LetterID int) AS'
      ''
      'Select recommites.*,org.title,org.IsInnerOrg'
      'From recommites inner join fromorganizations org on org.id=orgid'
      'where LetterID=@LetterID'
      ' and type=1'
      ''
      'GO'
      ''
      ''
      'Create Procedure [dbo].[Select_FieldAccess_by_TableID]'
      '@UserID int ,@TableID int'
      'as'
      ''
      'SELECT     *'
      'FROM         FieldAccess'
      
        'WHERE     (UserID = @UserID) AND (FieldID in ( SELECT  ID FROM  ' +
        ' Fields WHERE TableID =@TableID))'
      ''
      ''
      ''
      'GO'
      'create Procedure [dbo].[Select_Fields_by_TableID]'
      '@LetterID int'
      'as'
      ''
      'SELECT     ID,Description'
      'FROM      Fields'
      
        'WHERE   TableID in ( SELECT UserTableID2  FROM   Letter WHERE Le' +
        'tterID =@LetterID)'
      
        'or     TableID in ( SELECT UserTableID   FROM   Letter WHERE Let' +
        'terID =@LetterID)'
      ''
      ''
      'GO'
      ''
      
        'CREATE Procedure [dbo].[Select_FolllowUp_ByLetterID](@LetterID i' +
        'nt, @userID int ,@StartFollowUpID int output)'
      'as'
      ''
      '  select top 1 @StartFollowUpID=StartFollowUpID'
      '  from followup'
      '  where letterid=@letterid and userid=@userID'
      'set  @StartFollowUpID=isnull( @StartFollowUpID ,0)'
      ''
      ''
      ''
      ''
      'GO'
      
        'CREATE Procedure [dbo].[Select_FollowUP_By_Date](@UserID int ,@B' +
        'Date char(10), @Edate char(10),'
      '@DonStatusID int)'
      'as'
      'declare @today char(10)'
      'set @today=dbo.shamsi(getdate())'
      ''
      
        'SELECT     FollowUPID,Letter.Letterid, FollowUp.StartFollowUpID,' +
        ' FollowUp.FollowUPTypeID, FollowUp.DoneStatusID,'
      
        ' substring(ToDoDate,6,5) ToDoDate, HasAlarm,isnull(cast(Indicato' +
        'rid as varchar(5))+'#39' - '#39'+Memo,Comment) Comment,'
      
        ' FollowUPTypeTitle, DoneStatustitle, case when ToDoDate=@today t' +
        'hen 0  when ToDoDate>@today then 1 else -1 end DelayStatus'
      'FROM  FollowUp'
      'left JOIN   Letter ON FollowUp.LetterID = Letter.LetterID'
      
        'left JOIN   FollowUPType ON FollowUp.FollowUPTypeID = FollowUPTy' +
        'pe.FollowUPTypeID'
      
        'left JOIN   DoneStatus ON FollowUp.DoneStatusID = DoneStatus.Don' +
        'eStatusID'
      
        'WHERE     (@UserID = 0 or FollowUp.UserID = @UserID) AND (Follow' +
        'Up.ToDoDate between  @BDate and @Edate)'
      'and (@DonStatusID=0 or FollowUp.DoneStatusID = @DonStatusID)'
      'order by  ToDoDate'
      ''
      'GO'
      ''
      ''
      
        'CREATE Procedure [dbo].[Select_FollowUp_ByStart](@StartFollowUpI' +
        'D int)'
      'as'
      ''
      'select *'
      'from followup'
      'where StartFollowUpID=@StartFollowUpID'
      ''
      ''
      'GO'
      'create PROCEDURE [dbo].[select_fromorganization] AS'
      
        'SELECT    FromOrganizations.ID,  FromOrganizations_1.Title AS pa' +
        'rent,FromOrganizations.ResponsibleStaffer,'
      'FromOrganizations.Title'
      'FROM         FromOrganizations INNER JOIN'
      
        '                      FromOrganizations FromOrganizations_1 ON F' +
        'romOrganizations.ParentID = FromOrganizations_1.ID'
      'WHERE     (FromOrganizations.ParentID <> 1000001)'
      'and FromOrganizations.id not like '#39'9%'#39
      'ORDER BY cast(FromOrganizations.id as varchar(10))'
      ''
      ''
      ''
      ''
      'GO'
      ''
      'CREATE PROCEDURE [dbo].[select_Letter]  '
      ' @LetterID int    '
      'AS  '
      
        'Select Letter.*,title senderTitle , dbo.InnerNo(Letter.LetterID)' +
        ' as IndicatorInnerNo'
      'from Letter left JOIN  '
      
        '     FromOrganizations ON Letter.ToOrgID = FromOrganizations.ID ' +
        ' '
      'WHERE   '
      ' LetterID=@LetterID'
      ''
      'GO'
      'CREATE Procedure [dbo].[Select_letter_details]'
      '@letterid int ,'
      '@IndicatorID varchar(10) output ,'
      '@RegistrationDate char(10) output,'
      '@Memo nvarchar(500) output,'
      '@LetterRecommites nvarchar(500) output,'
      '@latestParaph nvarchar(500) output'
      ''
      'as'
      'Select'
      '@IndicatorID=cast (IndicatorID as varchar(10)),'
      '@RegistrationDate=RegistrationDate,'
      '@Memo=memo,'
      '@LetterRecommites=LetterRecommites'
      'from Letter'
      'where letterid=@letterid'
      ''
      'Select top 1 @latestParaph=isnull(Paraph,'#39#39')'
      'from Recommites'
      'where letterid=@letterid order by id desc'
      ''
      'GO'
      ''
      ''
      ''
      'CREATE PROCEDURE [dbo].[Select_LetterReCommite]'#9
      ''
      '(@letterID '#9'[int],@type tinyint)  AS '
      ''
      'SELECT R.*,f.title+'#39' - '#39'+r.OrgStaff orgtitle,IsInnerOrg '
      ''
      'FROM ReCommites R  '
      ''
      'inner join FromOrganizations f on f.ID=r.OrgID '
      ''
      'where Letterid=@letterID and type=@type'
      ''
      ''
      'GO'
      ''
      ''
      'CREATE PROCEDURE [dbo].[select_LetterSubject]'
      #9'@LetterID int'
      ''
      'AS'
      
        'SELECT    registrationdate,registrationtime,indicatorid, LetterI' +
        'D, SubjectID, SubjectDescription, UserMemo,lastupdate'
      'FROM         Letter'
      'WHERE     LetterID=@LetterID'
      ''
      ''
      ' '
      ''
      ''
      'GO'
      'Create Procedure [dbo].[SELECT_ParaphTemplate]'
      '@UserID int'
      'as'
      ''
      'SELECT *'
      'FROM ParaphTemplate'
      'Where Userid=@UserID'
      'order by OrderID'
      ''
      'GO'
      ''
      'CREATE PROCEDURE [dbo].[select_ReceivedLetters]'
      #9'@IndicatorID '#9'int,'
      #9' @MYear '#9'tinyint,'
      #9' @LetterFormat tinyint,@Secretariatid int'
      ''
      'AS'
      'SELECT     ReceivedLetters.*, FromOrgANIZATIONS.Title'
      'FROM         ReceivedLetters '
      
        'INNER JOIN  FromOrgANIZATIONS ON ReceivedLetters.tOOrgID = FromO' +
        'rgANIZATIONS.ID'
      'WHERE '
      #9'IndicatorID'#9' = @IndicatorID AND'
      #9' MYear = @MYear and'
      
        '              (LetterFormat=@LetterFormat or @letterformat=0) an' +
        'd'
      '              Secretariatid=@Secretariatid'
      ''
      ''
      ''
      ''
      'GO'
      'CREATE procedure [dbo].[Select_recommites_byLetterID]'
      '@letterId int'
      'as'
      ''
      
        'SELECT     FromOrganizations.Title AS ['#1575#1585#1580#1575#1593' '#1588#1608#1606#1583#1607'], FromOrganiz' +
        'ations_1.Title AS ['#1575#1585#1580#1575#1593' '#1583#1607#1606#1583#1607'], FromOrganizations_1.Responsible' +
        'Staffer AS ['#1606#1575#1605' '#1575#1585#1580#1575#1593' '
      #1583#1607#1606#1583#1607'], '
      
        '                      FromOrganizations.ResponsibleStaffer AS ['#1606 +
        #1575#1605' '#1575#1585#1580#1575#1593' '#1711#1610#1585#1606#1583#1607'], Users.Title AS ['#1705#1575#1585#1576#1585' '#1579#1576#1578' '#1705#1606#1606#1583#1607'], ReCommites.P' +
        'araph AS ['#1605#1590#1605#1608#1606' '#1575#1585#1580#1575#1593'], '
      
        '                      ReCommites.RecommiteDate AS ['#1578#1575#1585#1610#1582' '#1575#1585#1580#1575#1593'],' +
        ' ReCommites.IsCopy AS ['#1705#1662#1610#1567'], ReCommites.Proceeded AS ['#1575#1602#1583#1575#1605' '#1588#1583#1607 +
        #1567'], '
      
        '                      ReCommites.ProceedDate AS ['#1578#1575#1585#1610#1582' '#1575#1602#1583#1575#1605' '#1610#1575' ' +
        #1575#1585#1580#1575#1593'], ReCommites.staffmemo AS ['#1605#1604#1575#1581#1592#1575#1578' '#1576#1575#1610#1711#1575#1606#1610'], ReCommites.vi' +
        'ewdate AS ['#1578#1575#1585#1610#1582' '#1605#1588#1575#1607#1583#1607'], '
      
        '                      ReCommites.OrgStaff AS ['#1606#1575#1605' '#1575#1585#1580#1575#1593' '#1588#1608#1606#1583#1607' ],' +
        ' ReCommites.DeadLineDate AS ['#1605#1607#1604#1578' '#1575#1602#1583#1575#1605'], RecommiteTypes.Title A' +
        'S ['#1606#1608#1593' '#1575#1585#1580#1575#1593']'
      'FROM       ReCommites'
      'left join  RecommiteTypes ON RecommiteTypes.ID = ReCommites.Type'
      'left JOIN  Users ON ReCommites.UserID = Users.Id '
      
        'left JOIN  FromOrganizations ON ReCommites.OrgID = FromOrganizat' +
        'ions.ID '
      
        'left JOIN  ReCommites ReCommites_1 ON ReCommites.LetterID = ReCo' +
        'mmites_1.LetterID AND   ReCommites.ParentId = ReCommites_1.ID'
      
        'LEFT JOIN  FromOrganizations FromOrganizations_1 on  FromOrganiz' +
        'ations_1.ID = ReCommites_1.OrgID '
      'WHERE    recommites.type=3 and (ReCommites.LetterID = @letterId)'
      ''
      ''
      ''
      ''
      'GO'
      ''
      'CREATE PROCEDURE [dbo].[select_sentLetters]'
      #9'@IndicatorID '#9'int,'
      #9' @MYear '#9'tinyint,'
      #9' @LetterFormat tinyint,'
      '              @Secretariatid tinyint'
      ''
      #9' '
      ''
      'AS'
      'SELECT     SentLetters.*, FromOrgANIZATIONS.Title'
      'FROM         SentLetters'
      
        'INNER JOIN  FromOrgANIZATIONS ON SentLetters.ToOrgID = FromOrgAN' +
        'IZATIONS.ID'
      'WHERE '
      #9'IndicatorID'#9' = @IndicatorID AND'
      #9' MYear = @MYear and'
      
        '              (LetterFormat=@LetterFormat or @letterformat=0) an' +
        'd'
      '              Secretariatid=@Secretariatid'
      ''
      ''
      ''
      ''
      ''
      ''
      'GO'
      ''
      
        'CREATE procedure [dbo].[select_userLoginLogout](@bdate char(10),' +
        ' @edate char(10), @userid int)'
      'as'
      'SELECT     Users.UserName, IPAddress, '
      
        'dbo.Shamsi(LoginTime) LoginDate,cast(datepart(hh, LoginTime) as ' +
        'varchar(2))+'#39':'#39'+cast (datepart(mi, LoginTime) as varchar(2)) Log' +
        'inTime,'
      
        ' dbo.Shamsi(LogoutTime) LogoutDate,cast(datepart(hh, LogoutTime)' +
        ' as varchar(2))+'#39':'#39'+cast (datepart(mi, LogoutTime) as varchar(2)' +
        ') LogoutTime,'
      '                      isSafeLogout'
      'FROM         UserLoginLogout INNER JOIN'
      '                      Users ON UserID = Users.Id'
      'where dbo.Shamsi(LoginTime)  between @bdate and @edate'
      ''
      ''
      ''
      ''
      ''
      ''
      ''
      ' '
      ''
      'GO'
      ''
      'CREATE Procedure [dbo].[Select_UserOrgid]'
      '@UserID int,@today char(10)'
      'as'
      'create  table #Org (Orgid int,Comment nvarchar(255))'
      'insert into #Org'
      
        'SELECT  '#9'[FromOrgID],case when id=@userid then '#39#1587#1605#1578' '#1575#1589#1604#1610#39' else '#39 +
        #1580#1575#1606#1588#1610#1606#39'  end'
      'FROM [Users]'
      
        'where @userID=id or (AlternativeUserID=@userid and @today betwee' +
        'n AlternativebeginDate and AlternativeEndDate )'
      ''
      ''
      'insert into #Org'
      
        'SELECT [SecondOrgID],case when id=@userid then '#39#1587#1605#1578' '#1583#1608#1605#39' else '#39#1580 +
        #1575#1606#1588#1610#1606#39'  end'
      'FROM [Users]'
      
        'where [SecondOrgID] is not null and  (@userID=id or (Alternative' +
        'UserID=@userid and @today between AlternativebeginDate and Alter' +
        'nativeEndDate ))'
      ''
      'update #Org'
      'set comment=comment+'#39':'#39'+title'
      'from #Org'
      'inner join fromorganizations on fromorganizations.id=#Org.orgid'
      ''
      ''
      'select *'
      'from #Org'
      ''
      ''
      'GO'
      'CREATE Proc [dbo].[Select_UserSign]'
      '@UserID int'
      'as'
      ''
      'SELECT [UserID]'
      '      ,UserSign'
      '  FROM userSign'
      'where UserID=@UserID'
      ''
      'GO'
      ''
      'CREATE PROCEDURE [dbo].[selectAddedInfo]'
      '@where nvarchar(2000) '
      'as'
      'declare @sqlCommand nvarchar(4000)'
      'set @sqlcommand='#39'SELECT *  FROM vw_AddedInfo AI '#39
      ''
      'if @where<>'#39#39' set @sqlCommand=@sqlCommand+'#39'  where  '#39'+@where'
      'exec sp_executesql @sqlCommand'
      ''
      ''
      ''
      ''
      ''
      ''
      'GO '
      ''
      'CREATE  PROCEDURE [dbo].[SelectInfo]'
      '@where nvarchar(1900)'
      'as '
      'declare @mainTable varchar(50), @PrimaryCode varchar(50)'
      'select @mainTable=value'
      'from settings'
      'where userid=-1 and variableid=24'
      ''
      'select @PrimaryCode=value'
      'from settings'
      'where userid=-1 and variableid=26'
      ''
      'declare @sqlCommand nvarchar(4000)'
      'set @sqlcommand='#39'select l.*,dbo.innerno(l.LetterID) innerno,'
      
        'ReceiveTypes.Title AS ReciveTitle,Classifications.Title AS Class' +
        'ificatioTitle,Urgenceis.Title AS UrgencyTitle,Users.Title AS Use' +
        'rTitle,'
      
        'LetterFormats.Title AS FormatTitle,ToOrganizations.Title AS ToOr' +
        'gTitle,LetterTemplate.Title AS TemplateTitle, '
      
        'FromOrganizations.Title AS FromTitle,f.title SignerTitle,dbo.Arc' +
        'hivePlaces(l.letterID,0) ArchivePlaces,FromOrganizations.PreCode' +
        ', isnull'
      '(FromOrganizations.PreCode,FromOrganizations.Code) '
      'Org_PreCode,  ai.*'
      'FROM  Letter l'
      
        'LEFT JOIN '#39'+@mainTable+'#39'  AI  on l.UserMemo=cast (ltrim(ai.'#39'+@Pr' +
        'imaryCode+'#39' ) as nvarchar(255) )'
      'LEFT JOIN fromorganizations f on f.id=l.signerid'
      
        'LEFT JOIN ReceiveTypes ReceiveTypes ON ReceiveTypes.ID = L.Recei' +
        'veTypeID'
      
        'LEFT JOIN Classifications Classifications ON L.ClassificationID ' +
        '= Classifications.ID '
      'LEFT JOIN Urgenceis Urgenceis ON L.UrgencyID = Urgenceis.ID'
      'LEFT JOIN Users Users ON L.UserID = Users.Id'
      
        'LEFT JOIN FromOrganizations FromOrganizations ON L.FromOrgID = F' +
        'romOrganizations.ID '
      
        'LEFT JOIN fromorganizations ToOrganizations  ON L.ToOrgID = ToOr' +
        'ganizations.ID '
      
        'LEFT JOIN LetterFormats LetterFormats ON L.letterformat = Letter' +
        'Formats.Code'
      
        'LEFT JOIN LetterTemplate LetterTemplate ON l.TemplateID = Letter' +
        'Template.ID '#39
      ''
      'if @where<>'#39#39' set @sqlCommand=@sqlCommand+'#39' where '#39'+@where'
      ''
      'exec sp_executesql @sqlCommand'
      ''
      ''
      ''
      ''
      ''
      'GO '
      ''
      'CREATE  PROCEDURE [dbo].[SelectLetter]'
      '@where nvarchar(2000) '
      'as '
      'declare @sqlCommand nvarchar(4000)'
      'set @sqlCommand='#39'select l.*, '
      
        ' ReceiveTypes.Title AS ReciveTitle, Classifications.Title AS Cla' +
        'ssificatioTitle, Urgenceis.Title AS UrgencyTitle, Users.Title AS' +
        ' UserTitle, '
      
        ' LetterFormats.Title AS FormatTitle, ToOrg.Title AS ToOrgTitle, ' +
        'LetterTemplate.Title AS TemplateTitle,  '
      
        ' FromOrganizations.Title AS FromTitle,LetterTypes.Title LetterTy' +
        'peTitle, AnswerLetter.MYear AnswerMYear , AnswerLetter.Indicator' +
        'ID  AnswerIndicatorID'
      'from Letter as L'
      ' Left JOIN ReceiveTypes ON ReceiveTypes.ID = L.ReceiveTypeID'
      
        ' Left JOIN Classifications ON L.ClassificationID = Classificatio' +
        'ns.ID '
      ' Left JOIN Urgenceis ON L.UrgencyID = Urgenceis.ID'
      ' Left JOIN Users ON L.UserID = Users.Id'
      
        ' Left JOIN FromOrganizations ON L.FromOrgID = FromOrganizations.' +
        'ID '
      ' Left JOIN fromOrganizations ToOrg ON L.ToOrgID = ToOrg.ID'
      ' Left JOIN LetterFormats ON L.letterformat = LetterFormats.Code'
      ' left JOIN LetterTemplate ON l.TemplateID = LetterTemplate.ID'
      ' left JOIN LetterTypes ON l.Letter_type = LetterTypes.ID'
      
        ' LEFT JOIN     Letter AnswerLetter ON L.SentLetterID = AnswerLet' +
        'ter.LetterID '#39' '
      'set @where=isnull(ltrim(rtrim(@where)),'#39#39')'
      'if @where<>'#39#39' '
      ' set @sqlCommand=@sqlCommand+'#39' where '#39'+@where'
      ' set @sqlCommand=@sqlCommand+'#39' order by l.indicatorid desc '#39
      ''
      'exec sp_executesql @sqlCommand'
      ''
      ''
      ''
      ''
      ''
      ''
      ''
      'GO'
      'CREATE proc [dbo].[SendLetter_To_Other_sec]'
      ' @NewSecID int ,@letterid int'
      'as'
      ''
      'declare @newLetterId int'
      ''
      
        'insert into letter(IndicatorID,MYear,SecretariatID,Letter_Type,l' +
        'etterformat,IncommingNO,Incommingdate,FromOrgID,ToOrgID'
      
        ',Signerid,ClassificationID,UrgencyID,Memo,AttachTitle,NumberOfAt' +
        'tachPages,NumberOfPage,ReceiveTypeID,UserID,'
      
        'RetroactionNo,UserMemo,RegistrationDate,RegistrationTime,FollowL' +
        'etterNo,ToStaffer,SentLetterID,TemplateID,HeaderID,'
      'LetterRecommites,FromStaffer,Finalized,SendStatusid)'
      'select dbo.newIndicatorid(1,2,myear,@NewSecID) IndicatorID,'
      'MYear,'
      '@NewSecID SecretariatID,1 Letter_Type,2 letterformat,'
      
        'cast(indicatorid as varchar(5))+isnull('#39'/'#39'+Secretariats.PreCode,' +
        #39#39') IncommingNO,'
      
        'registrationdate Incommingdate,FromOrgID,ToOrgID,Signerid,Classi' +
        'ficationID,UrgencyID,Memo,AttachTitle,'
      
        'NumberOfAttachPages,NumberOfPage,ReceiveTypeID,UserID,Retroactio' +
        'nNo,UserMemo,RegistrationDate,RegistrationTime,'
      
        'FollowLetterNo,ToStaffer,SentLetterID,TemplateID,HeaderID,Letter' +
        'Recommites,FromStaffer,Finalized,2'
      'from letter'
      
        'inner join Secretariats on Secretariats.secid=letter.Secretariat' +
        'ID'
      'where letterid =@letterid and sendstatusid=1'
      ''
      'set @newLetterId=@@identity'
      ''
      
        'insert into letterdata(LetterID,PageNumber,Image,extention,Descr' +
        'iption )'
      'select @newLetterId,PageNumber,Image,extention,Description'
      'from letterdata'
      'where letterid=@letterid'
      ''
      
        'insert into recommites(LetterID,ID,Type,ParentId,OrgID,Paraph,Re' +
        'commiteDate,UserID,IsCopy,Proceeded,ProceedDate,'
      'staffmemo,viewdate,OrgStaff,DeadLineDate)'
      
        'select @newLetterId,ID,Type,ParentId,OrgID,Paraph,RecommiteDate,' +
        'UserID,IsCopy,Proceeded,ProceedDate,staffmemo,viewdate,OrgStaff,' +
        'DeadLineDate'
      'from recommites'
      'where letterid=@letterid'
      ''
      '                       '
      'insert into LetterText(LetterID, TypeText, LetterFormat)'
      'SELECT   @newLetterId  , TypeText, LetterFormat'
      'FROM         LetterText'
      'where LetterID=@LetterID'
      ''
      ''
      ''
      'declare @mainLetterid int,@newOrd tinyint'
      
        'if exists (select * from LetterRelation where subletterid =@lett' +
        'erid)'
      '  begin'
      
        '    select @newOrd=max(ord)+1 from  LetterRelation where sublett' +
        'erid =@letterid'
      
        '    select @mainLetterid=mainLetterid from LetterRelation where ' +
        'subletterid =@letterid'
      
        '    INSERT INTO LetterRelation(MainLetterID,SubLetterID,Ord) val' +
        'ues (@mainLetterid,@newLetterId,@newOrd)'
      '  end'
      'else'
      '  begin'
      '    select @mainLetterid=@letterid'
      
        '    INSERT INTO LetterRelation(MainLetterID,SubLetterID,Ord) val' +
        'ues (@mainLetterid,@letterid,1)'
      
        '    INSERT INTO LetterRelation(MainLetterID,SubLetterID,Ord) val' +
        'ues (@mainLetterid,@newLetterId,2)'
      '  end'
      ''
      ''
      ''
      'GO '
      ''
      ''
      
        'create procedure [dbo].[shrink_Files](@number int,@dbanme nvarch' +
        'ar(50),@logPath nvarchar(255))'
      'as'
      'declare @i int'
      'set @i=1 '
      'while @i<=@number '
      ' begin'
      '  dbcc shrinkfile(1,1)'
      '  dbcc shrinkfile(2,1)'
      '  exec(N'#39'backup log '#39'+@dbanme+'#39' to disk='#39#39#39'+@logPath+'#39#39#39#39')'
      '  set @i=@i+1'
      '  print '#39'stage '#39'+cast(@i as varchar(3)) +'#39' completetd. '#39
      ' end'
      ''
      ''
      ''
      ' '
      'GO'
      ''
      ''
      ''
      ''
      ''
      ''
      ''
      ''
      ''
      
        'CREATE procedure [dbo].[sp_Add_GroupRecommite]( @letterid int,@T' +
        'ype tinyint,@OrgID int,@Paraph nvarchar(500),@RecommiteDate char' +
        '(10),'
      
        '@UserID int ,@IsCopy bit ,@Proceeded bit,@OrgStaff nvarchar(100)' +
        ')'
      'as'
      ''
      ''
      'declare @id int'
      ''
      'select  @id=max(id)'
      'from recommites'
      'where letterid=@letterid and type=@type'
      ''
      'set @id=isnull(@id,0)'
      ''
      'update recommites'
      'set Proceeded=@Proceeded'
      'where letterid=@letterid and id=@id and type=@type'
      ''
      'INSERT INTO ReCommites'
      
        '                      (LetterID, id,Type, ParentId,OrgID, Paraph' +
        ', RecommiteDate, UserID, IsCopy, Proceeded, OrgStaff)'
      
        'VALUES                (@letterid ,@id+1,@Type ,@Id,@OrgID ,@Para' +
        'ph ,@RecommiteDate ,@UserID ,@IsCopy,0,@OrgStaff)'
      ''
      ''
      ''
      ' '
      ''
      'GO'
      ''
      'CREATE Procedure [dbo].[Sp_AddFileToDB] @DBName nVarchar(50) '
      'As'
      ''
      'Declare @MaxFileID int'
      'Declare @FileSizeInMB int'
      'Declare @FileName nVarchar(50)'
      'Declare @NewFileName nVarchar(50)'
      'Declare @NewFilePath nVarchar(500)'
      ''
      'Declare @NewFileNu int'
      'Declare @MDFSqlText nVarchar(1000)'
      'Declare @SqlText nVarchar(1000)'
      ''
      'Select @MaxFileID = Max(FileID) '
      'FROM dbo.sysfiles  '
      
        'WHERE Groupid = (SELECT u.groupid FROM dbo.sysfilegroups u WHERE' +
        ' u.groupname = N'#39'PRIMARY'#39')'
      ''
      
        'Select @FileSizeInMB = ( (size * (8192/1024))/1024 ) , @FileName' +
        ' = Name , @NewFilePath = FileName'
      'from dbo.sysfiles'
      
        'Where Groupid = (SELECT u.groupid FROM dbo.sysfilegroups u WHERE' +
        ' u.groupname = N'#39'PRIMARY'#39') '
      'And(FileID = @MaxFileID )'
      ''
      'Set @NewFileName = @FileName'
      ''
      
        'Set @NewFilePath = Substring(@NewFilePath,1, Len(RTrim(@NewFileP' +
        'ath))-Len(RTrim(@NewFileName)+'#39'.mdb'#39')  )'
      'if @MaxFileID = 1  --.mdf'
      '   Set @NewFileNu = 2'
      'else'
      
        '   Set @NewFileNu   = Cast(Substring(@NewFileName,Len(RTrim(@New' +
        'FileName))-1 ,Len(RTrim(@NewFileName))) as int)+1'
      ''
      'if Len( Cast(@NewFileNu as nvarchar) ) = 1'
      
        '   Set @NewFileName = @DBName+'#39'_Data_'#39'+ '#39'0'#39' +Cast(@NewFileNu as ' +
        'nvarchar)'
      'else'
      
        '   Set @NewFileName = @DBName+'#39'_Data_'#39'+ Cast(@NewFileNu as nvarc' +
        'har)'
      ''
      '   '
      ''
      'if @FileSizeInMB > 3800 --MB'
      'begin'
      '   if @MaxFileID = 1  --mdf '#1602#1585#1575#1585' '#1583#1575#1583#1606' '#1605#1575#1603#1586#1610#1605#1605' '#1581#1580#1605' '#1576#1585#1575#1610' '#1601#1575#1610#1604
      '   begin'
      
        '      Set @MDFSqlText = '#39'Use Master ALTER DATABASE ['#39'+ @DBName +' +
        #39'] MODIFY FILE (NAME = N'#39#39#39'+ RTrim(@FileName) +'#39#39#39', MAXSIZE = '#39'+' +
        ' Cast'
      '(@FileSizeInMB+30 as nvarchar(10)) +'#39') '#39
      '      Exec(@MDFSqlText)'
      '      Print @MDFSqlText'
      '   end '
      ''
      '   Set @SqlText = '#39'use Master '#39'+'
      '   '#39'ALTER DATABASE ['#39' + RTrim(@DBName) + '#39'] '
      
        '    ADD FILE( NAME = '#39#39#39'+@NewFileName+'#39#39#39' , FILENAME = '#39#39#39' + @Ne' +
        'wFilePath + @NewFileName + '#39'.NDF'#39#39' , '
      '             SIZE = 10 , MAXSIZE = 4000 , FILEGROWTH = 10% ) '#39
      '   Exec(@SqlText)'
      '   Print @SqlText'
      'end'
      ''
      ''
      ''
      'GO '
      ''
      ' '
      'CREATE PROCEDURE [dbo].[sp_ArchivePlaces]  '
      
        '@LetterID int,@ArchiveCenterID  int, @result  nvarchar(1000) out' +
        'put'
      'as'
      'set @result='#39#39
      'SELECT   @result=@result +'#39' , '#39'+isnull(Place,'#39#39') +'#39'-'#39'+Title'
      'FROM         LetterArchiveFolder '
      
        'INNER JOIN          ArchiveFolder ON LetterArchiveFolder.Archive' +
        'FolderID = ArchiveFolder.FolderID'
      
        'where  ArchiveFolder.ArchiveCenterID=@ArchiveCenterID and Letter' +
        'id =@LetterID'
      'if @result<>'#39#39' set  @result=substring(@result,4,1000)'
      ''
      ''
      'GO '
      ''
      ''
      ''
      ''
      ''
      'CREATE    PROCEDURE [dbo].[sp_board] '
      '@OrgID int,@myear tinyint,@date char(10)'
      'as'
      'if isnull(@date,'#39#39')='#39#39' set @date='#39'0'#39
      ''
      
        'SELECT SL.IndicatorID, SL.MYear, SL.SecretariatID, SL.Letter_typ' +
        'e, SL.LetterFormat, '
      
        'SL.FromOrgID, SL.ToOrgID,  SL.UrgencyID,  SL.Memo, SL.AttachTitl' +
        'e,'
      
        ' SL.RegistrationDate, SL.RegistrationTime, SL.FollowLetterNo, SL' +
        '.ToStaffer,'
      '  RC.Paraph, RC.RecommiteDate, '#39#39' no1'
      'FROM ReCommites RC '
      
        'INNER JOIN SentLetters SL ON RC.LetterIndicatorID = SL.Indicator' +
        'ID AND RC.LetterMyear = SL.MYear AND'
      
        ' RC.SecretariatID = SL.SecretariatID AND RC.LetterFormat = SL.Le' +
        'tterFormat '
      'INNER JOIN RecommiteTypes ON RC.Type = RecommiteTypes.ID'
      'WHERE    (Rc.OrgID = @OrgID)and RecommiteTypes.InnerOrganize=1 '
      'and sl.myear=@myear and (RC.RecommiteDate=@date or @date='#39'0'#39')'
      ' and RecommiteTypes.ReceiveMode=0'
      'union'
      
        'SELECT RL.IndicatorID, RL.MYear, RL.SecretariatID, RL.Letter_typ' +
        'e, RL.LetterFormat, '
      
        'RL.FromOrgID, RL.ToOrgID,  RL.UrgencyID,  RL.Memo, RL.AttachTitl' +
        'e,'
      
        ' RL.RegistrationDate, RL.RegistrationTime, RL.FollowLetterNo, RL' +
        '.ToStaffer,'
      '  RC.Paraph, RC.RecommiteDate,  no1'
      'FROM ReCommites RC '
      
        'INNER JOIN ReceivedLetters RL ON RC.LetterIndicatorID = RL.Indic' +
        'atorID AND RC.LetterMyear = RL.MYear AND '
      
        ' RC.SecretariatID = RL.SecretariatID AND RC.LetterFormat = RL.Le' +
        'tterFormat '
      'INNER JOIN RecommiteTypes ON RC.Type = RecommiteTypes.ID'
      
        'WHERE  (Rc.OrgID = @OrgID) and RecommiteTypes.ReceiveMode=1 and ' +
        'RecommiteTypes.InnerOrganize=1 '
      'and rl.myear=@myear  and (RC.RecommiteDate=@date or @date='#39'0'#39')'
      'order by 1 desc'
      ''
      ''
      'GO'
      ''
      ''
      ''
      ''
      ''
      ''
      ''
      ''
      'CREATE proc [dbo].[sp_checkusernotes]'
      '@USERID INT ,@DateID int ,@where nvarchar(1000)'
      'AS'
      ' declare @sql nvarchar (4000)'
      ''
      
        'set @sql='#39' SELECT top 10000 *,substring(note,1,100)+'#39#39' ...'#39#39' as ' +
        'Abstract  from UserNote where userid='#39'+cast(@USERID as varchar(5' +
        '))'
      'set @where =ltrim(rtrim(isnull(@where ,'#39#39')))'
      'if @where <>'#39#39' '
      'set @sql=@sql+'#39' and '#39'+@where '
      ''
      'if @DateID<>0'
      'begin'
      
        ' declare @today char(10),@dw tinyint,@bdate char(10),@edate char' +
        '(10)'
      ' set @today=dbo.shamsi(getdate())'
      ' set @dw=datepart(dw,getdate())'
      
        ' select @bdate=begindate,@edate=Enddate from HistoryDateList(@to' +
        'day ,@dw) where id=@DateID'
      
        ' set @sql=@sql+'#39' AND CreateDate between '#39#39#39'+@bdate+'#39#39#39' and '#39#39#39'+@' +
        'edate+'#39#39#39#39
      'end'
      ''
      'exec sp_executesql @sql'
      ''
      ''
      ''
      'GO '
      ''
      ''
      
        'CREATE PROCEDURE [dbo].[sp_CompleteFieldBook](@tableName varchar' +
        '(50),@description varchar(50) ,'
      '@tableid int output)'
      'as'
      'if @tablename is null return'
      'if not exists( select *'
      'from tables where  replace('
      
        'replace(tableName,'#39'['#39','#39#39'),'#39']'#39','#39#39')= replace(replace(@tableName,'#39'[' +
        #39','#39#39'),'#39']'#39','#39#39'))'
      'begin'
      ' select @tableid=max(tableid)+1 from tables'
      ' insert into tables (tableid,tablename,description)'
      ' values(@tableid,@tablename,@description)'
      'end'
      'else'
      'if (select description from tables where  replace('
      
        'replace(tableName,'#39'['#39','#39#39'),'#39']'#39','#39#39')= replace(replace(@tableName,'#39'[' +
        #39','#39#39'),'#39']'#39','#39#39')) is null'
      ''
      'update tablename'
      'set description=@description'
      
        'where    replace(replace(tableName,'#39'['#39','#39#39'),'#39']'#39','#39#39')= replace(repl' +
        'ace(@tableName,'#39'['#39','#39#39'),'#39']'#39','#39#39')'
      ' '
      
        'select @tableid=tableid from tables where replace(replace(tableN' +
        'ame,'#39'['#39','#39#39'),'#39']'#39','#39#39')= replace(replace(@tableName,'#39'['#39','#39#39'),'#39']'#39','#39#39')'
      ''
      ''
      
        'insert into Fields(TableID, FieldName, Description,islike,isstri' +
        'ng,everylike)'
      
        'SELECT  @tableid,syscolumns_f.name,isnull((select cast(value as ' +
        'varchar(50)) from sysproperties where id = syscolumns_f.id AND s' +
        'mallid = '
      'syscolumns_f.colid and'
      
        ' name='#39'MS_Description'#39'),syscolumns_f.name) Description,dbo.islik' +
        'e(systypes.name),'
      
        'dbo.isstring(systypes.name),dbo.everylike(systypes.name,syscolum' +
        'ns_f.length)'
      'FROM  sysobjects sysobjects_f'
      
        'INNER JOIN syscolumns syscolumns_f ON sysobjects_f.id = syscolum' +
        'ns_f.id'
      'inner join systypes on syscolumns_f.xtype=systypes.xtype'
      
        'where replace(replace(sysobjects_f.name,'#39'['#39','#39#39'),'#39']'#39','#39#39')=replace(' +
        'replace(@tablename,'#39'['#39','#39#39'),'#39']'#39','#39#39')'
      'and  syscolumns_f.name not in (SELECT     FieldName'
      'FROM         Fields'
      'WHERE     (TableID = @tableid))'
      'return @tableid'
      ''
      ''
      ' '
      ''
      'GO '
      ''
      'CREATE     PROCEDURE [dbo].[sp_dailyRep] '
      
        '@myear tinyint,@bdate char(10),@edate char(10),@where nvarchar(1' +
        '000)'
      'as'
      ' declare @sql nvarchar (4000)'
      ''
      'declare @rw nvarchar(255)'
      ''
      'set @RW='#39'WHERE l.myear=l.myear'#39'--+cast(@myear as varchar(10))'
      ''
      ''
      
        'set @rw=@rw+'#39' AND (L.RegistrationDaTE between '#39#39#39'+@bdate+'#39#39#39' and' +
        ' '#39#39#39'+@edate+'#39#39#39')'#39
      ''
      
        'set @sql='#39'select distinct l.LetterID, IndicatorID, Memo, AttachT' +
        'itle,RegistrationDate,  ToStaffer, FollowLetterNo, '
      
        'UserMemo, RetroactionNo, NumberOfPage, NumberOfAttachPages, Cent' +
        'erDate, CenterNo,IncommingDate,'
      'lettertypes.title ReceiveMode ,SentLetterID, Incommingno,'
      'lETTERrecommites RECOMMITES,TTO.title toorgtitle,'
      
        'Classifications.Title AS Classificationtitle, Urgenceis.Title AS' +
        ' UrgencyTitle, LetterFormats.Title AS FormatTitle,'
      
        ' LetterTemplate.Title AS TemplateTitle, FromOrganizations.Title ' +
        'AS SignerTitle,Users.Title UserTitle'
      'FROM ReCommites RC '
      'INNER JOIN Letter L ON RC.LetterID = l.LetterID '
      
        'left JOIN ReCommites PRC ON RC.LetterID = PRC.LetterID AND PRC.I' +
        'D = RC.ParentId '
      'left JOIN FromOrganizations FO ON FO.ID = PRC.OrgID '
      'left JOIN fromOrganizations TTO ON TTO.ID = l.ToOrgID '
      'LEFT JOIN LETTERTYPES on lettertypes.id=l.letter_type'
      'left JOIN RecommiteTypes    ON RC.Type = RecommiteTypes.ID '
      'Left JOIN Urgenceis         ON L.UrgencyID = Urgenceis.ID '
      'LEFT JOIN FromOrganizations ON L.Signerid=FromOrganizations.ID'
      
        'LEFT JOIN LetterFormats     ON L.letterformat = LetterFormats.Co' +
        'de '
      
        'LEFT JOIN Classifications   ON L.ClassificationID = Classificati' +
        'ons.ID '
      'LEFT JOIN LetterTemplate    ON L.TemplateID = LetterTemplate.ID '
      'LEFT JOIN Users    ON L.UserID = Users.ID '#39'+@rW'
      ''
      ''
      ''
      'set @where=isnull(ltrim(rtrim(@where)),'#39#39')'
      'if @where<>'#39#39
      'select @sql=@sql+'#39' and  '#39'+@where'
      ''
      'set @sql=@sql+'#39' order by 1 desc'#39
      'exec(@sql)'
      ''
      ''
      ''
      ''
      'GO '
      ''
      'Create Procedure [dbo].[Sp_Del_NewsGroupUsers] @NewsGroupID int '
      'As  '
      '  Delete From NewsGroupUsers  '
      '  Where(NewsGroupID = @NewsGroupID)'
      ''
      ''
      'GO '
      ''
      'Create Procedure [dbo].[Sp_Del_WorkGroupOrg] @WorkGroupID int '
      'As'
      '  Delete From WorkGroupOrg'
      '  Where WorkGroupID = @WorkGroupID'
      ''
      ''
      'GO '
      'CREATE PROCEDURE [dbo].[Sp_DelayedLetter]  '
      
        '@SecretariatID int,@myear tinyint,@DeadLine int, @userID int , @' +
        'Tag Tinyint'
      'as  '
      '  '
      'declare  '
      '@sql nvarchar (4000),  '
      '@rw nvarchar(500),  '
      '@Today char(10),  '
      '@deadlineDate char(10),  '
      '@OrgID int,  '
      '@todayToint varchar(10)  '
      '  '
      'select @today=dbo.shamsi(getdate())  '
      'set @todayToint=cast(dbo.ShamsiToInt(@today) as varchar(10))  '
      '  '
      'SELECT     @OrgID=FromOrgID  '
      'FROM         Users  '
      'WHERE     Id = @userID  '
      '  '
      
        'set @RW='#39'WHERE (Rc.deadlinedate is not null or ChildRecommite.De' +
        'adlinedate is not null) and ( L.myear='#39'+cast(@myear as varchar(1' +
        '0))+'
      #39') AND (Rc.OrgID = '#39'+ cast(@OrgID as varchar(10))+'#39') '#39'  '
      '    '
      'if @SecretariatID>0  '
      
        'set @rw=@rw+'#39' AND (SecretariatID = '#39'+cast(@SecretariatID as varc' +
        'har(10))+'#39')'#39'  '
      'else  '
      
        'set @rw=@rw+'#39' AND (SecretariatID in (SELECT SecId FROM UserSecre' +
        'tariats WHERE UserId = '#39'+cast(@userid as varchar(5))+'#39'))'#39'  '
      '  '
      ''
      '--'#1603#1575#1585#1578#1575#1576#1604
      'if @Tag = 1'
      
        '   set @rw=@rw+'#39' AND (case when Rc.Proceeded=0  then RC.DeadLine' +
        'Toint else  '#39#39#39'+@todayToint+'#39#39#39' end-'#39'+@todayToint+'#39' )< '#39'+cast(@D' +
        'eadLine as '
      'varchar(5)) '
      '--'#1575#1585#1587#1575#1604#1607#1575#1610' '#1576#1575#1610#1711#1575#1606#1610' '#1606#1588#1583#1607
      'if @Tag = 2'
      
        '   set @rw=@rw+'#39' AND (case when Rc.Proceeded=1 and ChildRecommit' +
        'e.Proceeded=0 then ChildRecommite.DeadLineToint  '
      
        '       else  '#39#39#39'+@todayToint+'#39#39#39' end-'#39'+@todayToint+'#39' )< '#39'+cast(@' +
        'DeadLine as varchar(5))  '
      '--//---'
      '  '
      'set @sql='#39' SELECT count( *)  '
      'FROM ReCommites RC  '
      'INNER JOIN Letter L ON RC.LetterID = L.LetterID  '
      
        'left JOIN ReCommites ChildRecommite ON RC.LetterID = ChildRecomm' +
        'ite.LetterID AND  '
      
        'RC.ID = ChildRecommite.ParentId  AND ChildRecommite.type = RC.ty' +
        'pe '#39'  '
      '  '
      'set @sql=@sql+@rW  '
      '  '
      'exec sp_executesql  @sql  '
      '  '
      ''
      ''
      'GO '
      ''
      ''
      ''
      ''
      'CREATE  procedure  [dbo].[sp_delphi_Proc] (@spN varchar(50) )'
      'as'
      ''
      
        'declare @line1 varchar(1000),@line2 varchar(8000),@id int, @coun' +
        't int ,@spname varchar(100),@spType varchar(50),@colname varchar' +
        '(100),'
      
        '@isoutparam bit,@temp int,@length int,@isFunction bit ,@Rtype nv' +
        'archar(100),@Rpname nvarchar(100)'
      ''
      '  SELECT    identity(int,1,1) id, name  into #m'
      '  FROM         sysobjects'
      '  WHERE     (xtype = '#39'p'#39') AND (status >= 0)'
      '         and (isnull(@spn,'#39#39')='#39#39' or name like '#39'%'#39'+@spn) '
      ''
      ''
      'select @count=max(id)'
      'from #m'
      ''
      'set @id=1'
      ''
      'while @id<=@count '
      ' begin'
      '   select @spname=name from #m where id=@id'
      '   declare spcol cursor for'
      
        '    select substring(syscolumns.name,2,100),max(dbo.delphiType(s' +
        'ystypes.name)),max(colid),max( isoutparam),max(syscolumns.length' +
        ')'
      '    FROM    syscolumns INNER JOIN'
      
        '            sysobjects ON syscolumns.id = sysobjects.id INNER JO' +
        'IN'
      '            systypes ON syscolumns.xtype = systypes.xtype'
      
        '    WHERE     (sysobjects.xtype = '#39'p'#39') AND (sysobjects.name = @s' +
        'pname)'
      '    group by substring(syscolumns.name,2,100)'
      '   order by 3'
      ''
      'if (    select count(syscolumns.name)'
      '    FROM    syscolumns INNER JOIN'
      '            sysobjects ON syscolumns.id = sysobjects.id '
      
        '    WHERE      (sysobjects.name =@spname) and syscolumns.isoutpa' +
        'ram=1)=1 '
      'set @isFunction =1'
      'else '
      'set @isFunction=0'
      ''
      '    open  spcol'
      
        '    fetch next from spcol into @colname,@spType,@temp,@isoutpara' +
        'm,@length'
      
        '    set @line1=case when @isfunction=0 then '#39'Procedure  '#39' else '#39 +
        'function '#39' end+'#39'Exec_'#39'+@spname+'#39'('#39
      '    set @line2='#39#39';'
      ''
      '    while @@Fetch_Status=0 '
      '     begin'
      '      if @colname='#39'type'#39' set @colname='#39'_Type'#39
      
        '      set @line1=@line1+case when @isfunction=0 or @isoutparam=0' +
        ' then  @colname+'#39':'#39'+@spType+'#39';'#39' else '#39#39' end'
      '      set @line2=@line2+'#39
      '  with ADOSP.Parameters.AddParameter do'
      '      begin'
      '      DataType := ft'#39'+@spType+'#39';'
      
        '      Direction := '#39'+case @isoutparam when 0 then '#39'pdInput;'#39' els' +
        'e '#39'pdoutput;'#39' end +'#39
      
        '      Name:='#39#39'@'#39'+@colname+'#39#39#39';'#39'+case when @spType like '#39'%string%' +
        #39' then '#39
      '      size:= '#39'+cast(@length as varchar(10))+'#39';'#39' else '#39#39' end+'
      'case @isoutparam when 0 then  '#39
      '      Value :='#39'+@colname+'#39';'
      #39' else '#39#39' end +'#39
      '    end;'
      #39
      'if  @isoutparam=1 set  @Rtype=@spType;'
      'if  @isoutparam=1 set  @Rpname=@colname;'
      
        '    fetch next from spcol into @colname,@spType,@temp,@isoutpara' +
        'm,@length'
      '     end;'
      'if @line1 like '#39'%;'#39' set @line1=substring(@line1,1,len(@line1)-1)'
      
        'set @line1=@line1+case when  @isfunction=0 then '#39');'#39' else '#39'):'#39'+@' +
        'Rtype+'#39';'#39' end '
      '    print replace(@line1+'#39
      #39'+@line1+'#39
      ' var ADOSP:TADOStoredProc;  '
      ' begin'
      '  ADOSP:=TADOStoredProc.create(nil);'
      '  ADOSP.ProcedureName:='#39#39#39'+@spname+'#39#39#39';'
      #39','#39';;'#39','#39';'#39')'
      'PRINT @LINE2'
      ''
      '    print'
      #39'    ADOSP.Connection:=dm.YeganehConnection; '
      '    ADOSP.ExecProc;    '
      #39'+case when @isfunction=0 then '#39#39' else '
      
        #39'   Result:=ADOSP.Parameters.ParamByname('#39#39'@'#39'+@Rpname+'#39#39#39').value' +
        ';'#39' end+'#39
      'end;'#39
      ''
      ''
      '  close spcol'
      '  deallocate spcol'
      '  set @id=@id+1'
      ' end'
      ''
      ''
      ''
      ''
      'GO '
      ''
      
        'CREATE  procedure  [dbo].[sp_delphi_proceByName](@spN varchar(50' +
        ') )'
      'as'
      ''
      
        'declare @ALL VARCHAR(4000),@line1 varchar(1000),@line2 varchar(4' +
        '000),@id int, @count int ,@spname varchar(100),@spType varchar(5' +
        '0),@colname '
      'varchar(100)'
      ''
      '  SELECT    identity(int,1,1) id, name  into #m'
      '  FROM         sysobjects'
      '  WHERE     (xtype = '#39'p'#39') AND (status >= 0)'
      '         and (isnull(@spn,'#39#39')='#39#39' or name like @spn)'
      ''
      ''
      'select @count=max(id)'
      'from #m'
      ''
      ''
      ''
      'set @id=1'
      ''
      'while @id<=@count'
      ' begin'
      '   select @spname=name from #m where id=@id'
      '   declare spcol cursor for'
      
        '    select substring(syscolumns.name,2,100),max(dbo.delphiType(s' +
        'ystypes.name))'
      '    FROM    syscolumns INNER JOIN'
      
        '            sysobjects ON syscolumns.id = sysobjects.id INNER JO' +
        'IN'
      '            systypes ON syscolumns.xtype = systypes.xtype'
      
        '    WHERE     (sysobjects.xtype = '#39'p'#39') AND (sysobjects.name = @s' +
        'pname)'
      '    group by substring(syscolumns.name,2,100)'
      '    open  spcol'
      '    fetch next from spcol into @colname,@spType'
      '    set @line1='#39'Procedure  Open_'#39'+@spname+'#39'('#39';'
      '    set @line2='#39#39';'
      ''
      ''
      '    while @@Fetch_Status=0'
      '     begin'
      '      if @colname='#39'type'#39' set @colname='#39'_Type'#39
      '      set @line1=@line1+@colname+'#39':'#39'+@spType+'#39';'#39
      
        '      set @line2=@line2+'#39'ParamByName('#39#39'@'#39'+ @colname+'#39#39#39').value:=' +
        #39'+@colName+'#39';'
      #39
      '    fetch next from spcol into @colname,@spType'
      '     end'
      ''
      '    SET @ALL= @line1+'#39');'
      #39'+@line1+'#39');'
      '  begin'
      '  with Dm.'#39' + @spname +'#39',parameters do'
      '   begin'
      '    Close;'
      '    '#39' + @LINE2+'#39'    Open;'
      '   end;'
      'end;'#39
      ''
      ''
      'PRINT Replace(REPLACE(@all,'#39';;'#39','#39';'#39'),'#39';)'#39','#39')'#39')'
      ''
      '  close spcol'
      '  deallocate spcol'
      '  set @id=@id+1'
      ' end'
      'select  '#39'object '#39'+name+'#39': TADOStoredProc'
      '  Connection = YeganehConnection'
      '  CursorType = ctStatic'
      '  ProcedureName = '#39#39#39'+name+'#39#39#39
      'end'#39','#39
      'object D'#39'+name+'#39': TDataSource'
      '  DataSet = '#39'+name+'#39
      'end'#39
      '  FROM         sysobjects'
      '  WHERE     (xtype = '#39'p'#39') AND (status >= 0)'
      '         and (isnull(@spn,'#39#39')='#39#39' or name like @spn)'
      ''
      ''
      ''
      ''
      'GO '
      ''
      
        'CREATE PROCEDURE [dbo].[Sp_DistinctDate] @MyFarsiToday nvarchar(' +
        '10)     '
      'As    '
      '  declare @today char(10) , @dw tinyint    '
      '   Set @today = @MyFarsiToday'
      '    Select * from HistoryDateList(@Today ,7)'
      '  Order by ID '
      ''
      ''
      'GO'
      ''
      ''
      ''
      ''
      
        'CREATE procedure [dbo].[sp_duplicateOrg](@code nvarchar(50),@tit' +
        'le nvarchar(100),@exsits bit output)'
      'as'
      ''
      'if exists ('
      'SELECT   *'
      'FROM         FromOrganizations'
      'WHERE     (replace(Code,'#39' '#39','#39#39') = replace(@code,'#39' '#39','#39#39'))   )'
      'set @exsits=1'
      'else'
      'set @exsits=0'
      ''
      ''
      ''
      ''
      ''
      ''
      ''
      'GO'
      ''
      'create PROCEDURE [dbo].[sp_FieldByTableCode]'
      ' @tableid int'
      'as'
      'select *'
      'from fields'
      'where tableid=@tableid'
      ''
      ''
      ''
      ''
      ''
      'GO'
      ''
      'Create Procedure [dbo].[Sp_FillBlob] '
      'As'
      
        'CREATE TABLE #TempTable(ID int IDENTITY (1, 1) NOT NULL , MyBlob' +
        'Field image NULL)'
      'Select *  from #TempTable'
      ''
      ''
      'GO '
      ''
      ''
      ''
      'CREATE PROCEDURE [dbo].[sp_GetFromHelp]'
      '@Formtag int'
      'as'
      'select htmlHelp'
      'from FormsHelp'
      'where formTag=@formtag'
      ''
      ''
      ''
      ''
      ''
      ''
      ''
      ''
      'GO '
      'CREATE PROCEDURE [dbo].[sp_GetTermCode](@today char(10))'
      'AS'
      'declare @Code char(3)'
      'select top 1 @code=code'
      'from behdasht..lt53 '
      'where  @today between bdate and edate'
      'order by 1 desc'
      ''
      ''
      'if @code is null'
      'select top 1 @code=code'
      'from behdasht..lt53 '
      'order by 1 desc'
      ''
      ' '
      ''
      'GO '
      'CREATE  PROCEDURE [dbo].[sp_inbox]'
      '@SecretariatID int,'
      '@LetterFormat tinyint,'
      '@OrgID int,'
      '@Proceeded bit,'
      
        '@Type tinyint,@myear tinyint,@date tinyint,@ArchiveFolderID int ' +
        ',@where nvarchar(1000),'
      
        '@userID int,@Letter_Type int,@DeadLine int,@orderClause varchar(' +
        '50)='#39' rc.recommitedate desc,l.indicatorid desc'#39','
      '@top int=100'
      'as'
      'declare      '
      '@sql nvarchar (4000),      '
      '@rw nvarchar(2000),      '
      '@Today char(10),      '
      '@Proceed bit, -- @Proceed'
      '@todayToint varchar(10),  '
      '@Mytoday Nvarchar(10)'
      '      '
      'select @today=dbo.shamsi(getdate())      '
      '      '
      'set @Proceed=@Proceeded'
      ' '
      ''
      ''
      ''
      'set @RW='#39'WHERE   (RC.Finallized=1) and (Rc.OrgID = '#39'+'
      
        'cast(@OrgID as varchar(10))+'#39') AND (Rc.Proceeded = '#39'+cast(@Proce' +
        'eded as varchar(2))+'#39')'
      #39
      
        'if @myear>0  set @rw=@rw+'#39'  and  L.myear='#39'+cast(@myear as varcha' +
        'r(10))      '
      ''
      '      '
      
        'if @LetterFormat>0 set @rw=@rw+'#39' and (l.LetterFormat ='#39'+cast( @L' +
        'etterFormat as varchar(2))+'#39')'#39'      '
      'else set @rw=@rw+'#39' and (l.LetterFormat in (1,2))'#39'      '
      '      '
      '      '
      'if @letter_Type>0      '
      
        'set @rw=@rw+'#39' AND (l.letter_Type = '#39'+cast(@Letter_Type as varcha' +
        'r(2))+'#39')'#39'      '
      '      '
      'if @type>0      '
      
        '      set @rw=@rw+'#39' AND (Rc.Type = '#39'+cast(@Type as varchar(2))+'#39 +
        ')'#39'      '
      '    '
      'if @ArchiveFolderID>0      '
      
        'set @rw=@rw+'#39' AND (ArchiveFolderID = '#39'+cast(@ArchiveFolderID as ' +
        'varchar(10))+'#39')'#39'      '
      '      '
      'if @date<>0      '
      'begin      '
      ' declare @dw tinyint,@bdate char(10),@edate char(10)      '
      '  set @dw=datepart(dw,Getdate())  '
      '--Ranjbar  '
      
        '  ---select @bdate=begindate,@edate=Enddate from HistoryDateList' +
        '(@today ,@dw) where id=@date   '
      
        '  Set @Mytoday = Cast(1300+@myear as nvarchar)+ Substring(@Today' +
        ',5,6)  '
      
        '  select @bdate=begindate,@edate=Enddate from HistoryDateList(@M' +
        'ytoday ,@dw) where id=@date   '
      '--//  '
      '      '
      
        ' set @rw=@rw+'#39' AND (RC.RecommiteDate between '#39#39#39'+@bdate+'#39#39#39' and ' +
        #39#39#39'+@edate+'#39#39#39')'#39'      '
      'end      '
      '      '
      'if @SecretariatID>0      '
      
        'set @rw=@rw+'#39' AND (SecretariatID = '#39'+cast(@SecretariatID as varc' +
        'har(10))+'#39')'#39'      '
      'else      '
      
        'set @rw=@rw+'#39' AND (SecretariatID in (SELECT SecId FROM UserSecre' +
        'tariats WHERE UserId = '#39'+cast(@userid as varchar(5))+'#39'))'#39'      '
      '      '
      '      '
      
        'set @todayToint=cast(dbo.ShamsiToInt(@today) as varchar(10))    ' +
        '  '
      '      '
      'if @DeadLine between -1 and 30      '
      ' set @rw=@rw+'#39' AND ('#39'+      '
      
        'case when @Proceed=1 then '#39'case when ChildRecommite.Proceeded=0 ' +
        'then ISNULL(ChildRecommite.DeadLineToint,'#39'+@todayToint+'#39') else  '
      #39#39#39'+@todayToint+'#39#39#39' end '#39'      '
      
        'else  '#39'ISNULL(RC.DeadLineToint ,'#39'+@todayToint+'#39') '#39' end+'#39' -'#39'+@tod' +
        'ayToint+'#39' )<= '#39'+cast(@DeadLine as varchar(5))      '
      '      '
      '      '
      
        'set @sql='#39' SELECT top '#39'+cast(@top as varchar(5))+'#39' L.LetterID,L.' +
        'SignerID, L.IndicatorID, L.MYear,l.subjectid, L.SecretariatID, L' +
        '.Letter_Type, '
      'L.letterformat, L.IncommingNO, L.Incommingdate, '
      'L.ClassificationID,      '
      
        'L.UrgencyID, L.Memo, L.Tostaffer,l.SentLetterID,L.AttachTitle, L' +
        '.NumberOfAttachPages, L.NumberOfPage, L.ReceiveTypeID, L.UserID,' +
        ' L.RetroactionNo, '
      'L.UserMemo, L.RegistrationDate,      '
      
        'l.toorgid,l.fromorgid,L.FollowLetterNo, L.LetterRecommites,l.fin' +
        'alized,l.CenterNo,l.CenterDate,l.templateID,l.headerID,      '
      
        'l.registrationTime,l.fromstaffer,l.sendStatusID,L.LastUpdate,L.U' +
        'serTableID,      '
      
        'DBO.INNERNO(L.Letterid)  InnerNo, PRC.OrgID,  RC.ParentId,  RC.P' +
        'araph, RC.RecommiteDate,  RC.Proceeded,      '
      
        ' RC.ProceedDate, RecommiteTypes.id ReType,RecommiteTypes.Title R' +
        'ecommitTypeTitle,      '
      
        'case when fo.title is null then 0 else 1 end IsInner, isnull(FO.' +
        'Title,TTO.title) RecommiterTitle,tto.title sendertitle,rc.recomm' +
        'iteid,      '
      ' rc.id,  '
      'RC.StaffMemo,'
      
        'isnull(incommingno,indicatorid)  Yincommingno,Secretariats.PreCo' +
        'de,RC.IsCopy      '
      ',dbo.has_Page(l.letterid) has_Page,      '
      'dbo.has_WordPage(l.letterid) has_WordPage,      '
      'dbo.has_file(l.letterid) has_file,'#39#39#39#39' FirstView,'#39'+      '
      #39'isnull('#39'+      '
      
        'case when @Proceed=1 then '#39'ChildRecommite.DeadLineToint'#39' else '#39'R' +
        'C.DeadLineToint'#39' end+'#39'-'#39'+@todayToint+'#39',0) DeadLineDays,'#39'+'
      
        'case when @Proceed=1 then '#39'ChildRecommite.ViewDate'#39' else '#39'RC.Vie' +
        'wDate'#39' end+'#39','#39'+  --??? ?? ????? ??'
      
        'case when @Proceed=1 then '#39'ChildRecommite.DeadLineDate '#39' else  '#39 +
        'RC.Deadlinedate  '#39' end+'#39' DeadLineDate ,'#39'+'
      
        'case when @Proceed=1 then '#39'ISNULL(ChildRecommite.Paraph,RC.Parap' +
        'h) '#39'   else '#39#39#39' '#39#39#39' end +'#39' ChildParaph ,'#39'+'
      
        'case when @Proceed=1 then '#39'RecommitedOrg.Title '#39'   else '#39#39#39' '#39#39#39' ' +
        'end +'#39' ChildOrg , '#39'+      '
      
        'case when @Proceed=1 then '#39' case when rc.ActionTypeID=5 then 5 e' +
        'lse ChildRecommite.ActionTypeID end '#39'  else  '#39' RC.ActionTypeID'#39' ' +
        '  end +'#39' ActionTypeID '
      #39'+     '
      '    '
      #39', (Select  Count(R.RecommiteID)      '
      'From ReCommites R     '
      'Inner join Letter on Letter.LetterID = R.LetterID    '
      
        'Inner join FromOrganizations on R.OrgID = FromOrganizations.ID  ' +
        '  '
      'Where R.LetterID = L.LetterID '#39'+    '
      #39' And R.OrgID = '#39'+Cast(@OrgID as varchar) +    '
      #39' Having Count(R.RecommiteID) > 1 ) as UserRecomCount  '#39' +    '
      #39' , RC.IsAnswer , RC.ISFollowup '#39' +    '
      '    '
      #39'FROM ReCommites RC      '
      'INNER JOIN Letter L ON RC.LetterID = L.LetterID      '
      
        'INNER JOIN Secretariats  ON Secretariats.Secid = L.SecretariatID' +
        '      '
      
        'left JOIN ReCommites PRC ON RC.LetterID = PRC.LetterID AND PRC.I' +
        'D = RC.ParentId  AND PRC.type = RC.type      '
      'left JOIN FromOrganizations FO ON FO.ID = PRC.OrgID      '
      'left JOIN FromOrganizations TTO ON TTO.ID = L.ToOrgID       '
      
        'INNER JOIN RecommiteTypes ON RC.Type = RecommiteTypes.ID '#39'+     ' +
        ' '
      'case when @Proceed=1 then '#39'      '
      
        'left JOIN ReCommites ChildRecommite ON RC.LetterID = ChildRecomm' +
        'ite.LetterID AND RC.ID = ChildRecommite.ParentId  AND ChildRecom' +
        'mite.type = '
      'RC.type       '
      
        'left JOIN FromOrganizations RecommitedOrg ON RecommitedOrg.ID = ' +
        'ChildRecommite.OrgID '#39'      '
      'else '#39#39' end      '
      '      '
      'if @archiveFolderID<>0        '
      'set @sql=@sql+'#39'       '
      
        'Left join LetterArchiveFolder on LetterArchiveFolder.Letterid=Rc' +
        '.RecommiteID '#39'      '
      '      '
      'set @sql=@sql+@rW      '
      '      '
      '      '
      'set @where=isnull(ltrim(rtrim(@where)),'#39#39')      '
      'if (@where<>'#39#39')       '
      'select @sql=@sql+'#39' and '#39'+@where      '
      '      '
      'if isnull(ltrim(@orderClause),'#39#39')='#39#39'       '
      
        ' set @orderClause='#39' rc.recommitedate desc,l.indicatorid desc'#39'   ' +
        '   '
      '            '
      '      '
      'set @sql=@sql+'#39' order by '#39'+@orderClause      '
      'exec sp_executesql  @sql      '
      'PRINT @sql  '
      ''
      'GO'
      ''
      ''
      ''
      ''
      ''
      ''
      ''
      'CREATE procedure [dbo].[sp_Letter_Numbers]'
      '@bdate char(10),@edate Char(10),'
      '@receivedNum int output,'
      '@SentNum int output,'
      '@recommitesNum int output,'
      '@SecID int'
      'as'
      'set @receivedNum=0'
      'set @SentNum=0'
      'set @recommitesNum=0'
      ''
      
        'select @receivedNum=count(*) from Letter where registrationdate ' +
        'between @bdate and @edate and (secretariatid=@SecID or @SecID=0)' +
        ' and '
      'Letter_type=1'
      
        'select @SentNum=count(*) from Letter where registrationdate betw' +
        'een @bdate and @edate and (secretariatid=@SecID or @SecID=0) and' +
        ' Letter_type=2'
      
        'select @recommitesNum=count(*)-@SentNum-@receivedNum from ReComm' +
        'ites'
      
        'inner join letter on letter.letterid=ReCommites.LetterId where R' +
        'eCommitedate between @bdate and @edate and (secretariatid=@SecID' +
        ' or @SecID=0)'
      ''
      ''
      ''
      ''
      ''
      'GO '
      'Create PROCEDURE [dbo].[sp_makeRecommited]'
      ''
      #9'('
      #9#9'@recommiteId int,'
      '        @ProceedDate char(10),'
      '        @staffmemo  nvarchar(255)'
      ''
      #9')'
      ''
      'AS'
      'UPDATE ReCommites'
      '   SET  Proceeded = 1'
      '      ,ProceedDate = @ProceedDate'
      '      ,staffmemo = @staffmemo'
      ' WHERE  recommiteId=@recommiteId'
      ''
      'GO'
      ''
      ' '
      'CREATE  PROCEDURE [dbo].[sp_recommite_report]'
      '@SecretariatID int,@myear tinyint,@where nvarchar(1000)'
      ''
      'as'
      'declare @sql nvarchar (4000),@rw nvarchar(2000),@Today char(10)'
      ''
      'select @today=dbo.shamsi(getdate())'
      ''
      'set @RW='#39' '
      
        ' WHERE  not (l.letter_type=2 and l.letterformat=1 ) and  (l.Lett' +
        'erFormat <3) AND  L.myear='#39'+cast(@myear as varchar(10))'
      'if @SecretariatID>0 '
      'set @rw=@rw+'#39
      ' AND (SecretariatID = '#39'+cast(@SecretariatID as varchar(10))+'#39')'#39
      ''
      ''
      
        'set @sql='#39' SELECT  L.LetterID, L.IndicatorID,L.IncommingDate,L.I' +
        'ncommingNo, L.Memo, L.RetroactionNo,'
      
        ' L.RegistrationDate, L.FollowLetterNo, L.ToStaffer,sender.Title ' +
        'AS SenderTitle,'
      
        ' Deliver.Title AS DeliverTitle,LetterTypes.Title LetterTypeTitle' +
        ',LetterRecommites, RC.Paraph,'
      
        ' RC.RecommiteDate,  RC.Proceeded, RC.ProceedDate, RecommiteTypes' +
        '.Title RecommitTypeTitle,'
      
        'isnull(PFO.Title,SENDER.title) RecommiterTitle,Fo.Title Recommit' +
        'ed, RC.ViewDate, RC.StaffMemo,'
      
        'dbo.shamsidatediff(prc.DeadLineDate,isnull(Rc.Proceeddate,'#39#39#39'+@t' +
        'oday+'#39#39#39')) DeadlineDays,'
      
        'dbo.shamsidatediff(rc.Recommitedate,isnull(Rc.Proceeddate,'#39#39#39'+@t' +
        'oday+'#39#39#39')) ProgressDays,'
      'prc.DeadLineDate,ActionTypeTitle '
      'FROM ReCommites RC '
      
        'left JOIN ReCommites PRC ON RC.LetterID = PRC.LetterID AND PRC.I' +
        'D = RC.ParentId  AND PRC.type = RC.type '
      'INNER JOIN Letter L ON RC.LetterID = L.LetterID'
      'INNER JOIN Secretariats  ON Secretariats.Secid = L.SecretariatID'
      'left JOIN FromOrganizations FO ON FO.ID = RC.OrgID '
      'left JOIN FromOrganizations PFO ON PFO.ID = PRC.OrgID '
      'left JOIN  FromOrganizations sender ON l.ToOrgID = sender.ID'
      
        'left JOIN  FromOrganizations Deliver ON l.FromOrgID = Deliver.ID' +
        ' '
      'Left join LetterTypes on LetterTypes.ID=l.Letter_type '
      'left JOIN RecommiteTypes ON RC.Type = RecommiteTypes.ID '
      
        'left JOIN ActionType  ON ActionType.ActionTypeID = RC.ActionType' +
        'ID'#39
      ''
      'set @sql=@sql+@rW'
      ''
      'set @where=isnull(ltrim(rtrim(@where)),'#39#39')'
      ' if (@where<>'#39#39') '
      '   select @sql=@sql+'#39' and '#39'+@where'
      ''
      
        'set @sql=@sql+'#39' order by rc.recommitedate desc,l.indicatorid des' +
        'c'#39
      'exec sp_executesql  @sql'
      'PRINT @sql'
      ''
      'GO'
      ''
      'CREATE  PROCEDURE [dbo].[sp_recommite_statistic] '
      '@SecretariatID int,@myear tinyint,@where nvarchar(1000)'
      ''
      'as'
      'declare @sql nvarchar (4000),@rw nvarchar(2000),@Today char(10)'
      ''
      'select @today=dbo.shamsi(getdate())'
      ''
      'set @RW='#39' '
      
        ' WHERE  not (l.letter_type=2 and l.letterformat=1 ) and  (l.Lett' +
        'erFormat <3) AND  L.myear='#39'+cast(@myear as varchar(10))'
      'if @SecretariatID>0 '
      'set @rw=@rw+'#39
      ' AND (SecretariatID = '#39'+cast(@SecretariatID as varchar(10))+'#39')'#39
      ''
      ''
      'set @sql='#39' SELECT top 1000   Fo.Title Recommited, '
      
        'min(dbo.Recommite_DeadLine(rc.Recommiteid,isnull(Rc.Proceeddate,' +
        #39#39#39'+@today+'#39#39#39'))) MinDeadlineDays,'
      
        'max(dbo.Recommite_DeadLine(rc.Recommiteid,isnull(Rc.Proceeddate,' +
        #39#39#39'+@today+'#39#39#39'))) MaxDeadlineDays,'
      
        'avg(dbo.Recommite_DeadLine(rc.Recommiteid,isnull(Rc.Proceeddate,' +
        #39#39#39'+@today+'#39#39#39'))) AvgDeadlineDays,'
      
        'min(dbo.shamsidatediff(rc.Recommitedate,isnull(Rc.Proceeddate,'#39#39 +
        #39'+@today+'#39#39#39'))) MinProgressDays,'
      
        'max(dbo.shamsidatediff(rc.Recommitedate,isnull(Rc.Proceeddate,'#39#39 +
        #39'+@today+'#39#39#39'))) MaxProgressDays,'
      
        'avg(dbo.shamsidatediff(rc.Recommitedate,isnull(Rc.Proceeddate,'#39#39 +
        #39'+@today+'#39#39#39'))) AvgProgressDays'
      ''
      'FROM ReCommites RC '
      'INNER JOIN Letter L ON RC.LetterID = L.LetterID'
      'INNER JOIN Secretariats  ON Secretariats.Secid = L.SecretariatID'
      'left JOIN FromOrganizations FO ON FO.ID = RC.OrgID '#39
      ''
      'set @sql=@sql+@rW'
      ''
      'set @where=isnull(ltrim(rtrim(@where)),'#39#39')'
      ' if (@where<>'#39#39') '
      '   select @sql=@sql+'#39' and '#39'+@where'
      ''
      'set @sql=@sql+'#39
      ' group by  Fo.Title'
      ' order by Fo.Title '#39
      'exec sp_executesql  @sql'
      'PRINT @sql'
      ''
      ''
      ''
      ''
      'GO '
      ''
      ''
      ''
      ''
      ''
      ''
      'create procedure [dbo].[sp_Recommites_Number]'
      '@bdate char(10),@edate Char(10) as'
      'SELECT     Title,'
      ' sum(case when Proceeded=1 then 1 else 0 end) as Proceed,'
      'sum(case when Proceeded=0 then 1 else 0 end) as NotProceed, '
      
        'sum(case when Proceeded=1 then dbo.ShamsiDateDiff(RecommiteDate,' +
        ' ProceedDate) else 0 end) SumProceed into #m'
      'FROM         ReCommites INNER JOIN'
      
        '                      FromOrganizations ON ReCommites.OrgID = Fr' +
        'omOrganizations.ID'
      'WHERE     (RecommiteDate BETWEEN @bdate AND @edate)'
      'group by title'
      ''
      
        'SELECT     *,case when Proceed>0 then  round(cast(SumProceed as ' +
        'float)/Proceed,2)  else 0 end as avgProceed'
      'FROM         #m'
      ''
      ''
      ''
      ' '
      ''
      'GO '
      ''
      ''
      'CREATE PROCEDURE [dbo].[sp_ReindexTables]'
      'as'
      'declare  @Name varchar(50)'
      'declare  @SQL nvarchar(100)'
      'declare Main_Cursor cursor for  '
      '           select name from sysobjects'
      '           where type='#39'U'#39' order by name'
      ' open  Main_Cursor '
      ' fetch next from Main_Cursor into @Name'
      ''
      ' while @@Fetch_Status=0 '
      '  begin'
      '    set @sql='#39'dbcc dbreindex( ['#39'+@name+'#39'] )'#39
      '    print @sql+'#39'...'#39
      '    exec sp_executesql @SQL        '
      '   fetch next from Main_Cursor into @Name'
      '  end '
      ''
      ' close Main_Cursor'
      ' deallocate Main_Cursor'
      ''
      ''
      ''
      ''
      'GO '
      ''
      
        'CREATE Procedure [dbo].[Sp_Sel_Emails] @Status SmallInt , @Users' +
        'ID int     '
      'As  '
      'begin  '
      '   Select EmailsID,Code,Subject,SendAddress,ReciveAddress,  '
      '          Status,DateEmail,TimeEmail,IsRead,IsAnswer,  '
      '          UsersID,AttachFileName,IsReciveEmail    '
      '   from Emails  '
      '   Where(Status = @Status)'
      '   And(UsersID = @UsersID)'
      'end '
      ''
      ''
      'GO '
      
        'Create Procedure [dbo].[Sp_Sel_ImageData] @TableName Nvarchar(50' +
        ') , @TableID int '
      'As'
      'Select * '
      'from ImageData'
      'Where(TableName = @TableName)'
      '  And(TableID = @TableID)'
      ''
      ''
      'GO'
      'Create Procedure [dbo].[Sp_Sel_News] @Like Nvarchar(50)    '
      'As  '
      'if @Like = '#39#39'  '
      '   Select Top 500 * From News Order BY NewsID Desc  '
      'else  '
      'begin  '
      '   Set @Like = '#39'%'#39'+@Like+'#39'%'#39'  '
      
        '   Select Top 500 * From News Where(Title like @Like) Order BY N' +
        'ewsID Desc  '
      'end  '
      ''
      ''
      ''
      'GO'
      ''
      'Create Procedure [dbo].[Sp_Sel_NewsGroup] @UsersID Int  '
      'As  '
      'Select * from NewsGroup   '
      'Where(UsersID = @UsersID)'
      ''
      ''
      'GO '
      'CREATE Procedure [dbo].[Sp_Sel_Phone] @UserSID Int'
      'As'
      'Select *'
      'from Phone'
      'Where (1=1)'
      'And((IsPublic=1)or(UsersID = @UserSID))'
      'Order By Code '
      ''
      ''
      ''
      ''
      'GO'
      ''
      'Create Procedure [dbo].[Sp_Select_Receipt] @ReceiptID int = 0  '
      'as  '
      'if @ReceiptID = 0'
      '   Select * from Receipt'
      'else '
      '   Select * from Receipt Where(ReceiptID = @ReceiptID )  '
      ''
      'GO'
      ''
      'Create Procedure [dbo].[Sp_Select_WorkGroup] @UserID int '
      'As'
      '  Select * From WorkGroup Where UserID = @UserID'
      ''
      ''
      'GO'
      ''
      ''
      'CREATE  Procedure [dbo].[sp_SetForeinKey]'
      '@inp bit'
      ' as'
      '    declare  @Name varchar(50)'
      '    declare  @SQL nvarchar(100)'
      '    declare Main_Cursor cursor for'
      '               select name from sysobjects'
      '               where type='#39'U'#39' order by name'
      '     open  Main_Cursor'
      '     fetch next from Main_Cursor into @Name'
      '    '
      '     while @@Fetch_Status=0 '
      '      begin'
      
        '       if @inp=0  set @sql='#39'alter table ['#39'+@name+'#39'] nocheck cons' +
        'traint all'#39
      
        '        else set @sql='#39'alter table ['#39'+@name+'#39'] check constraint ' +
        'all'#39
      '        exec sp_executesql @SQL        '
      '       fetch next from Main_Cursor into @Name'
      '      end'
      '    '
      '     close Main_Cursor'
      '     deallocate Main_Cursor'
      ''
      'GO'
      ''
      ''
      ''
      'CREATE  procedure [dbo].[sp_Statistic]'
      
        '@Secretariatid int,@myear tinyint,@Letter_Type int,@LetterFormat' +
        ' int, @where nvarchar(2000),@archiveFolderID int,@GroupBy int'
      'as '
      ''
      'set @where= case when isnull(ltrim(rtrim(@where)),'#39#39')<>'#39#39' then'
      
        '                          '#39'where len(registrationdate)=10 and '#39'+' +
        '@where else '#39' where len(registrationdate)=10'#39' end'
      ''
      'if @Letter_Type<>0 '
      
        '  set @where=@where+'#39' and (Letter_Type = '#39'+Cast(@Letter_Type as ' +
        'varchar(5))+'#39')'#39
      ''
      'if @Secretariatid<>0 '
      
        '  set @where=@where+'#39' and (Secretariatid = '#39'+Cast(@Secretariatid' +
        ' as varchar(5))+'#39')'#39
      ''
      'if @Myear<>0 '
      
        '  set @where=@where+'#39' and (myear = '#39'+Cast(@myear as varchar(5))+' +
        #39')'#39
      ''
      'if @LetterFormat<>0 '
      
        '  set @where=@where+'#39' and (LetterFormat = '#39'+Cast(@LetterFormat a' +
        's varchar(5))+'#39')'#39
      ''
      ''
      ''
      
        'declare @sql nvarchar(4000),@select  varchar(500),@joins varchar' +
        '(500)'
      ''
      ''
      ''
      'set @joins =case when @groupby<8         then '#39' '#39
      
        '                             when @groupby=8 then '#39' left JOIN Cl' +
        'assifications ON Letter.ClassificationID = Classifications.ID '#39' ' +
        '                    '
      
        '                             when @groupby=9 then '#39' left JOIN Ur' +
        'genceis ON Letter.UrgencyID = Urgenceis.ID '#39'                    ' +
        ' '
      
        '                             when @groupby=10 then '#39' left JOIN  ' +
        'Fromorganizations  ToOrganizations ON Letter.ToOrgID = ToOrganiz' +
        'ations.ID '#39
      
        '                             when @groupby=11 then '#39' left JOIN  ' +
        'Fromorganizations   ON Letter.FromOrgID = Fromorganizations.ID '#39 +
        '   '
      
        '                             when @groupby=12 then '#39' left JOIN  ' +
        'users   ON Letter.userid = users.ID '#39'   end'
      ''
      '           '
      ''
      ''
      'declare @Field varchar(100)'
      'set @field= case @groupby '
      '                         when 1  then '#39'registrationdate '#39
      
        '                          when 2  then '#39'dbo.ShamsiDayOfWeek(regi' +
        'strationdate) '#39
      
        '                          when 3  then '#39'substring(registrationda' +
        'te,6,2) '#39
      
        '                          when 4  then '#39'dbo.fasl(registrationdat' +
        'e) '#39
      
        '                          when 5  then '#39'substring(registrationda' +
        'te,1,4) '#39
      
        '                          when 6  then '#39'substring(registrationTi' +
        'me,1,2) '#39
      
        '                          when 7  then '#39'dbo.pm(registrationtime)' +
        ' '#39
      '                          when 8  then '#39'Classifications.Title '#39
      '                          when 9  then '#39'Urgenceis.Title '#39
      '                          when 10 then '#39'ToOrganizations.title '#39' '
      
        '                          when 11 then '#39'FromOrganizations.title ' +
        #39' '
      '                          when 12 then '#39'users.title '#39' end'
      ''
      'set @select ='#39'select '#39'+@field+'#39' ,count(1)  from letter '#39
      ''
      
        'create table ##s(id int identity(1,1),title nvarchar(255),number' +
        ' int)'
      ''
      ''
      
        'set @sql='#39' insert  into ##s(title,number) '#39'+@select+  @joins+@wh' +
        'ere+'
      '+'#39'group by '#39'+@field +'#39' order by 2 desc '#39
      ''
      'exec(@sql)'
      ''
      'if @groupby in (1,10,11)'
      ' begin'
      '   declare @c int,@d int'
      '   select  @d=number from ##s where id=50 '
      '   set @d=isnull(@d,0)'
      '   select @c=sum(number) from ##s where number<=@d'
      '   delete from ##s where number<=@d'
      '   set  IDENTITY_INSERT ##s On'
      '   insert into ##s(id,title,number) values(50,'#39#1587#1575#1610#1585' '#39',@c)'
      ' end'
      '  '
      ' '
      
        'create table #s(id int identity(1,1),title nvarchar(255),number ' +
        'int)'
      ''
      'insert into #s(title,number)'
      'select title,number from ##s order by title'
      ''
      'select cast(id as int) id ,title,number'
      'from #s'
      'order by title'
      ''
      'drop table ##s'
      ''
      ' '
      ''
      ''
      'GO '
      ''
      'CREATE PROC [dbo].[sp_stop_mytrace]'
      '  @queue_handle int'
      'AS'
      ''
      'PRINT '#39'Stopping the following trace:'#39
      ''
      'SELECT * FROM master.dbo.activetraces'
      'WHERE queue_handle = @queue_handle'
      ''
      '-- destroy the queue'
      'EXEC master..xp_trace_destroyqueue @queue_handle'
      ''
      'DELETE FROM master.dbo.activetraces'
      'WHERE queue_handle = @queue_handle'
      ''
      'GO'
      
        'create procedure [dbo].[Transfer_Get_Letter_By_LetterID](@Letter' +
        'id int output)'
      'as'
      ''
      'SELECT     Letter.*, org.Title AS OrgTitle'
      'FROM         Letter INNER JOIN'
      
        '                      FromOrganizations org ON Letter.ToOrgID = ' +
        'org.ID'
      'WHERE     (Letter.LetterID =@Letterid)'
      ''
      ''
      ''
      'GO'
      ''
      ''
      ''
      ''
      'CREATE PROCEDURE [dbo].[Transfer_Get_Letterdata_By_LetterDataID]'
      '@LetterDataID int'
      'AS'
      'select *'
      'from LetterData'
      'where LetterDataID=@LetterDataID'
      ''
      ''
      ''
      ''
      'GO'
      ''
      ''
      ''
      ''
      
        'CREATE Procedure [dbo].[Transfer_Get_LetterData_By_LetterID](@Le' +
        'tterID int,@maxSize int )'
      ''
      'as'
      'select LetterDataID,LastUpdate,Extention'
      'from letterdata'
      'where letterid=@LetterID'
      'and pagenumber<=dbo.NumberOfPage_ByMaxSize(@letterID,@maxSize)'
      ''
      ' '
      ''
      'GO'
      ''
      ''
      ''
      ''
      ''
      ''
      ''
      
        'CREATE procedure [dbo].[Transfer_Get_LetterFieldValue_By_LetterI' +
        'D](@LetterID int )'
      'as'
      'select * '
      'from LetterFieldValue '
      'where letterid=@LetterID'
      ''
      ''
      ''
      'GO'
      ''
      ''
      
        'CREATE procedure [dbo].[Transfer_Get_Recommites_By_LetterID](@Le' +
        'tterID int )'
      'as'
      'select Recommites.*,org.Title AS OrgTitle'
      'from Recommites'
      ' INNER JOIN   FromOrganizations org ON Recommites.OrgID = org.ID'
      'where letterid=@LetterID'
      ''
      ''
      'GO'
      ''
      ''
      'CREATE procedure [dbo].[Transfer_Get_SentLetter]'
      '@RelatedSecretariatID int,'
      '@FromDate char(10)'
      'as'
      ''
      ''
      'declare @ToSecID int,@DestinationOrgID_inSource int'
      ''
      ''
      
        'select @ToSecID=DestinationSecID,@DestinationOrgID_inSource=Dest' +
        'inationOrgID_inSource'
      'from RelatedSecretariats'
      'where  RelatedSecretariatID=@RelatedSecretariatID'
      ''
      ''
      ''
      'SELECT     top 100 l.*'
      'FROM       Letter l'
      'WHERE     letterformat=1 '
      '      and letter_type                               = 2'
      '      and sendstatusid                              = 2'
      
        '      and Registrationdate                          >= @FromDate' +
        '  '
      
        '      and l.ToOrgID                                  = @Destinat' +
        'ionOrgID_inSource'
      'and exists(select * from letterdata where letterid=l.letterid)'
      ''
      ''
      'GO'
      ''
      ''
      'CREATE PROCEDURE [dbo].[Transfer_insert_LetterFieldValue]'
      #9'(@LetterID '#9'[int],'
      #9' @FieldID '#9'[int],'
      #9' @FieldValue '#9'[nvarchar](2000),'
      #9' @LastUpdate'#9'[datetime],'
      '         @LetterFieldValueID '#9'[int] output)'
      ''
      'AS INSERT INTO[LetterFieldValue] '
      #9' ( '
      #9' [LetterID],'
      #9' [FieldID],'
      #9' [FieldValue],'
      #9' LastUpdate)'
      ''
      'VALUES'
      #9'('
      #9' @LetterID,'
      #9' @FieldID,'
      #9' @FieldValue,'
      #9' @LastUpdate) '
      'set @LetterFieldValueID=@@identity'
      ''
      ''
      ''
      ''
      ''
      'GO '
      ''
      'CREATE PROCEDURE [dbo].[Transfer_insert_ReCommites]'
      #9'('
      #9' @LetterID '#9'[int],'
      #9' @ID '#9'[smallint],'
      #9' @Type '#9'[tinyint],'
      #9' @ParentId '#9'[smallint],'
      #9' @OrgID '#9'[int],'
      #9' @Paraph '#9'[nvarchar](500),'
      #9' @RecommiteDate '#9'[varchar](10),'
      #9' @UserID '#9'[tinyint],'
      #9' @IsCopy '#9'[bit],'
      #9' @Proceeded '#9'[bit],'
      #9' @ProceedDate '#9'[varchar](10),'
      #9' @staffmemo '#9'[nvarchar](255),'
      #9' @viewdate '#9'[char](10),'
      #9' @OrgStaff '#9'[nvarchar](50),'
      #9' @DeadLineDate '#9'[char](10),'
      #9' @LastUpdate '#9'[datetime],'
      '         @RecommiteID '#9' int output )'
      ''
      'AS INSERT INTO  [ReCommites] '
      #9' ( '
      #9' [LetterID],'
      #9' [ID],'
      #9' [Type],'
      #9' [ParentId],'
      #9' [OrgID],'
      #9' [Paraph],'
      #9' [RecommiteDate],'
      #9' [UserID],'
      #9' [IsCopy],'
      #9' [Proceeded],'
      #9' [ProceedDate],'
      #9' [staffmemo],'
      #9' [viewdate],'
      #9' [OrgStaff],'
      #9' [DeadLineDate],'
      #9' [LastUpdate])'
      ''
      'VALUES '
      #9'( '
      #9' @LetterID,'
      #9' @ID,'
      #9' @Type,'
      #9' @ParentId,'
      #9' @OrgID,'
      #9' @Paraph,'
      #9' @RecommiteDate,'
      #9' @UserID,'
      #9' @IsCopy,'
      #9' @Proceeded,'
      #9' @ProceedDate,'
      #9' @staffmemo,'
      #9' @viewdate,'
      #9' @OrgStaff,'
      #9' @DeadLineDate,'
      #9' @LastUpdate)'
      ''
      'set @RecommiteID=@@identity'
      ''
      'exec Transfer_Get_LetterData_By_LetterID 5242, 1000'
      ''
      ''
      ''
      'GO'
      'CREATE PROCEDURE [dbo].[Transfer_Insert_SentLetter]'
      #9'(@IndicatorID '#9'[int],'
      #9' @MYear '#9'[tinyint],'
      #9' @SecretariatID '#9'[tinyint],'
      #9' @Letter_Type '#9'[tinyint],'
      #9' @letterformat '#9'[tinyint],'
      #9' @IncommingNO '#9'[nvarchar](50),'
      #9' @Incommingdate '#9'[nvarchar](10),'
      #9' @CenterNo '#9'[nvarchar](50),'
      #9' @CenterDate '#9'[char](10),'
      #9' @FromOrgID '#9'[int],'
      #9' @ToOrgID '#9'[int],'
      #9' @Signerid '#9'[nvarchar](50),'
      #9' @ClassificationID '#9'[tinyint],'
      #9' @UrgencyID '#9'[smallint],'
      #9' @Memo '#9'[nvarchar](500),'
      #9' @AttachTitle '#9'[nvarchar](50),'
      #9' @NumberOfAttachPages '#9'[smallint],'
      #9' @NumberOfPage '#9'[tinyint],'
      #9' @ReceiveTypeID '#9'[tinyint],'
      #9' @UserID '#9'[int],'
      #9' @RetroactionNo '#9'[nvarchar](50),'
      #9' @UserMemo '#9'[nvarchar](255),'
      #9' @RegistrationDate '#9'[char](10),'
      #9' @RegistrationTime '#9'[varchar](5),'
      #9' @FollowLetterNo '#9'[nvarchar](50),'
      #9' @ToStaffer '#9'[nvarchar](50),'
      #9' @SentLetterID '#9'[int],'
      #9' @TemplateID '#9'[int],'
      #9' @HeaderID '#9'[int],'
      #9' @LetterRecommites '#9'[nvarchar](500),'
      #9' @FromStaffer '#9'[nvarchar](50),'
      #9' @Finalized '#9'[bit],'
      #9' @SendStatusID '#9'[tinyint],'
      '@LetterID int output)'
      ''
      'AS INSERT INTO  [Letter] '
      #9' ( [IndicatorID],'#9' [MYear],'#9' [SecretariatID],'#9' [Letter_Type],'
      #9' [letterformat],'#9' [IncommingNO],'#9' [Incommingdate],'#9' [CenterNo],'
      #9' [CenterDate],'
      #9' [FromOrgID],'
      #9' [ToOrgID],'
      #9' [Signerid],'
      #9' [ClassificationID],'
      #9' [UrgencyID],'
      #9' [Memo],'
      #9' [AttachTitle],'
      #9' [NumberOfAttachPages],'
      #9' [NumberOfPage],'
      #9' [ReceiveTypeID],'
      #9' [UserID],'
      #9' [RetroactionNo],'
      #9' [UserMemo],'
      #9' [RegistrationDate],'
      #9' [RegistrationTime],'
      #9' [FollowLetterNo],'
      #9' [ToStaffer],'
      #9' [SentLetterID],'
      #9' [TemplateID],'
      #9' [HeaderID],'
      #9' [LetterRecommites],'
      #9' [FromStaffer],'
      #9' [Finalized],'
      #9' [SendStatusID]) '
      ''
      'VALUES '
      #9'( @IndicatorID,'
      #9' @MYear,'
      #9' @SecretariatID,'
      #9' @Letter_Type,'
      #9' @letterformat,'
      #9' @IncommingNO,'
      #9' @Incommingdate,'
      #9' @CenterNo,'
      #9' @CenterDate,'
      #9' @FromOrgID,'
      #9' @ToOrgID,'
      #9' @Signerid,'
      #9' @ClassificationID,'
      #9' @UrgencyID,'
      #9' @Memo,'
      #9' @AttachTitle,'
      #9' @NumberOfAttachPages,'
      #9' @NumberOfPage,'
      #9' @ReceiveTypeID,'
      #9' @UserID,'
      #9' @RetroactionNo,'
      #9' @UserMemo,'
      #9' @RegistrationDate,'
      #9' @RegistrationTime,'
      #9' @FollowLetterNo,'
      #9' @ToStaffer,'
      #9' @SentLetterID,'
      #9' @TemplateID,'
      #9' @HeaderID,'
      #9' @LetterRecommites,'
      #9' @FromStaffer,'
      #9' @Finalized,'
      #9' @SendStatusID)'
      'select @letterID=@@identity'
      ''
      ''
      ''
      
        'INSERT INTO  ReCommites( LetterID, [ID], Type, ParentId, OrgID, ' +
        'Paraph, RecommiteDate, UserID, IsCopy, Proceeded, ProceedDate, s' +
        'taffmemo, '
      'viewdate, OrgStaff, DeadLineDate, LastUpdate, UniqueID,'
      'ActionTypeID, DeadLineToint, IsAnswer, ISFollowup)'
      
        'VALUES(@letterID,1, 3, 0, 1, '#39#1585#1587#1610#1583#1607' '#1575#1586' '#1585#1662#1604#1610#1705#1610#1578#39',@RegistrationDat' +
        'e , @UserID,0, 0, NULL,'#39#39', NULL,'
      ' '#39#39',NULL, GETDATE(), 0, 1, 0, 0, 0)'
      ''
      ''
      ''
      'GO '
      ''
      ''
      ''
      'CREATE PROCEDURE [dbo].[Transfer_Insert_SharedLetter]'
      ''
      #9'(@IndicatorID '#9'[int],'
      #9' @MYear '#9'[tinyint],'
      #9' @SecretariatID '#9'[tinyint],'
      #9' @Letter_Type '#9'[tinyint],'
      #9' @letterformat '#9'[tinyint],'
      #9' @IncommingNO '#9'[nvarchar](50),'
      #9' @Incommingdate '#9'[nvarchar](10),'
      #9' @CenterNo '#9'[nvarchar](50),'
      #9' @CenterDate '#9'[char](10),'
      #9' @FromOrgID '#9'[int],'
      #9' @ToOrgID '#9'[int],'
      #9' @Signerid '#9'[nvarchar](50),'
      #9' @ClassificationID '#9'[tinyint],'
      #9' @UrgencyID '#9'[smallint],'
      #9' @Memo '#9'[nvarchar](500),'
      #9' @AttachTitle '#9'[nvarchar](50),'
      #9' @NumberOfAttachPages '#9'[smallint],'
      #9' @NumberOfPage '#9'[tinyint],'
      #9' @ReceiveTypeID '#9'[tinyint],'
      #9' @UserID '#9'[int],'
      #9' @RetroactionNo '#9'[nvarchar](50),'
      #9' @UserMemo '#9'[nvarchar](255),'
      #9' @RegistrationDate '#9'[char](10),'
      #9' @RegistrationTime '#9'[varchar](5),'
      #9' @FollowLetterNo '#9'[nvarchar](50),'
      #9' @ToStaffer '#9'[nvarchar](50),'
      #9' @SentLetterID '#9'[int],'
      #9' @TemplateID '#9'[int],'
      #9' @HeaderID '#9'[int],'
      #9' @LetterRecommites '#9'[nvarchar](500),'
      #9' @FromStaffer '#9'[nvarchar](50),'
      #9' @Finalized '#9'[bit],'
      #9' @SendStatusID '#9'[tinyint],'
      #9' @LastUpdate '#9'datetime,'
      #9' @UserTableID '#9'[int],'
      #9' @UniqueID  bigint,'
      '@LetterID int output)'
      ''
      'AS INSERT INTO  [Letter] '
      #9' ( [IndicatorID],'#9' [MYear],'#9' [SecretariatID],'#9' [Letter_Type],'
      #9' [letterformat],'#9' [IncommingNO],'#9' [Incommingdate],'#9' [CenterNo],'
      #9' [CenterDate],'
      #9' [FromOrgID],'
      #9' [ToOrgID],'
      #9' [Signerid],'
      #9' [ClassificationID],'
      #9' [UrgencyID],'
      #9' [Memo],'
      #9' [AttachTitle],'
      #9' [NumberOfAttachPages],'
      #9' [NumberOfPage],'
      #9' [ReceiveTypeID],'
      #9' [UserID],'
      #9' [RetroactionNo],'
      #9' [UserMemo],'
      #9' [RegistrationDate],'
      #9' [RegistrationTime],'
      #9' [FollowLetterNo],'
      #9' [ToStaffer],'
      #9' [SentLetterID],'
      #9' [TemplateID],'
      #9' [HeaderID],'
      #9' [LetterRecommites],'
      #9' [FromStaffer],'
      #9' [Finalized],'
      #9' [SendStatusID],'
      #9' LastUpdate '#9','
      #9' UserTableID '#9','
      #9' UniqueID ) '
      'VALUES '
      #9'( @IndicatorID,'
      #9' @MYear,'
      #9' @SecretariatID,'
      #9' @Letter_Type,'
      #9' @letterformat,'
      #9' @IncommingNO,'
      #9' @Incommingdate,'
      #9' @CenterNo,'
      #9' @CenterDate,'
      #9' @FromOrgID,'
      #9' @ToOrgID,'
      #9' @Signerid,'
      #9' @ClassificationID,'
      #9' @UrgencyID,'
      #9' @Memo,'
      #9' @AttachTitle,'
      #9' @NumberOfAttachPages,'
      #9' @NumberOfPage,'
      #9' @ReceiveTypeID,'
      #9' @UserID,'
      #9' @RetroactionNo,'
      #9' @UserMemo,'
      #9' @RegistrationDate,'
      #9' @RegistrationTime,'
      #9' @FollowLetterNo,'
      #9' @ToStaffer,'
      #9' @SentLetterID,'
      #9' @TemplateID,'
      #9' @HeaderID,'
      #9' @LetterRecommites,'
      #9' @FromStaffer,'
      #9' @Finalized,'
      #9' @SendStatusID,'
      #9' @LastUpdate '#9','
      #9' @UserTableID '#9','
      #9' @UniqueID )'
      'select @letterID=@@identity'
      ''
      ''
      ''
      ''
      'GO '
      'create  procedure [dbo].[Transfer_Sent_RelatedSecs]'
      'as'
      ''
      ''
      
        'SELECT     *,dbo.get_Number_Of_Letter_RelatedSecretariatID(Relat' +
        'edSecretariatID) Number_of_letters'
      'FROM         RelatedSecretariats '
      ''
      ''
      ''
      ''
      'GO'
      ''
      ''
      'CREATE  procedure [dbo].[Transfer_shared_RelatedSecs]'
      'as'
      ''
      
        'SELECT     RelatedSecretariatID, RelatedSecretariatTitle, Destin' +
        'ationOrgID_inSource, RelationType, SourceSecID, '
      '                      ServerIP, DbName, DestinationSecID'
      'FROM         RelatedSecretariats INNER JOIN'
      
        '                      Server ON RelatedSecretariats.DestinationS' +
        'erverID = Server.ServerID'
      'WHERE     RelationType in ( 2, 3)'
      ''
      ''
      ''
      ''
      'GO '
      ''
      ''
      ''
      ''
      ''
      ''
      'CREATE  PROCEDURE [dbo].[Trunsfer_update_Letter]'
      #9'(@LetterID '#9'[int],'
      #9' @IncommingNO '#9'[nvarchar](50),'
      #9' @Incommingdate '#9'[nvarchar](10),'
      #9' @CenterNo '#9'[nvarchar](50),'
      #9' @CenterDate '#9'[char](10),'
      #9' @ClassificationID '#9'[tinyint],'
      #9' @UrgencyID '#9'[smallint],'
      #9' @Memo '#9'[nvarchar](500),'
      #9' @AttachTitle '#9'[nvarchar](50),'
      #9' @NumberOfAttachPages '#9'[smallint],'
      #9' @NumberOfPage '#9'[tinyint],'
      #9' @ReceiveTypeID '#9'[tinyint],'
      #9' @RetroactionNo '#9'[nvarchar](50),'
      #9' @UserMemo '#9'[nvarchar](255),'
      #9' @FollowLetterNo '#9'[nvarchar](50),'
      #9' @ToStaffer '#9'[nvarchar](50),'
      #9' @LetterRecommites '#9'[nvarchar](500),'
      #9' @FromStaffer '#9'[nvarchar](50),'
      #9' @Finalized '#9'[bit],'
      #9' @UserTableID '#9'[int],'
      #9' @LastUpdate'#9'[datetime])'
      ''
      'AS UPDATE  [Letter] '
      ''
      'SET      [IncommingNO]'#9' = @IncommingNO,'
      #9' [Incommingdate]'#9' = @Incommingdate,'
      #9' [CenterNo]'#9' = @CenterNo,'
      #9' [CenterDate]'#9' = @CenterDate,'
      #9' [ClassificationID]'#9' = @ClassificationID,'
      #9' [UrgencyID]'#9' = @UrgencyID,'
      #9' [Memo]'#9' = @Memo,'
      #9' [AttachTitle]'#9' = @AttachTitle,'
      #9' [NumberOfAttachPages]'#9' = @NumberOfAttachPages,'
      #9' [NumberOfPage]'#9' = @NumberOfPage,'
      #9' [ReceiveTypeID]'#9' = @ReceiveTypeID,'
      #9' [RetroactionNo]'#9' = @RetroactionNo,'
      #9' [UserMemo]'#9' = @UserMemo,'
      #9' [FollowLetterNo]'#9' = @FollowLetterNo,'
      #9' [ToStaffer]'#9' = @ToStaffer,'
      #9' [LetterRecommites]'#9' = @LetterRecommites,'
      #9' [FromStaffer]'#9' = @FromStaffer,'
      #9' [Finalized]'#9' = @Finalized,'
      #9' [LastUpdate]'#9' = @LastUpdate,'
      #9' [UserTableID]'#9' = @UserTableID'
      ''
      ''
      'WHERE '
      #9'( [LetterID]'#9' = @LetterID)'
      ''
      ''
      ''
      ''
      'GO '
      ''
      ''
      ''
      'CREATE  PROCEDURE [dbo].[Trunsfer_update_LetterFieldValue]'
      #9'(@LetterFieldValueID '#9'[int],'
      #9' @FieldValue '#9'[nvarchar](2000),'
      #9' @LastUpdate'#9'[datetime])'
      ''
      'AS UPDATE  [LetterFieldValue] '
      ''
      'SET  [FieldValue]'#9' = @FieldValue,'
      #9' [LastUpdate]'#9' = @LastUpdate'
      ''
      'WHERE '
      #9'( [LetterFieldValueID]'#9' = @LetterFieldValueID)'
      ''
      ''
      ''
      ''
      'GO '
      ''
      ''
      'CREATE  PROCEDURE [dbo].[Trunsfer_update_ReCommites]'
      #9'(@RecommiteID '#9'[int],'
      #9' @Paraph '#9'[nvarchar](500),'
      #9' @IsCopy '#9'[bit],'
      #9' @Proceeded '#9'[bit],'
      #9' @ProceedDate '#9'[varchar](10),'
      #9' @DeadLineDate '#9'[char](10),'
      #9' @LastUpdate'#9'[datetime])'
      ''
      'AS UPDATE  [ReCommites] '
      ''
      'SET '#9' [Paraph]'#9' = @Paraph,'
      #9' [IsCopy]'#9' = @IsCopy,'
      #9' [Proceeded]'#9' = @Proceeded,'
      #9' [ProceedDate]'#9' = @ProceedDate,'
      #9' [DeadLineDate]'#9' = @DeadLineDate ,'
      #9' [LastUpdate]'#9' = @LastUpdate'
      'WHERE '
      #9'( [RecommiteID]'#9' = @RecommiteID)'
      ''
      ''
      ''
      ''
      'GO '
      ''
      ''
      ''
      'CREATE PROCEDURE [dbo].[Update_all_recommites] AS'
      'declare @i int'
      'set @i=1'
      'update letter'
      'set letterRecommites=FromOrganizations.Title+'#39'  '#39'+recommitedate'
      
        'from letter inner join recommites on recommites.letterid=letter.' +
        'letterid'
      
        'inner join fromorganizations on fromorganizations.id=recommites.' +
        'orgid'
      'where recommites.id=1 and type=3'
      ''
      ''
      'while @i<16'
      ' begin'
      'set @i=@i+1'
      'update letter'
      
        'set letterRecommites=letterRecommites+'#39','#39'+FromOrganizations.Titl' +
        'e+'#39'  '#39'+recommitedate'
      
        'from letter inner join recommites on recommites.letterid=letter.' +
        'letterid'
      
        'inner join fromorganizations on fromorganizations.id=recommites.' +
        'orgid'
      'where recommites.id=@i  and type=3'
      ''
      ''
      'update letter'
      
        'set letterRecommites=letterRecommites+'#39','#39'+FromOrganizations.Titl' +
        'e+'#39'  '#39'+recommitedate'
      
        'from letter inner join recommites on recommites.letterid=letter.' +
        'letterid'
      
        'inner join fromorganizations on fromorganizations.id=recommites.' +
        'orgid'
      'where recommites.id=@i-1 and type=2'
      ''
      'update letter'
      
        'set letterRecommites=letterRecommites+'#39','#39'+FromOrganizations.Titl' +
        'e+'#39'  '#39'+recommitedate'
      
        'from letter inner join recommites on recommites.letterid=letter.' +
        'letterid'
      
        'inner join fromorganizations on fromorganizations.id=recommites.' +
        'orgid'
      'where recommites.id=@i-1 and type=1'
      'end'
      ''
      ''
      ''
      ''
      ''
      ''
      ''
      ''
      'GO '
      'CREATE Procedure [dbo].[Update_Archived_letter]'
      '@Letterid int,@archived bit'
      'as'
      ''
      'UPDATE    Letter'
      'SET        archived = @archived  '
      'WHERE     (LetterID = @LetterID)'
      ''
      ''
      ''
      ''
      'GO'
      ''
      ''
      ''
      ''
      ''
      ''
      'CREATE PROCEDURE [dbo].[update_ArchiveFolder]'
      #9'(@FolderID '#9'[int],'
      #9' @Title '#9'[nvarchar](100),'
      #9' @Notes '#9'[nvarchar](500),'
      ' @Place nvarchar(100))'
      ''
      'AS UPDATE [dbo].[ArchiveFolder] '
      ''
      'SET  [Title]'#9' = @Title,'
      #9' [Notes]'#9' = @Notes,'
      ' Place=@Place'
      ''
      'WHERE '
      #9'( [FolderID]'#9' = @FolderID)'
      ''
      ''
      ''
      ''
      'GO '
      ''
      ''
      ''
      ''
      ''
      ''
      ''
      
        'CREATE procedure [dbo].[update_FromOrganizations_Title](@ID INT,' +
        ' @Newtitle nVARCHAR(200),@NewResponsibleStaffer nvarchar(100),@n' +
        'ewID int '
      'output)'
      'as'
      
        'insert into FromOrganizations(Title, ParentID, Phone, Fax, Email' +
        ', ResponsibleStaffer, IsActive, PreCode, IsInnerOrg, Code)'
      
        'select @Newtitle, ParentID, Phone, Fax, Email, @NewResponsibleSt' +
        'affer, IsActive, PreCode, IsInnerOrg, Code'
      'from FromOrganizations'
      'where ID=@ID'
      ''
      'set @newID=@@identity'
      ''
      'Update FromOrganizations'
      'set Isactive=0,Code='#39'_'#39'+Code'
      'where ID=@ID'
      ''
      ''
      ''
      'Update FromOrganizations'
      'set ParentId=@newID'
      'where ParentId=@ID'
      ''
      ''
      ''
      ''
      'GO '
      ''
      ''
      ''
      ''
      'CREATE PROCEDURE [dbo].[update_Letter_Finalized]'
      #9'(@LetterID '#9'[int],'
      #9' @Finalized '#9'[bit])'
      ''
      'AS '
      'UPDATE .[dbo].[Letter]  '
      'SET  [Finalized]'#9' = @Finalized  '
      'WHERE  ( [LetterID]'#9' = @LetterID)'
      ''
      ' '
      ''
      'GO '
      ''
      ''
      ''
      ''
      ''
      ''
      ''
      ''
      ''
      ''
      'CREATE PROCEDURE [dbo].[update_Letter_Indicator]'
      #9'(@LetterID '#9'[int],'
      #9' @NewIndicatorID '#9'[int],'
      #9' @NewSecretariatID '#9'[tinyint],'
      #9' @NewLetter_Type '#9'[tinyint],'
      #9' @Newletterformat '#9'[tinyint],'
      #9' @NewRegistrationDate '#9'[char](10),@Updated bit output)'
      ''
      'AS'
      'declare @myear int'
      'select @myear=myear'
      'from letter '
      'where ( [LetterID]'#9' = @LetterID)'
      ''
      ''
      'set @updated=1'
      ''
      ''
      'if not exists (SELECT   *  '
      'FROM         Letter'
      
        'WHERE     (IndicatorID = @NewIndicatorID) AND (MYear = @myear) A' +
        'ND (SecretariatID = @NewSecretariatID) AND (Letter_Type = @NewLe' +
        'tter_Type) '
      'AND (letterformat = @Newletterformat))'
      ' UPDATE [dbo].[Letter] '
      ''
      'SET  [IndicatorID]'#9' = @NewIndicatorID,'
      #9' [SecretariatID]'#9' = @NewSecretariatID,'
      #9' [Letter_Type]'#9' = @NewLetter_Type,'
      #9' [letterformat]'#9' = @Newletterformat,'
      #9' [RegistrationDate]'#9' = @NewRegistrationDate '
      ''
      'WHERE '
      #9'( [LetterID]'#9' = @LetterID)'
      'else '
      'set @updated=0'
      ''
      ''
      ''
      ''
      ''
      ''
      ''
      'GO'
      ''
      ''
      
        'create proc [dbo].[update_letter_sendstatusID]( @LetterID int ,@' +
        'SendStatusID tinyint)'
      'as'
      'UPDATE    Letter'
      'SET              SendStatusID = @SendStatusID'
      'WHERE     (LetterID = @LetterID)'
      ''
      ''
      ''
      'GO'
      ''
      ''
      ''
      ''
      ''
      ''
      ''
      ''
      'create PROCEDURE [dbo].[update_LetterText]'
      #9'(@LetterID  '#9'int,'
      #9' @TypeText   '#9'[nvarchar](4000))'
      ''
      'AS UPDATE [dbo].[LetterText] '
      ''
      'SET '#9' [TypeText]'#9' = @TypeText '
      ''
      'WHERE '
      #9'( LetterID = @LetterID  )'
      ''
      ''
      'GO'
      'Create Procedure [dbo].[Update_ParaphTemplate]'
      '@ParaphTemplateID int,@Title nvarchar(50) ,@Paraph nvarchar(500)'
      'as'
      ''
      'UPDATE  ParaphTemplate'
      '   SET [Title] = @Title'
      '      ,[Paraph] = @Paraph'
      ' WHERE ParaphTemplateID=@ParaphTemplateID'
      ''
      'GO'
      ''
      ''
      ''
      ''
      'CREATE PROCEDURE [dbo].[update_ReCommites_proceed]'
      #9'(@RecommiteID int,'
      #9' @Proceeded '#9'[bit],'
      #9' @ProceedDate '#9'[nvarchar](10),'
      ' @actionTypeID tinyint)'
      ''
      'AS UPDATE [dbo].[ReCommites] '
      ''
      ''
      'SET  [Proceeded]'#9' = @Proceeded,'
      #9' [ProceedDate]'#9' = @ProceedDate ,'
      '      actionTypeID=@actionTypeID'
      ''
      'WHERE '
      #9'( RecommiteID'#9' = @RecommiteID)'
      ''
      ''
      ''
      ''
      'GO'
      ''
      'CREATE PROCEDURE [dbo].[update_ReCommites_viewDate]'
      #9'(@RecommiteID int,'
      #9' @ViewDate '#9'[char](10))'
      ''
      'AS UPDATE [dbo].[ReCommites] '
      ''
      'SET  '#9' ViewDate=@ViewDate'
      ''
      ''
      'WHERE '
      #9'( RecommiteID'#9' = @RecommiteID)'
      ''
      ''
      ''
      ''
      ''
      ''
      'GO'
      ''
      ''
      ''
      'CREATE PROCEDURE [dbo].[update_UserLoginLogout]'
      #9'( @UserLoginLogoutID'#9'[int],'
      #9' @isSafeLogout '#9'[bit])'
      ''
      'AS'
      ' UPDATE [dbo].[UserLoginLogout] '
      ''
      'SET          [LogoutTime]'#9' = getdate(),'
      #9' [isSafeLogout]'#9' = @isSafeLogout '
      ''
      'WHERE '#9'( [UserLoginLogoutID]'#9' = @UserLoginLogoutID)'
      ''
      ''
      ''
      ''
      ''
      ''
      ''
      ''
      'GO'
      ''
      ''
      ''
      
        'CREATE PROCEDURE [dbo].[UserChange_pass] (@userID int,@newPass n' +
        'varchar(100) )'
      'AS'
      ''
      ' '
      'update users'
      'set password=@newPass'
      'where id=@userid '
      ''
      ''
      ''
      'GO'
      ''
      ''
      ''
      'CREATE PROCEDURE [dbo].[UserLog_Report] '
      'AS'
      
        'SELECT     Users.Title AS usertitle, Actions.Title AS actiontitl' +
        'e, UserLog.Time1 AS Time, Letter.IndicatorID, LetterTypes.Title ' +
        'AS Letter_type'
      'FROM         UserLog INNER JOIN'
      
        '                      Users ON UserLog.UserID = Users.Id INNER J' +
        'OIN'
      
        '                      Actions ON UserLog.ActionID = Actions.ID L' +
        'EFT OUTER JOIN'
      
        '                      Letter ON UserLog.LetterID = Letter.Letter' +
        'ID LEFT OUTER JOIN'
      
        '                      LetterTypes ON Letter.Letter_Type = Letter' +
        'Types.ID'
      'ORDER BY LetterTypes.Title'
      ''
      ''
      ''
      ''
      ''
      'GO'
      ''
      
        'CREATE Procedure [dbo].[Web_Access](@userid int,@Result varchar(' +
        '100) output)'
      'as'
      'set @result='#39#39
      'SELECT    @result=@result+case when hasaccess=1 then'
      'case ActionID'
      'when '#39'ReceiveInsert'#39' then '#39'Incomming'#39
      'when '#39'SendInsert'#39'  then '#39'Outgoing'#39
      'when '#39'ADarftIns'#39' then '#39'Draft'#39
      'when '#39'AinnerLetter'#39' then '#39'Inner'#39
      'when '#39'adeleteScan'#39' then '#39'Drop_Attach'#39
      'end+'#39';'#39
      'else '#39#39' end'
      'FROM         ActionsAccess INNER JOIN'
      
        '                      Users ON ActionsAccess.AccessID = Users.Ac' +
        'cessID'
      
        'WHERE     (Users.Id = @userid) AND ActionsAccess.ActionID IN ('#39'R' +
        'eceiveInsert'#39','#39'SendInsert'#39' '
      ', '#39'AinnerLetter'#39','#39'adeleteScan'#39','#39'ADarftIns'#39')'
      ''
      ' '
      'GO'
      ''
      ''
      'CREATE PROCEDURE [dbo].[web_ArchiveRecommite]'
      #9'(@RecommiteID '#9'[int],'
      #9' @ArchiveFolderID '#9'[int],'
      #9' @ArchiveDate '#9'[char](10),'
      #9' @Page '#9'[int],'
      #9' @ArchiveNotes '#9'[nvarchar](50),'
      #9' @StaffMemo '#9'[nvarchar](255),'
      #9' @LetterArchiveID '#9'[int] output)'
      ''
      'AS'
      ''
      'INSERT INTO [dbo].[LetterArchiveFolder]'
      #9' ('
      #9' [ArchiveFolderID],'
      #9' [LetterID],'
      #9' [ArchiveDate],'
      #9' [Page],'
      #9' [ArchiveNotes])'
      ''
      'VALUES'
      #9'('
      #9' @ArchiveFolderID,'
      #9' @RecommiteId,'
      #9' @ArchiveDate,'
      #9' @Page,'
      #9' @ArchiveNotes)'
      ''
      
        'Update Recommites Set Proceeded=1, staffMemo=@StaffMemo where Re' +
        'commiteId=@RecommiteId'
      ''
      'set @LetterArchiveID=@@identity'
      ''
      ''
      ''
      ''
      ''
      ''
      ''
      ''
      ''
      'GO'
      ''
      'CREATE proc [dbo].[web_Get_Letter_by_LetterID]'
      '(@LetterID int )'
      'as'
      'SELECT     Letter.*,Html'
      'FROM       Letter'
      'left JOIN  lettertext ON lettertext.LetterID = Letter.LetterID'
      'WHERE     (Letter.LetterID = @LetterID)'
      ''
      ''
      ''
      ''
      ''
      ''
      ''
      ''
      ''
      ''
      'GO'
      ''
      ''
      ''
      ''
      'Create proc [dbo].[web_Get_LetterData_by_LetterDataID]'
      '(@LetterDataID int )'
      'as'
      
        'SELECT     LetterData.*, Extention.ExtentionTitle, Extention.Ext' +
        'ention'
      'FROM       LetterData '
      
        'left JOIN  Extention ON LetterData.extention = Extention.Extenti' +
        'onID'
      'WHERE     (LetterDataID = @LetterDataID)'
      ''
      ''
      ''
      ''
      ''
      ''
      ''
      ''
      'GO'
      ''
      'CREATE PROCEDURE [dbo].[web_GetLetterArchiveHistory]'
      '('
      #9'@letterId int,'
      #9'@userId int'
      ')'
      'AS'
      ''
      
        'SELECT     dbo.LetterArchiveFolder.ArchiveDate, dbo.ArchiveFolde' +
        'r.*'
      'FROM         dbo.ArchiveFolder INNER JOIN'
      
        '                      dbo.LetterArchiveFolder ON dbo.ArchiveFold' +
        'er.FolderID = dbo.LetterArchiveFolder.ArchiveFolderID'
      'Where LetterId = @letterId and ArchiveFolder.UserId=@userId'
      ''
      ''
      'GO'
      ''
      'create Procedure [dbo].[web_GetLetterAttachment]'
      '@letterID int '
      'as'
      ''
      
        'SELECT     LetterData.*, Extention.ExtentionTitle, Extention.Ext' +
        'ention'
      'FROM       LetterData '
      
        'left JOIN  Extention ON LetterData.extention = Extention.Extenti' +
        'onID'
      'WHERE LetterID=@LetterID'
      ''
      ''
      ''
      ''
      ''
      ''
      ''
      'GO'
      'CREATE PROCEDURE [dbo].[web_GetRecommiteById]'
      '(@recommiteId int )'
      'AS'
      ''
      'SELECT R.*,f.title+'#39' - '#39'+r.OrgStaff RecommiterTitle,IsInnerOrg'
      ''
      'FROM ReCommites R  '
      ''
      'inner join FromOrganizations f on f.ID=r.OrgID'
      ''
      'Where r.RecommiteId=@recommiteId'
      ''
      ''
      'GO'
      'CREATE PROCEDURE [dbo].[web_insert_AnswerLetter]'
      #9'('
      '     @LetterID '#9'[int] output,'
      '     @Indicator '#9'[int] output,'
      '     @RecommiteId [int] output,'
      #9' @ToOrgTitle '#9'nvarchar(100),'
      #9' @Signerid '#9'[nvarchar](50),'
      #9' @ClassificationID '#9'[tinyint],'
      #9' @UrgencyID '#9'[smallint],'
      #9' @Memo '#9'[nvarchar](500),'
      #9' @UserID '#9'[int],'
      #9' @RetroactionNo '#9'[nvarchar](50),'
      #9' @UserMemo '#9'[nvarchar](255),'
      #9' @FollowLetterNo '#9'[nvarchar](50),'
      #9' @ToStaffer '#9'[nvarchar](50),'
      #9' @fromstaffer '#9'[nvarchar](50),'
      #9' @LetterFromOrgID int,'
      '     @receivedLetterID int )'
      ''
      'AS '
      
        'declare @ToOrgID int,@IndicatorID int ,@FromOrgID '#9'int,  @MYear ' +
        'tinyint,@SecretariatID tinyint,'
      
        '        @RegistrationDate '#9'[char](10),'#9'@RegistrationTime '#9'[varch' +
        'ar](5)'
      ''
      ''
      
        'if not exists (select * from fromorganizations where replace(tit' +
        'le,'#39' '#39','#39#39')=replace(@toorgtitle,'#39' '#39','#39#39'))'
      
        'insert into Fromorganizations(Title,parentid,isinnerorg) values(' +
        '@toorgtitle,3,0)'
      ''
      
        'select top 1 @ToOrgID=Id from fromorganizations where replace(ti' +
        'tle,'#39' '#39','#39#39')=replace(@toorgtitle,'#39' '#39','#39#39')'
      ''
      
        'select @RegistrationTime=case when datepart(hour,getdate())<10 t' +
        'hen '#39'0'#39'+convert(char(1),datepart(hour,getdate()))'
      
        '   else convert(char(2),datepart(hour,getdate())) end +'#39':'#39' + con' +
        'vert(char(2),datepart(minute,getdate()))'
      ''
      'set @RegistrationDate=dbo.shamsi(getdate())'
      ''
      'set @myear=cast (substring(@RegistrationDate,3,2) as tinyint)'
      ''
      
        'SELECT     @SecretariatID=DefualtSecretariatID, @FromOrgID=FromO' +
        'rgID'
      'FROM         Users'
      'where id=@userid'
      ''
      'set @IndicatorID=dbo.newIndicatorid(2,2,@myear,@SecretariatID)'
      ''
      'INSERT INTO [Letter] '
      #9' ( [IndicatorID],'
      #9' [MYear],'
      #9' [SecretariatID],'
      #9' [Letter_Type],'
      #9' [letterformat],'
      #9' [FromOrgID],'
      #9' [ToOrgID],'
      #9' [Signerid],'
      #9' [ClassificationID],'
      #9' [UrgencyID],'
      #9' [Memo],'
      #9' [UserID],'
      #9' [RetroactionNo],'
      #9' [UserMemo],'
      #9' [RegistrationDate],'
      #9' [RegistrationTime],'
      #9' [FollowLetterNo],'
      #9' [ToStaffer],'
      #9' [fromstaffer],'
      #9' [Finalized]) '
      ' '
      'VALUES '
      #9'( '
      #9' @IndicatorID,'
      #9' @MYear,'
      #9' @SecretariatID,'
      #9' 2,--Letter_Type'
      #9' 2,--letterformat'
      #9' @LetterFromOrgID,'
      #9' @ToOrgID,'
      #9' @Signerid,'
      #9' @ClassificationID,'
      #9' @UrgencyID,'
      #9' @Memo,'
      #9' @UserID,'
      #9' @RetroactionNo,'
      #9' @UserMemo,'
      #9' @RegistrationDate,'
      #9' @RegistrationTime,'
      #9' @FollowLetterNo,'
      #9' @ToStaffer,'
      #9' @fromstaffer,'
      #9' 0 --Finalized'
      '       )'
      ''
      'select @letterid=max(letterid) from letter'
      'select @Indicator = @IndicatorId'
      ''
      
        'exec web_insert_NewReCommite @LetterID,3,0,@FromOrgID,'#39#1579#1576#1578' '#1662#1610#1588' '#1606 +
        #1608#1610#1587' '#1580#1608#1575#1576' '#1606#1575#1605#1607#39',@registrationdate,@UserID,0,0,@RecommiteId output'
      'update letter'
      'set SentLetterID=@letterid'
      'where letterid=@receivedLetterID'
      ''
      ''
      ''
      'GO '
      ''
      'CREATE PROCEDURE [dbo].[web_insert_DraftLetter]'
      #9'(@Indicator '#9'[int] output,'
      #9' @LetterId int output,'
      #9' @RecommiteId int output,'
      #9' @ToOrgTitle '#9'nvarchar(100),'
      #9' @Signerid '#9'[nvarchar](50),'
      #9' @ClassificationID '#9'[tinyint],'
      #9' @UrgencyID '#9'[smallint],'
      #9' @Memo '#9'[nvarchar](500),'
      #9' @UserID '#9'[int],'
      #9' @RetroactionNo '#9'[nvarchar](50),'
      #9' @UserMemo '#9'[nvarchar](255),'
      #9' @FollowLetterNo '#9'[nvarchar](50),'
      #9' @ToStaffer '#9'[nvarchar](50),'
      #9' @fromstaffer '#9'[nvarchar](50))'
      ''
      'AS '
      
        'declare @ToOrgID int,@IndicatorID int ,@FromOrgID '#9'int,  @MYear ' +
        'tinyint,@SecretariatID tinyint,'
      
        '        @RegistrationDate '#9'[char](10),'#9'@RegistrationTime '#9'[varch' +
        'ar](5)'
      ''
      ''
      
        'if not exists (select * from fromorganizations where replace(tit' +
        'le,'#39' '#39','#39#39')=replace(@toorgtitle,'#39' '#39','#39#39'))'
      
        'insert into Fromorganizations(Title,parentid,isinnerorg) values(' +
        '@toorgtitle,3,0)'
      ''
      
        'select top 1 @ToOrgID=Id from fromorganizations where replace(ti' +
        'tle,'#39' '#39','#39#39')=replace(@toorgtitle,'#39' '#39','#39#39')'
      ''
      
        'select @RegistrationTime=case when datepart(hour,getdate())<10 t' +
        'hen '#39'0'#39'+convert(char(1),datepart(hour,getdate()))'
      
        '   else convert(char(2),datepart(hour,getdate())) end +'#39':'#39' + con' +
        'vert(char(2),datepart(minute,getdate()))'
      ''
      'set @RegistrationDate=dbo.shamsi(getdate())'
      ''
      'set @myear=cast (substring(@RegistrationDate,3,2) as tinyint)'
      ''
      
        'SELECT     @SecretariatID=DefualtSecretariatID, @FromOrgID=FromO' +
        'rgID'
      'FROM         Users'
      'where id=@userid'
      ''
      'set @IndicatorID=dbo.newIndicatorid(2,2,@myear,@SecretariatID)'
      ''
      'INSERT INTO [Letter] '
      #9' ( [IndicatorID],'
      #9' [MYear],'
      #9' [SecretariatID],'
      #9' [Letter_Type],'
      #9' [letterformat],'
      #9' [FromOrgID],'
      #9' [ToOrgID],'
      #9' [Signerid],'
      #9' [ClassificationID],'
      #9' [UrgencyID],'
      #9' [Memo],'
      #9' [UserID],'
      #9' [RetroactionNo],'
      #9' [UserMemo],'
      #9' [RegistrationDate],'
      #9' [RegistrationTime],'
      #9' [FollowLetterNo],'
      #9' [ToStaffer],'
      #9' [fromstaffer],'
      #9' [Finalized]) '
      ' '
      'VALUES '
      #9'( '
      #9' @IndicatorID,'
      #9' @MYear,'
      #9' @SecretariatID,'
      #9' 2,--Letter_Type'
      #9' 2,--letterformat'
      #9' @FromOrgID,'
      #9' @ToOrgID,'
      #9' @Signerid,'
      #9' @ClassificationID,'
      #9' @UrgencyID,'
      #9' @Memo,'
      #9' @UserID,'
      #9' @RetroactionNo,'
      #9' @UserMemo,'
      #9' @RegistrationDate,'
      #9' @RegistrationTime,'
      #9' @FollowLetterNo,'
      #9' @ToStaffer,'
      #9' @fromstaffer,'
      #9' 0 --Finalized'
      '       )'
      ''
      'select @letterid=max(letterid) from letter'
      'select @Indicator = @IndicatorID'
      ''
      
        'exec web_insert_NewReCommite @LetterID,3,0,@FromOrgID,'#39#1579#1576#1578' '#1606#1575#1605#1607' ' +
        #1662#1610#1588' '#1606#1608#1610#1587#39',@registrationdate,@UserID,0,0,@RecommiteId output'
      #9#9#9#9#9#9#9' '
      'select @RecommiteId'
      ''
      ''
      'GO '
      ''
      ''
      ''
      'CREATE PROCEDURE [dbo].[web_insert_innerLetter]'
      #9'(@LetterID '#9'[int] output,'
      #9' @Memo '#9'ntext,'
      #9' @UserID '#9'[int],'
      #9' @UserMemo '#9'[nvarchar](255),'
      '@html ntext)'
      ''
      'AS '
      
        'declare @IndicatorID int ,@FromOrgID '#9'int,  @MYear tinyint,@Secr' +
        'etariatID tinyint,'
      
        '        @RegistrationDate '#9'[char](10),'#9'@RegistrationTime '#9'[varch' +
        'ar](5)'
      ''
      ''
      ''
      
        'select @RegistrationTime=case when datepart(hour,getdate())<10 t' +
        'hen '#39'0'#39'+convert(char(1),datepart(hour,getdate()))'
      
        '   else convert(char(2),datepart(hour,getdate())) end +'#39':'#39' + con' +
        'vert(char(2),datepart(minute,getdate()))'
      ''
      'set @RegistrationDate=dbo.shamsi(getdate())'
      ''
      'set @myear=cast (substring(@RegistrationDate,3,2) as tinyint)'
      ''
      
        'SELECT     @SecretariatID=DefualtSecretariatID, @FromOrgID=FromO' +
        'rgID'
      'FROM         Users'
      'where id=@userid'
      ''
      'set @IndicatorID=dbo.newIndicatorid(3,1,@myear,@SecretariatID)'
      ''
      'INSERT INTO [Letter] '
      #9' ( [IndicatorID],'
      #9' [MYear],'
      #9' [SecretariatID],'
      #9' [Letter_Type],'
      #9' [letterformat],'
      #9' [FromOrgID],'
      #9' [ToOrgID],'
      #9' [Memo],'
      #9' [UserID],'
      #9' [UserMemo],'
      #9' [RegistrationDate],'
      #9' [RegistrationTime],'
      #9' [Finalized]) '
      ' '
      'VALUES '
      #9'( '
      #9' @IndicatorID,'
      #9' @MYear,'
      #9' @SecretariatID,'
      #9' 3,--Letter_Type'
      #9' 1,--letterformat'
      #9' @FromOrgID,'
      #9' 3,--@ToOrgID,'
      #9' @Memo,'
      #9' @UserID,'
      #9' @UserMemo,'
      #9' @RegistrationDate,'
      #9' @RegistrationTime,'
      #9' 1 --Finalized'
      '       )'
      ''
      'select @letterid=max(letterid) from letter'
      ''
      'declare @recommiteId int'
      
        'exec web_insert_NewReCommite @LetterID,3,0,@FromOrgID,'#39#1606#1575#1605#1607' '#1583#1575#1582#1604 +
        #1610#39',@registrationdate,@UserID,0,0,@recommiteId output'
      ''
      ''
      'insert into Lettertext values(@letterid,1,'#39#39',@html)'
      ''
      ''
      'GO '
      ''
      'create PROCEDURE [dbo].[web_Insert_LetterData]'
      #9'(@LetterDataID '#9'[int] output,'
      #9' @LetterID '#9'[int],'
      #9' @PageNumber '#9'[tinyint],'
      #9' @extention '#9'[tinyint],'
      #9' @description [nvarchar](200)='#39#39','
      #9' @image [image] = null)'
      ''
      'AS INSERT INTO [dbo].[LetterData] '
      #9' (  [LetterID],'
      #9' [PageNumber],'
      #9' [extention],'
      #9' [image],'
      #9' [description]) '
      ' '
      'VALUES '
      #9'( @LetterID,'
      #9' @PageNumber,'
      #9' @extention,'
      #9' @image,'
      #9' @description)'
      ''
      'set  @LetterDataID=@@identity'
      ''
      ''
      ''
      ''
      ''
      'GO '
      'CREATE PROCEDURE [dbo].[web_insert_NewReCommite]'
      #9'(@LetterID '#9'[int],'
      #9' @Type '#9'[tinyint],'
      #9' @ParentId '#9'[smallint],'
      #9' @OrgID '#9'[int],'
      #9' @Paraph '#9'[nvarchar](500),'
      #9' @RecommiteDate '#9'[varchar](10),'
      #9' @UserID '#9'[tinyint],'
      #9' @IsCopy '#9'[bit],'
      #9' @Proceeded '#9'[bit],'
      #9' @RecommiteId [int] output)'
      'AS'
      'declare @OrgStaff nvarchar(50),@NewID int'
      ''
      'select top 1 @OrgStaff=ResponsibleStaffer       '
      ''
      'from dbo.FromOrganizations '
      ''
      'WHERE             id         = @OrgID'
      
        'SELECT     @NewID=ISNULL(MAX(ID), 0) + 1   FROM ReCommites WHERE' +
        ' LetterID=@letterID and type=@type'
      'INSERT INTO [dbo].[ReCommites] '
      '             ('
      '             [LetterID],'
      '             [ID],'
      '             [Type],'
      '             [ParentId],'
      '             [OrgID],'
      '             [Paraph],'
      '             [RecommiteDate],'
      '             [UserID],'
      '             [IsCopy],'
      '             [Proceeded],'
      #9#9#9' OrgStaff) '
      'VALUES'
      '            ( '
      '             @LetterID,'
      '             @NewID,'
      '             @Type,'
      '             @ParentId,'
      '             @OrgID,'
      '             @Paraph,'
      '             @RecommiteDate,'
      '             @UserID,'
      '             @IsCopy,'
      '             @Proceeded,'
      #9#9#9' @OrgStaff )'
      ''
      'select @RecommiteId = @@identity'
      ''
      ''
      ''
      'GO '
      ''
      ''
      'CREATE PROCEDURE [dbo].[web_insert_ReceivedLetter]'
      #9'(@Indicator '#9'[int] output,'
      #9' @LetterID '#9'[int] output,'
      #9' @RecommiteId int output,'
      #9' @ToOrgTitle '#9'nvarchar(100),'
      #9' @Signerid '#9'[nvarchar](50),'
      #9' @ClassificationID '#9'[tinyint],'
      #9' @UrgencyID '#9'[smallint],'
      #9' @Memo '#9'[nvarchar](500),'
      #9' @UserID '#9'[int],'
      #9' @RetroactionNo '#9'[nvarchar](50),'
      #9' @UserMemo '#9'[nvarchar](255),'
      #9' @FollowLetterNo '#9'[nvarchar](50),'
      #9' @ToStaffer '#9'[nvarchar](50),'
      #9' @fromstaffer '#9'[nvarchar](50),'
      #9' @IncommingNO '#9'[nvarchar](50),'
      #9' @Incommingdate '#9'[nvarchar](10),'
      #9' @CenterNo '#9'[nvarchar](50),'
      #9' @CenterDate '#9'[char](10),'
      #9' @FromOrgID '#9'[int],'
      #9' @NumberOfPage '#9'[tinyint],'
      #9' @ReceiveTypeID '#9'[tinyint])'
      'AS '
      
        'declare @ToOrgID int,@IndicatorID int ,@UserFromOrgID '#9'int,  @MY' +
        'ear tinyint,@SecretariatID tinyint,'
      
        '        @RegistrationDate '#9'[char](10),'#9'@RegistrationTime '#9'[varch' +
        'ar](5)'
      ''
      ''
      
        'if not exists (select * from fromorganizations where replace(tit' +
        'le,'#39' '#39','#39#39')=replace(@toorgtitle,'#39' '#39','#39#39'))'
      
        'insert into Fromorganizations(Title,parentid,isinnerorg) values(' +
        '@toorgtitle,3,0)'
      ''
      
        'select top 1 @ToOrgID=Id from fromorganizations where replace(ti' +
        'tle,'#39' '#39','#39#39')=replace(@toorgtitle,'#39' '#39','#39#39')'
      ''
      
        'select @RegistrationTime=case when datepart(hour,getdate())<10 t' +
        'hen '#39'0'#39'+convert(char(1),datepart(hour,getdate()))'
      
        '   else convert(char(2),datepart(hour,getdate())) end +'#39':'#39' + con' +
        'vert(char(2),datepart(minute,getdate()))'
      ''
      'set @RegistrationDate=dbo.shamsi(getdate())'
      ''
      'set @myear=cast (substring(@RegistrationDate,3,2) as tinyint)'
      ''
      
        'SELECT     @SecretariatID=DefualtSecretariatID, @UserFromOrgID=F' +
        'romOrgID'
      'FROM         Users'
      'where id=@userid'
      ''
      'set @IndicatorID=dbo.newIndicatorid(1,1,@myear,@SecretariatID)'
      ''
      'INSERT INTO [Letter] '
      
        #9' ( [IndicatorID],'#9' [MYear],'#9' [SecretariatID],'#9' [Letter_Type],'#9' ' +
        '[letterformat],'#9' [FromOrgID],'#9' [ToOrgID],'
      
        #9' [Signerid],'#9' [ClassificationID],'#9' [UrgencyID],'#9' [Memo],'#9' [User' +
        'ID],'#9' [RetroactionNo],'#9' [UserMemo],'
      
        #9' [RegistrationDate],'#9' [RegistrationTime],'#9' [FollowLetterNo],'#9' [' +
        'ToStaffer],'#9' [fromstaffer],'#9' [Finalized],IncommingNO ,'
      
        '     Incommingdate,CenterNo,CenterDate,NumberOfPage ,ReceiveType' +
        'ID) '
      ' '
      'VALUES '
      #9'( '
      #9' @IndicatorID,'#9' @MYear,'#9' @SecretariatID,'
      #9' 1,--Letter_Type'
      #9' 1,--letterformat'
      #9' @FromOrgID,'
      #9' @ToOrgID,'
      #9' @Signerid,'
      #9' @ClassificationID,'
      #9' @UrgencyID,'
      #9' @Memo,'
      #9' @UserID,'
      #9' @RetroactionNo,'
      #9' @UserMemo,'
      #9' @RegistrationDate,'
      #9' @RegistrationTime,'
      #9' @FollowLetterNo,'
      #9' @ToStaffer,'
      #9' @fromstaffer,'
      #9' 1, --Finalized'
      
        '      @IncommingNO , @Incommingdate,@CenterNo,@CenterDate ,@Numb' +
        'erOfPage ,@ReceiveTypeID)'
      ''
      'select @letterid=max(letterid) from letter'
      ''
      
        'exec web_insert_NewReCommite @LetterID,3,0,@FromOrgID,'#39#1579#1576#1578' '#1606#1575#1605#1607#39 +
        ',@registrationdate,@UserID,0,0,@RecommiteId output'
      ''
      'select @Indicator = @IndicatorID'
      ''
      'select @RecommiteId'
      ''
      ''
      ''
      ''
      'GO '
      ''
      ''
      'CREATE PROCEDURE [dbo].[web_insert_sentLetter]'
      #9'(@Indicator '#9'[int] output,'
      #9' @LetterID '#9'[int] output,'
      #9' @RecommiteId int output,'
      #9' @ToOrgTitle '#9'nvarchar(100),'
      #9' @Signerid '#9'[nvarchar](50),'
      #9' @ClassificationID '#9'[tinyint],'
      #9' @UrgencyID '#9'[smallint],'
      #9' @Memo '#9'[nvarchar](500),'
      #9' @UserID '#9'[int],'
      #9' @RetroactionNo '#9'[nvarchar](50),'
      #9' @UserMemo '#9'[nvarchar](255),'
      #9' @FollowLetterNo '#9'[nvarchar](50),'
      #9' @ToStaffer '#9'[nvarchar](50),'
      #9' @fromstaffer '#9'[nvarchar](50),'
      #9' @FromOrgID '#9'[int],'
      #9' @NumberOfPage '#9'[tinyint],'
      #9' @ReceiveTypeID '#9'[tinyint])'
      'AS '
      
        'declare @ToOrgID int,@IndicatorID int ,@UserFromOrgID '#9'int,  @MY' +
        'ear tinyint,@SecretariatID tinyint,'
      
        '        @RegistrationDate '#9'[char](10),'#9'@RegistrationTime '#9'[varch' +
        'ar](5)'
      ''
      ''
      
        'if not exists (select * from fromorganizations where replace(tit' +
        'le,'#39' '#39','#39#39')=replace(@toorgtitle,'#39' '#39','#39#39'))'
      
        'insert into Fromorganizations(Title,parentid,isinnerorg) values(' +
        '@toorgtitle,3,0)'
      ''
      
        'select top 1 @ToOrgID=Id from fromorganizations where replace(ti' +
        'tle,'#39' '#39','#39#39')=replace(@toorgtitle,'#39' '#39','#39#39')'
      ''
      
        'select @RegistrationTime=case when datepart(hour,getdate())<10 t' +
        'hen '#39'0'#39'+convert(char(1),datepart(hour,getdate()))'
      
        '   else convert(char(2),datepart(hour,getdate())) end +'#39':'#39' + con' +
        'vert(char(2),datepart(minute,getdate()))'
      ''
      'set @RegistrationDate=dbo.shamsi(getdate())'
      ''
      'set @myear=cast (substring(@RegistrationDate,3,2) as tinyint)'
      ''
      
        'SELECT     @SecretariatID=DefualtSecretariatID, @UserFromOrgID=F' +
        'romOrgID'
      'FROM         Users'
      'where id=@userid'
      ''
      'set @IndicatorID=dbo.newIndicatorid(2,1,@myear,@SecretariatID)'
      ''
      'INSERT INTO [Letter] '
      
        #9' ( [IndicatorID],'#9' [MYear],'#9' [SecretariatID],'#9' [Letter_Type],'#9' ' +
        '[letterformat],'#9' [FromOrgID],'#9' [ToOrgID],'
      
        #9' [Signerid],'#9' [ClassificationID],'#9' [UrgencyID],'#9' [Memo],'#9' [User' +
        'ID],'#9' [RetroactionNo],'#9' [UserMemo],'
      
        #9' [RegistrationDate],'#9' [RegistrationTime],'#9' [FollowLetterNo],'#9' [' +
        'ToStaffer],'#9' [fromstaffer],'#9' [Finalized],'
      #9' NumberOfPage ,ReceiveTypeID)'
      ' '
      'VALUES '
      #9'( '
      #9' @IndicatorID,'#9' @MYear,'#9' @SecretariatID,'
      #9' 2,--Letter_Type'
      #9' 1,--letterformat'
      #9' @FromOrgID,'
      #9' @ToOrgID,'
      #9' @Signerid,'
      #9' @ClassificationID,'
      #9' @UrgencyID,'
      #9' @Memo,'
      #9' @UserID,'
      #9' @RetroactionNo,'
      #9' @UserMemo,'
      #9' @RegistrationDate,'
      #9' @RegistrationTime,'
      #9' @FollowLetterNo,'
      #9' @ToStaffer,'
      #9' @fromstaffer,'
      #9' 1, --Finalized'
      '     @NumberOfPage ,@ReceiveTypeID)'
      ''
      'select @letterid=max(letterid) from letter'
      ''
      
        'exec web_insert_NewReCommite @LetterID,3,0,@FromOrgID,'#39#1579#1576#1578' '#1606#1575#1605#1607#39 +
        ',@registrationdate,@UserID,0,0,@RecommiteId output'
      ''
      'select @Indicator = @IndicatorID'
      ''
      'select @RecommiteId'
      ''
      ''
      ''
      ''
      'GO '
      ''
      'CREATE PROCEDURE [dbo].[web_ProceedRecommite]'
      #9
      #9'('
      #9#9'@recommiteId int'
      #9')'
      ''
      'AS'
      
        #9'Update Recommites Set Proceeded=1 where recommiteId=@recommiteI' +
        'd '
      #9'/* SET NOCOUNT ON */'
      ''
      ''
      ''
      'GO '
      ''
      'CREATE PROCEDURE [dbo].[web_Select_LetterReCommite]'
      ''
      ''
      '(@letterID '#9'[int],@type tinyint)  AS '
      ''
      
        'SELECT R.*,f.title+'#39' - '#39'+isnull(r.OrgStaff,'#39#39') Recommitertitle,I' +
        'sInnerOrg '
      ''
      'FROM ReCommites R  '
      ''
      'inner join FromOrganizations f on f.ID=r.OrgID '
      ''
      'where Letterid=@letterID and type=@type'
      ''
      ''
      ''
      ''
      ''
      ''
      ''
      'GO '
      ''
      ''
      
        'create procedure [dbo].[ysp_Backup](@dbname nvarchar(50),@path n' +
        'varchar(255))'
      ' as'
      'Exec('#39'backup database '#39'+@dbname+'#39' to disk='#39#39#39'+@path+'#39#39#39#39')'
      ''
      ''
      ''
      ''
      ''
      ''
      ''
      ''
      ''
      'GO '
      ''
      ''
      
        'create proc [dbo].[Ysp_create_Temp_Database](@Path nvarchar(255)' +
        ')'
      'as'
      'declare @sql nvarchar(1000)'
      'set @sql='
      
        #39'CREATE DATABASE [yeganeh_tmp_db]  ON PRIMARY (NAME = N'#39#39'yeganeh' +
        '_tmp_db_Data'#39#39', FILENAME = N'#39#39#39'+@Path+'#39'yeganeh_tmp_db_Data.MDF'#39#39 +
        ' ,'
      ' SIZE = 10, FILEGROWTH = 10%)'
      
        ' LOG ON (NAME = N'#39#39'yeganeh_tmp_db_Log'#39#39', FILENAME = N'#39#39#39'+@Path+'#39 +
        'yeganeh_tmp_db_Log.LDF'#39#39' , SIZE = 10, FILEGROWTH = 10%)'#39
      ''
      'exec master..sp_executesql  @sql'
      ''
      ''
      ''
      ''
      'GO '
      ''
      'CREATE PROCEDURE [dbo].[ysp_DELETE_Temp_Database]'
      'AS'
      'if exists (SELECT name'
      'FROM master.dbo.sysdatabases'
      'WHERE name = '#39'yeganeh_tmp_db'#39')'
      'drop database [yeganeh_tmp_db]'
      ''
      ''
      ''
      ''
      'GO '
      ''
      
        'CREATE PROCEDURE [dbo].[ysp_exists_Temp_Database](@exists bit ou' +
        'tput)'
      'AS'
      'if exists (SELECT name'
      'FROM master.dbo.sysdatabases'
      'WHERE name = '#39'yeganeh_tmp_db'#39')'
      '  set @exists=1  else set @exists=0'
      ''
      ''
      'GO '
      
        'CREATE procedure [dbo].[ysp_shrink](@dbname nvarchar(50),@path n' +
        'varchar(255))'
      ' as'
      'Exec('#39'backup log '#39'+@dbname+'#39' with truncate_only'#39')'
      ''
      '  dbcc shrinkfile(1,1)'
      ' dbcc shrinkfile(2,1)'
      'GO'
      ''
      ''
      'create procedure GetRecommiter'
      '@Recommiteid int ,@orgid int out'
      'as'
      'select @orgid=prc.orgid'
      'from recommites rc,recommites prc'
      
        'where rc.letterid=prc.letterid and prc.id=rc.parentid and rc.rec' +
        'ommiteid=@Recommiteid'
      'set @orgid=isnull(@orgid,0)'
      'GO'
      ''
      ''
      ''
      
        'Create PROCEDURE [dbo].[Get_ArchiveFolder_ByAccess] @userID int ' +
        ', @SecID int'
      'AS'
      'declare  @ArchiveCenterID int'
      ''
      'SELECT @ArchiveCenterID=[ArchiveCenterID]'
      '  FROM  Secretariats'
      'where  SecID=@SecID'
      ''
      ''
      'SELECT AF.*'
      'FROM ArchiveFolder AF'
      
        'Inner Join UserAccArchive UAA On UAA.ArchiveFolderID = AF.Folder' +
        'ID'
      'Where(UAA.SecID = @SecID)'
      'And(UAA.UserID = @userID)'
      'And(AF.ArchiveCenterID = @ArchiveCenterID)'
      'And(UAA.IsAccess = 1)'
      'GO'
      ''
      ''
      
        'Create PROCEDURE [dbo].[Get_ArchiveFolder_ByAccessAndTitle] @use' +
        'rID int , @SecID int ,@ArchiveCenterID int'
      ',  @like nvarchar(100)'
      'AS'
      ''
      'if @ArchiveCenterID<0'
      ''
      'SELECT AF.*'
      'FROM ArchiveFolder AF'
      'Where UserID = @userID'
      'And(  Title like '#39'%'#39'+@like+'#39'%'#39' or AF.place like  '#39'%'#39'+@like+'#39'%'#39' )'
      ''
      'else'
      ''
      'SELECT AF.*'
      'FROM ArchiveFolder AF'
      
        'Inner Join UserAccArchive UAA On UAA.ArchiveFolderID = AF.Folder' +
        'ID'
      'Where(UAA.SecID = @SecID)'
      'And(UAA.UserID = @userID)'
      'And(AF.ArchiveCenterID = @ArchiveCenterID)'
      'And(UAA.IsAccess = 1)'
      
        'And( AF.Title like '#39'%'#39'+@like+'#39'%'#39' or AF.place like  '#39'%'#39'+@like+'#39'%'#39 +
        ' )'
      ''
      'GO'
      ''
      ''
      ''
      ''
      'Create PROCEDURE [dbo].[get_ArchiveFolder_byUserID_and_Letterid]'
      '@Letterid int,@userid int,@ArchiveCenterID int'
      'AS'
      ''
      'if @ArchiveCenterID<0'
      
        'SELECT     LetterArchiveFolder.*, ArchiveFolder.Title, ArchiveFo' +
        'lder.Place,users.Title usertitle'
      'FROM         LetterArchiveFolder'
      
        'INNER JOIN   ArchiveFolder ON LetterArchiveFolder.ArchiveFolderI' +
        'D = ArchiveFolder.FolderID'
      'left join users on users.id=LetterArchiveFolder.userID'
      
        'WHERE     (LetterArchiveFolder.LetterID = @Letterid) and archive' +
        'folder.userid=@userid'
      ''
      'else'
      
        'SELECT     LetterArchiveFolder.*, ArchiveFolder.Title, ArchiveFo' +
        'lder.Place,users.Title usertitle'
      'FROM         LetterArchiveFolder'
      
        'INNER JOIN   ArchiveFolder ON LetterArchiveFolder.ArchiveFolderI' +
        'D = ArchiveFolder.FolderID'
      'left join users on users.id=LetterArchiveFolder.userID'
      
        'WHERE     (LetterArchiveFolder.LetterID = @Letterid) and archive' +
        'folder.ArchiveCenterID=@ArchiveCenterID'
      ''
      ''
      ''
      ''
      ''
      'GO'
      ''
      ''
      ''
      ''
      'Create  PROCEDURE [dbo].[get_ArchiveFolder_byUserID_and_Place]'
      
        '@userID int,@Place nvarchar(100),@FolderID int output,@ArchiveCe' +
        'nterID int'
      'AS'
      'if @ArchiveCenterID<0'
      'SELECT      top 1 @FolderID=FolderID'
      'FROM         ArchiveFolder'
      'WHERE     (UserID = @userID)  and (Place=@Place)'
      'else'
      'SELECT      top 1 @FolderID=FolderID'
      'FROM         ArchiveFolder'
      'WHERE     (ArchiveCenterID=@ArchiveCenterID)  and (Place=@Place)'
      ''
      ''
      ''
      'GO'
      ''
      ''
      'Create  PROCEDURE [dbo].[get_ArchiveFolder_byUserID_and_Title]'
      '@userID int,@like nvarchar(100),@ArchiveCenterID int'
      'AS'
      'if @ArchiveCenterID<0'
      'SELECT      *'
      'FROM         ArchiveFolder'
      
        'WHERE     (UserID = @userID)  and ( title like '#39'%'#39'+@like+'#39'%'#39' or ' +
        'place like  '#39'%'#39'+@like+'#39'%'#39' )'
      ''
      'else'
      ''
      'SELECT      *'
      'FROM         ArchiveFolder'
      
        'WHERE     (ArchiveCenterID = @ArchiveCenterID)  and ( title like' +
        ' '#39'%'#39'+@like+'#39'%'#39' or place like  '#39'%'#39'+@like+'#39'%'#39' )'
      ''
      ''
      'GO'
      ''
      
        'Create Procedure [dbo].[Sp_Sel_UserAccArchive] @SecID int , @use' +
        'rID int'
      'As'
      ''
      'Select *'
      'From UserAccArchive'
      'Where(SecID = @SecID)'
      'And(UserID = @userID)'
      ''
      'GO'
      'Create procedure [dbo].[GetfieldValueByLetterID]'
      '@letterId int,@FormOrder tinyint'
      'as'
      'SELECT Description,'
      
        'case when ReferenceTableID is null or FieldValue is null then Fi' +
        'eldValue'
      'else'
      
        '(select DataTitle From ReferenceTableData where tableid=Referenc' +
        'eTableID and DataID=FieldValue)'
      'end  FieldValue'
      '  FROM  LetterFieldValue'
      '  inner join Fields f on f.ID=LetterFieldValue.FieldID'
      '  where letterid=@letterid and [FormOrder]=@FormOrder'
      ''
      ''
      '  go'
      'Create PROCEDURE [dbo].[insert_ArchiveFolder]'
      #9'(@FolderID '#9'[int] output,'
      #9' @ParentFolderID '#9'[int],'
      #9' @Title '#9'[nvarchar](100),'
      #9' @ArchiveCenterID int=-1,'
      #9' @UserID '#9'[int],'
      #9' @Notes '#9'[nvarchar](500),'
      '              @Place nvarchar(100))'
      ''
      'AS INSERT INTO [dbo].[ArchiveFolder]'
      #9' ('
      #9' [ParentFolderID],'
      #9' [Title],'
      #9' [UserID],'
      #9' [Notes],'
      #9' ArchiveCenterID ,'
      '                Place)'
      ''
      'VALUES'
      #9'('
      #9' @ParentFolderID,'
      #9' @Title,'
      #9' @UserID,'
      #9' @Notes,'
      #9' @ArchiveCenterID'
      #9' ,'
      '@Place )'
      ''
      'select @folderid= @@identity'
      ''
      ''
      ''
      ''
      'GO'
      ''
      ''
      'Create PROCEDURE [dbo].[get_ArchiveFolder_byUserID]'
      '@userID int,@SecID int =0,@ArchiveCenterID int = -1'
      'AS'
      'if @ArchiveCenterID<0'
      'SELECT      *'
      'FROM         ArchiveFolder'
      'WHERE     (UserID = @userID)'
      'else'
      'SELECT AF.*'
      'FROM ArchiveFolder AF'
      
        'Inner Join UserAccArchive UAA On UAA.ArchiveFolderID = AF.Folder' +
        'ID'
      'Where(UAA.SecID = @SecID)'
      'And(UAA.UserID = @userID)'
      'And(AF.ArchiveCenterID = @ArchiveCenterID)'
      'And(UAA.IsAccess = 1)'
      ''
      ''
      ''
      'GO'
      ''
      'Create procedure GetExtentionIDByName'
      '@Extention varchar(10),@ExtentionID int output'
      'as'
      
        'IF NOT EXISTS(SELECT * FROM Extention where Extention=@Extention' +
        ')'
      
        'INSERT INTO Extention ([ExtentionTitle] ,[Extention] ,[IsSystem]' +
        ') '
      'VALUES ( @Extention,@Extention,0)'
      ''
      ''
      'SELECT  @ExtentionID=ExtentionID'
      ' FROM Extention'
      'where Extention=@Extention'
      ''
      ''
      'GO'
      ''
      'Create PROCEDURE [dbo].[Insert_OtherRecievers]'
      #9'(@LetterID '#9'[int],'
      #9' @ID '#9'[smallint],'
      #9' @Type '#9'[tinyint],'
      #9' @ParentId '#9'[smallint],'
      #9' @OrgID '#9'[int],'
      #9' @Paraph '#9'[nvarchar](500),'
      #9' @RecommiteDate '#9'[varchar](10),'
      #9' @UserID '#9'[tinyint],'
      #9' @IsCopy '#9'[bit],'
      #9' @Proceeded '#9'[bit],'
      '@RecommiteID int output)'
      ''
      'AS'
      ''
      'declare @OrgStaff nvarchar(50)'
      'select top 1 @OrgStaff=ResponsibleStaffer'#9
      'from dbo.FromOrganizations '
      'WHERE '#9'id'#9' = @OrgID'
      ''
      ' INSERT INTO [dbo].[ReCommites]'
      #9' ('
      #9' [LetterID],'
      #9' [ID],'
      #9' [Type],'
      #9' [ParentId],'
      #9' [OrgID],'
      #9' [Paraph],'
      #9' [RecommiteDate],'
      #9' [UserID],'
      #9' [IsCopy],'
      #9' [Proceeded],'
      'OrgStaff,finallized) '
      ' '
      'VALUES '
      #9'( '
      #9' @LetterID,'
      #9' @ID,'
      #9' @Type,'
      #9' @ParentId,'
      #9' @OrgID,'
      #9' @Paraph,'
      #9' @RecommiteDate,'
      #9' @UserID,'
      #9' @IsCopy,'
      #9' @Proceeded,'
      '@OrgStaff,0 )'
      ''
      'set @RecommiteID=@@identity'
      'GO'
      ' '
      ' '
      ''
      'CREATE PROCEDURE [dbo].[SetSystemSetting]'
      '@VariableName varchar(50),@Value nvarchar(255)'
      'AS'
      'exec SetUserSetting -1 ,@VariableName ,@Value'
      ''
      ''
      ''
      ''
      ''
      'GO '
      ''
      'CREATE PROCEDURE [dbo].[SetUserSetting]'
      '@UserID  int ,@VariableName varchar(50),@Value nvarchar(255)'
      'AS'
      
        'if not exists(select * from Settings WHERE (UserID = @UserID) AN' +
        'D (VariableName = @VariableName))'
      
        'insert into Settings(UserID,VariableName,Value) values(@UserID,@' +
        'VariableName,@Value)'
      'Update Settings '
      'set Value=@Value'
      'WHERE     (UserID = @UserID) AND (VariableName = @VariableName)'
      ' '
      'GO'
      ' '
      ''
      'CREATE PROCEDURE [dbo].[GetSystemSetting]'
      '@VariableName varchar(50),@Value nvarchar(255)  output'
      'AS'
      ' exec GetUserSetting -1,@VariableName,@value output'
      ''
      ''
      'GO '
      ''
      'CREATE PROCEDURE [dbo].[GetUserSetting]'
      
        '@UserID  int ,@VariableName varchar(50),@Value nvarchar(255) out' +
        'put'
      'AS'
      'SELECT     @Value=Value'
      'FROM         Settings'
      'WHERE     (UserID = @UserID) AND (VariableName = @VariableName)'
      ''
      'set @Value=isnull(@Value,'#39'Not Found'#39')'
      ''
      'GO'
      '')
    ParentBiDiMode = False
    ReadOnly = True
    TabOrder = 9
  end
  object MemoforeinKeys: TMemo
    Left = 328
    Top = 513
    Width = 770
    Height = 89
    BiDiMode = bdLeftToRight
    Lines.Strings = (
      ''
      ''
      'declare @sql varchar(8000)'
      'set @sql='#39#39
      'select @sql=@sql+'#39
      'alter table '#39'+o1.name+'#39' drop constraint '#39'+o.name'
      'FROM Sysforeignkeys f ,      Sysobjects o1 ,sysobjects o'
      'where fkeyid = o1.id and constid=o.id'
      'and o.name not in ('#39'FK_ReCommites_FromOrganizations'#39','
      #39'FK_ReCommites_Users'#39','#39'FK_ReCommites_ActionType'#39','
      
        #39'FK_Users_FromOrganizations'#39','#39'FK_Letter_Subject'#39','#39'FK_Users_FromO' +
        'rganizations1'#39','
      
        #39'FK_Letter_SendStatus'#39','#39'FK_Letter_FromOrganizations'#39','#39'FK_Letter_' +
        'Secretariats'#39','
      
        #39'FK_ArchiveFolder_Users'#39','#39'FK_Letter_LetterTypes'#39','#39'FK_Emails_User' +
        's'#39','
      #39'FK_Letter_Classifications'#39','#39'FK_Letter_FromOrganizations1'#39','
      
        #39'FK_FieldAccess_Fields'#39','#39'FK_Letter_Urgenceis'#39','#39'FK_FieldAccess_Us' +
        'ers'#39','
      
        #39'FK_Letter_ReceiveTypes'#39','#39'FK_FieldAccess_AccessType'#39','#39'FK_Letter_' +
        'Users'#39','
      
        #39'FK_Letter_ActionType'#39','#39'FK_LetterRelation_Letter'#39','#39'FK_LetterRela' +
        'tion_Letter1'#39','
      
        #39'FK_FollowUp_Letter'#39','#39'FK_ReCommites_Letter'#39','#39'FK_LetterData_Lette' +
        'r'#39','
      
        #39'FK_LetterArchiveFolder_Letter'#39','#39'FK_LetterFieldValue_Letter'#39','#39'FK' +
        '_Fields_Tables'#39','
      
        #39'FK_Fields_FieldType'#39','#39'FK_FollowUp_FollowUpType'#39','#39'FK_FollowUp_Us' +
        'ers'#39','
      
        #39'FK_FollowUp_DoneStatus'#39','#39'FK_LetterArchiveFolder_ArchiveFolder'#39',' +
        #39'FK_LetterArchiveFolder_Users'#39','
      
        #39'FK_News_Urgenceis'#39','#39'FK_LetterFieldValue_Fields'#39','#39'FK_News_Users'#39 +
        ','
      
        #39'FK_LetterFieldValue_Users'#39','#39'FK_NewsGroup_Users'#39','#39'FK_NewsGroupUs' +
        'ers_Users'#39','
      
        #39'FK_NewsGroupUsers_NewsGroup'#39','#39'FK_LetterTemplate_TemplateGroup'#39',' +
        #39'FK_NewsUsers_News'#39','
      
        #39'FK_LetterText_LetterFormats'#39','#39'FK_NewsUsers_Users'#39','#39'FK_ParaphTem' +
        'plate_Users'#39','
      #39'FK_PhoneGroup_Users'#39','#39'FK_Phone_PhoneGroup'#39','#39'FK_Phone_Users'#39','
      
        #39'FK_RecommiteData_ReCommites'#39','#39'FK_ReferenceTableData_Tables'#39','#39'FK' +
        '_Secretariats_ArchiveCenter'#39','
      
        #39'FK_UserAccArchive_Users'#39','#39'FK_UserAccArchive_ArchiveCenter'#39','#39'FK_' +
        'UserAccArchive_ArchiveFolder'#39','
      
        #39'FK_UserAccArchive_Secretariats'#39','#39'FK_UserExtention_Extention'#39','#39'F' +
        'K_UserExtention_Users'#39','
      
        #39'FK_UserLog_Users'#39','#39'FK_UserLog_Letter'#39','#39'FK_UserLoginLogout_Users' +
        #39','
      #39'FK_UserTemplateGroup_TemplateGroup'#39','#39'FK_UserShortCut_Users'#39','
      
        #39'FK_UserNote_Users'#39','#39'FK_UserSecretariats_Secretariats'#39','#39'FK_UserS' +
        'ecretariats_Users'#39','
      
        #39'FK_FromOrganizations_FromOrganizations'#39','#39'FK_UserTemplateGroup_U' +
        'sers'#39','#39'FK_Letter_LetterFormats'#39','#39'FK_Letter_Letter'#39','
      #39'FK_RelatedSecretariats_Secretariats'#39','#39'FK_UserMessage_Users'#39','
      
        #39'FK_UserMessage_Users1'#39','#39'FK_WorkGroup_Users'#39','#39'FK_WorkGroupOrg_Wo' +
        'rkGroup'#39','#39'FK_WorkGroupOrg_FromOrganizations'#39')'
      ''
      'if @sql <> '#39#39' '
      '   Exec(@sql)'
      ' '
      'GO'
      
        'if not exists (select * from sysobjects where name='#39'FK_ReCommite' +
        's_FromOrganizations'#39')'
      
        'ALTER TABLE ReCommites WITH NOCHECK ADD CONSTRAINT   [FK_ReCommi' +
        'tes_FromOrganizations] FOREIGN KEY ( [OrgID] ) REFERENCES [dbo].'
      '[FromOrganizations] ( [ID] )'
      'GO'
      ' '
      
        'if not exists (select * from sysobjects where name='#39'FK_LetterDat' +
        'a_Letter'#39')'
      
        'ALTER TABLE LetterData WITH NOCHECK ADD CONSTRAINT   [FK_LetterD' +
        'ata_Letter] FOREIGN KEY ( [LetterID] ) REFERENCES [dbo].[Letter]' +
        ' ( [LetterID] )'
      'GO'
      ''
      
        'if not exists (select * from sysobjects where name='#39'FK_UserAccAr' +
        'chive_ArchiveFolder'#39')'
      
        'ALTER TABLE UserAccArchive WITH NOCHECK ADD CONSTRAINT   [FK_Use' +
        'rAccArchive_ArchiveFolder] FOREIGN KEY ( [ArchiveFolderID] ) REF' +
        'ERENCES '
      '[dbo].[ArchiveFolder] ( [FolderID] )'
      'GO'
      ''
      
        'if not exists (select * from sysobjects where name='#39'FK_LetterArc' +
        'hiveFolder_Letter'#39')'
      
        'ALTER TABLE LetterArchiveFolder WITH NOCHECK ADD CONSTRAINT   [F' +
        'K_LetterArchiveFolder_Letter] FOREIGN KEY ( [LetterID] ) REFEREN' +
        'CES [dbo].'
      '[Letter] ( [LetterID] )'
      'GO'
      ''
      
        'if not exists (select * from sysobjects where name='#39'FK_UserAccAr' +
        'chive_Secretariats'#39')'
      
        'ALTER TABLE UserAccArchive WITH NOCHECK ADD CONSTRAINT   [FK_Use' +
        'rAccArchive_Secretariats] FOREIGN KEY ( [SecID] ) REFERENCES [db' +
        'o].'
      '[Secretariats] ( [SecID] )'
      'GO'
      ''
      
        'if not exists (select * from sysobjects where name='#39'FK_LetterFie' +
        'ldValue_Letter'#39')'
      
        'ALTER TABLE LetterFieldValue WITH NOCHECK ADD CONSTRAINT   [FK_L' +
        'etterFieldValue_Letter] FOREIGN KEY ( [LetterID] ) REFERENCES [d' +
        'bo].[Letter] ( '
      '[LetterID] )'
      'GO'
      ''
      
        'if not exists (select * from sysobjects where name='#39'FK_UserExten' +
        'tion_Extention'#39')'
      
        'ALTER TABLE UserExtention WITH NOCHECK ADD CONSTRAINT   [FK_User' +
        'Extention_Extention] FOREIGN KEY ( [ExtentionID] ) REFERENCES [d' +
        'bo].'
      '[Extention] ( [ExtentionID] )'
      'GO'
      ''
      
        'if not exists (select * from sysobjects where name='#39'FK_UserExten' +
        'tion_Users'#39')'
      
        'ALTER TABLE UserExtention WITH NOCHECK ADD CONSTRAINT   [FK_User' +
        'Extention_Users] FOREIGN KEY ( [UserId] ) REFERENCES [dbo].[User' +
        's] ( [Id] )'
      'GO'
      ' '
      
        'if not exists (select * from sysobjects where name='#39'FK_News_User' +
        's'#39')'
      
        'ALTER TABLE News WITH NOCHECK ADD CONSTRAINT   [FK_News_Users] F' +
        'OREIGN KEY ( [UserID] ) REFERENCES [dbo].[Users] ( [Id] )'
      'GO'
      ''
      
        'if not exists (select * from sysobjects where name='#39'FK_UserLogin' +
        'Logout_Users'#39')'
      
        'ALTER TABLE UserLoginLogout WITH NOCHECK ADD CONSTRAINT   [FK_Us' +
        'erLoginLogout_Users] FOREIGN KEY ( [UserID] ) REFERENCES [dbo].[' +
        'Users] ( [Id] '
      ')'
      'GO'
      ''
      
        'if not exists (select * from sysobjects where name='#39'FK_UserTempl' +
        'ateGroup_TemplateGroup'#39')'
      
        'ALTER TABLE UserTemplateGroup WITH NOCHECK ADD CONSTRAINT   [FK_' +
        'UserTemplateGroup_TemplateGroup] FOREIGN KEY ( [TemplateGroupID]' +
        ' ) '
      'REFERENCES [dbo].[TemplateGroup] ( '
      '[TemplateGroupID])'
      'Go'
      
        'ALTER TABLE dbo.UserTemplateGroup NOCHECK CONSTRAINT FK_UserTemp' +
        'lateGroup_TemplateGroup'
      'GO'
      ''
      
        'if not exists (select * from sysobjects where name='#39'FK_UserShort' +
        'Cut_Users'#39')'
      
        'ALTER TABLE UserShortCut WITH NOCHECK ADD CONSTRAINT   [FK_UserS' +
        'hortCut_Users] FOREIGN KEY ( [UserID] ) REFERENCES [dbo].[Users]' +
        ' ( [Id] )'
      'GO'
      ''
      
        'if not exists (select * from sysobjects where name='#39'FK_UserNote_' +
        'Users'#39')'
      
        'ALTER TABLE UserNote WITH NOCHECK ADD CONSTRAINT   [FK_UserNote_' +
        'Users] FOREIGN KEY ( [UserID] ) REFERENCES [dbo].[Users] ( [Id] ' +
        ')'
      'GO'
      ''
      
        'if not exists (select * from sysobjects where name='#39'FK_UserSecre' +
        'tariats_Secretariats'#39')'
      
        'ALTER TABLE UserSecretariats WITH NOCHECK ADD CONSTRAINT   [FK_U' +
        'serSecretariats_Secretariats] FOREIGN KEY ( [SecId] ) REFERENCES' +
        ' [dbo].'
      '[Secretariats] ( [SecID] )'
      'GO'
      ''
      
        'if not exists (select * from sysobjects where name='#39'FK_UserSecre' +
        'tariats_Users'#39')'
      
        'ALTER TABLE UserSecretariats WITH NOCHECK ADD CONSTRAINT   [FK_U' +
        'serSecretariats_Users] FOREIGN KEY ( [UserId] ) REFERENCES [dbo]' +
        '.[Users] ( [Id] '
      ')'
      'GO'
      ''
      
        'if not exists (select * from sysobjects where name='#39'FK_FromOrgan' +
        'izations_FromOrganizations'#39')'
      
        'ALTER TABLE FromOrganizations WITH NOCHECK ADD CONSTRAINT   [FK_' +
        'FromOrganizations_FromOrganizations] FOREIGN KEY ( [ParentID] ) ' +
        'REFERENCES '
      '[dbo].[FromOrganizations] ( [ID] )'
      'GO'
      ''
      
        'if not exists (select * from sysobjects where name='#39'FK_Users_Fro' +
        'mOrganizations'#39')'
      
        'ALTER TABLE Users WITH NOCHECK ADD CONSTRAINT   [FK_Users_FromOr' +
        'ganizations] FOREIGN KEY ( [FromOrgID] ) REFERENCES [dbo].'
      '[FromOrganizations] ( [ID] )'
      'GO'
      ''
      
        'if not exists (select * from sysobjects where name='#39'FK_Users_Fro' +
        'mOrganizations1'#39')'
      
        'ALTER TABLE Users WITH NOCHECK ADD CONSTRAINT   [FK_Users_FromOr' +
        'ganizations1] FOREIGN KEY ( [SecondOrgID] ) REFERENCES [dbo].'
      '[FromOrganizations] ( [ID] )'
      'GO'
      ''
      ''
      
        'if not exists (select * from sysobjects where name='#39'FK_Emails_Us' +
        'ers'#39')'
      
        'ALTER TABLE Emails WITH NOCHECK ADD CONSTRAINT   [FK_Emails_User' +
        's] FOREIGN KEY ( [UsersID] ) REFERENCES [dbo].[Users] ( [Id] )'
      'GO'
      ''
      ''
      ''
      
        'if not exists (select * from sysobjects where name='#39'FK_FieldAcce' +
        'ss_Fields'#39')'
      
        'ALTER TABLE FieldAccess WITH NOCHECK ADD CONSTRAINT   [FK_FieldA' +
        'ccess_Fields] FOREIGN KEY ( [FieldID] ) REFERENCES [dbo].[Fields' +
        '] ( [ID] )'
      'GO'
      ''
      
        'if not exists (select * from sysobjects where name='#39'FK_FieldAcce' +
        'ss_Users'#39')'
      
        'ALTER TABLE FieldAccess WITH NOCHECK ADD CONSTRAINT   [FK_FieldA' +
        'ccess_Users] FOREIGN KEY ( [UserID] ) REFERENCES [dbo].[Users] (' +
        ' [Id] )'
      'GO'
      ''
      
        'if not exists (select * from sysobjects where name='#39'FK_FieldAcce' +
        'ss_AccessType'#39')'
      
        'ALTER TABLE FieldAccess WITH NOCHECK ADD CONSTRAINT   [FK_FieldA' +
        'ccess_AccessType] FOREIGN KEY ( [AccessTypeID] ) REFERENCES [dbo' +
        '].'
      '[AccessType] ( [AccessTypeID] )'
      'GO'
      ' '
      ' '
      ''
      
        'if not exists (select * from sysobjects where name='#39'FK_FollowUp_' +
        'FollowUpType'#39')'
      
        'ALTER TABLE FollowUp WITH NOCHECK ADD CONSTRAINT   [FK_FollowUp_' +
        'FollowUpType] FOREIGN KEY ( [FollowUPTypeID] ) REFERENCES [dbo].'
      '[FollowUpType] ( [FollowUpTypeID] )'
      'GO'
      ''
      
        'if not exists (select * from sysobjects where name='#39'FK_FollowUp_' +
        'Users'#39')'
      
        'ALTER TABLE FollowUp WITH NOCHECK ADD CONSTRAINT   [FK_FollowUp_' +
        'Users] FOREIGN KEY ( [UserID] ) REFERENCES [dbo].[Users] ( [Id] ' +
        ')'
      'GO'
      ''
      
        'if not exists (select * from sysobjects where name='#39'FK_FollowUp_' +
        'DoneStatus'#39')'
      
        'ALTER TABLE FollowUp WITH NOCHECK ADD CONSTRAINT   [FK_FollowUp_' +
        'DoneStatus] FOREIGN KEY ( [DoneStatusID] ) REFERENCES [dbo].[Don' +
        'eStatus] ( '
      '[DoneStatusID] )'
      'GO'
      ''
      
        'if not exists (select * from sysobjects where name='#39'FK_LetterArc' +
        'hiveFolder_ArchiveFolder'#39')'
      
        'ALTER TABLE LetterArchiveFolder WITH NOCHECK ADD CONSTRAINT   [F' +
        'K_LetterArchiveFolder_ArchiveFolder] FOREIGN KEY ( [ArchiveFolde' +
        'rID] ) '
      'REFERENCES [dbo].[ArchiveFolder] ( [FolderID])'
      ''
      
        'if not exists (select * from sysobjects where name='#39'FK_LetterArc' +
        'hiveFolder_Users'#39')'
      
        'ALTER TABLE LetterArchiveFolder WITH NOCHECK ADD CONSTRAINT   [F' +
        'K_LetterArchiveFolder_Users] FOREIGN KEY ( [UserID] ) REFERENCES' +
        ' [dbo].'
      '[Users] ( [Id] )'
      'GO'
      ''
      
        'if not exists (select * from sysobjects where name='#39'FK_LetterFie' +
        'ldValue_Fields'#39')'
      
        'ALTER TABLE LetterFieldValue WITH NOCHECK ADD CONSTRAINT   [FK_L' +
        'etterFieldValue_Fields] FOREIGN KEY ( [FieldID] ) REFERENCES [db' +
        'o].[Fields] ( [ID] '
      ')'
      'GO'
      ''
      
        'if not exists (select * from sysobjects where name='#39'FK_Letter_Su' +
        'bject'#39')'
      
        'ALTER TABLE Letter WITH NOCHECK ADD CONSTRAINT   [FK_Letter_Subj' +
        'ect] FOREIGN KEY ( [SubjectID] ) REFERENCES [dbo].[Subject] ( [S' +
        'ubjectID] )'
      'GO'
      ''
      
        'if not exists (select * from sysobjects where name='#39'FK_LetterFie' +
        'ldValue_Users'#39')'
      
        'ALTER TABLE LetterFieldValue WITH NOCHECK ADD CONSTRAINT   [FK_L' +
        'etterFieldValue_Users] FOREIGN KEY ( [InsertUserID] ) REFERENCES' +
        ' [dbo].[Users] '
      '( [Id] )'
      'GO'
      ' '
      ''
      
        'if not exists (select * from sysobjects where name='#39'FK_NewsGroup' +
        '_Users'#39')'
      
        'ALTER TABLE NewsGroup WITH NOCHECK ADD CONSTRAINT   [FK_NewsGrou' +
        'p_Users] FOREIGN KEY ( [UsersID] ) REFERENCES [dbo].[Users] ( [I' +
        'd] )'
      'GO'
      ''
      
        'if not exists (select * from sysobjects where name='#39'FK_Letter_Fr' +
        'omOrganizations'#39')'
      
        'ALTER TABLE Letter WITH NOCHECK ADD CONSTRAINT   [FK_Letter_From' +
        'Organizations] FOREIGN KEY ( [FromOrgID] ) REFERENCES [dbo].'
      '[FromOrganizations] ( [ID] )'
      'GO'
      ''
      
        'if not exists (select * from sysobjects where name='#39'FK_NewsGroup' +
        'Users_Users'#39')'
      
        'ALTER TABLE NewsGroupUsers WITH NOCHECK ADD CONSTRAINT   [FK_New' +
        'sGroupUsers_Users] FOREIGN KEY ( [UsersID] ) REFERENCES [dbo].[U' +
        'sers] ( '
      '[Id] )'
      'GO'
      
        ' if not exists (select * from sysobjects where name='#39'FK_NewsGrou' +
        'pUsers_NewsGroup'#39')'
      
        'ALTER TABLE NewsGroupUsers WITH NOCHECK ADD CONSTRAINT   [FK_New' +
        'sGroupUsers_NewsGroup] FOREIGN KEY ( [NewsGroupID] ) REFERENCES '
      '[dbo].[NewsGroup] ( [NewsGroupID] )'
      'GO'
      ''
      
        'if not exists (select * from sysobjects where name='#39'FK_LetterTem' +
        'plate_TemplateGroup'#39')'
      
        'ALTER TABLE LetterTemplate WITH NOCHECK ADD CONSTRAINT   [FK_Let' +
        'terTemplate_TemplateGroup] FOREIGN KEY ( [TemplateGroupID] ) REF' +
        'ERENCES '
      '[dbo].[TemplateGroup] ( [TemplateGroupID] )'
      'GO'
      ''
      
        'if not exists (select * from sysobjects where name='#39'FK_LetterTex' +
        't_LetterFormats'#39')'
      
        'ALTER TABLE LetterText WITH NOCHECK ADD CONSTRAINT   [FK_LetterT' +
        'ext_LetterFormats] FOREIGN KEY ( [LetterFormat] ) REFERENCES [db' +
        'o].'
      '[LetterFormats] ( [Code] )'
      'GO'
      ' '
      
        'if not exists (select * from sysobjects where name='#39'FK_NewsUsers' +
        '_Users'#39')'
      
        'ALTER TABLE NewsUsers WITH NOCHECK ADD CONSTRAINT   [FK_NewsUser' +
        's_Users] FOREIGN KEY ( [UsersID] ) REFERENCES [dbo].[Users] ( [I' +
        'd] )'
      'GO'
      ''
      
        'if not exists (select * from sysobjects where name='#39'FK_Letter_Fr' +
        'omOrganizations1'#39')'
      
        'ALTER TABLE Letter WITH NOCHECK ADD CONSTRAINT   [FK_Letter_From' +
        'Organizations1] FOREIGN KEY ( [ToOrgID] ) REFERENCES [dbo].'
      '[FromOrganizations] ( [ID] )'
      'GO'
      
        'ALTER TABLE dbo.Letter NOCHECK CONSTRAINT FK_Letter_FromOrganiza' +
        'tions1  /*C??C? ??C? ICI? ??IC? ??? I? A?I?*/'
      'GO'
      ''
      ''
      
        'if not exists (select * from sysobjects where name='#39'FK_ParaphTem' +
        'plate_Users'#39')'
      
        'ALTER TABLE ParaphTemplate WITH NOCHECK ADD CONSTRAINT   [FK_Par' +
        'aphTemplate_Users] FOREIGN KEY ( [UserID] ) REFERENCES [dbo].[Us' +
        'ers] ( [Id] '
      ')'
      'GO'
      ' '
      
        'if not exists (select * from sysobjects where name='#39'FK_PhoneGrou' +
        'p_Users'#39')'
      
        'ALTER TABLE PhoneGroup WITH NOCHECK ADD CONSTRAINT   [FK_PhoneGr' +
        'oup_Users] FOREIGN KEY ( [UsersID] ) REFERENCES [dbo].[Users] ( ' +
        '[Id] )'
      'GO'
      ' '
      ''
      ' '
      ''
      
        'if not exists (select * from sysobjects where name='#39'FK_Letter_Us' +
        'ers'#39')'
      
        'ALTER TABLE Letter WITH NOCHECK ADD CONSTRAINT   [FK_Letter_User' +
        's] FOREIGN KEY ( [UserID] ) REFERENCES [dbo].[Users] ( [Id] )'
      'GO'
      ''
      
        'if not exists (select * from sysobjects where name='#39'FK_Phone_Use' +
        'rs'#39')'
      
        'ALTER TABLE Phone WITH NOCHECK ADD CONSTRAINT   [FK_Phone_Users]' +
        ' FOREIGN KEY ( [UsersID] ) REFERENCES [dbo].[Users] ( [Id] )'
      'GO'
      ' '
      
        'if not exists (select * from sysobjects where name='#39'FK_Recommite' +
        'Data_ReCommites'#39')'
      
        'ALTER TABLE RecommiteData WITH NOCHECK ADD CONSTRAINT   [FK_Reco' +
        'mmiteData_ReCommites] FOREIGN KEY ( [RecommiteID] ) REFERENCES [' +
        'dbo].'
      '[ReCommites] ( [RecommiteID] )'
      'GO'
      ''
      
        'if not exists (select * from sysobjects where name='#39'FK_LetterRel' +
        'ation_Letter'#39')'
      
        'ALTER TABLE LetterRelation WITH NOCHECK ADD CONSTRAINT   [FK_Let' +
        'terRelation_Letter] FOREIGN KEY ( [MainLetterID] ) REFERENCES [d' +
        'bo].[Letter] ( '
      '[LetterID] )'
      'GO'
      ' '
      
        'if not exists (select * from sysobjects where name='#39'FK_LetterRel' +
        'ation_Letter1'#39')'
      
        'ALTER TABLE LetterRelation WITH NOCHECK ADD CONSTRAINT   [FK_Let' +
        'terRelation_Letter1] FOREIGN KEY ( [MainLetterID] ) REFERENCES [' +
        'dbo].[Letter] ( '
      '[LetterID] )'
      'GO'
      ''
      
        'if not exists (select * from sysobjects where name='#39'FK_Secretari' +
        'ats_ArchiveCenter'#39')'
      
        'ALTER TABLE Secretariats WITH NOCHECK ADD CONSTRAINT   [FK_Secre' +
        'tariats_ArchiveCenter] FOREIGN KEY ( [ArchiveCenterID] ) REFEREN' +
        'CES [dbo].'
      '[ArchiveCenter] ( [ArchiveCenterID] )'
      'GO'
      ''
      
        'if not exists (select * from sysobjects where name='#39'FK_FollowUp_' +
        'Letter'#39')'
      
        'ALTER TABLE FollowUp WITH NOCHECK ADD CONSTRAINT   [FK_FollowUp_' +
        'Letter] FOREIGN KEY ( [Letterid] ) REFERENCES [dbo].[Letter] ( [' +
        'LetterID] )'
      'GO'
      'ALTER TABLE dbo.FollowUp NOCHECK CONSTRAINT FK_FollowUp_Letter'
      'GO'
      ''
      ''
      
        'if not exists (select * from sysobjects where name='#39'FK_UserAccAr' +
        'chive_Users'#39')'
      
        'ALTER TABLE UserAccArchive WITH NOCHECK ADD CONSTRAINT   [FK_Use' +
        'rAccArchive_Users] FOREIGN KEY ( [UserID] ) REFERENCES [dbo].[Us' +
        'ers] ( [Id] )'
      'GO'
      ''
      
        'if not exists (select * from sysobjects where name='#39'FK_ReCommite' +
        's_Letter'#39')'
      
        'ALTER TABLE ReCommites WITH NOCHECK ADD CONSTRAINT   [FK_ReCommi' +
        'tes_Letter] FOREIGN KEY ( [LetterID] ) REFERENCES [dbo].[Letter]' +
        ' ( [LetterID] '
      ')'
      'GO'
      ''
      
        'if not exists (select * from sysobjects where name='#39'FK_Users_Use' +
        'rSign'#39')'
      
        'ALTER TABLE dbo.Users WITH NOCHECK ADD CONSTRAINT  FK_Users_User' +
        'Sign FOREIGN KEY (Id ) REFERENCES dbo.UserSign (UserID)'
      'GO'
      'ALTER TABLE dbo.Users NOCHECK CONSTRAINT FK_Users_UserSign'
      'GO'
      ''
      
        'if not exists (select * from sysobjects where name='#39'FK_UserTempl' +
        'ateGroup_Users'#39')'
      
        'ALTER TABLE dbo.UserTemplateGroup WITH NOCHECK ADD CONSTRAINT FK' +
        '_UserTemplateGroup_Users FOREIGN KEY(UserID) REFERENCES dbo.User' +
        's(Id)'
      'GO'
      ''
      ''
      
        'if not exists (select * from sysobjects where name='#39'FK_Letter_Le' +
        'tter'#39')'
      
        'ALTER TABLE dbo.Letter WITH NOCHECK ADD CONSTRAINT FK_Letter_Let' +
        'ter FOREIGN KEY (SentLetterID) REFERENCES dbo.Letter (LetterID)'
      'GO'
      
        'if not exists (select * from sysobjects where name='#39'FK_RelatedSe' +
        'cretariats_Secretariats'#39')'
      
        'ALTER TABLE dbo.RelatedSecretariats WITH NOCHECK ADD CONSTRAINT ' +
        'FK_RelatedSecretariats_Secretariats FOREIGN KEY (DestinationSecI' +
        'D) '
      'REFERENCES dbo.Secretariats(SecID)'
      'GO'
      
        'if not exists (select * from sysobjects where name='#39'FK_UserMessa' +
        'ge_Users'#39')'
      
        'ALTER TABLE dbo.UserMessage WITH NOCHECK ADD CONSTRAINT FK_UserM' +
        'essage_Users FOREIGN KEY (To_) REFERENCES dbo.Users (Id)'
      'GO'
      
        'if not exists (select * from sysobjects where name='#39'FK_UserMessa' +
        'ge_Users1'#39')'
      
        'ALTER TABLE dbo.UserMessage WITH NOCHECK ADD CONSTRAINT FK_UserM' +
        'essage_Users1 FOREIGN KEY (From_) REFERENCES dbo.Users(Id)'
      'GO'
      
        'if not exists (select * from sysobjects where name='#39'FK_WorkGroup' +
        '_Users'#39')'
      
        'ALTER TABLE dbo.WorkGroup WITH NOCHECK ADD CONSTRAINT FK_WorkGro' +
        'up_Users FOREIGN KEY(UserID) REFERENCES dbo.Users(Id)'
      'GO'
      
        'if not exists (select * from sysobjects where name='#39'FK_WorkGroup' +
        'Org_WorkGroup'#39')'
      
        'ALTER TABLE dbo.WorkGroupOrg WITH NOCHECK ADD CONSTRAINT FK_Work' +
        'GroupOrg_WorkGroup FOREIGN KEY(WorkGroupID) REFERENCES '
      'dbo.WorkGroup(WorkGroupID)'
      'GO'
      
        'if not exists (select * from sysobjects where name='#39'FK_WorkGroup' +
        'Org_FromOrganizations'#39')'
      
        'ALTER TABLE dbo.WorkGroupOrg WITH NOCHECK ADD CONSTRAINT FK_Work' +
        'GroupOrg_FromOrganizations FOREIGN KEY(FromOrgID) REFERENCES '
      'dbo.FromOrganizations(ID)'
      'GO'
      ''
      'Exec sp_SetForeinKey 0'
      'GO'
      '')
    ParentBiDiMode = False
    ReadOnly = True
    TabOrder = 10
  end
  object ADOCommand: TADOCommand
    CommandTimeout = 3000
    Connection = dm.YeganehConnection
    Parameters = <>
    Left = 304
    Top = 16
  end
  object Users: TADOTable
    Connection = dm.YeganehConnection
    CursorType = ctStatic
    TableName = 'Users'
    Left = 157
    Top = 68
    object UsersId: TAutoIncField
      FieldName = 'Id'
      ReadOnly = True
    end
    object UsersTitle: TWideStringField
      Alignment = taRightJustify
      FieldName = 'Title'
      Size = 50
    end
    object UsersUserName: TWideStringField
      Alignment = taRightJustify
      FieldName = 'UserName'
      Size = 50
    end
    object UsersPassWord: TWideStringField
      Alignment = taRightJustify
      DisplayWidth = 100
      FieldName = 'PassWord'
      Size = 100
    end
    object UsersAccessID: TWordField
      FieldName = 'AccessID'
    end
    object UsersDefualtSecretariatID: TWordField
      FieldName = 'DefualtSecretariatID'
    end
    object UsersIsSecretariantStaffer: TBooleanField
      Alignment = taRightJustify
      FieldName = 'IsSecretariantStaffer'
    end
    object UsersFromOrgID: TIntegerField
      FieldName = 'FromOrgID'
    end
    object UsersKartableGridInfo: TBlobField
      Alignment = taRightJustify
      FieldName = 'KartableGridInfo'
    end
    object UsersDabirGridInfo: TBlobField
      Alignment = taRightJustify
      FieldName = 'DabirGridInfo'
    end
    object UsersBeginActiveDate: TStringField
      Alignment = taRightJustify
      FieldName = 'BeginActiveDate'
      FixedChar = True
      Size = 10
    end
    object UsersEndActiveDate: TStringField
      Alignment = taRightJustify
      FieldName = 'EndActiveDate'
      FixedChar = True
      Size = 10
    end
    object UsersAlternativeUserID: TIntegerField
      FieldName = 'AlternativeUserID'
    end
    object UsersSecondOrgID: TIntegerField
      FieldName = 'SecondOrgID'
    end
    object UsersAlternativebeginDate: TStringField
      Alignment = taRightJustify
      FieldName = 'AlternativebeginDate'
      FixedChar = True
      Size = 10
    end
    object UsersAlternativeEndDate: TStringField
      Alignment = taRightJustify
      FieldName = 'AlternativeEndDate'
      FixedChar = True
      Size = 10
    end
    object UsersHasSecureLetterAccess: TBooleanField
      Alignment = taRightJustify
      FieldName = 'HasSecureLetterAccess'
    end
    object UsersEmail: TWideStringField
      FieldName = 'Email'
      Size = 100
    end
  end
end
