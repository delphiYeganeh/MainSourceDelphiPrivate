inherited FSMSGeneral: TFSMSGeneral
  Left = 313
  Top = 137
  BorderIcons = [biSystemMenu, biMinimize]
  BorderStyle = bsSingle
  Caption = #1575#1585#1587#1575#1604' '#1593#1605#1608#1605#1610' '#1662#1610#1575#1605#1705
  ClientHeight = 547
  ClientWidth = 950
  OldCreateOrder = True
  PixelsPerInch = 96
  TextHeight = 13
  object Panel3: TPanel [0]
    Left = 0
    Top = 430
    Width = 950
    Height = 117
    Align = alBottom
    TabOrder = 0
    object Label2: TLabel
      Left = 901
      Top = 16
      Width = 42
      Height = 13
      Caption = #1605#1578#1606' '#1662#1610#1575#1605':'
    end
    object Label3: TLabel
      Left = 903
      Top = 64
      Width = 40
      Height = 13
      Caption = #1578#1608#1590#1610#1581#1575#1578
    end
    object Button2: TButton
      Left = 8
      Top = 11
      Width = 75
      Height = 25
      Caption = #1575#1585#1587#1575#1604' SMS'
      TabOrder = 0
      OnClick = Button2Click
    end
    object edtMessage: TEdit
      Left = 104
      Top = 12
      Width = 793
      Height = 21
      TabOrder = 1
    end
    object Memo1: TMemo
      Left = 104
      Top = 48
      Width = 793
      Height = 57
      TabOrder = 2
    end
  end
  object Panel2: TPanel [1]
    Left = 0
    Top = 144
    Width = 950
    Height = 286
    Align = alClient
    TabOrder = 1
  end
  object Panel1: TPanel [2]
    Left = 0
    Top = 0
    Width = 950
    Height = 144
    Align = alTop
    TabOrder = 2
    object lblCount: TLabel
      Left = 123
      Top = 123
      Width = 6
      Height = 13
      Caption = '0'
      Font.Charset = ARABIC_CHARSET
      Font.Color = clGreen
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object lblCost: TLabel
      Left = 190
      Top = 56
      Width = 32
      Height = 13
      BiDiMode = bdRightToLeft
      Caption = 'lblCost'
      Font.Charset = ARABIC_CHARSET
      Font.Color = clRed
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentBiDiMode = False
      ParentFont = False
      Visible = False
    end
    object Label6: TLabel
      Left = 226
      Top = 56
      Width = 93
      Height = 13
      Caption = #1607#1586#1610#1606#1607' '#1575#1585#1587#1575#1604'('#1578#1608#1605#1575#1606'):'
      Visible = False
    end
    object BitBtn1: TBitBtn
      Left = 8
      Top = 8
      Width = 75
      Height = 25
      Caption = #1582#1585#1608#1580
      TabOrder = 0
      OnClick = BitBtn1Click
      Glyph.Data = {
        36030000424D3603000000000000360000002800000010000000100000000100
        18000000000000030000C30E0000C30E00000000000000000000FFFFFFFFFFFF
        FFFFFFFFFFFFFEFEFEFBFBFBF4F4F4F3F3F3FAFAFAFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFDFDFDF7F7F7EFEFEFE4E4E4D6D6D6D8
        D8D8F1F1F1FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFCFCFC
        F0F0F0DCDADAC6ADA8B88A83AC7771AC7771AFAFAFC5C5C5E7E7E7F0F0F0FFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFEBE0DEC79F95B07C75C18D81DFB2A1FCF4EEAC
        77718D8D8D979797ADADADDADADAFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFAC7771
        CE9683EEB89DF7C7AEF6CEB8FEF6F1AC77711C759D1E7EAA1E7EAAEFEFEFFBFB
        FBFEFEFEFFFFFFFFFFFFFFFFFFAC7771F7BB99F8C0A2F7C7AEF7CEB8FEF6F1AC
        77715CB6D55DC3E4179DC9FDFEFEF6CDB4FEFEFEFFFFFFFFFFFFFFFFFFAC7771
        F8BB99F7C0A2F7C7AEF7CFB9FEF6F1AC777168BBD672CBE745B1D4F5CDB4E556
        01FDFEFEFFFFFFFFFFFFFFFFFFAC7771F8BB99C18C7FB37F77F6CFB9FEF6F1AC
        777187C7DBA1DDEFAFB0A4E65C09E55600FBFEFEFDFEFEFDFEFEFFFFFFAC7771
        F7BB99AC7771FFFFFFF6CFB9FEF6F1AC7771A3D4E2D4C4B2E55600E55600E556
        00E55600E55600E55600FFFFFFAC7771F7BB99D29C8AAC7771F6CEB8FEF6F1AC
        7771BBDFE9E55600E55600E55600E55600E55600E55600E55600FFFFFFAC7771
        F8BB99F7C1A3F7C7ADF7CEB8FEF6F1AC7771BFE0E9E4B291E35D0BE55600E556
        00E55600E55600E55600FFFFFFAC7771F8BB99F7C1A2F7C7ADF7CEB9FEF6F1AC
        7771B7DBE4D7F1F7CAAD94E65D0BE55600FAFDFDFBFDFDFCFEFEFFFFFFAC7771
        F7BB99F7C1A3F7C8AEF7CEB8FEF6F1AC7771B2D7E1C6EAF483CBE2F2C0A1E557
        01FCFEFEFFFFFFFFFFFFFFFFFFAC7771C79080EAB39AF7C8AEF7CEB9FEF6F1AC
        7771B8D9E2C5EAF42BA5CEFCFEFEF4C3A6FEFEFEFFFFFFFFFFFFFFFFFFFCFAF9
        D8B7ADB48078C28E82E5BAA7FEF6F1AC7771098FBB0997C60997C6FEFEFEFEFE
        FEFEFEFEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFDFCFCDDC4BFBC8E86AC7771AC
        7771FAFAFAFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF}
    end
    object GroupBox1: TGroupBox
      Left = 419
      Top = 3
      Width = 521
      Height = 51
      Caption = #1605#1588#1578#1585#1610#1575#1606' '#1588#1585#1705#1578
      TabOrder = 1
      DesignSize = (
        521
        51)
      object Label12: TLabel
        Left = 443
        Top = 18
        Width = 37
        Height = 13
        Anchors = [akTop, akRight]
        Caption = #1608#1590#1593#1610#1578' '
        Transparent = True
      end
      object Label30: TLabel
        Left = 270
        Top = 20
        Width = 34
        Height = 13
        Anchors = [akTop, akRight]
        Caption = #1605#1581#1589#1608#1604
        Font.Charset = ARABIC_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        Transparent = True
      end
      object Button3: TButton
        Left = 8
        Top = 16
        Width = 91
        Height = 25
        Caption = #1575#1601#1586#1608#1583#1606' '#1576#1607' '#1604#1610#1587#1578
        TabOrder = 0
        OnClick = Button3Click
      end
      object dblCustomerStatus: TDBLookupComboBox
        Left = 312
        Top = 16
        Width = 131
        Height = 21
        Anchors = [akTop, akRight]
        BiDiMode = bdLeftToRight
        KeyField = 'CustomerStatusID'
        ListField = 'CustomerStatusTitle'
        ListSource = Dm.DCustomerStatus
        ParentBiDiMode = False
        TabOrder = 1
      end
      object dblProduct: TDBLookupComboBox
        Left = 136
        Top = 17
        Width = 130
        Height = 21
        Anchors = [akTop, akRight]
        BiDiMode = bdLeftToRight
        KeyField = 'ProductID'
        ListField = 'ProductTitle'
        ListSource = Dm.DProduct
        ParentBiDiMode = False
        TabOrder = 2
      end
    end
    object GroupBox2: TGroupBox
      Left = 418
      Top = 58
      Width = 521
      Height = 79
      Caption = #1587#1575#1610#1585
      TabOrder = 2
      object Label1: TLabel
        Left = 415
        Top = 17
        Width = 88
        Height = 13
        Caption = #1606#1575#1605' '#1588#1582#1589'/'#1605#1588#1578#1585#1610
      end
      object Label4: TLabel
        Left = 170
        Top = 17
        Width = 85
        Height = 13
        Caption = #1606#1575#1605' '#1588#1585#1705#1578'/'#1587#1575#1586#1605#1575#1606
      end
      object Label5: TLabel
        Left = 419
        Top = 49
        Width = 28
        Height = 13
        Caption = #1605#1608#1576#1575#1610#1604
      end
      object edtName: TEdit
        Left = 290
        Top = 15
        Width = 121
        Height = 21
        TabOrder = 0
      end
      object edtCompany: TEdit
        Left = 45
        Top = 15
        Width = 121
        Height = 21
        TabOrder = 1
      end
      object edtMobile: TEdit
        Left = 290
        Top = 47
        Width = 121
        Height = 21
        TabOrder = 2
      end
      object Button1: TButton
        Left = 8
        Top = 44
        Width = 91
        Height = 25
        Caption = #1575#1601#1586#1608#1583#1606' '#1576#1607' '#1604#1610#1587#1578
        TabOrder = 3
        OnClick = Button1Click
      end
    end
  end
  object YDBGrid1: TYDBGrid [3]
    Left = 0
    Top = 144
    Width = 950
    Height = 286
    Cursor = crHandPoint
    Align = alClient
    DataSource = DSForm
    TabOrder = 3
    TitleFont.Charset = ARABIC_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
    YeganehColor = False
    YeganehFinish = False
    PageNumber = False
    RecordNumber = False
    HasTime = False
    Oriention = poPortrait
    HasDate = False
    HasIndex = False
    InvertFarsiDate = True
    TitleSort = True
    AutoInsert = False
    OnNeedColorCondition = YDBGrid1NeedColorCondition
    FooterFields = 'Count'
    Columns = <
      item
        Expanded = False
        FieldName = 'CustomerID'
        ReadOnly = True
        Title.Caption = #1588#1605#1575#1585#1607' '#1605#1588#1578#1585#1610
        Width = 90
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'PersonTitle'
        Title.Caption = #1605#1588#1578#1585#1610
        Width = 200
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'CompanyName'
        Title.Caption = #1588#1585#1705#1578
        Width = 200
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Phone'
        ReadOnly = True
        Title.Caption = #1578#1604#1601#1606
        Width = 90
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'MobilePhone'
        Title.Caption = #1605#1608#1576#1575#1610#1604
        Width = 90
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'ProductTitle'
        ReadOnly = True
        Title.Caption = #1605#1581#1589#1608#1604
        Width = 120
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'CustomerStatusTitle'
        ReadOnly = True
        Title.Caption = #1608#1590#1593#1610#1578' '#1605#1588#1578#1585#1610
        Width = 110
        Visible = True
      end>
  end
  inherited DSForm: TDataSource
    DataSet = QSMSTMP
    Left = 128
    Top = 112
  end
  inherited ActionList: TActionList
    Left = 176
    Top = 120
  end
  object spFillSMSTMPFromCustomer: TADOStoredProc
    Connection = Dm.YeganehConnection
    CursorType = ctStatic
    AfterInsert = spFillSMSTMPFromCustomerAfterInsert
    AfterDelete = spFillSMSTMPFromCustomerAfterDelete
    ProcedureName = 'spFillSMSTMPFromCustomer;1'
    Parameters = <
      item
        Name = '@RETURN_VALUE'
        DataType = ftInteger
        Direction = pdReturnValue
        Precision = 10
        Value = 0
      end
      item
        Name = '@CustomerStatusID'
        Attributes = [paNullable]
        DataType = ftInteger
        Precision = 10
        Value = 2
      end
      item
        Name = '@ProductID'
        Attributes = [paNullable]
        DataType = ftInteger
        Precision = 10
        Value = 1
      end>
    Left = 256
    Top = 8
    object spFillSMSTMPFromCustomerID: TAutoIncField
      FieldName = 'ID'
      ReadOnly = True
    end
    object spFillSMSTMPFromCustomerCustomerID: TIntegerField
      FieldName = 'CustomerID'
    end
    object spFillSMSTMPFromCustomerCustomerNo: TStringField
      FieldName = 'CustomerNo'
      Size = 50
    end
    object spFillSMSTMPFromCustomerPersonTitle: TWideStringField
      FieldName = 'PersonTitle'
      Size = 100
    end
    object spFillSMSTMPFromCustomerCompanyName: TWideStringField
      FieldName = 'CompanyName'
      Size = 100
    end
    object spFillSMSTMPFromCustomerPhone: TWideStringField
      FieldName = 'Phone'
      Size = 100
    end
    object spFillSMSTMPFromCustomerMobilePhone: TWideStringField
      FieldName = 'MobilePhone'
      Size = 30
    end
    object spFillSMSTMPFromCustomerProductTitle: TWideStringField
      FieldName = 'ProductTitle'
      Size = 100
    end
    object spFillSMSTMPFromCustomerCustomerStatusTitle: TWideStringField
      FieldName = 'CustomerStatusTitle'
      Size = 50
    end
  end
  object QDelDataFromSMSTMP: TADOQuery
    Connection = Dm.YeganehConnection
    Parameters = <>
    SQL.Strings = (
      'DELETE FROM SMSTMP')
    Left = 320
    Top = 64
  end
  object spFillSMSTMPFromOther: TADOStoredProc
    Connection = Dm.YeganehConnection
    AfterInsert = spFillSMSTMPFromOtherAfterInsert
    AfterDelete = spFillSMSTMPFromOtherAfterDelete
    ProcedureName = 'spFillSMSTMPFromOther;1'
    Parameters = <
      item
        Name = '@RETURN_VALUE'
        DataType = ftInteger
        Direction = pdReturnValue
        Precision = 10
        Value = 0
      end
      item
        Name = '@CompanyName'
        Attributes = [paNullable]
        DataType = ftWideString
        Size = 100
        Value = 'asd'
      end
      item
        Name = '@PersonTitle'
        Attributes = [paNullable]
        DataType = ftWideString
        Size = 100
        Value = 'asd'
      end
      item
        Name = '@MobilePhone'
        Attributes = [paNullable]
        DataType = ftWideString
        Size = 30
        Value = '234'
      end>
    Left = 120
    Top = 8
    object spFillSMSTMPFromOtherID: TAutoIncField
      FieldName = 'ID'
      ReadOnly = True
    end
    object spFillSMSTMPFromOtherCustomerID: TIntegerField
      FieldName = 'CustomerID'
    end
    object spFillSMSTMPFromOtherCustomerNo: TStringField
      FieldName = 'CustomerNo'
      Size = 50
    end
    object spFillSMSTMPFromOtherPersonTitle: TWideStringField
      FieldName = 'PersonTitle'
      Size = 100
    end
    object spFillSMSTMPFromOtherCompanyName: TWideStringField
      FieldName = 'CompanyName'
      Size = 100
    end
    object spFillSMSTMPFromOtherPhone: TWideStringField
      FieldName = 'Phone'
      Size = 100
    end
    object spFillSMSTMPFromOtherMobilePhone: TWideStringField
      FieldName = 'MobilePhone'
      Size = 30
    end
    object spFillSMSTMPFromOtherProductTitle: TWideStringField
      FieldName = 'ProductTitle'
      Size = 100
    end
    object spFillSMSTMPFromOtherCustomerStatusTitle: TWideStringField
      FieldName = 'CustomerStatusTitle'
      Size = 50
    end
  end
  object QSMSTMP: TADOQuery
    Connection = Dm.YeganehConnection
    AfterInsert = QSMSTMPAfterInsert
    AfterDelete = QSMSTMPAfterDelete
    Parameters = <>
    SQL.Strings = (
      'select * from SMSTMP')
    Left = 536
    Top = 96
    object QSMSTMPID: TAutoIncField
      FieldName = 'ID'
    end
    object QSMSTMPCustomerID: TIntegerField
      FieldName = 'CustomerID'
    end
    object QSMSTMPCustomerNo: TStringField
      FieldName = 'CustomerNo'
      Size = 50
    end
    object QSMSTMPPersonTitle: TWideStringField
      FieldName = 'PersonTitle'
      Size = 100
    end
    object QSMSTMPCompanyName: TWideStringField
      FieldName = 'CompanyName'
      Size = 100
    end
    object QSMSTMPPhone: TWideStringField
      FieldName = 'Phone'
      Size = 100
    end
    object QSMSTMPMobilePhone: TWideStringField
      FieldName = 'MobilePhone'
      Size = 30
    end
    object QSMSTMPProductTitle: TWideStringField
      FieldName = 'ProductTitle'
      Size = 100
    end
    object QSMSTMPCustomerStatusTitle: TWideStringField
      FieldName = 'CustomerStatusTitle'
      Size = 50
    end
  end
  object QTMP: TADOQuery
    Connection = Dm.YeganehConnection
    Parameters = <>
    Left = 248
    Top = 97
  end
  object PopupMenu1: TPopupMenu
    Left = 232
    Top = 368
    object N1: TMenuItem
      Caption = #1605#1588#1575#1607#1583#1607' '#1607#1586#1610#1606#1607' '#1575#1585#1587#1575#1604
      OnClick = N1Click
    end
    object N2: TMenuItem
      Caption = #1575#1585#1587#1575#1604
      OnClick = N2Click
    end
  end
end
