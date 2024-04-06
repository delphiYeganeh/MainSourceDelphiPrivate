inherited FrPayPart: TFrPayPart
  Left = 491
  Top = 179
  Width = 744
  Height = 529
  Caption = #1662#1585#1583#1575#1582#1578' '#1575#1602#1587#1575#1591
  Color = clBtnFace
  OldCreateOrder = True
  PixelsPerInch = 96
  TextHeight = 13
  object Label2: TLabel [0]
    Left = 629
    Top = 165
    Width = 63
    Height = 13
    Caption = #1570#1582#1585#1610#1606' '#1605#1576#1575#1583#1604#1575#1578
  end
  object Panel2: TPanel [1]
    Left = 0
    Top = 0
    Width = 728
    Height = 34
    Align = alTop
    Font.Charset = ARABIC_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentColor = True
    ParentFont = False
    TabOrder = 0
    DesignSize = (
      728
      34)
    object Label1: TLabel
      Left = 675
      Top = 10
      Width = 48
      Height = 13
      Anchors = [akTop, akRight]
      Caption = #1588#1605#1575#1585#1607' '#1608#1575#1605
    end
    object SearchEdit: TEdit
      Left = 458
      Top = 6
      Width = 211
      Height = 21
      Anchors = [akTop, akRight]
      TabOrder = 0
      OnExit = TEditExit
      OnKeyDown = SearchEditKeyDown
    end
  end
  object Panel1: TPanel [2]
    Left = 0
    Top = 353
    Width = 728
    Height = 96
    Align = alClient
    BevelOuter = bvNone
    Ctl3D = True
    Font.Charset = ARABIC_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentColor = True
    ParentCtl3D = False
    ParentFont = False
    TabOrder = 1
    OnResize = Panel1Resize
    DesignSize = (
      728
      96)
    object Label5: TLabel
      Left = 346
      Top = 14
      Width = 20
      Height = 13
      Caption = #1605#1576#1604#1594
    end
    object StatusLabel: TLabel
      Left = 648
      Top = 10
      Width = 66
      Height = 13
      Alignment = taRightJustify
      Anchors = [akTop, akRight]
      Caption = #1608#1575#1585#1610#1586' '#1576#1607' '#1581#1587#1575#1576
    end
    object Label7: TLabel
      Left = 648
      Top = 39
      Width = 21
      Height = 13
      Anchors = [akTop, akRight]
      Caption = #1578#1575#1585#1610#1582
    end
    object Label8: TLabel
      Left = 444
      Top = 40
      Width = 31
      Height = 13
      Caption = #1587#1575#1593#1578
    end
    object Label12: TLabel
      Left = 10
      Top = 4
      Width = 207
      Height = 30
      AutoSize = False
      Font.Charset = ARABIC_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      WordWrap = True
    end
    object Label15: TLabel
      Left = 648
      Top = 62
      Width = 29
      Height = 13
      Anchors = [akTop, akRight]
      Caption = #1578#1608#1590#1610#1581
    end
    object Label17: TLabel
      Left = 346
      Top = 38
      Width = 28
      Height = 13
      Caption = #1580#1585#1610#1605#1607
    end
    object Label18: TLabel
      Left = 151
      Top = 62
      Width = 37
      Height = 13
      Caption = #1588' '#1587#1606#1583
      Font.Charset = ARABIC_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object Label19: TLabel
      Left = 155
      Top = 38
      Width = 21
      Height = 13
      Caption = #1587#1608#1583
    end
    object Label26: TLabel
      Left = 180
      Top = 8
      Width = 37
      Height = 13
      Caption = 'Label26'
    end
    object DBEdit1: TDBEdit
      Left = 224
      Top = 8
      Width = 117
      Height = 24
      Color = clWhite
      DataField = 'Amount'
      DataSource = dm.DSelect_Payment
      Font.Charset = ARABIC_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      ReadOnly = True
      TabOrder = 0
      OnChange = DBEdit1Change
      OnEnter = TEditEnter
      OnExit = DBEdit1Exit
    end
    object DBEdit5: TDBEdit
      Left = 392
      Top = 35
      Width = 49
      Height = 21
      DataField = 'Time'
      DataSource = dm.DSelect_Payment
      ReadOnly = True
      TabOrder = 1
      OnEnter = TEditEnter
      OnExit = TEditExit
    end
    object MajorAccount: TDBLookupComboBox
      Left = 391
      Top = 8
      Width = 253
      Height = 21
      Anchors = [akLeft, akTop, akRight]
      BiDiMode = bdLeftToRight
      DataField = 'DebtorAccountID'
      DataSource = dm.DSelect_Payment
      KeyField = 'AccountID'
      ListField = 'AccountTitle'
      ListSource = dm.DSelect_Cash_Accounts
      ParentBiDiMode = False
      TabOrder = 2
    end
    object DBEdit12: TDBEdit
      Left = 224
      Top = 62
      Width = 420
      Height = 21
      Anchors = [akLeft, akTop, akRight]
      DataField = 'Comment'
      DataSource = dm.DSelect_LastPart
      TabOrder = 3
    end
    object EAmerce: TYAmountEdit
      Left = 273
      Top = 35
      Width = 68
      Height = 21
      TabOrder = 4
      OnChange = EAmerceChange
    end
    object DBEdit14: TDBEdit
      Left = 18
      Top = 62
      Width = 130
      Height = 21
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
      TabOrder = 5
      OnEnter = TEditEnter
      OnExit = TEditExit
    end
    object DBEdit15: TDBEdit
      Left = 18
      Top = 35
      Width = 130
      Height = 21
      DataField = 'InterestAmount'
      DataSource = dm.DSelect_LastPart
      Font.Charset = ARABIC_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 6
      OnChange = EAmerceChange
    end
    object MonthlyBeginDate: TSolarDatePicker
      Left = 554
      Top = 35
      Width = 90
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
      TabOrder = 7
      Enabled = True
      OnEnter = TEditEnter
      OnExit = DBEdit4Exit
      DateKind = dkSolar
      CheckInputOnExit = False
      Divider = dSlash
      ShowToDay = True
      MonthObject = moPopupMenu
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
  object FinancialNotePanel: TYCheckGroupBox [3]
    Left = 0
    Top = 338
    Width = 728
    Height = 15
    Align = alTop
    Caption = '  '#1575#1591#1604#1575#1593#1575#1578' '#1670#1705' '#1610#1575' '#1581#1608#1575#1604#1607
    Font.Charset = ARABIC_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 2
    MinHeight = 17
    MaxHeight = 150
  end
  object Panel3: TGroupBox [4]
    Left = 0
    Top = 234
    Width = 728
    Height = 104
    Cursor = crHandPoint
    Align = alTop
    Caption = #1575#1591#1604#1575#1593#1575#1578' '#1608#1575#1605' '#1608' '#1570#1582#1585#1610#1606' '#1602#1587#1591
    Ctl3D = True
    Enabled = False
    Font.Charset = ARABIC_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentCtl3D = False
    ParentFont = False
    TabOrder = 3
    DesignSize = (
      728
      104)
    object Label4: TLabel
      Left = 650
      Top = 26
      Width = 48
      Height = 13
      Anchors = [akTop, akRight]
      Caption = #1588#1605#1575#1585#1607' '#1608#1575#1605
      FocusControl = DBEdit3
      Font.Charset = ARABIC_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object Label6: TLabel
      Left = 172
      Top = 52
      Width = 33
      Height = 13
      Anchors = [akTop, akRight]
      Caption = #1606#1608#1593' '#1608#1575#1605
      FocusControl = DBEdit6
      Font.Charset = ARABIC_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object Label9: TLabel
      Left = 468
      Top = 26
      Width = 39
      Height = 13
      Anchors = [akTop, akRight]
      Caption = #1578#1575#1585#1610#1582' '#1608#1575#1605
      FocusControl = DBEdit7
      Font.Charset = ARABIC_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object Label10: TLabel
      Left = 650
      Top = 52
      Width = 73
      Height = 13
      Anchors = [akTop, akRight]
      Caption = #1578' '#1588#1585#1608#1593' '#1575#1602#1587#1575#1591
      FocusControl = DBEdit8
      Font.Charset = ARABIC_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object Label11: TLabel
      Left = 319
      Top = 26
      Width = 38
      Height = 13
      Anchors = [akTop, akRight]
      Caption = #1605#1576#1604#1594' '#1608#1575#1605
      FocusControl = DBEdit9
      Font.Charset = ARABIC_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object Label13: TLabel
      Left = 319
      Top = 52
      Width = 22
      Height = 13
      Anchors = [akTop, akRight]
      Caption = #1578#1575#1582#1610#1585
      FocusControl = DBEdit10
      Font.Charset = ARABIC_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object Label14: TLabel
      Left = 468
      Top = 77
      Width = 65
      Height = 13
      Anchors = [akTop, akRight]
      Caption = #1578#1575#1585#1610#1582' '#1587#1585#1585#1587#1610#1583
      FocusControl = DBEdit11
      Font.Charset = ARABIC_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object Label16: TLabel
      Left = 650
      Top = 77
      Width = 58
      Height = 13
      Anchors = [akTop, akRight]
      Caption = #1588#1605#1575#1585#1607' '#1602#1587#1591
      FocusControl = DBEdit13
      Font.Charset = ARABIC_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object Label3: TLabel
      Left = 319
      Top = 77
      Width = 48
      Height = 13
      Anchors = [akTop, akRight]
      Caption = #1605#1576#1604#1594' '#1602#1587#1591
      FocusControl = DBEdit2
      Font.Charset = ARABIC_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object Label20: TLabel
      Left = 468
      Top = 51
      Width = 90
      Height = 13
      Anchors = [akTop, akRight]
      Caption = #1588#1605#1575#1585#1607' '#1587#1585#1610#1575#1604' '#1602#1587#1591
      FocusControl = DBEdit4
      Font.Charset = ARABIC_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object Label21: TLabel
      Left = 170
      Top = 77
      Width = 51
      Height = 13
      Anchors = [akTop, akRight]
      Caption = #1588#1605#1575#1585#1607' '#1670#1705
      FocusControl = DBEdit6
      Font.Charset = ARABIC_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object DBEdit3: TDBEdit
      Left = 567
      Top = 22
      Width = 80
      Height = 21
      Anchors = [akTop, akRight]
      DataField = 'LoanNO'
      DataSource = dm.DSelect_LastPart
      Font.Charset = ARABIC_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 0
    end
    object DBEdit6: TDBEdit
      Left = 28
      Top = 47
      Width = 140
      Height = 21
      Anchors = [akTop, akRight]
      DataField = 'LoanTypeTitle'
      DataSource = dm.DSelect_LastPart
      Font.Charset = ARABIC_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 1
    end
    object DBEdit7: TDBEdit
      Left = 384
      Top = 22
      Width = 80
      Height = 21
      Anchors = [akTop, akRight]
      BiDiMode = bdLeftToRight
      DataField = 'LoanDate'
      DataSource = dm.DSelect_LastPart
      Font.Charset = ARABIC_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentBiDiMode = False
      ParentFont = False
      TabOrder = 2
    end
    object DBEdit8: TDBEdit
      Left = 567
      Top = 47
      Width = 80
      Height = 21
      Anchors = [akTop, akRight]
      BiDiMode = bdLeftToRight
      DataField = 'PartsBeginDate'
      DataSource = dm.DSelect_LastPart
      Font.Charset = ARABIC_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentBiDiMode = False
      ParentFont = False
      TabOrder = 3
    end
    object DBEdit9: TDBEdit
      Left = 235
      Top = 22
      Width = 80
      Height = 21
      Anchors = [akTop, akRight]
      DataField = 'LoanAmount'
      DataSource = dm.DSelect_LastPart
      Font.Charset = ARABIC_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 4
    end
    object DBEdit10: TDBEdit
      Left = 235
      Top = 47
      Width = 80
      Height = 21
      Anchors = [akTop, akRight]
      DataField = 'delay'
      DataSource = dm.DSelect_LastPart
      Font.Charset = ARABIC_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 5
    end
    object DBEdit11: TDBEdit
      Left = 384
      Top = 73
      Width = 80
      Height = 21
      Anchors = [akTop, akRight]
      BiDiMode = bdLeftToRight
      DataField = 'MatureDate'
      DataSource = dm.DSelect_LastPart
      Font.Charset = ARABIC_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentBiDiMode = False
      ParentFont = False
      TabOrder = 6
    end
    object DBEdit13: TDBEdit
      Left = 567
      Top = 73
      Width = 80
      Height = 21
      Anchors = [akTop, akRight]
      DataField = 'OrderNo'
      DataSource = dm.DSelect_LastPart
      Font.Charset = ARABIC_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 7
    end
    object DBEdit2: TDBEdit
      Left = 235
      Top = 73
      Width = 80
      Height = 21
      Anchors = [akTop, akRight]
      DataField = 'Amount'
      DataSource = dm.DSelect_LastPart
      Font.Charset = ARABIC_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 8
    end
    object DBEdit4: TDBEdit
      Left = 384
      Top = 47
      Width = 80
      Height = 21
      Anchors = [akTop, akRight]
      DataField = 'ForcePaymentID'
      DataSource = dm.DSelect_LastPart
      Font.Charset = ARABIC_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 9
    end
    object DBEdit16: TDBEdit
      Left = 87
      Top = 73
      Width = 80
      Height = 21
      Anchors = [akTop, akRight]
      DataField = 'NoteNo'
      DataSource = dm.DSelect_LastPart
      Font.Charset = ARABIC_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 10
    end
  end
  object PAccountDeatil: TPanel [5]
    Left = 0
    Top = 34
    Width = 728
    Height = 200
    Align = alTop
    BevelOuter = bvNone
    Font.Charset = ARABIC_CHARSET
    Font.Color = clWindowText
    Font.Height = -8
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentColor = True
    ParentFont = False
    TabOrder = 4
  end
  object Panel4: TPanel [6]
    Left = 0
    Top = 449
    Width = 728
    Height = 41
    Align = alBottom
    TabOrder = 5
    DesignSize = (
      728
      41)
    object Label22: TLabel
      Left = 119
      Top = 4
      Width = 124
      Height = 13
      BiDiMode = bdLeftToRight
      Caption = '..\Reports\PerfrajRep.fr3'
      ParentBiDiMode = False
    end
    object Label23: TLabel
      Left = 120
      Top = 20
      Width = 154
      Height = 13
      BiDiMode = bdLeftToRight
      Caption = '..\Reports\Bill_PaymentPrint.fr3'
      ParentBiDiMode = False
    end
    object Label24: TLabel
      Left = 281
      Top = 5
      Width = 29
      Height = 13
      Caption = #1662#1585#1601#1585#1575#1688':'
    end
    object Label25: TLabel
      Left = 281
      Top = 19
      Width = 48
      Height = 13
      Caption = #1670#1575#1662' '#1602#1576#1590':'
    end
    object DoBtn: TBitBtn
      Left = 648
      Top = 6
      Width = 75
      Height = 28
      Hint = 'Post'
      Anchors = [akTop, akRight]
      Caption = #1608#1575#1585#1610#1586
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clNavy
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 0
      OnClick = DoBtnClick
    end
    object PrintBtn: TBitBtn
      Left = 414
      Top = 6
      Width = 75
      Height = 28
      Anchors = [akTop, akRight]
      Caption = #1670#1575#1662' '#1602#1576#1590
      Enabled = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clNavy
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 1
      OnClick = PrintBtnClick
    end
    object PerferazeBtn: TBitBtn
      Left = 570
      Top = 6
      Width = 75
      Height = 28
      Anchors = [akTop, akRight]
      Caption = #1662#1585#1601#1585#1575#1688
      Enabled = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clNavy
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 2
      OnClick = PerferazeBtnClick
    end
    object DocPrintBtn: TBitBtn
      Left = 492
      Top = 6
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
      OnClick = DocPrintBtnClick
    end
    object BitBtn1: TBitBtn
      Left = 10
      Top = 6
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
      TabOrder = 4
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
  end
  object ActionManager1: TActionManager
    Left = 197
    Top = 52
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
  object RepPopMnu: TPopupMenu
    MenuAnimation = [maRightToLeft, maTopToBottom]
    TrackButton = tbLeftButton
    Left = 24
    Top = 60
    object NShow: TMenuItem
      AutoHotkeys = maAutomatic
      Caption = #1662#1610#1588' '#1606#1605#1575#1610#1588' '#1608' '#1670#1575#1662'   F9'
      OnClick = NShowClick
    end
    object NPrint: TMenuItem
      Tag = 1
      AutoHotkeys = maAutomatic
      Caption = #1670#1575#1662' '#1576#1583#1608#1606' '#1662#1610#1588' '#1606#1605#1575#1610#1588'   Ctrl+F9'
      OnClick = NShowClick
    end
    object NDesign: TMenuItem
      Tag = 2
      AutoHotkeys = maAutomatic
      Caption = #1591#1585#1575#1581#1610' '#1711#1586#1575#1585#1588'   Alt+F9'
      OnClick = NShowClick
    end
    object NOldVersion: TMenuItem
      Caption = #1662#1585#1601#1585#1575#1688' '#1608#1585#1688#1606' '#1602#1583#1610#1605
      OnClick = NShowClick
    end
    object N8: TMenuItem
      Caption = '-'
    end
    object N11: TMenuItem
      Caption = #1591#1585#1575#1581#1610' '#1662#1610#1588' '#1601#1585#1590
      OnClick = N11Click
    end
  end
  object PopupMenuBill: TPopupMenu
    MenuAnimation = [maRightToLeft, maTopToBottom]
    TrackButton = tbLeftButton
    Left = 152
    Top = 108
    object BillShow: TMenuItem
      AutoHotkeys = maAutomatic
      Caption = #1662#1610#1588' '#1606#1605#1575#1610#1588' '#1608' '#1670#1575#1662'   F9'
      OnClick = BillShowClick
    end
    object BillPrint: TMenuItem
      Tag = 1
      AutoHotkeys = maAutomatic
      Caption = #1670#1575#1662' '#1576#1583#1608#1606' '#1662#1610#1588' '#1606#1605#1575#1610#1588'   Ctrl+F9'
      OnClick = BillShowClick
    end
    object BillDesign: TMenuItem
      Tag = 2
      AutoHotkeys = maAutomatic
      Caption = #1591#1585#1575#1581#1610' '#1711#1586#1575#1585#1588'   Alt+F9'
      OnClick = BillShowClick
    end
    object N1: TMenuItem
      Caption = #1670#1575#1662' '#1602#1576#1590' '#1608#1585#1688#1606' '#1602#1583#1610#1605
      OnClick = N1Click
    end
    object MenuItem5: TMenuItem
      Caption = '-'
    end
    object MenuItem6: TMenuItem
      Caption = #1591#1585#1575#1581#1610' '#1662#1610#1588' '#1601#1585#1590
      OnClick = MenuItem6Click
    end
  end
end
