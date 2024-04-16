inherited SearchAdoDataSet: TSearchAdoDataSet
  Left = 422
  Top = 201
  BorderIcons = [biSystemMenu]
  BorderStyle = bsToolWindow
  Caption = ''
  ClientHeight = 236
  ClientWidth = 339
  OldCreateOrder = True
  Position = poMainFormCenter
  PixelsPerInch = 96
  TextHeight = 13
  object Label2: TLabel [0]
    Left = 298
    Top = 6
    Width = 35
    Height = 13
    Anchors = [akTop, akRight]
    Caption = #1580#1587#1578#1580#1608
  end
  object DBG: TYDBGrid [1]
    Left = 8
    Top = 32
    Width = 323
    Height = 193
    Anchors = [akTop, akRight]
    Color = 16766955
    DataSource = DSForm
    Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit]
    ReadOnly = True
    TabOrder = 1
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
  object LookupEdit: TEdit [2]
    Left = 9
    Top = 5
    Width = 284
    Height = 21
    TabOrder = 0
    OnChange = LookupEditChange
    OnKeyDown = LookupEditKeyDown
  end
  inherited DSForm: TDataSource
    DataSet = SearchF
    Left = 168
  end
  inherited ActionList: TActionList
    Top = 88
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
end
