inherited FmRepLetterData: TFmRepLetterData
  Left = 914
  Top = 253
  Width = 330
  Height = 145
  Caption = #1601#1585#1605' '#1711#1586#1575#1585#1588' '#1711#1610#1585#1610' '#1575#1586' '#1605#1588#1582#1589#1575#1578' '#1578#1589#1608#1610#1585
  Constraints.MaxHeight = 145
  Constraints.MaxWidth = 330
  Constraints.MinHeight = 145
  Constraints.MinWidth = 330
  KeyPreview = True
  OldCreateOrder = True
  PixelsPerInch = 96
  TextHeight = 13
  object pnlMain: TPanel [0]
    Left = 0
    Top = 0
    Width = 314
    Height = 106
    Align = alClient
    ParentColor = True
    TabOrder = 0
    object Panel2: TPanel
      Left = 1
      Top = 53
      Width = 312
      Height = 52
      Align = alBottom
      ParentColor = True
      TabOrder = 0
      DesignSize = (
        312
        52)
      object Label7: TLabel
        Left = 96
        Top = 20
        Width = 130
        Height = 13
        Anchors = [akTop, akRight]
        BiDiMode = bdLeftToRight
        Caption = '..\Reports\LetterData1.fr3'
        ParentBiDiMode = False
      end
      object SBReport: TAdvGlowButton
        Left = 236
        Top = 11
        Width = 70
        Height = 29
        Cursor = crHandPoint
        Hint = #1670#1575#1662
        Anchors = [akTop, akRight]
        ImageIndex = 112
        Images = Dm.ImageList_MainNew
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
        Layout = blGlyphTop
      end
      object BitBtn1: TAdvGlowButton
        Left = 4
        Top = 11
        Width = 77
        Height = 29
        Cursor = crHandPoint
        Cancel = True
        Caption = #1582#1585#1608#1580
        Font.Charset = ARABIC_CHARSET
        Font.Color = clNavy
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ImageIndex = 84
        Images = Dm.ImageList_MainNew
        NotesFont.Charset = DEFAULT_CHARSET
        NotesFont.Color = clWindowText
        NotesFont.Height = -11
        NotesFont.Name = 'Tahoma'
        NotesFont.Style = []
        ParentFont = False
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
    end
    object Panel1: TPanel
      Left = 1
      Top = 1
      Width = 312
      Height = 52
      Align = alClient
      ParentColor = True
      TabOrder = 1
      DesignSize = (
        312
        52)
      object Label1: TLabel
        Left = 240
        Top = 27
        Width = 64
        Height = 13
        Anchors = [akTop, akRight]
        Caption = #1588#1605#1575#1585#1607' '#1587#1606#1583' '#1575#1586
      end
      object Label6: TLabel
        Left = 119
        Top = 27
        Width = 6
        Height = 13
        Anchors = [akTop, akRight]
        Caption = #1578#1575
      end
      object SBFromIndi: TAdvGlowButton
        Left = 207
        Top = 22
        Width = 23
        Height = 22
        Anchors = [akTop, akRight]
        ImageIndex = 78
        Images = Dm.ImageList_MainNew
        NotesFont.Charset = DEFAULT_CHARSET
        NotesFont.Color = clWindowText
        NotesFont.Height = -11
        NotesFont.Name = 'Tahoma'
        NotesFont.Style = []
        TabOrder = 2
        OnClick = SBFromIndiClick
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
      object SBToIndi: TAdvGlowButton
        Left = 90
        Top = 22
        Width = 23
        Height = 22
        Anchors = [akTop, akRight]
        ImageIndex = 78
        Images = Dm.ImageList_MainNew
        NotesFont.Charset = DEFAULT_CHARSET
        NotesFont.Color = clWindowText
        NotesFont.Height = -11
        NotesFont.Name = 'Tahoma'
        NotesFont.Style = []
        TabOrder = 3
        OnClick = SBToIndiClick
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
      object EdtFromIndi: TEdit
        Left = 130
        Top = 24
        Width = 75
        Height = 21
        Anchors = [akTop, akRight]
        TabOrder = 0
        OnExit = EdtFromIndiExit
        OnKeyPress = EdtFromIndiKeyPress
      end
      object EdtToIndi: TEdit
        Left = 13
        Top = 24
        Width = 75
        Height = 21
        Anchors = [akTop, akRight]
        TabOrder = 1
        OnKeyPress = EdtFromIndiKeyPress
      end
    end
  end
  inherited DSForm: TDataSource
    Left = 256
    Top = 8
  end
  inherited ActionList: TActionList
    Left = 128
    Top = 8
  end
  inherited xpWindow1: TxpWindow
    Left = 96
    Top = 0
  end
  object RepPopMnu: TPopupMenu
    MenuAnimation = [maRightToLeft, maTopToBottom]
    TrackButton = tbLeftButton
    Left = 168
    Top = 6
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
