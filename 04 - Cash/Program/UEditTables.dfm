inherited EditTables: TEditTables
  Left = 358
  Top = 233
  Width = 472
  Height = 290
  BiDiMode = bdRightToLeft
  Caption = #1608#1610#1585#1575#1610#1588' '#1580#1583#1575#1608#1604
  Color = clBtnFace
  Ctl3D = True
  OldCreateOrder = True
  ParentBiDiMode = False
  Position = poScreenCenter
  PixelsPerInch = 96
  TextHeight = 13
  object DBGrid1: TDBGrid [0]
    Left = 0
    Top = 0
    Width = 464
    Height = 201
    Align = alTop
    DataSource = DSForm
    Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit]
    ReadOnly = True
    TabOrder = 4
    TitleFont.Charset = ARABIC_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
    Columns = <
      item
        Expanded = False
        FieldName = 'TableName'
        Title.Alignment = taCenter
        Title.Caption = #1606#1575#1605' '#1580#1583#1608#1604
        Width = 117
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Description'
        Title.Alignment = taCenter
        Title.Caption = #1606#1575#1605' '#1601#1575#1585#1587#1610
        Width = 212
        Visible = True
      end>
  end
  object BitBtn1: TBitBtn [1]
    Left = 376
    Top = 208
    Width = 75
    Height = 25
    Caption = #1578#1594#1610#1610#1585' '#1593#1606#1608#1575#1606
    TabOrder = 1
    OnClick = BitBtn1Click
  end
  object BitBtn2: TBitBtn [2]
    Left = 264
    Top = 208
    Width = 99
    Height = 25
    Caption = #1581#1584#1601' '#1575#1610#1606' '#1580#1583#1608#1604
    TabOrder = 2
    OnClick = BitBtn2Click
  end
  object BitBtn3: TBitBtn [3]
    Left = 8
    Top = 232
    Width = 75
    Height = 25
    Caption = #1582#1585#1608#1580
    TabOrder = 3
    OnClick = BitBtn3Click
  end
  inherited Wow: TButton
    Left = 8
    Top = 205
    Width = 41
    Height = 25
  end
  inherited DSForm: TDataSource
    DataSet = dm.Tables
  end
  inherited ActionList: TActionList
    Left = 8
    Top = 56
  end
end
