object FrLockSoftware: TFrLockSoftware
  Left = 441
  Top = 195
  AutoScroll = False
  BiDiMode = bdRightToLeft
  Caption = #1602#1601#1604' '#1606#1585#1605' '#1575#1601#1586#1575#1585#1610
  ClientHeight = 287
  ClientWidth = 632
  Color = clBtnFace
  Font.Charset = ARABIC_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  ParentBiDiMode = False
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 632
    Height = 137
    Align = alTop
    TabOrder = 0
    object Label2: TLabel
      Left = 484
      Top = 80
      Width = 62
      Height = 13
      Caption = #1587#1585#1610#1575#1604' '#1607#1575#1585#1583' : '
    end
    object Label3: TLabel
      Left = 576
      Top = 16
      Width = 28
      Height = 13
      Caption = #1705#1604#1610#1583' 1'
    end
    object Label4: TLabel
      Left = 484
      Top = 104
      Width = 107
      Height = 13
      Caption = #1578#1575#1585#1610#1582' '#1587#1610#1587#1578#1605' '#1605#1588#1578#1585#1610':'
    end
    object Label5: TLabel
      Left = 24
      Top = 80
      Width = 12
      Height = 13
      Alignment = taRightJustify
      Caption = '...'
    end
    object Label6: TLabel
      Left = 24
      Top = 104
      Width = 12
      Height = 13
      Alignment = taRightJustify
      Caption = '...'
    end
    object moKey1: TMemo
      Left = 8
      Top = 11
      Width = 564
      Height = 54
      TabOrder = 0
      OnChange = moKey1Change
      OnClick = moKey1Click
    end
  end
  object Panel2: TPanel
    Left = 0
    Top = 137
    Width = 632
    Height = 150
    Align = alClient
    TabOrder = 1
    object Label1: TLabel
      Left = 576
      Top = 16
      Width = 28
      Height = 13
      Caption = #1606#1587#1582#1607
    end
    object Label7: TLabel
      Left = 576
      Top = 50
      Width = 49
      Height = 13
      Caption = #1605#1583#1578' '#1575#1593#1578#1576#1575#1585
    end
    object Label8: TLabel
      Left = 442
      Top = 50
      Width = 14
      Height = 13
      Caption = #1605#1575#1607
    end
    object Label9: TLabel
      Left = 584
      Top = 96
      Width = 28
      Height = 13
      Caption = #1705#1604#1610#1583' 2'
    end
    object ComboBox1: TComboBox
      Left = 464
      Top = 15
      Width = 105
      Height = 21
      ItemHeight = 13
      ItemIndex = 0
      TabOrder = 0
      Text = 'Free'
      Items.Strings = (
        'Free'
        'Ligth'
        'Full'
        'Automation')
    end
    object ComboBox2: TComboBox
      Left = 464
      Top = 48
      Width = 105
      Height = 21
      ItemHeight = 13
      ItemIndex = 0
      TabOrder = 1
      Text = '1'
      Items.Strings = (
        '1'
        '6'
        '12'
        '18'
        '24')
    end
    object Button1: TButton
      Left = 312
      Top = 15
      Width = 75
      Height = 57
      Caption = 'Generate Key'
      TabOrder = 2
      OnClick = Button1Click
    end
    object moKey2: TMemo
      Left = 8
      Top = 86
      Width = 564
      Height = 54
      TabOrder = 3
      OnChange = moKey1Change
    end
    object Button2: TButton
      Left = 3
      Top = 15
      Width = 75
      Height = 57
      Caption = 'Copy'
      TabOrder = 4
      OnClick = Button2Click
    end
  end
end
