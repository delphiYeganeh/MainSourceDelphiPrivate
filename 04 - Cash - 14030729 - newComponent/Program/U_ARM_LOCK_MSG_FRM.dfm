object ARM_LOCK_MSG_FRM: TARM_LOCK_MSG_FRM
  Left = 506
  Top = 283
  BorderStyle = bsDialog
  ClientHeight = 111
  ClientWidth = 244
  Color = clBtnFace
  Font.Charset = ARABIC_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 172
    Top = 8
    Width = 67
    Height = 16
    BiDiMode = bdRightToLeft
    Caption = #1582#1591#1575#1610' '#1602#1601#1604
    Font.Charset = ARABIC_CHARSET
    Font.Color = clRed
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentBiDiMode = False
    ParentFont = False
  end
  object BitBtn1: TBitBtn
    Left = 8
    Top = 80
    Width = 75
    Height = 25
    Caption = 'IP '#1578#1594#1610#1610#1585' '
    TabOrder = 0
  end
  object BitBtn2: TBitBtn
    Left = 88
    Top = 80
    Width = 75
    Height = 25
    Caption = #1582#1585#1608#1580
    TabOrder = 1
    OnClick = BitBtn2Click
  end
end
