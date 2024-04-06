object DMFactor: TDMFactor
  OldCreateOrder = False
  Left = 299
  Top = 178
  Height = 297
  Width = 514
  object DSUnit: TDataSource
    AutoEdit = False
    DataSet = QrUnit
    Left = 440
    Top = 67
  end
  object DSArticle: TDataSource
    AutoEdit = False
    DataSet = QrArticle
    Left = 358
    Top = 67
  end
  object DSFactor: TDataSource
    AutoEdit = False
    DataSet = QrFactor
    Left = 32
    Top = 67
  end
  object DSFacDetails: TDataSource
    AutoEdit = False
    DataSet = QrFacDetails
    Left = 113
    Top = 67
  end
  object DSCustomer: TDataSource
    DataSet = QrCustomer
    Left = 276
    Top = 67
  end
  object QrFactor: TADOQuery
    Connection = Dm.YeganehConnection
    BeforeOpen = QrFactorBeforeOpen
    AfterInsert = QrFactorAfterInsert
    AfterEdit = QrFactorAfterEdit
    BeforePost = QrFactorBeforePost
    AfterPost = QrFactorAfterPost
    BeforeCancel = QrFactorBeforeCancel
    BeforeDelete = QrFactorBeforeDelete
    AfterScroll = QrFactorAfterScroll
    OnCalcFields = QrFactorCalcFields
    Parameters = <
      item
        Name = 'Type'
        Attributes = [paSigned]
        DataType = ftString
        Precision = 10
        Size = 4
        Value = 'F'
      end>
    SQL.Strings = (
      'Select F.*'
      
        '       /*,(Select C.CompanyName From Customer C Where C.Customer' +
        'ID = F.Customer_Ref) as CustName'
      
        '       ,(Select C.Phone From Customer C Where C.CustomerID = F.C' +
        'ustomer_Ref) as CustPhone'
      
        '       ,(Select C.Address From Customer C Where C.CustomerID = F' +
        '.Customer_Ref) as CustAddress'
      
        '       ,(Select U.Title From Users U Where U.ID = F.Users_Ref) a' +
        's UserName */'
      'From Factor F'
      'Where( F.Type = :Type )'
      ''
      ''
      '')
    Left = 32
    Top = 16
    object QrFactorFactor_ID: TAutoIncField
      FieldName = 'Factor_ID'
      ReadOnly = True
    end
    object QrFactorFacDate: TStringField
      FieldName = 'FacDate'
      OnGetText = QrFactorFacDateGetText
      OnSetText = QrFactorFacDateSetText
      EditMask = #8207'!1399/99/99;1;_'
      FixedChar = True
      Size = 50
    end
    object QrFactorFacTime: TStringField
      Alignment = taRightJustify
      FieldName = 'FacTime'
      FixedChar = True
      Size = 30
    end
    object QrFactorRegisterDate: TStringField
      Alignment = taRightJustify
      FieldName = 'RegisterDate'
      EditMask = #8207'!1399/99/99;1;_'
      FixedChar = True
      Size = 50
    end
    object QrFactorNumber: TIntegerField
      FieldName = 'Number'
    end
    object QrFactorType: TStringField
      Alignment = taRightJustify
      FieldName = 'Type'
      FixedChar = True
    end
    object QrFactorFactorePrice: TFloatField
      FieldName = 'FactorePrice'
      OnGetText = QrFactorFactorePriceGetText
      OnSetText = QrFactorFactorePriceSetText
    end
    object QrFactorReducePrice: TFloatField
      FieldName = 'ReducePrice'
      OnGetText = QrFactorFactorePriceGetText
      OnSetText = QrFactorFactorePriceSetText
    end
    object QrFactorCheckPrice: TFloatField
      FieldName = 'CheckPrice'
      OnGetText = QrFactorFactorePriceGetText
      OnSetText = QrFactorFactorePriceSetText
    end
    object QrFactorTozihat: TStringField
      Alignment = taRightJustify
      FieldName = 'Tozihat'
      FixedChar = True
      Size = 255
    end
    object QrFactorCashPrice: TFloatField
      FieldName = 'CashPrice'
      OnGetText = QrFactorFactorePriceGetText
      OnSetText = QrFactorFactorePriceSetText
    end
    object QrFactorFacPrBeHorof: TStringField
      Alignment = taRightJustify
      FieldKind = fkCalculated
      FieldName = 'FacPrBeHorof'
      Size = 100
      Calculated = True
    end
    object QrFactorCreditPrice: TFloatField
      FieldName = 'CreditPrice'
      OnGetText = QrFactorFactorePriceGetText
      OnSetText = QrFactorFactorePriceSetText
    end
    object QrFactorRemaining: TFloatField
      FieldKind = fkCalculated
      FieldName = 'Remaining'
      OnGetText = QrFactorFactorePriceGetText
      OnSetText = QrFactorFactorePriceSetText
      Calculated = True
    end
    object QrFactorRecivePrice_Calc: TFloatField
      FieldKind = fkCalculated
      FieldName = 'RecivePrice_Calc'
      OnGetText = QrFactorFactorePriceGetText
      OnSetText = QrFactorFactorePriceSetText
      Calculated = True
    end
    object QrFactorLiquidate: TBooleanField
      DisplayLabel = #1578#1587#1608#1610#1607' '#1588#1583#1607
      FieldName = 'Liquidate'
    end
    object QrFactorCustomer_Ref: TIntegerField
      FieldName = 'Customer_Ref'
    end
    object QrFactorCustName_LK: TStringField
      Alignment = taRightJustify
      FieldKind = fkLookup
      FieldName = 'CustName_LK'
      LookupDataSet = QrFa_Customer
      LookupKeyFields = 'CustomeriD'
      LookupResultField = 'CompanyName'
      KeyFields = 'Customer_Ref'
      Size = 100
      Lookup = True
    end
    object QrFactorCustPhone_LK: TStringField
      Alignment = taRightJustify
      FieldKind = fkLookup
      FieldName = 'CustPhone_LK'
      LookupDataSet = QrFa_Customer
      LookupKeyFields = 'CustomeriD'
      LookupResultField = 'Phone'
      KeyFields = 'Customer_Ref'
      Lookup = True
    end
    object QrFactorCustAddress_LK: TStringField
      Alignment = taRightJustify
      FieldKind = fkLookup
      FieldName = 'CustAddress_LK'
      LookupDataSet = QrFa_Customer
      LookupKeyFields = 'CustomeriD'
      LookupResultField = 'Address'
      KeyFields = 'Customer_Ref'
      Size = 100
      Lookup = True
    end
    object QrFactorUsers_Ref: TIntegerField
      FieldName = 'Users_Ref'
    end
    object QrFactorUserName_LK: TStringField
      Alignment = taRightJustify
      FieldKind = fkLookup
      FieldName = 'UserName_LK'
      LookupDataSet = QrFa_Users
      LookupKeyFields = 'Id'
      LookupResultField = 'Title'
      KeyFields = 'Users_Ref'
      Size = 50
      Lookup = True
    end
  end
  object QrFacDetails: TADOQuery
    Connection = Dm.YeganehConnection
    LockType = ltBatchOptimistic
    BeforeInsert = QrFacDetailsBeforeInsert
    OnCalcFields = QrFacDetailsCalcFields
    Parameters = <
      item
        Name = 'Factor_ID2'
        DataType = ftInteger
        Size = -1
        Value = Null
      end
      item
        Name = 'Factor_ID1'
        DataType = ftInteger
        Size = -1
        Value = Null
      end>
    SQL.Strings = (
      'Select FD.*'
      
        '       /*,(Select A.Name from Article A Where A.Article_ID = FD.' +
        'Article_Ref) as ArtName'
      
        '       ,(Select A.SalePrice from Article A Where A.Article_ID = ' +
        'FD.Article_Ref) as SalePrice'
      
        '       ,(Select A.Exist from Article A Where A.Article_ID = FD.A' +
        'rticle_Ref) as Exist'
      
        '       ,(Select A.Tozihat from Article A Where A.Article_ID = FD' +
        '.Article_Ref) as ArtTozihat'
      
        '       ,(Select A.Barcode from Article A Where A.Article_ID = FD' +
        '.Article_Ref) as Barcode'
      
        '       ,(Select U.Name from Unit U Where U.Unit_ID = FD.Unit_Ref' +
        ') as UnitName'
      
        '       ,(Select U.UnitCount from Unit U Where U.Unit_ID = FD.Uni' +
        't_Ref) as UnitCount*/'
      ''
      '       ,( Select Count(*)+1'
      '          From FacDetails FD2'
      '          Where(FD2.Factor_Ref = :Factor_ID2 )'
      '            /*And(FD.Article_Ref = A.Article_ID)'
      '            And(FD.Unit_Ref = U.Unit_ID)*/'
      '            And(FD2.FacDetails_ID < FD.FacDetails_ID) )as Row'
      ''
      'From FacDetails FD /*, Article A , Unit U*/'
      'Where(FD.Factor_Ref = :Factor_ID1 )'
      '/*  And(FD.Article_Ref = A.Article_ID)'
      '  And(FD.Unit_Ref = U.Unit_ID)*/'
      'Order By FD.FacDetails_ID'
      ''
      ''
      ''
      '')
    Left = 113
    Top = 16
    object QrFacDetailsFacDetails_ID: TAutoIncField
      FieldName = 'FacDetails_ID'
      ReadOnly = True
    end
    object QrFacDetailsFactor_Ref: TIntegerField
      FieldName = 'Factor_Ref'
      Origin = 'MYSOFTDB.FacDetails.Factor_Ref'
    end
    object QrFacDetailsArticle_Ref: TIntegerField
      FieldName = 'Article_Ref'
      Origin = 'MYSOFTDB.FacDetails.Article_Ref'
    end
    object QrFacDetailsUnit_Ref: TIntegerField
      FieldName = 'Unit_Ref'
      Origin = 'MYSOFTDB.FacDetails.Unit_Ref'
    end
    object QrFacDetailsUnitPrice: TFloatField
      FieldName = 'UnitPrice'
      Origin = 'MYSOFTDB.FacDetails.UnitPrice'
      OnGetText = QrFactorFactorePriceGetText
      OnSetText = QrFactorFactorePriceSetText
    end
    object QrFacDetailsArtCount: TIntegerField
      FieldName = 'ArtCount'
    end
    object QrFacDetailsTozihat: TWideStringField
      Alignment = taRightJustify
      FieldName = 'Tozihat'
      Size = 300
    end
    object QrFacDetailsRow: TIntegerField
      FieldName = 'Row'
    end
    object QrFacDetailsArtName_LK: TStringField
      FieldKind = fkLookup
      FieldName = 'ArtName_LK'
      LookupDataSet = QrFD_Article
      LookupKeyFields = 'Article_ID'
      LookupResultField = 'Name'
      KeyFields = 'Article_Ref'
      Size = 100
      Lookup = True
    end
    object QrFacDetailsUnitName_LK: TStringField
      FieldKind = fkLookup
      FieldName = 'UnitName_LK'
      LookupDataSet = QrFD_Unit
      LookupKeyFields = 'Unit_ID'
      LookupResultField = 'Name'
      KeyFields = 'Unit_Ref'
      Size = 50
      Lookup = True
    end
    object QrFacDetailsArtTotalPrice_Calc: TFloatField
      DisplayLabel = #1580#1605#1593
      FieldKind = fkCalculated
      FieldName = 'ArtTotalPrice_Calc'
      OnGetText = QrFactorFactorePriceGetText
      OnSetText = QrFactorFactorePriceSetText
      Calculated = True
    end
    object QrFacDetailsBarCode_LK: TStringField
      FieldKind = fkLookup
      FieldName = 'Barcode_LK'
      LookupDataSet = QrFD_Article
      LookupKeyFields = 'Article_ID'
      LookupResultField = 'Barcode'
      KeyFields = 'Article_Ref'
      Size = 30
      Lookup = True
    end
  end
  object QrSrchFactor: TADOQuery
    Connection = Dm.YeganehConnection
    BeforeOpen = QrSrchFactorBeforeOpen
    Parameters = <
      item
        Name = 'Type'
        DataType = ftString
        Size = 2
        Value = #39#39
      end>
    SQL.Strings = (
      'Select *'
      'From Vw_SrchFactor'
      'Where (1=1)'
      '  And(Type = :Type )')
    Left = 195
    Top = 16
    object QrSrchFactorFactor_ID: TAutoIncField
      FieldName = 'Factor_ID'
      ReadOnly = True
    end
    object QrSrchFactorCustomer_Ref: TIntegerField
      FieldName = 'Customer_Ref'
    end
    object QrSrchFactorUsers_Ref: TIntegerField
      FieldName = 'Users_Ref'
    end
    object QrSrchFactorType: TWideStringField
      FieldName = 'Type'
      Size = 10
    end
    object QrSrchFactorFacDate: TWideStringField
      Tag = 1
      DisplayLabel = #1578#1575#1585#1610#1582' '#1601#1575#1705#1578#1608#1585
      DisplayWidth = 10
      FieldName = 'FacDate'
      Size = 25
    end
    object QrSrchFactorRegisterDate: TWideStringField
      Tag = 1
      DisplayLabel = #1578#1575#1585#1610#1582' '#1579#1576#1578' '#1601#1575#1705#1578#1608#1585
      DisplayWidth = 10
      FieldName = 'RegisterDate'
      Size = 25
    end
    object QrSrchFactorNumber: TIntegerField
      Tag = 1
      DisplayLabel = #1588#1605#1575#1585#1607' '#1601#1575#1705#1578#1608#1585
      DisplayWidth = 8
      FieldName = 'Number'
    end
    object QrSrchFactorCustName: TWideStringField
      Tag = 1
      DisplayLabel = #1606#1575#1605' '#1605#1588#1578#1585#1610
      DisplayWidth = 20
      FieldName = 'CustName'
      Size = 100
    end
    object QrSrchFactorUserName: TWideStringField
      Tag = 1
      DisplayLabel = #1606#1575#1605' '#1603#1575#1585#1576#1585' '#1579#1576#1578' '#1603#1606#1606#1583#1607
      DisplayWidth = 20
      FieldName = 'UserName'
      Size = 50
    end
  end
  object QrCustomer: TADOQuery
    Connection = Dm.YeganehConnection
    Parameters = <>
    SQL.Strings = (
      
        'Select Top 100 CustomeriD , CompanyName,PersonTitle,Phone,Addres' +
        's'
      'From Customer'
      'Where (1=1)'
      'Order By CustomerID Desc')
    Left = 276
    Top = 16
    object QrCustomerCustomeriD: TIntegerField
      FieldName = 'CustomeriD'
    end
    object QrCustomerCompanyName: TWideStringField
      Tag = 1
      Alignment = taRightJustify
      DisplayLabel = #1606#1575#1605' '#1587#1575#1586#1605#1575#1606
      DisplayWidth = 20
      FieldName = 'CompanyName'
      Size = 100
    end
    object QrCustomerPersonTitle: TWideStringField
      Tag = 1
      Alignment = taRightJustify
      DisplayLabel = #1606#1575#1605' '#1591#1585#1601' '#1605#1603#1575#1578#1576#1607
      DisplayWidth = 20
      FieldName = 'PersonTitle'
      Size = 100
    end
    object QrCustomerPhone: TWideStringField
      Tag = 1
      Alignment = taRightJustify
      DisplayLabel = #1578#1604#1601#1606
      DisplayWidth = 20
      FieldName = 'Phone'
      Size = 100
    end
    object QrCustomerAddress: TWideStringField
      Tag = 1
      Alignment = taRightJustify
      DisplayLabel = #1570#1583#1585#1587
      DisplayWidth = 50
      FieldName = 'Address'
      Size = 255
    end
  end
  object QrArticle: TADOQuery
    Connection = Dm.YeganehConnection
    Parameters = <>
    SQL.Strings = (
      
        'Select * , (Case When IsService=1 then '#39#1582#1583#1605#1575#1578#1610#39' end) as ServiceN' +
        'ame '
      
        '       ,(Select Unit.Name from Unit Where(Unit.Unit_ID = Article' +
        '.Unit_Ref)) as UnitName'
      
        '       ,(Select Unit.UnitCount from Unit Where(Unit.Unit_ID = Ar' +
        'ticle.Unit_Ref)) as UnitCount   '
      'From Article'
      'Where (1=1)')
    Left = 358
    Top = 16
    object QrArticleArticle_ID: TAutoIncField
      FieldName = 'Article_ID'
      ReadOnly = True
    end
    object QrArticleCode: TIntegerField
      Tag = 1
      DisplayLabel = #1705#1583
      DisplayWidth = 5
      FieldName = 'Code'
      Origin = 'MYSOFTDB.Article.Code'
    end
    object QrArticleName: TStringField
      Tag = 1
      DisplayLabel = #1606#1575#1605' '#1705#1575#1604#1575
      DisplayWidth = 30
      FieldName = 'Name'
      Origin = 'MYSOFTDB.Article.Name'
      FixedChar = True
      Size = 100
    end
    object QrArticleServiceName: TStringField
      Tag = 1
      Alignment = taRightJustify
      DisplayLabel = #1606#1608#1593' '#1705#1575#1604#1575
      FieldName = 'ServiceName'
      FixedChar = True
      Size = 6
    end
    object QrArticleSalePrice: TFloatField
      Tag = 1
      DisplayLabel = #1602#1610#1605#1578' '#1601#1585#1608#1588
      FieldName = 'SalePrice'
      Origin = 'MYSOFTDB.Article.AvgPrice'
    end
    object QrArticleExist: TIntegerField
      Tag = 1
      DisplayLabel = #1605#1608#1580#1608#1583#1610' '#1601#1593#1604#1610
      FieldName = 'Exist'
      Origin = 'MYSOFTDB.Article.FirstExist'
    end
    object QrArticleEndBuyPrice: TFloatField
      Tag = 1
      DisplayLabel = #1570#1582#1585#1610#1606' '#1602#1610#1605#1578' '#1582#1585#1610#1583
      FieldName = 'EndBuyPrice'
      Origin = 'MYSOFTDB.Article.Exist'
    end
    object QrArticleTozihat: TStringField
      Tag = 1
      DisplayLabel = #1578#1608#1590#1610#1581#1575#1578' '#1705#1575#1604#1575
      DisplayWidth = 30
      FieldName = 'Tozihat'
      Origin = 'MYSOFTDB.Article.Tozihat'
      FixedChar = True
      Size = 255
    end
    object QrArticleStore_Ref: TIntegerField
      FieldName = 'Store_Ref'
      Origin = 'MYSOFTDB.Article.Store_Ref'
    end
    object QrArticleArtGroup_Ref1: TIntegerField
      FieldName = 'ArtGroup_Ref1'
      Origin = 'MYSOFTDB.Article.ArtGroup_Ref1'
    end
    object QrArticleArtGroup_Ref2: TIntegerField
      FieldName = 'ArtGroup_Ref2'
      Origin = 'MYSOFTDB.Article.ArtGroup_Ref2'
    end
    object QrArticleUnit_Ref: TIntegerField
      FieldName = 'Unit_Ref'
      Origin = 'MYSOFTDB.Article.MaxBuy'
    end
    object QrArticleMaxBuy: TIntegerField
      FieldName = 'MaxBuy'
      Origin = 'MYSOFTDB.Article.BuyPrice'
    end
    object QrArticleBuyPrice: TFloatField
      FieldName = 'BuyPrice'
      Origin = 'MYSOFTDB.Article.SalePrice'
    end
    object QrArticleAvgPrice: TFloatField
      FieldName = 'AvgPrice'
      Origin = 'MYSOFTDB.Article.EndBuyPrice'
    end
    object QrArticleCountry: TStringField
      Alignment = taRightJustify
      FieldName = 'Country'
      Origin = 'MYSOFTDB.Article.Attribute'
      FixedChar = True
      Size = 100
    end
    object QrArticleAttribute1: TStringField
      Alignment = taRightJustify
      FieldName = 'Attribute1'
      Origin = 'MYSOFTDB.Article.Model'
      FixedChar = True
      Size = 100
    end
    object QrArticleAttribute2: TStringField
      Alignment = taRightJustify
      FieldName = 'Attribute2'
      Origin = 'MYSOFTDB.Article.Weight'
      FixedChar = True
      Size = 100
    end
    object QrArticleModel: TStringField
      Alignment = taRightJustify
      FieldName = 'Model'
      Origin = 'MYSOFTDB.Article.Tozihat'
      FixedChar = True
      Size = 100
    end
    object QrArticleUnitName: TStringField
      Alignment = taRightJustify
      FieldName = 'UnitName'
      Origin = 'MYSOFTDB.Unit.Name'
      FixedChar = True
      Size = 100
    end
    object QrArticleUnitCount: TIntegerField
      FieldName = 'UnitCount'
    end
    object QrArticleIsService: TBooleanField
      FieldName = 'IsService'
    end
    object QrArticleBarcode: TStringField
      FieldName = 'Barcode'
      FixedChar = True
      Size = 60
    end
    object QrArticleOldExist1: TIntegerField
      FieldName = 'OldExist1'
    end
    object QrArticleOldExist2: TIntegerField
      FieldName = 'OldExist2'
    end
    object QrArticleOldEndBuyPrice1: TFloatField
      FieldName = 'OldEndBuyPrice1'
    end
    object QrArticleOldEndBuyPrice2: TFloatField
      FieldName = 'OldEndBuyPrice2'
    end
  end
  object QrUnit: TADOQuery
    Connection = Dm.YeganehConnection
    Parameters = <>
    SQL.Strings = (
      'Select Unit_ID,Name,UnitCount'
      'From Unit'
      'Where (1=1)')
    Left = 440
    Top = 16
    object QrUnitUnit_ID: TAutoIncField
      FieldName = 'Unit_ID'
      ReadOnly = True
    end
    object QrUnitName: TStringField
      Tag = 1
      DisplayLabel = #1606#1575#1605' '#1608#1575#1581#1583' '#1705#1575#1604#1575
      DisplayWidth = 30
      FieldName = 'Name'
      Origin = 'MYSOFTDB.Unit.Name'
      FixedChar = True
      Size = 100
    end
    object QrUnitUnitCount: TIntegerField
      Tag = 1
      DisplayLabel = #1578#1593#1583#1575#1583
      FieldName = 'UnitCount'
      Origin = 'MYSOFTDB.Unit.UnitCount'
    end
  end
  object DSFa_Customer: TDataSource
    DataSet = QrFa_Customer
    Left = 36
    Top = 195
  end
  object QrFa_Customer: TADOQuery
    Connection = Dm.YeganehConnection
    Parameters = <>
    SQL.Strings = (
      
        'Select Top 100 CustomeriD , CompanyName,PersonTitle,Phone,Addres' +
        's'
      'From Customer'
      'Where (1=1)'
      'Order By CustomerID Desc')
    Left = 36
    Top = 144
    object IntegerField1: TIntegerField
      FieldName = 'CustomeriD'
    end
    object WideStringField1: TWideStringField
      Tag = 1
      Alignment = taRightJustify
      DisplayLabel = #1606#1575#1605' '#1587#1575#1586#1605#1575#1606
      DisplayWidth = 20
      FieldName = 'CompanyName'
      Size = 100
    end
    object WideStringField2: TWideStringField
      Tag = 1
      Alignment = taRightJustify
      DisplayLabel = #1606#1575#1605' '#1591#1585#1601' '#1605#1603#1575#1578#1576#1607
      DisplayWidth = 20
      FieldName = 'PersonTitle'
      Size = 100
    end
    object WideStringField3: TWideStringField
      Tag = 1
      Alignment = taRightJustify
      DisplayLabel = #1578#1604#1601#1606
      DisplayWidth = 20
      FieldName = 'Phone'
      Size = 100
    end
    object WideStringField4: TWideStringField
      Tag = 1
      Alignment = taRightJustify
      DisplayLabel = #1570#1583#1585#1587
      DisplayWidth = 50
      FieldName = 'Address'
      Size = 255
    end
  end
  object QrFa_Users: TADOQuery
    Connection = Dm.YeganehConnection
    Parameters = <>
    SQL.Strings = (
      'Select Id , Title'
      'From Users')
    Left = 128
    Top = 144
    object QrFa_UsersId: TIntegerField
      FieldName = 'Id'
    end
    object QrFa_UsersTitle: TWideStringField
      FieldName = 'Title'
      Size = 50
    end
  end
  object DSFa_Users: TDataSource
    DataSet = QrFa_Users
    Left = 128
    Top = 195
  end
  object DSFD_Article: TDataSource
    DataSet = QrFD_Article
    Left = 224
    Top = 195
  end
  object DSFD_Unit: TDataSource
    DataSet = QrFD_Unit
    Left = 304
    Top = 195
  end
  object QrFD_Article: TADOQuery
    Connection = Dm.YeganehConnection
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'Select Article_ID,Code,Name,SalePrice,BuyPrice'
      '       ,EndBuyPrice,Exist,Tozihat,Barcode'
      'From Article'
      '')
    Left = 224
    Top = 144
    object QrFD_ArticleArticle_ID: TAutoIncField
      FieldName = 'Article_ID'
      ReadOnly = True
    end
    object QrFD_ArticleCode: TIntegerField
      FieldName = 'Code'
    end
    object QrFD_ArticleName: TWideStringField
      Alignment = taRightJustify
      FieldName = 'Name'
      Size = 50
    end
    object QrFD_ArticleSalePrice: TFloatField
      FieldName = 'SalePrice'
    end
    object QrFD_ArticleBuyPrice: TFloatField
      FieldName = 'BuyPrice'
    end
    object QrFD_ArticleEndBuyPrice: TFloatField
      FieldName = 'EndBuyPrice'
    end
    object QrFD_ArticleExist: TIntegerField
      FieldName = 'Exist'
    end
    object QrFD_ArticleTozihat: TWideStringField
      Alignment = taRightJustify
      FieldName = 'Tozihat'
      Size = 300
    end
    object QrFD_ArticleBarcode: TWideStringField
      Alignment = taRightJustify
      FieldName = 'Barcode'
      Size = 30
    end
  end
  object QrFD_Unit: TADOQuery
    Connection = Dm.YeganehConnection
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'Select Unit_ID,Name,UnitCount'
      'From Unit'
      '')
    Left = 304
    Top = 144
    object QrFD_UnitUnit_ID: TAutoIncField
      FieldName = 'Unit_ID'
      ReadOnly = True
    end
    object QrFD_UnitName: TWideStringField
      Alignment = taRightJustify
      FieldName = 'Name'
      Size = 50
    end
    object QrFD_UnitUnitCount: TIntegerField
      FieldName = 'UnitCount'
    end
  end
end
