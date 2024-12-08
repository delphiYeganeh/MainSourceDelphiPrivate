inherited FrAddAlternativeUser: TFrAddAlternativeUser
  Left = 490
  Top = 199
  Caption = #1578#1593#1610#1610#1606' '#1580#1575#1606#1588#1610#1606
  ClientHeight = 136
  ClientWidth = 392
  Constraints.MaxHeight = 175
  Constraints.MaxWidth = 408
  Constraints.MinHeight = 170
  Constraints.MinWidth = 400
  OldCreateOrder = True
  PixelsPerInch = 96
  TextHeight = 13
  object pnlMain: TPanel [0]
    Left = 0
    Top = 0
    Width = 392
    Height = 136
    Align = alClient
    ParentColor = True
    TabOrder = 0
    DesignSize = (
      392
      136)
    object Label1: TLabel
      Left = 323
      Top = 32
      Width = 60
      Height = 13
      Anchors = [akTop, akRight]
      Caption = #1705#1575#1585#1576#1585' '#1580#1575#1606#1588#1610#1606
    end
    object Label3: TLabel
      Left = 153
      Top = 65
      Width = 6
      Height = 13
      Anchors = [akTop, akRight]
      Caption = #1578#1575
    end
    object Label2: TLabel
      Left = 303
      Top = 65
      Width = 80
      Height = 13
      Anchors = [akTop, akRight]
      Caption = #1578#1575#1585#1610#1582' '#1588#1585#1608#1593' '#1575#1593#1578#1576#1575#1585
    end
    object EndDate: TDBShamsiDateEdit
      Left = 24
      Top = 64
      Width = 118
      Height = 21
      Anchors = [akLeft, akTop, akRight]
      CheckValidity = True
      ShowMsg = False
      DataField = 'AlternativeEndDate'
      DataSource = Dm.DSelect_AlternativeInfo_ByUserID
      TabOrder = 0
    end
    object BeginDate: TDBShamsiDateEdit
      Left = 176
      Top = 64
      Width = 121
      Height = 21
      Anchors = [akTop, akRight]
      CheckValidity = True
      ShowMsg = False
      DataField = 'AlternativebeginDate'
      DataSource = Dm.DSelect_AlternativeInfo_ByUserID
      TabOrder = 1
    end
    object DBLookupComboBox1: TDBLookupComboBox
      Left = 24
      Top = 29
      Width = 273
      Height = 21
      Anchors = [akLeft, akTop, akRight]
      BiDiMode = bdLeftToRight
      DataField = 'AlternativeUserTitle'
      DataSource = Dm.DSelect_AlternativeInfo_ByUserID
      ParentBiDiMode = False
      TabOrder = 2
    end
    object Panel1: TPanel
      Left = 1
      Top = 94
      Width = 390
      Height = 41
      Align = alBottom
      ParentColor = True
      TabOrder = 3
      DesignSize = (
        390
        41)
      object BitBtn1: TAdvGlowButton
        Left = 208
        Top = 8
        Width = 89
        Height = 27
        Anchors = [akTop, akRight]
        Caption = #1581#1584#1601' '#1580#1575#1606#1588#1610#1606
        ImageIndex = 90
        Images = Dm.ImageList_MainNew
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
      object Button3: TAdvGlowButton
        Left = 21
        Top = 8
        Width = 68
        Height = 27
        Cursor = crHandPoint
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
        TabOrder = 1
        OnClick = Button3Click
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
      object Button2: TAdvGlowButton
        Left = 96
        Top = 8
        Width = 68
        Height = 27
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
        TabOrder = 2
        OnClick = Button2Click
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
    Top = 24
  end
  inherited ActionList: TActionList
    Left = 160
    Top = 24
  end
end
