inherited FWorkSheetBaseVisits: TFWorkSheetBaseVisits
  Left = 429
  Top = 165
  Caption = #1588#1585#1705#1578' '#1705#1606#1606#1583#1711#1575#1606' '#1583#1585' '#1602#1585#1575#1585#1605#1604#1575#1602#1575#1578
  ClientHeight = 569
  ClientWidth = 931
  OldCreateOrder = True
  OnKeyPress = FormKeyPress
  PixelsPerInch = 96
  TextHeight = 13
  object pnlMain: TPanel [0]
    Left = 0
    Top = 0
    Width = 931
    Height = 569
    Align = alClient
    ParentColor = True
    TabOrder = 0
    object MssPanelPro1: TMssPanelPro
      Left = 527
      Top = 173
      Width = 403
      Height = 395
      Align = alRight
      ParentColor = True
      TabOrder = 0
      DrawGrad = False
      GradFromColor = clBtnFace
      GradToColor = clWhite
      GradStyle = gsRadialTL
      object MssDBGrid1: TMssDBGrid
        Left = 1
        Top = 29
        Width = 401
        Height = 365
        Align = alClient
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
        ExOptions = [eoENTERlikeTAB, eoKeepSelection, eoTitleWordWrap, eoShowFilterBar, eoFilterAutoApply, eoShowColumnVisibility]
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
            Width = 363
            Visible = True
          end>
      end
      object MssPanelPro5: TMssPanelPro
        Left = 1
        Top = 1
        Width = 401
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
    object MssPanelPro2: TMssPanelPro
      Left = 1
      Top = 173
      Width = 526
      Height = 395
      Align = alClient
      ParentColor = True
      TabOrder = 1
      DrawGrad = False
      GradFromColor = clBtnFace
      GradToColor = clWhite
      GradStyle = gsRadialTL
      object MssPanelPro4: TMssPanelPro
        Left = 1
        Top = 1
        Width = 467
        Height = 393
        Align = alClient
        TabOrder = 0
        DrawGrad = False
        GradFromColor = clBtnFace
        GradToColor = clWhite
        GradStyle = gsRadialTL
        object MssDBGrid3: TMssDBGrid
          Left = 1
          Top = 1
          Width = 465
          Height = 361
          Align = alClient
          Color = clBtnFace
          DataSource = dsVisitUsers
          Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit]
          ReadOnly = True
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
              FieldName = 'lkUserID'
              Title.Caption = #1705#1575#1585#1576#1585'( '#1588#1585#1705#1578' '#1705#1606#1606#1583#1607' '#1583#1585' '#1605#1604#1575#1602#1575#1578')'
              Width = 434
              Visible = True
            end>
        end
        object MssPanelPro7: TMssPanelPro
          Left = 1
          Top = 362
          Width = 465
          Height = 30
          Align = alBottom
          TabOrder = 1
          DrawGrad = False
          GradFromColor = clBtnFace
          GradToColor = clWhite
          GradStyle = gsRadialTL
          object SpeedButton3: TAdvGlowButton
            Left = 291
            Top = 5
            Width = 83
            Height = 22
            Caption = #1575#1585#1587#1575#1604' '#1582#1576#1585
            ImageIndex = 40
            Images = Dm.ImageList_MainNew
            NotesFont.Charset = DEFAULT_CHARSET
            NotesFont.Color = clWindowText
            NotesFont.Height = -11
            NotesFont.Name = 'Tahoma'
            NotesFont.Style = []
            TabOrder = 0
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
          object SpeedButton2: TAdvGlowButton
            Left = 377
            Top = 5
            Width = 83
            Height = 22
            Caption = #1605#1588#1575#1607#1583#1607
            ImageIndex = 118
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
          object SpeedButton4: TAdvGlowButton
            Left = 6
            Top = 5
            Width = 67
            Height = 22
            Cursor = crHandPoint
            Caption = #1582#1585#1608#1580
            ImageIndex = 84
            Images = Dm.ImageList_MainNew
            NotesFont.Charset = DEFAULT_CHARSET
            NotesFont.Color = clWindowText
            NotesFont.Height = -11
            NotesFont.Name = 'Tahoma'
            NotesFont.Style = []
            TabOrder = 2
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
        end
      end
      object MssPanelPro9: TMssPanelPro
        Left = 468
        Top = 1
        Width = 57
        Height = 393
        Align = alRight
        TabOrder = 1
        DrawGrad = False
        GradFromColor = clBtnFace
        GradToColor = clWhite
        GradStyle = gsRadialTL
        object SpeedButton1: TAdvGlowButton
          Left = 13
          Top = 88
          Width = 32
          Height = 22
          Cursor = crHandPoint
          Font.Charset = ARABIC_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ImageIndex = 86
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
        object SpeedButton13: TAdvGlowButton
          Left = 13
          Top = 120
          Width = 32
          Height = 22
          Cursor = crHandPoint
          ImageIndex = 88
          Images = Dm.ImageList_MainNew
          NotesFont.Charset = DEFAULT_CHARSET
          NotesFont.Color = clWindowText
          NotesFont.Height = -11
          NotesFont.Name = 'Tahoma'
          NotesFont.Style = []
          TabOrder = 1
          OnClick = SpeedButton13Click
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
    object MssPanelPro3: TMssPanelPro
      Left = 1
      Top = 1
      Width = 929
      Height = 172
      Align = alTop
      ParentColor = True
      TabOrder = 2
      DrawGrad = False
      GradFromColor = clBtnFace
      GradToColor = clWhite
      GradStyle = gsRadialTL
      object GroupBox1: TGroupBox
        Left = 8
        Top = 8
        Width = 913
        Height = 158
        Caption = #1605#1588#1582#1589#1575#1578' '#1605#1604#1575#1602#1575#1578
        TabOrder = 0
        DesignSize = (
          913
          158)
        object Label2: TLabel
          Left = 892
          Top = 17
          Width = 15
          Height = 13
          Anchors = [akTop, akRight]
          Caption = #1705#1583':'
        end
        object DBText1: TDBText
          Left = 785
          Top = 17
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
          Top = 66
          Width = 71
          Height = 13
          Anchors = [akTop, akRight]
          Caption = #1705#1575#1585#1576#1585' '#1579#1576#1578' '#1705#1606#1606#1583#1607':'
        end
        object DBText2: TDBText
          Left = 657
          Top = 66
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
          Top = 41
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
          Top = 65
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
          Left = 619
          Top = 41
          Width = 26
          Height = 13
          Anchors = [akTop, akRight]
          Caption = #1605#1705#1575#1606':'
        end
        object Label5: TLabel
          Left = 609
          Top = 65
          Width = 36
          Height = 13
          Anchors = [akTop, akRight]
          Caption = #1605#1608#1590#1608#1593':'
        end
        object DBText5: TDBText
          Left = 240
          Top = 16
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
          Top = 41
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
          Top = 17
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
        object DBText9: TDBText
          Left = 769
          Top = 92
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
          Top = 115
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
          Top = 16
          Width = 64
          Height = 13
          Anchors = [akTop, akRight]
          Caption = #1605#1610#1586#1575#1606' '#1575#1607#1605#1610#1578':'
        end
        object Label7: TLabel
          Left = 601
          Top = 89
          Width = 44
          Height = 13
          Anchors = [akTop, akRight]
          Caption = #1578#1608#1590#1610#1581#1575#1578':'
        end
        object Label8: TLabel
          Left = 880
          Top = 41
          Width = 27
          Height = 13
          Anchors = [akTop, akRight]
          Caption = #1605#1583#1610#1585' :'
        end
        object Label9: TLabel
          Left = 607
          Top = 17
          Width = 38
          Height = 13
          Anchors = [akTop, akRight]
          Caption = #1608#1590#1593#1610#1578':'
        end
        object Label11: TLabel
          Left = 850
          Top = 91
          Width = 57
          Height = 13
          Anchors = [akTop, akRight]
          Caption = #1578#1575#1585#1610#1582' '#1580#1604#1587#1607':'
        end
        object Label12: TLabel
          Left = 851
          Top = 115
          Width = 56
          Height = 13
          Anchors = [akTop, akRight]
          Caption = #1586#1605#1575#1606' '#1580#1604#1587#1607':'
        end
        object DBText11: TDBText
          Left = 812
          Top = 115
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
          Top = 115
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
          Top = 115
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
          Top = 115
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
          Top = 115
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
          Top = 114
          Width = 6
          Height = 13
          Anchors = [akTop, akRight]
          Caption = #1578#1575
        end
        object DBMemo1: TDBMemo
          Left = 17
          Top = 89
          Width = 581
          Height = 61
          Anchors = [akLeft, akTop, akRight]
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
          Top = 15
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
  end
  inherited DSForm: TDataSource
    DataSet = QSession
    OnDataChange = DSFormDataChange
    Left = 72
    Top = 40
  end
  inherited ActionList: TActionList
    Left = 136
    Top = 48
  end
  object QAddUserToVisit: TADOQuery
    Connection = Dm.YeganehConnection
    Parameters = <>
    Left = 569
    Top = 260
  end
  object QUserInVisit: TADOQuery
    Connection = Dm.YeganehConnection
    Parameters = <>
    Left = 505
    Top = 340
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
  object dsVisitUsers: TDataSource
    DataSet = QVisitUsers
    Left = 409
    Top = 297
  end
  object MssMessage1: TMssMessage
    MessageType = MssWarning
    MessageStyle = mssSilver
    DialogSize = 604
    MessageColor = clBtnFace
    Left = 201
    Top = 244
  end
  object QVisitUsers: TADOQuery
    Connection = Dm.YeganehConnection
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'SELECT * FROM WorkSheet_Visits')
    Left = 337
    Top = 356
    object QVisitUsersID: TAutoIncField
      FieldName = 'ID'
      ReadOnly = True
    end
    object QVisitUsersWorkSheetBaseID: TIntegerField
      FieldName = 'WorkSheetBaseID'
    end
    object QVisitUsersUserID: TIntegerField
      FieldName = 'UserID'
    end
    object QVisitUserslkUserID: TStringField
      FieldKind = fkLookup
      FieldName = 'lkUserID'
      LookupDataSet = Dm.QWorkSheetUsers
      LookupKeyFields = 'ID'
      LookupResultField = 'Title'
      KeyFields = 'UserID'
      Size = 100
      Lookup = True
    end
    object QVisitUsersDescription: TStringField
      FieldName = 'Description'
      Size = 3000
    end
    object QVisitUsersUserResponse: TIntegerField
      FieldName = 'UserResponse'
    end
    object QVisitUserslkUserResponse: TStringField
      FieldKind = fkLookup
      FieldName = 'lkUserResponse'
      LookupDataSet = Dm.QWorkSheetSessionsUserResponse
      LookupKeyFields = 'Code'
      LookupResultField = 'Mean'
      KeyFields = 'UserResponse'
      Size = 50
      Lookup = True
    end
    object QVisitUsersUserDescription: TStringField
      FieldName = 'UserDescription'
      Size = 3000
    end
  end
  object QSession: TADOQuery
    Connection = Dm.YeganehConnection
    Parameters = <>
    SQL.Strings = (
      'SELECT * FROM WorkSheet_Base')
    Left = 409
    Top = 49
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
  object dsUsers: TDataSource
    DataSet = Dm.QWorkSheetUsers
    Left = 768
    Top = 256
  end
end
