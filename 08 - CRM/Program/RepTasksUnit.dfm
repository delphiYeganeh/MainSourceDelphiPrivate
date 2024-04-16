inherited FRepTasks: TFRepTasks
  Left = 303
  Top = 121
  Width = 876
  Height = 469
  Caption = #1711#1586#1575#1585#1588' '#1705#1575#1585' '#1705#1575#1585#1576#1585#1575#1606
  OldCreateOrder = True
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel [0]
    Left = 0
    Top = 0
    Width = 868
    Height = 65
    Align = alTop
    TabOrder = 0
    DesignSize = (
      868
      65)
    object SpeedButton1: TSpeedButton
      Left = 8
      Top = 16
      Width = 81
      Height = 22
      Caption = #1582#1585#1608#1580
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
      OnClick = SpeedButton1Click
    end
    object SpeedButton5: TSpeedButton
      Left = 92
      Top = 16
      Width = 81
      Height = 22
      Caption = #1606#1605#1575#1610#1588
      OnClick = SpeedButton5Click
    end
    object Label3: TLabel
      Left = 321
      Top = 20
      Width = 3
      Height = 13
      Font.Charset = ARABIC_CHARSET
      Font.Color = clGreen
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object GroupBox1: TGroupBox
      Left = 420
      Top = 8
      Width = 216
      Height = 49
      Caption = #1575#1606#1578#1582#1575#1576' '#1705#1575#1585#1576#1585
      TabOrder = 0
      object SpeedButton4: TSpeedButton
        Left = 185
        Top = 18
        Width = 22
        Height = 22
        Caption = '...'
        OnClick = SpeedButton4Click
      end
      object lblUserName: TLabel
        Left = 179
        Top = 24
        Width = 3
        Height = 13
      end
    end
    object GroupBox2: TGroupBox
      Left = 640
      Top = 8
      Width = 217
      Height = 49
      Caption = #1578#1575#1585#1610#1582
      TabOrder = 1
      object Label1: TLabel
        Left = 201
        Top = 22
        Width = 7
        Height = 13
        Caption = #1575#1586
      end
      object SpeedButton2: TSpeedButton
        Left = 115
        Top = 18
        Width = 22
        Height = 22
        Caption = '...'
        OnClick = SpeedButton2Click
      end
      object Label2: TLabel
        Left = 91
        Top = 22
        Width = 6
        Height = 13
        Caption = #1578#1575
      end
      object SpeedButton3: TSpeedButton
        Left = 5
        Top = 18
        Width = 22
        Height = 22
        Caption = '...'
        OnClick = SpeedButton3Click
      end
      object edtFromDate: TEdit
        Left = 136
        Top = 18
        Width = 62
        Height = 21
        TabOrder = 0
      end
      object edtToDate: TEdit
        Left = 27
        Top = 19
        Width = 62
        Height = 21
        TabOrder = 1
      end
    end
    object ActionType: TDBLookupComboBox
      Left = 185
      Top = 17
      Width = 150
      Height = 21
      Anchors = [akTop, akRight]
      BiDiMode = bdLeftToRight
      DropDownRows = 5
      Enabled = False
      Font.Charset = ARABIC_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      KeyField = 'ActionTypeID'
      ListField = 'ActionTypeTitle'
      ListSource = Dm.DActionType
      ParentBiDiMode = False
      ParentFont = False
      TabOrder = 2
    end
    object CheckBox1: TCheckBox
      Left = 336
      Top = 16
      Width = 73
      Height = 17
      Caption = #1606#1608#1593' '#1575#1602#1583#1575#1605' :'
      TabOrder = 3
      OnClick = CheckBox1Click
    end
  end
  object Panel2: TPanel [1]
    Left = 0
    Top = 65
    Width = 868
    Height = 370
    Align = alClient
    BorderWidth = 1
    TabOrder = 1
  end
  object YDBGrid1: TYDBGrid [2]
    Left = 0
    Top = 65
    Width = 868
    Height = 370
    Cursor = crHandPoint
    Align = alClient
    DataSource = DSForm
    ReadOnly = True
    TabOrder = 2
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
        FieldName = 'ToDoDate'
        Title.Caption = #1578#1575#1585#1610#1582' '#1575#1606#1580#1575#1605
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Title'
        Title.Caption = #1705#1575#1585#1576#1585
        Width = 100
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'CustomerID'
        Title.Caption = #1588#1605#1575#1585#1607' '#1605#1588#1578#1585#1610
        Width = 120
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'CompanyName'
        Title.Caption = #1606#1575#1605' '#1588#1585#1705#1578
        Width = 120
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'PersonTitle'
        Title.Caption = #1606#1575#1605' '#1605#1588#1578#1585#1610
        Width = 120
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'ActionTypeTitle'
        Title.Caption = #1606#1608#1593' '#1575#1602#1583#1575#1605
        Width = 100
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Comment'
        Title.Caption = #1578#1608#1590#1610#1581#1575#1578
        Width = 200
        Visible = True
      end>
  end
  inherited DSForm: TDataSource
    DataSet = spRepUserWork
    Left = 136
    Top = 208
  end
  inherited ActionList: TActionList
    Left = 112
    Top = 80
  end
  object MssCalendarPro1: TMssCalendarPro
    Style = mssSilver
    Left = 160
    Top = 104
  end
  object spRepUserWork: TADOStoredProc
    Connection = Dm.YeganehConnection
    CursorType = ctStatic
    ProcedureName = 'spRepUserWork;1'
    Parameters = <
      item
        Name = '@UserID'
        Attributes = [paNullable]
        DataType = ftInteger
        Precision = 10
        Value = 0
      end
      item
        Name = '@FromDate'
        Attributes = [paNullable]
        DataType = ftString
        Size = 50
        Value = 'null'
      end
      item
        Name = '@ToDate'
        Attributes = [paNullable]
        DataType = ftString
        Size = 50
        Value = 'null'
      end
      item
        Name = '@ActionType'
        DataType = ftInteger
        Value = 0
      end>
    Left = 344
    Top = 192
    object spRepUserWorkCustomerID: TAutoIncField
      FieldName = 'CustomerID'
      ReadOnly = True
    end
    object spRepUserWorkPersonTitle: TWideStringField
      FieldName = 'PersonTitle'
      Size = 100
    end
    object spRepUserWorkCompanyName: TWideStringField
      FieldName = 'CompanyName'
      Size = 100
    end
    object spRepUserWorkActionTypeTitle: TWideStringField
      FieldName = 'ActionTypeTitle'
      Size = 50
    end
    object spRepUserWorkToDoDate: TStringField
      FieldName = 'ToDoDate'
      FixedChar = True
      Size = 10
    end
    object spRepUserWorkComment: TWideStringField
      FieldName = 'Comment'
      Size = 1000
    end
    object spRepUserWorkTitle: TWideStringField
      FieldName = 'Title'
      Size = 50
    end
  end
end
