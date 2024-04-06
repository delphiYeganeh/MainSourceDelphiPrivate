inherited ChangeDate: TChangeDate
  Width = 328
  Height = 134
  Caption = #1578#1594#1610#1610#1585' '#1578#1575#1585#1610#1582' '#1580#1575#1585#1610' '#1587#1610#1587#1578#1605
  Font.Style = [fsBold]
  OldCreateOrder = True
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel [0]
    Left = 210
    Top = 23
    Width = 101
    Height = 13
    Caption = #1578#1575#1585#1610#1582' '#1580#1575#1585#1610' '#1587#1610#1587#1578#1605
  end
  object ShamsiDateEdit1: TShamsiDateEdit [1]
    Left = 84
    Top = 21
    Width = 121
    Height = 21
    TabOrder = 0
    Text = #0
  end
  object Button1: TButton [2]
    Left = 98
    Top = 63
    Width = 75
    Height = 25
    Action = AChangeDate
    Default = True
    TabOrder = 1
  end
  object Button2: TButton [3]
    Left = 7
    Top = 63
    Width = 75
    Height = 25
    Action = AExit
    Caption = #1575#1606#1589#1585#1575#1601
    TabOrder = 2
  end
  inherited ahmadvand: TActionList
    Left = 14
    Top = 21
    object AChangeDate: TAction
      Caption = #1578#1575#1610#1610#1583
      ShortCut = 13
      OnExecute = AChangeDateExecute
    end
  end
end
