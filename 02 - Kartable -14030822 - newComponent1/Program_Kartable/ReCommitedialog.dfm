inherited RecommiteSave: TRecommiteSave
  Tag = 14
  Left = 464
  Top = 200
  AutoSize = True
  Caption = #1575#1585#1580#1575#1593' '#1606#1575#1605#1607
  ClientHeight = 566
  ClientWidth = 800
  TransparentColor = True
  TransparentColorValue = 4259584
  Constraints.MaxHeight = 605
  Constraints.MaxWidth = 816
  Constraints.MinHeight = 600
  Constraints.MinWidth = 808
  OldCreateOrder = True
  PixelsPerInch = 96
  TextHeight = 13
  object pnlMain: TPanel [0]
    Left = 0
    Top = 49
    Width = 800
    Height = 517
    Align = alClient
    ParentColor = True
    TabOrder = 0
    DesignSize = (
      800
      517)
    object Panel6: TPanel
      Left = 1
      Top = 1
      Width = 798
      Height = 160
      Align = alTop
      ParentColor = True
      TabOrder = 0
      Visible = False
      object PageControl_Org: TPageControl
        Left = 1
        Top = 1
        Width = 796
        Height = 158
        ActivePage = TabTree
        Align = alClient
        BiDiMode = bdRightToLeft
        Images = Dm.ImageList_MainNew
        MultiLine = True
        ParentBiDiMode = False
        TabHeight = 25
        TabOrder = 0
        object TabTree: TTabSheet
          Caption = '  '#1583#1585#1582#1578#1610'  '
          ImageIndex = 96
          object OrgTree: TDBTreeView
            Left = 0
            Top = 0
            Width = 788
            Height = 123
            Align = alClient
            Ctl3D = False
            Indent = 19
            StateImages = StatImages
            TabOrder = 0
            OnClick = OrgTreeClick
            OnKeyPress = OrgTreeKeyPress
            RootID = 1
            IDField = 'ID'
            ParentIDField = 'ParentID'
            DisplayField = 'Name_Semat'
            StoredFieldsList.Strings = (
              'Title')
            BuildMethod = bmFilter
          end
        end
        object TabList: TTabSheet
          Caption = '  '#1604#1610#1587#1578#1610'  '
          ImageIndex = 95
          object OrgList: TYchecklistBox
            Left = 0
            Top = 0
            Width = 788
            Height = 123
            TabStop = False
            Align = alClient
            BevelInner = bvNone
            Columns = 3
            Ctl3D = False
            ItemHeight = 13
            ParentCtl3D = False
            TabOrder = 0
            OnClick = OrgListClick
            Ydataset = FromOrganizations
            TitleField = 'title'
            IDField = 'id'
          end
        end
      end
      object pnlGroup: TPanel
        Left = 485
        Top = 3
        Width = 285
        Height = 25
        BevelOuter = bvNone
        ParentColor = True
        TabOrder = 1
        DesignSize = (
          285
          25)
        object Label6: TLabel
          Left = 183
          Top = 4
          Width = 98
          Height = 13
          Caption = #1575#1606#1578#1582#1575#1576' '#1711#1585#1608#1607' '#1575#1585#1580#1575#1593#1575#1578' :'
        end
        object DBLkCBWorkGroup: TDBLookupComboBox
          Left = 37
          Top = 0
          Width = 145
          Height = 21
          Anchors = [akTop, akRight]
          BiDiMode = bdLeftToRight
          DropDownRows = 20
          KeyField = 'WorkGroupID'
          ListField = 'Title'
          ListSource = DSWorkGroup
          ParentBiDiMode = False
          TabOrder = 0
          OnClick = DBLkCBWorkGroupClick
        end
      end
    end
    object pnlBottom: TPanel
      Left = 1
      Top = 450
      Width = 798
      Height = 66
      Align = alBottom
      BevelOuter = bvNone
      ParentColor = True
      TabOrder = 1
      object BitBtn4: TAdvGlowButton
        Left = 8
        Top = 38
        Width = 75
        Height = 25
        Caption = #1582#1585#1608#1580
        ImageIndex = 84
        Images = Dm.ImageList_MainNew
        NotesFont.Charset = DEFAULT_CHARSET
        NotesFont.Color = clWindowText
        NotesFont.Height = -11
        NotesFont.Name = 'Tahoma'
        NotesFont.Style = []
        TabOrder = 0
        OnClick = BitBtn4Click
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
      object AaddLetterData: TAdvGlowButton
        Left = 260
        Top = 38
        Width = 100
        Height = 25
        Cursor = crHandPoint
        Caption = #1662#1610#1608#1587#1578' '#1607#1575
        ImageIndex = 11
        Images = Dm.ImageList_MainNew
        NotesFont.Charset = DEFAULT_CHARSET
        NotesFont.Color = clWindowText
        NotesFont.Height = -11
        NotesFont.Name = 'Tahoma'
        NotesFont.Style = []
        TabOrder = 1
        OnClick = AaddLetterDataClick
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
      object DetailPanel: TPanel
        Left = 0
        Top = 0
        Width = 798
        Height = 34
        Align = alTop
        BevelOuter = bvNone
        BorderStyle = bsSingle
        Ctl3D = False
        ParentColor = True
        ParentCtl3D = False
        TabOrder = 2
        DesignSize = (
          796
          32)
        object Label4: TLabel
          Left = 631
          Top = 9
          Width = 57
          Height = 13
          Anchors = [akTop, akRight]
          Caption = #1605#1607#1604#1578' '#1575#1602#1583#1575#1605':'
        end
        object desc: TLabel
          Left = 793
          Top = 82
          Width = 3
          Height = 13
          Anchors = [akTop, akRight, akBottom]
        end
        object Label5: TLabel
          Left = 767
          Top = 9
          Width = 25
          Height = 13
          Anchors = [akTop, akRight]
          Caption = #1578#1575#1585#1610#1582':'
        end
        object DayinWeek: TLabel
          Left = 497
          Top = 9
          Width = 16
          Height = 13
          Anchors = [akTop, akRight]
          Caption = '....'
        end
        object SpeedButton4: TAdvGlowButton
          Left = 519
          Top = 7
          Width = 18
          Height = 18
          Cursor = crHandPoint
          Anchors = [akTop, akRight]
          Font.Charset = ARABIC_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ImageIndex = 89
          Images = Dm.ImageList_MainNew
          NotesFont.Charset = DEFAULT_CHARSET
          NotesFont.Color = clWindowText
          NotesFont.Height = -11
          NotesFont.Name = 'Tahoma'
          NotesFont.Style = []
          ParentFont = False
          TabOrder = 6
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
        object SpeedButton3: TAdvGlowButton
          Left = 539
          Top = 7
          Width = 18
          Height = 18
          Cursor = crHandPoint
          Anchors = [akTop, akRight]
          Font.Charset = ARABIC_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ImageIndex = 60
          Images = Dm.ImageList_MainNew
          NotesFont.Charset = DEFAULT_CHARSET
          NotesFont.Color = clWindowText
          NotesFont.Height = -11
          NotesFont.Name = 'Tahoma'
          NotesFont.Style = []
          ParentFont = False
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
        object proceeded: TCheckBox
          Left = 97
          Top = 7
          Width = 168
          Height = 17
          Cursor = crHandPoint
          Anchors = [akTop, akRight]
          Caption = #1575#1585#1580#1575#1593' '#1601#1593#1604#1610' '#1575#1586' '#1603#1575#1585#1578#1575#1576#1604' '#1582#1575#1585#1580' '#1588#1608#1583
          TabOrder = 2
        end
        object DBShamsiDateEdit1: TDBShamsiDateEdit
          Left = 694
          Top = 6
          Width = 70
          Height = 19
          TabStop = False
          Anchors = [akTop, akRight]
          BorderStyle = bsNone
          CheckValidity = True
          ShowMsg = False
          DataField = 'RecommiteDate'
          DataSource = DSForm
          Font.Charset = ARABIC_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          ReadOnly = True
          TabOrder = 0
        end
        object DBIsCopy: TDBCheckBox
          Left = 274
          Top = 7
          Width = 86
          Height = 17
          Cursor = crHandPoint
          Anchors = [akTop, akRight]
          Caption = #1601#1602#1591' '#1582#1608#1575#1606#1583#1606#1610
          DataField = 'IsCopy'
          DataSource = DSForm
          TabOrder = 3
          ValueChecked = 'True'
          ValueUnchecked = 'False'
        end
        object DBDeadLineDate: TDBShamsiDateEdit
          Left = 558
          Top = 6
          Width = 70
          Height = 19
          TabStop = False
          Anchors = [akTop, akRight]
          CheckValidity = True
          ShowMsg = False
          DataField = 'DeadLineDate'
          DataSource = DSForm
          Font.Charset = ARABIC_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          TabOrder = 1
          OnChange = DBDeadLineDateChange
          OnEnter = DBDeadLineDateEnter
        end
        object DBChBoISFollowup: TDBCheckBox
          Left = 372
          Top = 7
          Width = 79
          Height = 17
          Cursor = crHandPoint
          Anchors = [akTop, akRight]
          Caption = #1662#1610#1711#1610#1585#1610' '#1588#1608#1583
          DataField = 'ISFollowup'
          DataSource = DSForm
          TabOrder = 4
          ValueChecked = 'True'
          ValueUnchecked = 'False'
        end
        object DBCheckBox1: TDBCheckBox
          Left = 2
          Top = 7
          Width = 86
          Height = 17
          Cursor = crHandPoint
          Anchors = [akTop, akRight]
          Caption = #1575#1585#1580#1575#1593' '#1605#1581#1585#1605#1575#1606#1607
          DataField = 'IsSecure'
          DataSource = DSForm
          TabOrder = 5
          ValueChecked = 'True'
          ValueUnchecked = 'False'
        end
      end
      object pnlOperation: TPanel
        Left = 376
        Top = 34
        Width = 422
        Height = 32
        Align = alRight
        BevelOuter = bvNone
        ParentColor = True
        TabOrder = 3
        DesignSize = (
          422
          32)
        object BitBtn5: TAdvGlowButton
          Tag = 3
          Left = 216
          Top = 3
          Width = 100
          Height = 25
          Cursor = crHandPoint
          Anchors = [akTop, akRight]
          Caption = #1575#1585#1580#1575#1593' '#1608' '#1576#1587#1578#1606' '
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clNavy
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ImageIndex = 81
          Images = Dm.LetterImages_New
          NotesFont.Charset = DEFAULT_CHARSET
          NotesFont.Color = clWindowText
          NotesFont.Height = -11
          NotesFont.Name = 'Tahoma'
          NotesFont.Style = []
          ParentFont = False
          TabOrder = 0
          OnClick = BitBtn5Click
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
          Tag = 3
          Left = 14
          Top = 3
          Width = 100
          Height = 25
          Cursor = crHandPoint
          Anchors = [akTop, akRight]
          Caption = #1575#1585#1587#1575#1604' '#1585#1608#1606#1608#1588#1578
          Font.Charset = ARABIC_CHARSET
          Font.Color = clNavy
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ImageIndex = 7
          Images = Dm.LetterImages_New
          NotesFont.Charset = DEFAULT_CHARSET
          NotesFont.Color = clWindowText
          NotesFont.Height = -11
          NotesFont.Name = 'Tahoma'
          NotesFont.Style = []
          ParentFont = False
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
        object BitBtn2: TAdvGlowButton
          Tag = 3
          Left = 115
          Top = 3
          Width = 100
          Height = 25
          Cursor = crHandPoint
          Anchors = [akTop, akRight]
          Caption = #1575#1606#1589#1585#1575#1601
          Font.Charset = DEFAULT_CHARSET
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
          TabOrder = 2
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
          Tag = 3
          Left = 317
          Top = 3
          Width = 100
          Height = 25
          Cursor = crHandPoint
          Anchors = [akTop, akRight]
          Caption = #1575#1585#1580#1575#1593' '#1606#1575#1605#1607
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clNavy
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ImageIndex = 115
          Images = Dm.LetterImages_New
          NotesFont.Charset = DEFAULT_CHARSET
          NotesFont.Color = clWindowText
          NotesFont.Height = -11
          NotesFont.Name = 'Tahoma'
          NotesFont.Style = []
          ParentFont = False
          TabOrder = 3
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
    object pnlTop: TPanel
      Left = 1
      Top = 161
      Width = 798
      Height = 102
      Align = alTop
      AutoSize = True
      ParentColor = True
      TabOrder = 2
      object TopPanel: TPanel
        Left = 1
        Top = 1
        Width = 796
        Height = 100
        Align = alClient
        BevelOuter = bvNone
        ParentBackground = False
        ParentColor = True
        TabOrder = 0
        DesignSize = (
          796
          100)
        object Label2: TLabel
          Left = 924
          Top = 7
          Width = 57
          Height = 13
          Anchors = [akTop, akRight]
          Caption = #1575#1585#1580#1575#1593' '#1588#1608#1606#1583#1607
          Font.Charset = ARABIC_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
        end
        object GroupBox1: TGroupBox
          Left = 0
          Top = 0
          Width = 796
          Height = 100
          Align = alClient
          Caption = '        '#1575#1585#1580#1575#1593' '#1587#1585#1610#1593' '#1588#1608#1583' '#1576#1607'       '
          TabOrder = 0
          DesignSize = (
            796
            100)
          object Bevel5: TBevel
            Left = 2
            Top = 67
            Width = 792
            Height = 31
            Align = alBottom
            Shape = bsTopLine
          end
          object OrgButton1: TAdvGlowButton
            Tag = 1
            Left = 596
            Top = 15
            Width = 196
            Height = 23
            Cursor = crHandPoint
            Anchors = [akTop, akRight]
            Caption = #1605#1583#1610#1585' '#1593#1575#1605#1604'  '#1605#1581#1578#1585#1605' '#1588#1585#1705#1578' '#1610#1711
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clNavy
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            NotesFont.Charset = DEFAULT_CHARSET
            NotesFont.Color = clWindowText
            NotesFont.Height = -11
            NotesFont.Name = 'Tahoma'
            NotesFont.Style = []
            ParentFont = False
            TabOrder = 0
            OnClick = OrgButton1Click
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
          object OrgButton2: TAdvGlowButton
            Tag = 2
            Left = 399
            Top = 15
            Width = 196
            Height = 23
            Cursor = crHandPoint
            Anchors = [akTop, akRight]
            Caption = #1605#1583#1610#1585' '#1576#1575#1586#1585#1711#1575#1606#1610
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clNavy
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            NotesFont.Charset = DEFAULT_CHARSET
            NotesFont.Color = clWindowText
            NotesFont.Height = -11
            NotesFont.Name = 'Tahoma'
            NotesFont.Style = []
            ParentFont = False
            TabOrder = 1
            OnClick = OrgButton1Click
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
          object OrgButton3: TAdvGlowButton
            Tag = 3
            Left = 200
            Top = 15
            Width = 196
            Height = 23
            Cursor = crHandPoint
            Anchors = [akTop, akRight]
            Caption = #1705#1575#1585#1588#1606#1575#1587' 1'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clNavy
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            NotesFont.Charset = DEFAULT_CHARSET
            NotesFont.Color = clWindowText
            NotesFont.Height = -11
            NotesFont.Name = 'Tahoma'
            NotesFont.Style = []
            ParentFont = False
            TabOrder = 2
            OnClick = OrgButton1Click
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
          object OrgButton4: TAdvGlowButton
            Tag = 4
            Left = 2
            Top = 15
            Width = 196
            Height = 23
            Cursor = crHandPoint
            Anchors = [akTop, akRight]
            Caption = #1575#1589#1594#1585#1570#1602#1575
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clNavy
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            NotesFont.Charset = DEFAULT_CHARSET
            NotesFont.Color = clWindowText
            NotesFont.Height = -11
            NotesFont.Name = 'Tahoma'
            NotesFont.Style = []
            ParentFont = False
            TabOrder = 3
            OnClick = OrgButton1Click
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
          object OrgButton5: TAdvGlowButton
            Tag = 5
            Left = 596
            Top = 40
            Width = 196
            Height = 23
            Cursor = crHandPoint
            Anchors = [akTop, akRight]
            Caption = #1705#1575#1585#1588#1606#1575#1587'3'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clNavy
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            NotesFont.Charset = DEFAULT_CHARSET
            NotesFont.Color = clWindowText
            NotesFont.Height = -11
            NotesFont.Name = 'Tahoma'
            NotesFont.Style = []
            ParentFont = False
            TabOrder = 4
            OnClick = OrgButton1Click
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
          object OrgButton6: TAdvGlowButton
            Tag = 6
            Left = 399
            Top = 40
            Width = 196
            Height = 23
            Cursor = crHandPoint
            Anchors = [akTop, akRight]
            Caption = #1705#1575#1585#1588#1606#1575#1587'4'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clNavy
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            NotesFont.Charset = DEFAULT_CHARSET
            NotesFont.Color = clWindowText
            NotesFont.Height = -11
            NotesFont.Name = 'Tahoma'
            NotesFont.Style = []
            ParentFont = False
            TabOrder = 5
            OnClick = OrgButton1Click
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
          object OrgButton7: TAdvGlowButton
            Tag = 7
            Left = 200
            Top = 40
            Width = 196
            Height = 23
            Cursor = crHandPoint
            Anchors = [akTop, akRight]
            Caption = #1705#1575#1585#1588#1606#1575#1587'5'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clNavy
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            NotesFont.Charset = DEFAULT_CHARSET
            NotesFont.Color = clWindowText
            NotesFont.Height = -11
            NotesFont.Name = 'Tahoma'
            NotesFont.Style = []
            ParentFont = False
            TabOrder = 6
            OnClick = OrgButton1Click
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
          object OrgButton8: TAdvGlowButton
            Tag = 8
            Left = 2
            Top = 40
            Width = 196
            Height = 23
            Cursor = crHandPoint
            Anchors = [akTop, akRight]
            Caption = #1705#1575#1585#1588#1606#1575#1587'6'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clNavy
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            NotesFont.Charset = DEFAULT_CHARSET
            NotesFont.Color = clWindowText
            NotesFont.Height = -11
            NotesFont.Name = 'Tahoma'
            NotesFont.Style = []
            ParentFont = False
            TabOrder = 7
            OnClick = OrgButton1Click
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
          object SpeedButton6: TAdvGlowButton
            Left = 3
            Top = 71
            Width = 196
            Height = 23
            Cursor = crHandPoint
            Anchors = [akTop, akRight]
            Caption = #1575#1601#1586#1608#1583#1606' '#1575#1585#1580#1575#1593' '#1588#1608#1606#1583#1607' '#1587#1585#1610#1593
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clNavy
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            ImageIndex = 195
            Images = Dm.ImageList_MainNew
            NotesFont.Charset = DEFAULT_CHARSET
            NotesFont.Color = clWindowText
            NotesFont.Height = -11
            NotesFont.Name = 'Tahoma'
            NotesFont.Style = []
            ParentFont = False
            TabOrder = 8
            OnClick = SpeedButton6Click
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
    object Panel1: TPanel
      Left = 1
      Top = 263
      Width = 798
      Height = 187
      Align = alClient
      BevelOuter = bvNone
      ParentColor = True
      TabOrder = 3
      object PageControl_Text: TPageControl
        Left = 0
        Top = 0
        Width = 798
        Height = 187
        ActivePage = TabSheet1
        Align = alClient
        BiDiMode = bdRightToLeft
        Images = Dm.LetterImages_New
        MultiLine = True
        ParentBiDiMode = False
        TabHeight = 25
        TabOrder = 0
        TabPosition = tpLeft
        object TabSheet1: TTabSheet
          Caption = #1605#1590#1605#1608#1606' '#1575#1585#1580#1575#1593' '
          ImageIndex = 9
          object Splitter1: TSplitter
            Left = 634
            Top = 0
            Height = 179
            Align = alRight
            Color = clMedGray
            ParentColor = False
          end
          object DBparaph: TDBMemo
            Left = 0
            Top = 0
            Width = 634
            Height = 179
            Align = alClient
            Ctl3D = False
            DataField = 'Paraph'
            DataSource = DSForm
            ParentCtl3D = False
            TabOrder = 0
            OnEnter = TEditEnter
            OnExit = TEditExit
          end
          object pnlTemplate: TGroupBox
            Left = 637
            Top = 0
            Width = 128
            Height = 179
            Align = alRight
            Caption = #1602#1575#1604#1576' '#1607#1575#1610' '#1570#1605#1575#1583#1607
            TabOrder = 1
            DesignSize = (
              128
              179)
            object Label9: TLabel
              Left = 51
              Top = 119
              Width = 71
              Height = 13
              Anchors = [akTop, akRight]
              Caption = #1602#1575#1604#1576' '#1607#1575#1610' '#1583#1610#1711#1585':'
            end
            object TemplateButton1: TAdvGlowButton
              Tag = 1
              Left = 4
              Top = 15
              Width = 119
              Height = 23
              Cursor = crHandPoint
              Anchors = [akLeft, akTop, akRight]
              Caption = #1576#1585#1585#1587#1610' '#1588#1608#1583
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clNavy
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = []
              Images = Dm.LetterImages_New
              NotesFont.Charset = DEFAULT_CHARSET
              NotesFont.Color = clWindowText
              NotesFont.Height = -11
              NotesFont.Name = 'Tahoma'
              NotesFont.Style = []
              ParentFont = False
              TabOrder = 0
              OnClick = TemplateButton1Click
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
            object TemplateButton2: TAdvGlowButton
              Tag = 2
              Left = 4
              Top = 41
              Width = 119
              Height = 23
              Cursor = crHandPoint
              Anchors = [akLeft, akTop, akRight]
              Caption = #1580#1607#1578' '#1575#1591#1604#1575#1593
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clNavy
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = []
              Images = Dm.LetterImages_New
              NotesFont.Charset = DEFAULT_CHARSET
              NotesFont.Color = clWindowText
              NotesFont.Height = -11
              NotesFont.Name = 'Tahoma'
              NotesFont.Style = []
              ParentFont = False
              TabOrder = 1
              OnClick = TemplateButton1Click
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
            object TemplateButton3: TAdvGlowButton
              Tag = 3
              Left = 4
              Top = 67
              Width = 119
              Height = 23
              Cursor = crHandPoint
              Anchors = [akLeft, akTop, akRight]
              Caption = #1575#1602#1583#1575#1605' '#1601#1608#1585#1610
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clNavy
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = []
              Images = Dm.LetterImages_New
              NotesFont.Charset = DEFAULT_CHARSET
              NotesFont.Color = clWindowText
              NotesFont.Height = -11
              NotesFont.Name = 'Tahoma'
              NotesFont.Style = []
              ParentFont = False
              TabOrder = 2
              OnClick = TemplateButton1Click
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
            object TemplateButton4: TAdvGlowButton
              Tag = 4
              Left = 4
              Top = 93
              Width = 119
              Height = 23
              Cursor = crHandPoint
              Anchors = [akLeft, akTop, akRight]
              Caption = #1575#1602#1583#1575#1605' '#1604#1575#1586#1605' '
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clNavy
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = []
              Images = Dm.LetterImages_New
              NotesFont.Charset = DEFAULT_CHARSET
              NotesFont.Color = clWindowText
              NotesFont.Height = -11
              NotesFont.Name = 'Tahoma'
              NotesFont.Style = []
              ParentFont = False
              TabOrder = 3
              OnClick = TemplateButton1Click
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
            object DBLookupComboBox1: TDBLookupComboBox
              Left = 4
              Top = 133
              Width = 121
              Height = 21
              Anchors = [akLeft, akTop, akRight]
              BiDiMode = bdLeftToRight
              KeyField = 'Paraph'
              ListField = 'Title'
              ListSource = DSELECT_ParaphTemplateOther
              ParentBiDiMode = False
              TabOrder = 4
              OnClick = DBLookupComboBox1Click
            end
            object Panel2: TPanel
              Left = 2
              Top = 142
              Width = 124
              Height = 35
              Align = alBottom
              BevelOuter = bvNone
              Caption = 'Panel2'
              ParentColor = True
              TabOrder = 5
              DesignSize = (
                124
                35)
              object Bevel1: TBevel
                Left = 0
                Top = 0
                Width = 124
                Height = 2
                Align = alTop
                Anchors = [akLeft, akRight, akBottom]
              end
              object SpeedButton1: TAdvGlowButton
                Left = 3
                Top = 7
                Width = 119
                Height = 23
                Cursor = crHandPoint
                Anchors = [akLeft, akTop, akRight]
                Caption = #1575#1601#1586#1608#1583#1606' '#1602#1575#1604#1576' '#1570#1605#1575#1583#1607
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clNavy
                Font.Height = -11
                Font.Name = 'Tahoma'
                Font.Style = []
                ImageIndex = 195
                Images = Dm.ImageList_MainNew
                NotesFont.Charset = DEFAULT_CHARSET
                NotesFont.Color = clWindowText
                NotesFont.Height = -11
                NotesFont.Name = 'Tahoma'
                NotesFont.Style = []
                ParentFont = False
                TabOrder = 0
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
            end
          end
        end
        object TabSheet2: TTabSheet
          Caption = '   '#1578#1589#1608#1610#1585'   '
          ImageIndex = 118
          object PanelSign: TPanel
            Left = 0
            Top = 0
            Width = 765
            Height = 30
            Align = alTop
            BevelInner = bvLowered
            TabOrder = 0
            DesignSize = (
              765
              30)
            object Label7: TLabel
              Left = 508
              Top = 8
              Width = 38
              Height = 13
              Anchors = [akTop, akRight]
              Caption = #1585#1606#1711' '#1602#1604#1605
            end
            object Label1: TLabel
              Left = 597
              Top = 8
              Width = 44
              Height = 13
              Anchors = [akTop, akRight]
              Caption = #1575#1606#1583#1575#1586#1607' '#1602#1604#1605
            end
            object Label3: TLabel
              Left = 373
              Top = 8
              Width = 57
              Height = 13
              Anchors = [akTop, akRight]
              Caption = #1575#1606#1583#1575#1586#1607' '#1662#1575#1603' '#1603#1606
            end
            object Bevel2: TBevel
              Left = 698
              Top = 3
              Width = 3
              Height = 25
              Style = bsRaised
            end
            object Bevel3: TBevel
              Left = 487
              Top = 3
              Width = 3
              Height = 25
              Style = bsRaised
            end
            object SBPolyLine: TSpeedButton
              Left = 668
              Top = 2
              Width = 27
              Height = 26
              Hint = #1602#1604#1605' '#1606#1608#1585#1610
              GroupIndex = 2
              Glyph.Data = {
                DE020000424DDE0200000000000036000000280000000D000000110000000100
                180000000000A802000000000000000000000000000000000000FBF2EEFBF2EE
                FBF2EEFBF2EEFBF2EEFBF2EEFBF2EEFBF2EEFBF2EEFBF2EEFBF2EEFBF2EEFBF2
                EE00FBF2EEFBF2EEFBF2EEFBF2EEFBF2EEFBF2EEFBF2EEFBF2EEFBF2EEFBF2EE
                FBF2EEFBF2EEFBF2EE00FBF2EEFBF2EEFBF2EEFBF2EEEACFCCAC5857CB9492FB
                F2EEFBF2EEFBF2EEFBF2EEFBF2EEFBF2EE00FBF2EEFBF2EEFBF2EEFBF2EEA54B
                4BAC5857EACFCCFBF2EEFBF2EEFBF2EEFBF2EEFBF2EEFBF2EE00FBF2EEFBF2EE
                FBF2EEE3C3C0993434F0DBD7FBF2EEFBF2EEFBF2EEFBF2EEFBF2EEFBF2EEFBF2
                EE00FBF2EEFBF2EEFBF2EEE3C3C0993434FBF2EEFBF2EEFBF2EEFBF2EEFBF2EE
                FBF2EEFBF2EEFBF2EE00FBF2EEFBF2EEFBF2EEF0DBD7993434D19F9CFBF2EEFB
                F2EEFBF2EEFBF2EEFBF2EEFBF2EEFBF2EE00FBF2EEFBF2EEFBF2EEFBF2EEC487
                86993434BE7C7BF0DBD7FBF2EEFBF2EEFBF2EEFBF2EEFBF2EE00FBF2EEFBF2EE
                FBF2EEFBF2EEFBF2EED7ABA8A54B4B993434E3C3C0FBF2EEFBF2EEFBF2EEFBF2
                EE00FBF2EEFBF2EEFBF2EEFBF2EEFBF2EEFBF2EEFBF2EEB9706FAC5857FBF2EE
                FBF2EEFBF2EEFBF2EE00FBF2EEFBF2EEFBF2EEFBF2EEFBF2EEFBF2EEFBF2EEDD
                B7B4993434FBF2EEFBF2EEFBF2EEFBF2EE00FBF2EEFBF2EEFBF2EEFBF2EEFBF2
                EEFBF2EEFBF2EED19F9CA04040FBF2EEFBF2EEFBF2EEFBF2EE00FBF2EEFBF2EE
                FBF2EEFBF2EEFBF2EEFBF2EEE3C3C0A04040BE7C7BFBF2EEFBF2EEFBF2EEFBF2
                EE00FBF2EEFBF2EEFBF2EEFBF2EEFBF2EEFBF2EEB26463B26463F6E7E3FBF2EE
                FBF2EEFBF2EEFBF2EE00FBF2EEFBF2EEFBF2EEFBF2EEFBF2EEFBF2EEFBF2EEFB
                F2EEFBF2EEFBF2EEFBF2EEFBF2EEFBF2EE00FBF2EEFBF2EEFBF2EEFBF2EEFBF2
                EEFBF2EEFBF2EEFBF2EEFBF2EEFBF2EEFBF2EEFBF2EEFBF2EE00FBF2EEFBF2EE
                FBF2EEFBF2EEFBF2EEFBF2EEFBF2EEFBF2EEFBF2EEFBF2EEFBF2EEFBF2EEFBF2
                EE00}
              ParentShowHint = False
              ShowHint = True
              OnClick = SBPolyLineClick
            end
            object SpeedButton7: TSpeedButton
              Tag = 13
              Left = 735
              Top = 2
              Width = 27
              Height = 26
              Cursor = crHandPoint
              Hint = #1602#1585#1575#1585' '#1583#1575#1583#1606' '#1575#1605#1590#1575#1610' '#1705#1575#1585#1576#1585
              Anchors = [akTop, akRight]
              GroupIndex = 2
              Font.Charset = ARABIC_CHARSET
              Font.Color = clNavy
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = []
              Glyph.Data = {
                36040000424D3604000000000000360000002800000010000000100000000100
                2000000000000004000000000000000000000000000000000000000000000000
                00000000000000000000000000000000000000000000000000002800828C3800
                B4C20A0020220000000000000000000000000000000000000000000000000000
                00000000000000000000000000000000000000000000000000002C008E994900
                EDFF4000D0E10A00202200000000000000000000000000000000462908808C51
                0FFF8C510FFF8C510FFF8C510FFF8C510FFF8C510FFF8C510FFF8A4E16FF5B16
                B2FF4900EDFF5109D4FF46232891462908808C510FFF46290880462908808C51
                0FFF8C510FFF8C510FFF8C510FFF8C510FFF8C510FFF8C510FFF8C510FFF8A4E
                16FF5B16B2FF4900EDFF4706C4E946290A818C510FFF46290880462908808C51
                0FFF462908800000000000000000000000000000000000000000000000000000
                0000030008093100A0AC10003438471670BA83462DFF46290880462908808C51
                0FFF46290880100034384900EBFE4900EDFF4900EDFF4900EDFF3600B2BF4600
                E6F94900EDFF4800E8FB250077814900EDFF692783FF46290880462908808C51
                0FFF462908800000000031009FAB4900EDFF4900EDFF4200D9EB070015172500
                77804900EDFF250077800300080946176BB78B5110FF46290880462908808C51
                0FFF46290880000000000A0020224700E6F84900EDFF18004F55000000000100
                04042D00939E0200060600000000462908808C510FFF46290880462908808C51
                0FFF4629088000000000000000002900848E3200A4B000000000000000000000
                0000000000000000000000000000462908808C510FFF46290880462908808C51
                0FFF462908800000000000000000050011120600141500000000000000001500
                464B4500E0F11500454A00000000462908808C510FFF46290880462908808C51
                0FFF462908800000000000000000000000000000000000000000000000001600
                474C4500E0F11500464B00000000462908808C510FFF46290880462908808C51
                0FFF462908800000000000000000000000000000000000000000000000000000
                0000000000000000000000000000462908808C510FFF46290880462908808C51
                0FFF46290880462908808C510FFF8C510FFF8C510FFF8C510FFF8C510FFF8C51
                0FFF8C510FFF8C510FFF8C510FFF8C510FFF8C510FFF46290880462908808C51
                0FFF46290880462908808C510FFF8C510FFF8C510FFF8C510FFF8C510FFF8C51
                0FFF8C510FFF8C510FFF8C510FFF8C510FFF8C510FFF46290880000000000000
                0000000000000000000000000000000000000000000000000000000000000000
                0000000000000000000000000000000000000000000000000000000000000000
                0000000000000000000000000000000000000000000000000000000000000000
                0000000000000000000000000000000000000000000000000000}
              ParentFont = False
              ParentShowHint = False
              ShowHint = True
              OnClick = SpeedButton7Click
            end
            object SBRemoveSign: TSpeedButton
              Left = 681
              Top = 2
              Width = 27
              Height = 26
              Cursor = crHandPoint
              Hint = #1581#1584#1601' '#1605#1581#1578#1608#1610#1575#1578' '#1578#1589#1608#1610#1585
              Anchors = [akTop, akRight]
              GroupIndex = 2
              Glyph.Data = {
                EE030000424DEE03000000000000360000002800000012000000110000000100
                180000000000B803000000000000000000000000000000000000FBF2EEFBF2EE
                FBF2EEFBF2EEFBF2EEFBF2EEFBF2EEFBF2EEFBF2EEFBF2EEFBF2EEFBF2EEFBF2
                EEFBF2EEFBF2EEFBF2EEFBF2EEFBF2EE0000FBF2EEFBF2EEFBF2EEFBF2EEFBF2
                EEFBF2EEFBF2EEFBF2EEFBF2EEFBF2EEFBF2EEFBF2EEFBF2EEFBF2EEFBF2EEFB
                F2EEFBF2EEFBF2EE0000FBF2EEFBF2EEFBF2EEF4EAED6B49D2F4EAEDFBF2EEFB
                F2EEFBF2EEFBF2EEFBF2EEFBF2EEFBF2EEFBF2EEAA94E95533E2FBF2EEFBF2EE
                0000FBF2EEFBF2EEFBF2EE7D5FD4380FD44018D1EDE2EBFBF2EEFBF2EEFBF2EE
                FBF2EEFBF2EEFBF2EEAA94E92C03DF9880E7FBF2EEFBF2EE0000FBF2EEFBF2EE
                FBF2EEB19CDE2D04D9330AD53C13D3EDE2EBFBF2EEFBF2EEFBF2EEFBF2EEAA94
                E92B02DF9880E7FBF2EEFBF2EEFBF2EE0000FBF2EEFBF2EEFBF2EEFBF2EED9C9
                E7360CD32E05D83910D3EDE2EBFBF2EEFBF2EEA58EE82B02DF9F88E8FBF2EEFB
                F2EEFBF2EEFBF2EE0000FBF2EEFBF2EEFBF2EEFBF2EEFBF2EEEDE2EB4821D12C
                02DA350BD4EDE2EBA58EE82B02DF9F88E8FBF2EEFBF2EEFBF2EEFBF2EEFBF2EE
                0000FBF2EEFBF2EEFBF2EEFBF2EEFBF2EEFBF2EEFBF2EE704ED42B02DC2D03D9
                2A01DFA58EE8FBF2EEFBF2EEFBF2EEFBF2EEFBF2EEFBF2EE0000FBF2EEFBF2EE
                FBF2EEFBF2EEFBF2EEFBF2EEFBF2EEFBF2EE4D27D12A01DF2C02DADFD0E7FBF2
                EEFBF2EEFBF2EEFBF2EEFBF2EEFBF2EE0000FBF2EEFBF2EEFBF2EEFBF2EEFBF2
                EEFBF2EEFBF2EE5935D52A01DF5F3CD32D03DA2C02DAD7C7E6FBF2EEFBF2EEFB
                F2EEFBF2EEFBF2EE0000FBF2EEFBF2EEFBF2EEFBF2EEFBF2EEFBF2EE4F2BD72A
                01DF6341D8FBF2EEE6D9EA3007D72A01DCC0ADE1FBF2EEFBF2EEFBF2EEFBF2EE
                0000FBF2EEFBF2EEFBF2EEFBF2EED6C7EC360EDC2A01DF6745D7FBF2EEFBF2EE
                FBF2EEFBF2EE380FD42A01DEAF99DDFBF2EEFBF2EEFBF2EE0000FBF2EEFBF2EE
                FBF2EE957CE72A01DF2A01DF7353D5FBF2EEFBF2EEFBF2EEFBF2EEFBF2EEFBF2
                EE4E28D15A36D1FBF2EEFBF2EEFBF2EE0000FBF2EEFBF2EEFBF2EE3C14DB2A01
                DF7E60D5FBF2EEFBF2EEFBF2EEFBF2EEFBF2EEFBF2EEFBF2EEFBF2EEFBF2EEFB
                F2EEFBF2EEFBF2EE0000FBF2EEFBF2EEFBF2EE370DD48264D6FBF2EEFBF2EEFB
                F2EEFBF2EEFBF2EEFBF2EEFBF2EEFBF2EEFBF2EEFBF2EEFBF2EEFBF2EEFBF2EE
                0000FBF2EEFBF2EEFBF2EEFBF2EEFBF2EEFBF2EEFBF2EEFBF2EEFBF2EEFBF2EE
                FBF2EEFBF2EEFBF2EEFBF2EEFBF2EEFBF2EEFBF2EEFBF2EE0000FBF2EEFBF2EE
                FBF2EEFBF2EEFBF2EEFBF2EEFBF2EEFBF2EEFBF2EEFBF2EEFBF2EEFBF2EEFBF2
                EEFBF2EEFBF2EEFBF2EEFBF2EEFBF2EE0000}
              ParentShowHint = False
              ShowHint = True
              OnClick = SBRemoveSignClick
            end
            object SBBrush: TSpeedButton
              Left = 433
              Top = 2
              Width = 27
              Height = 26
              Cursor = crHandPoint
              Hint = #1602#1604#1605' '#1610#1575' '#1662#1575#1705#1606
              Anchors = [akTop, akRight]
              GroupIndex = 2
              Glyph.Data = {
                86050000424D8605000000000000360000002800000016000000140000000100
                1800000000005005000000000000000000000000000000000000FBF2EEFBF2EE
                FBF2EEFBF2EEFBF2EEFBF2EEFBF2EEFBF2EEFBF2EEFBF2EEFBF2EEFBF2EEFBF2
                EEFBF2EEFBF2EEFBF2EEFBF2EEFBF2EEFBF2EEFBF2EEFBF2EEFBF2EE0000FBF2
                EEFBF2EEFBF2EEFBF2EEFBF2EEFBF2EEFBF2EEFBF2EEFBF2EEFBF2EEFBF2EEFB
                F2EEFBF2EEFBF2EEFBF2EEFBF2EEFBF2EEFBF2EEFBF2EEFBF2EEFBF2EEFBF2EE
                0000FBF2EEFBF2EEFBF2EEFBF2EE23A3B623828D21818C13ACC00BC6DF07D2EC
                04DBF703DDFB02DFFD01E1FF01E1FF01E1FF01E1FF01E1FF01E1FFFBF2EEFBF2
                EEFBF2EE0000FBF2EEFBF2EEFBF2EEFBF2EE01E1FF35D1F024838F1F879112B7
                CB0AC9E107D2ED06D4EF03DBF802E0FD01E1FF01E1FF01E1FF01E1FF01E1FFFB
                F2EEFBF2EEFBF2EE0000FBF2EEFBF2EEFBF2EEFBF2EE5CBFD016CDE99D717162
                4942FBF2EEFBF2EEFBF2EEFBF2EEFBF2EEFBF2EEFBF2EEFBF2EEFBF2EEFBF2EE
                FBF2EEFBF2EEFBF2EEFBF2EE0000FBF2EEFBF2EEFBF2EEFBF2EEFBF2EEA48585
                D09D9DA17574805D5A705551F2E8E3FBF2EEFBF2EEFBF2EEFBF2EEFBF2EEFBF2
                EEFBF2EEFBF2EEFBF2EEFBF2EEFBF2EE0000FBF2EEFBF2EEFBF2EEFBF2EEFBF2
                EE826967AB7F7E71544FA377758B6664755A56F7EDEAFBF2EEFBF2EEFBF2EEFB
                F2EEFBF2EEFBF2EEFBF2EEFBF2EEFBF2EEFBF2EE0000FBF2EEFBF2EEFBF2EEFB
                F2EEFBF2EEFBF2EE937877CB9C9BD09D9DBD8A8A8764617E6360F4F0EEFBF2EE
                FBF2EEFBF2EEFBF2EEFBF2EEFBF2EEFBF2EEFBF2EEFBF2EE0000FBF2EEFBF2EE
                FBF2EEFBF2EEFBF2EEFBF2EE8D7271D5A2A2E7B4B4D09D9DB88585757E9C2DA0
                C47DC8DFFBF2EEFBF2EEFBF2EEFBF2EEFBF2EEFBF2EEFBF2EEFBF2EE0000FBF2
                EEFBF2EEFBF2EEFBF2EEFBF2EEFBF2EEFBF2EE8E7373EBB8B8DCA9A9768B9E34
                B9FF30A8FA1DA3CD92CFE2FBF2EEFBF2EEFBF2EEFBF2EEFBF2EEFBF2EEFBF2EE
                0000FBF2EEFBF2EEFBF2EEFBF2EEFBF2EEFBF2EEFBF2EEFBF2EE887A7F4C96AD
                28D7FF33C9FF34B9FF2FA8F82DADD5A7D7E4FBF2EEFBF2EEFBF2EEFBF2EEFBF2
                EEFBF2EE0000FBF2EEFBF2EEFBF2EEFBF2EEFBF2EEFBF2EEFBF2EEFBF2EEFBF2
                EE2DADD510BDE328D7FF33C9FF34B9FF2DA6F618A3CFB8DCE7FBF2EEFBF2EEFB
                F2EEFBF2EEFBF2EE0000FBF2EEFBF2EEFBF2EEFBF2EEFBF2EEFBF2EEFBF2EEFB
                F2EEFBF2EEFBF2EE28ACD410C0E428D7FF33C7FF34B4FF2BA3F425AAD5C9E2E9
                FBF2EEFBF2EEFBF2EEFBF2EE0000FBF2EEFBF2EEFBF2EEFBF2EEFBF2EEFBF2EE
                FBF2EEFBF2EEFBF2EEFBF2EEFBF2EE25AAD511C2E62CD3FF34C5FF34B4FF29A3
                F118A4D0D6E6EAFBF2EEFBF2EEFBF2EE0000FBF2EEFBF2EEFBF2EEFBF2EEFBF2
                EEFBF2EEFBF2EEFBF2EEFBF2EEFBF2EEFBF2EEFBF2EE28ACD412C2E82CD3FF34
                C5FF34B4FF19A2DF52B9DAFBF2EEFBF2EEFBF2EE0000FBF2EEFBF2EEFBF2EEFB
                F2EEFBF2EEFBF2EEFBF2EEFBF2EEFBF2EEFBF2EEFBF2EEFBF2EEFBF2EE30AED6
                12C4E92CD3FF1EB2E728ACD4FBF2EEFBF2EEFBF2EEFBF2EE0000FBF2EEFBF2EE
                FBF2EEFBF2EEFBF2EEFBF2EEFBF2EEFBF2EEFBF2EEFBF2EEFBF2EEFBF2EEFBF2
                EEFBF2EE39B1D70DB1DB28ACD4FBF2EEFBF2EEFBF2EEFBF2EEFBF2EE0000FBF2
                EEFBF2EEFBF2EEFBF2EEFBF2EEFBF2EEFBF2EEFBF2EEFBF2EEFBF2EEFBF2EEFB
                F2EEFBF2EEFBF2EEFBF2EE53BADAFBF2EEFBF2EEFBF2EEFBF2EEFBF2EEFBF2EE
                0000FBF2EEFBF2EEFBF2EEFBF2EEFBF2EEFBF2EEFBF2EEFBF2EEFBF2EEFBF2EE
                FBF2EEFBF2EEFBF2EEFBF2EEFBF2EEFBF2EEFBF2EEFBF2EEFBF2EEFBF2EEFBF2
                EEFBF2EE0000FBF2EEFBF2EEFBF2EEFBF2EEFBF2EEFBF2EEFBF2EEFBF2EEFBF2
                EEFBF2EEFBF2EEFBF2EEFBF2EEFBF2EEFBF2EEFBF2EEFBF2EEFBF2EEFBF2EEFB
                F2EEFBF2EEFBF2EE0000}
              ParentShowHint = False
              ShowHint = True
              OnClick = SBBrushClick
            end
            object SBMoveLayers: TSpeedButton
              Left = 708
              Top = 2
              Width = 27
              Height = 26
              Cursor = crHandPoint
              Hint = #1575#1606#1578#1582#1575#1576' '#1575#1588#1610#1575#1610' '#1585#1608#1610' '#1578#1589#1608#1610#1585
              Anchors = [akTop, akRight]
              GroupIndex = 2
              Glyph.Data = {
                2E030000424D2E0300000000000036000000280000000D000000130000000100
                180000000000F802000000000000000000000000000000000000FBF2EEFBF2EE
                FBF2EEFBF2EEFBF2EEFBF2EEFBF2EEFBF2EEFBF2EEFBF2EEFBF2EEFBF2EEFBF2
                EE00FBF2EEFBF2EEFBF2EEFBF2EEFBF2EEFBF2EEFBF2EEFBF2EEFBF2EEFBF2EE
                FBF2EEFBF2EEFBF2EE00FBF2EEFBF2EEFBF2EEFBF2EEFBF2EEFBF2EEFBF2EEBE
                9B9AD7BEBBFBF2EEFBF2EEFBF2EEFBF2EE00FBF2EEFBF2EEFBF2EEFBF2EEFBF2
                EEFBF2EEE3D0CDD9C6ACE6D9BBB8958EF6EAE6FBF2EEFBF2EE00FBF2EEFBF2EE
                FBF2EEAC7E76F6EAE6FBF2EEBF9E98FFFFE1FFFFE2BF9E97FBF2EEFBF2EEFBF2
                EE00FBF2EEFBF2EEFBF2EEB8887CB9958DDDC7C4D9C6B5FFFFE9CCB3A8E3D0CD
                FBF2EEFBF2EEFBF2EE00FBF2EEFBF2EEFBF2EEC39381F9F5CBBF9F93FFFFE7F9
                F5EABF9C9BFBF2EEFBF2EEFBF2EEFBF2EE00FBF2EEFBF2EEFBF2EECD9C84FFFF
                D3FFFFDFFFFFE7DFCFC6C5A7A3CCB0ACB99491F0E2DEFBF2EE00FBF2EEFBF2EE
                FBF2EED2A186FFFFD0FFFFDBFFFFE5FFFFECFFFFEFDFCFC5D1B6B3FBF2EEFBF2
                EE00FBF2EEFBF2EEFBF2EED3A187FFFDCAFFFFD6FFFFDDFFFFE3ECE2CDC4A5A2
                FBF2EEFBF2EEFBF2EE00FBF2EEFBF2EEFBF2EECF9D84FFEFBCFFFECCFFFFD3F9
                F5D1B9958FF6EAE6FBF2EEFBF2EEFBF2EE00FBF2EEFBF2EEFBF2EEC59481FFE3
                B1FFEEBBFFFAC7B99688F0E2DEFBF2EEFBF2EEFBF2EEFBF2EE00FBF2EEFBF2EE
                FBF2EEBC8B7DFFDAA7FFE1AEC69E88EAD8D5FBF2EEFBF2EEFBF2EEFBF2EEFBF2
                EE00FBF2EEFBF2EEFBF2EEB38379FFCE9BD9AC8CD7BEBBFBF2EEFBF2EEFBF2EE
                FBF2EEFBF2EEFBF2EE00FBF2EEFBF2EEFBF2EEAA7C76ECC097C4A29DFBF2EEFB
                F2EEFBF2EEFBF2EEFBF2EEFBF2EEFBF2EE00FBF2EEFBF2EEFBF2EEA47673B28A
                85FBF2EEFBF2EEFBF2EEFBF2EEFBF2EEFBF2EEFBF2EEFBF2EE00FBF2EEFBF2EE
                FBF2EE9F7171FBF2EEFBF2EEFBF2EEFBF2EEFBF2EEFBF2EEFBF2EEFBF2EEFBF2
                EE00FBF2EEFBF2EEFBF2EEFBF2EEFBF2EEFBF2EEFBF2EEFBF2EEFBF2EEFBF2EE
                FBF2EEFBF2EEFBF2EE00FBF2EEFBF2EEFBF2EEFBF2EEFBF2EEFBF2EEFBF2EEFB
                F2EEFBF2EEFBF2EEFBF2EEFBF2EEFBF2EE00}
              ParentShowHint = False
              ShowHint = True
              OnClick = SBMoveLayersClick
            end
            object Bevel4: TBevel
              Left = 343
              Top = 3
              Width = 3
              Height = 25
              Style = bsRaised
            end
            object SEPenWidth: TSpinEdit
              Left = 552
              Top = 4
              Width = 41
              Height = 22
              Anchors = [akTop, akRight]
              MaxValue = 25
              MinValue = 1
              TabOrder = 0
              Value = 1
              OnChange = SEPenWidthChange
            end
            object EdtPenColor: TEdit
              Left = 469
              Top = 6
              Width = 33
              Height = 19
              Cursor = crHandPoint
              Anchors = [akTop, akRight]
              BevelInner = bvNone
              BevelOuter = bvRaised
              Color = clBlack
              Ctl3D = False
              ParentCtl3D = False
              ReadOnly = True
              TabOrder = 1
              OnClick = EdtPenColorClick
            end
            object SEEraser: TSpinEdit
              Left = 329
              Top = 4
              Width = 41
              Height = 22
              Anchors = [akTop, akRight]
              Increment = 2
              MaxValue = 50
              MinValue = 8
              TabOrder = 2
              Value = 15
              OnChange = SEEraserChange
            end
          end
          object ImageEnDBVect1: TImageEnDBVect
            Left = 0
            Top = 30
            Width = 765
            Height = 149
            Background = clBtnFace
            ParentCtl3D = False
            LegacyBitmap = True
            AutoFit = True
            BackgroundStyle = iebsChessboard
            EnableInteractionHints = True
            Align = alClient
            TabOrder = 1
            OnMouseMove = ImageEnDBVect1MouseMove
            OnMouseUp = ImageEnDBVect1MouseUp
            OnNewObject = ImageEnDBVect1NewObject
            DataField = 'Image'
            DataSource = DSGet_RecommiteJpgFile
            DataFieldImageFormat = ifJpeg
            PreviewFont.Charset = DEFAULT_CHARSET
            PreviewFont.Color = clWindowText
            PreviewFont.Height = -11
            PreviewFont.Name = 'MS Sans Serif'
            PreviewFont.Style = []
          end
        end
      end
    end
    object DBGToORG: TYDBGrid
      Left = 136
      Top = 5
      Width = 498
      Height = 152
      Hint = '172'
      Anchors = [akTop, akRight]
      DataSource = DSearch
      Options = [dgColumnResize, dgColLines, dgTabs, dgConfirmDelete, dgCancelOnExit]
      TabOrder = 4
      TitleFont.Charset = ARABIC_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'Tahoma'
      TitleFont.Style = []
      Visible = False
      OnCellClick = DBGToORGCellClick
      OnKeyDown = DBGToORGKeyDown
      YeganehColor = False
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
          Expanded = False
          FieldName = 'Code'
          Width = 52
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'title'
          Width = 300
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'ResponsibleStaffer'
          Width = 120
          Visible = True
        end>
    end
  end
  object pnlTop1: TxpPanel [1]
    Left = 0
    Top = 0
    Width = 800
    Height = 49
    StartColor = 16511469
    EndColor = 16244694
    FillDirection = fdLeftToRight
    TitleShow = False
    Caption = 'xpPanel'
    Title = 'xpPanelTitle'
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clNavy
    TitleFont.Height = -11
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = [fsBold]
    TitleAlignment = taCenter
    TitleStartColor = clWhite
    TitleEndColor = 15777194
    TitleColor = clWhite
    TitleFillDirect = fdLeftToRight
    TitleImageAlign = tiaLeft
    TitleButtons = [tbMinimize]
    DefaultHeight = 60
    BorderColor = clWhite
    BGImageAlign = iaStretch
    Align = alTop
    TabOrder = 1
    DesignSize = (
      798
      47)
    object MoreOrg: TRadioButton
      Left = 693
      Top = 28
      Width = 89
      Height = 17
      Anchors = [akTop, akRight]
      Caption = #1575#1585#1580#1575#1593' '#1588#1608#1606#1583#1711#1575#1606
      TabOrder = 0
      OnClick = OneOrgClick
    end
    object OneOrg: TRadioButton
      Left = 693
      Top = 8
      Width = 89
      Height = 17
      Anchors = [akTop, akRight]
      Caption = #1575#1585#1580#1575#1593' '#1588#1608#1606#1583#1607
      Checked = True
      TabOrder = 1
      TabStop = True
      OnClick = OneOrgClick
    end
    object PnlRefer: TPanel
      Left = 168
      Top = 8
      Width = 522
      Height = 25
      BevelOuter = bvNone
      ParentColor = True
      TabOrder = 2
      DesignSize = (
        522
        25)
      object OrgIDEdit: TEdit
        Left = 471
        Top = 1
        Width = 49
        Height = 21
        Anchors = [akTop, akRight]
        BiDiMode = bdLeftToRight
        ParentBiDiMode = False
        ReadOnly = True
        TabOrder = 0
        OnEnter = OrgIDEditEnter
        OnExit = OrgIDEditExit
        OnKeyDown = GotoNext
      end
      object orgcombo: TDBLookupComboBox
        Left = 157
        Top = 1
        Width = 312
        Height = 21
        Anchors = [akTop, akRight]
        BevelInner = bvNone
        BevelOuter = bvNone
        BiDiMode = bdLeftToRight
        Ctl3D = True
        DataField = 'fromorgtitle'
        DataSource = DSForm
        Enabled = False
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ListField = 'Title'
        ParentBiDiMode = False
        ParentCtl3D = False
        ParentFont = False
        TabOrder = 1
        OnClick = orgcomboClick
        OnCloseUp = orgcomboCloseUp
        OnDropDown = orgcomboDropDown
        OnKeyDown = GotoNext
      end
      object SearchEdit: TEdit
        Left = 155
        Top = 1
        Width = 296
        Height = 21
        Anchors = [akTop, akRight]
        ReadOnly = True
        TabOrder = 2
        Text = #1580#1587#1578#1580#1608' '#1576#1585' '#1575#1587#1575#1587' '#1593#1606#1608#1575#1606' ...'
        OnChange = SearchEditChange
        OnEnter = SearchEditEnter
        OnExit = SearchEditExit
        OnKeyDown = SearchEditKeyDown
      end
      object DBEditToStaffer: TDBEdit
        Left = 26
        Top = 1
        Width = 124
        Height = 21
        Anchors = [akTop, akRight]
        BiDiMode = bdRightToLeft
        DataField = 'OrgStaff'
        DataSource = DSForm
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentBiDiMode = False
        ParentFont = False
        ReadOnly = True
        TabOrder = 3
        OnEnter = TEditEnter
        OnExit = TEditExit
        OnKeyDown = GotoNext
      end
      object SpeedButton2: TAdvGlowButton
        Left = 2
        Top = 1
        Width = 21
        Height = 21
        Anchors = [akTop, akRight]
        ImageIndex = 26
        Images = Dm.ImageList_MainNew
        NotesFont.Charset = DEFAULT_CHARSET
        NotesFont.Color = clWindowText
        NotesFont.Height = -11
        NotesFont.Name = 'Tahoma'
        NotesFont.Style = []
        TabOrder = 4
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
    end
  end
  inherited DSForm: TDataSource
    Left = 132
    Top = 152
  end
  inherited ActionList: TActionList
    Left = 580
    Top = 348
    object EditCut1: TEditCut
      Category = 'Edit'
      Caption = #1575#1606#1578#1602#1575#1604' '#1576#1607' '#1581#1575#1601#1592#1607
      Hint = 'Cut|Cuts the selection and puts it on the Clipboard'
      ImageIndex = 0
      ShortCut = 16472
    end
    object EditCopy1: TEditCopy
      Category = 'Edit'
      Caption = #1705#1662#1610
      Hint = 'Copy|Copies the selection and puts it on the Clipboard'
      ImageIndex = 1
      ShortCut = 16451
    end
    object EditPaste1: TEditPaste
      Category = 'Edit'
      Caption = #1583#1585#1580' '#1605#1578#1606
      Hint = 'Paste|Inserts Clipboard contents'
      ImageIndex = 2
      ShortCut = 16470
    end
    object EditSelectAll1: TEditSelectAll
      Category = 'Edit'
      Caption = #1575#1606#1578#1582#1575#1576' '#1607#1605#1607
      Hint = 'Select All|Selects the entire document'
      ShortCut = 16449
    end
    object EditUndo1: TEditUndo
      Category = 'Edit'
      Caption = #1575#1606#1589#1585#1575#1601
      Hint = 'Undo|Reverts the last action'
      ImageIndex = 3
      ShortCut = 16474
    end
    object EditDelete1: TEditDelete
      Category = 'Edit'
      Caption = #1581#1584#1601
      Hint = 'Delete|Erases the selection'
      ImageIndex = 5
      ShortCut = 46
    end
  end
  object ColorDialog: TColorDialog [4]
    Left = 464
    Top = 368
  end
  object Get_RecommiteJpgFile: TADODataSet [5]
    Connection = Dm.YeganehConnection
    CursorType = ctStatic
    CommandText = 'Get_RecommiteJpgFile;1'
    CommandType = cmdStoredProc
    Parameters = <
      item
        Name = '@RETURN_VALUE'
        DataType = ftInteger
        Direction = pdReturnValue
        Precision = 10
        Value = 0
      end
      item
        Name = '@RecommiteID'
        Attributes = [paNullable]
        DataType = ftInteger
        Precision = 10
        Value = 0
      end>
    Left = 218
    Top = 128
    object Get_RecommiteJpgFileRecommiteDataID: TAutoIncField
      FieldName = 'RecommiteDataID'
      ReadOnly = True
    end
    object Get_RecommiteJpgFileRecommiteID: TIntegerField
      FieldName = 'RecommiteID'
    end
    object Get_RecommiteJpgFileImage: TBlobField
      FieldName = 'Image'
    end
    object Get_RecommiteJpgFileExtention: TWordField
      FieldName = 'Extention'
    end
  end
  object StatImages: TImageList [6]
    BkColor = clWhite
    Left = 528
    Top = 332
    Bitmap = {
      494C010105000900040010001000FFFFFF00FF10FFFFFFFFFFFFFFFF424D3600
      0000000000003600000028000000400000003000000001002000000000000030
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FFFFFF0084848400FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FFFFFF008484840042424200FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FFFFFF008484840042424200FFFF
      FF00FFFFFF00FFFFFF0000000000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FFFFFF008484840042424200FFFF
      FF00FFFFFF00000000000000000000000000FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FFFFFF008484840042424200FFFF
      FF000000000000000000000000000000000000000000FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FFFFFF008484840042424200FFFF
      FF000000000000000000FFFFFF00000000000000000000000000FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FFFFFF008484840042424200FFFF
      FF0000000000FFFFFF00FFFFFF00FFFFFF00000000000000000000000000FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FFFFFF008484840042424200FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000000000000000000FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FFFFFF008484840042424200FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF0000000000FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FFFFFF008484840042424200FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FFFFFF0084848400424242004242
      4200424242004242420042424200424242004242420042424200424242004242
      4200FFFFFF00FFFFFF00FFFFFF00FFFFFF000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FFFFFF0084848400848484008484
      8400848484008484840084848400848484008484840084848400848484008484
      840084848400FFFFFF00FFFFFF00FFFFFF000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000F7F7F700FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00F7F7F700EFEFEF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00F7F7F700FFFFFF00FFFFFF00F7F7F700FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00F7F7F700000000000000000000000000000000000000000000000000FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF005A5A
      5A00000000000000000000000000000000000000000000000000000000000000
      0000D6D6D600F7F7F700FFFFFF00FFFFFF00FFFFFF0084848400FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF0084848400FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF0084848400FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00B5B5B5000000
      0000000000000000000000000000A5A5A500B5B5B500E7E7E700393939000000
      000000000000FFFFFF00FFFFFF00FFFFFF00FFFFFF008484840042424200FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF008484840042424200FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF008484840042424200FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00000000000000
      000000000000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF0000000000FFFF
      FF004242420000000000FFFFFF00FFFFFF00FFFFFF008484840042424200FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF008484840042424200FFFF
      FF00FFFFFF00FFFFFF0000000000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF008484840042424200FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00DEDEDE00000000000000
      0000FFFFFF00FFFFFF00636363000000000029292900FFFFFF00FFFFFF000000
      0000FFFFFF00FFFFFF00ADADAD00FFFFFF00FFFFFF008484840042424200FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF008484840042424200FFFF
      FF00FFFFFF00000000000000000000000000FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF008484840042424200FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF006B6B6B0000000000A5A5
      A500FFFFFF00737373006B6B6B00FFFFFF00E7E7E70000000000FFFFFF005252
      5200E7E7E700FFFFFF0039393900FFFFFF00FFFFFF008484840042424200FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF008484840042424200FFFF
      FF000000000000000000000000000000000000000000FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF008484840042424200FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF005252520000000000FFFF
      FF00FFFFFF0000000000FFFFFF00FFFFFF00FFFFFF00CECECE00FFFFFF009494
      940029292900FFFFFF00FFFFFF00FFFFFF00FFFFFF008484840042424200FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF008484840042424200FFFF
      FF000000000000000000FFFFFF00000000000000000000000000FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF008484840042424200FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00ADADAD00000000009C9C
      9C00FFFFFF004A4A4A00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF001010
      100008080800FFFFFF00FFFFFF00FFFFFF00FFFFFF008484840042424200FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF008484840042424200FFFF
      FF0000000000FFFFFF00FFFFFF00FFFFFF00000000000000000000000000FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF008484840042424200FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF0000000000A5A5
      A500FFFFFF00FFFFFF0094949400FFFFFF00FFFFFF00FFFFFF00FFFFFF000000
      000063636300FFFFFF00FFFFFF00FFFFFF00FFFFFF008484840042424200FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF008484840042424200FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000000000000000000FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF008484840042424200FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF0010101000C6C6
      C60000000000E7E7E700FFFFFF00FFFFFF00FFFFFF00ADADAD00000000000000
      0000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF008484840042424200FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF008484840042424200FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF0000000000FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF008484840042424200FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000000
      0000FFFFFF00000000000000000000000000000000000000000000000000B5B5
      B500FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF008484840042424200FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF008484840042424200FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF008484840042424200FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF0000000000FFFFFF0008080800000000000000000000000000FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF0084848400424242004242
      4200424242004242420042424200424242004242420042424200424242004242
      4200FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF0084848400424242004242
      4200424242004242420042424200424242004242420042424200424242004242
      4200FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF0084848400424242004242
      4200424242004242420042424200424242004242420042424200424242004242
      4200FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF006B6B6B00C6C6C600FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF0084848400848484008484
      8400848484008484840084848400848484008484840084848400848484008484
      840084848400FFFFFF00FFFFFF00FFFFFF00FFFFFF0084848400848484008484
      8400848484008484840084848400848484008484840084848400848484008484
      840084848400FFFFFF00FFFFFF00FFFFFF00FFFFFF0084848400848484008484
      8400848484008484840084848400848484008484840084848400848484008484
      840084848400FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00424D3E000000000000003E000000
      2800000040000000300000000100010000000000800100000000000000000000
      000000000000000000000000FFFFFF0000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000FFFF000000000000FFFF000000000000
      8003000000000000BFFB000000000000800B000000000000800B000000000000
      800B000000000000800B000000000000800B000000000000800B000000000000
      800B000000000000800B000000000000800B000000000000800B000000000000
      8003000000000000FFFF0000000000000000FFFFFFFFFFFF0000FFFFFFFFFFFF
      00008003800380030000BFFBBFFBBFFB0000800B800B800B0000800B800B800B
      0000800B800B800B0000800B800B800B0000800B800B800B0000800B800B800B
      0000800B800B800B0000800B800B800B0000800B800B800B0000800B800B800B
      00008003800380030000FFFFFFFFFFFF00000000000000000000000000000000
      000000000000}
  end
  object DSearch: TDataSource [7]
    DataSet = SearchORG
    Left = 32
    Top = 152
  end
  object SearchORG: TADODataSet [8]
    Connection = Dm.YeganehConnection
    CursorType = ctStatic
    CommandText = 
      'Select top 1 id,title, ResponsibleStaffer, Code from fromorganiz' +
      'ations'#13#10'where IsActive=1'
    Parameters = <>
    Left = 208
    Top = 192
    object SearchORGid: TAutoIncField
      FieldName = 'id'
      ReadOnly = True
    end
    object SearchORGtitle: TWideStringField
      FieldName = 'title'
      Size = 100
    end
    object SearchORGResponsibleStaffer: TWideStringField
      FieldName = 'ResponsibleStaffer'
      Size = 50
    end
    object SearchORGCode: TWideStringField
      FieldName = 'Code'
      Size = 50
    end
  end
  object FromOrganizations: TADOStoredProc [9]
    Connection = Dm.YeganehConnection
    CursorType = ctStatic
    ProcedureName = 'get_InnerOrganizations'
    Parameters = <
      item
        Name = '@FromOrgID'
        DataType = ftInteger
        Value = Null
      end>
    Left = 144
    Top = 192
    object FromOrganizationsTitle: TWideStringField
      FieldName = 'Title'
      Size = 100
    end
    object FromOrganizationsParentID: TIntegerField
      FieldName = 'ParentID'
    end
    object FromOrganizationsPhone: TWideStringField
      FieldName = 'Phone'
      Size = 30
    end
    object FromOrganizationsFax: TWideStringField
      FieldName = 'Fax'
      Size = 30
    end
    object FromOrganizationsEmail: TWideStringField
      FieldName = 'Email'
      Size = 30
    end
    object FromOrganizationsResponsibleStaffer: TWideStringField
      FieldName = 'ResponsibleStaffer'
      Size = 50
    end
    object FromOrganizationsIsActive: TBooleanField
      FieldName = 'IsActive'
    end
    object FromOrganizationsPreCode: TWideStringField
      FieldName = 'PreCode'
    end
    object FromOrganizationsIsInnerOrg: TBooleanField
      FieldName = 'IsInnerOrg'
    end
    object FromOrganizationsID: TAutoIncField
      FieldName = 'ID'
      ReadOnly = True
    end
    object FromOrganizationsCode: TWideStringField
      DisplayWidth = 50
      FieldName = 'Code'
      Size = 50
    end
    object FromOrganizationsName_Semat: TWideStringField
      FieldName = 'Name_Semat'
      ReadOnly = True
      Size = 151
    end
  end
  object DFromOrganizations: TDataSource [10]
    DataSet = FromOrganizations
    Left = 208
    Top = 152
  end
  object QrWorkGroupOrg: TADOQuery [11]
    Connection = Dm.YeganehConnection
    Parameters = <
      item
        Name = 'Pa_WorkGroupID'
        Attributes = [paSigned]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = 0
      end>
    SQL.Strings = (
      'Select * '
      'From WorkGroupOrg'
      'Where WorkGroupID = :Pa_WorkGroupID')
    Left = 280
    Top = 112
    object QrWorkGroupOrgWorkGroupOrgID: TAutoIncField
      FieldName = 'WorkGroupOrgID'
      ReadOnly = True
    end
    object QrWorkGroupOrgWorkGroupID: TIntegerField
      FieldName = 'WorkGroupID'
    end
    object QrWorkGroupOrgFromOrgID: TIntegerField
      FieldName = 'FromOrgID'
    end
  end
  object DSWorkGroupOrg: TDataSource [12]
    AutoEdit = False
    DataSet = QrWorkGroupOrg
    Left = 384
    Top = 152
  end
  object SPWorkGroup: TADOStoredProc [13]
    Connection = Dm.YeganehConnection
    ProcedureName = 'Sp_Select_WorkGroup;1'
    Parameters = <
      item
        Name = '@RETURN_VALUE'
        DataType = ftInteger
        Direction = pdReturnValue
        Precision = 10
        Value = Null
      end
      item
        Name = '@UserID'
        Attributes = [paNullable]
        DataType = ftInteger
        Precision = 10
        Value = 0
      end>
    Left = 525
    Top = 160
    object SPWorkGroupWorkGroupID: TAutoIncField
      FieldName = 'WorkGroupID'
      ReadOnly = True
    end
    object SPWorkGroupTitle: TWideStringField
      Alignment = taRightJustify
      FieldName = 'Title'
      Size = 50
    end
    object SPWorkGroupDescript: TWideStringField
      Alignment = taRightJustify
      FieldName = 'Descript'
      Size = 300
    end
  end
  object DSWorkGroup: TDataSource [14]
    AutoEdit = False
    DataSet = SPWorkGroup
    Left = 437
    Top = 152
  end
  inherited Grid_PopupMenu: TPopupMenu
    Left = 464
    Top = 420
    inherited wordMenuItem: TMenuItem
      OnClick = nil
    end
    inherited ExcelMenuItem: TMenuItem
      OnClick = nil
    end
    inherited PrintMenuItem: TMenuItem
      OnClick = nil
    end
    inherited TextMenuItem: TMenuItem
      OnClick = nil
    end
    inherited CustomMenuItem: TMenuItem
      OnClick = nil
    end
  end
  inherited Timer1sssss: TTimer
    Left = 32
    Top = 200
  end
  object DSGet_RecommiteJpgFile: TDataSource
    DataSet = Get_RecommiteJpgFile
    Left = 322
    Top = 152
  end
  object Timer1: TTimer
    Enabled = False
    Interval = 1500
    OnTimer = Timer1Timer
    Left = 412
    Top = 407
  end
  object PopupMenu1: TPopupMenu
    Left = 680
    Top = 184
    object N4: TMenuItem
      Action = EditSelectAll1
    end
    object N1: TMenuItem
      Action = EditCut1
    end
    object N2: TMenuItem
      Action = EditCopy1
    end
    object N5: TMenuItem
      Action = EditPaste1
    end
    object N6: TMenuItem
      Action = EditUndo1
    end
    object N3: TMenuItem
      Action = EditDelete1
    end
  end
  object QCheckAccess: TADOQuery
    Connection = Dm.YeganehConnection
    Parameters = <>
    SQL.Strings = (
      '')
    Left = 292
    Top = 329
  end
  object CheckAccessForErja: TADOStoredProc
    Connection = Dm.YeganehConnection
    CursorType = ctStatic
    ProcedureName = 'CheckAccessForErja;1'
    Parameters = <
      item
        Name = '@FromOrgID'
        DataType = ftInteger
        Value = Null
      end
      item
        Name = '@ToOrgID'
        DataType = ftInteger
        Value = Null
      end>
    Left = 140
    Top = 328
    object CheckAccessForErjaResult: TIntegerField
      FieldName = 'Result'
    end
  end
  object Select_ParaphTemplateOther: TADOStoredProc
    Connection = Dm.YeganehConnection
    CursorType = ctStatic
    ProcedureName = 'SELECT_ParaphTemplate'
    Parameters = <
      item
        Name = '@RETURN_VALUE'
        DataType = ftInteger
        Direction = pdReturnValue
        Precision = 10
        Value = 0
      end
      item
        Name = '@UserID'
        Attributes = [paNullable]
        DataType = ftInteger
        Precision = 10
        Value = 1
      end
      item
        Name = '@type'
        DataType = ftInteger
        Precision = 10
        Value = 1
      end>
    Left = 80
    Top = 395
    object Select_ParaphTemplateOtherParaphTemplateID: TAutoIncField
      FieldName = 'ParaphTemplateID'
      ReadOnly = True
    end
    object Select_ParaphTemplateOtherUserID: TIntegerField
      FieldName = 'UserID'
    end
    object Select_ParaphTemplateOtherOrderID: TWordField
      FieldName = 'OrderID'
    end
    object Select_ParaphTemplateOtherTitle: TWideStringField
      FieldName = 'Title'
      Size = 50
    end
    object Select_ParaphTemplateOtherParaph: TWideStringField
      DisplayWidth = 3000
      FieldName = 'Paraph'
      Size = 3000
    end
  end
  object DSELECT_ParaphTemplateOther: TDataSource
    DataSet = Select_ParaphTemplateOther
    Left = 80
    Top = 440
  end
end
