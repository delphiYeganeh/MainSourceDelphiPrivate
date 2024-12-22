inherited FrAddSecretariat: TFrAddSecretariat
  Tag = 11
  Left = 564
  Top = 485
  BorderIcons = [biSystemMenu]
  BorderStyle = bsDialog
  Caption = #1575#1590#1575#1601#1607' '#1705#1585#1583#1606' '#1583#1601#1578#1585' '#1576#1575#1610#1711#1575#1606#1610
  ClientHeight = 143
  ClientWidth = 288
  OldCreateOrder = True
  PixelsPerInch = 96
  TextHeight = 13
  object pnlMain: TPanel [0]
    Left = 0
    Top = 0
    Width = 288
    Height = 143
    Align = alClient
    ParentColor = True
    TabOrder = 0
    object Panel1: TPanel
      Left = 1
      Top = 101
      Width = 286
      Height = 41
      Align = alBottom
      ParentColor = True
      TabOrder = 0
      DesignSize = (
        286
        41)
      object BitBtn1: TAdvGlowButton
        Left = 202
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
        ModalResult = 1
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
        Left = 122
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
        ModalResult = 2
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
    object GroupBox1: TGroupBox
      Left = 1
      Top = 1
      Width = 286
      Height = 100
      Align = alClient
      Caption = #1575#1591#1604#1575#1593#1575#1578' '#1583#1601#1578#1585' '#1576#1575#1610#1711#1575#1606#1610
      TabOrder = 1
      DesignSize = (
        286
        100)
      object Label2: TLabel
        Left = 216
        Top = 24
        Width = 30
        Height = 13
        Anchors = [akTop, akRight]
        Caption = #1593#1606#1608#1575#1606':'
      end
      object Label1: TLabel
        Left = 216
        Top = 51
        Width = 15
        Height = 13
        Anchors = [akTop, akRight]
        Caption = #1705#1583':'
      end
      object Label3: TLabel
        Left = 216
        Top = 75
        Width = 60
        Height = 13
        Anchors = [akTop, akRight]
        Caption = #1605#1585#1705#1586' '#1576#1575#1610#1711#1575#1606#1610':'
        FocusControl = DBLookupComboBox1
      end
      object Title: TDBEdit
        Left = 13
        Top = 20
        Width = 200
        Height = 21
        Anchors = [akTop, akRight]
        Ctl3D = True
        DataField = 'SecTitle'
        DataSource = DSForm
        ParentCtl3D = False
        TabOrder = 0
        OnEnter = TEditEnter
        OnExit = TEditExit
      end
      object Place: TDBEdit
        Left = 126
        Top = 47
        Width = 87
        Height = 21
        Anchors = [akTop, akRight]
        Ctl3D = True
        DataField = 'PreCode'
        DataSource = DSForm
        ParentCtl3D = False
        TabOrder = 1
        OnEnter = PlaceEnter
        OnExit = PlaceExit
      end
      object DBLookupComboBox1: TDBLookupComboBox
        Left = 13
        Top = 72
        Width = 200
        Height = 21
        Anchors = [akTop, akRight]
        BiDiMode = bdLeftToRight
        DataField = 'ArchiveCenterTitle'
        DataSource = DSForm
        DropDownRows = 15
        ParentBiDiMode = False
        TabOrder = 2
      end
    end
  end
  inherited DSForm: TDataSource
    DataSet = Dm.Secretariats
    Left = 24
    Top = 80
  end
  inherited ActionList: TActionList
    Left = 80
    Top = 24
  end
  inherited xpWindow1: TxpWindow
    Left = 80
    Top = 80
  end
end
