inherited FrPaymentImportFromExcel: TFrPaymentImportFromExcel
  Left = 449
  Top = 166
  Width = 877
  Height = 718
  Caption = #1662#1585#1583#1575#1582#1578' '#1605#1575#1607#1610#1575#1606#1607' '#1575#1586' '#1591#1585#1610#1602' '#1601#1575#1610#1604' '#1575#1705#1587#1604
  Font.Height = -12
  OldCreateOrder = True
  PixelsPerInch = 96
  TextHeight = 14
  object pnlMain: TPanel [0]
    Left = 0
    Top = 0
    Width = 861
    Height = 679
    Align = alClient
    ParentColor = True
    TabOrder = 0
    DesignSize = (
      861
      679)
    object YDBGrid1: TYDBGrid
      Left = 0
      Top = 0
      Width = 591
      Height = 422
      Cursor = crHandPoint
      Anchors = [akLeft, akTop, akRight, akBottom]
      DataSource = dTbExcel
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
    end
    object Panel1: TPanel
      Left = 1
      Top = 639
      Width = 859
      Height = 39
      Align = alBottom
      BevelOuter = bvNone
      TabOrder = 1
      object SpeedButton1: TAdvGlowButton
        Left = 457
        Top = 6
        Width = 127
        Height = 28
        Caption = #1575#1585#1578#1576#1575#1591' '#1576#1575' '#1601#1575#1610#1604' '#1575#1705#1587#1604
        ImageIndex = 135
        Images = dm.ImageList_MainNew
        NotesFont.Charset = DEFAULT_CHARSET
        NotesFont.Color = clWindowText
        NotesFont.Height = -11
        NotesFont.Name = 'Tahoma'
        NotesFont.Style = []
        TabOrder = 1
        OnClick = SpeedButton1Click
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
      object SpeedButton2: TAdvGlowButton
        Left = 196
        Top = 6
        Width = 127
        Height = 28
        Caption = #1575#1606#1578#1602#1575#1604
        ImageIndex = 98
        Images = dm.ImageList_MainNew
        NotesFont.Charset = DEFAULT_CHARSET
        NotesFont.Color = clWindowText
        NotesFont.Height = -11
        NotesFont.Name = 'Tahoma'
        NotesFont.Style = []
        TabOrder = 2
        OnClick = SpeedButton2Click
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
      object SpeedButton3: TAdvGlowButton
        Left = 327
        Top = 6
        Width = 127
        Height = 28
        Caption = #1606#1605#1575#1610#1588' '#1604#1610#1587#1578' '#1582#1591#1575
        ImageIndex = 118
        Images = dm.ImageList_MainNew
        NotesFont.Charset = DEFAULT_CHARSET
        NotesFont.Color = clWindowText
        NotesFont.Height = -11
        NotesFont.Name = 'Tahoma'
        NotesFont.Style = []
        TabOrder = 3
        OnClick = SpeedButton3Click
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
      object Button5: TAdvGlowButton
        Left = 5
        Top = 6
        Width = 84
        Height = 28
        Action = AExit
        Cancel = True
        Font.Charset = ARABIC_CHARSET
        Font.Color = clNavy
        Font.Height = -11
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
    end
    object ListBox1: TListBox
      Left = 590
      Top = 1
      Width = 270
      Height = 638
      Align = alRight
      BevelOuter = bvNone
      ItemHeight = 14
      TabOrder = 2
    end
    object pnlTemp: TPanel
      Left = 1
      Top = 416
      Width = 589
      Height = 223
      Anchors = [akLeft, akRight, akBottom]
      TabOrder = 3
      DesignSize = (
        589
        223)
      object StatusLabel: TLabel
        Left = 489
        Top = 95
        Width = 89
        Height = 14
        Anchors = [akTop, akRight]
        Caption = #1608#1575#1585#1610#1586' '#1576#1607' '#1581#1587#1575#1576'   :'
        Font.Charset = ARABIC_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
      end
      object Label3: TLabel
        Left = 245
        Top = 95
        Width = 26
        Height = 14
        Anchors = [akTop, akRight]
        Caption = #1578#1575#1585#1610#1582':'
        Font.Charset = ARABIC_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
      end
      object Label1: TLabel
        Left = 489
        Top = 136
        Width = 92
        Height = 14
        Anchors = [akTop, akRight]
        Caption = #1605#1587#1610#1585' '#1601#1575#1610#1604' '#1575#1705#1587#1604':'
        Font.Charset = ARABIC_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
      end
      object Label2: TLabel
        Left = 490
        Top = 176
        Width = 91
        Height = 14
        Anchors = [akTop, akRight]
        Caption = #1578#1608#1590#1610#1581#1575#1578'           :'
        Font.Charset = ARABIC_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
      end
      object SpeedButton4: TAdvGlowButton
        Left = 14
        Top = 131
        Width = 23
        Height = 22
        ImageIndex = 78
        Images = dm.ImageList_MainNew
        NotesFont.Charset = DEFAULT_CHARSET
        NotesFont.Color = clWindowText
        NotesFont.Height = -11
        NotesFont.Name = 'Tahoma'
        NotesFont.Style = []
        TabOrder = 6
        OnClick = SpeedButton4Click
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
      object MajorAccount: TDBLookupComboBox
        Left = 281
        Top = 91
        Width = 206
        Height = 21
        Anchors = [akTop, akRight]
        BiDiMode = bdLeftToRight
        Font.Charset = ARABIC_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        KeyField = 'AccountID'
        ListField = 'AccountTitle'
        ListSource = dm.DSelect_Cash_Accounts
        ParentBiDiMode = False
        ParentFont = False
        TabOrder = 0
      end
      object GroupBox1: TGroupBox
        Left = 1
        Top = 1
        Width = 587
        Height = 41
        Align = alTop
        Caption = #1583#1585#1580' '#1576#1585' '#1575#1587#1575#1587
        TabOrder = 1
        DesignSize = (
          587
          41)
        object RadioButton2: TRadioButton
          Left = 237
          Top = 16
          Width = 113
          Height = 17
          Anchors = [akTop, akRight]
          Caption = #1588#1605#1575#1585#1607' '#1581#1587#1575#1576
          TabOrder = 0
        end
        object RadioButton1: TRadioButton
          Left = 365
          Top = 16
          Width = 113
          Height = 17
          Anchors = [akTop, akRight]
          Caption = #1588#1605#1575#1585#1607' '#1705#1575#1585#1605#1606#1583#1610
          Checked = True
          TabOrder = 1
          TabStop = True
        end
      end
      object EdtPathExcel: TEdit
        Left = 41
        Top = 131
        Width = 444
        Height = 21
        Anchors = [akLeft, akTop, akRight]
        BiDiMode = bdLeftToRight
        Font.Charset = ARABIC_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentBiDiMode = False
        ParentFont = False
        TabOrder = 2
        Text = 'D:\Excel\File_M.xls'
      end
      object MEDate: TSolarDatePicker
        Left = 40
        Top = 90
        Width = 202
        Height = 21
        Anchors = [akLeft, akTop, akRight]
        About = 'Created by : Mohamad Khorsandi'
        BiDiMode = bdLeftToRight
        Font.Charset = ARABIC_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        TabOrder = 3
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
      object EdtComment: TEdit
        Left = 40
        Top = 171
        Width = 445
        Height = 21
        Anchors = [akLeft, akTop, akRight]
        BiDiMode = bdLeftToRight
        Font.Charset = ARABIC_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentBiDiMode = False
        ParentFont = False
        TabOrder = 4
      end
      object GroupBox2: TGroupBox
        Left = 1
        Top = 42
        Width = 587
        Height = 41
        Align = alTop
        Caption = #1583#1585' '#1589#1608#1585#1578' '#1593#1583#1605' '#1608#1580#1608#1583' '#1605#1575#1607#1610#1575#1606#1607' '#1583#1585' '#1587#1610#1587#1578#1605' '
        TabOrder = 5
        DesignSize = (
          587
          41)
        object rbInsert: TRadioButton
          Left = 237
          Top = 16
          Width = 113
          Height = 17
          Anchors = [akTop, akRight]
          Caption = #1583#1585#1580' '#1588#1608#1583
          TabOrder = 0
        end
        object rbDontInsert: TRadioButton
          Left = 365
          Top = 16
          Width = 113
          Height = 17
          Anchors = [akTop, akRight]
          Caption = #1583#1585#1580' '#1606#1588#1608#1583
          Checked = True
          TabOrder = 1
          TabStop = True
        end
      end
    end
  end
  inherited ahmadvand: TActionList
    Top = 19
  end
  inherited Grid_PopupMenu: TPopupMenu
    Left = 39
    Top = 20
  end
  inherited qSetting: TADOQuery
    Left = 184
    Top = 24
  end
  object Q_DeleteT: TADOQuery
    Connection = dm.YeganehConnection
    Parameters = <>
    SQL.Strings = (
      'truncate table TbExcel')
    Left = 432
    Top = 224
  end
  object TbExcel: TADOTable
    Connection = dm.YeganehConnection
    CursorType = ctStatic
    TableName = 'TbExcel'
    Left = 432
    Top = 168
    object TbExcelRadif: TIntegerField
      DisplayLabel = #1585#1583#1610#1601
      DisplayWidth = 5
      FieldName = 'Radif'
    end
    object TbExcelPersonCode: TStringField
      DisplayLabel = #1588#1605#1575#1585#1607' '
      FieldName = 'PersonCode'
      FixedChar = True
      Size = 10
    end
    object TbExcelMelliCode: TStringField
      DisplayLabel = #1705#1583' '#1605#1604#1610
      DisplayWidth = 12
      FieldName = 'MelliCode'
      FixedChar = True
    end
    object TbExcelName: TWideStringField
      DisplayLabel = #1606#1575#1605
      DisplayWidth = 10
      FieldName = 'Name'
      Size = 50
    end
    object TbExcelFamily: TWideStringField
      DisplayLabel = #1606#1575#1605' '#1582#1575#1606#1608#1575#1583#1711#1610
      DisplayWidth = 20
      FieldName = 'Family'
      Size = 100
    end
    object TbExcelAmount: TIntegerField
      DisplayLabel = #1605#1576#1604#1594
      FieldName = 'Amount'
    end
  end
  object dTbExcel: TDataSource
    DataSet = TbExcel
    Left = 432
    Top = 112
  end
  object Q_Tmp: TADOQuery
    Connection = dm.YeganehConnection
    Parameters = <>
    SQL.Strings = (
      'truncate table table1')
    Left = 432
    Top = 56
  end
  object OpenExcelFile: TOpenDialog
    Left = 272
    Top = 16
  end
end
