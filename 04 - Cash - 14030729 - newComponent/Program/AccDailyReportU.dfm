inherited FrAccDailyReport: TFrAccDailyReport
  Left = 678
  Width = 706
  Height = 394
  Caption = #1711#1586#1575#1585#1588' '#1585#1608#1586#1575#1606#1607' '#1587#1606#1583
  Font.Height = -12
  OldCreateOrder = True
  PixelsPerInch = 96
  TextHeight = 14
  object pnlMain: TPanel [0]
    Left = 0
    Top = 0
    Width = 690
    Height = 355
    Align = alClient
    ParentColor = True
    TabOrder = 0
    object Panel1: TPanel
      Left = 1
      Top = 1
      Width = 688
      Height = 41
      Align = alTop
      TabOrder = 0
      DesignSize = (
        688
        41)
      object Label1: TLabel
        Left = 645
        Top = 9
        Width = 30
        Height = 14
        Anchors = [akTop, akRight]
        Caption = #1578#1575#1585#1610#1582' :'
        Font.Charset = ARABIC_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
      end
      object SBSearch: TAdvGlowButton
        Left = 28
        Top = 6
        Width = 84
        Height = 28
        Anchors = [akTop, akRight]
        Caption = #1580#1587#1578#1580#1608
        ImageIndex = 35
        Images = dm.ImageList_MainNew
        NotesFont.Charset = DEFAULT_CHARSET
        NotesFont.Color = clWindowText
        NotesFont.Height = -11
        NotesFont.Name = 'Tahoma'
        NotesFont.Style = []
        TabOrder = 1
        OnClick = SBSearchClick
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
      object MEdtDate: TSolarDatePicker
        Left = 438
        Top = 2
        Width = 189
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
        TabOrder = 0
        Enabled = True
        OnEnter = TEditEnter
        OnExit = TEditExit
        OnKeyPress = MEdtDateKeyPress
        DateKind = dkSolar
        CheckInputOnExit = False
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
        DataFieldType = dftSolar
        DataFieldAutoSaveModified = False
      end
    end
    object Panel3: TPanel
      Left = 1
      Top = 42
      Width = 688
      Height = 271
      Align = alClient
      TabOrder = 1
      object YDBGrid1: TYDBGrid
        Left = 1
        Top = 1
        Width = 686
        Height = 269
        Align = alClient
        Color = clCream
        DataSource = dm.DAccDailyReport
        TabOrder = 0
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
        InvertFarsiDate = True
        TitleSort = True
        AutoInsert = False
        FooterFields = 'Count'
        Columns = <
          item
            Expanded = False
            FieldName = 'documentno'
            Title.Alignment = taCenter
            Title.Caption = #1588#1605#1575#1585#1607' '#1587#1606#1583
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'AccountNo'
            Title.Alignment = taCenter
            Title.Caption = #1588#1605#1575#1585#1607' '#1581#1587#1575#1576
            Width = 75
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'AccountTitle'
            Title.Alignment = taCenter
            Title.Caption = #1593#1606#1608#1575#1606' '#1581#1587#1575#1576
            Width = 103
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'Amount_Dbt'
            Title.Alignment = taCenter
            Title.Caption = #1576#1583#1607#1705#1575#1585
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'Amount_Crt'
            Title.Alignment = taCenter
            Title.Caption = #1576#1587#1578#1575#1606#1705#1575#1585
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'PayTypeTitle'
            Title.Alignment = taCenter
            Title.Caption = #1593#1604#1578
            Width = 80
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'Comment'
            Title.Caption = #1578#1608#1590#1610#1581#1575#1578
            Width = 158
            Visible = True
          end>
      end
    end
    object Panel2: TPanel
      Left = 1
      Top = 313
      Width = 688
      Height = 41
      Align = alBottom
      TabOrder = 2
      DesignSize = (
        688
        41)
      object BitBtn1: TAdvGlowButton
        Left = 7
        Top = 6
        Width = 90
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
      object BitBtn2: TAdvGlowButton
        Left = 558
        Top = 6
        Width = 124
        Height = 28
        Anchors = [akTop, akRight]
        Caption = #1575#1585#1587#1575#1604' '#1576#1607' Excel'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clNavy
        Font.Height = -12
        Font.Name = 'Tahoma'
        Font.Style = []
        ImageIndex = 135
        Images = dm.ImageList_MainNew
        NotesFont.Charset = DEFAULT_CHARSET
        NotesFont.Color = clWindowText
        NotesFont.Height = -11
        NotesFont.Name = 'Tahoma'
        NotesFont.Style = []
        ParentFont = False
        TabOrder = 1
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
    end
  end
  inherited ahmadvand: TActionList
    Left = 5
    Top = 65534
  end
  inherited Grid_PopupMenu: TPopupMenu
    Left = 118
    Top = 4
  end
end
