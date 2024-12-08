object DMPhoneGroup: TDMPhoneGroup
  OldCreateOrder = False
  Left = 229
  Top = 106
  Height = 209
  Width = 254
  object QrPhoneGroup: TADOQuery
    Connection = Dm.YeganehConnection
    BeforePost = QrPhoneGroupBeforePost
    BeforeDelete = QrPhoneGroupBeforeDelete
    Parameters = <
      item
        Name = 'UsersID'
        Attributes = [paSigned]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = 0
      end>
    SQL.Strings = (
      'Select *'
      'From PhoneGroup')
    Left = 48
    Top = 24
    object QrPhoneGroupPhoneGroupID: TAutoIncField
      FieldName = 'PhoneGroupID'
      ReadOnly = True
    end
    object QrPhoneGroupCode: TIntegerField
      FieldName = 'Code'
    end
    object QrPhoneGroupTitle: TWideStringField
      Alignment = taRightJustify
      FieldName = 'Title'
      Size = 50
    end
    object QrPhoneGroupUsersID: TIntegerField
      FieldName = 'UsersID'
    end
  end
  object DSPhoneGroup: TDataSource
    AutoEdit = False
    DataSet = QrPhoneGroup
    Left = 48
    Top = 72
  end
end
