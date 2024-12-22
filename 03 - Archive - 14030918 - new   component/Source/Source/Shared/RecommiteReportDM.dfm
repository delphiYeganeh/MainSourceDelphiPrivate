object DMRecommiteReport: TDMRecommiteReport
  OldCreateOrder = False
  Left = 641
  Top = 206
  Height = 489
  Width = 557
  object QrOrg: TADOQuery
    Connection = Dm.YeganehConnection
    Parameters = <>
    SQL.Strings = (
      'Select ID , Title , ResponsibleStaffer'
      'From FromOrganizations'
      'Where (1=1)')
    Left = 158
    Top = 16
    object QrOrgID: TAutoIncField
      FieldName = 'ID'
      ReadOnly = True
    end
    object QrOrgTitle: TWideStringField
      Tag = 1
      DisplayLabel = #1593#1606#1608#1575#1606' '#1587#1575#1586#1605#1575#1606
      DisplayWidth = 30
      FieldName = 'Title'
      Size = 100
    end
    object QrOrgResponsibleStaffer: TWideStringField
      Tag = 1
      DisplayLabel = #1606#1575#1605' '#1605#1587#1574#1608#1604
      DisplayWidth = 30
      FieldName = 'ResponsibleStaffer'
      Size = 50
    end
  end
  object DSOrg: TDataSource
    DataSet = QrOrg
    Left = 158
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
    Left = 48
    Top = 248
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
    Left = 57
    Top = 240
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
    Left = 130
    Top = 328
  end
  object frxXMLExport1: TfrxXMLExport
    UseFileCache = True
    ShowProgress = True
    OverwritePrompt = False
    Background = True
    Creator = 'FastReport'
    EmptyLines = True
    SuppressPageHeadersFooters = False
    Left = 316
    Top = 176
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
    Left = 165
    Top = 232
  end
  object frxBMPExport1: TfrxBMPExport
    UseFileCache = True
    ShowProgress = True
    OverwritePrompt = False
    Left = 334
    Top = 296
  end
  object frxJPEGExport1: TfrxJPEGExport
    UseFileCache = True
    ShowProgress = True
    OverwritePrompt = False
    Left = 248
    Top = 344
  end
  object frxTIFFExport1: TfrxTIFFExport
    UseFileCache = True
    ShowProgress = True
    OverwritePrompt = False
    Left = 56
    Top = 320
  end
  object frxGIFExport1: TfrxGIFExport
    UseFileCache = True
    ShowProgress = True
    OverwritePrompt = False
    Left = 177
    Top = 280
  end
  object frxSimpleTextExport1: TfrxSimpleTextExport
    UseFileCache = True
    ShowProgress = True
    OverwritePrompt = False
    Frames = False
    EmptyLines = False
    OEMCodepage = False
    Left = 226
    Top = 176
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
    Left = 236
    Top = 224
  end
  object frxDBRecommite_report: TfrxDBDataset
    UserName = #1711#1586#1575#1585#1588#1610' '#1575#1586' '#1575#1602#1583#1575#1605#1575#1578' '#1608' '#1575#1585#1580#1575#1593#1575#1578
    CloseDataSource = False
    FieldAliases.Strings = (
      'LetterID=LetterID'
      'IndicatorID='#1588' '#1575#1606#1583#1610#1705#1575#1578#1608#1585
      'IncommingDate='#1578#1575#1585#1610#1582' '#1575#1585#1580#1575#1593
      'Memo='#1605#1590#1605#1608#1606' '#1606#1575#1605#1607
      'RetroactionNo='#1593#1591#1601
      'RegistrationDate='#1578#1575#1585#1610#1582' '#1579#1576#1578' '#1606#1575#1605#1607
      'FollowLetterNo='#1662#1610#1585#1608
      'ToStaffer='#1588#1582#1589' '#1591#1585#1601' '#1605#1705#1575#1578#1576#1607
      'SenderTitle='#1601#1585#1587#1578#1606#1583#1607
      'DeliverTitle='#1711#1610#1585#1606#1583#1607
      'LetterTypeTitle='#1606#1608#1593' '#1606#1575#1605#1607
      'LetterRecommites='#1575#1585#1580#1575#1593#1575#1578' '#1606#1575#1605#1607
      'Paraph='#1605#1578#1606' '#1575#1585#1580#1575#1593
      'RecommiteDate='#1578#1575#1585#1610#1582' '#1575#1585#1580#1575#1593'1'
      'Proceeded=Proceeded'
      'ProceedDate='#1578#1575#1585#1610#1582' '#1575#1602#1583#1575#1605
      'RecommitTypeTitle=RecommitTypeTitle'
      'RecommiterTitle='#1575#1585#1580#1575#1593' '#1583#1607#1606#1583#1607
      'Recommited='#1575#1585#1580#1575#1593' '#1588#1608#1606#1583#1607
      'ViewDate='#1578#1575#1585#1610#1582' '#1582#1608#1575#1606#1583#1606
      'StaffMemo=StaffMemo'
      'DeadlineDays='#1578#1593#1583#1575#1583' '#1585#1608#1586' '#1578#1575#1582#1610#1585
      'ProgressDays='#1578#1593#1583#1575#1583' '#1585#1608#1586' '#1575#1602#1583#1575#1605
      'DeadLineDate='#1605#1607#1604#1578' '#1575#1602#1583#1575#1605
      'ActionTypeTitle='#1606#1608#1593' '#1575#1602#1583#1575#1605
      'IncommingNo=IncommingNo'
      'SecTitle=SecTitle')
    DataSet = sp_recommite_report
    Left = 54
    Top = 120
  end
  object sp_recommite_report: TADOStoredProc
    Connection = Dm.YeganehConnection
    CursorType = ctStatic
    ProcedureName = 'sp_recommite_report_Box'
    Parameters = <
      item
        Name = '@SecretariatID'
        DataType = ftInteger
        Value = Null
      end
      item
        Name = '@myear'
        DataType = ftInteger
        Value = Null
      end
      item
        Name = '@where'
        DataType = ftString
        Value = Null
      end
      item
        Name = '@RecommitFlag'
        DataType = ftInteger
        Value = Null
      end
      item
        Name = '@UserID'
        DataType = ftInteger
        Value = Null
      end
      item
        Name = '@LettrTypeID'
        DataType = ftInteger
        Value = Null
      end
      item
        Name = '@falg'
        DataType = ftInteger
        Value = 0
      end>
    Left = 54
    Top = 16
    object sp_recommite_reportLetterID: TAutoIncField
      FieldName = 'LetterID'
      ReadOnly = True
    end
    object sp_recommite_reportIndicatorID: TIntegerField
      DisplayLabel = #1588#1605#1575#1585#1607' '#1575#1606#1583#1610#1705#1575#1578#1608#1585
      FieldName = 'IndicatorID'
    end
    object sp_recommite_reportIncommingDate: TWideStringField
      Alignment = taRightJustify
      FieldName = 'IncommingDate'
      Size = 10
    end
    object sp_recommite_reportMemo: TWideStringField
      Alignment = taRightJustify
      FieldName = 'Memo'
      Size = 2000
    end
    object sp_recommite_reportRetroactionNo: TWideStringField
      Alignment = taRightJustify
      FieldName = 'RetroactionNo'
      Size = 50
    end
    object sp_recommite_reportRegistrationDate: TStringField
      Alignment = taRightJustify
      FieldName = 'RegistrationDate'
      FixedChar = True
      Size = 10
    end
    object sp_recommite_reportFollowLetterNo: TWideStringField
      Alignment = taRightJustify
      FieldName = 'FollowLetterNo'
      Size = 50
    end
    object sp_recommite_reportToStaffer: TWideStringField
      Alignment = taRightJustify
      FieldName = 'ToStaffer'
      Size = 50
    end
    object sp_recommite_reportSenderTitle: TWideStringField
      Alignment = taRightJustify
      FieldName = 'SenderTitle'
      Size = 100
    end
    object sp_recommite_reportDeliverTitle: TWideStringField
      Alignment = taRightJustify
      FieldName = 'DeliverTitle'
      Size = 100
    end
    object sp_recommite_reportLetterTypeTitle: TWideStringField
      Alignment = taRightJustify
      FieldName = 'LetterTypeTitle'
      Size = 50
    end
    object sp_recommite_reportLetterRecommites: TWideStringField
      Alignment = taRightJustify
      FieldName = 'LetterRecommites'
      Size = 500
    end
    object sp_recommite_reportParaph: TWideStringField
      Alignment = taRightJustify
      FieldName = 'Paraph'
      Size = 500
    end
    object sp_recommite_reportRecommiteDate: TStringField
      Alignment = taRightJustify
      FieldName = 'RecommiteDate'
      Size = 10
    end
    object sp_recommite_reportProceeded: TBooleanField
      Alignment = taRightJustify
      FieldName = 'Proceeded'
    end
    object sp_recommite_reportProceedDate: TStringField
      Alignment = taRightJustify
      FieldName = 'ProceedDate'
      Size = 10
    end
    object sp_recommite_reportRecommitTypeTitle: TWideStringField
      Alignment = taRightJustify
      FieldName = 'RecommitTypeTitle'
      Size = 50
    end
    object sp_recommite_reportRecommiterTitle: TWideStringField
      Alignment = taRightJustify
      FieldName = 'RecommiterTitle'
      ReadOnly = True
      Size = 100
    end
    object sp_recommite_reportRecommited: TWideStringField
      Alignment = taRightJustify
      FieldName = 'Recommited'
      Size = 100
    end
    object sp_recommite_reportViewDate: TStringField
      Alignment = taRightJustify
      FieldName = 'ViewDate'
      FixedChar = True
      Size = 10
    end
    object sp_recommite_reportStaffMemo: TWideStringField
      Alignment = taRightJustify
      FieldName = 'StaffMemo'
      Size = 255
    end
    object sp_recommite_reportDeadlineDays: TIntegerField
      FieldName = 'DeadlineDays'
      ReadOnly = True
    end
    object sp_recommite_reportProgressDays: TIntegerField
      FieldName = 'ProgressDays'
      ReadOnly = True
    end
    object sp_recommite_reportDeadLineDate: TStringField
      Alignment = taRightJustify
      FieldName = 'DeadLineDate'
      FixedChar = True
      Size = 10
    end
    object sp_recommite_reportActionTypeTitle: TWideStringField
      Alignment = taRightJustify
      FieldName = 'ActionTypeTitle'
      Size = 50
    end
    object sp_recommite_reportIncommingNo: TWideStringField
      FieldName = 'IncommingNo'
      Size = 50
    end
    object sp_recommite_reportSecTitle: TWideStringField
      FieldName = 'SecTitle'
      Size = 50
    end
  end
  object DS_recommite_report: TDataSource
    DataSet = sp_recommite_report
    Left = 54
    Top = 64
  end
  object frxRepRecommite_report: TfrxReport
    Version = '4.5'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick]
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = #1662#1610#1588' '#1601#1585#1590
    PrintOptions.PrintOnSheet = 0
    ReportOptions.CreateDate = 39848.480324976900000000
    ReportOptions.LastChange = 42221.501509247700000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      'begin'
      ''
      'end.')
    Left = 54
    Top = 168
    Datasets = <
      item
        DataSet = frxDBRecommite_report
        DataSetName = #1711#1586#1575#1585#1588#1610' '#1575#1586' '#1575#1602#1583#1575#1605#1575#1578' '#1608' '#1575#1585#1580#1575#1593#1575#1578
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
            #1593#175#1591#178#1591#167#1591#177#1591#180#1592#1657' '#1591#167#1591#178' '#1591#167#1592#8218#1591#175#1591#167#1592#8230#1591#167#1591#1726' '#1592#710' '#1591#167#1591#177#1591#172#1591#167#1591#185#1591#167#1591#1726)
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
        Height = 27.485466670000000000
        Top = 170.078850000000000000
        Width = 755.906000000000000000
        DataSet = frxDBRecommite_report
        DataSetName = #1711#1586#1575#1585#1588#1610' '#1575#1586' '#1575#1602#1583#1575#1605#1575#1578' '#1608' '#1575#1585#1580#1575#1593#1575#1578
        RowCount = 0
        object Line3: TfrxLineView
          Left = 492.500000000000000000
          Top = 0.195423330000011000
          Height = 26.456710000000000000
          Frame.Typ = [ftLeft]
        end
        object Line1: TfrxLineView
          Left = 568.000000000000000000
          Top = 0.362089999999995000
          Height = 26.456710000000000000
          Frame.Typ = [ftLeft]
        end
        object Shape2: TfrxShapeView
          Align = baClient
          Width = 755.906000000000000000
          Height = 27.485466670000000000
          Curve = 1
          Shape = skRoundRectangle
        end
        object Line6: TfrxLineView
          Left = 189.333333330000000000
          Top = 1.028756660000000000
          Height = 26.456710000000000000
          Frame.Typ = [ftLeft]
        end
        object Line4: TfrxLineView
          Left = 416.500000000000000000
          Top = 0.195423329999983000
          Height = 26.456710000000000000
          Frame.Typ = [ftLeft]
        end
        object Line2: TfrxLineView
          Left = 696.579160000000000000
          Top = 0.333333330000016000
          Height = 26.456710000000000000
          Frame.Typ = [ftLeft]
        end
        object Line5: TfrxLineView
          Left = 337.333333330000000000
          Top = 1.028756670000010000
          Height = 26.456710000000000000
          Frame.Typ = [ftLeft]
        end
        object Line7: TfrxLineView
          Left = 110.000000000000000000
          Top = 0.362090000000023000
          Height = 26.456710000000000000
          Frame.Typ = [ftLeft]
        end
        object Memo3: TfrxMemoView
          Left = 699.149970000000000000
          Top = 2.585343330000000000
          Width = 52.913420000000000000
          Height = 20.397650000000000000
          DataField = #1588' '#1575#1606#1583#1610#1705#1575#1578#1608#1585
          DataSet = frxDBRecommite_report
          DataSetName = #1711#1586#1575#1585#1588#1610' '#1575#1586' '#1575#1602#1583#1575#1605#1575#1578' '#1608' '#1575#1585#1580#1575#1593#1575#1578
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8 = (
            
              '['#1593#175#1591#178#1591#167#1591#177#1591#180#1592#1657' '#1591#167#1591#178' '#1591#167#1592#8218#1591#175#1591#167#1592#8230#1591#167#1591#1726' '#1592#710' '#1591#167#1591#177#1591#172#1591#167#1591#185#1591#167#1591#1726'."'#1591#180' '#1591#167#1592#8224#1591#175#1592#1657 +
              #1593#169#1591#167#1591#1726#1592#710#1591#177'"]')
          ParentFont = False
        end
        object Memo5: TfrxMemoView
          Left = 574.732530000000000000
          Top = 2.542053329999990000
          Width = 119.330860000000000000
          Height = 18.897650000000000000
          DataField = #1605#1590#1605#1608#1606' '#1606#1575#1605#1607
          DataSet = frxDBRecommite_report
          DataSetName = #1711#1586#1575#1585#1588#1610' '#1575#1586' '#1575#1602#1583#1575#1605#1575#1578' '#1608' '#1575#1585#1580#1575#1593#1575#1578
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8 = (
            
              '['#1593#175#1591#178#1591#167#1591#177#1591#180#1592#1657' '#1591#167#1591#178' '#1591#167#1592#8218#1591#175#1591#167#1592#8230#1591#167#1591#1726' '#1592#710' '#1591#167#1591#177#1591#172#1591#167#1591#185#1591#167#1591#1726'."'#1592#8230#1591#182#1592#8230#1592#710#1592#8224' ' +
              #1592#8224#1591#167#1592#8230#1592#8225'"]')
          ParentFont = False
        end
        object Memo9: TfrxMemoView
          Left = 417.862400000000000000
          Top = 2.290043330000000000
          Width = 71.374150000000000000
          Height = 18.897650000000000000
          DataField = #1575#1585#1580#1575#1593' '#1588#1608#1606#1583#1607
          DataSet = frxDBRecommite_report
          DataSetName = #1711#1586#1575#1585#1588#1610' '#1575#1586' '#1575#1602#1583#1575#1605#1575#1578' '#1608' '#1575#1585#1580#1575#1593#1575#1578
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8 = (
            
              '['#1593#175#1591#178#1591#167#1591#177#1591#180#1592#1657' '#1591#167#1591#178' '#1591#167#1592#8218#1591#175#1591#167#1592#8230#1591#167#1591#1726' '#1592#710' '#1591#167#1591#177#1591#172#1591#167#1591#185#1591#167#1591#1726'."'#1591#167#1591#177#1591#172#1591#167#1591#185' ' +
              #1591#180#1592#710#1592#8224#1591#175#1592#8225'"]')
          ParentFont = False
        end
        object Memo12: TfrxMemoView
          Left = 339.689240000000000000
          Top = 2.471243330000000000
          Width = 74.153680000000000000
          Height = 18.897650000000000000
          DataField = #1578#1575#1585#1610#1582' '#1575#1585#1580#1575#1593'1'
          DataSet = frxDBRecommite_report
          DataSetName = #1711#1586#1575#1585#1588#1610' '#1575#1586' '#1575#1602#1583#1575#1605#1575#1578' '#1608' '#1575#1585#1580#1575#1593#1575#1578
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8 = (
            
              '['#1593#175#1591#178#1591#167#1591#177#1591#180#1592#1657' '#1591#167#1591#178' '#1591#167#1592#8218#1591#175#1591#167#1592#8230#1591#167#1591#1726' '#1592#710' '#1591#167#1591#177#1591#172#1591#167#1591#185#1591#167#1591#1726'."'#1591#1726#1591#167#1591#177#1592#1657#1591#174' ' +
              #1591#167#1591#177#1591#172#1591#167#1591#185'1"]')
          ParentFont = False
        end
        object Memo14: TfrxMemoView
          Left = 191.791590000000000000
          Top = 3.427953330000010000
          Width = 142.051330000000000000
          Height = 18.897650000000000000
          DataField = #1605#1578#1606' '#1575#1585#1580#1575#1593
          DataSet = frxDBRecommite_report
          DataSetName = #1711#1586#1575#1585#1588#1610' '#1575#1586' '#1575#1602#1583#1575#1605#1575#1578' '#1608' '#1575#1585#1580#1575#1593#1575#1578
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8 = (
            
              '['#1593#175#1591#178#1591#167#1591#177#1591#180#1592#1657' '#1591#167#1591#178' '#1591#167#1592#8218#1591#175#1591#167#1592#8230#1591#167#1591#1726' '#1592#710' '#1591#167#1591#177#1591#172#1591#167#1591#185#1591#167#1591#1726'."'#1592#8230#1591#1726#1592#8224' '#1591#167#1591#177 +
              #1591#172#1591#167#1591#185'"]')
          ParentFont = False
        end
        object Memo16: TfrxMemoView
          Left = 111.953000000000000000
          Top = 3.105133330000000000
          Width = 74.889920000000000000
          Height = 18.897650000000000000
          DataField = #1578#1575#1585#1610#1582' '#1575#1602#1583#1575#1605
          DataSet = frxDBRecommite_report
          DataSetName = #1711#1586#1575#1585#1588#1610' '#1575#1586' '#1575#1602#1583#1575#1605#1575#1578' '#1608' '#1575#1585#1580#1575#1593#1575#1578
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8 = (
            
              '['#1593#175#1591#178#1591#167#1591#177#1591#180#1592#1657' '#1591#167#1591#178' '#1591#167#1592#8218#1591#175#1591#167#1592#8230#1591#167#1591#1726' '#1592#710' '#1591#167#1591#177#1591#172#1591#167#1591#185#1591#167#1591#1726'."'#1591#1726#1591#167#1591#177#1592#1657#1591#174' ' +
              #1591#167#1592#8218#1591#175#1591#167#1592#8230'"]')
          ParentFont = False
        end
        object Memo18: TfrxMemoView
          Left = 2.500000000000000000
          Top = 3.120903330000000000
          Width = 104.260360000000000000
          Height = 18.897650000000000000
          DataField = #1601#1585#1587#1578#1606#1583#1607
          DataSet = frxDBRecommite_report
          DataSetName = #1711#1586#1575#1585#1588#1610' '#1575#1586' '#1575#1602#1583#1575#1605#1575#1578' '#1608' '#1575#1585#1580#1575#1593#1575#1578
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8 = (
            
              '['#1593#175#1591#178#1591#167#1591#177#1591#180#1592#1657' '#1591#167#1591#178' '#1591#167#1592#8218#1591#175#1591#167#1592#8230#1591#167#1591#1726' '#1592#710' '#1591#167#1591#177#1591#172#1591#167#1591#185#1591#167#1591#1726'."'#1592#1662#1591#177#1591#179#1591#1726#1592#8224#1591 +
              #175#1592#8225'"]')
          ParentFont = False
        end
        object Memo7: TfrxMemoView
          Left = 495.720780000000000000
          Top = 2.849103329999990000
          Width = 68.031540000000000000
          Height = 18.897650000000000000
          DataField = #1575#1585#1580#1575#1593' '#1583#1607#1606#1583#1607
          DataSet = frxDBRecommite_report
          DataSetName = #1711#1586#1575#1585#1588#1610' '#1575#1586' '#1575#1602#1583#1575#1605#1575#1578' '#1608' '#1575#1585#1580#1575#1593#1575#1578
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8 = (
            
              '['#1593#175#1591#178#1591#167#1591#177#1591#180#1592#1657' '#1591#167#1591#178' '#1591#167#1592#8218#1591#175#1591#167#1592#8230#1591#167#1591#1726' '#1592#710' '#1591#167#1591#177#1591#172#1591#167#1591#185#1591#167#1591#1726'."'#1591#167#1591#177#1591#172#1591#167#1591#185' ' +
              #1591#175#1592#8225#1592#8224#1591#175#1592#8225'"]')
          ParentFont = False
        end
      end
      object Header1: TfrxHeader
        Height = 24.167903330000000000
        Top = 124.724490000000000000
        Width = 755.906000000000000000
        object Shape3: TfrxShapeView
          Align = baClient
          Width = 755.906000000000000000
          Height = 24.167903330000000000
          Color = 15329769
          Curve = 1
          Shape = skRoundRectangle
        end
        object Memo10: TfrxMemoView
          Left = 415.953000000000000000
          Top = 3.000000000000000000
          Width = 75.590551180000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haCenter
          Memo.UTF8 = (
            #1591#167#1591#177#1591#172#1591#167#1591#185' '#1591#180#1592#710#1592#8224#1591#175#1592#8225)
          ParentFont = False
        end
        object Memo13: TfrxMemoView
          Left = 336.916203330000000000
          Top = 3.000000000000000000
          Width = 79.370130000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haCenter
          Memo.UTF8 = (
            #1591#1726#1591#167#1591#177#1592#1657#1591#174' '#1591#167#1591#177#1591#172#1591#167#1591#185)
          ParentFont = False
        end
        object Memo15: TfrxMemoView
          Left = 190.181200000000000000
          Top = 3.000000000000000000
          Width = 147.401670000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haCenter
          Memo.UTF8 = (
            #1592#8230#1591#1726#1592#8224' '#1591#167#1591#177#1591#172#1591#167#1591#185)
          ParentFont = False
        end
        object Memo17: TfrxMemoView
          Left = 109.311070000000000000
          Top = 3.000000000000000000
          Width = 80.870130000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haCenter
          Memo.UTF8 = (
            #1591#1726#1591#167#1591#177#1592#1657#1591#174' '#1591#167#1592#8218#1591#175#1591#167#1592#8230)
          ParentFont = False
        end
        object Memo8: TfrxMemoView
          Left = 491.543600000000000000
          Top = 3.000000000000000000
          Width = 75.590600000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haCenter
          Memo.UTF8 = (
            #1591#167#1591#177#1591#172#1591#167#1591#185' '#1591#175#1592#8225#1592#8224#1591#175#1592#8225)
          ParentFont = False
        end
        object Memo19: TfrxMemoView
          Top = 3.000000000000000000
          Width = 109.606370000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haCenter
          Memo.UTF8 = (
            #1592#1662#1591#177#1591#179#1591#1726#1592#8224#1591#175#1592#8225)
          ParentFont = False
        end
        object Memo4: TfrxMemoView
          Left = 696.000000000000000000
          Top = 3.270265530000000000
          Width = 59.590600000000000000
          Height = 18.897637800000000000
          DisplayFormat.DecimalSeparator = '.'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haCenter
          Memo.UTF8 = (
            #1591#180' '#1591#167#1592#8224#1591#175#1592#1657#1593#169#1591#167#1591#1726#1592#710#1591#177)
          ParentFont = False
        end
        object Memo20: TfrxMemoView
          Left = 567.333333330000000000
          Top = 3.270253330000000000
          Width = 127.821583330000000000
          Height = 18.897650000000000000
          DisplayFormat.DecimalSeparator = '.'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haCenter
          Memo.UTF8 = (
            #1592#8230#1591#182#1592#8230#1592#710#1592#8224' '#1592#8224#1591#167#1592#8230#1592#8225)
          ParentFont = False
        end
      end
      object PageFooter1: TfrxPageFooter
        Height = 22.677180000000000000
        Top = 257.008040000000000000
        Width = 755.906000000000000000
        object Memo2: TfrxMemoView
          Left = 585.703773330000000000
          Top = 2.350340000000020000
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
            
              ' :  '#1591#180#1591#177#1593#169#1591#1726' '#1592#1657#1593#175#1591#167#1592#8224#1592#8225' - '#1592#8224#1591#177#1592#8230' '#1591#167#1592#1662#1591#178#1591#167#1591#177' '#1593#169#1591#167#1591#177#1591#1726#1591#167#1591#168#1592#8222' '#1591#1726#1592#8222#1592 +
              #1662#1592#8224)
          ParentFont = False
        end
        object Memo6: TfrxMemoView
          Left = 527.500000000000000000
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
            '22469490')
          ParentFont = False
        end
      end
    end
  end
end
