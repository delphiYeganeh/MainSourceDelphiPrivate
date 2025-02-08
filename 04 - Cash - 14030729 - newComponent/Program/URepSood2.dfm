inherited FmRepSood2: TFmRepSood2
  Left = 431
  Top = 228
  Width = 875
  Height = 480
  Caption = #1711#1586#1575#1585#1588' '#1587#1608#1583' '#1587#1662#1585#1583#1607
  Font.Height = -12
  OldCreateOrder = True
  PixelsPerInch = 96
  TextHeight = 14
  object pnlMain: TPanel [0]
    Left = 0
    Top = 0
    Width = 859
    Height = 441
    Align = alClient
    ParentColor = True
    TabOrder = 0
    object YDBGrid: TYDBGrid
      Left = 1
      Top = 42
      Width = 857
      Height = 342
      Cursor = crHandPoint
      Align = alClient
      DataSource = dsREP_SoodSepordeh
      Font.Charset = ARABIC_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      PopupMenu = YBaseForm.Grid_PopupMenu
      ReadOnly = True
      TabOrder = 0
      TitleFont.Charset = ARABIC_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -12
      TitleFont.Name = 'Nazanin'
      TitleFont.Style = [fsBold]
      YeganehColor = False
      YeganehFinish = True
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
          FieldName = 'documentno'
          Title.Alignment = taCenter
          Title.Caption = #1588#1605#1575#1585#1607' '#1587#1606#1583
          Title.Color = clSkyBlue
          Title.Font.Charset = ARABIC_CHARSET
          Title.Font.Color = clWindowText
          Title.Font.Height = -12
          Title.Font.Name = 'Tahoma'
          Title.Font.Style = []
          Width = 80
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'DATE'
          Title.Alignment = taCenter
          Title.Caption = #1578#1575#1585#1610#1582
          Title.Color = clSkyBlue
          Title.Font.Charset = ARABIC_CHARSET
          Title.Font.Color = clWindowText
          Title.Font.Height = -12
          Title.Font.Name = 'Tahoma'
          Title.Font.Style = []
          Width = 94
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'AccountNo'
          Title.Alignment = taCenter
          Title.Caption = #1588#1605#1575#1585#1607' '#1581#1587#1575#1576' '#1593#1590#1608
          Title.Color = clSkyBlue
          Title.Font.Charset = ARABIC_CHARSET
          Title.Font.Color = clWindowText
          Title.Font.Height = -12
          Title.Font.Name = 'Tahoma'
          Title.Font.Style = []
          Width = 114
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'ozvName'
          Title.Alignment = taCenter
          Title.Caption = #1606#1575#1605'  '#1608' '#1606#1575#1605' '#1582#1575#1606#1608#1575#1583#1711#1610
          Title.Color = clSkyBlue
          Title.Font.Charset = ARABIC_CHARSET
          Title.Font.Color = clWindowText
          Title.Font.Height = -12
          Title.Font.Name = 'Tahoma'
          Title.Font.Style = []
          Width = 169
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'hesabName'
          Title.Alignment = taCenter
          Title.Caption = #1581#1587#1575#1576' '#1587#1608#1583' '#1587#1662#1585#1583#1607
          Title.Color = clSkyBlue
          Title.Font.Charset = ARABIC_CHARSET
          Title.Font.Color = clWindowText
          Title.Font.Height = -12
          Title.Font.Name = 'Tahoma'
          Title.Font.Style = []
          Width = 150
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'strAmount'
          Title.Alignment = taCenter
          Title.Caption = #1605#1576#1604#1594
          Title.Color = clSkyBlue
          Title.Font.Charset = ARABIC_CHARSET
          Title.Font.Color = clWindowText
          Title.Font.Height = -12
          Title.Font.Name = 'Tahoma'
          Title.Font.Style = []
          Width = 114
          Visible = True
        end
        item
          Alignment = taRightJustify
          Expanded = False
          FieldName = 'strAmount'
          Title.Alignment = taCenter
          Title.Caption = #1605#1576#1604#1594
          Title.Color = 16776176
          Title.Font.Charset = ARABIC_CHARSET
          Title.Font.Color = clWindowText
          Title.Font.Height = -12
          Title.Font.Name = 'Tahoma'
          Title.Font.Style = []
          Visible = False
        end>
    end
    object Panel2: TPanel
      Left = 1
      Top = 384
      Width = 857
      Height = 56
      Align = alBottom
      TabOrder = 1
      DesignSize = (
        857
        56)
      object Label4: TLabel
        Left = 649
        Top = 8
        Width = 191
        Height = 14
        Anchors = [akTop, akRight]
        Caption = #1605#1580#1605#1608#1593' '#1587#1608#1583' '#1662#1585#1583#1575#1582#1578' '#1588#1583#1607' '#1583#1585' '#1575#1610#1606' '#1576#1575#1586#1607' :'
        Font.Charset = ARABIC_CHARSET
        Font.Color = clGreen
        Font.Height = -12
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
      end
      object Label5: TLabel
        Left = 649
        Top = 32
        Width = 188
        Height = 14
        Anchors = [akTop, akRight]
        Caption = #1605#1580#1605#1608#1593' '#1705#1604' '#1587#1608#1583' '#1662#1585#1583#1575#1582#1578' '#1588#1583#1607'         :'
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlue
        Font.Height = -12
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
      end
      object lblNum1: TLabel
        Left = 627
        Top = 8
        Width = 7
        Height = 14
        Anchors = [akTop, akRight]
        Caption = '0'
        Font.Charset = ARABIC_CHARSET
        Font.Color = clGreen
        Font.Height = -12
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
      end
      object lblNum2: TLabel
        Left = 627
        Top = 32
        Width = 7
        Height = 14
        Anchors = [akTop, akRight]
        Caption = '0'
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlue
        Font.Height = -12
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
      end
      object lblTxt1: TLabel
        Left = 383
        Top = 8
        Width = 24
        Height = 14
        Anchors = [akTop, akRight]
        Caption = '      '
        Font.Charset = ARABIC_CHARSET
        Font.Color = clGreen
        Font.Height = -12
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
      end
      object LblTxt2: TLabel
        Left = 379
        Top = 32
        Width = 28
        Height = 14
        Anchors = [akTop, akRight]
        Caption = '       '
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlue
        Font.Height = -12
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
      end
      object Button5: TAdvGlowButton
        Left = 10
        Top = 14
        Width = 95
        Height = 31
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
        TabOrder = 0
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
    end
    object Panel1: TPanel
      Left = 1
      Top = 1
      Width = 857
      Height = 41
      Align = alTop
      TabOrder = 2
      DesignSize = (
        857
        41)
      object Label1: TLabel
        Left = 776
        Top = 9
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
      object Label2: TLabel
        Left = 494
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
      object Label3: TLabel
        Left = 309
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
      object SearchEdit: TEdit
        Left = 545
        Top = 2
        Width = 226
        Height = 22
        Anchors = [akTop, akRight]
        Font.Charset = ARABIC_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        TabOrder = 0
      end
      object MakeRep: TAdvGlowButton
        Left = 12
        Top = 5
        Width = 87
        Height = 28
        Caption = #1606#1605#1575#1610#1588
        Font.Charset = ARABIC_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
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
        TabOrder = 3
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
      object MEDateTo: TSolarDatePicker
        Left = 156
        Top = 2
        Width = 150
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
      object MEDateFrom: TSolarDatePicker
        Left = 341
        Top = 2
        Width = 150
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
    end
  end
  inherited ahmadvand: TActionList
    Left = 277
    Top = 83
  end
  object spREP_SoodSepordeh: TADOStoredProc
    Connection = dm.YeganehConnection
    CursorType = ctStatic
    OnCalcFields = spREP_SoodSepordehCalcFields
    ProcedureName = 'REP_SoodSepordeh'
    Parameters = <
      item
        Name = '@RETURN_VALUE'
        DataType = ftInteger
        Direction = pdReturnValue
        Precision = 10
        Value = Null
      end
      item
        Name = '@startDate'
        Attributes = [paNullable]
        DataType = ftWideString
        Size = 10
        Value = Null
      end
      item
        Name = '@endDate'
        Attributes = [paNullable]
        DataType = ftWideString
        Size = 10
        Value = Null
      end
      item
        Name = '@accountNO'
        Attributes = [paNullable]
        DataType = ftWideString
        Size = 20
        Value = Null
      end>
    Left = 80
    Top = 168
    object spREP_SoodSepordehdocumentno: TStringField
      FieldName = 'documentno'
      Size = 10
    end
    object spREP_SoodSepordehDATE: TWideStringField
      FieldName = 'DATE'
      Size = 10
    end
    object spREP_SoodSepordehAccountNo: TStringField
      FieldName = 'AccountNo'
    end
    object spREP_SoodSepordehozvName: TWideStringField
      FieldName = 'ozvName'
      Size = 100
    end
    object spREP_SoodSepordehhesabName: TWideStringField
      FieldName = 'hesabName'
      Size = 100
    end
    object spREP_SoodSepordehAmount: TLargeintField
      FieldName = 'Amount'
    end
    object spREP_SoodSepordehDebtorAccountID: TIntegerField
      FieldName = 'DebtorAccountID'
    end
    object spREP_SoodSepordehCreditorAccountID: TIntegerField
      FieldName = 'CreditorAccountID'
    end
    object spREP_SoodSepordehstrAmount: TStringField
      FieldKind = fkCalculated
      FieldName = 'strAmount'
      Calculated = True
    end
  end
  object dsREP_SoodSepordeh: TDataSource
    DataSet = spREP_SoodSepordeh
    Left = 80
    Top = 112
  end
  object spREP_SUMSoodSepordeh: TADOStoredProc
    Connection = dm.YeganehConnection
    CursorType = ctStatic
    ProcedureName = 'REP_SUMSoodSepordeh'
    Parameters = <
      item
        Name = '@RETURN_VALUE'
        DataType = ftInteger
        Direction = pdReturnValue
        Precision = 10
        Value = Null
      end
      item
        Name = '@startDate'
        Attributes = [paNullable]
        DataType = ftWideString
        Size = 10
        Value = Null
      end
      item
        Name = '@endDate'
        Attributes = [paNullable]
        DataType = ftWideString
        Size = 10
        Value = Null
      end
      item
        Name = '@accountNO'
        Attributes = [paNullable]
        DataType = ftWideString
        Size = 20
        Value = Null
      end>
    Left = 136
    Top = 248
    object spREP_SUMSoodSepordehid: TIntegerField
      FieldName = 'id'
      ReadOnly = True
    end
    object spREP_SUMSoodSepordehsumAll: TLargeintField
      FieldName = 'sumAll'
      ReadOnly = True
    end
  end
end
