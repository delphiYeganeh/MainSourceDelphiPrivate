object ZistDm: TZistDm
  OldCreateOrder = False
  OnCreate = DataModuleCreate
  Left = 138
  Top = 98
  Height = 497
  Width = 398
  object DSResearch: TDataSource
    DataSet = QryResearch
    Left = 17
    Top = 67
  end
  object QryResearch: TADOQuery
    Connection = dm.YeganehConnection
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'Select *'
      'From arch_Research'
      ''
      'Union'
      ''
      'Select 0,'#39' '#1607#1605#1607' '#1589#1606#1575#1610#1593#39
      'Order By Descrp')
    Left = 18
    Top = 19
  end
  object QryCity: TADOQuery
    Connection = dm.YeganehConnection
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'Select *'
      'From arch_City'
      'Union'
      ''
      'Select 0,'#39' '#1607#1605#1607' '#1588#1607#1585' '#1607#1575#39
      'Order By Descrp')
    Left = 96
    Top = 40
  end
  object DSCity: TDataSource
    DataSet = QryCity
    Left = 96
    Top = 89
  end
  object DSEmployer: TDataSource
    DataSet = QryEmployer
    Left = 57
    Top = 175
  end
  object QryEmployer: TADOQuery
    Connection = dm.YeganehConnection
    CursorLocation = clUseServer
    Parameters = <>
    SQL.Strings = (
      'Select  *'
      'From arch_Employer '
      ''
      'Order By EmployerCode')
    Left = 18
    Top = 173
    object QryEmployerStatusTitle: TStringField
      FieldKind = fkLookup
      FieldName = 'StatusTitle'
      LookupDataSet = Status
      LookupKeyFields = 'StatusID'
      LookupResultField = 'Descrp'
      KeyFields = 'StatusID'
      Lookup = True
    end
    object QryEmployerKindTitle: TStringField
      FieldKind = fkLookup
      FieldName = 'KindTitle'
      LookupDataSet = Kind
      LookupKeyFields = 'KindID'
      LookupResultField = 'Descrp'
      KeyFields = 'KindID'
      Lookup = True
    end
    object QryEmployerEmployerID: TAutoIncField
      FieldName = 'EmployerID'
      ReadOnly = True
    end
    object QryEmployerDt: TStringField
      FieldName = 'Dt'
      FixedChar = True
      Size = 10
    end
    object QryEmployerResearchID: TIntegerField
      FieldName = 'ResearchID'
    end
    object QryEmployerCityID: TIntegerField
      FieldName = 'CityID'
    end
    object QryEmployerEmployerCode: TIntegerField
      FieldName = 'EmployerCode'
    end
    object QryEmployerEmployerDescrp: TStringField
      FieldName = 'EmployerDescrp'
      Size = 40
    end
    object QryEmployerExplan: TStringField
      FieldName = 'Explan'
      Size = 100
    end
    object QryEmployerStatusID: TWordField
      FieldName = 'StatusID'
    end
    object QryEmployerKindID: TWordField
      FieldName = 'KindID'
    end
    object QryEmployerCityTitle: TStringField
      FieldKind = fkLookup
      FieldName = 'CityTitle'
      LookupDataSet = QryCity
      LookupKeyFields = 'CityID'
      LookupResultField = 'Descrp'
      KeyFields = 'CityID'
      Lookup = True
    end
    object QryEmployerResearchTitle: TStringField
      FieldKind = fkLookup
      FieldName = 'ResearchTitle'
      LookupDataSet = QryResearch
      LookupKeyFields = 'ResearchID'
      LookupResultField = 'Descrp'
      KeyFields = 'ResearchID'
      Lookup = True
    end
  end
  object Kind: TADOTable
    Connection = dm.YeganehConnection
    CursorType = ctStatic
    TableName = 'arch_Kind'
    Left = 216
    Top = 96
  end
  object Status: TADOTable
    Connection = dm.YeganehConnection
    CursorType = ctStatic
    TableName = 'arch_Status'
    Left = 224
    Top = 176
  end
  object DSCodeList: TDataSource
    DataSet = QryFileKeeping
    Left = 184
    Top = 288
  end
  object QryFileKeeping: TADOQuery
    Connection = dm.YeganehConnection
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'Select *'
      'From arch_FileKeeping'
      'Order By Name')
    Left = 104
    Top = 288
    object QryFileKeepingFileKeepingID: TAutoIncField
      FieldName = 'FileKeepingID'
      ReadOnly = True
    end
    object QryFileKeepingFileKeepingCode: TStringField
      FieldName = 'FileKeepingCode'
      Size = 10
    end
    object QryFileKeepingName: TStringField
      FieldName = 'Name'
      Size = 40
    end
    object QryFileKeepingk: TSmallintField
      FieldName = 'k'
    end
    object QryFileKeepingT: TSmallintField
      FieldName = 'T'
    end
    object QryFileKeepingz: TSmallintField
      FieldName = 'z'
    end
  end
end
