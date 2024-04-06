object DMReports: TDMReports
  OldCreateOrder = False
  Left = 250
  Top = 115
  Height = 450
  Width = 552
  object frxJPEGExport1: TfrxJPEGExport
    UseFileCache = True
    ShowProgress = True
    Left = 163
    Top = 172
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
    Left = 297
    Top = 200
  end
  object frxBMPExport1: TfrxBMPExport
    UseFileCache = True
    ShowProgress = True
    Left = 413
    Top = 192
  end
  object frxRTFExport1: TfrxRTFExport
    UseFileCache = True
    ShowProgress = True
    Wysiwyg = True
    Creator = 'FastReport http://www.fast-report.com'
    SuppressPageHeadersFooters = False
    HeaderFooterMode = hfText
    Left = 165
    Top = 236
  end
  object frxXMLExport1: TfrxXMLExport
    UseFileCache = True
    ShowProgress = True
    Background = True
    Creator = 'FastReport'
    EmptyLines = True
    SuppressPageHeadersFooters = False
    Left = 219
    Top = 232
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
    Left = 335
    Top = 240
  end
  object frxSimpleTextExport1: TfrxSimpleTextExport
    UseFileCache = True
    ShowProgress = True
    Frames = False
    EmptyLines = False
    OEMCodepage = False
    Left = 81
    Top = 168
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
    Left = 245
    Top = 120
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
    Left = 231
    Top = 40
  end
  object frxGIFExport1: TfrxGIFExport
    UseFileCache = True
    ShowProgress = True
    Left = 167
    Top = 84
  end
  object frxTIFFExport1: TfrxTIFFExport
    UseFileCache = True
    ShowProgress = True
    Left = 225
    Top = 84
  end
  object QrLetter: TADOQuery
    Connection = Dm.YeganehConnection
    AfterScroll = QrLetterAfterScroll
    Parameters = <
      item
        Name = 'SecretariatID'
        DataType = ftInteger
        Size = -1
        Value = 0
      end
      item
        Name = 'FromIndID'
        DataType = ftInteger
        Size = -1
        Value = 0
      end
      item
        Name = 'ToIndID'
        DataType = ftInteger
        Size = -1
        Value = 0
      end>
    SQL.Strings = (
      
        'Select LetterID , RegistrationDate , IndicatorID , MYear , Incom' +
        'mingdate , IncommingNO , Memo'
      'From Letter'
      'Where( SecretariatID = :SecretariatID )'
      '  And( IndicatorID Between :FromIndID And :ToIndID )')
    Left = 24
    Top = 16
    object QrLetterLetterID: TAutoIncField
      FieldName = 'LetterID'
      ReadOnly = True
    end
    object QrLetterRegistrationDate: TStringField
      DisplayLabel = #1578#1575#1585#1610#1582' '#1579#1576#1578
      FieldName = 'RegistrationDate'
      FixedChar = True
      Size = 10
    end
    object QrLetterIndicatorID: TIntegerField
      DisplayLabel = #1588#1605#1575#1585#1607' '#1575#1606#1583#1610#1603#1575#1578#1608#1585
      FieldName = 'IndicatorID'
    end
    object QrLetterMYear: TWordField
      DisplayLabel = #1587#1575#1604
      FieldName = 'MYear'
    end
    object QrLetterIncommingdate: TWideStringField
      DisplayLabel = #1578#1575#1585#1610#1582' '#1587#1606#1583
      FieldName = 'Incommingdate'
      Size = 10
    end
    object QrLetterIncommingNO: TWideStringField
      DisplayLabel = #1588#1605#1575#1585#1607' '#1587#1606#1583
      FieldName = 'IncommingNO'
      Size = 50
    end
    object QrLetterMemo: TWideStringField
      DisplayLabel = #1582#1604#1575#1589#1607' '#1587#1606#1583
      DisplayWidth = 100
      FieldName = 'Memo'
      Size = 2000
    end
  end
  object QrListItems: TADOQuery
    Connection = Dm.YeganehConnection
    Parameters = <
      item
        Name = 'UsersID'
        DataType = ftInteger
        Size = -1
        Value = 0
      end
      item
        Name = 'LetterID'
        DataType = ftInteger
        Size = -1
        Value = 0
      end>
    SQL.Strings = (
      
        'Select Count(LI.ListItemsID)as ListCount , (Select Title from Li' +
        'stItems Where(ListItemsID = LI.ListItemsID))as Title'
      'from ListItems LI , LetterData LD'
      'Where(UsersID = :UsersID )'
      'And(LI.ListID = 8)'
      'And(LD.LetterID = :LetterID )'
      'And(LI.ListItemsID = LD.ListItemsID)'
      'Group By LI.ListItemsID')
    Left = 100
    Top = 16
    object QrListItemsListCount: TIntegerField
      FieldName = 'ListCount'
      ReadOnly = True
    end
    object QrListItemsTitle: TWideStringField
      FieldName = 'Title'
      ReadOnly = True
      Size = 50
    end
  end
  object QrSrchLetter: TADOQuery
    Connection = Dm.YeganehConnection
    Parameters = <>
    SQL.Strings = (
      'Select *'
      'From Letter'
      'Where (1=1)')
    Left = 176
    Top = 16
    object QrSrchLetterLetterID: TAutoIncField
      FieldName = 'LetterID'
      ReadOnly = True
    end
    object QrSrchLetterRegistrationDate: TStringField
      Tag = 1
      DisplayLabel = #1578#1575#1585#1610#1582' '#1579#1576#1578
      FieldName = 'RegistrationDate'
      FixedChar = True
      Size = 10
    end
    object QrSrchLetterIndicatorID: TIntegerField
      Tag = 1
      DisplayLabel = #1575#1610#1606#1583#1610#1603#1575#1578#1608#1585
      FieldName = 'IndicatorID'
    end
    object QrSrchLetterMYear: TWordField
      Tag = 1
      DisplayLabel = #1587#1575#1604
      DisplayWidth = 5
      FieldName = 'MYear'
    end
    object QrSrchLetterIncommingdate: TWideStringField
      Tag = 1
      DisplayLabel = #1578#1575#1585#1610#1582' '#1587#1606#1583
      FieldName = 'Incommingdate'
      Size = 10
    end
    object QrSrchLetterIncommingNO: TWideStringField
      Tag = 1
      DisplayLabel = #1588#1605#1575#1585#1607' '#1587#1606#1583
      DisplayWidth = 15
      FieldName = 'IncommingNO'
      Size = 50
    end
    object QrSrchLetterMemo: TWideStringField
      Tag = 1
      DisplayLabel = #1582#1604#1575#1589#1607' '#1587#1606#1583
      DisplayWidth = 25
      FieldName = 'Memo'
      Size = 2000
    end
  end
  object DSLetter: TDataSource
    DataSet = QrLetter
    Left = 24
    Top = 64
  end
  object DSListItems: TDataSource
    DataSet = QrListItems
    Left = 100
    Top = 64
  end
  object frxDBLetter: TfrxDBDataset
    UserName = #1605#1588#1582#1589#1575#1578' '#1587#1606#1583
    CloseDataSource = False
    FieldAliases.Strings = (
      'RegistrationDate='#1578#1575#1585#1610#1582' '#1579#1576#1578
      'IndicatorID='#1588#1605#1575#1585#1607' '#1575#1606#1583#1610#1603#1575#1578#1608#1585
      'MYear='#1587#1575#1604
      'Incommingdate='#1578#1575#1585#1610#1582' '#1587#1606#1583
      'IncommingNO='#1588#1605#1575#1585#1607' '#1587#1606#1583
      'Memo='#1582#1604#1575#1589#1607' '#1587#1606#1583)
    DataSet = QrLetter
    Left = 24
    Top = 112
  end
  object frxRepLetter: TfrxReport
    Version = '4.3'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick]
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = #1662#1610#1588' '#1601#1585#1590
    PrintOptions.PrintOnSheet = 0
    ReportOptions.CreateDate = 39848.480324976900000000
    ReportOptions.LastChange = 39988.504900706000000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      'begin'
      ''
      'end.')
    Left = 24
    Top = 160
    Datasets = <
      item
        DataSet = frxDBListItems
        DataSetName = #1605#1588#1582#1589#1575#1578' '#1578#1589#1575#1608#1610#1585
      end
      item
        DataSet = frxDBLetter
        DataSetName = #1605#1588#1582#1589#1575#1578' '#1587#1606#1583
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
          Left = 216.341373330000000000
          Top = 22.790043330000000000
          Width = 352.540816670000000000
          Height = 18.897637800000000000
          DisplayFormat.DecimalSeparator = '.'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haCenter
          Memo.UTF8 = (
            #1593#175#1591#178#1591#167#1591#177#1591#180' '#1593#175#1592#1657#1591#177#1592#1657' '#1591#167#1591#178' '#1592#1662#1591#177#1592#8230' '#1591#1726#1591#181#1591#167#1592#710#1592#1657#1591#177)
          ParentFont = False
        end
        object Memo11: TfrxMemoView
          Left = 216.971243330000000000
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
            ' . . . . . . . . . . . '#1591#180#1591#177#1593#169#1591#1726)
          ParentFont = False
        end
      end
      object MasterData1: TfrxMasterData
        Height = 56.575484330000000000
        Top = 124.724490000000000000
        Width = 755.906000000000000000
        DataSet = frxDBLetter
        DataSetName = #1605#1588#1582#1589#1575#1578' '#1587#1606#1583
        PrintIfDetailEmpty = True
        RowCount = 0
        object Shape1: TfrxShapeView
          Align = baBottom
          Top = 2.794113400000000000
          Width = 755.728560080000000000
          Height = 53.781370930000000000
          Color = 15329769
          Curve = 1
          Shape = skRoundRectangle
        end
        object Memo3: TfrxMemoView
          Left = 605.426356580000000000
          Top = 8.215723650000001000
          Width = 52.238347060000000000
          Height = 18.897650000000000000
          DataField = #1588#1605#1575#1585#1607' '#1575#1606#1583#1610#1603#1575#1578#1608#1585
          DataSet = frxDBLetter
          DataSetName = #1605#1588#1582#1589#1575#1578' '#1587#1606#1583
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8 = (
            '['#1592#8230#1591#180#1591#174#1591#181#1591#167#1591#1726' '#1591#179#1592#8224#1591#175'."'#1591#180#1592#8230#1591#167#1591#177#1592#8225' '#1591#167#1592#8224#1591#175#1592#1657#1592#402#1591#167#1591#1726#1592#710#1591#177'"]')
          ParentFont = False
        end
        object Memo4: TfrxMemoView
          Left = 662.790697670000000000
          Top = 7.922724810000005000
          Width = 79.370130000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8 = (
            #1591#180#1592#8230#1591#167#1591#177#1592#8225' '#1591#167#1592#8224#1591#175#1592#1657#1592#402#1591#167#1591#1726#1592#710#1591#177)
          ParentFont = False
        end
        object Memo5: TfrxMemoView
          Left = 248.837209300000000000
          Top = 7.440529840000010000
          Width = 79.370130000000000000
          Height = 18.897650000000000000
          DataField = #1578#1575#1585#1610#1582' '#1579#1576#1578
          DataSet = frxDBLetter
          DataSetName = #1605#1588#1582#1589#1575#1578' '#1587#1606#1583
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8 = (
            '['#1592#8230#1591#180#1591#174#1591#181#1591#167#1591#1726' '#1591#179#1592#8224#1591#175'."'#1591#1726#1591#167#1591#177#1592#1657#1591#174' '#1591#171#1591#168#1591#1726'"]')
          ParentFont = False
        end
        object Memo7: TfrxMemoView
          Left = 334.108527130000000000
          Top = 7.147530999999986000
          Width = 51.463153260000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8 = (
            #1591#1726#1591#167#1591#177#1592#1657#1591#174' '#1591#171#1591#168#1591#1726)
          ParentFont = False
        end
        object Memo8: TfrxMemoView
          Left = 13.953488370000000000
          Top = 8.215723639999994000
          Width = 28.207339300000000000
          Height = 18.897650000000000000
          DataField = #1587#1575#1604
          DataSet = frxDBLetter
          DataSetName = #1605#1588#1582#1589#1575#1578' '#1587#1606#1583
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8 = (
            '['#1592#8230#1591#180#1591#174#1591#181#1591#167#1591#1726' '#1591#179#1592#8224#1591#175'."'#1591#179#1591#167#1592#8222'"]')
          ParentFont = False
        end
        object Memo9: TfrxMemoView
          Left = 44.961240320000000000
          Top = 7.147530999999986000
          Width = 25.881757900000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8 = (
            #1591#179#1591#167#1592#8222)
          ParentFont = False
        end
        object Memo10: TfrxMemoView
          Left = 79.069767440000000000
          Top = 7.440529830000003000
          Width = 79.370130000000000000
          Height = 18.897650000000000000
          DataField = #1578#1575#1585#1610#1582' '#1587#1606#1583
          DataSet = frxDBLetter
          DataSetName = #1605#1588#1582#1589#1575#1578' '#1587#1606#1583
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8 = (
            '['#1592#8230#1591#180#1591#174#1591#181#1591#167#1591#1726' '#1591#179#1592#8224#1591#175'."'#1591#1726#1591#167#1591#177#1592#1657#1591#174' '#1591#179#1592#8224#1591#175'"]')
          ParentFont = False
        end
        object Memo12: TfrxMemoView
          Left = 162.015503870000000000
          Top = 7.147530999999986000
          Width = 49.912765660000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8 = (
            #1591#1726#1591#167#1591#177#1592#1657#1591#174' '#1591#179#1592#8224#1591#175)
          ParentFont = False
        end
        object Memo13: TfrxMemoView
          Left = 397.674418610000000000
          Top = 8.215723639999994000
          Width = 135.513900930000000000
          Height = 18.897650000000000000
          DataField = #1588#1605#1575#1585#1607' '#1587#1606#1583
          DataSet = frxDBLetter
          DataSetName = #1605#1588#1582#1589#1575#1578' '#1587#1606#1583
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8 = (
            '['#1592#8230#1591#180#1591#174#1591#181#1591#167#1591#1726' '#1591#179#1592#8224#1591#175'."'#1591#180#1592#8230#1591#167#1591#177#1592#8225' '#1591#179#1592#8224#1591#175'"]')
          ParentFont = False
        end
        object Memo14: TfrxMemoView
          Left = 539.534883730000000000
          Top = 7.922724799999997000
          Width = 54.893745890000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8 = (
            #1591#180#1592#8230#1591#167#1591#177#1592#8225' '#1591#179#1592#8224#1591#175)
          ParentFont = False
        end
        object Memo15: TfrxMemoView
          Left = 14.728682170000000000
          Top = 33.021925189999990000
          Width = 662.500670080000000000
          Height = 18.897650000000000000
          DataField = #1582#1604#1575#1589#1607' '#1587#1606#1583
          DataSet = frxDBLetter
          DataSetName = #1605#1588#1582#1589#1575#1578' '#1587#1606#1583
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8 = (
            '['#1592#8230#1591#180#1591#174#1591#181#1591#167#1591#1726' '#1591#179#1592#8224#1591#175'."'#1591#174#1592#8222#1591#167#1591#181#1592#8225' '#1591#179#1592#8224#1591#175'"]')
          ParentFont = False
        end
        object Memo16: TfrxMemoView
          Left = 681.395348830000000000
          Top = 32.728926349999990000
          Width = 59.399894880000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8 = (
            #1591#174#1592#8222#1591#167#1591#181#1592#8225' '#1591#179#1592#8224#1591#175)
          ParentFont = False
        end
      end
      object Header1: TfrxHeader
        Height = 24.167903330000000000
        Top = 204.094620000000000000
        Width = 755.906000000000000000
        object Shape3: TfrxShapeView
          Align = baClient
          Width = 755.906000000000000000
          Height = 24.167903330000000000
          Curve = 1
          Shape = skRoundRectangle
        end
        object Memo18: TfrxMemoView
          Left = 682.170542640000000000
          Top = 3.446030699999966000
          Width = 66.521652870000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8 = (
            #1591#185#1592#8224#1592#710#1591#167#1592#8224' '#1591#1726#1591#181#1591#167#1592#710#1592#1657#1591#177)
          ParentFont = False
        end
        object Memo20: TfrxMemoView
          Left = 496.124031010000000000
          Top = 3.446030699999966000
          Width = 64.641447830000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8 = (
            #1591#1726#1591#185#1591#175#1591#167#1591#175' '#1591#1726#1591#181#1591#167#1592#710#1592#1657#1591#177)
          ParentFont = False
        end
      end
      object PageFooter1: TfrxPageFooter
        Height = 22.677180000000000000
        Top = 332.598640000000000000
        Width = 755.906000000000000000
        object Memo2: TfrxMemoView
          Left = 585.703773330000000000
          Top = 2.350340000000017000
          Width = 166.460730000000000000
          Height = 18.897650000000000000
          DisplayFormat.DecimalSeparator = '.'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8 = (
            
              ' :  '#1591#180#1591#177#1593#169#1591#1726' '#1592#1657#1593#175#1591#167#1592#8224#1592#8225' - '#1592#8224#1591#177#1592#8230' '#1591#167#1592#1662#1591#178#1591#167#1591#177' '#1591#168#1591#167#1594#338#1593#175#1591#167#1592#8224#1594#338' '#1591#167#1591#179#1592 +
              #8224#1591#167#1591#175)
          ParentFont = False
        end
        object Memo6: TfrxMemoView
          Left = 527.500000000000000000
          Top = 2.137600000000077000
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
            '22469490')
          ParentFont = False
        end
      end
      object DetailData1: TfrxDetailData
        Height = 24.227567600000000000
        Top = 249.448980000000000000
        Width = 755.906000000000000000
        DataSet = frxDBListItems
        DataSetName = #1605#1588#1582#1589#1575#1578' '#1578#1589#1575#1608#1610#1585
        RowCount = 0
        object Shape2: TfrxShapeView
          Align = baClient
          Width = 755.906000000000000000
          Height = 24.227567600000000000
          Shape = skRoundRectangle
        end
        object Memo17: TfrxMemoView
          Left = 579.069767450000000000
          Top = 2.277717209999992000
          Width = 169.622428060000000000
          Height = 18.897650000000000000
          DataField = #1593#1606#1608#1575#1606' '#1578#1589#1575#1608#1610#1585
          DataSet = frxDBListItems
          DataSetName = #1605#1588#1582#1589#1575#1578' '#1578#1589#1575#1608#1610#1585
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8 = (
            '['#1592#8230#1591#180#1591#174#1591#181#1591#167#1591#1726' '#1591#1726#1591#181#1591#167#1592#710#1592#1657#1591#177'."'#1591#185#1592#8224#1592#710#1591#167#1592#8224' '#1591#1726#1591#181#1591#167#1592#710#1592#1657#1591#177'"]')
          ParentFont = False
        end
        object Memo19: TfrxMemoView
          Left = 504.651162790000000000
          Top = 2.277717209999992000
          Width = 56.114316050000000000
          Height = 18.897650000000000000
          DataField = #1578#1593#1583#1575#1583' '#1578#1589#1575#1608#1610#1585
          DataSet = frxDBListItems
          DataSetName = #1605#1588#1582#1589#1575#1578' '#1578#1589#1575#1608#1610#1585
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8 = (
            '['#1592#8230#1591#180#1591#174#1591#181#1591#167#1591#1726' '#1591#1726#1591#181#1591#167#1592#710#1592#1657#1591#177'."'#1591#1726#1591#185#1591#175#1591#167#1591#175' '#1591#1726#1591#181#1591#167#1592#710#1592#1657#1591#177'"]')
          ParentFont = False
        end
      end
    end
  end
  object frxDBListItems: TfrxDBDataset
    UserName = #1605#1588#1582#1589#1575#1578' '#1578#1589#1575#1608#1610#1585
    CloseDataSource = False
    FieldAliases.Strings = (
      'ListCount='#1578#1593#1583#1575#1583' '#1578#1589#1575#1608#1610#1585
      'Title='#1593#1606#1608#1575#1606' '#1578#1589#1575#1608#1610#1585)
    DataSet = QrListItems
    Left = 100
    Top = 112
  end
end
