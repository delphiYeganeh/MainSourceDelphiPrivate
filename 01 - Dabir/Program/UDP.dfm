object UDPSearchForm: TUDPSearchForm
  Left = 223
  Top = 99
  Width = 597
  Height = 500
  BiDiMode = bdRightToLeft
  Caption = #1575#1606#1578#1582#1575#1576' '#1583#1587#1578#1711#1575#1607' '#1576#1585#1575#1610' '#1670#1578
  Color = clBtnFace
  Font.Charset = ARABIC_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  ParentBiDiMode = False
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 589
    Height = 425
    Align = alClient
    BorderWidth = 5
    TabOrder = 0
    object RadioGroup1: TRadioGroup
      Left = 6
      Top = 6
      Width = 577
      Height = 413
      Align = alClient
      Caption = #1583#1587#1578#1711#1575#1607#1607#1575#1610' '#1605#1608#1580#1608#1583' '#1576#1585#1575#1610' '#1670#1578
      Columns = 3
      Font.Charset = ARABIC_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 0
    end
  end
  object Panel2: TPanel
    Left = 0
    Top = 425
    Width = 589
    Height = 41
    Align = alBottom
    TabOrder = 1
    object Button1: TButton
      Left = 62
      Top = 8
      Width = 75
      Height = 25
      Caption = #1575#1606#1578#1582#1575#1576
      TabOrder = 0
      OnClick = Button1Click
    end
  end
  object IdUDPClient1: TIdUDPClient
    Port = 0
    Left = 256
    Top = 72
  end
  object IdUDPServer1: TIdUDPServer
    Bindings = <>
    DefaultPort = 0
    Left = 160
    Top = 72
  end
end
