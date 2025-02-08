object DMSumPayment: TDMSumPayment
  OldCreateOrder = False
  Left = 246
  Top = 110
  Height = 630
  Width = 547
  object DSSumPayment: TDataSource
    DataSet = QrSumPayment
    Left = 48
    Top = 74
  end
  object QrSumPayment: TADOQuery
    Connection = dm.YeganehConnection
    CursorType = ctStatic
    Parameters = <
      item
        Name = 'DocumentNo'
        Attributes = [paNullable]
        DataType = ftString
        NumericScale = 255
        Precision = 255
        Size = 10
        Value = #39'0'#39
      end
      item
        Name = 'Today'
        Attributes = [paNullable]
        DataType = ftString
        Size = 10
        Value = '1389/01/01'
      end>
    SQL.Strings = (
      'SELECT Count(Payment.DocumentNo)as ForcePaymentCount ,'
      
        'Sum(Payment.Amount)as TotalAmount , Payment.CreditorAccountID,Pa' +
        'yment.DebtorAccountID,Payment.[Date],Payment.PayTypeID'
      '       ,CreditorAccount.AccountTitle AS CreditorAccountTitle,'
      '       DebtorAccount.AccountTitle AS DebtorAccountTitle,'
      '       RTrim(PayType.PayTypeTitle)as PayTypeTitle , DocumentNo'
      '       ,Sum(FP.InterestAmount) as Sum_InterestAmount /*Ranjbar*/'
      ',FP.MatureDate'
      'FROM Payment    '
      'INNER JOIN PayType ON Payment.PayTypeID = PayType.PayTypeID    '
      
        'INNER JOIN Account AS CreditorAccount ON Payment.CreditorAccount' +
        'ID = CreditorAccount.AccountID    '
      
        'INNER JOIN Account AS DebtorAccount ON Payment.DebtorAccountID =' +
        ' DebtorAccount.AccountID'
      ''
      
        'left JOIN ForcePayment FP on Payment.PaymentID = FP.PaymentID /*' +
        'Ranjbar*/'
      ''
      'left JOIN Users ON Payment.insertUserID = Users.UserId    '
      
        'left JOIN  FinancialNote ON Payment.FinancialNoteID = FinancialN' +
        'ote.FinancialNoteID    '
      
        'left JOIN  FinancialNoteType ON FinancialNote.FinancialNoteTypeI' +
        'D = FinancialNoteType.FinancialNoteTypeID    '
      
        'Where (DocumentNo = :DocumentNo  ) and (substring(Payment.Date,3' +
        ',2)=substring(:Today,3,2) ) '
      
        'Group By Payment.CreditorAccountID,Payment.DebtorAccountID,Payme' +
        'nt.[Date],Payment.PayTypeID ,'
      
        '         CreditorAccount.AccountTitle, DebtorAccount.AccountTitl' +
        'e,PayType.PayTypeTitle , DocumentNo,FP.MatureDate')
    Left = 48
    Top = 16
    object QrSumPaymentForcePaymentCount: TIntegerField
      FieldName = 'ForcePaymentCount'
      ReadOnly = True
    end
    object QrSumPaymentTotalAmount: TLargeintField
      FieldName = 'TotalAmount'
      ReadOnly = True
      OnGetText = QrSumPaymentTotalAmountGetText
    end
    object QrSumPaymentCreditorAccountID: TIntegerField
      FieldName = 'CreditorAccountID'
    end
    object QrSumPaymentDebtorAccountID: TIntegerField
      FieldName = 'DebtorAccountID'
    end
    object QrSumPaymentDate: TWideStringField
      Alignment = taRightJustify
      FieldName = 'Date'
      Size = 12
    end
    object QrSumPaymentPayTypeID: TWordField
      FieldName = 'PayTypeID'
    end
    object QrSumPaymentCreditorAccountTitle: TWideStringField
      FieldName = 'CreditorAccountTitle'
      Size = 100
    end
    object QrSumPaymentDebtorAccountTitle: TWideStringField
      FieldName = 'DebtorAccountTitle'
      Size = 100
    end
    object QrSumPaymentPayTypeTitle: TWideStringField
      FieldName = 'PayTypeTitle'
      ReadOnly = True
      Size = 50
    end
    object QrSumPaymentDocumentNo: TStringField
      FieldName = 'DocumentNo'
      Size = 10
    end
    object QrSumPaymentSum_InterestAmount: TIntegerField
      FieldName = 'Sum_InterestAmount'
      ReadOnly = True
    end
    object QrSumPaymentMatureDate: TStringField
      FieldName = 'MatureDate'
      FixedChar = True
      Size = 10
    end
  end
  object frxJPEGExport1: TfrxJPEGExport
    UseFileCache = True
    ShowProgress = True
    OverwritePrompt = False
    Left = 67
    Top = 292
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
    Left = 27
    Top = 320
  end
  object frxBMPExport1: TfrxBMPExport
    UseFileCache = True
    ShowProgress = True
    OverwritePrompt = False
    Left = 93
    Top = 336
  end
  object frxRTFExport1: TfrxRTFExport
    UseFileCache = True
    ShowProgress = True
    OverwritePrompt = False
    Wysiwyg = True
    Creator = 'FastReport http://www.fast-report.com'
    SuppressPageHeadersFooters = False
    HeaderFooterMode = hfText
    AutoSize = False
    Left = 157
    Top = 340
  end
  object frxXMLExport1: TfrxXMLExport
    UseFileCache = True
    ShowProgress = True
    OverwritePrompt = False
    Background = True
    Creator = 'FastReport'
    EmptyLines = True
    SuppressPageHeadersFooters = False
    Left = 147
    Top = 288
  end
  object frxTXTExport1: TfrxTXTExport
    UseFileCache = True
    ShowProgress = True
    OverwritePrompt = False
    ScaleWidth = 1.000000000000000000
    ScaleHeight = 1.000000000000000000
    Borders = False
    Pseudogrpahic = False
    PageBreaks = True
    OEMCodepage = False
    EmptyLines = False
    LeadSpaces = False
    PrintAfter = False
    PrinterDialog = True
    UseSavedProps = True
    Left = 39
    Top = 240
  end
  object frxSimpleTextExport1: TfrxSimpleTextExport
    UseFileCache = True
    ShowProgress = True
    OverwritePrompt = False
    Frames = False
    EmptyLines = False
    OEMCodepage = False
    Left = 121
    Top = 528
  end
  object frxXLSExport1: TfrxXLSExport
    UseFileCache = True
    ShowProgress = True
    OverwritePrompt = False
    AsText = False
    Background = True
    FastExport = True
    PageBreaks = True
    EmptyLines = True
    SuppressPageHeadersFooters = False
    Left = 133
    Top = 472
  end
  object frxPDFExport1: TfrxPDFExport
    UseFileCache = True
    ShowProgress = True
    OverwritePrompt = False
    PrintOptimized = False
    Outline = False
    Background = False
    HTMLTags = True
    Author = 'FastReport'
    Subject = 'FastReport PDF export'
    Creator = 'FastReport (http://www.fast-report.com)'
    ProtectionFlags = [ePrint, eModify, eCopy, eAnnot]
    HideToolbar = False
    HideMenubar = False
    HideWindowUI = False
    FitWindow = False
    CenterWindow = False
    PrintScaling = False
    Left = 119
    Top = 408
  end
  object frxGIFExport1: TfrxGIFExport
    UseFileCache = True
    ShowProgress = True
    OverwritePrompt = False
    Left = 55
    Top = 508
  end
  object frxTIFFExport1: TfrxTIFFExport
    UseFileCache = True
    ShowProgress = True
    OverwritePrompt = False
    Left = 57
    Top = 460
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
    Left = 57
    Top = 408
  end
  object frxDBSumPayment: TfrxDBDataset
    UserName = #1670#1575#1662' '#1585#1587#1610#1583
    CloseDataSource = False
    FieldAliases.Strings = (
      'ForcePaymentCount='#1578#1593#1583#1575#1583' '#1602#1587#1591' / '#1605#1575#1607#1610#1575#1606#1607
      'TotalAmount='#1580#1605#1593' '#1605#1576#1604#1594
      'CreditorAccountID=CreditorAccountID'
      'DebtorAccountID=DebtorAccountID'
      'Date='#1578#1575#1585#1610#1582
      'PayTypeID=PayTypeID'
      'CreditorAccountTitle='#1606#1575#1605' '#1608#1575#1585#1610#1586' '#1603#1606#1606#1583#1607
      'DebtorAccountTitle='#1608#1575#1585#1610#1586' '#1576#1607' '#1581#1587#1575#1576
      'PayTypeTitle='#1606#1608#1593' '#1602#1587#1591' / '#1605#1575#1607#1610#1575#1606#1607
      'DocumentNo='#1588#1605#1575#1585#1607' '#1587#1606#1583
      'Sum_InterestAmount='#1580#1605#1593' '#1587#1608#1583' '#1575#1602#1587#1575#1591
      'MatureDate='#1578#1575#1585#1610#1582' '#1587#1585#1585#1587#1610#1583)
    DataSet = QrSumPayment
    Left = 48
    Top = 125
  end
  object frxRepSumPayment: TfrxReport
    Version = '4.5'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick]
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = #1662#1610#1588' '#1601#1585#1590
    PrintOptions.PrintOnSheet = 0
    ReportOptions.CreateDate = 40093.543040358800000000
    ReportOptions.LastChange = 37258.954363599540000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      'procedure SysMemo1OnAfterData(Sender: TfrxComponent);'
      'begin'
      '     '
      'end;'
      ''
      'begin'
      ''
      'end.')
    Left = 48
    Top = 176
    Datasets = <
      item
        DataSet = frxDBSumPayment
        DataSetName = #1670#1575#1662' '#1585#1587#1610#1583
      end
      item
        DataSet = frxDBDataset1
        DataSetName = #1670#1575#1662' '#1585#1587#1610#1583'2'
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
      LeftMargin = 10.000000000000000000
      RightMargin = 10.000000000000000000
      TopMargin = 10.000000000000000000
      BottomMargin = 10.000000000000000000
      object MasterData1: TfrxMasterData
        Height = 28.510513330000000000
        Top = 200.315090000000000000
        Width = 718.110700000000000000
        DataSet = frxDBSumPayment
        DataSetName = #1670#1575#1662' '#1585#1587#1610#1583
        RowCount = 0
        object Shape1: TfrxShapeView
          Align = baClient
          Width = 718.110700000000000000
          Height = 28.510513330000000000
          Color = 15794175
          Curve = 1
          Shape = skRoundRectangle
        end
        object Memo3: TfrxMemoView
          Left = 516.307050010000000000
          Top = 4.120593329999991000
          Width = 129.147496660000000000
          Height = 18.897650000000000000
          DataField = #1606#1575#1605' '#1608#1575#1585#1610#1586' '#1603#1606#1606#1583#1607
          DataSet = frxDBSumPayment
          DataSetName = #1670#1575#1662' '#1585#1587#1610#1583
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8 = (
            '['#1593#8224#1591#167#1592#190' '#1591#177#1591#179#1592#1657#1591#175'."'#1592#8224#1591#167#1592#8230' '#1592#710#1591#167#1591#177#1592#1657#1591#178' '#1592#402#1592#8224#1592#8224#1591#175#1592#8225'"]')
          ParentFont = False
          RTLReading = True
        end
        object Memo7: TfrxMemoView
          Left = 437.000000000000000000
          Top = 4.120593329999991000
          Width = 66.601113330000000000
          Height = 18.897650000000000000
          DataField = #1578#1575#1585#1610#1582
          DataSet = frxDBSumPayment
          DataSetName = #1670#1575#1662' '#1585#1587#1610#1583
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8 = (
            '['#1593#8224#1591#167#1592#190' '#1591#177#1591#179#1592#1657#1591#175'."'#1591#1726#1591#167#1591#177#1592#1657#1591#174'"]')
          ParentFont = False
          RTLReading = True
        end
        object Memo9: TfrxMemoView
          Left = 341.333333330000000000
          Top = 4.120593329999991000
          Width = 83.031540000000010000
          Height = 18.897650000000000000
          DataField = #1578#1593#1583#1575#1583' '#1602#1587#1591' / '#1605#1575#1607#1610#1575#1606#1607
          DataSet = frxDBSumPayment
          DataSetName = #1670#1575#1662' '#1585#1587#1610#1583
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8 = (
            '['#1593#8224#1591#167#1592#190' '#1591#177#1591#179#1592#1657#1591#175'."'#1591#1726#1591#185#1591#175#1591#167#1591#175' '#1592#8218#1591#179#1591#183' / '#1592#8230#1591#167#1592#8225#1592#1657#1591#167#1592#8224#1592#8225'"]')
          ParentFont = False
          RTLReading = True
        end
        object Memo16: TfrxMemoView
          Left = 5.833333340000000000
          Top = 4.120593329999991000
          Width = 98.116883329999990000
          Height = 18.897650000000000000
          DataField = #1580#1605#1593' '#1605#1576#1604#1594
          DataSet = frxDBSumPayment
          DataSetName = #1670#1575#1662' '#1585#1587#1610#1583
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8 = (
            '['#1593#8224#1591#167#1592#190' '#1591#177#1591#179#1592#1657#1591#175'."'#1591#172#1592#8230#1591#185' '#1592#8230#1591#168#1592#8222#1591#1563'"]')
          ParentFont = False
          RTLReading = True
        end
        object Line1: TfrxLineView
          Left = 509.253246670000000000
          Top = 0.072046669999991760
          Height = 28.333333330000000000
          Frame.Typ = [ftLeft]
        end
        object Line2: TfrxLineView
          Left = 431.860853330000000000
          Top = 0.072046669999991760
          Height = 28.333333330000000000
          Frame.Typ = [ftLeft]
        end
        object Line3: TfrxLineView
          Left = 333.666666670000000000
          Top = 0.905380000000008100
          Height = 28.333333330000000000
          Frame.Typ = [ftLeft]
        end
        object Line4: TfrxLineView
          Left = 185.166666670000000000
          Top = 0.072046669999991760
          Height = 28.333333330000000000
          Frame.Typ = [ftLeft]
        end
        object Line5: TfrxLineView
          Left = 111.500000000000000000
          Top = 0.905380000000008100
          Height = 28.333333330000000000
          Frame.Typ = [ftLeft]
        end
        object Memo12: TfrxMemoView
          Left = 193.166666660000000000
          Top = 4.120593329999991000
          Width = 134.416513340000000000
          Height = 18.897650000000000000
          DataField = #1608#1575#1585#1610#1586' '#1576#1607' '#1581#1587#1575#1576
          DataSet = frxDBSumPayment
          DataSetName = #1670#1575#1662' '#1585#1587#1610#1583
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8 = (
            '['#1593#8224#1591#167#1592#190' '#1591#177#1591#179#1592#1657#1591#175'."'#1592#710#1591#167#1591#177#1592#1657#1591#178' '#1591#168#1592#8225' '#1591#173#1591#179#1591#167#1591#168'"]')
          ParentFont = False
          RTLReading = True
        end
        object Memo14: TfrxMemoView
          Left = 117.333333330000000000
          Top = 4.120593329999991000
          Width = 62.119666670000000000
          Height = 18.897650000000000000
          DataField = #1606#1608#1593' '#1602#1587#1591' / '#1605#1575#1607#1610#1575#1606#1607
          DataSet = frxDBSumPayment
          DataSetName = #1670#1575#1662' '#1585#1587#1610#1583
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8 = (
            '['#1593#8224#1591#167#1592#190' '#1591#177#1591#179#1592#1657#1591#175'."'#1592#8224#1592#710#1591#185' '#1592#8218#1591#179#1591#183' / '#1592#8230#1591#167#1592#8225#1592#1657#1591#167#1592#8224#1592#8225'"]')
          ParentFont = False
          RTLReading = True
        end
        object Line6: TfrxLineView
          Left = 650.833333330000000000
          Top = 0.012986670000003640
          Height = 28.333333330000000000
          Frame.Typ = [ftLeft]
        end
        object Memo21: TfrxMemoView
          Left = 655.166666670000000000
          Top = 5.356833330000001000
          Width = 56.692950000000010000
          Height = 18.897650000000000000
          DataField = #1588#1605#1575#1585#1607' '#1587#1606#1583
          DataSet = frxDBSumPayment
          DataSetName = #1670#1575#1662' '#1585#1587#1610#1583
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8 = (
            '['#1593#8224#1591#167#1592#190' '#1591#177#1591#179#1592#1657#1591#175'."'#1591#180#1592#8230#1591#167#1591#177#1592#8225' '#1591#179#1592#8224#1591#175'"]')
          ParentFont = False
          RTLReading = True
        end
      end
      object ReportTitle1: TfrxReportTitle
        Height = 32.021026670000000000
        Top = 18.897650000000000000
        Width = 718.110700000000000000
        object Shape4: TfrxShapeView
          Align = baClient
          Width = 718.110700000000000000
          Height = 32.021026670000000000
          Color = 11206655
        end
        object MemoCompany: TfrxMemoView
          Left = 200.692173570000000000
          Top = 5.775193800000000000
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
            ' . . . . . . . . . . . '#1591#181#1592#8224#1591#175#1592#710#1592#8218)
          ParentFont = False
        end
      end
      object PageFooter1: TfrxPageFooter
        Height = 22.677180000000000000
        Top = 423.307360000000000000
        Width = 718.110700000000000000
        object Memo2: TfrxMemoView
          Left = 548.683667130000000000
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
          Left = 486.603924800000000000
          Top = 2.137600000000020000
          Width = 56.960730000000000000
          Height = 18.897650000000000000
          DisplayFormat.DecimalSeparator = '.'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8 = (
            '88920158')
          ParentFont = False
        end
      end
      object Header1: TfrxHeader
        Height = 62.677180010000000000
        Top = 113.385900000000000000
        Width = 718.110700000000000000
        object Shape2: TfrxShapeView
          Align = baBottom
          Top = 4.612863330000000000
          Width = 718.110700000000000000
          Height = 58.064316680000000000
          Color = 16771306
        end
        object Memo4: TfrxMemoView
          Left = 541.320346670000000000
          Top = 39.167903320000010000
          Width = 72.927026670000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haCenter
          Memo.UTF8 = (
            #1592#8224#1591#167#1592#8230' '#1592#710#1591#167#1591#177#1592#1657#1591#178' '#1592#402#1592#8224#1592#8224#1591#175#1592#8225)
          ParentFont = False
        end
        object Memo5: TfrxMemoView
          Left = 294.166666660000000000
          Top = 9.442176669999995000
          Width = 124.593693340000000000
          Height = 18.897650000000000000
          DisplayFormat.DecimalSeparator = '.'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -15
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haCenter
          Memo.UTF8 = (
            #1591#177#1591#179#1592#1657#1591#175' '#1592#190#1591#177#1591#175#1591#167#1591#174#1591#1726' '#1591#172#1592#8230#1591#185#1592#1657)
          ParentFont = False
        end
        object Memo8: TfrxMemoView
          Left = 450.968460000000000000
          Top = 39.167903320000010000
          Width = 35.590600000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haCenter
          Memo.UTF8 = (
            #1591#1726#1591#167#1591#177#1592#1657#1591#174)
          ParentFont = False
        end
        object Memo10: TfrxMemoView
          Left = 333.581323320000000000
          Top = 39.167903320000010000
          Width = 94.370130000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haCenter
          Memo.UTF8 = (
            #1591#1726#1591#185#1591#175#1591#167#1591#175' '#1592#8218#1591#179#1591#183' / '#1592#8230#1591#167#1592#8225#1592#1657#1591#167#1592#8224#1592#8225)
          ParentFont = False
        end
        object Memo13: TfrxMemoView
          Left = 221.199443330000000000
          Top = 39.167903320000010000
          Width = 82.093693330000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haCenter
          Memo.UTF8 = (
            #1592#710#1591#167#1591#177#1592#1657#1591#178' '#1591#168#1592#8225' '#1591#173#1591#179#1591#167#1591#168)
          ParentFont = False
        end
        object Memo15: TfrxMemoView
          Left = 103.333333330000000000
          Top = 39.167903320000010000
          Width = 89.796846670000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haCenter
          Memo.UTF8 = (
            #1592#8224#1592#710#1591#185' '#1592#8218#1591#179#1591#183' / '#1592#8230#1591#167#1592#8225#1592#1657#1591#167#1592#8224#1592#8225)
          ParentFont = False
        end
        object Memo17: TfrxMemoView
          Left = 21.166666670000000000
          Top = 39.167903320000010000
          Width = 63.444960000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haCenter
          Memo.UTF8 = (
            #1591#172#1592#8230#1591#185' '#1592#8230#1591#168#1592#8222#1591#1563)
          ParentFont = False
        end
        object Memo22: TfrxMemoView
          Left = 654.456709990000000000
          Top = 39.167903320000010000
          Width = 54.698206670000000000
          Height = 18.897650000000000000
          DisplayFormat.DecimalSeparator = '.'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haCenter
          Memo.UTF8 = (
            #1591#180#1592#8230#1591#167#1591#177#1592#8225' '#1591#179#1592#8224#1591#175)
          ParentFont = False
        end
      end
      object ColumnFooter1: TfrxColumnFooter
        Height = 109.343846660000000000
        Top = 291.023810000000000000
        Width = 718.110700000000000000
        object Shape3: TfrxShapeView
          Align = baClient
          Width = 718.110700000000000000
          Height = 109.343846660000000000
          Curve = 1
          Shape = skRoundRectangle
        end
        object Memo18: TfrxMemoView
          Left = 109.166666660000000000
          Top = 3.529993330000025000
          Width = 50.111626670000000000
          Height = 18.897650000000000000
          DisplayFormat.DecimalSeparator = '.'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haCenter
          Memo.UTF8 = (
            ' : '#1591#172#1592#8230#1591#185' '#1592#402#1592#8222)
          ParentFont = False
        end
        object Memo19: TfrxMemoView
          Left = 605.564316670000000000
          Top = 25.363326669999990000
          Width = 94.278293330000000000
          Height = 18.897650000000000000
          DisplayFormat.DecimalSeparator = '.'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haCenter
          Memo.UTF8 = (
            #1591#167#1592#8230#1591#182#1591#167#1592#1657' '#1592#710#1591#167#1591#177#1592#1657#1591#178' '#1592#402#1592#8224#1592#8224#1591#175#1592#8225)
          ParentFont = False
        end
        object Memo20: TfrxMemoView
          Left = 351.897650010000000000
          Top = 25.363326669999990000
          Width = 108.444960000000000000
          Height = 18.897650000000000000
          DisplayFormat.DecimalSeparator = '.'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haCenter
          Memo.UTF8 = (
            #1591#167#1592#8230#1591#182#1591#167#1592#1657' '#1592#190#1591#177#1591#175#1591#167#1591#174#1591#1726' '#1592#402#1592#8224#1592#8224#1591#175#1592#8225)
          ParentFont = False
        end
        object SysMemo1: TfrxSysMemoView
          Left = 6.666666660000000000
          Top = 3.470933339999988000
          Width = 100.380643340000000000
          Height = 18.897650000000000000
          OnAfterData = 'SysMemo1OnAfterData'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8 = (
            '[SUM(<'#1593#8224#1591#167#1592#190' '#1591#177#1591#179#1592#1657#1591#175'."'#1591#172#1592#8230#1591#185' '#1592#8230#1591#168#1592#8222#1591#1563'">,MasterData1)]')
          ParentFont = False
          RTLReading = True
        end
        object Memo11: TfrxMemoView
          Left = 251.666666660000000000
          Top = 3.529993330000025000
          Width = 86.870130000000000000
          Height = 18.897650000000000000
          DisplayFormat.DecimalSeparator = '.'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8 = (
            ': '#1591#172#1592#8230#1591#185' '#1591#179#1592#710#1591#175' '#1591#167#1592#8218#1591#179#1591#167#1591#183)
          ParentFont = False
        end
        object SysMemo2: TfrxSysMemoView
          Left = 174.456710000000000000
          Top = 3.976189999999974000
          Width = 73.923933340000000000
          Height = 18.897650000000000000
          OnAfterData = 'SysMemo1OnAfterData'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8 = (
            '[(<'#1593#8224#1591#167#1592#190' '#1591#177#1591#179#1592#1657#1591#175'."'#1591#172#1592#8230#1591#185' '#1591#179#1592#710#1591#175' '#1591#167#1592#8218#1591#179#1591#167#1591#183'">)]')
          ParentFont = False
          RTLReading = True
        end
      end
    end
    object Page2: TfrxReportPage
      Orientation = poLandscape
      PaperWidth = 297.000000000000000000
      PaperHeight = 210.000000000000000000
      PaperSize = 9
      LeftMargin = 10.000000000000000000
      RightMargin = 10.000000000000000000
      TopMargin = 10.000000000000000000
      BottomMargin = 10.000000000000000000
      object ReportTitle2: TfrxReportTitle
        Height = 32.021026670000000000
        Top = 18.897650000000000000
        Width = 1046.929810000000000000
        object Shape5: TfrxShapeView
          Align = baClient
          Width = 1046.929810000000000000
          Height = 32.021026670000000000
          Color = 11206655
        end
        object MemoCompany1: TfrxMemoView
          Left = 345.000000000000000000
          Top = 7.102350000000001000
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
            ' . . . . . . . . . . . '#1591#181#1592#8224#1591#175#1592#710#1592#8218)
          ParentFont = False
        end
      end
      object MasterData2: TfrxMasterData
        Height = 28.510513330000000000
        Top = 188.976500000000000000
        Width = 1046.929810000000000000
        DataSet = frxDBDataset1
        DataSetName = #1670#1575#1662' '#1585#1587#1610#1583'2'
        RowCount = 0
        object Shape7: TfrxShapeView
          Align = baClient
          Width = 1046.929810000000000000
          Height = 28.510513330000000000
          Color = 15794175
          Curve = 1
          Shape = skRoundRectangle
        end
        object Line8: TfrxLineView
          Left = 354.141732280000000000
          Top = 0.072046669999991760
          Height = 28.333333330000000000
          Frame.Typ = [ftLeft]
        end
        object Line9: TfrxLineView
          Left = 263.055118110000000000
          Height = 28.333333330000000000
          Frame.Typ = [ftLeft]
        end
        object Line16: TfrxLineView
          Left = 530.645669290000000000
          Height = 28.346456690000000000
          Frame.Typ = [ftLeft]
        end
        object Line18: TfrxLineView
          Left = 473.574803150000000000
          Height = 28.346456690000000000
          Frame.Typ = [ftLeft]
        end
        object Memo36: TfrxMemoView
          Left = 856.656773330000000000
          Top = 3.779527559999991000
          Width = 158.706034310000000000
          Height = 18.897650000000000000
          DataField = #1606#1575#1605' '#1608' '#1606#1575#1605' '#1582#1575#1606#1608#1575#1583#1711#1610
          DataSet = frxDBDataset1
          DataSetName = #1670#1575#1662' '#1585#1587#1610#1583'2'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8 = (
            '['#1593#8224#1591#167#1592#190' '#1591#177#1591#179#1592#1657#1591#175'2."'#1592#8224#1591#167#1592#8230' '#1592#710' '#1592#8224#1591#167#1592#8230' '#1591#174#1591#167#1592#8224#1592#710#1591#167#1591#175#1593#175#1592#1657'"]')
          ParentFont = False
          RTLReading = True
        end
        object Memo37: TfrxMemoView
          Left = 765.685530000000000000
          Top = 3.779527559999991000
          Width = 86.929190000000000000
          Height = 18.897650000000000000
          DataField = #1606#1575#1605' '#1662#1583#1585
          DataSet = frxDBDataset1
          DataSetName = #1670#1575#1662' '#1585#1587#1610#1583'2'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8 = (
            '['#1593#8224#1591#167#1592#190' '#1591#177#1591#179#1592#1657#1591#175'2."'#1592#8224#1591#167#1592#8230' '#1592#190#1591#175#1591#177'"]')
          ParentFont = False
          RTLReading = True
        end
        object Memo38: TfrxMemoView
          Left = 697.874460000000000000
          Top = 3.779527559999991000
          Width = 64.252010000000000000
          Height = 18.897650000000000000
          DataField = #1587#1585#1585#1587#1610#1583
          DataSet = frxDBDataset1
          DataSetName = #1670#1575#1662' '#1585#1587#1610#1583'2'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8 = (
            '['#1593#8224#1591#167#1592#190' '#1591#177#1591#179#1592#1657#1591#175'2."'#1591#179#1591#177#1591#177#1591#179#1592#1657#1591#175'"]')
          ParentFont = False
          RTLReading = True
        end
        object Memo39: TfrxMemoView
          Left = 625.842920000000000000
          Top = 3.779527559999991000
          Width = 68.031540000000010000
          Height = 18.897650000000000000
          DataField = #1588#1605#1575#1585#1607' '#1581#1587#1575#1576
          DataSet = frxDBDataset1
          DataSetName = #1670#1575#1662' '#1585#1587#1610#1583'2'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8 = (
            '['#1593#8224#1591#167#1592#190' '#1591#177#1591#179#1592#1657#1591#175'2."'#1591#180#1592#8230#1591#167#1591#177#1592#8225' '#1591#173#1591#179#1591#167#1591#168'"]')
          ParentFont = False
          RTLReading = True
        end
        object Memo40: TfrxMemoView
          Left = 532.693260000000000000
          Top = 3.779527559999991000
          Width = 86.929190000000000000
          Height = 18.897650000000000000
          DataField = #1605#1576#1604#1594' '#1608#1575#1605
          DataSet = frxDBDataset1
          DataSetName = #1670#1575#1662' '#1585#1587#1610#1583'2'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8 = (
            '['#1593#8224#1591#167#1592#190' '#1591#177#1591#179#1592#1657#1591#175'2."'#1592#8230#1591#168#1592#8222#1591#1563' '#1592#710#1591#167#1592#8230'"]')
          ParentFont = False
          RTLReading = True
        end
        object Memo41: TfrxMemoView
          Left = 502.677260550000000000
          Top = 3.779527559999991000
          Width = 26.456685590000000000
          Height = 18.897650000000000000
          DataField = #1578#1593#1583#1575#1583' '#1602#1587#1591
          DataSet = frxDBDataset1
          DataSetName = #1670#1575#1662' '#1585#1587#1610#1583'2'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8 = (
            '['#1593#8224#1591#167#1592#190' '#1591#177#1591#179#1592#1657#1591#175'2."'#1591#1726#1591#185#1591#175#1591#167#1591#175' '#1592#8218#1591#179#1591#183'"]')
          ParentFont = False
          RTLReading = True
        end
        object Memo42: TfrxMemoView
          Left = 355.393940000000000000
          Top = 3.779527559999991000
          Width = 117.165430000000000000
          Height = 18.897650000000000000
          DataField = #1605#1576#1604#1594' '#1607#1585' '#1602#1587#1591
          DataSet = frxDBDataset1
          DataSetName = #1670#1575#1662' '#1585#1587#1610#1583'2'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8 = (
            '['#1593#8224#1591#167#1592#190' '#1591#177#1591#179#1592#1657#1591#175'2."'#1592#8230#1591#168#1592#8222#1591#1563' '#1592#8225#1591#177' '#1592#8218#1591#179#1591#183'"]')
          ParentFont = False
          RTLReading = True
        end
        object Memo43: TfrxMemoView
          Left = 264.944935590000000000
          Top = 3.779527559999991000
          Width = 85.795295120000000000
          Height = 18.897650000000000000
          DataField = #1605#1575#1606#1583#1607' '#1608#1575#1605
          DataSet = frxDBDataset1
          DataSetName = #1670#1575#1662' '#1585#1587#1610#1583'2'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8 = (
            '['#1593#8224#1591#167#1592#190' '#1591#177#1591#179#1592#1657#1591#175'2."'#1592#8230#1591#167#1592#8224#1591#175#1592#8225' '#1592#710#1591#167#1592#8230'"]')
          ParentFont = False
          RTLReading = True
        end
        object Memo44: TfrxMemoView
          Left = 163.921294020000000000
          Top = 3.779527560000000000
          Width = 97.133885120000000000
          Height = 18.897650000000000000
          DataField = #1605#1576#1604#1594' '#1605#1575#1607#1610#1575#1606#1607
          DataSet = frxDBDataset1
          DataSetName = #1670#1575#1662' '#1585#1587#1610#1583'2'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8 = (
            '['#1593#8224#1591#167#1592#190' '#1591#177#1591#179#1592#1657#1591#175'2."'#1592#8230#1591#168#1592#8222#1591#1563' '#1592#8230#1591#167#1592#8225#1592#1657#1591#167#1592#8224#1592#8225'"]')
          ParentFont = False
          RTLReading = True
        end
        object Line27: TfrxLineView
          Left = 40.940944880000000000
          Height = 28.333333330000000000
          Frame.Typ = [ftLeft]
        end
        object Memo45: TfrxMemoView
          Left = 43.015750470000000000
          Top = 3.779527560000000000
          Width = 116.031525350000000000
          Height = 18.897650000000000000
          DataField = #1605#1608#1580#1608#1583#1610' '#1605#1575#1607#1610#1575#1606#1607
          DataSet = frxDBDataset1
          DataSetName = #1670#1575#1662' '#1585#1587#1610#1583'2'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8 = (
            '['#1593#8224#1591#167#1592#190' '#1591#177#1591#179#1592#1657#1591#175'2."'#1592#8230#1592#710#1591#172#1592#710#1591#175#1592#1657' '#1592#8230#1591#167#1592#8225#1592#1657#1591#167#1592#8224#1592#8225'"]')
          ParentFont = False
          RTLReading = True
        end
        object Memo46: TfrxMemoView
          Left = 2.000000000000000000
          Top = 3.779527559999991000
          Width = 36.661424650000000000
          Height = 18.897650000000000000
          DataField = #1578#1575#1582#1610#1585
          DataSet = frxDBDataset1
          DataSetName = #1670#1575#1662' '#1585#1587#1610#1583'2'
          DisplayFormat.DecimalSeparator = '.'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8 = (
            '['#1593#8224#1591#167#1592#190' '#1591#177#1591#179#1592#1657#1591#175'2."'#1591#1726#1591#167#1591#174#1592#1657#1591#177'"]')
          ParentFont = False
          RTLReading = True
        end
        object Memo47: TfrxMemoView
          Left = 475.220780000000000000
          Top = 3.779527559999991000
          Width = 26.456710000000000000
          Height = 18.897650000000000000
          DataField = #1583#1585#1608#1607' '#1602#1587#1591
          DataSet = frxDBDataset1
          DataSetName = #1670#1575#1662' '#1585#1587#1610#1583'2'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8 = (
            '['#1593#8224#1591#167#1592#190' '#1591#177#1591#179#1592#1657#1591#175'2."'#1591#175#1591#177#1592#710#1592#8225' '#1592#8218#1591#179#1591#183'"]')
          ParentFont = False
          RTLReading = True
        end
        object Line11: TfrxLineView
          Left = 161.108962940000000000
          Height = 28.333333330000000000
          Frame.Typ = [ftLeft]
        end
        object Line29: TfrxLineView
          Left = 1014.803149610000000000
          Height = 28.346456690000000000
          Frame.Typ = [ftLeft]
        end
        object Line: TfrxMemoView
          Left = 1018.473100000000000000
          Top = 3.779529999999994000
          Width = 26.456710000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8 = (
            '[Line#]')
          ParentFont = False
          RTLReading = True
        end
        object Line30: TfrxLineView
          Left = 1626.798393333330000000
          Top = 27.817563330000010000
          Height = 30.236220470000000000
          Frame.Typ = [ftLeft]
        end
        object Line31: TfrxLineView
          Left = 1718.066173333330000000
          Top = 26.817563330000010000
          Height = 30.236220470000000000
          Frame.Typ = [ftLeft]
        end
        object Line32: TfrxLineView
          Left = 1559.987323333330000000
          Top = 26.817563330000010000
          Height = 30.236220470000000000
          Frame.Typ = [ftLeft]
        end
        object Line33: TfrxLineView
          Left = 854.666666670000000000
          Height = 28.346456690000000000
          Frame.Typ = [ftLeft]
        end
        object Line34: TfrxLineView
          Left = 763.283550000000000000
          Height = 28.346456690000000000
          Frame.Typ = [ftLeft]
        end
        object Line7: TfrxLineView
          Left = 696.666666670000000000
          Top = -0.000073229999998148
          Height = 28.346456690000000000
          Frame.Typ = [ftLeft]
        end
        object Line10: TfrxLineView
          Left = 623.622047240000000000
          Height = 28.346456690000000000
          Frame.Typ = [ftLeft]
        end
      end
      object PageHeader1: TfrxPageHeader
        Height = 52.030278920000000000
        Top = 75.590600000000000000
        Width = 1046.929810000000000000
        object Shape6: TfrxShapeView
          Align = baClient
          Width = 1046.929810000000000000
          Height = 52.030278920000000000
          Color = 16771306
        end
        object Memo24: TfrxMemoView
          Left = 765.554113340000000000
          Top = 26.897637800000000000
          Width = 87.583180000000000000
          Height = 18.897650000000000000
          DisplayFormat.DecimalSeparator = '.'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haCenter
          Memo.UTF8 = (
            #1592#8224#1591#167#1592#8230' '#1592#190#1591#175#1591#177)
          ParentFont = False
        end
        object Memo25: TfrxMemoView
          Left = 1.392393320000000000
          Top = 1.000000000000000000
          Width = 1044.769946680000000000
          Height = 18.897650000000000000
          DisplayFormat.DecimalSeparator = '.'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -15
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haCenter
          Memo.UTF8 = (
            #1591#177#1591#179#1592#1657#1591#175' '#1592#190#1591#177#1591#175#1591#167#1591#174#1591#1726' '#1591#172#1592#8230#1591#185#1592#1657)
          ParentFont = False
        end
        object Memo26: TfrxMemoView
          Left = 699.078850000001000000
          Top = 26.897637800000000000
          Width = 62.047310000000000000
          Height = 18.897650000000000000
          DisplayFormat.DecimalSeparator = '.'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haCenter
          Memo.UTF8 = (
            #1591#179#1591#177#1591#177#1591#179#1592#1657#1591#175)
          ParentFont = False
        end
        object Memo27: TfrxMemoView
          Left = 630.605133320000000000
          Top = 26.897637800000000000
          Width = 64.133890000000000000
          Height = 18.897650000000000000
          DisplayFormat.DecimalSeparator = '.'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haCenter
          Memo.UTF8 = (
            #1591#180#1592#8230#1591#167#1591#177#1592#8225' '#1591#173#1591#179#1591#167#1591#168)
          ParentFont = False
        end
        object Memo28: TfrxMemoView
          Left = 534.018553320000000000
          Top = 26.897637800000000000
          Width = 87.421770000000000000
          Height = 18.897650000000000000
          DisplayFormat.DecimalSeparator = '.'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haCenter
          Memo.UTF8 = (
            #1592#8230#1591#168#1592#8222#1591#1563' '#1592#710#1591#167#1592#8230)
          ParentFont = False
        end
        object Memo29: TfrxMemoView
          Left = 478.071120000000000000
          Top = 26.897637800000000000
          Width = 51.216760000000000000
          Height = 18.897650000000000000
          DisplayFormat.DecimalSeparator = '.'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haCenter
          Memo.UTF8 = (
            #1592#8230#1591#175#1591#1726' '#1592#710#1591#167#1592#8230)
          ParentFont = False
        end
        object Memo30: TfrxMemoView
          Left = 356.576376670000000000
          Top = 26.897637800000000000
          Width = 113.444960000000000000
          Height = 18.897650000000000000
          DisplayFormat.DecimalSeparator = '.'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haCenter
          Memo.UTF8 = (
            #1592#8230#1591#168#1592#8222#1591#1563' '#1592#8225#1591#177' '#1592#8218#1591#179#1591#183)
          ParentFont = False
        end
        object Memo31: TfrxMemoView
          Left = 856.777056660000000000
          Top = 26.564304470000000000
          Width = 156.745516670000000000
          Height = 18.897650000000000000
          DisplayFormat.DecimalSeparator = '.'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haCenter
          Memo.UTF8 = (
            #1592#8224#1591#167#1592#8230' '#1592#710' '#1592#8224#1591#167#1592#8230' '#1591#174#1591#167#1592#8224#1592#710#1591#167#1591#175#1593#175#1592#1657)
          ParentFont = False
        end
        object Memo32: TfrxMemoView
          Left = 266.729722260000000000
          Top = 26.897637800000000000
          Width = 84.867966660000000000
          Height = 18.897650000000000000
          DisplayFormat.DecimalSeparator = '.'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haCenter
          Memo.UTF8 = (
            #1592#8230#1591#167#1592#8224#1591#175#1592#8225' '#1592#710#1591#167#1592#8230)
          ParentFont = False
        end
        object Memo33: TfrxMemoView
          Left = 164.879333440000000000
          Top = 26.897637800000000000
          Width = 90.427026660000000000
          Height = 18.897650000000000000
          DisplayFormat.DecimalSeparator = '.'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haCenter
          Memo.UTF8 = (
            #1592#8230#1591#168#1592#8222#1591#1563' '#1592#8230#1591#167#1592#8225#1592#1657#1591#167#1592#8224#1592#8225)
          ParentFont = False
        end
        object Memo34: TfrxMemoView
          Left = 45.349083800000000000
          Top = 26.897637800000000000
          Width = 113.319420000000000000
          Height = 18.897650000000000000
          DisplayFormat.DecimalSeparator = '.'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haCenter
          Memo.UTF8 = (
            #1592#8230#1592#710#1591#172#1592#710#1591#175#1592#1657' '#1592#8230#1591#167#1592#8225#1592#1657#1591#167#1592#8224#1592#8225)
          ParentFont = False
        end
        object Memo35: TfrxMemoView
          Top = 26.897637800000000000
          Width = 38.400743330000000000
          Height = 18.897650000000000000
          DisplayFormat.DecimalSeparator = '.'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haCenter
          Memo.UTF8 = (
            #1591#1726#1591#167#1591#174#1592#1657#1591#177)
          ParentFont = False
        end
        object Line14: TfrxLineView
          Top = 20.794063330000000000
          Width = 1047.889766220000000000
          Frame.Typ = [ftTop]
        end
        object Line15: TfrxLineView
          Left = 763.465060000000000000
          Top = 21.794063330000000000
          Height = 30.236220470000000000
          Frame.Typ = [ftLeft]
        end
        object Line13: TfrxLineView
          Left = 854.732840000000000000
          Top = 20.794063330000000000
          Height = 30.614173228346500000
          Frame.Typ = [ftLeft]
        end
        object Line17: TfrxLineView
          Left = 696.653990000000000000
          Top = 20.794063330000000000
          Height = 30.614173230000000000
          Frame.Typ = [ftLeft]
        end
        object Line19: TfrxLineView
          Left = 623.514843330000000000
          Top = 20.794063330000000000
          Height = 30.614173230000000000
          Frame.Typ = [ftLeft]
        end
        object Line20: TfrxLineView
          Left = 530.467533330000000000
          Top = 20.794063330000000000
          Height = 30.614173228346500000
          Frame.Typ = [ftLeft]
        end
        object Line21: TfrxLineView
          Left = 473.559370000000000000
          Top = 20.794063330000000000
          Height = 30.614173228346500000
          Frame.Typ = [ftLeft]
        end
        object Line22: TfrxLineView
          Left = 354.173470000000000000
          Top = 20.794063330000000000
          Height = 30.614173228346500000
          Frame.Typ = [ftLeft]
        end
        object Line24: TfrxLineView
          Left = 263.126160000000000000
          Top = 20.794063330000000000
          Height = 30.614173228346500000
          Frame.Typ = [ftLeft]
        end
        object Line25: TfrxLineView
          Left = 160.740260000000000000
          Top = 20.794063330000000000
          Height = 30.614173228346500000
          Frame.Typ = [ftLeft]
        end
        object Line26: TfrxLineView
          Left = 40.354360000000000000
          Top = 20.794063330000000000
          Height = 30.614173230000000000
          Frame.Typ = [ftLeft]
        end
        object Line28: TfrxLineView
          Left = 1014.693570000000000000
          Top = 20.677180000000010000
          Height = 30.614173230000000000
          Frame.Typ = [ftLeft]
        end
        object Memo48: TfrxMemoView
          Left = 1017.252630000000000000
          Top = 25.897637800000000000
          Width = 27.572666670000000000
          Height = 18.897650000000000000
          DisplayFormat.DecimalSeparator = '.'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haCenter
          Memo.UTF8 = (
            #1591#177#1591#175#1592#1657#1592#1662)
          ParentFont = False
        end
      end
      object ColumnFooter2: TfrxColumnFooter
        Height = 22.624613330000000000
        Top = 279.685220000000000000
        Width = 1046.929810000000000000
        object Line41: TfrxLineView
          Left = 1957.803149610000000000
          Top = 1.314779999999985000
          Height = 28.346456690000000000
          Frame.Typ = [ftLeft]
        end
        object Line42: TfrxLineView
          Left = 1797.666666670000000000
          Top = 1.314779999999985000
          Height = 28.346456690000000000
          Frame.Typ = [ftLeft]
        end
        object Line43: TfrxLineView
          Left = 1706.283550000000000000
          Top = 1.314779999999985000
          Height = 28.346456690000000000
          Frame.Typ = [ftLeft]
        end
        object Memo52: TfrxMemoView
          Left = 233.236240000000000000
          Top = 2.519479999999987000
          Width = 121.009276670000000000
          Height = 18.897650000000000000
          DisplayFormat.DecimalSeparator = '.'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          Memo.UTF8 = (
            ' : '#1591#172#1592#8230#1591#185' '#1592#402#1592#8222' '#1592#190#1591#177#1591#175#1591#167#1591#174#1591#1726#1592#1657)
          ParentFont = False
        end
        object SysMemo9: TfrxSysMemoView
          Left = 19.661410000000000000
          Top = 2.519479999999987000
          Width = 208.870130000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          HAlign = haCenter
          Memo.UTF8 = (
            '[(<'#1593#8224#1591#167#1592#190' '#1591#177#1591#179#1592#1657#1591#175'2."'#1591#172#1592#8230#1591#185' '#1592#8230#1591#167#1592#8225#1592#1657#1591#167#1592#8224#1592#8225' '#1592#710' '#1592#8218#1591#179#1591#183'">)]')
          ParentFont = False
          RTLReading = True
        end
        object Memo54: TfrxMemoView
          Left = 752.126470000000000000
          Width = 91.994743330000000000
          Height = 18.897650000000000000
          DisplayFormat.DecimalSeparator = '.'
          Font.Charset = ARABIC_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          HAlign = haCenter
          Memo.UTF8 = (
            #1591#1726#1591#167#1591#177#1592#1657#1591#174' '#1592#190#1591#177#1591#175#1591#167#1591#174#1591#1726)
          ParentFont = False
        end
        object Memo55: TfrxMemoView
          Left = 600.945270000000000000
          Width = 143.622140000000000000
          Height = 18.897650000000000000
          DataSet = frxDBDataset1
          DataSetName = #1670#1575#1662' '#1585#1587#1610#1583'2'
          DisplayFormat.DecimalSeparator = '.'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          HAlign = haCenter
          Memo.UTF8 = (
            '['#1593#8224#1591#167#1592#190' '#1591#177#1591#179#1592#1657#1591#175'."'#1591#1726#1591#167#1591#177#1592#1657#1591#174'"]')
          ParentFont = False
          RTLReading = True
        end
      end
      object PageFooter2: TfrxPageFooter
        Height = 344.461966670000000000
        Top = 325.039580000000000000
        Width = 1046.929810000000000000
        object Memo49: TfrxMemoView
          Left = 2.666666670000000000
          Top = 58.427643320000010000
          Width = 1032.433520000000000000
          Height = 212.685220000000000000
          DisplayFormat.DecimalSeparator = '.'
          Font.Charset = ARABIC_CHARSET
          Font.Color = clWindowText
          Font.Height = -15
          Font.Name = 'Tahoma'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8 = (
            ''
            #1591#1726#1592#710#1591#182#1592#1657#1591#173#1591#167#1591#1726'    '
            ''
            '    '#1592#8218#1591#167#1591#168#1592#8222' '#1591#1726#1592#710#1591#172#1592#8225' '#1591#167#1591#185#1591#182#1591#167#1592#1657' '#1592#8230#1591#173#1591#1726#1591#177#1592#8230'    '
            ''
            
              '1'#1592#8224#1591#184#1591#177' '#1591#168#1592#8225' '#1591#167#1592#1657#1592#8224#1593#169#1592#8225' '#1591#181#1592#710#1591#177#1591#1726#1591#173#1591#179#1591#167#1591#168' '#1592#1662#1591#185#1592#8222#1592#1657' '#1591#167#1591#178' '#1592#8222#1591#173#1591#167#1591#184' ' +
              #1592#8230#1591#175#1592#1657#1591#177#1592#1657#1591#1726' '#1591#173#1591#179#1591#167#1591#168#1591#177#1591#179#1592#1657' '#1591#175#1592#8218#1592#1657#1592#8218' '#1592#710' '#1591#168#1591#177#1592#710#1591#178' '#1593#175#1591#177#1591#175#1592#1657#1591#175#1592#8225' '#1591#167 +
              #1591#179#1591#1726'.'#1591#167#1591#178' '#1591#167#1592#1657#1592#8224' '#1591#1726#1591#167#1591#177#1592#1657#1591#174' '#1591#168#1592#8225' '#1591#168#1591#185#1591#175' '#1591#172#1591#167#1592#1657#1593#175#1591#178#1592#1657#1592#8224' '#1591#175#1592#1662#1591#1726#1591#177#1593 +
              #8224#1592#8225'  '#1592#8218#1591#175#1592#1657#1592#8230#1592#1657' '#1591#174#1592#710#1591#167#1592#8225#1591#175' '#1591#180#1591#175' '#1592#710' '#1592#8225#1591#177' '#1592#8230#1591#167#1592#8225' '#1591#168#1591#167' '#1592#190#1591#177#1591#175#1591#167#1591#174#1591#1726 +
              ' '#1591#168#1592#8230#1592#710#1592#8218#1591#185' '#1591#167#1592#8218#1591#179#1591#167#1591#183' '#1592#710#1591#167#1592#8230' '#1592#710' '#1591#179#1592#8225#1591#167#1592#8230' '#1591#338' '#1591#175#1591#177' '#1591#167#1591#174#1591#1726#1592#1657#1591#167#1591#177' '#1591 +
              #180#1592#8230#1591#167' '#1591#179#1592#8225#1591#167#1592#8230#1591#175#1591#167#1591#177#1591#167#1592#8224' '#1592#8230#1591#173#1591#1726#1591#177#1592#8230' '#1592#8218#1591#177#1591#167#1591#177' '#1591#174#1592#710#1591#167#1592#8225#1591#175' '#1593#175#1591#177#1592#1662#1591#1726 +
              ' '#1591#338' '#1591#1726#1591#167' '#1591#175#1591#177' '#1591#167#1592#1657#1592#8224' '#1591#177#1591#167#1591#179#1591#1726#1591#167' '#1591#174#1592#710#1591#175' '#1591#167#1591#185#1591#182#1591#167#1591#1548' '#1591#168#1592#8225' '#1591#183#1592#710#1591#177' '#1592#8230 +
              #1591#179#1591#1726#1592#8218#1592#1657#1592#8230' '#1592#8224#1591#167#1591#184#1591#177' '#1592#710' '#1591#168#1591#167#1591#178#1591#177#1591#179' '#1591#173#1591#179#1591#167#1591#168#1592#8225#1591#167#1592#1657' '#1592#8230#1591#167#1592#8222#1592#1657' '#1591#181#1592#8224#1591#175 +
              #1592#710#1592#8218' '#1591#174#1592#710#1591#175' '#1591#168#1591#167#1591#180#1592#8224#1591#175
            ''
            
              '2'#1591#180#1591#167#1592#1657#1591#167#1592#8224' '#1591#176#1593#169#1591#177' '#1591#167#1591#179#1591#1726' '#1591#338' '#1591#172#1592#8225#1591#1726' '#1592#8225#1592#8230#1593#169#1591#167#1591#177#1592#1657' '#1592#8225#1591#177' '#1593#8224#1592#8225' '#1591#168#1592#1657#1591 +
              #180#1591#1726#1591#177' '#1591#168#1591#167' '#1592#8225#1592#1657#1591#1726' '#1592#8230#1591#175#1592#1657#1591#177#1592#8225' '#1591#181#1592#8224#1591#175#1592#710#1592#8218' '#1591#338' '#1591#173#1592#1662#1591#184' '#1592#710' '#1592#8224#1593#175#1592#8225#1591#175#1591#167#1591 +
              #177#1592#1657' '#1591#181#1592#710#1591#177#1591#1726' '#1591#173#1591#179#1591#167#1591#168#1592#8225#1591#167' '#1591#1726#1591#167' '#1592#190#1591#167#1592#1657#1591#167#1592#8224' '#1592#8225#1591#177' '#1591#179#1591#167#1592#8222' '#1591#167#1592#8222#1591#178#1591#167#1592#8230 +
              #1592#1657' '#1592#8230#1592#1657' '#1591#168#1591#167#1591#180#1591#175
            ''
            
              '3'#1591#168#1591#175#1592#1657#1592#8225#1592#1657' '#1591#167#1591#179#1591#1726' '#1591#338' '#1593#8224#1592#8224#1591#167#1592#8224#1593#8224#1592#8225' '#1591#167#1591#178' '#1591#183#1591#177#1592#1662' '#1591#167#1591#185#1591#182#1591#167#1591#1548' '#1591#179#1591#177#1591#177 +
              #1591#179#1592#1657#1591#175' '#1592#710' '#1592#1657#1591#167' '#1591#181#1592#710#1591#177#1591#1726#1591#173#1591#179#1591#167#1591#168' '#1592#8230#1592#1662#1592#8218#1592#710#1591#175' '#1593#175#1591#177#1591#175#1591#175' '#1591#338' '#1592#8225#1592#1657#1591#166#1591#1726' ' +
              #1592#8230#1591#175#1592#1657#1591#177#1592#8225' '#1591#181#1592#8224#1591#175#1592#710#1592#8218' '#1592#8225#1592#1657#1593#8224' '#1592#8230#1591#179#1592#710#1592#8222#1592#1657#1591#1726#1592#1657' '#1592#8224#1591#174#1592#710#1591#167#1592#8225#1591#175' '#1591#175#1591#167#1591#180#1591 +
              #1726' '#1592#710' '#1591#181#1592#710#1591#177#1591#1726#1591#173#1591#179#1591#167#1591#168#1592#8225#1591#167#1592#1657' '#1593#175#1592#8230#1591#180#1591#175#1592#8225' '#1591#172#1591#178#1591#1548' '#1591#168#1591#175#1592#8225#1592#1657' '#1592#8225#1591#167#1592#1657' '#1591#181 +
              #1592#8224#1591#175#1592#710#1592#8218' '#1592#710' '#1591#168#1592#1657#1591#1726' '#1591#167#1592#8222#1592#8230#1591#167#1592#8222' '#1592#8230#1591#173#1591#179#1592#710#1591#168' '#1592#8230#1592#1657' '#1593#175#1591#177#1591#175#1591#175' '#1592#710' '#1592#8230#1591#179#1592#710 +
              #1592#8222#1592#1657#1591#1726' '#1591#162#1592#8224' '#1592#8230#1592#8224#1591#173#1591#181#1591#177#1591#167' '#1591#168#1591#177' '#1591#185#1592#8225#1591#175#1592#8225' '#1591#174#1592#710#1591#175' '#1591#167#1591#185#1591#182#1591#167' '#1592#8230#1592#1657' '#1591#168#1591#167 +
              #1591#180#1591#175)
          ParentFont = False
        end
        object Memo23: TfrxMemoView
          Left = 528.671923330000000000
          Top = 2.976189999999974000
          Width = 71.703463330000000000
          Height = 18.897650000000000000
          DisplayFormat.DecimalSeparator = '.'
          Font.Charset = ARABIC_CHARSET
          Font.Color = clWindowText
          Font.Height = -15
          Font.Name = 'Tahoma'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8 = (
            #1591#173#1591#179#1591#167#1591#168#1591#175#1591#167#1591#177)
          ParentFont = False
        end
        object Memo50: TfrxMemoView
          Left = 218.614100000000000000
          Top = 3.960419999999999000
          Width = 63.273036670000000000
          Height = 18.897650000000000000
          DisplayFormat.DecimalSeparator = '.'
          Font.Charset = ARABIC_CHARSET
          Font.Color = clWindowText
          Font.Height = -15
          Font.Name = 'Tahoma'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8 = (
            #1591#181#1592#8224#1591#175#1592#710#1592#8218#1591#175#1591#167#1591#177'      ')
          ParentFont = False
        end
        object Memo51: TfrxMemoView
          Left = 805.039890000000000000
          Top = 3.779530000000022000
          Width = 174.273036670000000000
          Height = 18.897650000000000000
          DisplayFormat.DecimalSeparator = '.'
          Font.Charset = ARABIC_CHARSET
          Font.Color = clWindowText
          Font.Height = -15
          Font.Name = 'Tahoma'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8 = (
            #1592#8230#1591#173#1592#8222' '#1591#167#1592#8230#1591#182#1591#167' '#1593#169#1591#167#1591#177#1591#168#1591#177)
          ParentFont = False
        end
        object Memo53: TfrxMemoView
          Left = 177.637910000000000000
          Top = 291.023810000000000000
          Width = 126.745516670000000000
          Height = 18.897650000000000000
          DisplayFormat.DecimalSeparator = '.'
          Font.Charset = ARABIC_CHARSET
          Font.Color = clWindowText
          Font.Height = -15
          Font.Name = 'Tahoma'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8 = (
            #1591#177#1591#166#1592#1657#1591#179' '#1591#181#1592#8224#1591#175#1592#710#1592#8218)
          ParentFont = False
        end
      end
    end
  end
  object DADOSpSumPayment: TDataSource
    DataSet = ADOSpSumPayment
    Left = 136
    Top = 74
  end
  object ADOSpSumPayment: TADOStoredProc
    Connection = dm.YeganehConnection
    CursorType = ctStatic
    LockType = ltBatchOptimistic
    ProcedureName = 'Report_TotalPayment'
    Parameters = <
      item
        Name = '@RETURN_VALUE'
        DataType = ftInteger
        Direction = pdReturnValue
        Precision = 10
        Value = 0
      end
      item
        Name = '@documentNo'
        Attributes = [paNullable]
        DataType = ftString
        Size = 10
        Value = Null
      end
      item
        Name = '@ToDay'
        Attributes = [paNullable]
        DataType = ftString
        Size = 11
        Value = '1400/01/01'
      end>
    Left = 136
    Top = 16
    object ADOSpSumPaymentAccountTitle: TWideStringField
      FieldName = 'AccountTitle'
      Size = 100
    end
    object ADOSpSumPaymentFatherName: TWideStringField
      FieldName = 'FatherName'
      Size = 30
    end
    object ADOSpSumPaymentMatureDate: TStringField
      FieldName = 'MatureDate'
      FixedChar = True
      Size = 10
    end
    object ADOSpSumPaymentAccountNo: TStringField
      FieldName = 'AccountNo'
    end
    object ADOSpSumPaymentGhestAmount: TIntegerField
      FieldName = 'GhestAmount'
      ReadOnly = True
      DisplayFormat = '###,'
    end
    object ADOSpSumPaymentMountlyAmount: TIntegerField
      FieldName = 'MountlyAmount'
      ReadOnly = True
      DisplayFormat = '###,'
    end
    object ADOSpSumPaymentTotalLoanAmount: TIntegerField
      FieldName = 'TotalLoanAmount'
      DisplayFormat = '###,'
    end
    object ADOSpSumPaymentDelay: TIntegerField
      FieldName = 'Delay'
      ReadOnly = True
    end
    object ADOSpSumPaymentMonthlyBalance: TLargeintField
      FieldName = 'MonthlyBalance'
      ReadOnly = True
      DisplayFormat = '###,'
    end
    object ADOSpSumPaymentPartsBeginDate: TStringField
      FieldName = 'PartsBeginDate'
      FixedChar = True
      Size = 10
    end
    object ADOSpSumPaymentLoanTypeID: TSmallintField
      FieldName = 'LoanTypeID'
    end
    object ADOSpSumPaymentGhestPeriod: TWideStringField
      FieldName = 'GhestPeriod'
      ReadOnly = True
      Size = 13
    end
    object ADOSpSumPaymentGHESTCOUNT: TIntegerField
      FieldName = 'GHESTCOUNT'
      ReadOnly = True
    end
    object ADOSpSumPaymentMOUNTLY_GHESTAMOUNT: TLargeintField
      FieldName = 'MOUNTLY_GHESTAMOUNT'
      ReadOnly = True
      DisplayFormat = '###,'
    end
    object ADOSpSumPaymentREMAINOFLOAN: TIntegerField
      FieldName = 'REMAINOFLOAN'
      ReadOnly = True
      DisplayFormat = '###,'
    end
  end
  object frxDBDataset1: TfrxDBDataset
    UserName = #1670#1575#1662' '#1585#1587#1610#1583'2'
    CloseDataSource = False
    FieldAliases.Strings = (
      'AccountTitle='#1606#1575#1605' '#1608' '#1606#1575#1605' '#1582#1575#1606#1608#1575#1583#1711#1610
      'FatherName='#1606#1575#1605' '#1662#1583#1585
      'MatureDate='#1587#1585#1585#1587#1610#1583
      'AccountNo='#1588#1605#1575#1585#1607' '#1581#1587#1575#1576
      'GhestAmount='#1605#1576#1604#1594' '#1607#1585' '#1602#1587#1591
      'MountlyAmount='#1605#1576#1604#1594' '#1605#1575#1607#1610#1575#1606#1607
      'TotalLoanAmount='#1605#1576#1604#1594' '#1608#1575#1605
      'Delay='#1578#1575#1582#1610#1585
      'MonthlyBalance='#1605#1608#1580#1608#1583#1610' '#1605#1575#1607#1610#1575#1606#1607
      'PartsBeginDate='#1578#1575#1585#1610#1582' '#1588#1585#1608#1593' '#1602#1587#1591
      'LoanTypeID=LoanTypeID'
      'GhestPeriod='#1583#1585#1608#1607' '#1602#1587#1591
      'GHESTCOUNT='#1578#1593#1583#1575#1583' '#1602#1587#1591
      'MOUNTLY_GHESTAMOUNT='#1580#1605#1593' '#1605#1575#1607#1610#1575#1606#1607' '#1608' '#1602#1587#1591
      'REMAINOFLOAN='#1605#1575#1606#1583#1607' '#1608#1575#1605)
    DataSet = ADOSpSumPayment
    Left = 144
    Top = 125
  end
  object ADOQuery1: TADOQuery
    Connection = dm.YeganehConnection
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      
        'SELECT     Account.AccountTitle, Contact.FatherName, ForcePaymen' +
        't.MatureDate, Account.AccountNo,'
      '                          (SELECT     f.amount'
      '                             FROM         ForcePayment f'
      
        '                             WHERE     f.ForceTypeId = 1 AND f.F' +
        'orcePaymentid = ForcePayment.ForcePaymentid) AS GhestAmount,'
      '                          (SELECT     amount'
      '                             FROM         ForcePayment f'
      
        '                             WHERE     f.ForceTypeId = 2 AND f.F' +
        'orcePaymentid = ForcePayment.ForcePaymentid) AS MountlyAmount, I' +
        'SNULL'
      '                          ((SELECT     SUM(amount)'
      '                              FROM          ForcePayment'
      
        '                              WHERE      ForceTypeID = 1 AND Par' +
        'entID = Loan.LoanID AND paid = 0), 0) AS RemainOfLoan, Loan.Amou' +
        'nt AS TotalLoanAmount, '
      
        '                      dbo.ShamsiDateDiff(ForcePayment.MatureDate' +
        ','#39'1389/04/15'#39') AS Delay, '
      ''
      'dbo.Balance_ByPayTypeID(Loan.AccountID, 2, '#39'1399/12/29'#39') '
      
        '                      AS MonthlyBalance, Loan.PartsBeginDate, Lo' +
        'an.LoanTypeID, LoanType.Period AS GhestPeriod, '
      '                      LoanType.PartNumber AS GHESTcOUNT'
      'FROM         Payment INNER JOIN'
      
        '                      ForcePayment ON Payment.PaymentID = ForceP' +
        'ayment.PaymentID INNER JOIN'
      
        '                      Loan ON ForcePayment.ParentID = Loan.LoanI' +
        'D INNER JOIN'
      
        '                      Account ON Loan.AccountID = Account.Accoun' +
        'tID INNER JOIN'
      
        '                      Contact ON Account.ContactID = Contact.Con' +
        'tactID INNER JOIN'
      
        '                      LoanType ON Loan.LoanTypeID = LoanType.Loa' +
        'nTypeID'
      ''
      'where Payment.documentNo=18')
    Left = 128
    Top = 232
  end
end
