object Dm: TDm
  OldCreateOrder = False
  OnCreate = DataModuleCreate
  Left = 422
  Top = 122
  Height = 728
  Width = 1280
  object DRFromOrganizations: TDataSource
    Left = 932
    Top = 432
  end
  object Urgenceis: TADOTable
    Connection = YeganehConnection
    CursorType = ctStatic
    TableName = 'Urgenceis'
    Left = 356
    Top = 395
    object UrgenceisID: TSmallintField
      FieldName = 'ID'
    end
    object UrgenceisTitle: TWideStringField
      Alignment = taRightJustify
      FieldName = 'Title'
      Size = 50
    end
  end
  object DToOrganizations: TDataSource
    DataSet = Toorganizations
    Left = 731
    Top = 188
  end
  object Classifications: TADOTable
    Connection = YeganehConnection
    CursorType = ctStatic
    TableName = 'Classifications'
    Left = 873
    Top = 243
    object ClassificationsID: TWordField
      FieldName = 'ID'
    end
    object ClassificationsTitle: TWideStringField
      Alignment = taRightJustify
      FieldName = 'Title'
      Size = 50
    end
  end
  object DRUrgenceis: TDataSource
    Left = 860
    Top = 446
  end
  object DRClassifications: TDataSource
    Left = 878
    Top = 456
  end
  object DRReceiveTypes: TDataSource
    DataSet = ReceiveTypes
    Left = 189
    Top = 448
  end
  object ReceiveTypes: TADOTable
    Connection = YeganehConnection
    CursorType = ctStatic
    TableName = 'ReceiveTypes'
    Left = 197
    Top = 395
    object ReceiveTypesID: TWordField
      FieldName = 'ID'
    end
    object ReceiveTypesTitle: TWideStringField
      Alignment = taRightJustify
      FieldName = 'Title'
      Size = 50
    end
  end
  object FromOrganizations_old: TADODataSet
    Connection = YeganehConnection
    CursorType = ctStatic
    CommandText = 
      'SELECT * FROM FromOrganizations'#13#10'where IsInnerOrg=1 and isactive' +
      '=1'#13#10'order by title'
    Parameters = <>
    Left = 46
    Top = 459
    object FromOrganizations_oldID: TIntegerField
      FieldName = 'ID'
    end
    object FromOrganizations_oldTitle: TWideStringField
      Alignment = taRightJustify
      FieldName = 'Title'
      Size = 100
    end
    object FromOrganizations_oldParentID: TIntegerField
      FieldName = 'ParentID'
    end
    object FromOrganizations_oldPhone: TWideStringField
      Alignment = taRightJustify
      FieldName = 'Phone'
      Size = 30
    end
    object FromOrganizations_oldFax: TWideStringField
      Alignment = taRightJustify
      FieldName = 'Fax'
      Size = 30
    end
    object FromOrganizations_oldEmail: TWideStringField
      Alignment = taRightJustify
      FieldName = 'Email'
      Size = 30
    end
    object FromOrganizations_oldResponsibleStaffer: TWideStringField
      Alignment = taRightJustify
      FieldName = 'ResponsibleStaffer'
      Size = 50
    end
    object FromOrganizations_oldIsActive: TBooleanField
      Alignment = taRightJustify
      FieldName = 'IsActive'
    end
    object FromOrganizations_oldPreCode: TWideStringField
      Alignment = taRightJustify
      FieldName = 'PreCode'
      Size = 50
    end
    object FromOrganizations_oldIsInnerOrg: TBooleanField
      Alignment = taRightJustify
      FieldName = 'IsInnerOrg'
    end
    object FromOrganizations_oldCode: TWideStringField
      Alignment = taRightJustify
      FieldName = 'Code'
      Size = 50
    end
  end
  object DSigner: TDataSource
    DataSet = Signers
    Left = 929
    Top = 366
  end
  object Signers: TADODataSet
    Connection = YeganehConnection
    CursorType = ctStatic
    CommandText = 'SELECT * FROM Fromorganizations'#13#10'where IsInnerOrg=1'
    Parameters = <>
    Left = 801
    Top = 363
    object SignersID: TIntegerField
      FieldName = 'ID'
    end
    object SignersTitle: TWideStringField
      Alignment = taRightJustify
      FieldName = 'Title'
      Size = 100
    end
    object SignersParentID: TIntegerField
      FieldName = 'ParentID'
    end
    object SignersPhone: TWideStringField
      FieldName = 'Phone'
      Size = 30
    end
    object SignersFax: TWideStringField
      FieldName = 'Fax'
      Size = 30
    end
    object SignersEmail: TWideStringField
      FieldName = 'Email'
      Size = 30
    end
    object SignersResponsibleStaffer: TWideStringField
      FieldName = 'ResponsibleStaffer'
      Size = 50
    end
    object SignersIsActive: TBooleanField
      FieldName = 'IsActive'
    end
    object SignersPreCode: TWideStringField
      FieldName = 'PreCode'
    end
    object SignersIsInnerOrg: TBooleanField
      FieldName = 'IsInnerOrg'
    end
  end
  object DCommon: TDataSource
    AutoEdit = False
    Left = 927
    Top = 486
  end
  object Accesses: TADOTable
    Connection = YeganehConnection
    CursorType = ctStatic
    IndexFieldNames = 'ID'
    MasterFields = 'AccessID'
    MasterSource = Dusers
    TableName = 'Accesses'
    Left = 70
    Top = 283
    object AccessesID: TWordField
      FieldName = 'ID'
    end
    object AccessesTitle: TWideStringField
      FieldName = 'Title'
      Size = 50
    end
  end
  object Users: TADOTable
    Connection = YeganehConnection
    CursorType = ctStatic
    BeforeInsert = UsersBeforeInsert
    TableName = 'Users'
    Left = 25
    Top = 283
    object UsersId: TWordField
      FieldName = 'Id'
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
      FieldName = 'PassWord'
      Size = 50
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
    object UsersFromOrgTitle: TWideStringField
      Alignment = taRightJustify
      FieldKind = fkLookup
      FieldName = 'FromOrgTitle'
      LookupDataSet = FromOrganizations_old
      LookupKeyFields = 'ID'
      LookupResultField = 'Title'
      KeyFields = 'FromOrgID'
      Lookup = True
    end
    object UsersDefaultSec: TWideStringField
      Alignment = taRightJustify
      FieldKind = fkLookup
      FieldName = 'DefaultSec'
      LookupDataSet = UserSecs
      LookupKeyFields = 'SecId'
      LookupResultField = 'SecTitle'
      KeyFields = 'DefualtSecretariatID'
      Lookup = True
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
    object UsersEmail: TWideStringField
      Alignment = taRightJustify
      FieldName = 'Email'
      Size = 100
    end
    object UsersAlternativeUserID: TIntegerField
      FieldName = 'AlternativeUserID'
    end
    object UsersAlternativeEndDate: TStringField
      FieldName = 'AlternativeEndDate'
      FixedChar = True
      Size = 10
    end
    object UsersAlternativebeginDate: TStringField
      FieldName = 'AlternativebeginDate'
      FixedChar = True
      Size = 10
    end
    object UsersHasSecureLetterAccess: TBooleanField
      FieldName = 'HasSecureLetterAccess'
    end
    object UsersSecondOrgID: TIntegerField
      FieldName = 'SecondOrgID'
    end
    object UserseCartableGridInfo: TStringField
      FieldName = 'eCartableGridInfo'
      Size = 500
    end
    object UserseCartableTheme: TStringField
      FieldName = 'eCartableTheme'
      Size = 50
    end
    object UsersActive: TBooleanField
      FieldName = 'Active'
    end
    object UsersCanViewSecureRecommite: TBooleanField
      FieldName = 'CanViewSecureRecommite'
    end
    object UsersGroupID: TIntegerField
      FieldName = 'GroupID'
    end
    object UsersCanRecommiteWithOtherOrg: TBooleanField
      FieldName = 'CanRecommiteWithOtherOrg'
    end
    object Usersiscartableuser: TBooleanField
      FieldName = 'iscartableuser'
    end
  end
  object YeganehConnection: TADOConnection
    CommandTimeout = 90000
    ConnectionTimeout = 30
    LoginPrompt = False
    Provider = 'SQLOLEDB.1'
    Left = 40
    Top = 8
  end
  object DActions: TDataSource
    DataSet = Actions
    Left = 252
    Top = 334
  end
  object DApplicationForms: TDataSource
    Left = 907
    Top = 462
  end
  object UserSettings: TADODataSet
    Connection = YeganehConnection
    CommandText = 'select * from Settings'#13#10'where userid= :UID'
    Parameters = <
      item
        Name = 'UID'
        DataType = ftWord
        Precision = 3
        Size = 1
        Value = Null
      end>
    Left = 718
    Top = 299
    object UserSettingsUserID: TIntegerField
      FieldName = 'UserID'
    end
    object UserSettingsVariableId: TIntegerField
      FieldName = 'VariableId'
    end
    object UserSettingsValue: TWideStringField
      FieldName = 'Value'
      Size = 255
    end
  end
  object Files: TADOTable
    Connection = YeganehConnection
    CursorType = ctStatic
    IndexFieldNames = 'SubjectId'
    MasterFields = 'ID'
    MasterSource = DSubjects
    TableName = 'Files'
    Left = 944
    Top = 291
    object FilesCommode: TWideStringField
      FieldName = 'Commode'
      Size = 50
    end
    object FilesRow: TWideStringField
      FieldName = 'Row'
      Size = 10
    end
    object FilesUserID: TWordField
      FieldName = 'UserID'
    end
    object FilesSubjectId: TIntegerField
      FieldName = 'SubjectId'
    end
    object FilesTitle: TWideStringField
      FieldName = 'Title'
      Size = 100
    end
    object FilesSecretariatID: TWordField
      FieldName = 'SecretariatID'
    end
    object FilesID: TWordField
      FieldName = 'ID'
    end
  end
  object DFiles: TDataSource
    DataSet = Files
    Left = 992
    Top = 294
  end
  object DSubjects: TDataSource
    Left = 906
    Top = 432
  end
  object DAccesses: TDataSource
    DataSet = Accesses
    Left = 102
    Top = 334
  end
  object DActionsAccess: TDataSource
    DataSet = ActionsAccess
    Left = 328
    Top = 334
  end
  object Dusers: TDataSource
    DataSet = Users
    Left = 25
    Top = 334
  end
  object Toorganizations: TADODataSet
    Connection = YeganehConnection
    CursorType = ctStatic
    CommandText = 'SELECT * FROM FromOrganizations'
    Parameters = <>
    Left = 747
    Top = 129
    object ToorganizationsID: TIntegerField
      FieldName = 'ID'
    end
    object ToorganizationsTitle: TWideStringField
      Alignment = taRightJustify
      FieldName = 'Title'
      Size = 100
    end
    object ToorganizationsParentID: TIntegerField
      FieldName = 'ParentID'
    end
    object ToorganizationsPhone: TWideStringField
      Alignment = taRightJustify
      FieldName = 'Phone'
      Size = 30
    end
    object ToorganizationsFax: TWideStringField
      Alignment = taRightJustify
      FieldName = 'Fax'
      Size = 30
    end
    object ToorganizationsEmail: TWideStringField
      Alignment = taRightJustify
      FieldName = 'Email'
      Size = 30
    end
    object ToorganizationsResponsibleStaffer: TWideStringField
      Alignment = taRightJustify
      FieldName = 'ResponsibleStaffer'
      Size = 50
    end
    object ToorganizationsIsActive: TBooleanField
      Alignment = taRightJustify
      FieldName = 'IsActive'
    end
    object ToorganizationsPreCode: TWideStringField
      Alignment = taRightJustify
      FieldName = 'PreCode'
      Size = 50
    end
    object ToorganizationsIsInnerOrg: TBooleanField
      Alignment = taRightJustify
      FieldName = 'IsInnerOrg'
    end
    object ToorganizationsCode: TWideStringField
      Alignment = taRightJustify
      DisplayWidth = 50
      FieldName = 'Code'
      Size = 50
    end
  end
  object ActionsAccess: TADODataSet
    Connection = YeganehConnection
    CommandText = 
      'select ActionID, FormTag, HasAccess'#13#10' from ActionsAccess'#13#10'where ' +
      'AccessID=:AccessID'
    Parameters = <
      item
        Name = 'AccessID'
        DataType = ftWord
        Precision = 3
        Size = 1
        Value = Null
      end>
    Left = 344
    Top = 283
    object ActionsAccessActionID: TWideStringField
      FieldName = 'ActionID'
      Size = 50
    end
    object ActionsAccessFormTag: TWordField
      FieldName = 'FormTag'
    end
    object ActionsAccessHasAccess: TBooleanField
      FieldName = 'HasAccess'
    end
  end
  object DLetterHeader: TDataSource
    DataSet = LetterHeaders
    Left = 331
    Top = 518
  end
  object Fields: TADODataSet
    Connection = YeganehConnection
    CursorType = ctStatic
    CommandText = 'select * from Fields'#13#10'where TableID=:TableID'
    Parameters = <
      item
        Name = 'TableID'
        Attributes = [paSigned]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = 1
      end>
    Left = 470
    Top = 331
    object FieldsID: TAutoIncField
      FieldName = 'ID'
      ReadOnly = True
    end
    object FieldsFieldName: TWideStringField
      FieldName = 'FieldName'
      Size = 50
    end
    object FieldsTableID: TIntegerField
      FieldName = 'TableID'
    end
    object FieldsDescription: TWideStringField
      FieldName = 'Description'
      Size = 50
    end
  end
  object DFields: TDataSource
    AutoEdit = False
    DataSet = Fields
    Left = 462
    Top = 456
  end
  object DLetterTemplate: TDataSource
    DataSet = LetterTemplate
    Left = 232
    Top = 518
  end
  object LetterTemplateDoc: TADODataSet
    Connection = YeganehConnection
    CursorType = ctStatic
    CommandText = 'select *'#13#10' from LetterTemplate'#13#10'where ID=:ID'
    Parameters = <
      item
        Name = 'ID'
        Attributes = [paSigned]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = Null
      end>
    Left = 590
    Top = 323
    object LetterTemplateDocID: TAutoIncField
      FieldName = 'ID'
      ReadOnly = True
    end
    object LetterTemplateDocDocument: TBlobField
      FieldName = 'Document'
    end
    object LetterTemplateDocTitle: TWideStringField
      FieldName = 'Title'
      Size = 50
    end
  end
  object DLetterTemplateDoc: TDataSource
    DataSet = LetterTemplateDoc
    Left = 526
    Top = 454
  end
  object DLetterHeaderImage: TDataSource
    AutoEdit = False
    Left = 887
    Top = 486
  end
  object RecommiteTypes: TADOTable
    Connection = YeganehConnection
    TableName = 'RecommiteTypes'
    Left = 252
    Top = 283
    object RecommiteTypesID: TWordField
      FieldName = 'ID'
    end
    object RecommiteTypesTitle: TWideStringField
      FieldName = 'Title'
      Size = 50
    end
    object RecommiteTypesReceiveMode: TBooleanField
      FieldName = 'ReceiveMode'
    end
    object RecommiteTypesInnerOrganize: TBooleanField
      FieldName = 'InnerOrganize'
    end
  end
  object ErrorMessage: TADODataSet
    Connection = YeganehConnection
    CursorType = ctStatic
    CommandText = 
      'select * from ErrorMessage'#13#10'where :@Like like '#39'%'#39'+ ErrorMessage ' +
      ' +'#39'%'#39
    Parameters = <
      item
        Name = '@Like'
        Attributes = [paNullable]
        DataType = ftFixedChar
        NumericScale = 255
        Precision = 255
        Size = 257
        Value = Null
      end>
    Left = 147
    Top = 515
    object ErrorMessageErrorid: TLargeintField
      FieldName = 'Errorid'
      ReadOnly = True
    end
    object ErrorMessageErrorMessage: TWideStringField
      FieldName = 'ErrorMessage'
      Size = 255
    end
    object ErrorMessageErrorDate: TStringField
      FieldName = 'ErrorDate'
      Size = 10
    end
    object ErrorMessageUserCode: TIntegerField
      FieldName = 'UserCode'
    end
    object ErrorMessageFarsiMessage: TWideStringField
      FieldName = 'FarsiMessage'
      Size = 255
    end
    object ErrorMessageShowMessage: TBooleanField
      FieldName = 'ShowMessage'
    end
  end
  object ApplicationEvents: TApplicationEvents
    OnException = ApplicationEventsException
    Left = 504
    Top = 388
  end
  object LetterHeaders: TADODataSet
    Connection = YeganehConnection
    CursorType = ctStatic
    CommandText = 'select *'#13#10' from LetterHeaders'
    Parameters = <>
    Left = 275
    Top = 451
    object LetterHeadersid: TAutoIncField
      FieldName = 'id'
      ReadOnly = True
    end
    object LetterHeaderstitle: TWideStringField
      FieldName = 'title'
      Size = 50
    end
    object LetterHeadersdocument: TBlobField
      FieldName = 'document'
    end
  end
  object DSentenses: TDataSource
    DataSet = Sentenses
    Left = 645
    Top = 302
  end
  object Secretariats: TADOTable
    Connection = YeganehConnection
    CursorType = ctStatic
    TableName = 'Secretariats'
    Left = 704
    Top = 243
    object SecretariatsSecID: TIntegerField
      FieldName = 'SecID'
    end
    object SecretariatsSecTitle: TWideStringField
      DisplayWidth = 100
      FieldName = 'SecTitle'
      Size = 50
    end
    object SecretariatsPreCode: TWideStringField
      FieldName = 'PreCode'
      Size = 50
    end
    object SecretariatsArchiveCenterID: TIntegerField
      FieldName = 'ArchiveCenterID'
    end
  end
  object Sp_Inbox: TADODataSet
    Connection = YeganehConnection
    CursorType = ctStatic
    LockType = ltBatchOptimistic
    AfterScroll = Sp_InboxAfterScroll
    OnCalcFields = Sp_InboxCalcFields
    CommandText = 'sp_inbox;1'
    CommandType = cmdStoredProc
    Parameters = <
      item
        Name = '@RETURN_VALUE'
        DataType = ftInteger
        Direction = pdReturnValue
        Precision = 10
        Value = 0
      end
      item
        Name = '@SecretariatID'
        Attributes = [paNullable]
        DataType = ftInteger
        Precision = 10
        Value = 0
      end
      item
        Name = '@LetterFormat'
        Attributes = [paNullable]
        DataType = ftWord
        Precision = 3
        Value = 0
      end
      item
        Name = '@OrgID'
        Attributes = [paNullable]
        DataType = ftInteger
        Precision = 10
        Value = 0
      end
      item
        Name = '@Proceeded'
        Attributes = [paNullable]
        DataType = ftBoolean
        Value = False
      end
      item
        Name = '@Type'
        Attributes = [paNullable]
        DataType = ftWord
        Precision = 3
        Value = 0
      end
      item
        Name = '@myear'
        Attributes = [paNullable]
        DataType = ftWord
        Precision = 3
        Value = 0
      end
      item
        Name = '@date'
        Attributes = [paNullable]
        DataType = ftWord
        Precision = 3
        Value = 0
      end
      item
        Name = '@ArchiveFolderID'
        Attributes = [paNullable]
        DataType = ftInteger
        Precision = 10
        Value = 0
      end
      item
        Name = '@where'
        Attributes = [paNullable]
        DataType = ftWideString
        Size = 1000
        Value = Null
      end
      item
        Name = '@userID'
        Attributes = [paNullable]
        DataType = ftInteger
        Precision = 10
        Value = 0
      end
      item
        Name = '@Letter_Type'
        Attributes = [paNullable]
        DataType = ftInteger
        Precision = 10
        Value = 0
      end
      item
        Name = '@DeadLine'
        Attributes = [paNullable]
        DataType = ftInteger
        Precision = 10
        Value = 0
      end
      item
        Name = '@orderClause'
        Attributes = [paNullable]
        DataType = ftString
        Size = 50
        Value = Null
      end
      item
        Name = '@top'
        Attributes = [paNullable]
        DataType = ftInteger
        Precision = 10
        Value = 0
      end
      item
        Name = '@Mytoday'
        Attributes = [paNullable]
        DataType = ftString
        Size = 10
        Value = Null
      end
      item
        Name = '@WebOrWin'
        Attributes = [paNullable]
        DataType = ftString
        Size = 50
        Value = Null
      end
      item
        Name = '@NOTREAD'
        DataType = ftSmallint
        Value = 1
      end>
    Left = 120
    object Sp_InboxSubjectTitle: TStringField
      Alignment = taRightJustify
      FieldKind = fkLookup
      FieldName = 'SubjectTitle'
      LookupDataSet = Subject
      LookupKeyFields = 'SubjectID'
      LookupResultField = 'SubjectTitle'
      KeyFields = 'SubjectID'
      Lookup = True
    end
    object Sp_InboxToOrgRsponsibleStafferTitle: TWideStringField
      Alignment = taRightJustify
      FieldKind = fkLookup
      FieldName = 'ToOrgRsponsibleStafferTitle'
      LookupDataSet = Toorganizations
      LookupKeyFields = 'ID'
      LookupResultField = 'ResponsibleStaffer'
      KeyFields = 'ToOrgID'
      Size = 50
      Lookup = True
    end
    object Sp_InboxFromResponsibleStafferTitle: TWideStringField
      Alignment = taRightJustify
      FieldKind = fkLookup
      FieldName = 'FromResponsibleStafferTitle'
      LookupDataSet = FromOrganizations_old
      LookupKeyFields = 'ID'
      LookupResultField = 'ResponsibleStaffer'
      KeyFields = 'FromOrgID'
      Size = 50
      Lookup = True
    end
    object Sp_InboxToOrgTitle: TWideStringField
      Alignment = taRightJustify
      FieldKind = fkLookup
      FieldName = 'ToOrgTitle'
      LookupDataSet = Toorganizations
      LookupKeyFields = 'ID'
      LookupResultField = 'Title'
      KeyFields = 'ToOrgID'
      Size = 255
      Lookup = True
    end
    object Sp_InboxUrgencyTitle: TWideStringField
      Alignment = taRightJustify
      FieldKind = fkLookup
      FieldName = 'UrgencyTitle'
      LookupDataSet = Urgenceis
      LookupKeyFields = 'ID'
      LookupResultField = 'Title'
      KeyFields = 'UrgencyID'
      Size = 100
      Lookup = True
    end
    object Sp_InboxClassificationTitle: TWideStringField
      Alignment = taRightJustify
      FieldKind = fkLookup
      FieldName = 'ClassificationTitle'
      LookupDataSet = Classifications
      LookupKeyFields = 'ID'
      LookupResultField = 'Title'
      KeyFields = 'ClassificationID'
      Size = 100
      Lookup = True
    end
    object Sp_InboxFromOrgTitle: TWideStringField
      Alignment = taRightJustify
      FieldKind = fkLookup
      FieldName = 'FromOrgTitle'
      LookupDataSet = FromOrganizations_old
      LookupKeyFields = 'ID'
      LookupResultField = 'Title'
      KeyFields = 'FromOrgID'
      Size = 50
      Lookup = True
    end
    object Sp_InboxActionTypeTitle: TWideStringField
      FieldKind = fkLookup
      FieldName = 'ActionTypeTitle'
      LookupDataSet = ActionType
      LookupKeyFields = 'ActionTypeID'
      LookupResultField = 'ActionTypeTitle'
      KeyFields = 'ActionTypeID'
      Lookup = True
    end
    object Sp_InboxLetterID: TAutoIncField
      FieldName = 'LetterID'
      ReadOnly = True
    end
    object Sp_InboxIndicatorID: TIntegerField
      FieldName = 'IndicatorID'
    end
    object Sp_InboxMYear: TWordField
      FieldName = 'MYear'
    end
    object Sp_InboxSecretariatID: TWordField
      FieldName = 'SecretariatID'
    end
    object Sp_InboxClassificationID: TWordField
      FieldName = 'ClassificationID'
    end
    object Sp_InboxUrgencyID: TSmallintField
      FieldName = 'UrgencyID'
    end
    object Sp_InboxReceiveTypeID: TWordField
      FieldName = 'ReceiveTypeID'
    end
    object Sp_InboxUserID: TIntegerField
      FieldName = 'UserID'
    end
    object Sp_InboxOrgID: TIntegerField
      FieldName = 'OrgID'
    end
    object Sp_InboxParentId: TSmallintField
      FieldName = 'ParentId'
    end
    object Sp_InboxProceeded: TBooleanField
      FieldName = 'Proceeded'
    end
    object Sp_Inboxrecommiteid: TAutoIncField
      FieldName = 'recommiteid'
      ReadOnly = True
    end
    object Sp_Inboxid: TSmallintField
      FieldName = 'id'
    end
    object Sp_InboxIsCopy: TBooleanField
      FieldName = 'IsCopy'
    end
    object Sp_Inboxhas_Page: TBooleanField
      FieldName = 'has_Page'
      ReadOnly = True
    end
    object Sp_Inboxhas_WordPage: TBooleanField
      FieldName = 'has_WordPage'
      ReadOnly = True
    end
    object Sp_Inboxhas_file: TBooleanField
      FieldName = 'has_file'
      ReadOnly = True
    end
    object Sp_InboxActionTypeID: TWordField
      FieldName = 'ActionTypeID'
    end
    object Sp_Inboxtoorgid: TIntegerField
      FieldName = 'toorgid'
    end
    object Sp_Inboxfromorgid: TIntegerField
      FieldName = 'fromorgid'
    end
    object Sp_Inboxfinalized: TBooleanField
      FieldName = 'finalized'
    end
    object Sp_Inboxsentletterid: TIntegerField
      FieldName = 'sentletterid'
    end
    object Sp_InboxSignerID: TWideStringField
      FieldName = 'SignerID'
      Size = 50
    end
    object Sp_InboxtemplateID: TIntegerField
      FieldName = 'templateID'
    end
    object Sp_InboxheaderID: TIntegerField
      FieldName = 'headerID'
    end
    object Sp_Inboxfromstaffer: TWideStringField
      FieldName = 'fromstaffer'
      Size = 50
    end
    object Sp_InboxsendStatusID: TWordField
      FieldName = 'sendStatusID'
    end
    object Sp_InboxLastUpdate: TDateTimeField
      FieldName = 'LastUpdate'
    end
    object Sp_InboxUserTableID: TIntegerField
      FieldName = 'UserTableID'
    end
    object Sp_InboxUserRecomCount: TIntegerField
      FieldName = 'UserRecomCount'
      ReadOnly = True
    end
    object Sp_InboxIsAnswer: TBooleanField
      FieldName = 'IsAnswer'
    end
    object Sp_InboxISFollowup: TBooleanField
      FieldName = 'ISFollowup'
    end
    object Sp_InboxIsAnswerTitle: TStringField
      DisplayLabel = #1608#1590#1593#1610#1578' '#1580#1608#1575#1576#1583#1607#1610
      FieldKind = fkCalculated
      FieldName = 'IsAnswerTitle'
      Size = 15
      Calculated = True
    end
    object Sp_Inboxsubjectid: TIntegerField
      FieldName = 'subjectid'
    end
    object Sp_InboxMyTmp_ID: TAutoIncField
      FieldName = 'MyTmp_ID'
      ReadOnly = True
    end
    object Sp_InboxIsCopy_In_Dabir: TBooleanField
      FieldName = 'IsCopy_In_Dabir'
    end
    object Sp_InboxSentToDabir: TBooleanField
      FieldName = 'SentToDabir'
    end
    object Sp_InboxLetter_Type: TIntegerField
      FieldName = 'Letter_Type'
    end
    object Sp_Inboxletterformat: TIntegerField
      FieldName = 'letterformat'
    end
    object Sp_InboxIncommingNO: TStringField
      FieldName = 'IncommingNO'
      Size = 40
    end
    object Sp_InboxIncommingdate: TStringField
      FieldName = 'Incommingdate'
      Size = 10
    end
    object Sp_InboxMemo: TStringField
      FieldName = 'Memo'
      Size = 1500
    end
    object Sp_InboxTostaffer: TStringField
      FieldName = 'Tostaffer'
      Size = 150
    end
    object Sp_InboxAttachTitle: TStringField
      FieldName = 'AttachTitle'
      Size = 150
    end
    object Sp_InboxNumberOfAttachPages: TIntegerField
      FieldName = 'NumberOfAttachPages'
    end
    object Sp_InboxNumberOfPage: TIntegerField
      FieldName = 'NumberOfPage'
    end
    object Sp_InboxRetroactionNo: TStringField
      FieldName = 'RetroactionNo'
    end
    object Sp_InboxUserMemo: TStringField
      FieldName = 'UserMemo'
      Size = 255
    end
    object Sp_InboxRegistrationDate: TStringField
      FieldName = 'RegistrationDate'
      Size = 10
    end
    object Sp_InboxFollowLetterNo: TStringField
      FieldName = 'FollowLetterNo'
    end
    object Sp_InboxLetterRecommites: TStringField
      FieldName = 'LetterRecommites'
      Size = 1000
    end
    object Sp_InboxCenterNo: TStringField
      FieldName = 'CenterNo'
    end
    object Sp_InboxCenterDate: TStringField
      FieldName = 'CenterDate'
      Size = 10
    end
    object Sp_InboxregistrationTime: TStringField
      FieldName = 'registrationTime'
      Size = 6
    end
    object Sp_InboxInnerNo: TStringField
      FieldName = 'InnerNo'
      Size = 50
    end
    object Sp_InboxParaph: TStringField
      FieldName = 'Paraph'
      Size = 2000
    end
    object Sp_InboxRecommiteDate: TStringField
      FieldName = 'RecommiteDate'
      Size = 10
    end
    object Sp_InboxProceedDate: TStringField
      FieldName = 'ProceedDate'
      Size = 10
    end
    object Sp_InboxReType: TSmallintField
      FieldName = 'ReType'
    end
    object Sp_InboxRecommitTypeTitle: TStringField
      FieldName = 'RecommitTypeTitle'
      Size = 50
    end
    object Sp_InboxIsInner: TIntegerField
      FieldName = 'IsInner'
    end
    object Sp_InboxRecommiterTitle: TStringField
      FieldName = 'RecommiterTitle'
      Size = 75
    end
    object Sp_Inboxsendertitle: TStringField
      FieldName = 'sendertitle'
      Size = 100
    end
    object Sp_InboxStaffMemo: TStringField
      FieldName = 'StaffMemo'
      Size = 250
    end
    object Sp_InboxYincommingno: TStringField
      FieldName = 'Yincommingno'
      Size = 50
    end
    object Sp_InboxPreCode: TStringField
      FieldName = 'PreCode'
    end
    object Sp_InboxDeadLineDays: TIntegerField
      FieldName = 'DeadLineDays'
    end
    object Sp_InboxViewDate: TStringField
      FieldName = 'ViewDate'
      Size = 10
    end
    object Sp_InboxDeadLineDate: TStringField
      FieldName = 'DeadLineDate'
      Size = 10
    end
    object Sp_InboxChildParaph: TStringField
      FieldName = 'ChildParaph'
      Size = 300
    end
    object Sp_InboxChildOrg: TStringField
      DisplayWidth = 20
      FieldName = 'ChildOrg'
      Size = 200
    end
    object Sp_InboxErja_Or_Answer_Date: TStringField
      FieldName = 'Erja_Or_Answer_Date'
      Size = 10
    end
    object Sp_InboxColorFlag: TStringField
      FieldName = 'ColorFlag'
    end
    object Sp_InboxIsSecure: TBooleanField
      FieldName = 'IsSecure'
    end
    object Sp_InboxMemoAndRecomUserCount: TStringField
      FieldName = 'MemoAndRecomUserCount'
      Size = 200
    end
    object Sp_InboxHas_Sign: TBooleanField
      FieldName = 'Has_Sign'
    end
    object Sp_InboxSecretariatTitle: TStringField
      FieldKind = fkLookup
      FieldName = 'SecretariatTitle'
      LookupDataSet = Secretariats
      LookupKeyFields = 'SecID'
      LookupResultField = 'SecTitle'
      KeyFields = 'SecretariatID'
      Size = 30
      Lookup = True
    end
    object Sp_InboxinnerNo2: TStringField
      FieldName = 'innerNo2'
      Size = 500
    end
    object Sp_InboxRecommiteTime: TStringField
      FieldName = 'RecommiteTime'
      Size = 5
    end
    object Sp_InboxHasLetterForms: TBooleanField
      FieldName = 'HasLetterForms'
    end
    object Sp_Inboxanjam_shod_status: TIntegerField
      FieldName = 'anjam_shod_status'
    end
  end
  object Sentenses: TADOTable
    Connection = YeganehConnection
    CursorType = ctStatic
    TableName = 'Sentenses'
    Left = 629
    Top = 243
    object SentensesID: TAutoIncField
      FieldName = 'ID'
      ReadOnly = True
    end
    object SentensesSentenseName: TWideStringField
      FieldName = 'SentenseName'
      Size = 50
    end
    object SentensesSentensValue: TWideStringField
      FieldName = 'SentensValue'
      Size = 255
    end
  end
  object UserSecs: TADODataSet
    Connection = YeganehConnection
    CursorType = ctStatic
    AfterInsert = UserSecsAfterInsert
    CommandText = 'select * '#13#10'from UserSecretariats where userid=:UserID'
    Parameters = <
      item
        Name = 'UserID'
        Attributes = [paSigned]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = 17
      end>
    Left = 422
    Top = 395
    object UserSecsUserId: TIntegerField
      DisplayWidth = 12
      FieldName = 'UserId'
    end
    object UserSecsSecId: TIntegerField
      DisplayWidth = 7
      FieldName = 'SecId'
    end
    object UserSecsSecTitle: TWideStringField
      DisplayWidth = 1200
      FieldKind = fkLookup
      FieldName = 'SecTitle'
      LookupDataSet = Secretariats
      LookupKeyFields = 'SecID'
      LookupResultField = 'SecTitle'
      KeyFields = 'SecId'
      Size = 100
      Lookup = True
    end
  end
  object Actions: TADOTable
    Connection = YeganehConnection
    CursorType = ctStatic
    IndexFieldNames = 'FormTag'
    TableName = 'Actions'
    Left = 188
    Top = 283
  end
  object WordApplication: TWordApplication
    AutoConnect = False
    ConnectKind = ckRunningOrNew
    AutoQuit = False
    OnDocumentOpen = WordApplicationDocumentOpen
    OnDocumentBeforeClose = WordApplicationDocumentBeforeClose
    Left = 560
    Top = 432
  end
  object Timer_SaveWord: TTimer
    Enabled = False
    Interval = 200
    OnTimer = Timer_SaveWordTimer
    Left = 960
    Top = 190
  end
  object Get_LetterWordFile: TADOStoredProc
    Connection = YeganehConnection
    CursorType = ctStatic
    ProcedureName = 'Get_LetterWordFile'
    Parameters = <
      item
        Name = '@RETURN_VALUE'
        DataType = ftInteger
        Direction = pdReturnValue
        Precision = 10
        Value = 0
      end
      item
        Name = '@LetterID'
        Attributes = [paNullable]
        DataType = ftInteger
        Precision = 10
        Value = Null
      end>
    Left = 856
    Top = 131
    object Get_LetterWordFileLetterDataID: TAutoIncField
      FieldName = 'LetterDataID'
      ReadOnly = True
    end
    object Get_LetterWordFileLetterID: TIntegerField
      FieldName = 'LetterID'
    end
    object Get_LetterWordFilePageNumber: TWordField
      FieldName = 'PageNumber'
    end
    object Get_LetterWordFileImage: TBlobField
      FieldName = 'Image'
    end
    object Get_LetterWordFileextention: TWordField
      FieldName = 'extention'
    end
    object Get_LetterWordFileDescription: TStringField
      FieldName = 'Description'
      Size = 200
    end
    object Get_LetterWordFileLastUpdate: TTntDateTimeField
      FieldName = 'LastUpdate'
    end
  end
  object UserShortCut: TADODataSet
    Connection = YeganehConnection
    CursorType = ctStatic
    OnCalcFields = UserShortCutCalcFields
    CommandText = ' select * '#13#10' from UserShortCut where userid=:UserID'
    Parameters = <
      item
        Name = 'UserID'
        Attributes = [paSigned]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = 0
      end>
    Left = 785
    Top = 307
    object UserShortCutUserID: TIntegerField
      FieldName = 'UserID'
    end
    object UserShortCutkeyText: TWideStringField
      FieldName = 'keyText'
      Size = 100
    end
    object UserShortCutKeytitle: TWideStringField
      FieldKind = fkCalculated
      FieldName = 'Keytitle'
      Calculated = True
    end
    object UserShortCutaltKey: TStringField
      FieldName = 'altKey'
      FixedChar = True
      Size = 1
    end
    object UserShortCutuserShortCutID: TAutoIncField
      FieldName = 'userShortCutID'
      ReadOnly = True
    end
  end
  object LetterTemplate: TADODataSet
    Connection = YeganehConnection
    CursorType = ctStatic
    CommandText = 
      'select ID,Title, TemplateGroupID'#13#10' from LetterTemplate'#13#10'Where ID' +
      '>0'#13#10'and TemplateGroupID=:@TemplateGroupID'
    Parameters = <
      item
        Name = '@TemplateGroupID'
        Attributes = [paSigned]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = 1
      end>
    Left = 176
    Top = 339
    object LetterTemplateID: TAutoIncField
      FieldName = 'ID'
      ReadOnly = True
    end
    object LetterTemplateTitle: TWideStringField
      FieldName = 'Title'
      Size = 50
    end
    object LetterTemplateTemplateGroupID: TIntegerField
      FieldName = 'TemplateGroupID'
    end
    object LetterTemplateTemplateGroupTitle: TWideStringField
      FieldKind = fkLookup
      FieldName = 'TemplateGroupTitle'
      LookupDataSet = TemplateGroup
      LookupKeyFields = 'TemplateGroupID'
      LookupResultField = 'TemplateGroupTitle'
      KeyFields = 'TemplateGroupID'
      Lookup = True
    end
  end
  object TemplateGroup: TADOTable
    Connection = YeganehConnection
    CursorType = ctStatic
    TableName = 'TemplateGroup'
    Left = 787
    Top = 243
    object TemplateGroupTemplateGroupID: TAutoIncField
      FieldName = 'TemplateGroupID'
      ReadOnly = True
    end
    object TemplateGroupTemplateGroupTitle: TWideStringField
      FieldName = 'TemplateGroupTitle'
      Size = 50
    end
  end
  object DTemplateGroup: TDataSource
    DataSet = TemplateGroup
    Left = 955
    Top = 134
  end
  object UserTemplateGroup: TADODataSet
    Connection = YeganehConnection
    CursorType = ctStatic
    CommandText = 'select * '#13#10'from UserTemplateGroup '#13#10'where userid=:UserID'
    Parameters = <
      item
        Name = 'UserID'
        Attributes = [paSigned]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = 0
      end>
    Left = 376
    Top = 459
    object UserTemplateGroupUserTemplateGroupID: TAutoIncField
      FieldName = 'UserTemplateGroupID'
      ReadOnly = True
    end
    object UserTemplateGroupTemplateGroupID: TIntegerField
      FieldName = 'TemplateGroupID'
    end
    object UserTemplateGroupUserID: TIntegerField
      FieldName = 'UserID'
    end
    object UserTemplateGroupTemplateGroupTitle: TWideStringField
      FieldKind = fkLookup
      FieldName = 'TemplateGroupTitle'
      LookupDataSet = TemplateGroup
      LookupKeyFields = 'TemplateGroupID'
      LookupResultField = 'TemplateGroupTitle'
      KeyFields = 'TemplateGroupID'
      Lookup = True
    end
  end
  object DUserTemplateGroup: TDataSource
    DataSet = UserTemplateGroup
    Left = 416
    Top = 526
  end
  object LetterImages: TImageList
    Left = 864
    Top = 366
    Bitmap = {
      494C01012B002C00040010001000FFFFFFFFFF10FFFFFFFFFFFFFFFF424D3600
      000000000000360000002800000040000000B0000000010020000000000000B0
      0000000000000000000000000000000000000000000000000000FFFFFF000000
      0000CEBDBD007B4A4A00CEBDBD00BDBDBD007B7B7B007B7B84007B7B7B007B7B
      7B007B7B7B0073737300C6C6C6000000000000000000000000000000000052C6
      EF005AC6EF005ACEEF005ACEEF005ACEEF005ACEEF005ACEEF005ACEEF005ACE
      EF0052C6EF0000000000000000000000000000000000B5DEBD0029943100217B
      21008C8C8C00A5ADA500ADB5AD00BDC6C600C6BDC600ADADAD00A59CA5005A6B
      5A00187B2100217B290029843100BDD6BD000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000E7DEDE00AD848400CEBD
      BD009C737300CE9C9C00B58C8C006B6B6B000000000000000000DE9C7300FFF7
      F70000000000EFEFEF008C8C8C000000000000000000000000000000000052C6
      EF009CF7F70094D6DE0094CED60094CED60094CED6008CCED6008CCED600A5F7
      F70052C6EF00000000000000000000000000ADE7BD0018A5390010B5310018AD
      39009C9C9C0029C64A0021C64A0094DEAD0000000000FFFFFF00EFE7EF00739C
      7B0010BD420039CE630042C66300107318000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FFFFFF00BD9C9C00C69C9C00A56B
      6B00DEADAD00E7C6C600DEBDBD00736B6B0000000000E7C6AD009C310000C684
      630000000000E7E7E700949494000000000000000000000000000000000052C6
      EF008CF7F70084D6DE0084CED60084CED60084CED60084CED60084CED60094F7
      F70052C6EF0000000000000000000000000031BD5A0018B5390018BD390021B5
      3900A59CA50008B5210000B529007BC68C00F7E7EF00FFFFFF00FFFFFF007BA5
      840010C6420039CE630052D67B00007310000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000B5949400DEBDBD00EFD6
      D600E7CECE00E7CECE00F7E7E7007B7B8400FFF7EF00B5521000AD4A1000A539
      0000DEBDAD00E7EFEF009494940000000000EFEFEF00A59C9400A594940052C6
      EF0073F7F7007BCEDE007BCED60073CED60073CED60073CED60073CED6007BF7
      F7004AC6EF00A5949400A59C9400EFEFEF0031CE630018B5310018B5310018AD
      3900BDB5BD00009C000000AD080063B57300D6CED600DEDEDE00FFFFFF008CB5
      940010BD390039CE63004AD67300087310000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000C6ADAD009C636300D6B5B500E7CE
      CE00EFD6D600D6B5B500EFD6D600848C9400D6845200AD420000F7DECE00BD52
      1000B5521000D6DEDE009C9C9C00000000009C948C00C6B5B500847373004273
      840063C6CE006BC6CE006BC6CE006BC6CE006BC6CE006BC6CE006BC6CE006BC6
      CE0042738C00736B6300C6B5B5009C948C0031CE630010B5310010B5310018AD
      3100DED6DE0094BD8C0073B57B0094A59400CEB5C600DECEDE00FFEFFF0094B5
      9C0008AD310039BD5A004AD67300087310000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000AD848400FFEFEF00E7CECE00EFDE
      DE00BD949400EFD6D600FFF7FF00AD7B5A00A5310000CEA58C00EFF7FF00CEAD
      9C00B5420000AD6331009CA5AD00000000009C948C00E7D6D600BDB5AD009C8C
      8C009C8C8C009C8C8C009C8C8C009C8C8C009C8C8C009C8C8C009C8C8C009C8C
      8C009C8C8C00B5ADA500E7D6D6009C948C0031CE630010AD290010AD290018AD
      310042A5520052A5630052A563004A9C5A00399C520039944A00318C4A002994
      420018A5390021AD420029CE5200087310000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000C69C9C00D6BDBD00E7C6C600F7E7
      E700A57B7B00E7D6D600F7EFEF00C67B4A00C68C5A00A59CA5008C848400ADB5
      B500CE946B00B5420000C6947300FFFFFF00A5949400EFE7E700EFE7E700EFE7
      E700EFE7E700EFE7E700EFE7E700EFE7E700EFE7E700EFE7E700EFE7E700EFE7
      E700EFE7E700EFE7E700EFE7E700A594940031CE630010AD210010AD210008AD
      210000B5180000B5180000B5210000B5210008BD290008BD290008BD310010C6
      390018C6420021C64A0029C65200087310000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FFF7F700BD8C8C00E7D6D600EFD6
      D600DECECE00B5848400D6B5B500EFCEC600F7E7E700EFD6DE00C69C9C00CEBD
      BD00DED6DE00CE732100BD4A0000EFDECE00A59C9400F7F7F700F7F7F700CEC6
      C600BDB5B500BDB5B500B5B5B500B5B5B500B5B5B500B5B5B500B5B5AD00B5AD
      AD00C6BDBD00F7F7F700F7F7F700A59C940031CE630008AD180018AD31004AA5
      5A0042A5520042A5520042A5520042A5520042A5520042A5520042A55A0042A5
      5A004AA5630029B5520021C64A00087310000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000F7E7E700DEBDBD00F7EFEF00E7CE
      CE00EFD6D600F7E7E700EFDEDE00EFD6D600CEADAD00C69C9C00A5737300946B
      6B009C6B6B00CEBDBD00CE6B1000D6630000A59C9400F7F7F700D6D6D6006B6B
      630052524A0052524A00524A4A00524A4A00524A4A00524A4A00524A4A00524A
      4A0063635A00CECECE00F7F7F700A59C940031CE630000A5100031AD4200FFDE
      FF00FFE7F700FFE7F700FFE7F700F7E7F700F7E7EF00F7DEEF00EFDEE700EFDE
      E700EFC6E70042AD5A0018C64A00087310000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FFFFFF00DEC6C600DEBDBD00D6B5
      B500E7D6D600E7C6C600D6B5B500F7DEDE00AD7B7B00B58C8C00BD8C8C00D6AD
      AD00EFCECE00A57B8400E7BDA500D66B0000AD9C9C00F7F7F700D6CECE005A5A
      5A00424242004242420042424200424242004242420042424200424242004242
      42005A525200C6C6C600F7F7F700AD9C9C0031CE630000A5100029A53900F7DE
      F700F7F7F700D6D6D600CECECE00CED6D600CECECE00CECECE00CECECE00E7E7
      E700DECEDE0042AD5A0018C64200087310000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000FFFFFF00FFFFFF00E7CE
      CE00E7CECE00CEA5A500D6B5B500CEADAD009C6B6B00D6BDBD00EFDEDE00EFD6
      D600E7CECE00DEBDBD00E7C6CE00DEA57B00AD9C9C00D6CECE00BDB5B5007373
      7300525252004242420042424200424242004242420042424200424242004242
      42005A525200A5A5AD00948CCE00AD9C9C0031CE630000A5080029A53100FFE7
      FF00F7F7F700EFEFEF00E7E7E700E7E7E700E7E7E700E7E7E700DEDEDE00E7E7
      E700E7CEDE0042AD5A0018C64200087310000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000FFF7
      F700E7C6C600FFF7F70000000000B58C8C00C69C9C00E7CECE00DEC6C600D6AD
      AD00E7BDBD00E7CECE00AD7B7B00CEC6C600A5949400C6B5B500B5ADA5009C9C
      9C00ADADAD009C9C9C0084848400737373006B6B6B00636363005A5A5A005A5A
      5A006B636300A5A5940084C68400A594940031CE6300009C000029A53100FFEF
      FF00FFFFFF00DEDEDE00CECECE00CECECE00CECECE00CECECE00CECECE00E7E7
      E700E7CEDE0042AD520018C64200087310000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000C69C9C00F7E7E700EFDEDE00D6BDBD00AD7B
      7B00D6B5B500E7CECE00CEA5A500A57B7B00E7E7E700A5949400A59494009C94
      9400ADADAD00ADA5A500A5A5A500A59C9C009C9C9C009C949400949494008C8C
      8C00847B7B00A5949400A5949400E7E7E70031CE6300009C000029A53100FFEF
      FF0000000000F7F7F700EFEFEF00F7F7F700EFEFEF00EFEFEF00E7E7E700E7E7
      E700E7D6DE0042B55A0018C64200087310000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000FFF7F700CEADAD00DEBDBD00EFD6D600EFDE
      DE00E7CECE00D6B5B500C6949400C6A5A5000000000000000000FFFFFF0052C6
      EF007BB5BD007BB5BD007BB5BD007BB5BD007BB5BD007BB5B5007BADB50073AD
      B50052C6EF00FFFFFF00000000000000000029CE63000094000029A52900FFF7
      FF0000000000DEDEDE00D6D6D600D6D6D600D6D6D600CECECE00CECECE00EFEF
      EF00E7D6E70039A5520010A53100087B18000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000EFDEDE00D6B5B500DEBDBD00CEA5
      A500E7CECE00B5848400DECECE00FFFFFF0000000000000000000000000052C6
      EF008CF7F7008CF7F7008CF7F7008CF7F7008CF7F7008CF7F7008CF7F70084F7
      F70052C6EF0000000000000000000000000039CE6B00009C000029A52900FFF7
      FF0000000000F7EFF700EFEFEF00EFEFEF00EFEFEF00E7E7E700E7E7E700EFEF
      EF00EFDEEF0039A5520008942900219431000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FFFFFF00E7D6D600F7E7E700DECE
      CE00BD949400E7CECE00000000000000000000000000000000000000000084CE
      EF005ACEF7005ACEF7005ACEF7005ACEF7005ACEF7005ACEF7005ACEF70052C6
      EF00A5D6EF00000000000000000000000000C6F7D60039CE6B0052C67300E7D6
      E700D6DED600D6DEDE00D6DED600D6D6D600CED6CE00C6CECE00C6C6C600BDC6
      BD00C6BDC6004AB56B0029B54A00BDDEC6000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000C6CECE00B5BDC600B5BD
      C600B5BDC600B5BDC600B5BDC600B5BDC600B5BDC600B5BDC600B5BDC600B5BD
      C600B5BDBD00B5BDBD00BDC6CE00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000F7F7F700F7F7
      F700F7F7F700F7F7F70000000000DEDEDE008C948C004A4A4A0063636300E7E7
      E700F7F7F700F7F7F70000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000ADB5B5007B8484007B8484007B84
      84007B8484007B8484007B8484007B8484007B8484007B8484007B8484007B84
      84007B8484007B848400949C9C00BDC6CE0000000000314AB5000852E700085A
      EF000863EF00086BEF00086BEF000873EF000873EF000873EF000873EF000873
      EF00086BEF000863E700214AB50000000000F7F7F700F7F7F700F7F7F700EFEF
      EF00C6CECE008C9494007B7B730073736B006B6B6B00D6D6D6008C8C8C005A5A
      5A00CECECE00F7F7F700F7F7F700F7F7F7000000000000000000000000000000
      0000000000000000000000000000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00000000000000630000006300000063000000
      630000006300000063000000630000006B0000006B000000730000087B000008
      7B000008840000088C0008089400B5BDBD0000000000084AEF000063FF00006B
      FF00007BFF000084FF000084FF00008CFF00008CFF00008CFF00008CFF00008C
      FF000084FF00007BFF000863EF0000000000EFEFEF009494940084847B007373
      63009C8C6B00B5A57300B5A56B00A59C8C007B7B7B00CECECE009C9C9C008484
      84005A5A5A0073737300E7E7E700F7F7F7000000000000000000000000000000
      000000000000FFFFFF0000000000FFFFFF000000000000000000000000000000
      0000FFFFFF00FFFFFF00FFFFFF00000000000000730000007300A5A5CE007373
      AD0000006B0000006B0000006B00000073000000730000007B0000087B000008
      84000008840000088C0000088C00B5BDBD00000000000852E700006BFF000073
      FF000084FF00008CFF00008CFF000094FF000094FF000094FF000094FF000094
      FF00008CFF000084FF00086BE70000000000D6D6D6009C9CA500A59C8400948C
      73007B736300736B5A00736B5A00736B5A00A5948C0094848400636363008484
      840084848400848484005A5A5A00A5A5A500000000000000000000000000FFFF
      FF0000000000FFFFFF0000000000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF000000000000007B0000007B006363AD006363
      AD008484BD0000007B0000007B0000007B0000007B0000007B00000884000008
      84000008840000088C0000088C00B5BDBD00000000000852E700006BFF000073
      FF000084FF00008CFF00008CFF000094FF000094FF000094FF000094FF000094
      FF00008CFF000084FF00086BE70000000000DEDEDE00948C8C0094847B009484
      7B00B5A5A500CEC6C600CECECE00CECECE00C6CEC6009C9CA500848484004A4A
      4A006B6B6B00949494007B7B7B007B7B7B0000000000FFFFFF0000000000FFFF
      FF0000000000FFFFFF0000000000FFFFFF000000000000000000000000000000
      00000000000000000000FFFFFF000000000000008C0000008C0000008C002121
      94006363B5004242A50000008400000084000000840000008400000884000008
      840000088C00ADADDE0000088C00B5BDBD000000000021399C000063EF00007B
      FF00008CFF000094FF000094FF00009CFF00009CFF00009CFF00009CFF00009C
      FF000094FF00007BEF0021399C0000000000DEDEDE009C9C9C00C6C6C600DEDE
      DE00D6D6D600BDB5B500B5B5AD00B5ADA500B5ADA500BDB5AD007B7B7B007373
      73004A4A4A005A5A5A006B6B6B00ADADAD0000000000FFFFFF0000000000FFFF
      FF0000000000FFFFFF0000000000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF000000000000009C0000009C00000094000000
      940000009400B5B5DE004242AD00D6D6EF006363BD004242AD006363B5009494
      CE006363BD006363B50000088C00B5BDBD00000000001052D6002139A5000073
      EF00008CFF000094FF00009CFF0000A5FF0000A5FF0000A5FF0000A5FF0000A5
      FF000084EF002142A5001063D60000000000CECECE00CEC6C600C6C6BD00D6CE
      CE00CEBDBD00CEC6C600C6BDBD00C6BDBD00C6C6C600C6C6BD00BDB5B5006B6B
      6B005A5A5A005A5A5A00DEDEDE00F7F7F70000000000FFFFFF0000000000FFFF
      FF0000000000FFFFFF0000000000FFFFFF000000000000000000000000000000
      00000000000000000000FFFFFF00000000000808A5000808A5000808A5000808
      A5000808A5003131B5006363C60000009C0010189C00FFFFFF005252B5007373
      C6007373C6003139A50000089400B5BDBD00000000000063F7000863DE002139
      A5000094FF00009CFF0000A5FF0000A5FF0000ADFF0000ADFF0000ADFF0000A5
      FF002142A5000873DE000084F70000000000EFEFEF00E7E7E700D6CECE009C9C
      9C00D6CECE00D6CECE00D6CECE00D6D6CE00C6B5AD00CECECE00CEC6C600A5A5
      A500737B7B004A4A4A00EFEFEF00F7F7F70000000000FFFFFF0000000000FFFF
      FF0000000000FFFFFF0000000000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00000000000808B5000808B5000808B5000808
      B5000808AD000808AD009494DE001818AD009494D60000089C0000089C000008
      9C00000894000008940000089400B5BDBD00000000000063F700007BFF00086B
      DE000084EF00009CFF00009CFF000894EF000894EF0000ADFF0000ADFF00009C
      EF00087BDE000094FF000084F7002142A500F7F7F700EFEFEF00CECECE00949C
      940073737300DED6D600DED6D600CEC6BD00C6B5A500CECECE00D6CEC600CECE
      C60084848C006B6B6B00EFEFEF00F7F7F70000000000FFFFFF0000000000FFFF
      FF0000000000FFFFFF0000000000FFFFFF00000000000000000000000000FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00000000000808C6000808C6000808BD000808
      BD000808BD000808BD002929BD00D6D6F7002121B5000808AD000808A5000808
      9C0000089C0000089C0000089400B5BDBD0000000000006BF700007BFF000084
      FF00186BD600294AA50029399C002952AD002952AD0029399C00294AA500107B
      D600009CFF000094FF000084F70000000000F7F7F700F7F7F700E7E7E700CECE
      CE007B7B7B008C8C8C00D6D6CE00CECECE00BDC6BD00D6CEBD00DECEB500DECE
      AD00CECECE0084848400D6D6D600F7F7F70000000000FFFFFF0000000000FFFF
      FF0000000000FFFFFF0000000000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00000000000000000000000000000000000808CE000808CE000808CE000808
      CE000808CE000808C6000808C600C6C6EF000808B5000808B5000808AD000808
      AD000808A50000089C0000089C00B5BDBD0000000000006BF7000073FF00105A
      CE003973C6004ABDF70052CEFF0052CEFF0052CEFF0052CEFF004ABDF7003973
      C600106BCE000094FF000084F7000000000000000000F7F7F70000000000E7E7
      E700DEDEDE007B7B7B00CECECE00DEAD6B00CE844200C67B3900BD7B3100BD7B
      3900DECEBD00A5A5AD00D6D6D600F7F7F70000000000FFFFFF0000000000FFFF
      FF0000000000FFFFFF0000000000FFFFFF000000000000000000FFFFFF00FFFF
      FF0000000000FFFFFF0000000000000000000808DE000808DE000808DE000808
      DE000808D6000808D6003939D6009494E7000808C6000808BD000808B5000808
      B5000808AD000808A5000808A500B5BDBD0000000000085ADE002142A500216B
      CE0021BDFF0021BDFF0029BDFF0029BDFF0029BDFF0021BDFF0029BDFF0029BD
      FF002173CE002142A5000873DE00000000000000000000000000F7F7F7000000
      0000EFEFEF00E7E7E700A5ADB500D6CEC600DE946B00DE9C7300E7BDA500E7C6
      B500E7D6CE00DEE7E700EFEFEF00F7F7F70000000000FFFFFF0000000000FFFF
      FF0000000000FFFFFF0000000000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00000000000000000000000000000000000808E7000808E7000808E7000808
      E7000808E7000808DE006363E7004A4ADE001818CE000808C6000808BD000808
      BD000808B5000808AD000808A500B5BDBD0000000000085ADE002142A500216B
      CE0021BDFF0021BDFF0029BDFF0029BDFF0029BDFF0021BDFF0029BDFF0029BD
      FF002173CE002142A5000873DE0000000000000000000000000000000000F7F7
      F700F7F7F700F7F7F700E7E7E700A5A5A500DEE7E700EFEFEF00F7F7F700F7F7
      F700F7F7F700F7F7F700F7F7F700F7F7F70000000000FFFFFF0000000000FFFF
      FF0000000000FFFFFF0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000808EF000808F7000808F7000808
      F7000808EF000808E7005A5AEF007373EF000808D6000808CE000808C6000808
      BD000808B5000808B5000808AD00B5BDC6000000000021399C00185AC60000A5
      FF0000A5FF0000A5FF0000A5FF0000A5FF0000A5FF0000A5FF0000A5FF0000A5
      FF0000A5FF00185ABD0021399C00000000000000000000000000000000000000
      000000000000EFEFEF00F7F7F700EFEFEF00EFEFEF00F7F7F700000000000000
      00000000000000000000000000000000000000000000FFFFFF0000000000FFFF
      FF00000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000808EF000808F7000808FF000808
      FF000808F7000808EF000808E7000808DE000808D6000808D6000808CE000808
      C6000808BD000808B5000808AD00BDC6CE0000000000294AAD000084F7000094
      FF000094FF000094FF000094FF000094FF000094FF000094FF000094FF000094
      FF000094FF001063CE002142AD00000000000000000000000000000000000000
      0000000000000000000000000000F7F7F700F7F7F70000000000000000000000
      00000000000000000000000000000000000000000000FFFFFF00000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000808E7000808EF000808EF000808
      F7000808EF000808EF000808E7000808DE000808D6000808D6000808CE000808
      C6000808BD000808B5000808AD00C6CED6000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000A58473009C7B6B009C7B
      6B009C7B6B00AD8C7B009C948C006B6B6B006B63630063636300636363006363
      63005A5A5A00635A5A00D6CECE00FFFFFF0000000000A58C7B0000000000FFFF
      FF00EFE7DE00FFFFF70000000000000000000000000000000000000000000000
      000000000000FFFFFF00FFFFFF00AD8C73000000000084AD8C007BA584007BA5
      84007B9C84007B9C84007B9C8400849C8400849C840084948400849484008494
      8400848C8400848C84008C948C007373730000000000D6A58C00CEA58C00CEA5
      9400CEA59400CE9C9400C69C8C00C69C8C00CEA5A50094AD8400318421001073
      00002173100073946300BDADA500EFE7E700AD8C7B00FFFFFF00FFFFEF00FFFF
      F700FFFFF700FFFFFF0094949400EFEFEF00FFFFFF00FFE7DE00EFCEBD00FFFF
      FF00FFFFFF00B5B5B500ADADAD00FFFFFF0000000000A5847B0000000000ADA5
      9C00738C8C00736B6B0084736B009C8C8400B5ADA500BDB5AD00C6BDB500D6CE
      C600FFF7EF00FFF7E700FFF7E7009C846B007BAD8C00EFF7EF00E7EFE700E7EF
      E700E7EFE700E7EFDE00DEE7D600DEE7DE00DEE7DE00DEDED600DEDED600DEDE
      D600D6DED600D6DED600E7EFE700848C8C00D6AD9400F7E7D600FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF006BBD6B00008C000000A510000094
      0000088C0000107300004A8C3100BDADA500A58C7B00FFFFFF00F7E7DE00EFDE
      CE00EFDECE00FFEFDE00948C8C00E7E7E700FFFFFF00C6734A00A5421000EFE7
      DE00FFFFFF00ADADAD00B5B5B500FFFFFF0000000000AD8C7B0000000000849C
      9C00ADFFFF00A5FFFF009CFFFF0094CED600849C9C00849494008C847B00A59C
      9400EFEFDE00F7F7E700FFFFEF00A584730073AD8400D6E7D60094C6940094BD
      94009CBD9C00ADB5AD00D6DED600EFEFEF00EFEFEF00EFEFEF00EFEFEF00EFEF
      EF00EFEFEF00E7E7E700DEDEDE007B8C8400DEB59C00FFFFFF00FFF7EF009C9C
      9C00A5A5A500A5A5A500D6D6D600D6EFD6000094000010AD2900EFF7F700A5E7
      BD00009C000000940000186B000073946300A58C7B00FFFFFF00E7D6C600DEBD
      B500DEBDAD00EFD6C600948C8C00E7EFEF00EFC6AD00A5310000A5310000BD7B
      5200FFFFFF00B5ADAD00B5B5B500FFFFFF0000000000A58C7B00B5ADAD008CBD
      BD0094DEDE008CE7E70094F7F700ADFFFF00C6FFFF00CEFFFF00CEFFFF00BDDE
      E7006B7B7B00C6BDB500FFFFF700A584730073AD8400CEE7CE006BB56B006BAD
      6B007BA57B0094A59400D6DED600E7E7E700E7E7E700DEE7DE00DEE7DE00DEE7
      DE00DEE7DE00D6DEDE00DEDEDE007B8C8400DEB59C00FFFFFF00FFF7EF00DED6
      D600DEDEDE00DEDEDE00F7EFF7005AAD5A0029B54200F7E7F700E7EFE700FFFF
      FF00B5EFCE00009C0000088C000029731000AD8C7B00FFFFFF00E7DED600DEC6
      BD00DEC6BD00EFD6D600A59C9C00AD5A2100B54A0000FFDECE00FFEFDE00BD52
      0800C66318009C949400B5BDBD00FFFFFF00D6D6D600635A5A00525252005A6B
      6B005A636300637B7B00638C8C006BA5A50084BDBD00ADE7E700C6FFFF00C6FF
      FF00A5A5A500FFFFF700FFFFEF00A584730073B58400CEE7C60052B552004AA5
      4A0052A55200639C63006B946B00738C7300738C730084948400CEDECE00CED6
      CE00FFFFFF00EFEFEF00DEE7DE007B948400E7B59C00FFFFFF00FFF7E700DED6
      CE00DEDEDE00D6D6D600F7EFF70052B5520042BD5A009CC6940021B5390063CE
      7300FFFFFF00A5E7B5000094000010730000AD8C7B00FFFFFF00EFDED600DEC6
      C600DEC6BD00EFDEDE00C68C6B00A53100009C6B4A00BDBDBD00B5BDBD009C73
      4A00B542000094522100C6C6C600FFFFFF0073737B008C736300ADCECE00BDFF
      FF00BDFFFF00ADE7E7008CBDBD006B949400526B6B004A525200A5F7F7008CA5
      A500F7E7DE00FFFFF700FFFFF700A58473006BB58400DEF7DE00B5DEB500B5DE
      B500BDDEBD00BDDEBD00BDD6BD00B5CEB500B5CEB500B5CEB500CEDECE00C6D6
      C600D6D6D600CED6CE00DEE7DE007B9C8400E7BD9C00FFFFF700FFEFDE00A59C
      9C00A5A59C00FFFFFF00C6BDC60063AD63005ADE8C0018C64A0021C6520008B5
      310052C66300FFFFFF0094DE9C0029842100AD8C7B00FFFFFF00E7DED600DEC6
      C600DEC6C600E7D6D600D69C7B00D68C5200CEC6C600BDB5B500BDB5AD00C6C6
      BD00D6843900B5420000C69C7B00FFFFFF00B5B5B500AD8C8400ADD6D6008CB5
      B5007B94940084ADAD008CC6C6008CCECE007BADAD005A52520084CECE00BDAD
      AD00FFFFFF00FFF7EF00FFFFF700A58473006BBD8400D6EFCE007BBD7B0073B5
      730084B584008CAD8C00A5B5A500CEE7CE00CEE7CE00D6E7D600CEE7CE00C6D6
      C600FFF7FF00EFEFEF00DEE7DE00739C8400E7BDA500FFFFF700FFEFDE00CEC6
      BD00D6CEC600CECEC600D6D6D600CECEC60039BD52005ADE8C0029CE5A0021BD
      4A0000AD210052C6630031AD42008CAD7B00AD948400FFFFFF00E7D6D600D6C6
      BD00DEC6BD00DEC6BD00E7CEBD00EFD6CE00DEC6B500DEBDB500DEBDAD00DEBD
      AD00FFEFE700C65A0000BD4A0000EFDED600B5B5BD0094736B00B5DEDE009CB5
      B5008CA5A5008CA5A5008CA5A500849C9C007B9C9C0094CECE0084B5B500FFF7
      EF00FFFFF700FFF7EF00FFFFF700A58473006BBD8400D6EFCE0084C684007BBD
      7B008CBD8C0094B59400A5BDA500CEE7CE00CEE7CE00CEE7CE00CEE7CE00C6D6
      C600D6DED600CED6CE00DEE7DE00739C8400EFBDA500FFFFF700FFEFDE00EFDE
      CE00EFE7D600EFE7DE00EFE7E700FFF7FF00A5DEA50042C65A0063DE8C0031CE
      630021BD4200009C00005ABD6300CEA5A500B5948400FFFFFF00F7F7EF00F7EF
      E700F7EFE700F7EFE700F7EFE700F7E7E700F7E7DE00F7E7DE00EFE7DE00F7DE
      D600FFFFFF00EFD6BD00BD520000D6630000F7F7F7009C8C8400BDDEDE00CEFF
      FF00C6FFFF00BDFFFF00B5FFFF00B5FFFF00B5FFFF00ADFFFF00A5ADAD00FFFF
      FF00FFF7F700FFF7EF00FFFFF700A58473006BC68400E7F7DE00CEEFD600D6EF
      D600D6EFD600CEEFCE00D6EFD600CEE7CE00CEE7CE00DEE7DE00E7E7E700E7E7
      E700E7E7E700DEE7DE00DEEFDE00739C8400EFC6A500FFFFEF00FFE7D600A594
      8C00ADA59C00ADA59C00A5A59C00FFF7F700BDB5BD00CED6C6007BC67B0063BD
      63006BBD6B00CEE7CE00FFFFFF00C69C8C00B5948400FFFFFF00FFF7F700F7F7
      F700F7F7F700F7F7F700F7EFEF00F7EFEF00F7EFE700F7EFE700F7EFE700F7E7
      DE00FFFFF700EFEFE700D69C7300D66B000000000000B5ADAD009CADAD0094AD
      AD0094B5B50094BDBD009CCECE009CDEDE009CEFEF009CEFEF00ADADAD00FFFF
      FF00FFFFF700FFFFF70000000000AD8C7B006BC68400CEEFC60052B552004A9C
      4A005A945A00738C7300C6E7C600CEE7CE00CEE7CE00E7EFE700EFEFEF00EFEF
      EF00EFEFEF00E7E7E700DEEFDE0073A58400EFC6A500FFF7EF00FFE7CE00BDB5
      A500C6BDAD00C6BDB500C6BDB500BDBDB500D6D6D600E7E7E700CEC6CE00CEC6
      CE00C6BDC600FFFFFF00FFFFFF00CE9C8C00B5948400FFFFFF00E7DEDE00D6C6
      C600DEC6C600DEC6BD00D6BDB500D6BDB500D6B5AD00D6B5A500DEB5A500D6AD
      9C00FFFFFF00DECEBD00DECECE00EFAD630000000000B5948400E7E7E700E7E7
      E700DEDEDE00D6D6D600CECECE00C6CECE00BDBDBD00ADB5B500D6D6CE000000
      000000000000FFFFFF00F7F7EF00946B5A0063C68400E7FFDE00DEFFDE00DEFF
      DE00DEFFDE00DEF7DE00DEFFDE00CEEFCE00CEEFCE00CEDECE00CEDECE00CEDE
      CE00CEDECE00CEDECE00DEEFD60073A58400F7CEA500FFF7EF00FFE7C600E7D6
      BD00EFDECE00EFDECE00EFDED600EFE7DE00EFEFE700F7EFEF00EFEFEF00EFEF
      EF00EFEFEF00FFFFFF00FFFFFF00CEA59400B5948400FFFFFF00FFF7F700F7F7
      F700F7F7F700F7F7F700F7F7F700F7EFEF00FFF7EF00FFF7EF00F7EFE700F7E7
      E700EFEFE700B5948400CEC6BD00FFFFFF0000000000B58C7B00000000000000
      00000000000000000000FFFFFF00FFFFFF00FFF7F700F7EFEF00E7DED600AD94
      8C00B5948C00BD9C84008C634A00C6B5AD006BCE8400CEF7C60042AD42003994
      39004A944A005A845A007B947B00C6DEC600C6DEC600EFEFEF00F7F7F700F7F7
      F700FFF7FF00EFEFEF00E7EFDE0073AD8400F7CEAD00FFF7E700FFDEBD00AD9C
      8400F7DECE00BDAD9C00B5A59C00B5ADA500BDADA500B5ADA500FFF7EF00B5AD
      AD00B5ADAD00FFFFFF00FFFFFF00CEA59400B5948400FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFF700CEBDAD00F7DEBD00EFC6
      8C00AD948C00FFFFFF00FFFFFF00FFFFFF0000000000B5948400000000000000
      0000000000000000000000000000000000000000000000000000E7D6CE00CEB5
      A500FFF7C600AD7B3900C6B5AD000000000063CE8400E7FFDE00C6F7C600C6F7
      C600C6F7C600C6EFC600C6EFC600C6EFC600C6EFC600C6EFC600C6E7C600C6E7
      C600C6E7C600C6E7C600DEF7DE006BAD8400F7CEAD00FFF7E700FFDEBD00AD9C
      8400B59C8C00B5A59400E7CEBD00CEBDB500B5ADA500B5ADA500B5ADA500B5AD
      AD00ADADA500FFF7F700FFFFFF00D6A59400B5948400FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00CEB5A500C69C6300B594
      8400FFFFFF00FFFFFF00FFFFFF00FFFFFF0000000000B594840000000000FFFF
      FF0000000000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00EFE7E700CEA5
      7300BD8C4A00D6CECE00000000000000000063D68400CEF7CE0031AD3100008C
      0800108C10001884180021842100297B2900297B290031733100427342004A6B
      4A005263520063736300CEE7CE006BB58400F7CEAD00FFF7E700FFD6AD00FFD6
      B500FFDEBD00FFDEC600FFE7CE00FFE7CE00FFE7D600FFE7D600FFEFDE00FFEF
      DE00FFEFDE00FFF7E700FFFFF700D6A59400BD9C8C00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00B59C8C00AD8C7B00F7F7
      F700FFFFFF00FFFFFF00FFFFFF00FFFFFF0000000000B5948400000000000000
      0000000000000000000000000000000000000000000000000000FFF7F7008452
      2900CEC6BD000000000000000000000000006BD68C00F7FFE700ADE7A5009CD6
      94009CD69400A5D69C00A5D69C00A5D6A500A5D6A500ADCEA500ADCEAD00B5CE
      AD00B5C6AD00BDCEB500EFFFE70073BD8C00FFD6B500FFEFDE00FFF7E700FFF7
      E700FFF7E700FFF7E700FFF7EF00FFFFEF00FFFFEF00FFFFF700FFFFF700FFFF
      F700FFFFFF00FFFFF700F7DECE00D6A58C00A57B6300BD9C8C00B5948400B594
      8400B5948400B5948400B5948400AD948400AD8C7B00B59C9400FFF7F700FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF0000000000AD8C7B00B5948400AD8C
      7B00AD8C7B00AD8C7B00AD8C7B00AD8C7B00AD8C7B00AD8C7B009C7B6B00EFEF
      EF000000000000000000000000000000000042D673006BDE8C006BD68C006BD6
      940073D6940073D68C0073D68C0073D68C0073D68C0073CE8C0073CE8C0073CE
      8C0073CE8C0073C68C0073C68C0052AD7300FFFFFF00FFD6B500FFCEAD00F7CE
      AD00F7CEAD00F7CEAD00EFC6A500EFC6A500EFC6A500EFBDA500E7BDA500E7BD
      9C00DEB59C00DEB59C00DEAD9400F7EFE700000000000000000000000000ADD6
      E700E7EFF700FFFFFF00FFFFFF00000000000000000000000000000000000000
      00000000000000000000000000000000000000000000DED6D600D6C6B500FFEF
      E700EFE7DE00EFE7DE00D6CEC600AD9C9400BDADA500C6B5AD00C6B5AD00CEBD
      B500E7DED600FFFFFF00000000000000000000000000949494008C8C8C007B84
      84007B8C8C007B848400848C8C008C8C8C008C8C8C00949C9C00ADADAD00BDC6
      C600D6D6D600E7E7E700EFEFEF00F7F7F70000000000D6C6BD008C6B5A00A57B
      6B009C7B6B009C7B6B009C7B6B009C7B6B009C7B6B009C7B6B009C7B6B009C7B
      6B009C7B63009C7B63009C7B6B0084635200FFFFFF00D6D6D600EFE7E700006B
      A500009CCE0021ADD6006BC6E700A5DEEF00EFF7F70000000000000000000000
      00000000000000000000000000000000000000000000CEB5AD00EFE7E7008C29
      1000842910008C423900844A39009C949400FFFFFF00EFEFE700DED6D600D6C6
      BD00AD8C8400FFF7F7000000000000000000A5A5A50084D6E70094EFF70073BD
      EF0094EFFF009CF7FF009CF7FF0094F7FF0094F7FF008CE7F70084D6DE0073BD
      C6006BA5AD0063949C0063949C007373730000000000D6C6BD00DEC6B500FFFF
      F700FFFFF700FFFFF700FFFFF700FFFFF700FFFFF700FFFFF700FFFFF700FFFF
      EF00FFFFEF00FFF7E700FFFFEF009C7B6B00FFFFFF008C8C8C00BDADAD00317B
      9C0031CEEF0021D6EF0008B5E700009CCE0042BDE70073CEE700A5D6E700D6E7
      EF00FFFFFF00000000000000000000000000FFF7F700C6B5A500F7EFE700DEBD
      AD00BD8C7B009C5A420039393100A5A5AD00000000000000000000000000D6C6
      BD00CEBDB500000000000000000000000000949C9C0073B5BD00638C8C0084B5
      DE00ADEFF700ADEFF700ADEFF700ADF7F700ADF7F700A5F7F700A5F7F7009CF7
      F70094F7FF008CEFFF0084EFFF008C94940000000000D6C6BD00D6C6B500FFFF
      FF00EFD6CE00EFDECE00EFDECE00EFDECE00EFDECE00EFDECE00EFD6C600EFD6
      C600EFD6C600F7DECE00FFFFEF009C7B6300FFFFFF00ADA5A500F7F7F700639C
      BD006BD6EF0073D6E7006BD6E7005AD6EF0031BDDE0018A5CE0021ADD60031C6
      EF0052B5D600BDD6E700FFFFFF0000000000EFEFE700C6ADA500FFF7EF00FFF7
      EF00FFFFFF0000000000000000000818B5003942B500F7F7F700FFFFFF00C6AD
      A500EFE7E7000000000000000000000000008C949400A5E7EF009CCECE008CBD
      E700ADEFF700ADEFF700ADEFF700A5EFEF00A5EFEF009CE7EF0094E7EF0094E7
      EF008CE7EF008CDEEF0084DEE7009C9C9C0000000000D6C6BD00D6C6B500FFFF
      FF00F7D6D600DEBDAD00DEBDB500DEBDAD00DEBDAD00DEBDAD00DEB5A500DEB5
      A500DEB59C00E7CEBD00FFFFF7009C7B6B00FFFFFF00ADADAD00F7F7F7004A84
      9C007BD6EF0084DEEF0084DEF70084E7F70084DEEF0084DEEF005AB5C60010DE
      FF0018CEF70029BDEF00219CCE0084BDDE00E7E7DE00C6B5AD00EFD6C600DEC6
      AD00E7C6B500E7CEBD00FFDEC6000010DE000021EF002931AD00FFFFF700B5A5
      8C00000000000000000000000000000000008C8C8C00B5F7FF00B5EFEF0084B5
      DE00ADDEEF00ADE7EF00ADE7EF00A5E7EF00A5E7EF00A5E7EF00A5E7EF00A5EF
      EF00A5EFF700A5F7FF009CE7EF00ADADAD0000000000E7D6D600E7D6CE000000
      0000008400004AAD4A00E7D6CE00DEC6BD00DEC6B500DEBDB500DEBDAD00DEBD
      AD00DEB5A500EFD6C600FFFFFF009C7B6B00FFFFFF00ADADAD00F7F7F7004A84
      A50084D6DE0084D6DE0084D6DE0084CED60084DEE7008CE7F7006BB5BD0021E7
      FF0031DEFF0031DEFF0042DEFF00298CBD00D6CEC600DEC6B500EFD6BD00E7C6
      B500E7C6B500E7C6B500F7D6B500847BC6000031F7000029EF0039298400E7D6
      BD00000000000000000000000000000000008C949400CEFFFF00CEFFFF0094BD
      EF00C6EFF700C6F7F700C6F7F700C6F7F700C6F7F700BDF7F700BDF7FF00BDF7
      FF00B5F7F700B5FFFF00A5EFEF00ADADAD0094CE940084BD840084BD84009CCE
      9C000094180029BD520052AD5200EFD6D600DEBDB500DEBDB500DEBDAD00DEBD
      AD00DEB5A500EFD6C600FFFFFF009C7B6B00FFFFFF00B5B5B500FFFFFF004284
      A50094DEE70094DEE70094DEDE0094D6DE0094DEE7009CEFF7007BBDC60031EF
      FF0042DEFF0031CEF7008CF7FF002994BD00C6B5AD00E7D6C600E7C6B500E7C6
      B500E7C6B500E7C6B500E7C6B500F7EFE7003952E7001852FF000018E7007373
      BD000000000000000000000000000000000094949400DEFFFF00DEFFFF00A5C6
      EF00CEEFF700D6F7F700CEF7F700CEF7F700CEF7F700C6F7F700BDF7F700B5EF
      F700ADEFF700A5EFF70094DEE700A5A5AD00088C180021BD520021BD4A0021BD
      4A0039CE630052EF8C0021B5420042AD3900FFDEEF00DEBDB500DEBDAD00DEBD
      AD00DEB5A500EFD6C600FFFFFF009C7B6B00FFFFFF00B5B5B50000000000428C
      AD00A5E7EF009CE7E7009CDEE7009CDEDE009CE7E700ADF7FF0084BDC6004AEF
      FF0052E7FF004AD6F700B5FFFF002994BD00BDA59400F7E7D600E7C6AD00E7C6
      AD00E7C6AD00E7C6B500E7C6B500FFF7E700ADADE7000839FF004263C6004239
      4A00BDBDB500000000000000000000000000949C9C007B9CA5005A736B0084A5
      DE00B5E7EF00BDE7EF00C6EFF700CEF7F700CEF7F700CEFFFF00D6FFFF00D6FF
      FF00CEFFFF00CEFFFF00B5F7F700ADADAD00299C39004AEF840042DE7B004AE7
      7B004AE7840052EF840052EF8C0029B54A0042A53900F7CECE00D6B5AD00DEB5
      A500DEB59C00EFD6C600FFFFFF00A57B6B00D6E7EF009C9C9C0000000000428C
      B500C6EFEF00B5E7DE00B5E7DE00B5E7DE00B5EFEF00C6FFFF009CCEC6006BFF
      FF006BEFFF00A5F7FF00DEFFFF002994BD00B59C8400FFEFDE00DEBDA500E7C6
      AD00E7C6AD00E7C6AD00E7C6AD00E7C6AD00FFF7E7007384DE00C6C6AD003152
      B5000818A500EFE7F70000000000000000009C9C9C00E7F7F700D6E7DE00B5CE
      F700E7F7FF00E7FFFF00D6F7FF00CEF7F700CEF7F700BDEFF700B5E7EF00A5DE
      EF009CDEEF009CE7EF0094DEE700A5A5A500299C39005AF794004AE7840052EF
      84005AEF8C0052EF8C0063FF9C0031CE520052B55200FFF7F700F7E7DE00F7E7
      DE00EFE7D600F7EFE700FFFFFF009C846B0094C6DE00B5ADA500000000004AAD
      D600D6F7F700CEFFFF00CEFFFF00C6FFF700C6F7F700CEFFFF00A5CEC60073FF
      FF006BEFFF00C6FFFF00E7FFFF002994BD00B5948400FFEFDE00DEBDA500DEBD
      AD00DEBDAD00DEBDA500F7E7DE00FFFFFF00FFFFFF00FFE7CE004A5AA500315A
      E7000039FF001818A500FFFFFF00000000009C9C9C00D6FFFF00DEFFFF009CB5
      EF00CEEFF700D6EFF700CEEFF700CEF7F700CEF7F700CEF7F700CEF7FF00C6F7
      F700C6F7F700BDF7FF00B5F7F700A5A5A500189C29005ADE7B0052D6730052D6
      730073E7940063FF9C0031D65A004AB54A00FFFFFF00F7EFE700F7EFE700F7EF
      E700F7E7DE00F7EFE700FFFFFF00A5847300CEE7EF00B5ADAD0000000000318C
      AD00D6EFEF00C6EFE700C6E7E700CEEFE700CEF7F700D6FFFF00ADCEC6007BFF
      FF0084EFFF00D6FFFF00EFFFFF003194BD00B5948400F7E7D600DEB59C00DEBD
      A500DEBDA500DEBDA500E7CEB500E7CEBD00EFD6C600CEB5A500B5A59C008C8C
      8C00395ACE000029EF006363BD0000000000A5A5A500E7FFFF00EFFFFF00ADBD
      F700E7F7F700E7F7FF00DEF7FF00DEF7FF00DEF7FF00D6F7FF00CEF7F700C6F7
      F700BDF7F700BDF7FF00B5FFFF009C9C9C009CD69C0084BD7B0084BD7B009CD6
      9C0010A5210042E76B005AB55200E7D6D600DEBDB500D6BDAD00D6B5AD00DEB5
      A500DEAD9C00EFD6C60000000000A5847300FFFFFF00C6C6C6000000000042AD
      D600EFF7FF00EFFFFF00E7FFF700DEF7EF00D6F7EF00DEFFFF00B5CECE009CEF
      FF00A5EFF700D6FFFF00FFFFFF003194BD00B5948400F7E7CE00DEB59C00E7C6
      AD00E7CEB500EFD6C600F7DECE00F7E7D600FFF7EF00C6AD9C00EFE7E700BDC6
      DE007B849400104AFF000021CE00ADADD600A5ADAD00DEF7FF00EFFFFF00A5BD
      EF00D6E7F700D6EFF700C6EFEF00BDE7EF00BDE7EF00BDE7EF00B5E7EF00ADE7
      EF00ADDEEF00A5DEE7009CCECE009C9C9C0000000000EFD6D600EFD6D6000000
      0000008C00005AC66300FFFFFF00FFF7F700F7F7EF00F7EFEF00FFF7EF00FFF7
      EF00F7EFE700F7E7E700EFDED60094736300FFFFFF00C6C6C6000000000039AD
      D60094D6E700B5E7EF00B5E7F700B5E7EF00BDE7E700B5D6DE00BDDEDE00FFFF
      FF00E7FFFF00DEFFFF00000000003194BD00B5947B00FFFFEF00FFF7E700F7E7
      DE00E7D6C600D6C6B500CEB5A500BD9C8C00AD8C84009C6B5A00FFF7F700F7FF
      FF00EFE7D600395AA5000039FF002939C600BDBDBD009CBDC60052635A008CA5
      D600BDDEF700C6E7EF00BDE7EF00B5E7EF00B5E7EF00B5EFF700A5BDC6008CD6
      D6007BF7FF008CADAD00EFE7E700FFFFFF0000000000DECEC600DECEC6000000
      00000000000000000000FFFFFF00FFFFFF00FFFFFF0000000000E7DEDE00CEB5
      A500FFEFBD00C69C7300D6C6C60000000000FFFFFF00C6C6C60000000000B5DE
      EF009CD6EF009CD6E7009CD6E70084C6D60073A5B5008CC6DE0063B5D6000000
      0000F7FFFF00EFFFFF00000000003194BD00B5948400BD9C8C00BD9C9400C6AD
      A500D6BDB500DECEC600E7DEDE00F7F7EF000000000000000000000000000000
      0000F7F7F700D6D6C600395AB5000010BD00BDBDBD00EFFFFF00FFFFFF00C6D6
      FF00DEF7FF00F7FFFF00EFFFFF00EFFFFF00EFFFFF00E7FFFF00CEDEDE006BA5
      A5008CADAD00E7DEDE00FFFFFF00FFFFFF0000000000DECEC600DECEC6000000
      0000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00EFE7E700C69C
      7B00BD946B00CEBDB5000000000000000000FFFFFF00CEC6C600000000000000
      0000000000000000000000000000D6D6D600C6C6C600F7FFFF0073C6E700A5D6
      E700DEF7F700DEF7FF00DEF7F7004AA5C6000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000EFEFEF00949CB5006B739C00C6C6C600CEDEDE00E7F7EF00ADC6
      EF00CEE7F700E7FFF700E7FFFF00E7FFFF00E7FFFF00EFFFFF00BDDEDE007B84
      8400E7E7E700FFFFFF00FFFFFF00FFFFFF0000000000DECEC600E7D6CE000000
      0000000000000000000000000000000000000000000000000000EFEFE700946B
      5200D6C6BD00000000000000000000000000FFFFFF00ADADAD00B5B5B500ADAD
      AD00ADADAD00ADADAD00B5B5B500A5A5A5000000000000000000FFFFFF008CC6
      DE0094CEE70094C6DE008CC6DE00DEEFF7000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000F7F7FF00C6C6C600E7E7E700C6C6C600C6C6C600C6C6
      C600BDBDBD00B5B5B500ADADAD00A5A5A500A5A5A5009C9C9C008C8C8C00F7EF
      EF00FFFFFF00FFFFFF00FFFFFF00FFFFFF0000000000DECEC600A5846B00B594
      8C00B5948400B5948400B5948400B5948400AD948400AD948400A5847300D6C6
      BD00000000000000000000000000000000000000000000000000000000000000
      000000000000A5A5AD00424A4A005A5A6300BDC6C60000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000F7EFEF00D6B5B500BD949400FFF7F7000000000000000000F7FFF700E7EF
      E700EFF7EF000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000B5B5BD00A5A59C00C6C6C600F7F7F700C66B4200BD7B5A00A5735A009C6B
      5A009C6B5A009C6B5A009C6B5200946B520094635200946352008C634A00845A
      4A00845A4A00845A4A00845A4A00845239000000000000000000000000000000
      00007B7B84007B634A00EFB58400D6A5840042393900C6C6CE00000000000000
      0000737B8400737B8400D6D6D600000000000000000000000000000000000000
      0000CE949400CE8C8C00D6BDBD00FFFFFF00000000000000000063AD5A00007B
      0000217B21000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000316BEF00B5BDBD00A59C9C00BDBDBD00C66B4200BD847300FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFF700FFF7
      F700FFF7F700FFF7EF00FFFFFF00845A4A000000000000000000000000000000
      0000736B6300FFCE9C00FFD6A500FFD69C00E7B58C00636B730000000000DEDE
      DE00AD7B6300A5846B0042424200DEDEDE00000000000000000000000000E7CE
      CE00FFCECE00E7B5B500E7D6D60000000000000000000000000073B5730029C6
      5200318431000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000B5C6
      FF0042A5FF0084D6FF00C6CEC600ADADAD00C6734A00BD8C7300FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFF7F700FFFFFF00FFFFFF00FFFFFF00FFEF
      EF00F7E7E700F7E7E700FFF7EF00845A4A000000000000000000000000007373
      7300B5A59C00F7DEB500FFEFD600FFE7C600FFE7AD0063636300848C8C00424A
      5A00FFDEA500FFD69C00CEAD840073737B000000000000000000FFF7F700CEA5
      A500FFD6D600E7B5B500EFDEDE000000000018941800319429000873000031C6
      5A0000630000318C3100217B1800EFF7EF000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000B5BDFF00296B
      FF006BD6FF004AB5FF00427BE700ADADAD00C6735200C68C7300FFFFFF00E7D6
      CE00A56B520094634200E7D6CE00FFFFFF00945A390084634200735A3900FFEF
      EF00FFEFEF00F7E7E700FFF7F700845A4A00EFEFEF0052525200313131008484
      8400D6DEDE00ADA5AD00BDA59C00DEC6B500736B63004A4A5200B5BDC600BDC6
      D600FFFFF700FFFFF700E7D6AD007B73730000000000FFF7F700DEB5B500F7CE
      CE00FFD6D600FFDEDE00F7BDBD00FFE7F7000084000039DE6B0039D663004AE7
      7B0031CE5A0029CE5A00007B0000E7EFE7000000000000000000000000000000
      0000E7E7EF00E7E7EF00F7F7F70000000000C6BDBD005A6B8C00429CE7006BD6
      FF002973FF009CB5FF000000000000000000CE7B5200BD8C7B00FFFFFF00DEC6
      C600C67B5A00BD5A29009C6B5200FFFFFF009C421800944A21007B310800A59C
      8C00FFF7F700F7EFE700FFF7F7008C5A4A005A5A5A00949494009C9C9C005A5A
      5A0000000000FFFFFF0084848400635A5A00525A6B0042424A00BD946300D6AD
      7300C6ADAD00CEBDAD008C7B7300C6CECE00FFFFFF00E7BDBD00F7C6C600FFD6
      D600FFD6D600FFE7E700FFE7E700FFFFFF005AAD520073B56300218C100039D6
      6300006B00006BA5630063AD6300F7FFF7000000000000000000F7F7F700BDBD
      C600ADA59400ADA59400ADADAD00B5BDC600A5A59C00CEC6BD00A5C6CE00429C
      EF00A5B5FF00000000000000000000000000CE846300C6948400FFFFFF00DECE
      C600CE8C6B00D67B52009C522100D6C6BD00AD634200BD5A3100AD4A21006B42
      2100F7EFE700FFF7EF00FFFFF7008C634A0042424200BDBDBD00ADADAD00BDBD
      BD009C9C9C006B6B6B0039393900394A5A005A524A00AD631000FFB56B00E794
      2900737B94007B737300CECECE0000000000EFC6C600F7CECE00FFDEDE00FFD6
      D600FFD6D600FFD6D600FFCECE00FFD6D600FFDEE700FFE7FF0073AD630039DE
      6B00298C2100FFCEDE00FFF7FF000000000000000000EFEFEF009C9CA500B5A5
      8400EFCE9C00EFCE9C00D6BD8C00C6AD8C005A636B00C6C6C600D6D6CE00526B
      A50000000000000000000000000000000000D6846300C6948400FFFFFF00DECE
      C600D6947B00D6845A00C6734A00945A4200BD735A00C6633900C65A31007B31
      0800ADA59400FFFFFF00FFFFFF009463520042424200A5A5A500DEDEDE00CED6
      CE009C9C9400848C8C00738494006B4A2900D67B2100FFD69400FFDEAD00FFE7
      BD00A5A5A500000000000000000000000000EFBDBD00FFE7E700FFDEDE00FFDE
      DE00FFDEDE00FFDEDE00FFDEDE00FFD6D600FFD6D600FFDEE7005AB55200008C
      000021941800EFBDC600CEB5B50000000000FFFFFF00A5A5AD00C6AD8C00F7D6
      9400F7C69400D6A57B00CEAD8400EFCE9C00DEBD8C00525A6B0094949400BDB5
      B50000000000000000000000000000000000D68C6B00CE9C8C00FFFFFF00E7D6
      CE00DE9C8400B5735A00DE947300BD6B4A00C67B5A00CE6B4200B5633900CE6B
      42006B421800F7EFEF00FFFFFF00946352005252520042424200848C94009C9C
      A500A5ADAD00A5A5A500B57B4200F7A54A00FFDEA500FFCE9400FFC68C00FFCE
      9C00F7C67B00000000000000000000000000FFDEDE00FFDEDE00FFDEDE00FFE7
      E700CEA5A500CEA5A500CE9C9C00CE9C9C00CE9C9C00D6B5B500FFEFF700FFEF
      FF00FFF7FF00FFD6D600BD848400F7F7F700E7E7E700A59C8400FFDE9C00FFDE
      AD0000520000006300006B7B3900DEB58C00EFCE9C00C6AD9400BDC6CE000000
      000000000000000000000000000000000000DE947300CEA58C00FFFFFF00EFD6
      CE00E7AD9400B5735A00B5846B00DE947B00CE7B5A00CE734A00945A4200B573
      5200944A1800AD9C8C00FFFFFF009C6B5200E7E7E700BDC6C6009C6B4A00B5AD
      A5007B848400945A2900EF943900F7B56B00DE8C3900FFBD7300FFC68C00FFCE
      8C00E7943100F7E7D6000000000000000000FFF7F700FFEFEF00FFE7E700FFE7
      E700EFCECE00EFCECE00EFC6C600EFC6C600EFC6C600EFBDBD00F7C6C600FFC6
      C600F7C6C600FFE7E700BD848400F7F7F700D6D6D600DEC69400FFE7B500B5BD
      7B00007B100021B54A00426B21006B7B3900CEAD8C00CEB58400B5B5B500FFFF
      FF0000000000000000000000000000000000DE947300CE9C8C00FFFFFF00EFD6
      CE00E7AD9400B5735A00DECEC600D69C8400D68C7300D67B5200AD6B4A00CEB5
      A500BD6B42006B4A2100FFFFFF00A5735A000000000000000000D6845200EFC6
      A500F7F7F700EFD6CE00E7B58400E7C6A500BD7B3100FFBD7B00FFCE9400DE8C
      3900FFCE9400E7AD6B00FFFFFF0000000000FFFFFF00FFFFFF00FFEFEF00FFE7
      E700EFC6C600EFC6C600EFC6C600EFBDBD00EFBDBD00E7BDBD00F7C6C600FFCE
      CE00F7C6C600FFD6D600C68C8C00F7F7F700CECECE00F7DEAD00FFF7CE002173
      100039C65A0042D66B0021B54A0000630000D6AD8400E7CE9C00B5ADA500EFEF
      F70000000000000000000000000000000000E79C7B00CEA59400FFFFFF00DEA5
      9400EFB59C00C6846B00DECEC600D6BDAD00DE9C8400D6846300B5735A00F7F7
      F700B5735A00A5522900ADAD9C00A57363000000000000000000C6845200C67B
      52000000000000000000FFFFFF0000000000D68C4200FFC67B00FFBD6B00D694
      4A00D67B1000DE842900FFFFF70000000000FFFFFF00FFFFFF00FFF7F700FFF7
      F700D6ADAD00D6ADAD00D6ADAD00D6ADAD00D6A5A500D6A5A500EFBDBD00FFCE
      CE00F7C6C600FFD6D600C68C8C00F7F7F700CECECE00F7E7B500FFFFE7001873
      100021A5390039C65A00007B100000520000FFCE9C00E7CE9C00B5AD9C00EFEF
      F70000000000000000000000000000000000E79C7B00D6AD9C00EFCEBD00D68C
      6B00E7AD9400E7A58C00AD634A00EFDED600C68C6B00D68C7300BD7B6300EFC6
      B500C6735200D6846300C66B42009C634A000000000000000000E7CEBD00D663
      0000EFEFF700F7FFFF00E7CEBD00C6731800FFB55A00FFB56300DE843100F7EF
      DE0000000000000000000000000000000000FFD6D600FFF7F70000000000FFF7
      F700FFF7F700FFE7E700FFE7E700FFDEDE00FFDEDE00FFD6D600FFD6D600FFCE
      CE00FFCECE00DEA5A500EFDEDE0000000000EFEFEF00ADAD9C00FFFFE700FFFF
      FF001873180021731800B5BD8400FFE7B500FFDEA500B5A58C00C6CECE000000
      000000000000000000000000000000000000E79C8400D6AD9C00FFF7F700F7DE
      D600F7DED600F7DECE00F7D6CE00FFFFFF00F7E7DE00EFCEC600EFD6C600F7EF
      E700EFCEBD00EFCEBD00F7D6C600A5735A000000000000000000FFFFFF00C66B
      2900C6630800C6630800D66B0800FFAD4A00FFC66B00E78C3100DEAD8C000000
      000000000000000000000000000000000000FFFFFF00FFD6D600FFE7E700FFFF
      FF00FFF7F700FFF7F700FFEFEF00FFE7E700FFDEDE00FFD6D600FFD6D600FFD6
      D600DEADAD00EFD6D6000000000000000000FFFFFF00C6BDBD00C6C6B500FFFF
      EF00FFFFF700FFFFDE00FFEFC600FFE7AD00BDAD8C00A5ADAD00FFFFFF000000
      000000000000000000000000000000000000EFA58400CEAD9400FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00AD7B6300000000000000000000000000EFDE
      DE00E7841000FFA51800FFB53900FFA54A00D6732100CE946300000000000000
      00000000000000000000000000000000000000000000FFFFFF00FFE7E700FFD6
      D600FFEFEF00FFF7F700FFF7F700FFEFEF00FFEFEF00FFD6D600F7C6C600E7AD
      AD00F7E7E70000000000000000000000000000000000F7F7FF00C6C6C600ADAD
      A500F7E7C600F7DEB500D6C6A5009C948400ADADAD00F7F7F700000000000000
      000000000000000000000000000000000000EFA58400D6AD9400CEAD9400CEAD
      9400CEAD9400CEA59400CE9C8C00CE9C8C00C6948400C6948400C6948400BD8C
      7300BD8C7300C68C7300BD846B00BD7B63000000000000000000000000000000
      0000DEB5B500D6AD8C00D6AD8C00DEB59C00E7C6BD0000000000000000000000
      000000000000000000000000000000000000000000000000000000000000FFFF
      FF00FFE7E700F7DEDE00F7DEDE00F7DEDE00F7DEDE00F7DEDE00F7E7E700F7EF
      EF00000000000000000000000000000000000000000000000000FFFFFF00EFEF
      EF00CECECE00CECECE00D6D6D600E7E7E700FFFFFF0000000000000000000000
      000000000000000000000000000000000000E7946B00EFA58400E7A58400E79C
      8400E79C7B00E79C7B00DE947B00DE947300DE8C6B00D68C6B00D6846300CE84
      5A00CE7B5200CE734A00C66B4200C66B420000000000845A4A00A58473009C7B
      6B009C7B6B009C7B6B009C7B6B009C7B6B009C7B6B009C7B6B009C7B6B009C7B
      63009C7B63009C7363009C7B6B0084634A000000000000000000000000000000
      00000000000000000000C6DEBD00007300006BAD6B00EFF7EF00000000000000
      00000000000000000000000000000000000000000000FFF7E700FFE7BD00FFF7
      E700FFFFFF000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000FFFFFF00CECECE009C9C9C008C8C8C00B5B5B500F7F7F700000000000000
      000000000000000000000000000000000000F7F7F700B5948400FFFFFF00FFFF
      EF00FFFFF700FFFFF700FFFFF700FFFFF700FFFFF700FFFFF700FFFFF700FFFF
      EF00FFFFEF00FFF7E700FFFFEF009C736300000000000000000000000000D6EF
      D6008CC684006BB56B004AA552000884100031C65200218C290094C69400FFFF
      FF000000000000000000000000000000000000000000FFF7E700FFE7BD00FFF7
      E700FFFFFF000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000B5B5B500B5B5B500DEE7E700DEDEDE00ADADAD0094949400BDBDBD00E7E7
      E70000000000000000000000000000000000F7F7F700AD948400FFFFFF00F7E7
      D600EFDECE00EFDECE00EFDECE00EFDECE00EFDECE00EFD6CE00EFD6C600EFD6
      C600EFD6C600F7E7D600FFFFEF009473630000000000FFFFFF0084C67B0021A5
      210008AD180021BD390029C64A0031CE520063FF9C0052E77B0029AD42004294
      4200DEEFDE00000000000000000000000000FFFFF700F7B55200EFA55200EF9C
      3900EFBD7B00F7DEB500FFEFDE00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000F7F7F700BDBD
      BD00E7E7E700F7F7FF00DEDEDE00D6D6DE00DEDEDE00C6C6C600A5A5A500A5A5
      A500F7F7F700000000000000000000000000F7F7F700AD948400FFFFFF00FFE7
      E700DEBDB500DEBDB500DEBDAD00DEBDAD00DEBDAD00DEBDAD00DEB5A500DEB5
      9C00D6B59C00EFD6C600FFFFF700947363000000000073CE7300009C080018BD
      310031D64A0039DE5A0042E76B0052EF7B0052F784006BFFA50052EF8400006B
      0000FFFFF700DEEFDE000000000000000000FFF7E700EFAD4A00FFD6AD00FFD6
      A500F7B57300EFA54A00EFAD6300E7B58400F7DEBD0000000000000000000000
      00000000000000000000FFFFFF00F7D6C60000000000DEDEDE00B5B5B500DEDE
      DE00DEDEE700CEC6C600F7E7CE00EFDEBD00CEC6C600D6DEE700D6DEDE00ADAD
      AD0094949400BDBDBD000000000000000000FFFFFF00C6A59C00FFFFFF005AB5
      6300008C0000C6D6BD00EFCECE00DEC6B500DEBDB500DEBDB500DEBDAD00DEBD
      A500DEB5A500EFDECE00FFFFF7009C7B6300BDEFBD000094000018B5290021C6
      390029CE420029C6420029C6420039CE52005AF784004AE77300188C2100EFF7
      EF006BA56B00005A0000ADCEA50000000000F7DEBD00EFAD5A00FFCE9C00FFC6
      8C00FFC68C00FFC68C00FFBD7300F7AD5A00EFA55200DE9C5A00F7DECE000000
      0000000000000000000000000000CE844A00DEDEDE00CECECE00FFFFFF00EFEF
      EF00EFE7DE00FFFFE700FFEFD600FFEFC600FFE7AD00DEBD9400CEBDB500DEDE
      E700ADB5B500949494007B7B7B00C6C6C6008CC694007BAD73009CCE9C0031A5
      390031C66300089C1800ADCE9C00F7CED600DEBDB500DEBDB500DEBDAD00DEBD
      AD00DEB5A500EFDECE00FFFFFF009C7B630031B53100009C000018B5210021C6
      390010A5180052B54A0073BD7300399C390008A5210029A53100C6DEBD0094BD
      8C000084000008A51800298C2900F7F7F700EFBD7B00FFC68400FFCE9400FFC6
      8C00FFC68400FFC68400FFC68400FFC68400FFC67B00F7A54A00E7AD6B00FFFF
      FF00000000000000000000000000BD733900EFEFEF00EFEFEF00D6D6D600C6C6
      C600FFF7EF00FFF7E700FFEFD600FFEFC600FFDEB500EFC69400DEA56B00C68C
      6300CEC6BD00C6C6C600B5B5BD00737B840021BD4A0021BD4A0021BD4A0029BD
      52004AEF840042D67300189C2900A5C69400F7CECE00DEBDB500DEBDAD00DEBD
      AD00DEB5A500EFDECE00FFFFFF009C7B630094DE940052BD520018AD18000094
      000084CE84000000000000000000C6EFC60000840000C6E7BD00BDDEBD00007B
      000021CE390021C63100007B0000C6DEC600EF9C3900FFD6A500FFC68C00FFC6
      8400FFC68400FFBD7300E78C3900DE8C3100DE8C3900D68C3100E7C6A5000000
      0000000000000000000000000000DE8C4A00FFFFFF00EFEFEF00E7E7E700D6D6
      D600D6D6CE00DEDECE00EFDEC600FFEFC600FFDEAD00EFC68C00DE9C6B00C684
      5200CECECE00CED6DE00B59C8C008C5A4A0042E7840042DE7B0042E77B004AE7
      84004AEF840052F78C004AD67B0018A529009CC68C00E7C6BD00DEB5AD00DEB5
      A500D6B59C00EFDECE00FFFFFF009C7B6B0052A54A0084B57B00C6DEC600D6F7
      D600000000000000000000000000C6EFC600ADDEAD0000000000FFFFFF001884
      180029CE420029CE42000094100094C68C00E79C4200FFCE9C00FFC68C00FFC6
      8C00FFBD7B00FFBD7B00DE944200EFD6BD00FFF7EF00FFFFF700000000000000
      00000000000000000000FFF7F700E7944A00000000000000000000000000FFFF
      FF00DEDEDE00C6C6C600C6C6C600CECEC600E7CEAD00DEBD9C00CEC6C600CEDE
      F700AD7B4A00AD4A08008C210000BD7B6B0063EF94004AE77B0052EF840052EF
      8C0052EF84005AF7940052F78C0021B53100ADD6AD00FFEFEF00F7E7DE00F7E7
      DE00F7E7D600F7EFE700FFFFFF009C7B63000084080039CE5A00008C10000073
      0000429C42007BBD7B00DEEFDE00000000000000000000000000000000003994
      310029CE4A0031D6520010A5210084BD8400F7B57300FFCE9400EFAD6300F7B5
      6B00FFC69400FFBD7B00F7AD5A00DEA563000000000000000000000000000000
      00000000000000000000F7E7DE00EF9439000000000000000000000000000000
      00000000000000000000F7F7F700CEDEE700BDBDBD00C6AD9400BD945A00BD5A
      0000B54A00009C310000BD735A00000000005AD67B0052D6730052D6730063D6
      84006BF7A50052F78C0029BD3900B5D6A500FFF7FF00F7EFEF00F7EFE700F7EF
      E700F7E7DE00FFF7EF00FFFFFF009C7B6B00088C10007BFFBD0073FFAD0063FF
      9C00088410004A9C4A00CEE7CE0000000000BDEFBD00FFFFFF00E7F7E700108C
      100042E76B0039DE5A00089C1000A5D6A500FFD6A500FFBD7300E7A55A00CE7B
      1800FFDEAD00FFBD7300FFBD7300E78C3100E7C6A50000000000000000000000
      00000000000000000000E7C6B500EF8418000000000000000000000000000000
      0000000000000000000000000000FFE7CE00DE7B0800D66B0000CE6B0000C66B
      0000A5420000B56B5200FFF7F700000000008CCE8C007BB56B009CD69C0031A5
      390052EF840018B52900ADC69C00EFCECE00D6BDB500D6BDAD00D6B5A500DEB5
      A500D6B59C00EFDECE00FFFFFF009C7B6B00089410006BFFAD0052F784005AFF
      8C0008730000EFF7EF0000000000000000005AC65A0039AD39003194290029C6
      4A004AE76B0042DE6300089C1000DEEFDE00FFEFCE00EFA55200EFCEA500EFCE
      AD00EF9C4200FFDEAD00FFB56300FFBD6B00D67B2900EFD6BD00000000000000
      000000000000FFFFFF00D68C5200FF8C10000000000000000000000000000000
      00000000000000000000F7CEA500DE8C1800DE840000D6840000CE7B0000D67B
      0000AD634200F7F7F7000000000000000000FFFFFF00CEADA500FFFFFF005ABD
      6300009C0000D6EFD600FFFFFF00F7F7EF00F7EFEF00F7EFEF00F7F7EF00FFF7
      EF00F7E7E700F7EFE700E7DED600946B5A0010A5180063FF9C004AEF730052EF
      7B0018AD290084B57B000000000000000000BDE7BD0000A5000039D65A0052EF
      7B0052EF7B0029C6420063B55A0000000000DE8C3100DEAD6B00000000000000
      0000DE944A00F7B57300FFCE9400FFAD5A00FFB56300DE7B2100D6945A00EFCE
      B500E7C6A500C66B2100EF7B0800FF8C08000000000000000000000000000000
      000000000000F7C68C00E78C2100DE942100DE8C1000D6840000DE8C0000B552
      0000FFFFFF00000000000000000000000000F7F7F700BD9C8C00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00D6CEC600D6BD
      A500FFE7AD00BD947300DED6CE00FFFFFF00009400000094000031CE4A0042E7
      6B0039DE5A00089410004AA54A006BBD6B00CEE7CE0031BD390052F784005AF7
      8C005AF7840010AD290021942100ADDEAD00FFF7EF0000000000000000000000
      0000FFF7F700D6843900FFBD7B00FFC68400FFAD5200FFAD5200FF9C3900DE7B
      1000E77B1000FF941800FF9C1800D6630000000000000000000000000000FFFF
      FF00F7B55A00E7942100E7AD4200E79C3100DE942100DE940800BD5A0000A552
      310000000000000000000000000000000000F7F7F700BD9C8C00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00DECECE00BD94
      6B00BD947300D6CEC600FFFFFF00FFFFFF0063C663009CD69C0018AD210039D6
      5A0031D6520031CE4A0010AD2100008C000073B573006BCE6B0042E76B0073FF
      AD0042E7730029C6420031AD39008CCE8C000000000000000000000000000000
      000000000000F7E7CE00D68C4200F7B56B00FFCE8C00FFAD5A00FFA54200FF9C
      3100FF9C2900FF941800EF7B0000D68C6300000000000000000000000000FFEF
      D600EFAD5200EFBD6B00EFB55200E7AD4200DE941800C6630000B5633900F7EF
      EF0000000000000000000000000000000000F7F7F700BD9C8C00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00D6C6BD00946B
      4A00DED6CE00FFFFFF00FFFFFF00FFFFFF0000000000000000007BCE730000A5
      080031CE4A0029C6420021C6390018BD290031943100A5D69C0021C6390018C6
      310039BD39009CD69400EFFFEF00000000000000000000000000000000000000
      00000000000000000000F7E7DE00DE945A00DE842900FFB56B00FFC67300FFBD
      5A00FF9C3100D6630000D68C5200F7EFEF000000000000000000FFEFD600FFCE
      7B00F7BD6300E79C3100D67B1000D66B0800CE7B3100D69C7B00F7EFEF000000
      000000000000000000000000000000000000FFFFFF00CEB5AD00DECEC600DECE
      C600DECEC600DECEC600DECEC600DECEC600D6C6C600DECEC600CEBDB500EFEF
      E700FFFFFF00FFFFFF00FFFFFF00FFFFFF000000000000000000000000009CDE
      9C00009C000010AD180010B5210010B51800109410009CD69C0039B5390094DE
      9400FFFFFF000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000FFFFFF00F7D6C600D6946300CE733100CE73
      3100CE8C5A00EFD6C600FFFFFF00000000000000000000000000FFE7C600F79C
      2100E79C5200E7B58400EFD6BD00FFEFE700FFF7F70000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000CE6B3100F7D6C60000000000000000000000
      0000000000000000000000000000000000000000000000000000FFFFFF00DEDE
      DE00B5B5B500C6C6C600FFFFFF0000000000737373007B7B7B006B6B6B009494
      9400DEDEDE00FFFFFF0000000000000000000000000000000000000000000000
      0000FFFFFF00EFEFEF009C9C9C00A5A5A500EFEFEF00FFFFFF00000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000F7D6BD00CE6B390000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000CE734200BD631000EFC6AD00000000000000
      00000000000000000000000000000000000000000000EFEFEF00C6C6C600BDBD
      BD00DEDEDE00F7F7F700EFEFEF00000000007B7B7B00737373007B7B7B007373
      730073737300A5A5A500E7E7E700000000000000000000000000EFEFEF00D6D6
      D600BDBDBD00B5B5B500E7E7E7007B7B7B006B6B6B008C8C8C00DEDEDE00EFEF
      EF00000000000000000000000000000000000000000000000000000000000000
      00000000000000000000EFC6AD00CE6B1000CE73420000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000CE734200BD7B2900C66B2100EFC6A5000000
      000000000000000000000000000000000000DEDEDE00BDBDBD00CECECE00E7E7
      E700E7E7E700E7E7E700F7F7F70000000000D6D6D600A5A5A500737373007B7B
      7B00737373006B6B6B007B7B7B00CECECE00CECECE00BDBDBD00F7F7F7000000
      000000000000FFFFFF00DEDEDE00949494007B7B7B006B6B6B006B6B6B007B7B
      7B007B7B7B0084848400B5B5B500F7F7F7000000000000000000000000000000
      000000000000EFC6A500DE7B2900DE8C3100CE6B420000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000C66B4200CE843100C6843900BD631800F7CE
      AD0000000000000000000000000000000000BDBDBD00D6D6D600DEDEDE00D6D6
      D600EFEFEF0000000000DEDEDE00A5A5A500BDBDBD00DEDEDE00D6D6D6009494
      940073737300737373006B6B6B0094949400CECECE00FFFFFF00000000000000
      0000F7F7F700DEDEDE00A5A5A5007B7B7B007B7B7B0084848400737373006363
      6300636363007373730073737300737373000000000000000000000000000000
      0000F7C6A500D6732100EFA54A00CE843100CE7B5A0000000000000000000000
      000000000000000000000000000000000000A5310000A5290000A5310000A531
      0000A5390000A5390000A5390000A5420000EF9C4A00EF9C4A00C6945200B55A
      0800FFCEA500000000000000000000000000B5B5B500D6D6D600D6D6D600FFFF
      FF00E7E7E7009494940084848400948C94009C9C9C00A5A5A500C6C6C600EFE7
      EF00C6C6C60084848400737373008C8C8C00D6D6D60000000000EFEFEF00CECE
      CE00BDBDBD00C6C6C600DEDEDE00A5A5A5008C8C8C00848484007B7B7B008484
      8400848484006B6B6B008484840073737300000000000000000000000000F7C6
      A500D6731000F7AD6300EF9C5200BD843900AD420000A54A0000A5420000A539
      00009C3900009C3100009C3100009C390000B5521800CE730800C66B1000C673
      1800CE7B2100CE842900CE843900CE844200D68C4200EFA55200EFA55A00CE9C
      6300C6732900F7C69C000000000000000000B5B5B500EFEFEF00F7F7F7009C9C
      9C006B636B006B6B6B006B736B008C8C8C00529C5A0029A531009CBD9C00F7EF
      F700F7F7F700EFEFEF00ADADAD008C8C8C00D6D6D600EFEFEF00C6C6C600DEDE
      DE00EFEFEF00EFEFEF00DEDEDE00BDBDBD00ADADAD00ADADAD00949494007B7B
      7B00737373007B7B7B008C8C8C007B7B7B000000000000000000F7BD9400DE8C
      3100F7B57300EFA55A00EF9C5200D68C4200CE8C4200CE843900CE843100CE7B
      2100C6731800C66B1000C66B0000AD521800B5521800E7842100D6731000DE7B
      2100DE842900E78C3100E7943900E7944200EF9C4A00EFA55200F7AD6300F7AD
      6B00C69C6300C67B3900F7C6940000000000DEDEDE00CECECE00D6D6D600B5B5
      B5008484840052845A0029A5420010C6310031E7630029CE520010AD2100BDD6
      BD00E7DEE700CECECE00BDBDBD00D6D6D600D6D6D600EFEFEF00E7E7E700DEDE
      DE00D6D6D600D6D6D600EFEFEF00EFEFEF00EFEFEF00E7E7E700F7E7F700F7E7
      F700DECEDE00A5BDA500ADA5AD007B7B7B0000000000F7BD8C00EF9C4A00F7BD
      7B00EFAD6B00EFA56300EF9C5200EF9C4A00E7944200E7943900E78C3100DE84
      2900DE7B2100DE7B1800D6730800AD521800AD521800E7943900D6731000D67B
      2100DE843100DE8C3900E7944200E7944A00E79C5200EFA55A00EFAD6300F7B5
      6B00F7B57B00CE9C7300C6844200F7C6940000000000FFFFFF00E7E7E700D6CE
      D600ADB5AD0029BD4A0031E76B004AEF840052EF8C0052D6730021B5390084AD
      8400638C630094AD9400FFFFFF0000000000D6D6D600EFEFEF00DEDEDE00D6D6
      D600E7E7E700FFFFFF0000000000F7F7F700F7EFF7000000000073AD7B00428C
      42004A8C52006BCE84009CCEA500847B8400F7BD9400F7AD5A00FFCE9C00F7B5
      7B00EFAD6B00EFAD6300EFA55A00E79C5200E7944A00E7944200DE8C3900DE84
      3100D67B2100D67B1800DE7B1000AD521000B5521800E79C4A00D67B1800DE84
      2900DE8C3100E78C3900E7944200E79C4A00EFA55A00EFA56300EFAD6B00F7B5
      7300FFBD8400EFC68C00CE8C4A00F7BD8C00000000000000000000000000FFFF
      FF00D6DED6004ACE6B0042E773004AE77B0052EF84005ACE6B0000A5180039C6
      5A0031C64A0018AD2100A5E7AD0000000000D6D6D600BDBDBD00DEDEDE00E7E7
      E7009C9CA50084848400BDBDBD00DEDEDE00FFF7FF005AAD5A00007B0000087B
      00002173000008520000ADADAD00DEDEDE00F7BD8C00F7AD6B00FFE7CE00F7C6
      8C00F7B56B00EFAD6B00EFA56300EFA55A00E79C4A00E7944200E78C3900DE8C
      3100DE842900D67B2100DE841800AD521000B5521800EFA55A00DE843100DE8C
      3100DE944200E7944A00E79C5200EFA55A00EFAD6300EFAD6B00F7AD6B00F7B5
      7B00FFCE9400EF9C5200F7BD8C00000000000000000000000000000000000000
      0000EFFFEF005AD6730042E77B004AE7840052EF840063EF8C0052F78C005AF7
      8C0031D6520010B52100CEEFD60000000000F7F7F700C6C6C600D6D6D600A5AD
      AD008C7B7300A59C8C0073736B00AD94AD0052A55A00008C00004AC65A0010AD
      210000940000108C0000297B2100F7FFF70000000000F7BD8400EFA55A00FFE7
      C600F7BD8400F7AD6B00EFAD6300EFA55A00E79C5A00E79C5200E7944A00DE8C
      3900DE8C3100DE842900DE842100B5521000B5521800F7BD7300EFB57300EFB5
      7B00F7BD8400F7C68C00F7C69400FFCE9C00F7CE9C00F7B57B00F7B57300FFCE
      9C00E7944200F7C6940000000000000000000000000000000000EFFFF700ADEF
      BD0052CE6B0039CE5A004AEF840052EF840052EF84005AF78C0063FF94004ADE
      630008B52100A5E7AD000000000000000000000000000000000000000000ADAD
      AD00EFD6C600FFEFD600FFF7EF007BAD630018B531006BC67300FFFFFF000000
      0000B5EFC60008AD1800107B00003984310000000000FFFFFF00F7BD8C00EF9C
      4A00FFEFCE00F7BD8400EFAD6300EFA55A00F7CEA500F7CE9C00F7C68C00F7BD
      8400EFB57300EFB56B00EFA54A00B55A1800A5390000BD4A0000BD4A0000BD4A
      0000BD520000C6520000C65A0800C65A0800F7CE9C00F7B57300FFCE9400E784
      2900F7C69C0000000000000000000000000000000000FFFFFF008CEFA50021D6
      520052F78C005AF78C0052EF840052EF8C005AF78C0063FF940063EF840018BD
      31006BD67B00F7FFF70000000000000000000000000000000000F7F7F7009C9C
      9400FFFFEF00FFEFD600FFFFFF00319C290052CE6B00ADC6A50010AD21009CDE
      9C0000000000B5EFC6001084000010730000000000000000000000000000F7BD
      9400E78C3100FFE7CE00F7C69400F7B56B00BD5A1000C65A0800C6520000BD52
      0000BD4A0000BD4A0000BD4A0000AD4200000000000000000000000000000000
      0000000000000000000000000000BD633100FFCE9400FFBD8400E78C3900F7C6
      9C00000000000000000000000000000000000000000000000000EFFFEF0073DE
      8C004AEF7B005AF78C005AF78C005AF78C005AFF940073FF9C0039D6520042CE
      5A00D6F7DE000000000000000000000000000000000000000000BDBDBD00D6CE
      C600FFFFEF00FFEFE700FFFFFF0052A5420063DE8C0010B5310010BD390000A5
      10009CDEA5000000000018A51800217B10000000000000000000000000000000
      0000F7BD9400E78C3900FFE7CE00FFBD7B00C663390000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000C66B3100FFCE9400E7944A00F7C69C000000
      000000000000000000000000000000000000000000000000000000000000E7F7
      E70063DE840052F7840063FF94005AFF940073FFA50063E77B0031CE4A00A5E7
      B500000000000000000000000000000000000000000000000000ADADAD00FFFF
      FF00FFF7EF00FFF7EF00FFF7F700C6D6B50029B54A0052DE840029C65A0021BD
      4A0000AD18009CD69C0042AD520073B56B000000000000000000000000000000
      000000000000F7BD9400E79C5200FFCE8C00CE6B390000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000CE733900E7943900F7C6A500000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000D6F7DE0052DE730063FF94005AFF9C0094F7A50031DE5A006BD684000000
      00000000000000000000000000000000000000000000E7E7E700DEDEDE00DEDE
      DE00DEDEDE00EFEFEF00FFFFFF0000000000BDCEB5004AAD520042D6730031CE
      630018BD4200009C0800A5D6A500000000000000000000000000000000000000
      00000000000000000000F7C69C00E78C3900CE73390000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000CE733100FFDEBD0000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000D6FFDE0042DE6B00ADFFC6004AEF730042CE6300F7FFF7000000
      00000000000000000000000000000000000000000000FFFFFF00F7F7F700F7F7
      F700F7F7F700EFEFEF00DEE7E700DEDEDE00EFE7EF00F7FFF7009CD6A5008CCE
      8C008CCE8C00ADDEAD0000000000000000000000000000000000000000000000
      0000000000000000000000000000FFD6BD00CE73390000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000FFFF
      FF00FFEFE700F7CE9C00FFE7C600000000000000000000000000FFFFFF00DEDE
      DE00C6C6C600DEDEDE00FFFFFF0000000000636363007B7B7B00737373009C9C
      9C00DEDEDE000000000000000000000000000000000000000000000000000000
      00000000000094CE940031CE630042DE7B0042DE730042DE7B0010BD420084C6
      8C00000000000000000000000000000000000000000000000000000000000000
      0000F7F7F70073737B00B58C6B00EFB58C00AD846B006B737B00FFFFFF000000
      0000F7F7F700848C94007B848400C6C6CE000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000FFFF
      FF00FFEFE700F7CE9C00FFE7C6000000000000000000EFEFEF00C6C6C600CECE
      CE00E7E7E700F7F7F700EFEFEF00000000005A5A5A007B7B7B007B7B7B007373
      730084848400ADADAD00EFEFEF00000000000000000000000000000000000000
      00000000000094CE940031CE5A0042DE730039D66B0042D6730010B5390084C6
      8C00000000000000000000000000000000000000000000000000000000000000
      00005A5A630094847300FFDEA500FFD6A500FFD69C00847B6B00DEDEE700F7F7
      F700636B7300AD846300C6947B00635A5A000000000000000000000000000000
      00000000000000000000000000000000000000000000F7E7D600F7D6AD00EFB5
      6B00E79C3100F7B56B00F7B55A00FFEFCE00DEDEDE00BDBDBD00D6D6D600E7E7
      E700E7E7E700E7E7E700EFEFEF0000000000D6D6D6008C8C8C006B6B6B007B7B
      7B00737373007373730084848400D6D6D6000000000000000000000000000000
      0000000000008CCE940031CE5A0042DE730039D66B0039D6730010B5390084CE
      8C00000000000000000000000000000000000000000000000000FFFFFF006B6B
      6B006B737300B5A59400FFEFCE00FFE7CE00FFE7BD00B5A584007B7B7B00636B
      7300A58C7300FFE7A500FFD69400DEB58C00EFCEB500FFFFFF00000000000000
      00000000000000000000FFFFF700EFCEB500E7B57B00EFAD5A00EFA54A00FFBD
      7B00FFD69C00FFD6A500F7B56300F7DEB500BDBDBD00DEDEDE00DEDEDE00D6D6
      D600E7E7E70000000000FFFFFF00ADADB500C6C6C600F7F7F700CECECE007B7B
      7B006B6B6B00737373006B6B6B00949494000000000000000000000000000000
      0000000000009CD69C0039CE63004ADE7B0042D6730042DE730010B542008CCE
      94000000000000000000000000000000000000000000000000005A5A5A006B6B
      6B00A5A5A500A5A59C00EFD6CE0000000000FFFFDE008C8C7B00212129007B84
      8C00DEB59C00FFF7D600FFE7C600FFE7B500C6733900FFFFFF00000000000000
      000000000000EFD6C600DE945200F7A55200F7AD5200FFBD7300FFC68C00FFC6
      8C00FFC68C00FFCE9C00F7B56B00F7CE9C00B5B5B500D6D6D600D6D6D600F7F7
      F70000000000B5B5B5007B7B7B008C8C84009C9C94009C9C9C00CECECE00EFEF
      EF00ADADAD00737373007373730084848400BDE7BD0084CE8C0084CE940084CE
      94008CCE940052BD5A0039D66B004ADE7B0042DE730042DE730021BD52004AAD
      52008CC68C0084C68C0084C68C0084C68C00EFEFEF005A5A5A00393939008C8C
      8C00D6D6D600D6DEDE00A5949400CEB5AD00BDAD9C003931390094949400C6C6
      C600AD9C9C00FFF7E700FFFFFF00F7DEBD00BD6B290000000000000000000000
      0000FFFFFF00E7AD7300EFBD7B00FFD69C00FFCE8C00FFCE8C00FFC68400FFC6
      8400FFC68C00FFCE9400FFC68400F7BD7300B5B5B500E7E7E700FFFFFF00BDBD
      BD00636363005A5A5A00847B6B007B8C9C0094949400C6BDAD00D6D6D600EFEF
      EF00F7F7F700DEDEDE009C9C9C007373730073CE840039D6630021CE520029CE
      520021C6520031CE5A004ADE7B0042DE730042DE730042DE730042D66B0021BD
      520010B5390010B5390010B5390010B5420063636300ADADAD00949494004A4A
      4A00DEDEDE0000000000E7EFEF00635A5A00736B7300424A4A0084848400E7E7
      E700E7E7EF00AD949400DEC6BD008C7B7300D6843900FFFFFF00000000000000
      000000000000F7DECE00D6843100D67B2900CE7B2100D67B1800FFB57300FFC6
      8400FFC68400FFC68C00FFCE9C00EFA54200CECECE00F7F7F700CECECE008484
      8400848484007B7363005A638400008CFF002184F700BDCEE700FFEFDE00F7EF
      EF00EFEFEF00E7E7E700E7E7E700B5B5B5008CD6940084FFAD005AEF8C005AEF
      8C005AEF8C0052EF840052E784004AE77B004AE77B0042DE730042DE730042DE
      730042DE730042D6730039D6730042DE7B00424242009C9C9C00ADADAD00D6D6
      D6006B6B6B008484840042424200394242005252520042424200CECECE00E7FF
      E700DEF7D600C6BDC60063636300DEDEDE00E78C3900F7EFEF00000000000000
      000000000000000000000000000000000000F7F7EF00DE944200FFC68400FFBD
      7B00FFC68400FFC68C00FFCE9400E794390000000000E7E7E700F7F7F700EFEF
      EF00CECEC600BDAD9C003184E70042B5FF0031A5FF00107BFF008CADE700E7D6
      C600D6D6CE00D6D6D600DEDEDE00000000008CD6940084FFA50063EF8C0063EF
      8C005AEF8C005AE78C0052E7840052E7840052E784004AE77B0042DE730042DE
      730039D66B0039D66B0039D66B0042D6730042424200B5B5B500DEDEDE00CECE
      CE00C6C6C6009C9C9C008C8C8C007B737B005A5A5A005A525A00736B7300B5BD
      AD00189C3100A5B59C00FFFFFF0000000000EF8C2900EFDED600000000000000
      000000000000000000000000000000000000D6944A00F7AD5A00FFBD7B00FFC6
      8400F7AD6300E79C4A00FFCE9400F7AD5A000000000000000000FFFFFF00F7F7
      F700FFF7EF0094BDF70031A5FF0042ADFF004AB5FF0039ADFF001884FF006B9C
      E700EFEFEF000000000000000000000000008CD69C0094FFB50073F79C0073F7
      9C0073F79C006BEF94005AEF8C0052E7840052E784004AE77B0042DE7B004ADE
      7B004ADE7B0042DE730042DE730042DE7B00636363003939390094949400ADAD
      AD00A5A5A500A5A5A500ADADAD00BDBDBD00ADBDAD00ADBDAD00ADB5A5009CB5
      940039C66B0031B54A00CEE7C60000000000EF7B0800DEBDA500000000000000
      0000000000000000000000000000DEB59400EF943100FFBD7300FFBD7300FFC6
      8C00D6842100DEA56300F7BD7300FFC684000000000000000000000000000000
      0000E7F7FF0052ADFF0039A5FF0042ADFF004AADFF004AB5FF004AB5FF002994
      FF006BADFF00F7FFFF0000000000000000007BCE84006BE7840063DE7B0063DE
      7B005ADE7B006BE784007BF79C005AEF8C0052E7840052E784004ADE7B0042D6
      6B0042CE630039CE5A0031C65A0031CE6300F7F7F700BDBDBD00C6C6C600B5B5
      B500A5A5A5008C8C8C00736B7300739C730021B5420021AD4A0021AD420029AD
      4A0039D66B0042DE7B0029AD4200CEEFCE00FF8C0800CE7B3100F7EFEF000000
      00000000000000000000DEBDA500DE843100FFBD6B00FFB56300FFC67B00E78C
      2900F7D6B500F7E7D600E7A55200FFEFC6000000000000000000000000000000
      000094CEFF0039A5FF0042ADFF0042ADFF004AB5FF004AB5FF0063C6FF0063CE
      FF0031A5FF0052ADFF00EFF7FF0000000000BDE7BD008CD6940094D69C0094D6
      9C0094D69C0063C66B006BE784006BEF94005AEF8C0052EF840031CE5A0052B5
      5A0094D69C0094CE94008CCE94008CCE94000000000000000000000000000000
      0000FFFFFF00F7F7F700DED6DE0084AD840042DE730039DE730042DE7B004AE7
      7B004AE77B004AEF84004ADE7B0039AD4A00EF7B0000FF8C1000C65A0000D694
      6B00DEAD8400C67B3100E7842100FFB55A00FFAD5A00FFBD6B00F7A54A00DEA5
      6B000000000000000000EFC69C00CE6B0800000000000000000000000000CEE7
      FF0052B5FF0042ADFF004AADFF004AB5FF004AB5FF004AB5FF0042A5FF004AAD
      FF008CC6FF00DEEFFF00000000000000000000000000FFFFFF00000000000000
      0000000000009CD69C005ADE7B006BF79C005AEF8C005AEF8C0021C64A008CCE
      8C00000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000008CC6940052DE840031DE6B0042DE730042E7
      7B004AE77B0052EF84005AF78C0042E78400CE630800FF9C2100FF9C2100F78C
      1800EF8C2100FFA54200FFAD5200FFA54A00FFB56300F7A55200D6944A00F7F7
      EF00000000000000000000000000000000000000000000000000F7FFFF0084CE
      FF0042B5FF005AC6FF004AB5FF004AB5FF0052BDFF002994FF004294FF000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000FFFFFF0094D69C0063DE7B0073F79C0063EF8C005AEF8C0021C64A0084CE
      8C00000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000084BD84006BE79C004AE784005AEF940063F7
      94006BF79C0052F78C005AFF94004AD66300DEA58400DE731000FFA53900FFAD
      4200FFA54200FFA54A00FFB56300FFBD6B00EF944200D6945200F7E7D6000000
      0000000000000000000000000000000000000000000000000000EFF7FF009CD6
      FF0084D6FF0052B5FF004AB5FF0052B5FF005ABDFF0031A5FF005AA5FF000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000FFFFFF0094D69C0063DE7B0073F79C0063EF8C005AEF8C0021C64A0084CE
      8C00000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000009CCE9C004ACE6B005AD67B0063DE84005AD6
      73008CEFAD004AFF8C004AD66300E7EFDE00FFF7FF00DEA58400CE631000EF8C
      2100FFAD4A00FFB55200F7943900CE731800DEAD7B00F7EFE700000000000000
      000000000000000000000000000000000000000000000000000000000000FFFF
      FF00F7F7FF006BB5FF004AB5FF0052BDFF005ABDFF0039A5FF005AA5FF000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000FFFFFF008CD6940063E7840094FFB50084FFAD0084FFAD0039D663007BCE
      8400000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000F7FFF700DEEFD600DEEFD600DEEFDE00B5CE
      A5006BEF9C0042D66300D6EFCE000000000000000000FFFFFF00F7EFEF00E7B5
      9400D68C6300D68C6300E7AD8C00F7E7DE00FFFFFF0000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000073BDFF004ABDFF005ACEFF0063D6FF0042BDFF005AADFF000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000BDE7BD007BCE84008CD69C008CD6940094D69C0073CE8400BDE7
      BD00000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000E7EF
      DE0039C65200E7F7E70000000000000000000010C600104AFF000839E7000008
      BD004A4AC600D6D6EF00FFFFFF00FFFFFF00FFFFFF00FFF7FF006363C6000018
      CE000010BD000810AD005A5AC600E7E7F7000000000000000000CEBDB500A584
      7300CEC6BD00DED6CE00EFE7E700F7F7F700FFFFFF0000000000000000000000
      00000000000000000000000000000000000000000000E7E7E700E7E7E700E7E7
      E700EFEFEF00EFEFE700F7F7F7008C8484007373730073737B00737373007373
      73006B6B6B0073737300CECECE00FFFFFF00000000000000000000000000F7FF
      FF00FFF7FF000000000000000000FFFFFF00F7E7E700F7EFE70000000000FFFF
      FF00AD522100BD734A00F7E7DE0000000000184AF7001852FF00184AFF00184A
      FF000021D6002129BD00B5B5E700FFFFFF00FFFFFF005A5AC6000021D6000839
      F7000839F7000031E7000010BD004A4ABD0000000000F7F7F700B5A594000000
      0000E7DEDE00DECECE00CEC6BD00B5A59400B5A59400C6B5AD00D6C6C600DED6
      CE00FFFFFF0000000000000000000000000084848400B5A5A500ADA5A500B5A5
      A5009C94940052739C00A5B5CE00948C8C00FFFFFF00FFFFFF00DE9C8400FFFF
      FF00FFFFFF00D6D6D6006B6B6B00FFFFFF0000000000000000000000000052B5
      D6004ABDDE00B5D6E700E7C6B500CE845200A5310000AD421000CE845A00C663
      1000C65A0000B54A0000AD4A1000EFD6C6001021CE00215AFF002152FF001852
      FF00184AFF000839DE000818B500B5ADE7005A5ABD000021DE001042FF001042
      F7000839F7000839F7000831EF000008B50000000000DED6D600CEBDB500D6A5
      9400A56B5A00B58C7B00A58C8400C6C6C600F7F7F700EFE7E700CEC6BD00C6B5
      AD00DED6CE000000000000000000000000009C949400FFF7F700FFEFEF00FFF7
      F700DEC6C6003994E70094CEFF0094949400FFFFFF00D69C84009C290000D6B5
      A500FFFFFF00CECECE007B737300FFFFFF000000000000000000EFF7FF0031BD
      E70021EFFF008CADAD00B5520000C6520000D66B0000AD420800A5390000CE63
      0000E77B0800CE6B18009C290000BD734A003131CE002963FF002152FF002152
      FF002152FF002152FF001042EF000000AD000829DE00104AFF001042FF001042
      F7001042F7000839F7000839FF000021DE0000000000CEB5AD00EFE7DE00C684
      73007B2921005A10080010000000E7DECE000000000000000000000000000000
      0000FFFFFF000000000000000000000000009C949400FFF7F700FFEFEF00FFF7
      F700DEC6C6004294E7009CCEF700949C9C00F7DED600A5390000A5390000AD4A
      1000F7E7E700D6D6D6007B7B7B00FFFFFF000000000000000000ADCEE7004AE7
      F7004AF7FF00B5BDA500D66B0000E77B0000EF8C0000AD4A1800A54A0000E77B
      0000FF940000D67B1800A5390000B56331000810CE00316BFF003163FF00295A
      FF00295AFF00215AFF002152FF001852FF001852FF00184AFF001042FF001042
      FF001042F7000842FF000029E7002129BD00F7EFEF00CEB5AD00F7E7D600DEBD
      AD00EFD6CE00FFF7DE009494D6000021FF000000AD00CECEDE0000000000B59C
      8C00000000000000000000000000000000009C9C9C00FFFFFF00FFF7F700FFFF
      FF00DECECE004A9CE7009CD6FF008C8C8400BD6B3100B55A1800DEBDA500B539
      0000C67B4A00CED6DE00847B7B00FFFFFF0000000000000000006BB5D6005AEF
      F70063FFFF00C6BD9C00F7840000FF9C0800FFB54A00BD5A1800A54A0000EF9C
      0000FFCE7B00EFAD6B00B54A0000B55218009494E7002939D6002952EF003973
      FF00295AFF00295AFF00295AFF002152FF002152FF00184AFF00184AFF00104A
      FF00104AFF000021DE004A4AC600DEDEEF00E7DEDE00D6C6B500F7DECE00E7C6
      AD00E7C6B500E7C6B500EFCEB5001031DE00084AFF000010BD00ADA5B500D6BD
      AD0000000000000000000000000000000000948C8C00BDB5B500BDB5B500BDB5
      B500B5ADAD00427BB500A5C6DE00944A1800B5420000E7CEC600FFFFFF00D694
      6300B5420000A58473007B848C00FFFFFF0000000000DEEFF70063C6DE0084FF
      FF007BFFFF00CECEA500FFAD4A00FFCE7300F7B56300D673180094390000B55A
      2100EFB57B00F7B56B00EF9C4A00B5632900FFFFFF00D6CEF7005252CE001029
      D6004A84FF003163FF00295AFF00295AFF002152FF002152FF00184AFF001852
      FF000018D6005A5ACE00F7F7FF00FFFFFF00DED6CE00D6C6BD00EFD6BD00E7C6
      AD00E7C6B500E7C6BD00FFD6B5007B73BD001042F7000842FF0008089C00CEC6
      CE00000000000000000000000000000000009C9C9C00FFFFFF00FFF7F700FFFF
      FF00DED6D6004AA5E700ADD6F700B54A00009C634200737B84007B7B7B00847B
      7300B5520800B54A0000A58C8400F7FFFF0000000000B5D6E7005AC6DE00ADFF
      FF008CFFFF00A5E7E700DEC68C00E7A53100CE5A0000BD5A0000CE630000BD52
      0000AD420800C6845200D6CEAD0094B5B500FFFFFF00FFFFFF00FFFFFF00A5A5
      E7000008C6004273FF003163FF00295AFF00295AFF002152FF002152FF000021
      D6005A5ACE00FFFFFF00FFFFFF00FFFFFF00DED6CE00E7D6C600E7C6AD00E7C6
      AD00E7C6B500E7C6AD00EFDECE00000000002139E700215AFF000029FF002129
      AD00000000000000000000000000000000009C9C9C00FFFFFF00FFFFFF00FFFF
      FF00DED6D60052A5E7008CCEFF00CEB5AD00A5DEFF008CD6FF00D6D6D600FFFF
      FF00FFE7D600BD4A0000B55A1000EFE7E700000000008CCEE70073D6E700C6FF
      FF009CFFFF0073F7FF008CF7FF00BDDEDE00D6630000DE730000E77B0000D673
      1800A531000084847300A5FFFF00399CC600FFFFFF00FFFFFF00FFFFFF00FFFF
      FF000810C600427BFF003163FF003163FF00295AFF00295AFF002152FF001039
      DE001821B500FFFFFF00FFFFFF00FFFFFF00DED6CE00EFDECE00E7BDAD00E7C6
      AD00E7C6B500E7C6AD00E7CEC600FFE7C600CECEE7000018F7005273BD003939
      3900000000000000000000000000000000009C9C9C00FFFFFF00FFFFFF00FFFF
      FF00DED6D6005AADDE005ABDFF007BCEFF0052BDFF0042ADFF00ADADAD00FFF7
      F700FFFFFF00E7B58C00BD4A0000DE944A00DEEFF70052B5D600D6FFFF00D6FF
      FF00CEFFFF0094FFFF0094FFFF00CEE7E700FF8C0000FFA51800FFAD2100F7AD
      4A00B5420000B58C6300D6FFFF003194BD00FFFFFF00FFFFFF00FFFFFF006B63
      D600315AF7004273FF00396BFF00316BFF00316BFF00295AFF00295AFF002152
      FF000021CE005A5ACE00FFFFFF00FFFFFF00DECEC600EFDECE00DEBDA500DEBD
      AD00DEC6AD00E7C6AD00E7C6B500E7CEB500FFFFF700A5ADD600B5B5AD00526B
      C6008C84C600000000000000000000000000A5A5A500FFFFFF00FFFFFF00FFFF
      FF00DEDED60063B5E70052C6FF005AC6FF0052BDFF004AB5FF00B5B5B500FFFF
      FF00FFF7F700FFFFFF00DE945A00CE5A0000B5D6E700DEF7FF00EFFFFF00FFFF
      FF00DEFFFF00A5FFFF00A5FFFF00CEF7F700F7B56300EFB57B00EFAD6B00EF9C
      5A00C6631800C6A58400DEFFFF00319CBD00FFFFFF00FFFFFF00EFEFFF002931
      CE004A84FF004273FF00396BFF004273FF00294AEF004273FF00295AFF002152
      FF00184AF7000818BD009C9CDE00FFFFFF00DECEC600F7E7CE00DEBDA500DEBD
      A500DEBDAD00E7C6B500FFF7EF00FFFFFF0000000000F7EFD6005A638C00395A
      CE000008BD00CEC6DE0000000000000000009C9C9C00E7E7E700DEDEDE00E7E7
      E700CEC6C60063A5CE004AADE70052ADDE004AADE70042A5DE00ADADAD00E7DE
      DE00DED6D600E7D6D600DED6D600DE8C4200A5D6E70063BDDE005ABDE7005ABD
      DE00DEFFFF009CF7FF00A5FFFF00A5FFFF00CEEFE700CEE7D600D6DEC600D6D6
      C600CEDED600D6F7EF00E7FFFF00399CBD00FFFFFF00FFFFFF009494E700395A
      EF005284FF004A73FF00427BFF002152F7001818B5001831D6003973FF00295A
      FF002152FF000839E7002129BD00D6D6F700DECEC600F7E7D600DEBDA500DEBD
      A500DEBDA500DEBDAD00EFD6C600EFD6C600EFD6C600DED6C6009C8C8C00A5A5
      8C000031FF002129B500F7F7EF00000000009C9C9C00DEDEDE00D6D6D600DED6
      D600C6BDBD0063A5C6004AA5D60052A5D6004AA5D600429CD600A5ADAD00DED6
      D600D6C6C600DEC6C600A5A5A500EFDED600FFFFFF00EFF7FF00EFF7FF00FFFF
      FF00FFFFFF00ADEFF700A5EFF7009CE7F70094E7F70084E7F70084E7FF007BEF
      FF00CEFFFF00D6FFFF00F7FFFF00399CBD00FFFFFF00FFFFFF00525ADE004A73
      F7005284FF004A7BFF00396BFF002121CE00FFFFFF00847BDE001831DE003163
      FF002152FF001852FF000021D6004A4ACE00DECEBD00FFFFE700F7E7CE00F7E7
      D600EFE7D600EFE7D600EFE7D600E7D6CE00DED6C600BD9C8C00E7D6CE00FFFF
      FF006373A5000842FF000018D600BDBDDE00A5A5A500FFFFFF00FFFFFF00FFFF
      FF00DEDED6006BBDE70063CEFF0063CEFF005AC6FF0052BDFF00B5B5B500FFFF
      FF00FFF7F700FFF7F700B5A5A500E7EFEF000000000000000000000000000000
      000000000000EFFFFF00F7FFFF00F7FFFF00FFFFFF00FFFFFF00FFFFFF00EFFF
      FF00E7FFFF00DEFFFF00FFFFFF00399CC600FFFFFF00CEC6F7004A5AEF005A8C
      FF005284FF004A7BFF001831DE00ADADEF00FFFFFF00FFFFFF007373DE002142
      E7002963FF00184AFF00184AF7000010BD00D6BDAD00D6B59C00CEB5A500CEB5
      A500C6AD9C00BDAD9C00CEB5AD00D6C6BD00DECEC600EFE7DE00FFFFFF000000
      0000D6D6C6003952AD000031F7003139CE00A5A5A500FFFFFF00FFFFFF00FFFF
      FF00DED6D60063B5DE005AC6FF005AC6FF005AC6FF0052BDFF00B5B5B500FFFF
      FF00FFF7F700FFF7F700B5A5A500E7E7E7000000000000000000000000000000
      0000ADE7F700A5DEF700ADE7F700ADDEF700A5DEEF00A5DEF70094CEE700E7F7
      FF00E7FFFF00DEFFFF0000000000399CC600FFFFFF00CECEF7003142DE006394
      FF006BA5FF00315AF7005A5ADE00FFFFFF00FFFFFF00FFFFFF00F7F7FF005252
      CE002142EF00295AFF001852FF000839EF00F7F7EF00EFE7DE00F7EFEF00FFF7
      F700000000000000000000000000000000000000000000000000000000000000
      0000F7F7EF00ADADA500526B940021299400ADADAD00FFFFFF00FFFFFF00FFFF
      FF00DEDEDE0063B5E70052C6FF0052C6FF0052C6FF004ABDFF00B5B5B500FFFF
      FF00FFF7F700FFF7F700B5ADAD00E7E7E7000000000000000000000000000000
      0000C6EFF700C6EFF700BDE7F700B5E7F700ADDEF700B5E7F70063BDDE00C6E7
      F700000000000000000000000000429CC600FFFFFF00FFFFFF00CECEF7003942
      DE002131DE003942DE00C6C6F700FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF003939C6001842EF000818D6003939CE000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000F7F7F700B5B5CE009C9C9400A5A5A500ADADAD00A5A5A500ADAD
      AD00A59C9C008C949C008C9CA5008C9CA50084949C0084949C00949494009C9C
      9C009C9C9C009C9C9C0084848400000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000F7FFFF0052AD
      D6004AA5CE0052A5CE00429CC6008CC6DE000000000000000000000000000000
      000000000000FFF7F700C6A5A500B5848400EFE7E700FFF7F700FFFFFF000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000DEDEDE00ADADAD00A5A5
      A500A5A5A500BDBDBD00EFEFEF000000000000000000638CFF006B6BC600F7F7
      EF009C94DE000000B500CECEDE00FFFFCE00FFEFCE00FFEFCE00FFEFCE00FFEF
      CE00FFEFCE00FFEFCE00FFE7C600FFF7EF000000000000000000000000000000
      00000000000000000000A584730000000000FFFFEF00FFFFEF00FFFFEF00FFFF
      EF00FFFFEF00FFF7EF00FFF7E700FFFFEF000000000000000000000000000000
      0000F7EFEF00C6A5A500DEA5A500BD8484009C636300AD737300BD949400D6BD
      BD00E7DEDE00F7EFEF00FFFFFF00000000000000000000000000000000000000
      00000000000000000000000000000000000000000000DEDEDE00ADADAD00A5A5
      A500A5A5A500BDBDBD00EFEFEF0000000000181810007B84FF000831E7000000
      84000018C6000052FF008473A500FFCE6300FFB55200FFB55A00FFB55A00FFAD
      5A00FFAD5A00FFAD5A00FFAD5200FF9C08000000000000000000000000000000
      000000000000000000009C84730000000000FFF7EF00FFF7EF00FFF7EF00FFF7
      EF00FFF7EF00FFF7EF00FFF7E700FFFFEF000000000000000000F7F7F700BD94
      9400EFCECE00FFE7E700F7CECE00BD84840000000000FFF7F700F7EFEF00EFDE
      DE00E7BDBD00BD8C8C00A5737300F7EFEF0000000000FFE7D600F7DEBD00EFC6
      A500EFC69400EFC69400F7D6AD00E7DED600636B6B0073737300A5A5A5006B63
      6300A5A5A50084848400525252006363630029211000C6BDE7002163FF00104A
      FF001852FF000831DE00DED6EF00FFFFFF00FFEFFF00FFEFFF00FFEFFF00FFE7
      FF00FFE7FF00FFDEF700FFF7FF00FF9C1000FFFFFF00F7F7F700F7F7F700F7F7
      F700F7F7F700FFFFFF00A584730000000000FFF7F700FFF7F700FFF7F700FFF7
      EF00FFF7EF00FFF7EF00FFF7EF00FFFFF70000000000F7F7F700C69C9C00EFCE
      CE00FFE7E700FFDEDE00F7D6D600BD8C8C0000000000FFFFFF00FFFFFF00FFFF
      FF0000000000E7C6C600A5737300F7EFEF00F7DEC600E7841800D66B0000E794
      3100EF942100D65A0000EF840000946329007B8C9C00D6D6D6007B7B73004263
      730073737300ADADAD008C8C8C007373730010100800FFFFEF001031D6002963
      FF001852FF002131BD00FFFFF700FFEFEF00FFE7E700FFE7E700FFDEDE00FFDE
      DE00FFDED600FFD6D600FFE7FF00FFA51000BDAD9C00AD8C7B00AD8C7B00AD8C
      7300AD8C7300B59C8C009C7B6B0000000000FFFFF700FFFFF700FFFFF700FFFF
      F700FFF7EF00FFF7EF00FFF7EF00FFFFF700FFF7F700CEA5A500EFD6D600FFEF
      EF00FFDEDE00FFDEDE00FFD6D600BD8C8C0000000000EFE7E700EFE7E700FFFF
      FF00FFFFFF00DEC6C600AD737300F7EFEF00EFC69C00EFA54200F7BD7300FFCE
      8400AD52080094391000FFA52900AD8C5200A5B5C6009C9C9400847B7B00009C
      B50073848C00736B6B00A5A5A5007373730010100800FFFFEF002152E7002152
      F7001042EF001042E700F7EFEF00FFF7F700FFEFEF00FFEFEF00FFE7E700FFE7
      E700FFDEDE00FFDEDE00FFEFFF00FF9C1000D6C6BD00FFFFFF00FFFFEF00FFFF
      EF00FFFFEF00FFFFFF00AD8C730000000000FFFFFF00FFFFFF00FFFFFF00FFFF
      F700FFFFF700FFF7F700FFF7EF00FFFFF700F7EFEF00D6B5B500FFEFEF00FFE7
      E700FFDEDE00FFDEDE00FFD6D600C68C8C0000000000AD949400845A5A00C6A5
      A50000000000DEC6C600AD737300F7EFEF00F7D6BD00EF9C4200FFDEA500DE63
      0000AD736B0021108400E76B0000D69C39007B94B5008C8C8400B5ADA50052E7
      E7007B9C94008C847B008C8C8C005A5A5A0018100800EFEFE7001852EF003139
      B5006363C6000031E700ADADDE00FFFFF700FFEFEF00FFEFEF00FFE7E700FFE7
      E700FFDEDE00FFDEDE00FFEFFF00FF9C1000D6C6BD00FFFFFF00FFF7EF00FFF7
      EF00FFF7EF00FFFFF700AD8C73000000000000000000FFFFFF00FFFFFF00FFFF
      F700FFFFF700FFFFF700FFFFF700FFFFFF00F7EFEF00DEADAD00FFDEDE00FFDE
      DE00FFD6D600FFD6D600FFD6D600CE9C9C00BD848400BD848400CEADAD00D6B5
      B500E7D6D600D6BDBD00AD737300F7EFEF00FFF7EF00E7842100D6842900FFD6
      7B00945A52008C8CD600FFBD4200CE5200009C845A004A525A00A5947B0084EF
      FF00638CA500A59484004A4A42009C9C9C0018100800F7F7E7000018C600B5AD
      D600FFFFF7006363D6008C94DE00FFFFFF00FFF7F700FFEFEF00FFE7E700FFE7
      E700FFDEDE00FFDEDE00FFEFFF00FF9C1000D6C6BD00FFFFFF00FFFFF700FFF7
      F700FFF7F700FFFFFF00AD8C7B000000000000000000FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFF700FFFFF700F7EFEF00DEADAD00FFDEDE00FFDE
      DE00FFD6D600FFD6D600FFD6D600CE9C9C00F7E7E700E7C6C600D69C9C00BD7B
      7B00AD6B6B00BD848400AD7B7B00F7EFEF0000000000EFB57B00E7520000C6A5
      6B00427BCE004A84D600DE841800E76B0000F7CEAD00A5A594004A73E700396B
      FF003984FF00427BFF00948C7B000000000010100800FFFFEF008C8CD600F7F7
      FF00FFFFFF00F7EFFF00D6D6EF00FFFFFF00FFF7F700FFF7F700FFEFEF00FFE7
      E700FFE7E700FFDEDE00FFEFFF00FFA51000D6CEC60000000000FFFFF700FFFF
      F700FFFFF700FFFFFF00B58C7B0000000000000000000000000000000000F7EF
      EF00CEBDB500C6B5A500C6AD9C00AD8C7B00F7EFEF00DEADAD00FFD6D600FFD6
      D600FFD6D600FFCECE00FFD6D600CE9C9C000000000000000000000000000000
      000000000000EFC6C600B57B7B00EFEFEF000000000000000000ADA58C0010A5
      FF0052BDFF0042BDFF00218CEF00FFD6B50000000000C6D6FF00398CFF005AAD
      FF005AA5FF00428CFF0094B5FF000000000010100800FFFFEF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFF7F700FFF7F700FFEFEF00FFE7
      E700FFE7E700FFDEDE00FFEFFF00FFA51000DECEC60000000000FFFFFF00FFFF
      FF00FFFFFF0000000000B58C7B000000000000000000FFFFFF0000000000EFE7
      E700BDA59400EFD6B500CE9C6B00AD8C7B00F7EFEF00DEADAD00FFD6D600FFD6
      D600FFCECE00FFCECE00FFD6D600D69C9C00FFFFFF00FFFFFF00FFFFFF00FFF7
      F700FFFFFF00EFD6D600B57B7B00EFEFEF0000000000FFFFFF0052C6FF006BBD
      FF007BC6FF007BC6FF0052B5FF0084D6FF00000000006B8CFF0052ADFF005AAD
      FF005AADFF004AA5FF0063A5FF000000000010100800FFFFEF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFF7F700FFF7F700FFEFEF00FFEF
      EF00FFE7E700FFDEDE00FFEFFF00FFA51000DECEC6000000000000000000FFFF
      FF00FFFFFF0000000000B58C7B0000000000FFFFFF00FFFFFF0000000000F7EF
      EF00C6AD9400DEB57B00AD948400FFFFFF00F7EFEF00DEA5A500FFCECE00FFC6
      C600FFC6C600F7BDBD00FFD6D600D6A5A50000000000AD94940094636300AD8C
      8C0000000000EFD6D600B57B7B00EFE7E7000000000084B5C600007BCE008CD6
      FF008CD6FF008CD6FF007BC6FF0052B5FF000000000073A5FF0073F7FF0073EF
      FF0063C6FF0073EFFF00316BBD00BDADA50010100800FFFFEF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFF7F700FFF7F700FFEFEF00FFE7
      E700FFE7E700FFDEDE00FFEFFF00FFA51000DECEC6000000000000000000FFFF
      FF00FFFFFF0000000000B58C7B0000000000000000000000000000000000FFF7
      F700AD8C6B00AD9484000000000000000000F7EFEF00DEA5A500FFC6C600F7C6
      C600F7C6C600EFB5B500F7CECE00D6A5A500EFDEDE00C6ADAD00E7DEDE00C6B5
      B50000000000F7E7E700B57B7B00EFE7E700000000006BADCE0000295A0052A5
      DE00BDEFFF00A5DEFF008CCEFF005ABDFF0000000000424A6B00000000000829
      39006BD6F7000008100000000000737B7B0010100800FFFFF700FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFF7FF00FFF7
      F700FFEFF700FFE7EF00FFFFFF00FFA51000DECEC60000000000000000000000
      000000000000F7EFEF00A57B6300C6ADA500C6ADA500C6AD9C00BDA59C00B594
      8400B59C8C00FFFFF7000000000000000000F7EFEF00DEA5A500F7C6C600EFBD
      BD00EFB5B500EFBDBD00FFDEDE00FFE7E700DEADAD00DEADAD00D6A5A500D6AD
      AD00CEA5A500CEA5A500B57B7B00EFE7E700000000007BB5D6000084BD000063
      94001073AD0000639C00004A84005AADE70000000000080000007B7B73006352
      4A000800000021211800000000007373730010100800FFFFD600DEDED600DEDE
      D600DEDED600DEDED600DED6D600DED6D600DED6CE00DED6CE00DECEC600DEC6
      C600DEC6BD00DEBDBD00DECEE700FF9C1800DECEC6000000000000000000FFFF
      FF0000000000EFE7DE00CEBDAD00FFE7C600CEAD8C00D6C6BD00FFF7F700F7F7
      F700FFFFFF00000000000000000000000000F7EFEF00D69C9C00EFBDBD00EFB5
      B500F7CECE00FFEFEF00FFE7E700FFE7E700FFE7E700FFDEDE00FFDEDE00FFD6
      D600EFBDBD00DEA5A500B57B7B00EFE7E70000000000CEDEEF000073AD00009C
      CE00008CBD000084BD00005A9C0073ADC600000000008C8C8C00181818006363
      63004A4A4A000000000018181800D6D6D60010101000FFE75200F77B0000F77B
      0000F77B0000F77B0000F77B0000F77B0000F7840000F7840000F7840000F784
      0000F7840000F7840000F7840000FF940000DECEC60000000000FFFFFF00FFFF
      FF0000000000EFE7DE00C6A57B00C69C6B00C6B5AD0000000000000000000000
      000000000000000000000000000000000000F7EFEF00D69C9C00E7C6C600E7C6
      C600EFCECE00EFD6D600F7D6D600FFE7E700EFC6C600DEADAD00DEB5B500DEC6
      C600EFDEDE00F7F7F700000000000000000000000000000000009CC6DE000063
      A500005A9C0000529400297BB500FFFFFF000000000000000000B5B5B5008484
      84007B7B7B00BDBDBD00E7E7E7000000000010100800FFFFA500EFA55A00F7A5
      5A00F7A55A00F7A55A00F7A55A00F7A55A00F7A55A00F7A55A00F7A55A00F7A5
      5A00F7A55A00F7A55A00F79C3900FF940000DECEC60000000000000000000000
      000000000000EFE7E7009C6B5200CEBDB5000000000000000000000000000000
      000000000000000000000000000000000000FFFFFF00FFF7F700F7EFEF00EFE7
      E700EFDEDE00EFDEDE00EFD6D600E7CECE00E7D6D600F7EFEF00FFFFFF00FFFF
      FF00000000000000000000000000000000000000000000000000000000000000
      0000E7EFF700FFFFFF0000000000000000000000000000000000000000000000
      00000000000000000000000000000000000010182100FFFFAD00FFA51800FFA5
      1800FFA51800FFA51800FFA51800FFA51800FFA51800FFA51800FFA51800FFA5
      1800FFA51800FFA51800FF9C0800FFDE9C00E7D6D600DECEC600DECEC600DECE
      C600DECEC600D6C6BD00DED6CE00000000000000000000000000000000000000
      000000000000000000000000000000000000000000009C7B6B009C7363009C73
      630094736300947363009473630094736300947363009C736300A59C8400189C
      18000094000073A56300FFF7FF00FFFFFF00C66B4200BD7B5A00A5735A009C6B
      5A009C6B5A009C6B5A009C6B5200946B520094635200946352009C6B52009C6B
      520073B5730029C6520039DE7300318431000000000000000000000000000000
      0000ADCEAD00639C6300398C39009CAD8C009473630094736300947363009473
      630094735A0094735A00946B5A007B5A4A00000000000000000094CEE7001884
      B5006BB5CE00BDDEEF00EFF7F700FFFFFF000000000000000000000000000000
      0000000000000000000000000000000000009C7B6B00FFFFFF00FFFFF700FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFF700FFFFFF00FFFFFF00FFF7EF0029BD
      420010B529007BA56B00FFFFFF00FFFFFF00C66B4200BD847300FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00189418003194
      29000873000031C65A0042DE7B00006300000000000000000000C6E7C600087B
      080021C63100089410009CCE9C00FFFFF700FFF7EF00FFF7EF00FFF7EF00FFF7
      EF00FFF7E700FFF7E700FFEFE7008C6B5A0000000000FFFFFF005AC6E7000084
      B50008DEFF0000ADDE0008A5D6004ABDDE0094CEE700C6DEEF00EFF7F7000000
      0000000000000000000000000000000000009C7B6B00FFFFFF00EFDED600D6BD
      AD00DEBDAD00DEBDAD00D6B5A500FFCED60031A5310018C6420021C6420039D6
      630031CE5A0018BD310018BD390000940000C6734A00BD8C7300FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFF7F700FFFFFF00FFFFFF000084000052F7
      94004AEF84004AE784004AE7840042E77B0000000000000000003994390021BD
      310029CE420008840800E7F7E700FFFFF700FFF7EF00FFF7EF00FFF7EF00FFF7
      EF00FFF7EF00FFF7E700FFF7E700946B5A0000000000CEE7EF004AD6EF00088C
      BD0029E7FF0021DEF70018D6EF0008CEFF0000BDE70018BDE70039B5DE005AA5
      CE009CC6DE00F7F7FF0000000000000000009C7B6B00FFFFFF00EFE7DE00DEC6
      B500DEC6B500DEC6B500D6BDAD00FFD6DE0031A531004AFF94005AFF9C0052F7
      8C0052EF8C0052F79C004AEF8C00009C0000C6735200C68C7300FFFFFF00E7D6
      CE00A56B520094634200E7D6CE00FFFFFF00945A3900846342000084000039DE
      6B0039D663004AE77B004AEF840031CE5A0000000000EFF7EF00088C080031D6
      520039D65200088C0800EFF7EF00FFFFFF00FFFFF700FFF7F700FFF7EF00FFF7
      EF00FFF7EF00FFF7EF00FFF7EF0094735A0000000000ADD6E70042D6EF00189C
      CE004AF7FF0031DEEF0018B58C0029DEF70029E7FF0018DEFF0010D6FF0010CE
      F70018C6F700189CCE003194BD0094BDD6009C7B6B00FFFFFF00EFE7DE00DEC6
      BD00DEC6BD00DEC6BD00D6BDB500FFCED60063B5630039B54A0039B5390029BD
      420029C64A0021A521004ABD520042AD4200CE7B5200BD8C7B00FFFFFF00DEC6
      C600C67B5A00BD5A29009C6B5200FFFFFF009C421800944A21005AAD520073B5
      6300218C100039D6630052EF8400006B0000BDD6AD00399C3100089408004AE7
      73004AE7730010A521001894180084CE8400FFFFF700FFFFF700FFFFF700FFFF
      F700FFF7EF00FFF7EF00FFF7EF0094736300FFFFFF007BC6EF005ADED6000884
      9C004AD6B50029C6A50039D6AD0031C69C0039E7FF0031DEFF0031DEFF0029DE
      FF0029DEFF0031DEFF0031E7FF0018C6EF009C7B7300FFFFFF00EFE7E700DEC6
      C600DEC6C600DEC6BD00DEC6B500DEC6BD00E7CEBD00E7C6BD00CEBDA50031BD
      420018B529006B9C5A00FFEFF700FFFFFF00CE846300C6948400FFFFFF00DECE
      C600CE8C6B00D67B52009C522100D6C6BD00AD634200BD5A3100FFDEE700FFE7
      FF0073AD630039DE6B005AFF9400298C2100DED6CE0021B531005AF78C0052EF
      7B0052EF7B005AFF8C0042DE6300FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      F700FFFFF700FFF7F700FFF7EF0094736300F7FFFF001884630000840000006B
      5A0063E7BD0042DEAD0052E7BD0052E7B50039D6B5004AE7FF0042E7FF0039DE
      FF0039DEFF0039DEFF0039D6FF0063EFFF00A5847300FFFFFF00EFE7E700D6BD
      BD00DEC6BD00DEBDB500DEBDB500DEBDB500DEBDAD00DEB5A500E7CEBD0094B5
      7B009CCE8C00BDBDA500F7EFF700FFFFFF00D6846300C6948400FFFFFF00DECE
      C600D6947B00D6845A00C6734A00945A4200BD735A00C6633900FFD6D600FFDE
      E7005AB55200008C0000008C000021941800CEBDB5006BBD630018B5290063FF
      9C0063FF940052EF840021A521000000000000000000FFFFFF00FFFFFF00FFFF
      F700FFFFF700FFFFF700FFFFF7009473630084BD840000730000009C0000007B
      73007BEFC60052DEB5005AE7BD0063EFCE005AEFBD004AD6BD0052EFFF004AE7
      FF004AE7FF004AE7FF0042D6F70094F7FF00A5847300FFFFFF00F7EFEF00E7D6
      D600E7D6D600E7D6CE00E7D6CE00E7D6CE00E7CEC600E7CEC600EFCEC600FFCE
      CE00FFFFFF00C6A59C00E7DED600FFFFFF00D68C6B00CE9C8C00FFFFFF00E7D6
      CE00DE9C8400B5735A00DE947300BD6B4A00C67B5A00CE6B4200B5633900CE6B
      42006B421800F7EFEF00FFFFFF0094635200D6BDB500FFFFF700FFFFF70094DE
      940018B52100ADE7A500FFFFF70000000000000000000000000084D68400A5DE
      A500F7EFE700EFE7DE00E7D6D600947363000884080000940800009C0000007B
      6B008CF7C6005AE7B50063EFBD006BF7C60052DE9C0063E7DE0063EFFF005AEF
      FF0052EFFF0052E7FF005ADEF700B5FFFF00A5847300FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFF700FFFF
      F700FFF7E700BD9C8C00E7DED600FFFFFF00DE947300CEA58C00FFFFFF00EFD6
      CE00E7AD9400B5735A00B5846B00DE947B00CE7B5A00CE734A00945A4200B573
      5200944A1800AD9C8C00FFFFFF009C6B5200D6C6BD00FFFFF700FFFFF700FFFF
      F70084D68400FFF7F700FFFFF7000000000000000000B5E7B50018B5210018B5
      2100DECEC600AD846B00A57B5A00E7DED60010B5180008941000319C29000084
      9400B5F7DE005AD69C006BEFB50063DEA50084FFFF0084FFFF0073F7FF006BF7
      FF006BEFFF0063E7FF0084EFF700DEFFFF00A5847300FFFFFF00F7EFEF00DECE
      CE00DECEC600DECEC600DEC6BD00DEC6BD00DEBDB500DEBDAD00DEBDAD00DEB5
      A500FFF7EF00BD9C9400E7DED600FFFFFF00DE947300CE9C8C00FFFFFF00EFD6
      CE00E7AD9400B5735A00DECEC600D69C8400D68C7300D67B5200AD6B4A00CEB5
      A500BD6B42006B4A2100FFFFFF00A5735A00D6C6BD000000000000000000FFFF
      FF00FFFFF700FFFFF700FFFFF70000000000EFFFEF0052EF840063FF94005AF7
      8C0018B52900529C4200E7DED6000000000018BD290010AD210084CE840031A5
      EF00E7FFFF005AD68C0084EFD6009CFFFF0094FFFF008CF7FF0084F7FF007BF7
      FF0073F7FF006BE7F700B5F7FF00E7FFFF00AD847300FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00F7F7EF00EFEFE700EFEF
      E700D6C6B500AD948400EFE7E700FFFFFF00E79C7B00CEA59400FFFFFF00DEA5
      9400EFB59C00C6846B00DECEC600D6BDAD00DE9C8400D6846300B5735A00F7F7
      F700B5735A00A5522900ADAD9C00A5736300D6C6BD000000000000000000FFFF
      FF00FFFFF700FFFFF700FFFFFF00FFFFFF0042AD42005AFF8C0052EF7B0052EF
      7B005AF78C0021B531005AB55A000000000021C6310029C6390029BD31000084
      5200DEFFFF00A5F7EF00ADFFFF00A5FFFF009CFFFF0094FFFF0094FFFF008CF7
      FF007BF7FF008CE7F700D6FFFF00E7FFFF00AD847300FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00BDA59C00B59C8C00C6A5
      94008C6B5200D6C6C600FFFFFF00FFFFFF00E79C7B00D6AD9C00EFCEBD00D68C
      6B00E7AD9400E7A58C00AD634A00EFDED600C68C6B00D68C7300BD7B6300EFC6
      B500C6735200D6846300C66B42009C634A00D6C6BD0000000000000000000000
      0000FFFFF700F7F7EF00F7F7EF0084CE840018A5180010A521004AE7730042DE
      6B0008940800399C39004AB54A000000000029CE420029C64A0039D6520031D6
      4A0029AD4A0063C6A500A5EFF7009CE7F7008CE7EF0084E7F7007BE7F70073E7
      F7006BDEF700C6F7FF00D6FFFF00EFFFFF00AD847300FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00C6ADA500E7D6B500FFDE
      A500DECECE00FFFFFF00FFFFFF00FFFFFF00E79C8400D6AD9C00FFF7F700F7DE
      D600F7DED600F7DECE00F7D6CE00FFFFFF00F7E7DE00EFCEC600EFD6C600F7EF
      E700EFCEBD00EFCEBD00F7D6C600A5735A00D6C6BD000000000000000000FFFF
      FF00D6C6BD00CEB5A500FFF7E700D6C6BD00E7DEDE00088C080039D6520031CE
      4A00088C0800EFF7EF00000000000000000021B5390039DE5A0042DE63004AE7
      6B004AF7730039CE5A00CEF7DE00FFFFFF00F7FFFF00FFFFFF00FFFFFF00EFFF
      FF00D6FFFF00E7FFFF00DEFFFF00FFFFFF00AD847300FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00CEBDAD00D6AD7300B584
      6300FFFFFF00FFFFFF00FFFFFF00FFFFFF00EFA58400CEAD9400FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00AD7B6300D6C6BD000000000000000000FFFF
      FF00DECEC600C6A58400EFCE8C00E7DED600000000000884080029CE420029C6
      39003994390000000000000000000000000052BD630031D652004AE76B0052F7
      7B0039DE63006BC6B500C6EFFF00B5E7F700ADDEF700ADDEF7009CD6EF00DEF7
      F700EFFFFF00E7FFFF00DEFFFF0000000000D6B5A500FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00E7CEBD00F7EFE700FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00EFA58400D6AD9400CEAD9400CEAD
      9400CEAD9400CEA59400CE9C8C00CE9C8C00C6948400C6948400C6948400BD8C
      7300BD8C7300C68C7300BD846B00BD7B6300D6C6BD00FFFFFF00FFFFFF00FFFF
      FF00DECEC600BD946B00A57B630000000000000000000894100021C6310018BD
      2900C6E7C600000000000000000000000000E7F7E70042C6630039E76B004AEF
      7B007BD69400D6EFFF00B5E7F700ADE7F700ADDEF700ADDEF70063BDDE00BDE7
      EF00000000000000000000000000000000002921210021212100212118002121
      1800212118002121180021211800212118002121180029292900313131002929
      290029292900292929002929290029292900E7946B00EFA58400E7A58400E79C
      8400E79C7B00E79C7B00DE947B00DE947300DE8C6B00D68C6B00D6846300CE84
      5A00CE7B5200CE734A00C66B4200C66B4200E7DED600D6C6BD00D6C6BD00D6C6
      BD00D6BDBD00F7EFEF0000000000DEEFDE009CC69C00B5CEB500D6E7D600FFFF
      FF000000000000000000000000000000000000000000EFF7EF0084D694004ABD
      7300000000000000000000000000000000000000000000000000F7FFFF005AB5
      D6004AA5CE0052A5CE0052A5CE00429CC600424D3E000000000000003E000000
      2800000040000000B00000000100010000000000800500000000000000000000
      000000000000000000000000FFFFFF00D001E0078000000080C9E00700800000
      0089E00700000000800100000000000000010000000000000001000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      8000000000000000E200000000000000FE00000008000000FE00C00308000000
      FF00E00708000000FF03E007000000008001FFFFC203FC00000080010000F000
      000080010000C000000080010000000000008001000000000000800100000000
      0000800100000000000080010000000000008000000000000000800100000000
      00008001A000000100008001D000000300008001E000000700008001F83F001F
      00008001FE7F007F0000FFFFFFFF01FF8000A3F8800080000000A00000000000
      0000A00000000000000080000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000800200000000
      00008018000000000000BC00000000000000BFC1000000000000A80300000000
      0000BFC7000000000000800F00000000E1FF800380008000007F800300008000
      000700E70000800000010607000080000000000F000090000000000F00000000
      0000000F00000000200000070000000020000003000000002000000100000000
      200000010000000220000000000090002002000000009C41201200F000009003
      3E00FFF800009FC700C0FFFC0000800FF87FF0C7FFF00000F031F0C7FFF00000
      F020E1C7FFE00000E000C100FFC0000000008000F103000008000000C0070000
      00010001800F000000070001000F000000070000001F000000030000000F0000
      C0010000000F0000CD010000000F0000C00F2001001F0000C01F0003001F0000
      E03F8007803F0000F07FE00FC07F00008000FC3F87FFF03F0000E00F87FFF00F
      0000800701FFC00700008003007C800300000001001E000000000000000E0000
      00000600001E000000000E40003CE000000001E000FCFC0100000100007CFE01
      000003000038FC03000003013000F807000000007000E00F00000000F800E00F
      0000C001FC00C01F0000E007FE01C07FFE7FC103F03FFE7FFE3F8101C00FFC7F
      FE1F01001800F87FFE0F04003000F07F000700004000E000000300000000C000
      000100000000800000008001024000000000E001000000000001F00100008000
      0003C003E010800000078003C008E000FE0FC007C004F07FFE1FE00FC000F87F
      FE3FF01F8101FC7FFE7FF81F8003FE7FFFE1C107F80FF010FFE18101F80FF000
      FF800100F80FC0003C000400F80FC10038000800000000007000000000000400
      38000000000000003F008001000000013F00C007000000013E00F00300000000
      1C00F0010000F000000CE003B80FFE00000FC01FF00FFE00001FC01FF00FFE00
      003FE01FF00FFE01807FF81FF80FFFE30000C07F8000E621000090070000E000
      000080070000C000000080F70000C0000000002F0000C0000000000F00008000
      0000000F000080000000010F000080000000000F000000000000000700000000
      00000083000000000000000100000000000000000000F800000000100000F002
      00000FF00000F00E0000FFF80001FFC0F81FFF818000FD00F001FF810000FD00
      C080800000000100808800000000010000800000000001000088000000000180
      000000000000018000008001000041E000F8C081000045A00000808100006520
      00888080000065E300088080000078030000808000006807000080800000487F
      0003C0C1000078FF000FF3FF000001FF80000000F000C0FF00000000C000801F
      00000000C0008003000000008000800000000000000000000000000000000000
      00000000018000000000000001C0000000000000018000000000000061010000
      0000000060010000000000007001000000000000600300000000000060870001
      000000000187000F00000000020F8FC000000000000000000000000000000000
      000000000000}
  end
  object Get_ReferenceTableData_By_TableID: TADOStoredProc
    Connection = YeganehConnection
    CursorType = ctStatic
    ProcedureName = 'get_ReferenceTableData_by_tableID;1'
    Parameters = <
      item
        Name = '@RETURN_VALUE'
        DataType = ftInteger
        Direction = pdReturnValue
        Precision = 10
        Value = 0
      end
      item
        Name = '@tableID'
        Attributes = [paNullable]
        DataType = ftInteger
        Precision = 10
        Value = Null
      end>
    Left = 616
    Top = 8
    object Get_ReferenceTableData_By_TableIDReferenceTableDataID: TAutoIncField
      FieldName = 'ReferenceTableDataID'
      ReadOnly = True
    end
    object Get_ReferenceTableData_By_TableIDTableID: TIntegerField
      FieldName = 'TableID'
    end
    object Get_ReferenceTableData_By_TableIDDataID: TWordField
      FieldName = 'DataID'
    end
    object Get_ReferenceTableData_By_TableIDDataTitle: TWideStringField
      FieldName = 'DataTitle'
      Size = 50
    end
  end
  object Tables: TADOTable
    Connection = YeganehConnection
    CursorType = ctStatic
    Filtered = True
    TableName = 'Tables'
    Left = 563
    Top = 171
    object TablesTableId: TWordField
      FieldName = 'TableId'
      ReadOnly = True
    end
    object TablesTableName: TWideStringField
      Alignment = taRightJustify
      FieldName = 'TableName'
      Size = 50
    end
    object TablesDescription: TWideStringField
      Alignment = taRightJustify
      FieldName = 'Description'
      Size = 50
    end
  end
  object Subject: TADOTable
    Connection = YeganehConnection
    CursorType = ctStatic
    TableName = 'Subject'
    Left = 115
    Top = 395
    object SubjectSubjectID: TAutoIncField
      FieldName = 'SubjectID'
      ReadOnly = True
    end
    object SubjectSubjectTitle: TWideStringField
      Alignment = taRightJustify
      FieldName = 'SubjectTitle'
      Size = 50
    end
    object SubjectIsActive: TBooleanField
      FieldName = 'IsActive'
    end
  end
  object Dsubject: TDataSource
    DataSet = Subject
    Left = 107
    Top = 451
  end
  object Get_LetterData_by_LetterDataID: TADOStoredProc
    Connection = YeganehConnection
    ProcedureName = 'Get_LetterData_by_LetterDataID  '
    Parameters = <
      item
        Name = '@RETURN_VALUE'
        DataType = ftInteger
        Direction = pdReturnValue
        Precision = 10
        Value = 0
      end
      item
        Name = '@LetterDataID'
        Attributes = [paNullable]
        DataType = ftInteger
        Precision = 10
        Value = Null
      end>
    Left = 960
    Top = 75
    object Get_LetterData_by_LetterDataIDLetterDataID: TAutoIncField
      FieldName = 'LetterDataID'
      ReadOnly = True
    end
    object Get_LetterData_by_LetterDataIDImage: TBlobField
      FieldName = 'Image'
    end
    object Get_LetterData_by_LetterDataIDVersionDate: TStringField
      FieldName = 'VersionDate'
      Size = 10
    end
    object Get_LetterData_by_LetterDataIDVersionNo: TStringField
      FieldName = 'VersionNo'
      Size = 10
    end
  end
  object Get_LetterData_by_LetterID: TADOStoredProc
    Connection = YeganehConnection
    CursorType = ctStatic
    ProcedureName = 'Get_LetterData_by_LetterID'
    Parameters = <
      item
        Name = '@RETURN_VALUE'
        DataType = ftInteger
        Direction = pdReturnValue
        Precision = 10
        Value = 0
      end
      item
        Name = '@LetterID'
        Attributes = [paNullable]
        DataType = ftInteger
        Precision = 10
        Value = Null
      end>
    Left = 952
    Top = 8
    object Get_LetterData_by_LetterIDLetterDataID: TAutoIncField
      FieldName = 'LetterDataID'
      ReadOnly = True
    end
    object Get_LetterData_by_LetterIDdescription: TWideStringField
      FieldName = 'description'
      Size = 50
    end
    object Get_LetterData_by_LetterIDExt: TStringField
      FieldKind = fkLookup
      FieldName = 'Ext'
      LookupDataSet = Extention
      LookupKeyFields = 'ExtentionID'
      LookupResultField = 'Extention'
      KeyFields = 'Extention'
      Lookup = True
    end
    object Get_LetterData_by_LetterIDExtentionTitle: TWideStringField
      FieldKind = fkLookup
      FieldName = 'ExtentionTitle'
      LookupDataSet = Extention
      LookupKeyFields = 'ExtentionID'
      LookupResultField = 'extentionTitle'
      KeyFields = 'Extention'
      Lookup = True
    end
    object Get_LetterData_by_LetterIDExtention: TWordField
      FieldName = 'Extention'
    end
    object Get_LetterData_by_LetterIDletterid: TIntegerField
      FieldName = 'letterid'
    end
    object Get_LetterData_by_LetterIDVersionDate: TStringField
      FieldName = 'VersionDate'
      Size = 10
    end
    object Get_LetterData_by_LetterIDVersionNo: TStringField
      FieldName = 'VersionNo'
      Size = 10
    end
    object Get_LetterData_by_LetterIDArchiveID: TIntegerField
      FieldName = 'ArchiveID'
    end
    object Get_LetterData_by_LetterIDisDocument: TBooleanField
      FieldName = 'isDocument'
    end
  end
  object Extention: TADOTable
    Connection = YeganehConnection
    CursorType = ctStatic
    Filter = 'IsSystem = false'
    Filtered = True
    TableName = 'Extention'
    Left = 403
    Top = 283
    object ExtentionExtentionID: TAutoIncField
      FieldName = 'ExtentionID'
      ReadOnly = True
    end
    object ExtentionExtentionTitle: TWideStringField
      FieldName = 'ExtentionTitle'
      Size = 100
    end
    object ExtentionExtention: TStringField
      FieldName = 'Extention'
      Size = 5
    end
    object ExtentionIsSystem: TBooleanField
      FieldName = 'IsSystem'
    end
  end
  object DExtention: TDataSource
    DataSet = Extention
    Left = 403
    Top = 334
  end
  object FollowUpType: TADOTable
    Connection = YeganehConnection
    TableName = 'FollowUpType'
    Left = 32
    Top = 395
  end
  object DoneStatus: TADOTable
    Connection = YeganehConnection
    TableName = 'DoneStatus'
    Left = 280
    Top = 395
  end
  object Select_FollowUP_By_Date: TADOStoredProc
    Connection = YeganehConnection
    CursorType = ctStatic
    ProcedureName = 'Select_FollowUP_By_Date'
    Parameters = <
      item
        Name = '@RETURN_VALUE'
        DataType = ftInteger
        Direction = pdReturnValue
        Precision = 10
        Value = 0
      end
      item
        Name = '@UserID'
        Attributes = [paNullable]
        DataType = ftInteger
        Precision = 10
        Value = Null
      end
      item
        Name = '@BDate'
        Attributes = [paNullable]
        DataType = ftString
        Size = 10
        Value = Null
      end
      item
        Name = '@Edate'
        Attributes = [paNullable]
        DataType = ftString
        Size = 10
        Value = Null
      end
      item
        Name = '@DonStatusID'
        Attributes = [paNullable]
        DataType = ftInteger
        Precision = 10
        Value = Null
      end>
    Left = 640
    Top = 75
    object Select_FollowUP_By_DateFollowUPID: TAutoIncField
      FieldName = 'FollowUPID'
      ReadOnly = True
    end
    object Select_FollowUP_By_DateLetterid: TAutoIncField
      FieldName = 'Letterid'
      ReadOnly = True
    end
    object Select_FollowUP_By_DateStartFollowUpID: TIntegerField
      FieldName = 'StartFollowUpID'
    end
    object Select_FollowUP_By_DateFollowUPTypeID: TIntegerField
      FieldName = 'FollowUPTypeID'
    end
    object Select_FollowUP_By_DateDoneStatusID: TWordField
      FieldName = 'DoneStatusID'
    end
    object Select_FollowUP_By_DateToDoDate: TStringField
      FieldName = 'ToDoDate'
      ReadOnly = True
      Size = 5
    end
    object Select_FollowUP_By_DateHasAlarm: TBooleanField
      FieldName = 'HasAlarm'
    end
    object Select_FollowUP_By_DateComment: TWideStringField
      FieldName = 'Comment'
      ReadOnly = True
      Size = 508
    end
    object Select_FollowUP_By_DateFollowUPTypeTitle: TWideStringField
      FieldName = 'FollowUPTypeTitle'
      Size = 50
    end
    object Select_FollowUP_By_DateDoneStatustitle: TWideStringField
      FieldName = 'DoneStatustitle'
      Size = 50
    end
    object Select_FollowUP_By_DateDelayStatus: TIntegerField
      FieldName = 'DelayStatus'
      ReadOnly = True
    end
  end
  object DSelect_FollowUP_By_Date: TDataSource
    DataSet = Select_FollowUP_By_Date
    Left = 624
    Top = 128
  end
  object ActionType: TADOTable
    Connection = YeganehConnection
    CursorType = ctStatic
    TableName = 'ActionType'
    Left = 128
    Top = 283
    object ActionTypeActionTypeID: TWordField
      FieldName = 'ActionTypeID'
    end
    object ActionTypeActionTypeTitle: TWideStringField
      FieldName = 'ActionTypeTitle'
      Size = 50
    end
  end
  object Get_LetterAction_By_LetterID: TADOStoredProc
    Connection = YeganehConnection
    ProcedureName = 'Get_LetterAction_By_LetterID'
    Parameters = <
      item
        Name = '@RETURN_VALUE'
        DataType = ftInteger
        Direction = pdReturnValue
        Precision = 10
        Value = 0
      end
      item
        Name = '@LetterID'
        Attributes = [paNullable]
        DataType = ftInteger
        Precision = 10
        Value = 1
      end>
    Left = 240
    Top = 131
    object Get_LetterAction_By_LetterIDLetterID: TAutoIncField
      FieldName = 'LetterID'
      ReadOnly = True
    end
    object Get_LetterAction_By_LetterIDLatestActionTypeID: TWordField
      FieldName = 'LatestActionTypeID'
    end
    object Get_LetterAction_By_LetterIDLatestActionReason: TWideStringField
      FieldName = 'LatestActionReason'
      Size = 255
    end
    object Get_LetterAction_By_LetterIDActionTypeTitle: TWideStringField
      FieldKind = fkLookup
      FieldName = 'ActionTypeTitle'
      LookupDataSet = ActionType
      LookupKeyFields = 'ActionTypeID'
      LookupResultField = 'ActionTypeTitle'
      KeyFields = 'LatestActionTypeID'
      Lookup = True
    end
  end
  object DGet_LetterAction_By_LetterID: TDataSource
    DataSet = Get_LetterAction_By_LetterID
    Left = 240
    Top = 176
  end
  object Select_ParaphTemplate: TADOStoredProc
    Connection = YeganehConnection
    CursorType = ctStatic
    ProcedureName = 'SELECT_ParaphTemplate'
    Parameters = <
      item
        Name = '@RETURN_VALUE'
        DataType = ftInteger
        Direction = pdReturnValue
        Precision = 10
        Value = 0
      end
      item
        Name = '@UserID'
        Attributes = [paNullable]
        DataType = ftInteger
        Precision = 10
        Value = 1
      end
      item
        Name = '@type'
        DataType = ftInteger
        Precision = 10
        Value = 1
      end>
    Left = 472
    Top = 107
    object Select_ParaphTemplateParaphTemplateID: TAutoIncField
      FieldName = 'ParaphTemplateID'
      ReadOnly = True
    end
    object Select_ParaphTemplateUserID: TIntegerField
      FieldName = 'UserID'
    end
    object Select_ParaphTemplateOrderID: TWordField
      FieldName = 'OrderID'
    end
    object Select_ParaphTemplateTitle: TWideStringField
      FieldName = 'Title'
      Size = 50
    end
    object Select_ParaphTemplateParaph: TWideStringField
      DisplayWidth = 3000
      FieldName = 'Paraph'
      Size = 3000
    end
  end
  object DSELECT_ParaphTemplate: TDataSource
    DataSet = Select_ParaphTemplate
    Left = 472
    Top = 152
  end
  object Select_AlternativeInfo_ByUserID: TADOStoredProc
    Connection = YeganehConnection
    CursorType = ctStatic
    ProcedureName = 'Select_AlternativeInfo_ByUserID'
    Parameters = <
      item
        Name = '@RETURN_VALUE'
        DataType = ftInteger
        Direction = pdReturnValue
        Precision = 10
        Value = 0
      end
      item
        Name = '@UserID'
        Attributes = [paNullable]
        DataType = ftInteger
        Precision = 10
        Value = Null
      end>
    Left = 440
    Top = 8
    object Select_AlternativeInfo_ByUserIDId: TAutoIncField
      FieldName = 'Id'
      ReadOnly = True
    end
    object Select_AlternativeInfo_ByUserIDAlternativeUserID: TIntegerField
      FieldName = 'AlternativeUserID'
    end
    object Select_AlternativeInfo_ByUserIDAlternativebeginDate: TStringField
      FieldName = 'AlternativebeginDate'
      FixedChar = True
      Size = 10
    end
    object Select_AlternativeInfo_ByUserIDAlternativeEndDate: TStringField
      FieldName = 'AlternativeEndDate'
      FixedChar = True
      Size = 10
    end
    object Select_AlternativeInfo_ByUserIDAlternativeUserTitle: TWideStringField
      FieldKind = fkLookup
      FieldName = 'AlternativeUserTitle'
      LookupDataSet = Users
      LookupKeyFields = 'Id'
      LookupResultField = 'Title'
      KeyFields = 'AlternativeUserID'
      Lookup = True
    end
  end
  object DSelect_AlternativeInfo_ByUserID: TDataSource
    DataSet = Select_AlternativeInfo_ByUserID
    Left = 520
    Top = 56
  end
  object Select_UserOrgid: TADOStoredProc
    Connection = YeganehConnection
    CursorType = ctStatic
    ProcedureName = 'Select_UserOrgid'
    Parameters = <
      item
        Name = '@RETURN_VALUE'
        DataType = ftInteger
        Direction = pdReturnValue
        Precision = 10
        Value = 0
      end
      item
        Name = '@UserID'
        Attributes = [paNullable]
        DataType = ftInteger
        Precision = 10
        Value = Null
      end
      item
        Name = '@today'
        Attributes = [paNullable]
        DataType = ftString
        Size = 10
        Value = Null
      end>
    Left = 192
    Top = 8
    object Select_UserOrgidOrgid: TIntegerField
      FieldName = 'Orgid'
    end
    object Select_UserOrgidComment: TWideStringField
      FieldName = 'Comment'
      Size = 255
    end
  end
  object DSelect_UserOrgid: TDataSource
    DataSet = Select_UserOrgid
    Left = 240
    Top = 56
  end
  object Select_FieldAccess_by_TableID: TADOStoredProc
    Connection = YeganehConnection
    CursorType = ctStatic
    ProcedureName = 'Select_FieldAccess_by_TableID'
    Parameters = <
      item
        Name = '@RETURN_VALUE'
        DataType = ftInteger
        Direction = pdReturnValue
        Precision = 10
        Value = 0
      end
      item
        Name = '@UserID'
        Attributes = [paNullable]
        DataType = ftInteger
        Precision = 10
        Value = Null
      end
      item
        Name = '@TableID'
        Attributes = [paNullable]
        DataType = ftInteger
        Precision = 10
        Value = Null
      end>
    Left = 106
    Top = 91
    object Select_FieldAccess_by_TableIDFieldAccessID: TAutoIncField
      FieldName = 'FieldAccessID'
      ReadOnly = True
    end
    object Select_FieldAccess_by_TableIDFieldID: TIntegerField
      FieldName = 'FieldID'
    end
    object Select_FieldAccess_by_TableIDUserID: TIntegerField
      FieldName = 'UserID'
    end
    object Select_FieldAccess_by_TableIDAccessTypeID: TWordField
      FieldName = 'AccessTypeID'
    end
  end
  object DSelect_FieldAccess_by_TableID: TDataSource
    DataSet = Select_FieldAccess_by_TableID
    Left = 74
    Top = 128
  end
  object Get_UserTable: TADOStoredProc
    Connection = YeganehConnection
    CursorType = ctStatic
    ProcedureName = 'get_userTable;1'
    Parameters = <
      item
        Name = '@RETURN_VALUE'
        DataType = ftInteger
        Direction = pdReturnValue
        Precision = 10
        Value = 0
      end
      item
        Name = '@like'
        Attributes = [paNullable]
        DataType = ftWideString
        Size = 100
        Value = Null
      end>
    Left = 353
    Top = 115
    object Get_UserTableTableId: TWordField
      FieldName = 'TableId'
    end
    object Get_UserTableTableName: TWideStringField
      FieldName = 'TableName'
      Size = 50
    end
    object Get_UserTableDescription: TWideStringField
      FieldName = 'Description'
      Size = 50
    end
    object Get_UserTableTableType: TWordField
      FieldName = 'TableType'
    end
    object Get_UserTableTableCode: TStringField
      FieldName = 'TableCode'
      Size = 50
    end
    object Get_UserTableUserField1: TWideStringField
      FieldName = 'UserField1'
      Size = 50
    end
    object Get_UserTableUserField2: TWideStringField
      FieldName = 'UserField2'
      Size = 50
    end
  end
  object Select_UserSign: TADOStoredProc
    Connection = YeganehConnection
    CursorType = ctStatic
    ProcedureName = 'Select_UserSign'
    Parameters = <
      item
        Name = '@RETURN_VALUE'
        DataType = ftInteger
        Direction = pdReturnValue
        Precision = 10
        Value = 0
      end
      item
        Name = '@UserID'
        Attributes = [paNullable]
        DataType = ftInteger
        Precision = 10
        Value = Null
      end>
    Left = 74
    Top = 184
    object Select_UserSignUserID: TIntegerField
      FieldName = 'UserID'
    end
    object Select_UserSignUserSign: TBlobField
      FieldName = 'UserSign'
    end
  end
  object DSelect_UserSign: TDataSource
    DataSet = Select_UserSign
    Left = 74
    Top = 232
  end
  object DFromOrganizations: TDataSource
    DataSet = FromOrganizations
    Left = 38
    Top = 518
  end
  object QrUserSign: TADOQuery
    Connection = YeganehConnection
    Parameters = <
      item
        Name = 'Pa_UserID'
        Attributes = [paSigned]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = 0
      end>
    SQL.Strings = (
      'Select Us.*, U.Title , U.UserName , U.[Password]'
      'from userSign us , Users U '
      'Where Us.UserID = U.ID'
      'And Us.UserID = :Pa_UserID'
      ''
      '')
    Left = 124
    Top = 51
    object QrUserSignUserID: TIntegerField
      FieldName = 'UserID'
    end
    object QrUserSignUserSign: TBlobField
      FieldName = 'UserSign'
    end
    object QrUserSignTitle: TWideStringField
      FieldName = 'Title'
      Size = 50
    end
    object QrUserSignUserName: TWideStringField
      FieldName = 'UserName'
      Size = 50
    end
    object QrUserSignPassword: TWideStringField
      FieldName = 'Password'
      Size = 50
    end
  end
  object DataSource1: TDataSource
    Left = 872
    Top = 56
  end
  object ProcLetterIsPish: TADOStoredProc
    Connection = YeganehConnection
    ProcedureName = 'ISLetterPish;1'
    Parameters = <
      item
        Name = '@RETURN_VALUE'
        DataType = ftInteger
        Direction = pdReturnValue
        Precision = 10
        Value = Null
      end
      item
        Name = '@LetterID'
        Attributes = [paNullable]
        DataType = ftInteger
        Precision = 10
        Value = Null
      end
      item
        Name = '@LetterIDIN'
        Attributes = [paNullable]
        DataType = ftInteger
        Direction = pdOutput
        Precision = 10
        Value = Null
      end
      item
        Name = '@IS'
        Attributes = [paNullable]
        DataType = ftBoolean
        Direction = pdOutput
        Value = Null
      end>
    Left = 760
    Top = 67
  end
  object GetfieldValueByLetterID: TADOStoredProc
    Connection = YeganehConnection
    CursorType = ctStatic
    ProcedureName = 'GetfieldValueByLetterID'
    Parameters = <
      item
        Name = '@RETURN_VALUE'
        DataType = ftInteger
        Direction = pdReturnValue
        Precision = 10
        Value = Null
      end
      item
        Name = '@letterId'
        Attributes = [paNullable]
        DataType = ftInteger
        Precision = 10
        Value = Null
      end
      item
        Name = '@FormOrder'
        Attributes = [paNullable]
        DataType = ftWord
        Precision = 3
        Value = Null
      end>
    Left = 296
    Top = 8
  end
  object DGetfieldValueByLetterID: TDataSource
    DataSet = GetfieldValueByLetterID
    Left = 360
    Top = 56
  end
  object Timer_WordMessage: TTimer
    Enabled = False
    Interval = 1500
    OnTimer = Timer_WordMessageTimer
    Left = 968
    Top = 238
  end
  object QDeleteJaneshin: TADOQuery
    Connection = YeganehConnection
    Parameters = <
      item
        Name = 'userID'
        DataType = ftInteger
        Size = -1
        Value = 0
      end>
    SQL.Strings = (
      'update Users'
      'set AlternativeUserID=NULL,'
      #9'AlternativebeginDate=NULL,'
      #9'AlternativeEndDate=NULL'
      'where id=:userID')
    Left = 624
    Top = 184
  end
  object qGetID: TADOQuery
    Connection = YeganehConnection
    Parameters = <
      item
        Name = 'letterID'
        DataType = ftInteger
        Size = -1
        Value = 0
      end>
    SQL.Strings = (
      
        'SELECT ISNULL(MAX(ID), 0) + 1 as ID  FROM ReCommites WHERE Lette' +
        'rID=:letterID')
    Left = 352
    Top = 176
  end
  object QOrganization: TADOQuery
    Connection = YeganehConnection
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      
        'SELECT ID,LTRIM(RTRIM(Title))+'#39'-'#39'+LTRIM(RTRIM(ResponsibleStaffer' +
        ')) AS Title FROM FromOrganizations')
    Left = 200
    Top = 232
    object QOrganizationID: TAutoIncField
      FieldName = 'ID'
      ReadOnly = True
    end
    object QOrganizationTitle: TWideStringField
      FieldName = 'Title'
      ReadOnly = True
      Size = 151
    end
  end
  object QLetterTypes: TADOQuery
    Connection = YeganehConnection
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'SELECT ID,Title FROM LetterTypes')
    Left = 296
    Top = 232
    object QLetterTypesID: TIntegerField
      FieldName = 'ID'
    end
    object QLetterTypesTitle: TWideStringField
      FieldName = 'Title'
      Size = 50
    end
  end
  object qRepMohlateEghdam: TADOQuery
    Connection = YeganehConnection
    Parameters = <>
    SQL.Strings = (
      
        'SELECT L.LetterID,L.IndicatorID, L.MYear, l.Letter_Type,L.Incomm' +
        'ingNO,'
      
        '       L.Incommingdate, L.FromOrgID,L.ToOrgID, L.LetterRecommite' +
        's,rc.Paraph, '
      '       rc.DeadLineDate,rc.viewdate,L.Memo,s.SecTitle'
      'FROM Letter L'
      'INNER JOIN ReCommites rc ON rc.LetterID = L.LetterID'
      'LEFT JOIN Secretariats s ON s.SecID = L.SecretariatID'
      
        'WHERE ((rc.DeadLineDate IS NOT NULL) AND (l.sentletterid IS NULL' +
        '))')
    Left = 392
    Top = 224
    object qRepMohlateEghdamLetterID: TAutoIncField
      FieldName = 'LetterID'
      ReadOnly = True
    end
    object qRepMohlateEghdamIndicatorID: TIntegerField
      FieldName = 'IndicatorID'
      ReadOnly = True
    end
    object qRepMohlateEghdamMYear: TWordField
      FieldName = 'MYear'
      ReadOnly = True
    end
    object qRepMohlateEghdamLetter_Type: TIntegerField
      FieldName = 'Letter_Type'
      ReadOnly = True
    end
    object qRepMohlateEghdamIncommingNO: TWideStringField
      FieldName = 'IncommingNO'
      ReadOnly = True
      Size = 50
    end
    object qRepMohlateEghdamIncommingdate: TWideStringField
      FieldName = 'Incommingdate'
      ReadOnly = True
      Size = 10
    end
    object qRepMohlateEghdamFromOrgID: TIntegerField
      FieldName = 'FromOrgID'
      ReadOnly = True
    end
    object qRepMohlateEghdamToOrgID: TIntegerField
      FieldName = 'ToOrgID'
      ReadOnly = True
    end
    object qRepMohlateEghdamLetterRecommites: TWideStringField
      FieldName = 'LetterRecommites'
      ReadOnly = True
      Size = 500
    end
    object qRepMohlateEghdamParaph: TWideStringField
      FieldName = 'Paraph'
      ReadOnly = True
      Size = 3000
    end
    object qRepMohlateEghdamDeadLineDate: TStringField
      FieldName = 'DeadLineDate'
      ReadOnly = True
      FixedChar = True
      Size = 10
    end
    object qRepMohlateEghdamviewdate: TStringField
      FieldName = 'viewdate'
      ReadOnly = True
      FixedChar = True
      Size = 10
    end
    object qRepMohlateEghdamlkLetterType: TStringField
      FieldKind = fkLookup
      FieldName = 'lkLetterType'
      LookupDataSet = QLetterTypes
      LookupKeyFields = 'ID'
      LookupResultField = 'Title'
      KeyFields = 'Letter_Type'
      ReadOnly = True
      Size = 50
      Lookup = True
    end
    object qRepMohlateEghdamlkfromorganization: TStringField
      FieldKind = fkLookup
      FieldName = 'lkfromorganization'
      LookupDataSet = QOrganization
      LookupKeyFields = 'ID'
      LookupResultField = 'Title'
      KeyFields = 'FromOrgID'
      ReadOnly = True
      Size = 100
      Lookup = True
    end
    object qRepMohlateEghdamlktoorganization: TStringField
      FieldKind = fkLookup
      FieldName = 'lktoorganization'
      LookupDataSet = QOrganization
      LookupKeyFields = 'ID'
      LookupResultField = 'Title'
      KeyFields = 'ToOrgID'
      ReadOnly = True
      Size = 100
      Lookup = True
    end
    object qRepMohlateEghdamMemo: TWideStringField
      FieldName = 'Memo'
      ReadOnly = True
      Size = 2000
    end
    object qRepMohlateEghdamSecTitle: TWideStringField
      FieldName = 'SecTitle'
      Size = 50
    end
  end
  object YDabir_Select_List_Customers: TADOStoredProc
    Connection = YeganehConnection
    CursorType = ctStatic
    ProcedureName = 'YDabir_Select_List_Customers;1'
    Parameters = <
      item
        Name = '@DBName'
        Attributes = [paNullable]
        DataType = ftString
        Size = 100
        Value = 'CRM'
      end>
    Left = 712
    Top = 512
    object YDabir_Select_List_CustomersCustomerID: TStringField
      FieldName = 'CustomerID'
      ReadOnly = True
      Size = 50
    end
    object YDabir_Select_List_CustomersPersonTitle: TWideStringField
      FieldName = 'PersonTitle'
      ReadOnly = True
      Size = 100
    end
    object YDabir_Select_List_CustomersCustomerNO: TStringField
      FieldName = 'CustomerNO'
      ReadOnly = True
      Size = 50
    end
  end
  object YDabir_Select_FollowUP_By_CustomerID: TADOStoredProc
    Connection = YeganehConnection
    CursorType = ctStatic
    ProcedureName = 'YDabir_Select_FollowUP_By_CustomerID;1'
    Parameters = <
      item
        Name = '@DoneDate'
        Attributes = [paNullable]
        DataType = ftString
        Size = 10
        Value = Null
      end
      item
        Name = '@TodODate'
        Attributes = [paNullable]
        DataType = ftString
        Size = 10
        Value = Null
      end
      item
        Name = '@MarketerID'
        Attributes = [paNullable]
        DataType = ftInteger
        Precision = 10
        Value = 0
      end
      item
        Name = '@DoneStatusID'
        Attributes = [paNullable]
        DataType = ftWord
        Precision = 3
        Value = 0
      end
      item
        Name = '@customerid'
        Attributes = [paNullable]
        DataType = ftInteger
        Precision = 10
        Value = 0
      end
      item
        Name = '@DBName'
        Attributes = [paNullable]
        DataType = ftString
        Size = 100
        Value = 'CRM'
      end>
    Left = 712
    Top = 464
    object YDabir_Select_FollowUP_By_CustomerIDFollowUPID: TAutoIncField
      FieldName = 'FollowUPID'
      ReadOnly = True
    end
    object YDabir_Select_FollowUP_By_CustomerIDCustomerID: TIntegerField
      FieldName = 'CustomerID'
    end
    object YDabir_Select_FollowUP_By_CustomerIDActionTypeID: TIntegerField
      FieldName = 'ActionTypeID'
    end
    object YDabir_Select_FollowUP_By_CustomerIDDoneStatusID: TWordField
      FieldName = 'DoneStatusID'
    end
    object YDabir_Select_FollowUP_By_CustomerIDMarketerID: TIntegerField
      FieldName = 'MarketerID'
    end
    object YDabir_Select_FollowUP_By_CustomerIDComment: TWideStringField
      FieldName = 'Comment'
      Size = 1000
    end
    object YDabir_Select_FollowUP_By_CustomerIDToDoDate: TStringField
      FieldName = 'ToDoDate'
      FixedChar = True
      Size = 10
    end
    object YDabir_Select_FollowUP_By_CustomerIDDoneDate: TStringField
      FieldName = 'DoneDate'
      FixedChar = True
      Size = 10
    end
    object YDabir_Select_FollowUP_By_CustomerIDAttachment1: TWideStringField
      FieldName = 'Attachment1'
      Size = 255
    end
    object YDabir_Select_FollowUP_By_CustomerIDAttachment2: TWideStringField
      FieldName = 'Attachment2'
      Size = 255
    end
    object YDabir_Select_FollowUP_By_CustomerIDToDoTime: TStringField
      FieldName = 'ToDoTime'
      FixedChar = True
      Size = 5
    end
    object YDabir_Select_FollowUP_By_CustomerIDSuccessChance: TWordField
      FieldName = 'SuccessChance'
    end
    object YDabir_Select_FollowUP_By_CustomerIDDoneComment: TWideStringField
      FieldName = 'DoneComment'
      Size = 1000
    end
    object YDabir_Select_FollowUP_By_CustomerIDinsertdate: TDateTimeField
      FieldName = 'insertdate'
    end
    object YDabir_Select_FollowUP_By_CustomerIDLastupdate: TDateTimeField
      FieldName = 'Lastupdate'
    end
    object YDabir_Select_FollowUP_By_CustomerIDUserTableLinkedID: TIntegerField
      FieldName = 'UserTableLinkedID'
    end
    object YDabir_Select_FollowUP_By_CustomerIDWordAttachment: TBlobField
      FieldName = 'WordAttachment'
    end
    object YDabir_Select_FollowUP_By_CustomerIDPicAttachment: TBlobField
      FieldName = 'PicAttachment'
    end
    object YDabir_Select_FollowUP_By_CustomerIDMarketerTitle: TWideStringField
      FieldName = 'MarketerTitle'
      Size = 50
    end
    object YDabir_Select_FollowUP_By_CustomerIDActionTypeTitle: TWideStringField
      FieldName = 'ActionTypeTitle'
      Size = 50
    end
    object YDabir_Select_FollowUP_By_CustomerIDDoneStatusTitle: TWideStringField
      FieldName = 'DoneStatusTitle'
      Size = 50
    end
  end
  object YDabir_Select_customer_By_CustomerID: TADOStoredProc
    Connection = YeganehConnection
    ProcedureName = 'YDabir_Select_customer_By_CustomerID;1'
    Parameters = <
      item
        Name = '@CustomerID'
        Attributes = [paNullable]
        DataType = ftInteger
        Precision = 10
        Value = 0
      end
      item
        Name = '@DBName'
        Attributes = [paNullable]
        DataType = ftString
        Size = 100
        Value = 'CRM'
      end>
    Left = 688
    Top = 416
    object YDabir_Select_customer_By_CustomerIDCustomerID: TAutoIncField
      DisplayLabel = #1705#1583' '#1605#1588#1578#1585#1610
      FieldName = 'CustomerID'
      ReadOnly = True
    end
    object YDabir_Select_customer_By_CustomerIDCustomerNo: TStringField
      DisplayLabel = #1705#1583
      FieldName = 'CustomerNo'
      ReadOnly = True
      Size = 50
    end
    object YDabir_Select_customer_By_CustomerIDPersonTitle: TWideStringField
      DisplayLabel = #1606#1575#1605' '#1605#1588#1578#1585#1610
      FieldName = 'PersonTitle'
      ReadOnly = True
      Size = 100
    end
    object YDabir_Select_customer_By_CustomerIDAddress: TWideStringField
      DisplayLabel = #1570#1583#1585#1587
      FieldName = 'Address'
      ReadOnly = True
      Size = 255
    end
    object YDabir_Select_customer_By_CustomerIDPhone: TWideStringField
      DisplayLabel = #1588#1605#1575#1585#1607' '#1578#1604#1601#1606
      FieldName = 'Phone'
      ReadOnly = True
      Size = 100
    end
    object YDabir_Select_customer_By_CustomerIDNotes: TWideStringField
      DisplayLabel = #1578#1608#1590#1610#1581#1575#1578
      FieldName = 'Notes'
      ReadOnly = True
      Size = 255
    end
    object YDabir_Select_customer_By_CustomerIDCompanyName: TWideStringField
      DisplayLabel = #1606#1575#1605' '#1588#1585#1705#1578
      FieldName = 'CompanyName'
      ReadOnly = True
      Size = 100
    end
    object YDabir_Select_customer_By_CustomerIDCityId: TSmallintField
      FieldName = 'CityId'
      ReadOnly = True
    end
    object YDabir_Select_customer_By_CustomerIDGroupId: TIntegerField
      FieldName = 'GroupId'
      ReadOnly = True
    end
    object YDabir_Select_customer_By_CustomerIDMarketerID: TIntegerField
      FieldName = 'MarketerID'
      ReadOnly = True
    end
    object YDabir_Select_customer_By_CustomerIDIsActive: TBooleanField
      FieldName = 'IsActive'
      ReadOnly = True
    end
    object YDabir_Select_customer_By_CustomerIDSenderType: TWordField
      FieldName = 'SenderType'
      ReadOnly = True
    end
    object YDabir_Select_customer_By_CustomerIDPriority: TIntegerField
      FieldName = 'Priority'
      ReadOnly = True
    end
    object YDabir_Select_customer_By_CustomerIDTreater: TWideStringField
      FieldName = 'Treater'
      ReadOnly = True
      Size = 50
    end
    object YDabir_Select_customer_By_CustomerIDCompaginID: TWordField
      FieldName = 'CompaginID'
      ReadOnly = True
    end
    object YDabir_Select_customer_By_CustomerIDPostalCode: TWideStringField
      DisplayLabel = #1705#1583' '#1662#1587#1578#1610
      FieldName = 'PostalCode'
      ReadOnly = True
    end
    object YDabir_Select_customer_By_CustomerIDEmailAddress: TWideStringField
      DisplayLabel = #1662#1587#1578' '#1575#1604#1705#1578#1585#1608#1606#1610#1705
      FieldName = 'EmailAddress'
      ReadOnly = True
      Size = 50
    end
    object YDabir_Select_customer_By_CustomerIDWorkPhone1: TWideStringField
      FieldName = 'WorkPhone1'
      ReadOnly = True
      Size = 30
    end
    object YDabir_Select_customer_By_CustomerIDWebsite: TStringField
      FieldName = 'Website'
      ReadOnly = True
      Size = 100
    end
    object YDabir_Select_customer_By_CustomerIDMobilePhone: TWideStringField
      DisplayLabel = #1588#1605#1575#1585#1607' '#1605#1608#1576#1575#1610#1604
      FieldName = 'MobilePhone'
      ReadOnly = True
      Size = 30
    end
    object YDabir_Select_customer_By_CustomerIDFaxNumber: TWideStringField
      DisplayLabel = #1588#1605#1575#1585#1607' '#1601#1575#1705#1587
      FieldName = 'FaxNumber'
      ReadOnly = True
      Size = 30
    end
    object YDabir_Select_customer_By_CustomerIDcompetitiveNote: TWideStringField
      FieldName = 'competitiveNote'
      ReadOnly = True
      Size = 255
    end
    object YDabir_Select_customer_By_CustomerIDInsertdate: TStringField
      FieldName = 'Insertdate'
      ReadOnly = True
      FixedChar = True
      Size = 10
    end
    object YDabir_Select_customer_By_CustomerIDLastUpdate: TStringField
      FieldName = 'LastUpdate'
      ReadOnly = True
      FixedChar = True
      Size = 10
    end
    object YDabir_Select_customer_By_CustomerIDCustomerStatusID: TWordField
      FieldName = 'CustomerStatusID'
      ReadOnly = True
    end
    object YDabir_Select_customer_By_CustomerIDCancelReasonID: TWordField
      FieldName = 'CancelReasonID'
      ReadOnly = True
    end
    object YDabir_Select_customer_By_CustomerIDCancelComment: TWideStringField
      FieldName = 'CancelComment'
      ReadOnly = True
      Size = 250
    end
    object YDabir_Select_customer_By_CustomerIDCancelDate: TStringField
      FieldName = 'CancelDate'
      ReadOnly = True
      FixedChar = True
      Size = 10
    end
    object YDabir_Select_customer_By_CustomerIDUserTableLinkedID: TIntegerField
      FieldName = 'UserTableLinkedID'
      ReadOnly = True
    end
    object YDabir_Select_customer_By_CustomerIDStateID: TWordField
      FieldName = 'StateID'
    end
    object YDabir_Select_customer_By_CustomerIDInnerPhone: TWideStringField
      FieldName = 'InnerPhone'
      Size = 50
    end
    object YDabir_Select_customer_By_CustomerIDProducts: TWideStringField
      FieldName = 'Products'
      ReadOnly = True
      Size = 2000
    end
  end
  object YDabir_Select_Contract_By_CustomerID: TADOStoredProc
    Connection = YeganehConnection
    ProcedureName = 'YDabir_Select_Contract_By_CustomerID;1'
    Parameters = <
      item
        Name = '@StartDate'
        Attributes = [paNullable]
        DataType = ftWideString
        Size = 10
        Value = ''
      end
      item
        Name = '@EndDate'
        Attributes = [paNullable]
        DataType = ftWideString
        Size = 10
        Value = ''
      end
      item
        Name = '@ContractTypeID'
        Attributes = [paNullable]
        DataType = ftInteger
        Precision = 10
        Value = 0
      end
      item
        Name = '@MarketerID'
        Attributes = [paNullable]
        DataType = ftInteger
        Precision = 10
        Value = 0
      end
      item
        Name = '@ProductId'
        Attributes = [paNullable]
        DataType = ftInteger
        Precision = 10
        Value = 0
      end
      item
        Name = '@TaxPercentage'
        Attributes = [paNullable]
        DataType = ftFloat
        Precision = 15
        Value = 0.000000000000000000
      end
      item
        Name = '@GoodJobPercentage'
        Attributes = [paNullable]
        DataType = ftFloat
        Precision = 15
        Value = 0.000000000000000000
      end
      item
        Name = '@customerid'
        Attributes = [paNullable]
        DataType = ftInteger
        Precision = 10
        Value = 0
      end
      item
        Name = '@UserTypeID'
        Attributes = [paNullable]
        DataType = ftInteger
        Precision = 10
        Value = 0
      end
      item
        Name = '@DBName'
        Attributes = [paNullable]
        DataType = ftString
        Size = 100
        Value = 'CRM'
      end>
    Left = 672
    Top = 368
    object YDabir_Select_Contract_By_CustomerIDContractID: TAutoIncField
      FieldName = 'ContractID'
      ReadOnly = True
    end
    object YDabir_Select_Contract_By_CustomerIDCustomerID: TIntegerField
      FieldName = 'CustomerID'
    end
    object YDabir_Select_Contract_By_CustomerIDBeginDate: TStringField
      FieldName = 'BeginDate'
      FixedChar = True
      Size = 10
    end
    object YDabir_Select_Contract_By_CustomerIDEndDate: TStringField
      FieldName = 'EndDate'
      FixedChar = True
      Size = 10
    end
    object YDabir_Select_Contract_By_CustomerIDAmount: TIntegerField
      FieldName = 'Amount'
    end
    object YDabir_Select_Contract_By_CustomerIDAttachment: TWideStringField
      FieldName = 'Attachment'
      Size = 255
    end
    object YDabir_Select_Contract_By_CustomerIDComment: TWideStringField
      FieldName = 'Comment'
      Size = 255
    end
    object YDabir_Select_Contract_By_CustomerIDMarketerID: TIntegerField
      FieldName = 'MarketerID'
    end
    object YDabir_Select_Contract_By_CustomerIDContractTypeID: TWordField
      FieldName = 'ContractTypeID'
    end
    object YDabir_Select_Contract_By_CustomerIDProductID: TWordField
      FieldName = 'ProductID'
    end
    object YDabir_Select_Contract_By_CustomerIDContractSubTypeID: TWordField
      FieldName = 'ContractSubTypeID'
    end
    object YDabir_Select_Contract_By_CustomerIDContractText: TBlobField
      FieldName = 'ContractText'
    end
    object YDabir_Select_Contract_By_CustomerIDTaxPercentage: TFloatField
      FieldName = 'TaxPercentage'
    end
    object YDabir_Select_Contract_By_CustomerIDGoodJobPercentage: TFloatField
      FieldName = 'GoodJobPercentage'
    end
    object YDabir_Select_Contract_By_CustomerIDByCashAmount: TFloatField
      FieldName = 'ByCashAmount'
    end
    object YDabir_Select_Contract_By_CustomerIDByCashFishNo: TFloatField
      FieldName = 'ByCashFishNo'
    end
    object YDabir_Select_Contract_By_CustomerIDInsuranceAccount: TFloatField
      FieldName = 'InsuranceAccount'
    end
    object YDabir_Select_Contract_By_CustomerIDTaxFish: TBlobField
      FieldName = 'TaxFish'
    end
    object YDabir_Select_Contract_By_CustomerIDContractTypeTitle: TWideStringField
      FieldName = 'ContractTypeTitle'
      Size = 50
    end
    object YDabir_Select_Contract_By_CustomerIDContractSubTypeTitle: TWideStringField
      FieldName = 'ContractSubTypeTitle'
      Size = 50
    end
    object YDabir_Select_Contract_By_CustomerIDProductTitle: TWideStringField
      FieldName = 'ProductTitle'
      Size = 100
    end
    object YDabir_Select_Contract_By_CustomerIDMarketerTitle: TWideStringField
      FieldName = 'MarketerTitle'
      Size = 50
    end
    object YDabir_Select_Contract_By_CustomerIDTotalAmount: TFloatField
      FieldName = 'TotalAmount'
      ReadOnly = True
    end
  end
  object qIS_Nameh_In_Cartable: TADOQuery
    Connection = YeganehConnection
    Parameters = <
      item
        Name = 'LetterID1'
        DataType = ftInteger
        Size = -1
        Value = 0
      end
      item
        Name = 'UserID1'
        DataType = ftInteger
        Size = -1
        Value = 0
      end
      item
        Name = 'LetterID2'
        DataType = ftInteger
        Size = -1
        Value = 0
      end
      item
        Name = 'UserID2'
        DataType = ftInteger
        Size = -1
        Value = 0
      end>
    SQL.Strings = (
      'SELECT RecommiteID FROM ReCommites'
      'WHERE'#9'(LetterID=:LetterID1 ) AND'
      #9#9'(OrgID=(SELECT FromOrgID FROM Users WHERE Id=:UserID1 )) AND'
      
        #9#9'(RecommiteID>(SELECT MAX(RecommiteID) FROM ReCommites WHERE Le' +
        'tterID=:LetterID2 AND UserID=:UserID2 ))')
    Left = 520
    Top = 208
    object qIS_Nameh_In_CartableRecommiteID: TAutoIncField
      FieldName = 'RecommiteID'
      ReadOnly = True
    end
  end
  object qIS_Nameh_In_Cartable_Before: TADOQuery
    Connection = YeganehConnection
    Parameters = <
      item
        Name = 'LetterID'
        Size = -1
        Value = Null
      end
      item
        Name = 'UserID'
        Size = -1
        Value = Null
      end>
    SQL.Strings = (
      
        'SELECT RecommiteID FROM ReCommites WHERE LetterID=:LetterID AND ' +
        'UserID=:UserID')
    Left = 504
    Top = 264
  end
  object spShowRounevesht: TADOStoredProc
    Connection = YeganehConnection
    CursorType = ctStatic
    LockType = ltBatchOptimistic
    ProcedureName = 'ShowRounevesht;1'
    Parameters = <
      item
        Name = '@letterID'
        Attributes = [paNullable]
        DataType = ftInteger
        Precision = 10
        Value = 0
      end>
    Left = 848
    Top = 192
    object spShowRouneveshtTMP_ID: TAutoIncField
      FieldName = 'TMP_ID'
      ReadOnly = True
    end
    object spShowRouneveshtRecommiteID: TIntegerField
      FieldName = 'RecommiteID'
    end
    object spShowRouneveshtLetterID: TIntegerField
      FieldName = 'LetterID'
    end
    object spShowRouneveshtID: TIntegerField
      FieldName = 'ID'
    end
    object spShowRouneveshtTYPE: TIntegerField
      FieldName = 'TYPE'
    end
    object spShowRouneveshtParentId: TIntegerField
      FieldName = 'ParentId'
    end
    object spShowRouneveshtOrgID: TIntegerField
      FieldName = 'OrgID'
    end
    object spShowRouneveshtParaph: TWideStringField
      FieldName = 'Paraph'
      Size = 2000
    end
    object spShowRouneveshtRecommiteDate: TWideStringField
      FieldName = 'RecommiteDate'
      Size = 100
    end
    object spShowRouneveshtUserID: TIntegerField
      FieldName = 'UserID'
    end
    object spShowRouneveshtIsCopy: TBooleanField
      FieldName = 'IsCopy'
    end
    object spShowRouneveshtProceeded: TBooleanField
      FieldName = 'Proceeded'
    end
    object spShowRouneveshtProceedDate: TWideStringField
      FieldName = 'ProceedDate'
      Size = 100
    end
    object spShowRouneveshtstaffmemo: TWideStringField
      FieldName = 'staffmemo'
      Size = 1000
    end
    object spShowRouneveshtviewdate: TWideStringField
      FieldName = 'viewdate'
      Size = 100
    end
    object spShowRouneveshtOrgStaff: TWideStringField
      FieldName = 'OrgStaff'
      Size = 1000
    end
    object spShowRouneveshtDeadLineDate: TWideStringField
      FieldName = 'DeadLineDate'
      Size = 100
    end
    object spShowRouneveshtLastUpdate: TDateTimeField
      FieldName = 'LastUpdate'
    end
    object spShowRouneveshtUniqueID: TLargeintField
      FieldName = 'UniqueID'
    end
    object spShowRouneveshtActionTypeID: TIntegerField
      FieldName = 'ActionTypeID'
    end
    object spShowRouneveshtDeadLineToint: TIntegerField
      FieldName = 'DeadLineToint'
    end
    object spShowRouneveshtIsAnswer: TBooleanField
      FieldName = 'IsAnswer'
    end
    object spShowRouneveshtISFollowup: TBooleanField
      FieldName = 'ISFollowup'
    end
    object spShowRouneveshtFinallized: TBooleanField
      FieldName = 'Finallized'
    end
    object spShowRouneveshtorgtitle: TWideStringField
      FieldName = 'orgtitle'
      Size = 2000
    end
    object spShowRouneveshtIsInnerOrg: TBooleanField
      FieldName = 'IsInnerOrg'
    end
    object spShowRouneveshtUserName: TWideStringField
      FieldName = 'UserName'
      Size = 200
    end
    object spShowRouneveshtRecommiteTime: TStringField
      FieldName = 'RecommiteTime'
      Size = 5
    end
  end
  object Select_LetterReCommite: TADOStoredProc
    Connection = YeganehConnection
    CursorType = ctStatic
    AfterOpen = Select_LetterReCommiteAfterOpen
    BeforePost = Select_LetterReCommiteBeforePost
    AfterPost = Select_LetterReCommiteAfterPost
    AfterScroll = Select_LetterReCommiteAfterScroll
    ProcedureName = 'Select_LetterReCommite;1'
    Parameters = <
      item
        Name = '@RETURN_VALUE'
        DataType = ftInteger
        Direction = pdReturnValue
        Precision = 10
        Value = 0
      end
      item
        Name = '@letterID'
        Attributes = [paNullable]
        DataType = ftInteger
        Precision = 10
        Value = Null
      end
      item
        Name = '@type'
        Attributes = [paNullable]
        DataType = ftWord
        Precision = 3
        Value = Null
      end>
    Left = 777
    Top = 11
    object Select_LetterReCommiteResponsibleStaffertitle: TWideStringField
      Alignment = taRightJustify
      FieldKind = fkLookup
      FieldName = 'ResponsibleStaffertitle'
      LookupDataSet = FromOrganizations_old
      LookupKeyFields = 'ID'
      LookupResultField = 'ResponsibleStaffer'
      KeyFields = 'OrgID'
      Lookup = True
    end
    object Select_LetterReCommitefromorgtitle: TWideStringField
      Alignment = taRightJustify
      FieldKind = fkLookup
      FieldName = 'fromorgtitle'
      LookupDataSet = FromOrganizations_old
      LookupKeyFields = 'ID'
      LookupResultField = 'Title'
      KeyFields = 'OrgID'
      Size = 100
      Lookup = True
    end
    object Select_LetterReCommiteRecommiteID: TAutoIncField
      FieldName = 'RecommiteID'
      ReadOnly = True
    end
    object Select_LetterReCommiteLetterID: TIntegerField
      FieldName = 'LetterID'
    end
    object Select_LetterReCommiteID: TSmallintField
      FieldName = 'ID'
    end
    object Select_LetterReCommiteType: TWordField
      FieldName = 'Type'
    end
    object Select_LetterReCommiteParentId: TSmallintField
      FieldName = 'ParentId'
    end
    object Select_LetterReCommiteOrgID: TIntegerField
      FieldName = 'OrgID'
    end
    object Select_LetterReCommiteParaph: TWideStringField
      Alignment = taRightJustify
      FieldName = 'Paraph'
      Size = 3000
    end
    object Select_LetterReCommiteRecommiteDate: TStringField
      Alignment = taRightJustify
      FieldName = 'RecommiteDate'
      Size = 10
    end
    object Select_LetterReCommiteUserID: TWordField
      FieldName = 'UserID'
    end
    object Select_LetterReCommiteIsCopy: TBooleanField
      Alignment = taRightJustify
      FieldName = 'IsCopy'
    end
    object Select_LetterReCommiteProceeded: TBooleanField
      Alignment = taRightJustify
      FieldName = 'Proceeded'
    end
    object Select_LetterReCommiteProceedDate: TStringField
      Alignment = taRightJustify
      FieldName = 'ProceedDate'
      Size = 10
    end
    object Select_LetterReCommitestaffmemo: TWideStringField
      Alignment = taRightJustify
      FieldName = 'staffmemo'
      Size = 255
    end
    object Select_LetterReCommiteviewdate: TStringField
      Alignment = taRightJustify
      FieldName = 'viewdate'
      FixedChar = True
      Size = 10
    end
    object Select_LetterReCommiteorgtitle: TWideStringField
      Alignment = taRightJustify
      FieldName = 'orgtitle'
      LookupDataSet = FromOrganizations_old
      LookupKeyFields = 'ID'
      LookupResultField = 'Title'
      KeyFields = 'OrgID'
      Size = 100
    end
    object Select_LetterReCommiteIsInnerOrg: TBooleanField
      Alignment = taRightJustify
      FieldName = 'IsInnerOrg'
    end
    object Select_LetterReCommiteOrgStaff: TWideStringField
      Alignment = taRightJustify
      FieldName = 'OrgStaff'
      Size = 50
    end
    object Select_LetterReCommiteDeadLineDate: TStringField
      Alignment = taRightJustify
      FieldName = 'DeadLineDate'
      FixedChar = True
      Size = 10
    end
    object Select_LetterReCommiteLastUpdate: TDateTimeField
      Alignment = taRightJustify
      FieldName = 'LastUpdate'
    end
    object Select_LetterReCommiteActionTypeID: TWordField
      FieldName = 'ActionTypeID'
    end
    object Select_LetterReCommiteDeadLineToint: TIntegerField
      FieldName = 'DeadLineToint'
    end
    object Select_LetterReCommiteUniqueID: TLargeintField
      FieldName = 'UniqueID'
    end
    object Select_LetterReCommiteIsAnswer: TBooleanField
      FieldName = 'IsAnswer'
    end
    object Select_LetterReCommiteISFollowup: TBooleanField
      FieldName = 'ISFollowup'
    end
    object Select_LetterReCommiteFinallized: TBooleanField
      FieldName = 'Finallized'
    end
    object Select_LetterReCommiteIsCopy_In_Dabir: TBooleanField
      FieldName = 'IsCopy_In_Dabir'
    end
    object Select_LetterReCommiteSentToDabir: TBooleanField
      FieldName = 'SentToDabir'
    end
    object Select_LetterReCommiteHasPayvast: TBooleanField
      FieldName = 'HasPayvast'
    end
    object Select_LetterReCommiteErja_Or_Answer_Date: TStringField
      FieldName = 'Erja_Or_Answer_Date'
      FixedChar = True
      Size = 10
    end
    object Select_LetterReCommiteIsSecure: TBooleanField
      FieldName = 'IsSecure'
    end
    object Select_LetterReCommiteGroupFlag: TIntegerField
      FieldName = 'GroupFlag'
      ReadOnly = True
    end
    object Select_LetterReCommiteRecommiteTime: TStringField
      FieldName = 'RecommiteTime'
      Size = 5
    end
  end
  object Get_RecommitePayvast_by_RecommitePayvastID: TADOStoredProc
    Connection = YeganehConnection
    ProcedureName = 'Get_RecommitePayvast_by_RecommitePayvastID;1'
    Parameters = <
      item
        Name = '@RecommitePayvastID'
        Attributes = [paNullable]
        DataType = ftInteger
        Precision = 10
        Value = 0
      end>
    Left = 352
    Top = 592
    object Get_RecommitePayvast_by_RecommitePayvastIDID: TAutoIncField
      FieldName = 'ID'
      ReadOnly = True
    end
    object Get_RecommitePayvast_by_RecommitePayvastIDImage: TBlobField
      FieldName = 'Image'
    end
    object Get_RecommitePayvast_by_RecommitePayvastIDVersionDate: TStringField
      FieldName = 'VersionDate'
      Size = 10
    end
    object Get_RecommitePayvast_by_RecommitePayvastIDVersionNo: TStringField
      FieldName = 'VersionNo'
      Size = 10
    end
  end
  object Get_RecommitePayvast_by_RecommiteID: TADOStoredProc
    Connection = YeganehConnection
    CursorType = ctStatic
    ProcedureName = 'Get_RecommitePayvast_by_RecommiteID'
    Parameters = <
      item
        Name = '@RecommiteID'
        DataType = ftInteger
        Value = Null
      end>
    Left = 104
    Top = 572
    object Get_RecommitePayvast_by_RecommiteIDID: TAutoIncField
      FieldName = 'ID'
      ReadOnly = True
    end
    object Get_RecommitePayvast_by_RecommiteIDdescription: TWideStringField
      FieldName = 'description'
      Size = 200
    end
    object Get_RecommitePayvast_by_RecommiteIDExt: TStringField
      FieldKind = fkLookup
      FieldName = 'Ext'
      LookupDataSet = Extention
      LookupKeyFields = 'ExtentionID'
      LookupResultField = 'Extention'
      KeyFields = 'Extention'
      Lookup = True
    end
    object Get_RecommitePayvast_by_RecommiteIDExtentionTitle: TStringField
      FieldKind = fkLookup
      FieldName = 'ExtentionTitle'
      LookupDataSet = Extention
      LookupKeyFields = 'ExtentionID'
      LookupResultField = 'ExtentionTitle'
      KeyFields = 'Extention'
      Lookup = True
    end
    object Get_RecommitePayvast_by_RecommiteIDExtention: TWordField
      FieldName = 'Extention'
    end
    object Get_RecommitePayvast_by_RecommiteIDRecommiteID: TIntegerField
      FieldName = 'RecommiteID'
    end
    object Get_RecommitePayvast_by_RecommiteIDLetterID: TIntegerField
      FieldName = 'LetterID'
    end
    object Get_RecommitePayvast_by_RecommiteIDVersionDate: TStringField
      FieldName = 'VersionDate'
      Size = 10
    end
    object Get_RecommitePayvast_by_RecommiteIDVersionNo: TStringField
      FieldName = 'VersionNo'
      Size = 10
    end
  end
  object spGetInnerNo: TADOStoredProc
    Connection = YeganehConnection
    ProcedureName = 'spGetInnerNo;1'
    Parameters = <
      item
        Name = '@LetterID'
        Attributes = [paNullable]
        DataType = ftInteger
        Precision = 10
        Value = 0
      end
      item
        Name = '@SecID'
        Attributes = [paNullable]
        DataType = ftInteger
        Precision = 10
        Value = 0
      end>
    Left = 528
    Top = 336
    object spGetInnerNoLetterID: TAutoIncField
      FieldName = 'LetterID'
      ReadOnly = True
    end
    object spGetInnerNoInnerNo: TWideStringField
      FieldName = 'InnerNo'
      ReadOnly = True
      Size = 4000
    end
  end
  object get_ArchiveFolder_byUserID_and_Letterid: TADOStoredProc
    Connection = YeganehConnection
    ProcedureName = 'get_ArchiveFolder_byUserID_and_Letterid;1'
    Parameters = <
      item
        Name = '@Letterid'
        Attributes = [paNullable]
        DataType = ftInteger
        Precision = 10
        Value = 0
      end
      item
        Name = '@userid'
        Attributes = [paNullable]
        DataType = ftInteger
        Precision = 10
        Value = 0
      end
      item
        Name = '@ArchiveCenterID'
        Attributes = [paNullable]
        DataType = ftInteger
        Precision = 10
        Value = 0
      end>
    Left = 712
    Top = 584
    object get_ArchiveFolder_byUserID_and_LetteridPlace: TWideStringField
      FieldName = 'Place'
      Size = 100
    end
    object get_ArchiveFolder_byUserID_and_LetteridTitle: TWideStringField
      FieldName = 'Title'
      Size = 100
    end
  end
  object QUserForLookup: TADOQuery
    Connection = YeganehConnection
    Parameters = <>
    SQL.Strings = (
      'SELECT * FROM Users')
    Left = 280
    Top = 88
    object QUserForLookupId: TAutoIncField
      FieldName = 'Id'
      ReadOnly = True
    end
    object QUserForLookupTitle: TWideStringField
      FieldName = 'Title'
      Size = 50
    end
    object QUserForLookupUserName: TWideStringField
      FieldName = 'UserName'
      Size = 50
    end
    object QUserForLookupPassWord: TWideStringField
      FieldName = 'PassWord'
      Size = 100
    end
    object QUserForLookupAccessID: TWordField
      FieldName = 'AccessID'
    end
    object QUserForLookupFromOrgID: TIntegerField
      FieldName = 'FromOrgID'
    end
    object QUserForLookupDefualtSecretariatID: TWordField
      FieldName = 'DefualtSecretariatID'
    end
    object QUserForLookupIsSecretariantStaffer: TBooleanField
      FieldName = 'IsSecretariantStaffer'
    end
    object QUserForLookupKartableGridInfo: TBlobField
      FieldName = 'KartableGridInfo'
    end
    object QUserForLookupDabirGridInfo: TBlobField
      FieldName = 'DabirGridInfo'
    end
    object QUserForLookupEndActiveDate: TStringField
      FieldName = 'EndActiveDate'
      FixedChar = True
      Size = 10
    end
    object QUserForLookupBeginActiveDate: TStringField
      FieldName = 'BeginActiveDate'
      FixedChar = True
      Size = 10
    end
    object QUserForLookupAlternativeUserID: TIntegerField
      FieldName = 'AlternativeUserID'
    end
    object QUserForLookupAlternativeEndDate: TStringField
      FieldName = 'AlternativeEndDate'
      FixedChar = True
      Size = 10
    end
    object QUserForLookupAlternativebeginDate: TStringField
      FieldName = 'AlternativebeginDate'
      FixedChar = True
      Size = 10
    end
    object QUserForLookupHasSecureLetterAccess: TBooleanField
      FieldName = 'HasSecureLetterAccess'
    end
    object QUserForLookupSecondOrgID: TIntegerField
      FieldName = 'SecondOrgID'
    end
    object QUserForLookupeCartableGridInfo: TStringField
      FieldName = 'eCartableGridInfo'
      Size = 500
    end
    object QUserForLookupeCartableTheme: TStringField
      FieldName = 'eCartableTheme'
      Size = 50
    end
    object QUserForLookupEmail: TWideStringField
      FieldName = 'Email'
      Size = 100
    end
    object QUserForLookupActive: TBooleanField
      FieldName = 'Active'
    end
    object QUserForLookupCanViewSecureRecommite: TBooleanField
      FieldName = 'CanViewSecureRecommite'
    end
    object QUserForLookupGroupID: TIntegerField
      FieldName = 'GroupID'
    end
  end
  object QWorkSheetUsers: TADOQuery
    Connection = YeganehConnection
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'SELECT ID,Title FROM Users'
      'WHERE [Active]=1')
    Left = 1136
    Top = 488
    object QWorkSheetUsersID: TAutoIncField
      DisplayLabel = #1588#1606#1575#1587#1607
      FieldName = 'ID'
      ReadOnly = True
    end
    object QWorkSheetUsersTitle: TWideStringField
      DisplayLabel = #1606#1575#1605
      FieldName = 'Title'
      Size = 50
    end
  end
  object QWorkSheetVisitsUserResponse: TADOQuery
    Connection = YeganehConnection
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'SELECT * FROM WorkSheetVisitsUserResponse')
    Left = 1136
    Top = 440
    object QWorkSheetVisitsUserResponseID: TAutoIncField
      DisplayLabel = #1588#1606#1575#1587#1607
      FieldName = 'ID'
      ReadOnly = True
    end
    object QWorkSheetVisitsUserResponseMean: TStringField
      DisplayLabel = #1593#1606#1608#1575#1606
      FieldName = 'Mean'
      Size = 50
    end
    object QWorkSheetVisitsUserResponseCode: TIntegerField
      Tag = -1
      DisplayLabel = #1705#1583
      FieldName = 'Code'
    end
  end
  object QWorkSheetTasksWithAlarm: TADOQuery
    Connection = YeganehConnection
    Parameters = <>
    SQL.Strings = (
      'SELECT * FROM WorkSheetTasksWithAlarm')
    Left = 1136
    Top = 392
    object QWorkSheetTasksWithAlarmID: TAutoIncField
      DisplayLabel = #1588#1606#1575#1587#1607
      FieldName = 'ID'
      ReadOnly = True
    end
    object QWorkSheetTasksWithAlarmMean: TStringField
      DisplayLabel = #1593#1606#1608#1575#1606
      FieldName = 'Mean'
      Size = 50
    end
    object QWorkSheetTasksWithAlarmCode: TIntegerField
      Tag = -1
      DisplayLabel = #1705#1583
      FieldName = 'Code'
    end
  end
  object QWorkSheetTasksUserResponse: TADOQuery
    Connection = YeganehConnection
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'SELECT * FROM WorkSheetTasksUserResponse')
    Left = 1136
    Top = 344
    object QWorkSheetTasksUserResponseID: TAutoIncField
      DisplayLabel = #1588#1606#1575#1587#1607
      FieldName = 'ID'
      ReadOnly = True
    end
    object QWorkSheetTasksUserResponseMean: TStringField
      DisplayLabel = #1593#1606#1608#1575#1606
      FieldName = 'Mean'
      Size = 50
    end
    object QWorkSheetTasksUserResponseCode: TIntegerField
      Tag = -1
      DisplayLabel = #1705#1583
      FieldName = 'Code'
    end
  end
  object QWorkSheetTasksStatus: TADOQuery
    Connection = YeganehConnection
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'SELECT * FROM WorkSheetTasksStatus')
    Left = 1136
    Top = 296
    object QWorkSheetTasksStatusID: TAutoIncField
      DisplayLabel = #1588#1606#1575#1587#1607
      FieldName = 'ID'
      ReadOnly = True
    end
    object QWorkSheetTasksStatusMean: TStringField
      DisplayLabel = #1593#1606#1608#1575#1606
      FieldName = 'Mean'
      Size = 50
    end
    object QWorkSheetTasksStatusCode: TIntegerField
      Tag = -1
      DisplayLabel = #1705#1583
      FieldName = 'Code'
    end
  end
  object QWorkSheetSessionsUserResponse: TADOQuery
    Connection = YeganehConnection
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'SELECT * FROM WorkSheetSessionsUserResponse')
    Left = 1136
    Top = 248
    object QWorkSheetSessionsUserResponseID: TAutoIncField
      DisplayLabel = #1588#1606#1575#1587#1607
      FieldName = 'ID'
      ReadOnly = True
    end
    object QWorkSheetSessionsUserResponseMean: TStringField
      DisplayLabel = #1593#1606#1608#1575#1606
      FieldName = 'Mean'
      Size = 50
    end
    object QWorkSheetSessionsUserResponseCode: TIntegerField
      Tag = -1
      DisplayLabel = #1705#1583
      FieldName = 'Code'
    end
  end
  object QWorkSheetSessionsMustCome: TADOQuery
    Connection = YeganehConnection
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'SELECT * FROM WorkSheetSessionsMustCome')
    Left = 1136
    Top = 200
    object QWorkSheetSessionsMustComeID: TAutoIncField
      DisplayLabel = #1588#1606#1575#1587#1607
      FieldName = 'ID'
      ReadOnly = True
    end
    object QWorkSheetSessionsMustComeMean: TStringField
      DisplayLabel = #1593#1606#1608#1575#1606
      FieldName = 'Mean'
      Size = 50
    end
    object QWorkSheetSessionsMustComeCode: TIntegerField
      Tag = -1
      DisplayLabel = #1705#1583
      FieldName = 'Code'
    end
  end
  object QWorkSheetBaseStatus: TADOQuery
    Connection = YeganehConnection
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'SELECT * FROM WorkSheetBaseStatus')
    Left = 1136
    Top = 152
    object QWorkSheetBaseStatusID: TAutoIncField
      DisplayLabel = #1588#1606#1575#1587#1607
      FieldName = 'ID'
      ReadOnly = True
    end
    object QWorkSheetBaseStatusMean: TStringField
      DisplayLabel = #1593#1606#1608#1575#1606
      FieldName = 'Mean'
      Size = 50
    end
    object QWorkSheetBaseStatusCode: TIntegerField
      Tag = -1
      DisplayLabel = #1705#1583
      FieldName = 'Code'
    end
  end
  object QWorkSheetBaseImportantLevel: TADOQuery
    Connection = YeganehConnection
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'SELECT * FROM WorkSheetBaseImportantLevel')
    Left = 1136
    Top = 104
    object QWorkSheetBaseImportantLevelID: TAutoIncField
      DisplayLabel = #1588#1606#1575#1587#1607
      FieldName = 'ID'
      ReadOnly = True
    end
    object QWorkSheetBaseImportantLevelMean: TStringField
      DisplayLabel = #1593#1606#1608#1575#1606
      FieldName = 'Mean'
      Size = 50
    end
    object QWorkSheetBaseImportantLevelCode: TIntegerField
      Tag = -1
      DisplayLabel = #1705#1583
      FieldName = 'Code'
    end
  end
  object QWorkSheetBaseType: TADOQuery
    Connection = YeganehConnection
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'SELECT * FROM WorkSheetBaseType')
    Left = 1136
    Top = 56
    object QWorkSheetBaseTypeID: TAutoIncField
      DisplayLabel = #1588#1606#1575#1587#1607
      FieldName = 'ID'
      ReadOnly = True
    end
    object QWorkSheetBaseTypeMean: TStringField
      DisplayLabel = #1593#1606#1608#1575#1606
      FieldName = 'Mean'
      Size = 50
    end
    object QWorkSheetBaseTypeCode: TIntegerField
      Tag = -1
      DisplayLabel = #1705#1583
      FieldName = 'Code'
    end
  end
  object QCheckTadakhol: TADOQuery
    Connection = YeganehConnection
    Parameters = <>
    Left = 1136
    Top = 536
  end
  object QGetSemat: TADOQuery
    Connection = YeganehConnection
    Parameters = <>
    SQL.Strings = (
      'SELECT Title FROM FromOrganizations')
    Left = 744
    Top = 208
    object QGetSematTitle: TWideStringField
      FieldName = 'Title'
      Size = 100
    end
  end
  object CRMConnection: TADOConnection
    CommandTimeout = 30000
    ConnectionTimeout = 30
    LoginPrompt = False
    Provider = 'SQLOLEDB.1'
    Left = 176
    Top = 104
  end
  object qDefineColors: TADOQuery
    Connection = YeganehConnection
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'SELECT * FROM DefineColors')
    Left = 1040
    Top = 24
    object qDefineColorsID: TAutoIncField
      FieldName = 'ID'
      ReadOnly = True
    end
    object qDefineColorsColor: TStringField
      FieldName = 'Color'
      Size = 50
    end
    object qDefineColorsDescriptions: TStringField
      FieldName = 'Descriptions'
      Size = 200
    end
    object qDefineColorsAccessDesc: TStringField
      FieldName = 'AccessDesc'
      Size = 200
    end
  end
  object qSelectedColor: TADOQuery
    Connection = YeganehConnection
    Parameters = <
      item
        Name = 'LetterID'
        Attributes = [paSigned]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = 0
      end>
    SQL.Strings = (
      
        'SELECT -1 AS ColorID ,'#39#1607#1605#1607' '#1589#1601#1581#1575#1578' '#1662#1610#1608#1587#1578' '#1588#1583#1607#39' AS Color , NULL AS D' +
        'escriptions'
      ''
      'UNION ALL'
      ''
      'SELECT 0 AS ColorID ,'#39#1601#1575#1602#1583' '#1585#1606#1711#39' AS Color , NULL AS Descriptions'
      ''
      'UNION ALL'
      ''
      
        'SELECT LD.ColorID,MAX(dc.Color) AS Color ,MAX(dc.Descriptions) A' +
        'S Descriptions '
      
        'FROM LetterData LD INNER JOIN DefineColors dc ON LD.ColorID=dc.I' +
        'D'
      'WHERE LD.LetterID=:LetterID'
      'GROUP BY LD.ColorID')
    Left = 1040
    Top = 72
    object qSelectedColorColorID: TIntegerField
      FieldName = 'ColorID'
      ReadOnly = True
    end
    object qSelectedColorColor: TStringField
      FieldName = 'Color'
      ReadOnly = True
      Size = 50
    end
    object qSelectedColorDescriptions: TStringField
      FieldName = 'Descriptions'
      ReadOnly = True
      Size = 200
    end
  end
  object Insert_LetterData: TADOStoredProc
    Connection = YeganehConnection
    CursorType = ctStatic
    ProcedureName = 'insert_LetterData'
    Parameters = <
      item
        Name = '@RETURN_VALUE'
        DataType = ftInteger
        Direction = pdReturnValue
        Precision = 10
        Value = Null
      end
      item
        Name = '@LetterDataID'
        Attributes = [paNullable]
        DataType = ftInteger
        Direction = pdInputOutput
        Precision = 10
        Value = Null
      end
      item
        Name = '@LetterID'
        Attributes = [paNullable]
        DataType = ftInteger
        Precision = 10
        Value = Null
      end
      item
        Name = '@PageNumber'
        Attributes = [paNullable]
        DataType = ftWord
        Precision = 3
        Value = Null
      end
      item
        Name = '@extention'
        Attributes = [paNullable]
        DataType = ftWord
        Precision = 3
        Value = Null
      end>
    Left = 592
    Top = 504
    object AutoIncField1: TAutoIncField
      FieldName = 'Id'
      ReadOnly = True
    end
    object IntegerField1: TIntegerField
      FieldName = 'AlternativeUserID'
    end
    object StringField1: TStringField
      FieldName = 'AlternativebeginDate'
      FixedChar = True
      Size = 10
    end
    object StringField2: TStringField
      FieldName = 'AlternativeEndDate'
      FixedChar = True
      Size = 10
    end
    object WideStringField1: TWideStringField
      FieldKind = fkLookup
      FieldName = 'AlternativeUserTitle'
      LookupDataSet = Users
      LookupKeyFields = 'Id'
      LookupResultField = 'Title'
      KeyFields = 'AlternativeUserID'
      Lookup = True
    end
  end
  object Insert_File: TADOQuery
    Connection = YeganehConnection
    Parameters = <
      item
        Name = 'LID'
        Attributes = [paSigned]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = Null
      end
      item
        Name = 'PN'
        Attributes = [paSigned, paNullable]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = Null
      end
      item
        Name = 'EXT'
        DataType = ftWord
        Precision = 3
        Size = 1
        Value = Null
      end
      item
        Name = 'IMG'
        Attributes = [paNullable, paLong]
        DataType = ftVarBytes
        NumericScale = 255
        Precision = 255
        Size = 2147483647
        Value = Null
      end
      item
        Name = 'UID'
        Attributes = [paSigned, paNullable]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = 0
      end>
    SQL.Strings = (
      
        'INSERT INTO LetterData(LetterID,pageNumber,Extention,Image,uniqu' +
        'eID)'
      'VALUES(:LID, :PN, :EXT, :IMG, :UID)')
    Left = 488
    Top = 512
  end
  object SelectPDF: TADOQuery
    Connection = YeganehConnection
    Parameters = <
      item
        Name = 'Param1'
        Attributes = [paSigned, paNullable]
        DataType = ftLargeint
        Precision = 19
        Size = 8
        Value = '0'
      end>
    SQL.Strings = (
      'SELECT Image From LetterData WHERE UniqueID= :UID')
    Left = 448
    Top = 488
    object SelectPDFImage: TBlobField
      FieldName = 'Image'
    end
  end
  object ADOStoredProc1: TADOStoredProc
    ConnectionString = 
      'Provider=SQLOLEDB.1;Integrated Security=SSPI;Persist Security In' +
      'fo=False;Initial Catalog=salamat;Data Source=D06-142B1603891\SQL' +
      '2008r2'
    CursorType = ctStatic
    ProcedureName = 'insert_LetterData'
    Parameters = <
      item
        Name = '@RETURN_VALUE'
        DataType = ftInteger
        Direction = pdReturnValue
        Precision = 10
        Value = Null
      end
      item
        Name = '@LetterDataID'
        Attributes = [paNullable]
        DataType = ftInteger
        Direction = pdInputOutput
        Precision = 10
        Value = Null
      end
      item
        Name = '@LetterID'
        Attributes = [paNullable]
        DataType = ftInteger
        Precision = 10
        Value = Null
      end
      item
        Name = '@PageNumber'
        Attributes = [paNullable]
        DataType = ftWord
        Precision = 3
        Value = Null
      end
      item
        Name = '@extention'
        Attributes = [paNullable]
        DataType = ftWord
        Precision = 3
        Value = Null
      end>
    Left = 536
    Top = 574
    object AutoIncField2: TAutoIncField
      FieldName = 'Id'
      ReadOnly = True
    end
    object IntegerField2: TIntegerField
      FieldName = 'AlternativeUserID'
    end
    object StringField3: TStringField
      FieldName = 'AlternativebeginDate'
      FixedChar = True
      Size = 10
    end
    object StringField4: TStringField
      FieldName = 'AlternativeEndDate'
      FixedChar = True
      Size = 10
    end
    object WideStringField2: TWideStringField
      FieldKind = fkLookup
      FieldName = 'AlternativeUserTitle'
      LookupDataSet = Users
      LookupKeyFields = 'Id'
      LookupResultField = 'Title'
      KeyFields = 'AlternativeUserID'
      Lookup = True
    end
  end
  object qLetterSign: TADOQuery
    Connection = YeganehConnection
    CursorType = ctStatic
    Parameters = <
      item
        Name = 'p1'
        Attributes = [paSigned]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = Null
      end>
    SQL.Strings = (
      
        'SELECT u.title+'#39' - '#39'+fo.title as title,ls.date,ls.time ,ls.parap' +
        'h'
      'FROM LetterSign ls'
      'inner join Users u ON ls.UserID=u.Id'
      'LEFT OUTER JOIN FromOrganizations fo ON fo.ID=u.FromOrgID'
      'WHERE LetterID= :p1 --and (IsOld is Null)'
      'ORDER BY ls.id')
    Left = 32
    Top = 96
  end
  object quLetterSigners: TADOQuery
    Connection = YeganehConnection
    CursorType = ctStatic
    Parameters = <
      item
        Name = 'p1'
        Attributes = [paSigned]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = Null
      end>
    SQL.Strings = (
      'SELECT UserID FROM LetterSign'
      '  WHERE isold IS NULL AND letterid= :p1'
      'order by id')
    Left = 24
    Top = 176
    object quLetterSignersUserID: TIntegerField
      FieldName = 'UserID'
    end
  end
  object WordApplication2: TWordApplication
    AutoConnect = False
    ConnectKind = ckRunningOrNew
    AutoQuit = False
    OnDocumentOpen = WordApplication2DocumentOpen
    Left = 613
    Top = 388
  end
  object ArchiveConnection: TADOConnection
    CommandTimeout = 5000
    ConnectionTimeout = 5
    LoginPrompt = False
    Provider = 'SQLOLEDB.1'
    Left = 81
    Top = 29
  end
  object qryArchiveAttachment: TADOQuery
    Connection = ArchiveConnection
    CursorType = ctStatic
    Parameters = <
      item
        Name = 'p'
        Attributes = [paSigned]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = Null
      end>
    SQL.Strings = (
      'SELECT IMAGE,LetterDataID,Extention.extention '
      'FROM LetterDATA inner join '
      'extention on letterdata.extention = extention.extentionid '
      'WHERE LetterDATAID= :p')
    Left = 96
    Top = 408
    object qryArchiveAttachmentIMAGE: TBlobField
      FieldName = 'IMAGE'
    end
    object qryArchiveAttachmentLetterDataID: TAutoIncField
      FieldName = 'LetterDataID'
      ReadOnly = True
    end
    object qryArchiveAttachmentextention: TStringField
      FieldName = 'extention'
      Size = 5
    end
  end
  object Get_All_Letter: TADOStoredProc
    Parameters = <>
    Left = 840
    Top = 544
    object Get_All_Letterletterformat: TIntegerField
      FieldName = 'letterformat'
    end
  end
  object Get_All_LetterData: TADOStoredProc
    Connection = YeganehConnection
    CursorType = ctStatic
    ProcedureName = 'Get_All_LetterData_by_LetterID;1'
    Parameters = <
      item
        Name = '@RETURN_VALUE'
        DataType = ftInteger
        Direction = pdReturnValue
        Precision = 10
        Value = 0
      end
      item
        Name = '@LetterID'
        Attributes = [paNullable]
        DataType = ftInteger
        Precision = 10
        Value = 0
      end>
    Left = 312
    Top = 619
    object Get_All_LetterDataletterid: TIntegerField
      FieldName = 'letterid'
    end
    object Get_All_LetterDataLetterDataID: TAutoIncField
      FieldName = 'LetterDataID'
      ReadOnly = True
    end
    object Get_All_LetterDataExtention: TStringField
      FieldName = 'Extention'
      Size = 5
    end
    object Get_All_LetterDataDESCRIPTION: TWideStringField
      FieldName = 'DESCRIPTION'
      Size = 200
    end
    object Get_All_LetterDataImage: TBlobField
      FieldName = 'Image'
    end
  end
  object adoFollow_Retroaction_Letter: TADODataSet
    Connection = YeganehConnection
    CursorType = ctStatic
    OnCalcFields = adoFollow_Retroaction_LetterCalcFields
    CommandText = 
      'SELECT * FROM dbo.Follow_Retroaction_Letter WHERE LetterID = :Le' +
      'tterID'
    Parameters = <
      item
        Name = 'LetterID'
        DataType = ftString
        Size = 4
        Value = '1000'
      end>
    Left = 985
    Top = 544
    object adoFollow_Retroaction_LetterFR_ID: TAutoIncField
      FieldName = 'FR_ID'
      ReadOnly = True
    end
    object adoFollow_Retroaction_LetterLetterID: TIntegerField
      FieldName = 'LetterID'
    end
    object adoFollow_Retroaction_LetterFR_LetterID: TIntegerField
      FieldName = 'FR_LetterID'
    end
    object adoFollow_Retroaction_LetterFRIndicatorID: TIntegerField
      FieldKind = fkCalculated
      FieldName = 'FRIndicatorID'
      Calculated = True
    end
    object adoFollow_Retroaction_LetterFRKindTitle: TStringField
      FieldKind = fkCalculated
      FieldName = 'FRKindTitle'
      Calculated = True
    end
    object adoFollow_Retroaction_LetterFR_Kind: TIntegerField
      FieldName = 'FR_Kind'
    end
    object adoFollow_Retroaction_LetterFRLetterNO: TStringField
      FieldKind = fkCalculated
      FieldName = 'FRLetterNO'
      Size = 50
      Calculated = True
    end
  end
  object frxReport1: TfrxReport
    Version = '4.5'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick]
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = 'Default'
    PrintOptions.PrintOnSheet = 0
    ReportOptions.CreateDate = 42904.427961365740000000
    ReportOptions.LastChange = 42904.427961365740000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      'begin'
      ''
      'end.')
    Left = 616
    Top = 328
    Datasets = <>
    Variables = <>
    Style = <>
  end
  object QryActiveUser: TADOQuery
    Connection = YeganehConnection
    Parameters = <
      item
        Name = 'UserName'
        DataType = ftString
        Size = 4
        Value = #39'88'#39
      end>
    SQL.Strings = (
      'SELECT Active,IsSecretariantStaffer,iscartableuser'
      ' FROM users'
      'WHERE UserName =:UserName ')
    Left = 976
    Top = 632
    object QryActiveUserActive: TBooleanField
      FieldName = 'Active'
    end
    object QryActiveUserIsSecretariantStaffer: TBooleanField
      FieldName = 'IsSecretariantStaffer'
    end
    object QryActiveUseriscartableuser: TBooleanField
      FieldName = 'iscartableuser'
    end
  end
  object FromOrganizations: TADOStoredProc
    Connection = YeganehConnection
    CursorType = ctStatic
    ProcedureName = 'get_InnerOrganizations'
    Parameters = <
      item
        Name = '@FromOrgID'
        DataType = ftInteger
        Value = Null
      end>
    Left = 75
    Top = 506
    object FromOrganizationsTitle: TWideStringField
      Alignment = taRightJustify
      FieldName = 'Title'
      Size = 100
    end
    object FromOrganizationsParentID: TIntegerField
      FieldName = 'ParentID'
    end
    object FromOrganizationsPhone: TWideStringField
      Alignment = taRightJustify
      FieldName = 'Phone'
      Size = 30
    end
    object FromOrganizationsFax: TWideStringField
      Alignment = taRightJustify
      FieldName = 'Fax'
      Size = 30
    end
    object FromOrganizationsEmail: TWideStringField
      Alignment = taRightJustify
      FieldName = 'Email'
      Size = 30
    end
    object FromOrganizationsResponsibleStaffer: TWideStringField
      Alignment = taRightJustify
      FieldName = 'ResponsibleStaffer'
      Size = 50
    end
    object FromOrganizationsIsActive: TBooleanField
      Alignment = taRightJustify
      FieldName = 'IsActive'
    end
    object FromOrganizationsPreCode: TWideStringField
      Alignment = taRightJustify
      FieldName = 'PreCode'
    end
    object FromOrganizationsIsInnerOrg: TBooleanField
      Alignment = taRightJustify
      FieldName = 'IsInnerOrg'
    end
    object FromOrganizationsID: TAutoIncField
      FieldName = 'ID'
      ReadOnly = True
    end
    object FromOrganizationsCode: TWideStringField
      Alignment = taRightJustify
      DisplayWidth = 50
      FieldName = 'Code'
      Size = 50
    end
    object FromOrganizationsName_Semat: TWideStringField
      FieldName = 'Name_Semat'
      ReadOnly = True
      Size = 151
    end
  end
end
