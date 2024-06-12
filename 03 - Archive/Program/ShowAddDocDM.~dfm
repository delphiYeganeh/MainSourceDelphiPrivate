object DMShowAddDoc: TDMShowAddDoc
  OldCreateOrder = False
  Left = 246
  Top = 110
  Height = 218
  Width = 210
  object QrSelLetter: TADOQuery
    Connection = dm.YeganehConnection
    LockType = ltReadOnly
    Parameters = <
      item
        Name = 'LetterID'
        DataType = ftWord
        Precision = 3
        Size = 1
        Value = 0
      end>
    SQL.Strings = (
      'Select L.* '
      '       , Title senderTitle '
      
        '       , (Select RTrim(Title) From Classifications Where ID = L.' +
        'ClassificationID) as ClassificationTitle'
      
        '       , (Select RTrim(Description) From Tables Where TableID = ' +
        'L.UserTableID) as UserTableTitle  '
      'from Letter L'
      'Left JOIN FromOrganizations Org ON L.ToOrgID = Org.ID'
      'Where ( LetterID = :LetterID )   ')
    Left = 40
    Top = 17
    object QrSelLetterLetterID: TIntegerField
      FieldName = 'LetterID'
      ReadOnly = True
    end
    object QrSelLetterIndicatorID: TIntegerField
      FieldName = 'IndicatorID'
    end
    object QrSelLetterMYear: TWordField
      FieldName = 'MYear'
    end
    object QrSelLetterSecretariatID: TWordField
      FieldName = 'SecretariatID'
    end
    object QrSelLetterLetter_Type: TWordField
      FieldName = 'Letter_Type'
    end
    object QrSelLetterletterformat: TWordField
      FieldName = 'letterformat'
    end
    object QrSelLetterIncommingNO: TWideStringField
      Alignment = taRightJustify
      FieldName = 'IncommingNO'
      Size = 50
    end
    object QrSelLetterIncommingdate: TWideStringField
      Alignment = taRightJustify
      FieldName = 'Incommingdate'
      Size = 10
    end
    object QrSelLetterCenterNo: TWideStringField
      Alignment = taRightJustify
      FieldName = 'CenterNo'
      Size = 50
    end
    object QrSelLetterCenterDate: TStringField
      Alignment = taRightJustify
      FieldName = 'CenterDate'
      FixedChar = True
      Size = 10
    end
    object QrSelLetterFromOrgID: TIntegerField
      FieldName = 'FromOrgID'
    end
    object QrSelLetterToOrgID: TIntegerField
      FieldName = 'ToOrgID'
    end
    object QrSelLetterSignerid: TWideStringField
      Alignment = taRightJustify
      FieldName = 'Signerid'
      Size = 50
    end
    object QrSelLetterClassificationID: TWordField
      FieldName = 'ClassificationID'
    end
    object QrSelLetterUrgencyID: TSmallintField
      FieldName = 'UrgencyID'
    end
    object QrSelLetterMemo: TWideStringField
      Alignment = taRightJustify
      FieldName = 'Memo'
      Size = 2000
    end
    object QrSelLetterAttachTitle: TWideStringField
      Alignment = taRightJustify
      FieldName = 'AttachTitle'
      Size = 50
    end
    object QrSelLetterNumberOfAttachPages: TSmallintField
      FieldName = 'NumberOfAttachPages'
    end
    object QrSelLetterNumberOfPage: TWordField
      FieldName = 'NumberOfPage'
    end
    object QrSelLetterReceiveTypeID: TWordField
      FieldName = 'ReceiveTypeID'
    end
    object QrSelLetterUserID: TIntegerField
      FieldName = 'UserID'
    end
    object QrSelLetterRetroactionNo: TWideStringField
      Alignment = taRightJustify
      FieldName = 'RetroactionNo'
      Size = 50
    end
    object QrSelLetterUserMemo: TWideStringField
      Alignment = taRightJustify
      FieldName = 'UserMemo'
      Size = 255
    end
    object QrSelLetterRegistrationDate: TStringField
      Alignment = taRightJustify
      FieldName = 'RegistrationDate'
      FixedChar = True
      Size = 10
    end
    object QrSelLetterRegistrationTime: TStringField
      Alignment = taRightJustify
      FieldName = 'RegistrationTime'
      Size = 5
    end
    object QrSelLetterFollowLetterNo: TWideStringField
      Alignment = taRightJustify
      FieldName = 'FollowLetterNo'
      Size = 50
    end
    object QrSelLetterToStaffer: TWideStringField
      Alignment = taRightJustify
      FieldName = 'ToStaffer'
      Size = 50
    end
    object QrSelLetterSentLetterID: TIntegerField
      FieldName = 'SentLetterID'
    end
    object QrSelLetterTemplateID: TIntegerField
      FieldName = 'TemplateID'
    end
    object QrSelLetterHeaderID: TIntegerField
      FieldName = 'HeaderID'
    end
    object QrSelLetterLetterRecommites: TWideStringField
      Alignment = taRightJustify
      FieldName = 'LetterRecommites'
      Size = 500
    end
    object QrSelLetterFromStaffer: TWideStringField
      Alignment = taRightJustify
      FieldName = 'FromStaffer'
      Size = 50
    end
    object QrSelLetterLastUpdate: TDateTimeField
      Alignment = taRightJustify
      FieldName = 'LastUpdate'
    end
    object QrSelLetterSendStatusID: TWordField
      FieldName = 'SendStatusID'
    end
    object QrSelLetterUserTableID: TIntegerField
      FieldName = 'UserTableID'
    end
    object QrSelLetterFinalized: TBooleanField
      Alignment = taRightJustify
      FieldName = 'Finalized'
    end
    object QrSelLetterUserMemo1: TWideStringField
      Alignment = taRightJustify
      FieldName = 'UserMemo1'
      Size = 255
    end
    object QrSelLetterUserMemo2: TWideStringField
      Alignment = taRightJustify
      FieldName = 'UserMemo2'
      Size = 255
    end
    object QrSelLetterColor: TIntegerField
      FieldName = 'Color'
    end
    object QrSelLetterLinked_LetterID: TIntegerField
      FieldName = 'Linked_LetterID'
    end
    object QrSelLettersenderTitle: TWideStringField
      Alignment = taRightJustify
      FieldName = 'senderTitle'
      Size = 100
    end
    object QrSelLetterClassificationTitle: TWideStringField
      Alignment = taRightJustify
      FieldName = 'ClassificationTitle'
      ReadOnly = True
      Size = 50
    end
    object QrSelLetterUserTableTitle: TWideStringField
      Alignment = taRightJustify
      FieldName = 'UserTableTitle'
      ReadOnly = True
      Size = 50
    end
  end
  object DsSelLetter: TDataSource
    AutoEdit = False
    DataSet = QrSelLetter
    Left = 40
    Top = 64
  end
end
