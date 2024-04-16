inherited frCommisionPercent: TfrCommisionPercent
  Left = 444
  Top = 261
  Width = 479
  Caption = #1578#1593#1585#1610#1601' '#1583#1585#1589#1583' '#1662#1608#1585#1587#1575#1606#1578' '#1605#1581#1589#1608#1604
  PixelsPerInch = 96
  TextHeight = 13
  object GroupBox2: TGroupBox [0]
    Left = 0
    Top = 0
    Width = 471
    Height = 263
    Align = alClient
    Caption = #1578#1593#1585#1610#1601' '#1583#1585#1589#1583' '#1662#1608#1585#1587#1575#1606#1578
    TabOrder = 0
    object dbgCommisionPercent: TYDBGrid
      Left = 2
      Top = 15
      Width = 467
      Height = 223
      Cursor = crHandPoint
      Align = alClient
      DataSource = DSForm
      Options = [dgEditing, dgAlwaysShowEditor, dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit]
      TabOrder = 0
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
      AutoInsert = True
      FooterFields = 'Count'
      Columns = <
        item
          Alignment = taRightJustify
          Expanded = False
          FieldName = 'Product'
          Title.Alignment = taCenter
          Title.Caption = #1605#1581#1589#1608#1604
          Width = 187
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'Effectivedate'
          Title.Alignment = taCenter
          Title.Caption = #1578#1575#1585#1610#1582' '#1575#1593#1605#1575#1604
          Width = 109
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'CommisionPercent'
          Title.Alignment = taCenter
          Title.Caption = #1583#1585#1589#1583' '#1662#1608#1585#1587#1575#1606#1578
          Width = 117
          Visible = True
        end>
    end
    object Panel5: TPanel
      Left = 2
      Top = 238
      Width = 467
      Height = 23
      Align = alBottom
      BevelOuter = bvNone
      TabOrder = 1
      object BitBtn3: TBitBtn
        Left = 4
        Top = 1
        Width = 30
        Height = 21
        Caption = '+'
        TabOrder = 0
        OnClick = BitBtn3Click
      end
    end
  end
  inherited DSForm: TDataSource
    DataSet = ADQCommisionPercent
  end
  object ADQCommisionPercent: TADOQuery
    Connection = Dm.YeganehConnection
    Parameters = <>
    SQL.Strings = (
      'select * from CommisionPercent')
    Left = 80
    Top = 120
    object ADQCommisionPercentCommisionPercentID: TAutoIncField
      FieldName = 'CommisionPercentID'
      ReadOnly = True
    end
    object ADQCommisionPercentProductID: TIntegerField
      FieldName = 'ProductID'
    end
    object ADQCommisionPercentCommisionPercent: TWordField
      FieldName = 'CommisionPercent'
    end
    object ADQCommisionPercentEffectivedate: TWideStringField
      FieldName = 'Effectivedate'
      FixedChar = True
      Size = 10
    end
    object ADQCommisionPercentProduct: TStringField
      FieldKind = fkLookup
      FieldName = 'Product'
      LookupDataSet = Dm.Product
      LookupKeyFields = 'ProductID'
      LookupResultField = 'ProductTitle'
      KeyFields = 'ProductID'
      Size = 100
      Lookup = True
    end
  end
end
