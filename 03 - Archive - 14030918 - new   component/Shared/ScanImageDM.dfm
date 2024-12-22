object DMScanImage: TDMScanImage
  OldCreateOrder = False
  OnCreate = DataModuleCreate
  Left = 833
  Top = 318
  Height = 337
  Width = 481
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
      
        'Select LetterDataID ,LetterID ,PageNumber,ColorID, ListItemsID, ' +
        'Description'
      'From LetterData'
      'Where( LetterID = :Pa_LetterID )'
      '  And( Extention in (1,2) )'
      
        '  And((ColorID IS NULL) OR (ColorID=0) OR (ColorID=-2) ) /* '#1578#1608#1587#1591 +
        ' '#1587#1593#1610#1583#1610' '#1575#1590#1575#1601#1607' '#1588#1583' '#1670#1608#1606' '#1602#1585#1575#1585' '#1606#1610#1587#1578' '#1705#1607' '#1583#1610#1711#1585' '#1607#1605#1607' '#1662#1610#1608#1587#1578' '#1607#1575' '#1585#1575' '#1607#1605#1575#1606' '#1575#1608#1604' '#1606 +
        #1588#1575#1606' '#1583#1607#1583'*/'
      
        'Order By PageNumber  /*'#1578#1594#1610#1610#1585' '#1583#1575#1583#1607' '#1606#1588#1608#1583' '#1576#1593#1604#1578' '#1601#1610#1604#1583' '#1588#1605#1575#1585#1607' '#1589#1601#1581#1607' Orde' +
        'r By */')
    Left = 33
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
    object QrLetterDataRecCount_Calc: TIntegerField
      FieldKind = fkCalculated
      FieldName = 'RecCount_Calc'
      Calculated = True
    end
    object QrLetterDataColorID: TIntegerField
      FieldName = 'ColorID'
    end
    object QrLetterDataListItemsID: TIntegerField
      FieldName = 'ListItemsID'
    end
    object QrLetterDataDescription: TStringField
      FieldName = 'Description'
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
        DataType = ftInteger
        Size = -1
        Value = Null
      end>
    SQL.Strings = (
      'Prc_latererdata :Pa_LetterDataID')
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
    object QrSelImageColorID: TIntegerField
      FieldName = 'ColorID'
    end
    object QrSelImagePath: TStringField
      DisplayWidth = 40
      FieldName = 'Path'
      Size = 40
    end
    object QrSelImageFileType: TStringField
      DisplayWidth = 40
      FieldName = 'FileType'
      Size = 40
    end
    object QrSelImageURL: TStringField
      DisplayWidth = 40
      FieldName = 'URL'
      Size = 40
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
    CursorType = ctStatic
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
      end
      item
        Name = '@ColorId'
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
    object SPAllImageFileType: TStringField
      DisplayWidth = 40
      FieldName = 'FileType'
      Size = 40
    end
    object SPAllImagepath: TStringField
      DisplayWidth = 30
      FieldName = 'path'
      Size = 30
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
  object qry_updatePageNumber: TADOQuery
    Connection = Dm.YeganehConnection
    AfterScroll = QrSelImageAfterScroll
    OnCalcFields = QrSelImageCalcFields
    Parameters = <
      item
        Name = 'Pa_LetterID'
        DataType = ftInteger
        Size = -1
        Value = Null
      end>
    SQL.Strings = (
      'Declare @id Int'
      'Set @id = 0 '
      'Update LetterData'
      #9'Set @id = PageNumber = @id + 1 '
      #9'Where LetterID = :Pa_LetterID')
    Left = 121
    Top = 228
    object AutoIncField1: TAutoIncField
      FieldName = 'LetterDataID'
      ReadOnly = True
    end
    object IntegerField1: TIntegerField
      FieldName = 'LetterID'
    end
    object BlobField1: TBlobField
      FieldName = 'Image'
    end
    object WordField1: TWordField
      FieldName = 'extention'
    end
    object WideStringField1: TWideStringField
      Alignment = taRightJustify
      FieldName = 'Description'
      Size = 200
    end
    object DateTimeField1: TDateTimeField
      FieldName = 'LastUpdate'
    end
    object StringField1: TStringField
      Alignment = taRightJustify
      FieldKind = fkCalculated
      FieldName = 'ImageSize_Calc'
      Calculated = True
    end
    object IntegerField2: TIntegerField
      FieldName = 'ListItemsID'
    end
    object IntegerField3: TIntegerField
      FieldName = 'PageNumber'
    end
    object BooleanField1: TBooleanField
      FieldName = 'IsCorrectedImage'
    end
    object IntegerField4: TIntegerField
      FieldName = 'ColorID'
    end
  end
  object ADOQuery1: TADOQuery
    Connection = Dm.YeganehConnection
    AfterScroll = QrSelImageAfterScroll
    OnCalcFields = QrSelImageCalcFields
    Parameters = <
      item
        Name = 'path'
        DataType = ftString
        Size = -1
        Value = Null
      end
      item
        Name = 'URL'
        Size = -1
        Value = Null
      end
      item
        Name = 'Pa_LetterDataID'
        Attributes = [paSigned]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = 0
      end>
    SQL.Strings = (
      'update letterData'
      'Set path =:path ,'
      ' URL =:URL '
      'Where LetterDataID = :Pa_LetterDataID')
    Left = 233
    Top = 228
    object AutoIncField2: TAutoIncField
      FieldName = 'LetterDataID'
      ReadOnly = True
    end
    object IntegerField5: TIntegerField
      FieldName = 'LetterID'
    end
    object BlobField2: TBlobField
      FieldName = 'Image'
    end
    object WordField2: TWordField
      FieldName = 'extention'
    end
    object WideStringField2: TWideStringField
      Alignment = taRightJustify
      FieldName = 'Description'
      Size = 200
    end
    object DateTimeField2: TDateTimeField
      FieldName = 'LastUpdate'
    end
    object StringField2: TStringField
      Alignment = taRightJustify
      FieldKind = fkCalculated
      FieldName = 'ImageSize_Calc'
      Calculated = True
    end
    object IntegerField6: TIntegerField
      FieldName = 'ListItemsID'
    end
    object IntegerField7: TIntegerField
      FieldName = 'PageNumber'
    end
    object BooleanField2: TBooleanField
      FieldName = 'IsCorrectedImage'
    end
    object IntegerField8: TIntegerField
      FieldName = 'ColorID'
    end
    object StringField3: TStringField
      FieldName = 'Path'
    end
  end
  object QrSelImage_Insert: TADOQuery
    Connection = Dm.YeganehConnection
    Parameters = <
      item
        Name = 'Pa_LetterDataID'
        DataType = ftInteger
        Value = Null
      end>
    Prepared = True
    SQL.Strings = (
      'Select  * '
      'From LetterData'
      'Where LetterDataID = :Pa_LetterDataID')
    Left = 307
    Top = 13
    object QrSelImage_InsertLetterDataID: TAutoIncField
      FieldName = 'LetterDataID'
      ReadOnly = True
    end
    object QrSelImage_InsertLetterID: TIntegerField
      FieldName = 'LetterID'
    end
    object QrSelImage_InsertImage: TBlobField
      FieldName = 'Image'
    end
    object QrSelImage_Insertextention: TWordField
      FieldName = 'extention'
    end
    object QrSelImage_InsertDescription: TWideStringField
      Alignment = taRightJustify
      FieldName = 'Description'
      Size = 200
    end
    object QrSelImage_InsertLastUpdate: TDateTimeField
      FieldName = 'LastUpdate'
    end
    object QrSelImage_InsertImageSize_Calc: TStringField
      Alignment = taRightJustify
      FieldKind = fkCalculated
      FieldName = 'ImageSize_Calc'
      Calculated = True
    end
    object QrSelImage_InsertListItemsID: TIntegerField
      FieldName = 'ListItemsID'
    end
    object QrSelImage_InsertPageNumber: TIntegerField
      FieldName = 'PageNumber'
    end
    object QrSelImage_InsertIsCorrectedImage: TBooleanField
      FieldName = 'IsCorrectedImage'
    end
    object QrSelImage_InsertColorID: TIntegerField
      FieldName = 'ColorID'
    end
    object QrSelImage_InsertPath: TStringField
      FieldName = 'Path'
    end
  end
  object ADOQuery2: TADOQuery
    Connection = Dm.YeganehConnection
    Parameters = <>
    SQL.Strings = (
      'UPDATE LetterData'
      'Set Image = NULL'
      'Where Image IS NOT NULL')
    Left = 305
    Top = 84
  end
  object IdFTP1: TIdFTP
    MaxLineAction = maException
    ReadTimeout = 0
    Passive = True
    ProxySettings.ProxyType = fpcmNone
    ProxySettings.Port = 0
    Left = 344
    Top = 176
  end
end
