object SearchAdoDataSet: TSearchAdoDataSet
  Left = 67
  Top = 289
  Width = 429
  Height = 263
  BiDiMode = bdRightToLeft
  BorderIcons = [biSystemMenu, biMaximize]
  Color = clBtnFace
  Font.Charset = ARABIC_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = True
  ParentBiDiMode = False
  Position = poMainFormCenter
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object DBG: TYDBGrid
    Left = 0
    Top = 41
    Width = 421
    Height = 188
    Cursor = crHandPoint
    Align = alClient
    Color = 16766955
    DataSource = dsform
    Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit]
    ReadOnly = True
    TabOrder = 0
    TitleFont.Charset = ARABIC_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
    OnDblClick = DBGDblClick
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
  end
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 421
    Height = 41
    Align = alTop
    TabOrder = 1
    DesignSize = (
      421
      41)
    object Label2: TLabel
      Left = 380
      Top = 7
      Width = 35
      Height = 13
      Anchors = [akTop, akRight]
      Caption = #1580#1587#1578#1580#1608
    end
    object LookupEdit: TEdit
      Left = 9
      Top = 6
      Width = 360
      Height = 21
      TabOrder = 0
      OnChange = LookupEditChange
      OnKeyDown = LookupEditKeyDown
    end
  end
  object SearchF: TADODataSet
    Parameters = <>
    Left = 48
    Top = 56
  end
  object ActionList1: TActionList
    Left = 152
    Top = 48
    object Adone: TAction
      Caption = 'done'
      ShortCut = 13
      OnExecute = AdoneExecute
    end
    object AFail: TAction
      Caption = 'AFail'
      ShortCut = 27
      OnExecute = AFailExecute
    end
  end
  object dsform: TDataSource
    DataSet = SearchF
    Left = 224
    Top = 72
  end
end
