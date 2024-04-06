inherited FrAddCashPayment: TFrAddCashPayment
  Left = 639
  Top = 162
  Width = 714
  Height = 621
  Caption = '---'
  Color = clBtnFace
  OldCreateOrder = True
  PixelsPerInch = 96
  TextHeight = 13
  object Label2: TLabel [0]
    Left = 548
    Top = 147
    Width = 63
    Height = 13
    Caption = #1570#1582#1585#1610#1606' '#1605#1576#1575#1583#1604#1575#1578
  end
  object PAccountDeatil: TGroupBox [1]
    Left = 0
    Top = 0
    Width = 698
    Height = 205
    Align = alTop
    Font.Charset = ARABIC_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 0
  end
  object YDBGrid1: TYDBGrid [2]
    Left = 0
    Top = 205
    Width = 698
    Height = 104
    Cursor = crHandPoint
    Align = alTop
    DataSource = dm.DReport_LatestPayment_ByAccountID
    TabOrder = 1
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
    FooterFields = 'Count'
    Columns = <
      item
        Expanded = False
        FieldName = 'Date'
        Title.Caption = #1578#1575#1585#1610#1582
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Time'
        Title.Caption = #1586#1605#1575#1606
        Visible = False
      end
      item
        Expanded = False
        FieldName = 'AccountTitle'
        Title.Caption = #1581#1587#1575#1576
        Width = 154
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Amount'
        Title.Caption = #1605#1576#1604#1594
        Visible = False
      end
      item
        Expanded = False
        FieldName = 'debit'
        Title.Caption = #1576#1583#1607#1705#1575#1585
        Width = 80
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Credit'
        Title.Caption = #1576#1587#1578#1575#1606#1705#1575#1585
        Width = 80
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Comment'
        Title.Caption = #1578#1608#1590#1610#1581#1575#1578
        Width = 118
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'FullName'
        Title.Caption = #1705#1575#1585#1576#1585
        Width = 86
        Visible = True
      end>
  end
  object Panel1: TPanel [3]
    Left = 0
    Top = 442
    Width = 698
    Height = 99
    Align = alClient
    ParentColor = True
    TabOrder = 2
    DesignSize = (
      698
      99)
    object Label5: TLabel
      Left = 328
      Top = 11
      Width = 20
      Height = 13
      Anchors = [akTop, akRight]
      Caption = #1605#1576#1604#1594
      Font.Charset = ARABIC_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object StatusLabel: TLabel
      Left = 593
      Top = 10
      Width = 31
      Height = 13
      Alignment = taRightJustify
      Anchors = [akTop, akRight]
      Caption = #1581#1587#1575#1576
      Font.Charset = ARABIC_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object Label7: TLabel
      Left = 593
      Top = 39
      Width = 21
      Height = 13
      Anchors = [akTop, akRight]
      Caption = #1578#1575#1585#1610#1582
      Font.Charset = ARABIC_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object Label8: TLabel
      Left = 455
      Top = 38
      Width = 31
      Height = 13
      Anchors = [akTop, akRight]
      Caption = #1587#1575#1593#1578
      Font.Charset = ARABIC_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object Label10: TLabel
      Left = 593
      Top = 65
      Width = 29
      Height = 13
      Anchors = [akTop, akRight]
      Caption = #1578#1608#1590#1610#1581
      Font.Charset = ARABIC_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object Label3: TLabel
      Left = 187
      Top = 63
      Width = 37
      Height = 13
      Anchors = [akTop, akRight]
      Caption = #1588' '#1587#1606#1583
      Font.Charset = ARABIC_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object BillMemo: TMemo
      Left = 6
      Top = 7
      Width = 220
      Height = 47
      TabStop = False
      Anchors = [akTop, akRight]
      BevelInner = bvNone
      BevelOuter = bvNone
      BorderStyle = bsNone
      Font.Charset = ARABIC_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentColor = True
      ParentFont = False
      TabOrder = 5
    end
    object DBAmount: TDBEdit
      Left = 230
      Top = 8
      Width = 93
      Height = 21
      Anchors = [akTop, akRight]
      Color = clWhite
      DataField = 'Amount'
      DataSource = dm.DSelect_Payment
      Font.Charset = ARABIC_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 0
      OnChange = DBAmountChange
      OnEnter = TEditEnter
      OnExit = DBAmountExit
    end
    object DBEdit5: TDBEdit
      Left = 369
      Top = 34
      Width = 80
      Height = 21
      Anchors = [akTop, akRight]
      DataField = 'Time'
      DataSource = dm.DSelect_Payment
      Font.Charset = ARABIC_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 1
      OnEnter = TEditEnter
      OnExit = TEditExit
    end
    object MajorAccount: TDBLookupComboBox
      Left = 370
      Top = 8
      Width = 220
      Height = 21
      Anchors = [akTop, akRight]
      BiDiMode = bdLeftToRight
      DataField = 'CreditorAccountID'
      DataSource = dm.DSelect_Payment
      Font.Charset = ARABIC_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      KeyField = 'AccountID'
      ListField = 'AccountTitle'
      ListSource = dm.DSelect_All_Cash_Accounts
      ParentBiDiMode = False
      ParentFont = False
      TabOrder = 2
    end
    object DBEdit2: TDBEdit
      Left = 78
      Top = 61
      Width = 104
      Height = 21
      Anchors = [akTop, akRight]
      Ctl3D = True
      DataField = 'DocumentNo'
      DataSource = dm.DSelect_Payment
      Font.Charset = ARABIC_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentCtl3D = False
      ParentFont = False
      ReadOnly = True
      TabOrder = 3
      OnEnter = TEditEnter
      OnExit = TEditExit
    end
    object DBEdit8: TDBEdit
      Left = 230
      Top = 61
      Width = 360
      Height = 21
      Anchors = [akTop, akRight]
      BiDiMode = bdRightToLeft
      Color = clWhite
      DataField = 'Comment'
      DataSource = dm.DSelect_Payment
      Font.Charset = ARABIC_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentBiDiMode = False
      ParentFont = False
      TabOrder = 4
      OnEnter = TEditEnter
      OnExit = TEditExit
    end
    object DBEdit4: TSolarDatePicker
      Left = 504
      Top = 33
      Width = 86
      Height = 21
      Anchors = [akTop, akRight]
      About = 'Created by : Mohamad Khorsandi'
      BiDiMode = bdLeftToRight
      Color = clWhite
      Font.Charset = ARABIC_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 6
      Enabled = True
      OnEnter = TEditEnter
      OnExit = TEditExit
      DateKind = dkSolar
      CheckInputOnExit = True
      Divider = dSlash
      ShowToDay = True
      MonthObject = moComboBox
      Glyph = gtCalendar
      ShowDefaultDate = False
      AutoCheck = False
      AutoDeleteDelimiter = False
      EnabledDays = [mcSaturday, mcSunday, mcMonday, mcTuesday, mcWednesday, mcThursday, mcFriday]
      MaskEnabled = False
      ColorCaptionStart = 13158600
      ColorCaptionStop = clWhite
      ColorBodyStart = clWhite
      ColorBodyStop = clWhite
      ColorTodayLine = clBlack
      ColorSelectBrush = 14474460
      ColorDisableMonth = clGray
      ColorVacationDay = clRed
      ColorNormalDay = clBlack
      ColorStyle = csWhiteGray
      ButtonStyle = bsRound
      DataSource = dm.DSelect_Payment
      DataField = 'Date'
      DataFieldType = dftSolar
      DataFieldAutoSaveModified = False
    end
  end
  object FinancialNotePanel: TPanel [4]
    Left = 0
    Top = 309
    Width = 698
    Height = 133
    Align = alTop
    ParentColor = True
    TabOrder = 3
  end
  object Panel2: TPanel [5]
    Left = 0
    Top = 541
    Width = 698
    Height = 41
    Align = alBottom
    TabOrder = 4
    DesignSize = (
      698
      41)
    object BitBtn1: TBitBtn
      Left = 18
      Top = 7
      Width = 75
      Height = 28
      Action = AExit
      Caption = #1582#1585#1608#1580
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clNavy
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 0
      Glyph.Data = {
        36040000424D3604000000000000360000002800000010000000100000000100
        2000000000000004000000000000000000000000000000000000FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF000000000000000000FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF000000000000000000FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00000000000000000000000000FF00FF00FF00FF00FF00
        FF00000000000000000000000000FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00000000000000000000000000FF00FF000000
        00000000000000000000FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF000000000000000000000000000000
        000000000000FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF0000000000000000000000
        0000FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF000000000000000000000000000000
        000000000000FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00000000000000000000000000FF00FF000000
        00000000000000000000FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00000000000000000000000000FF00FF00FF00FF00FF00
        FF00000000000000000000000000FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF000000000000000000FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF000000000000000000FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00}
    end
    object DoBtn: TBitBtn
      Left = 563
      Top = 7
      Width = 75
      Height = 28
      Hint = 'Post'
      Anchors = [akTop, akRight]
      Caption = #1579#1576#1578' '
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clNavy
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 1
      OnClick = DoBtnClick
    end
    object PrintBtn: TBitBtn
      Left = 410
      Top = 7
      Width = 75
      Height = 28
      Anchors = [akTop, akRight]
      Caption = #1670#1575#1662
      Enabled = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clNavy
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 2
      OnClick = PrintBtnClick
    end
    object xpBitBtn1: TBitBtn
      Left = 486
      Top = 7
      Width = 75
      Height = 28
      Anchors = [akTop, akRight]
      Caption = #1670#1575#1662' '#1587#1606#1583
      Enabled = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clNavy
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 3
      OnClick = xpBitBtn1Click
    end
  end
  object ActionManager1: TActionManager
    Left = 77
    Top = 396
    StyleName = 'XP Style'
    object Acancel: TDataSetCancel
      Category = 'Dataset'
      Caption = #1575#1606#1589#1585#1575#1601
      Hint = 'Cancel'
      ImageIndex = 8
      ShortCut = 32776
    end
    object asearchCheque: TAction
      Caption = '...'
      ShortCut = 114
    end
    object Action1: TAction
      Caption = 'Action1'
    end
    object Apost: TAction
      Category = 'Dataset'
      Caption = #1584#1582#1610#1585#1607
      ShortCut = 113
      OnExecute = ApostExecute
    end
  end
end
