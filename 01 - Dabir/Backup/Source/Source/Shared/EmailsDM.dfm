object DMEmails: TDMEmails
  OldCreateOrder = False
  OnCreate = DataModuleCreate
  Left = 395
  Top = 81
  Height = 274
  Width = 433
  object SpEmails: TADOStoredProc
    Connection = Dm.YeganehConnection
    CursorType = ctStatic
    AfterEdit = SpEmailsAfterEdit
    BeforePost = SpEmailsBeforePost
    AfterCancel = SpEmailsAfterCancel
    BeforeDelete = SpEmailsBeforeDelete
    AfterScroll = SpEmailsAfterScroll
    OnCalcFields = SpEmailsCalcFields
    ProcedureName = 'Sp_Sel_Emails;1'
    Parameters = <
      item
        Name = '@RETURN_VALUE'
        DataType = ftInteger
        Direction = pdReturnValue
        Precision = 10
        Value = Null
      end
      item
        Name = '@Status'
        Attributes = [paNullable]
        DataType = ftSmallint
        Precision = 5
        Value = 0
      end
      item
        Name = '@UsersID'
        Attributes = [paNullable]
        DataType = ftInteger
        Precision = 10
        Value = 0
      end>
    Left = 24
    Top = 16
    object SpEmailsEmailsID: TAutoIncField
      FieldName = 'EmailsID'
      ReadOnly = True
    end
    object SpEmailsCode: TIntegerField
      FieldName = 'Code'
    end
    object SpEmailsSubject: TWideStringField
      Alignment = taRightJustify
      DisplayWidth = 4000
      FieldName = 'Subject'
      Size = 4000
    end
    object SpEmailsSendAddress: TWideStringField
      Alignment = taRightJustify
      FieldName = 'SendAddress'
      Size = 100
    end
    object SpEmailsReciveAddress: TWideStringField
      Alignment = taRightJustify
      FieldName = 'ReciveAddress'
      Size = 100
    end
    object SpEmailsStatus: TSmallintField
      FieldName = 'Status'
    end
    object SpEmailsDateEmail: TWideStringField
      Alignment = taRightJustify
      FieldName = 'DateEmail'
      Size = 10
    end
    object SpEmailsTimeEmail: TWideStringField
      Alignment = taRightJustify
      FieldName = 'TimeEmail'
      Size = 10
    end
    object SpEmailsUsersID: TIntegerField
      FieldName = 'UsersID'
    end
    object SpEmailsAttachFileName: TWideStringField
      FieldName = 'AttachFileName'
      Size = 50
    end
    object SpEmailsIsRead: TBooleanField
      FieldName = 'IsRead'
    end
    object SpEmailsIsAnswer: TBooleanField
      FieldName = 'IsAnswer'
    end
    object SpEmailsIsReciveEmail: TBooleanField
      FieldName = 'IsReciveEmail'
    end
    object SpEmailsEmailCount: TIntegerField
      FieldKind = fkCalculated
      FieldName = 'EmailCount'
      Calculated = True
    end
  end
  object DSEmails: TDataSource
    AutoEdit = False
    DataSet = SpEmails
    Left = 24
    Top = 64
  end
  object QrSaveEmails: TADOQuery
    Connection = Dm.YeganehConnection
    AfterInsert = QrSaveEmailsAfterInsert
    Parameters = <
      item
        Name = 'EmailsID'
        DataType = ftInteger
        Size = 1
        Value = 0
      end>
    SQL.Strings = (
      'Select *'
      'from Emails'
      'Where(EmailsID = :EmailsID)'
      '  /*And(Status = ;Status)*/')
    Left = 101
    Top = 16
    object QrSaveEmailsEmailsID: TAutoIncField
      FieldName = 'EmailsID'
      ReadOnly = True
    end
    object QrSaveEmailsCode: TIntegerField
      FieldName = 'Code'
    end
    object QrSaveEmailsSubject: TWideStringField
      Alignment = taRightJustify
      DisplayWidth = 4000
      FieldName = 'Subject'
      Size = 4000
    end
    object QrSaveEmailsSendAddress: TWideStringField
      FieldName = 'SendAddress'
      Size = 100
    end
    object QrSaveEmailsReciveAddress: TWideStringField
      FieldName = 'ReciveAddress'
      Size = 100
    end
    object QrSaveEmailsMemo: TBlobField
      Alignment = taRightJustify
      FieldName = 'Memo'
    end
    object QrSaveEmailsAttachFile: TBlobField
      FieldName = 'AttachFile'
    end
    object QrSaveEmailsStatus: TSmallintField
      FieldName = 'Status'
    end
    object QrSaveEmailsDateEmail: TWideStringField
      FieldName = 'DateEmail'
      Size = 10
    end
    object QrSaveEmailsTimeEmail: TWideStringField
      FieldName = 'TimeEmail'
      Size = 10
    end
    object QrSaveEmailsIsRead: TBooleanField
      FieldName = 'IsRead'
    end
    object QrSaveEmailsIsAnswer: TBooleanField
      FieldName = 'IsAnswer'
    end
    object QrSaveEmailsUsersID: TIntegerField
      FieldName = 'UsersID'
    end
    object QrSaveEmailsAttachFileName: TWideStringField
      FieldName = 'AttachFileName'
      Size = 50
    end
    object QrSaveEmailsIsReciveEmail: TBooleanField
      FieldName = 'IsReciveEmail'
    end
    object QrSaveEmailsIsPersonal: TBooleanField
      FieldName = 'IsPersonal'
    end
    object QrSaveEmailsIsImportant: TBooleanField
      FieldName = 'IsImportant'
    end
    object QrSaveEmailsIsSecret: TBooleanField
      FieldName = 'IsSecret'
    end
    object QrSaveEmailsEmailNuFromDate: TWideStringField
      DisplayLabel = #1588#1605#1575#1585#1607' '#1588#1606#1575#1587#1575#1610#1610' '#1575#1610#1605#1610#1604' '#1608#1575#1585#1583' '#1588#1583#1607
      FieldName = 'EmailNuFromDate'
    end
  end
  object DSSaveEmails: TDataSource
    AutoEdit = False
    DataSet = QrSaveEmails
    Left = 101
    Top = 64
  end
  object QrUsers: TADOQuery
    Connection = Dm.YeganehConnection
    CursorType = ctStatic
    Parameters = <
      item
        Name = 'Pa_UserID'
        Attributes = [paSigned]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = Null
      end>
    SQL.Strings = (
      #13'/*'#1606#1575#1605' '#1705#1575#1585#1576#1585' '#1579#1576#1578' '#1705#1606#1606#1583#1607' */'#10
      'Select  Id,Title,UserName,PassWord '
      'From Users'
      'Where ID = :Pa_UserID')
    Left = 282
    Top = 16
    object QrUsersId: TAutoIncField
      FieldName = 'Id'
      ReadOnly = True
    end
    object QrUsersTitle: TWideStringField
      FieldName = 'Title'
      Size = 50
    end
    object QrUsersUserName: TWideStringField
      FieldName = 'UserName'
      Size = 50
    end
    object QrUsersPassWord: TWideStringField
      FieldName = 'PassWord'
      Size = 50
    end
  end
  object DSUsers: TDataSource
    DataSet = QrUsers
    Left = 282
    Top = 64
  end
  object DSSrchPhone: TDataSource
    DataSet = QrSrchPhone
    Left = 360
    Top = 64
  end
  object QrSrchPhone: TADOQuery
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
      'from Phone'
      'Where (1=1)'
      'And((IsPublic=1)or(UsersID = :UsersID ))'
      ''
      ''
      '')
    Left = 360
    Top = 16
    object QrSrchPhonePhoneID: TAutoIncField
      FieldName = 'PhoneID'
      ReadOnly = True
    end
    object QrSrchPhoneTitle: TWideStringField
      Tag = 1
      DisplayLabel = #1606#1575#1605' '#1588#1585#1705#1578
      DisplayWidth = 25
      FieldName = 'Title'
      Size = 50
    end
    object QrSrchPhoneEmail: TWideStringField
      Tag = 1
      Alignment = taRightJustify
      DisplayLabel = #1575#1610#1605#1610#1604
      DisplayWidth = 25
      FieldName = 'Email'
      Size = 50
    end
    object QrSrchPhonePersonName: TWideStringField
      Tag = 1
      DisplayLabel = #1606#1575#1605' '#1605#1587#1574#1608#1604
      DisplayWidth = 15
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
    object QrSrchPhoneAddress: TWideStringField
      Tag = 1
      DisplayLabel = #1570#1583#1585#1587
      DisplayWidth = 40
      FieldName = 'Address'
      Size = 500
    end
  end
  object QrSrchEmails: TADOQuery
    Connection = Dm.YeganehConnection
    Parameters = <>
    SQL.Strings = (
      
        'Select EmailsID , Code , Subject , SendAddress , DateEmail , Sta' +
        'tus'
      'from Emails'
      'Where (1=1)'
      '')
    Left = 197
    Top = 16
    object QrSrchEmailsEmailsID: TAutoIncField
      FieldName = 'EmailsID'
      ReadOnly = True
    end
    object QrSrchEmailsCode: TIntegerField
      Tag = 1
      DisplayLabel = #1705#1583
      DisplayWidth = 4
      FieldName = 'Code'
    end
    object QrSrchEmailsSubject: TWideStringField
      Tag = 1
      DisplayLabel = #1605#1608#1590#1608#1593' '#1575#1610#1605#1610#1604
      DisplayWidth = 4000
      FieldName = 'Subject'
      Size = 4000
    end
    object QrSrchEmailsSendAddress: TWideStringField
      Tag = 1
      Alignment = taRightJustify
      DisplayLabel = #1570#1583#1585#1587' '#1601#1585#1587#1578#1606#1583#1607
      DisplayWidth = 20
      FieldName = 'SendAddress'
      Size = 100
    end
    object QrSrchEmailsDateEmail: TWideStringField
      Tag = 1
      Alignment = taCenter
      DisplayLabel = #1578#1575#1585#1610#1582
      DisplayWidth = 10
      FieldName = 'DateEmail'
      Size = 10
    end
    object QrSrchEmailsStatus: TSmallintField
      FieldName = 'Status'
    end
  end
  object QrEmailNuFromDate: TADOQuery
    Connection = Dm.YeganehConnection
    Parameters = <
      item
        Name = 'UsersID'
        DataType = ftString
        Size = 1
        Value = '0'
      end
      item
        Name = 'EmailNuFromDate'
        DataType = ftString
        Size = 2
        Value = #39#39
      end>
    SQL.Strings = (
      'Select EmailsID , EmailNuFromDate '
      'from Emails'
      'Where(UsersID = :UsersID)'
      '  And(EmailNuFromDate = :EmailNuFromDate)')
    Left = 197
    Top = 64
    object QrEmailNuFromDateEmailsID: TAutoIncField
      FieldName = 'EmailsID'
      ReadOnly = True
    end
    object QrEmailNuFromDateEmailNuFromDate: TWideStringField
      DisplayLabel = #1588#1605#1575#1585#1607' '#1575#1610#1605#1610#1604' '#1608#1575#1585#1583' '#1588#1583#1607
      FieldName = 'EmailNuFromDate'
    end
  end
  object EmailAddresses: TADOTable
    Connection = Dm.YeganehConnection
    CursorType = ctStatic
    TableName = 'EmailAddresses'
    Left = 104
    Top = 128
    object EmailAddressesID: TAutoIncField
      Alignment = taLeftJustify
      FieldName = 'ID'
      ReadOnly = True
    end
    object EmailAddressesEmailAddress: TStringField
      FieldName = 'EmailAddress'
      Size = 50
    end
    object EmailAddressesUserName: TStringField
      FieldName = 'UserName'
      Size = 50
    end
    object EmailAddressesPassWord: TStringField
      FieldName = 'PassWord'
      Size = 64
    end
    object EmailAddressesRecievehost: TStringField
      FieldName = 'Recievehost'
      Size = 50
    end
    object EmailAddressesSendHost: TStringField
      FieldName = 'SendHost'
      Size = 50
    end
    object EmailAddressesRecivePort: TSmallintField
      Alignment = taLeftJustify
      FieldName = 'RecivePort'
    end
    object EmailAddressesSendPort: TSmallintField
      Alignment = taLeftJustify
      FieldName = 'SendPort'
    end
    object EmailAddressesAuthenticationType: TStringField
      FieldName = 'AuthenticationType'
      Size = 50
    end
    object EmailAddressesSSLOption: TStringField
      FieldName = 'SSLOption'
      Size = 50
    end
    object EmailAddressesReciverOrgID: TIntegerField
      Alignment = taLeftJustify
      FieldName = 'ReciverOrgID'
    end
    object EmailAddressesReciverSecID: TIntegerField
      Alignment = taLeftJustify
      FieldName = 'ReciverSecID'
    end
    object EmailAddressesIsActive: TBooleanField
      FieldName = 'IsActive'
    end
    object EmailAddressesConnectionTimeOut: TSmallintField
      Alignment = taLeftJustify
      FieldName = 'ConnectionTimeOut'
    end
    object EmailAddressesSecTitle: TStringField
      FieldKind = fkLookup
      FieldName = 'SecTitle'
      LookupDataSet = Dm.Secretariats
      LookupKeyFields = 'SecID'
      LookupResultField = 'SecTitle'
      KeyFields = 'ReciverSecID'
      Lookup = True
    end
    object EmailAddressesReciveOrgTitle: TStringField
      FieldKind = fkLookup
      FieldName = 'ReciveOrgTitle'
      LookupDataSet = Dm.FromOrganizations
      LookupKeyFields = 'ID'
      LookupResultField = 'Title'
      KeyFields = 'ReciverOrgID'
      Size = 50
      Lookup = True
    end
  end
  object DEmailAddresses: TDataSource
    AutoEdit = False
    DataSet = EmailAddresses
    Left = 104
    Top = 184
  end
end
