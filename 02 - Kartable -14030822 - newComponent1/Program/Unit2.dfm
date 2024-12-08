object Form2: TForm2
  Left = 473
  Top = 189
  Width = 737
  Height = 468
  Caption = 'Form2'
  Color = clWindow
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object xpPageControl1: TxpPageControl
    Left = 312
    Top = 8
    Width = 289
    Height = 193
    ActivePage = xpTabSheet2
    OwnerDraw = True
    ParentShowHint = False
    ShowHint = True
    Style = pcsXP
    TabOrder = 0
    TabPosition = tpTop
    BorderColor = clSilver
    TabTextAlignment = taCenter
    object xpTabSheet1: TxpTabSheet
      Caption = 'xpTabSheet1'
      Color = clWhite
      BGStyle = bgsNone
      GradientStartColor = clWhite
      GradientEndColor = clSilver
      GradientFillDir = fdTopToBottom
    end
    object xpTabSheet2: TxpTabSheet
      Caption = 'xpTabSheet2'
      Color = clAqua
      BGStyle = bgsNone
      GradientStartColor = clWhite
      GradientEndColor = clSilver
      GradientFillDir = fdTopToBottom
    end
  end
end
