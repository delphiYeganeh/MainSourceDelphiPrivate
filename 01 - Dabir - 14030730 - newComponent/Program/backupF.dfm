inherited BackupRestore: TBackupRestore
  Left = 774
  Top = 444
  BorderIcons = [biSystemMenu]
  BorderStyle = bsDialog
  Caption = #1578#1607#1610#1607' '#1606#1587#1582#1607' '#1662#1588#1578#1610#1576#1575#1606
  ClientHeight = 114
  ClientWidth = 584
  Color = 16377053
  OldCreateOrder = True
  PixelsPerInch = 96
  TextHeight = 13
  object ProgressBar1: TProgressBar [0]
    Left = 0
    Top = 98
    Width = 584
    Height = 16
    Align = alBottom
    TabOrder = 0
  end
  object pnlMain: TPanel [1]
    Left = 0
    Top = 0
    Width = 584
    Height = 98
    Align = alClient
    ParentColor = True
    TabOrder = 1
    DesignSize = (
      584
      98)
    object Lpath: TLabel
      Left = 480
      Top = 18
      Width = 89
      Height = 13
      Anchors = [akTop, akRight]
      Caption = #1605#1587#1610#1585' '#1601#1575#1610#1604' '#1662#1588#1578#1610#1576#1575#1606
    end
    object Getdir: TSpeedButton
      Left = 452
      Top = 13
      Width = 22
      Height = 22
      Cursor = crHandPoint
      Anchors = [akTop, akRight]
      Caption = '...'
      Font.Charset = ARABIC_CHARSET
      Font.Color = clNavy
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      OnClick = GetdirClick
    end
    object StaticText1: TLabel
      Left = 195
      Top = 40
      Width = 189
      Height = 13
      Anchors = [akTop, akRight]
      Caption = #1575#1610#1606' '#1593#1605#1604' '#1585#1575' '#1585#1608#1610' '#1705#1575#1605#1662#1610#1608#1578#1585' '#1587#1585#1608#1585' '#1575#1606#1580#1575#1605' '#1583#1607#1610#1583
    end
    object EPath: TEdit
      Left = 33
      Top = 14
      Width = 414
      Height = 21
      Anchors = [akTop, akRight]
      BiDiMode = bdLeftToRight
      Color = clBtnHighlight
      ParentBiDiMode = False
      TabOrder = 0
      OnChange = EPathChange
      OnEnter = EPathEnter
      OnExit = EPathExit
    end
    object BitBtn1: TAdvGlowButton
      Left = 235
      Top = 60
      Width = 104
      Height = 25
      Cursor = crHandPoint
      Anchors = [akLeft, akTop, akRight]
      Caption = #1578#1575#1610#1610#1583
      Default = True
      Font.Charset = ARABIC_CHARSET
      Font.Color = clNavy
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      NotesFont.Charset = DEFAULT_CHARSET
      NotesFont.Color = clWindowText
      NotesFont.Height = -11
      NotesFont.Name = 'Tahoma'
      NotesFont.Style = []
      ParentFont = False
      Picture.Data = {
        424D360300000000000036000000280000001000000010000000010018000000
        00000003000000000000000000000000000000000000FF00FFFF00FFFF00FFFF
        00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
        FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00
        FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF
        00FF00CE00006300FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
        FF00FFFF00FFFF00FFFF00FFFF00FF00CE00009C00009C00006300FF00FFFF00
        FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF00CE0000
        9C00009C00009C00009C00006300FF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
        FF00FFFF00FFFF00FF00CE00009C00009C00009C00009C00009C00009C000063
        00FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF00CE00009C0000
        9C0000630000CE00009C00009C00009C00006300FF00FFFF00FFFF00FFFF00FF
        FF00FFFF00FFFF00FF00CE00009C00006300FF00FFFF00FF00CE00009C00009C
        00009C00006300FF00FFFF00FFFF00FFFF00FFFF00FFFF00FF00CE00006300FF
        00FFFF00FFFF00FFFF00FF00CE00009C00009C00009C00006300FF00FFFF00FF
        FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF00CE
        00009C00009C00009C00006300FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF
        00FFFF00FFFF00FFFF00FFFF00FFFF00FF00CE00009C00009C00009C00006300
        FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00
        FFFF00FF00CE00009C00009C00006300FF00FFFF00FFFF00FFFF00FFFF00FFFF
        00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF00CE00009C00006300
        FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00
        FFFF00FFFF00FFFF00FF00CE00006300FF00FFFF00FFFF00FFFF00FFFF00FFFF
        00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
        FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00
        FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF}
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
  inherited DSForm: TDataSource
    Left = 128
  end
  inherited Grid_PopupMenu: TPopupMenu
    Left = 127
  end
  inherited Timer1sssss: TTimer
    Left = 0
    Top = 0
  end
  object ActionManager: TActionManager
    Images = Dm.LetterImages
    Left = 72
    Top = 48
    StyleName = 'XP Style'
    object Aclose: TAction
      Caption = 'Aclose'
      ShortCut = 27
      OnExecute = AcloseExecute
    end
  end
  object OpenDialog: TTntOpenDialog
    Left = 8
    Top = 48
  end
end
