object DMCheque: TDMCheque
  OldCreateOrder = False
  Left = 321
  Top = 189
  Height = 189
  Width = 506
  object DSBank: TDataSource
    DataSet = QrBank
    Left = 284
    Top = 67
  end
  object DSCheque: TDataSource
    AutoEdit = False
    DataSet = QrCheque
    Left = 32
    Top = 67
  end
  object DSStatus: TDataSource
    DataSet = QrStatus
    Left = 362
    Top = 67
  end
  object DSFilter: TDataSource
    DataSet = QrFilter
    Left = 440
    Top = 67
  end
  object QrCheque: TADOQuery
    Connection = Dm.YeganehConnection
    BeforeOpen = QrChequeBeforeOpen
    AfterInsert = QrChequeAfterInsert
    BeforePost = QrChequeBeforePost
    AfterPost = QrChequeAfterPost
    BeforeDelete = QrChequeBeforeDelete
    AfterScroll = QrChequeAfterScroll
    OnCalcFields = QrChequeCalcFields
    Parameters = <
      item
        Name = 'Type'
        DataType = ftInteger
        Size = -1
        Value = Null
      end
      item
        Name = 'Factor_ID1'
        DataType = ftInteger
        Size = -1
        Value = Null
      end
      item
        Name = 'Factor_ID2'
        DataType = ftInteger
        Size = -1
        Value = Null
      end
      item
        Name = 'Status1'
        DataType = ftInteger
        Size = -1
        Value = Null
      end
      item
        Name = 'Status2'
        DataType = ftInteger
        Size = -1
        Value = Null
      end>
    SQL.Strings = (
      'Select C.* '
      'from Cheque C'
      'Where(C.Type = :Type )'
      'And( C.Factor_Ref = :Factor_ID1 or 0= :Factor_ID2 )'
      
        'And( IsNull(C.Status,10) = :Status1 or :Status2 = 0 ) /*'#1608#1590#1593#1610#1578' '#1670#1705 +
        ' ; '#1580#1607#1578' '#1601#1610#1604#1578#1585' '#1705#1585#1583#1606'*/'
      ''
      ''
      ''
      ''
      ''
      ''
      ''
      '')
    Left = 32
    Top = 16
    object QrChequeCheque_ID: TIntegerField
      FieldName = 'Cheque_ID'
    end
    object QrChequeNumber: TWideStringField
      Alignment = taRightJustify
      FieldName = 'Number'
      Size = 50
    end
    object QrChequeAcountNumber: TIntegerField
      FieldName = 'AcountNumber'
    end
    object QrChequeExportDate: TStringField
      FieldName = 'ExportDate'
      OnGetText = QrChequeExportDateGetText
      OnSetText = QrChequeExportDateSetText
      EditMask = #8207'!1399/99/99;1;_'
      FixedChar = True
      Size = 50
    end
    object QrChequeDueDate: TStringField
      FieldName = 'DueDate'
      OnGetText = QrChequeExportDateGetText
      OnSetText = QrChequeExportDateSetText
      EditMask = #8207'!1399/99/99;1;_'
      FixedChar = True
      Size = 50
    end
    object QrChequeED_Bank_Ref: TIntegerField
      FieldName = 'ED_Bank_Ref'
    end
    object QrChequeBranchName: TStringField
      Alignment = taRightJustify
      FieldName = 'BranchName'
      FixedChar = True
      Size = 100
    end
    object QrChequePrice: TFloatField
      FieldName = 'Price'
      OnGetText = QrChequePriceGetText
      OnSetText = QrChequePriceSetText
    end
    object QrChequeBearer: TStringField
      Alignment = taRightJustify
      FieldName = 'Bearer'
      FixedChar = True
      Size = 100
    end
    object QrChequeStatus: TIntegerField
      FieldName = 'Status'
    end
    object QrChequeReceiver: TStringField
      Alignment = taRightJustify
      FieldName = 'Receiver'
      FixedChar = True
      Size = 100
    end
    object QrChequeTozihat: TStringField
      Alignment = taRightJustify
      FieldName = 'Tozihat'
      FixedChar = True
      Size = 255
    end
    object QrChequePriceBeHorof: TStringField
      FieldKind = fkCalculated
      FieldName = 'PriceBeHorof'
      Size = 100
      Calculated = True
    end
    object QrChequeEndorse: TIntegerField
      FieldName = 'Endorse'
    end
    object QrChequeAcountName: TStringField
      Alignment = taRightJustify
      FieldName = 'AcountName'
      FixedChar = True
      Size = 100
    end
    object QrChequeFactor_Ref: TIntegerField
      FieldName = 'Factor_Ref'
    end
    object QrChequeType: TIntegerField
      FieldName = 'Type'
    end
    object QrChequeUsers_Ref: TIntegerField
      FieldName = 'Users_Ref'
    end
  end
  object QrSrchCheque: TADOQuery
    Connection = Dm.YeganehConnection
    Parameters = <
      item
        Name = 'Type'
        DataType = ftInteger
        Size = -1
        Value = Null
      end
      item
        Name = 'Factor_ID1'
        DataType = ftInteger
        Size = -1
        Value = Null
      end
      item
        Name = 'Factor_ID2'
        DataType = ftInteger
        Size = -1
        Value = Null
      end>
    SQL.Strings = (
      
        'Select C.* , (Select EDName From EnterData Where(Data_Ref = 30)A' +
        'nd(EnterData_ID = C.ED_Bank_Ref))as BankName'
      'from Cheque C'
      'Where (1=1)'
      '  And(Type = :Type )'
      '  And((C.Factor_Ref = :Factor_ID1 )or(0= :Factor_ID2 ))')
    Left = 110
    Top = 16
    object QrSrchChequeCheque_ID: TIntegerField
      FieldName = 'Cheque_ID'
    end
    object QrSrchChequeNumber: TWideStringField
      Tag = 1
      Alignment = taRightJustify
      DisplayLabel = #1588#1605#1575#1585#1607' '#1670#1705
      DisplayWidth = 10
      FieldName = 'Number'
      Size = 50
    end
    object QrSrchChequeAcountNumber: TIntegerField
      Tag = 1
      DisplayLabel = #1588#1605#1575#1585#1607' '#1581#1587#1575#1576
      DisplayWidth = 7
      FieldName = 'AcountNumber'
    end
    object QrSrchChequeAcountName: TStringField
      Tag = 1
      DisplayLabel = #1606#1575#1605' '#1589#1575#1581#1576' '#1581#1587#1575#1576
      DisplayWidth = 20
      FieldName = 'AcountName'
      FixedChar = True
      Size = 100
    end
    object QrSrchChequeExportDate: TStringField
      Tag = 1
      DisplayLabel = #1578#1575#1585#1610#1582' '#1589#1583#1608#1585
      DisplayWidth = 12
      FieldName = 'ExportDate'
      FixedChar = True
      Size = 50
    end
    object QrSrchChequeDueDate: TStringField
      Tag = 1
      DisplayLabel = #1578#1575#1585#1610#1582' '#1587#1585#1585#1587#1610#1583
      DisplayWidth = 12
      FieldName = 'DueDate'
      FixedChar = True
      Size = 50
    end
    object QrSrchChequeBearer: TStringField
      Tag = 1
      DisplayLabel = #1583#1585#1608#1580#1607
      DisplayWidth = 20
      FieldName = 'Bearer'
      FixedChar = True
      Size = 100
    end
    object QrSrchChequeReceiver: TStringField
      Tag = 1
      DisplayLabel = #1606#1575#1605' '#1711#1610#1585#1606#1583#1607
      DisplayWidth = 20
      FieldName = 'Receiver'
      FixedChar = True
      Size = 100
    end
    object QrSrchChequeBankName: TStringField
      Tag = 1
      DisplayLabel = #1606#1575#1605' '#1576#1575#1606#1705
      DisplayWidth = 15
      FieldName = 'BankName'
      FixedChar = True
      Size = 100
    end
  end
  object QrBank: TADOQuery
    Connection = Dm.YeganehConnection
    Parameters = <>
    SQL.Strings = (
      'Select EnterData_ID,EDCode,EDName,EDDesc,Data_Ref'
      'From EnterData'
      'Where Data_Ref = 30  /*'#1578#1593#1585#1610#1601' '#1576#1575#1606#1705'*/'
      'Order By EDCode')
    Left = 284
    Top = 16
    object QrBankEnterData_ID: TIntegerField
      FieldName = 'EnterData_ID'
      Origin = 'MYSOFTDB.EnterData.EnterData_ID'
    end
    object QrBankEDCode: TIntegerField
      FieldName = 'EDCode'
      Origin = 'MYSOFTDB.EnterData.EDCode'
    end
    object QrBankEDName: TStringField
      Alignment = taRightJustify
      FieldName = 'EDName'
      Origin = 'MYSOFTDB.EnterData.EDName'
      FixedChar = True
      Size = 100
    end
    object QrBankEDDesc: TStringField
      Alignment = taRightJustify
      FieldName = 'EDDesc'
      Origin = 'MYSOFTDB.EnterData.EDDesc'
      FixedChar = True
      Size = 255
    end
    object QrBankData_Ref: TIntegerField
      FieldName = 'Data_Ref'
      Origin = 'MYSOFTDB.EnterData.Data_Ref'
    end
  end
  object QrStatus: TADOQuery
    Connection = Dm.YeganehConnection
    Parameters = <>
    SQL.Strings = (
      'Select 1 as Status_ID , '#39#1608#1589#1608#1604' '#1606#1588#1583#1607#39' as StatusName'
      'Union'
      'Select 2 as Status_ID , '#39#1608#1589#1608#1604' '#1588#1583#1607#39' as StatusName'
      'Union'
      'Select 3 as Status_ID , '#39#1576#1585#1711#1588#1578#1610#39' as StatusName'
      'Union'
      'Select 4 as Status_ID , '#39#1582#1585#1580' '#1588#1583#1607#39' as StatusName'
      'Union'
      'Select 5 as Status_ID , '#39#1608#1589#1608#1604' '#1608' '#1582#1585#1580' '#1588#1583#1607#39' as StatusName'
      'Union'
      'Select 6 as Status_ID , '#39#1608#1575#1585#1610#1586' '#1576#1607' '#1581#1587#1575#1576#39' as StatusName'
      '')
    Left = 362
    Top = 16
    object QrStatusStatus_ID: TIntegerField
      FieldName = 'Status_ID'
    end
    object QrStatusStatusName: TStringField
      Alignment = taRightJustify
      FieldName = 'StatusName'
      FixedChar = True
      Size = 14
    end
  end
  object QrFilter: TADOQuery
    Connection = Dm.YeganehConnection
    Parameters = <>
    SQL.Strings = (
      'Select 0 as Status_ID , '#39#1607#1605#1607' '#1605#1608#1575#1585#1583#39' as StatusName'
      'Union'
      'Select 1 as Status_ID , '#39#1608#1589#1608#1604' '#1606#1588#1583#1607#39' as StatusName'
      'Union'
      'Select 2 as Status_ID , '#39#1608#1589#1608#1604' '#1588#1583#1607#39' as StatusName'
      'Union'
      'Select 3 as Status_ID , '#39#1576#1585#1711#1588#1578#1610#39' as StatusName'
      'Union'
      'Select 4 as Status_ID , '#39#1582#1585#1580' '#1588#1583#1607#39' as StatusName'
      'Union'
      'Select 5 as Status_ID , '#39#1608#1589#1608#1604' '#1608' '#1582#1585#1580' '#1588#1583#1607#39' as StatusName'
      'Union'
      'Select 6 as Status_ID , '#39#1608#1575#1585#1610#1586' '#1576#1607' '#1581#1587#1575#1576#39' as StatusName'
      'Union'
      'Select 10 as Status_ID , '#39#1576#1583#1608#1606' '#1608#1590#1593#1610#1578#39' as StatusName  /* Null */'
      ''
      '')
    Left = 440
    Top = 16
    object QrFilterStatus_ID: TIntegerField
      FieldName = 'Status_ID'
    end
    object QrFilterStatusName: TStringField
      Alignment = taRightJustify
      FieldName = 'StatusName'
      FixedChar = True
      Size = 14
    end
  end
  object QrChequeDetails: TADOQuery
    Connection = Dm.YeganehConnection
    Parameters = <
      item
        Name = 'Cheque_ID'
        DataType = ftInteger
        Size = -1
        Value = 0
      end>
    SQL.Strings = (
      'Select C.Cheque_ID'
      
        '       , (Case C.Type When 1 then '#39#1583#1585#1610#1575#1601#1578#1610#39'When 2 then '#39#1662#1585#1583#1575#1582#1578#1610#39 +
        ' end) as TypeName'
      
        '       , (Select RTrim(U.Title) From Users U Where(U.ID = C.User' +
        's_Ref))as UserName'
      
        '       , (Select EDName From EnterData Where(Data_Ref = 30)And(E' +
        'nterData_ID = C.ED_Bank_Ref))as BankName'
      ''
      '       , (Select Case C.Type'
      
        '          When '#39'F'#39' then '#39#1601#1575#1705#1578#1608#1585' '#1601#1585#1608#1588#39' When '#39'KH'#39' then '#39#1601#1575#1705#1578#1608#1585' '#1582#1585#1610 +
        #1583#39' When '#39'BF'#39' then '#39#1601#1575#1705#1578#1608#1585' '#1576#1585#1711#1588#1578' '#1575#1586' '#1601#1585#1608#1588#39
      
        '          When '#39'BKH'#39' then '#39#1601#1575#1705#1578#1608#1585' '#1576#1585#1711#1588#1578' '#1575#1586' '#1582#1585#1610#1583#39' When '#39'A'#39' then '#39 +
        #1601#1575#1705#1578#1608#1585' '#1575#1605#1575#1606#1610#39' When '#39'E'#39' then '#39#1601#1575#1705#1578#1608#1585' '#1575#1589#1591#1607#1604#1575#1705#39
      '          end + '#39' '#1576#1575' '#1588#1605#1575#1585#1607' '#39' + Cast(Number as Nvarchar(10))'
      '          From Factor Where Factor_ID = C.Factor_Ref ) as UsedIn'
      'from Cheque C'
      'Where C.Cheque_ID = :Cheque_ID')
    Left = 200
    Top = 16
    object QrChequeDetailsCheque_ID: TAutoIncField
      FieldName = 'Cheque_ID'
      ReadOnly = True
    end
    object QrChequeDetailsTypeName: TStringField
      FieldName = 'TypeName'
      ReadOnly = True
      Size = 7
    end
    object QrChequeDetailsUserName: TWideStringField
      FieldName = 'UserName'
      ReadOnly = True
      Size = 50
    end
    object QrChequeDetailsBankName: TWideStringField
      FieldName = 'BankName'
      ReadOnly = True
      Size = 50
    end
    object QrChequeDetailsUsedIn: TWideStringField
      FieldName = 'UsedIn'
      ReadOnly = True
      Size = 40
    end
  end
  object DSChequeDetails: TDataSource
    AutoEdit = False
    DataSet = QrChequeDetails
    Left = 200
    Top = 67
  end
end
