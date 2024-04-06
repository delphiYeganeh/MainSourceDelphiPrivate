inherited SearchStno: TSearchStno
  Left = 484
  Top = 226
  BorderIcons = [biSystemMenu]
  BorderStyle = bsToolWindow
  Caption = #1580#1587#1578#1580#1608#1610' '#1583#1575#1606#1588#1580#1608
  ClientHeight = 266
  ClientWidth = 462
  Constraints.MinHeight = 300
  Constraints.MinWidth = 470
  OldCreateOrder = True
  Position = poMainFormCenter
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel [0]
    Left = 0
    Top = 0
    Width = 462
    Height = 36
    Align = alTop
    TabOrder = 0
    DesignSize = (
      462
      36)
    object Label1: TLabel
      Left = 14
      Top = 7
      Width = 121
      Height = 13
      Anchors = [akTop, akRight]
      Caption = #1581#1583#1575#1602#1604' '#1583#1608' '#1581#1585#1601' '#1585#1575' '#1578#1575#1610#1662' '#1705#1606#1610#1583
    end
    object Label2: TLabel
      Left = 409
      Top = 7
      Width = 35
      Height = 13
      Anchors = [akTop, akRight]
      Caption = #1580#1587#1578#1580#1608
    end
    object LookupEdit: TEdit
      Left = 140
      Top = 6
      Width = 262
      Height = 21
      Anchors = [akTop, akRight]
      TabOrder = 0
      OnChange = LookupEditChange
      OnKeyDown = LookupEditKeyDown
    end
  end
  object Panel2: TPanel [1]
    Left = 0
    Top = 36
    Width = 462
    Height = 230
    Align = alClient
    TabOrder = 1
    object DBG: TYDBGrid
      Left = 1
      Top = 1
      Width = 460
      Height = 228
      Cursor = crHandPoint
      Align = alClient
      Color = 16773368
      DataSource = DsFrom
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
