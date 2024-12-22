inherited FShowRounevesht: TFShowRounevesht
  Top = 104
  Caption = #1605#1588#1575#1607#1583#1607'  '#1587#1608#1575#1576#1602' '#1585#1608#1606#1608#1588#1578
  ClientHeight = 447
  ClientWidth = 962
  OldCreateOrder = True
  PixelsPerInch = 96
  TextHeight = 13
  object YDBGrid1: TYDBGrid [0]
    Left = 0
    Top = 0
    Width = 962
    Height = 389
    Cursor = crHandPoint
    Align = alClient
    DataSource = DSForm
    Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit]
    ReadOnly = True
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
    OnNeedColorCondition = YDBGrid1NeedColorCondition
    FooterFields = 'Count'
    Columns = <
      item
        Expanded = False
        FieldName = 'UserName'
        Title.Caption = #1579#1576#1578' '#1705#1606#1606#1583#1607' '#1585#1608#1606#1608#1588#1578
        Width = 120
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'orgtitle'
        Title.Caption = #1583#1585#1610#1575#1601#1578' '#1705#1606#1606#1583#1607' '#1585#1608#1606#1608#1588#1578
        Width = 200
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Paraph'
        Title.Caption = #1605#1590#1605#1608#1606' '#1585#1608#1606#1608#1588#1578
        Width = 600
        Visible = True
      end>
  end
  object Panel1: TPanel [1]
    Left = 0
    Top = 389
    Width = 962
    Height = 58
    Align = alBottom
    TabOrder = 1
    DesignSize = (
      962
      58)
    object Label1: TLabel
      Left = 880
      Top = 18
      Width = 81
      Height = 22
      Anchors = [akTop, akRight]
      Caption = #1605#1590#1605#1608#1606' '#1585#1608#1606#1608#1588#1578
    end
    object DBMemo1: TDBMemo
      Left = 33
      Top = 8
      Width = 840
      Height = 41
      Anchors = [akTop, akRight]
      DataField = 'Paraph'
      DataSource = DSForm
      TabOrder = 0
    end
  end
  inherited DSForm: TDataSource
    DataSet = Dm.spShowRounevesht
  end
end
