object FmSearch: TFmSearch
  Left = 745
  Top = 192
  Width = 317
  Height = 460
  BiDiMode = bdRightToLeft
  BorderIcons = [biSystemMenu, biMaximize]
  Caption = #1601#1585#1605' '#1580#1587#1578#1580#1608
  Color = clBtnFace
  Constraints.MinHeight = 460
  Constraints.MinWidth = 317
  Font.Charset = ARABIC_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  KeyPreview = True
  OldCreateOrder = False
  ParentBiDiMode = False
  Position = poMainFormCenter
  OnKeyDown = FormKeyDown
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 301
    Height = 52
    Align = alTop
    TabOrder = 0
    DesignSize = (
      301
      52)
    object Label1: TLabel
      Left = 219
      Top = 3
      Width = 79
      Height = 13
      Anchors = [akTop, akRight]
      Caption = #1580#1587#1578#1580#1608' '#1576#1585' '#1575#1587#1575#1587
      Transparent = True
    end
    object LabelDisplayName: TLabel
      Left = 8
      Top = 3
      Width = 205
      Height = 13
      Anchors = [akTop, akRight]
      AutoSize = False
      Caption = 'LabelDisplayName'
      Color = clBtnFace
      Font.Charset = ARABIC_CHARSET
      Font.Color = clNavy
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentColor = False
      ParentFont = False
      Transparent = True
    end
    object EditSearch: TEdit
      Left = 111
      Top = 22
      Width = 188
      Height = 22
      Anchors = [akTop, akRight]
      Font.Charset = ARABIC_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 0
      OnChange = EditSearchChange
    end
  end
  object Panel2: TPanel
    Left = 0
    Top = 52
    Width = 301
    Height = 325
    Align = alClient
    TabOrder = 1
    object DBGridSearch: TDBGrid
      Left = 1
      Top = 1
      Width = 299
      Height = 323
      Align = alClient
      BorderStyle = bsNone
      Color = 16772332
      Ctl3D = False
      DataSource = DSSearch
      Font.Charset = ARABIC_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Tahoma'
      Font.Style = []
      Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgAlwaysShowSelection]
      ParentCtl3D = False
      ParentFont = False
      ReadOnly = True
      TabOrder = 0
      TitleFont.Charset = ARABIC_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'Tahoma'
      TitleFont.Style = []
      OnDblClick = DBGridSearchDblClick
      OnKeyDown = DBGridSearchKeyDown
      OnTitleClick = DBGridSearchTitleClick
    end
  end
  object Panel3: TPanel
    Left = 0
    Top = 377
    Width = 301
    Height = 44
    Align = alBottom
    TabOrder = 2
    DesignSize = (
      301
      44)
    object Label2: TLabel
      Left = 22
      Top = 4
      Width = 77
      Height = 26
      Anchors = [akTop, akRight]
      Caption = 'F5 : '#1587#1578#1608#1606' '#1576#1593#1583#1610#13#10'F6 : '#1587#1578#1608#1606' '#1602#1576#1604#1610
    end
    object BitBtn1: TBitBtn
      Left = 215
      Top = 6
      Width = 85
      Height = 25
      Cursor = crHandPoint
      Anchors = [akTop, akRight]
      Caption = #1578#1575#1610#1610#1583' F2'
      Default = True
      ModalResult = 1
      TabOrder = 0
      Glyph.Data = {
        DE010000424DDE01000000000000760000002800000024000000120000000100
        0400000000006801000000000000000000001000000000000000000000000000
        80000080000000808000800000008000800080800000C0C0C000808080000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
        3333333333333333333333330000333333333333333333333333F33333333333
        00003333344333333333333333388F3333333333000033334224333333333333
        338338F3333333330000333422224333333333333833338F3333333300003342
        222224333333333383333338F3333333000034222A22224333333338F338F333
        8F33333300003222A3A2224333333338F3838F338F33333300003A2A333A2224
        33333338F83338F338F33333000033A33333A222433333338333338F338F3333
        0000333333333A222433333333333338F338F33300003333333333A222433333
        333333338F338F33000033333333333A222433333333333338F338F300003333
        33333333A222433333333333338F338F00003333333333333A22433333333333
        3338F38F000033333333333333A223333333333333338F830000333333333333
        333A333333333333333338330000333333333333333333333333333333333333
        0000}
      NumGlyphs = 2
    end
    object BitBtn2: TBitBtn
      Left = 123
      Top = 6
      Width = 85
      Height = 25
      Cursor = crHandPoint
      Anchors = [akTop, akRight]
      Caption = #1575#1606#1589#1585#1575#1601' Esc'
      TabOrder = 1
      Kind = bkCancel
    end
  end
  object DSSearch: TDataSource
    Left = 72
    Top = 136
  end
  object XPManifest1: TXPManifest
    Left = 160
    Top = 137
  end
end
