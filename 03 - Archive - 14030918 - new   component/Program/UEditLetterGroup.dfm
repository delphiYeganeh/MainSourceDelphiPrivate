inherited FEditLetterGroup: TFEditLetterGroup
  Left = 591
  Top = 324
  Width = 260
  Height = 140
  BorderIcons = []
  Caption = #1608#1610#1585#1575#1610#1588' '#1593#1606#1608#1575#1606' '#1602#1575#1604#1576' '
  Constraints.MaxHeight = 140
  Constraints.MaxWidth = 260
  Constraints.MinHeight = 140
  Constraints.MinWidth = 260
  OldCreateOrder = True
  PixelsPerInch = 96
  TextHeight = 13
  object pnlMain: TPanel [0]
    Left = 0
    Top = 0
    Width = 244
    Height = 101
    Align = alClient
    ParentColor = True
    TabOrder = 0
    object Panel2: TPanel
      Left = 1
      Top = 1
      Width = 242
      Height = 58
      Align = alClient
      TabOrder = 0
      DesignSize = (
        242
        58)
      object Label1: TLabel
        Left = 207
        Top = 12
        Width = 26
        Height = 13
        Anchors = [akTop, akRight]
        Caption = #1593#1606#1608#1575#1606
        FocusControl = DBEdit1
      end
      object Label2: TLabel
        Left = 204
        Top = 40
        Width = 23
        Height = 13
        Anchors = [akTop, akRight]
        Caption = #1711#1585#1608#1607' '
        FocusControl = DBLookupComboBox1
      end
      object DBEdit1: TDBEdit
        Left = 9
        Top = 8
        Width = 194
        Height = 21
        Anchors = [akTop, akRight]
        DataField = 'Title'
        DataSource = Dm.DLetterTemplate
        TabOrder = 0
      end
      object DBLookupComboBox1: TDBLookupComboBox
        Left = 9
        Top = 36
        Width = 194
        Height = 21
        Anchors = [akTop, akRight]
        BiDiMode = bdLeftToRight
        DataField = 'TemplateGroupTitle'
        DataSource = Dm.DLetterTemplate
        ParentBiDiMode = False
        TabOrder = 1
      end
    end
    object Panel1: TPanel
      Left = 1
      Top = 59
      Width = 242
      Height = 41
      Align = alBottom
      TabOrder = 1
      DesignSize = (
        242
        41)
      object BitBtn2: TAdvGlowButton
        Left = 87
        Top = 8
        Width = 75
        Height = 28
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
        Left = 164
        Top = 8
        Width = 75
        Height = 28
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
  end
  inherited DSForm: TDataSource
    Top = 32
  end
  inherited ActionList: TActionList
    Left = 80
    Top = 32
  end
  inherited xpWindow1: TxpWindow
    Left = 128
    Top = 32
  end
end
