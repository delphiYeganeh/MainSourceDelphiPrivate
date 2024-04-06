object CONNECT_DABIR_TO_ARCHIVE_SETTING_FRM: TCONNECT_DABIR_TO_ARCHIVE_SETTING_FRM
  Left = 379
  Top = 197
  BorderStyle = bsDialog
  Caption = '-----'
  ClientHeight = 153
  ClientWidth = 289
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
  object Label1: TLabel
    Left = 157
    Top = 56
    Width = 123
    Height = 13
    Caption = #1606#1575#1605' '#1583#1610#1578#1575#1576#1610#1587' '#1606#1585#1605' '#1575#1601#1586#1575#1585' '#1570#1585#1588#1610#1608
  end
  object Label2: TLabel
    Left = 170
    Top = 8
    Width = 110
    Height = 13
    Caption = #1606#1575#1605' '#1587#1585#1608#1585' '#1583#1610#1578#1575#1576#1610#1587' '#1570#1585#1588#1610#1608
  end
  object OK_BTN: TBitBtn
    Left = 208
    Top = 104
    Width = 75
    Height = 25
    Caption = #1578#1575#1610#1610#1583
    TabOrder = 0
    OnClick = OK_BTNClick
  end
  object BitBtn2: TBitBtn
    Left = 128
    Top = 104
    Width = 75
    Height = 25
    Caption = #1575#1606#1589#1585#1575#1601
    TabOrder = 1
    OnClick = BitBtn2Click
  end
  object ARCHIVE_DB_NAME: TEdit
    Left = 10
    Top = 76
    Width = 273
    Height = 21
    TabOrder = 2
    Text = 'ARCHIVE_DB_NAME'
    OnChange = ARCHIVE_DB_NAMEChange
  end
  object ARCHIVE_SERVER_NAME: TEdit
    Left = 8
    Top = 28
    Width = 273
    Height = 21
    TabOrder = 3
    Text = 'ARCHIVE_DB_NAME'
    OnChange = ARCHIVE_DB_NAMEChange
  end
end
