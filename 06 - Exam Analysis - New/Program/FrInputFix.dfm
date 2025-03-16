inherited FfixInput: TFfixInput
  Left = 231
  Top = 251
  Width = 544
  Height = 381
  BorderIcons = []
  Caption = #1578#1594#1610#1610#1585'  '#1583#1585' '#1575#1591#1604#1575#1593#1575#1578' '#1579#1575#1576#1578
  OldCreateOrder = True
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object YDBGrid1: TYDBGrid [0]
    Left = 0
    Top = 62
    Width = 536
    Height = 255
    Align = alTop
    Color = 13434879
    TabOrder = 0
    TitleFont.Charset = ARABIC_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
    YeganehColor = True
    YeganehFinish = False
    PageNumber = False
    RecordNumber = False
    HasTime = False
    Oriention = poPortrait
    HasDate = False
    HasIndex = True
    PrintTitle = #1604#1610#1587#1578' '#1578#1607#1610#1607' '#1588#1583#1607' '#1578#1608#1587#1591' '#1606#1585#1605' '#1575#1601#1586#1575#1585' '#1610#1711#1575#1606#1607
    InvertFarsiDate = True
    TitleSort = True
    AutoInsert = False
  end
  object ActionMainMenuBar1: TActionMainMenuBar [1]
    Left = 0
    Top = 0
    Width = 536
    Height = 29
    UseSystemFont = False
    ActionManager = ActionManager1
    Caption = 'ActionMainMenuBar1'
    ColorMap.HighlightColor = 15660791
    ColorMap.BtnSelectedColor = clBtnFace
    ColorMap.UnusedColor = 15660791
    EdgeOuter = esNone
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    PersistentHotKeys = True
    Spacing = 0
  end
  object BitBtn1: TBitBtn [2]
    Left = 11
    Top = 321
    Width = 75
    Height = 25
    Caption = #1582#1585#1608#1580
    TabOrder = 2
    OnClick = BitBtn1Click
  end
  object Panel1: TPanel [3]
    Left = 0
    Top = 29
    Width = 536
    Height = 33
    Align = alTop
    TabOrder = 3
    object Label1: TLabel
      Left = 485
      Top = 9
      Width = 35
      Height = 13
      Caption = #1580#1587#1578#1580#1608
    end
    object Edit1: TEdit
      Left = 56
      Top = 4
      Width = 424
      Height = 21
      TabOrder = 0
      OnChange = Edit1Change
    end
  end
  object ActionManager1: TActionManager
    ActionBars.SessionCount = 4
    ActionBars = <
      item
        Items = <
          item
            Action = DataSetFirst1
            ImageIndex = 30
          end
          item
            Action = DataSetLast1
            ImageIndex = 31
          end
          item
            Action = DataSetInsert1
            ImageIndex = 0
            ShortCut = 16429
          end
          item
            Action = DataSetDelete1
            ImageIndex = 21
            ShortCut = 16430
          end
          item
            Action = DataSetEdit1
            ImageIndex = 42
            ShortCut = 115
          end
          item
            Action = DataSetPost1
            ImageIndex = 38
            ShortCut = 113
          end
          item
            Action = DataSetCancel1
            ImageIndex = 72
            ShortCut = 16474
          end>
        ActionBar = ActionMainMenuBar1
        AutoSize = False
      end>
    Images = Dm.LetterImages
    Left = 304
    Top = 39
    StyleName = 'XP Style'
    object DataSetFirst1: TDataSetFirst
      Category = 'Dataset'
      Caption = #1575#1608#1604#1610#1606
      Hint = 'First'
      ImageIndex = 30
    end
    object DataSetLast1: TDataSetLast
      Category = 'Dataset'
      Caption = #1570#1582#1585#1610#1606
      Hint = 'Last'
      ImageIndex = 31
    end
    object DataSetInsert1: TDataSetInsert
      Category = 'Dataset'
      Caption = #1575#1590#1575#1601#1607
      Hint = 'Insert'
      ImageIndex = 0
      ShortCut = 16429
    end
    object DataSetDelete1: TDataSetDelete
      Category = 'Dataset'
      Caption = #1581#1584#1601
      Hint = 'Delete'
      ImageIndex = 21
      ShortCut = 16430
      OnExecute = DataSetDelete1Execute
    end
    object DataSetEdit1: TDataSetEdit
      Category = 'Dataset'
      Caption = #1608#1610#1585#1575#1610#1588
      Hint = 'Edit'
      ImageIndex = 42
      ShortCut = 115
    end
    object DataSetPost1: TDataSetPost
      Category = 'Dataset'
      Caption = #1584#1582#1610#1585#1607
      Hint = 'Post'
      ImageIndex = 38
      ShortCut = 113
    end
    object DataSetCancel1: TDataSetCancel
      Category = 'Dataset'
      Caption = #1575#1606#1589#1585#1575#1601
      Hint = 'Cancel'
      ImageIndex = 72
      ShortCut = 16474
    end
  end
  object dsform: TDataSource
    Left = 408
    Top = 176
  end
end
