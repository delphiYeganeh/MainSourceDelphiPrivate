inherited FrAddExtentionDialog: TFrAddExtentionDialog
  Tag = 11
  Left = 689
  Top = 277
  BorderIcons = [biSystemMenu]
  BorderStyle = bsDialog
  Caption = #1575#1590#1575#1601#1607' '#1705#1585#1583#1606' '#1662#1587#1608#1606#1583' '#1662#1610#1608#1587#1578
  ClientHeight = 127
  ClientWidth = 400
  OldCreateOrder = True
  PixelsPerInch = 96
  TextHeight = 13
  object pnlMain: TPanel [0]
    Left = 0
    Top = 0
    Width = 400
    Height = 127
    Align = alClient
    TabOrder = 0
    object GroupBox1: TGroupBox
      Left = 1
      Top = 1
      Width = 398
      Height = 84
      Align = alClient
      Caption = #1575#1591#1604#1575#1593#1575#1578' '#1606#1608#1593' '#1662#1610#1608#1587#1578
      TabOrder = 0
      object Label2: TLabel
        Left = 353
        Top = 24
        Width = 30
        Height = 13
        Caption = #1593#1606#1608#1575#1606':'
      end
      object Label1: TLabel
        Left = 353
        Top = 51
        Width = 33
        Height = 13
        Caption = #1662#1587#1608#1606#1583':'
      end
      object Label3: TLabel
        Left = 54
        Top = 51
        Width = 204
        Height = 13
        Caption = '( '#1576#1583#1608#1606' '#1581#1585#1608#1601' '#1582#1575#1589' '#1605#1575#1606#1606#1583':   / \ : * ? " < > | .)'
      end
      object Title: TDBEdit
        Left = 50
        Top = 20
        Width = 301
        Height = 21
        Ctl3D = True
        DataField = 'ExtentionTitle'
        DataSource = Dm.DExtention
        ParentCtl3D = False
        TabOrder = 0
        OnEnter = TEditEnter
        OnExit = TEditExit
      end
      object Place: TDBEdit
        Left = 264
        Top = 47
        Width = 87
        Height = 21
        Ctl3D = True
        DataField = 'Extention'
        DataSource = Dm.DExtention
        ParentCtl3D = False
        TabOrder = 1
        OnEnter = PlaceEnter
        OnExit = PlaceExit
      end
    end
    object Panel1: TPanel
      Left = 1
      Top = 85
      Width = 398
      Height = 41
      Align = alBottom
      ParentColor = True
      TabOrder = 1
      object BitBtn1: TAdvGlowButton
        Left = 280
        Top = 8
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
        Top = 8
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
  inherited DSForm: TDataSource
    Top = 80
  end
  inherited ActionList: TActionList
    Left = 152
    Top = 88
  end
  inherited Grid_PopupMenu: TPopupMenu
    Left = 71
    Top = 84
  end
end
