inherited FmSelectDB: TFmSelectDB
  Top = 131
  Caption = #1575#1606#1578#1582#1575#1576' '#1576#1575#1606#1705' '#1575#1591#1604#1575#1593#1575#1578#1610
  ClientHeight = 99
  ClientWidth = 280
  OldCreateOrder = True
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel [0]
    Left = 178
    Top = 28
    Width = 81
    Height = 13
    Caption = #1606#1575#1605' '#1576#1575#1606#1705' '#1575#1591#1604#1575#1593#1575#1578#1610
  end
  object DataBase: TComboBox [1]
    Left = 20
    Top = 24
    Width = 145
    Height = 21
    ItemHeight = 13
    ItemIndex = 0
    TabOrder = 0
    Text = 'YDabir'
    Items.Strings = (
      'YDabir')
  end
  object Button1: TButton [2]
    Left = 96
    Top = 64
    Width = 75
    Height = 25
    Caption = #1578#1575#1610#1610#1583
    TabOrder = 1
    OnClick = Button1Click
  end
  inherited DSForm: TDataSource
    Left = 20
    Top = 16
  end
  inherited ActionList: TActionList
    Left = 52
    Top = 16
  end
  inherited Grid_PopupMenu: TPopupMenu
    Left = 107
    Top = 12
  end
end
