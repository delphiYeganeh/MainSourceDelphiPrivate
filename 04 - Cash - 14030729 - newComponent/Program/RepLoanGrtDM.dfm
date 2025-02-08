object DMRepLoanGrt: TDMRepLoanGrt
  OldCreateOrder = False
  Left = 450
  Top = 255
  Height = 509
  Width = 577
  object QrLoanGrtPrice: TADOQuery
    Connection = dm.YeganehConnection
    CursorType = ctStatic
    Parameters = <
      item
        Name = 'ContactID1'
        Attributes = [paSigned]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = 0
      end
      item
        Name = 'ContactID2'
        Attributes = [paSigned]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = 0
      end>
    SQL.Strings = (
      
        'Select L.LoanID,L.LoanNo,L.Amount , C.ContactID , (RTrim(C.LastN' +
        'ame) + '#39' - '#39' + RTrim(C.FirstName))as ContactNaFa '
      '       , A.AccountTitle, LG.PercentofGauranty'
      
        'From  LoanGaurantor LG , Loan L , Contact C , ForcePayment FP , ' +
        'Account A'
      'Where ( C.ContactID = :ContactID1 or :ContactID2 = 0 )'
      'And LG.LoanID = L.LoanID  '
      'And L.LoanID = FP.ParentID'
      'And LG.GaurantorContactID = C.ContactID'
      'And FP.Paid=0'
      'And FP.ForceTypeID=1'
      'And A.AccountID = L.AccountID'
      
        'Group By L.LoanID,L.LoanNo,L.Amount,C.ContactID , C.LastName,C.F' +
        'irstName , A.AccountTitle'
      ',LG.PercentofGauranty'
      'ORDER BY C.ContactID, LG.PercentofGauranty')
    Left = 167
    Top = 15
    object QrLoanGrtPriceLoanID: TIntegerField
      FieldName = 'LoanID'
      ReadOnly = True
    end
    object QrLoanGrtPriceLoanNo: TStringField
      FieldName = 'LoanNo'
      Size = 10
    end
    object QrLoanGrtPriceAmount: TIntegerField
      FieldName = 'Amount'
    end
    object QrLoanGrtPriceContactID: TIntegerField
      FieldName = 'ContactID'
      ReadOnly = True
    end
    object QrLoanGrtPriceContactNaFa: TWideStringField
      FieldName = 'ContactNaFa'
      ReadOnly = True
      Size = 73
    end
    object QrLoanGrtPriceAccountTitle: TWideStringField
      FieldName = 'AccountTitle'
      Size = 100
    end
    object QrLoanGrtPricePercentofGauranty: TIntegerField
      FieldName = 'PercentofGauranty'
    end
  end
  object QrLoanGrtCount: TADOQuery
    Connection = dm.YeganehConnection
    CursorType = ctStatic
    Parameters = <
      item
        Name = 'ContactID1'
        DataType = ftInteger
        Size = -1
        Value = 0
      end
      item
        Name = 'ContactID2'
        DataType = ftInteger
        Size = -1
        Value = 0
      end>
    SQL.Strings = (
      
        'Select LG.LoanID,L.LoanNo, C.ContactID , (RTrim(C.LastName) + '#39' ' +
        '- '#39' + RTrim(C.FirstName))as ContactNaFa'
      
        ',(SELECT ACCOUNTNO FROM ACCOUNT WHERE CONTACTID=C.ContactID) GAC' +
        'COUNTNO'
      '   /*,(Select Count(tt.LoanID)'
      '   from '
      '   (Select Distinct LG2.LoanID'
      
        '   From LoanGaurantor LG2 , Loan L2 , Contact C2 , ForcePayment ' +
        'FP2'
      '   Where LG2.LoanID = L2.LoanID  '
      '   And L2.LoanID = FP2.ParentID'
      '   And LG2.GaurantorContactID = C2.ContactID'
      '   And FP2.Paid = 0'
      '   And FP2.ForceTypeID = 1'
      '   And C2.ContactID = C.ContactID'
      '   Group By LG2.LoanID)as tt) as LoanGrtCount*/'
      '   ,A.AccountTitle,AccountNo, LG.PercentofGauranty'
      
        'From LoanGaurantor LG , Loan L , Contact C , ForcePayment FP , A' +
        'ccount A'
      'Where (C.ContactID = :ContactID1 or :ContactID2 = 0)'
      'And LG.LoanID = L.LoanID'
      'And L.LoanID = FP.ParentID'
      'And LG.GaurantorContactID = C.ContactID'
      'And FP.Paid=0'
      'And FP.ForceTypeID=1'
      'And A.AccountID = L.AccountID'
      
        'Group By LG.LoanID,L.LoanNo , C.ContactID , C.LastName , C.First' +
        'Name , A.AccountTitle,A.AccountNo,LG.PercentofGauranty'
      'ORDER BY C.ContactID, LG.PercentofGauranty')
    Left = 55
    Top = 15
    object QrLoanGrtCountLoanID: TIntegerField
      FieldName = 'LoanID'
    end
    object QrLoanGrtCountLoanNo: TStringField
      FieldName = 'LoanNo'
      Size = 10
    end
    object QrLoanGrtCountContactID: TIntegerField
      FieldName = 'ContactID'
      ReadOnly = True
    end
    object QrLoanGrtCountContactNaFa: TWideStringField
      FieldName = 'ContactNaFa'
      ReadOnly = True
      Size = 71
    end
    object QrLoanGrtCountAccountTitle: TWideStringField
      FieldName = 'AccountTitle'
      Size = 100
    end
    object QrLoanGrtCountAccountNo: TStringField
      FieldName = 'AccountNo'
    end
    object QrLoanGrtCountPercentofGauranty: TIntegerField
      FieldName = 'PercentofGauranty'
    end
    object QrLoanGrtCountGACCOUNTNO: TStringField
      FieldName = 'GACCOUNTNO'
      ReadOnly = True
    end
  end
  object DSLoanGrtCount: TDataSource
    DataSet = QrLoanGrtCount
    Left = 55
    Top = 64
  end
  object DSLoanGrtPrice: TDataSource
    DataSet = QrLoanGrtPrice
    Left = 167
    Top = 64
  end
  object QrContact: TADOQuery
    Connection = dm.YeganehConnection
    Parameters = <>
    SQL.Strings = (
      
        'Select 0 as ContactID , '#39#39' as PersonalNo , '#39#39' as FirstName , '#39#39' ' +
        'as LastName , '#39#1607#1605#1607' '#1593#1590#1608#1607#1575#39' as ContactNaFa'
      'Union'
      
        'Select ContactID,PersonalNo,FirstName,LastName,RTrim(LastName)+'#39 +
        ' - '#39'+RTrim(FirstName) as ContactNaFa'
      'From Contact'
      ''
      ''
      '')
    Left = 400
    Top = 15
    object QrContactContactID: TAutoIncField
      FieldName = 'ContactID'
      ReadOnly = True
    end
    object QrContactPersonalNo: TWideStringField
      FieldName = 'PersonalNo'
      Size = 50
    end
    object QrContactFirstName: TWideStringField
      FieldName = 'FirstName'
      Size = 30
    end
    object QrContactLastName: TWideStringField
      FieldName = 'LastName'
      Size = 40
    end
    object QrContactContactNaFa: TWideStringField
      Alignment = taRightJustify
      FieldName = 'ContactNaFa'
      ReadOnly = True
      Size = 73
    end
  end
  object DSContact: TDataSource
    DataSet = QrContact
    Left = 400
    Top = 64
  end
  object QrSrchContact: TADOQuery
    Connection = dm.YeganehConnection
    Parameters = <>
    SQL.Strings = (
      'Select ContactID,PersonalNo,FirstName,LastName'
      'From Contact'
      'Where (1=1)')
    Left = 488
    Top = 15
    object QrSrchContactContactID: TAutoIncField
      FieldName = 'ContactID'
      ReadOnly = True
    end
    object QrSrchContactLastName: TWideStringField
      Tag = 1
      DisplayLabel = #1606#1575#1605' '#1582#1575#1606#1608#1575#1583#1711#1610
      DisplayWidth = 20
      FieldName = 'LastName'
      Size = 40
    end
    object QrSrchContactFirstName: TWideStringField
      Tag = 1
      DisplayLabel = #1606#1575#1605
      DisplayWidth = 20
      FieldName = 'FirstName'
      Size = 30
    end
    object QrSrchContactPersonalNo: TWideStringField
      Tag = 1
      DisplayLabel = #1588#1605#1575#1585#1607' '#1603#1575#1585#1605#1606#1583#1610
      DisplayWidth = 15
      FieldName = 'PersonalNo'
      Size = 50
    end
  end
  object DSSrchContact: TDataSource
    DataSet = QrSrchContact
    Left = 488
    Top = 64
  end
  object frxDesigner1: TfrxDesigner
    DefaultScriptLanguage = 'PascalScript'
    DefaultFont.Charset = DEFAULT_CHARSET
    DefaultFont.Color = clWindowText
    DefaultFont.Height = -13
    DefaultFont.Name = 'Arial'
    DefaultFont.Style = []
    DefaultLeftMargin = 10.000000000000000000
    DefaultRightMargin = 10.000000000000000000
    DefaultTopMargin = 10.000000000000000000
    DefaultBottomMargin = 10.000000000000000000
    DefaultPaperSize = 9
    DefaultOrientation = poPortrait
    Restrictions = []
    RTLLanguage = False
    Left = 55
    Top = 334
  end
  object frxDesigner2: TfrxDesigner
    DefaultScriptLanguage = 'PascalScript'
    DefaultFont.Charset = DEFAULT_CHARSET
    DefaultFont.Color = clWindowText
    DefaultFont.Height = -13
    DefaultFont.Name = 'Arial'
    DefaultFont.Style = []
    DefaultLeftMargin = 10.000000000000000000
    DefaultRightMargin = 10.000000000000000000
    DefaultTopMargin = 10.000000000000000000
    DefaultBottomMargin = 10.000000000000000000
    DefaultPaperSize = 9
    DefaultOrientation = poPortrait
    Restrictions = []
    RTLLanguage = False
    Left = 151
    Top = 272
  end
  object frxDBLoanGrtCount: TfrxDBDataset
    UserName = #1578#1593#1583#1575#1583' '#1590#1605#1575#1606#1578
    CloseDataSource = False
    FieldAliases.Strings = (
      'LoanID=LoanID'
      'LoanNo='#1588#1605#1575#1585#1607' '#1608#1575#1605
      'ContactID=ContactID'
      'ContactNaFa='#1606#1575#1605' '#1590#1575#1605#1606
      'AccountTitle='#1606#1575#1605'  '#1711#1610#1585#1606#1583#1607' '#1608#1575#1605
      'AccountNo='#1588#1605#1575#1585#1607' '#1581#1587#1575#1576
      'PercentofGauranty='#1583#1585#1589#1583' '#1590#1605#1575#1606#1578' '#1608#1575#1605' '#1580#1575#1585#1610
      'GACCOUNTNO='#1588#1605#1575#1585#1607' '#1581#1587#1575#1576' '#1590#1575#1605#1606)
    DataSet = QrLoanGrtCount
    Left = 55
    Top = 120
  end
  object frxRepLoanGrtCount: TfrxReport
    Version = '4.5'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick]
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = #1662#1610#1588' '#1601#1585#1590
    PrintOptions.PrintOnSheet = 0
    ReportOptions.CreateDate = 39848.480324976900000000
    ReportOptions.LastChange = 40650.597888449080000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      'begin'
      ''
      'end.')
    Left = 104
    Top = 184
    Datasets = <
      item
        DataSet = frxDBLoanGrtCount
        DataSetName = #1578#1593#1583#1575#1583' '#1590#1605#1575#1606#1578
      end
      item
        DataSet = frxDBLoanGrtAll
        DataSetName = #1705#1575#1605#1604
      end
      item
        DataSet = frxDBLoanGrtPrice
        DataSetName = #1605#1576#1604#1594' '#1590#1605#1575#1606#1578
      end>
    Variables = <>
    Style = <>
    object Data: TfrxDataPage
      Height = 1000.000000000000000000
      Width = 1000.000000000000000000
    end
    object Page1: TfrxReportPage
      Visible = False
      PaperWidth = 210.000000000000000000
      PaperHeight = 297.000000000000000000
      PaperSize = 9
      LeftMargin = 5.000000000000000000
      RightMargin = 5.000000000000000000
      TopMargin = 5.000000000000000000
      BottomMargin = 5.000000000000000000
      object ReportTitle1: TfrxReportTitle
        Height = 45.354360000000000000
        Top = 18.897650000000000000
        Width = 755.906000000000000000
        object Shape4: TfrxShapeView
          Align = baClient
          Width = 755.906000000000000000
          Height = 45.354360000000000000
          Color = 11206655
        end
        object Memo1: TfrxMemoView
          Left = 282.232846200000000000
          Top = 23.464461930000000000
          Width = 183.548568610000000000
          Height = 18.897637800000000000
          DisplayFormat.DecimalSeparator = '.'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haCenter
          Memo.UTF8 = (
            #1593#175#1591#178#1591#167#1591#177#1591#180' '#1593#175#1592#1657#1591#177#1592#1657' '#1591#167#1591#178' '#1591#179#1591#167#1591#168#1592#8218#1592#8225' '#1591#182#1592#8230#1591#167#1592#8224#1591#1726' '#1592#402#1592#8224#1592#8224#1591#175#1593#175#1591#167#1592#8224)
          ParentFont = False
        end
        object MemoCompany: TfrxMemoView
          Left = 200.692173570000000000
          Top = 1.775193800000000000
          Width = 352.271483790000000000
          Height = 18.897637800000000000
          DisplayFormat.DecimalSeparator = '.'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haCenter
          Memo.UTF8 = (
            ' . . . 1 . . . . . . . '#1591#180#1591#177#1593#169#1591#1726)
          ParentFont = False
        end
      end
      object PageFooter1: TfrxPageFooter
        Height = 22.677180000000000000
        Top = 321.260050000000000000
        Width = 755.906000000000000000
        object Memo2: TfrxMemoView
          Left = 586.478967130000000000
          Top = 2.350340000000017000
          Width = 165.685536200000000000
          Height = 18.897650000000000000
          DisplayFormat.DecimalSeparator = '.'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8 = (
            ' :  '#1591#180#1591#177#1593#169#1591#1726' '#1592#1657#1593#175#1591#167#1592#8224#1592#8225' - '#1592#8224#1591#177#1592#8230' '#1591#167#1592#1662#1591#178#1591#167#1591#177' '#1591#181#1592#8224#1591#175#1592#710#1592#8218' '#1591#1726#1592#8222#1592#1662#1592#8224)
          ParentFont = False
        end
        object Memo6: TfrxMemoView
          Left = 437.470034800000000000
          Top = 2.137600000000020000
          Width = 143.889920000000000000
          Height = 18.897650000000000000
          DisplayFormat.DecimalSeparator = '.'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8 = (
            '(02)122466748 - 22469490')
          ParentFont = False
        end
      end
      object GroupHeader1: TfrxGroupHeader
        Height = 37.891739000000000000
        Top = 124.724490000000000000
        Width = 755.906000000000000000
        Condition = #1578#1593#1583#1575#1583' '#1590#1605#1575#1606#1578'."ContactID"'
        object Shape2: TfrxShapeView
          Align = baBottom
          Top = 7.655498999999992000
          Width = 755.906000000000000000
          Height = 30.236240000000000000
          Color = 16771819
        end
        object Memo3: TfrxMemoView
          Left = 507.294961870000000000
          Top = 13.482194959999990000
          Width = 173.906244180000000000
          Height = 18.897650000000000000
          DataField = #1606#1575#1605' '#1590#1575#1605#1606
          DataSet = frxDBLoanGrtCount
          DataSetName = #1578#1593#1583#1575#1583' '#1590#1605#1575#1606#1578
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8 = (
            '['#1591#1726#1591#185#1591#175#1591#167#1591#175' '#1591#182#1592#8230#1591#167#1592#8224#1591#1726'."'#1592#8224#1591#167#1592#8230' '#1591#182#1591#167#1592#8230#1592#8224'"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo4: TfrxMemoView
          Left = 436.825897610000000000
          Top = 14.032582560000010000
          Width = 63.187450400000000000
          Height = 18.897650000000000000
          DisplayFormat.DecimalSeparator = '.'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haCenter
          Memo.UTF8 = (
            #1591#180#1592#8230#1591#167#1591#177#1592#8225' '#1592#710#1591#167#1592#8230#1592#8225#1591#167)
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo8: TfrxMemoView
          Left = 685.922480620000000000
          Top = 13.856905350000000000
          Width = 59.311481410000000000
          Height = 18.897650000000000000
          DisplayFormat.DecimalSeparator = '.'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8 = (
            ': '#1592#8224#1591#167#1592#8230' '#1591#182#1591#167#1592#8230#1592#8224)
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo9: TfrxMemoView
          Left = 321.918410540000000000
          Top = 16.484812330000010000
          Width = 79.466520170000000000
          Height = 18.897650000000000000
          DisplayFormat.DecimalSeparator = '.'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haCenter
          Memo.UTF8 = (
            #1592#8224#1591#167#1592#8230'  '#1593#175#1592#1657#1591#177#1592#8224#1591#175#1592#8225' '#1592#710#1591#167#1592#8230)
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo11: TfrxMemoView
          Left = 151.181200000000000000
          Top = 15.118120000000010000
          Width = 83.149660000000000000
          Height = 18.897650000000000000
          DataField = #1588#1605#1575#1585#1607' '#1581#1587#1575#1576' '#1590#1575#1605#1606
          DataSet = frxDBLoanGrtCount
          DataSetName = #1578#1593#1583#1575#1583' '#1590#1605#1575#1606#1578
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            '['#1591#1726#1591#185#1591#175#1591#167#1591#175' '#1591#182#1592#8230#1591#167#1592#8224#1591#1726'."'#1591#180#1592#8230#1591#167#1591#177#1592#8225' '#1591#173#1591#179#1591#167#1591#168' '#1591#182#1591#167#1592#8230#1592#8224'"]')
          ParentFont = False
        end
        object Memo26: TfrxMemoView
          Left = 238.110390000000000000
          Top = 15.118120000000010000
          Width = 78.209131410000000000
          Height = 18.897650000000000000
          DisplayFormat.DecimalSeparator = '.'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8 = (
            #1591#180#1592#8230#1591#167#1591#177#1592#8225' '#1591#173#1591#179#1591#167#1591#168':')
          ParentFont = False
          VAlign = vaCenter
        end
      end
      object MasterData1: TfrxMasterData
        Height = 25.002761400000000000
        Top = 185.196970000000000000
        Width = 755.906000000000000000
        DataSet = frxDBLoanGrtCount
        DataSetName = #1578#1593#1583#1575#1583' '#1590#1605#1575#1606#1578
        RowCount = 0
        object Shape3: TfrxShapeView
          Align = baClient
          Width = 755.906000000000000000
          Height = 25.002761400000000000
          Curve = 1
          Shape = skRoundRectangle
        end
        object Memo5: TfrxMemoView
          Left = 406.914728690000000000
          Top = 2.189850470000010000
          Width = 143.622091180000000000
          Height = 18.897650000000000000
          DataField = #1588#1605#1575#1585#1607' '#1608#1575#1605
          DataSet = frxDBLoanGrtCount
          DataSetName = #1578#1593#1583#1575#1583' '#1590#1605#1575#1606#1578
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8 = (
            '['#1591#1726#1591#185#1591#175#1591#167#1591#175' '#1591#182#1592#8230#1591#167#1592#8224#1591#1726'."'#1591#180#1592#8230#1591#167#1591#177#1592#8225' '#1592#710#1591#167#1592#8230'"]')
          ParentFont = False
        end
        object Memo10: TfrxMemoView
          Left = 112.166472550000000000
          Top = 2.853877829999988000
          Width = 288.857259220000000000
          Height = 18.897650000000000000
          DataField = #1606#1575#1605'  '#1711#1610#1585#1606#1583#1607' '#1608#1575#1605
          DataSet = frxDBLoanGrtCount
          DataSetName = #1578#1593#1583#1575#1583' '#1590#1605#1575#1606#1578
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8 = (
            '['#1591#1726#1591#185#1591#175#1591#167#1591#175' '#1591#182#1592#8230#1591#167#1592#8224#1591#1726'."'#1592#8224#1591#167#1592#8230'  '#1593#175#1592#1657#1591#177#1592#8224#1591#175#1592#8225' '#1592#710#1591#167#1592#8230'"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Line1: TfrxLineView
          Left = 404.108527130000000000
          Top = 0.624735429999986900
          Height = 24.031007760000000000
          Frame.Typ = [ftLeft]
        end
      end
      object GroupFooter1: TfrxGroupFooter
        Height = 26.456710000000000000
        Top = 234.330860000000000000
        Width = 755.906000000000000000
        object Shape5: TfrxShapeView
          Align = baClient
          Width = 755.906000000000000000
          Height = 26.456710000000000000
          Color = 15724527
          Curve = 1
          Shape = skRoundRectangle
        end
        object Memo7: TfrxMemoView
          Left = 667.849707600000000000
          Top = 3.571924569999993000
          Width = 75.108405030000000000
          Height = 15.118120000000000000
          DisplayFormat.DecimalSeparator = '.'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8 = (
            ': '#1591#175#1592#1662#1591#185#1591#167#1591#1726' '#1591#182#1592#8230#1591#167#1592#8224#1591#1726)
          ParentFont = False
        end
        object SysMemo1: TfrxSysMemoView
          Left = 591.880715360000000000
          Top = 0.535660169999999900
          Width = 72.782823640000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clRed
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8 = (
            '[COUNT(MasterData1)]')
          ParentFont = False
        end
      end
    end
    object Page2: TfrxReportPage
      Visible = False
      PaperWidth = 210.000000000000000000
      PaperHeight = 297.000000000000000000
      PaperSize = 9
      LeftMargin = 5.000000000000000000
      RightMargin = 5.000000000000000000
      TopMargin = 5.000000000000000000
      BottomMargin = 5.000000000000000000
      object ReportTitle2: TfrxReportTitle
        Height = 45.354360000000000000
        Top = 18.897650000000000000
        Width = 755.906000000000000000
        object Shape1: TfrxShapeView
          Align = baClient
          Width = 755.906000000000000000
          Height = 45.354360000000000000
          Color = 11206655
        end
        object Memo12: TfrxMemoView
          Left = 284.558427600000000000
          Top = 25.014849530000000000
          Width = 183.548568610000000000
          Height = 18.897637800000000000
          DisplayFormat.DecimalSeparator = '.'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haCenter
          Memo.UTF8 = (
            #1593#175#1591#178#1591#167#1591#177#1591#180' '#1593#175#1592#1657#1591#177#1592#1657' '#1591#167#1591#178' '#1591#179#1591#167#1591#168#1592#8218#1592#8225' '#1591#182#1592#8230#1591#167#1592#8224#1591#1726' '#1592#402#1592#8224#1592#8224#1591#175#1593#175#1591#167#1592#8224)
          ParentFont = False
        end
        object Memo13: TfrxMemoView
          Left = 199.916979760000000000
          Top = 1.000000000000000000
          Width = 351.496290000000000000
          Height = 18.897637800000000000
          DisplayFormat.DecimalSeparator = '.'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haCenter
          Memo.UTF8 = (
            ' . . .2. . . . . . . '#1591#180#1591#177#1593#169#1591#1726)
          ParentFont = False
        end
      end
      object PageFooter2: TfrxPageFooter
        Height = 22.677180000000000000
        Top = 321.260050000000000000
        Width = 755.906000000000000000
        object Memo14: TfrxMemoView
          Left = 586.478967130000000000
          Top = 2.350340000000017000
          Width = 165.685536200000000000
          Height = 18.897650000000000000
          DisplayFormat.DecimalSeparator = '.'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8 = (
            ' :  '#1591#180#1591#177#1593#169#1591#1726' '#1592#1657#1593#175#1591#167#1592#8224#1592#8225' - '#1592#8224#1591#177#1592#8230' '#1591#167#1592#1662#1591#178#1591#167#1591#177' '#1591#181#1592#8224#1591#175#1592#710#1592#8218' '#1591#1726#1592#8222#1592#1662#1592#8224)
          ParentFont = False
        end
        object Memo15: TfrxMemoView
          Left = 445.029094800000000000
          Top = 3.137600000000020000
          Width = 136.330860000000000000
          Height = 18.897650000000000000
          DisplayFormat.DecimalSeparator = '.'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8 = (
            '(021) 22466748-22469490')
          ParentFont = False
        end
      end
      object GroupHeader2: TfrxGroupHeader
        Height = 36.515770000000000000
        Top = 124.724490000000000000
        Width = 755.906000000000000000
        Condition = #1605#1576#1604#1594' '#1590#1605#1575#1606#1578'."ContactID"'
        object Shape6: TfrxShapeView
          Align = baBottom
          Top = 7.926356590000012000
          Width = 755.906000000000000000
          Height = 28.589413410000000000
          Color = 16383978
        end
        object Memo17: TfrxMemoView
          Left = 401.708309860000000000
          Top = 12.307776359999990000
          Width = 63.187450400000000000
          Height = 18.897650000000000000
          DisplayFormat.DecimalSeparator = '.'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haCenter
          Memo.UTF8 = (
            #1591#180#1592#8230#1591#167#1591#177#1592#8225' '#1592#710#1591#167#1592#8230#1592#8225#1591#167)
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo18: TfrxMemoView
          Left = 685.964800080000000000
          Top = 12.709618530000000000
          Width = 59.311481410000000000
          Height = 18.897650000000000000
          DisplayFormat.DecimalSeparator = '.'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8 = (
            ': '#1592#8224#1591#167#1592#8230' '#1591#182#1591#167#1592#8230#1592#8224)
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo16: TfrxMemoView
          Left = 482.088831080000000000
          Top = 13.209618530000000000
          Width = 199.780638380000000000
          Height = 18.897650000000000000
          DataField = #1606#1575#1605' '#1590#1575#1605#1606
          DataSet = frxDBLoanGrtPrice
          DataSetName = #1605#1576#1604#1594' '#1590#1605#1575#1606#1578
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8 = (
            '['#1592#8230#1591#168#1592#8222#1591#1563' '#1591#182#1592#8230#1591#167#1592#8224#1591#1726'."'#1592#8224#1591#167#1592#8230' '#1591#182#1591#167#1592#8230#1592#8224'"]')
          ParentFont = False
        end
        object Memo24: TfrxMemoView
          Left = 306.767441860000000000
          Top = 11.659230930000010000
          Width = 59.407920400000000000
          Height = 18.897650000000000000
          DisplayFormat.DecimalSeparator = '.'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haCenter
          Memo.UTF8 = (
            #1592#8230#1591#168#1592#8222#1591#1563' '#1592#710#1591#167#1592#8230#1592#8225#1591#167)
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo20: TfrxMemoView
          Left = 193.837209290000000000
          Top = 12.659230930000010000
          Width = 79.466520170000000000
          Height = 18.897650000000000000
          DisplayFormat.DecimalSeparator = '.'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haCenter
          Memo.UTF8 = (
            ': '#1592#8224#1591#167#1592#8230'  '#1592#710#1591#167#1592#8230' '#1593#175#1592#1657#1591#177#1592#8224#1591#175#1592#8225)
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo27: TfrxMemoView
          Left = 15.118120000000000000
          Top = 11.338590000000010000
          Width = 79.466520170000000000
          Height = 18.897650000000000000
          DisplayFormat.DecimalSeparator = '.'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haCenter
          Memo.UTF8 = (
            #1591#175#1591#177#1591#181#1591#175' '#1592#710#1591#167#1592#8230' '#1591#172#1591#167#1591#177#1592#1657)
          ParentFont = False
          VAlign = vaCenter
        end
      end
      object MasterData2: TfrxMasterData
        Height = 24.227567600000000000
        Top = 185.196970000000000000
        Width = 755.906000000000000000
        DataSet = frxDBLoanGrtPrice
        DataSetName = #1605#1576#1604#1594' '#1590#1605#1575#1606#1578
        RowCount = 0
        object Shape7: TfrxShapeView
          Align = baClient
          Width = 755.906000000000000000
          Height = 24.227567600000000000
          Curve = 1
          Shape = skRoundRectangle
        end
        object Memo21: TfrxMemoView
          Left = 98.488372080000000000
          Top = 3.303490229999994000
          Width = 175.678964640000000000
          Height = 18.897650000000000000
          DataField = #1606#1575#1605' '#1711#1610#1585#1606#1583#1607' '#1608#1575#1605
          DataSet = frxDBLoanGrtPrice
          DataSetName = #1605#1576#1604#1594' '#1590#1605#1575#1606#1578
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8 = (
            '['#1592#8230#1591#168#1592#8222#1591#1563' '#1591#182#1592#8230#1591#167#1592#8224#1591#1726'."'#1592#8224#1591#167#1592#8230' '#1593#175#1592#1657#1591#177#1592#8224#1591#175#1592#8225' '#1592#710#1591#167#1592#8230'"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo23: TfrxMemoView
          Left = 383.557751310000000000
          Top = 1.753102630000001000
          Width = 119.976888220000000000
          Height = 18.897650000000000000
          StretchMode = smMaxHeight
          DataField = #1588#1605#1575#1585#1607' '#1608#1575#1605
          DataSet = frxDBLoanGrtPrice
          DataSetName = #1605#1576#1604#1594' '#1590#1605#1575#1606#1578
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8 = (
            '['#1592#8230#1591#168#1592#8222#1591#1563' '#1591#182#1592#8230#1591#167#1592#8224#1591#1726'."'#1591#180#1592#8230#1591#167#1591#177#1592#8225' '#1592#710#1591#167#1592#8230'"]')
          ParentFont = False
        end
        object Memo19: TfrxMemoView
          Left = 293.488372090000000000
          Top = 2.753102640000009000
          Width = 75.590600000000000000
          Height = 18.897650000000000000
          DataField = #1605#1576#1604#1594' '#1608#1575#1605
          DataSet = frxDBLoanGrtPrice
          DataSetName = #1605#1576#1604#1594' '#1590#1605#1575#1606#1578
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8 = (
            '['#1592#8230#1591#168#1592#8222#1591#1563' '#1591#182#1592#8230#1591#167#1592#8224#1591#1726'."'#1592#8230#1591#168#1592#8222#1591#1563' '#1592#710#1591#167#1592#8230'"]')
          ParentFont = False
        end
        object Line5: TfrxLineView
          Left = 284.496124030000000000
          Top = 0.202715039999986800
          Height = 24.031007750000000000
          Frame.Typ = [ftLeft]
        end
        object Line4: TfrxLineView
          Left = 379.344961240000000000
          Top = 0.198378840000003700
          Height = 24.031007750000000000
          Frame.Typ = [ftLeft]
        end
        object Memo28: TfrxMemoView
          Top = 3.779529999999994000
          Width = 96.308834640000000000
          Height = 18.897650000000000000
          DataField = #1583#1585#1589#1583' '#1590#1605#1575#1606#1578' '#1608#1575#1605' '#1580#1575#1585#1610
          DataSet = frxDBLoanGrtPrice
          DataSetName = #1605#1576#1604#1594' '#1590#1605#1575#1606#1578
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8 = (
            '['#1592#8230#1591#168#1592#8222#1591#1563' '#1591#182#1592#8230#1591#167#1592#8224#1591#1726'."'#1591#175#1591#177#1591#181#1591#175' '#1591#182#1592#8230#1591#167#1592#8224#1591#1726' '#1592#710#1591#167#1592#8230' '#1591#172#1591#167#1591#177#1592#1657'"]')
          ParentFont = False
          VAlign = vaCenter
        end
      end
      object GroupFooter2: TfrxGroupFooter
        Height = 28.782291400000000000
        Top = 230.551330000000000000
        Width = 755.906000000000000000
        object Shape8: TfrxShapeView
          Align = baClient
          Width = 755.906000000000000000
          Height = 28.782291400000000000
          Color = 15724527
          Curve = 1
          Shape = skRoundRectangle
        end
        object SysMemo2: TfrxSysMemoView
          Left = 594.124585200000000000
          Top = 2.086047769999993000
          Width = 72.782823640000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clRed
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8 = (
            '[COUNT(MasterData2)]')
          ParentFont = False
        end
        object SysMemo3: TfrxSysMemoView
          Left = 297.674418600000000000
          Top = 4.910370540000003000
          Width = 72.782823640000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clRed
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8 = (
            '[SUM(<'#1592#8230#1591#168#1592#8222#1591#1563' '#1591#182#1592#8230#1591#167#1592#8224#1591#1726'."'#1592#8230#1591#168#1592#8222#1591#1563' '#1592#710#1591#167#1592#8230'">,MasterData2)]')
          ParentFont = False
        end
        object Memo25: TfrxMemoView
          Left = 373.643410850000000000
          Top = 5.685564340000013000
          Width = 53.402978670000000000
          Height = 15.118120000000000000
          DisplayFormat.DecimalSeparator = '.'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8 = (
            ': '#1591#172#1592#8230#1591#185' '#1592#8230#1591#168#1592#8222#1591#1563)
          ParentFont = False
        end
        object Memo22: TfrxMemoView
          Left = 672.011311710000000000
          Top = 4.235951940000007000
          Width = 75.108405030000000000
          Height = 15.118120000000000000
          DisplayFormat.DecimalSeparator = '.'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8 = (
            ': '#1591#175#1592#1662#1591#185#1591#167#1591#1726' '#1591#182#1592#8230#1591#167#1592#8224#1591#1726)
          ParentFont = False
        end
      end
    end
    object Page3: TfrxReportPage
      PaperWidth = 210.000000000000000000
      PaperHeight = 297.000000000000000000
      PaperSize = 9
      LeftMargin = 5.000000000000000000
      RightMargin = 5.000000000000000000
      TopMargin = 5.000000000000000000
      BottomMargin = 10.000000000000000000
      object ReportTitle3: TfrxReportTitle
        Height = 45.354360000000000000
        Top = 18.897650000000000000
        Width = 755.906000000000000000
        object Shape9: TfrxShapeView
          Align = baClient
          Width = 755.906000000000000000
          Height = 45.354360000000000000
          Color = 11206655
        end
        object Memo29: TfrxMemoView
          Left = 284.558427600000000000
          Top = 25.014849530000000000
          Width = 183.548568610000000000
          Height = 18.897637800000000000
          DisplayFormat.DecimalSeparator = '.'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haCenter
          Memo.UTF8 = (
            #1593#175#1591#178#1591#167#1591#177#1591#180' '#1593#175#1592#1657#1591#177#1592#1657' '#1591#167#1591#178' '#1591#179#1591#167#1591#168#1592#8218#1592#8225' '#1591#182#1592#8230#1591#167#1592#8224#1591#1726' '#1592#402#1592#8224#1592#8224#1591#175#1593#175#1591#167#1592#8224)
          ParentFont = False
        end
        object Memo30: TfrxMemoView
          Left = 199.916979760000000000
          Top = 1.000000000000000000
          Width = 351.496290000000000000
          Height = 18.897637800000000000
          DisplayFormat.DecimalSeparator = '.'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haCenter
          Memo.UTF8 = (
            ' . . .3. . . . . . . '#1591#180#1591#177#1593#169#1591#1726)
          ParentFont = False
        end
      end
      object PageFooter3: TfrxPageFooter
        Height = 22.677180000000000000
        Top = 351.496290000000000000
        Width = 755.906000000000000000
        object Memo31: TfrxMemoView
          Left = 537.345077130000000000
          Top = 1.350340000000017000
          Width = 165.685536200000000000
          Height = 18.897650000000000000
          DisplayFormat.DecimalSeparator = '.'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8 = (
            ' :  '#1591#180#1591#177#1593#169#1591#1726' '#1592#1657#1593#175#1591#167#1592#8224#1592#8225' - '#1592#8224#1591#177#1592#8230' '#1591#167#1592#1662#1591#178#1591#167#1591#177' '#1591#181#1592#8224#1591#175#1592#710#1592#8218' '#1591#1726#1592#8222#1592#1662#1592#8224)
          ParentFont = False
        end
        object Memo32: TfrxMemoView
          Left = 396.850650000000000000
          Top = 1.779530000000022000
          Width = 136.330860000000000000
          Height = 18.897650000000000000
          DisplayFormat.DecimalSeparator = '.'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8 = (
            '(021) 22466748-22469490')
          ParentFont = False
        end
      end
      object GroupHeader3: TfrxGroupHeader
        Height = 66.752010000000000000
        Top = 124.724490000000000000
        Width = 755.906000000000000000
        Condition = #1705#1575#1605#1604'."ContactID"'
        object Shape10: TfrxShapeView
          Align = baBottom
          Top = 4.146826590000000000
          Width = 755.906000000000000000
          Height = 62.605183410000000000
          Color = 16383978
        end
        object Memo33: TfrxMemoView
          Left = 602.023399860000000000
          Top = 41.764486360000010000
          Width = 108.541810400000000000
          Height = 18.897650000000000000
          DisplayFormat.DecimalSeparator = '.'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haCenter
          Memo.UTF8 = (
            #1591#180#1592#8230#1591#167#1591#177#1592#8225' '#1592#710#1591#167#1592#8230#1592#8225#1591#167)
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo34: TfrxMemoView
          Left = 655.728560080000000000
          Top = 6.709618530000000000
          Width = 59.311481410000000000
          Height = 18.897650000000000000
          DisplayFormat.DecimalSeparator = '.'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8 = (
            ': '#1592#8224#1591#167#1592#8230' '#1591#182#1591#167#1592#8230#1592#8224)
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo35: TfrxMemoView
          Left = 549.340841080000000000
          Top = 6.209618530000000000
          Width = 105.292388380000000000
          Height = 18.897650000000000000
          DataField = #1606#1575#1605' '#1590#1575#1605#1606
          DataSet = frxDBLoanGrtAll
          DataSetName = #1705#1575#1605#1604
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8 = (
            '['#1593#169#1591#167#1592#8230#1592#8222'."'#1592#8224#1591#167#1592#8230' '#1591#182#1591#167#1592#8230#1592#8224'"]')
          ParentFont = False
        end
        object Memo36: TfrxMemoView
          Left = 439.050991860000000000
          Top = 41.895470929999990000
          Width = 142.557580400000000000
          Height = 18.897650000000000000
          DisplayFormat.DecimalSeparator = '.'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haCenter
          Memo.UTF8 = (
            #1592#8230#1591#168#1592#8222#1591#1563' '#1592#710#1591#167#1592#8230#1592#8225#1591#167)
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo37: TfrxMemoView
          Left = 231.632509290000000000
          Top = 42.115940929999990000
          Width = 177.734300170000000000
          Height = 18.897650000000000000
          DisplayFormat.DecimalSeparator = '.'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haCenter
          Memo.UTF8 = (
            ' '#1592#8224#1591#167#1592#8230'  '#1592#710#1591#167#1592#8230' '#1593#175#1592#1657#1591#177#1592#8224#1591#175#1592#8225)
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo38: TfrxMemoView
          Left = 15.118120000000000000
          Top = 44.574829999999990000
          Width = 166.395710170000000000
          Height = 18.897650000000000000
          DisplayFormat.DecimalSeparator = '.'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haCenter
          Memo.UTF8 = (
            #1591#175#1591#177#1591#181#1591#175' '#1592#710#1591#167#1592#8230' '#1591#172#1591#167#1591#177#1592#1657)
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo45: TfrxMemoView
          Left = 211.653680000000000000
          Top = 6.779529999999994000
          Width = 97.203220400000010000
          Height = 18.897650000000000000
          DisplayFormat.DecimalSeparator = '.'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haCenter
          Memo.UTF8 = (
            ': '#1593#169#1592#8222' '#1592#8230#1591#168#1592#8222#1591#1563' '#1591#168#1592#8222#1592#710#1593#169#1592#8225' '#1591#180#1591#175#1592#8225)
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo46: TfrxMemoView
          Left = 94.708720000000000000
          Top = 6.779529999999994000
          Width = 113.385900000000000000
          Height = 18.897650000000000000
          DataField = #1705#1604' '#1605#1576#1604#1594' '#1576#1604#1608#1705#1607' '#1588#1583#1607
          DataSet = frxDBLoanGrtAll
          DataSetName = #1705#1575#1605#1604
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8 = (
            '['#1593#169#1591#167#1592#8230#1592#8222'."'#1593#169#1592#8222' '#1592#8230#1591#168#1592#8222#1591#1563' '#1591#168#1592#8222#1592#710#1593#169#1592#8225' '#1591#180#1591#175#1592#8225'"]')
          ParentFont = False
        end
        object Line6: TfrxLineView
          Left = 590.606680000000000000
          Top = 38.795300000000000000
          Height = 27.810537750000000000
          Frame.Typ = [ftLeft]
        end
        object Line7: TfrxLineView
          Left = 415.748300000000000000
          Top = 38.795300000000000000
          Height = 27.810537750000000000
          Frame.Typ = [ftLeft]
        end
        object Line8: TfrxLineView
          Left = 188.976500000000000000
          Top = 38.574829999999990000
          Height = 27.810537750000000000
          Frame.Typ = [ftLeft]
        end
        object Line10: TfrxLineView
          Top = 37.795300000000000000
          Width = 755.905511811024000000
          Frame.Typ = [ftTop]
        end
        object Memo47: TfrxMemoView
          Left = 466.443069000000000000
          Top = 7.059059999999988000
          Width = 70.650071410000000000
          Height = 18.897650000000000000
          DisplayFormat.DecimalSeparator = '.'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8 = (
            ': '#1591#180#1592#8230#1591#167#1591#177#1592#8225' '#1591#173#1591#179#1591#167#1591#168)
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo48: TfrxMemoView
          Left = 347.716760000000000000
          Top = 7.559059999999988000
          Width = 116.630978380000000000
          Height = 18.897650000000000000
          DataField = #1588#1605#1575#1585#1607' '#1581#1587#1575#1576' '#1590#1575#1605#1606
          DataSet = frxDBLoanGrtAll
          DataSetName = #1705#1575#1605#1604
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8 = (
            '['#1593#169#1591#167#1592#8230#1592#8222'."'#1591#180#1592#8230#1591#167#1591#177#1592#8225' '#1591#173#1591#179#1591#167#1591#168' '#1591#182#1591#167#1592#8230#1592#8224'"]')
          ParentFont = False
        end
      end
      object MasterData3: TfrxMasterData
        Height = 24.227567600000000000
        Top = 215.433210000000000000
        Width = 755.906000000000000000
        DataSet = frxDBLoanGrtAll
        DataSetName = #1705#1575#1605#1604
        RowCount = 0
        object Shape11: TfrxShapeView
          Align = baClient
          Width = 755.906000000000000000
          Height = 24.227567600000000000
          Curve = 1
          Shape = skRoundRectangle
        end
        object Memo39: TfrxMemoView
          Left = 230.771922080000000000
          Top = 3.303490229999994000
          Width = 175.678964640000000000
          Height = 18.897650000000000000
          DataField = #1606#1575#1605' '#1711#1610#1585#1606#1583#1607' '#1608#1575#1605
          DataSet = frxDBLoanGrtAll
          DataSetName = #1705#1575#1605#1604
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8 = (
            '['#1593#169#1591#167#1592#8230#1592#8222'."'#1592#8224#1591#167#1592#8230' '#1593#175#1592#1657#1591#177#1592#8224#1591#175#1592#8225' '#1592#710#1591#167#1592#8230'"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo40: TfrxMemoView
          Left = 594.652371309999900000
          Top = 1.753102630000001000
          Width = 153.992658219999900000
          Height = 18.897650000000000000
          DataField = #1588#1605#1575#1585#1607' '#1608#1575#1605
          DataSet = frxDBLoanGrtAll
          DataSetName = #1705#1575#1605#1604
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8 = (
            '['#1593#169#1591#167#1592#8230#1592#8222'."'#1591#180#1592#8230#1591#167#1591#177#1592#8225' '#1592#710#1591#167#1592#8230'"]')
          ParentFont = False
        end
        object Memo41: TfrxMemoView
          Left = 440.110512090000000000
          Top = 2.753102640000009000
          Width = 139.842610000000000000
          Height = 18.897650000000000000
          DataField = #1605#1576#1604#1594' '#1608#1575#1605
          DataSet = frxDBLoanGrtAll
          DataSetName = #1705#1575#1605#1604
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8 = (
            '['#1593#169#1591#167#1592#8230#1592#8222'."'#1592#8230#1591#168#1592#8222#1591#1563' '#1592#710#1591#167#1592#8230'"]')
          ParentFont = False
        end
        object Line2: TfrxLineView
          Left = 416.779674030000000000
          Top = 0.202715039999986800
          Height = 24.031007750000000000
          Frame.Typ = [ftLeft]
        end
        object Line3: TfrxLineView
          Left = 590.998641240001000000
          Top = 0.198378840000003700
          Height = 24.031007750000000000
          Frame.Typ = [ftLeft]
        end
        object Memo42: TfrxMemoView
          Top = 3.779529999999994000
          Width = 171.899434640000000000
          Height = 18.897650000000000000
          DataField = #1583#1585#1589#1583' '#1590#1605#1575#1606#1578' '#1608#1575#1605' '#1580#1575#1585#1610
          DataSet = frxDBLoanGrtAll
          DataSetName = #1705#1575#1605#1604
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8 = (
            '['#1593#169#1591#167#1592#8230#1592#8222'."'#1591#175#1591#177#1591#181#1591#175' '#1591#182#1592#8230#1591#167#1592#8224#1591#1726' '#1592#710#1591#167#1592#8230' '#1591#172#1591#167#1591#177#1592#1657'"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Line9: TfrxLineView
          Left = 188.976500000000000000
          Height = 24.031007750000000000
          Frame.Typ = [ftLeft]
        end
      end
      object GroupFooter3: TfrxGroupFooter
        Height = 28.782291400000000000
        Top = 260.787570000000000000
        Width = 755.906000000000000000
        object Shape12: TfrxShapeView
          Align = baClient
          Width = 755.906000000000000000
          Height = 28.782291400000000000
          Color = 15724527
          Curve = 1
          Shape = skRoundRectangle
        end
        object SysMemo4: TfrxSysMemoView
          Left = 567.667875200000000000
          Top = 2.086047769999993000
          Width = 72.782823640000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clRed
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8 = (
            '[COUNT(MasterData3)]')
          ParentFont = False
        end
        object SysMemo5: TfrxSysMemoView
          Left = 369.485488600000000000
          Top = 2.910370539999974000
          Width = 133.255303640000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clRed
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8 = (
            '[SUM(<'#1593#169#1591#167#1592#8230#1592#8222'."'#1592#8230#1591#168#1592#8222#1591#1563' '#1592#710#1591#167#1592#8230'">,MasterData3)]')
          ParentFont = False
        end
        object Memo43: TfrxMemoView
          Left = 505.706490850000000000
          Top = 2.685564339999985000
          Width = 53.402978670000000000
          Height = 18.897650000000000000
          DisplayFormat.DecimalSeparator = '.'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8 = (
            ': '#1591#172#1592#8230#1591#185' '#1592#8230#1591#168#1592#8222#1591#1563)
          ParentFont = False
        end
        object Memo44: TfrxMemoView
          Left = 641.775071710000000000
          Top = 3.235951940000007000
          Width = 75.108405030000000000
          Height = 18.897650000000000000
          DisplayFormat.DecimalSeparator = '.'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8 = (
            ': '#1591#175#1592#1662#1591#185#1591#167#1591#1726' '#1591#182#1592#8230#1591#167#1592#8224#1591#1726)
          ParentFont = False
        end
      end
    end
  end
  object frxDBLoanGrtPrice: TfrxDBDataset
    UserName = #1605#1576#1604#1594' '#1590#1605#1575#1606#1578
    CloseDataSource = False
    FieldAliases.Strings = (
      '-LoanID=LoanID'
      'LoanNo='#1588#1605#1575#1585#1607' '#1608#1575#1605
      'Amount='#1605#1576#1604#1594' '#1608#1575#1605
      'ContactID=ContactID'
      'ContactNaFa='#1606#1575#1605' '#1590#1575#1605#1606
      'AccountTitle='#1606#1575#1605' '#1711#1610#1585#1606#1583#1607' '#1608#1575#1605
      'PercentofGauranty='#1583#1585#1589#1583' '#1590#1605#1575#1606#1578' '#1608#1575#1605' '#1580#1575#1585#1610)
    DataSet = QrLoanGrtPrice
    Left = 167
    Top = 120
  end
  object QrLoanGrAll: TADOQuery
    Connection = dm.YeganehConnection
    CursorType = ctStatic
    Parameters = <
      item
        Name = 'ContactID1'
        Attributes = [paSigned]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = 0
      end
      item
        Name = 'ContactID2'
        Attributes = [paSigned]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = 0
      end>
    SQL.Strings = (
      
        'SELECT     LG.LoanID, L.LoanNO, C.ContactID, RTRIM(C.LastName) +' +
        ' '#39' - '#39' + RTRIM(C.FirstName) AS ContactNaFa, A.AccountTitle, A.Ac' +
        'countNo, '
      
        '                      LG.PercentofGauranty, Account_1.BlockedPri' +
        'ce,L.Amount,Account_1.ACCOUNTNO as GAAccountNo'
      'FROM         LoanGaurantor LG INNER JOIN'
      '                      Loan L ON LG.LoanID = L.LoanID INNER JOIN'
      
        '                      ForcePayment FP ON L.LoanID = FP.ParentID ' +
        'INNER JOIN'
      
        '                      Contact C ON LG.GaurantorContactID = C.Con' +
        'tactID INNER JOIN'
      
        '                      Account A ON L.AccountID = A.AccountID INN' +
        'ER JOIN'
      
        '                      Account Account_1 ON LG.GaurantorContactID' +
        ' = Account_1.ContactID'
      'WHERE     (C.ContactID = :ContactID1 or :ContactID2 = 0) AND'
      '                  (FP.Paid = 0) AND (FP.ForceTypeID = 1)  '
      
        'GROUP BY LG.LoanID, L.LoanNO, C.ContactID, C.LastName, C.FirstNa' +
        'me, A.AccountTitle, A.AccountNo, LG.PercentofGauranty, Account_1' +
        '.BlockedPrice,L.Amount,Account_1.ACCOUNTNO'
      'ORDER BY C.ContactID, LG.PercentofGauranty'
      '')
    Left = 287
    Top = 23
    object QrLoanGrAllLoanID: TIntegerField
      FieldName = 'LoanID'
    end
    object QrLoanGrAllLoanNO: TStringField
      FieldName = 'LoanNO'
      Size = 10
    end
    object QrLoanGrAllContactID: TIntegerField
      FieldName = 'ContactID'
      ReadOnly = True
    end
    object QrLoanGrAllContactNaFa: TWideStringField
      FieldName = 'ContactNaFa'
      ReadOnly = True
      Size = 73
    end
    object QrLoanGrAllAccountTitle: TWideStringField
      FieldName = 'AccountTitle'
      Size = 100
    end
    object QrLoanGrAllAccountNo: TStringField
      FieldName = 'AccountNo'
    end
    object QrLoanGrAllPercentofGauranty: TIntegerField
      FieldName = 'PercentofGauranty'
    end
    object QrLoanGrAllBlockedPrice: TFloatField
      FieldName = 'BlockedPrice'
    end
    object QrLoanGrAllGAAccountNo: TStringField
      FieldName = 'GAAccountNo'
    end
    object QrLoanGrAllAmount: TLargeintField
      FieldName = 'Amount'
    end
  end
  object DSLoanGrAll: TDataSource
    DataSet = QrLoanGrAll
    Left = 287
    Top = 72
  end
  object frxDBLoanGrtAll: TfrxDBDataset
    UserName = #1705#1575#1605#1604
    CloseDataSource = False
    FieldAliases.Strings = (
      'LoanID=LoanID'
      'LoanNO='#1588#1605#1575#1585#1607' '#1608#1575#1605
      'ContactID=ContactID'
      'ContactNaFa='#1606#1575#1605' '#1590#1575#1605#1606
      'AccountTitle='#1606#1575#1605' '#1711#1610#1585#1606#1583#1607' '#1608#1575#1605
      'AccountNo='#1588#1605#1575#1585#1607' '#1581#1587#1575#1576
      'PercentofGauranty='#1583#1585#1589#1583' '#1590#1605#1575#1606#1578' '#1608#1575#1605' '#1580#1575#1585#1610
      'BlockedPrice='#1705#1604' '#1605#1576#1604#1594' '#1576#1604#1608#1705#1607' '#1588#1583#1607
      'Amount='#1605#1576#1604#1594' '#1608#1575#1605
      'GAAccountNo='#1588#1605#1575#1585#1607' '#1581#1587#1575#1576' '#1590#1575#1605#1606)
    DataSet = QrLoanGrAll
    Left = 287
    Top = 120
  end
end
