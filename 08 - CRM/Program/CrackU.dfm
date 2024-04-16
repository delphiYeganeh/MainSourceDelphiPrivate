object Fcrack: TFcrack
  Left = 192
  Top = 107
  Width = 364
  Height = 153
  BiDiMode = bdLeftToRight
  BorderIcons = [biSystemMenu]
  Caption = 'YEGANEH'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  ParentBiDiMode = False
  Position = poScreenCenter
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 1
    Top = 16
    Width = 82
    Height = 13
    Caption = 'Serial number '
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label2: TLabel
    Left = 25
    Top = 49
    Width = 55
    Height = 13
    Caption = 'Password'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Button1: TButton
    Left = 60
    Top = 77
    Width = 75
    Height = 25
    Caption = 'Make Pass'
    TabOrder = 2
    OnClick = Action1Execute
  end
  object Edit1: TEdit
    Left = 84
    Top = 42
    Width = 246
    Height = 21
    BiDiMode = bdLeftToRight
    ParentBiDiMode = False
    TabOrder = 1
  end
  object Edit2: TEdit
    Left = 84
    Top = 14
    Width = 246
    Height = 21
    BiDiMode = bdLeftToRight
    ParentBiDiMode = False
    TabOrder = 0
  end
  object RadioButton1: TRadioButton
    Left = 168
    Top = 80
    Width = 65
    Height = 17
    Caption = 'Network'
    TabOrder = 3
  end
  object RadioButton2: TRadioButton
    Left = 240
    Top = 80
    Width = 73
    Height = 17
    Caption = 'single'
    TabOrder = 4
  end
  object ActionList1: TActionList
    Left = 144
    Top = 24
    object Action1: TAction
      Caption = 'Action1'
      ShortCut = 57409
      OnExecute = Action1Execute
    end
  end
  object ADOConnection: TADOConnection
    Provider = 'SQLOLEDB.1'
    Left = 280
    Top = 32
  end
end
