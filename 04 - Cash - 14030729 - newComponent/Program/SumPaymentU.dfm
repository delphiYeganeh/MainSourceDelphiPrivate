inherited FrSumPayment: TFrSumPayment
  Left = 630
  Top = 308
  Width = 640
  Height = 480
  Caption = #1608#1575#1585#1610#1586' '#1580#1605#1593#1610
  Color = clBtnFace
  DockSite = True
  Font.Height = -12
  OldCreateOrder = True
  PixelsPerInch = 96
  TextHeight = 14
  object pnlMain: TPanel [0]
    Left = 0
    Top = 0
    Width = 624
    Height = 441
    Align = alClient
    ParentColor = True
    TabOrder = 0
    object Panel3: TPanel
      Left = 1
      Top = 352
      Width = 622
      Height = 40
      Align = alBottom
      TabOrder = 0
      object RgReport: TRadioGroup
        Left = 1
        Top = -1
        Width = 620
        Height = 40
        Align = alBottom
        Caption = #1711#1586#1575#1585#1588
        Columns = 3
        Font.Charset = ARABIC_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Tahoma'
        Font.Style = []
        ItemIndex = 0
        Items.Strings = (
          #1601#1585#1605#1578' 1'
          #1601#1585#1605#1578' 2')
        ParentFont = False
        TabOrder = 0
        OnClick = GrpSelectionClick
      end
    end
    object Panel2: TPanel
      Left = 1
      Top = 392
      Width = 622
      Height = 48
      Align = alBottom
      TabOrder = 1
      DesignSize = (
        622
        48)
      object Label2: TLabel
        Left = 135
        Top = 8
        Width = 192
        Height = 14
        BiDiMode = bdLeftToRight
        Caption = '...\Cash\Reports\SumPayment1.fr3'
        Font.Charset = ARABIC_CHARSET
        Font.Color = clNavy
        Font.Height = -12
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentBiDiMode = False
        ParentFont = False
      end
      object Label4: TLabel
        Left = 135
        Top = 24
        Width = 189
        Height = 14
        BiDiMode = bdLeftToRight
        Caption = '...\Cash\Reports\TotalPayment.fr3'
        Font.Charset = ARABIC_CHARSET
        Font.Color = clNavy
        Font.Height = -12
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentBiDiMode = False
        ParentFont = False
      end
      object Label6: TLabel
        Left = 344
        Top = 8
        Width = 38
        Height = 14
        Caption = #1601#1585#1605#1578'1:'
        Font.Charset = ARABIC_CHARSET
        Font.Color = clNavy
        Font.Height = -12
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
      end
      object Label8: TLabel
        Left = 344
        Top = 25
        Width = 38
        Height = 14
        Caption = #1601#1585#1605#1578'2:'
        Font.Charset = ARABIC_CHARSET
        Font.Color = clNavy
        Font.Height = -12
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
      end
      object SBReport: TAdvGlowButton
        Left = 413
        Top = 6
        Width = 88
        Height = 33
        Cursor = crHandPoint
        Hint = #1670#1575#1662
        Anchors = [akTop, akRight]
        Caption = #1662#1585#1610#1606#1578
        ImageIndex = 198
        Images = dm.ImageList_MainNew
        NotesFont.Charset = DEFAULT_CHARSET
        NotesFont.Color = clWindowText
        NotesFont.Height = -11
        NotesFont.Name = 'Tahoma'
        NotesFont.Style = []
        Spacing = 0
        ParentShowHint = False
        ShowHint = True
        TabOrder = 2
        OnClick = SBReportClick
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
        Left = 504
        Top = 6
        Width = 111
        Height = 33
        Hint = 'Post'
        Anchors = [akTop, akRight]
        Caption = #1608#1575#1585#1610#1586' '#1580#1605#1593#1610
        Default = True
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = 'Tahoma'
        Font.Style = []
        ImageIndex = 186
        Images = dm.LetterImages_New
        NotesFont.Charset = DEFAULT_CHARSET
        NotesFont.Color = clWindowText
        NotesFont.Height = -11
        NotesFont.Name = 'Tahoma'
        NotesFont.Style = []
        ParentFont = False
        Spacing = 0
        TabOrder = 0
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
        Left = 4
        Top = 6
        Width = 89
        Height = 33
        Action = AExit
        Cancel = True
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
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
        TabOrder = 1
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
    object Panel1: TPanel
      Left = 1
      Top = 1
      Width = 622
      Height = 184
      Align = alTop
      ParentColor = True
      TabOrder = 2
      DesignSize = (
        622
        184)
      object LblPrice: TLabel
        Left = 588
        Top = 50
        Width = 21
        Height = 14
        Anchors = [akTop, akRight]
        Caption = #1605#1576#1604#1594
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
      end
      object StatusLabel: TLabel
        Left = 544
        Top = 76
        Width = 73
        Height = 14
        Alignment = taRightJustify
        Anchors = [akTop, akRight]
        Caption = #1608#1575#1585#1610#1586' '#1576#1607' '#1581#1587#1575#1576
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
      end
      object Label7: TLabel
        Left = 588
        Top = 112
        Width = 22
        Height = 14
        Anchors = [akTop, akRight]
        Caption = #1578#1575#1585#1610#1582
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
      end
      object Label10: TLabel
        Left = 581
        Top = 151
        Width = 29
        Height = 14
        Anchors = [akTop, akRight]
        Caption = #1578#1608#1590#1610#1581
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
      end
      object LblPriceDesc: TLabel
        Left = 507
        Top = 48
        Width = 28
        Height = 14
        Anchors = [akTop, akRight]
        Caption = '0 '#1585#1610#1575#1604
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
      end
      object Label1: TLabel
        Left = 324
        Top = 112
        Width = 65
        Height = 14
        Anchors = [akTop, akRight]
        Caption = #1580#1585#1610#1605#1607' '#1583#1610#1585#1705#1585#1583
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
      end
      object Label3: TLabel
        Left = 150
        Top = 111
        Width = 23
        Height = 14
        Anchors = [akTop, akRight]
        Caption = #1587#1608#1583
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
      end
      object EComment: TEdit
        Left = 8
        Top = 144
        Width = 532
        Height = 22
        Anchors = [akTop, akRight]
        BiDiMode = bdRightToLeft
        Color = clWhite
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentBiDiMode = False
        ParentFont = False
        TabOrder = 4
        OnEnter = TEditEnter
        OnExit = TEditExit
      end
      object MajorAccount: TDBLookupComboBox
        Left = 251
        Top = 68
        Width = 290
        Height = 22
        Anchors = [akLeft, akTop, akRight]
        BiDiMode = bdLeftToRight
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = 'Tahoma'
        Font.Style = []
        KeyField = 'AccountID'
        ListField = 'AccountTitle'
        ListSource = dm.DSelect_Cash_Accounts
        ParentBiDiMode = False
        ParentFont = False
        TabOrder = 0
      end
      object interest: TYAmountEdit
        Left = 8
        Top = 106
        Width = 138
        Height = 22
        Anchors = [akLeft, akTop, akRight]
        BiDiMode = bdRightToLeft
        Color = clWhite
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentBiDiMode = False
        ParentFont = False
        TabOrder = 3
        OnEnter = TEditEnter
        OnExit = TEditExit
      end
      object Eamerce: TYAmountEdit
        Left = 192
        Top = 106
        Width = 129
        Height = 22
        Anchors = [akTop, akRight]
        BiDiMode = bdRightToLeft
        Color = clWhite
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentBiDiMode = False
        ParentFont = False
        ReadOnly = True
        TabOrder = 2
        OnEnter = TEditEnter
        OnExit = TEditExit
      end
      object MEEDate: TSolarDatePicker
        Left = 400
        Top = 106
        Width = 140
        Height = 22
        Anchors = [akTop, akRight]
        About = 'Created by : Mohamad Khorsandi'
        BiDiMode = bdLeftToRight
        Font.Charset = ARABIC_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        TabOrder = 1
        Enabled = True
        OnEnter = TEditEnter
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
        DataFieldType = dftSolar
        DataFieldAutoSaveModified = False
      end
      object GrpSelection: TRadioGroup
        Left = 1
        Top = 1
        Width = 620
        Height = 40
        Align = alTop
        Caption = #1605#1581#1583#1608#1583' '#1587#1575#1586#1610' '#1608#1575#1585#1610#1586' '#1580#1605#1593#1610
        Columns = 3
        Font.Charset = ARABIC_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Tahoma'
        Font.Style = []
        ItemIndex = 0
        Items.Strings = (
          #1578#1605#1575#1605#1610' '#1605#1608#1575#1585#1583
          #1601#1602#1591' '#1605#1608#1575#1585#1583' '#1575#1606#1578#1582#1575#1576' '#1588#1583#1607
          #1607#1605#1607' '#1605#1608#1575#1585#1583' '#1576#1607' '#1580#1586' '#1605#1608#1575#1585#1583' '#1575#1606#1578#1582#1575#1576' '#1588#1583#1607)
        ParentFont = False
        TabOrder = 5
        OnClick = GrpSelectionClick
      end
    end
    object FinancialNotePanel: TPanel
      Left = 1
      Top = 185
      Width = 622
      Height = 167
      Align = alClient
      Constraints.MinHeight = 68
      ParentColor = True
      TabOrder = 3
    end
  end
  inherited ahmadvand: TActionList
    Left = 67
    Top = 104
  end
  inherited Grid_PopupMenu: TPopupMenu
    Left = 71
    Top = 160
  end
  inherited qSetting: TADOQuery
    Left = 96
    Top = 48
  end
  object RepPopMnu: TPopupMenu
    MenuAnimation = [maRightToLeft, maTopToBottom]
    TrackButton = tbLeftButton
    Left = 40
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
    object N8: TMenuItem
      Caption = '-'
    end
    object N11: TMenuItem
      Caption = #1591#1585#1575#1581#1610' '#1662#1610#1588' '#1601#1585#1590
      OnClick = N11Click
    end
  end
  object spCreateSmsTextForSumPayment: TADOStoredProc
    Connection = dm.YeganehConnection
    CursorType = ctStatic
    LockType = ltBatchOptimistic
    ProcedureName = 'CreateSmsTextForSumPayment'
    Parameters = <
      item
        Name = '@RETURN_VALUE'
        DataType = ftInteger
        Direction = pdReturnValue
        Precision = 10
        Value = 0
      end
      item
        Name = '@ForcePaymentIds'
        Attributes = [paNullable]
        DataType = ftString
        Size = 2147483647
        Value = '1,2,'
      end>
    Left = 240
    Top = 160
    object spCreateSmsTextForSumPaymentParentID: TIntegerField
      FieldName = 'ParentID'
    end
    object spCreateSmsTextForSumPaymentForceTypeID: TWordField
      FieldName = 'ForceTypeID'
    end
    object spCreateSmsTextForSumPayment_date: TStringField
      FieldName = '_date'
      ReadOnly = True
      FixedChar = True
      Size = 10
    end
    object spCreateSmsTextForSumPaymentOrderNos: TMemoField
      FieldName = 'OrderNos'
      ReadOnly = True
      BlobType = ftMemo
    end
    object spCreateSmsTextForSumPaymentaccountTitle: TWideStringField
      FieldName = 'accountTitle'
      Size = 100
    end
    object spCreateSmsTextForSumPaymentPhones: TWideStringField
      FieldName = 'Phones'
      Size = 50
    end
    object spCreateSmsTextForSumPaymentEXIST: TLargeintField
      FieldName = 'EXIST'
      ReadOnly = True
    end
    object spCreateSmsTextForSumPayment_sum: TLargeintField
      FieldName = '_sum'
      ReadOnly = True
    end
    object spCreateSmsTextForSumPaymentBM: TLargeintField
      FieldName = 'BM'
      ReadOnly = True
    end
  end
end
