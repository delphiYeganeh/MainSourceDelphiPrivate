object FrLogin: TFrLogin
  Left = 537
  Top = 277
  BiDiMode = bdRightToLeft
  BorderIcons = []
  BorderStyle = bsSingle
  Caption = #1587#1610#1587#1578#1605' '#1662#1585#1583#1575#1586#1588' '#1662#1575#1587#1582#1606#1575#1605#1607' '#1607#1575
  ClientHeight = 245
  ClientWidth = 447
  Color = 14666957
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clBlack
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  Icon.Data = {
    0000010001002020100000000000E80200001600000028000000200000004000
    0000010004000000000080020000000000000000000000000000000000000000
    000000008000008000000080800080000000800080008080000080808000C0C0
    C0000000FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF000000
    0000000000000000000000000000000000000000000000000000000000000000
    00007F7777777777877700000000000000007F88872277778770000000000000
    00007F800AA20077870700000000000000077F07AAAA07078707070000000000
    00777F07AAAA0707870780700000000000777F072AA077078707807000000000
    07887F700007770787078807000000007FFF7F870FF870788770777000000000
    77777F8870000788877707777000000000007F88888888888770000000000000
    00007F8880007777870700000000000000077F800BBB00778707070000000000
    00777F070BBB0707870780700000000000777F070BB077078707807000000000
    07887F070007770787078807000000007FFF7F870FF870788770777000000000
    77777F8870000788877707777000000000007F88888888888777000000000000
    00007F8880007777877000000000000000007F80099900778707000000000000
    00077F0809990707870707000000000000777F08099907078707807000000000
    00777F0809907707870780700000000007887F70000777078707880700000000
    7FFF7F870FF87078877077700000000077777F88700007888777077770000000
    00007FFFFFFFFFFFF777000000000000000007F8888888888F77000000000000
    0000007F8888888888F70000000000000000000777777777777700000000FFFF
    FFFFFF8000FFFF00007FFF00007FFF00003FFE00001FFC00000FFC00000FF800
    0007F0000007F0000007FF00007FFF00003FFE00001FFC00000FFC00000FF800
    0007F0000007F0000007FF00007FFF00007FFF00003FFE00001FFC00000FFC00
    000FF8000007F0000007F0000007FF00007FFF80007FFFC0007FFFE000FF}
  OldCreateOrder = False
  ParentBiDiMode = False
  Position = poScreenCenter
  OnClose = FormClose
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object Label4: TLabel
    Left = 332
    Top = 138
    Width = 46
    Height = 13
    BiDiMode = bdLeftToRight
    Caption = #1606#1575#1605' '#1603#1575#1585#1576#1585#1610
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentBiDiMode = False
    ParentFont = False
    Transparent = True
  end
  object Label5: TLabel
    Left = 332
    Top = 162
    Width = 45
    Height = 13
    BiDiMode = bdLeftToRight
    Caption = #1603#1604#1605#1607' '#1593#1576#1608#1585
    ParentBiDiMode = False
    Transparent = True
  end
  object ScriptUpdate: TLabel
    Left = 328
    Top = 197
    Width = 111
    Height = 16
    Alignment = taCenter
    AutoSize = False
    BiDiMode = bdLeftToRight
    Caption = '*AutoScriptError*'
    Font.Charset = ARABIC_CHARSET
    Font.Color = clFuchsia
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentBiDiMode = False
    ParentFont = False
    Transparent = True
  end
  object UserEdit: TMaskEdit
    Left = 92
    Top = 133
    Width = 235
    Height = 21
    BiDiMode = bdRightToLeft
    ParentBiDiMode = False
    TabOrder = 0
    OnKeyDown = UserEditKeyDown
  end
  object PassEdit: TMaskEdit
    Left = 92
    Top = 158
    Width = 235
    Height = 21
    PasswordChar = '*'
    TabOrder = 1
    OnKeyDown = PassEditKeyDown
  end
  object StatusBar1: TStatusBar
    Left = 0
    Top = 225
    Width = 447
    Height = 20
    Hint = 'Last up date 1383/09/28'
    Color = 14666957
    Panels = <
      item
        Alignment = taCenter
        BiDiMode = bdRightToLeft
        ParentBiDiMode = False
        Text = '5.1.3'
        Width = 50
      end
      item
        Alignment = taCenter
        Text = #1606#1587#1582#1607
        Width = 50
      end
      item
        Alignment = taCenter
        Text = #1578#1575#1585#1610#1582' '#1580#1575#1585#1610' '#1587#1610#1587#1578#1605
        Width = 200
      end
      item
        Alignment = taCenter
        Text = '  '#1570#1582#1585#1610#1606' '#1608#1610#1585#1575#1610#1588' : 1391/10/13'
        Width = 50
      end>
    ParentShowHint = False
    ShowHint = True
  end
  object BitBtn1: TxpBitBtn
    Left = 132
    Top = 192
    Width = 75
    Height = 29
    startColor = 16645629
    EndColor = 14666957
    Caption = #1582#1585#1608#1580
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clNavy
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ImageList = Dm.LetterImages
    ImageIndex = 81
    Gradient = True
    TabOrder = 2
    TabStop = True
    OnClick = BitBtn1Click
  end
  object BtnEnter: TxpBitBtn
    Left = 211
    Top = 192
    Width = 75
    Height = 29
    startColor = 16645629
    EndColor = 14666957
    Caption = #1608#1585#1608#1583
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clNavy
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ImageList = Dm.LetterImages
    ImageIndex = 80
    Gradient = True
    TabOrder = 3
    TabStop = True
    OnClick = BtnEnterClick
  end
  object ScrollBox1: TScrollBox
    Left = 0
    Top = 0
    Width = 447
    Height = 119
    Align = alTop
    AutoScroll = False
    BorderStyle = bsNone
    Color = clWhite
    ParentColor = False
    TabOrder = 4
    object Label6: TLabel
      Left = 121
      Top = -1
      Width = 197
      Height = 75
      Caption = #1570#1610#1578#1605' '#1570#1606#1575#1604#1610#1586
      Font.Charset = ARABIC_CHARSET
      Font.Color = clMaroon
      Font.Height = -64
      Font.Name = 'Zar'
      Font.Style = [fsBold]
      ParentFont = False
      Transparent = True
    end
    object Shape1: TShape
      Left = 0
      Top = 112
      Width = 447
      Height = 7
      Align = alBottom
      Brush.Color = clBlue
      Pen.Style = psClear
    end
    object Label3: TLabel
      Left = 120
      Top = -2
      Width = 197
      Height = 75
      Caption = #1570#1610#1578#1605' '#1570#1606#1575#1604#1610#1586
      Font.Charset = ARABIC_CHARSET
      Font.Color = 33023
      Font.Height = -64
      Font.Name = 'Zar'
      Font.Style = [fsBold]
      ParentFont = False
      Transparent = True
      OnMouseDown = Label3MouseDown
    end
  end
end
