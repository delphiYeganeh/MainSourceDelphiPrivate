inherited FWorkSheetBaseSessions: TFWorkSheetBaseSessions
  Left = 333
  Top = 149
  Caption = #1588#1585#1705#1578' '#1705#1606#1606#1583#1711#1575#1606' '#1583#1585' '#1580#1604#1587#1607
  ClientHeight = 620
  ClientWidth = 931
  KeyPreview = True
  OldCreateOrder = True
  OnKeyPress = FormKeyPress
  PixelsPerInch = 96
  TextHeight = 13
  object MssPanelPro1: TMssPanelPro [0]
    Left = 544
    Top = 188
    Width = 387
    Height = 432
    Align = alRight
    TabOrder = 0
    DrawGrad = False
    GradFromColor = clBtnFace
    GradToColor = clWhite
    GradStyle = gsRadialTL
    object MssDBGrid1: TMssDBGrid
      Left = 1
      Top = 29
      Width = 385
      Height = 402
      Align = alClient
      Color = clBtnFace
      DataSource = dsUsers
      Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit]
      ReadOnly = True
      TabOrder = 0
      TitleFont.Charset = ARABIC_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'Tahoma'
      TitleFont.Style = []
      OnDblClick = MssDBGrid1DblClick
      Flat = False
      BandsFont.Charset = DEFAULT_CHARSET
      BandsFont.Color = clWindowText
      BandsFont.Height = -11
      BandsFont.Name = 'MS Sans Serif'
      BandsFont.Style = []
      GridStyle.Style = gsCustom
      GridStyle.OddColor = 15658734
      GridStyle.EvenColor = clWindow
      GridStyle.FilterColor = clWhite
      TitleHeight.PixelCount = 24
      FooterColor = clBtnFace
      ExOptions = [eoBooleanAsCheckBox, eoDisableInsert, eoENTERlikeTAB, eoKeepSelection, eoTitleWordWrap, eoShowFilterBar, eoFilterAutoApply, eoShowColumnVisibility]
      WidthOfIndicator = 11
      DefaultRowHeight = 17
      ScrollBars = ssHorizontal
      ColCount = 2
      RowCount = 2
      MssImages = <>
      MssGroupHeaderField = 'Enter:HeaderFieldName'
      MssGroupHeaderFieldValue = 'Enter:HeaderFieldValue'
      MssGroupHeaderFieldCaption = 'Enter:HeaderFieldCaption'
      MssGroupHeaderColor = clBtnFace
      ModalDialogColor = clBtnFace
      Columns = <
        item
          Expanded = False
          FieldName = 'Title'
          Width = 351
          Visible = True
        end>
    end
    object MssPanelPro5: TMssPanelPro
      Left = 1
      Top = 1
      Width = 385
      Height = 28
      Align = alTop
      TabOrder = 1
      DrawGrad = False
      GradFromColor = clBtnFace
      GradToColor = clWhite
      GradStyle = gsRadialTL
      object Label1: TLabel
        Left = 135
        Top = 8
        Width = 104
        Height = 13
        Caption = #1604#1610#1587#1578' '#1705#1575#1585#1576#1585#1575#1606' '#1587#1610#1587#1578#1605
      end
    end
  end
  object MssPanelPro2: TMssPanelPro [1]
    Left = 0
    Top = 188
    Width = 544
    Height = 432
    Align = alClient
    TabOrder = 1
    DrawGrad = False
    GradFromColor = clBtnFace
    GradToColor = clWhite
    GradStyle = gsRadialTL
    object MssPanelPro4: TMssPanelPro
      Left = 1
      Top = 1
      Width = 485
      Height = 430
      Align = alClient
      TabOrder = 0
      DrawGrad = False
      GradFromColor = clBtnFace
      GradToColor = clWhite
      GradStyle = gsRadialTL
      object MssDBGrid3: TMssDBGrid
        Left = 1
        Top = 1
        Width = 483
        Height = 397
        Align = alClient
        Color = clBtnFace
        DataSource = dsSessionUsers
        Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit]
        TabOrder = 0
        TitleFont.Charset = ARABIC_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'Tahoma'
        TitleFont.Style = []
        Flat = False
        BandsFont.Charset = ARABIC_CHARSET
        BandsFont.Color = clWindowText
        BandsFont.Height = -11
        BandsFont.Name = 'Tahoma'
        BandsFont.Style = []
        GridStyle.Style = gsCustom
        GridStyle.OddColor = 15658734
        GridStyle.EvenColor = clWindow
        GridStyle.FilterColor = clWhite
        TitleHeight.PixelCount = 24
        FooterColor = clBtnFace
        ExOptions = [eoBooleanAsCheckBox, eoDisableInsert, eoENTERlikeTAB, eoKeepSelection, eoTitleWordWrap, eoShowFilterBar, eoFilterAutoApply, eoShowColumnVisibility]
        WidthOfIndicator = 11
        DefaultRowHeight = 17
        ScrollBars = ssHorizontal
        ColCount = 3
        RowCount = 2
        MssImages = <>
        MssGroupHeaderField = 'Enter:HeaderFieldName'
        MssGroupHeaderFieldValue = 'Enter:HeaderFieldValue'
        MssGroupHeaderFieldCaption = 'Enter:HeaderFieldCaption'
        MssGroupHeaderColor = clBtnFace
        ModalDialogColor = clBtnFace
        Columns = <
          item
            Expanded = False
            FieldName = 'lkUserID'
            ReadOnly = True
            Title.Caption = #1705#1575#1585#1576#1585'( '#1588#1585#1705#1578' '#1705#1606#1606#1583#1607' '#1583#1585' '#1580#1604#1587#1607')'
            Width = 334
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'lkMustCome'
            Title.Caption = #1581#1590#1608#1585' '#1583#1585' '#1580#1604#1587#1607
            Width = 115
            Visible = True
          end>
      end
      object MssPanelPro7: TMssPanelPro
        Left = 1
        Top = 398
        Width = 483
        Height = 31
        Align = alBottom
        TabOrder = 1
        DrawGrad = False
        GradFromColor = clBtnFace
        GradToColor = clWhite
        GradStyle = gsRadialTL
        object SpeedButton3: TSpeedButton
          Left = 307
          Top = 5
          Width = 83
          Height = 22
          Cursor = crHandPoint
          Caption = #1575#1585#1587#1575#1604' '#1582#1576#1585
          OnClick = SpeedButton3Click
        end
        object SpeedButton2: TSpeedButton
          Left = 393
          Top = 5
          Width = 83
          Height = 22
          Cursor = crHandPoint
          Caption = #1605#1588#1575#1607#1583#1607
          OnClick = SpeedButton2Click
        end
        object SpeedButton4: TSpeedButton
          Left = 6
          Top = 5
          Width = 67
          Height = 22
          Cursor = crHandPoint
          Caption = #1582#1585#1608#1580
          Glyph.Data = {
            36030000424D3603000000000000360000002800000010000000100000000100
            18000000000000030000C30E0000C30E00000000000000000000FFFFFFFFFFFF
            FFFFFFFFFFFFFEFEFEFBFBFBF4F4F4F3F3F3FAFAFAFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFDFDFDF7F7F7EFEFEFE4E4E4D6D6D6D8
            D8D8F1F1F1FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFCFCFC
            F0F0F0DCDADAC6ADA8B88A83AC7771AC7771AFAFAFC5C5C5E7E7E7F0F0F0FFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFEBE0DEC79F95B07C75C18D81DFB2A1FCF4EEAC
            77718D8D8D979797ADADADDADADAFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFAC7771
            CE9683EEB89DF7C7AEF6CEB8FEF6F1AC77711C759D1E7EAA1E7EAAEFEFEFFBFB
            FBFEFEFEFFFFFFFFFFFFFFFFFFAC7771F7BB99F8C0A2F7C7AEF7CEB8FEF6F1AC
            77715CB6D55DC3E4179DC9FDFEFEF6CDB4FEFEFEFFFFFFFFFFFFFFFFFFAC7771
            F8BB99F7C0A2F7C7AEF7CFB9FEF6F1AC777168BBD672CBE745B1D4F5CDB4E556
            01FDFEFEFFFFFFFFFFFFFFFFFFAC7771F8BB99C18C7FB37F77F6CFB9FEF6F1AC
            777187C7DBA1DDEFAFB0A4E65C09E55600FBFEFEFDFEFEFDFEFEFFFFFFAC7771
            F7BB99AC7771FFFFFFF6CFB9FEF6F1AC7771A3D4E2D4C4B2E55600E55600E556
            00E55600E55600E55600FFFFFFAC7771F7BB99D29C8AAC7771F6CEB8FEF6F1AC
            7771BBDFE9E55600E55600E55600E55600E55600E55600E55600FFFFFFAC7771
            F8BB99F7C1A3F7C7ADF7CEB8FEF6F1AC7771BFE0E9E4B291E35D0BE55600E556
            00E55600E55600E55600FFFFFFAC7771F8BB99F7C1A2F7C7ADF7CEB9FEF6F1AC
            7771B7DBE4D7F1F7CAAD94E65D0BE55600FAFDFDFBFDFDFCFEFEFFFFFFAC7771
            F7BB99F7C1A3F7C8AEF7CEB8FEF6F1AC7771B2D7E1C6EAF483CBE2F2C0A1E557
            01FCFEFEFFFFFFFFFFFFFFFFFFAC7771C79080EAB39AF7C8AEF7CEB9FEF6F1AC
            7771B8D9E2C5EAF42BA5CEFCFEFEF4C3A6FEFEFEFFFFFFFFFFFFFFFFFFFCFAF9
            D8B7ADB48078C28E82E5BAA7FEF6F1AC7771098FBB0997C60997C6FEFEFEFEFE
            FEFEFEFEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFDFCFCDDC4BFBC8E86AC7771AC
            7771FAFAFAFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF}
          OnClick = SpeedButton4Click
        end
      end
    end
    object MssPanelPro9: TMssPanelPro
      Left = 486
      Top = 1
      Width = 57
      Height = 430
      Align = alRight
      TabOrder = 1
      DrawGrad = False
      GradFromColor = clBtnFace
      GradToColor = clWhite
      GradStyle = gsRadialTL
      object SpeedButton1: TSpeedButton
        Left = 12
        Top = 112
        Width = 32
        Height = 22
        Caption = '>>'
        Font.Charset = ARABIC_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        OnClick = SpeedButton1Click
      end
      object SpeedButton13: TSpeedButton
        Left = 12
        Top = 144
        Width = 32
        Height = 22
        Caption = '<<'
        OnClick = SpeedButton13Click
      end
    end
  end
  object MssPanelPro3: TMssPanelPro [2]
    Left = 0
    Top = 0
    Width = 931
    Height = 188
    Align = alTop
    TabOrder = 2
    DrawGrad = False
    GradFromColor = clBtnFace
    GradToColor = clWhite
    GradStyle = gsRadialTL
    object GroupBox1: TGroupBox
      Left = 8
      Top = 8
      Width = 913
      Height = 172
      Caption = #1605#1588#1582#1589#1575#1578' '#1580#1604#1587#1607
      TabOrder = 0
      DesignSize = (
        913
        172)
      object Label2: TLabel
        Left = 836
        Top = 24
        Width = 15
        Height = 13
        Anchors = [akTop, akRight]
        Caption = #1705#1583':'
      end
      object DBText1: TDBText
        Left = 785
        Top = 24
        Width = 49
        Height = 17
        Alignment = taRightJustify
        Anchors = [akTop, akRight]
        DataField = 'ID'
        DataSource = DSForm
        Font.Charset = ARABIC_CHARSET
        Font.Color = clNavy
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label3: TLabel
        Left = 836
        Top = 96
        Width = 71
        Height = 13
        Anchors = [akTop, akRight]
        Caption = #1705#1575#1585#1576#1585' '#1579#1576#1578' '#1705#1606#1606#1583#1607':'
      end
      object DBText2: TDBText
        Left = 657
        Top = 96
        Width = 177
        Height = 17
        Anchors = [akTop, akRight]
        DataField = 'lkRegUserID'
        DataSource = DSForm
        Font.Charset = ARABIC_CHARSET
        Font.Color = clNavy
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
      end
      object DBText3: TDBText
        Left = 16
        Top = 48
        Width = 584
        Height = 17
        Anchors = [akTop, akRight]
        DataField = 'Place'
        DataSource = DSForm
        Font.Charset = ARABIC_CHARSET
        Font.Color = clNavy
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
      end
      object DBText4: TDBText
        Left = 16
        Top = 72
        Width = 584
        Height = 17
        Anchors = [akTop, akRight]
        DataField = 'Subject'
        DataSource = DSForm
        Font.Charset = ARABIC_CHARSET
        Font.Color = clNavy
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
      end
      object Label4: TLabel
        Left = 601
        Top = 48
        Width = 26
        Height = 13
        Anchors = [akTop, akRight]
        Caption = #1605#1705#1575#1606':'
      end
      object Label5: TLabel
        Left = 601
        Top = 72
        Width = 36
        Height = 13
        Anchors = [akTop, akRight]
        Caption = #1605#1608#1590#1608#1593':'
      end
      object DBText5: TDBText
        Left = 240
        Top = 23
        Width = 97
        Height = 17
        Anchors = [akTop, akRight]
        DataField = 'lkImportantLevel'
        DataSource = DSForm
        Font.Charset = ARABIC_CHARSET
        Font.Color = clNavy
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
      end
      object DBText6: TDBText
        Left = 657
        Top = 48
        Width = 177
        Height = 17
        Anchors = [akTop, akRight]
        DataField = 'lkManagerUserID'
        DataSource = DSForm
        Font.Charset = ARABIC_CHARSET
        Font.Color = clNavy
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
      end
      object DBText7: TDBText
        Left = 533
        Top = 24
        Width = 65
        Height = 17
        Anchors = [akTop, akRight]
        DataField = 'lkStatus'
        DataSource = DSForm
        Font.Charset = ARABIC_CHARSET
        Font.Color = clNavy
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
      end
      object DBText8: TDBText
        Left = 657
        Top = 72
        Width = 177
        Height = 17
        Anchors = [akTop, akRight]
        DataField = 'lkMonshi'
        DataSource = DSForm
        Font.Charset = ARABIC_CHARSET
        Font.Color = clNavy
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
      end
      object DBText9: TDBText
        Left = 769
        Top = 121
        Width = 65
        Height = 17
        Anchors = [akTop, akRight]
        DataField = 'Date_Shamsi'
        DataSource = DSForm
        Font.Charset = ARABIC_CHARSET
        Font.Color = clNavy
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
      end
      object DBText10: TDBText
        Left = 788
        Top = 144
        Width = 20
        Height = 17
        Anchors = [akTop, akRight]
        DataField = 'BeginTimeHour'
        DataSource = DSForm
        Font.Charset = ARABIC_CHARSET
        Font.Color = clNavy
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
      end
      object Label6: TLabel
        Left = 340
        Top = 23
        Width = 64
        Height = 13
        Anchors = [akTop, akRight]
        Caption = #1605#1610#1586#1575#1606' '#1575#1607#1605#1610#1578':'
      end
      object Label7: TLabel
        Left = 601
        Top = 96
        Width = 44
        Height = 13
        Anchors = [akTop, akRight]
        Caption = #1578#1608#1590#1610#1581#1575#1578':'
      end
      object Label8: TLabel
        Left = 836
        Top = 48
        Width = 56
        Height = 13
        Anchors = [akTop, akRight]
        Caption = #1605#1583#1610#1585' '#1580#1604#1587#1607':'
      end
      object Label9: TLabel
        Left = 601
        Top = 24
        Width = 38
        Height = 13
        Anchors = [akTop, akRight]
        Caption = #1608#1590#1593#1610#1578':'
      end
      object Label10: TLabel
        Left = 836
        Top = 72
        Width = 69
        Height = 13
        Anchors = [akTop, akRight]
        Caption = #1605#1606#1588#1610' '#1580#1604#1587#1607':'
      end
      object Label11: TLabel
        Left = 836
        Top = 120
        Width = 57
        Height = 13
        Anchors = [akTop, akRight]
        Caption = #1578#1575#1585#1610#1582' '#1580#1604#1587#1607':'
      end
      object Label12: TLabel
        Left = 836
        Top = 144
        Width = 56
        Height = 13
        Anchors = [akTop, akRight]
        Caption = #1586#1605#1575#1606' '#1580#1604#1587#1607':'
      end
      object DBText11: TDBText
        Left = 812
        Top = 144
        Width = 20
        Height = 17
        Alignment = taRightJustify
        Anchors = [akTop, akRight]
        DataField = 'BeginTimeMinute'
        DataSource = DSForm
        Font.Charset = ARABIC_CHARSET
        Font.Color = clNavy
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
      end
      object DBText12: TDBText
        Left = 720
        Top = 144
        Width = 20
        Height = 17
        Anchors = [akTop, akRight]
        DataField = 'EndTimeHour'
        DataSource = DSForm
        Font.Charset = ARABIC_CHARSET
        Font.Color = clNavy
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
      end
      object DBText13: TDBText
        Left = 745
        Top = 144
        Width = 20
        Height = 17
        Alignment = taRightJustify
        Anchors = [akTop, akRight]
        DataField = 'EndTimeMinute'
        DataSource = DSForm
        Font.Charset = ARABIC_CHARSET
        Font.Color = clNavy
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
      end
      object Label13: TLabel
        Left = 808
        Top = 144
        Width = 4
        Height = 13
        Anchors = [akTop, akRight]
        Caption = ':'
        Font.Charset = ARABIC_CHARSET
        Font.Color = clRed
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
      end
      object Label14: TLabel
        Left = 741
        Top = 144
        Width = 4
        Height = 13
        Anchors = [akTop, akRight]
        Caption = ':'
        Font.Charset = ARABIC_CHARSET
        Font.Color = clRed
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
      end
      object Label15: TLabel
        Left = 773
        Top = 143
        Width = 6
        Height = 13
        Anchors = [akTop, akRight]
        Caption = #1578#1575
      end
      object DBMemo1: TDBMemo
        Left = 17
        Top = 96
        Width = 581
        Height = 67
        Anchors = [akTop, akRight]
        BevelInner = bvLowered
        Color = clBtnFace
        Ctl3D = True
        DataField = 'Description'
        DataSource = DSForm
        Font.Charset = ARABIC_CHARSET
        Font.Color = clNavy
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentCtl3D = False
        ParentFont = False
        ReadOnly = True
        TabOrder = 0
      end
      object DBCheckBox1: TDBCheckBox
        Left = 16
        Top = 22
        Width = 73
        Height = 17
        Caption = #1575#1585#1587#1575#1604' '#1582#1576#1585
        DataField = 'SendNews'
        DataSource = DSForm
        ReadOnly = True
        TabOrder = 1
        ValueChecked = 'True'
        ValueUnchecked = 'False'
      end
    end
  end
  inherited DSForm: TDataSource
    DataSet = QSession
    OnDataChange = DSFormDataChange
    Left = 304
    Top = 456
  end
  inherited ActionList: TActionList
    Left = 72
    Top = 360
  end
  inherited Grid_PopupMenu: TPopupMenu
    Left = 151
    Top = 420
  end
  object dsUsers: TDataSource
    DataSet = Dm.QWorkSheetUsers
    Left = 768
    Top = 256
  end
  object dsSessionUsers: TDataSource
    DataSet = QSessionUsers
    Left = 409
    Top = 297
  end
  object QSession: TADOQuery
    Connection = Dm.YeganehConnection
    Parameters = <>
    SQL.Strings = (
      'SELECT * FROM WorkSheet_Base')
    Left = 233
    Top = 385
    object QSessionID: TAutoIncField
      DisplayLabel = #1705#1583
      FieldName = 'ID'
      ReadOnly = True
    end
    object QSessionType: TIntegerField
      FieldName = 'Type'
    end
    object QSessionlkType: TStringField
      FieldKind = fkLookup
      FieldName = 'lkType'
      LookupDataSet = Dm.QWorkSheetBaseType
      LookupKeyFields = 'Code'
      LookupResultField = 'Mean'
      KeyFields = 'Type'
      Size = 50
      Lookup = True
    end
    object QSessionRegUserID: TIntegerField
      FieldName = 'RegUserID'
    end
    object QSessionlkRegUserID: TStringField
      DisplayLabel = #1705#1575#1585#1576#1585' '#1579#1576#1578' '#1705#1606#1606#1583#1607
      FieldKind = fkLookup
      FieldName = 'lkRegUserID'
      LookupDataSet = Dm.QWorkSheetUsers
      LookupKeyFields = 'ID'
      LookupResultField = 'Title'
      KeyFields = 'RegUserID'
      Size = 100
      Lookup = True
    end
    object QSessionRegDate_Shamsi: TStringField
      FieldName = 'RegDate_Shamsi'
      Size = 50
    end
    object QSessionRegDate_Miladi: TStringField
      FieldName = 'RegDate_Miladi'
      Size = 50
    end
    object QSessionYear_Shamsi: TStringField
      FieldName = 'Year_Shamsi'
    end
    object QSessionYear_Miladi: TStringField
      FieldName = 'Year_Miladi'
    end
    object QSessionMonth_Shamsi: TStringField
      FieldName = 'Month_Shamsi'
    end
    object QSessionMonth_Miladi: TStringField
      FieldName = 'Month_Miladi'
    end
    object QSessionDay_Shamsi: TStringField
      FieldName = 'Day_Shamsi'
    end
    object QSessionDay_Miladi: TStringField
      FieldName = 'Day_Miladi'
    end
    object QSessionPlace: TStringField
      DisplayLabel = #1605#1705#1575#1606
      FieldName = 'Place'
      Size = 200
    end
    object QSessionSubject: TStringField
      DisplayLabel = #1605#1608#1590#1608#1593
      FieldName = 'Subject'
      Size = 3000
    end
    object QSessionImportantLevel: TIntegerField
      FieldName = 'ImportantLevel'
    end
    object QSessionlkImportantLevel: TStringField
      DisplayLabel = #1605#1610#1586#1575#1606' '#1575#1607#1605#1610#1578
      FieldKind = fkLookup
      FieldName = 'lkImportantLevel'
      LookupDataSet = Dm.QWorkSheetBaseImportantLevel
      LookupKeyFields = 'Code'
      LookupResultField = 'Mean'
      KeyFields = 'ImportantLevel'
      Size = 50
      Lookup = True
    end
    object QSessionDescription: TStringField
      DisplayLabel = #1578#1608#1590#1610#1581#1575#1578
      FieldName = 'Description'
      Size = 3000
    end
    object QSessionManagerUserID: TIntegerField
      FieldName = 'ManagerUserID'
    end
    object QSessionlkManagerUserID: TStringField
      DisplayLabel = #1605#1583#1610#1585' '#1580#1604#1587#1607
      FieldKind = fkLookup
      FieldName = 'lkManagerUserID'
      LookupDataSet = Dm.QWorkSheetUsers
      LookupKeyFields = 'ID'
      LookupResultField = 'Title'
      KeyFields = 'ManagerUserID'
      Size = 100
      Lookup = True
    end
    object QSessionStatus: TIntegerField
      FieldName = 'Status'
    end
    object QSessionlkStatus: TStringField
      DisplayLabel = #1608#1590#1593#1610#1578
      FieldKind = fkLookup
      FieldName = 'lkStatus'
      LookupDataSet = Dm.QWorkSheetBaseStatus
      LookupKeyFields = 'Code'
      LookupResultField = 'Mean'
      KeyFields = 'Status'
      Size = 50
      Lookup = True
    end
    object QSessionBeginTimeToMinute: TIntegerField
      FieldName = 'BeginTimeToMinute'
    end
    object QSessionEndTimeToMinute: TIntegerField
      FieldName = 'EndTimeToMinute'
    end
    object QSessionSendNews: TBooleanField
      DisplayLabel = #1575#1585#1587#1575#1604' '#1582#1576#1585
      FieldName = 'SendNews'
    end
    object QSessionMonshi: TIntegerField
      FieldName = 'Monshi'
    end
    object QSessionlkMonshi: TStringField
      DisplayLabel = #1605#1606#1588#1610' '#1580#1604#1587#1607
      FieldKind = fkLookup
      FieldName = 'lkMonshi'
      LookupDataSet = Dm.QWorkSheetUsers
      LookupKeyFields = 'ID'
      LookupResultField = 'Title'
      KeyFields = 'Monshi'
      Size = 100
      Lookup = True
    end
    object QSessionBeginTimeHour: TStringField
      FieldName = 'BeginTimeHour'
      Size = 50
    end
    object QSessionBeginTimeMinute: TStringField
      FieldName = 'BeginTimeMinute'
      Size = 50
    end
    object QSessionEndTimeHour: TStringField
      FieldName = 'EndTimeHour'
      Size = 50
    end
    object QSessionEndTimeMinute: TStringField
      FieldName = 'EndTimeMinute'
      Size = 50
    end
    object QSessionDate_Shamsi: TStringField
      DisplayLabel = #1578#1575#1585#1610#1582' '#1580#1604#1587#1607
      FieldName = 'Date_Shamsi'
      Size = 50
    end
    object QSessionDate_Miladi: TStringField
      FieldName = 'Date_Miladi'
      Size = 50
    end
  end
  object QSessionUsers: TADOQuery
    Connection = Dm.YeganehConnection
    Parameters = <>
    SQL.Strings = (
      'SELECT * FROM WorkSheet_Sessions')
    Left = 401
    Top = 212
    object QSessionUsersID: TAutoIncField
      FieldName = 'ID'
      ReadOnly = True
    end
    object QSessionUsersWorkSheetBaseID: TIntegerField
      FieldName = 'WorkSheetBaseID'
    end
    object QSessionUsersUserID: TIntegerField
      FieldName = 'UserID'
    end
    object QSessionUserslkUserID: TStringField
      FieldKind = fkLookup
      FieldName = 'lkUserID'
      LookupDataSet = Dm.QWorkSheetUsers
      LookupKeyFields = 'ID'
      LookupResultField = 'Title'
      KeyFields = 'UserID'
      Size = 100
      Lookup = True
    end
    object QSessionUsersDescription: TStringField
      FieldName = 'Description'
      Size = 3000
    end
    object QSessionUsersAddedSubject: TStringField
      FieldName = 'AddedSubject'
      Size = 3000
    end
    object QSessionUsersMustCome: TIntegerField
      FieldName = 'MustCome'
    end
    object QSessionUserslkMustCome: TStringField
      FieldKind = fkLookup
      FieldName = 'lkMustCome'
      LookupDataSet = Dm.QWorkSheetSessionsMustCome
      LookupKeyFields = 'Code'
      LookupResultField = 'Mean'
      KeyFields = 'MustCome'
      Size = 50
      Lookup = True
    end
    object QSessionUsersUserResponse: TIntegerField
      FieldName = 'UserResponse'
    end
    object QSessionUserslkUserResponse: TStringField
      FieldKind = fkLookup
      FieldName = 'lkUserResponse'
      LookupDataSet = Dm.QWorkSheetSessionsUserResponse
      LookupKeyFields = 'Code'
      LookupResultField = 'Mean'
      KeyFields = 'UserResponse'
      Size = 50
      Lookup = True
    end
    object QSessionUsersUserDescription: TStringField
      FieldName = 'UserDescription'
      Size = 3000
    end
    object QSessionUsersRegUserID: TIntegerField
      FieldName = 'RegUserID'
    end
    object QSessionUserslkRegUserID: TStringField
      FieldKind = fkLookup
      FieldName = 'lkRegUserID'
      LookupDataSet = Dm.QWorkSheetUsers
      LookupKeyFields = 'ID'
      LookupResultField = 'Title'
      KeyFields = 'RegUserID'
      Size = 100
      Lookup = True
    end
    object QSessionUsersRegDate_Shamsi: TStringField
      FieldName = 'RegDate_Shamsi'
      Size = 50
    end
    object QSessionUsersRegDate_Miladi: TStringField
      FieldName = 'RegDate_Miladi'
      Size = 50
    end
  end
  object QAddUserToSession: TADOQuery
    Connection = Dm.YeganehConnection
    Parameters = <>
    Left = 521
    Top = 260
  end
  object QUserInSession: TADOQuery
    Connection = Dm.YeganehConnection
    Parameters = <>
    Left = 505
    Top = 364
  end
  object MssMessage1: TMssMessage
    MessageType = MssWarning
    MessageStyle = mssSilver
    DialogSize = 604
    MessageColor = clBtnFace
    Left = 201
    Top = 244
  end
  object PopupMenu1: TPopupMenu
    Left = 473
    Top = 437
    object N1: TMenuItem
      Caption = #1578#1583#1575#1582#1604
      OnClick = N1Click
    end
    object N2: TMenuItem
      Caption = #1711#1586#1575#1585#1588' '#1705#1604#1610
      OnClick = N2Click
    end
  end
end
