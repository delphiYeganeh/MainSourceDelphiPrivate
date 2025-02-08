inherited FmRepLoanGrt: TFmRepLoanGrt
  Left = 613
  Top = 389
  BorderStyle = bsSingle
  Caption = #1711#1586#1575#1585#1588' '#1711#1610#1585#1610' '#1575#1586' '#1604#1610#1587#1578' '#1590#1575#1605#1606' '#1607#1575
  ClientHeight = 211
  ClientWidth = 363
  Color = clBtnFace
  Font.Height = -12
  KeyPreview = True
  OldCreateOrder = True
  Position = poDesktopCenter
  PixelsPerInch = 96
  TextHeight = 14
  object pnlMain: TPanel [0]
    Left = 0
    Top = 0
    Width = 363
    Height = 211
    Align = alClient
    ParentColor = True
    TabOrder = 0
    object Panel2: TPanel
      Left = 1
      Top = 158
      Width = 361
      Height = 52
      Align = alBottom
      TabOrder = 0
      DesignSize = (
        361
        52)
      object Label7: TLabel
        Left = 96
        Top = 16
        Width = 129
        Height = 14
        Anchors = [akTop, akRight]
        BiDiMode = bdLeftToRight
        Caption = '..\Reports\LoanGrt1.fr3'
        Font.Charset = ARABIC_CHARSET
        Font.Color = clNavy
        Font.Height = -12
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentBiDiMode = False
        ParentFont = False
      end
      object SBReport: TAdvGlowButton
        Left = 264
        Top = 11
        Width = 81
        Height = 33
        Cursor = crHandPoint
        Hint = #1670#1575#1662
        Anchors = [akTop, akRight]
        Caption = #1662#1585#1610#1606#1578
        ImageIndex = 112
        Images = dm.ImageList_MainNew
        NotesFont.Charset = DEFAULT_CHARSET
        NotesFont.Color = clWindowText
        NotesFont.Height = -11
        NotesFont.Name = 'Tahoma'
        NotesFont.Style = []
        PopupMenu = RepPopMnu
        Spacing = 0
        ParentShowHint = False
        ShowHint = True
        TabOrder = 1
        OnClick = SBReportClick
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
      object xpBitBtn1: TAdvGlowButton
        Left = 8
        Top = 11
        Width = 75
        Height = 33
        Caption = #1582#1585#1608#1580
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clNavy
        Font.Height = -12
        Font.Name = 'Tahoma'
        Font.Style = []
        ImageIndex = 84
        Images = dm.ImageList_MainNew
        NotesFont.Charset = DEFAULT_CHARSET
        NotesFont.Color = clWindowText
        NotesFont.Height = -11
        NotesFont.Name = 'Tahoma'
        NotesFont.Style = []
        ParentFont = False
        TabOrder = 0
        OnClick = xpBitBtn1Click
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
    object Panel1: TPanel
      Left = 1
      Top = 1
      Width = 361
      Height = 157
      Align = alClient
      TabOrder = 1
      DesignSize = (
        361
        157)
      object Label1: TLabel
        Left = 271
        Top = 125
        Width = 76
        Height = 14
        Anchors = [akTop, akRight]
        Caption = #1604#1610#1587#1578' '#1593#1590#1608#1607#1575' :'
      end
      object SpeedButton1: TAdvGlowButton
        Left = 16
        Top = 118
        Width = 23
        Height = 22
        Anchors = [akTop, akRight]
        ImageIndex = 78
        Images = dm.ImageList_MainNew
        NotesFont.Charset = DEFAULT_CHARSET
        NotesFont.Color = clWindowText
        NotesFont.Height = -11
        NotesFont.Name = 'Tahoma'
        NotesFont.Style = []
        TabOrder = 2
        OnClick = SpeedButton1Click
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
      object DBLkCBContactNaFa: TDBLookupComboBox
        Left = 41
        Top = 118
        Width = 227
        Height = 22
        Anchors = [akTop, akRight]
        BiDiMode = bdLeftToRight
        DropDownRows = 20
        Font.Charset = ARABIC_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Tahoma'
        Font.Style = []
        KeyField = 'ContactID'
        ListField = 'ContactNaFa'
        ListSource = DMRepLoanGrt.DSContact
        ParentBiDiMode = False
        ParentFont = False
        TabOrder = 0
      end
      object GroupBox1: TGroupBox
        Left = 104
        Top = 8
        Width = 239
        Height = 101
        Anchors = [akTop, akRight]
        Caption = #1608#1590#1593#1610#1578' '#1590#1575#1605#1606' '#1607#1575
        TabOrder = 1
        DesignSize = (
          239
          101)
        object RBLoanGaurantor1: TRadioButton
          Left = 16
          Top = 22
          Width = 205
          Height = 17
          Anchors = [akTop, akRight]
          Caption = #1590#1575#1605#1606' '#1588#1583#1606' '#1576#1585' '#1575#1587#1575#1587' '#1578#1593#1583#1575#1583' '#1608#1575#1605
          Checked = True
          TabOrder = 0
          TabStop = True
        end
        object RBLoanGaurantor2: TRadioButton
          Left = 24
          Top = 48
          Width = 197
          Height = 17
          Anchors = [akTop, akRight]
          Caption = #1590#1575#1605#1606' '#1588#1583#1606' '#1576#1585' '#1575#1587#1575#1587' '#1605#1576#1604#1594' '#1608#1575#1605
          TabOrder = 1
        end
        object RBLoanGaurantorAll: TRadioButton
          Left = 60
          Top = 74
          Width = 161
          Height = 17
          Anchors = [akTop, akRight]
          Caption = #1711#1586#1575#1585#1588' '#1705#1575#1605#1604
          TabOrder = 2
        end
      end
    end
  end
  inherited ahmadvand: TActionList
    Left = 114
    Top = 44
  end
  inherited Grid_PopupMenu: TPopupMenu
    Left = 31
    Top = 60
  end
  object RepPopMnu: TPopupMenu
    MenuAnimation = [maRightToLeft, maTopToBottom]
    TrackButton = tbLeftButton
    Left = 8
    Top = 4
    object NShow: TMenuItem
      AutoHotkeys = maAutomatic
      Caption = #1662#1610#1588' '#1606#1605#1575#1610#1588' '#1608' '#1670#1575#1662'   F9'
      OnClick = NShowClick
    end
    object NPrint: TMenuItem
      Tag = 1
      AutoHotkeys = maAutomatic
      Caption = #1670#1575#1662' '#1576#1583#1608#1606' '#1662#1610#1588' '#1606#1605#1575#1610#1588'   Ctrl+F9'
      OnClick = NShowClick
    end
    object NDesign: TMenuItem
      Tag = 2
      AutoHotkeys = maAutomatic
      Caption = #1591#1585#1575#1581#1610' '#1711#1586#1575#1585#1588'   Alt+F9'
      OnClick = NShowClick
    end
    object N8: TMenuItem
      Caption = '-'
    end
    object N11: TMenuItem
      Caption = #1591#1585#1575#1581#1610' '#1662#1610#1588' '#1601#1585#1590
      OnClick = N11Click
    end
  end
end
