inherited FmSearch: TFmSearch
  Top = 193
  BorderIcons = [biSystemMenu, biMaximize]
  Caption = #1601#1585#1605' '#1580#1587#1578#1580#1608
  ClientHeight = 426
  ClientWidth = 400
  Constraints.MinHeight = 350
  Constraints.MinWidth = 317
  OldCreateOrder = True
  Position = poMainFormCenter
  OnCreate = nil
  OnKeyDown = FormKeyDown
  PixelsPerInch = 96
  TextHeight = 13
  object pnlMain: TPanel [0]
    Left = 0
    Top = 0
    Width = 400
    Height = 426
    Align = alClient
    ParentColor = True
    TabOrder = 0
    object Panel1: TPanel
      Left = 1
      Top = 1
      Width = 398
      Height = 52
      Align = alTop
      ParentColor = True
      TabOrder = 0
      DesignSize = (
        398
        52)
      object Label1: TLabel
        Left = 308
        Top = 3
        Width = 79
        Height = 13
        Anchors = [akTop, akRight]
        Caption = #1580#1587#1578#1580#1608' '#1576#1585' '#1575#1587#1575#1587
        Transparent = True
      end
      object LabelDisplayName: TLabel
        Left = 97
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
        Left = 104
        Top = 22
        Width = 284
        Height = 22
        Anchors = [akTop, akRight]
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
    object Panel2: TPanel
      Left = 1
      Top = 53
      Width = 398
      Height = 328
      Align = alClient
      ParentColor = True
      TabOrder = 1
      object DBGridSearch: TYDBGrid
        Left = 1
        Top = 1
        Width = 396
        Height = 326
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
        YeganehColor = False
        YeganehFinish = False
        PageNumber = False
        RecordNumber = False
        HasTime = False
        Oriention = poPortrait
        HasDate = False
        HasIndex = False
        InvertFarsiDate = True
        TitleSort = True
        AutoInsert = False
        FooterFields = 'Count'
      end
    end
    object Panel3: TPanel
      Left = 1
      Top = 381
      Width = 398
      Height = 44
      Align = alBottom
      ParentColor = True
      TabOrder = 2
      DesignSize = (
        398
        44)
      object Label2: TLabel
        Left = 111
        Top = 4
        Width = 77
        Height = 26
        Anchors = [akTop, akRight]
        Caption = 'F5 : '#1587#1578#1608#1606' '#1576#1593#1583#1610#13#10'F6 : '#1587#1578#1608#1606' '#1602#1576#1604#1610
      end
      object BitBtn1: TAdvGlowButton
        Left = 304
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
        Left = 212
        Top = 6
        Width = 85
        Height = 25
        Cursor = crHandPoint
        Anchors = [akTop, akRight]
        Caption = #1575#1606#1589#1585#1575#1601' Esc'
        ImageIndex = 1
        Images = Dm.ImageList_MainNew
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
  inherited Grid_PopupMenu: TPopupMenu
    Left = 71
  end
  object DSSearch: TDataSource
    Left = 40
    Top = 128
  end
end
