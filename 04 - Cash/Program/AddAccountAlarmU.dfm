inherited FrAddAccountAlarm: TFrAddAccountAlarm
  Left = 864
  Top = 504
  Width = 700
  Height = 447
  Caption = #1583#1585#1580' '#1607#1588#1583#1575#1585
  OldCreateOrder = True
  OnClose = nil
  PixelsPerInch = 96
  TextHeight = 13
  object Label2: TLabel [0]
    Left = 548
    Top = 147
    Width = 63
    Height = 13
    Caption = #1570#1582#1585#1610#1606' '#1605#1576#1575#1583#1604#1575#1578
  end
  object Panel2: TPanel [1]
    Left = 0
    Top = 0
    Width = 684
    Height = 35
    Align = alTop
    Font.Charset = ARABIC_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 0
    DesignSize = (
      684
      35)
    object Label1: TLabel
      Left = 611
      Top = 11
      Width = 64
      Height = 13
      Anchors = [akTop, akRight]
      Caption = #1588#1605#1575#1585#1607' '#1581#1587#1575#1576
    end
    object SearchEdit: TEdit
      Left = 432
      Top = 7
      Width = 170
      Height = 21
      Anchors = [akTop, akRight]
      TabOrder = 0
      OnExit = TEditExit
      OnKeyDown = SearchEditKeyDown
    end
  end
  object PAccountDeatil: TPanel [2]
    Left = 0
    Top = 35
    Width = 684
    Height = 192
    Align = alTop
    Font.Charset = ARABIC_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 1
  end
  object Panel1: TPanel [3]
    Left = 0
    Top = 367
    Width = 684
    Height = 41
    Align = alBottom
    TabOrder = 2
    object BitBtn2: TBitBtn
      Left = 446
      Top = 7
      Width = 75
      Height = 28
      Hint = 'Cancel'
      Caption = #1575#1606#1589#1585#1575#1601
      Font.Charset = ARABIC_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 0
      OnClick = BitBtn2Click
    end
    object DoBtn: TBitBtn
      Left = 603
      Top = 7
      Width = 75
      Height = 28
      Hint = 'Post'
      Caption = #1584#1582#1610#1585#1607' '#1607#1588#1583#1575#1585
      Font.Charset = ARABIC_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 1
      OnClick = DoBtnClick
    end
    object BitBtn1: TBitBtn
      Left = 524
      Top = 7
      Width = 75
      Height = 28
      Hint = 'Post'
      Caption = #1581#1584#1601' '#1607#1588#1583#1575#1585
      Font.Charset = ARABIC_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 2
      OnClick = BitBtn1Click
    end
  end
  object Panel3: TPanel [4]
    Left = 0
    Top = 227
    Width = 684
    Height = 140
    Align = alClient
    TabOrder = 3
    DesignSize = (
      684
      140)
    object Label3: TLabel
      Left = 586
      Top = 14
      Width = 88
      Height = 13
      Anchors = [akTop, akRight]
      Caption = ' '#1578#1575#1585#1610#1582' '#1588#1585#1608#1593' '#1606#1605#1575#1610#1588
      Font.Charset = ARABIC_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object Label4: TLabel
      Left = 404
      Top = 15
      Width = 80
      Height = 13
      Anchors = [akTop, akRight]
      Caption = #1578#1575#1585#1610#1582' '#1575#1578#1605#1575#1605' '#1606#1605#1575#1610#1588
      Font.Charset = ARABIC_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object Label5: TLabel
      Left = 586
      Top = 46
      Width = 54
      Height = 13
      Anchors = [akTop, akRight]
      Caption = #1605#1578#1606' '#1607#1588#1583#1575#1585
      Font.Charset = ARABIC_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object DBMemo1: TDBMemo
      Left = 172
      Top = 44
      Width = 409
      Height = 79
      Anchors = [akTop, akRight]
      DataField = 'AlarmText'
      DataSource = dm.DSelect_Account
      Font.Charset = ARABIC_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 0
    end
    object DBEdit1: TSolarDatePicker
      Left = 492
      Top = 12
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
      TabOrder = 1
      Enabled = True
      OnExit = TEditExit
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
      DataSource = dm.DSelect_Account
      DataField = 'AlarmBeginDate'
      DataFieldType = dftSolar
      DataFieldAutoSaveModified = False
    end
    object DBEdit2: TSolarDatePicker
      Left = 308
      Top = 12
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
      TabOrder = 2
      Enabled = True
      OnExit = TEditExit
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
      DataSource = dm.DSelect_Account
      DataField = 'AlarmEndDate'
      DataFieldType = dftSolar
      DataFieldAutoSaveModified = False
    end
  end
end
