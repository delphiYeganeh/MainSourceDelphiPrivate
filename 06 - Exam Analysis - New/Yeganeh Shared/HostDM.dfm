object DMHost: TDMHost
  OldCreateOrder = False
  Left = 261
  Top = 109
  Height = 284
  Width = 441
  object DSHost: TDataSource
    AutoEdit = False
    DataSet = QrHost
    Left = 32
    Top = 64
  end
  object DSHostGroup: TDataSource
    DataSet = QrHostGroup
    Left = 254
    Top = 64
  end
  object DSImageData: TDataSource
    AutoEdit = False
    DataSet = QrImageData
    Left = 173
    Top = 64
  end
  object QrHost: TADOQuery
    Connection = Dm.YeganehConnection
    AfterInsert = QrHost1AfterInsert
    AfterEdit = QrHost1AfterEdit
    BeforePost = QrHost1BeforePost
    AfterPost = QrHostAfterPost
    AfterCancel = QrHost1AfterCancel
    BeforeDelete = QrHostBeforeDelete
    AfterScroll = QrHost1AfterScroll
    Parameters = <>
    SQL.Strings = (
      'Select *'
      
        '       /*,(Select (RTrim(Name)+'#39' '#39'+RTrim(Family)) from Users Whe' +
        're(ID = Host.Users_Ref))as PrsNaFa*/'
      'from Host'
      '')
    Left = 32
    Top = 16
    object QrHostHost_ID: TIntegerField
      FieldName = 'Host_ID'
    end
    object QrHostCode: TIntegerField
      DisplayLabel = #1603#1583
      FieldName = 'Code'
    end
    object QrHostAddress: TWideStringField
      FieldName = 'Address'
      Size = 300
    end
    object QrHostEmail: TWideStringField
      FieldName = 'Email'
      Size = 100
    end
    object QrHostSubject: TWideStringField
      Alignment = taRightJustify
      FieldName = 'Subject'
      Size = 300
    end
    object QrHostED_HostGroup_Ref: TIntegerField
      FieldName = 'ED_HostGroup_Ref'
    end
    object QrHostUserName: TWideStringField
      FieldName = 'UserName'
      Size = 50
    end
    object QrHostPassword: TWideStringField
      FieldName = 'Password'
      Size = 50
    end
    object QrHostComment: TWideStringField
      Alignment = taRightJustify
      FieldName = 'Comment'
      Size = 300
    end
    object QrHostUsers_Ref: TIntegerField
      FieldName = 'Users_Ref'
    end
    object QrHostIsPublicity: TBooleanField
      Alignment = taRightJustify
      FieldName = 'IsPublicity'
    end
    object QrHostPublicityStDate: TWideStringField
      FieldName = 'PublicityStDate'
      EditMask = '!1399/99/99;1;_'
      Size = 25
    end
    object QrHostPublicityEnDate: TWideStringField
      FieldName = 'PublicityEnDate'
      EditMask = '!1399/99/99;1;_'
      Size = 25
    end
    object QrHostStatus: TWideStringField
      Alignment = taRightJustify
      FieldName = 'Status'
      Size = 50
    end
  end
  object QrSrchHost: TADOQuery
    Connection = Dm.YeganehConnection
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'Select Host_ID , Subject , Address'
      'from Host'
      'Where (1=1)')
    Left = 98
    Top = 16
    object QrSrchHostHost_ID: TIntegerField
      FieldName = 'Host_ID'
    end
    object QrSrchHostSubject: TWideStringField
      Tag = 1
      DisplayLabel = #1605#1608#1590#1608#1593' '#1587#1575#1610#1578
      DisplayWidth = 25
      FieldName = 'Subject'
      Size = 300
    end
    object QrSrchHostAddress: TWideStringField
      Tag = 1
      DisplayLabel = #1570#1583#1585#1587' '#1575#1610#1606#1578#1585#1606#1578#1610
      DisplayWidth = 70
      FieldName = 'Address'
      Size = 300
    end
  end
  object QrImageData: TADOQuery
    Connection = Dm.YeganehConnection
    BeforePost = QrImageData3BeforePost
    Parameters = <
      item
        Name = 'Host_ID'
        Attributes = [paSigned]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = Null
      end>
    SQL.Strings = (
      'Select *'
      'from ImageData'
      'Where (1=1)'
      'And(Table_Ref = :Host_ID)'
      'And(Table_Name = '#39'Host'#39')'
      ''
      ''
      '')
    Left = 172
    Top = 16
    object QrImageDataImageData_ID: TAutoIncField
      FieldName = 'ImageData_ID'
      ReadOnly = True
    end
    object QrImageDataImageData: TBlobField
      FieldName = 'ImageData'
    end
    object QrImageDataImageDataText: TWideStringField
      FieldName = 'ImageDataText'
      Size = 4000
    end
    object QrImageDataTable_Name: TWideStringField
      FieldName = 'Table_Name'
      Size = 50
    end
    object QrImageDataTable_Ref: TIntegerField
      FieldName = 'Table_Ref'
    end
    object QrImageDataTag: TIntegerField
      FieldName = 'Tag'
    end
  end
  object QrHostGroup: TADOQuery
    Connection = Dm.YeganehConnection
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'Select EnterData_ID , EDCode, EDName'
      'from EnterData'
      'Where(Data_Ref = 29)  /* '#1606#1575#1605' '#1711#1585#1608#1607#1607#1575#1610' '#1570#1583#1585#1587' '#1575#1610#1606#1578#1585#1606#1578#1610' */')
    Left = 254
    Top = 16
    object QrHostGroupEnterData_ID: TAutoIncField
      FieldName = 'EnterData_ID'
      ReadOnly = True
    end
    object QrHostGroupEDCode: TIntegerField
      FieldName = 'EDCode'
    end
    object QrHostGroupEDName: TWideStringField
      Alignment = taRightJustify
      DisplayLabel = #1606#1575#1605' '#1711#1585#1608#1607
      FieldName = 'EDName'
      Size = 50
    end
  end
  object QrSrchHostGroup: TADOQuery
    Connection = Dm.YeganehConnection
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'Select *'
      'from EnterData'
      'Where (1=1)'
      'And(Data_Ref = 29)  /* '#1606#1575#1605' '#1711#1585#1608#1607#1607#1575#1610' '#1570#1583#1585#1587' '#1575#1610#1606#1578#1585#1606#1578#1610' */')
    Left = 344
    Top = 16
    object QrSrchHostGroupEnterData_ID: TIntegerField
      FieldName = 'EnterData_ID'
      Origin = 'MYSOFTDB.EnterData.EnterData_ID'
    end
    object QrSrchHostGroupEDCode: TIntegerField
      Tag = 1
      DisplayLabel = #1603#1583
      FieldName = 'EDCode'
      Origin = 'MYSOFTDB.EnterData.EDCode'
    end
    object QrSrchHostGroupEDName: TStringField
      Tag = 1
      DisplayLabel = #1606#1575#1605' '#1711#1585#1608#1607
      DisplayWidth = 50
      FieldName = 'EDName'
      Origin = 'MYSOFTDB.EnterData.EDName'
      FixedChar = True
      Size = 100
    end
  end
  object QrUsers: TADOQuery
    Connection = Dm.YeganehConnection
    CursorType = ctStatic
    Parameters = <
      item
        Name = 'UserID'
        Attributes = [paSigned]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = 0
      end>
    SQL.Strings = (
      'Select Id, Title'
      'From Users'
      'Where ID = :UserID')
    Left = 32
    Top = 136
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
    AutoEdit = False
    DataSet = QrUsers
    Left = 32
    Top = 184
  end
end
