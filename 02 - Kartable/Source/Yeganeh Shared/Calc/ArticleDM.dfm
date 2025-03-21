object DMArticle: TDMArticle
  OldCreateOrder = False
  Left = 574
  Top = 105
  Height = 181
  Width = 544
  object DSFirstArtGroup: TDataSource
    AutoEdit = False
    DataSet = QrFirstArtGroup
    Left = 280
    Top = 72
  end
  object DSStore: TDataSource
    AutoEdit = False
    DataSet = QrStore
    Left = 190
    Top = 72
  end
  object DSSecendArtGroup: TDataSource
    AutoEdit = False
    DataSet = QrSecendArtGroup
    Left = 384
    Top = 72
  end
  object DSArticle: TDataSource
    AutoEdit = False
    DataSet = QrArticle
    Left = 32
    Top = 72
  end
  object DSUnit: TDataSource
    AutoEdit = False
    DataSet = QrUnit
    Left = 472
    Top = 72
  end
  object QrArticle: TADOQuery
    Connection = Dm.YeganehConnection
    AfterInsert = QrArticleAfterInsert
    BeforePost = QrArticleBeforePost
    Parameters = <>
    SQL.Strings = (
      
        'Select * ,(Select Name from ArtGroup Where(Type=1)And(ArtGroup_I' +
        'D = ArtGroup_Ref1)) as FirstArtGrpName'
      
        '         ,(Select Name from ArtGroup Where(Type=2)And(ArtGroup_I' +
        'D = ArtGroup_Ref2)) as SecArtGrpName'
      'From Article'
      'Where(IsNull(IsService,0)=0) /*'#1705#1575#1585#1607#1575#1610' '#1582#1583#1605#1575#1578#1610'*/')
    Left = 32
    Top = 24
    object QrArticleArticle_ID: TAutoIncField
      FieldName = 'Article_ID'
      ReadOnly = True
    end
    object QrArticleStore_Ref: TIntegerField
      FieldName = 'Store_Ref'
    end
    object QrArticleArtGroup_Ref1: TIntegerField
      FieldName = 'ArtGroup_Ref1'
    end
    object QrArticleArtGroup_Ref2: TIntegerField
      FieldName = 'ArtGroup_Ref2'
    end
    object QrArticleCode: TIntegerField
      FieldName = 'Code'
    end
    object QrArticleName: TWideStringField
      Alignment = taRightJustify
      FieldName = 'Name'
      Size = 50
    end
    object QrArticleUnit_Ref: TIntegerField
      FieldName = 'Unit_Ref'
    end
    object QrArticleMaxBuy: TIntegerField
      FieldName = 'MaxBuy'
    end
    object QrArticleSalePrice: TFloatField
      FieldName = 'SalePrice'
    end
    object QrArticleBuyPrice: TFloatField
      FieldName = 'BuyPrice'
      OnGetText = QrArticleBuyPriceGetText
      OnSetText = QrArticleBuyPriceSetText
    end
    object QrArticleEndBuyPrice: TFloatField
      FieldName = 'EndBuyPrice'
      OnGetText = QrArticleBuyPriceGetText
      OnSetText = QrArticleBuyPriceSetText
    end
    object QrArticleExist: TIntegerField
      FieldName = 'Exist'
    end
    object QrArticleAvgPrice: TFloatField
      FieldName = 'AvgPrice'
      OnGetText = QrArticleBuyPriceGetText
      OnSetText = QrArticleBuyPriceSetText
    end
    object QrArticleCountry: TWideStringField
      Alignment = taRightJustify
      FieldName = 'Country'
      Size = 50
    end
    object QrArticleAttribute1: TWideStringField
      Alignment = taRightJustify
      FieldName = 'Attribute1'
      Size = 50
    end
    object QrArticleAttribute2: TWideStringField
      Alignment = taRightJustify
      FieldName = 'Attribute2'
      Size = 50
    end
    object QrArticleModel: TWideStringField
      Alignment = taRightJustify
      FieldName = 'Model'
      Size = 50
    end
    object QrArticleTozihat: TWideStringField
      Alignment = taRightJustify
      FieldName = 'Tozihat'
      Size = 300
    end
    object QrArticleIsService: TBooleanField
      Alignment = taRightJustify
      FieldName = 'IsService'
    end
    object QrArticleOldExist1: TIntegerField
      FieldName = 'OldExist1'
    end
    object QrArticleOldExist2: TIntegerField
      FieldName = 'OldExist2'
    end
    object QrArticleOldEndBuyPrice1: TFloatField
      FieldName = 'OldEndBuyPrice1'
      OnGetText = QrArticleBuyPriceGetText
      OnSetText = QrArticleBuyPriceSetText
    end
    object QrArticleOldEndBuyPrice2: TFloatField
      FieldName = 'OldEndBuyPrice2'
      OnGetText = QrArticleBuyPriceGetText
      OnSetText = QrArticleBuyPriceSetText
    end
    object QrArticleBarcode: TWideStringField
      Alignment = taRightJustify
      FieldName = 'Barcode'
      Size = 30
    end
    object QrArticleFirstArtGrpName: TWideStringField
      Alignment = taRightJustify
      FieldName = 'FirstArtGrpName'
      ReadOnly = True
      Size = 50
    end
    object QrArticleSecArtGrpName: TWideStringField
      Alignment = taRightJustify
      FieldName = 'SecArtGrpName'
      ReadOnly = True
      Size = 50
    end
  end
  object QrSrchArticle: TADOQuery
    Connection = Dm.YeganehConnection
    Parameters = <>
    SQL.Strings = (
      'Select *'
      'From Article'
      'Where (1=1)'
      'And(IsNull(IsService,0)=0) /*'#1705#1575#1585#1607#1575#1610' '#1582#1583#1605#1575#1578#1610'*/')
    Left = 112
    Top = 24
    object QrSrchArticleArticle_ID: TAutoIncField
      FieldName = 'Article_ID'
      ReadOnly = True
    end
    object QrSrchArticleCode: TIntegerField
      Tag = 1
      DisplayLabel = #1705#1583' '#1705#1575#1604#1575
      DisplayWidth = 5
      FieldName = 'Code'
    end
    object QrSrchArticleName: TWideStringField
      Tag = 1
      Alignment = taRightJustify
      DisplayLabel = #1606#1575#1605' '#1705#1575#1604#1575
      DisplayWidth = 40
      FieldName = 'Name'
      Size = 50
    end
  end
  object QrStore: TADOQuery
    Connection = Dm.YeganehConnection
    AfterScroll = QrStoreAfterScroll
    Parameters = <>
    SQL.Strings = (
      'Select *'
      'From Store')
    Left = 192
    Top = 24
    object QrStoreStore_ID: TAutoIncField
      FieldName = 'Store_ID'
      ReadOnly = True
    end
    object QrStoreCode: TIntegerField
      FieldName = 'Code'
    end
    object QrStoreName: TWideStringField
      Alignment = taRightJustify
      FieldName = 'Name'
      Size = 50
    end
  end
  object QrFirstArtGroup: TADOQuery
    Connection = Dm.YeganehConnection
    AfterScroll = QrFirstArtGroupAfterScroll
    Parameters = <
      item
        Name = 'Store_ID'
        DataType = ftInteger
        Size = -1
        Value = Null
      end>
    SQL.Strings = (
      'Select *'
      'From ArtGroup'
      'Where(Store_Ref = :Store_ID )'
      'And(Type = 1)'
      'And(IsService = 0)'
      ''
      '/*'
      '1= '#1711#1585#1608#1607' '#1575#1589#1604#1610
      '2= '#1711#1585#1608#1607' '#1601#1585#1593#1610
      '*/'
      '')
    Left = 280
    Top = 24
    object QrFirstArtGroupArtGroup_ID: TAutoIncField
      FieldName = 'ArtGroup_ID'
      ReadOnly = True
    end
    object QrFirstArtGroupName: TWideStringField
      Alignment = taRightJustify
      FieldName = 'Name'
      Size = 50
    end
    object QrFirstArtGroupType: TWordField
      FieldName = 'Type'
    end
    object QrFirstArtGroupStore_Ref: TIntegerField
      FieldName = 'Store_Ref'
    end
    object QrFirstArtGroupArtGroup_Ref: TIntegerField
      FieldName = 'ArtGroup_Ref'
    end
    object QrFirstArtGroupIsService: TBooleanField
      Alignment = taRightJustify
      FieldName = 'IsService'
    end
  end
  object QrSecendArtGroup: TADOQuery
    Connection = Dm.YeganehConnection
    BeforeOpen = QrSecendArtGroupBeforeOpen
    Parameters = <
      item
        Name = 'Store_ID'
        DataType = ftInteger
        Size = -1
        Value = Null
      end
      item
        Name = 'ArtGroup_ID'
        DataType = ftInteger
        Size = -1
        Value = Null
      end>
    SQL.Strings = (
      'Select * '
      'From ArtGroup'
      'Where(Store_Ref = :Store_ID )'
      'And(ArtGroup_Ref = :ArtGroup_ID )'
      'And(Type = 2)'
      'And(IsService=0)'
      ''
      '/*'
      '1= '#1711#1585#1608#1607' '#1575#1589#1604#1610
      '2= '#1711#1585#1608#1607' '#1601#1585#1593#1610
      '*/'
      ''
      '')
    Left = 384
    Top = 24
    object QrSecendArtGroupArtGroup_ID: TAutoIncField
      FieldName = 'ArtGroup_ID'
      ReadOnly = True
    end
    object QrSecendArtGroupName: TWideStringField
      Alignment = taRightJustify
      FieldName = 'Name'
      Size = 50
    end
    object QrSecendArtGroupType: TWordField
      FieldName = 'Type'
    end
    object QrSecendArtGroupStore_Ref: TIntegerField
      FieldName = 'Store_Ref'
    end
    object QrSecendArtGroupArtGroup_Ref: TIntegerField
      FieldName = 'ArtGroup_Ref'
    end
    object QrSecendArtGroupIsService: TBooleanField
      Alignment = taRightJustify
      FieldName = 'IsService'
    end
  end
  object QrUnit: TADOQuery
    Connection = Dm.YeganehConnection
    Parameters = <>
    SQL.Strings = (
      'Select *'
      'From Unit'
      'Where Unit_ID <> 1000 /* '#1608#1575#1581#1583' '#1705#1575#1585#1607#1575#1610' '#1582#1583#1605#1575#1606#1610' */')
    Left = 472
    Top = 24
    object QrUnitUnit_ID: TAutoIncField
      FieldName = 'Unit_ID'
      ReadOnly = True
    end
    object QrUnitName: TWideStringField
      Alignment = taRightJustify
      FieldName = 'Name'
      Size = 50
    end
    object QrUnitUnitCount: TIntegerField
      FieldName = 'UnitCount'
    end
  end
end
