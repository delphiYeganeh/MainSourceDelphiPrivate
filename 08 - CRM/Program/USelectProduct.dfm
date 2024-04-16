inherited SelectProduct: TSelectProduct
  Left = 693
  Top = 116
  BorderStyle = bsToolWindow
  Caption = #1578#1593#1610#1610#1606' '#1605#1580#1604#1607' '
  ClientHeight = 79
  ClientWidth = 331
  OldCreateOrder = True
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel [0]
    Left = 293
    Top = 20
    Width = 26
    Height = 13
    Caption = #1605#1580#1604#1607' '
  end
  object BitBtn1: TBitBtn [1]
    Left = 168
    Top = 48
    Width = 75
    Height = 25
    Caption = #1578#1575#1610#1610#1583
    TabOrder = 0
    OnClick = BitBtn1Click
    Kind = bkOK
  end
  object BitBtn2: TBitBtn [2]
    Left = 88
    Top = 48
    Width = 75
    Height = 25
    Caption = #1575#1606#1589#1585#1575#1601
    TabOrder = 1
    OnClick = BitBtn2Click
    Kind = bkCancel
  end
  object DBLookupComboBox1: TDBLookupComboBox [3]
    Left = 24
    Top = 16
    Width = 265
    Height = 21
    BiDiMode = bdLeftToRight
    KeyField = 'ProductID'
    ListField = 'ProductTitle'
    ListSource = Dm.DProduct
    ParentBiDiMode = False
    TabOrder = 2
  end
end
