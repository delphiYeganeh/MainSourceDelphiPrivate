object pvOKForm: TpvOKForm
  Left = 520
  Top = 295
  BorderStyle = bsNone
  Caption = 'pvOKForm'
  ClientHeight = 93
  ClientWidth = 132
  Color = clBlack
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  FormStyle = fsStayOnTop
  OldCreateOrder = False
  Position = poScreenCenter
  PixelsPerInch = 96
  TextHeight = 13
  object PVPanel1: TPVPanel
    Left = 0
    Top = 0
    Width = 130
    Height = 90
    TabOrder = 0
    Direction = gsTop
    Intensity = gsLow
    Dithering = True
    UsePVPaintner = False
    object Label1: TPVLabel
      Left = 1
      Top = 1
      Width = 128
      Height = 48
      Align = alTop
      Alignment = taCenter
      AutoSize = False
      Caption = 'Label1'
      Transparent = True
      Layout = tlCenter
    end
    object BitBtn1: TBitBtn
      Left = 28
      Top = 56
      Width = 75
      Height = 25
      TabOrder = 0
      Kind = bkOK
    end
  end
end
