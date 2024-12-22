object DMScanImage: TDMScanImage
  OldCreateOrder = False
  OnCreate = DataModuleCreate
  Left = 616
  Top = 263
  Height = 279
  Width = 290
  object QrLetterData: TADOQuery
    Connection = Dm.YeganehConnection
    CursorType = ctStatic
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
      'Select LetterDataID ,LetterID ,PageNumber, ArchiveID, isDocument'
      'From LetterData'
      'Where( LetterID = :Pa_LetterID )'
      '  And( Extention in (1,2) )'
      'Order By PageNumber  ')
    Left = 33
    Top = 12
    object QrLetterDataRecCount_Calc: TIntegerField
      FieldKind = fkCalculated
      FieldName = 'RecCount_Calc'
      Calculated = True
    end
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
    object QrLetterDataArchiveID: TIntegerField
      FieldName = 'ArchiveID'
    end
    object QrLetterDataisDocument: TBooleanField
      FieldName = 'isDocument'
    end
  end
  object DSLetterData: TDataSource
    AutoEdit = False
    DataSet = QrLetterData
    Left = 33
    Top = 60
  end
  object QrSelImage: TADOQuery
    Connection = Dm.YeganehConnection
    AfterScroll = QrSelImageAfterScroll
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
      'Select  *'#10
      'From LetterData'
      'Where LetterDataID = :Pa_LetterDataID')
    Left = 129
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
  end
  object DSSelImage: TDataSource
    AutoEdit = False
    DataSet = QrSelImage
    OnDataChange = DSSelImageDataChange
    Left = 129
    Top = 60
  end
  object DSAllImage: TDataSource
    AutoEdit = False
    DataSet = SPAllImage
    Left = 216
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
    Left = 216
    Top = 12
    object SPAllImageLetterDataID: TAutoIncField
      FieldName = 'LetterDataID'
      ReadOnly = True
    end
    object SPAllImageLetterID: TIntegerField
      FieldName = 'LetterID'
    end
    object SPAllImageImage: TBlobField
      Alignment = taRightJustify
      FieldName = 'Image'
    end
    object SPAllImageextention: TWordField
      FieldName = 'extention'
    end
    object SPAllImageDescription: TWideStringField
      Alignment = taRightJustify
      FieldName = 'Description'
      Size = 200
    end
    object SPAllImageLastUpdate: TDateTimeField
      Alignment = taRightJustify
      FieldName = 'LastUpdate'
    end
    object SPAllImagePageNumber: TIntegerField
      FieldName = 'PageNumber'
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
    Left = 32
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
    Left = 32
    Top = 176
  end
  object QrDelLetterData: TADOQuery
    Connection = Dm.YeganehConnection
    Parameters = <
      item
        Name = 'LetterDataID'
        Size = -1
        Value = Null
      end>
    SQL.Strings = (
      'Delete from LetterData'
      'Where( LetterDataID = :LetterDataID )'
      'And( Extention in (1,2) )')
    Left = 120
    Top = 128
  end
  object qrInsertLetterData: TADOQuery
    Connection = Dm.YeganehConnection
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
        Name = 'Img'
        Attributes = [paNullable, paLong]
        DataType = ftVarBytes
        NumericScale = 255
        Precision = 255
        Size = 2147483647
        Value = Null
      end
      item
        Name = 'Ext'
        DataType = ftWord
        Precision = 3
        Size = 1
        Value = Null
      end
      item
        Name = 'Des'
        Attributes = [paNullable]
        DataType = ftWideString
        NumericScale = 255
        Precision = 255
        Size = 50
        Value = Null
      end
      item
        Name = 'LU'
        Attributes = [paNullable]
        DataType = ftDateTime
        NumericScale = 3
        Precision = 23
        Size = 16
        Value = Null
      end>
    SQL.Strings = (
      
        'INSERT INTO LetterData (LetterID,PageNumber,Image,Extention,Desc' +
        'ription,LastUpdate)'
      'values( :LID , :PN , :Img , :Ext , :Des , :LU)'
      '')
    Left = 208
    Top = 120
  end
  object qrUpdateLetterData: TADOQuery
    Connection = Dm.YeganehConnection
    Parameters = <
      item
        Name = 'PN'
        Attributes = [paSigned, paNullable]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = Null
      end
      item
        Name = 'Img'
        Attributes = [paNullable, paLong]
        DataType = ftVarBytes
        NumericScale = 255
        Precision = 255
        Size = 2147483647
        Value = Null
      end
      item
        Name = 'Ext'
        DataType = ftWord
        Precision = 3
        Size = 1
        Value = Null
      end
      item
        Name = 'Desc'
        Attributes = [paNullable]
        DataType = ftWideString
        NumericScale = 255
        Precision = 255
        Size = 50
        Value = Null
      end
      item
        Name = 'LU'
        Attributes = [paNullable]
        DataType = ftDateTime
        NumericScale = 3
        Precision = 23
        Size = 16
        Value = Null
      end
      item
        Name = 'LDID'
        Attributes = [paSigned]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = Null
      end>
    SQL.Strings = (
      'UPDATE LetterData SET'
      'PageNumber = :PN,'
      'Image = :Img ,'
      'Extention = :Ext ,'
      'Description = :Desc ,'
      'LastUpdate = :LU'
      'WHERE LetterDataID= :LDID')
    Left = 208
    Top = 168
  end
  object quImage: TADOQuery
    Connection = Dm.YeganehConnection
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'Select * from LetterData '
      'where letterdataid=0')
    Left = 96
    Top = 176
    object quImageLetterDataID: TAutoIncField
      FieldName = 'LetterDataID'
      ReadOnly = True
    end
    object quImageLetterID: TIntegerField
      FieldName = 'LetterID'
    end
    object quImagePageNumber: TIntegerField
      FieldName = 'PageNumber'
    end
    object quImageImage: TBlobField
      FieldName = 'Image'
    end
    object quImageextention: TWordField
      FieldName = 'extention'
    end
    object quImageDescription: TWideStringField
      FieldName = 'Description'
      Size = 50
    end
    object quImageLastUpdate: TDateTimeField
      FieldName = 'LastUpdate'
    end
    object quImageListItemsID: TIntegerField
      FieldName = 'ListItemsID'
    end
    object quImageIsCorrectedImage: TBooleanField
      FieldName = 'IsCorrectedImage'
    end
    object quImageColorID: TIntegerField
      FieldName = 'ColorID'
    end
    object quImageVersionNo: TStringField
      FieldName = 'VersionNo'
      Size = 50
    end
    object quImageVersionDate: TStringField
      FieldName = 'VersionDate'
      Size = 10
    end
  end
end
