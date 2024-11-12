object DMReport1: TDMReport1
  OldCreateOrder = False
  Left = 250
  Top = 411
  Height = 548
  Width = 892
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
    Left = 464
    Top = 416
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
    Left = 24
    Top = 368
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
    Left = 113
    Top = 368
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
    Left = 202
    Top = 368
  end
  object frxXMLExport1: TfrxXMLExport
    UseFileCache = True
    ShowProgress = True
    Background = True
    Creator = 'FastReport'
    EmptyLines = True
    SuppressPageHeadersFooters = False
    Left = 292
    Top = 368
  end
  object frxRTFExport1: TfrxRTFExport
    UseFileCache = True
    ShowProgress = True
    Wysiwyg = True
    Creator = 'FastReport http://www.fast-report.com'
    SuppressPageHeadersFooters = False
    HeaderFooterMode = hfText
    Left = 381
    Top = 368
  end
  object frxBMPExport1: TfrxBMPExport
    UseFileCache = True
    ShowProgress = True
    Left = 382
    Top = 416
  end
  object frxJPEGExport1: TfrxJPEGExport
    UseFileCache = True
    ShowProgress = True
    Left = 464
    Top = 368
  end
  object frxTIFFExport1: TfrxTIFFExport
    UseFileCache = True
    ShowProgress = True
    Left = 24
    Top = 419
  end
  object frxGIFExport1: TfrxGIFExport
    UseFileCache = True
    ShowProgress = True
    Left = 113
    Top = 419
  end
  object frxSimpleTextExport1: TfrxSimpleTextExport
    UseFileCache = True
    ShowProgress = True
    Frames = False
    EmptyLines = False
    OEMCodepage = False
    Left = 202
    Top = 419
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
    Left = 292
    Top = 419
  end
  object frxRepSpRep_Receipt: TfrxReport
    Version = '4.3'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick]
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = #1662#1610#1588' '#1601#1585#1590
    PrintOptions.PrintOnSheet = 0
    ReportOptions.CreateDate = 39848.480324976900000000
    ReportOptions.LastChange = 39848.533959050920000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      'begin'
      ''
      'end.')
    Left = 48
    Top = 136
    Datasets = <
      item
        DataSet = frxDBSpRep_Receipt
        DataSetName = #1670#1575#1662' '#1585#1587#1610#1583
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
      LeftMargin = 10.000000000000000000
      RightMargin = 10.000000000000000000
      TopMargin = 10.000000000000000000
      BottomMargin = 10.000000000000000000
      object ReportTitle1: TfrxReportTitle
        Height = 56.692950000000000000
        Top = 18.897650000000000000
        Width = 718.110700000000000000
        object Shape1: TfrxShapeView
          Align = baClient
          Width = 718.110700000000000000
          Height = 56.692950000000000000
          Color = 11206655
          Curve = 1
          Shape = skRoundRectangle
        end
        object Memo1: TfrxMemoView
          Left = 306.141930000000000000
          Top = 31.456710000000000000
          Width = 94.488250000000000000
          Height = 22.677180000000000000
          DisplayFormat.DecimalSeparator = '.'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haCenter
          Memo.UTF8 = (
            #1591#167#1591#177#1591#167#1591#166#1592#8225' '#1591#177#1591#179#1592#1657#1591#175)
          ParentFont = False
        end
        object Memo11: TfrxMemoView
          Left = 177.637910000000000000
          Top = 3.000000000000000000
          Width = 351.496290000000000000
          Height = 22.677180000000000000
          DisplayFormat.DecimalSeparator = '.'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haCenter
          Memo.UTF8 = (
            ' . . . . . . . . . . . '#1591#180#1591#177#1593#169#1591#1726)
          ParentFont = False
        end
      end
      object MasterData1: TfrxMasterData
        Height = 245.669450000000000000
        Top = 136.063080000000000000
        Width = 718.110700000000000000
        DataSet = frxDBSpRep_Receipt
        DataSetName = #1670#1575#1662' '#1585#1587#1610#1583
        RowCount = 0
        object Shape2: TfrxShapeView
          Align = baBottom
          Top = 3.779530000000010000
          Width = 718.110700000000000000
          Height = 241.889920000000000000
          Curve = 1
          Shape = skRoundRectangle
        end
        object Memo2: TfrxMemoView
          Left = 33.015770000000000000
          Top = 9.779530000000023000
          Width = 600.945270000000000000
          Height = 18.897650000000000000
          DataField = #1593#1606#1608#1575#1606' '#1585#1587#1610#1583
          DataSet = frxDBSpRep_Receipt
          DataSetName = #1670#1575#1662' '#1585#1587#1610#1583
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8 = (
            '['#1593#8224#1591#167#1592#190' '#1591#177#1591#179#1592#1657#1591#175'."'#1591#185#1592#8224#1592#710#1591#167#1592#8224' '#1591#177#1591#179#1592#1657#1591#175'"]')
          ParentFont = False
        end
        object Memo3: TfrxMemoView
          Left = 641.520100000000000000
          Top = 9.779530000000023000
          Width = 68.031540000000000000
          Height = 18.897650000000000000
          DisplayFormat.DecimalSeparator = '.'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8 = (
            ':'#1591#185#1592#8224#1592#710#1591#167#1592#8224' '#1591#177#1591#179#1592#1657#1591#175)
          ParentFont = False
        end
        object Memo4: TfrxMemoView
          Left = 10.338590000000000000
          Top = 36.236240000000010000
          Width = 699.213050000000000000
          Height = 117.165430000000000000
          DataField = #1605#1578#1606' '#1585#1587#1610#1583
          DataSet = frxDBSpRep_Receipt
          DataSetName = #1670#1575#1662' '#1585#1587#1610#1583
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8 = (
            '['#1593#8224#1591#167#1592#190' '#1591#177#1591#179#1592#1657#1591#175'."'#1592#8230#1591#1726#1592#8224' '#1591#177#1591#179#1592#1657#1591#175'"]')
          ParentFont = False
        end
        object Memo5: TfrxMemoView
          Left = 6.559060000000000000
          Top = 164.740260000000000000
          Width = 634.961040000000000000
          Height = 18.897650000000000000
          DataField = #1578#1608#1590#1610#1581#1575#1578
          DataSet = frxDBSpRep_Receipt
          DataSetName = #1670#1575#1662' '#1585#1587#1610#1583
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8 = (
            '['#1593#8224#1591#167#1592#190' '#1591#177#1591#179#1592#1657#1591#175'."'#1591#1726#1592#710#1591#182#1592#1657#1591#173#1591#167#1591#1726'"]')
          ParentFont = False
        end
        object Memo6: TfrxMemoView
          Left = 649.079160000000000000
          Top = 164.740260000000000000
          Width = 60.472480000000000000
          Height = 18.897650000000000000
          DisplayFormat.DecimalSeparator = '.'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8 = (
            ':'#1591#1726#1592#710#1591#182#1592#1657#1591#173#1591#167#1591#1726)
          ParentFont = False
        end
        object Memo7: TfrxMemoView
          Left = 316.480520000000000000
          Top = 191.196970000000000000
          Width = 264.567100000000000000
          Height = 18.897650000000000000
          DataField = #1606#1575#1605' '#1705#1575#1585#1576#1585' '#1589#1575#1583#1585' '#1705#1606#1606#1583#1607' '#1585#1587#1610#1583
          DataSet = frxDBSpRep_Receipt
          DataSetName = #1670#1575#1662' '#1585#1587#1610#1583
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8 = (
            
              '['#1593#8224#1591#167#1592#190' '#1591#177#1591#179#1592#1657#1591#175'."'#1592#8224#1591#167#1592#8230' '#1593#169#1591#167#1591#177#1591#168#1591#177' '#1591#181#1591#167#1591#175#1591#177' '#1593#169#1592#8224#1592#8224#1591#175#1592#8225' '#1591#177#1591#179#1592#1657#1591#175 +
              '"]')
          ParentFont = False
        end
        object Memo8: TfrxMemoView
          Left = 584.827150000000000000
          Top = 191.196970000000000000
          Width = 124.724490000000000000
          Height = 18.897650000000000000
          DisplayFormat.DecimalSeparator = '.'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8 = (
            ':'#1592#8224#1591#167#1592#8230' '#1593#169#1591#167#1591#177#1591#168#1591#177' '#1591#181#1591#167#1591#175#1591#177' '#1593#169#1592#8224#1592#8224#1591#175#1592#8225' '#1591#177#1591#179#1592#1657#1591#175)
          ParentFont = False
        end
        object Memo9: TfrxMemoView
          Left = 316.480520000000000000
          Top = 213.874150000000000000
          Width = 336.378170000000000000
          Height = 18.897650000000000000
          DataField = #1601#1585#1587#1578#1606#1583#1607
          DataSet = frxDBSpRep_Receipt
          DataSetName = #1670#1575#1662' '#1585#1587#1610#1583
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8 = (
            '['#1593#8224#1591#167#1592#190' '#1591#177#1591#179#1592#1657#1591#175'."'#1592#1662#1591#177#1591#179#1591#1726#1592#8224#1591#175#1592#8225'"]')
          ParentFont = False
        end
        object Memo10: TfrxMemoView
          Left = 660.417750000000000000
          Top = 213.874150000000000000
          Width = 49.133890000000000000
          Height = 18.897650000000000000
          DisplayFormat.DecimalSeparator = '.'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8 = (
            ':'#1592#1662#1591#177#1591#179#1591#1726#1592#8224#1591#175#1592#8225)
          ParentFont = False
        end
        object Memo12: TfrxMemoView
          Left = 207.874150000000000000
          Top = 188.976500000000000000
          Width = 45.354360000000000000
          Height = 18.897650000000000000
          DisplayFormat.DecimalSeparator = '.'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8 = (
            ' :'#1591#167#1592#8230#1591#182#1591#167#1592#1657)
          ParentFont = False
        end
      end
    end
  end
  object frxDBSpRep_Receipt: TfrxDBDataset
    UserName = #1670#1575#1662' '#1585#1587#1610#1583
    CloseDataSource = False
    FieldAliases.Strings = (
      '-ReceiptID=ReceiptID'
      'Title='#1593#1606#1608#1575#1606' '#1585#1587#1610#1583
      'Memo='#1605#1578#1606' '#1585#1587#1610#1583
      'Descript='#1578#1608#1590#1610#1581#1575#1578
      'OrgName='#1601#1585#1587#1578#1606#1583#1607
      'UserName='#1606#1575#1605' '#1705#1575#1585#1576#1585' '#1589#1575#1583#1585' '#1705#1606#1606#1583#1607' '#1585#1587#1610#1583)
    Left = 48
    Top = 88
  end
end
