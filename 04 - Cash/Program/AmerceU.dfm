inherited FrAmerce: TFrAmerce
  Left = 669
  Top = 125
  BorderStyle = bsToolWindow
  Caption = #1605#1576#1606#1575#1610' '#1605#1581#1575#1587#1576#1607' '#1580#1585#1610#1605#1607
  ClientHeight = 323
  ClientWidth = 471
  OldCreateOrder = True
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel [0]
    Left = 0
    Top = 282
    Width = 471
    Height = 41
    Align = alBottom
    TabOrder = 0
    DesignSize = (
      471
      41)
    object BitBtn1: TBitBtn
      Left = 382
      Top = 7
      Width = 75
      Height = 28
      Anchors = [akTop, akRight, akBottom]
      Caption = #1578#1575#1610#1610#1583
      TabOrder = 0
      OnClick = BitBtn1Click
      Kind = bkOK
    end
    object BitBtn2: TBitBtn
      Left = 300
      Top = 7
      Width = 75
      Height = 28
      Anchors = [akTop, akRight, akBottom]
      Caption = #1575#1606#1589#1585#1575#1601
      TabOrder = 1
      OnClick = BitBtn2Click
      Kind = bkCancel
    end
  end
  object Panel2: TPanel [1]
    Left = 0
    Top = 0
    Width = 471
    Height = 282
    Align = alClient
    TabOrder = 1
    DesignSize = (
      471
      282)
    object GroupBox2: TGroupBox
      Left = 11
      Top = 145
      Width = 452
      Height = 126
      Anchors = [akTop, akRight]
      Caption = ' '#1575#1602#1587#1575#1591' '#1608#1575#1605
      Font.Charset = ARABIC_CHARSET
      Font.Color = clBlue
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 0
      DesignSize = (
        452
        126)
      object Label3: TLabel
        Left = 265
        Top = 23
        Width = 170
        Height = 13
        Anchors = [akTop, akRight]
        Caption = #1581#1583' '#1575#1705#1579#1585' '#1578#1575#1582#1610#1585' '#1576#1593#1583' '#1575#1586' '#1587#1585#1585#1587#1610#1583' '#1662#1585#1583#1575#1582#1578':'
        Font.Charset = ARABIC_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
      end
      object PartLabel: TLabel
        Left = 8
        Top = 45
        Width = 156
        Height = 27
        Anchors = [akTop, akRight]
        AutoSize = False
        Caption = #1585#1610#1575#1604
        Font.Charset = ARABIC_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        WordWrap = True
      end
      object PartPercenttLabel: TLabel
        Left = 73
        Top = 75
        Width = 91
        Height = 13
        Anchors = [akTop, akRight]
        Caption = #1583#1585#1589#1583' '#1605#1576#1604#1594' '#1607#1585' '#1602#1587#1591
        Font.Charset = ARABIC_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
      end
      object Label4: TLabel
        Left = 199
        Top = 23
        Width = 13
        Height = 13
        Anchors = [akTop, akRight]
        Caption = #1585#1608#1586
        Font.Charset = ARABIC_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
      end
      object PartTolerance: TSpinEdit
        Left = 218
        Top = 20
        Width = 43
        Height = 22
        Anchors = [akTop, akRight]
        Font.Charset = ARABIC_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        MaxValue = 100
        MinValue = 0
        ParentFont = False
        TabOrder = 0
        Value = 100
      end
      object PartAmerce: TYAmountEdit
        Left = 168
        Top = 47
        Width = 71
        Height = 21
        Anchors = [akTop, akRight]
        Font.Charset = ARABIC_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        MaxLength = 6
        ParentFont = False
        TabOrder = 1
        Text = '      '
        OnChange = PartAmerceChange
        YText = '      '
      end
      object PartFromFirst: TCheckBox
        Left = 318
        Top = 98
        Width = 117
        Height = 17
        Anchors = [akTop, akRight]
        Caption = #1605#1581#1575#1587#1576#1607' '#1580#1585#1610#1605#1607' '#1575#1586' '#1575#1576#1578#1583#1575
        Font.Charset = ARABIC_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        TabOrder = 2
      end
      object RBPartAmerce: TRadioButton
        Left = 242
        Top = 48
        Width = 193
        Height = 17
        Anchors = [akTop, akRight]
        Caption = #1605#1576#1604#1594' '#1580#1585#1610#1605#1607' '#1576#1585#1575#1610' '#1578#1575#1582#1610#1585' '#1576#1607' '#1575#1586#1575#1610' '#1607#1585' '#1585#1608#1586
        Checked = True
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        TabOrder = 3
        TabStop = True
      end
      object RBPartAmercePercent: TRadioButton
        Left = 242
        Top = 73
        Width = 193
        Height = 17
        Anchors = [akTop, akRight]
        Caption = #1583#1585#1589#1583' '#1580#1585#1610#1605#1607' '#1576#1585#1575#1610' '#1578#1575#1582#1610#1585' '#1576#1607' '#1575#1586#1575#1610' '#1607#1585' '#1585#1608#1586
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        TabOrder = 4
      end
      object PartAmercePercent: TYAmountEdit
        Left = 168
        Top = 72
        Width = 71
        Height = 21
        Anchors = [akTop, akRight]
        Font.Charset = ARABIC_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        MaxLength = 6
        ParentFont = False
        TabOrder = 5
        Text = '      '
        YText = '      '
      end
    end
    object GroupBox1: TGroupBox
      Left = 11
      Top = 9
      Width = 452
      Height = 128
      Anchors = [akTop, akRight]
      Caption = #1581#1602' '#1593#1590#1608#1610#1578
      Font.Charset = ARABIC_CHARSET
      Font.Color = clBlue
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 1
      DesignSize = (
        452
        128)
      object Label1: TLabel
        Left = 265
        Top = 23
        Width = 170
        Height = 13
        Anchors = [akTop, akRight]
        Caption = #1581#1583' '#1575#1705#1579#1585' '#1578#1575#1582#1610#1585' '#1576#1593#1583' '#1575#1586' '#1587#1585#1585#1587#1610#1583' '#1662#1585#1583#1575#1582#1578':'
        Font.Charset = ARABIC_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
      end
      object PriodLabel: TLabel
        Left = 8
        Top = 44
        Width = 157
        Height = 30
        Anchors = [akTop, akRight]
        AutoSize = False
        Caption = #1585#1610#1575#1604
        Font.Charset = ARABIC_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        WordWrap = True
      end
      object Label5: TLabel
        Left = 194
        Top = 24
        Width = 13
        Height = 13
        Anchors = [akTop, akRight]
        Caption = #1585#1608#1586
        Font.Charset = ARABIC_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
      end
      object Label6: TLabel
        Left = 65
        Top = 76
        Width = 99
        Height = 13
        Anchors = [akTop, akRight]
        Caption = #1583#1585#1589#1583' '#1605#1576#1604#1594' '#1607#1585' '#1605#1575#1607#1610#1575#1606#1607
        Font.Charset = ARABIC_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
      end
      object MonthlyTolerance: TSpinEdit
        Left = 212
        Top = 20
        Width = 44
        Height = 22
        Anchors = [akTop, akRight]
        Font.Charset = ARABIC_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        MaxValue = 100
        MinValue = 0
        ParentFont = False
        TabOrder = 0
        Value = 10
      end
      object MonthlyAmerce: TYAmountEdit
        Left = 169
        Top = 48
        Width = 71
        Height = 21
        Anchors = [akTop, akRight]
        Font.Charset = ARABIC_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        MaxLength = 6
        ParentFont = False
        TabOrder = 1
        Text = '      '
        OnChange = MonthlyAmerceChange
        YText = '      '
      end
      object MonthlyFromFirst: TCheckBox
        Left = 318
        Top = 103
        Width = 117
        Height = 17
        Anchors = [akTop, akRight]
        Caption = #1605#1581#1575#1587#1576#1607' '#1580#1585#1610#1605#1607' '#1575#1586' '#1575#1576#1578#1583#1575
        Font.Charset = ARABIC_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        TabOrder = 2
      end
      object RBMonthlyAmerce: TRadioButton
        Left = 246
        Top = 49
        Width = 189
        Height = 17
        Anchors = [akTop, akRight]
        Caption = #1605#1576#1604#1594' '#1580#1585#1610#1605#1607' '#1576#1585#1575#1610' '#1578#1575#1582#1610#1585' '#1576#1607' '#1575#1586#1575#1610' '#1607#1585' '#1585#1608#1586
        Checked = True
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        TabOrder = 3
        TabStop = True
      end
      object RBMonthlyAmercePercent: TRadioButton
        Left = 242
        Top = 76
        Width = 193
        Height = 17
        Anchors = [akTop, akRight]
        Caption = #1583#1585#1589#1583' '#1580#1585#1610#1605#1607' '#1576#1585#1575#1610' '#1578#1575#1582#1610#1585' '#1576#1607' '#1575#1586#1575#1610' '#1607#1585' '#1585#1608#1586
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        TabOrder = 4
      end
      object MonthlyAmercePercent: TYAmountEdit
        Left = 169
        Top = 74
        Width = 71
        Height = 21
        Anchors = [akTop, akRight]
        Font.Charset = ARABIC_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        MaxLength = 6
        ParentFont = False
        TabOrder = 5
        Text = '      '
        YText = '      '
      end
    end
  end
  inherited ahmadvand: TActionList
    Left = 21
    Top = 163
  end
  inherited Grid_PopupMenu: TPopupMenu
    Left = 15
    Top = 164
  end
end
