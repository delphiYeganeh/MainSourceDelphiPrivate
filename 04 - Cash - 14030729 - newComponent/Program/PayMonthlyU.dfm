inherited FrPayMonthly: TFrPayMonthly
  Left = 755
  Top = 126
  Width = 734
  Height = 720
  Caption = #1662#1585#1583#1575#1582#1578' '#1605#1575#1607#1610#1575#1606#1607' '#1607#1575
  Color = clBtnFace
  Font.Height = -12
  OldCreateOrder = True
  PixelsPerInch = 96
  TextHeight = 14
  object pnlMain: TPanel [0]
    Left = 0
    Top = 0
    Width = 718
    Height = 681
    Align = alClient
    ParentColor = True
    TabOrder = 0
    object Label2: TLabel
      Left = 583
      Top = 157
      Width = 69
      Height = 14
      Caption = #1570#1582#1585#1610#1606' '#1605#1576#1575#1583#1604#1575#1578
    end
    object Panel4: TPanel
      Left = 1
      Top = 639
      Width = 716
      Height = 41
      Align = alBottom
      TabOrder = 0
      DesignSize = (
        716
        41)
      object Label22: TLabel
        Left = 103
        Top = 4
        Width = 135
        Height = 14
        BiDiMode = bdLeftToRight
        Caption = '..\Reports\PerfrajRep.fr3'
        Font.Charset = ARABIC_CHARSET
        Font.Color = clNavy
        Font.Height = -12
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentBiDiMode = False
        ParentFont = False
      end
      object Label24: TLabel
        Left = 284
        Top = 5
        Width = 38
        Height = 14
        Caption = #1662#1600#1600#1600#1585#1601#1585#1575#1688':'
        Font.Charset = ARABIC_CHARSET
        Font.Color = clNavy
        Font.Height = -12
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
      end
      object Label25: TLabel
        Left = 279
        Top = 19
        Width = 53
        Height = 14
        Caption = #1670#1575#1662' '#1602#1576#1590':'
        Font.Charset = ARABIC_CHARSET
        Font.Color = clNavy
        Font.Height = -12
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
      end
      object Label23: TLabel
        Left = 104
        Top = 20
        Width = 167
        Height = 14
        BiDiMode = bdLeftToRight
        Caption = '..\Reports\Bill_MonthlyPrint.fr3'
        Font.Charset = ARABIC_CHARSET
        Font.Color = clNavy
        Font.Height = -12
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentBiDiMode = False
        ParentFont = False
      end
      object BitBtn1: TAdvGlowButton
        Left = 10
        Top = 7
        Width = 75
        Height = 28
        Action = AExit
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clNavy
        Font.Height = -12
        Font.Name = 'Tahoma'
        Font.Style = []
        ImageIndex = 84
        Images = dm.ImageList_MainNew
        NotesFont.Charset = DEFAULT_CHARSET
        NotesFont.Color = clWindowText
        NotesFont.Height = -11
        NotesFont.Name = 'Tahoma'
        NotesFont.Style = []
        ParentFont = False
        TabOrder = 0
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
        Left = 595
        Top = 7
        Width = 110
        Height = 28
        Hint = 'Post'
        Anchors = [akTop, akRight]
        Caption = #1608#1575#1585#1610#1586
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clNavy
        Font.Height = -12
        Font.Name = 'Tahoma'
        Font.Style = []
        ImageIndex = 238
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
      object PrintBtn: TAdvGlowButton
        Left = 344
        Top = 7
        Width = 83
        Height = 28
        Anchors = [akTop, akRight]
        Caption = #1670#1575#1662' '#1602#1576#1590
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clNavy
        Font.Height = -12
        Font.Name = 'Tahoma'
        Font.Style = []
        ImageIndex = 209
        Images = dm.ImageList_MainNew
        NotesFont.Charset = DEFAULT_CHARSET
        NotesFont.Color = clWindowText
        NotesFont.Height = -11
        NotesFont.Name = 'Tahoma'
        NotesFont.Style = []
        ParentFont = False
        TabOrder = 2
        OnClick = PrintBtnClick
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
        Enabled = False
      end
      object DocPrintBtn: TAdvGlowButton
        Left = 428
        Top = 7
        Width = 75
        Height = 28
        Anchors = [akTop, akRight]
        Caption = #1670#1575#1662' '#1587#1606#1583
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clNavy
        Font.Height = -12
        Font.Name = 'Tahoma'
        Font.Style = []
        ImageIndex = 198
        Images = dm.ImageList_MainNew
        NotesFont.Charset = DEFAULT_CHARSET
        NotesFont.Color = clWindowText
        NotesFont.Height = -11
        NotesFont.Name = 'Tahoma'
        NotesFont.Style = []
        ParentFont = False
        TabOrder = 3
        OnClick = DocPrintBtnClick
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
        Enabled = False
      end
      object PerferazeBtn: TAdvGlowButton
        Left = 504
        Top = 7
        Width = 75
        Height = 28
        Anchors = [akTop, akRight]
        Caption = #1662#1585#1601#1585#1575#1688
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clNavy
        Font.Height = -12
        Font.Name = 'Tahoma'
        Font.Style = []
        ImageIndex = 260
        Images = dm.LetterImages_New
        NotesFont.Charset = DEFAULT_CHARSET
        NotesFont.Color = clWindowText
        NotesFont.Height = -11
        NotesFont.Name = 'Tahoma'
        NotesFont.Style = []
        ParentFont = False
        TabOrder = 4
        OnClick = PerferazeBtnClick
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
        Enabled = False
      end
    end
    object Panel3: TGroupBox
      Left = 1
      Top = 278
      Width = 716
      Height = 91
      Cursor = crHandPoint
      Align = alTop
      Caption = #1575#1591#1604#1575#1593#1575#1578' '#1581#1587#1575#1576' '#1608' '#1570#1582#1585#1610#1606' '#1605#1575#1607#1610#1575#1606#1607
      Font.Charset = ARABIC_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 1
      DesignSize = (
        716
        91)
      object Label6: TLabel
        Left = 430
        Top = 21
        Width = 55
        Height = 14
        Anchors = [akTop, akRight]
        Caption = #1606#1608#1593' '#1605#1575#1607#1610#1575#1606#1607
        FocusControl = DBEdit6
        Font.Charset = ARABIC_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
      end
      object Label10: TLabel
        Left = 628
        Top = 22
        Width = 83
        Height = 14
        Anchors = [akTop, akRight]
        Caption = #1578' '#1588#1585#1608#1593' '#1605#1575#1607#1610#1575#1606#1607
        FocusControl = DBEdit8
        Font.Charset = ARABIC_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
      end
      object Label13: TLabel
        Left = 200
        Top = 58
        Width = 65
        Height = 14
        Anchors = [akTop, akRight]
        Caption = #1605#1576#1604#1594'  '#1605#1575#1607#1610#1575#1606#1607
        FocusControl = DBEdit10
        Font.Charset = ARABIC_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
      end
      object Label14: TLabel
        Left = 417
        Top = 59
        Width = 70
        Height = 14
        Anchors = [akTop, akRight]
        Caption = #1578#1575#1585#1610#1582' '#1587#1585#1585#1587#1610#1583
        FocusControl = DBEdit11
        Font.Charset = ARABIC_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
      end
      object Label16: TLabel
        Left = 628
        Top = 59
        Width = 83
        Height = 14
        Anchors = [akTop, akRight]
        Caption = #1588#1605#1575#1585#1607' '#1605#1575#1607#1576#1575#1606#1607
        FocusControl = DBEdit13
        Font.Charset = ARABIC_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
      end
      object Label3: TLabel
        Left = 241
        Top = 25
        Width = 24
        Height = 14
        Anchors = [akTop, akRight]
        Caption = #1578#1575#1582#1610#1585
        FocusControl = DBEdit2
        Font.Charset = ARABIC_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
      end
      object DBEdit6: TDBEdit
        Left = 276
        Top = 15
        Width = 140
        Height = 22
        Anchors = [akTop, akRight]
        DataField = 'MonthlyTypeTitle'
        DataSource = dm.DSelect_LastMonthly
        Font.Charset = ARABIC_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        TabOrder = 0
      end
      object DBEdit8: TDBEdit
        Left = 496
        Top = 15
        Width = 130
        Height = 22
        Anchors = [akTop, akRight]
        BiDiMode = bdLeftToRight
        DataField = 'MonthlyBeginDate'
        DataSource = dm.DSelect_LastMonthly
        Font.Charset = ARABIC_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentBiDiMode = False
        ParentFont = False
        TabOrder = 1
      end
      object DBEdit10: TDBEdit
        Left = 8
        Top = 52
        Width = 193
        Height = 22
        Anchors = [akLeft, akTop, akRight]
        DataField = 'Amount'
        DataSource = dm.DSelect_LastMonthly
        Font.Charset = ARABIC_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        TabOrder = 2
      end
      object DBEdit11: TDBEdit
        Left = 276
        Top = 52
        Width = 140
        Height = 22
        Anchors = [akTop, akRight]
        BiDiMode = bdLeftToRight
        DataField = 'MatureDate'
        DataSource = dm.DSelect_LastMonthly
        Font.Charset = ARABIC_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentBiDiMode = False
        ParentFont = False
        TabOrder = 3
      end
      object DBEdit13: TDBEdit
        Left = 496
        Top = 52
        Width = 130
        Height = 22
        Anchors = [akTop, akRight]
        DataField = 'OrderNo'
        DataSource = dm.DSelect_LastMonthly
        Font.Charset = ARABIC_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        TabOrder = 4
      end
      object DBEdit2: TDBEdit
        Left = 63
        Top = 15
        Width = 138
        Height = 22
        Anchors = [akTop, akRight]
        DataField = 'delay'
        DataSource = dm.DSelect_LastMonthly
        Font.Charset = ARABIC_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        TabOrder = 5
      end
    end
    object Panel2: TPanel
      Left = 1
      Top = 1
      Width = 716
      Height = 39
      Align = alTop
      Font.Charset = ARABIC_CHARSET
      Font.Color = clWindowText
      Font.Height = -8
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentColor = True
      ParentFont = False
      TabOrder = 2
      DesignSize = (
        716
        39)
      object Label1: TLabel
        Left = 624
        Top = 10
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
        Left = 320
        Top = 0
        Width = 296
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
    object Panel1: TPanel
      Left = 1
      Top = 369
      Width = 716
      Height = 120
      Align = alTop
      Font.Charset = ARABIC_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentColor = True
      ParentFont = False
      TabOrder = 3
      DesignSize = (
        716
        120)
      object Label5: TLabel
        Left = 350
        Top = 10
        Width = 21
        Height = 14
        Anchors = [akTop, akRight]
        Caption = #1605#1576#1604#1594
        Font.Charset = ARABIC_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
      end
      object StatusLabel: TLabel
        Left = 634
        Top = 11
        Width = 73
        Height = 14
        Alignment = taRightJustify
        Anchors = [akTop, akRight]
        Caption = #1608#1575#1585#1610#1586' '#1576#1607' '#1581#1587#1575#1576
        Font.Charset = ARABIC_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
      end
      object Label7: TLabel
        Left = 634
        Top = 49
        Width = 73
        Height = 14
        Anchors = [akTop, akRight]
        Caption = #1578#1575#1585#1610#1582
        Font.Charset = ARABIC_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
      end
      object Label8: TLabel
        Left = 460
        Top = 50
        Width = 34
        Height = 14
        Anchors = [akTop, akRight]
        Caption = #1587#1575#1593#1578
        Font.Charset = ARABIC_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
      end
      object Label12: TLabel
        Left = 8
        Top = 5
        Width = 225
        Height = 28
        AutoSize = False
        Caption = #1585#1610#1575#1604
        Font.Charset = ARABIC_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        WordWrap = True
      end
      object Label15: TLabel
        Left = 634
        Top = 85
        Width = 73
        Height = 14
        Anchors = [akTop, akRight]
        Caption = #1578#1608#1590#1610#1581
        Font.Charset = ARABIC_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
      end
      object Label17: TLabel
        Left = 341
        Top = 50
        Width = 30
        Height = 14
        Anchors = [akTop, akRight]
        Caption = #1580#1585#1610#1605#1607
        Font.Charset = ARABIC_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
      end
      object Label4: TLabel
        Left = 141
        Top = 88
        Width = 42
        Height = 14
        Caption = #1588' '#1587#1606#1583
        Font.Charset = ARABIC_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
      end
      object Label9: TLabel
        Left = 144
        Top = 50
        Width = 39
        Height = 14
        Caption = #1588'.'#1670#1705
        Font.Charset = ARABIC_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
      end
      object DBEdit1: TDBEdit
        Left = 240
        Top = 5
        Width = 98
        Height = 22
        Anchors = [akLeft, akTop, akRight]
        Color = clWhite
        DataField = 'Amount'
        DataSource = dm.DSelect_Payment
        Font.Charset = ARABIC_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
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
        Left = 384
        Top = 44
        Width = 73
        Height = 22
        Anchors = [akTop, akRight]
        DataField = 'Time'
        DataSource = dm.DSelect_Payment
        Font.Charset = ARABIC_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        ReadOnly = True
        TabOrder = 1
        OnEnter = TEditEnter
        OnExit = TEditExit
      end
      object MajorAccount: TDBLookupComboBox
        Left = 384
        Top = 5
        Width = 242
        Height = 22
        Anchors = [akTop, akRight]
        BiDiMode = bdLeftToRight
        DataField = 'DebtorAccountID'
        DataSource = dm.DSelect_Payment
        Font.Charset = ARABIC_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Tahoma'
        Font.Style = []
        KeyField = 'AccountID'
        ListField = 'AccountTitle'
        ListSource = dm.DSelect_Cash_Accounts
        ParentBiDiMode = False
        ParentFont = False
        TabOrder = 2
      end
      object DBEdit12: TDBEdit
        Left = 240
        Top = 81
        Width = 386
        Height = 22
        Anchors = [akLeft, akTop, akRight]
        DataField = 'Comment'
        DataSource = dm.DSelect_LastMonthly
        Font.Charset = ARABIC_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        TabOrder = 3
      end
      object EAmerce: TYAmountEdit
        Left = 240
        Top = 44
        Width = 98
        Height = 22
        Anchors = [akLeft, akTop, akRight]
        Font.Charset = ARABIC_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        TabOrder = 4
      end
      object DBEdit3: TDBEdit
        Left = 24
        Top = 81
        Width = 112
        Height = 22
        Ctl3D = True
        DataField = 'DocumentNo'
        DataSource = dm.DSelect_Payment
        Font.Charset = ARABIC_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentCtl3D = False
        ParentFont = False
        ReadOnly = True
        TabOrder = 5
        OnEnter = TEditEnter
        OnExit = TEditExit
      end
      object Date: TSolarDatePicker
        Left = 504
        Top = 43
        Width = 121
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
        TabOrder = 6
        Enabled = True
        OnEnter = TEditEnter
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
      object DBEdit4: TDBEdit
        Left = 24
        Top = 43
        Width = 112
        Height = 22
        Ctl3D = True
        DataField = 'NoteNo'
        DataSource = dm.DSelect_Payment
        Font.Charset = ARABIC_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentCtl3D = False
        ParentFont = False
        ReadOnly = True
        TabOrder = 7
        OnEnter = TEditEnter
        OnExit = TEditExit
      end
    end
    object PAccountDeatil: TPanel
      Left = 1
      Top = 40
      Width = 716
      Height = 238
      Align = alTop
      Font.Charset = ARABIC_CHARSET
      Font.Color = clWindowText
      Font.Height = -8
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentColor = True
      ParentFont = False
      TabOrder = 4
    end
    object FinancialNotePanel: TPanel
      Left = 1
      Top = 489
      Width = 716
      Height = 150
      Align = alClient
      ParentColor = True
      TabOrder = 5
    end
  end
  inherited Grid_PopupMenu: TPopupMenu
    inherited wordMenuItem: TMenuItem
      OnClick = nil
    end
    inherited ExcelMenuItem: TMenuItem
      OnClick = nil
    end
    inherited PrintMenuItem: TMenuItem
      OnClick = nil
    end
    inherited TextMenuItem: TMenuItem
      OnClick = nil
    end
    inherited CustomMenuItem: TMenuItem
      OnClick = nil
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
    Top = 100
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
    end
  end
  object PopupMenuBill: TPopupMenu
    MenuAnimation = [maRightToLeft, maTopToBottom]
    TrackButton = tbLeftButton
    Left = 56
    Top = 460
    object BillShow: TMenuItem
      AutoHotkeys = maAutomatic
      Caption = #1662#1610#1588' '#1606#1605#1575#1610#1588' '#1608' '#1670#1575#1662'   F9'
      OnClick = BillShowClick
    end
    object BillPrint: TMenuItem
      Tag = 1
      AutoHotkeys = maAutomatic
      Caption = #1670#1575#1662' '#1576#1583#1608#1606' '#1662#1610#1588' '#1606#1605#1575#1610#1588'   Ctrl+F9'
    end
    object BillDesign: TMenuItem
      Tag = 2
      AutoHotkeys = maAutomatic
      Caption = #1591#1585#1575#1581#1610' '#1711#1586#1575#1585#1588'   Alt+F9'
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
