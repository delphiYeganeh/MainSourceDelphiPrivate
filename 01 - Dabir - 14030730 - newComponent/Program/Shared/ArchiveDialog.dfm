inherited ArchiveDialogForm: TArchiveDialogForm
  Tag = 11
  Left = 711
  Top = 355
  BorderIcons = [biSystemMenu]
  BorderStyle = bsDialog
  Caption = #1578#1593#1585#1610#1601' '#1586#1608#1606#1705#1606' '#1576#1575#1610#1711#1575#1606#1610
  ClientHeight = 146
  ClientWidth = 392
  Constraints.MaxHeight = 185
  Constraints.MaxWidth = 408
  Constraints.MinHeight = 180
  Constraints.MinWidth = 400
  OldCreateOrder = True
  PixelsPerInch = 96
  TextHeight = 13
  object pnlMain: TPanel [0]
    Left = 0
    Top = 0
    Width = 392
    Height = 146
    Align = alClient
    ParentColor = True
    TabOrder = 0
    object GroupBox1: TGroupBox
      Left = 1
      Top = 1
      Width = 390
      Height = 103
      Align = alClient
      Caption = #1575#1591#1604#1575#1593#1575#1578' '#1586#1608#1606#1603#1606
      TabOrder = 0
      DesignSize = (
        390
        103)
      object Label2: TLabel
        Left = 351
        Top = 24
        Width = 26
        Height = 13
        Anchors = [akTop, akRight]
        Caption = #1593#1606#1608#1575#1606
      end
      object Label1: TLabel
        Left = 351
        Top = 50
        Width = 22
        Height = 13
        Anchors = [akTop, akRight]
        Caption = #1605#1705#1575#1606
      end
      object Label9: TLabel
        Left = 351
        Top = 75
        Width = 29
        Height = 13
        Anchors = [akTop, akRight]
        Caption = #1578#1608#1590#1610#1581
      end
      object Title: TEdit
        Left = 8
        Top = 20
        Width = 339
        Height = 21
        Anchors = [akLeft, akTop, akRight]
        Ctl3D = True
        ParentCtl3D = False
        TabOrder = 0
        OnEnter = TEditEnter
        OnExit = TEditExit
      end
      object Place: TEdit
        Left = 8
        Top = 46
        Width = 339
        Height = 21
        Anchors = [akLeft, akTop, akRight]
        Ctl3D = True
        ParentCtl3D = False
        TabOrder = 1
        OnEnter = TEditEnter
        OnExit = TEditExit
      end
      object notes: TEdit
        Left = 8
        Top = 72
        Width = 339
        Height = 21
        Anchors = [akLeft, akTop, akRight]
        Ctl3D = True
        ParentCtl3D = False
        TabOrder = 2
        OnEnter = TEditEnter
        OnExit = TEditExit
      end
    end
    object Panel1: TPanel
      Left = 1
      Top = 104
      Width = 390
      Height = 41
      Align = alBottom
      ParentColor = True
      TabOrder = 1
      DesignSize = (
        390
        41)
      object BitBtn2: TAdvGlowButton
        Left = 120
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
        Left = 196
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
    Left = 48
    Top = 72
  end
  inherited ActionList: TActionList
    Left = 48
    Top = 24
  end
end
