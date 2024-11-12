object SETTING_ATF_PEY_FRM: TSETTING_ATF_PEY_FRM
  Left = 609
  Top = 248
  BorderStyle = bsDialog
  Caption = '----'
  ClientHeight = 70
  ClientWidth = 354
  Color = clBtnFace
  Font.Charset = ARABIC_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object CheckBox1: TCheckBox
    Left = 8
    Top = 10
    Width = 337
    Height = 17
    BiDiMode = bdRightToLeft
    Caption = #1606#1605#1575#1610#1588' '#1578#1575#1585#1610#1582#1670#1607' '#1593#1591#1601' '#1608' '#1662#1610#1585#1608' '#1607#1575#1610' '#1605#1585#1576#1608#1591' '#1576#1607' '#1606#1575#1605#1607' '#1583#1585' '#1604#1610#1587#1578' '#1589#1601#1581#1607' '#1575#1589#1604#1610
    Font.Charset = ARABIC_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentBiDiMode = False
    ParentFont = False
    TabOrder = 0
    OnClick = CheckBox1Click
  end
  object OK_BTN: TBitBtn
    Left = 272
    Top = 35
    Width = 75
    Height = 25
    Caption = #1578#1575#1610#1610#1583
    TabOrder = 1
    OnClick = OK_BTNClick
  end
  object CANCEL_BTN: TBitBtn
    Left = 192
    Top = 35
    Width = 75
    Height = 25
    Caption = #1575#1606#1589#1585#1575#1601
    TabOrder = 2
    OnClick = CANCEL_BTNClick
  end
end
