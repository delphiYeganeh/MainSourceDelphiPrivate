inherited SearchAdoDataSet: TSearchAdoDataSet
  Left = 434
  Top = 148
  BorderIcons = [biSystemMenu]
  BorderStyle = bsToolWindow
  Caption = #1580#1587#1578#1580#1608
  ClientHeight = 169
  ClientWidth = 349
  Constraints.MinHeight = 200
  Constraints.MinWidth = 300
  FormStyle = fsStayOnTop
  OldCreateOrder = True
  Position = poMainFormCenter
  PixelsPerInch = 96
  TextHeight = 13
  object Label2: TLabel [0]
    Left = 314
    Top = 1
    Width = 35
    Height = 13
    Anchors = [akTop, akRight]
    Caption = #1580#1587#1578#1580#1608
  end
  object DBG: TYDBGrid [1]
    Left = 0
    Top = 24
    Width = 349
    Height = 145
    Align = alBottom
    Anchors = [akLeft, akTop, akRight, akBottom]
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
    Left = 8
    Top = 0
    Width = 299
    Height = 21
    Anchors = [akLeft, akTop, akRight]
    TabOrder = 0
    OnChange = LookupEditChange
    OnKeyDown = LookupEditKeyDown
  end
  inherited DSForm: TDataSource
    DataSet = SearchF
    Left = 56
    Top = 88
  end
  inherited ActionList: TActionList
    Left = 152
    Top = 104
  end
  object SearchF: TADODataSet
    Parameters = <>
    Left = 56
    Top = 40
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
  object ADOQuery1: TADOQuery
    Connection = Dm.YeganehConnection
    Parameters = <>
    Left = 264
    Top = 104
  end
end
