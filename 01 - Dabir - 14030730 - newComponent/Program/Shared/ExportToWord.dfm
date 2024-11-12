inherited FExportToWord: TFExportToWord
  Left = 632
  Top = 287
  BorderStyle = bsSingle
  Caption = #1601#1585#1605' '#1662#1610#1608#1587#1578' WORD'
  ClientHeight = 348
  ClientWidth = 412
  Constraints.MinHeight = 300
  Constraints.MinWidth = 420
  OldCreateOrder = True
  PixelsPerInch = 96
  TextHeight = 13
  object Label3: TLabel [0]
    Left = 250
    Top = 61
    Width = 3
    Height = 13
  end
  object pnlMain: TPanel [1]
    Left = 0
    Top = 0
    Width = 412
    Height = 348
    Align = alClient
    TabOrder = 0
    object pnlButton: TPanel
      Left = 1
      Top = 306
      Width = 410
      Height = 41
      Align = alBottom
      TabOrder = 0
      DesignSize = (
        410
        41)
      object SBSettings: TAdvGlowButton
        Left = 99
        Top = 7
        Width = 100
        Height = 28
        Cursor = crHandPoint
        Anchors = [akTop, akRight]
        Caption = #1578#1606#1592#1610#1605#1575#1578
        ImageIndex = 46
        Images = Dm.LetterImages_New
        NotesFont.Charset = DEFAULT_CHARSET
        NotesFont.Color = clWindowText
        NotesFont.Height = -11
        NotesFont.Name = 'Tahoma'
        NotesFont.Style = []
        Spacing = -1
        TabOrder = 3
        OnClick = SBSettingsClick
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
      object OpenFile: TAdvGlowButton
        Left = 200
        Top = 7
        Width = 100
        Height = 28
        Cursor = crHandPoint
        Anchors = [akTop, akRight]
        Caption = #1582#1608#1575#1606#1583#1606' '#1575#1586' '#1601#1575#1610#1604
        Font.Charset = ARABIC_CHARSET
        Font.Color = clNavy
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ImageIndex = 29
        Images = Dm.ImageList_MainNew
        NotesFont.Charset = DEFAULT_CHARSET
        NotesFont.Color = clWindowText
        NotesFont.Height = -11
        NotesFont.Name = 'Tahoma'
        NotesFont.Style = []
        ParentFont = False
        TabOrder = 0
        OnClick = OpenFileClick
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
      object ExpToWord: TAdvGlowButton
        Left = 301
        Top = 7
        Width = 100
        Height = 28
        Cursor = crHandPoint
        Anchors = [akTop, akRight]
        Caption = ' Word'
        Font.Charset = ARABIC_CHARSET
        Font.Color = clNavy
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ImageIndex = 43
        Images = Dm.ImageList_MainNew
        NotesFont.Charset = DEFAULT_CHARSET
        NotesFont.Color = clWindowText
        NotesFont.Height = -11
        NotesFont.Name = 'Tahoma'
        NotesFont.Style = []
        ParentFont = False
        TabOrder = 1
        OnClick = ExpToWordClick
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
      object btnClose: TAdvGlowButton
        Left = 7
        Top = 7
        Width = 75
        Height = 28
        Cursor = crHandPoint
        Cancel = True
        Caption = #1582#1585#1608#1580
        Font.Charset = ARABIC_CHARSET
        Font.Color = clNavy
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ImageIndex = 84
        Images = Dm.ImageList_MainNew
        NotesFont.Charset = DEFAULT_CHARSET
        NotesFont.Color = clWindowText
        NotesFont.Height = -11
        NotesFont.Name = 'Tahoma'
        NotesFont.Style = []
        ParentFont = False
        TabOrder = 2
        OnClick = btnCloseClick
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
    object PProgress: TPanel
      Left = 1
      Top = 272
      Width = 410
      Height = 34
      Align = alBottom
      Caption = #1670#1606#1583' '#1604#1581#1592#1607' '#1589#1576#1585' '#1705#1606#1610#1583' ...'
      Font.Charset = ARABIC_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 1
      Visible = False
    end
    object Panel3: TPanel
      Left = 1
      Top = 54
      Width = 410
      Height = 218
      Align = alClient
      TabOrder = 2
      object YDBGrid2: TYDBGrid
        Left = 1
        Top = 1
        Width = 408
        Height = 216
        Align = alClient
        Color = 15923705
        DataSource = Dm.DLetterTemplate
        Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit]
        ReadOnly = True
        TabOrder = 0
        TitleFont.Charset = ARABIC_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'Tahoma'
        TitleFont.Style = []
        YeganehColor = True
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
            FieldName = 'Title'
            Title.Alignment = taCenter
            Title.Caption = #1602#1575#1604#1576' '#1605#1608#1585#1583' '#1575#1587#1578#1601#1575#1583#1607' '
            Title.Color = 16377053
            Width = 370
            Visible = True
          end>
      end
    end
    object Panel1: TxpPanel
      Left = 1
      Top = 1
      Width = 410
      Height = 53
      StartColor = 16511469
      EndColor = 16244694
      FillDirection = fdLeftToRight
      TitleShow = False
      Caption = 'xpPanel'
      Title = 'xpPanelTitle'
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clNavy
      TitleFont.Height = -11
      TitleFont.Name = 'MS Sans Serif'
      TitleFont.Style = [fsBold]
      TitleAlignment = taCenter
      TitleStartColor = clWhite
      TitleEndColor = 15777194
      TitleColor = clWhite
      TitleFillDirect = fdLeftToRight
      TitleImageAlign = tiaLeft
      TitleButtons = [tbMinimize]
      DefaultHeight = 60
      BorderColor = clWhite
      BGImageAlign = iaStretch
      Align = alTop
      TabOrder = 3
      DesignSize = (
        408
        51)
      object Label1: TLabel
        Left = 340
        Top = 30
        Width = 58
        Height = 13
        Anchors = [akTop, akRight]
        Caption = #1711#1585#1608#1607' '#1602#1575#1604#1576' '#1607#1575
      end
      object ExactCB: TCheckBox
        Left = 294
        Top = 2
        Width = 105
        Height = 17
        Cursor = crHandPoint
        Anchors = [akTop, akRight]
        Caption = #1670#1575#1662' '#1585#1608#1606#1608#1588#1578' '#1607#1575' '
        TabOrder = 0
      end
      object LookupTemplateGroup: TDBLookupComboBox
        Left = 38
        Top = 26
        Width = 296
        Height = 21
        Anchors = [akTop, akRight]
        BiDiMode = bdLeftToRight
        KeyField = 'TemplateGroupID'
        ListField = 'TemplateGroupTitle'
        ListSource = Dm.DUserTemplateGroup
        ParentBiDiMode = False
        TabOrder = 1
        OnClick = LookupTemplateGroupClick
      end
    end
  end
  inherited DSForm: TDataSource
    DataSet = GetLetterTemplate_HeaderID
    Left = 106
    Top = 176
  end
  inherited ActionList: TActionList
    Left = 316
    Top = 85
  end
  inherited Grid_PopupMenu: TPopupMenu
    Left = 255
    Top = 57
  end
  inherited ApplicationEvents1: TApplicationEvents
    Top = 224
  end
  object WordApplication: TWordApplication
    AutoConnect = False
    ConnectKind = ckRunningOrNew
    AutoQuit = True
    OnDocumentOpen = WordApplicationDocumentOpen
    OnDocumentBeforeClose = WordApplicationDocumentBeforeClose
    Left = 264
    Top = 219
  end
  object WordDocument: TWordDocument
    AutoConnect = False
    ConnectKind = ckRunningOrNew
    Left = 261
    Top = 152
  end
  object Dsel: TDataSource
    DataSet = SelectInfo
    Left = 120
    Top = 272
  end
  object SelectInfo: TADOStoredProc
    Connection = Dm.YeganehConnection
    CursorType = ctStatic
    ProcedureName = 'SelectInfo;1'
    Parameters = <
      item
        Name = '@where'
        Attributes = [paNullable]
        DataType = ftString
        Size = 1900
        Value = '1=1'
      end>
    Left = 56
    Top = 192
  end
  object Fields: TADODataSet
    Connection = Dm.YeganehConnection
    CursorType = ctStatic
    CommandText = 
      'select Fields.* from Fields'#13#10'inner join  Tables on  Tables.table' +
      'id=fields.tableid'#13#10'where  TableName in (:@tablename,'#39'Letter'#39')'
    Parameters = <
      item
        Name = '@tablename'
        DataType = ftString
        NumericScale = 255
        Precision = 255
        Size = 50
        Value = Null
      end>
    Left = 172
    Top = 97
    object FieldsID: TAutoIncField
      FieldName = 'ID'
      ReadOnly = True
    end
    object FieldsFieldName: TStringField
      FieldName = 'FieldName'
      Size = 50
    end
    object FieldsDescription: TWideStringField
      FieldName = 'Description'
      Size = 50
    end
  end
  object TimerWord: TTimer
    Enabled = False
    Interval = 2000
    OnTimer = TimerWordTimer
    Left = 355
    Top = 174
  end
  object GetLetterTemplate_HeaderID: TADODataSet
    Connection = Dm.YeganehConnection
    CursorType = ctStatic
    CommandText = 'GetLetterTemplate_HeaderID'
    CommandType = cmdStoredProc
    Parameters = <
      item
        Name = '@RETURN_VALUE'
        DataType = ftInteger
        Direction = pdReturnValue
        Precision = 10
        Value = 0
      end
      item
        Name = '@letterId'
        Attributes = [paNullable]
        DataType = ftInteger
        Precision = 10
        Value = Null
      end>
    Left = 165
    Top = 45
    object GetLetterTemplate_HeaderIDLetterID: TAutoIncField
      FieldName = 'LetterID'
      ReadOnly = True
    end
    object GetLetterTemplate_HeaderIDTemplateId: TIntegerField
      FieldName = 'TemplateId'
    end
    object GetLetterTemplate_HeaderIDheaderid: TIntegerField
      FieldName = 'headerid'
    end
    object GetLetterTemplate_HeaderIDFromOrgID: TIntegerField
      FieldName = 'FromOrgID'
    end
    object GetLetterTemplate_HeaderIDPreCode: TWideStringField
      FieldName = 'PreCode'
      Size = 50
    end
  end
  object Select_Fields_by_TableID: TADOStoredProc
    Connection = Dm.YeganehConnection
    CursorType = ctStatic
    ProcedureName = 'Select_Fields_by_TableID'
    Parameters = <
      item
        Name = '@RETURN_VALUE'
        DataType = ftInteger
        Direction = pdReturnValue
        Precision = 10
        Value = 0
      end
      item
        Name = '@LetterID'
        Attributes = [paNullable]
        DataType = ftInteger
        Precision = 10
        Value = Null
      end>
    Left = 56
    Top = 80
    object Select_Fields_by_TableIDID: TAutoIncField
      FieldName = 'ID'
      ReadOnly = True
    end
    object Select_Fields_by_TableIDDescription: TWideStringField
      FieldName = 'Description'
      Size = 50
    end
  end
  object DataSource1: TDataSource
    DataSet = Select_Fields_by_TableID
    Left = 104
    Top = 136
  end
  object OpenDialog: TTntOpenDialog
    Filter = 'Word Files (*.docx)|*.docx'
    Left = 358
    Top = 127
  end
  object ExcelApplication: TExcelApplication
    AutoConnect = False
    ConnectKind = ckRunningOrNew
    AutoQuit = True
    OnWorkbookBeforeClose = ExcelApplicationWorkbookBeforeClose
    Left = 48
    Top = 144
  end
  object ExcelWorksheet: TExcelWorksheet
    AutoConnect = False
    ConnectKind = ckRunningOrNew
    Left = 32
    Top = 256
  end
  object TimerExcel: TTimer
    Enabled = False
    Interval = 2000
    OnTimer = TimerExcelTimer
    Left = 355
    Top = 214
  end
end
