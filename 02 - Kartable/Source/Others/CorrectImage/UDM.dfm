object DM: TDM
  OldCreateOrder = False
  Left = 245
  Top = 110
  Height = 202
  Width = 324
  object YeganehConnection: TADOConnection
    CommandTimeout = 30000
    ConnectionTimeout = 60
    LoginPrompt = False
    Provider = 'SQLOLEDB.1'
    Left = 49
    Top = 21
  end
  object QrCorrectImage: TADOQuery
    Connection = YeganehConnection
    Parameters = <>
    SQL.Strings = (
      'Select Top 20 * '
      'from LetterData'
      'Where Extention = 1'
      'And IsCorrectedImage is null'
      'Order By LetterDataID Desc')
    Left = 160
    Top = 16
    object QrCorrectImageLetterDataID: TAutoIncField
      FieldName = 'LetterDataID'
      ReadOnly = True
    end
    object QrCorrectImageImage: TBlobField
      FieldName = 'Image'
    end
    object QrCorrectImageIsCorrectedImage: TBooleanField
      FieldName = 'IsCorrectedImage'
    end
  end
  object DSCorrectImage: TDataSource
    DataSet = QrCorrectImage
    Left = 160
    Top = 64
  end
end
