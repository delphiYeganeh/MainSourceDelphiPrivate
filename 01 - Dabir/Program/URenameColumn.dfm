object FmRenameColumn: TFmRenameColumn
  Left = 591
  Top = 356
  BiDiMode = bdRightToLeft
  BorderIcons = [biSystemMenu]
  BorderStyle = bsToolWindow
  Caption = '  '#1578#1594#1610#1610#1585' '#1606#1575#1605' '#1587#1578#1608#1606'  '
  ClientHeight = 106
  ClientWidth = 292
  Color = clBtnFace
  Constraints.MaxHeight = 140
  Constraints.MaxWidth = 300
  Constraints.MinHeight = 140
  Constraints.MinWidth = 300
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  ParentBiDiMode = False
  Position = poScreenCenter
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 201
    Top = 16
    Width = 79
    Height = 13
    Caption = #1606#1575#1605' '#1601#1593#1604#1610' '#1587#1578#1608#1606' :'
  end
  object Label2: TLabel
    Left = 201
    Top = 48
    Width = 75
    Height = 13
    Caption = #1606#1575#1605' '#1580#1583#1610#1583' '#1587#1578#1608#1606' :'
  end
  object ComboBox1: TComboBox
    Left = 19
    Top = 13
    Width = 177
    Height = 21
    Style = csDropDownList
    ItemHeight = 13
    TabOrder = 0
  end
  object Edit1: TEdit
    Left = 19
    Top = 44
    Width = 177
    Height = 21
    TabOrder = 1
  end
  object Button1: TButton
    Left = 16
    Top = 76
    Width = 75
    Height = 25
    Caption = #1575#1606#1589#1585#1575#1601
    TabOrder = 3
    OnClick = Button1Click
  end
  object Button2: TButton
    Left = 96
    Top = 76
    Width = 75
    Height = 25
    Caption = #1578#1575#1610#1610#1583
    Default = True
    TabOrder = 2
    OnClick = Button2Click
  end
end
