object fmProgress: TfmProgress
  Left = 344
  Top = 273
  BorderStyle = bsNone
  ClientHeight = 57
  ClientWidth = 387
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poMainFormCenter
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 387
    Height = 57
    Align = alClient
    BevelInner = bvLowered
    Ctl3D = True
    ParentCtl3D = False
    TabOrder = 0
    object Label1: TPVLabel
      Left = 6
      Top = 7
      Width = 33
      Height = 13
      Caption = 'Action:'
    end
    object lbAction: TPVLabel
      Left = 48
      Top = 7
      Width = 3
      Height = 13
    end
    object Gauge: TProgressBar
      Left = 8
      Top = 28
      Width = 369
      Height = 21
      Min = 0
      Max = 100
      Smooth = True
      TabOrder = 0
    end
  end
end
