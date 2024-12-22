object FrMakeReport: TFrMakeReport
  Left = 646
  Top = 181
  Width = 673
  Height = 308
  AutoSize = True
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
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object YDBG: TYDBGrid
    Left = 0
    Top = 1
    Width = 665
    Height = 234
    Align = alTop
    Color = 15066597
    DataSource = DSample
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
    InvertFarsiDate = True
    TitleSort = True
    AutoInsert = False
    FooterFields = 'Count'
  end
  object Panel1: TPanel
    Left = 0
    Top = 235
    Width = 665
    Height = 39
    Align = alTop
    TabOrder = 1
    DesignSize = (
      665
      39)
    object Label1: TLabel
      Left = 188
      Top = 8
      Width = 27
      Height = 13
      Anchors = [akTop, akRight]
      Caption = #1578#1593#1583#1575#1583':'
    end
    object report: TButton
      Left = 582
      Top = 6
      Width = 75
      Height = 25
      Cursor = crHandPoint
      Anchors = [akTop, akRight]
      Caption = #1578#1607#1610#1607' '#1711#1586#1575#1585#1588
      TabOrder = 0
      OnClick = reportClick
    end
    object Button1: TButton
      Left = 464
      Top = 6
      Width = 115
      Height = 25
      Cursor = crHandPoint
      Anchors = [akTop, akRight]
      Caption = #1575#1606#1578#1582#1575#1576' '#1587#1578#1608#1606' '#1607#1575
      TabOrder = 1
      OnClick = Button1Click
    end
    object Button2: TButton
      Left = 344
      Top = 6
      Width = 115
      Height = 25
      Cursor = crHandPoint
      Anchors = [akTop, akRight]
      Caption = #1670#1575#1662' '#1711#1586#1575#1585#1588
      TabOrder = 2
      OnClick = Button2Click
    end
    object Button3: TButton
      Left = 224
      Top = 6
      Width = 115
      Height = 25
      Cursor = crHandPoint
      Anchors = [akTop, akRight]
      Caption = #1575#1585#1587#1575#1604' '#1576#1607' Word'
      TabOrder = 3
      OnClick = Button3Click
    end
    object Button4: TButton
      Left = 8
      Top = 6
      Width = 73
      Height = 25
      Cursor = crHandPoint
      Caption = #1582#1585#1608#1580
      TabOrder = 4
      OnClick = Button4Click
    end
  end
  object FilterPanel: TPanel
    Left = 0
    Top = 0
    Width = 665
    Height = 1
    Align = alTop
    TabOrder = 2
  end
  object Sample: TADODataSet
    Connection = Dm.YeganehConnection
    Parameters = <>
    Left = 152
    Top = 40
  end
  object DSample: TDataSource
    DataSet = Sample
    Left = 232
    Top = 312
  end
  object Fields: TADODataSet
    Connection = Dm.YeganehConnection
    CursorType = ctStatic
    CommandText = 
      #13#10'select *'#13#10'from fields'#13#10'where '#13#10'tableid = :@tableid'#13#10'and isblob' +
      '=0'
    Parameters = <
      item
        Name = '@tableid'
        DataType = ftWord
        Precision = 3
        Size = 1
        Value = 0
      end>
    Left = 88
    Top = 40
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
    object FieldsIsWhere: TBooleanField
      FieldName = 'IsWhere'
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
    object FieldsVisibleInGrid: TBooleanField
      FieldName = 'VisibleInGrid'
    end
  end
end
