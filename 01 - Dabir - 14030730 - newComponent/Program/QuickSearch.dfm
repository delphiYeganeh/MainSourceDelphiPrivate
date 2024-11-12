inherited QuickSearchF: TQuickSearchF
  Tag = 4
  Left = 831
  Top = 0
  HorzScrollBar.Smooth = True
  HorzScrollBar.Size = 10
  HorzScrollBar.Style = ssFlat
  HorzScrollBar.Tracking = True
  VertScrollBar.Color = clActiveBorder
  VertScrollBar.ParentColor = False
  VertScrollBar.Smooth = True
  VertScrollBar.Tracking = True
  BorderStyle = bsDialog
  ClientHeight = 706
  ClientWidth = 206
  Color = clWindow
  Constraints.MinWidth = 214
  OldCreateOrder = True
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel [0]
    Left = 0
    Top = 8
    Width = 206
    Height = 0
    Align = alTop
    BevelOuter = bvNone
    ParentColor = True
    TabOrder = 4
    DesignSize = (
      206
      0)
    object TitleLabel: TLabel
      Left = 36
      Top = 0
      Width = 135
      Height = 13
      Anchors = [akTop, akRight]
      Caption = #1580#1587#1578#1580#1608' '#1583#1585' '#1606#1575#1605#1607' '#1607#1575#1610' '#1608#1575#1585#1583#1607
      Font.Charset = ARABIC_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
  end
  object SubjectPanel: TYCheckGroupBox [1]
    Left = 0
    Top = 8
    Width = 206
    Height = 0
    Align = alTop
    Anchors = [akTop, akRight]
    Caption = '   '#1605#1608#1590#1608#1593'     '
    TabOrder = 1
    MinHeight = 15
    MaxHeight = 49
  end
  object Panel2: TPanel [2]
    Left = 0
    Top = 8
    Width = 206
    Height = 0
    Align = alTop
    BevelOuter = bvNone
    Color = clWindow
    TabOrder = 2
  end
  object AdvancedSearch: TYCheckGroupBox [3]
    Left = 0
    Top = 8
    Width = 206
    Height = 0
    Align = alTop
    Anchors = [akTop, akRight]
    BiDiMode = bdRightToLeft
    Caption = '         '#1662#1610#1588#1585#1601#1578#1607'   '
    ParentBiDiMode = False
    TabOrder = 0
    MinHeight = 15
    MaxHeight = 240
  end
  object Panel3: TPanel [4]
    Left = 0
    Top = 8
    Width = 206
    Height = 0
    Align = alTop
    BevelOuter = bvNone
    ParentColor = True
    TabOrder = 3
  end
  object onlSearch: TxpPanel [5]
    Left = 0
    Top = 8
    Width = 206
    Height = 698
    StartColor = 16774388
    EndColor = 16767449
    FillDirection = fdLeftToRight
    Caption = 'xpPanel'
    Maximized = True
    Title = #1580#1587#1578#1580#1608' '#1583#1585' '#1606#1575#1605#1607' '#1607#1575#1610' '#1608#1575#1585#1583#1607
    TitleFont.Charset = ARABIC_CHARSET
    TitleFont.Color = clNavy
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
    TitleAlignment = taRightJustify
    TitleStartColor = clWhite
    TitleEndColor = 16763594
    TitleColor = clWhite
    TitleFillDirect = fdVerticalFromCenter
    TitleImageAlign = tiaRight
    TitleButtons = [tbClose]
    Animation = False
    DefaultHeight = 66
    BorderColor = clWhite
    BGImageAlign = iaStretch
    Color = clNone
    Align = alClient
    TabOrder = 5
    AfterClose = onlSearchAfterClose
    DesignSize = (
      204
      666)
    object PnlAdvanced: TxpPanel
      Left = 1
      Top = 233
      Width = 202
      Height = 233
      StartColor = 16774388
      EndColor = 16767449
      FillDirection = fdLeftToRight
      Caption = 'xpPanel'
      Title = #1662#1610#1588#1585#1601#1578#1607
      TitleFont.Charset = ARABIC_CHARSET
      TitleFont.Color = clNavy
      TitleFont.Height = -11
      TitleFont.Name = 'Tahoma'
      TitleFont.Style = []
      TitleAlignment = taRightJustify
      TitleStartColor = clWhite
      TitleEndColor = 16763594
      TitleColor = clWhite
      TitleFillDirect = fdVerticalFromCenter
      TitleImageAlign = tiaLeft
      TitleButtons = [tbMinimize]
      Animation = False
      DefaultHeight = 66
      BorderColor = clWhite
      BGImageAlign = iaStretch
      Color = clWindow
      Align = alTop
      TabOrder = 0
      DesignSize = (
        200
        201)
      object LabelSendRecive: TLabel
        Left = 62
        Top = 4
        Width = 134
        Height = 13
        Anchors = [akTop, akRight]
        Caption = #1711#1610#1585#1606#1583#1607' '#1608#1575#1585#1583#1607' '#1610#1575' '#1601#1585#1587#1578#1606#1583#1607' '#1589#1575#1583#1585#1607
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
      end
      object Label11: TLabel
        Left = 17
        Top = 18
        Width = 64
        Height = 13
        Anchors = [akTop, akRight]
        Caption = #1586#1610#1585#1605#1580#1605#1608#1593#1607' '#1607#1575
      end
      object Label8: TLabel
        Left = 136
        Top = 56
        Width = 60
        Height = 13
        Anchors = [akTop, akRight]
        Caption = #1575#1585#1580#1575#1593' '#1576#1607' '#1608#1575#1581#1583
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
      end
      object Label12: TLabel
        Left = 17
        Top = 56
        Width = 64
        Height = 13
        Anchors = [akTop, akRight]
        Caption = #1586#1610#1585#1605#1580#1605#1608#1593#1607' '#1607#1575
      end
      object OrgEdit: TCurvyEdit
        Left = 15
        Top = 35
        Width = 162
        Height = 21
        Anchors = [akTop, akRight]
        Color = clCream
        Rounding = 3
        TabOrder = 0
        TabStop = False
        Version = '1.1.3.0'
        BiDiMode = bdRightToLeft
        Controls = <>
        ParentBiDiMode = False
        ReadOnly = True
        OnChange = OrgEditChange
      end
      object SpeedButton2: TAdvGlowButton
        Left = 178
        Top = 35
        Width = 20
        Height = 21
        Cursor = crHandPoint
        Anchors = [akTop, akRight]
        ImageIndex = 78
        Images = Dm.ImageList_MainNew
        NotesFont.Charset = DEFAULT_CHARSET
        NotesFont.Color = clWindowText
        NotesFont.Height = -11
        NotesFont.Name = 'Tahoma'
        NotesFont.Style = []
        TabOrder = 1
        OnClick = SpeedButton2Click
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
      object SubRec: TCheckBox
        Left = 86
        Top = 57
        Width = 13
        Height = 14
        Cursor = crHandPoint
        Anchors = [akTop, akRight]
        Checked = True
        State = cbChecked
        TabOrder = 2
      end
      object SubItems: TCheckBox
        Left = 83
        Top = 20
        Width = 16
        Height = 13
        Cursor = crHandPoint
        Anchors = [akTop, akRight]
        Checked = True
        State = cbChecked
        TabOrder = 3
      end
      object GroupBox1: TGroupBox
        Left = 12
        Top = 94
        Width = 187
        Height = 80
        Anchors = [akTop, akRight]
        Caption = '   '#1580#1587#1578#1580#1608#1610' '#1593#1591#1601' / '#1662#1610#1585#1608'   '
        TabOrder = 4
        DesignSize = (
          187
          80)
        object Label2: TLabel
          Left = 154
          Top = 19
          Width = 25
          Height = 13
          Anchors = [akTop, akRight]
          Caption = #1593#1591#1601
        end
        object Label3: TLabel
          Left = 162
          Top = 42
          Width = 17
          Height = 13
          Anchors = [akTop, akRight]
          Caption = #1662#1610#1585#1608
        end
        object RetroactionNo: TCurvyEdit
          Left = 10
          Top = 17
          Width = 136
          Height = 21
          Anchors = [akLeft, akTop, akRight]
          Rounding = 3
          TabOrder = 0
          TabStop = False
          Version = '1.1.3.0'
          BiDiMode = bdRightToLeft
          Controls = <>
          ParentBiDiMode = False
          OnEnter = TEditEnter
          OnExit = TEditExit
          OnKeyPress = RetroactionNo1KeyPress
        end
        object FollowEdit: TCurvyEdit
          Left = 10
          Top = 39
          Width = 136
          Height = 21
          Anchors = [akLeft, akTop, akRight]
          Rounding = 3
          TabOrder = 1
          TabStop = False
          Version = '1.1.3.0'
          BiDiMode = bdRightToLeft
          Controls = <>
          ParentBiDiMode = False
          OnEnter = TEditEnter
          OnExit = TEditExit
          OnKeyPress = RetroactionNo1KeyPress
        end
        object rdLetterNo: TRadioButton
          Left = 13
          Top = 60
          Width = 71
          Height = 17
          Anchors = [akTop, akRight]
          Caption = #1588#1605#1575#1585#1607' '#1606#1575#1605#1607' '
          TabOrder = 3
        end
        object rdAnidicatorNo: TRadioButton
          Left = 85
          Top = 60
          Width = 94
          Height = 17
          Anchors = [akTop, akRight]
          Caption = #1588#1605#1575#1585#1607' '#1575#1606#1583#1610#1705#1575#1578#1608#1585
          Checked = True
          TabOrder = 2
          TabStop = True
        end
      end
      object cmbSearch_In_All_Secs: TCheckBox
        Tag = 10
        Left = 6
        Top = 175
        Width = 107
        Height = 16
        Cursor = crHandPoint
        Anchors = [akTop, akRight]
        Caption = #1578#1605#1575#1605' '#1583#1576#1610#1585#1582#1575#1606#1607' '#1607#1575
        TabOrder = 5
      end
      object cmbSearch_In_All_Years: TCheckBox
        Tag = 10
        Left = 120
        Top = 175
        Width = 78
        Height = 16
        Cursor = crHandPoint
        Anchors = [akTop, akRight]
        Caption = #1578#1605#1575#1605' '#1587#1575#1604#1607#1575' '
        TabOrder = 6
      end
      object SpeedButton3: TAdvGlowButton
        Left = 178
        Top = 73
        Width = 20
        Height = 21
        Cursor = crHandPoint
        Anchors = [akTop, akRight]
        ImageIndex = 78
        Images = Dm.ImageList_MainNew
        NotesFont.Charset = DEFAULT_CHARSET
        NotesFont.Color = clWindowText
        NotesFont.Height = -11
        NotesFont.Name = 'Tahoma'
        NotesFont.Style = []
        TabOrder = 7
        OnClick = SpeedButton3Click
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
      object RecommiteOrgEdt: TCurvyEdit
        Left = 15
        Top = 73
        Width = 162
        Height = 21
        Anchors = [akTop, akRight]
        Color = clCream
        Rounding = 3
        TabOrder = 8
        TabStop = False
        Version = '1.1.3.0'
        BiDiMode = bdRightToLeft
        Controls = <>
        ParentBiDiMode = False
        ReadOnly = True
        OnChange = OrgEditChange
      end
    end
    object PnlSubject: TxpPanel
      Left = 1
      Top = 466
      Width = 202
      Height = 88
      StartColor = 16774388
      EndColor = 16767449
      FillDirection = fdLeftToRight
      Caption = 'xpPanel'
      Title = #1605#1608#1590#1608#1593
      TitleFont.Charset = ARABIC_CHARSET
      TitleFont.Color = clNavy
      TitleFont.Height = -11
      TitleFont.Name = 'Tahoma'
      TitleFont.Style = []
      TitleAlignment = taRightJustify
      TitleStartColor = clWhite
      TitleEndColor = 16763594
      TitleColor = clWhite
      TitleFillDirect = fdVerticalFromCenter
      TitleImageAlign = tiaLeft
      TitleButtons = [tbMinimize]
      Animation = False
      DefaultHeight = 66
      BorderColor = clWhite
      BGImageAlign = iaStretch
      Color = clWindow
      Align = alTop
      TabOrder = 1
      DesignSize = (
        200
        56)
      object SpeedButton4: TAdvGlowButton
        Left = 178
        Top = 16
        Width = 20
        Height = 21
        Cursor = crHandPoint
        Anchors = [akTop, akRight]
        ImageIndex = 78
        Images = Dm.ImageList_MainNew
        NotesFont.Charset = DEFAULT_CHARSET
        NotesFont.Color = clWindowText
        NotesFont.Height = -11
        NotesFont.Name = 'Tahoma'
        NotesFont.Style = []
        TabOrder = 0
        OnClick = SpeedButton4Click
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
      object EdSubject: TCurvyEdit
        Left = 15
        Top = 16
        Width = 162
        Height = 21
        Anchors = [akTop, akRight]
        Color = clCream
        Rounding = 3
        TabOrder = 1
        TabStop = False
        Version = '1.1.3.0'
        BiDiMode = bdRightToLeft
        Controls = <>
        ParentBiDiMode = False
        ReadOnly = True
        OnChange = EdSubjectChange
      end
    end
    object xpPanel3: TxpPanel
      Left = 1
      Top = 554
      Width = 202
      Height = 111
      StartColor = 16774388
      EndColor = 16767449
      FillDirection = fdLeftToRight
      TitleShow = False
      Caption = 'xpPanel'
      Maximized = True
      Title = 'xpPanelTitle'
      TitleFont.Charset = ARABIC_CHARSET
      TitleFont.Color = clNavy
      TitleFont.Height = -11
      TitleFont.Name = 'Tahoma'
      TitleFont.Style = []
      TitleAlignment = taRightJustify
      TitleStartColor = clWhite
      TitleEndColor = 16763594
      TitleColor = clWhite
      TitleFillDirect = fdVerticalFromCenter
      TitleImageAlign = tiaLeft
      TitleButtons = [tbMinimize]
      Animation = False
      DefaultHeight = 66
      ShowBorder = False
      BorderColor = clWhite
      BGImageAlign = iaStretch
      Color = clWindow
      Align = alClient
      TabOrder = 2
      DesignSize = (
        202
        111)
      object Label9: TLabel
        Left = 88
        Top = 33
        Width = 103
        Height = 13
        Anchors = [akTop, akRight]
        Caption = #1588#1605#1575#1585#1607' '#1583#1576#1610#1585#1582#1575#1606#1607' '#1605#1585#1705#1586#1610
      end
      object lblRunevesht: TLabel
        Left = 125
        Top = 10
        Width = 58
        Height = 13
        Anchors = [akTop, akRight]
        Caption = #1585#1608#1606#1608#1588#1578' '#1583#1575#1585#1583
        Enabled = False
        OnClick = lblRuneveshtClick
      end
      object Search: TAdvGlowButton
        Left = 110
        Top = 104
        Width = 77
        Height = 28
        Cursor = crHandPoint
        Anchors = [akTop, akRight]
        Caption = ' '#1580#1587#1578#1580#1608
        Default = True
        ImageIndex = 35
        Images = Dm.ImageList_MainNew
        NotesFont.Charset = DEFAULT_CHARSET
        NotesFont.Color = clWindowText
        NotesFont.Height = -11
        NotesFont.Name = 'Tahoma'
        NotesFont.Style = []
        TabOrder = 0
        OnClick = SearchClick
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
      object BitBtn3: TAdvGlowButton
        Left = 28
        Top = 104
        Width = 77
        Height = 28
        Cursor = crHandPoint
        Anchors = [akTop, akRight]
        Caption = #1580#1583#1610#1583
        ImageIndex = 13
        Images = Dm.ImageList_MainNew
        NotesFont.Charset = DEFAULT_CHARSET
        NotesFont.Color = clWindowText
        NotesFont.Height = -11
        NotesFont.Name = 'Tahoma'
        NotesFont.Style = []
        TabOrder = 1
        OnClick = BitBtn3Click
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
      object CenterNo: TCurvyEdit
        Left = 12
        Top = 48
        Width = 180
        Height = 21
        Anchors = [akTop, akRight]
        Rounding = 3
        TabOrder = 2
        TabStop = False
        Version = '1.1.3.0'
        BiDiMode = bdRightToLeft
        Controls = <>
        ParentBiDiMode = False
        OnEnter = TEditEnter
        OnExit = TEditExit
      end
      object chkRunevesht: TCheckBox
        Left = 182
        Top = 9
        Width = 17
        Height = 17
        Anchors = [akTop, akRight]
        TabOrder = 3
        OnClick = chkRuneveshtClick
      end
      object CheckBox1: TCheckBox
        Left = 13
        Top = 9
        Width = 97
        Height = 17
        Anchors = [akTop, akRight]
        Caption = #1575#1606#1578#1582#1575#1576' '#1607#1605#1607
        TabOrder = 4
      end
    end
    object SpeedButton1: TAdvGlowButton
      Left = 36
      Top = 2
      Width = 21
      Height = 20
      Cursor = crHandPoint
      Anchors = [akTop, akRight]
      NotesFont.Charset = DEFAULT_CHARSET
      NotesFont.Color = clWindowText
      NotesFont.Height = -11
      NotesFont.Name = 'Tahoma'
      NotesFont.Style = []
      Picture.Data = {
        424D320100000000000036000000280000000900000009000000010018000000
        0000FC000000C40E0000C40E00000000000000000000CCCCCCCCCCCCCCCCCCCC
        CCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCC00000000000000CCCCCCCCCCCCCCCC
        CCCCCCCC000000000000CCCCCC00CCCCCC000000000000CCCCCCCCCCCC000000
        000000CCCCCCCCCCCC00CCCCCCCCCCCC000000000000000000000000CCCCCCCC
        CCCCCCCCCC00CCCCCCCCCCCCCCCCCC000000000000CCCCCCCCCCCCCCCCCCCCCC
        CC00CCCCCCCCCCCC000000000000000000000000CCCCCCCCCCCCCCCCCC00CCCC
        CC000000000000CCCCCCCCCCCC000000000000CCCCCCCCCCCC00000000000000
        CCCCCCCCCCCCCCCCCCCCCCCC000000000000CCCCCC00CCCCCCCCCCCCCCCCCCCC
        CCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCC00}
      TabOrder = 3
      Visible = False
      OnClick = SpeedButton1Click
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
    object pnlReport: TxpPanel
      Left = 1
      Top = 1
      Width = 202
      Height = 232
      StartColor = 16774388
      EndColor = 16767449
      FillDirection = fdLeftToRight
      TitleShow = False
      Caption = 'xpPanel'
      Title = 'xpPanelTitle'
      TitleFont.Charset = ARABIC_CHARSET
      TitleFont.Color = clNavy
      TitleFont.Height = -11
      TitleFont.Name = 'Tahoma'
      TitleFont.Style = []
      TitleAlignment = taRightJustify
      TitleStartColor = clWhite
      TitleEndColor = 16763594
      TitleColor = clWhite
      TitleFillDirect = fdVerticalFromCenter
      TitleImageAlign = tiaLeft
      TitleButtons = [tbMinimize]
      Animation = False
      DefaultHeight = 66
      BorderColor = clWhite
      BGImageAlign = iaStretch
      Color = clWindow
      Align = alTop
      TabOrder = 4
      DesignSize = (
        200
        230)
      object Label6: TLabel
        Left = 128
        Top = 7
        Width = 69
        Height = 13
        Anchors = [akTop, akRight]
        Caption = #1588#1605#1575#1585#1607' '#1575#1606#1583#1610#1705#1575#1578#1608#1585
      end
      object Label1: TLabel
        Left = 146
        Top = 42
        Width = 51
        Height = 13
        Anchors = [akTop, akRight]
        Caption = #1588#1605#1575#1585#1607' '#1606#1575#1605#1607
      end
      object Image1: TImage
        Left = 4
        Top = 2
        Width = 32
        Height = 34
        Anchors = [akTop, akRight]
        Picture.Data = {
          0B546478504E47496D61676589504E470D0A1A0A0000000D4948445200000020
          000000200806000000737A7AF40000000467414D410000B18F0BFC6105000000
          097048597300000B1300000B1301009A9C18000001DE494441545847ED564B4E
          024114ECB8D098286CFD9DC07368E8D14419136E216C4CC01D2C4D66B8855721
          E00A176E3D800A46A389312CC6F798D70336DD33FD1AC3CA4A2A84EAAE7A45CF
          0C20FEA1A31CC6C952ACC63714E507632897CB943006FAD0B78431CC973E25F4
          10929DA1FBD925F400929DA1FBA7E494D0CD243B43F767742DA11B497686EEFF
          459712BA89646FB0F3D88602B0F3D88602B0F3D88602B0F3D886026C8751A354
          8D1E9CF3E6873B195CD06EAF95C2B80E4FC1172976F8164884DC18894A632CE4
          602C82CF94723012B28E6BB8074A1C4F37E7C1A7C0489CEE8F44700F431313A1
          C410F7D0F67C700BA49FDC3E5C114BA893C805B7407AECD9906F786DBE88A33D
          245C821669B41E5C92CD0E6E0108BE53037020C919509BAD077D92EDF028F0A1
          063C8BCA2EC9199EC4C98E5AC7BD24DBB14C013C769233E0CDA7D6E112BC916C
          874781DC4BF02AE4F5AC80EC916C07B70084D6E706C00D275B3937E12DD9ECE0
          16481F433954431CD821AB197A817C46D3234FBF88FEA8847990959352D895E8
          4B446D1D9F7308EF03F1C67C87523D3C761AEA56C230A48893F279DCC41F1C8A
          5880F65D9011CA2DFE45330C7063357A2C5F44575B67D1E141ADBB4971194C25
          E084DAB4BC1ACC9758F9700518DE41A6EF84F8018ABB07BBE47CBAE300000000
          49454E44AE426082}
        Transparent = True
        Visible = False
      end
      object Label10: TLabel
        Left = 190
        Top = 97
        Width = 7
        Height = 13
        Anchors = [akTop, akRight]
        Caption = #1575#1586
      end
      object Label13: TLabel
        Left = 99
        Top = 97
        Width = 6
        Height = 13
        Anchors = [akTop, akRight]
        Caption = #1578#1575
      end
      object SenderTitle: TLabel
        Left = 107
        Top = 114
        Width = 90
        Height = 13
        Anchors = [akTop, akRight]
        Caption = #1587#1575#1586#1605#1575#1606' '#1591#1585#1601' '#1605#1705#1575#1578#1576#1607
      end
      object Label4: TLabel
        Left = 132
        Top = 147
        Width = 65
        Height = 13
        Anchors = [akTop, akRight]
        Caption = #1605#1590#1605#1608#1606' '#1588#1575#1605#1604
      end
      object Label5: TLabel
        Left = 115
        Top = 182
        Width = 82
        Height = 13
        Anchors = [akTop, akRight]
        Caption = #1588#1605#1575#1585#1607' '#1583#1575#1606#1588#1580#1608#1610#1610
      end
      object Indicator: TCurvyEdit
        Left = 108
        Top = 22
        Width = 89
        Height = 21
        Anchors = [akTop, akRight]
        Rounding = 3
        TabOrder = 0
        TabStop = False
        Version = '1.1.3.0'
        BiDiMode = bdRightToLeft
        Controls = <>
        ParentBiDiMode = False
        OnEnter = TEditEnter
        OnExit = TEditExit
      end
      object ChBoIncommingNO: TCheckBox
        Left = 20
        Top = 43
        Width = 75
        Height = 13
        Anchors = [akTop, akRight]
        Caption = #1576#1583#1608#1606' '#1601#1585#1605#1608#1604
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        TabOrder = 1
        OnClick = ChBoIncommingNOClick
      end
      object EdtIncommingNO: TCurvyEdit
        Left = 17
        Top = 57
        Width = 180
        Height = 21
        Anchors = [akTop, akRight]
        Rounding = 3
        TabOrder = 2
        TabStop = False
        Version = '1.1.3.0'
        BiDiMode = bdRightToLeft
        Controls = <>
        ParentBiDiMode = False
        OnEnter = TEditEnter
        OnExit = EdtIncommingNOExit
        OnKeyDown = EdtIncommingNOKeyDown
        OnKeyPress = RetroactionNo1KeyPress
      end
      object RBIncommingDate: TRadioButton
        Left = 13
        Top = 79
        Width = 90
        Height = 15
        Anchors = [akTop, akRight]
        Caption = #1578#1575#1585#1610#1582' '#1606#1575#1605#1607' '#1608#1575#1585#1583#1607
        TabOrder = 3
      end
      object RBRegistrationdate: TRadioButton
        Left = 107
        Top = 79
        Width = 89
        Height = 16
        Anchors = [akTop, akRight]
        Caption = #1578#1575#1585#1610#1582' '#1579#1576#1578' '#1606#1575#1605#1607
        Checked = True
        TabOrder = 4
        TabStop = True
      end
      object MERegFromDate: TMaskEdit
        Left = 108
        Top = 95
        Width = 80
        Height = 21
        Anchors = [akTop, akRight]
        AutoSize = False
        BiDiMode = bdLeftToRight
        EditMask = '!9999/99/99;1; '
        MaxLength = 10
        ParentBiDiMode = False
        TabOrder = 5
        Text = '    /  /  '
        OnDblClick = MERegFromDateDblClick
        OnEnter = MERegFromDateEnter
        OnExit = TEditExit
        OnMouseDown = MERegFromDateMouseDown
      end
      object MERegToDate: TMaskEdit
        Left = 17
        Top = 95
        Width = 80
        Height = 21
        Anchors = [akTop, akRight]
        AutoSize = False
        BiDiMode = bdLeftToRight
        EditMask = '!9999/99/99;1; '
        MaxLength = 10
        ParentBiDiMode = False
        TabOrder = 6
        Text = '    /  /  '
        OnDblClick = MERegToDateDblClick
        OnEnter = MERegToDateEnter
        OnExit = TEditExit
        OnMouseDown = MERegToDateMouseDown
      end
      object ToStaffer: TCurvyEdit
        Left = 17
        Top = 128
        Width = 180
        Height = 21
        Anchors = [akTop, akRight]
        Rounding = 3
        TabOrder = 7
        TabStop = False
        Version = '1.1.3.0'
        BiDiMode = bdRightToLeft
        Controls = <>
        ParentBiDiMode = False
        OnEnter = TEditEnter
        OnExit = TEditExit
      end
      object Memo: TCurvyEdit
        Left = 17
        Top = 161
        Width = 180
        Height = 21
        Anchors = [akTop, akRight]
        Rounding = 3
        TabOrder = 8
        TabStop = False
        Version = '1.1.3.0'
        BiDiMode = bdRightToLeft
        Controls = <>
        ParentBiDiMode = False
        OnEnter = TEditEnter
        OnExit = TEditExit
      end
      object UserMemo: TCurvyEdit
        Left = 17
        Top = 196
        Width = 180
        Height = 21
        Anchors = [akTop, akRight]
        Rounding = 3
        TabOrder = 9
        TabStop = False
        Version = '1.1.3.0'
        BiDiMode = bdRightToLeft
        Controls = <>
        ParentBiDiMode = False
        OnEnter = TEditEnter
        OnExit = TEditExit
      end
    end
  end
  object SearchPanel: TPanel [6]
    Left = 0
    Top = 0
    Width = 206
    Height = 8
    Align = alTop
    BevelOuter = bvNone
    ParentColor = True
    TabOrder = 6
    DesignSize = (
      206
      8)
    object Label7: TLabel
      Left = 94
      Top = 237
      Width = 103
      Height = 13
      Anchors = [akTop, akRight]
      Caption = #1588#1605#1575#1585#1607' '#1583#1576#1610#1585#1582#1575#1606#1607' '#1605#1585#1603#1586#1610
      Visible = False
    end
  end
  inherited DSForm: TDataSource
    Left = 26
    Top = 581
  end
  inherited ActionList: TActionList
    Left = 114
    Top = 637
  end
  inherited Grid_PopupMenu: TPopupMenu
    Left = 154
    Top = 638
  end
  inherited Timer1sssss: TTimer
    Left = 40
    Top = 586
  end
  inherited ApplicationEvents1: TApplicationEvents
    Left = 65528
    Top = 801
  end
  object ActionList1: TActionList
    Left = 73
    Top = 636
    object ANewSearch: TAction
      Caption = #1580#1587#1578#1580#1608#1610' '#1580#1583#1610#1583
      ShortCut = 16462
      OnExecute = ANewSearchExecute
    end
    object ASearch: TAction
      Caption = ' '#1580#1587#1578#1580#1608
    end
  end
  object tmrRefreshQueryMainForm: TTimer
    Interval = 10000
    OnTimer = tmrRefreshQueryMainFormTimer
    Left = 184
    Top = 640
  end
end
