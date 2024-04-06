inherited FMyMessage: TFMyMessage
  Top = 163
  Caption = #1607#1588#1583#1575#1585
  ClientHeight = 138
  ClientWidth = 598
  OldCreateOrder = True
  PixelsPerInch = 96
  TextHeight = 13
  object lblMessage1: TLabel [0]
    Left = 501
    Top = 37
    Width = 79
    Height = 16
    Caption = 'lblMessage1'
    Font.Charset = ARABIC_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label2: TLabel [1]
    Left = 184
    Top = 69
    Width = 207
    Height = 33
    Caption = #1604#1591#1601#1575' '#1575#1589#1604#1575#1581' '#1606#1605#1575#1610#1610#1583' .'
    Font.Charset = ARABIC_CHARSET
    Font.Color = clRed
    Font.Height = -27
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object lblMessage2: TLabel [2]
    Left = 61
    Top = 37
    Width = 71
    Height = 16
    Caption = 'lblMessage'
    Font.Charset = ARABIC_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object oldshomarehnameh: TLabel [3]
    Left = 400
    Top = 37
    Width = 94
    Height = 18
    Caption = 'lblMessage1'
    Font.Charset = ARABIC_CHARSET
    Font.Color = clGreen
    Font.Height = -15
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label1: TLabel [4]
    Left = 295
    Top = 37
    Width = 79
    Height = 16
    Caption = 'lblMessage1'
    Font.Charset = ARABIC_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object SpeedButton1: TSpeedButton [5]
    Left = 112
    Top = 104
    Width = 33
    Height = 22
    Caption = 'Copy'
    Enabled = False
    Visible = False
    OnClick = SpeedButton1Click
  end
  object Label3: TLabel [6]
    Left = 254
    Top = 12
    Width = 326
    Height = 16
    Caption = #1583#1585' '#1589#1608#1585#1578#1610#1705#1607' '#1601#1575#1610#1604' '#1662#1610#1608#1587#1578' '#1581#1575#1608#1610' '#1588#1605#1575#1585#1607' '#1606#1575#1605#1607' '#1605#1610' '#1576#1575#1588#1583' :'
    Font.Charset = ARABIC_CHARSET
    Font.Color = clRed
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object BitBtn1: TBitBtn [7]
    Left = 24
    Top = 104
    Width = 75
    Height = 25
    Caption = #1582#1585#1608#1580
    TabOrder = 0
    OnClick = BitBtn1Click
    Kind = bkCancel
  end
  object NewShomarehNameh: TEdit [8]
    Left = 141
    Top = 37
    Width = 137
    Height = 21
    BevelOuter = bvNone
    BorderStyle = bsNone
    Color = clBtnFace
    Font.Charset = ARABIC_CHARSET
    Font.Color = clRed
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 1
  end
  inherited DSForm: TDataSource
    Left = 456
    Top = 72
  end
  inherited ActionList: TActionList
    Left = 496
    Top = 72
  end
  inherited Grid_PopupMenu: TPopupMenu
    Left = 375
    Top = 76
  end
end
