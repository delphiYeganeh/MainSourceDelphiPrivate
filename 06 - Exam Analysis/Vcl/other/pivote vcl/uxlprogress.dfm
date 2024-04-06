object fmXLProgress: TfmXLProgress
  Left = 344
  Top = 273
  BorderStyle = bsNone
  ClientHeight = 76
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
    Height = 76
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
      Transparent = True
    end
    object lbAction: TPVLabel
      Left = 48
      Top = 7
      Width = 3
      Height = 13
      Transparent = True
    end
    object Label2: TPVLabel
      Left = 6
      Top = 27
      Width = 76
      Height = 13
      Caption = 'Action progress:'
      Transparent = True
    end
    object Label3: TPVLabel
      Left = 6
      Top = 51
      Width = 62
      Height = 13
      Caption = 'Full progress:'
      Transparent = True
    end
    object pFull: TProgressBar
      Left = 88
      Top = 52
      Width = 289
      Height = 13
      Smooth = True
      TabOrder = 0
    end
    object pAction: TProgressBar
      Left = 88
      Top = 28
      Width = 289
      Height = 13
      Smooth = True
      TabOrder = 1
    end
  end
end
