inherited FrAmerce: TFrAmerce
  Left = 757
  Top = 212
  BorderStyle = bsToolWindow
  Caption = #1605#1576#1606#1575#1610' '#1605#1581#1575#1587#1576#1607' '#1580#1585#1610#1605#1607
  ClientHeight = 334
  ClientWidth = 517
  Font.Height = -12
  OldCreateOrder = True
  PixelsPerInch = 96
  TextHeight = 14
  object pnlMain: TPanel [0]
    Left = 0
    Top = 0
    Width = 517
    Height = 334
    Align = alClient
    ParentColor = True
    TabOrder = 0
    object Panel2: TPanel
      Left = 1
      Top = 1
      Width = 515
      Height = 291
      Align = alClient
      ParentColor = True
      TabOrder = 0
      object GroupBox2: TGroupBox
        Left = 1
        Top = 145
        Width = 513
        Height = 145
        Align = alClient
        Caption = ' '#1575#1602#1587#1575#1591' '#1608#1575#1605
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlue
        Font.Height = -12
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        TabOrder = 0
        DesignSize = (
          513
          145)
        object Label3: TLabel
          Left = 308
          Top = 18
          Width = 188
          Height = 14
          Anchors = [akTop, akRight]
          Caption = #1581#1583' '#1575#1705#1579#1585' '#1578#1575#1582#1610#1585' '#1576#1593#1583' '#1575#1586' '#1587#1585#1585#1587#1610#1583' '#1662#1585#1583#1575#1582#1578':'
          Font.Charset = ARABIC_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
        end
        object PartLabel: TLabel
          Left = 16
          Top = 47
          Width = 185
          Height = 27
          Anchors = [akTop, akRight]
          AutoSize = False
          Caption = #1585#1610#1575#1604
          Font.Charset = ARABIC_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          WordWrap = True
        end
        object PartPercenttLabel: TLabel
          Left = 103
          Top = 93
          Width = 98
          Height = 14
          Anchors = [akTop, akRight]
          Caption = #1583#1585#1589#1583' '#1605#1576#1604#1594' '#1607#1585' '#1602#1587#1591
          Font.Charset = ARABIC_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
        end
        object Label4: TLabel
          Left = 212
          Top = 18
          Width = 13
          Height = 14
          Anchors = [akTop, akRight]
          Caption = #1585#1608#1586
          Font.Charset = ARABIC_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
        end
        object PartTolerance: TSpinEdit
          Left = 232
          Top = 8
          Width = 66
          Height = 23
          Anchors = [akTop, akRight]
          Font.Charset = ARABIC_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Tahoma'
          Font.Style = []
          MaxValue = 100
          MinValue = 0
          ParentFont = False
          TabOrder = 0
          Value = 100
        end
        object PartAmerce: TYAmountEdit
          Left = 205
          Top = 48
          Width = 71
          Height = 22
          Anchors = [akTop, akRight]
          Font.Charset = ARABIC_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
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
          Left = 345
          Top = 118
          Width = 151
          Height = 17
          Anchors = [akTop, akRight]
          Caption = #1605#1581#1575#1587#1576#1607' '#1580#1585#1610#1605#1607' '#1575#1586' '#1575#1576#1578#1583#1575
          Font.Charset = ARABIC_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          TabOrder = 2
        end
        object RBPartAmerce: TRadioButton
          Left = 281
          Top = 53
          Width = 215
          Height = 17
          Anchors = [akTop, akRight]
          Caption = #1605#1576#1604#1594' '#1580#1585#1610#1605#1607' '#1576#1585#1575#1610' '#1578#1575#1582#1610#1585' '#1576#1607' '#1575#1586#1575#1610' '#1607#1585' '#1585#1608#1586
          Checked = True
          Font.Charset = ARABIC_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          TabOrder = 3
          TabStop = True
        end
        object RBPartAmercePercent: TRadioButton
          Left = 281
          Top = 92
          Width = 215
          Height = 17
          Anchors = [akTop, akRight]
          Caption = #1583#1585#1589#1583' '#1580#1585#1610#1605#1607' '#1576#1585#1575#1610' '#1578#1575#1582#1610#1585' '#1576#1607' '#1575#1586#1575#1610' '#1607#1585' '#1585#1608#1586
          Font.Charset = ARABIC_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          TabOrder = 4
        end
        object PartAmercePercent: TYAmountEdit
          Left = 205
          Top = 86
          Width = 71
          Height = 22
          Anchors = [akTop, akRight]
          Font.Charset = ARABIC_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
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
        Left = 1
        Top = 1
        Width = 513
        Height = 144
        Align = alTop
        Caption = #1581#1602' '#1593#1590#1608#1610#1578
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlue
        Font.Height = -12
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        TabOrder = 1
        DesignSize = (
          513
          144)
        object Label1: TLabel
          Left = 308
          Top = 19
          Width = 188
          Height = 14
          Anchors = [akTop, akRight]
          Caption = #1581#1583' '#1575#1705#1579#1585' '#1578#1575#1582#1610#1585' '#1576#1593#1583' '#1575#1586' '#1587#1585#1585#1587#1610#1583' '#1662#1585#1583#1575#1582#1578':'
          Font.Charset = ARABIC_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
        end
        object PriodLabel: TLabel
          Left = 40
          Top = 47
          Width = 170
          Height = 30
          Anchors = [akTop, akRight]
          AutoSize = False
          Caption = #1585#1610#1575#1604
          Font.Charset = ARABIC_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          WordWrap = True
        end
        object Label5: TLabel
          Left = 223
          Top = 18
          Width = 13
          Height = 14
          Anchors = [akTop, akRight]
          Caption = #1585#1608#1586
          Font.Charset = ARABIC_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
        end
        object Label6: TLabel
          Left = 101
          Top = 93
          Width = 108
          Height = 14
          Anchors = [akTop, akRight]
          Caption = #1583#1585#1589#1583' '#1605#1576#1604#1594' '#1607#1585' '#1605#1575#1607#1610#1575#1606#1607
          Font.Charset = ARABIC_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
        end
        object MonthlyTolerance: TSpinEdit
          Left = 240
          Top = 9
          Width = 61
          Height = 23
          Anchors = [akTop, akRight]
          Font.Charset = ARABIC_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Tahoma'
          Font.Style = []
          MaxValue = 100
          MinValue = 0
          ParentFont = False
          TabOrder = 0
          Value = 10
        end
        object MonthlyAmerce: TYAmountEdit
          Left = 214
          Top = 49
          Width = 71
          Height = 22
          Anchors = [akTop, akRight]
          Font.Charset = ARABIC_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
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
          Left = 329
          Top = 118
          Width = 167
          Height = 17
          Anchors = [akTop, akRight]
          Caption = #1605#1581#1575#1587#1576#1607' '#1580#1585#1610#1605#1607' '#1575#1586' '#1575#1576#1578#1583#1575
          Font.Charset = ARABIC_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          TabOrder = 2
        end
        object RBMonthlyAmerce: TRadioButton
          Left = 288
          Top = 55
          Width = 208
          Height = 17
          Anchors = [akTop, akRight]
          Caption = #1605#1576#1604#1594' '#1580#1585#1610#1605#1607' '#1576#1585#1575#1610' '#1578#1575#1582#1610#1585' '#1576#1607' '#1575#1586#1575#1610' '#1607#1585' '#1585#1608#1586
          Checked = True
          Font.Charset = ARABIC_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          TabOrder = 3
          TabStop = True
        end
        object RBMonthlyAmercePercent: TRadioButton
          Left = 288
          Top = 93
          Width = 208
          Height = 17
          Anchors = [akTop, akRight]
          Caption = #1583#1585#1589#1583' '#1580#1585#1610#1605#1607' '#1576#1585#1575#1610' '#1578#1575#1582#1610#1585' '#1576#1607' '#1575#1586#1575#1610' '#1607#1585' '#1585#1608#1586
          Font.Charset = ARABIC_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          TabOrder = 4
        end
        object MonthlyAmercePercent: TYAmountEdit
          Left = 214
          Top = 88
          Width = 71
          Height = 22
          Anchors = [akTop, akRight]
          Font.Charset = ARABIC_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
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
    object Panel1: TPanel
      Left = 1
      Top = 292
      Width = 515
      Height = 41
      Align = alBottom
      ParentColor = True
      TabOrder = 1
      DesignSize = (
        515
        41)
      object BitBtn1: TAdvGlowButton
        Left = 415
        Top = 7
        Width = 95
        Height = 28
        Anchors = [akTop, akRight, akBottom]
        Caption = #1578#1575#1610#1610#1583
        ImageIndex = 59
        Images = dm.ImageList_MainNew
        NotesFont.Charset = DEFAULT_CHARSET
        NotesFont.Color = clWindowText
        NotesFont.Height = -11
        NotesFont.Name = 'Tahoma'
        NotesFont.Style = []
        TabOrder = 0
        OnClick = BitBtn1Click
        Appearance.ColorChecked = 16111818
        Appearance.ColorCheckedTo = 16367008
        Appearance.ColorDisabled = 15921906
        Appearance.ColorDisabledTo = 15921906
        Appearance.ColorDown = 16111818
        Appearance.ColorDownTo = 16367008
        Appearance.ColorHot = 16117985
        Appearance.ColorHotTo = 16372402
        Appearance.ColorMirrorHot = 16107693
        Appearance.ColorMirrorHotTo = 16775412
        Appearance.ColorMirrorDown = 16102556
        Appearance.ColorMirrorDownTo = 16768988
        Appearance.ColorMirrorChecked = 16102556
        Appearance.ColorMirrorCheckedTo = 16768988
        Appearance.ColorMirrorDisabled = 11974326
        Appearance.ColorMirrorDisabledTo = 15921906
      end
      object BitBtn2: TAdvGlowButton
        Left = 317
        Top = 7
        Width = 95
        Height = 28
        Anchors = [akTop, akRight, akBottom]
        Caption = #1575#1606#1589#1585#1575#1601
        ImageIndex = 1
        Images = dm.ImageList_MainNew
        NotesFont.Charset = DEFAULT_CHARSET
        NotesFont.Color = clWindowText
        NotesFont.Height = -11
        NotesFont.Name = 'Tahoma'
        NotesFont.Style = []
        TabOrder = 1
        OnClick = BitBtn2Click
        Appearance.ColorChecked = 16111818
        Appearance.ColorCheckedTo = 16367008
        Appearance.ColorDisabled = 15921906
        Appearance.ColorDisabledTo = 15921906
        Appearance.ColorDown = 16111818
        Appearance.ColorDownTo = 16367008
        Appearance.ColorHot = 16117985
        Appearance.ColorHotTo = 16372402
        Appearance.ColorMirrorHot = 16107693
        Appearance.ColorMirrorHotTo = 16775412
        Appearance.ColorMirrorDown = 16102556
        Appearance.ColorMirrorDownTo = 16768988
        Appearance.ColorMirrorChecked = 16102556
        Appearance.ColorMirrorCheckedTo = 16768988
        Appearance.ColorMirrorDisabled = 11974326
        Appearance.ColorMirrorDisabledTo = 15921906
      end
    end
  end
  inherited ahmadvand: TActionList
    Left = 29
    Top = 115
  end
  inherited Grid_PopupMenu: TPopupMenu
    Left = 23
    Top = 132
  end
end
