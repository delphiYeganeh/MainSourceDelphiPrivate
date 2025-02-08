object ENTER_ADMIN_PASS_FRM: TENTER_ADMIN_PASS_FRM
  Left = 387
  Top = 218
  BiDiMode = bdRightToLeft
  BorderStyle = bsDialog
  Caption = #1608#1585#1608#1583' '#1576#1607' '#1605#1606#1608#1610' '#1587#1610#1587#1578#1605#1610
  ClientHeight = 84
  ClientWidth = 266
  Color = clBtnFace
  Font.Charset = ARABIC_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  ParentBiDiMode = False
  Position = poScreenCenter
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 208
    Top = 18
    Width = 45
    Height = 13
    Caption = #1585#1605#1586' '#1593#1576#1608#1585' :'
  end
  object PASSWORD: TEdit
    Left = 8
    Top = 16
    Width = 193
    Height = 21
    PasswordChar = '*'
    TabOrder = 0
    OnKeyPress = PASSWORDKeyPress
  end
  object BitBtn1: TBitBtn
    Left = 128
    Top = 48
    Width = 75
    Height = 25
    Caption = #1578#1575#1610#1610#1583
    TabOrder = 1
    OnClick = BitBtn1Click
  end
end
