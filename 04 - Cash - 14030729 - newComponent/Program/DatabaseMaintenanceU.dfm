inherited FrDatabaseMaintenance: TFrDatabaseMaintenance
  Left = 620
  Top = 364
  BorderStyle = bsDialog
  Caption = #1578#1607#1610#1607' '#1606#1587#1582#1607' '#1662#1588#1578#1610#1576#1575#1606
  ClientHeight = 140
  ClientWidth = 521
  Color = clBtnFace
  Font.Height = -12
  OldCreateOrder = True
  PixelsPerInch = 96
  TextHeight = 14
  object pnlMain: TPanel [0]
    Left = 0
    Top = 0
    Width = 521
    Height = 140
    Align = alClient
    ParentColor = True
    TabOrder = 0
    object Panel2: TPanel
      Left = 1
      Top = 98
      Width = 519
      Height = 41
      Align = alBottom
      TabOrder = 0
      object BitBtn1: TAdvGlowButton
        Left = 208
        Top = 7
        Width = 81
        Height = 28
        Caption = #1578#1575#1610#1610#1583
        Default = True
        Font.Charset = ARABIC_CHARSET
        Font.Color = clNavy
        Font.Height = -12
        Font.Name = 'Tahoma'
        Font.Style = []
        ImageIndex = 59
        Images = dm.ImageList_MainNew
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
      Width = 519
      Height = 97
      Align = alClient
      TabOrder = 1
      DesignSize = (
        519
        97)
      object Lpath: TLabel
        Left = 388
        Top = 16
        Width = 101
        Height = 14
        Alignment = taRightJustify
        Anchors = [akTop, akRight]
        Caption = #1605#1587#1610#1585' '#1601#1575#1610#1604' '#1662#1588#1578#1610#1576#1575#1606':'
      end
      object StaticText1: TLabel
        Left = 297
        Top = 51
        Width = 205
        Height = 14
        Anchors = [akTop, akRight]
        Caption = #1575#1610#1606' '#1593#1605#1604' '#1585#1575' '#1585#1608#1610' '#1705#1575#1605#1662#1610#1608#1578#1585' '#1587#1585#1608#1585' '#1575#1606#1580#1575#1605' '#1583#1607#1610#1583
      end
      object SpBtn: TAdvGlowButton
        Left = 5
        Top = 8
        Width = 24
        Height = 25
        Anchors = [akTop, akRight]
        ImageIndex = 78
        Images = dm.ImageList_MainNew
        NotesFont.Charset = DEFAULT_CHARSET
        NotesFont.Color = clWindowText
        NotesFont.Height = -11
        NotesFont.Name = 'Tahoma'
        NotesFont.Style = []
        TabOrder = 2
        OnClick = SpBtnClick
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
      object EPath: TEdit
        Left = 32
        Top = 10
        Width = 353
        Height = 22
        Anchors = [akTop, akRight]
        BiDiMode = bdLeftToRight
        Font.Charset = ARABIC_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentBiDiMode = False
        ParentColor = True
        ParentFont = False
        TabOrder = 0
        OnChange = EPathChange
      end
      object ProgressBar1: TProgressBar
        Left = 16
        Top = 77
        Width = 489
        Height = 16
        TabOrder = 1
      end
    end
  end
  inherited Grid_PopupMenu: TPopupMenu
    Top = 4
  end
  inherited qSetting: TADOQuery
    CommandTimeout = 300
  end
  object ActionManager: TActionManager
    Left = 184
    StyleName = 'XP Style'
    object Aclose: TAction
      Caption = 'Aclose'
      ShortCut = 27
      OnExecute = AcloseExecute
    end
  end
end
