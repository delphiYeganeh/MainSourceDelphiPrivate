object DMFacDiagram: TDMFacDiagram
  OldCreateOrder = False
  Left = 266
  Top = 110
  Height = 177
  Width = 218
  object QrFacDiagram: TQuery
    DatabaseName = 'MySoftDB'
    SQL.Strings = (
      
        'Select Sum(FactorePrice) as SumFacPrice , SubString(FacDate,1,4)' +
        ' as FacYear'
      'from Factor'
      'Where Type = '#39'KH'#39
      'Group By SubString(FacDate,1,4) '
      'Order By SubString(FacDate,1,4)'
      ''
      ''
      ''
      '/**/')
    Left = 56
    Top = 8
    object QrFacDiagramSumFacPrice: TFloatField
      DisplayLabel = #1580#1605#1593' '#1605#1576#1575#1604#1594
      FieldName = 'SumFacPrice'
    end
    object QrFacDiagramFacYear: TStringField
      DisplayLabel = #1587#1575#1604' / '#1605#1575#1607
      FieldName = 'FacYear'
      FixedChar = True
      Size = 8
    end
  end
  object DSFacDiagram: TDataSource
    DataSet = QrFacDiagram
    Left = 56
    Top = 56
  end
end
