object DMSecendArtGroup: TDMSecendArtGroup
  OldCreateOrder = False
  Left = 228
  Top = 108
  Height = 180
  Width = 321
  object DSSecendArtGroup: TDataSource
    AutoEdit = False
    DataSet = QrSecendArtGroup
    Left = 48
    Top = 64
  end
  object DSFirstArtGroup: TDataSource
    AutoEdit = False
    DataSet = QrFirstArtGroup
    Left = 152
    Top = 64
  end
  object DSStore: TDataSource
    AutoEdit = False
    DataSet = QrStore
    Left = 240
    Top = 64
  end
  object QrStore: TADOQuery
    Connection = Dm.YeganehConnection
    AfterScroll = QrStoreAfterScroll
    Parameters = <>
    SQL.Strings = (
      'Select *'
      'From Store')
    Left = 240
    Top = 16
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
    BeforeOpen = QrFirstArtGroupBeforeOpen
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
      'Where(Store_Ref = :Store_ID)'
      'And(Type = 1)'
      'And(IsService=0) /*'#1603#1575#1604#1575#1607#1575#1610' '#1582#1583#1605#1575#1578#1610'*/'
      ''
      '/*'
      '1= '#1711#1585#1608#1607' '#1575#1589#1604#1610
      '2= '#1711#1585#1608#1607' '#1601#1585#1593#1610
      '*/')
    Left = 152
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
  object QrSecendArtGroup: TADOQuery
    Connection = Dm.YeganehConnection
    AfterInsert = QrSecendArtGroupAfterInsert
    BeforePost = QrSecendArtGroupBeforePost
    BeforeDelete = QrSecendArtGroupBeforeDelete
    Parameters = <>
    SQL.Strings = (
      
        'Select * , (Select AG.Name from ArtGroup AG Where AG.ArtGroup_ID' +
        ' = ArtGroup.ArtGroup_Ref)as FirstArtGrpName'
      'From ArtGroup'
      'Where (Type = 2)'
      'And(IsService=0)  '
      ''
      '/*'
      '1= '#1711#1585#1608#1607' '#1575#1589#1604#1610
      '2= '#1711#1585#1608#1607' '#1601#1585#1593#1610
      '*/'
      '')
    Left = 48
    Top = 16
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
    object QrSecendArtGroupFirstArtGrpName: TWideStringField
      Alignment = taRightJustify
      FieldName = 'FirstArtGrpName'
      ReadOnly = True
      Size = 50
    end
  end
end
