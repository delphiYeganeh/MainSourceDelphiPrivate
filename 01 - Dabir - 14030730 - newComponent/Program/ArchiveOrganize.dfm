inherited ArchiveOrganizeForm: TArchiveOrganizeForm
  Tag = 12
  Left = 672
  Top = 208
  BorderIcons = [biSystemMenu]
  BorderStyle = bsDialog
  Caption = #1586#1608#1606#1705#1606' '#1607#1575#1610' '#1576#1575#1610#1711#1575#1606#1610
  ClientHeight = 566
  ClientWidth = 506
  OldCreateOrder = True
  PixelsPerInch = 96
  TextHeight = 13
  object pnlMain: TPanel [0]
    Left = 0
    Top = 0
    Width = 506
    Height = 566
    Align = alClient
    TabOrder = 0
    object GroupBox1: TGroupBox
      Left = 1
      Top = 450
      Width = 504
      Height = 115
      Align = alBottom
      Caption = #1575#1591#1604#1575#1593#1575#1578' '#1605#1608#1590#1608#1593
      TabOrder = 0
      DesignSize = (
        504
        115)
      object Label4: TLabel
        Left = 464
        Top = 48
        Width = 22
        Height = 13
        Anchors = [akTop, akRight]
        Caption = #1605#1705#1575#1606
        FocusControl = DBEPlace
      end
      object Label9: TLabel
        Left = 464
        Top = 21
        Width = 26
        Height = 13
        Anchors = [akTop, akRight]
        Caption = #1593#1606#1608#1575#1606
      end
      object Label1: TLabel
        Left = 464
        Top = 72
        Width = 29
        Height = 13
        Anchors = [akTop, akRight]
        Caption = #1578#1608#1590#1610#1581
        FocusControl = DBENotes
      end
      object LabelAccess: TLabel
        Left = 107
        Top = 94
        Width = 389
        Height = 13
        Anchors = [akTop, akRight]
        Caption = 
          #1578#1608#1580#1607' :  '#1580#1607#1578' '#1578#1593#1610#1610#1606' '#1583#1587#1578#1585#1587#1610' '#1576#1585#1575#1610' '#1586#1608#1606#1705#1606' '#1607#1575' '#1604#1591#1601#1575' '#1576#1607' '#1601#1585#1605' " '#1578#1593#1585#1610#1601' '#1705#1575#1585#1576#1585 +
          ' " '#1605#1585#1575#1580#1593#1607' '#1606#1605#1575#1610#1610#1583
      end
      object DBEPlace: TDBEdit
        Left = 116
        Top = 42
        Width = 345
        Height = 21
        Anchors = [akTop, akRight]
        DataField = 'place'
        DataSource = DSForm
        ReadOnly = True
        TabOrder = 1
        OnEnter = TEditEnter
        OnExit = TEditExit
      end
      object DBETitle: TDBEdit
        Left = 116
        Top = 17
        Width = 345
        Height = 21
        Anchors = [akTop, akRight]
        Ctl3D = True
        DataField = 'title'
        DataSource = DSForm
        ParentCtl3D = False
        ReadOnly = True
        TabOrder = 0
        OnEnter = TEditEnter
        OnExit = TEditExit
      end
      object DBENotes: TDBEdit
        Left = 116
        Top = 68
        Width = 345
        Height = 21
        Anchors = [akTop, akRight]
        DataField = 'notes'
        DataSource = DSForm
        ReadOnly = True
        TabOrder = 2
        OnEnter = TEditEnter
        OnExit = TEditExit
      end
    end
    object Panel2: TPanel
      Left = 1
      Top = 1
      Width = 504
      Height = 37
      Align = alTop
      TabOrder = 1
      DesignSize = (
        504
        37)
      object Label2: TLabel
        Left = 459
        Top = 9
        Width = 35
        Height = 13
        Anchors = [akTop, akRight]
        Caption = #1580#1587#1578#1580#1608
      end
      object DBText1: TDBText
        Left = 4
        Top = 9
        Width = 144
        Height = 17
        Anchors = [akTop, akRight]
        DataField = 'Title'
        DataSource = DSForm
        Font.Charset = ARABIC_CHARSET
        Font.Color = clRed
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
      end
      object Label3: TLabel
        Left = 150
        Top = 8
        Width = 90
        Height = 13
        Anchors = [akTop, akRight]
        Caption = #1586#1608#1606#1705#1606' '#1575#1606#1578#1582#1575#1576' '#1588#1583#1607' :'
      end
      object SEdit: TEdit
        Left = 244
        Top = 7
        Width = 209
        Height = 21
        Anchors = [akTop, akRight]
        TabOrder = 0
        OnChange = SEditChange
        OnExit = SEditExit
      end
    end
    object Panel3: TPanel
      Left = 1
      Top = 38
      Width = 374
      Height = 412
      Align = alClient
      TabOrder = 2
      object PageControl1: TPageControl
        Left = 1
        Top = 28
        Width = 372
        Height = 383
        ActivePage = TabSheet1
        Align = alClient
        TabHeight = 30
        TabOrder = 0
        object TabSheet1: TTabSheet
          Caption = #1583#1585#1582#1578#1610
          OnShow = TabSheet1Show
          object ArchiveTree: TDBTreeView
            Left = 0
            Top = 0
            Width = 364
            Height = 313
            Align = alClient
            Indent = 19
            TabOrder = 0
            OnDblClick = ArchiveTreeDblClick
            OnGetImageIndex = ArchiveTreeGetImageIndex
            DataSource = DSForm
            RootID = 0
            IDField = 'FolderID'
            ParentIDField = 'ParentFolderID'
            DisplayField = 'Title'
            BuildMethod = bmFilter
          end
          object Panel4: TPanel
            Left = 0
            Top = 313
            Width = 364
            Height = 30
            Align = alBottom
            TabOrder = 1
            DesignSize = (
              364
              30)
            object Cut: TAdvGlowButton
              Left = 311
              Top = 5
              Width = 51
              Height = 22
              Cursor = crHandPoint
              Anchors = [akTop, akRight]
              Caption = 'Cut'
              ImageIndex = 89
              Images = Dm.ImageList_MainNew
              NotesFont.Charset = DEFAULT_CHARSET
              NotesFont.Color = clWindowText
              NotesFont.Height = -11
              NotesFont.Name = 'Tahoma'
              NotesFont.Style = []
              TabOrder = 0
              OnClick = CutClick
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
            object Paste: TAdvGlowButton
              Left = 311
              Top = 5
              Width = 51
              Height = 22
              Cursor = crHandPoint
              Anchors = [akTop, akRight]
              Caption = 'Paste'
              ImageIndex = 60
              Images = Dm.ImageList_MainNew
              NotesFont.Charset = DEFAULT_CHARSET
              NotesFont.Color = clWindowText
              NotesFont.Height = -11
              NotesFont.Name = 'Tahoma'
              NotesFont.Style = []
              TabOrder = 1
              Visible = False
              OnClick = PasteClick
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
        object TabSheet2: TTabSheet
          Caption = #1604#1610#1587#1578
          ImageIndex = 1
          OnShow = TabSheet2Show
          object DBGFromORG: TYDBGrid
            Left = 0
            Top = 0
            Width = 364
            Height = 343
            Cursor = crHandPoint
            Align = alClient
            DataSource = Dlist
            Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit]
            ReadOnly = True
            TabOrder = 0
            TitleFont.Charset = ARABIC_CHARSET
            TitleFont.Color = clWindowText
            TitleFont.Height = -11
            TitleFont.Name = 'Tahoma'
            TitleFont.Style = []
            OnDrawColumnCell = DBGFromORGDrawColumnCell
            YeganehColor = True
            YeganehFinish = False
            PageNumber = False
            RecordNumber = False
            HasTime = False
            Oriention = poPortrait
            HasDate = False
            HasIndex = False
            PrintTitle = #1593#1606#1608#1575#1606
            InvertFarsiDate = True
            TitleSort = True
            AutoInsert = False
            FooterFields = 'Count'
            Columns = <
              item
                Expanded = False
                FieldName = 'Place'
                Title.Alignment = taCenter
                Title.Caption = #1605#1705#1575#1606
                Width = 53
                Visible = True
              end
              item
                Color = 16434943
                Expanded = False
                FieldName = 'Title'
                Title.Alignment = taCenter
                Title.Caption = #1593#1606#1608#1575#1606
                Width = 140
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'Notes'
                Title.Alignment = taCenter
                Title.Caption = #1578#1608#1590#1610#1581#1575#1578
                Width = 133
                Visible = True
              end>
          end
        end
      end
      object Panel1: TPanel
        Left = 1
        Top = 1
        Width = 372
        Height = 27
        Align = alTop
        BevelOuter = bvNone
        TabOrder = 1
        DesignSize = (
          372
          27)
        object SpeedButton1: TAdvGlowButton
          Left = 228
          Top = 2
          Width = 67
          Height = 22
          Cursor = crHandPoint
          Anchors = [akTop, akRight]
          Caption = #1604#1610#1587#1578#1610
          ImageIndex = 95
          Images = Dm.ImageList_MainNew
          NotesFont.Charset = DEFAULT_CHARSET
          NotesFont.Color = clWindowText
          NotesFont.Height = -11
          NotesFont.Name = 'Tahoma'
          NotesFont.Style = []
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
          GroupIndex = 1
        end
        object SpeedButton2: TAdvGlowButton
          Left = 298
          Top = 2
          Width = 67
          Height = 22
          Cursor = crHandPoint
          Anchors = [akTop, akRight]
          Caption = ' '#1583#1585#1582#1578#1610
          ImageIndex = 96
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
          Down = True
          GroupIndex = 1
        end
        object SBCollapse: TAdvGlowButton
          Left = 5
          Top = 1
          Width = 23
          Height = 22
          Hint = #1576#1575#1586' '#1705#1585#1583#1606' '#1578#1605#1575#1605#1610' '#1711#1585#1607' '#1607#1575
          ImageIndex = 94
          Images = Dm.ImageList_MainNew
          NotesFont.Charset = DEFAULT_CHARSET
          NotesFont.Color = clWindowText
          NotesFont.Height = -11
          NotesFont.Name = 'Tahoma'
          NotesFont.Style = []
          ParentShowHint = False
          ShowHint = True
          TabOrder = 2
          OnClick = SBCollapseClick
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
        object SBExpand: TAdvGlowButton
          Left = 29
          Top = 1
          Width = 23
          Height = 22
          Hint = #1576#1587#1578#1606' '#1578#1605#1575#1605#1610' '#1711#1585#1607' '#1607#1575
          ImageIndex = 93
          Images = Dm.ImageList_MainNew
          NotesFont.Charset = DEFAULT_CHARSET
          NotesFont.Color = clWindowText
          NotesFont.Height = -11
          NotesFont.Name = 'Tahoma'
          NotesFont.Style = []
          ParentShowHint = False
          ShowHint = True
          TabOrder = 3
          OnClick = SBExpandClick
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
    object Panel5: TxpPanel
      Left = 375
      Top = 38
      Width = 130
      Height = 412
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
      Align = alRight
      TabOrder = 3
      DesignSize = (
        128
        410)
      object LblPaste: TLabel
        Left = 9
        Top = 281
        Width = 112
        Height = 41
        Anchors = [akTop, akRight]
        AutoSize = False
        Caption = 'LblPaste'
        Font.Charset = ARABIC_CHARSET
        Font.Color = clRed
        Font.Height = -12
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        Visible = False
        WordWrap = True
      end
      object BBOK: TAdvGlowButton
        Left = 30
        Top = 15
        Width = 75
        Height = 25
        Cursor = crHandPoint
        Anchors = [akTop, akRight]
        Caption = '    '#1578#1575#1610#1610#1583
        Default = True
        Font.Charset = ARABIC_CHARSET
        Font.Color = clNavy
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ImageIndex = 31
        Images = Dm.ImageList_MainNew
        ModalResult = 1
        NotesFont.Charset = DEFAULT_CHARSET
        NotesFont.Color = clWindowText
        NotesFont.Height = -11
        NotesFont.Name = 'Tahoma'
        NotesFont.Style = []
        ParentFont = False
        TabOrder = 0
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
      object BBCancel: TAdvGlowButton
        Left = 30
        Top = 44
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
        ImageIndex = 90
        Images = Dm.ImageList_MainNew
        NotesFont.Charset = DEFAULT_CHARSET
        NotesFont.Color = clWindowText
        NotesFont.Height = -11
        NotesFont.Name = 'Tahoma'
        NotesFont.Style = []
        ParentFont = False
        TabOrder = 1
        OnClick = BBCancelClick
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
      object BBInsert: TAdvGlowButton
        Left = 30
        Top = 86
        Width = 75
        Height = 25
        Cursor = crHandPoint
        Anchors = [akTop, akRight]
        Caption = '   '#1580#1583#1610#1583
        Font.Charset = ARABIC_CHARSET
        Font.Color = clNavy
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ImageIndex = 60
        Images = Dm.ImageList_MainNew
        NotesFont.Charset = DEFAULT_CHARSET
        NotesFont.Color = clWindowText
        NotesFont.Height = -11
        NotesFont.Name = 'Tahoma'
        NotesFont.Style = []
        ParentFont = False
        TabOrder = 2
        OnClick = BBInsertClick
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
      object DeleteBtn: TAdvGlowButton
        Left = 30
        Top = 141
        Width = 75
        Height = 25
        Cursor = crHandPoint
        Anchors = [akTop, akRight]
        Caption = '   '#1581#1584#1601
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
        TabOrder = 3
        OnClick = DeleteBtnClick
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
      object BBEdit: TAdvGlowButton
        Left = 30
        Top = 113
        Width = 75
        Height = 25
        Cursor = crHandPoint
        Anchors = [akTop, akRight]
        Caption = #1608#1610#1585#1575#1610#1588
        Font.Charset = ARABIC_CHARSET
        Font.Color = clNavy
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ImageIndex = 37
        Images = Dm.ImageList_MainNew
        NotesFont.Charset = DEFAULT_CHARSET
        NotesFont.Color = clWindowText
        NotesFont.Height = -11
        NotesFont.Name = 'Tahoma'
        NotesFont.Style = []
        ParentFont = False
        TabOrder = 4
        OnClick = BBEditClick
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
    Left = 120
    Top = 176
  end
  inherited ActionList: TActionList
    Left = 280
    Top = 248
  end
  inherited Grid_PopupMenu: TPopupMenu
    Left = 279
    Top = 196
  end
  inherited Timer1sssss: TTimer
    Left = 40
    Top = 152
  end
  object ActionManager1: TActionManager
    ActionBars.SessionCount = 113
    ActionBars = <
      item
        Items = <
          item
            Caption = #1585#1705#1608#1585#1583
          end
          item
            Action = AClose
            ShortCut = 27
          end>
        AutoSize = False
      end>
    Images = Dm.LetterImages
    Left = 280
    Top = 144
    StyleName = 'XP Style'
    object AClose: TAction
      Tag = 2
      Category = #1585#1705#1608#1585#1583
      Caption = #1582#1585#1608#1580
      ShortCut = 27
      OnExecute = ACloseExecute
    end
    object AInsert: TAction
      Tag = 4
      Category = #1585#1705#1608#1585#1583
      Caption = #1580#1583#1610#1583
      ImageIndex = 16
      ShortCut = 45
      OnExecute = AInsertExecute
    end
    object Apost: TAction
      Tag = 5
      Category = #1585#1705#1608#1585#1583
      Caption = #1584#1582#1610#1585#1607
      ImageIndex = 40
      ShortCut = 113
      OnExecute = ApostExecute
    end
    object Adelete: TAction
      Tag = 6
      Category = #1585#1705#1608#1585#1583
      Caption = #1581#1584#1601
      ImageIndex = 29
      ShortCut = 16430
      OnExecute = AdeleteExecute
    end
    object AEdit: TAction
      Tag = 3
      Category = #1585#1705#1608#1585#1583
      Caption = #1608#1610#1585#1575#1610#1588
      OnExecute = AEditExecute
    end
  end
  object Dlist: TDataSource
    Left = 176
    Top = 176
  end
  object Get_ArchiveFolder_ByAccess_And_Title: TADOStoredProc
    Connection = Dm.YeganehConnection
    CursorType = ctStatic
    AfterScroll = Get_ArchiveFolder_ByAccess_And_TitleAfterScroll
    ProcedureName = 'Get_ArchiveFolder_ByAccessAndTitle;1'
    Parameters = <
      item
        Name = '@RETURN_VALUE'
        DataType = ftInteger
        Direction = pdReturnValue
        Precision = 10
        Value = 0
      end
      item
        Name = '@userID'
        Attributes = [paNullable]
        DataType = ftInteger
        Precision = 10
        Value = 0
      end
      item
        Name = '@SecID'
        Attributes = [paNullable]
        DataType = ftInteger
        Precision = 10
        Value = 0
      end
      item
        Name = '@ArchiveCenterID'
        Attributes = [paNullable]
        DataType = ftInteger
        Precision = 10
        Value = 1
      end
      item
        Name = '@like'
        Attributes = [paNullable]
        DataType = ftWideString
        Size = 100
        Value = ' '
      end>
    Left = 101
    Top = 245
    object Get_ArchiveFolder_ByAccess_And_TitleFolderID: TAutoIncField
      FieldName = 'FolderID'
      ReadOnly = True
    end
    object Get_ArchiveFolder_ByAccess_And_TitleParentFolderID: TIntegerField
      FieldName = 'ParentFolderID'
    end
    object Get_ArchiveFolder_ByAccess_And_TitleTitle: TWideStringField
      FieldName = 'Title'
      Size = 100
    end
    object Get_ArchiveFolder_ByAccess_And_TitleUserID: TIntegerField
      FieldName = 'UserID'
    end
    object Get_ArchiveFolder_ByAccess_And_TitleNotes: TWideStringField
      FieldName = 'Notes'
      Size = 500
    end
    object Get_ArchiveFolder_ByAccess_And_TitlePlace: TWideStringField
      FieldName = 'Place'
      Size = 100
    end
    object Get_ArchiveFolder_ByAccess_And_TitleArchiveCenterID: TIntegerField
      FieldName = 'ArchiveCenterID'
    end
  end
  object Get_ArchiveFolder_byUserID_and_Title: TADOStoredProc
    Connection = Dm.YeganehConnection
    CursorType = ctStatic
    AfterScroll = Get_ArchiveFolder_byUserID_and_TitleAfterScroll
    ProcedureName = 'get_ArchiveFolder_byUserID_and_Title;1'
    Parameters = <
      item
        Name = '@RETURN_VALUE'
        DataType = ftInteger
        Direction = pdReturnValue
        Precision = 10
        Value = 0
      end
      item
        Name = '@userID'
        Attributes = [paNullable]
        DataType = ftInteger
        Precision = 10
        Value = 0
      end
      item
        Name = '@like'
        Attributes = [paNullable]
        DataType = ftWideString
        Size = 100
        Value = ' '
      end
      item
        Name = '@ArchiveCenterID'
        Attributes = [paNullable]
        DataType = ftInteger
        Precision = 10
        Value = 1
      end>
    Left = 101
    Top = 293
    object Get_ArchiveFolder_byUserID_and_TitleFolderID: TAutoIncField
      FieldName = 'FolderID'
      ReadOnly = True
    end
    object Get_ArchiveFolder_byUserID_and_TitleParentFolderID: TIntegerField
      FieldName = 'ParentFolderID'
    end
    object Get_ArchiveFolder_byUserID_and_TitleTitle: TWideStringField
      FieldName = 'Title'
      Size = 100
    end
    object Get_ArchiveFolder_byUserID_and_TitleUserID: TIntegerField
      FieldName = 'UserID'
    end
    object Get_ArchiveFolder_byUserID_and_TitleNotes: TWideStringField
      FieldName = 'Notes'
      Size = 500
    end
    object Get_ArchiveFolder_byUserID_and_TitlePlace: TWideStringField
      FieldName = 'Place'
      Size = 100
    end
    object Get_ArchiveFolder_byUserID_and_TitleArchiveCenterID: TIntegerField
      FieldName = 'ArchiveCenterID'
    end
  end
  object Get_ArchiveFolder_ByUserID: TADOStoredProc
    Connection = Dm.YeganehConnection
    CursorType = ctStatic
    LockType = ltBatchOptimistic
    ProcedureName = 'get_ArchiveFolder_byUserID;1'
    Parameters = <
      item
        Name = '@RETURN_VALUE'
        DataType = ftInteger
        Direction = pdReturnValue
        Precision = 10
        Value = 0
      end
      item
        Name = '@userID'
        Attributes = [paNullable]
        DataType = ftInteger
        Precision = 10
        Value = 0
      end
      item
        Name = '@SecID'
        Attributes = [paNullable]
        DataType = ftInteger
        Precision = 10
        Value = 0
      end
      item
        Name = '@ArchiveCenterID'
        Attributes = [paNullable]
        DataType = ftInteger
        Precision = 10
        Value = 1
      end
      item
        Name = '@DabirOrKartable'
        Attributes = [paNullable]
        DataType = ftInteger
        Precision = 10
        Value = 1
      end>
    Left = 101
    Top = 349
    object Get_ArchiveFolder_ByUserIDFolderID: TIntegerField
      FieldName = 'FolderID'
    end
    object Get_ArchiveFolder_ByUserIDParentFolderID: TIntegerField
      FieldName = 'ParentFolderID'
    end
    object Get_ArchiveFolder_ByUserIDTitle: TWideStringField
      FieldName = 'Title'
      Size = 100
    end
    object Get_ArchiveFolder_ByUserIDUserID: TIntegerField
      FieldName = 'UserID'
    end
    object Get_ArchiveFolder_ByUserIDNotes: TWideStringField
      FieldName = 'Notes'
      Size = 500
    end
    object Get_ArchiveFolder_ByUserIDPlace: TWideStringField
      FieldName = 'Place'
      Size = 100
    end
    object Get_ArchiveFolder_ByUserIDArchiveCenterID: TIntegerField
      FieldName = 'ArchiveCenterID'
    end
  end
  object Get_ArchiveFolder_ByAccess: TADOStoredProc
    Connection = Dm.YeganehConnection
    ProcedureName = 'Get_ArchiveFolder_ByAccess;1'
    Parameters = <
      item
        Name = '@RETURN_VALUE'
        DataType = ftInteger
        Direction = pdReturnValue
        Precision = 10
        Value = 0
      end
      item
        Name = '@userID'
        Attributes = [paNullable]
        DataType = ftInteger
        Precision = 10
        Value = 0
      end
      item
        Name = '@SecID'
        Attributes = [paNullable]
        DataType = ftInteger
        Precision = 10
        Value = 0
      end>
    Left = 101
    Top = 405
    object Get_ArchiveFolder_ByAccessFolderID: TAutoIncField
      FieldName = 'FolderID'
      ReadOnly = True
    end
    object Get_ArchiveFolder_ByAccessParentFolderID: TIntegerField
      FieldName = 'ParentFolderID'
    end
    object Get_ArchiveFolder_ByAccessTitle: TWideStringField
      FieldName = 'Title'
      Size = 100
    end
    object Get_ArchiveFolder_ByAccessUserID: TIntegerField
      FieldName = 'UserID'
    end
    object Get_ArchiveFolder_ByAccessNotes: TWideStringField
      FieldName = 'Notes'
      Size = 500
    end
    object Get_ArchiveFolder_ByAccessPlace: TWideStringField
      FieldName = 'Place'
      Size = 100
    end
    object Get_ArchiveFolder_ByAccessArchiveCenterID: TIntegerField
      FieldName = 'ArchiveCenterID'
    end
  end
end
