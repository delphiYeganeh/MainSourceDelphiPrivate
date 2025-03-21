inherited FromOrgForm: TFromOrgForm
  Tag = 12
  Left = 712
  Top = 253
  BorderIcons = [biSystemMenu]
  BorderStyle = bsDialog
  Caption = #1670#1575#1585#1578' '#1587#1575#1586#1605#1575#1606#1610
  ClientHeight = 446
  ClientWidth = 508
  Constraints.MinHeight = 412
  Constraints.MinWidth = 481
  OldCreateOrder = True
  PixelsPerInch = 96
  TextHeight = 13
  object pnlMain: TPanel [0]
    Left = 0
    Top = 0
    Width = 508
    Height = 446
    Align = alClient
    ParentColor = True
    TabOrder = 0
    DesignSize = (
      508
      446)
    object Panel3: TPanel
      Left = 1
      Top = 1
      Width = 359
      Height = 359
      Align = alClient
      Caption = 'Panel3'
      ParentColor = True
      TabOrder = 0
      object PageControl: TPageControl
        Left = 1
        Top = 1
        Width = 357
        Height = 357
        ActivePage = TabSheet2
        Align = alClient
        TabHeight = 21
        TabOrder = 0
        TabWidth = 40
        object TabSheet1: TTabSheet
          Caption = 'tree'
          OnShow = TabSheet1Show
          object FromOrganizationsTree: TTreeView
            Left = 0
            Top = 0
            Width = 349
            Height = 326
            Align = alClient
            BiDiMode = bdRightToLeft
            Images = Dm.LetterImages
            Indent = 19
            ParentBiDiMode = False
            ReadOnly = True
            TabOrder = 0
            OnChange = FromOrganizationsTreeChange
            OnDblClick = FromOrganizationsTreeDblClick
            OnExpanding = FromOrganizationsTreeExpanding
            OnGetImageIndex = FromOrganizationsTreeGetImageIndex
          end
        end
        object TabSheet2: TTabSheet
          Caption = 'list'
          ImageIndex = 1
          OnShow = TabSheet2Show
          object DBGFromORG: TYDBGrid
            Left = 0
            Top = 33
            Width = 349
            Height = 293
            Cursor = crHandPoint
            Align = alClient
            DataSource = DFromOrg
            TabOrder = 0
            TitleFont.Charset = ARABIC_CHARSET
            TitleFont.Color = clWindowText
            TitleFont.Height = -11
            TitleFont.Name = 'Tahoma'
            TitleFont.Style = []
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
          object Panel7: TPanel
            Left = 0
            Top = 0
            Width = 349
            Height = 33
            Align = alTop
            ParentColor = True
            TabOrder = 1
            DesignSize = (
              349
              33)
            object Label2: TLabel
              Left = 306
              Top = 9
              Width = 35
              Height = 13
              Anchors = [akTop, akRight]
              Caption = #1580#1587#1578#1580#1608
            end
            object SEdit: TEdit
              Left = 9
              Top = 5
              Width = 286
              Height = 21
              Anchors = [akLeft, akTop, akRight]
              TabOrder = 0
              OnChange = SEditChange
            end
          end
        end
      end
    end
    object Panel4: TPanel
      Left = 1
      Top = 360
      Width = 506
      Height = 85
      Align = alBottom
      ParentColor = True
      TabOrder = 1
      object GroupBox1: TGroupBox
        Left = 1
        Top = 1
        Width = 504
        Height = 83
        Align = alClient
        Caption = #1575#1591#1604#1575#1593#1575#1578' '#1587#1575#1586#1605#1575#1606
        TabOrder = 0
        DesignSize = (
          504
          83)
        object Label9: TLabel
          Left = 458
          Top = 51
          Width = 38
          Height = 13
          Anchors = [akTop, akRight]
          Caption = #1605#1587#1574#1608#1604':'
        end
        object Label1: TLabel
          Left = 457
          Top = 26
          Width = 39
          Height = 13
          Anchors = [akTop, akRight]
          Caption = #1705#1583'        :'
          FocusControl = ECode
        end
        object Erespon: TEdit
          Left = 16
          Top = 48
          Width = 437
          Height = 21
          Anchors = [akTop, akRight]
          Ctl3D = True
          ParentCtl3D = False
          ReadOnly = True
          TabOrder = 0
          OnEnter = TEditEnter
          OnExit = TEditExit
        end
        object ECode: TEdit
          Left = 272
          Top = 22
          Width = 180
          Height = 21
          Anchors = [akTop, akRight]
          ReadOnly = True
          TabOrder = 1
          OnEnter = TEditEnter
          OnExit = TEditExit
        end
      end
    end
    object Panel5: TPanel
      Left = 360
      Top = 1
      Width = 147
      Height = 359
      Align = alRight
      Caption = 'Panel5'
      ParentColor = True
      TabOrder = 2
      object Panel2: TxpPanel
        Left = 1
        Top = 26
        Width = 145
        Height = 332
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
          143
          330)
        object Label5: TLabel
          Left = 22
          Top = 199
          Width = 98
          Height = 13
          Anchors = [akTop, akRight]
          Caption = #1578#1585#1578#1610#1576' '#1576#1585' '#1575#1587#1575#1587' '#1593#1606#1608#1575#1606
          Transparent = True
        end
        object Label4: TLabel
          Left = 6
          Top = 219
          Width = 114
          Height = 13
          Anchors = [akTop, akRight]
          Caption = #1587#1575#1586#1605#1575#1606' '#1607#1575#1610' '#1591#1585#1601' '#1605#1603#1575#1578#1576#1607
          Transparent = True
        end
        object lblSite: TLabel
          Left = 0
          Top = 68
          Width = 139
          Height = 37
          Caption = #1587#1575#1586#1605#1575#1606' '#1607#1575
          Font.Charset = ARABIC_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
          Transparent = True
        end
        object Image1: TImage
          Left = 42
          Top = 7
          Width = 62
          Height = 56
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
        object BBOK: TAdvGlowButton
          Left = 33
          Top = 257
          Width = 75
          Height = 28
          Cursor = crHandPoint
          Anchors = [akTop, akRight]
          Caption = '    '#1578#1575#1610#1610#1583
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
          Left = 33
          Top = 289
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
          ImageIndex = 47
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
          Left = 33
          Top = 126
          Width = 75
          Height = 28
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
        object deleteBtn: TAdvGlowButton
          Left = 33
          Top = 158
          Width = 75
          Height = 28
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
          TabOrder = 3
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
          Top = 198
          Width = 16
          Height = 17
          Anchors = [akTop, akRight]
          TabOrder = 4
          OnClick = innerOrgClick
        end
        object outerOrg: TCheckBox
          Left = 124
          Top = 218
          Width = 13
          Height = 17
          Anchors = [akTop, akRight]
          Checked = True
          State = cbChecked
          TabOrder = 5
          OnClick = innerOrgClick
        end
      end
      object Panel6: TPanel
        Left = 1
        Top = 1
        Width = 145
        Height = 25
        Align = alTop
        ParentColor = True
        TabOrder = 1
      end
    end
    object Panel1: TPanel
      Left = 1
      Top = 1
      Width = 506
      Height = 25
      Anchors = [akLeft, akTop, akRight]
      BevelOuter = bvNone
      ParentColor = True
      TabOrder = 3
      object SpeedButton1: TAdvGlowButton
        Left = 253
        Top = 0
        Width = 253
        Height = 25
        Cursor = crHandPoint
        Align = alClient
        Caption = #1604#1610#1587#1578
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
        Width = 253
        Height = 25
        Cursor = crHandPoint
        Align = alLeft
        Caption = #1583#1585#1582#1578#1608#1575#1585#1607
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
    DataSet = PFromOrg
    Left = 157
    Top = 229
  end
  inherited ActionList: TActionList
    Left = 275
    Top = 251
  end
  inherited xpWindow1: TxpWindow
    Left = 272
    Top = 192
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
    Left = 268
    Top = 142
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
  end
  object FromOrg: TADODataSet
    Connection = Dm.YeganehConnection
    CursorType = ctStatic
    AfterScroll = FromOrgAfterScroll
    CommandText = 
      'select ID, code,Title, ResponsibleStaffer ,parentid from FromOrg' +
      'anizations'#13#10'where Title like '#39'%'#39
    Parameters = <>
    Left = 54
    Top = 161
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
      FieldName = 'code'
      Size = 10
    end
  end
  object DFromOrg: TDataSource
    DataSet = FromOrg
    Left = 51
    Top = 210
  end
  object PFromOrg: TADODataSet
    Connection = Dm.YeganehConnection
    CursorType = ctStatic
    CommandText = 
      'select TOP 200 ID, Title, ResponsibleStaffer,Code from FromOrgan' +
      'izations'#13#10'where  ParentID= :ParentID order by id desc'
    Parameters = <
      item
        Name = 'ParentID'
        Attributes = [paSigned]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = 1
      end>
    Left = 156
    Top = 162
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
