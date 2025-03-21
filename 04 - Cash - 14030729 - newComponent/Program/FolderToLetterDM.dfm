object DMFolderToLetter: TDMFolderToLetter
  OldCreateOrder = False
  Left = 1104
  Top = 534
  Height = 183
  Width = 276
  object QrLetter: TADOQuery
    Connection = Dm.YeganehConnection
    BeforeDelete = QrLetterBeforeDelete
    AfterScroll = QrLetterAfterScroll
    Parameters = <>
    SQL.Strings = (
      'Select *'
      'from Letter'
      'Where LetterID = 0')
    Left = 24
    Top = 16
    object QrLetterLetterID: TAutoIncField
      FieldName = 'LetterID'
      ReadOnly = True
    end
    object QrLetterIndicatorID: TIntegerField
      FieldName = 'IndicatorID'
    end
    object QrLetterMYear: TWordField
      FieldName = 'MYear'
    end
    object QrLetterSecretariatID: TWordField
      FieldName = 'SecretariatID'
    end
    object QrLetterLetter_Type: TWordField
      FieldName = 'Letter_Type'
    end
    object QrLetterletterformat: TWordField
      FieldName = 'letterformat'
    end
    object QrLetterIncommingNO: TWideStringField
      FieldName = 'IncommingNO'
      Size = 50
    end
    object QrLetterIncommingdate: TWideStringField
      FieldName = 'Incommingdate'
      Size = 10
    end
    object QrLetterCenterNo: TWideStringField
      FieldName = 'CenterNo'
      Size = 50
    end
    object QrLetterCenterDate: TStringField
      FieldName = 'CenterDate'
      FixedChar = True
      Size = 10
    end
    object QrLetterFromOrgID: TIntegerField
      FieldName = 'FromOrgID'
    end
    object QrLetterToOrgID: TIntegerField
      FieldName = 'ToOrgID'
    end
    object QrLetterSignerid: TWideStringField
      FieldName = 'Signerid'
      Size = 50
    end
    object QrLetterClassificationID: TWordField
      FieldName = 'ClassificationID'
    end
    object QrLetterUrgencyID: TSmallintField
      FieldName = 'UrgencyID'
    end
    object QrLetterMemo: TWideStringField
      FieldName = 'Memo'
      Size = 2000
    end
    object QrLetterAttachTitle: TWideStringField
      FieldName = 'AttachTitle'
      Size = 50
    end
    object QrLetterNumberOfAttachPages: TSmallintField
      FieldName = 'NumberOfAttachPages'
    end
    object QrLetterNumberOfPage: TWordField
      FieldName = 'NumberOfPage'
    end
    object QrLetterReceiveTypeID: TWordField
      FieldName = 'ReceiveTypeID'
    end
    object QrLetterUserID: TIntegerField
      FieldName = 'UserID'
    end
    object QrLetterRetroactionNo: TWideStringField
      FieldName = 'RetroactionNo'
      Size = 50
    end
    object QrLetterUserMemo: TWideStringField
      FieldName = 'UserMemo'
      Size = 255
    end
    object QrLetterRegistrationDate: TStringField
      FieldName = 'RegistrationDate'
      FixedChar = True
      Size = 10
    end
    object QrLetterRegistrationTime: TStringField
      FieldName = 'RegistrationTime'
      Size = 5
    end
    object QrLetterFollowLetterNo: TWideStringField
      FieldName = 'FollowLetterNo'
      Size = 50
    end
    object QrLetterToStaffer: TWideStringField
      FieldName = 'ToStaffer'
      Size = 50
    end
    object QrLetterSentLetterID: TIntegerField
      FieldName = 'SentLetterID'
    end
    object QrLetterTemplateID: TIntegerField
      FieldName = 'TemplateID'
    end
    object QrLetterHeaderID: TIntegerField
      FieldName = 'HeaderID'
    end
    object QrLetterLetterRecommites: TWideStringField
      FieldName = 'LetterRecommites'
      Size = 500
    end
    object QrLetterFromStaffer: TWideStringField
      FieldName = 'FromStaffer'
      Size = 50
    end
    object QrLetterLastUpdate: TDateTimeField
      FieldName = 'LastUpdate'
    end
    object QrLetterSendStatusID: TWordField
      FieldName = 'SendStatusID'
    end
    object QrLetterUserTableID: TIntegerField
      FieldName = 'UserTableID'
    end
    object QrLetterFinalized: TBooleanField
      FieldName = 'Finalized'
    end
    object QrLetterUserMemo1: TWideStringField
      FieldName = 'UserMemo1'
      Size = 255
    end
    object QrLetterUserMemo2: TWideStringField
      FieldName = 'UserMemo2'
      Size = 255
    end
    object QrLetterColor: TIntegerField
      FieldName = 'Color'
    end
    object QrLetterLinked_LetterID: TIntegerField
      FieldName = 'Linked_LetterID'
    end
    object QrLetterVersionDate: TStringField
      FieldName = 'VersionDate'
      FixedChar = True
      Size = 10
    end
    object QrLetterVersionNumber: TStringField
      FieldName = 'VersionNumber'
      Size = 50
    end
    object QrLetterSubject: TWideStringField
      FieldName = 'Subject'
      Size = 250
    end
    object QrLetterHas_Page: TBooleanField
      FieldName = 'Has_Page'
    end
    object QrLetterHas_WordPage: TBooleanField
      FieldName = 'Has_WordPage'
    end
    object QrLetterHas_File: TBooleanField
      FieldName = 'Has_File'
    end
  end
  object DSLetter: TDataSource
    DataSet = QrLetter
    Left = 24
    Top = 64
  end
  object QrLetterData: TADOQuery
    Connection = Dm.YeganehConnection
    Parameters = <
      item
        Name = 'LetterID'
        DataType = ftInteger
        Size = -1
        Value = 0
      end>
    SQL.Strings = (
      'Select *'
      'From LetterData'
      'Where( LetterID = :LetterID )'
      '  And( Extention in (1,2) ) /*Jpg,Tiff*/'
      
        'Order By PageNumber  /*'#1578#1594#1610#1610#1585' '#1583#1575#1583#1607' '#1606#1588#1608#1583' '#1576#1593#1604#1578' '#1601#1610#1604#1583' '#1588#1605#1575#1585#1607' '#1589#1601#1581#1607' Orde' +
        'r By */')
    Left = 105
    Top = 12
    object QrLetterDataLetterDataID: TAutoIncField
      FieldName = 'LetterDataID'
      ReadOnly = True
    end
    object QrLetterDataLetterID: TIntegerField
      FieldName = 'LetterID'
    end
    object QrLetterDataPageNumber: TIntegerField
      FieldName = 'PageNumber'
    end
    object QrLetterDataImage: TBlobField
      FieldName = 'Image'
    end
    object QrLetterDataextention: TWordField
      FieldName = 'extention'
    end
    object QrLetterDataDescription: TWideStringField
      FieldName = 'Description'
      Size = 50
    end
    object QrLetterDataLastUpdate: TDateTimeField
      FieldName = 'LastUpdate'
    end
    object QrLetterDataListItemsID: TIntegerField
      FieldName = 'ListItemsID'
    end
    object QrLetterDataColorID: TIntegerField
      FieldName = 'ColorID'
    end
  end
  object DSLetterData: TDataSource
    AutoEdit = False
    DataSet = QrLetterData
    Left = 105
    Top = 60
  end
  object QrSelImage: TADOQuery
    Connection = Dm.YeganehConnection
    Parameters = <
      item
        Name = 'Pa_LetterDataID'
        Attributes = [paSigned]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = 0
      end>
    SQL.Strings = (
      'Select  *  --LetterDataID ,LetterID , Image'
      'From LetterData'
      'Where LetterDataID = :Pa_LetterDataID')
    Left = 153
    Top = 4
    object QrSelImageLetterDataID: TAutoIncField
      FieldName = 'LetterDataID'
      ReadOnly = True
    end
    object QrSelImageLetterID: TIntegerField
      FieldName = 'LetterID'
    end
    object QrSelImageImage: TBlobField
      FieldName = 'Image'
    end
    object QrSelImageextention: TWordField
      FieldName = 'extention'
    end
    object QrSelImageDescription: TWideStringField
      Alignment = taRightJustify
      FieldName = 'Description'
      Size = 200
    end
    object QrSelImageLastUpdate: TDateTimeField
      FieldName = 'LastUpdate'
    end
    object QrSelImageImageSize_Calc: TStringField
      Alignment = taRightJustify
      FieldKind = fkCalculated
      FieldName = 'ImageSize_Calc'
      Calculated = True
    end
    object QrSelImageListItemsID: TIntegerField
      FieldName = 'ListItemsID'
    end
    object QrSelImagePageNumber: TIntegerField
      FieldName = 'PageNumber'
    end
    object QrSelImageIsCorrectedImage: TBooleanField
      FieldName = 'IsCorrectedImage'
    end
    object QrSelImageColorID: TIntegerField
      FieldName = 'ColorID'
    end
  end
end
