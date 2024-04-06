inherited FrFieldAccess: TFrFieldAccess
  Left = 315
  Top = 197
  Caption = #1583#1587#1578#1585#1587#1610' '#1601#1585#1605' '#1607#1575
  ClientWidth = 650
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel [0]
    Left = 0
    Top = 0
    Width = 650
    Height = 41
    Align = alTop
    TabOrder = 0
    object Label1: TLabel
      Left = 587
      Top = 11
      Width = 36
      Height = 13
      Caption = #1606#1575#1605' '#1705#1575#1585#1576#1585
    end
    object DBLookupComboBox1: TDBLookupComboBox
      Left = 240
      Top = 8
      Width = 329
      Height = 21
      KeyField = 'Id'
      ListField = 'Title'
      ListSource = dm.Dusers
      TabOrder = 0
      OnClick = DBLookupComboBox1Click
    end
  end
  object Panel3: TPanel [1]
    Left = 432
    Top = 41
    Width = 218
    Height = 403
    Align = alRight
    Caption = 'Panel3'
    TabOrder = 1
    object YDBGrid2: TYDBGrid
      Left = 1
      Top = 1
      Width = 216
      Height = 401
      Align = alClient
      Color = 14671871
      DataSource = DSForm
      TabOrder = 0
      TitleFont.Charset = ARABIC_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'Tahoma'
      TitleFont.Style = []
      OnCellClick = YDBGrid2CellClick
      YeganehColor = True
      YeganehFinish = False
      PageNumber = False
      RecordNumber = False
      HasTime = False
      Oriention = poPortrait
      HasDate = False
      HasIndex = False
      PrintTitle = #1593#1606#1608#1575#1606
      InvertFarsiDate = True
      TitleSort = True
      AutoInsert = False
      Columns = <
        item
          Color = 16434943
          Expanded = False
          FieldName = 'Description'
          ReadOnly = True
          Title.Alignment = taCenter
          Title.Caption = #1606#1575#1605' '#1601#1585#1605
          Width = 189
          Visible = True
        end>
    end
  end
  object YDBGrid1: TYDBGrid [2]
    Left = 0
    Top = 41
    Width = 432
    Height = 403
    Cursor = crHandPoint
    Align = alClient
    DataSource = dm.DSelect_FieldAccess_by_TableID
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
    PrintTitle = #1604#1610#1587#1578' '#1578#1607#1610#1607' '#1588#1583#1607' '#1578#1608#1587#1591' '#1606#1585#1605' '#1575#1601#1586#1575#1585' '#1610#1711#1575#1606#1607
    InvertFarsiDate = True
    TitleSort = True
    AutoInsert = False
    Columns = <
      item
        Expanded = False
        FieldName = 'FieldTitle'
        ReadOnly = True
        Title.Caption = #1606#1575#1605' '#1601#1610#1604#1583
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'AccessTypeTitle'
        Title.Caption = #1606#1608#1593' '#1583#1587#1578#1585#1587#1610
        Visible = True
      end>
  end
  object Panel2: TPanel [3]
    Left = 0
    Top = 444
    Width = 650
    Height = 41
    Align = alBottom
    TabOrder = 3
    object xpBitBtn1: TxpBitBtn
      Left = 16
      Top = 8
      Width = 87
      Height = 27
      startColor = 16645629
      EndColor = 14666957
      Caption = #1582#1585#1608#1580
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clNavy
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      Gradient = True
      TabOrder = 0
      TabStop = True
      OnClick = xpBitBtn1Click
    end
  end
  inherited DSForm: TDataSource
    DataSet = dm.get_userTable
    Left = 72
    Top = 112
  end
end
