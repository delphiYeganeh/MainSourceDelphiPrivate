object DMFirstArtGroup: TDMFirstArtGroup
  OldCreateOrder = False
  Left = 377
  Top = 183
  Height = 174
  Width = 245
  object DSFirstArtGroup: TDataSource
    AutoEdit = False
    DataSet = QrFirstArtGroup
    Left = 48
    Top = 64
  end
  object DSStore: TDataSource
    AutoEdit = False
    DataSet = QrStore
    Left = 136
    Top = 64
  end
  object QrStore: TADOQuery
    Connection = Dm.YeganehConnection
    Parameters = <>
    SQL.Strings = (
      'Select *'
      'From Store')
    Left = 136
    Top = 16
    object QrStoreStore_ID: TAutoIncField
      FieldName = 'Store_ID'
      ReadOnly = True
    end
    object QrStoreCode: TIntegerField
      DisplayLabel = #1603#1583' '#1575#1606#1576#1575#1585
      FieldName = 'Code'
    end
    object QrStoreName: TWideStringField
      Alignment = taRightJustify
      DisplayLabel = #1606#1575#1605' '#1575#1606#1576#1575#1585
      FieldName = 'Name'
      FixedChar = True
      Size = 50
    end
  end
  object QrFirstArtGroup: TADOQuery
    Connection = Dm.YeganehConnection
    AfterInsert = QrFirstArtGroupAfterInsert
    BeforePost = QrFirstArtGroupBeforePost
    BeforeDelete = QrFirstArtGroupBeforeDelete
    Parameters = <>
    SQL.Strings = (
      'Select *'
      'From ArtGroup'
      'Where (Type = 1)'
      'And(IsService=0)'
      '/*'
      '1= '#1711#1585#1608#1607' '#1575#1589#1604#1610
      '2= '#1711#1585#1608#1607' '#1601#1585#1593#1610
      '*/'
      ''
      '')
    Left = 48
    Top = 16
    object QrFirstArtGroupArtGroup_ID: TIntegerField
      FieldName = 'ArtGroup_ID'
    end
    object QrFirstArtGroupName: TWideStringField
      Alignment = taRightJustify
      FieldName = 'Name'
      FixedChar = True
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
end
