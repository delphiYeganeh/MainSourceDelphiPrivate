inherited FFillUserMemo: TFFillUserMemo
  Left = 410
  Top = 244
  Width = 1099
  Height = 513
  Caption = #1601#1585#1605' '#1578#1593#1585#1610#1601' '#1605#1602#1575#1583#1610#1585' '#1601#1610#1604#1583#1607#1575'/'#1605#1588#1582#1589#1575#1578' '#1575#1582#1578#1610#1575#1585#1610
  Constraints.MinHeight = 400
  Constraints.MinWidth = 820
  OldCreateOrder = True
  PixelsPerInch = 96
  TextHeight = 13
  object pnlMain: TPanel [0]
    Left = 0
    Top = 0
    Width = 1083
    Height = 474
    Align = alClient
    ParentColor = True
    TabOrder = 0
    object MssPanelPro3: TMssPanelPro
      Left = 1
      Top = 1
      Width = 360
      Height = 472
      Align = alLeft
      BorderWidth = 5
      TabOrder = 0
      DrawGrad = False
      GradFromColor = clBtnFace
      GradToColor = clWhite
      GradStyle = gsRadialTL
      object MssDBGrid3: TMssDBGrid
        Left = 6
        Top = 89
        Width = 348
        Height = 377
        Align = alClient
        DataSource = DataSource2
        Options = [dgEditing, dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit]
        TabOrder = 0
        TitleFont.Charset = ARABIC_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'Tahoma'
        TitleFont.Style = []
        Flat = False
        BandsFont.Charset = DEFAULT_CHARSET
        BandsFont.Color = clWindowText
        BandsFont.Height = -11
        BandsFont.Name = 'MS Sans Serif'
        BandsFont.Style = []
        GridStyle.Style = gsCustom
        GridStyle.OddColor = clWindow
        GridStyle.EvenColor = clWindow
        TitleHeight.PixelCount = 24
        FooterColor = clBtnFace
        ExOptions = [eoENTERlikeTAB, eoKeepSelection, eoBLOBEditor, eoTitleWordWrap, eoShowFilterBar, eoFilterAutoApply, eoShowColumnVisibility]
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
            FieldName = 'UserMemo2'
            Width = 220
            Visible = True
          end>
      end
      object MssPanelPro6: TMssPanelPro
        Left = 6
        Top = 6
        Width = 348
        Height = 25
        Align = alTop
        Caption = 'MssPanelPro6'
        TabOrder = 1
        DrawGrad = False
        GradFromColor = clBtnFace
        GradToColor = clWhite
        GradStyle = gsRadialTL
      end
      object MssPanelPro9: TMssPanelPro
        Left = 6
        Top = 31
        Width = 348
        Height = 58
        Align = alTop
        TabOrder = 2
        DrawGrad = False
        GradFromColor = clBtnFace
        GradToColor = clWhite
        GradStyle = gsRadialTL
        object DBNavigator3: TDBNavigator
          Left = 1
          Top = 1
          Width = 346
          Height = 56
          DataSource = DataSource2
          Align = alClient
          Flat = True
          TabOrder = 0
        end
      end
    end
    object MssPanelPro2: TMssPanelPro
      Left = 361
      Top = 1
      Width = 361
      Height = 472
      Align = alClient
      BorderWidth = 5
      TabOrder = 1
      DrawGrad = False
      GradFromColor = clBtnFace
      GradToColor = clWhite
      GradStyle = gsRadialTL
      object MssDBGrid2: TMssDBGrid
        Left = 6
        Top = 89
        Width = 349
        Height = 377
        Align = alClient
        DataSource = DataSource1
        Options = [dgEditing, dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit]
        TabOrder = 0
        TitleFont.Charset = ARABIC_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'Tahoma'
        TitleFont.Style = []
        Flat = False
        BandsFont.Charset = DEFAULT_CHARSET
        BandsFont.Color = clWindowText
        BandsFont.Height = -11
        BandsFont.Name = 'MS Sans Serif'
        BandsFont.Style = []
        GridStyle.Style = gsCustom
        GridStyle.OddColor = clWindow
        GridStyle.EvenColor = clWindow
        TitleHeight.PixelCount = 24
        FooterColor = clBtnFace
        ExOptions = [eoENTERlikeTAB, eoKeepSelection, eoBLOBEditor, eoTitleWordWrap, eoShowFilterBar, eoFilterAutoApply, eoShowColumnVisibility]
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
            FieldName = 'UserMemo1'
            Width = 220
            Visible = True
          end>
      end
      object MssPanelPro5: TMssPanelPro
        Left = 6
        Top = 6
        Width = 349
        Height = 25
        Align = alTop
        Caption = #1601#1610#1604#1583' '#1575#1582#1578#1610#1575#1585#1610' '
        TabOrder = 1
        DrawGrad = False
        GradFromColor = clBtnFace
        GradToColor = clWhite
        GradStyle = gsRadialTL
      end
      object MssPanelPro8: TMssPanelPro
        Left = 6
        Top = 31
        Width = 349
        Height = 58
        Align = alTop
        TabOrder = 2
        DrawGrad = False
        GradFromColor = clBtnFace
        GradToColor = clWhite
        GradStyle = gsRadialTL
        object DBNavigator2: TDBNavigator
          Left = 1
          Top = 1
          Width = 347
          Height = 56
          DataSource = DataSource1
          Align = alClient
          Flat = True
          TabOrder = 0
        end
      end
    end
    object MssPanelPro1: TMssPanelPro
      Left = 722
      Top = 1
      Width = 360
      Height = 472
      Align = alRight
      BorderWidth = 5
      TabOrder = 2
      DrawGrad = False
      GradFromColor = clBtnFace
      GradToColor = clWhite
      GradStyle = gsRadialTL
      object MssDBGrid1: TMssDBGrid
        Left = 6
        Top = 89
        Width = 348
        Height = 377
        Align = alClient
        DataSource = DSForm
        Options = [dgEditing, dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit]
        TabOrder = 0
        TitleFont.Charset = ARABIC_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'Tahoma'
        TitleFont.Style = []
        Flat = False
        BandsFont.Charset = DEFAULT_CHARSET
        BandsFont.Color = clWindowText
        BandsFont.Height = -11
        BandsFont.Name = 'MS Sans Serif'
        BandsFont.Style = []
        GridStyle.Style = gsCustom
        GridStyle.OddColor = clWindow
        GridStyle.EvenColor = clWindow
        TitleHeight.PixelCount = 24
        FooterColor = clBtnFace
        ExOptions = [eoENTERlikeTAB, eoKeepSelection, eoBLOBEditor, eoTitleWordWrap, eoShowFilterBar, eoFilterAutoApply, eoShowColumnVisibility]
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
            FieldName = 'UserMemo'
            Width = 220
            Visible = True
          end>
      end
      object MssPanelPro4: TMssPanelPro
        Left = 6
        Top = 6
        Width = 348
        Height = 25
        Align = alTop
        Caption = #1601#1610#1604#1583' '#1575#1582#1578#1610#1575#1585#1610' '#1575#1608#1604
        TabOrder = 1
        DrawGrad = False
        GradFromColor = clBtnFace
        GradToColor = clWhite
        GradStyle = gsRadialTL
      end
      object MssPanelPro7: TMssPanelPro
        Left = 6
        Top = 31
        Width = 348
        Height = 58
        Align = alTop
        TabOrder = 2
        DrawGrad = False
        GradFromColor = clBtnFace
        GradToColor = clWhite
        GradStyle = gsRadialTL
        object DBNavigator1: TDBNavigator
          Left = 1
          Top = 1
          Width = 346
          Height = 56
          DataSource = DSForm
          Align = alClient
          Flat = True
          TabOrder = 0
        end
      end
    end
  end
  inherited DSForm: TDataSource
    DataSet = QUserMemo
    Left = 688
    Top = 248
  end
  inherited ActionList: TActionList
    Left = 184
    Top = 192
  end
  object QUserMemo: TADOQuery
    Connection = Dm.YeganehConnection
    Parameters = <>
    SQL.Strings = (
      'SELECT * FROM UserMemo')
    Left = 704
    Top = 360
    object QUserMemoID: TAutoIncField
      DisplayLabel = #1588#1606#1575#1587#1607
      FieldName = 'ID'
      ReadOnly = True
    end
    object QUserMemoUserMemo: TStringField
      DisplayLabel = #1605#1602#1583#1575#1585
      FieldName = 'UserMemo'
      Size = 255
    end
  end
  object QUserMemo1: TADOQuery
    Connection = Dm.YeganehConnection
    Parameters = <>
    SQL.Strings = (
      'SELECT * FROM UserMemo1')
    Left = 425
    Top = 360
    object QUserMemo1ID: TAutoIncField
      DisplayLabel = #1588#1606#1575#1587#1607
      FieldName = 'ID'
      ReadOnly = True
    end
    object QUserMemo1UserMemo1: TStringField
      DisplayLabel = #1605#1602#1583#1575#1585
      FieldName = 'UserMemo1'
      Size = 255
    end
  end
  object QUserMemo2: TADOQuery
    Connection = Dm.YeganehConnection
    Parameters = <>
    SQL.Strings = (
      'SELECT * FROM UserMemo2')
    Left = 99
    Top = 368
    object QUserMemo2ID: TAutoIncField
      DisplayLabel = #1588#1606#1575#1587#1607
      FieldName = 'ID'
      ReadOnly = True
    end
    object QUserMemo2UserMemo2: TStringField
      DisplayLabel = #1605#1602#1583#1575#1585
      FieldName = 'UserMemo2'
      Size = 255
    end
  end
  object DataSource1: TDataSource
    DataSet = QUserMemo1
    Left = 417
    Top = 240
  end
  object DataSource2: TDataSource
    DataSet = QUserMemo2
    Left = 88
    Top = 256
  end
end
