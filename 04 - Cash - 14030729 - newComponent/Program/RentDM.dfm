object DMRent: TDMRent
  OldCreateOrder = False
  Left = 220
  Top = 113
  Height = 265
  Width = 227
  object frxJPEGExport1: TfrxJPEGExport
    UseFileCache = True
    ShowProgress = True
    Left = 139
    Top = 148
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
    Left = 139
    Top = 148
  end
  object frxBMPExport1: TfrxBMPExport
    UseFileCache = True
    ShowProgress = True
    Left = 139
    Top = 148
  end
  object frxRTFExport1: TfrxRTFExport
    UseFileCache = True
    ShowProgress = True
    Wysiwyg = True
    Creator = 'FastReport http://www.fast-report.com'
    SuppressPageHeadersFooters = False
    HeaderFooterMode = hfText
    Left = 139
    Top = 148
  end
  object frxXMLExport1: TfrxXMLExport
    UseFileCache = True
    ShowProgress = True
    Background = True
    Creator = 'FastReport'
    EmptyLines = True
    SuppressPageHeadersFooters = False
    Left = 139
    Top = 148
  end
  object frxTXTExport1: TfrxTXTExport
    UseFileCache = True
    ShowProgress = True
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
    Left = 139
    Top = 148
  end
  object frxSimpleTextExport1: TfrxSimpleTextExport
    UseFileCache = True
    ShowProgress = True
    Frames = False
    EmptyLines = False
    OEMCodepage = False
    Left = 139
    Top = 148
  end
  object frxXLSExport1: TfrxXLSExport
    UseFileCache = True
    ShowProgress = True
    AsText = False
    Background = True
    FastExport = True
    PageBreaks = True
    EmptyLines = True
    SuppressPageHeadersFooters = False
    Left = 139
    Top = 148
  end
  object frxPDFExport1: TfrxPDFExport
    UseFileCache = True
    ShowProgress = True
    PrintOptimized = False
    Outline = False
    Author = 'FastReport'
    Subject = 'FastReport PDF export'
    Background = False
    Creator = 'FastReport (http://www.fast-report.com)'
    HTMLTags = True
    Left = 139
    Top = 148
  end
  object frxGIFExport1: TfrxGIFExport
    UseFileCache = True
    ShowProgress = True
    Left = 139
    Top = 148
  end
  object frxTIFFExport1: TfrxTIFFExport
    UseFileCache = True
    ShowProgress = True
    Left = 147
    Top = 148
  end
  object QrRepRent: TADOQuery
    Connection = Dm.YeganehConnection
    Parameters = <
      item
        Name = 'RentID'
        Attributes = [paSigned]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = 0
      end>
    SQL.Strings = (
      'Select Rent.* , Letter.IndicatorID , Letter.RegistrationDate'
      'From Rent , Letter'
      'Where (1=1)'
      '  And(RentID = :RentID)'
      '  And(Rent.LetterID = Letter.LetterID)'
      ''
      ''
      '')
    Left = 32
    Top = 16
    object QrRepRentRentID: TAutoIncField
      FieldName = 'RentID'
      ReadOnly = True
    end
    object QrRepRentRenterID: TIntegerField
      FieldName = 'RenterID'
    end
    object QrRepRentLetterID: TIntegerField
      FieldName = 'LetterID'
    end
    object QrRepRentBeginDate: TStringField
      Alignment = taRightJustify
      DisplayLabel = ': '#1578#1575#1585#1610#1582' '#1575#1605#1575#1606#1578
      FieldName = 'BeginDate'
      FixedChar = True
      Size = 10
    end
    object QrRepRentEndDate: TStringField
      Alignment = taRightJustify
      DisplayLabel = ': '#1578#1575#1585#1610#1582' '#1593#1608#1583#1578
      FieldName = 'EndDate'
      FixedChar = True
      Size = 10
    end
    object QrRepRentComment: TWideStringField
      Alignment = taRightJustify
      DisplayLabel = ': '#1578#1608#1590#1610#1581#1575#1578
      DisplayWidth = 100
      FieldName = 'Comment'
      Size = 255
    end
    object QrRepRentMatureDate: TStringField
      Alignment = taRightJustify
      DisplayLabel = ': '#1578#1575#1585#1610#1582' '#1605#1608#1593#1583' '#1578#1581#1608#1610#1604
      FieldName = 'MatureDate'
      FixedChar = True
      Size = 10
    end
    object QrRepRentIndicatorID: TIntegerField
      DisplayLabel = #1588#1605#1575#1585#1607' '#1575#1606#1583#1610#1603#1575#1578#1608#1585' '#1587#1606#1583
      FieldName = 'IndicatorID'
    end
    object QrRepRentRegistrationDate: TStringField
      DisplayLabel = #1578#1575#1585#1610#1582' '#1579#1576#1578' '#1587#1606#1583
      FieldName = 'RegistrationDate'
      FixedChar = True
      Size = 10
    end
  end
  object DSRepRent: TDataSource
    DataSet = QrRepRent
    Left = 32
    Top = 64
  end
  object frxDBRepRent: TfrxDBDataset
    UserName = #1575#1605#1575#1606#1578' '#1583#1607#1610' '#1587#1606#1583
    CloseDataSource = False
    FieldAliases.Strings = (
      'RentID=RentID'
      'RenterID=RenterID'
      'LetterID=LetterID'
      'BeginDate='#1578#1575#1585#1610#1582' '#1575#1605#1575#1606#1578
      'EndDate='#1578#1575#1585#1610#1582' '#1593#1608#1583#1578
      'Comment='#1578#1608#1590#1610#1581#1575#1578
      'MatureDate='#1578#1575#1585#1610#1582' '#1605#1608#1593#1583' '#1578#1581#1608#1610#1604
      'IndicatorID='#1588#1605#1575#1585#1607' '#1575#1606#1583#1610#1603#1575#1578#1608#1585' '#1587#1606#1583
      'RegistrationDate='#1578#1575#1585#1610#1582' '#1579#1576#1578' '#1587#1606#1583)
    DataSet = QrRepRent
    Left = 32
    Top = 112
  end
  object frxRepRent: TfrxReport
    Version = '4.3'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick]
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = #1662#1610#1588' '#1601#1585#1590
    PrintOptions.PrintOnSheet = 0
    ReportOptions.CreateDate = 39848.480324976900000000
    ReportOptions.LastChange = 40458.871976273150000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      'begin'
      ''
      'end.')
    Left = 32
    Top = 160
    Datasets = <
      item
        DataSet = frxDBRepRent
        DataSetName = #1575#1605#1575#1606#1578' '#1583#1607#1610' '#1587#1606#1583
      end>
    Variables = <>
    Style = <>
    object Data: TfrxDataPage
      Height = 1000.000000000000000000
      Width = 1000.000000000000000000
    end
    object Page1: TfrxReportPage
      PaperWidth = 210.000000000000000000
      PaperHeight = 297.000000000000000000
      PaperSize = 9
      LeftMargin = 5.000000000000000000
      RightMargin = 5.000000000000000000
      TopMargin = 5.000000000000000000
      BottomMargin = 5.000000000000000000
      object ReportTitle1: TfrxReportTitle
        Height = 18.897650000000000000
        Top = 18.897650000000000000
        Width = 755.906000000000000000
        object Shape4: TfrxShapeView
          Align = baClient
          Width = 755.906000000000000000
          Height = 18.897650000000000000
          Color = clWhite
        end
        object Memo11: TfrxMemoView
          Left = 179.527675000000000000
          Top = 1.000000000000000000
          Width = 396.850650000000000000
          Height = 15.118107800000000000
          DisplayFormat.DecimalSeparator = '.'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haCenter
          Memo.UTF8 = (
            #1591#177#1591#179#1592#1657#1591#175' '#1591#179#1592#8224#1591#175' '#1591#167#1592#8230#1591#167#1592#8224#1591#1726' '#1591#175#1591#167#1591#175#1592#8225' '#1591#180#1591#175#1592#8225)
          ParentFont = False
        end
      end
      object MasterData1: TfrxMasterData
        Height = 98.267780000000000000
        Top = 98.267780000000000000
        Width = 755.906000000000000000
        DataSet = frxDBRepRent
        DataSetName = #1575#1605#1575#1606#1578' '#1583#1607#1610' '#1587#1606#1583
        PrintIfDetailEmpty = True
        RowCount = 0
        object Shape1: TfrxShapeView
          Align = baClient
          Width = 755.906000000000000000
          Height = 98.267780000000000000
          Color = clWhite
          Curve = 1
          Shape = skRoundRectangle
        end
        object Memo4: TfrxMemoView
          Left = 654.467877670000000000
          Top = 31.133889999999990000
          Width = 60.472480000000000000
          Height = 18.897637800000000000
          DisplayFormat.DecimalSeparator = '.'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8 = (
            ': '#1591#1726#1591#167#1591#177#1592#1657#1591#174' '#1591#167#1592#8230#1591#167#1592#8224#1591#1726)
          ParentFont = False
        end
        object Memo1: TfrxMemoView
          Left = 581.283860000000000000
          Top = 31.133889999999990000
          Width = 68.031496060000000000
          Height = 18.897650000000000000
          DataField = #1578#1575#1585#1610#1582' '#1575#1605#1575#1606#1578
          DataSet = frxDBRepRent
          DataSetName = #1575#1605#1575#1606#1578' '#1583#1607#1610' '#1587#1606#1583
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8 = (
            '['#1591#167#1592#8230#1591#167#1592#8224#1591#1726' '#1591#175#1592#8225#1592#1657' '#1591#179#1592#8224#1591#175'."'#1591#1726#1591#167#1591#177#1592#1657#1591#174' '#1591#167#1592#8230#1591#167#1592#8224#1591#1726'"]')
          ParentFont = False
        end
        object Memo3: TfrxMemoView
          Left = 654.467877670000000000
          Top = 52.311069999999990000
          Width = 83.149660000000000000
          Height = 18.897637800000000000
          DisplayFormat.DecimalSeparator = '.'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8 = (
            ': '#1591#1726#1591#167#1591#177#1592#1657#1591#174' '#1592#8230#1592#710#1591#185#1591#175' '#1591#1726#1591#173#1592#710#1592#1657#1592#8222)
          ParentFont = False
        end
        object Memo5: TfrxMemoView
          Left = 654.467877670000000000
          Top = 73.488250000000010000
          Width = 60.472480000000000000
          Height = 18.897637800000000000
          DisplayFormat.DecimalSeparator = '.'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8 = (
            ': '#1591#1726#1591#167#1591#177#1592#1657#1591#174' '#1591#185#1592#710#1591#175#1591#1726)
          ParentFont = False
        end
        object Memo7: TfrxMemoView
          Left = 581.283860000000000000
          Top = 52.311069999999990000
          Width = 68.031496060000000000
          Height = 18.897650000000000000
          DataField = #1578#1575#1585#1610#1582' '#1605#1608#1593#1583' '#1578#1581#1608#1610#1604
          DataSet = frxDBRepRent
          DataSetName = #1575#1605#1575#1606#1578' '#1583#1607#1610' '#1587#1606#1583
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8 = (
            '['#1591#167#1592#8230#1591#167#1592#8224#1591#1726' '#1591#175#1592#8225#1592#1657' '#1591#179#1592#8224#1591#175'."'#1591#1726#1591#167#1591#177#1592#1657#1591#174' '#1592#8230#1592#710#1591#185#1591#175' '#1591#1726#1591#173#1592#710#1592#1657#1592#8222'"]')
          ParentFont = False
        end
        object Memo8: TfrxMemoView
          Left = 581.283860000000000000
          Top = 73.488250000000010000
          Width = 68.031496060000000000
          Height = 18.897650000000000000
          DataField = #1578#1575#1585#1610#1582' '#1593#1608#1583#1578
          DataSet = frxDBRepRent
          DataSetName = #1575#1605#1575#1606#1578' '#1583#1607#1610' '#1587#1606#1583
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8 = (
            '['#1591#167#1592#8230#1591#167#1592#8224#1591#1726' '#1591#175#1592#8225#1592#1657' '#1591#179#1592#8224#1591#175'."'#1591#1726#1591#167#1591#177#1592#1657#1591#174' '#1591#185#1592#710#1591#175#1591#1726'"]')
          ParentFont = False
        end
        object Memo9: TfrxMemoView
          Left = 197.992270000000000000
          Top = 48.811069999999990000
          Width = 370.393940000000000000
          Height = 45.354360000000000000
          DataField = #1578#1608#1590#1610#1581#1575#1578
          DataSet = frxDBRepRent
          DataSetName = #1575#1605#1575#1606#1578' '#1583#1607#1610' '#1587#1606#1583
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          HAlign = haRight
          Memo.UTF8 = (
            '['#1591#167#1592#8230#1591#167#1592#8224#1591#1726' '#1591#175#1592#8225#1592#1657' '#1591#179#1592#8224#1591#175'."'#1591#1726#1592#710#1591#182#1592#1657#1591#173#1591#167#1591#1726'"]')
          ParentFont = False
        end
        object Memo10: TfrxMemoView
          Left = 515.472790000000000000
          Top = 31.133889999999990000
          Width = 52.913420000000000000
          Height = 15.118120000000000000
          DisplayFormat.DecimalSeparator = '.'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8 = (
            ': '#1591#1726#1592#710#1591#182#1592#1657#1591#173#1591#167#1591#1726)
          ParentFont = False
        end
        object Memo2: TfrxMemoView
          Left = 71.811070000000000000
          Top = 11.338590000000000000
          Width = 60.472480000000000000
          Height = 15.118120000000000000
          DisplayFormat.DecimalSeparator = '.'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            #1591#167#1592#8230#1591#182#1591#167#1592#1657' '#1592#402#1591#167#1591#177#1591#168#1591#177)
          ParentFont = False
        end
        object Memo6: TfrxMemoView
          Left = 578.590910000000000000
          Top = 7.559060000000003000
          Width = 71.811070000000000000
          Height = 18.897650000000000000
          DataField = #1588#1605#1575#1585#1607' '#1575#1606#1583#1610#1603#1575#1578#1608#1585' '#1587#1606#1583
          DataSet = frxDBRepRent
          DataSetName = #1575#1605#1575#1606#1578' '#1583#1607#1610' '#1587#1606#1583
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          HAlign = haCenter
          Memo.UTF8 = (
            
              '['#1591#167#1592#8230#1591#167#1592#8224#1591#1726' '#1591#175#1592#8225#1592#1657' '#1591#179#1592#8224#1591#175'."'#1591#180#1592#8230#1591#167#1591#177#1592#8225' '#1591#167#1592#8224#1591#175#1592#1657#1592#402#1591#167#1591#1726#1592#710#1591#177' '#1591#179#1592#8224#1591#175'"' +
              ']')
          ParentFont = False
        end
        object Memo12: TfrxMemoView
          Left = 654.467877670000000000
          Top = 7.559060000000003000
          Width = 94.488250000000000000
          Height = 18.897637800000000000
          DisplayFormat.DecimalSeparator = '.'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8 = (
            ': '#1591#180#1592#8230#1591#167#1591#177#1592#8225' '#1591#167#1592#8224#1591#175#1592#1657#1592#402#1591#167#1591#1726#1592#710#1591#177' '#1591#179#1592#8224#1591#175)
          ParentFont = False
        end
        object Memo13: TfrxMemoView
          Left = 480.000310000000000000
          Top = 7.559060000000003000
          Width = 75.590600000000000000
          Height = 18.897637800000000000
          DisplayFormat.DecimalSeparator = '.'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8 = (
            ': '#1591#1726#1591#167#1591#177#1592#1657#1591#174' '#1591#171#1591#168#1591#1726' '#1591#179#1592#8224#1591#175)
          ParentFont = False
        end
        object Memo14: TfrxMemoView
          Left = 408.189240000000000000
          Top = 7.559060000000003000
          Width = 68.031496060000000000
          Height = 18.897650000000000000
          DataField = #1578#1575#1585#1610#1582' '#1579#1576#1578' '#1587#1606#1583
          DataSet = frxDBRepRent
          DataSetName = #1575#1605#1575#1606#1578' '#1583#1607#1610' '#1587#1606#1583
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            '['#1591#167#1592#8230#1591#167#1592#8224#1591#1726' '#1591#175#1592#8225#1592#1657' '#1591#179#1592#8224#1591#175'."'#1591#1726#1591#167#1591#177#1592#1657#1591#174' '#1591#171#1591#168#1591#1726' '#1591#179#1592#8224#1591#175'"]')
          ParentFont = False
        end
      end
    end
  end
end
