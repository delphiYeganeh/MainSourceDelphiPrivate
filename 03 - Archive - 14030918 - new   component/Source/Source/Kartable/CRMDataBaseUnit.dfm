inherited CRMDataBaseForm: TCRMDataBaseForm
  Left = 375
  Top = 212
  Caption = #1575#1606#1578#1582#1575#1576' '#1576#1575#1606#1705' '#1575#1591#1604#1575#1593#1575#1578#1610' CRM'
  ClientHeight = 86
  ClientWidth = 292
  Constraints.MinHeight = 120
  Constraints.MinWidth = 300
  OldCreateOrder = True
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel [0]
    Left = 153
    Top = 26
    Width = 122
    Height = 13
    Caption = #1606#1575#1605' '#1576#1575#1606#1705' '#1575#1591#1604#1575#1593#1575#1578#1610'CRM '
    Font.Charset = ARABIC_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Button1: TButton [1]
    Left = 104
    Top = 56
    Width = 75
    Height = 25
    Caption = #1578#1575#1610#1610#1583
    TabOrder = 0
    OnClick = Button1Click
  end
  object DataBase: TEdit [2]
    Left = 8
    Top = 23
    Width = 145
    Height = 21
    TabOrder = 1
    Text = 'CRM'
  end
  inherited DSForm: TDataSource
    Left = 240
    Top = 48
  end
  inherited ActionList: TActionList
    Left = 192
    Top = 48
  end
  inherited Grid_PopupMenu: TPopupMenu
    Top = 60
  end
end
