object Form1: TForm1
  Left = 441
  Top = 283
  Width = 1088
  Height = 414
  Caption = 'Form1'
  Color = clBtnFace
  Font.Charset = ARABIC_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 14
  object BitBtn2: TBitBtn
    Left = 128
    Top = 320
    Width = 211
    Height = 25
    Caption = #1575#1585#1578#1576#1575#1591' '#1576#1575' '#1601#1575#1610#1604' '#1575#1705#1587#1604' '#1608#1575#1605
    TabOrder = 0
    OnClick = BitBtn2Click
  end
  object BitBtn4: TBitBtn
    Left = 128
    Top = 352
    Width = 211
    Height = 25
    Caption = #1575#1585#1578#1576#1575#1591' '#1576#1575' '#1601#1575#1610#1604' '#1575#1705#1587#1604' '#1575#1602#1587#1575#1591
    TabOrder = 1
    OnClick = BitBtn4Click
  end
  object Edit1: TEdit
    Left = 0
    Top = 320
    Width = 121
    Height = 22
    TabOrder = 2
    Text = 'D:\Excel\File_V.xls'
  end
  object Edit2: TEdit
    Left = 0
    Top = 352
    Width = 121
    Height = 22
    TabOrder = 3
    Text = 'D:\Excel\File_S.xls'
  end
  object YDBGrid1: TYDBGrid
    Left = 0
    Top = 0
    Width = 1055
    Height = 120
    Align = alTop
    DataSource = dtable1
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
  end
  object BitBtn1: TBitBtn
    Left = 376
    Top = 320
    Width = 211
    Height = 25
    Caption = #1575#1606#1578#1602#1575#1604' '#1576#1607' '#1576#1575#1606#1705' '#1575#1591#1604#1575#1593#1575#1578#1610
    TabOrder = 5
    OnClick = BitBtn1Click
  end
  object dtable1: TDataSource
    DataSet = Table1
    Left = 40
    Top = 136
  end
  object Table1: TADOTable
    Connection = dm.YeganehConnection
    TableName = 'Table1'
    Left = 8
    Top = 128
  end
  object Q_DeleteT: TADOQuery
    Connection = dm.YeganehConnection
    Parameters = <>
    SQL.Strings = (
      'truncate table table1')
    Left = 8
    Top = 184
  end
end
