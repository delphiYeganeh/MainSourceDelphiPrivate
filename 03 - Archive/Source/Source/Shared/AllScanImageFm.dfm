object FmAllScanImage: TFmAllScanImage
  Left = 549
  Top = 120
  Width = 542
  Height = 565
  Align = alClient
  BiDiMode = bdRightToLeft
  BorderIcons = [biSystemMenu, biMaximize]
  Caption = #1601#1585#1605' '#1575#1606#1578#1582#1575#1576' '#1578#1589#1608#1610#1585
  Color = clBtnFace
  Font.Charset = ARABIC_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  KeyPreview = True
  OldCreateOrder = False
  ParentBiDiMode = False
  Position = poDesktopCenter
  OnCreate = FormCreate
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 534
    Height = 479
    Align = alClient
    TabOrder = 0
    object DBCtrlGrid1: TDBCtrlGrid
      Left = 1
      Top = 1
      Width = 532
      Height = 477
      Align = alClient
      ColCount = 2
      Color = 16770791
      DataSource = FmScanImage.DSAllImage
      PanelHeight = 238
      PanelWidth = 257
      ParentColor = False
      TabOrder = 0
      RowCount = 2
      SelectedColor = clRed
      object uuVectAll: TImageEnDBVect
        Left = -153
        Top = 8
        Width = 258
        Height = 241
        Cursor = crHandPoint
        Background = 11075583
        Ctl3D = False
        ParentCtl3D = False
        ScrollBars = ssNone
        MouseInteract = [miScroll]
        AutoFit = True
        BackgroundStyle = iebsGradient
        ImageEnVersion = '3.0.0'
        Anchors = [akLeft, akTop, akRight, akBottom]
        EnableInteractionHints = True
        FlatScrollBars = True
        Visible = False
        TabOrder = 0
        OnDblClick = uuVectAllDblClick
        ZoomObjectsWidth = False
        ObjUndoLimit = 10
        ObjAutoUndo = True
        DataField = 'Image'
        DataSource = FmScanImage.DSAllImage
        ReadOnly = True
        DataFieldImageFormat = ifTIFF
        PreviewFont.Charset = DEFAULT_CHARSET
        PreviewFont.Color = clWindowText
        PreviewFont.Height = -13
        PreviewFont.Name = 'Tahoma'
        PreviewFont.Style = []
        IsInsideDbCtrl = True
      end
      object DBVectAll: TImageEnDBView
        Left = 0
        Top = 0
        Width = 257
        Height = 238
        Background = 11075583
        ParentCtl3D = False
        AutoFit = True
        BackgroundStyle = iebsGradient
        ImageEnVersion = '3.0.0'
        EnableInteractionHints = True
        Align = alClient
        TabOrder = 1
        DataField = 'Image'
        DataSource = FmScanImage.DSAllImage
        DataFieldImageFormat = ifTIFF
        PreviewFont.Charset = DEFAULT_CHARSET
        PreviewFont.Color = clWindowText
        PreviewFont.Height = -11
        PreviewFont.Name = 'MS Sans Serif'
        PreviewFont.Style = []
      end
    end
  end
  object Panel2: TPanel
    Left = 0
    Top = 479
    Width = 534
    Height = 52
    Align = alBottom
    TabOrder = 1
    object Button1: TButton
      Left = 12
      Top = 15
      Width = 75
      Height = 25
      Caption = #1582#1585#1608#1580
      TabOrder = 0
      OnClick = Button1Click
    end
    object DBN1: TDBNavigator
      Left = 303
      Top = 1
      Width = 230
      Height = 50
      Cursor = crHandPoint
      DataSource = FmScanImage.DSAllImage
      VisibleButtons = [nbFirst, nbPrior, nbNext, nbLast]
      Align = alRight
      Flat = True
      Ctl3D = False
      ParentCtl3D = False
      ParentShowHint = False
      ConfirmDelete = False
      ShowHint = True
      TabOrder = 1
      TabStop = True
    end
  end
end
