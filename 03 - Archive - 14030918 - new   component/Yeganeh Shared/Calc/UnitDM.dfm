object DMUnit: TDMUnit
  OldCreateOrder = False
  Left = 258
  Top = 133
  Height = 173
  Width = 163
  object DSUnit: TDataSource
    AutoEdit = False
    DataSet = QrUnit
    Left = 32
    Top = 64
  end
  object QrUnit: TADOQuery
    Connection = Dm.YeganehConnection
    AfterInsert = QrUnit1AfterInsert
    BeforePost = QrUnit1BeforePost
    BeforeDelete = QrUnit1BeforeDelete
    Parameters = <>
    SQL.Strings = (
      'Select * '
      'from Unit'
      'Where Unit_ID <> 1  /*'#1608#1575#1581#1583' '#1582#1583#1605#1575#1578#1610'*/')
    Left = 32
    Top = 16
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
