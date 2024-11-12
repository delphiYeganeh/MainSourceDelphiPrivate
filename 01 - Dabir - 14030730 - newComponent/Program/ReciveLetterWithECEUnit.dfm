inherited FReciveLetterWithECE: TFReciveLetterWithECE
  Left = 504
  Top = 212
  Caption = #1583#1585#1610#1575#1601#1578' '#1606#1575#1605#1607' '#1576#1575' ECE'
  ClientHeight = 412
  ClientWidth = 627
  OldCreateOrder = True
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel [0]
    Left = 0
    Top = 0
    Width = 627
    Height = 41
    Align = alTop
    TabOrder = 0
    object Button1: TButton
      Left = 520
      Top = 8
      Width = 99
      Height = 25
      Caption = #1583#1585#1610#1575#1601#1578' '#1606#1575#1605#1607' '#1575#1586' . . .'
      TabOrder = 0
      OnClick = Button1Click
    end
  end
  object Panel2: TPanel [1]
    Left = 0
    Top = 41
    Width = 627
    Height = 371
    Align = alClient
    TabOrder = 1
  end
  object PopupMenu1: TPopupMenu
    Left = 536
    Top = 57
    object N1: TMenuItem
      Caption = #1575#1586' '#1605#1587#1610#1585
    end
    object N2: TMenuItem
      Caption = #1575#1586' EMail'
      OnClick = N2Click
    end
  end
end
