inherited FrAddCashPayment: TFrAddCashPayment
  Left = 626
  Top = 175
  Width = 770
  Height = 676
  Caption = '---'
  Color = clBtnFace
  Font.Height = -12
  OldCreateOrder = True
  PixelsPerInch = 96
  TextHeight = 14
  object pnlMain: TPanel [0]
    Left = 0
    Top = 0
    Width = 754
    Height = 637
    Align = alClient
    ParentColor = True
    TabOrder = 0
    object Panel2: TPanel
      Left = 1
      Top = 595
      Width = 752
      Height = 41
      Align = alBottom
      TabOrder = 0
      DesignSize = (
        752
        41)
      object BitBtn1: TAdvGlowButton
        Left = 9
        Top = 6
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
        Left = 648
        Top = 6
        Width = 97
        Height = 28
        Hint = 'Post'
        Anchors = [akTop, akRight]
        Caption = #1579#1576#1578' '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clNavy
        Font.Height = -12
        Font.Name = 'Tahoma'
        Font.Style = []
        ImageIndex = 59
        Images = dm.ImageList_MainNew
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
        Left = 456
        Top = 6
        Width = 83
        Height = 28
        Anchors = [akTop, akRight]
        Caption = #1670#1575#1662
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clNavy
        Font.Height = -12
        Font.Name = 'Tahoma'
        Font.Style = []
        ImageIndex = 112
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
      object xpBitBtn1: TAdvGlowButton
        Left = 540
        Top = 6
        Width = 85
        Height = 28
        Anchors = [akTop, akRight]
        Caption = #1670#1575#1662' '#1587#1606#1583
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clNavy
        Font.Height = -12
        Font.Name = 'Tahoma'
        Font.Style = []
        ImageIndex = 212
        Images = dm.ImageList_MainNew
        NotesFont.Charset = DEFAULT_CHARSET
        NotesFont.Color = clWindowText
        NotesFont.Height = -11
        NotesFont.Name = 'Tahoma'
        NotesFont.Style = []
        ParentFont = False
        TabOrder = 3
        OnClick = xpBitBtn1Click
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
    object Panel1: TPanel
      Left = 1
      Top = 480
      Width = 752
      Height = 115
      Align = alBottom
      ParentColor = True
      TabOrder = 1
      DesignSize = (
        752
        115)
      object Label5: TLabel
        Left = 438
        Top = 5
        Width = 33
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
        Left = 706
        Top = 5
        Width = 35
        Height = 14
        Alignment = taRightJustify
        Anchors = [akTop, akRight]
        BiDiMode = bdLeftToRight
        Caption = #1581#1587#1575#1576
        Font.Charset = ARABIC_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentBiDiMode = False
        ParentFont = False
      end
      object Label7: TLabel
        Left = 706
        Top = 45
        Width = 35
        Height = 14
        Anchors = [akTop, akRight]
        BiDiMode = bdRightToLeft
        Caption = #1578#1575#1585#1610#1582
        Font.Charset = ARABIC_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentBiDiMode = False
        ParentFont = False
      end
      object Label8: TLabel
        Left = 438
        Top = 46
        Width = 33
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
      object Label10: TLabel
        Left = 706
        Top = 82
        Width = 35
        Height = 14
        Anchors = [akTop, akRight]
        BiDiMode = bdRightToLeft
        Caption = #1578#1608#1590#1610#1581
        Font.Charset = ARABIC_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentBiDiMode = False
        ParentFont = False
      end
      object Label3: TLabel
        Left = 276
        Top = 81
        Width = 42
        Height = 14
        Anchors = [akTop, akRight]
        Caption = #1588' '#1587#1606#1583
        Font.Charset = ARABIC_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
      end
      object BillMemo: TMemo
        Left = 6
        Top = 6
        Width = 275
        Height = 66
        TabStop = False
        Anchors = [akTop, akRight]
        BevelInner = bvNone
        BevelOuter = bvNone
        BorderStyle = bsNone
        Font.Charset = ARABIC_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentColor = True
        ParentFont = False
        TabOrder = 5
      end
      object DBAmount: TDBEdit
        Left = 289
        Top = 2
        Width = 144
        Height = 22
        Anchors = [akTop, akRight]
        Color = clWhite
        DataField = 'Amount'
        DataSource = dm.DSelect_Payment
        Font.Charset = ARABIC_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        TabOrder = 0
        OnChange = DBAmountChange
        OnEnter = TEditEnter
        OnExit = DBAmountExit
      end
      object DBEdit5: TDBEdit
        Left = 337
        Top = 40
        Width = 96
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
        TabOrder = 1
        OnEnter = TEditEnter
        OnExit = TEditExit
      end
      object MajorAccount: TDBLookupComboBox
        Left = 485
        Top = 2
        Width = 220
        Height = 22
        Anchors = [akTop, akRight]
        BiDiMode = bdLeftToRight
        DataField = 'CreditorAccountID'
        DataSource = dm.DSelect_Payment
        Font.Charset = ARABIC_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
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
        Left = 129
        Top = 76
        Width = 147
        Height = 22
        Anchors = [akTop, akRight]
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
        TabOrder = 3
        OnEnter = TEditEnter
        OnExit = TEditExit
      end
      object DBEdit8: TDBEdit
        Left = 336
        Top = 77
        Width = 369
        Height = 22
        Anchors = [akTop, akRight]
        BiDiMode = bdRightToLeft
        Color = clWhite
        DataField = 'Comment'
        DataSource = dm.DSelect_Payment
        Font.Charset = ARABIC_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentBiDiMode = False
        ParentFont = False
        TabOrder = 4
        OnEnter = TEditEnter
        OnExit = TEditExit
      end
      object DBEdit4: TSolarDatePicker
        Left = 533
        Top = 39
        Width = 172
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
    object FinancialNotePanel: TPanel
      Left = 1
      Top = 320
      Width = 752
      Height = 160
      Align = alBottom
      ParentColor = True
      TabOrder = 2
    end
    object YDBGrid1: TYDBGrid
      Left = 1
      Top = 251
      Width = 752
      Height = 69
      Cursor = crHandPoint
      Align = alClient
      DataSource = dm.DReport_LatestPayment_ByAccountID
      TabOrder = 3
      TitleFont.Charset = ARABIC_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -12
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
    object PAccountDeatil: TGroupBox
      Left = 1
      Top = 1
      Width = 752
      Height = 250
      Align = alTop
      Font.Charset = ARABIC_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 4
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
