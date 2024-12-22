inherited ArchiveOrganizeForm: TArchiveOrganizeForm
  Tag = 12
  Left = 684
  Top = 199
  BorderIcons = [biSystemMenu]
  BorderStyle = bsDialog
  Caption = #1586#1608#1606#1705#1606' '#1607#1575#1610' '#1576#1575#1610#1711#1575#1606#1610
  ClientHeight = 519
  ClientWidth = 573
  Constraints.MinHeight = 500
  Constraints.MinWidth = 480
  OldCreateOrder = True
  PixelsPerInch = 96
  TextHeight = 13
  object pnlMain: TPanel [0]
    Left = 0
    Top = 0
    Width = 573
    Height = 519
    Align = alClient
    ParentColor = True
    TabOrder = 0
    DesignSize = (
      573
      519)
    object Panel2: TPanel
      Left = 1
      Top = 1
      Width = 571
      Height = 37
      Align = alTop
      ParentColor = True
      TabOrder = 0
      DesignSize = (
        571
        37)
      object Label2: TLabel
        Left = 526
        Top = 9
        Width = 35
        Height = 13
        Anchors = [akTop, akRight]
        Caption = #1580#1587#1578#1580#1608
      end
      object DBText1: TDBText
        Left = 71
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
        Visible = False
      end
      object Label3: TLabel
        Left = 217
        Top = 8
        Width = 90
        Height = 13
        Anchors = [akTop, akRight]
        Caption = #1586#1608#1606#1705#1606' '#1575#1606#1578#1582#1575#1576' '#1588#1583#1607' :'
        Visible = False
      end
      object SEdit: TEdit
        Left = 16
        Top = 7
        Width = 504
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
      Width = 441
      Height = 381
      Align = alClient
      ParentColor = True
      TabOrder = 1
      object PageControl1: TPageControl
        Left = 1
        Top = 1
        Width = 439
        Height = 379
        ActivePage = TabSheet1
        Align = alClient
        TabHeight = 21
        TabOrder = 0
        object TabSheet1: TTabSheet
          Caption = #1583#1585#1582#1578#1610
          OnShow = TabSheet1Show
          object ArchiveTree: TDBTreeView
            Left = 0
            Top = 0
            Width = 431
            Height = 318
            Align = alClient
            Indent = 19
            PopupMenu = PopupMenu_Right
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
            Top = 318
            Width = 431
            Height = 30
            Align = alBottom
            ParentColor = True
            TabOrder = 1
            DesignSize = (
              431
              30)
            object LblPaste: TLabel
              Left = 49
              Top = 5
              Width = 321
              Height = 21
              AutoSize = False
              Caption = 'LblPaste'
              Font.Charset = ARABIC_CHARSET
              Font.Color = clRed
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = []
              ParentFont = False
              Visible = False
              WordWrap = True
            end
            object Cut: TAdvGlowButton
              Left = 372
              Top = 4
              Width = 56
              Height = 22
              Cursor = crHandPoint
              Hint = 'Ctrl+C'
              Anchors = [akTop, akRight]
              Caption = 'Cut'
              ImageIndex = 89
              Images = Dm.ImageList_MainNew
              NotesFont.Charset = DEFAULT_CHARSET
              NotesFont.Color = clWindowText
              NotesFont.Height = -11
              NotesFont.Name = 'Tahoma'
              NotesFont.Style = []
              ParentShowHint = False
              ShowHint = True
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
              Left = 372
              Top = 4
              Width = 56
              Height = 22
              Cursor = crHandPoint
              Hint = 'Ctrl+V'
              Anchors = [akTop, akRight]
              Caption = 'Paste'
              ImageIndex = 60
              Images = Dm.ImageList_MainNew
              NotesFont.Charset = DEFAULT_CHARSET
              NotesFont.Color = clWindowText
              NotesFont.Height = -11
              NotesFont.Name = 'Tahoma'
              NotesFont.Style = []
              ParentShowHint = False
              ShowHint = True
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
            object SBExpand: TAdvGlowButton
              Left = 27
              Top = 3
              Width = 23
              Height = 22
              Hint = #1576#1587#1578#1606' '#1578#1605#1575#1605#1610' '#1711#1585#1607' '#1607#1575
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
            object SBCollapse: TAdvGlowButton
              Left = 3
              Top = 3
              Width = 23
              Height = 22
              Hint = #1576#1575#1586' '#1705#1585#1583#1606' '#1578#1605#1575#1605#1610' '#1711#1585#1607' '#1607#1575
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
          end
        end
        object TabSheet2: TTabSheet
          Caption = #1604#1610#1587#1578
          ImageIndex = 1
          OnShow = TabSheet2Show
          object DBGFromORG: TYDBGrid
            Left = 0
            Top = 0
            Width = 366
            Height = 345
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
    end
    object Panel5: TPanel
      Left = 442
      Top = 38
      Width = 130
      Height = 381
      Align = alRight
      ParentColor = True
      TabOrder = 2
      object Panel6: TxpPanel
        Left = 1
        Top = 26
        Width = 128
        Height = 354
        StartColor = 16511469
        EndColor = 16244694
        FillDirection = fdLeftToRight
        TitleShow = False
        Caption = 'xpPanel'
        Maximized = True
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
        Align = alClient
        TabOrder = 0
        DesignSize = (
          126
          352)
        object Image1: TImage
          Left = 31
          Top = 15
          Width = 62
          Height = 55
          Picture.Data = {
            0B546478504E47496D61676589504E470D0A1A0A0000000D4948445200000040
            000000400806000000AA6971DE0000000467414D410000B18F0BFC6105000000
            097048597300000B1300000B1301009A9C180000034249444154785EED97316F
            D35014855F056523012460E33720F1039828EE004DA8B2B0B1206006D6329624
            12330B1B3F82890910829181198440A241252303E63D7AD21EF2CE05D4D8957B
            E54FFA8638E7DAF7A46EE38696969616A6DB1F970BDB1BFDE8F4862B38E5E142
            16DA879DFE78DA5D1B9EC7690F0FAACC7E8D1FC2A79383CD7338F5E1401559C4
            4E6FF4AEBBF6E8044EDF7C5489458D77C2F330D838864B341B55A0127BE3A721
            944BB84C7391CB57E6E8012ED35CF4E25539FA19BD814B3513BDF89E886574AE
            0DAFEF14D473BB36FD19412E4D222649B7B89A99B7D1CF086A6116318372A9D3
            1B3F5173F336F619412DCB226673F3F172CC3D9B9F5336F219412DCA22E61755
            9A45CC2FAA348B985F54691631BFA8D29E444D1B35E449D4B451439E444D1B35
            E449D4B451439E444D1B35E449D4B451439E444D1B35E449D4AC0F75511631BF
            A8D22C627E51A559C4FCA24AB3883517B5348BD87FB1158A8DADB0BA89970782
            DA9945CC460DB188FD934958BD1F2D9307F921A89D59C46CD4108BD85F9984CB
            F766E5F73E84E221DEAE15B5338B988D1A6211339984E2EE7CF999F14E182256
            1B6A6716311B35C42266A28AB388D586DA9945CC460DB18899A8D22C62B5A176
            6611B351432C6226AA348B586DA89D59C46CD4108B98892ACD22561B6A671631
            1B35C42266A24AB388D586DA9945CC460DB18849BE842B675569366510AF05B5
            338B988D1A6211CB28C385E5F815F85695FED3E24DCA62AC72D4CE2C62366A88
            452CE35B28EEE8C2B9317B1B6395A3766611B351432C6219B1D8ABF9A296F181
            E825C62A47EDCC2266A38658C432E2AD3D5565B5C5146395A3766611B351432C
            6219B1D8F759C1F813FE105DFF1AAE1E4FC6FF03FAF1F87B7A7F1B6395A37666
            11B351432C6219B1D8EF5F81547E3BAC9CC2E15DD2B1F8FEC79D4CF102872B47
            EDCC2266A38658C432D21F367C00EB3894116FFD41CA446FE150E5A89D59C46C
            D4108B5846192E1E4D5F71E996C7A18CF893EFC4F2AF5316872A47EDCC2266A3
            8658C4249FC3A53365181CC1CB8CF4DE3414A7F1B216D4CE2C62366A8845ACB1
            A89D59C46CD4902751D3460D7912356DD4902751D3460D7912356DD4902751D3
            460D7912356DD4902751D3460D7912355B5A5A5A2221FC02A6B7B50CA0F48DD4
            0000000049454E44AE426082}
          Stretch = True
          Transparent = True
        end
        object Label5: TLabel
          Left = 49
          Top = 79
          Width = 67
          Height = 26
          Anchors = [akTop, akRight]
          Caption = #1586#1608#1606#1705#1606' '#13#10#1575#1606#1578#1582#1575#1576' '#1588#1583#1607' :'
          Font.Charset = ARABIC_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
          Transparent = True
          WordWrap = True
        end
        object DBText2: TDBText
          Left = 8
          Top = 110
          Width = 111
          Height = 59
          Anchors = [akTop, akRight]
          DataField = 'Title'
          DataSource = DSForm
          Font.Charset = ARABIC_CHARSET
          Font.Color = clMaroon
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
          Transparent = True
          WordWrap = True
        end
        object BBCancel: TAdvGlowButton
          Left = 30
          Top = 305
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
        object BBEdit: TAdvGlowButton
          Left = 30
          Top = 198
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
          TabOrder = 1
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
        object BBInsert: TAdvGlowButton
          Left = 30
          Top = 171
          Width = 75
          Height = 25
          Cursor = crHandPoint
          Anchors = [akTop, akRight]
          Caption = '    '#1580#1583#1610#1583
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
        object BBOK: TAdvGlowButton
          Left = 30
          Top = 277
          Width = 75
          Height = 25
          Cursor = crHandPoint
          Anchors = [akTop, akRight]
          Caption = '     '#1578#1575#1610#1610#1583
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
          TabOrder = 3
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
        object DeleteBtn: TAdvGlowButton
          Left = 30
          Top = 226
          Width = 75
          Height = 25
          Cursor = crHandPoint
          Anchors = [akTop, akRight]
          Caption = '    '#1581#1584#1601
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
          TabOrder = 4
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
      end
      object Panel9: TPanel
        Left = 1
        Top = 1
        Width = 128
        Height = 25
        Align = alTop
        ParentColor = True
        TabOrder = 1
      end
    end
    object Panel7: TPanel
      Left = 1
      Top = 419
      Width = 571
      Height = 99
      Align = alBottom
      ParentColor = True
      TabOrder = 3
      object GroupBox1: TGroupBox
        Left = 1
        Top = 1
        Width = 569
        Height = 97
        Align = alClient
        Caption = #1575#1591#1604#1575#1593#1575#1578' '
        TabOrder = 0
        DesignSize = (
          569
          97)
        object Label4: TLabel
          Left = 538
          Top = 48
          Width = 22
          Height = 13
          Anchors = [akTop, akRight]
          Caption = #1605#1705#1575#1606
          FocusControl = DBEPlace
        end
        object Label6: TLabel
          Left = 534
          Top = 21
          Width = 26
          Height = 13
          Anchors = [akTop, akRight]
          Caption = #1593#1606#1608#1575#1606
        end
        object Label1: TLabel
          Left = 531
          Top = 72
          Width = 29
          Height = 13
          Anchors = [akTop, akRight]
          Caption = #1578#1608#1590#1610#1581
          FocusControl = DBENotes
        end
        object DBEPlace: TDBEdit
          Left = 16
          Top = 42
          Width = 512
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
          Left = 16
          Top = 17
          Width = 512
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
          Left = 16
          Top = 68
          Width = 512
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
    end
    object Panel1: TPanel
      Left = 1
      Top = 38
      Width = 571
      Height = 25
      Anchors = [akLeft, akTop, akRight]
      BevelOuter = bvNone
      ParentColor = True
      TabOrder = 4
      object SpeedButton1: TAdvGlowButton
        Left = 285
        Top = 0
        Width = 286
        Height = 25
        Cursor = crHandPoint
        Align = alClient
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
        Left = 0
        Top = 0
        Width = 285
        Height = 25
        Cursor = crHandPoint
        Align = alLeft
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
  object PopupMenu_Right: TPopupMenu
    Tag = 11
    Left = 196
    Top = 294
    object C1: TMenuItem
      Caption = 'Cut'
      ShortCut = 16451
      OnClick = C1Click
    end
    object p1: TMenuItem
      Caption = 'Past'
      ShortCut = 16470
      OnClick = p1Click
    end
  end
end
