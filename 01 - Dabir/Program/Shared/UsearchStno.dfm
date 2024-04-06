inherited SearchStno: TSearchStno
  Left = 405
  Top = 212
  BorderIcons = [biSystemMenu]
  BorderStyle = bsToolWindow
  Caption = #1580#1587#1578#1580#1608#1610' '#1605#1608#1590#1608#1593
  ClientHeight = 266
  ClientWidth = 484
  Constraints.MinHeight = 250
  Constraints.MinWidth = 450
  OldCreateOrder = True
  Position = poMainFormCenter
  PixelsPerInch = 96
  TextHeight = 13
  object Label2: TLabel [0]
    Left = 441
    Top = 5
    Width = 35
    Height = 13
    Anchors = [akTop, akRight]
    Caption = #1580#1587#1578#1580#1608
  end
  object Label1: TLabel [1]
    Left = 322
    Top = 29
    Width = 121
    Height = 13
    Anchors = [akTop, akRight]
    Caption = #1581#1583#1575#1602#1604' '#1583#1608' '#1581#1585#1601' '#1585#1575' '#1578#1575#1610#1662' '#1705#1606#1610#1583
  end
  object DBG: TYDBGrid [2]
    Left = 0
    Top = 47
    Width = 484
    Height = 219
    Cursor = crHandPoint
    Align = alBottom
    Anchors = [akLeft, akTop, akRight, akBottom]
    Color = 16766955
    DataSource = DsFrom
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
    Columns = <
      item
        Expanded = False
        FieldName = 'code'
        Title.Caption = #1603#1583
        Width = 105
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'title'
        Title.Caption = #1593#1606#1608#1575#1606
        Width = 289
        Visible = True
      end>
  end
  object LookupEdit: TEdit [3]
    Left = 8
    Top = 4
    Width = 421
    Height = 21
    Anchors = [akLeft, akTop, akRight]
    TabOrder = 0
    OnChange = LookupEditChange
    OnKeyDown = LookupEditKeyDown
  end
  inherited DSForm: TDataSource
    Top = 56
  end
  object SearchF: TADODataSet
    Connection = Dm.YeganehConnection
    CursorType = ctStatic
    CommandText = 'Select top 0 '#39#39' code,'#39#39' title'#13#10'from Users'
    Parameters = <>
    Left = 48
    Top = 56
  end
  object DsFrom: TDataSource
    DataSet = SearchF
    Left = 104
    Top = 88
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
