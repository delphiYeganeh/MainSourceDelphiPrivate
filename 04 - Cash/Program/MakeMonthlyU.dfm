inherited FrMakeMonthly: TFrMakeMonthly
  Left = 618
  Top = 141
  BorderStyle = bsDialog
  Caption = #1578#1606#1592#1610#1605' '#1605#1575#1607#1610#1575#1606#1607' '#1576#1585#1575#1610' '#1581#1587#1575#1576' '#1607#1575
  ClientHeight = 432
  ClientWidth = 494
  OldCreateOrder = True
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel [0]
    Left = 0
    Top = 391
    Width = 494
    Height = 41
    Align = alBottom
    TabOrder = 0
    DesignSize = (
      494
      41)
    object BitBtn1: TBitBtn
      Left = 400
      Top = 8
      Width = 75
      Height = 25
      Anchors = [akTop, akRight]
      Caption = #1578#1575#1610#1610#1583
      Font.Charset = ARABIC_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 0
      OnClick = BitBtn1Click
      Kind = bkOK
    end
    object BitBtn2: TBitBtn
      Left = 320
      Top = 8
      Width = 75
      Height = 25
      Anchors = [akTop, akRight]
      Caption = #1575#1606#1589#1585#1575#1601
      Font.Charset = ARABIC_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 1
      Kind = bkCancel
    end
  end
  object Panel2: TPanel [1]
    Left = 0
    Top = 0
    Width = 494
    Height = 391
    Align = alClient
    TabOrder = 1
    DesignSize = (
      494
      391)
    object Label2: TLabel
      Left = 384
      Top = 316
      Width = 34
      Height = 13
      Anchors = [akRight, akBottom]
      Caption = #1575#1586' '#1578#1575#1585#1610#1582' '
      Font.Charset = ARABIC_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object Label3: TLabel
      Left = 250
      Top = 316
      Width = 30
      Height = 13
      Anchors = [akRight, akBottom]
      Caption = #1578#1575' '#1578#1575#1585#1610#1582
      Font.Charset = ARABIC_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object Label1: TLabel
      Left = 212
      Top = 8
      Width = 84
      Height = 13
      Anchors = [akTop, akRight]
      Caption = #1578#1606#1592#1610#1605' '#1581#1602' '#1593#1590#1608#1610#1578
      Font.Charset = ARABIC_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object Label4: TLabel
      Left = 53
      Top = 368
      Width = 371
      Height = 13
      Anchors = [akRight, akBottom]
      Caption = 
        #1576#1585#1575#1610' '#1578#1606#1592#1610#1605' '#1578#1575#1585#1582' '#1587#1585#1585#1587#1610#1583' '#1608' '#1605#1576#1604#1594' '#1605#1575#1607#1610#1575#1606#1607' '#1607#1575' '#1576#1607' '#1575#1591#1604#1575#1593#1575#1578' '#1581#1587#1575#1576' '#1575#1601#1585#1575#1583' '#1605 +
        #1585#1575#1580#1593#1607' '#1606#1605#1575#1610#1610#1583
      Font.Charset = ARABIC_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object lbl1: TLabel
      Left = 313
      Top = 104
      Width = 78
      Height = 13
      Caption = #1578#1605#1575#1605#1610' '#1581#1587#1575#1576' '#1607#1575
      Enabled = False
    end
    object lbl2: TLabel
      Left = 70
      Top = 104
      Width = 89
      Height = 13
      Caption = #1581#1587#1575#1576' '#1607#1575#1610' '#1605#1606#1578#1582#1576
      Enabled = False
    end
    object ProgressBar: TProgressBar
      Left = 16
      Top = 345
      Width = 457
      Height = 17
      Anchors = [akRight, akBottom]
      TabOrder = 5
    end
    object AllAcount: TRadioButton
      Left = 376
      Top = 25
      Width = 97
      Height = 17
      Anchors = [akTop, akRight]
      Caption = #1705#1604#1610#1607' '#1581#1587#1575#1576' '#1607#1575
      Font.Charset = ARABIC_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 0
      OnClick = SelectionAccountsClick
    end
    object oneAccount: TRadioButton
      Left = 376
      Top = 51
      Width = 97
      Height = 17
      Anchors = [akTop, akRight]
      Caption = #1581#1587#1575#1576' '#1588#1605#1575#1585#1607' :'
      Checked = True
      Font.Charset = ARABIC_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 1
      TabStop = True
      OnClick = SelectionAccountsClick
    end
    object SearchEdit: TEdit
      Left = 147
      Top = 49
      Width = 201
      Height = 21
      Anchors = [akTop, akRight]
      Font.Charset = ARABIC_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 2
    end
    object datefrom: TSolarDatePicker
      Left = 294
      Top = 313
      Width = 90
      Height = 21
      Anchors = [akRight, akBottom]
      About = 'Created by : Mohamad Khorsandi'
      BiDiMode = bdLeftToRight
      TabOrder = 3
      Enabled = True
      OnEnter = datefromEnter
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
      DataFieldType = dftSolar
      DataFieldAutoSaveModified = False
    end
    object dateTo: TSolarDatePicker
      Left = 156
      Top = 313
      Width = 90
      Height = 21
      Anchors = [akRight, akBottom]
      About = 'Created by : Mohamad Khorsandi'
      BiDiMode = bdLeftToRight
      TabOrder = 4
      Enabled = True
      OnEnter = datefromEnter
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
      DataFieldType = dftSolar
      DataFieldAutoSaveModified = False
    end
    object SelectionAccounts: TRadioButton
      Left = 360
      Top = 80
      Width = 113
      Height = 17
      Caption = #1581#1587#1575#1576' '#1607#1575#1610' '#1605#1606#1578#1582#1576
      TabOrder = 6
      OnClick = SelectionAccountsClick
    end
    object AllAccounts: TListBox
      Left = 264
      Top = 120
      Width = 185
      Height = 149
      Anchors = [akLeft, akTop, akBottom]
      Enabled = False
      ItemHeight = 13
      MultiSelect = True
      Sorted = True
      TabOrder = 7
      OnDblClick = AllAccountsDblClick
    end
    object SelectedAccounts: TListBox
      Left = 24
      Top = 120
      Width = 185
      Height = 149
      Anchors = [akLeft, akTop, akBottom]
      Enabled = False
      ItemHeight = 13
      MultiSelect = True
      Sorted = True
      TabOrder = 8
      OnDblClick = SelectedAccountsDblClick
    end
    object btn1: TButton
      Left = 216
      Top = 184
      Width = 41
      Height = 33
      Caption = '>'
      Enabled = False
      TabOrder = 9
      OnClick = btn1Click
    end
    object btn2: TButton
      Left = 216
      Top = 224
      Width = 41
      Height = 33
      Caption = '<'
      Enabled = False
      TabOrder = 10
      OnClick = btn2Click
    end
    object AllAccountsSearch: TEdit
      Left = 264
      Top = 276
      Width = 185
      Height = 21
      Anchors = [akLeft, akBottom]
      Enabled = False
      TabOrder = 11
      OnChange = AllAccountsSearchChange
    end
    object SelectedAccountsSearch: TEdit
      Left = 24
      Top = 276
      Width = 185
      Height = 21
      Anchors = [akLeft, akBottom]
      Enabled = False
      TabOrder = 12
      OnChange = SelectedAccountsSearchChange
    end
  end
  inherited ahmadvand: TActionList
    Left = 21
    Top = 3
  end
  inherited Grid_PopupMenu: TPopupMenu
    Top = 4
  end
end
