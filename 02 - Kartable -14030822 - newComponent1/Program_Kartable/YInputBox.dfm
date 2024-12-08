inherited FmInputBox: TFmInputBox
  Left = 659
  Top = 286
  ActiveControl = nil
  Caption = ''
  ClientHeight = 99
  ClientWidth = 385
  PixelsPerInch = 96
  TextHeight = 13
  inherited Panel1: TPanel
    Width = 385
    Height = 99
    inherited Label1: TLabel
      Left = 240
      Width = 135
      Caption = '                                             '
    end
    inherited MaskEdit1: TMaskEdit
      Left = 8
      Width = 370
      Anchors = [akLeft, akTop, akRight]
    end
    inherited BtnOK: TButton
      Left = 87
    end
    inherited BtnCancel: TButton
      Left = 7
    end
  end
end
