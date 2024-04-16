object SearchForm: TSearchForm
  Left = 744
  Top = 141
  Width = 265
  Height = 548
  BiDiMode = bdRightToLeft
  Caption = #1580#1587#1578#1580#1608
  Color = clBtnFace
  Font.Charset = ARABIC_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  KeyPreview = True
  OldCreateOrder = False
  ParentBiDiMode = False
  OnCreate = FormCreate
  OnKeyPress = FormKeyPress
  PixelsPerInch = 96
  TextHeight = 13
  object GroupBox1: TGroupBox
    Left = 11
    Top = 8
    Width = 236
    Height = 57
    Caption = #1580#1587#1578#1580#1608
    TabOrder = 0
    object Label2: TLabel
      Left = 202
      Top = 24
      Width = 13
      Height = 13
      Caption = #1606#1575#1605
    end
    object edtName: TEdit
      Left = 8
      Top = 22
      Width = 188
      Height = 21
      TabOrder = 0
      OnChange = edtNameChange
    end
  end
  object YDBGrid1: TYDBGrid
    Left = 0
    Top = 72
    Width = 257
    Height = 442
    DataSource = DataSource1
    ReadOnly = True
    TabOrder = 1
    TitleFont.Charset = ARABIC_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
    OnDblClick = YDBGrid1DblClick
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
        FieldName = 'Title'
        Title.Caption = #1606#1575#1605' '#1705#1575#1585#1610#1585
        Width = 215
        Visible = True
      end>
  end
  object QUsers: TADOQuery
    Connection = Dm.YeganehConnection
    Parameters = <>
    SQL.Strings = (
      'SELECT 0 AS Id,'#39#1607#1605#1607#39' AS Title'
      'UNION ALL'
      'SELECT Id,Title FROM Users')
    Left = 200
    Top = 137
    object QUsersId: TAutoIncField
      FieldName = 'Id'
      ReadOnly = True
    end
    object QUsersTitle: TWideStringField
      FieldName = 'Title'
      ReadOnly = True
      Size = 50
    end
  end
  object DataSource1: TDataSource
    DataSet = QUsers
    Left = 152
    Top = 256
  end
end
