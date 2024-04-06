object Transfer_dm: TTransfer_dm
  OldCreateOrder = False
  OnCreate = DataModuleCreate
  Left = 437
  Top = 110
  Height = 535
  Width = 549
  object Letter2: TADODataSet
    Connection = ADOConnection2
    CommandText = 'select *'#13#10'from Letter where letterid=0'#13#10
    CommandTimeout = 3000
    Parameters = <>
    Left = 232
    Top = 64
    object Letter2LetterID: TAutoIncField
      FieldName = 'LetterID'
      ReadOnly = True
    end
    object Letter2IndicatorID: TIntegerField
      FieldName = 'IndicatorID'
    end
    object Letter2MYear: TWordField
      FieldName = 'MYear'
    end
    object Letter2SecretariatID: TWordField
      FieldName = 'SecretariatID'
    end
    object Letter2Letter_Type: TWordField
      FieldName = 'Letter_Type'
    end
    object Letter2letterformat: TWordField
      FieldName = 'letterformat'
    end
    object Letter2IncommingNO: TWideStringField
      FieldName = 'IncommingNO'
      Size = 50
    end
    object Letter2Incommingdate: TWideStringField
      FieldName = 'Incommingdate'
      Size = 10
    end
    object Letter2CenterNo: TWideStringField
      FieldName = 'CenterNo'
      Size = 50
    end
    object Letter2CenterDate: TStringField
      FieldName = 'CenterDate'
      FixedChar = True
      Size = 10
    end
    object Letter2FromOrgID: TIntegerField
      FieldName = 'FromOrgID'
    end
    object Letter2ToOrgID: TIntegerField
      FieldName = 'ToOrgID'
    end
    object Letter2Signerid: TWideStringField
      FieldName = 'Signerid'
      Size = 50
    end
    object Letter2ClassificationID: TWordField
      FieldName = 'ClassificationID'
    end
    object Letter2UrgencyID: TSmallintField
      FieldName = 'UrgencyID'
    end
    object Letter2Memo: TWideStringField
      FieldName = 'Memo'
      Size = 500
    end
    object Letter2AttachTitle: TWideStringField
      FieldName = 'AttachTitle'
      Size = 50
    end
    object Letter2NumberOfAttachPages: TSmallintField
      FieldName = 'NumberOfAttachPages'
    end
    object Letter2NumberOfPage: TWordField
      FieldName = 'NumberOfPage'
    end
    object Letter2ReceiveTypeID: TWordField
      FieldName = 'ReceiveTypeID'
    end
    object Letter2UserID: TIntegerField
      FieldName = 'UserID'
    end
    object Letter2RetroactionNo: TWideStringField
      FieldName = 'RetroactionNo'
      Size = 50
    end
    object Letter2UserMemo: TWideStringField
      FieldName = 'UserMemo'
      Size = 255
    end
    object Letter2RegistrationDate: TStringField
      FieldName = 'RegistrationDate'
      FixedChar = True
      Size = 10
    end
    object Letter2RegistrationTime: TStringField
      FieldName = 'RegistrationTime'
      Size = 5
    end
    object Letter2FollowLetterNo: TWideStringField
      FieldName = 'FollowLetterNo'
      Size = 50
    end
    object Letter2ToStaffer: TWideStringField
      FieldName = 'ToStaffer'
      Size = 50
    end
    object Letter2SentLetterID: TIntegerField
      FieldName = 'SentLetterID'
    end
    object Letter2TemplateID: TIntegerField
      FieldName = 'TemplateID'
    end
    object Letter2HeaderID: TIntegerField
      FieldName = 'HeaderID'
    end
    object Letter2LetterRecommites: TWideStringField
      FieldName = 'LetterRecommites'
      Size = 500
    end
    object Letter2FromStaffer: TWideStringField
      FieldName = 'FromStaffer'
      Size = 50
    end
    object Letter2Finalized: TBooleanField
      FieldName = 'Finalized'
    end
    object Letter2SendStatus: TWordField
      FieldName = 'SendStatus'
    end
  end
  object Letterdata2: TADODataSet
    Connection = ADOConnection2
    CommandText = 'select *'#13#10'from letterdata'#13#10'where Letterid=:@LetterID'
    CommandTimeout = 3000
    Parameters = <
      item
        Name = '@LetterID'
        Attributes = [paSigned]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = 1
      end>
    Left = 112
    Top = 127
  end
  object ADOConnection2: TADOConnection
    LoginPrompt = False
    Provider = 'SQLOLEDB.1'
    Left = 232
    Top = 272
  end
  object Letterdata1: TADODataSet
    Connection = ADOConnection1
    CursorType = ctStatic
    CommandText = 'select *'#13#10'from letterdata'#13#10'where Letterid=:@LetterID'#13#10
    CommandTimeout = 3000
    Parameters = <
      item
        Name = '@LetterID'
        Attributes = [paSigned]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = 0
      end>
    Left = 232
    Top = 128
  end
  object Transfer_Get_SentLetter: TADODataSet
    Connection = ADOConnection1
    CursorType = ctStatic
    CommandText = 'Transfer_Get_SentLetter;1'
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
    object Transfer_Get_SentLetterLetterID: TIntegerField
      FieldName = 'LetterID'
    end
    object Transfer_Get_SentLetterIndicatorID: TIntegerField
      FieldName = 'IndicatorID'
    end
    object Transfer_Get_SentLetterMYear: TWordField
      FieldName = 'MYear'
    end
    object Transfer_Get_SentLetterSecretariatID: TWordField
      FieldName = 'SecretariatID'
    end
    object Transfer_Get_SentLetterLetter_Type: TWordField
      FieldName = 'Letter_Type'
    end
    object Transfer_Get_SentLetterletterformat: TWordField
      FieldName = 'letterformat'
    end
    object Transfer_Get_SentLetterIncommingNO: TWideStringField
      FieldName = 'IncommingNO'
      Size = 50
    end
    object Transfer_Get_SentLetterIncommingdate: TWideStringField
      FieldName = 'Incommingdate'
      Size = 10
    end
    object Transfer_Get_SentLetterCenterNo: TWideStringField
      FieldName = 'CenterNo'
      Size = 50
    end
    object Transfer_Get_SentLetterCenterDate: TStringField
      FieldName = 'CenterDate'
      FixedChar = True
      Size = 10
    end
    object Transfer_Get_SentLetterFromOrgID: TIntegerField
      FieldName = 'FromOrgID'
    end
    object Transfer_Get_SentLetterToOrgID: TIntegerField
      FieldName = 'ToOrgID'
    end
    object Transfer_Get_SentLetterSignerid: TWideStringField
      FieldName = 'Signerid'
      Size = 50
    end
    object Transfer_Get_SentLetterClassificationID: TWordField
      FieldName = 'ClassificationID'
    end
    object Transfer_Get_SentLetterUrgencyID: TSmallintField
      FieldName = 'UrgencyID'
    end
    object Transfer_Get_SentLetterMemo: TWideStringField
      FieldName = 'Memo'
      Size = 500
    end
    object Transfer_Get_SentLetterAttachTitle: TWideStringField
      FieldName = 'AttachTitle'
      Size = 50
    end
    object Transfer_Get_SentLetterNumberOfAttachPages: TSmallintField
      FieldName = 'NumberOfAttachPages'
    end
    object Transfer_Get_SentLetterNumberOfPage: TWordField
      FieldName = 'NumberOfPage'
    end
    object Transfer_Get_SentLetterReceiveTypeID: TWordField
      FieldName = 'ReceiveTypeID'
    end
    object Transfer_Get_SentLetterUserID: TIntegerField
      FieldName = 'UserID'
    end
    object Transfer_Get_SentLetterRetroactionNo: TWideStringField
      FieldName = 'RetroactionNo'
      Size = 50
    end
    object Transfer_Get_SentLetterUserMemo: TWideStringField
      FieldName = 'UserMemo'
      Size = 255
    end
    object Transfer_Get_SentLetterRegistrationDate: TStringField
      FieldName = 'RegistrationDate'
      FixedChar = True
      Size = 10
    end
    object Transfer_Get_SentLetterRegistrationTime: TStringField
      FieldName = 'RegistrationTime'
      Size = 5
    end
    object Transfer_Get_SentLetterFollowLetterNo: TWideStringField
      FieldName = 'FollowLetterNo'
      Size = 50
    end
    object Transfer_Get_SentLetterToStaffer: TWideStringField
      FieldName = 'ToStaffer'
      Size = 50
    end
    object Transfer_Get_SentLetterSentLetterID: TIntegerField
      FieldName = 'SentLetterID'
    end
    object Transfer_Get_SentLetterTemplateID: TIntegerField
      FieldName = 'TemplateID'
    end
    object Transfer_Get_SentLetterHeaderID: TIntegerField
      FieldName = 'HeaderID'
    end
    object Transfer_Get_SentLetterLetterRecommites: TWideStringField
      FieldName = 'LetterRecommites'
      Size = 500
    end
    object Transfer_Get_SentLetterFromStaffer: TWideStringField
      FieldName = 'FromStaffer'
      Size = 50
    end
    object Transfer_Get_SentLetterFinalized: TBooleanField
      FieldName = 'Finalized'
    end
    object Transfer_Get_SentLetterSendStatusID: TWordField
      FieldName = 'SendStatusID'
    end
    object Transfer_Get_SentLetterLastUpdate: TDateTimeField
      FieldName = 'LastUpdate'
    end
    object Transfer_Get_SentLetterUserTableID: TIntegerField
      FieldName = 'UserTableID'
    end
    object Transfer_Get_SentLetterUniqueID: TLargeintField
      FieldName = 'UniqueID'
    end
  end
  object DTransfer_Get_SentLetter: TDataSource
    DataSet = Transfer_Get_SentLetter
    Left = 128
    Top = 192
  end
  object ADOConnection1: TADOConnection
    LoginPrompt = False
    Provider = 'SQLOLEDB.1'
    Left = 144
    Top = 272
  end
  object Access: TADOConnection
    Connected = True
    ConnectionString = 
      'Provider=Microsoft.Jet.OLEDB.4.0;Data Source=replicate.mdb;Persi' +
      'st Security Info=False'
    LoginPrompt = False
    Mode = cmShareDenyNone
    Provider = 'Microsoft.Jet.OLEDB.4.0'
    Left = 336
    Top = 136
  end
  object Servers: TADOTable
    Connection = Access
    CursorType = ctStatic
    TableName = 'Server'
    Left = 328
    Top = 200
    object ServersID: TAutoIncField
      FieldName = 'ID'
      ReadOnly = True
    end
    object ServersServerIP: TWideStringField
      FieldName = 'ServerIP'
      Size = 50
    end
    object ServersServerDB: TWideStringField
      FieldName = 'ServerDB'
      Size = 50
    end
  end
  object ApplicationEvents1: TApplicationEvents
    OnException = ApplicationEvents1Exception
    Left = 72
    Top = 168
  end
end
