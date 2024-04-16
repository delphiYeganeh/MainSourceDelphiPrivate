inherited FmUserTableLinked: TFmUserTableLinked
  Left = 442
  Top = 164
  Width = 613
  Height = 336
  Caption = #1601#1585#1605' '#1607#1575#1610' '#1662#1610#1608#1587#1578#1610' '
  OldCreateOrder = True
  PixelsPerInch = 96
  TextHeight = 13
  object YDBGrid1: TYDBGrid [0]
    Left = 0
    Top = 0
    Width = 605
    Height = 249
    Cursor = crHandPoint
    Align = alTop
    DataSource = DSForm
    TabOrder = 0
    TitleFont.Charset = ARABIC_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
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
        FieldName = 'ID'
        Visible = False
      end
      item
        Expanded = False
        FieldName = 'UserTableContentID'
        Visible = False
      end
      item
        Expanded = False
        FieldName = 'TableID'
        Visible = False
      end
      item
        Expanded = False
        FieldName = 'TableTitle'
        Title.Caption = #1606#1575#1605' '#1601#1585#1605
        Width = 212
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Description'
        Title.Caption = #1578#1608#1590#1610#1581#1575#1578
        Width = 200
        Visible = True
      end>
  end
  object Button1: TButton [1]
    Left = 512
    Top = 264
    Width = 75
    Height = 25
    Caption = #1580#1583#1610#1583' '
    TabOrder = 1
    OnClick = Button1Click
  end
  object Button2: TButton [2]
    Left = 416
    Top = 264
    Width = 75
    Height = 25
    Caption = #1581#1584#1601
    TabOrder = 2
    OnClick = Button2Click
  end
  object Button3: TButton [3]
    Left = 320
    Top = 264
    Width = 75
    Height = 25
    Caption = #1606#1605#1575#1610#1588
    TabOrder = 3
  end
  inherited DSForm: TDataSource
    DataSet = GetUserTableContentBYID
    Left = 256
    Top = 112
  end
  object GetUserTableContentBYID: TADOStoredProc
    Connection = Dm.YeganehConnection
    ProcedureName = 'GetUserTableContentBYID;1'
    Parameters = <
      item
        Name = '@RETURN_VALUE'
        DataType = ftInteger
        Direction = pdReturnValue
        Precision = 10
        Value = 0
      end
      item
        Name = '@UserTableContentID'
        Attributes = [paNullable]
        DataType = ftInteger
        Precision = 10
        Value = Null
      end>
    Left = 256
    Top = 56
    object GetUserTableContentBYIDID: TAutoIncField
      FieldName = 'ID'
      ReadOnly = True
    end
    object GetUserTableContentBYIDUserTableContentID: TIntegerField
      FieldName = 'UserTableContentID'
    end
    object GetUserTableContentBYIDTableID: TWordField
      FieldName = 'TableID'
    end
    object GetUserTableContentBYIDDescription: TWideStringField
      FieldName = 'Description'
      Size = 255
    end
    object GetUserTableContentBYIDTableTitle: TStringField
      FieldKind = fkLookup
      FieldName = 'TableTitle'
      LookupDataSet = Dm.Tables
      LookupKeyFields = 'TableId'
      LookupResultField = 'Description'
      KeyFields = 'TableID'
      Lookup = True
    end
  end
end
