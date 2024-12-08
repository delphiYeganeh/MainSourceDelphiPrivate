inherited FrChangeOrgID: TFrChangeOrgID
  Tag = 1837
  Left = 476
  Top = 332
  BorderIcons = [biSystemMenu]
  Caption = #1578#1594#1610#1610#1585' '#1705#1575#1585#1578#1575#1576#1604
  ClientHeight = 96
  ClientWidth = 382
  Constraints.MaxHeight = 135
  Constraints.MaxWidth = 398
  Constraints.MinHeight = 130
  Constraints.MinWidth = 390
  OldCreateOrder = True
  PixelsPerInch = 96
  TextHeight = 13
  object pnlMain: TPanel [0]
    Left = 0
    Top = 0
    Width = 382
    Height = 96
    Align = alClient
    ParentColor = True
    TabOrder = 0
    DesignSize = (
      382
      96)
    object Bevel1: TBevel
      Left = 1
      Top = 1
      Width = 380
      Height = 50
      Align = alTop
      Shape = bsFrame
    end
    object Label1: TLabel
      Left = 289
      Top = 17
      Width = 85
      Height = 13
      Anchors = [akTop, akRight]
      Caption = #1578#1594#1610#1610#1585' '#1587#1605#1578' '#1705#1575#1585#1578#1575#1576#1604
    end
    object BitBtn1: TAdvGlowButton
      Left = 125
      Top = 63
      Width = 75
      Height = 25
      Cursor = crHandPoint
      Cancel = True
      Caption = #1575#1606#1589#1585#1575#1601
      Font.Charset = ARABIC_CHARSET
      Font.Color = clNavy
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ImageIndex = 47
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
    object BitBtn2: TAdvGlowButton
      Left = 204
      Top = 63
      Width = 75
      Height = 25
      Cursor = crHandPoint
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
    object DBLookupComboBox1: TDBLookupComboBox
      Left = 24
      Top = 13
      Width = 259
      Height = 21
      Anchors = [akLeft, akTop, akRight]
      BiDiMode = bdLeftToRight
      KeyField = 'Orgid'
      ListField = 'Comment'
      ListSource = Dm.DSelect_UserOrgid
      ParentBiDiMode = False
      TabOrder = 2
    end
  end
  inherited Grid_PopupMenu: TPopupMenu
    Left = 311
    Top = 28
  end
  object dUserSecs: TDataSource
    DataSet = Dm.UserSecs
    Left = 96
    Top = 16
  end
end
