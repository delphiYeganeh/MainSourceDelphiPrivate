object Frep: TFrep
  Left = 199
  Top = 117
  Width = 577
  Height = 507
  BiDiMode = bdRightToLeft
  Caption = #1711#1586#1585#1575#1588' '#1575#1586' '#1588#1605#1575#1585#1607' '#1578#1604#1601#1606' '#1607#1575
  Color = clBtnFace
  Font.Charset = ARABIC_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  ParentBiDiMode = False
  Position = poScreenCenter
  OnClose = FormClose
  PixelsPerInch = 96
  TextHeight = 13
  object YDBGrid2: TYDBGrid
    Left = 0
    Top = 210
    Width = 569
    Height = 270
    Cursor = crHandPoint
    Align = alBottom
    Color = clSkyBlue
    DataSource = Daddresses
    TabOrder = 0
    TitleFont.Charset = ARABIC_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
    YeganehColor = True
    YeganehFinish = False
    PageNumber = False
    RecordNumber = False
    HasTime = False
    Oriention = poPortrait
    HasDate = False
    HasIndex = False
    PrintTitle = #1604#1610#1587#1578' '#1578#1607#1610#1607' '#1588#1583#1607' '#1578#1608#1587#1591' '#1606#1585#1605' '#1575#1601#1586#1575#1585' '#1610#1711#1575#1606#1607
    InvertFarsiDate = True
    TitleSort = True
    AutoInsert = False
    Columns = <
      item
        Alignment = taRightJustify
        Expanded = False
        FieldName = 'Nickname'
        Title.Caption = #1606#1575#1605
        Width = 151
        Visible = True
      end
      item
        Alignment = taRightJustify
        Expanded = False
        FieldName = 'Address'
        Title.Caption = #1570#1583#1585#1587
        Width = 152
        Visible = True
      end
      item
        Alignment = taRightJustify
        Expanded = False
        FieldName = 'PostalCode'
        Title.Caption = #1705#1583' '#1662#1587#1578#1610
        Visible = False
      end
      item
        Alignment = taRightJustify
        Expanded = False
        FieldName = 'EmailAddress'
        Title.Caption = #1570#1583#1585#1587' '#1575#1604#1705#1578#1585#1608#1606#1610#1705#1610
        Visible = False
      end
      item
        Alignment = taRightJustify
        Expanded = False
        FieldName = 'HomePhone'
        Title.Caption = #1578#1604#1601#1606' '#1605#1606#1586#1604' '
        Visible = False
      end
      item
        Alignment = taRightJustify
        Expanded = False
        FieldName = 'WorkPhone'
        Title.Caption = #1578#1604#1601#1606' '#1605#1581#1604' '#1705#1575#1585
        Width = 80
        Visible = True
      end
      item
        Alignment = taRightJustify
        Expanded = False
        FieldName = 'WorkPhone1'
        Title.Caption = #1578#1604#1601#1606' '#1605#1581#1604' '#1705#1575#1585'2'
        Visible = False
      end
      item
        Alignment = taRightJustify
        Expanded = False
        FieldName = 'WorkPhone2'
        Title.Caption = #1578#1604#1601#1606' '#1605#1581#1604' '#1705#1575#1585'3'
        Visible = False
      end
      item
        Alignment = taRightJustify
        Expanded = False
        FieldName = 'MobilePhone'
        Title.Caption = #1605#1608#1576#1575#1610#1604
        Width = 80
        Visible = True
      end
      item
        Alignment = taRightJustify
        Expanded = False
        FieldName = 'FaxNumber'
        Title.Caption = #1601#1575#1705#1587
        Width = 80
        Visible = True
      end
      item
        Alignment = taRightJustify
        Expanded = False
        FieldName = 'CompanyName'
        Title.Caption = #1588#1585#1705#1578
        Visible = False
      end
      item
        Alignment = taRightJustify
        Expanded = False
        FieldName = 'JobTitle'
        Title.Caption = #1588#1594#1604
        Visible = False
      end
      item
        Expanded = False
        FieldName = 'Notes'
        Title.Caption = #1578#1608#1590#1610#1581
        Visible = False
      end>
  end
  object BitBtn1: TBitBtn
    Left = 469
    Top = 164
    Width = 85
    Height = 30
    Caption = #1578#1607#1610#1607' '#1711#1586#1575#1585#1588
    TabOrder = 1
    OnClick = BitBtn1Click
  end
  object BitBtn2: TBitBtn
    Left = 378
    Top = 164
    Width = 85
    Height = 30
    Caption = #1670#1575#1662
    TabOrder = 2
    OnClick = BitBtn2Click
  end
  object BitBtn3: TBitBtn
    Left = 287
    Top = 164
    Width = 85
    Height = 30
    Caption = #1575#1606#1578#1602#1575#1604' '#1576#1607' word'
    TabOrder = 3
    OnClick = BitBtn3Click
  end
  object BitBtn4: TBitBtn
    Left = 196
    Top = 164
    Width = 85
    Height = 30
    Caption = #1575#1606#1578#1582#1575#1576' '#1587#1578#1608#1606' '#1607#1575
    TabOrder = 4
    OnClick = BitBtn4Click
  end
  object BitBtn5: TBitBtn
    Left = 28
    Top = 164
    Width = 85
    Height = 30
    Caption = #1582#1585#1608#1580
    TabOrder = 5
    OnClick = BitBtn5Click
  end
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 569
    Height = 155
    Align = alTop
    TabOrder = 6
    object Label1: TLabel
      Left = 440
      Top = 15
      Width = 13
      Height = 13
      Caption = #1606#1575#1605
      Font.Charset = ARABIC_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object Label2: TLabel
      Left = 440
      Top = 44
      Width = 58
      Height = 13
      Caption = #1606#1575#1605' '#1582#1575#1606#1608#1575#1583#1711#1610
      Font.Charset = ARABIC_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object Label6: TLabel
      Left = 205
      Top = 39
      Width = 25
      Height = 13
      Caption = #1601#1603#1587
      Font.Charset = ARABIC_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object Label9: TLabel
      Left = 205
      Top = 10
      Width = 52
      Height = 13
      Caption = #1578#1604#1601#1606' '#1607#1605#1585#1575#1607
      Font.Charset = ARABIC_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object Label10: TLabel
      Left = 205
      Top = 68
      Width = 47
      Height = 13
      Caption = #1606#1575'&'#1605' '#1588#1585#1603#1578
      Font.Charset = ARABIC_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object Label11: TLabel
      Left = 205
      Top = 126
      Width = 25
      Height = 13
      Caption = #1570#1583#1585#1587
      Font.Charset = ARABIC_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object Label7: TLabel
      Left = 436
      Top = 69
      Width = 46
      Height = 13
      Caption = #1578#1604#1601#1606' '#1605#1606#1586#1604
      Font.Charset = ARABIC_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object Label3: TLabel
      Left = 436
      Top = 123
      Width = 69
      Height = 13
      Caption = #1578#1604#1601#1606' '#1605#1581#1604' '#1603#1575#1585' 2'
      Font.Charset = ARABIC_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object Label5: TLabel
      Left = 436
      Top = 95
      Width = 69
      Height = 13
      Caption = #1578#1604#1601#1606' '#1605#1581#1604' '#1603#1575#1585' 1'
      Font.Charset = ARABIC_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object Label8: TLabel
      Left = 205
      Top = 97
      Width = 24
      Height = 13
      Caption = 'Email'
      Font.Charset = ARABIC_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object YwhereEdit0: TYWhereEdit
      Left = 315
      Top = 11
      Width = 121
      Height = 21
      BiDiMode = bdRightToLeft
      Font.Charset = ARABIC_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentBiDiMode = False
      ParentFont = False
      TabOrder = 0
      isLike = True
      EveryLike = False
      isString = True
      FieldName = 'Firstname'
      TableName = 'Adrs'
      CodeField = 'Code'
      TitleField = 'Title'
      Connection = dm.YeganehConnection
    end
    object YWhereEdit1: TYWhereEdit
      Left = 315
      Top = 39
      Width = 121
      Height = 21
      BiDiMode = bdRightToLeft
      Font.Charset = ARABIC_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentBiDiMode = False
      ParentFont = False
      TabOrder = 1
      isLike = True
      EveryLike = False
      isString = True
      FieldName = 'Lastname'
      TableName = 'Adrs'
      CodeField = 'Code'
      TitleField = 'Title'
      Connection = dm.YeganehConnection
    end
    object YWhereEdit2: TYWhereEdit
      Left = 77
      Top = 4
      Width = 121
      Height = 21
      BiDiMode = bdRightToLeft
      Font.Charset = ARABIC_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentBiDiMode = False
      ParentFont = False
      TabOrder = 5
      isLike = True
      EveryLike = False
      isString = True
      FieldName = 'MobilePhone'
      TableName = 'Adrs'
      CodeField = 'Code'
      TitleField = 'Title'
      Connection = dm.YeganehConnection
    end
    object YWhereEdit3: TYWhereEdit
      Left = 77
      Top = 63
      Width = 121
      Height = 21
      BiDiMode = bdRightToLeft
      Font.Charset = ARABIC_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentBiDiMode = False
      ParentFont = False
      TabOrder = 7
      isLike = True
      EveryLike = False
      isString = True
      FieldName = 'CompanyName'
      TableName = 'Adrs'
      CodeField = 'Code'
      TitleField = 'Title'
      Connection = dm.YeganehConnection
    end
    object YWhereEdit4: TYWhereEdit
      Left = 77
      Top = 93
      Width = 121
      Height = 21
      BiDiMode = bdRightToLeft
      Font.Charset = ARABIC_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentBiDiMode = False
      ParentFont = False
      TabOrder = 8
      isLike = True
      EveryLike = False
      isString = True
      FieldName = 'Address'
      TableName = 'Adrs'
      CodeField = 'Code'
      TitleField = 'Title'
      Connection = dm.YeganehConnection
    end
    object YWhereEdit5: TYWhereEdit
      Left = 315
      Top = 95
      Width = 121
      Height = 21
      BiDiMode = bdRightToLeft
      Font.Charset = ARABIC_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentBiDiMode = False
      ParentFont = False
      TabOrder = 3
      isLike = True
      EveryLike = False
      isString = True
      FieldName = 'WorkPhone'
      TableName = 'Adrs'
      CodeField = 'Code'
      TitleField = 'Title'
      Connection = dm.YeganehConnection
    end
    object YWhereEdit6: TYWhereEdit
      Left = 315
      Top = 123
      Width = 121
      Height = 21
      BiDiMode = bdRightToLeft
      Font.Charset = ARABIC_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentBiDiMode = False
      ParentFont = False
      TabOrder = 4
      isLike = True
      EveryLike = False
      isString = True
      FieldName = 'WorkPhone1'
      TableName = 'Adrs'
      CodeField = 'Code'
      TitleField = 'Title'
      Connection = dm.YeganehConnection
    end
    object YWhereEdit7: TYWhereEdit
      Left = 77
      Top = 33
      Width = 121
      Height = 21
      BiDiMode = bdRightToLeft
      Font.Charset = ARABIC_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentBiDiMode = False
      ParentFont = False
      TabOrder = 6
      isLike = True
      EveryLike = False
      isString = True
      FieldName = 'FaxNumber'
      TableName = 'Adrs'
      CodeField = 'Code'
      TitleField = 'Title'
      Connection = dm.YeganehConnection
    end
    object YWhereEdit8: TYWhereEdit
      Left = 315
      Top = 67
      Width = 121
      Height = 21
      BiDiMode = bdRightToLeft
      Font.Charset = ARABIC_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentBiDiMode = False
      ParentFont = False
      TabOrder = 2
      isLike = True
      EveryLike = False
      isString = True
      FieldName = 'HomePhone'
      TableName = 'Adrs'
      CodeField = 'Code'
      TitleField = 'Title'
      Connection = dm.YeganehConnection
    end
    object YWhereEdit9: TYWhereEdit
      Left = 8
      Top = 123
      Width = 190
      Height = 21
      BiDiMode = bdRightToLeft
      Font.Charset = ARABIC_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentBiDiMode = False
      ParentFont = False
      TabOrder = 9
      isLike = True
      EveryLike = True
      isString = True
      FieldName = 'Address'
      TableName = 'Adrs'
      CodeField = 'Code'
      TitleField = 'Title'
      Connection = dm.YeganehConnection
    end
  end
  object addresses: TADOQuery
    Connection = dm.YeganehConnection
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'select *'
      'from addresses')
    Left = 140
    Top = 280
  end
  object Daddresses: TDataSource
    DataSet = addresses
    Left = 14
    Top = 392
  end
end
