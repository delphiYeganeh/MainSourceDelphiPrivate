object DMScanImage: TDMScanImage
  OldCreateOrder = False
  Left = 216
  Top = 108
  Height = 269
  Width = 304
  object QrLetterData: TADOQuery
    Connection = Dm.YeganehConnection
    BeforeScroll = QrLetterDataBeforeScroll
    AfterScroll = QrLetterDataAfterScroll
    OnCalcFields = QrLetterDataCalcFields
    Parameters = <
      item
        Name = 'Pa_LetterID'
        Attributes = [paSigned]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = 0
      end>
    SQL.Strings = (
      'Select LetterDataID ,LetterID ,PageNumber /*,extention ,'
      '       Description ,LastUpdate ,UniqueID*/'
      'From LetterData'
      'Where LetterID = :Pa_LetterID'
      'And( Extention in (1,2) )'
      
        'Order By PageNumber  /*'#1578#1594#1610#1610#1585' '#1583#1575#1583#1607' '#1606#1588#1608#1583' '#1576#1593#1604#1578' '#1601#1610#1604#1583' '#1588#1605#1575#1585#1607' '#1589#1601#1581#1607' Orde' +
        'r By */'#10)
    Left = 41
    Top = 12
    object QrLetterDataLetterDataID: TAutoIncField
      FieldName = 'LetterDataID'
      ReadOnly = True
    end
    object QrLetterDataLetterID: TIntegerField
      FieldName = 'LetterID'
    end
    object QrLetterDataPageNumber: TWordField
      FieldName = 'PageNumber'
    end
    object QrLetterDataRecCount_Calc: TIntegerField
      FieldKind = fkCalculated
      FieldName = 'RecCount_Calc'
      Calculated = True
    end
  end
  object DSLetterData: TDataSource
    AutoEdit = False
    DataSet = QrLetterData
    Left = 41
    Top = 60
  end
  object QrSelImage: TADOQuery
    Connection = Dm.YeganehConnection
    CursorType = ctStatic
    OnCalcFields = QrSelImageCalcFields
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
    Left = 132
    Top = 12
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
    object QrSelImagePageNumber: TWordField
      FieldName = 'PageNumber'
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
    object QrSelImageUniqueID: TLargeintField
      FieldName = 'UniqueID'
    end
    object QrSelImageIsCorrectedImage: TBooleanField
      FieldName = 'IsCorrectedImage'
    end
  end
  object DSSelImage: TDataSource
    AutoEdit = False
    DataSet = QrSelImage
    Left = 132
    Top = 60
  end
  object DSAllImage: TDataSource
    AutoEdit = False
    DataSet = SPAllImage
    Left = 224
    Top = 60
  end
  object SPAllImage: TADOStoredProc
    Connection = Dm.YeganehConnection
    ProcedureName = 'Get_LetterJpgFile;1'
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
    Left = 224
    Top = 12
    object SPAllImageLetterDataID: TAutoIncField
      FieldName = 'LetterDataID'
      ReadOnly = True
    end
    object SPAllImageLetterID: TIntegerField
      FieldName = 'LetterID'
    end
    object SPAllImagePageNumber: TWordField
      FieldName = 'PageNumber'
    end
    object SPAllImageImage: TBlobField
      FieldName = 'Image'
    end
    object SPAllImageextention: TWordField
      FieldName = 'extention'
    end
    object SPAllImageDescription: TWideStringField
      FieldName = 'Description'
      Size = 200
    end
    object SPAllImageLastUpdate: TDateTimeField
      FieldName = 'LastUpdate'
    end
    object SPAllImageUniqueID: TLargeintField
      FieldName = 'UniqueID'
    end
  end
  object QrListItems: TADOQuery
    Connection = Dm.YeganehConnection
    AfterInsert = QrListItemsAfterInsert
    Parameters = <
      item
        Name = 'UsersID'
        DataType = ftInteger
        Size = -1
        Value = 0
      end>
    SQL.Strings = (
      'Select *'
      'from ListItems'
      'Where(ListID=8)'
      'And(UsersID = :UsersID )'
      ' ')
    Left = 41
    Top = 128
    object QrListItemsListItemsID: TAutoIncField
      FieldName = 'ListItemsID'
      ReadOnly = True
    end
    object QrListItemsListID: TWordField
      FieldName = 'ListID'
    end
    object QrListItemsKeyValue: TIntegerField
      FieldName = 'KeyValue'
    end
    object QrListItemsTitle: TWideStringField
      Alignment = taRightJustify
      DisplayLabel = #1593#1606#1608#1575#1606
      FieldName = 'Title'
      Size = 50
    end
    object QrListItemsNotes: TWideStringField
      Alignment = taRightJustify
      DisplayLabel = #1578#1608#1590#1610#1581#1575#1578
      FieldName = 'Notes'
      Size = 255
    end
    object QrListItemsUsersID: TIntegerField
      FieldName = 'UsersID'
    end
  end
  object DSListItems: TDataSource
    AutoEdit = False
    DataSet = QrListItems
    Left = 41
    Top = 176
  end
  object QrDelLetterData: TADOQuery
    Connection = Dm.YeganehConnection
    Parameters = <
      item
        Name = 'LetterID'
        Attributes = [paSigned]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = -1
      end>
    SQL.Strings = (
      'Delete from LetterData'
      'Where( LetterID = :LetterID )'
      'And( Extention in (1,2) )')
    Left = 136
    Top = 128
  end
end
