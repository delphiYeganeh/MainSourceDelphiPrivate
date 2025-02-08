object DMAddLetterData: TDMAddLetterData
  OldCreateOrder = False
  Left = 320
  Top = 113
  Height = 143
  Width = 202
  object QrSrchZipExt: TADOQuery
    Connection = dm.YeganehConnection
    Parameters = <
      item
        Name = 'UserID'
        DataType = ftInteger
        Size = -1
        Value = 0
      end>
    SQL.Strings = (
      'Select E.ExtentionID'
      'From Extention E , UserExtention UE '
      'Where(E.Extention = '#39'Zip'#39')'
      'And(E.ExtentionID = UE.ExtentionID)'
      'And( UE.UserID = :UserID )')
    Left = 32
    Top = 16
    object QrSrchZipExtExtentionID: TAutoIncField
      FieldName = 'ExtentionID'
      ReadOnly = True
    end
  end
  object QrZipExt: TADOQuery
    Connection = dm.YeganehConnection
    Parameters = <
      item
        Name = 'UserID'
        DataType = ftInteger
        Size = -1
        Value = 0
      end>
    SQL.Strings = (
      'Select Top 1 *'
      'From UserExtention UE'
      'Where(UE.UserID = :UserID)')
    Left = 96
    Top = 16
    object QrZipExtUserExtentionID: TAutoIncField
      FieldName = 'UserExtentionID'
      ReadOnly = True
    end
    object QrZipExtUserId: TIntegerField
      FieldName = 'UserId'
    end
    object QrZipExtReaderApplication: TWideStringField
      FieldName = 'ReaderApplication'
      Size = 500
    end
    object QrZipExtExtentionID: TIntegerField
      FieldName = 'ExtentionID'
    end
  end
end
