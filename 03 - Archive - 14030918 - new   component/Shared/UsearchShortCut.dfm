inherited FrsearchShortCut: TFrsearchShortCut
  Left = 453
  Top = 177
  BorderIcons = [biSystemMenu]
  BorderStyle = bsToolWindow
  Caption = ''
  ClientHeight = 278
  ClientWidth = 427
  Constraints.MinHeight = 300
  Constraints.MinWidth = 430
  OldCreateOrder = True
  Position = poMainFormCenter
  PixelsPerInch = 96
  TextHeight = 13
  object DBG: TYDBGrid [0]
    Left = 0
    Top = 23
    Width = 427
    Height = 145
    Align = alTop
    Color = 16773368
    DataSource = DSForm
    Options = [dgRowSelect, dgAlwaysShowSelection]
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
    Columns = <
      item
        Expanded = False
        FieldName = 'keyText'
        Visible = True
      end>
  end
  object Panel1: TPanel [1]
    Left = 0
    Top = 0
    Width = 427
    Height = 23
    Align = alTop
    AutoSize = True
    Caption = 'Panel1'
    TabOrder = 1
    object LookupEdit: TEdit
      Left = 1
      Top = 1
      Width = 442
      Height = 21
      TabOrder = 0
      OnChange = LookupEditChange
      OnKeyDown = LookupEditKeyDown
    end
  end
  object DBMemo1: TDBMemo [2]
    Left = 0
    Top = 168
    Width = 427
    Height = 110
    Align = alClient
    DataField = 'keyText'
    DataSource = DSForm
    TabOrder = 2
  end
  inherited DSForm: TDataSource
    DataSet = Dm.UserShortCut
  end
  object SearchF: TADODataSet
    Connection = Dm.YeganehConnection
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
