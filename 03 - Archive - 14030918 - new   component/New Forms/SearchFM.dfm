object FmSearch: TFmSearch
  Left = 745
  Top = 192
  Width = 324
  Height = 460
  BiDiMode = bdRightToLeft
  BorderIcons = [biSystemMenu, biMaximize]
  Caption = #1601#1585#1605' '#1580#1587#1578#1580#1608
  Color = clBtnFace
  Constraints.MinHeight = 460
  Constraints.MinWidth = 317
  Font.Charset = ARABIC_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  KeyPreview = True
  OldCreateOrder = False
  ParentBiDiMode = False
  Position = poMainFormCenter
  OnCreate = FormCreate
  OnKeyDown = FormKeyDown
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object pnlMain: TPanel
    Left = 0
    Top = 0
    Width = 308
    Height = 421
    Align = alClient
    ParentColor = True
    TabOrder = 0
    object Panel3: TPanel
      Left = 1
      Top = 376
      Width = 306
      Height = 44
      Align = alBottom
      ParentColor = True
      TabOrder = 0
      DesignSize = (
        306
        44)
      object Label2: TLabel
        Left = 27
        Top = 4
        Width = 77
        Height = 26
        Anchors = [akTop, akRight]
        Caption = 'F5 : '#1587#1578#1608#1606' '#1576#1593#1583#1610#13#10'F6 : '#1587#1578#1608#1606' '#1602#1576#1604#1610
      end
      object BitBtn1: TAdvGlowButton
        Left = 215
        Top = 6
        Width = 85
        Height = 25
        Cursor = crHandPoint
        Anchors = [akTop, akRight]
        Caption = #1578#1575#1610#1610#1583' F2'
        Default = True
        ImageIndex = 59
        Images = Dm.ImageList_MainNew
        ModalResult = 1
        NotesFont.Charset = DEFAULT_CHARSET
        NotesFont.Color = clWindowText
        NotesFont.Height = -11
        NotesFont.Name = 'Tahoma'
        NotesFont.Style = []
        TabOrder = 0
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
        Left = 123
        Top = 6
        Width = 85
        Height = 25
        Cursor = crHandPoint
        Anchors = [akTop, akRight]
        Caption = #1575#1606#1589#1585#1575#1601' Esc'
        ImageIndex = 47
        Images = Dm.ImageList_MainNew
        NotesFont.Charset = DEFAULT_CHARSET
        NotesFont.Color = clWindowText
        NotesFont.Height = -11
        NotesFont.Name = 'Tahoma'
        NotesFont.Style = []
        TabOrder = 1
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
    object Panel2: TPanel
      Left = 1
      Top = 53
      Width = 306
      Height = 323
      Align = alClient
      ParentColor = True
      TabOrder = 1
      object DBGridSearch: TDBGrid
        Left = 1
        Top = 1
        Width = 304
        Height = 321
        Align = alClient
        BorderStyle = bsNone
        Color = 16772332
        Ctl3D = False
        DataSource = DSSearch
        Font.Charset = ARABIC_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Tahoma'
        Font.Style = []
        Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgAlwaysShowSelection]
        ParentCtl3D = False
        ParentFont = False
        ReadOnly = True
        TabOrder = 0
        TitleFont.Charset = ARABIC_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'Tahoma'
        TitleFont.Style = []
        OnDblClick = DBGridSearchDblClick
        OnKeyDown = DBGridSearchKeyDown
        OnTitleClick = DBGridSearchTitleClick
      end
    end
    object Panel1: TPanel
      Left = 1
      Top = 1
      Width = 306
      Height = 52
      Align = alTop
      ParentColor = True
      TabOrder = 2
      DesignSize = (
        306
        52)
      object Label1: TLabel
        Left = 208
        Top = 3
        Width = 79
        Height = 13
        Anchors = [akTop, akRight]
        Caption = #1580#1587#1578#1580#1608' '#1576#1585' '#1575#1587#1575#1587
        Transparent = True
      end
      object LabelDisplayName: TLabel
        Left = -3
        Top = 3
        Width = 205
        Height = 13
        Anchors = [akTop, akRight]
        AutoSize = False
        Caption = 'LabelDisplayName'
        Color = clBtnFace
        Font.Charset = ARABIC_CHARSET
        Font.Color = clNavy
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentColor = False
        ParentFont = False
        Transparent = True
      end
      object EditSearch: TEdit
        Left = 16
        Top = 22
        Width = 272
        Height = 22
        Anchors = [akLeft, akTop, akRight]
        Font.Charset = ARABIC_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        TabOrder = 0
        OnChange = EditSearchChange
      end
    end
  end
  object DSSearch: TDataSource
    Left = 72
    Top = 136
  end
  object XPManifest1: TXPManifest
    Left = 160
    Top = 137
  end
end
