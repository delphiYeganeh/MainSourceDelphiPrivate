object FrCountry: TFrCountry
  Left = 211
  Top = 143
  Width = 396
  Height = 414
  Caption = '                                    ﬂ‘Ê—'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object Bevel1: TBevel
    Left = 8
    Top = 40
    Width = 370
    Height = 233
    Shape = bsFrame
    Style = bsRaised
  end
  object Label1: TLabel
    Left = 348
    Top = 85
    Width = 10
    Height = 13
    Caption = 'ﬂœ'
    FocusControl = DBEdit1
  end
  object Label2: TLabel
    Left = 348
    Top = 114
    Width = 15
    Height = 13
    Caption = '‰«„ '
    FocusControl = DBEdit2
  end
  object DBNavigator1: TDBNavigator
    Left = 8
    Top = 2
    Width = 370
    Height = 35
    DataSource = ESMSmodule.DsCountry
    TabOrder = 0
  end
  object DBGrid1: TDBGrid
    Left = 22
    Top = 49
    Width = 193
    Height = 215
    DataSource = ESMSmodule.DsCountry
    TabOrder = 1
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
  end
  object BtnSave: TBitBtn
    Left = 255
    Top = 332
    Width = 123
    Height = 49
    Caption = '–ŒÌ—Â'
    TabOrder = 2
    OnClick = BtnSaveClick
  end
  object BtnEdit: TBitBtn
    Left = 131
    Top = 282
    Width = 123
    Height = 49
    Caption = 'ÊÌ—«Ì‘'
    TabOrder = 3
    OnClick = BtnEditClick
  end
  object BtnDelete: TBitBtn
    Left = 8
    Top = 282
    Width = 123
    Height = 49
    Caption = 'Õ–›'
    TabOrder = 4
    OnClick = BtnDeleteClick
  end
  object BtnClose: TBitBtn
    Left = 8
    Top = 332
    Width = 123
    Height = 49
    Caption = '»«“ê‘ '
    TabOrder = 5
    OnClick = BtnCloseClick
  end
  object BtnInsert: TBitBtn
    Left = 255
    Top = 282
    Width = 123
    Height = 49
    Caption = '«÷«›Â'
    TabOrder = 6
    OnClick = BtnInsertClick
  end
  object BtnCancel: TBitBtn
    Left = 131
    Top = 332
    Width = 123
    Height = 49
    Caption = '«‰’—«›'
    TabOrder = 7
    OnClick = BtnCancelClick
  end
  object DBEdit1: TDBEdit
    Left = 310
    Top = 81
    Width = 32
    Height = 21
    DataField = 'Code'
    DataSource = ESMSmodule.DsCountry
    TabOrder = 8
  end
  object DBEdit2: TDBEdit
    Left = 227
    Top = 109
    Width = 115
    Height = 21
    DataField = 'Title'
    DataSource = ESMSmodule.DsCountry
    TabOrder = 9
  end
end
