inherited FFillPicture: TFFillPicture
  Left = 319
  Top = 125
  AutoSize = True
  Caption = #1582#1608#1575#1606#1583#1606' '#1593#1603#1587' '#1575#1586' '#1610#1603' '#1601#1604#1583#1585
  ClientHeight = 345
  ClientWidth = 469
  OldCreateOrder = True
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel [0]
    Left = 326
    Top = 5
    Width = 41
    Height = 13
    Caption = #1606#1575#1605' '#1580#1583#1608#1604
  end
  object Label2: TLabel [1]
    Left = 326
    Top = 32
    Width = 63
    Height = 13
    Caption = #1606#1575#1605' '#1601#1610#1604#1583' '#1578#1589#1608#1610#1585
  end
  object Label3: TLabel [2]
    Left = 326
    Top = 62
    Width = 101
    Height = 13
    Caption = #1606#1575#1605' '#1601#1610#1604#1583' '#1581#1575#1608#1610' '#1606#1575#1605' '#1601#1575#1610#1604
  end
  object Label4: TLabel [3]
    Left = 331
    Top = 97
    Width = 81
    Height = 13
    Caption = ' '#1601#1604#1583#1585' '#1581#1575#1608#1610' '#1578#1589#1575#1608#1610#1585
  end
  object Label5: TLabel [4]
    Left = 326
    Top = 128
    Width = 65
    Height = 13
    Caption = #1662#1587#1608#1606#1583' '#1601#1575#1610#1604' '#1607#1575
  end
  object SpeedButton1: TSpeedButton [5]
    Left = 47
    Top = 94
    Width = 23
    Height = 21
    Cursor = crHandPoint
    Caption = '...'
    OnClick = SpeedButton1Click
  end
  object Label6: TLabel [6]
    Left = 379
    Top = 253
    Width = 85
    Height = 13
    Caption = #1578#1589#1575#1608#1610#1585' '#1575#1606#1578#1602#1575#1604' '#1606#1610#1575#1601#1578#1607
  end
  object Label7: TLabel [7]
    Left = 388
    Top = 176
    Width = 81
    Height = 13
    Caption = #1578#1589#1575#1608#1610#1585' '#1575#1606#1578#1602#1575#1604' '#1610#1575#1601#1578#1607
  end
  object maintablename: TDBLookupComboBox [8]
    Left = 93
    Top = 0
    Width = 222
    Height = 21
    BiDiMode = bdLeftToRight
    KeyField = 'TableName'
    ListField = 'Description'
    ListSource = Dm.DTables
    ParentBiDiMode = False
    TabOrder = 0
  end
  object DBLookupComboBox1: TDBLookupComboBox [9]
    Left = 93
    Top = 27
    Width = 222
    Height = 21
    BiDiMode = bdLeftToRight
    KeyField = 'FieldName'
    ListField = 'Description'
    ListSource = DFields1
    ParentBiDiMode = False
    TabOrder = 1
  end
  object DBLookupComboBox2: TDBLookupComboBox [10]
    Left = 93
    Top = 57
    Width = 222
    Height = 21
    BiDiMode = bdLeftToRight
    KeyField = 'FieldName'
    ListField = 'Description'
    ListSource = DFields2
    ParentBiDiMode = False
    TabOrder = 2
  end
  object Edit1: TEdit [11]
    Left = 73
    Top = 94
    Width = 242
    Height = 21
    BiDiMode = bdLeftToRight
    ParentBiDiMode = False
    TabOrder = 3
  end
  object Edit2: TEdit [12]
    Left = 249
    Top = 123
    Width = 66
    Height = 21
    BiDiMode = bdLeftToRight
    ParentBiDiMode = False
    TabOrder = 4
    Text = 'bmp'
  end
  object Button1: TButton [13]
    Left = 128
    Top = 157
    Width = 192
    Height = 25
    Cursor = crHandPoint
    Caption = #1582#1608#1575#1606#1583#1606' '#1578#1589#1575#1608#1610#1585' '#1608' '#1584#1582#1610#1585#1607' '#1583#1585' '#1662#1575#1610#1711#1575#1607' '#1583#1575#1583#1607' '#1607#1575
    TabOrder = 5
    OnClick = Button1Click
  end
  object Button2: TButton [14]
    Left = 0
    Top = 320
    Width = 75
    Height = 25
    Cursor = crHandPoint
    Caption = #1582#1585#1608#1580
    TabOrder = 6
    OnClick = Button2Click
  end
  object Memo1: TMemo [15]
    Left = 14
    Top = 192
    Width = 446
    Height = 58
    TabOrder = 7
  end
  object Memo2: TMemo [16]
    Left = 15
    Top = 268
    Width = 446
    Height = 48
    TabOrder = 8
  end
  inherited DSForm: TDataSource
    DataSet = Table
    Left = 54
    Top = 133
  end
  inherited ActionList: TActionList
    Left = 13
    Top = 107
  end
  object Fields1: TADOTable
    Connection = Dm.YeganehConnection
    CursorType = ctStatic
    IndexFieldNames = 'TableID'
    MasterFields = 'TableId'
    MasterSource = Dm.DTables
    TableName = 'Fields'
    Left = 15
    Top = 56
    object Fields1ID: TAutoIncField
      FieldName = 'ID'
      ReadOnly = True
    end
    object Fields1TableID: TWordField
      FieldName = 'TableID'
    end
    object Fields1FieldName: TStringField
      FieldName = 'FieldName'
      Size = 50
    end
    object Fields1Description: TStringField
      FieldName = 'Description'
      Size = 50
    end
    object Fields1ISString: TBooleanField
      FieldName = 'ISString'
    end
    object Fields1IsLike: TBooleanField
      FieldName = 'IsLike'
    end
    object Fields1EveryLike: TBooleanField
      FieldName = 'EveryLike'
    end
    object Fields1IsWhere: TBooleanField
      FieldName = 'IsWhere'
    end
    object Fields1VisibleInGrid: TBooleanField
      FieldName = 'VisibleInGrid'
    end
  end
  object DFields1: TDataSource
    DataSet = Fields1
    Left = 33
    Top = 152
  end
  object Fields2: TADOTable
    Connection = Dm.YeganehConnection
    CursorType = ctStatic
    IndexFieldNames = 'TableID'
    MasterFields = 'TableId'
    MasterSource = Dm.DTables
    TableName = 'Fields'
    Left = 67
    Top = 39
    object AutoIncField1: TAutoIncField
      FieldName = 'ID'
      ReadOnly = True
    end
    object WordField1: TWordField
      FieldName = 'TableID'
    end
    object StringField1: TStringField
      FieldName = 'FieldName'
      Size = 50
    end
    object StringField2: TStringField
      FieldName = 'Description'
      Size = 50
    end
    object BooleanField1: TBooleanField
      FieldName = 'ISString'
    end
    object BooleanField2: TBooleanField
      FieldName = 'IsLike'
    end
    object BooleanField3: TBooleanField
      FieldName = 'EveryLike'
    end
    object BooleanField4: TBooleanField
      FieldName = 'IsWhere'
    end
    object BooleanField5: TBooleanField
      FieldName = 'VisibleInGrid'
    end
  end
  object DFields2: TDataSource
    DataSet = Fields2
    Left = 137
    Top = 115
  end
  object YFillPictureFields: TYFillPictureFields
    Left = 225
    Top = 211
  end
  object Table: TADOTable
    Connection = Dm.YeganehConnection
    Left = 96
    Top = 128
  end
end
