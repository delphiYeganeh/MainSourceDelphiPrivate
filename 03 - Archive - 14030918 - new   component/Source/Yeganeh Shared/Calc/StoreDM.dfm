object DMStore: TDMStore
  OldCreateOrder = False
  Left = 307
  Top = 179
  Height = 175
  Width = 156
  object DSStore: TDataSource
    AutoEdit = False
    DataSet = QrStore
    Left = 40
    Top = 72
  end
  object QrStore: TADOQuery
    Connection = Dm.YeganehConnection
    BeforePost = QrStoreBeforePost
    BeforeDelete = QrStoreBeforeDelete
    Parameters = <>
    SQL.Strings = (
      'Select *'
      'From Store')
    Left = 40
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
      FixedChar = True
      Size = 50
    end
  end
end
