inherited FrReport_PaymentInDetail: TFrReport_PaymentInDetail
  Left = 666
  Top = 181
  Width = 785
  Height = 587
  Caption = #1711#1586#1575#1585#1588' '#1582#1604#1575#1589#1607' '#1578#1585#1575#1705#1606#1588#1607#1575
  Font.Height = -12
  OldCreateOrder = True
  PixelsPerInch = 96
  TextHeight = 14
  object pnlMain: TPanel [0]
    Left = 0
    Top = 0
    Width = 769
    Height = 548
    Align = alClient
    ParentColor = True
    TabOrder = 0
    object Label4: TLabel
      Left = 1
      Top = 227
      Width = 767
      Height = 16
      Align = alBottom
      Caption = '   '#1606#1605#1575#1610#1588' '#1580#1586#1574#1610#1575#1578' '#1575#1591#1604#1575#1593#1575#1578
      Font.Charset = ARABIC_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label2: TLabel
      Left = 1
      Top = 379
      Width = 767
      Height = 16
      Align = alBottom
      Caption = '  '#1606#1605#1575#1610#1588' '#1575#1591#1604#1575#1593#1575#1578' '#1576#1607' '#1589#1608#1585#1578' '#1711#1585#1608#1607' '#1576#1606#1583#1610
      Font.Charset = ARABIC_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Panel1: TPanel
      Left = 1
      Top = 1
      Width = 767
      Height = 40
      Align = alTop
      TabOrder = 0
      DesignSize = (
        767
        40)
      object Label3: TLabel
        Left = 722
        Top = 8
        Width = 33
        Height = 14
        Anchors = [akTop, akRight]
        Caption = #1578#1575#1585#1610#1582' '#1575#1586
        Font.Charset = ARABIC_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
      end
      object Label1: TLabel
        Left = 520
        Top = 8
        Width = 7
        Height = 14
        Anchors = [akTop, akRight]
        Caption = #1578#1575
        Font.Charset = ARABIC_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
      end
      object MakeRep: TAdvGlowButton
        Left = 13
        Top = 5
        Width = 87
        Height = 28
        Caption = #1606#1605#1575#1610#1588
        Font.Charset = ARABIC_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ImageIndex = 14
        Images = dm.ImageList_MainNew
        NotesFont.Charset = DEFAULT_CHARSET
        NotesFont.Color = clWindowText
        NotesFont.Height = -11
        NotesFont.Name = 'Tahoma'
        NotesFont.Style = []
        ParentFont = False
        TabOrder = 0
        OnClick = MakeRepClick
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
      object DateTo: TSolarDatePicker
        Left = 348
        Top = 2
        Width = 168
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
        Text = '1403/11/13'
        Enabled = True
        DateKind = dkSolar
        CheckInputOnExit = True
        Divider = dSlash
        ShowToDay = True
        MonthObject = moComboBox
        Glyph = gtCalendar
        ShowDefaultDate = True
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
      object DateFrom: TSolarDatePicker
        Left = 540
        Top = 2
        Width = 168
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
        TabOrder = 2
        Enabled = True
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
        DataFieldType = dftSolar
        DataFieldAutoSaveModified = False
      end
    end
    object pnlBottom: TPanel
      Left = 1
      Top = 506
      Width = 767
      Height = 41
      Align = alBottom
      Caption = 'pnlBottom'
      TabOrder = 1
      DesignSize = (
        767
        41)
      object BitBtn1: TAdvGlowButton
        Left = 576
        Top = 7
        Width = 187
        Height = 28
        Anchors = [akTop, akRight]
        Caption = #1575#1585#1587#1575#1604' '#1575#1608#1604#1610#1606' '#1580#1583#1608#1604' '#1576#1607' Excel'
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
        TabOrder = 0
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
      object Button5: TAdvGlowButton
        Left = 12
        Top = 7
        Width = 85
        Height = 28
        Cancel = True
        Caption = #1582#1585#1608#1580
        Font.Charset = ARABIC_CHARSET
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
        TabOrder = 1
        OnClick = Button5Click
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
        Left = 385
        Top = 7
        Width = 189
        Height = 28
        Anchors = [akTop, akRight]
        Caption = #1575#1585#1587#1575#1604' '#1583#1608#1605#1610#1606' '#1580#1583#1608#1604' '#1576#1607' Excel'
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
        TabOrder = 2
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
      object BitBtn3: TAdvGlowButton
        Left = 180
        Top = 7
        Width = 203
        Height = 28
        Anchors = [akTop, akRight]
        Caption = #1575#1585#1587#1575#1604' '#1587#1608#1605#1610#1606' '#1580#1583#1608#1604' '#1576#1607' Excel'
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
        TabOrder = 3
        OnClick = BitBtn3Click
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
    object YDBGrid_D: TYDBGrid
      Left = 1
      Top = 243
      Width = 767
      Height = 136
      Cursor = crHandPoint
      Align = alBottom
      DataSource = dm.dReport_PaymentInDetail_D
      Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit]
      TabOrder = 2
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
          FieldName = 'AccountTitle'
          Title.Alignment = taCenter
          Title.Caption = #1593#1606#1608#1575#1606' '#1581#1587#1575#1576
          Width = 148
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'AccountNo'
          Title.Alignment = taCenter
          Title.Caption = #1588#1605#1575#1585#1607' '#1581#1587#1575#1576
          Width = 131
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'COMMENT'
          Title.Alignment = taCenter
          Title.Caption = #1593#1604#1578
          Width = 112
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'amountDb'
          Title.Alignment = taCenter
          Title.Caption = #1576#1583#1607#1705#1575#1585
          Width = 140
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'amountcr'
          Title.Alignment = taCenter
          Title.Caption = #1576#1587#1578#1575#1606#1705#1575#1585
          Width = 93
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'Date'
          Title.Alignment = taCenter
          Title.Caption = #1578#1575#1585#1610#1582
          Width = 104
          Visible = True
        end>
    end
    object YDBGrid_M: TYDBGrid
      Left = 1
      Top = 41
      Width = 767
      Height = 186
      Cursor = crHandPoint
      Align = alClient
      DataSource = dm.dReport_PaymentInDetail_M
      Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit]
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
      InvertFarsiDate = True
      TitleSort = True
      AutoInsert = False
      FooterFields = 'Count'
      Columns = <
        item
          Expanded = False
          FieldName = 'COMMENT'
          Title.Alignment = taCenter
          Title.Caption = #1593#1606#1608#1575#1606' '#1581#1587#1575#1576
          Width = 141
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'C1'
          Title.Alignment = taCenter
          Title.Caption = '('#1576#1583') '#1583#1585' '#1575#1610#1606' '#1583#1608#1585#1607' '
          Width = 127
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'C2'
          Title.Alignment = taCenter
          Title.Caption = '('#1576#1587') '#1583#1585' '#1575#1610#1606' '#1583#1608#1585#1607
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'C3'
          Title.Alignment = taCenter
          Title.Caption = '('#1576#1583') '#1578#1575' '#1576#1607' '#1575#1605#1585#1608#1586
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'C4'
          Title.Alignment = taCenter
          Title.Caption = '('#1576#1587') '#1578#1575' '#1576#1607' '#1575#1605#1585#1608#1586
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'C5'
          Title.Alignment = taCenter
          Title.Caption = #1605#1575#1606#1583#1607' ('#1576#1583') '
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'C6'
          Title.Alignment = taCenter
          Title.Caption = #1605#1575#1606#1583#1607' ('#1576#1587')'
          Visible = True
        end>
    end
    object YDBGrid_DD: TYDBGrid
      Left = 1
      Top = 395
      Width = 767
      Height = 111
      Cursor = crHandPoint
      Align = alBottom
      DataSource = dm.DReport_PaymentInDetail_DD
      Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit]
      TabOrder = 4
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
          FieldName = 'AccountTitle'
          Title.Alignment = taCenter
          Title.Caption = #1593#1606#1608#1575#1606' '#1581#1587#1575#1576
          Width = 139
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'AccountNo'
          Title.Alignment = taCenter
          Title.Caption = #1588#1605#1575#1585#1607' '#1581#1587#1575#1576
          Width = 158
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'COMMENT'
          Title.Alignment = taCenter
          Title.Caption = #1593#1604#1578
          Width = 112
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'amountDb'
          Title.Alignment = taCenter
          Title.Caption = #1576#1583#1607#1705#1575#1585
          Width = 135
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'amountcr'
          Title.Alignment = taCenter
          Title.Caption = #1576#1587#1578#1575#1606#1705#1575#1585
          Width = 91
          Visible = True
        end>
    end
  end
  inherited ahmadvand: TActionList
    Left = 63
    Top = 58
    inherited AExit: TAction
      OnExecute = nil
    end
  end
  inherited Grid_PopupMenu: TPopupMenu
    Left = 135
    Top = 68
  end
end
