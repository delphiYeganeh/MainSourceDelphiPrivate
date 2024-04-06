object Transfer_dm: TTransfer_dm
  OldCreateOrder = False
  OnCreate = DataModuleCreate
  Left = 437
  Top = 110
  Height = 535
  Width = 549
  object ADOConnection2: TADOConnection
    LoginPrompt = False
    Provider = 'SQLOLEDB.1'
    Left = 232
    Top = 272
  end
  object Transfer_Get_ShareLetter: TADODataSet
    Connection = ADOConnection1
    CursorType = ctStatic
    CommandText = 'Transfer_Get_ShareLetter;1'
    CommandTimeout = 3000
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
        Name = '@RelatedSecretariatID'
        Attributes = [paNullable]
        DataType = ftInteger
        Precision = 10
        Value = Null
      end
      item
        Name = '@FromDate'
        Attributes = [paNullable]
        DataType = ftString
        Size = 10
        Value = Null
      end>
    Left = 120
    Top = 64
    object Transfer_Get_ShareLetterLetterid: TAutoIncField
      FieldName = 'Letterid'
      ReadOnly = True
    end
    object Transfer_Get_ShareLetterUniqueID: TLargeintField
      FieldName = 'UniqueID'
    end
    object Transfer_Get_ShareLetterLastupdate: TDateTimeField
      FieldName = 'Lastupdate'
    end
  end
  object DTransfer_Get_ShareLetter: TDataSource
    DataSet = Transfer_Get_ShareLetter
    Left = 128
    Top = 192
  end
  object ADOConnection1: TADOConnection
    LoginPrompt = False
    Provider = 'SQLOLEDB.1'
    Left = 144
    Top = 272
  end
  object SrcLetter: TADOStoredProc
    Connection = ADOConnection1
    CursorType = ctStatic
    ProcedureName = 'Transfer_Get_Letter_By_LetterID'
    Parameters = <
      item
        Name = '@RETURN_VALUE'
        DataType = ftInteger
        Direction = pdReturnValue
        Precision = 10
        Value = 0
      end
      item
        Name = '@Letterid'
        Attributes = [paNullable]
        DataType = ftInteger
        Direction = pdInputOutput
        Precision = 10
        Value = Null
      end>
    Left = 456
    Top = 8
    object SrcLetterLetterID: TAutoIncField
      FieldName = 'LetterID'
      ReadOnly = True
    end
    object SrcLetterIndicatorID: TIntegerField
      FieldName = 'IndicatorID'
    end
    object SrcLetterMYear: TWordField
      FieldName = 'MYear'
    end
    object SrcLetterSecretariatID: TWordField
      FieldName = 'SecretariatID'
    end
    object SrcLetterLetter_Type: TWordField
      FieldName = 'Letter_Type'
    end
    object SrcLetterletterformat: TWordField
      FieldName = 'letterformat'
    end
    object SrcLetterIncommingNO: TWideStringField
      FieldName = 'IncommingNO'
      Size = 50
    end
    object SrcLetterIncommingdate: TWideStringField
      FieldName = 'Incommingdate'
      Size = 10
    end
    object SrcLetterCenterNo: TWideStringField
      FieldName = 'CenterNo'
      Size = 50
    end
    object SrcLetterCenterDate: TStringField
      FieldName = 'CenterDate'
      FixedChar = True
      Size = 10
    end
    object SrcLetterFromOrgID: TIntegerField
      FieldName = 'FromOrgID'
    end
    object SrcLetterToOrgID: TIntegerField
      FieldName = 'ToOrgID'
    end
    object SrcLetterSignerid: TWideStringField
      FieldName = 'Signerid'
      Size = 50
    end
    object SrcLetterClassificationID: TWordField
      FieldName = 'ClassificationID'
    end
    object SrcLetterUrgencyID: TSmallintField
      FieldName = 'UrgencyID'
    end
    object SrcLetterMemo: TWideStringField
      FieldName = 'Memo'
      Size = 500
    end
    object SrcLetterAttachTitle: TWideStringField
      FieldName = 'AttachTitle'
      Size = 50
    end
    object SrcLetterNumberOfAttachPages: TSmallintField
      FieldName = 'NumberOfAttachPages'
    end
    object SrcLetterNumberOfPage: TWordField
      FieldName = 'NumberOfPage'
    end
    object SrcLetterReceiveTypeID: TWordField
      FieldName = 'ReceiveTypeID'
    end
    object SrcLetterUserID: TIntegerField
      FieldName = 'UserID'
    end
    object SrcLetterRetroactionNo: TWideStringField
      FieldName = 'RetroactionNo'
      Size = 50
    end
    object SrcLetterUserMemo: TWideStringField
      FieldName = 'UserMemo'
      Size = 255
    end
    object SrcLetterRegistrationDate: TStringField
      FieldName = 'RegistrationDate'
      FixedChar = True
      Size = 10
    end
    object SrcLetterRegistrationTime: TStringField
      FieldName = 'RegistrationTime'
      Size = 5
    end
    object SrcLetterFollowLetterNo: TWideStringField
      FieldName = 'FollowLetterNo'
      Size = 50
    end
    object SrcLetterToStaffer: TWideStringField
      FieldName = 'ToStaffer'
      Size = 50
    end
    object SrcLetterSentLetterID: TIntegerField
      FieldName = 'SentLetterID'
    end
    object SrcLetterTemplateID: TIntegerField
      FieldName = 'TemplateID'
    end
    object SrcLetterHeaderID: TIntegerField
      FieldName = 'HeaderID'
    end
    object SrcLetterLetterRecommites: TWideStringField
      FieldName = 'LetterRecommites'
      Size = 500
    end
    object SrcLetterFromStaffer: TWideStringField
      FieldName = 'FromStaffer'
      Size = 50
    end
    object SrcLetterFinalized: TBooleanField
      FieldName = 'Finalized'
    end
    object SrcLetterSendStatusID: TWordField
      FieldName = 'SendStatusID'
    end
    object SrcLetterLastUpdate: TDateTimeField
      FieldName = 'LastUpdate'
    end
    object SrcLetterUserTableID: TIntegerField
      FieldName = 'UserTableID'
    end
    object SrcLetterUniqueID: TLargeintField
      FieldName = 'UniqueID'
    end
    object SrcLetterOrgTitle: TWideStringField
      FieldName = 'OrgTitle'
      Size = 100
    end
    object SrcLetterOrgUniqueID: TLargeintField
      FieldName = 'OrgUniqueID'
    end
  end
  object SrcLetterData: TADOStoredProc
    Connection = ADOConnection1
    CursorType = ctStatic
    ProcedureName = 'Transfer_Get_LetterData_By_LetterID'
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
        Value = 5242
      end
      item
        Name = '@maxSize'
        Attributes = [paNullable]
        DataType = ftInteger
        Precision = 10
        Value = 10000
      end>
    Left = 392
    Top = 8
    object SrcLetterDataLetterDataID: TAutoIncField
      FieldName = 'LetterDataID'
      ReadOnly = True
    end
    object SrcLetterDataUniqueID: TLargeintField
      FieldName = 'UniqueID'
    end
    object SrcLetterDataLastUpdate: TDateTimeField
      FieldName = 'LastUpdate'
    end
    object SrcLetterDataExtention: TWordField
      FieldName = 'Extention'
    end
  end
  object Src1Letterdata: TADOStoredProc
    Connection = ADOConnection1
    ProcedureName = 'Transfer_Get_Letterdata_By_LetterDataID'
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
    Left = 424
    Top = 152
    object Src1LetterdataLetterDataID: TAutoIncField
      FieldName = 'LetterDataID'
      ReadOnly = True
    end
    object Src1LetterdataLetterID: TIntegerField
      FieldName = 'LetterID'
    end
    object Src1LetterdataPageNumber: TWordField
      FieldName = 'PageNumber'
    end
    object Src1LetterdataImage: TBlobField
      FieldName = 'Image'
    end
    object Src1Letterdataextention: TWordField
      FieldName = 'extention'
    end
    object Src1LetterdataDescription: TWideStringField
      FieldName = 'Description'
      Size = 200
    end
    object Src1LetterdataLastUpdate: TDateTimeField
      FieldName = 'LastUpdate'
    end
    object Src1LetterdataUniqueID: TLargeintField
      FieldName = 'UniqueID'
    end
  end
  object Dest1LetterData: TADOStoredProc
    Connection = ADOConnection2
    ProcedureName = 'Transfer_Get_Letterdata_By_LetterDataID'
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
    Left = 312
    Top = 152
    object Dest1LetterDataLetterDataID: TAutoIncField
      FieldName = 'LetterDataID'
      ReadOnly = True
    end
    object Dest1LetterDataLetterID: TIntegerField
      FieldName = 'LetterID'
    end
    object Dest1LetterDataPageNumber: TWordField
      FieldName = 'PageNumber'
    end
    object Dest1LetterDataImage: TBlobField
      FieldName = 'Image'
    end
    object Dest1LetterDataextention: TWordField
      FieldName = 'extention'
    end
    object Dest1LetterDataDescription: TWideStringField
      FieldName = 'Description'
      Size = 200
    end
    object Dest1LetterDataLastUpdate: TDateTimeField
      FieldName = 'LastUpdate'
    end
    object Dest1LetterDataUniqueID: TLargeintField
      FieldName = 'UniqueID'
    end
  end
  object SrcRecommites: TADOStoredProc
    Connection = ADOConnection1
    CursorType = ctStatic
    ProcedureName = 'Transfer_Get_Recommites_By_LetterID'
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
    Left = 280
    Top = 8
    object SrcRecommitesRecommiteID: TAutoIncField
      FieldName = 'RecommiteID'
      ReadOnly = True
    end
    object SrcRecommitesLetterID: TIntegerField
      FieldName = 'LetterID'
    end
    object SrcRecommitesID: TSmallintField
      FieldName = 'ID'
    end
    object SrcRecommitesType: TWordField
      FieldName = 'Type'
    end
    object SrcRecommitesParentId: TSmallintField
      FieldName = 'ParentId'
    end
    object SrcRecommitesOrgID: TIntegerField
      FieldName = 'OrgID'
    end
    object SrcRecommitesParaph: TWideStringField
      FieldName = 'Paraph'
      Size = 500
    end
    object SrcRecommitesRecommiteDate: TStringField
      FieldName = 'RecommiteDate'
      Size = 10
    end
    object SrcRecommitesUserID: TWordField
      FieldName = 'UserID'
    end
    object SrcRecommitesIsCopy: TBooleanField
      FieldName = 'IsCopy'
    end
    object SrcRecommitesProceeded: TBooleanField
      FieldName = 'Proceeded'
    end
    object SrcRecommitesProceedDate: TStringField
      FieldName = 'ProceedDate'
      Size = 10
    end
    object SrcRecommitesstaffmemo: TWideStringField
      FieldName = 'staffmemo'
      Size = 255
    end
    object SrcRecommitesviewdate: TStringField
      FieldName = 'viewdate'
      FixedChar = True
      Size = 10
    end
    object SrcRecommitesOrgStaff: TWideStringField
      FieldName = 'OrgStaff'
      Size = 50
    end
    object SrcRecommitesDeadLineDate: TStringField
      FieldName = 'DeadLineDate'
      FixedChar = True
      Size = 10
    end
    object SrcRecommitesLastUpdate: TDateTimeField
      FieldName = 'LastUpdate'
    end
    object SrcRecommitesUniqueID: TLargeintField
      FieldName = 'UniqueID'
    end
    object SrcRecommitesOrgTitle: TWideStringField
      FieldName = 'OrgTitle'
      Size = 100
    end
    object SrcRecommitesOrgUniqueID: TLargeintField
      FieldName = 'OrgUniqueID'
    end
  end
  object SrcLetterFieldValue: TADOStoredProc
    Connection = ADOConnection1
    CursorType = ctStatic
    ProcedureName = 'Transfer_Get_LetterFieldValue_By_LetterID'
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
    Left = 280
    Top = 56
  end
end
