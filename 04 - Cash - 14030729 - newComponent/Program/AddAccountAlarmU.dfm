inherited FrAddAccountAlarm: TFrAddAccountAlarm
  Left = 763
  Top = 268
  Width = 750
  Height = 484
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
    Width = 734
    Height = 39
    Align = alTop
    Font.Charset = ARABIC_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 0
    DesignSize = (
      734
      39)
    object Label1: TLabel
      Left = 653
      Top = 6
      Width = 72
      Height = 14
      Anchors = [akTop, akRight]
      Caption = #1588#1605#1575#1585#1607' '#1581#1587#1575#1576
      Font.Charset = ARABIC_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object SearchEdit: TEdit
      Left = 315
      Top = 0
      Width = 330
      Height = 22
      Anchors = [akTop, akRight]
      Font.Charset = ARABIC_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 0
      OnExit = TEditExit
      OnKeyDown = SearchEditKeyDown
    end
  end
  object PAccountDeatil: TPanel [2]
    Left = 0
    Top = 39
    Width = 734
    Height = 234
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
    Top = 404
    Width = 734
    Height = 41
    Align = alBottom
    TabOrder = 2
    DesignSize = (
      734
      41)
    object BitBtn2: TAdvGlowButton
      Left = 432
      Top = 7
      Width = 84
      Height = 28
      Hint = 'Cancel'
      Anchors = [akRight, akBottom]
      Caption = #1575#1606#1589#1585#1575#1601
      Font.Charset = ARABIC_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Tahoma'
      Font.Style = []
      ImageIndex = 1
      Images = dm.ImageList_MainNew
      NotesFont.Charset = DEFAULT_CHARSET
      NotesFont.Color = clWindowText
      NotesFont.Height = -11
      NotesFont.Name = 'Tahoma'
      NotesFont.Style = []
      ParentFont = False
      TabOrder = 0
      OnClick = BitBtn2Click
      Appearance.ColorChecked = 16111818
      Appearance.ColorCheckedTo = 16367008
      Appearance.ColorDisabled = 15921906
      Appearance.ColorDisabledTo = 15921906
      Appearance.ColorDown = 16111818
      Appearance.ColorDownTo = 16367008
      Appearance.ColorHot = 16117985
      Appearance.ColorHotTo = 16372402
      Appearance.ColorMirrorHot = 16107693
      Appearance.ColorMirrorHotTo = 16775412
      Appearance.ColorMirrorDown = 16102556
      Appearance.ColorMirrorDownTo = 16768988
      Appearance.ColorMirrorChecked = 16102556
      Appearance.ColorMirrorCheckedTo = 16768988
      Appearance.ColorMirrorDisabled = 11974326
      Appearance.ColorMirrorDisabledTo = 15921906
    end
    object DoBtn: TAdvGlowButton
      Left = 616
      Top = 7
      Width = 110
      Height = 28
      Hint = 'Post'
      Anchors = [akRight, akBottom]
      Caption = #1584#1582#1610#1585#1607' '#1607#1588#1583#1575#1585
      Font.Charset = ARABIC_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Tahoma'
      Font.Style = []
      ImageIndex = 147
      Images = dm.LetterImages_New
      NotesFont.Charset = DEFAULT_CHARSET
      NotesFont.Color = clWindowText
      NotesFont.Height = -11
      NotesFont.Name = 'Tahoma'
      NotesFont.Style = []
      ParentFont = False
      TabOrder = 1
      OnClick = DoBtnClick
      Appearance.ColorChecked = 16111818
      Appearance.ColorCheckedTo = 16367008
      Appearance.ColorDisabled = 15921906
      Appearance.ColorDisabledTo = 15921906
      Appearance.ColorDown = 16111818
      Appearance.ColorDownTo = 16367008
      Appearance.ColorHot = 16117985
      Appearance.ColorHotTo = 16372402
      Appearance.ColorMirrorHot = 16107693
      Appearance.ColorMirrorHotTo = 16775412
      Appearance.ColorMirrorDown = 16102556
      Appearance.ColorMirrorDownTo = 16768988
      Appearance.ColorMirrorChecked = 16102556
      Appearance.ColorMirrorCheckedTo = 16768988
      Appearance.ColorMirrorDisabled = 11974326
      Appearance.ColorMirrorDisabledTo = 15921906
    end
    object BitBtn1: TAdvGlowButton
      Left = 517
      Top = 7
      Width = 95
      Height = 28
      Hint = 'Post'
      Anchors = [akRight, akBottom]
      Caption = #1581#1584#1601' '#1607#1588#1583#1575#1585
      Font.Charset = ARABIC_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Tahoma'
      Font.Style = []
      ImageIndex = 90
      Images = dm.ImageList_MainNew
      NotesFont.Charset = DEFAULT_CHARSET
      NotesFont.Color = clWindowText
      NotesFont.Height = -11
      NotesFont.Name = 'Tahoma'
      NotesFont.Style = []
      ParentFont = False
      TabOrder = 2
      OnClick = BitBtn1Click
      Appearance.ColorChecked = 16111818
      Appearance.ColorCheckedTo = 16367008
      Appearance.ColorDisabled = 15921906
      Appearance.ColorDisabledTo = 15921906
      Appearance.ColorDown = 16111818
      Appearance.ColorDownTo = 16367008
      Appearance.ColorHot = 16117985
      Appearance.ColorHotTo = 16372402
      Appearance.ColorMirrorHot = 16107693
      Appearance.ColorMirrorHotTo = 16775412
      Appearance.ColorMirrorDown = 16102556
      Appearance.ColorMirrorDownTo = 16768988
      Appearance.ColorMirrorChecked = 16102556
      Appearance.ColorMirrorCheckedTo = 16768988
      Appearance.ColorMirrorDisabled = 11974326
      Appearance.ColorMirrorDisabledTo = 15921906
    end
  end
  object Panel3: TPanel [4]
    Left = 0
    Top = 273
    Width = 734
    Height = 131
    Align = alClient
    TabOrder = 3
    DesignSize = (
      734
      131)
    object Label3: TLabel
      Left = 628
      Top = 9
      Width = 96
      Height = 14
      Anchors = [akTop, akRight]
      Caption = ' '#1578#1575#1585#1610#1582' '#1588#1585#1608#1593' '#1606#1605#1575#1610#1588
      Font.Charset = ARABIC_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object Label4: TLabel
      Left = 362
      Top = 9
      Width = 87
      Height = 14
      Anchors = [akTop, akRight]
      Caption = #1578#1575#1585#1610#1582' '#1575#1578#1605#1575#1605' '#1606#1605#1575#1610#1588
      Font.Charset = ARABIC_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object Label5: TLabel
      Left = 632
      Top = 46
      Width = 58
      Height = 14
      Anchors = [akTop, akRight]
      Caption = #1605#1578#1606' '#1607#1588#1583#1575#1585
      Font.Charset = ARABIC_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object DBMemo1: TDBMemo
      Left = 16
      Top = 44
      Width = 612
      Height = 79
      Anchors = [akLeft, akTop, akRight, akBottom]
      DataField = 'AlarmText'
      DataSource = dm.DSelect_Account
      Font.Charset = ARABIC_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 0
    end
    object DBEdit1: TSolarDatePicker
      Left = 466
      Top = 3
      Width = 161
      Height = 22
      Anchors = [akTop, akRight]
      About = 'Created by : Mohamad Khorsandi'
      BiDiMode = bdLeftToRight
      Color = clWhite
      Font.Charset = ARABIC_CHARSET
      Font.Color = clBlack
      Font.Height = -12
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
      Left = 194
      Top = 3
      Width = 161
      Height = 22
      Anchors = [akTop, akRight]
      About = 'Created by : Mohamad Khorsandi'
      BiDiMode = bdLeftToRight
      Color = clWhite
      Font.Charset = ARABIC_CHARSET
      Font.Color = clBlack
      Font.Height = -12
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
