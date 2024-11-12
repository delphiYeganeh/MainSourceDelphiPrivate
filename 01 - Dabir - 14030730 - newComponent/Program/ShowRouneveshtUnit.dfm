inherited FShowRounevesht: TFShowRounevesht
  Left = 589
  Top = 243
  Caption = #1605#1588#1575#1607#1583#1607'  '#1587#1608#1575#1576#1602' '#1585#1608#1606#1608#1588#1578
  ClientHeight = 447
  ClientWidth = 962
  OldCreateOrder = True
  PixelsPerInch = 96
  TextHeight = 13
  object pnlMain: TPanel [0]
    Left = 0
    Top = 0
    Width = 962
    Height = 447
    Align = alClient
    TabOrder = 0
    object Panel1: TxpPanel
      Left = 1
      Top = 388
      Width = 960
      Height = 58
      StartColor = 16511469
      EndColor = 16244694
      FillDirection = fdLeftToRight
      TitleShow = False
      Caption = 'xpPanel'
      Title = 'xpPanelTitle'
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clNavy
      TitleFont.Height = -11
      TitleFont.Name = 'MS Sans Serif'
      TitleFont.Style = [fsBold]
      TitleAlignment = taCenter
      TitleStartColor = clWhite
      TitleEndColor = 15777194
      TitleColor = clWhite
      TitleFillDirect = fdLeftToRight
      TitleImageAlign = tiaLeft
      TitleButtons = [tbMinimize]
      DefaultHeight = 60
      BorderColor = clWhite
      BGImageAlign = iaStretch
      Align = alBottom
      TabOrder = 0
      DesignSize = (
        958
        56)
      object Label1: TLabel
        Left = 875
        Top = 11
        Width = 75
        Height = 13
        Anchors = [akTop, akRight]
        Caption = #1605#1590#1605#1608#1606' '#1585#1608#1606#1608#1588#1578
      end
      object DBMemo1: TDBMemo
        Left = 31
        Top = 8
        Width = 840
        Height = 41
        Anchors = [akTop, akRight]
        DataField = 'Paraph'
        DataSource = DSForm
        TabOrder = 0
      end
    end
    object YDBGrid1: TYDBGrid
      Left = 1
      Top = 1
      Width = 960
      Height = 387
      Cursor = crHandPoint
      Align = alClient
      DataSource = DSForm
      Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit]
      ReadOnly = True
      TabOrder = 1
      TitleFont.Charset = ARABIC_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'Tahoma'
      TitleFont.Style = []
      YeganehColor = False
      YeganehFinish = False
      PageNumber = False
      RecordNumber = False
      HasTime = False
      Oriention = poPortrait
      HasDate = False
      HasIndex = False
      InvertFarsiDate = True
      TitleSort = True
      AutoInsert = False
      OnNeedColorCondition = YDBGrid1NeedColorCondition
      FooterFields = 'Count'
      Columns = <
        item
          Expanded = False
          FieldName = 'UserName'
          Title.Caption = #1579#1576#1578' '#1705#1606#1606#1583#1607' '#1585#1608#1606#1608#1588#1578
          Width = 120
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'orgtitle'
          Title.Caption = #1583#1585#1610#1575#1601#1578' '#1705#1606#1606#1583#1607' '#1585#1608#1606#1608#1588#1578
          Width = 200
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'Paraph'
          Title.Caption = #1605#1590#1605#1608#1606' '#1585#1608#1606#1608#1588#1578
          Width = 600
          Visible = True
        end>
    end
  end
  inherited DSForm: TDataSource
    DataSet = Dm.spShowRounevesht
  end
end
