inherited change_Indicator: Tchange_Indicator
  Left = 233
  Top = 200
  Width = 560
  Height = 257
  BiDiMode = bdRightToLeft
  Caption = 'Yeganeh'
  Color = clBtnFace
  Ctl3D = True
  OldCreateOrder = True
  ParentBiDiMode = False
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel [0]
    Left = 460
    Top = 82
    Width = 86
    Height = 13
    Caption = #1591#1585#1601' '#1605#1705#1575#1578#1576#1607' '#1583#1575#1582#1604#1610
    FocusControl = DBEdit1
  end
  object Label2: TLabel [1]
    Left = 460
    Top = 105
    Width = 53
    Height = 13
    Caption = #1591#1585#1601' '#1605#1705#1575#1578#1576#1607
    FocusControl = DBEdit2
  end
  object Label4: TLabel [2]
    Left = 132
    Top = 58
    Width = 55
    Height = 13
    Caption = #1588#1605#1575#1585#1607' '#1608#1575#1585#1583#1607
    FocusControl = DBEdit4
  end
  object Label5: TLabel [3]
    Left = 307
    Top = 59
    Width = 46
    Height = 13
    Caption = #1578#1575#1585#1610#1582' '#1608#1575#1585#1583#1607
    FocusControl = DBEdit5
  end
  object Label6: TLabel [4]
    Left = 460
    Top = 128
    Width = 30
    Height = 13
    Caption = #1582#1604#1575#1589#1607
  end
  object Label7: TLabel [5]
    Left = 460
    Top = 59
    Width = 41
    Height = 13
    Caption = #1578#1575#1585#1610#1582' '#1579#1576#1578
    FocusControl = DBEdit7
  end
  object Label3: TLabel [6]
    Left = 132
    Top = 10
    Width = 36
    Height = 13
    Caption = #1575#1606#1583#1610#1705#1575#1578#1608#1585
  end
  object Label8: TLabel [7]
    Left = 305
    Top = 10
    Width = 42
    Height = 13
    Caption = #1606#1608#1593'  '#1606#1575#1605#1607' '
    FocusControl = DBLookupComboBox1
  end
  object Label9: TLabel [8]
    Left = 460
    Top = 10
    Width = 52
    Height = 13
    Caption = #1608#1575#1585#1583#1607'/'#1589#1575#1583#1585#1607
    FocusControl = DBLookupComboBox2
  end
  object Bevel1: TBevel [9]
    Left = -1
    Top = 48
    Width = 550
    Height = 177
    Shape = bsFrame
  end
  object Bevel2: TBevel [10]
    Left = 0
    Top = 1
    Width = 550
    Height = 41
    Shape = bsFrame
  end
  object DBEdit1: TDBEdit [11]
    Left = 9
    Top = 80
    Width = 449
    Height = 21
    DataField = 'FromorgTitle'
    DataSource = DataSource1
    TabOrder = 0
  end
  object DBEdit2: TDBEdit [12]
    Left = 9
    Top = 104
    Width = 449
    Height = 21
    DataField = 'ToorgTitle'
    DataSource = DataSource1
    TabOrder = 1
  end
  object DBEdit4: TDBEdit [13]
    Left = 9
    Top = 56
    Width = 120
    Height = 21
    DataField = 'IncommingNO'
    DataSource = DataSource1
    TabOrder = 2
  end
  object DBEdit5: TDBEdit [14]
    Left = 205
    Top = 56
    Width = 100
    Height = 21
    DataField = 'Incommingdate'
    DataSource = DataSource1
    TabOrder = 3
  end
  object DBEdit7: TDBEdit [15]
    Left = 358
    Top = 56
    Width = 100
    Height = 21
    DataField = 'RegistrationDate'
    DataSource = DataSource1
    TabOrder = 4
  end
  object DBMemo1: TDBMemo [16]
    Left = 9
    Top = 128
    Width = 449
    Height = 89
    TabOrder = 5
  end
  object Edit1: TEdit [17]
    Left = 29
    Top = 6
    Width = 100
    Height = 21
    TabOrder = 6
    Text = 'Edit1'
  end
  object DBLookupComboBox1: TDBLookupComboBox [18]
    Left = 205
    Top = 6
    Width = 100
    Height = 21
    TabOrder = 8
  end
  object DBLookupComboBox2: TDBLookupComboBox [19]
    Left = 358
    Top = 6
    Width = 100
    Height = 21
    KeyField = 'ID'
    ListField = 'Title'
    ListSource = dm.DLetterTypes
    TabOrder = 7
  end
  inherited DSForm: TDataSource
    Left = 824
    Top = 168
  end
  inherited ActionList: TActionList
    Left = 688
    Top = 248
  end
  object ADOStoredProc1: TADOStoredProc
    Connection = dm.YeganehConnection
    CursorType = ctStatic
    ProcedureName = 'get_Letter_ByIndicator;1'
    Parameters = <
      item
        Name = '@RETURN_VALUE'
        DataType = ftInteger
        Direction = pdReturnValue
        Precision = 10
        Value = 0
      end
      item
        Name = '@IndicatorID'
        Attributes = [paNullable]
        DataType = ftInteger
        Precision = 10
        Value = Null
      end
      item
        Name = '@MYear'
        Attributes = [paNullable]
        DataType = ftWord
        Precision = 3
        Value = Null
      end
      item
        Name = '@SecretariatID'
        Attributes = [paNullable]
        DataType = ftWord
        Precision = 3
        Value = Null
      end
      item
        Name = '@Letter_Type'
        Attributes = [paNullable]
        DataType = ftWord
        Precision = 3
        Value = Null
      end
      item
        Name = '@letterformat'
        Attributes = [paNullable]
        DataType = ftWord
        Precision = 3
        Value = Null
      end>
    Left = 776
    Top = 216
    object ADOStoredProc1FromorgTitle: TWideStringField
      FieldName = 'FromorgTitle'
      Size = 100
    end
    object ADOStoredProc1ToorgTitle: TWideStringField
      FieldName = 'ToorgTitle'
      Size = 100
    end
    object ADOStoredProc1LetterID: TAutoIncField
      FieldName = 'LetterID'
      ReadOnly = True
    end
    object ADOStoredProc1IncommingNO: TWideStringField
      FieldName = 'IncommingNO'
      Size = 50
    end
    object ADOStoredProc1Incommingdate: TWideStringField
      FieldName = 'Incommingdate'
      Size = 10
    end
    object ADOStoredProc1Memo: TWideStringField
      FieldName = 'Memo'
      Size = 500
    end
    object ADOStoredProc1RegistrationDate: TStringField
      FieldName = 'RegistrationDate'
      FixedChar = True
      Size = 10
    end
  end
  object DataSource1: TDataSource
    DataSet = ADOStoredProc1
    Left = 928
    Top = 352
  end
end
