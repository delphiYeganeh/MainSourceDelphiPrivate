inherited FselectSec: TFselectSec
  Tag = 1837
  Left = 727
  Top = 335
  BorderIcons = [biSystemMenu]
  Caption = #1575#1606#1578#1582#1575#1576' '#1583#1576#1610#1585#1582#1575#1606#1607
  ClientHeight = 109
  ClientWidth = 316
  OldCreateOrder = True
  PixelsPerInch = 96
  TextHeight = 13
  object pnlMain: TPanel [0]
    Left = 0
    Top = 0
    Width = 316
    Height = 109
    Align = alClient
    ParentColor = True
    TabOrder = 0
    object Panel2: TPanel
      Left = 1
      Top = 63
      Width = 314
      Height = 45
      Align = alBottom
      ParentColor = True
      TabOrder = 0
      DesignSize = (
        314
        45)
      object BitBtn2: TAdvGlowButton
        Left = 159
        Top = 8
        Width = 75
        Height = 25
        Cursor = crHandPoint
        Anchors = [akTop, akRight]
        Caption = #1578#1575#1610#1610#1583
        Default = True
        Font.Charset = ARABIC_CHARSET
        Font.Color = clNavy
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ImageIndex = 59
        Images = Dm.ImageList_MainNew
        NotesFont.Charset = DEFAULT_CHARSET
        NotesFont.Color = clWindowText
        NotesFont.Height = -11
        NotesFont.Name = 'Tahoma'
        NotesFont.Style = []
        ParentFont = False
        TabOrder = 0
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
      object BitBtn1: TAdvGlowButton
        Left = 79
        Top = 8
        Width = 75
        Height = 25
        Cursor = crHandPoint
        Anchors = [akTop, akRight]
        Cancel = True
        Caption = #1575#1606#1589#1585#1575#1601
        Font.Charset = ARABIC_CHARSET
        Font.Color = clNavy
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ImageIndex = 1
        Images = Dm.ImageList_MainNew
        NotesFont.Charset = DEFAULT_CHARSET
        NotesFont.Color = clWindowText
        NotesFont.Height = -11
        NotesFont.Name = 'Tahoma'
        NotesFont.Style = []
        ParentFont = False
        TabOrder = 1
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
    object Panel1: TxpPanel
      Left = 1
      Top = 1
      Width = 314
      Height = 62
      StartColor = 16511469
      EndColor = 16244694
      FillDirection = fdLeftToRight
      TitleShow = False
      Caption = 'xpPanel'
      Maximized = True
      Title = 'xpPanelTitle'
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clNavy
      TitleFont.Height = -11
      TitleFont.Name = 'MS Sans Serif'
      TitleFont.Style = [fsBold]
      TitleAlignment = taCenter
      TitleStartColor = clWhite
      TitleEndColor = 15777194
      TitleColor = clWhite
      TitleFillDirect = fdLeftToRight
      TitleImageAlign = tiaLeft
      TitleButtons = [tbMinimize]
      DefaultHeight = 60
      BorderColor = clWhite
      BGImageAlign = iaStretch
      Align = alClient
      TabOrder = 1
      DesignSize = (
        312
        60)
      object Label1: TLabel
        Left = 261
        Top = 16
        Width = 39
        Height = 13
        Anchors = [akTop, akRight]
        Caption = #1583#1576#1610#1585#1582#1575#1606#1607' '
      end
      object chboxSendLetterWithoutChange: TCheckBox
        Left = 174
        Top = 42
        Width = 129
        Height = 17
        Anchors = [akTop, akRight]
        Caption = #1575#1585#1587#1575#1604' '#1576#1583#1608#1606' '#1578#1594#1610#1610#1585#1575#1578
        TabOrder = 0
      end
      object DBLookupComboBox1: TDBLookupComboBox
        Left = 40
        Top = 13
        Width = 215
        Height = 21
        Anchors = [akLeft, akTop, akRight]
        BiDiMode = bdLeftToRight
        KeyField = 'SecId'
        ListField = 'SecTitle'
        ListSource = dUserSecs
        ParentBiDiMode = False
        TabOrder = 1
      end
    end
  end
  inherited DSForm: TDataSource
    Left = 192
  end
  inherited Grid_PopupMenu: TPopupMenu
    Left = 31
    Top = 60
  end
  object dUserSecs: TDataSource
    DataSet = Dm.UserSecs
    Left = 96
    Top = 16
  end
end
