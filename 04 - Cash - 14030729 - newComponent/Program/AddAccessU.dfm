inherited FrAddAccess: TFrAddAccess
  Left = 512
  Top = 193
  AutoScroll = False
  Caption = #1578#1593#1585#1610#1601' '#1587#1591#1608#1581' '#1583#1587#1578#1585#1587#1610
  ClientHeight = 507
  ClientWidth = 627
  Font.Height = -12
  OldCreateOrder = True
  PixelsPerInch = 96
  TextHeight = 14
  object pnlMain: TPanel [0]
    Left = 0
    Top = 0
    Width = 627
    Height = 507
    Align = alClient
    ParentColor = True
    TabOrder = 0
    object Panel5: TPanel
      Left = 1
      Top = 464
      Width = 625
      Height = 42
      Align = alBottom
      TabOrder = 0
      DesignSize = (
        625
        42)
      object Label2: TLabel
        Left = 112
        Top = 10
        Width = 287
        Height = 14
        Anchors = [akTop, akRight]
        Caption = #1576#1575' '#1583#1575#1576#1604' '#1603#1604#1610#1603' '#1585#1608#1610' '#1580#1583#1608#1604' '#1605#1610' '#1578#1608#1575#1606#1610#1583' '#1583#1587#1578#1585#1587#1610' '#1585#1575' '#1578#1594#1610#1610#1585' '#1583#1607#1610#1583
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        WordWrap = True
      end
      object BitBtn1: TAdvGlowButton
        Left = 416
        Top = 6
        Width = 203
        Height = 28
        Anchors = [akTop, akRight]
        Caption = #1576#1585#1608#1586' '#1585#1587#1575#1606#1610' '#1602#1575#1576#1604#1610#1578' '#1607#1575#1610' '#1606#1585#1605' '#1575#1601#1586#1575#1585
        Font.Charset = ARABIC_CHARSET
        Font.Color = clNavy
        Font.Height = -12
        Font.Name = 'Tahoma'
        Font.Style = []
        ImageIndex = 116
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
      object BBOK: TAdvGlowButton
        Left = 6
        Top = 6
        Width = 75
        Height = 28
        Caption = #1582#1585#1608#1580
        Default = True
        Font.Charset = ARABIC_CHARSET
        Font.Color = clNavy
        Font.Height = -12
        Font.Name = 'Tahoma'
        Font.Style = []
        ImageIndex = 84
        Images = dm.ImageList_MainNew
        ModalResult = 1
        NotesFont.Charset = DEFAULT_CHARSET
        NotesFont.Color = clWindowText
        NotesFont.Height = -11
        NotesFont.Name = 'Tahoma'
        NotesFont.Style = []
        ParentFont = False
        TabOrder = 1
        OnClick = BBOKClick
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
      Top = 42
      Width = 625
      Height = 422
      Align = alClient
      TabOrder = 1
      object ProgressBar: TProgressBar
        Left = 1
        Top = 406
        Width = 623
        Height = 15
        Align = alBottom
        Max = 3
        TabOrder = 0
        Visible = False
      end
      object YDBGrid1: TYDBGrid
        Left = 1
        Top = 1
        Width = 476
        Height = 373
        Align = alClient
        Color = 16773087
        DataSource = dm.DSelect_ObjectAccess_byGroup
        Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit]
        ReadOnly = True
        TabOrder = 1
        TitleFont.Charset = ARABIC_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -12
        TitleFont.Name = 'Tahoma'
        TitleFont.Style = []
        OnDblClick = YDBGrid1DblClick
        YeganehColor = True
        YeganehFinish = False
        PageNumber = False
        RecordNumber = False
        HasTime = False
        Oriention = poPortrait
        HasDate = False
        HasIndex = False
        PrintTitle = #1604#1610#1587#1578' '#1578#1607#1610#1607' '#1588#1583#1607' '#1578#1608#1587#1591' '#1606#1585#1605' '#1575#1601#1586#1575#1585' '#1610#1711#1575#1606#1607
        InvertFarsiDate = True
        TitleSort = True
        AutoInsert = False
        OnNeedColorCondition = YDBGrid1NeedColorCondition
        FooterFields = 'Count'
        OnNeedFontCondition = YDBGrid1NeedFontCondition
        Columns = <
          item
            Color = 16377053
            Expanded = False
            FieldName = 'ObjectCaption'
            Title.Caption = #1593#1606#1608#1575#1606' '#1583#1705#1605#1607
            Title.Color = 16377053
            Width = 433
            Visible = True
          end>
      end
      object DBGrid2: TYDBGrid
        Left = 477
        Top = 1
        Width = 147
        Height = 373
        Cursor = crHandPoint
        Align = alRight
        Color = 8454143
        DataSource = dm.DSelect_ObjectGroup
        Options = [dgTitles, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit]
        TabOrder = 2
        TitleFont.Charset = ARABIC_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -12
        TitleFont.Name = 'Tahoma'
        TitleFont.Style = []
        YeganehColor = True
        YeganehFinish = False
        PageNumber = False
        RecordNumber = False
        HasTime = False
        Oriention = poPortrait
        HasDate = False
        HasIndex = False
        PrintTitle = #1604#1610#1587#1578' '#1578#1607#1610#1607' '#1588#1583#1607' '#1578#1608#1587#1591' '#1606#1585#1605' '#1575#1601#1586#1575#1585' '#1610#1711#1575#1606#1607
        InvertFarsiDate = True
        TitleSort = True
        AutoInsert = False
        FooterFields = 'Count'
        Columns = <
          item
            Alignment = taCenter
            Expanded = False
            FieldName = 'GroupTitle'
            Title.Alignment = taCenter
            Title.Caption = #1711#1585#1608#1607
            Title.Color = 16377053
            Width = 125
            Visible = True
          end>
      end
      object Panel3: TPanel
        Left = 1
        Top = 374
        Width = 623
        Height = 32
        Align = alBottom
        BevelInner = bvLowered
        Caption = ' '
        TabOrder = 3
        DesignSize = (
          623
          32)
        object DBCheckBox1: TDBCheckBox
          Left = 382
          Top = 8
          Width = 225
          Height = 17
          Anchors = [akTop, akRight]
          Caption = #1583#1587#1578#1585#1587#1610' '#1576#1607' '#1589#1601#1581#1607' '#1605#1583#1610#1585#1610#1578' '#1581#1587#1575#1576#1607#1575
          TabOrder = 0
          ValueChecked = 'True'
          ValueUnchecked = 'False'
        end
      end
    end
    object Panel1: TPanel
      Left = 1
      Top = 1
      Width = 625
      Height = 41
      Align = alTop
      ParentColor = True
      TabOrder = 2
      DesignSize = (
        625
        41)
      object Label1: TLabel
        Left = 528
        Top = 10
        Width = 83
        Height = 14
        Anchors = [akTop, akRight]
        Caption = #1587#1591#1581' '#1583#1587#1578#1585#1587#1610
      end
      object DBLookupComboBox1: TDBLookupComboBox
        Left = 208
        Top = 2
        Width = 309
        Height = 22
        Anchors = [akTop, akRight]
        BiDiMode = bdLeftToRight
        KeyField = 'AccessID'
        ListField = 'AccessTitle'
        ListSource = dm.DAccess
        ParentBiDiMode = False
        TabOrder = 0
      end
      object Button1: TAdvGlowButton
        Left = 81
        Top = 7
        Width = 103
        Height = 28
        Anchors = [akTop, akRight]
        Caption = #1705#1662#1610' '#1606#1575#1605' '#1580#1583#1610#1583
        Font.Charset = ARABIC_CHARSET
        Font.Color = clNavy
        Font.Height = -12
        Font.Name = 'Tahoma'
        Font.Style = []
        ImageIndex = 103
        Images = dm.ImageList_MainNew
        NotesFont.Charset = DEFAULT_CHARSET
        NotesFont.Color = clWindowText
        NotesFont.Height = -11
        NotesFont.Name = 'Tahoma'
        NotesFont.Style = []
        ParentFont = False
        TabOrder = 1
        OnClick = Button1Click
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
        Left = 16
        Top = 7
        Width = 63
        Height = 28
        Anchors = [akTop, akRight]
        Caption = #1581#1584#1601
        Font.Charset = ARABIC_CHARSET
        Font.Color = clNavy
        Font.Height = -12
        Font.Name = 'Tahoma'
        Font.Style = []
        ImageIndex = 90
        Images = dm.ImageList_MainNew
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
end
