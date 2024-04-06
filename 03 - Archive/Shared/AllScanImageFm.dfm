object FmAllScanImage: TFmAllScanImage
  Left = 193
  Top = 113
  Width = 1612
  Height = 912
  Cursor = crHandPoint
  VertScrollBar.ParentColor = False
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
  OnClose = FormClose
  OnCreate = FormCreate
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Panel2: TPanel
    Left = 0
    Top = 824
    Width = 1596
    Height = 49
    Align = alBottom
    TabOrder = 0
    object lbl1: TLabel
      Left = 548
      Top = 4
      Width = 107
      Height = 13
      Caption = #1578#1593#1583#1575#1583' '#1606#1605#1575#1610#1588' '#1587#1578#1608#1606' '#1607#1575': '
    end
    object lbl2: TLabel
      Left = 549
      Top = 28
      Width = 104
      Height = 13
      Caption = #1578#1593#1583#1575#1583' '#1606#1605#1575#1610#1588' '#1587#1591#1585' '#1607#1575': '
    end
    object DBN1: TDBNavigator
      Left = 1365
      Top = 1
      Width = 230
      Height = 47
      Cursor = crHandPoint
      DataSource = DMScanImage.DSAllImage
      VisibleButtons = [nbFirst, nbPrior, nbNext, nbLast]
      Align = alRight
      Flat = True
      Ctl3D = False
      ParentCtl3D = False
      ParentShowHint = False
      ConfirmDelete = False
      ShowHint = True
      TabOrder = 0
      TabStop = True
      Visible = False
    end
    object Button1: TButton
      Left = 8
      Top = 5
      Width = 129
      Height = 41
      Caption = #1582#1585#1608#1580
      TabOrder = 1
      OnClick = Button1Click
    end
    object btn1: TButton
      Left = 144
      Top = 5
      Width = 129
      Height = 41
      Caption = #1575#1606#1578#1582#1575#1576' '#1578#1589#1608#1610#1585
      TabOrder = 2
      OnClick = btn1Click
    end
    object cbb1: TComboBox
      Left = 440
      Top = 2
      Width = 97
      Height = 21
      Style = csDropDownList
      ItemHeight = 13
      ItemIndex = 0
      TabOrder = 3
      Text = '2'
      OnChange = cbb1Change
      Items.Strings = (
        '2'
        '4'
        '5'
        '6'
        '7'
        '8'
        '9'
        '10'
        '11'
        '12'
        '13'
        '15'
        '20'
        '25'
        '30')
    end
    object cbb2: TComboBox
      Left = 440
      Top = 26
      Width = 97
      Height = 21
      Style = csDropDownList
      ItemHeight = 13
      ItemIndex = 0
      TabOrder = 4
      Text = '2'
      OnChange = cbb2Change
      Items.Strings = (
        '2'
        '4'
        '5'
        '6'
        '7'
        '8'
        '9'
        '10'
        '11'
        '12'
        '13'
        '15'
        '20'
        '25'
        '30')
    end
    object Button2: TButton
      Left = 280
      Top = 5
      Width = 129
      Height = 41
      Action = Print
      Caption = #1670#1575#1662' '#1578#1589#1608#1610#1585
      TabOrder = 5
    end
  end
  object DBCtrlGrid1: TDBCtrlGrid
    Left = 0
    Top = 0
    Width = 1596
    Height = 824
    Align = alClient
    ColCount = 4
    Color = 16770791
    DataSource = DMScanImage.DSAllImage
    PanelHeight = 274
    PanelWidth = 394
    ParentColor = False
    TabOrder = 1
    SelectedColor = clRed
    OnPaintPanel = DBCtrlGrid1PaintPanel
    object ImageEnDBView1: TImageEnDBView
      Left = 0
      Top = 0
      Width = 394
      Height = 274
      ParentCtl3D = False
      OnExit = ImageEnDBView1Exit
      SelectionOptions = [iesoAnimated, iesoSizeable, iesoMoveable, iesoCanScroll, iesoSelectTranspLayers]
      AutoFit = True
      ImageEnVersion = '3.0.0'
      EnableInteractionHints = True
      FlatScrollBars = True
      Align = alClient
      TabOrder = 0
      OnClick = ImageEnDBView1Click
      OnDblClick = ImageEnDBView1DblClick
      DataField = 'Image'
      DataSource = DMScanImage.DSAllImage
      PreviewFont.Charset = DEFAULT_CHARSET
      PreviewFont.Color = clWindowText
      PreviewFont.Height = -11
      PreviewFont.Name = 'MS Sans Serif'
      PreviewFont.Style = []
    end
  end
  object ActionList1: TActionList
    Left = 424
    Top = 272
    object Save: TAction
      Caption = 'Save'
      ShortCut = 16467
      OnExecute = SaveExecute
    end
    object Print: TAction
      Caption = 'Print'
      ShortCut = 16464
      OnExecute = PrintExecute
    end
  end
  object SaveDialog1: TSaveDialog
    Filter = 'Jpeg|.jpg|Jpeg|.Jpeg|Tiff|.tiff'
    Title = #1605#1587#1610#1585' '#1584#1582#1610#1585#1607' '#1601#1575#1610#1604
    Left = 698
    Top = 197
  end
  object ApplicationEvents1: TApplicationEvents
    OnMessage = ApplicationEvents1Message
    Left = 480
    Top = 144
  end
end
