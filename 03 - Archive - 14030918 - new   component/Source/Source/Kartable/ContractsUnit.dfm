inherited frmContracts: TfrmContracts
  Left = 331
  Top = 167
  Caption = #1602#1585#1575#1585#1583#1575#1583#1607#1575
  ClientHeight = 418
  Constraints.MinHeight = 300
  Constraints.MinWidth = 450
  OldCreateOrder = True
  OnActivate = FormActivate
  PixelsPerInch = 96
  TextHeight = 13
  object dbgContractsList: TYDBGrid [0]
    Left = 0
    Top = 65
    Width = 778
    Height = 334
    Cursor = crHandPoint
    TabStop = False
    Align = alClient
    DataSource = DSForm
    Font.Charset = ARABIC_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit]
    ParentFont = False
    ReadOnly = True
    TabOrder = 0
    TitleFont.Charset = ARABIC_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -13
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = [fsBold]
    OnDblClick = dbgContractsListDblClick
    OnTitleClick = dbgContractsListTitleClick
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
    OnNeedColorCondition = dbgContractsListNeedColorCondition
    FooterFields = 'Count'
    Columns = <
      item
        Expanded = False
        FieldName = 'MarketerTitle'
        Title.Alignment = taCenter
        Title.Caption = #1578#1606#1592#1610#1605' '#1705#1606#1606#1583#1607
        Title.Font.Charset = ARABIC_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -11
        Title.Font.Name = 'Tahoma'
        Title.Font.Style = []
        Width = 156
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'BeginDate'
        Title.Alignment = taCenter
        Title.Caption = #1578#1575#1585#1610#1582' '#1588#1585#1608#1593
        Title.Font.Charset = ARABIC_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -11
        Title.Font.Name = 'Tahoma'
        Title.Font.Style = []
        Width = 83
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'EndDate'
        Title.Alignment = taCenter
        Title.Caption = #1578#1575#1585#1610#1582' '#1575#1578#1605#1575#1605
        Title.Font.Charset = ARABIC_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -11
        Title.Font.Name = 'Tahoma'
        Title.Font.Style = []
        Width = 79
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Amount'
        Title.Alignment = taCenter
        Title.Caption = #1605#1576#1604#1594
        Title.Font.Charset = ARABIC_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -11
        Title.Font.Name = 'Tahoma'
        Title.Font.Style = []
        Width = 101
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'ContractTypeTitle'
        Title.Alignment = taCenter
        Title.Caption = #1606#1608#1593' '#1602#1585#1575#1585#1583#1575#1583
        Title.Font.Charset = ARABIC_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -11
        Title.Font.Name = 'Tahoma'
        Title.Font.Style = []
        Width = 124
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'ContractSubTypeTitle'
        Title.Alignment = taCenter
        Title.Caption = #1586#1610#1585#1605#1580#1605#1608#1593#1607' '#1602#1585#1575#1585#1583#1575#1583
        Title.Font.Charset = ARABIC_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -11
        Title.Font.Name = 'Tahoma'
        Title.Font.Style = []
        Visible = False
      end
      item
        Expanded = False
        FieldName = 'ProductTitle'
        Title.Alignment = taCenter
        Title.Caption = #1605#1581#1589#1608#1604' '#1602#1585#1575#1585#1583#1575#1583
        Title.Font.Charset = ARABIC_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -11
        Title.Font.Name = 'Tahoma'
        Title.Font.Style = []
        Width = 110
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'TotalAmount'
        Title.Caption = #1605#1576#1604#1594' '#1705#1604
        Title.Font.Charset = ARABIC_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -11
        Title.Font.Name = 'Tahoma'
        Title.Font.Style = []
        Visible = False
      end
      item
        Expanded = False
        FieldName = 'Comment'
        Title.Caption = #1578#1608#1590#1610#1581#1575#1578
        Title.Font.Charset = ARABIC_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -11
        Title.Font.Name = 'Tahoma'
        Title.Font.Style = []
        Width = 300
        Visible = True
      end>
  end
  object Panel1: TPanel [1]
    Left = 0
    Top = 0
    Width = 778
    Height = 65
    Align = alTop
    TabOrder = 1
    DesignSize = (
      778
      65)
    object Label1: TLabel
      Left = 655
      Top = 8
      Width = 112
      Height = 13
      Anchors = [akTop, akRight]
      Caption = #1580#1587#1578#1580#1608' '#1576#1585' '#1575#1587#1575#1587' '#1587#1578#1608#1606' '
    end
    object Label2: TLabel
      Left = 739
      Top = 32
      Width = 28
      Height = 13
      Anchors = [akTop, akRight]
      Caption = #1605#1602#1583#1575#1585' '
    end
    object Edit1: TEdit
      Left = 616
      Top = 30
      Width = 121
      Height = 21
      Anchors = [akTop, akRight]
      TabOrder = 0
      OnChange = Edit1Change
    end
  end
  object StatusBar1: TStatusBar [2]
    Left = 0
    Top = 399
    Width = 778
    Height = 19
    Panels = <
      item
        Width = 50
      end
      item
        Width = 50
      end>
  end
  inherited DSForm: TDataSource
    DataSet = Dm.YDabir_Select_Contract_By_CustomerID
    Left = 128
    Top = 104
  end
  inherited ActionList: TActionList
    Left = 48
    Top = 104
  end
  inherited Grid_PopupMenu: TPopupMenu
    Left = 135
    Top = 20
  end
end
