object DMOrders: TDMOrders
  OldCreateOrder = False
  Left = 270
  Top = 109
  Height = 485
  Width = 327
  object QrOrders: TQuery
    CachedUpdates = True
    AfterInsert = QrOrdersAfterInsert
    BeforePost = QrOrdersBeforePost
    BeforeDelete = QrOrdersBeforeDelete
    DatabaseName = 'MySoftDB'
    SQL.Strings = (
      'Select *'
      
        '       ,(Select EDName from EnterData Where EnterData_ID = ED_Or' +
        'dersType_Ref) as OrdersTypeName'
      'from Orders')
    UpdateObject = USOrders
    Left = 40
    Top = 24
    object QrOrdersOrders_ID: TIntegerField
      FieldName = 'Orders_ID'
      Origin = 'MYSOFTDB.Orders.Orders_ID'
    end
    object QrOrdersCode: TIntegerField
      FieldName = 'Code'
      Origin = 'MYSOFTDB.Orders.Code'
    end
    object QrOrdersDateOrders: TStringField
      FieldName = 'DateOrders'
      Origin = 'MYSOFTDB.Orders.DateOrders'
      OnGetText = QrOrdersDateOrdersGetText
      OnSetText = QrOrdersDateOrdersSetText
      EditMask = #8207'!1399/99/99;1;_'
      FixedChar = True
      Size = 50
    end
    object QrOrdersDateDo: TStringField
      FieldName = 'DateDo'
      Origin = 'MYSOFTDB.Orders.DateDo'
      OnGetText = QrOrdersDateOrdersGetText
      OnSetText = QrOrdersDateOrdersSetText
      EditMask = #8207'!1399/99/99;1;_'
      FixedChar = True
      Size = 50
    end
    object QrOrdersArtName: TStringField
      Alignment = taRightJustify
      FieldName = 'ArtName'
      Origin = 'MYSOFTDB.Orders.ArtName'
      FixedChar = True
      Size = 100
    end
    object QrOrdersArtCount: TIntegerField
      FieldName = 'ArtCount'
      Origin = 'MYSOFTDB.Orders.ArtCount'
    end
    object QrOrdersArtPrice: TFloatField
      FieldName = 'ArtPrice'
      Origin = 'MYSOFTDB.Orders.ArtPrice'
      OnGetText = QrOrdersArtPriceGetText
      OnSetText = QrOrdersArtPriceSetText
    end
    object QrOrdersPersonelName: TStringField
      Alignment = taRightJustify
      FieldName = 'PersonelName'
      Origin = 'MYSOFTDB.Orders.PersonelName'
      FixedChar = True
      Size = 100
    end
    object QrOrdersComment: TStringField
      Alignment = taRightJustify
      FieldName = 'Comment'
      Origin = 'MYSOFTDB.Orders.Comment'
      FixedChar = True
      Size = 255
    end
    object QrOrdersED_OrdersType_Ref: TIntegerField
      FieldName = 'ED_OrdersType_Ref'
      Origin = 'MYSOFTDB.Orders.ED_OrdersType_Ref'
    end
    object QrOrdersOrdersTypeName: TStringField
      Alignment = taRightJustify
      FieldName = 'OrdersTypeName'
      FixedChar = True
      Size = 100
    end
  end
  object USOrders: TUpdateSQL
    ModifySQL.Strings = (
      'update Orders'
      'set'
      '  Orders_ID = :Orders_ID,'
      '  Code = :Code,'
      '  DateOrders = :DateOrders,'
      '  DateDo = :DateDo,'
      '  ArtName = :ArtName,'
      '  ArtCount = :ArtCount,'
      '  ArtPrice = :ArtPrice,'
      '  PersonelName = :PersonelName,'
      '  ED_OrdersType_Ref = :ED_OrdersType_Ref,'
      '  Comment = :Comment'
      'where'
      '  Orders_ID = :OLD_Orders_ID')
    InsertSQL.Strings = (
      'insert into Orders'
      
        '  (Orders_ID, Code, DateOrders, DateDo, ArtName, ArtCount, ArtPr' +
        'ice, PersonelName, '
      '   ED_OrdersType_Ref, Comment)'
      'values'
      
        '  (:Orders_ID, :Code, :DateOrders, :DateDo, :ArtName, :ArtCount,' +
        ' :ArtPrice, '
      '   :PersonelName, :ED_OrdersType_Ref, :Comment)')
    DeleteSQL.Strings = (
      'delete from Orders'
      'where'
      '  Orders_ID = :OLD_Orders_ID')
    Left = 40
    Top = 128
  end
  object DSOrders: TDataSource
    AutoEdit = False
    DataSet = QrOrders
    Left = 40
    Top = 76
  end
  object QrSrchOrders: TQuery
    DatabaseName = 'MySoftDB'
    SQL.Strings = (
      'Select *'
      'from Orders'
      'Where (1=1)')
    Left = 128
    Top = 24
    object QrSrchOrdersOrders_ID: TIntegerField
      FieldName = 'Orders_ID'
      Origin = 'MYSOFTDB.Orders.Orders_ID'
    end
    object QrSrchOrdersCode: TIntegerField
      Tag = 1
      DisplayLabel = #1705#1583
      DisplayWidth = 5
      FieldName = 'Code'
      Origin = 'MYSOFTDB.Orders.Code'
    end
    object QrSrchOrdersDateOrders: TStringField
      Tag = 1
      DisplayLabel = #1578#1575#1585#1610#1582' '#1587#1601#1575#1585#1588
      DisplayWidth = 10
      FieldName = 'DateOrders'
      Origin = 'MYSOFTDB.Orders.DateOrders'
      FixedChar = True
      Size = 50
    end
    object QrSrchOrdersArtName: TStringField
      Tag = 1
      DisplayLabel = #1606#1575#1605' '#1705#1575#1604#1575
      DisplayWidth = 20
      FieldName = 'ArtName'
      Origin = 'MYSOFTDB.Orders.ArtName'
      FixedChar = True
      Size = 100
    end
    object QrSrchOrdersPersonelName: TStringField
      Tag = 1
      DisplayLabel = #1606#1575#1605' '#1587#1601#1575#1585#1588' '#1583#1607#1606#1583#1607
      DisplayWidth = 20
      FieldName = 'PersonelName'
      Origin = 'MYSOFTDB.Orders.PersonelName'
      FixedChar = True
      Size = 100
    end
    object QrSrchOrdersComment: TStringField
      Tag = 1
      DisplayLabel = #1578#1608#1590#1610#1581#1575#1578
      DisplayWidth = 20
      FieldName = 'Comment'
      Origin = 'MYSOFTDB.Orders.ED_OrderType_Ref'
      FixedChar = True
      Size = 255
    end
  end
  object QrSrchPrs: TQuery
    DatabaseName = 'MySoftDB'
    SQL.Strings = (
      'Select *'
      'From Personel'
      'Where (1=1)')
    Left = 128
    Top = 76
    object QrSrchPrsPersonel_ID: TIntegerField
      FieldName = 'Personel_ID'
      Origin = 'MYSOFTDB.Personel.Personel_ID'
    end
    object QrSrchPrsCode: TIntegerField
      Tag = 1
      DisplayLabel = #1705#1583
      DisplayWidth = 5
      FieldName = 'Code'
      Origin = 'MYSOFTDB.Personel.Code'
    end
    object QrSrchPrsFamily: TStringField
      Tag = 1
      DisplayLabel = #1606#1575#1605' '#1582#1575#1606#1608#1575#1583#1711#1610
      DisplayWidth = 20
      FieldName = 'Family'
      Origin = 'MYSOFTDB.Personel.Family'
      FixedChar = True
      Size = 100
    end
    object QrSrchPrsName: TStringField
      Tag = 1
      DisplayLabel = #1606#1575#1605
      DisplayWidth = 15
      FieldName = 'Name'
      Origin = 'MYSOFTDB.Personel.Name'
      FixedChar = True
      Size = 100
    end
    object QrSrchPrsBirthCardNu: TIntegerField
      Tag = 1
      DisplayLabel = #1588'.'#1588#1606#1575#1587#1606#1575#1605#1607
      FieldName = 'BirthCardNu'
      Origin = 'MYSOFTDB.Personel.BirthCardNu'
    end
    object QrSrchPrsTel1: TStringField
      Tag = 1
      DisplayLabel = #1578#1604#1601#1606
      DisplayWidth = 15
      FieldName = 'Tel1'
      Origin = 'MYSOFTDB.Personel.Tel1'
      FixedChar = True
      Size = 40
    end
    object QrSrchPrsMobail: TStringField
      Tag = 1
      DisplayLabel = #1607#1605#1585#1575#1607
      DisplayWidth = 15
      FieldName = 'Mobail'
      Origin = 'MYSOFTDB.Personel.Mobail'
      FixedChar = True
      Size = 40
    end
  end
  object QrSrchArticle: TQuery
    DatabaseName = 'MySoftDB'
    SQL.Strings = (
      'Select *'
      'From Article'
      'Where (1=1)'
      'And(IsNull(IsService,0)=0) /*'#1705#1575#1585#1607#1575#1610' '#1582#1583#1605#1575#1578#1610'*/')
    Left = 128
    Top = 128
    object QrSrchArticleArticle_ID: TStringField
      FieldName = 'Article_ID'
      Origin = 'MYSOFTDB.Article.Article_ID'
      FixedChar = True
      Size = 7
    end
    object QrSrchArticleCode: TIntegerField
      Tag = 1
      DisplayLabel = #1705#1583' '#1705#1575#1604#1575
      DisplayWidth = 5
      FieldName = 'Code'
      Origin = 'MYSOFTDB.Article.Code'
    end
    object QrSrchArticleName: TStringField
      Tag = 1
      DisplayLabel = #1606#1575#1605' '#1705#1575#1604#1575
      DisplayWidth = 40
      FieldName = 'Name'
      Origin = 'MYSOFTDB.Article.Name'
      FixedChar = True
      Size = 100
    end
    object QrSrchArticleMaxBuy: TIntegerField
      FieldName = 'MaxBuy'
    end
    object QrSrchArticleEndBuyPrice: TFloatField
      FieldName = 'EndBuyPrice'
    end
  end
  object QrOrdersType: TQuery
    DatabaseName = 'MySoftDB'
    SQL.Strings = (
      'Select *'
      'from Vw_OrdersType  /*'#1606#1608#1593' '#1587#1601#1575#1585#1588'*/')
    Left = 224
    Top = 24
    object QrOrdersTypeEnterData_ID: TIntegerField
      FieldName = 'EnterData_ID'
      Origin = 'MYSOFTDB.Vw_OrdersType.EnterData_ID'
    end
    object QrOrdersTypeEDName: TStringField
      Alignment = taRightJustify
      FieldName = 'EDName'
      Origin = 'MYSOFTDB.Vw_OrdersType.EDName'
      FixedChar = True
      Size = 100
    end
  end
  object DSOrdersType: TDataSource
    DataSet = QrOrdersType
    Left = 224
    Top = 76
  end
  object QrRepOrders: TQuery
    CachedUpdates = True
    DatabaseName = 'MySoftDB'
    SQL.Strings = (
      'Select *'
      
        '       ,(Select EDName from EnterData Where(EnterData_ID = ED_Or' +
        'dersType_Ref)) as OrdersTypeName'
      'from Orders'
      'Where (1=1)')
    Left = 40
    Top = 216
    object QrRepOrdersOrders_ID: TIntegerField
      FieldName = 'Orders_ID'
      Origin = 'MYSOFTDB.Orders.Orders_ID'
    end
    object QrRepOrdersCode: TIntegerField
      FieldName = 'Code'
      Origin = 'MYSOFTDB.Orders.Code'
    end
    object QrRepOrdersDateOrders: TStringField
      FieldName = 'DateOrders'
      Origin = 'MYSOFTDB.Orders.DateOrders'
      OnGetText = QrOrdersDateOrdersGetText
      OnSetText = QrOrdersDateOrdersSetText
      EditMask = #8207'!1399/99/99;1;_'
      FixedChar = True
      Size = 50
    end
    object QrRepOrdersDateDo: TStringField
      FieldName = 'DateDo'
      Origin = 'MYSOFTDB.Orders.DateDo'
      OnGetText = QrOrdersDateOrdersGetText
      OnSetText = QrOrdersDateOrdersSetText
      EditMask = #8207'!1399/99/99;1;_'
      FixedChar = True
      Size = 50
    end
    object QrRepOrdersArtName: TStringField
      Alignment = taRightJustify
      FieldName = 'ArtName'
      Origin = 'MYSOFTDB.Orders.ArtName'
      FixedChar = True
      Size = 100
    end
    object QrRepOrdersArtCount: TIntegerField
      FieldName = 'ArtCount'
      Origin = 'MYSOFTDB.Orders.ArtCount'
    end
    object QrRepOrdersArtPrice: TFloatField
      FieldName = 'ArtPrice'
      Origin = 'MYSOFTDB.Orders.ArtPrice'
      OnGetText = QrOrdersArtPriceGetText
      OnSetText = QrOrdersArtPriceSetText
    end
    object QrRepOrdersPersonelName: TStringField
      Alignment = taRightJustify
      FieldName = 'PersonelName'
      Origin = 'MYSOFTDB.Orders.PersonelName'
      FixedChar = True
      Size = 100
    end
    object QrRepOrdersComment: TStringField
      Alignment = taRightJustify
      FieldName = 'Comment'
      Origin = 'MYSOFTDB.Orders.Comment'
      FixedChar = True
      Size = 255
    end
    object QrRepOrdersED_OrdersType_Ref: TIntegerField
      FieldName = 'ED_OrdersType_Ref'
      Origin = 'MYSOFTDB.Orders.ED_OrdersType_Ref'
    end
    object QrRepOrdersOrdersTypeName: TStringField
      Alignment = taRightJustify
      FieldName = 'OrdersTypeName'
      FixedChar = True
      Size = 100
    end
  end
  object DSRepOrders: TDataSource
    AutoEdit = False
    DataSet = QrRepOrders
    Left = 40
    Top = 268
  end
  object frxRepOrders: TfrxReport
    Version = '4.3'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick]
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = #1662#1610#1588' '#1601#1585#1590
    PrintOptions.PrintOnSheet = 0
    ReportOptions.CreateDate = 39448.129562349500000000
    ReportOptions.LastChange = 40185.922708148200000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      'begin'
      ''
      'end.')
    Left = 40
    Top = 368
    Datasets = <
      item
        DataSet = frxDBDRepOrders
        DataSetName = #1587#1601#1575#1585#1588#1575#1578
      end>
    Variables = <>
    Style = <>
    object Data: TfrxDataPage
      Height = 1000.000000000000000000
      Width = 1000.000000000000000000
    end
    object Page1: TfrxReportPage
      PaperWidth = 210.000000000000000000
      PaperHeight = 297.000000000000000000
      PaperSize = 9
      LeftMargin = 5.000000000000000000
      RightMargin = 5.000000000000000000
      TopMargin = 5.000000000000000000
      BottomMargin = 5.000000000000000000
      object ReportTitle1: TfrxReportTitle
        Height = 37.795300000000000000
        Top = 18.897650000000000000
        Width = 755.906000000000000000
        object Shape2: TfrxShapeView
          Align = baClient
          Width = 755.906000000000000000
          Height = 37.795300000000000000
          Color = 327679
        end
        object Shape4: TfrxShapeView
          Left = 283.464750000000000000
          Top = 4.559059999999999000
          Width = 188.976500000000000000
          Height = 26.456710000000000000
          Color = 16764622
          Shape = skEllipse
        end
        object Memo2: TfrxMemoView
          Left = 332.598640000000000000
          Top = 8.338590000000000000
          Width = 94.488250000000000000
          Height = 18.897650000000000000
          DisplayFormat.DecimalSeparator = '.'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haCenter
          Memo.UTF8 = (
            #1591#177#1591#179#1592#1657#1591#175' '#1591#179#1592#1662#1591#167#1591#177#1591#180#1591#167#1591#1726)
          ParentFont = False
        end
      end
      object MasterData1: TfrxMasterData
        Height = 83.590600000000000000
        Top = 113.385900000000000000
        Width = 755.906000000000000000
        DataSet = frxDBDRepOrders
        DataSetName = #1587#1601#1575#1585#1588#1575#1578
        PrintIfDetailEmpty = True
        RowCount = 0
        object Shape1: TfrxShapeView
          Align = baClient
          Width = 755.906000000000000000
          Height = 83.590600000000000000
          Curve = 1
          Shape = skRoundRectangle
        end
        object Memo3: TfrxMemoView
          Left = 686.653990000000000000
          Top = 8.338589999999996000
          Width = 34.015770000000000000
          Height = 18.897650000000000000
          DataField = #1705#1583
          DataSet = frxDBDRepOrders
          DataSetName = #1587#1601#1575#1585#1588#1575#1578
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8 = (
            '['#1591#179#1592#1662#1591#167#1591#177#1591#180#1591#167#1591#1726'."'#1593#169#1591#175'"]')
          ParentFont = False
        end
        object Memo4: TfrxMemoView
          Left = 721.890230000000000000
          Top = 8.338589999999996000
          Width = 26.456710000000000000
          Height = 18.897650000000000000
          DisplayFormat.DecimalSeparator = '.'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8 = (
            ': '#1593#169#1591#175)
          ParentFont = False
        end
        object Memo5: TfrxMemoView
          Left = 319.157700000000000000
          Top = 8.338589999999996000
          Width = 79.370130000000000000
          Height = 18.897650000000000000
          DataField = #1578#1575#1585#1610#1582' '#1587#1601#1575#1585#1588
          DataSet = frxDBDRepOrders
          DataSetName = #1587#1601#1575#1585#1588#1575#1578
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8 = (
            '['#1591#179#1592#1662#1591#167#1591#177#1591#180#1591#167#1591#1726'."'#1591#1726#1591#167#1591#177#1592#1657#1591#174' '#1591#179#1592#1662#1591#167#1591#177#1591#180'"]')
          ParentFont = False
        end
        object Memo6: TfrxMemoView
          Left = 402.086890000000000000
          Top = 8.338589999999996000
          Width = 71.811070000000000000
          Height = 18.897650000000000000
          DisplayFormat.DecimalSeparator = '.'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8 = (
            ': '#1591#1726#1591#167#1591#177#1592#1657#1591#174' '#1591#179#1592#1662#1591#167#1591#177#1591#180)
          ParentFont = False
        end
        object Memo7: TfrxMemoView
          Left = 152.637910000000000000
          Top = 8.338589999999996000
          Width = 83.149660000000000000
          Height = 18.897650000000000000
          DataField = #1578#1575#1585#1610#1582' '#1575#1606#1580#1575#1605
          DataSet = frxDBDRepOrders
          DataSetName = #1587#1601#1575#1585#1588#1575#1578
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8 = (
            '['#1591#179#1592#1662#1591#167#1591#177#1591#180#1591#167#1591#1726'."'#1591#1726#1591#167#1591#177#1592#1657#1591#174' '#1591#167#1592#8224#1591#172#1591#167#1592#8230'"]')
          ParentFont = False
        end
        object Memo8: TfrxMemoView
          Left = 239.567100000000000000
          Top = 8.338589999999996000
          Width = 60.472480000000000000
          Height = 18.897650000000000000
          DisplayFormat.DecimalSeparator = '.'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8 = (
            ': '#1591#1726#1591#167#1591#177#1592#1657#1591#174' '#1591#167#1592#8224#1591#172#1591#167#1592#8230)
          ParentFont = False
        end
        object Memo9: TfrxMemoView
          Left = 570.709030000000000000
          Top = 34.795300000000010000
          Width = 132.283550000000000000
          Height = 18.897650000000000000
          DataField = #1606#1575#1605' '#1705#1575#1604#1575
          DataSet = frxDBDRepOrders
          DataSetName = #1587#1601#1575#1585#1588#1575#1578
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8 = (
            '['#1591#179#1592#1662#1591#167#1591#177#1591#180#1591#167#1591#1726'."'#1592#8224#1591#167#1592#8230' '#1593#169#1591#167#1592#8222#1591#167'"]')
          ParentFont = False
        end
        object Memo10: TfrxMemoView
          Left = 706.772110000000000000
          Top = 34.795300000000010000
          Width = 41.574830000000000000
          Height = 18.897650000000000000
          DisplayFormat.DecimalSeparator = '.'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8 = (
            ': '#1592#8224#1591#167#1592#8230' '#1593#169#1591#167#1592#8222#1591#167)
          ParentFont = False
        end
        object Memo11: TfrxMemoView
          Left = 486.338900000000000000
          Top = 34.795300000000010000
          Width = 45.354360000000000000
          Height = 18.897650000000000000
          DataField = #1578#1593#1583#1575#1583
          DataSet = frxDBDRepOrders
          DataSetName = #1587#1601#1575#1585#1588#1575#1578
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8 = (
            '['#1591#179#1592#1662#1591#167#1591#177#1591#180#1591#167#1591#1726'."'#1591#1726#1591#185#1591#175#1591#167#1591#175'"]')
          ParentFont = False
        end
        object Memo12: TfrxMemoView
          Left = 534.472790000000000000
          Top = 34.795300000000010000
          Width = 30.236240000000000000
          Height = 18.897650000000000000
          DisplayFormat.DecimalSeparator = '.'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8 = (
            ': '#1591#1726#1591#185#1591#175#1591#167#1591#175)
          ParentFont = False
        end
        object Memo13: TfrxMemoView
          Left = 76.488250000000000000
          Top = 34.795300000000010000
          Width = 136.063080000000000000
          Height = 18.897650000000000000
          DataField = #1606#1575#1605' '#1587#1601#1575#1585#1588' '#1583#1607#1606#1583#1607
          DataSet = frxDBDRepOrders
          DataSetName = #1587#1601#1575#1585#1588#1575#1578
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8 = (
            '['#1591#179#1592#1662#1591#167#1591#177#1591#180#1591#167#1591#1726'."'#1592#8224#1591#167#1592#8230' '#1591#179#1592#1662#1591#167#1591#177#1591#180' '#1591#175#1592#8225#1592#8224#1591#175#1592#8225'"]')
          ParentFont = False
        end
        object Memo14: TfrxMemoView
          Left = 216.330860000000000000
          Top = 34.795300000000010000
          Width = 83.149660000000000000
          Height = 18.897650000000000000
          DisplayFormat.DecimalSeparator = '.'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8 = (
            ': '#1592#8224#1591#167#1592#8230' '#1591#179#1592#1662#1591#167#1591#177#1591#180' '#1591#175#1592#8225#1592#8224#1591#175#1592#8225)
          ParentFont = False
        end
        object Memo15: TfrxMemoView
          Left = 504.457020000000000000
          Top = 8.338589999999996000
          Width = 105.826840000000000000
          Height = 18.897650000000000000
          DataField = #1606#1608#1593' '#1587#1601#1575#1585#1588
          DataSet = frxDBDRepOrders
          DataSetName = #1587#1601#1575#1585#1588#1575#1578
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8 = (
            '['#1591#179#1592#1662#1591#167#1591#177#1591#180#1591#167#1591#1726'."'#1592#8224#1592#710#1591#185' '#1591#179#1592#1662#1591#167#1591#177#1591#180'"]')
          ParentFont = False
        end
        object Memo16: TfrxMemoView
          Left = 613.842920000000000000
          Top = 8.338589999999996000
          Width = 64.252010000000000000
          Height = 18.897650000000000000
          DisplayFormat.DecimalSeparator = '.'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8 = (
            ': '#1592#8224#1592#710#1591#185' '#1591#179#1592#1662#1591#167#1591#177#1591#180)
          ParentFont = False
        end
        object Memo17: TfrxMemoView
          Left = 356.614410000000000000
          Top = 34.795300000000010000
          Width = 79.370130000000000000
          Height = 18.897650000000000000
          DataField = #1602#1610#1605#1578
          DataSet = frxDBDRepOrders
          DataSetName = #1587#1601#1575#1585#1588#1575#1578
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8 = (
            '['#1591#179#1592#1662#1591#167#1591#177#1591#180#1591#167#1591#1726'."'#1592#8218#1592#1657#1592#8230#1591#1726'"]')
          ParentFont = False
        end
        object Memo18: TfrxMemoView
          Left = 439.882190000000000000
          Top = 34.795300000000010000
          Width = 34.015770000000000000
          Height = 18.897650000000000000
          DisplayFormat.DecimalSeparator = '.'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8 = (
            ': '#1592#8218#1592#1657#1592#8230#1591#1726)
          ParentFont = False
        end
        object Memo19: TfrxMemoView
          Left = 11.338590000000000000
          Top = 57.472480000000010000
          Width = 680.315400000000000000
          Height = 18.897650000000000000
          DataField = #1578#1608#1590#1610#1581#1575#1578
          DataSet = frxDBDRepOrders
          DataSetName = #1587#1601#1575#1585#1588#1575#1578
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8 = (
            '['#1591#179#1592#1662#1591#167#1591#177#1591#180#1591#167#1591#1726'."'#1591#1726#1592#710#1591#182#1592#1657#1591#173#1591#167#1591#1726'"]')
          ParentFont = False
        end
        object Memo20: TfrxMemoView
          Left = 695.433520000000000000
          Top = 57.472480000000010000
          Width = 52.913420000000000000
          Height = 18.897650000000000000
          DisplayFormat.DecimalSeparator = '.'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8 = (
            ': '#1591#1726#1592#710#1591#182#1592#1657#1591#173#1591#167#1591#1726)
          ParentFont = False
        end
      end
      object PageFooter1: TfrxPageFooter
        Height = 22.677180000000000000
        Top = 253.228510000000000000
        Width = 755.906000000000000000
        object Shape3: TfrxShapeView
          Align = baClient
          Width = 755.906000000000000000
          Height = 22.677180000000000000
          Color = 15921906
          Shape = skRoundRectangle
        end
        object Memo1: TfrxMemoView
          Left = 359.055350000000000000
          Top = 3.000000000000000000
          Width = 385.512060000000000000
          Height = 18.897650000000000000
          AutoWidth = True
          DisplayFormat.DecimalSeparator = '.'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8 = (
            
              #1592#8224#1591#177#1592#8230' '#1591#167#1592#1662#1591#178#1591#167#1591#177' '#1591#185#1593#169#1591#167#1591#179#1592#1657' '#1592#710' '#1592#1662#1592#1657#1592#8222#1592#8230#1591#168#1591#177#1591#175#1591#167#1591#177#1592#1657' '#1592#8225#1592#710#1591#180#1592#8230#1592#8224#1591 +
              #175'   '#1591#1726#1592#8222#1592#1662#1592#8224' :   09354856065   '#1592#710'   55014044 -021')
          ParentFont = False
          VAlign = vaCenter
        end
      end
    end
  end
  object frxDBDRepOrders: TfrxDBDataset
    UserName = #1587#1601#1575#1585#1588#1575#1578
    CloseDataSource = False
    FieldAliases.Strings = (
      '-Orders_ID=Orders_ID'
      'Code='#1705#1583
      'DateOrders='#1578#1575#1585#1610#1582' '#1587#1601#1575#1585#1588
      'DateDo='#1578#1575#1585#1610#1582' '#1575#1606#1580#1575#1605
      'ArtName='#1606#1575#1605' '#1705#1575#1604#1575
      'ArtCount='#1578#1593#1583#1575#1583
      'ArtPrice='#1602#1610#1605#1578
      'PersonelName='#1606#1575#1605' '#1587#1601#1575#1585#1588' '#1583#1607#1606#1583#1607
      'Comment='#1578#1608#1590#1610#1581#1575#1578
      'OrdersTypeName='#1606#1608#1593' '#1587#1601#1575#1585#1588
      '-ED_OrdersType_Ref=ED_OrdersType_Ref')
    DataSet = QrRepOrders
    Left = 40
    Top = 320
  end
  object frxDesigner1: TfrxDesigner
    DefaultScriptLanguage = 'PascalScript'
    DefaultFont.Charset = DEFAULT_CHARSET
    DefaultFont.Color = clWindowText
    DefaultFont.Height = -13
    DefaultFont.Name = 'Arial'
    DefaultFont.Style = []
    DefaultLeftMargin = 10.000000000000000000
    DefaultRightMargin = 10.000000000000000000
    DefaultTopMargin = 10.000000000000000000
    DefaultBottomMargin = 10.000000000000000000
    DefaultPaperSize = 9
    DefaultOrientation = poPortrait
    Restrictions = []
    RTLLanguage = False
    Left = 145
    Top = 368
  end
  object frxPDFExport1: TfrxPDFExport
    UseFileCache = True
    ShowProgress = True
    PrintOptimized = False
    Outline = False
    Author = 'FastReport'
    Subject = 'FastReport PDF export'
    Background = False
    Creator = 'FastReport (http://www.fast-report.com)'
    HTMLTags = True
    Left = 145
    Top = 368
  end
  object frxXLSExport1: TfrxXLSExport
    UseFileCache = True
    ShowProgress = True
    AsText = False
    Background = True
    FastExport = True
    PageBreaks = True
    EmptyLines = True
    SuppressPageHeadersFooters = False
    Left = 145
    Top = 368
  end
  object frxXMLExport1: TfrxXMLExport
    UseFileCache = True
    ShowProgress = True
    Background = True
    Creator = 'FastReport'
    EmptyLines = True
    SuppressPageHeadersFooters = False
    Left = 145
    Top = 368
  end
  object frxRTFExport1: TfrxRTFExport
    UseFileCache = True
    ShowProgress = True
    Wysiwyg = True
    Creator = 'FastReport http://www.fast-report.com'
    SuppressPageHeadersFooters = False
    HeaderFooterMode = hfText
    Left = 145
    Top = 368
  end
  object frxBMPExport1: TfrxBMPExport
    UseFileCache = True
    ShowProgress = True
    Left = 145
    Top = 368
  end
  object frxJPEGExport1: TfrxJPEGExport
    UseFileCache = True
    ShowProgress = True
    Left = 145
    Top = 368
  end
  object frxTIFFExport1: TfrxTIFFExport
    UseFileCache = True
    ShowProgress = True
    Left = 145
    Top = 368
  end
  object frxGIFExport1: TfrxGIFExport
    UseFileCache = True
    ShowProgress = True
    Left = 145
    Top = 368
  end
  object frxSimpleTextExport1: TfrxSimpleTextExport
    UseFileCache = True
    ShowProgress = True
    Frames = False
    EmptyLines = False
    OEMCodepage = False
    Left = 145
    Top = 368
  end
  object frxTXTExport1: TfrxTXTExport
    UseFileCache = True
    ShowProgress = True
    ScaleWidth = 1.000000000000000000
    ScaleHeight = 1.000000000000000000
    Borders = False
    Pseudogrpahic = False
    PageBreaks = True
    OEMCodepage = False
    EmptyLines = False
    LeadSpaces = False
    PrintAfter = False
    PrinterDialog = True
    UseSavedProps = True
    Left = 145
    Top = 368
  end
  object frxMailExport1: TfrxMailExport
    UseFileCache = True
    ShowProgress = True
    ShowExportDialog = True
    SmtpPort = 25
    UseIniFile = True
    Left = 152
    Top = 368
  end
end
