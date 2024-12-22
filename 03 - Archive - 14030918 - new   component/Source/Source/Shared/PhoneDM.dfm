object DMPhone: TDMPhone
  OldCreateOrder = False
  Left = 540
  Top = 276
  Height = 214
  Width = 579
  object QrPhoneGroup: TADOQuery
    Connection = Dm.YeganehConnection
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
    Left = 224
    Top = 16
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
    Left = 224
    Top = 64
  end
  object SpPhone: TADOStoredProc
    Connection = Dm.YeganehConnection
    CursorType = ctStatic
    AfterInsert = SpPhoneAfterInsert
    BeforePost = SpPhoneBeforePost
    BeforeDelete = SpPhoneBeforeDelete
    OnCalcFields = SpPhoneCalcFields
    ProcedureName = 'Sp_Sel_Phone;1'
    Parameters = <
      item
        Name = '@RETURN_VALUE'
        DataType = ftInteger
        Direction = pdReturnValue
        Precision = 10
        Value = 0
      end
      item
        Name = '@UserSID'
        Attributes = [paNullable]
        DataType = ftInteger
        Precision = 10
        Value = 0
      end>
    Left = 40
    Top = 16
    object SpPhonePhoneID: TAutoIncField
      FieldName = 'PhoneID'
      ReadOnly = True
    end
    object SpPhoneCode: TIntegerField
      FieldName = 'Code'
    end
    object SpPhoneTitle: TWideStringField
      Alignment = taRightJustify
      FieldName = 'Title'
      Size = 50
    end
    object SpPhonePersonName: TWideStringField
      Alignment = taRightJustify
      FieldName = 'PersonName'
      Size = 50
    end
    object SpPhoneTel1: TWideStringField
      Alignment = taRightJustify
      FieldName = 'Tel1'
    end
    object SpPhoneTel2: TWideStringField
      Alignment = taRightJustify
      FieldName = 'Tel2'
    end
    object SpPhoneMobile: TWideStringField
      Alignment = taRightJustify
      FieldName = 'Mobile'
    end
    object SpPhoneFax: TWideStringField
      Alignment = taRightJustify
      FieldName = 'Fax'
    end
    object SpPhoneEmail: TWideStringField
      FieldName = 'Email'
      Size = 50
    end
    object SpPhoneInternet: TWideStringField
      FieldName = 'Internet'
      Size = 500
    end
    object SpPhoneAddress: TWideStringField
      Alignment = taRightJustify
      FieldName = 'Address'
      Size = 500
    end
    object SpPhoneDescript: TWideStringField
      Alignment = taRightJustify
      FieldName = 'Descript'
      Size = 500
    end
    object SpPhonePhoneGroupID: TIntegerField
      FieldName = 'PhoneGroupID'
    end
    object SpPhoneUsersID: TIntegerField
      FieldName = 'UsersID'
    end
    object SpPhoneUsersTitle: TStringField
      Alignment = taRightJustify
      FieldKind = fkLookup
      FieldName = 'UsersTitle'
      LookupDataSet = QrUsers
      LookupKeyFields = 'Id'
      LookupResultField = 'Title'
      KeyFields = 'UsersID'
      Size = 50
      Lookup = True
    end
    object SpPhoneIsPublic: TBooleanField
      Alignment = taRightJustify
      FieldName = 'IsPublic'
    end
    object SpPhoneZipCode: TWideStringField
      FieldName = 'ZipCode'
      Size = 30
    end
    object SpPhoneShowPhone: TStringField
      DisplayLabel = #1606#1605#1575#1610#1588' '#1578#1604#1601#1606
      FieldKind = fkCalculated
      FieldName = 'ShowPhone'
      Size = 50
      Calculated = True
    end
  end
  object DSPhone: TDataSource
    AutoEdit = False
    DataSet = SpPhone
    OnDataChange = DSPhoneDataChange
    Left = 40
    Top = 64
  end
  object QrUsers: TADOQuery
    Connection = Dm.YeganehConnection
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'Select Id , Title'
      'From Users')
    Left = 304
    Top = 16
    object QrUsersId: TAutoIncField
      FieldName = 'Id'
      ReadOnly = True
    end
    object QrUsersTitle: TWideStringField
      Alignment = taRightJustify
      FieldName = 'Title'
      Size = 50
    end
  end
  object DSUsers: TDataSource
    DataSet = QrUsers
    Left = 304
    Top = 64
  end
  object DSSrchPhone: TDataSource
    DataSet = QrSrchPhone
    Left = 136
    Top = 64
  end
  object QrSrchPhone: TADOQuery
    Connection = Dm.YeganehConnection
    BeforeOpen = QrSrchPhoneBeforeOpen
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
      'SELECT list1.* FROM'
      '('
      'Select P.*,PG.Title AS GroupName'
      'from Phone P'
      'LEFT JOIN PhoneGroup PG ON P.PhoneGroupID=PG.PhoneGroupID'
      'Where  (1=1) And((IsPublic=1)or(P.UsersID = 5 ))'
      ') AS list1'
      'Where (1=1) And((IsPublic=1)or(UsersID = :UsersID ))')
    Left = 136
    Top = 16
    object QrSrchPhonePhoneID: TAutoIncField
      FieldName = 'PhoneID'
      ReadOnly = True
    end
    object QrSrchPhoneFax: TWideStringField
      FieldName = 'Fax'
    end
    object QrSrchPhoneInternet: TWideStringField
      FieldName = 'Internet'
      Size = 500
    end
    object QrSrchPhoneAddress: TWideStringField
      FieldName = 'Address'
      Size = 500
    end
    object QrSrchPhoneZipCode: TWideStringField
      FieldName = 'ZipCode'
      Size = 30
    end
    object QrSrchPhoneIsPublic: TBooleanField
      FieldName = 'IsPublic'
    end
    object QrSrchPhoneUsersID: TIntegerField
      FieldName = 'UsersID'
    end
    object QrSrchPhoneCode: TIntegerField
      Tag = 1
      DisplayLabel = #1705#1583
      DisplayWidth = 5
      FieldName = 'Code'
    end
    object QrSrchPhoneTitle: TWideStringField
      Tag = 1
      DisplayLabel = #1606#1575#1605' '#1588#1585#1705#1578
      DisplayWidth = 20
      FieldName = 'Title'
      Size = 50
    end
    object QrSrchPhonePersonName: TWideStringField
      Tag = 1
      DisplayLabel = #1606#1575#1605' '#1605#1587#1574#1608#1604
      DisplayWidth = 20
      FieldName = 'PersonName'
      Size = 50
    end
    object QrSrchPhoneTel1: TWideStringField
      Tag = 1
      DisplayLabel = #1578#1604#1601#1606'1'
      DisplayWidth = 15
      FieldName = 'Tel1'
    end
    object QrSrchPhoneTel2: TWideStringField
      Tag = 1
      DisplayLabel = #1578#1604#1601#1606'2'
      DisplayWidth = 15
      FieldName = 'Tel2'
    end
    object QrSrchPhoneMobile: TWideStringField
      Tag = 1
      DisplayLabel = #1607#1605#1585#1575#1607
      DisplayWidth = 15
      FieldName = 'Mobile'
    end
    object QrSrchPhoneEmail: TWideStringField
      Tag = 1
      DisplayLabel = #1575#1610#1605#1610#1604
      DisplayWidth = 30
      FieldName = 'Email'
      Size = 50
    end
    object QrSrchPhoneDescript: TWideStringField
      Tag = 1
      DisplayLabel = #1578#1608#1590#1610#1581#1575#1578
      DisplayWidth = 50
      FieldName = 'Descript'
      Size = 500
    end
    object QrSrchPhonePhoneGroupID: TIntegerField
      Tag = 1
      DisplayLabel = #1705#1583' '#1711#1585#1608#1607
      FieldName = 'PhoneGroupID'
    end
    object QrSrchPhoneGroupName: TWideStringField
      Tag = 1
      DisplayLabel = #1606#1575#1605' '#1711#1585#1608#1607
      FieldName = 'GroupName'
      Size = 25
    end
  end
  object Q_NonAccessUsers: TADOQuery
    Connection = Dm.YeganehConnection
    CursorType = ctStatic
    Parameters = <
      item
        Name = 'PhoneID'
        DataType = ftInteger
        Size = -1
        Value = 12
      end>
    SQL.Strings = (
      'EXEC sp_PhoneUsers'
      #9'@PhoneID =:PhoneID,'
      #9'@HasAccess = 0')
    Left = 376
    Top = 16
    object Q_NonAccessUsersUserID: TIntegerField
      FieldName = 'UserID'
    end
    object Q_NonAccessUsersUserTitle: TWideStringField
      FieldName = 'UserTitle'
      Size = 50
    end
    object Q_NonAccessUsersContactTitle: TWideStringField
      FieldName = 'ContactTitle'
      Size = 50
    end
  end
  object DS_NonAccessUsers: TDataSource
    DataSet = Q_NonAccessUsers
    Left = 376
    Top = 64
  end
  object Q_AccessUsers: TADOQuery
    Connection = Dm.YeganehConnection
    CursorType = ctStatic
    Parameters = <
      item
        Name = 'PhoneID'
        DataType = ftString
        Size = 2
        Value = '12'
      end>
    SQL.Strings = (
      'EXEC sp_PhoneUsers'
      #9'@PhoneID =:PhoneID,'
      #9'@HasAccess = 1')
    Left = 448
    Top = 16
    object Q_AccessUsersUserID: TIntegerField
      FieldName = 'UserID'
    end
    object Q_AccessUsersUserTitle: TWideStringField
      FieldName = 'UserTitle'
      Size = 50
    end
    object Q_AccessUsersContactTitle: TWideStringField
      FieldName = 'ContactTitle'
      Size = 50
    end
  end
  object DS_AccessUsers: TDataSource
    DataSet = Q_AccessUsers
    Left = 448
    Top = 64
  end
end
