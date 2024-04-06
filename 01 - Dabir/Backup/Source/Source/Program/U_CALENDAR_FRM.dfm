object CALENDAR_FRM: TCALENDAR_FRM
  Left = 576
  Top = 206
  BorderStyle = bsNone
  Caption = 'CALENDAR_FRM'
  ClientHeight = 106
  ClientWidth = 138
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
  object BitBtn1: TBitBtn
    Left = 53
    Top = 77
    Width = 75
    Height = 25
    Caption = #1578#1575#1610#1610#1583
    TabOrder = 0
  end
  object SolarDatePicker2: TSolarDatePicker
    Left = 8
    Top = 8
    Width = 121
    Height = 21
    About = 'Created by : Saber Kahalian'
    BiDiMode = bdLeftToRight
    TabOrder = 1
    Enabled = True
    DateKind = dkSolar
    CheckInputOnExit = False
    Divider = dSlash
    ShowToDay = True
    ShowCellInColor = True
    MonthObject = moPopupMenu
    Glyph = gtCalendar
    ShowDefaultDate = False
  end
  object SolarDatePicker1: TSolarDatePicker
    Left = 8
    Top = 48
    Width = 121
    Height = 21
    About = 'Created by : Saber Kahalian'
    BiDiMode = bdLeftToRight
    TabOrder = 2
    Enabled = True
    DateKind = dkSolar
    CheckInputOnExit = False
    Divider = dSlash
    ShowToDay = True
    ShowCellInColor = True
    MonthObject = moPopupMenu
    Glyph = gtCalendar
    ShowDefaultDate = False
  end
end
