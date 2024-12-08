inherited SecChange: TSecChange
  Tag = 1837
  Left = 578
  Top = 255
  BorderIcons = [biSystemMenu]
  Caption = #1578#1594#1610#1610#1585' '#1583#1576#1610#1585#1582#1575#1606#1607
  ClientHeight = 96
  ClientWidth = 312
  Constraints.MaxHeight = 135
  Constraints.MaxWidth = 328
  Constraints.MinHeight = 130
  Constraints.MinWidth = 320
  OldCreateOrder = True
  PixelsPerInch = 96
  TextHeight = 13
  object pnlMain: TPanel [0]
    Left = 0
    Top = 0
    Width = 312
    Height = 96
    Align = alClient
    TabOrder = 0
    object Bevel1: TBevel
      Left = 1
      Top = 1
      Width = 310
      Height = 50
      Align = alTop
      Shape = bsFrame
    end
    object Label1: TLabel
      Left = 232
      Top = 14
      Width = 65
      Height = 13
      Caption = #1583#1576#1610#1585#1582#1575#1606#1607' '#1601#1593#1604#1610
    end
    object DBLookupComboBox1: TDBLookupComboBox
      Left = 16
      Top = 11
      Width = 201
      Height = 21
      BiDiMode = bdLeftToRight
      KeyField = 'SecId'
      ListField = 'SecTitle'
      ListSource = dUserSecs
      ParentBiDiMode = False
      TabOrder = 0
    end
    object BitBtn2: TAdvGlowButton
      Left = 135
      Top = 56
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
    object BitBtn1: TAdvGlowButton
      Left = 55
      Top = 56
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
      ImageIndex = 1
      Images = Dm.ImageList_MainNew
      NotesFont.Charset = DEFAULT_CHARSET
      NotesFont.Color = clWindowText
      NotesFont.Height = -11
      NotesFont.Name = 'Tahoma'
      NotesFont.Style = []
      ParentFont = False
      TabOrder = 2
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
  inherited ActionList: TActionList
    Left = 72
    Top = 64
  end
  inherited Grid_PopupMenu: TPopupMenu
    Left = 263
    Top = 60
  end
  inherited Timer1sssss: TTimer
    Left = 16
    Top = 72
  end
  object dUserSecs: TDataSource
    DataSet = Dm.UserSecs
    Left = 8
    Top = 64
  end
end
