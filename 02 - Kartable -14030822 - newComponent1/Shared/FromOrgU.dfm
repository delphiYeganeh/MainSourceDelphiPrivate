inherited FromOrgForm: TFromOrgForm
  Tag = 12
  Left = 440
  Top = 175
  BorderIcons = [biSystemMenu]
  Caption = #1670#1575#1585#1578' '#1587#1575#1586#1605#1575#1606#1610
  ClientHeight = 566
  ClientWidth = 542
  Constraints.MinHeight = 600
  Constraints.MinWidth = 550
  OldCreateOrder = True
  PixelsPerInch = 96
  TextHeight = 13
  object pnlMain: TPanel [0]
    Left = 0
    Top = 0
    Width = 542
    Height = 566
    Align = alClient
    ParentColor = True
    TabOrder = 0
    DesignSize = (
      542
      566)
    object Label10: TLabel
      Left = 483
      Top = 3
      Width = 48
      Height = 13
      Anchors = [akTop, akRight]
      Caption = #1587#1575#1586#1605#1575#1606' '#1607#1575
    end
    object pnlHead: TPanel
      Left = 1
      Top = 1
      Width = 540
      Height = 33
      Align = alTop
      ParentColor = True
      TabOrder = 0
      object SpeedButton1: TAdvGlowButton
        Left = 269
        Top = 1
        Width = 270
        Height = 31
        Cursor = crHandPoint
        Align = alRight
        Caption = #1604#1610#1587#1578#1610
        Font.Charset = ARABIC_CHARSET
        Font.Color = clNavy
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ImageIndex = 95
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
        Down = True
        GroupIndex = 1
      end
      object SpeedButton2: TAdvGlowButton
        Left = 1
        Top = 1
        Width = 268
        Height = 31
        Cursor = crHandPoint
        Align = alClient
        Caption = #1583#1585#1582#1578#1610
        Font.Charset = ARABIC_CHARSET
        Font.Color = clNavy
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ImageIndex = 96
        Images = Dm.ImageList_MainNew
        NotesFont.Charset = DEFAULT_CHARSET
        NotesFont.Color = clWindowText
        NotesFont.Height = -11
        NotesFont.Name = 'Tahoma'
        NotesFont.Style = []
        ParentFont = False
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
        GroupIndex = 1
      end
    end
    object GroupBox1: TGroupBox
      Left = 1
      Top = 490
      Width = 540
      Height = 75
      Align = alBottom
      Caption = #1575#1591#1604#1575#1593#1575#1578' '#1587#1575#1586#1605#1575#1606
      TabOrder = 1
      DesignSize = (
        540
        75)
      object Label9: TLabel
        Left = 494
        Top = 47
        Width = 38
        Height = 13
        Anchors = [akTop, akRight]
        Caption = #1605#1587#1574#1608#1604':'
      end
      object Label1: TLabel
        Left = 494
        Top = 21
        Width = 15
        Height = 13
        Anchors = [akTop, akRight]
        Caption = #1705#1583':'
        FocusControl = ECode
      end
      object Erespon: TEdit
        Left = 166
        Top = 43
        Width = 323
        Height = 21
        Anchors = [akLeft, akTop, akRight]
        Ctl3D = True
        ParentCtl3D = False
        ReadOnly = True
        TabOrder = 0
        OnEnter = TEditEnter
        OnExit = TEditExit
      end
      object ECode: TEdit
        Left = 404
        Top = 17
        Width = 86
        Height = 21
        Anchors = [akLeft, akTop, akRight]
        ReadOnly = True
        TabOrder = 1
        OnEnter = TEditEnter
        OnExit = TEditExit
      end
    end
    object Panel2: TPanel
      Left = 1
      Top = 34
      Width = 392
      Height = 456
      Align = alClient
      Caption = 'Panel2'
      ParentColor = True
      TabOrder = 2
      object PageControl: TPageControl
        Left = 1
        Top = 1
        Width = 390
        Height = 427
        ActivePage = TabSheet1
        Align = alClient
        BiDiMode = bdRightToLeft
        ParentBiDiMode = False
        TabHeight = 30
        TabOrder = 0
        TabWidth = 70
        object TabSheet1: TTabSheet
          Caption = #1583#1585#1582#1578#1610
          ImageIndex = 96
          OnShow = TabSheet1Show
          object FromOrganizationsTree: TTreeView
            Left = 0
            Top = 0
            Width = 382
            Height = 387
            Cursor = crHandPoint
            Align = alClient
            Images = Dm.LetterImages
            Indent = 19
            ReadOnly = True
            TabOrder = 0
            OnChange = FromOrganizationsTreeChange
            OnDblClick = FromOrganizationsTreeDblClick
            OnExpanding = FromOrganizationsTreeExpanding
            OnGetImageIndex = FromOrganizationsTreeGetImageIndex
          end
        end
        object TabSheet2: TTabSheet
          Caption = #1604#1610#1587#1578#1610
          ImageIndex = 95
          OnShow = TabSheet2Show
          object DBGFromORG: TYDBGrid
            Left = 0
            Top = 63
            Width = 382
            Height = 324
            Cursor = crHandPoint
            Align = alClient
            DataSource = DFromOrg
            Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit]
            TabOrder = 0
            TitleFont.Charset = ARABIC_CHARSET
            TitleFont.Color = clWindowText
            TitleFont.Height = -11
            TitleFont.Name = 'Tahoma'
            TitleFont.Style = []
            OnDrawColumnCell = DBGFromORGDrawColumnCell
            OnDblClick = FromOrganizationsTreeDblClick
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
                FieldName = 'code'
                ReadOnly = True
                Title.Alignment = taCenter
                Title.Caption = #1705#1583
                Width = 48
                Visible = True
              end
              item
                Color = 16434943
                Expanded = False
                FieldName = 'Title'
                ReadOnly = True
                Title.Alignment = taCenter
                Title.Caption = #1593#1606#1608#1575#1606
                Width = 126
                Visible = True
              end
              item
                Alignment = taRightJustify
                Expanded = False
                FieldName = 'ResponsibleStaffer'
                ReadOnly = True
                Title.Alignment = taCenter
                Title.Caption = #1605#1587#1574#1608#1604
                Width = 133
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'parentid'
                Title.Caption = #1705#1583' '#1576#1575#1604#1575#1578#1585
                Visible = False
              end>
          end
          object Panel5: TPanel
            Left = 0
            Top = 32
            Width = 382
            Height = 31
            Align = alTop
            BevelOuter = bvNone
            TabOrder = 1
            DesignSize = (
              382
              31)
            object Label2: TLabel
              Left = 337
              Top = 7
              Width = 35
              Height = 13
              Anchors = [akTop, akRight]
              Caption = #1580#1587#1578#1580#1608
            end
            object SEdit: TEdit
              Left = 8
              Top = 4
              Width = 324
              Height = 21
              Anchors = [akLeft, akTop, akRight]
              TabOrder = 0
              OnChange = SEditChange
            end
          end
          object pnlOrg: TPanel
            Left = 0
            Top = 0
            Width = 382
            Height = 32
            Align = alTop
            BevelOuter = bvNone
            TabOrder = 2
            DesignSize = (
              382
              32)
            object RBOuterOrg: TRadioButton
              Left = 122
              Top = 7
              Width = 89
              Height = 17
              Anchors = [akTop, akRight]
              Caption = #1576#1585#1608#1606' '#1587#1575#1586#1605#1575#1606#1610
              TabOrder = 0
              Visible = False
              OnClick = RBOuterOrgClick
            end
            object RBAllOrg: TRadioButton
              Left = 319
              Top = 7
              Width = 49
              Height = 17
              Anchors = [akTop, akRight]
              Caption = #1607#1605#1607
              Checked = True
              TabOrder = 1
              TabStop = True
              Visible = False
              OnClick = RBAllOrgClick
            end
            object RBInnerOrg: TRadioButton
              Left = 220
              Top = 7
              Width = 89
              Height = 17
              Anchors = [akTop, akRight]
              Caption = #1583#1585#1608#1606' '#1587#1575#1586#1605#1575#1606#1610
              TabOrder = 2
              Visible = False
              OnClick = RBInnerOrgClick
            end
          end
        end
      end
      object Panel4: TPanel
        Left = 1
        Top = 428
        Width = 390
        Height = 27
        Align = alBottom
        BevelOuter = bvNone
        ParentColor = True
        TabOrder = 1
        DesignSize = (
          390
          27)
        object Cut: TAdvGlowButton
          Left = 330
          Top = 2
          Width = 56
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
          Left = 272
          Top = 2
          Width = 56
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
        object SBExpand: TAdvGlowButton
          Left = 37
          Top = 2
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
          Left = 13
          Top = 2
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
    object Panel3: TPanel
      Left = 393
      Top = 34
      Width = 148
      Height = 456
      Align = alRight
      ParentColor = True
      TabOrder = 3
      DesignSize = (
        148
        456)
      object Image2: TImage
        Left = 44
        Top = 37
        Width = 62
        Height = 55
        Anchors = [akTop, akRight]
        Picture.Data = {
          0B546478504E47496D61676589504E470D0A1A0A0000000D4948445200000040
          000000400806000000AA6971DE0000000467414D410000B18F0BFC6105000000
          097048597300000B1300000B1301009A9C180000030F49444154785EED94B18D
          DD4010C5AE0377E5DC7DB94B17724E181018AE318182FD860830E30E9E127DBD
          BCBCBC147FBE7E7EFF4FF2597BEAC827CB67EDA9239F2C9FB5A78E7CB27CD69E
          3AF2C9F2597BEAC827CB67EDA9239F2C9FB5A78E7CB27CD69E3A62C9AEA1365A
          B23D75C4925D436DB4647BEA8825BB86DA68C9F6D4114B760DB5D192EDA92396
          EC1A6AA325DB53472CD935D4464BB6A78E58B2C18F5FBFBFFF25D9917A63C906
          B5D192EDA923966C50A32DD9917A63C906B5D192EDA923966C50A32DD9917A63
          C906B5D192EDA923966C50A32DD9917A63C906B5D192EDA923966C50A32DD991
          7A63C906B5D192EDA923966C50A32DD9917A63C906B5D192EDA923966C50A32D
          D9917A63C906B5D192EDA923966C50A32DD9917A63C906B5D192EDA92396EC1A
          6AA325DB53472CD935D4464BB6A78E58B26BA88D966C4F1DB164D7501B2DD99E
          3A62C906F5E3B26447EA8D251BD4464BB6A78E58B2418DB66447EA8D251BD446
          4BB6A78E58B2418DB66447EA8D251BD4464BB6A78E58B2418DB66447EA8D251B
          D4464BB6A78E58B2418DB66447EA8D251BD4464BB6A78E58B2418DB66447EA8D
          251BD4464BB6A78E58B2418DB66447EA8D251BD4464BB6A78E58B2418DB66447
          EA8D251BD4464BB6A78E58B26BA88D966C4F1DB164D7501B2DD99E3A62C9AEA1
          365AB23D75C4925D436DB4647BEA88251BD48FCB921DA937966C501B2DD99E3A
          62C90635DA921DA937966C501B2DD99E3A62C90635DA921DA937966C501B2DD9
          9E3A62C90635DA921DA937966C501B2DD99E3A62C90635DA921DA937966C501B
          2DD99E3A62C90635DA921DA937966C501B2DD99E3A62C90635DA921DA937966C
          501B2DD99E3A62C90635DA921DA937966C501B2DD99E3A62C91EA73EDA920D6A
          A325DB53472CD9E3D4475BB2416DB4647BEA88257B9CFA684B36A88D966C4F1D
          B1648F531F6DC906B5D192EDA92396EC71EAA32DD9A0365AB23D75C4923D4E7D
          B4251BD4464BB6A78E58B2C7A98FB66483DA68C9F6D4114BF638F5D1966C501B
          2DD99E3A62C91EA73EDA920D6AA325DB53472CD9E3D4475BB2416DB4642F2F2F
          2FE2EBEB2F7F8373B49B8ABBF20000000049454E44AE426082}
        Stretch = True
        Transparent = True
      end
      object Label5: TLabel
        Left = 22
        Top = 309
        Width = 98
        Height = 13
        Anchors = [akTop, akRight]
        Caption = #1578#1585#1578#1610#1576' '#1576#1585' '#1575#1587#1575#1587' '#1593#1606#1608#1575#1606
      end
      object Label3: TLabel
        Left = 61
        Top = 328
        Width = 59
        Height = 13
        Anchors = [akTop, akRight]
        Caption = #1670#1575#1585#1578' '#1583#1575#1582#1604#1610' '
        Visible = False
      end
      object Label4: TLabel
        Left = 6
        Top = 346
        Width = 114
        Height = 13
        Anchors = [akTop, akRight]
        Caption = #1587#1575#1586#1605#1575#1606' '#1607#1575#1610' '#1591#1585#1601' '#1605#1603#1575#1578#1576#1607
        Visible = False
      end
      object LblPaste: TLabel
        Left = 8
        Top = 376
        Width = 129
        Height = 63
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
      object Label6: TLabel
        Left = 48
        Top = 8
        Width = 57
        Height = 13
        Anchors = [akTop, akRight]
        Caption = #1587#1575#1586#1605#1575#1606' '#1607#1575
        Font.Charset = ARABIC_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object BBOK: TAdvGlowButton
        Left = 39
        Top = 106
        Width = 82
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
        Left = 39
        Top = 132
        Width = 82
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
        Left = 39
        Top = 178
        Width = 82
        Height = 25
        Cursor = crHandPoint
        Action = AInsert
        Anchors = [akTop, akRight]
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
      object EditBtn: TAdvGlowButton
        Left = 39
        Top = 205
        Width = 82
        Height = 25
        Cursor = crHandPoint
        Hint = 'Edit'
        Anchors = [akTop, akRight]
        Caption = #1608#1610#1585#1575#1610#1588
        Font.Charset = ARABIC_CHARSET
        Font.Color = clNavy
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ImageIndex = 2
        Images = Dm.ImageList_MainNew
        NotesFont.Charset = DEFAULT_CHARSET
        NotesFont.Color = clWindowText
        NotesFont.Height = -11
        NotesFont.Name = 'Tahoma'
        NotesFont.Style = []
        ParentFont = False
        TabOrder = 3
        OnClick = EditBtnClick
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
      object deleteBtn: TAdvGlowButton
        Left = 39
        Top = 233
        Width = 82
        Height = 25
        Cursor = crHandPoint
        Action = Adelete
        Anchors = [akTop, akRight]
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
      object orderByTitle: TCheckBox
        Left = 121
        Top = 308
        Width = 16
        Height = 17
        Cursor = crHandPoint
        Anchors = [akTop, akRight]
        TabOrder = 5
        OnClick = innerOrgClick
      end
      object innerOrg: TCheckBox
        Left = 121
        Top = 325
        Width = 16
        Height = 17
        Cursor = crHandPoint
        Anchors = [akTop, akRight]
        Checked = True
        State = cbChecked
        TabOrder = 6
        Visible = False
        OnClick = innerOrgClick
      end
      object outerOrg: TCheckBox
        Left = 124
        Top = 343
        Width = 13
        Height = 17
        Cursor = crHandPoint
        Anchors = [akTop, akRight]
        TabOrder = 7
        Visible = False
        OnClick = innerOrgClick
      end
      object BitBtn1: TAdvGlowButton
        Left = 40
        Top = 261
        Width = 82
        Height = 25
        Action = acUserGroup
        ImageIndex = 106
        Images = Dm.ImageList_MainNew
        NotesFont.Charset = DEFAULT_CHARSET
        NotesFont.Color = clWindowText
        NotesFont.Height = -11
        NotesFont.Name = 'Tahoma'
        NotesFont.Style = []
        TabOrder = 8
        Visible = False
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
        Enabled = False
      end
    end
  end
  inherited DSForm: TDataSource
    DataSet = PFromOrg
    Left = 37
    Top = 166
  end
  inherited ActionList: TActionList
    Left = 308
    Top = 251
  end
  inherited Grid_PopupMenu: TPopupMenu
    Left = 284
    Top = 182
  end
  inherited Timer1sssss: TTimer
    Left = 136
  end
  object ActionManager1: TActionManager
    ActionBars.SessionCount = 113
    ActionBars = <
      item
        Items = <
          item
            Items = <
              item
                Action = DataSetEdit1
                ImageIndex = 7
                ShortCut = 115
              end>
            Caption = #1585#1705#1608#1585#1583
          end
          item
            Action = AClose
            ShortCut = 27
          end>
        AutoSize = False
      end>
    Images = Dm.LetterImages
    Left = 28
    Top = 281
    StyleName = 'XP Style'
    object DataSetEdit1: TDataSetEdit
      Tag = 1
      Category = #1585#1705#1608#1585#1583
      Caption = #1608#1610#1585#1575#1610#1588' '
      Hint = 'Edit'
      ImageIndex = 48
      ShortCut = 115
      DataSource = DSForm
    end
    object AClose: TAction
      Tag = 2
      Caption = #1582#1585#1608#1580
      ShortCut = 27
      OnExecute = ACloseExecute
    end
    object Action2: TAction
      Tag = 3
      Category = #1585#1705#1608#1585#1583
      Caption = #1604#1610#1587#1578
      ImageIndex = 10
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
    object Action1: TAction
      Category = #1585#1705#1608#1585#1583
      Caption = #1578#1594#1610#1610#1585' '#1605#1583#1610#1585#1610#1578
      ShortCut = 16499
    end
    object acUserGroup: TAction
      Category = #1585#1705#1608#1585#1583
      Caption = #1575#1606#1578#1589#1575#1576' '#1711#1585#1608#1607
      ImageIndex = 5
      OnExecute = acUserGroupExecute
    end
  end
  object FromOrg: TADODataSet
    Connection = Dm.YeganehConnection
    CursorType = ctStatic
    AfterScroll = FromOrgAfterScroll
    CommandText = 
      'select ID, code,Title, ResponsibleStaffer ,parentid from FromOrg' +
      'anizations'#13#10'where Title like '#39'%'#39#13#10'order by title'
    Parameters = <>
    Left = 118
    Top = 209
    object FromOrgTitle: TWideStringField
      FieldName = 'Title'
      Size = 100
    end
    object FromOrgResponsibleStaffer: TWideStringField
      FieldName = 'ResponsibleStaffer'
      Size = 50
    end
    object FromOrgparentid: TIntegerField
      FieldName = 'parentid'
    end
    object FromOrgID: TAutoIncField
      FieldName = 'ID'
      ReadOnly = True
    end
    object FromOrgcode: TWideStringField
      DisplayWidth = 50
      FieldName = 'code'
      Size = 50
    end
  end
  object DFromOrg: TDataSource
    DataSet = FromOrg
    Left = 110
    Top = 174
  end
  object PFromOrg: TADODataSet
    Connection = Dm.YeganehConnection
    CursorType = ctStatic
    CommandText = 
      'select ID, Title, ResponsibleStaffer,Code from FromOrganizations' +
      #13#10'where  ParentID= :ParentID order by Title'
    Parameters = <
      item
        Name = 'ParentID'
        Attributes = [paSigned]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = 1
      end>
    Left = 28
    Top = 201
    object PFromOrgID: TAutoIncField
      FieldName = 'ID'
      ReadOnly = True
    end
    object PFromOrgTitle: TWideStringField
      FieldName = 'Title'
      Size = 100
    end
  end
end
