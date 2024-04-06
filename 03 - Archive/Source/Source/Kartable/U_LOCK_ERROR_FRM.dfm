object LOCK_ERROR_FRM: TLOCK_ERROR_FRM
  Left = 684
  Top = 242
  BorderStyle = bsDialog
  ClientHeight = 155
  ClientWidth = 335
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 248
    Top = 8
    Width = 83
    Height = 19
    Caption = #1582#1591#1575#1610' '#1602#1601#1604
    Font.Charset = ARABIC_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object MSG: TLabel
    Left = 8
    Top = 40
    Width = 321
    Height = 73
    AutoSize = False
    BiDiMode = bdRightToLeft
    ParentBiDiMode = False
    WordWrap = True
  end
  object OK_BTN: TxpBitBtn
    Left = 256
    Top = 120
    Width = 75
    Height = 25
    startColor = 16645629
    EndColor = 14666957
    Caption = #1578#1575#1610#1610#1583
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clNavy
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    Gradient = True
    TabOrder = 0
    TabStop = True
    OnClick = OK_BTNClick
  end
  object CHNG_IP_BTN: TxpBitBtn
    Left = 8
    Top = 120
    Width = 145
    Height = 25
    startColor = 16645629
    EndColor = 14666957
    Caption = ' '#1587#1585#1608#1585' '#1602#1601#1604'IP '#1578#1594#1610#1610#1585' '#1570#1583#1585#1587' '
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clNavy
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    Enabled = False
    Gradient = True
    TabOrder = 1
    TabStop = True
    OnClick = CHNG_IP_BTNClick
  end
end
