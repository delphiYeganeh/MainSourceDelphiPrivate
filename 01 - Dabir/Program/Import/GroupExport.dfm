object FrMakeGroupExport: TFrMakeGroupExport
  Left = 298
  Top = 212
  Width = 506
  Height = 278
  BiDiMode = bdRightToLeft
  Caption = #1578#1607#1610#1607' '#1711#1586#1575#1585#1588' '#1575#1586
  Color = clBtnFace
  Font.Charset = ARABIC_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  ParentBiDiMode = False
  Position = poScreenCenter
  OnClose = FormClose
  OnCreate = FormCreate
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 203
    Width = 498
    Height = 41
    Align = alBottom
    TabOrder = 0
    DesignSize = (
      498
      41)
    object Button1: TButton
      Left = 407
      Top = 8
      Width = 75
      Height = 25
      Cursor = crHandPoint
      Anchors = [akRight, akBottom]
      Caption = #1578#1607#1610#1607' '#1711#1586#1575#1585#1588
      TabOrder = 0
      OnClick = reportClick
    end
    object Button4: TButton
      Left = 16
      Top = 8
      Width = 75
      Height = 25
      Cursor = crHandPoint
      Caption = #1582#1585#1608#1580
      TabOrder = 1
      OnClick = Button4Click
    end
  end
  object PageControl1: TPageControl
    Left = 0
    Top = 0
    Width = 498
    Height = 203
    ActivePage = TabSheet2
    Align = alClient
    TabHeight = 30
    TabOrder = 1
    TabWidth = 212
    object TabSheet2: TTabSheet
      Caption = #1575#1585#1587#1575#1604' '#1576#1607' Word'
      ImageIndex = 1
      DesignSize = (
        490
        163)
      object Label3: TLabel
        Left = 396
        Top = 7
        Width = 87
        Height = 13
        Anchors = [akTop, akRight]
        Caption = #1602#1575#1604#1576' '#1605#1608#1585#1583' '#1575#1587#1578#1601#1575#1583#1607' '
      end
      object Label5: TLabel
        Left = 384
        Top = 136
        Width = 88
        Height = 13
        Anchors = [akTop, akRight]
        Caption = '----------------------'
      end
      object DBLookupComboBox2: TDBLookupComboBox
        Left = 234
        Top = 4
        Width = 159
        Height = 21
        Anchors = [akTop, akRight]
        BiDiMode = bdLeftToRight
        DataField = 'TemplateID'
        KeyField = 'ID'
        ListField = 'Title'
        ListSource = Dm.DLetterTemplate
        ParentBiDiMode = False
        TabOrder = 0
      end
      object NewPage: TCheckBox
        Left = 335
        Top = 40
        Width = 137
        Height = 17
        Anchors = [akTop, akRight]
        Caption = #1607#1585' '#1585#1603#1608#1585#1583' '#1583#1585' '#1610#1603' '#1589#1601#1581#1607
        Checked = True
        State = cbChecked
        TabOrder = 1
      end
      object GetValueInNull: TCheckBox
        Left = 199
        Top = 72
        Width = 273
        Height = 17
        Anchors = [akTop, akRight]
        Caption = #1583#1585' '#1589#1608#1585#1578'  '#1606#1583#1575#1588#1578#1606' '#1605#1602#1583#1575#1585' '#1610#1603' '#1601#1610#1604#1583' '#1605#1602#1583#1575#1585' '#1570#1606' '#1662#1585#1587#1610#1583#1607' '#1588#1608#1583
        TabOrder = 2
      end
      object Button2: TButton
        Left = 7
        Top = 112
        Width = 129
        Height = 33
        Anchors = [akTop, akRight]
        Caption = #1575#1585#1587#1575#1604' '#1576#1607' WORD'
        TabOrder = 3
        OnClick = Button2Click
      end
      object ReplaceInHeader: TCheckBox
        Left = 199
        Top = 104
        Width = 273
        Height = 17
        Anchors = [akTop, akRight]
        Caption = #1587#1585#1576#1585#1711' '#1602#1575#1604#1576' '#1606#1575#1605#1607' '#1606#1610#1586' '#1576#1575' '#1578#1594#1610#1610#1585' '#1585#1603#1608#1585#1583' '#1548' '#1578#1594#1610#1610#1585' '#1605#1610' '#1603#1606#1583
        TabOrder = 4
      end
    end
    object TabSheet4: TTabSheet
      Caption = #1578#1607#1610#1607' '#1711#1586#1575#1585#1588' '#1575#1608#1604#1610#1607
      ImageIndex = 3
      object FilterPanel: TPanel
        Left = 0
        Top = 0
        Width = 490
        Height = 7
        Align = alTop
        TabOrder = 0
      end
      object YDBG: TYDBGrid
        Left = 0
        Top = 7
        Width = 490
        Height = 200
        Cursor = crHandPoint
        Align = alTop
        Color = 15066597
        DataSource = DSample
        TabOrder = 1
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
        InvertFarsiDate = True
        TitleSort = True
        AutoInsert = False
        FooterFields = 'Count'
      end
    end
  end
  object Sample: TADODataSet
    Connection = Dm.YeganehConnection
    Parameters = <>
    Left = 312
    Top = 64
  end
  object DSample: TDataSource
    DataSet = Sample
    Left = 312
    Top = 112
  end
  object Fields: TADOStoredProc
    Connection = Dm.YeganehConnection
    CursorType = ctStatic
    ProcedureName = 'sp_FieldByTableCode'
    Parameters = <
      item
        Name = '@RETURN_VALUE'
        DataType = ftInteger
        Direction = pdReturnValue
        Precision = 10
        Value = 0
      end
      item
        Name = '@tableid'
        Attributes = [paNullable]
        DataType = ftInteger
        Precision = 10
        Value = 17
      end>
    Left = 248
    Top = 70
    object FieldsID: TAutoIncField
      FieldName = 'ID'
      ReadOnly = True
    end
    object FieldsTableID: TWordField
      FieldName = 'TableID'
    end
    object FieldsFieldName: TStringField
      FieldName = 'FieldName'
      Size = 50
    end
    object FieldsDescription: TStringField
      FieldName = 'Description'
      Size = 50
    end
    object FieldsISString: TBooleanField
      FieldName = 'ISString'
    end
    object FieldsIsLike: TBooleanField
      FieldName = 'IsLike'
    end
    object FieldsEveryLike: TBooleanField
      FieldName = 'EveryLike'
    end
    object FieldsIsWhere: TBooleanField
      FieldName = 'IsWhere'
    end
    object FieldsVisibleInGrid: TBooleanField
      FieldName = 'VisibleInGrid'
    end
  end
  object Yeganeh_Word: TYeganeh_Word
    WordApplication = WordApplication
    WordDocument = WordDocument
    WordTitle = #1606#1585#1605' '#1575#1601#1586#1575#1585#1610' '#1610#1711#1575#1606#1607
    NewPage = False
    InvertDateNo = False
    ReplaceInHeader = False
    OnNeedTextOnNull = Yeganeh_WordNeedTextOnNull
    DocumetTemplateFile = 'YEGANEH_template_FILE.doc'
    WordFilePath = 'c:\'
    Ydataset = Sample
    invertNumber = False
    Left = 64
    Top = 64
  end
  object WordDocument: TWordDocument
    AutoConnect = False
    ConnectKind = ckRunningOrNew
    Left = 160
    Top = 120
  end
  object WordApplication: TWordApplication
    AutoConnect = False
    ConnectKind = ckRunningOrNew
    AutoQuit = False
    Left = 160
    Top = 64
  end
end
