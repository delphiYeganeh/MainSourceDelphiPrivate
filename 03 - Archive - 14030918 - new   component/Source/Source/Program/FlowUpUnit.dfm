inherited frmFlowUp: TfrmFlowUp
  Left = 308
  Top = 135
  Caption = #1575#1602#1583#1575#1605#1575#1578
  ClientHeight = 478
  OldCreateOrder = True
  OnActivate = FormActivate
  PixelsPerInch = 96
  TextHeight = 13
  object dbgFollow: TYDBGrid [0]
    Left = 0
    Top = 65
    Width = 778
    Height = 394
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
    OnTitleClick = dbgFollowTitleClick
    YeganehColor = False
    YeganehFinish = False
    PageNumber = False
    RecordNumber = False
    HasTime = False
    Oriention = poPortrait
    HasDate = False
    HasIndex = False
    PrintTitle = #1575#1602#1583#1575#1605#1575#1578' '#1605#1588#1578#1585#1610#1575#1606
    InvertFarsiDate = True
    TitleSort = True
    AutoInsert = False
    OnNeedColorCondition = dbgFollowNeedColorCondition
    FooterFields = 'Count'
    Columns = <
      item
        Expanded = False
        FieldName = 'MarketerTitle'
        Title.Alignment = taCenter
        Title.Caption = #1576#1575#1586#1575#1585#1610#1575#1576
        Title.Font.Charset = ARABIC_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -11
        Title.Font.Name = 'Tahoma'
        Title.Font.Style = []
        Width = 99
        Visible = True
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'ActionTypeTitle'
        Title.Alignment = taCenter
        Title.Caption = #1606#1608#1593' '#1575#1602#1583#1575#1605
        Title.Font.Charset = ARABIC_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -11
        Title.Font.Name = 'Tahoma'
        Title.Font.Style = []
        Width = 100
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'ToDoDate'
        Title.Alignment = taCenter
        Title.Caption = #1578#1575#1585#1610#1582' '#1575#1606#1580#1575#1605
        Title.Font.Charset = ARABIC_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -11
        Title.Font.Name = 'Tahoma'
        Title.Font.Style = []
        Width = 67
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'DoneDate'
        Title.Alignment = taCenter
        Title.Caption = #1578#1575#1585#1610#1582' '#1608#1575#1602#1593#1610' '#1575#1606#1580#1575#1605
        Title.Font.Charset = ARABIC_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -11
        Title.Font.Name = 'Tahoma'
        Title.Font.Style = []
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'ToDoTime'
        Title.Alignment = taCenter
        Title.Caption = #1587#1575#1593#1578
        Title.Font.Charset = ARABIC_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -11
        Title.Font.Name = 'Tahoma'
        Title.Font.Style = []
        Width = 46
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Comment'
        Title.Alignment = taCenter
        Title.Caption = #1578#1608#1590#1610#1581
        Title.Font.Charset = ARABIC_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -11
        Title.Font.Name = 'Tahoma'
        Title.Font.Style = []
        Width = 236
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'DoneStatusTitle'
        Title.Alignment = taCenter
        Title.Caption = #1608#1590#1593#1610#1578' '#1575#1606#1580#1575#1605
        Title.Font.Charset = ARABIC_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -11
        Title.Font.Name = 'Tahoma'
        Title.Font.Style = []
        Width = 100
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'SuccessChance'
        Title.Alignment = taCenter
        Title.Caption = #1588#1575#1606#1587
        Title.Font.Charset = ARABIC_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -11
        Title.Font.Name = 'Tahoma'
        Title.Font.Style = []
        Width = 50
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'DoneComment'
        Title.Alignment = taCenter
        Title.Caption = #1578#1608#1590#1610#1581' '#1575#1606#1580#1575#1605' '
        Title.Font.Charset = ARABIC_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -11
        Title.Font.Name = 'Tahoma'
        Title.Font.Style = []
        Width = 173
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
    object Label1: TLabel
      Left = 655
      Top = 8
      Width = 112
      Height = 13
      Caption = #1580#1587#1578#1580#1608' '#1576#1585' '#1575#1587#1575#1587' '#1587#1578#1608#1606' '
    end
    object Label2: TLabel
      Left = 739
      Top = 32
      Width = 28
      Height = 13
      Caption = #1605#1602#1583#1575#1585' '
    end
    object Edit1: TEdit
      Left = 616
      Top = 30
      Width = 121
      Height = 21
      TabOrder = 0
      OnChange = Edit1Change
    end
  end
  object StatusBar1: TStatusBar [2]
    Left = 0
    Top = 459
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
end
