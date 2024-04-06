object DMRepCalc1: TDMRepCalc1
  OldCreateOrder = False
  Left = 641
  Top = 151
  Height = 294
  Width = 439
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
    Left = 353
    Top = 200
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
    Left = 353
    Top = 200
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
    Left = 353
    Top = 200
  end
  object frxXMLExport1: TfrxXMLExport
    UseFileCache = True
    ShowProgress = True
    Background = True
    Creator = 'FastReport'
    EmptyLines = True
    SuppressPageHeadersFooters = False
    Left = 353
    Top = 200
  end
  object frxRTFExport1: TfrxRTFExport
    UseFileCache = True
    ShowProgress = True
    Wysiwyg = True
    Creator = 'FastReport http://www.fast-report.com'
    SuppressPageHeadersFooters = False
    HeaderFooterMode = hfText
    Left = 353
    Top = 200
  end
  object frxBMPExport1: TfrxBMPExport
    UseFileCache = True
    ShowProgress = True
    Left = 353
    Top = 200
  end
  object frxJPEGExport1: TfrxJPEGExport
    UseFileCache = True
    ShowProgress = True
    Left = 353
    Top = 200
  end
  object frxTIFFExport1: TfrxTIFFExport
    UseFileCache = True
    ShowProgress = True
    Left = 353
    Top = 200
  end
  object frxGIFExport1: TfrxGIFExport
    UseFileCache = True
    ShowProgress = True
    Left = 353
    Top = 200
  end
  object frxSimpleTextExport1: TfrxSimpleTextExport
    UseFileCache = True
    ShowProgress = True
    Frames = False
    EmptyLines = False
    OEMCodepage = False
    Left = 353
    Top = 200
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
    Left = 353
    Top = 200
  end
  object QrFactor: TQuery
    Active = True
    AfterScroll = QrFactorAfterScroll
    OnCalcFields = QrFactorCalcFields
    DatabaseName = 'MySoftDB'
    SQL.Strings = (
      'Select Fac.*'
      
        '       , (Case Fac.Type When '#39'F'#39' then '#39#1601#1575#1705#1578#1608#1585' '#1601#1585#1608#1588#39' When '#39'KH'#39' th' +
        'en '#39#1601#1575#1705#1578#1608#1585' '#1582#1585#1610#1583#39
      
        '          When '#39'P'#39' then '#39#1662#1610#1588' '#1601#1575#1705#1578#1608#1585#39' When '#39'BF'#39' then '#39#1601#1575#1705#1578#1608#1585' '#1576#1585#1711#1588 +
        #1578' '#1575#1586' '#1601#1585#1608#1588#39
      
        '          When '#39'BKH'#39' then '#39#1601#1575#1705#1578#1608#1585' '#1576#1585#1711#1588#1578' '#1575#1586' '#1582#1585#1610#1583#39' When '#39'A'#39' then '#39 +
        #1601#1575#1705#1578#1608#1585' '#1575#1605#1575#1606#1610#39' When '#39'E'#39' then '#39#1601#1575#1705#1578#1608#1585' '#1575#1589#1591#1607#1604#1575#1705#39' end) as TypeName'
      
        '       , (Fac.FactorePrice - (Fac.ReducePrice + Fac.CashPrice + ' +
        'Fac.CheckPrice + Fac.CreditPrice)) as RemaindPrice'
      '       , (Fac.CashPrice + Fac.CheckPrice ) as RecivePrice'
      
        '       , RTrim(Cu.Name) as CuName,(RTrim(Cu.Tel1)+'#39' - '#39'+RTrim(Cu' +
        '.Tel2))as CuTel,RTrim(Cu.Address)as CuAddress'
      '       , (RTrim(Prs.Name)+'#39' '#39'+RTrim(Prs.Family)) as PersNaFa'
      'From Factor Fac , Cust Cu , Personel Prs '
      'Where (1=1)'
      '  And(Fac.Cust_Ref = Cu.Cust_ID)'
      '  And(Fac.Personel_Ref = Prs.Personel_ID)'
      'Order By Fac.Number , Fac.FacDate'
      '')
    Left = 40
    Top = 24
    object QrFactorFactor_ID: TIntegerField
      FieldName = 'Factor_ID'
    end
    object QrFactorCust_Ref: TIntegerField
      FieldName = 'Cust_Ref'
    end
    object QrFactorFacDate: TStringField
      Alignment = taRightJustify
      FieldName = 'FacDate'
      OnGetText = QrFactorFacDateGetText
      FixedChar = True
      Size = 50
    end
    object QrFactorFacTime: TStringField
      Alignment = taRightJustify
      FieldName = 'FacTime'
      OnGetText = QrFactorFacDateGetText
      FixedChar = True
      Size = 30
    end
    object QrFactorRegisterDate: TStringField
      Alignment = taRightJustify
      FieldName = 'RegisterDate'
      OnGetText = QrFactorFacDateGetText
      FixedChar = True
      Size = 50
    end
    object QrFactorNumber: TIntegerField
      FieldName = 'Number'
      OnGetText = QrFactorFacDateGetText
    end
    object QrFactorType: TStringField
      Alignment = taRightJustify
      FieldName = 'Type'
      FixedChar = True
    end
    object QrFactorFactorePrice: TFloatField
      FieldName = 'FactorePrice'
      OnGetText = QrFactorFactorePriceGetText
    end
    object QrFactorReducePrice: TFloatField
      FieldName = 'ReducePrice'
      OnGetText = QrFactorFactorePriceGetText
    end
    object QrFactorCashPrice: TFloatField
      FieldName = 'CashPrice'
      OnGetText = QrFactorFactorePriceGetText
    end
    object QrFactorCheckPrice: TFloatField
      FieldName = 'CheckPrice'
      OnGetText = QrFactorFactorePriceGetText
    end
    object QrFactorPersonel_Ref: TIntegerField
      FieldName = 'Personel_Ref'
    end
    object QrFactorCreditPrice: TFloatField
      FieldName = 'CreditPrice'
      OnGetText = QrFactorFactorePriceGetText
    end
    object QrFactorTozihat: TStringField
      Alignment = taRightJustify
      FieldName = 'Tozihat'
      FixedChar = True
      Size = 255
    end
    object QrFactorTypeName: TStringField
      Alignment = taRightJustify
      FieldName = 'TypeName'
      FixedChar = True
      Size = 13
    end
    object QrFactorRemaindPrice: TFloatField
      FieldName = 'RemaindPrice'
      OnGetText = QrFactorFactorePriceGetText
    end
    object QrFactorCuName: TStringField
      Alignment = taRightJustify
      FieldName = 'CuName'
      FixedChar = True
      Size = 100
    end
    object QrFactorCuTel: TStringField
      Alignment = taRightJustify
      FieldName = 'CuTel'
      OnGetText = QrFactorFacDateGetText
      FixedChar = True
      Size = 86
    end
    object QrFactorCuAddress: TStringField
      Alignment = taRightJustify
      FieldName = 'CuAddress'
      FixedChar = True
      Size = 255
    end
    object QrFactorPersNaFa: TStringField
      Alignment = taRightJustify
      FieldName = 'PersNaFa'
      FixedChar = True
      Size = 202
    end
    object QrFactorFacPrBeHorof_Calc: TStringField
      FieldKind = fkCalculated
      FieldName = 'FacPrBeHorof_Calc'
      Size = 100
      Calculated = True
    end
    object QrFactorRecivePrice: TFloatField
      FieldName = 'RecivePrice'
      OnGetText = QrFactorFactorePriceGetText
    end
    object QrFactorLiquidate: TBooleanField
      FieldName = 'Liquidate'
    end
  end
  object DSFactor: TDataSource
    AutoEdit = False
    DataSet = QrFactor
    Left = 40
    Top = 77
  end
  object QrSrchFactor: TQuery
    BeforeOpen = QrSrchFactorBeforeOpen
    DatabaseName = 'MySoftDB'
    SQL.Strings = (
      'Select *'
      'From Vw_SrchFactor'
      'Where (1=1)'
      'And(Type= :Type)')
    Left = 112
    Top = 24
    ParamData = <
      item
        DataType = ftString
        Name = 'Type'
        ParamType = ptInput
      end>
    object QrSrchFactorFactor_ID: TIntegerField
      FieldName = 'Factor_ID'
      Origin = 'MYSOFTDB.Vw_SrchFactor.Factor_ID'
    end
    object QrSrchFactorNumber: TIntegerField
      Tag = 1
      DisplayLabel = #1588#1605#1575#1585#1607' '#1601#1575#1705#1578#1608#1585
      DisplayWidth = 8
      FieldName = 'Number'
      Origin = 'MYSOFTDB.Vw_SrchFactor.Number'
    end
    object QrSrchFactorFacDate: TStringField
      Tag = 1
      DisplayLabel = #1578#1575#1585#1610#1582' '#1601#1575#1705#1578#1608#1585
      DisplayWidth = 10
      FieldName = 'FacDate'
      Origin = 'MYSOFTDB.Vw_SrchFactor.FacDate'
      FixedChar = True
      Size = 50
    end
    object QrSrchFactorRegisterDate: TStringField
      Tag = 1
      DisplayLabel = #1578#1575#1585#1610#1582' '#1579#1576#1578' '#1601#1575#1705#1578#1608#1585
      DisplayWidth = 10
      FieldName = 'RegisterDate'
      Origin = 'MYSOFTDB.Vw_SrchFactor.RegisterDate'
      FixedChar = True
      Size = 50
    end
    object QrSrchFactorCuName: TStringField
      Tag = 1
      DisplayLabel = #1606#1575#1605' '#1605#1588#1578#1585#1610
      DisplayWidth = 20
      FieldName = 'CuName'
      Origin = 'MYSOFTDB.Vw_SrchFactor.CuName'
      FixedChar = True
      Size = 100
    end
    object QrSrchFactorCuTel: TStringField
      Tag = 1
      DisplayLabel = #1578#1604#1601#1606' '#1605#1588#1578#1585#1610
      DisplayWidth = 20
      FieldName = 'CuTel'
      Origin = 'MYSOFTDB.Vw_SrchFactor.CuTel'
      FixedChar = True
      Size = 86
    end
    object QrSrchFactorPersNaFa: TStringField
      Tag = 1
      DisplayLabel = #1606#1575#1605' '#1705#1575#1585#1576#1585' '#1579#1576#1578' '#1705#1606#1606#1583#1607
      DisplayWidth = 20
      FieldName = 'PersNaFa'
      Origin = 'MYSOFTDB.Vw_SrchFactor.CuTel'
      FixedChar = True
      Size = 202
    end
  end
  object frxDBFactor: TfrxDBDataset
    UserName = #1601#1575#1705#1578#1608#1585
    CloseDataSource = False
    FieldAliases.Strings = (
      '-Factor_ID=Factor_ID'
      'CuName='#1606#1575#1605' '#1605#1588#1578#1585#1610
      'CuTel='#1578#1604#1601#1606' '#1605#1588#1578#1585#1610
      'CuAddress='#1570#1583#1585#1587' '#1605#1588#1578#1585#1610
      'TypeName='#1606#1608#1593' '#1601#1575#1705#1578#1608#1585
      'Number='#1588#1605#1575#1585#1607' '#1601#1575#1705#1578#1608#1585
      'FacDate='#1578#1575#1585#1610#1582' '#1601#1575#1705#1578#1608#1585
      'RegisterDate='#1578#1575#1585#1610#1582' '#1579#1576#1578' '#1601#1575#1705#1578#1608#1585
      'FacTime='#1587#1575#1593#1578' '#1579#1576#1578' '#1601#1575#1705#1578#1608#1585
      'FactorePrice='#1580#1605#1593' '#1705#1604' '#1601#1575#1705#1578#1608#1585
      'FacPrBeHorof_Calc='#1580#1605#1593' '#1705#1604' '#1576#1607' '#1581#1585#1608#1601
      'ReducePrice='#1578#1582#1601#1610#1601
      'CashPrice='#1605#1576#1604#1594' '#1606#1602#1583
      'CheckPrice='#1580#1605#1593' '#1605#1576#1604#1594' '#1670#1705' '#1607#1575
      'CreditPrice='#1605#1576#1604#1594' '#1606#1587#1610#1607
      'RecivePrice='#1605#1576#1604#1594' '#1583#1585#1610#1575#1601#1578#1610
      'RemaindPrice='#1605#1576#1604#1594' '#1576#1575#1602#1610#1605#1575#1606#1583#1607
      'Tozihat='#1578#1608#1590#1610#1581#1575#1578' '#1601#1575#1705#1578#1608#1585
      'PersNaFa='#1606#1575#1605' '#1705#1575#1585#1576#1585' '#1579#1576#1578' '#1705#1606#1606#1583#1607
      '-Personel_Ref=Personel_Ref'
      '-Cust_Ref=Cust_Ref'
      '-Type=Type')
    DataSet = QrFactor
    Left = 40
    Top = 130
  end
  object frxRepFactor: TfrxReport
    Version = '4.3'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick]
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = #1662#1610#1588' '#1601#1585#1590
    PrintOptions.PrintOnSheet = 0
    ReportOptions.CreateDate = 39448.129562349500000000
    ReportOptions.LastChange = 40045.098128611100000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      'begin'
      ''
      'end.')
    Left = 40
    Top = 184
    Datasets = <
      item
        DataSet = frxDBFactor
        DataSetName = #1601#1575#1705#1578#1608#1585
      end
      item
        DataSet = frxDBFacDetails
        DataSetName = #1604#1610#1587#1578' '#1705#1575#1604#1575' '#1607#1575
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
      object MasterData1: TfrxMasterData
        Height = 47.580086660000000000
        Top = 105.826840000000000000
        Width = 755.906000000000000000
        DataSet = frxDBFactor
        DataSetName = #1601#1575#1705#1578#1608#1585
        PrintIfDetailEmpty = True
        RowCount = 0
        StartNewPage = True
        object Shape1: TfrxShapeView
          Align = baClient
          Width = 755.906000000000000000
          Height = 47.580086660000000000
          Curve = 1
          Shape = skRoundRectangle
        end
        object Memo4: TfrxMemoView
          Left = 684.761596670000000000
          Top = 4.559060000000000000
          Width = 64.252010000000000000
          Height = 18.897650000000000000
          DisplayFormat.DecimalSeparator = '.'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8 = (
            ':'#1591#181#1592#710#1591#177#1591#1726#1591#173#1591#179#1591#167#1591#168)
          ParentFont = False
        end
        object Memo3: TfrxMemoView
          Left = 473.307360000000000000
          Top = 4.559060000000000000
          Width = 207.674706670000000000
          Height = 18.897650000000000000
          DataField = #1606#1575#1605' '#1605#1588#1578#1585#1610
          DataSet = frxDBFactor
          DataSetName = #1601#1575#1705#1578#1608#1585
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8 = (
            '['#1592#1662#1591#167#1593#169#1591#1726#1592#710#1591#177'."'#1592#8224#1591#167#1592#8230' '#1592#8230#1591#180#1591#1726#1591#177#1592#1657'"]')
          ParentFont = False
        end
        object Memo5: TfrxMemoView
          Left = 245.868893340000000000
          Top = 4.559060000000000000
          Width = 185.196970000000000000
          Height = 18.897650000000000000
          DataField = #1578#1604#1601#1606' '#1605#1588#1578#1585#1610
          DataSet = frxDBFactor
          DataSetName = #1601#1575#1705#1578#1608#1585
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8 = (
            '['#1592#1662#1591#167#1593#169#1591#1726#1592#710#1591#177'."'#1591#1726#1592#8222#1592#1662#1592#8224' '#1592#8230#1591#180#1591#1726#1591#177#1592#1657'"]')
          ParentFont = False
        end
        object Memo6: TfrxMemoView
          Left = 434.178726670000000000
          Top = 4.559060000000000000
          Width = 34.015770000000000000
          Height = 18.897650000000000000
          DisplayFormat.DecimalSeparator = '.'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8 = (
            ':'#1591#1726#1592#8222#1592#1662#1592#8224' ')
          ParentFont = False
        end
        object Memo7: TfrxMemoView
          Left = 246.535560000000000000
          Top = 25.236240000000000000
          Width = 434.446506670000000000
          Height = 18.897650000000000000
          DataField = #1570#1583#1585#1587' '#1605#1588#1578#1585#1610
          DataSet = frxDBFactor
          DataSetName = #1601#1575#1705#1578#1608#1585
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8 = (
            '['#1592#1662#1591#167#1593#169#1591#1726#1592#710#1591#177'."'#1591#162#1591#175#1591#177#1591#179' '#1592#8230#1591#180#1591#1726#1591#177#1592#1657'"]')
          ParentFont = False
        end
        object Memo8: TfrxMemoView
          Left = 684.761596670000000000
          Top = 25.236240000000000000
          Width = 37.795300000000000000
          Height = 18.897650000000000000
          DisplayFormat.DecimalSeparator = '.'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8 = (
            ':'#1591#162#1591#175#1591#177#1591#179)
          ParentFont = False
        end
        object Memo9: TfrxMemoView
          Left = 27.559060000000000000
          Top = 4.559060000000000000
          Width = 86.493506670000000000
          Height = 18.897650000000000000
          DataField = #1588#1605#1575#1585#1607' '#1601#1575#1705#1578#1608#1585
          DataSet = frxDBFactor
          DataSetName = #1601#1575#1705#1578#1608#1585
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8 = (
            '['#1592#1662#1591#167#1593#169#1591#1726#1592#710#1591#177'."'#1591#180#1592#8230#1591#167#1591#177#1592#8225' '#1592#1662#1591#167#1593#169#1591#1726#1592#710#1591#177'"]')
          ParentFont = False
        end
        object Memo10: TfrxMemoView
          Left = 120.278293330000000000
          Top = 4.559060000000000000
          Width = 68.031540000000000000
          Height = 18.897650000000000000
          DisplayFormat.DecimalSeparator = '.'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8 = (
            ':'#1591#180#1592#8230#1591#167#1591#177#1592#8225' '#1592#1662#1591#167#1593#169#1591#1726#1592#710#1591#177)
          ParentFont = False
        end
        object Memo11: TfrxMemoView
          Left = 27.559060000000000000
          Top = 25.236240000000000000
          Width = 86.493506670000000000
          Height = 18.897650000000000000
          DataField = #1578#1575#1585#1610#1582' '#1601#1575#1705#1578#1608#1585
          DataSet = frxDBFactor
          DataSetName = #1601#1575#1705#1578#1608#1585
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8 = (
            '['#1592#1662#1591#167#1593#169#1591#1726#1592#710#1591#177'."'#1591#1726#1591#167#1591#177#1592#1657#1591#174' '#1592#1662#1591#167#1593#169#1591#1726#1592#710#1591#177'"]')
          ParentFont = False
        end
        object Memo12: TfrxMemoView
          Left = 120.278293330000000000
          Top = 25.236240000000000000
          Width = 68.031540000000000000
          Height = 18.897650000000000000
          DisplayFormat.DecimalSeparator = '.'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8 = (
            ':'#1591#1726#1591#167#1591#177#1592#1657#1591#174' '#1592#1662#1591#167#1593#169#1591#1726#1592#710#1591#177)
          ParentFont = False
        end
      end
      object DetailData1: TfrxDetailData
        Height = 26.456710000000000000
        Top = 215.433210000000000000
        Width = 755.906000000000000000
        DataSet = frxDBFacDetails
        DataSetName = #1604#1610#1587#1578' '#1705#1575#1604#1575' '#1607#1575
        PrintIfDetailEmpty = True
        RowCount = 0
        object Shape4: TfrxShapeView
          Align = baClient
          Width = 755.906000000000000000
          Height = 26.456710000000000000
          Curve = 1
          Shape = skRoundRectangle
        end
        object Memo14: TfrxMemoView
          Left = 463.968770000000000000
          Top = 3.000000000000000000
          Width = 210.787570000000000000
          Height = 18.897650000000000000
          DataField = #1606#1575#1605' '#1705#1575#1604#1575
          DataSet = frxDBFacDetails
          DataSetName = #1604#1610#1587#1578' '#1705#1575#1604#1575' '#1607#1575
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8 = (
            '['#1592#8222#1592#1657#1591#179#1591#1726' '#1593#169#1591#167#1592#8222#1591#167' '#1592#8225#1591#167'."'#1592#8224#1591#167#1592#8230' '#1593#169#1591#167#1592#8222#1591#167'"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Line2: TfrxLineView
          Left = 718.110700000000000000
          Height = 26.456710000000000000
          Frame.Typ = [ftLeft]
        end
        object SysMemo1: TfrxSysMemoView
          Left = 721.890230000000000000
          Top = 3.000000000000000000
          Width = 26.456710000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8 = (
            '[LINE#]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo15: TfrxMemoView
          Left = 683.874460000000000000
          Top = 3.000000000000000000
          Width = 30.236240000000000000
          Height = 18.897650000000000000
          DataField = #1705#1583' '#1705#1575#1604#1575
          DataSet = frxDBFacDetails
          DataSetName = #1604#1610#1587#1578' '#1705#1575#1604#1575' '#1607#1575
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8 = (
            '['#1592#8222#1592#1657#1591#179#1591#1726' '#1593#169#1591#167#1592#8222#1591#167' '#1592#8225#1591#167'."'#1593#169#1591#175' '#1593#169#1591#167#1592#8222#1591#167'"]')
          ParentFont = False
        end
        object Line4: TfrxLineView
          Left = 679.559055118110000000
          Height = 26.456692910000000000
          Frame.Typ = [ftLeft]
        end
        object Line12: TfrxLineView
          Left = 346.937059130000000000
          Height = 26.456692910000000000
          Frame.Typ = [ftLeft]
        end
        object Line13: TfrxLineView
          Left = 264.567100000000000000
          Height = 26.456692910000000000
          Frame.Typ = [ftLeft]
        end
        object Line14: TfrxLineView
          Left = 176.858380000000000000
          Height = 26.456692910000000000
          Frame.Typ = [ftLeft]
        end
        object Line11: TfrxLineView
          Left = 388.512060000000000000
          Height = 26.456692910000000000
          Frame.Typ = [ftLeft]
        end
        object Memo24: TfrxMemoView
          Left = 392.291590000000000000
          Top = 3.000000000000000000
          Width = 64.252010000000000000
          Height = 18.897650000000000000
          DataField = #1608#1575#1581#1583' '#1705#1575#1604#1575
          DataSet = frxDBFacDetails
          DataSetName = #1604#1610#1587#1578' '#1705#1575#1604#1575' '#1607#1575
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8 = (
            '['#1592#8222#1592#1657#1591#179#1591#1726' '#1593#169#1591#167#1592#8222#1591#167' '#1592#8225#1591#167'."'#1592#710#1591#167#1591#173#1591#175' '#1593#169#1591#167#1592#8222#1591#167'"]')
          ParentFont = False
        end
        object Memo25: TfrxMemoView
          Left = 350.716760000000000000
          Top = 3.000000000000000000
          Width = 34.015752910000000000
          Height = 18.897650000000000000
          DataField = #1578#1593#1583#1575#1583
          DataSet = frxDBFacDetails
          DataSetName = #1604#1610#1587#1578' '#1705#1575#1604#1575' '#1607#1575
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8 = (
            '['#1592#8222#1592#1657#1591#179#1591#1726' '#1593#169#1591#167#1592#8222#1591#167' '#1592#8225#1591#167'."'#1591#1726#1591#185#1591#175#1591#167#1591#175'"]')
          ParentFont = False
        end
        object Memo26: TfrxMemoView
          Left = 267.346630000000000000
          Top = 3.000000000000000000
          Width = 71.811070000000000000
          Height = 18.897650000000000000
          DataField = #1602#1610#1605#1578' '#1608#1575#1581#1583
          DataSet = frxDBFacDetails
          DataSetName = #1604#1610#1587#1578' '#1705#1575#1604#1575' '#1607#1575
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8 = (
            '['#1592#8222#1592#1657#1591#179#1591#1726' '#1593#169#1591#167#1592#8222#1591#167' '#1592#8225#1591#167'."'#1592#8218#1592#1657#1592#8230#1591#1726' '#1592#710#1591#167#1591#173#1591#175'"]')
          ParentFont = False
        end
        object Memo27: TfrxMemoView
          Left = 181.333333330000000000
          Top = 4.000000000000000000
          Width = 79.370130000000000000
          Height = 18.897650000000000000
          DataField = #1605#1576#1604#1594' '#1705#1604
          DataSet = frxDBFacDetails
          DataSetName = #1604#1610#1587#1578' '#1705#1575#1604#1575' '#1607#1575
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8 = (
            '['#1592#8222#1592#1657#1591#179#1591#1726' '#1593#169#1591#167#1592#8222#1591#167' '#1592#8225#1591#167'."'#1592#8230#1591#168#1592#8222#1591#1563' '#1593#169#1592#8222'"]')
          ParentFont = False
        end
        object Memo28: TfrxMemoView
          Left = 3.779530000000000000
          Top = 3.000000000000000000
          Width = 168.719233330000000000
          Height = 18.897650000000000000
          DataField = #1588#1585#1581' '#1705#1575#1604#1575
          DataSet = frxDBFacDetails
          DataSetName = #1604#1610#1587#1578' '#1705#1575#1604#1575' '#1607#1575
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8 = (
            '['#1592#8222#1592#1657#1591#179#1591#1726' '#1593#169#1591#167#1592#8222#1591#167' '#1592#8225#1591#167'."'#1591#180#1591#177#1591#173' '#1593#169#1591#167#1592#8222#1591#167'"]')
          ParentFont = False
        end
        object Line10: TfrxLineView
          Left = 460.323130000000000000
          Height = 26.456692910000000000
          Frame.Typ = [ftLeft]
        end
      end
      object Header1: TfrxHeader
        Height = 22.677180000000000000
        Top = 173.858380000000000000
        Width = 755.906000000000000000
        object Shape6: TfrxShapeView
          Align = baClient
          Width = 755.906000000000000000
          Height = 22.677180000000000000
          Curve = 1
          Shape = skRoundRectangle
        end
        object Memo16: TfrxMemoView
          Left = 720.110700000000000000
          Top = 1.779529999999990000
          Width = 30.236240000000000000
          Height = 18.897650000000000000
          DisplayFormat.DecimalSeparator = '.'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haCenter
          Memo.UTF8 = (
            #1591#177#1591#175#1592#1657#1592#1662)
          ParentFont = False
          VAlign = vaCenter
        end
        object Line1: TfrxLineView
          Left = 718.110700000000000000
          Height = 22.677180000000000000
          Frame.Typ = [ftLeft]
        end
        object Memo17: TfrxMemoView
          Left = 681.315400000000000000
          Top = 1.779529999999990000
          Width = 34.015770000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haCenter
          Memo.UTF8 = (
            #1593#169#1591#175' '#1593#169#1591#167#1592#8222#1591#167)
          ParentFont = False
          VAlign = vaCenter
        end
        object Line3: TfrxLineView
          Left = 679.535870000000000000
          Height = 22.677180000000000000
          Frame.Typ = [ftLeft]
        end
        object Memo18: TfrxMemoView
          Left = 550.811380000000000000
          Top = 1.779530000000000000
          Width = 45.354360000000000000
          Height = 18.897650000000000000
          DisplayFormat.DecimalSeparator = '.'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haCenter
          Memo.UTF8 = (
            #1592#8224#1591#167#1592#8230' '#1593#169#1591#167#1592#8222#1591#167)
          ParentFont = False
          VAlign = vaCenter
        end
        object Line5: TfrxLineView
          Left = 176.600000000000000000
          Height = 22.677180000000000000
          Frame.Typ = [ftLeft]
        end
        object Line6: TfrxLineView
          Left = 264.115646670000000000
          Height = 22.677180000000000000
          Frame.Typ = [ftLeft]
        end
        object Line7: TfrxLineView
          Left = 346.583255800000000000
          Height = 22.677180000000000000
          Frame.Typ = [ftLeft]
        end
        object Line8: TfrxLineView
          Left = 388.800000000000000000
          Height = 22.677180000000000000
          Frame.Typ = [ftLeft]
        end
        object Memo19: TfrxMemoView
          Left = 400.958256670000000000
          Top = 1.779530000000000000
          Width = 45.354360000000000000
          Height = 18.897650000000000000
          DisplayFormat.DecimalSeparator = '.'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haCenter
          Memo.UTF8 = (
            #1592#710#1591#167#1591#173#1591#175' '#1593#169#1591#167#1592#8222#1591#167)
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo20: TfrxMemoView
          Left = 352.824366670000000000
          Top = 1.779530000000000000
          Width = 26.456710000000000000
          Height = 18.897650000000000000
          DisplayFormat.DecimalSeparator = '.'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haCenter
          Memo.UTF8 = (
            #1591#1726#1591#185#1591#175#1591#167#1591#175)
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo21: TfrxMemoView
          Left = 278.233766670000000000
          Top = 1.779530000000000000
          Width = 52.913420000000000000
          Height = 18.897650000000000000
          DisplayFormat.DecimalSeparator = '.'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haCenter
          Memo.UTF8 = (
            #1592#8218#1592#1657#1592#8230#1591#1726' '#1592#710#1591#167#1591#173#1591#175)
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo22: TfrxMemoView
          Left = 199.863636670000000000
          Top = 1.779530000000000000
          Width = 41.574830000000000000
          Height = 18.897650000000000000
          DisplayFormat.DecimalSeparator = '.'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haCenter
          Memo.UTF8 = (
            #1592#8230#1591#168#1592#8222#1591#1563' '#1593#169#1592#8222)
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo23: TfrxMemoView
          Left = 69.913420000000000000
          Top = 1.779530000000000000
          Width = 52.913420000000000000
          Height = 18.897650000000000000
          DisplayFormat.DecimalSeparator = '.'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haCenter
          Memo.UTF8 = (
            #1591#180#1591#177#1591#173' '#1593#169#1591#167#1592#8222#1591#167)
          ParentFont = False
          VAlign = vaCenter
        end
        object Line9: TfrxLineView
          Left = 460.200000000000000000
          Height = 22.677180000000000000
          Frame.Typ = [ftLeft]
        end
      end
      object Footer1: TfrxFooter
        Height = 139.842610000000000000
        Top = 260.787570000000000000
        Width = 755.906000000000000000
        object Shape8: TfrxShapeView
          Align = baClient
          Width = 755.906000000000000000
          Height = 139.842610000000000000
          Curve = 1
          Shape = skRoundRectangle
        end
        object Memo47: TfrxMemoView
          Left = 574.827150000000000000
          Top = 3.779530000000000000
          Width = 85.590600000000000000
          Height = 18.897650000000000000
          DataField = #1580#1605#1593' '#1705#1604' '#1601#1575#1705#1578#1608#1585
          DataSet = frxDBFactor
          DataSetName = #1601#1575#1705#1578#1608#1585
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8 = (
            '['#1592#1662#1591#167#1593#169#1591#1726#1592#710#1591#177'."'#1591#172#1592#8230#1591#185' '#1593#169#1592#8222' '#1592#1662#1591#167#1593#169#1591#1726#1592#710#1591#177'"]')
          ParentFont = False
        end
        object Memo48: TfrxMemoView
          Left = 664.197280000000000000
          Top = 3.779530000000000000
          Width = 66.908163330000000000
          Height = 18.897650000000000000
          DisplayFormat.DecimalSeparator = '.'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8 = (
            ':'#1591#172#1592#8230#1591#185' '#1592#8230#1591#168#1592#8222#1591#1563' '#1593#169#1592#8222)
          ParentFont = False
        end
        object Memo49: TfrxMemoView
          Left = 574.827198820000000000
          Top = 26.168522000000000000
          Width = 85.590551180000000000
          Height = 18.897650000000000000
          DataField = #1578#1582#1601#1610#1601
          DataSet = frxDBFactor
          DataSetName = #1601#1575#1705#1578#1608#1585
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8 = (
            '['#1592#1662#1591#167#1593#169#1591#1726#1592#710#1591#177'."'#1591#1726#1591#174#1592#1662#1592#1657#1592#1662'"]')
          ParentFont = False
        end
        object Memo50: TfrxMemoView
          Left = 664.197280000000000000
          Top = 26.168522000000000000
          Width = 37.795300000000000000
          Height = 18.897650000000000000
          DisplayFormat.DecimalSeparator = '.'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8 = (
            ':'#1591#1726#1591#174#1592#1662#1592#1657#1592#1662)
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo51: TfrxMemoView
          Left = 574.827198820000000000
          Top = 115.724490000000000000
          Width = 85.590551180000000000
          Height = 18.897650000000000000
          DataField = #1605#1576#1604#1594' '#1576#1575#1602#1610#1605#1575#1606#1583#1607
          DataSet = frxDBFactor
          DataSetName = #1601#1575#1705#1578#1608#1585
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8 = (
            '['#1592#1662#1591#167#1593#169#1591#1726#1592#710#1591#177'."'#1592#8230#1591#168#1592#8222#1591#1563' '#1591#168#1591#167#1592#8218#1592#1657#1592#8230#1591#167#1592#8224#1591#175#1592#8225'"]')
          ParentFont = False
        end
        object Memo52: TfrxMemoView
          Left = 664.197280000000000000
          Top = 115.724490000000000000
          Width = 68.031540000000000000
          Height = 18.897650000000000000
          DisplayFormat.DecimalSeparator = '.'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8 = (
            ':'#1592#8230#1591#168#1592#8222#1591#1563' '#1591#168#1591#167#1592#8218#1592#1657#1592#8230#1591#167#1592#8224#1591#175#1592#8225)
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo53: TfrxMemoView
          Left = 574.827198820000000000
          Top = 93.335498000000000000
          Width = 85.590551180000000000
          Height = 18.897650000000000000
          DataField = #1605#1576#1604#1594' '#1583#1585#1610#1575#1601#1578#1610
          DataSet = frxDBFactor
          DataSetName = #1601#1575#1705#1578#1608#1585
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8 = (
            '['#1592#1662#1591#167#1593#169#1591#1726#1592#710#1591#177'."'#1592#8230#1591#168#1592#8222#1591#1563' '#1591#175#1591#177#1592#1657#1591#167#1592#1662#1591#1726#1592#1657'"]')
          ParentFont = False
        end
        object Memo54: TfrxMemoView
          Left = 664.197280000000000000
          Top = 93.335498000000000000
          Width = 64.252010000000000000
          Height = 18.897650000000000000
          DisplayFormat.DecimalSeparator = '.'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8 = (
            ':'#1592#8230#1591#168#1592#8222#1591#1563' '#1591#175#1591#177#1592#1657#1591#167#1592#1662#1591#1726#1592#1657)
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo55: TfrxMemoView
          Left = 574.827198820000000000
          Top = 48.557514000000000000
          Width = 85.590551180000000000
          Height = 18.897650000000000000
          DataField = #1580#1605#1593' '#1605#1576#1604#1594' '#1670#1705' '#1607#1575
          DataSet = frxDBFactor
          DataSetName = #1601#1575#1705#1578#1608#1585
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8 = (
            '['#1592#1662#1591#167#1593#169#1591#1726#1592#710#1591#177'."'#1591#172#1592#8230#1591#185' '#1592#8230#1591#168#1592#8222#1591#1563' '#1593#8224#1593#169' '#1592#8225#1591#167'"]')
          ParentFont = False
        end
        object Memo56: TfrxMemoView
          Left = 664.197280000000000000
          Top = 48.557514000000000000
          Width = 86.929190000000000000
          Height = 18.897650000000000000
          DisplayFormat.DecimalSeparator = '.'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8 = (
            ':'#1591#172#1592#8230#1591#185' '#1592#8230#1591#168#1592#8222#1591#1563' '#1593#8224#1593#169' '#1592#8225#1591#167)
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo57: TfrxMemoView
          Left = 574.827198820000000000
          Top = 70.946506000000000000
          Width = 85.590551180000000000
          Height = 18.897650000000000000
          DataField = #1605#1576#1604#1594' '#1606#1587#1610#1607
          DataSet = frxDBFactor
          DataSetName = #1601#1575#1705#1578#1608#1585
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8 = (
            '['#1592#1662#1591#167#1593#169#1591#1726#1592#710#1591#177'."'#1592#8230#1591#168#1592#8222#1591#1563' '#1592#8224#1591#179#1592#1657#1592#8225'"]')
          ParentFont = False
        end
        object Memo58: TfrxMemoView
          Left = 664.197280000000000000
          Top = 70.946506000000000000
          Width = 52.913420000000000000
          Height = 18.897650000000000000
          DisplayFormat.DecimalSeparator = '.'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8 = (
            ':'#1592#8230#1591#168#1592#8222#1591#1563' '#1592#8224#1591#179#1592#1657#1592#8225)
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo59: TfrxMemoView
          Left = 267.378169990000000000
          Top = 3.779530010000000000
          Width = 205.968770000000000000
          Height = 37.795275590551180000
          DataField = #1580#1605#1593' '#1705#1604' '#1576#1607' '#1581#1585#1608#1601
          DataSet = frxDBFactor
          DataSetName = #1601#1575#1705#1578#1608#1585
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8 = (
            '['#1592#1662#1591#167#1593#169#1591#1726#1592#710#1591#177'."'#1591#172#1592#8230#1591#185' '#1593#169#1592#8222' '#1591#168#1592#8225' '#1591#173#1591#177#1592#710#1592#1662'"]')
          ParentFont = False
        end
        object Memo60: TfrxMemoView
          Left = 477.751083320000000000
          Top = 3.779530010000000000
          Width = 52.929190000000000000
          Height = 18.897650000000000000
          DisplayFormat.DecimalSeparator = '.'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8 = (
            ': '#1591#168#1592#8225' '#1591#173#1591#177#1592#710#1592#1662)
          ParentFont = False
        end
        object Memo61: TfrxMemoView
          Left = 6.711503310000000000
          Top = 48.557514000000000000
          Width = 445.302103340000000000
          Height = 18.897637800000000000
          DataField = #1578#1608#1590#1610#1581#1575#1578' '#1601#1575#1705#1578#1608#1585
          DataSet = frxDBFactor
          DataSetName = #1601#1575#1705#1578#1608#1585
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8 = (
            '['#1592#1662#1591#167#1593#169#1591#1726#1592#710#1591#177'."'#1591#1726#1592#710#1591#182#1592#1657#1591#173#1591#167#1591#1726' '#1592#1662#1591#167#1593#169#1591#1726#1592#710#1591#177'"]')
          ParentFont = False
        end
        object Memo62: TfrxMemoView
          Left = 455.530613320000000000
          Top = 48.557514000000000000
          Width = 75.149660000000000000
          Height = 18.897650000000000000
          DisplayFormat.DecimalSeparator = '.'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8 = (
            ':'#1591#1726#1592#710#1591#182#1592#1657#1591#173#1591#167#1591#1726' '#1592#1662#1591#167#1593#169#1591#1726#1592#710#1591#177)
          ParentFont = False
        end
        object Memo63: TfrxMemoView
          Left = 322.084416670000000000
          Top = 76.042053330000000000
          Width = 83.149660000000000000
          Height = 18.897650000000000000
          DisplayFormat.DecimalSeparator = '.'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haCenter
          Memo.UTF8 = (
            #1591#167#1592#8230#1591#182#1591#167#1592#1657' '#1592#1662#1591#177#1592#710#1591#180#1592#8224#1591#175#1592#8225)
          ParentFont = False
        end
        object Memo64: TfrxMemoView
          Left = 58.672233340000000000
          Top = 76.042053330000000000
          Width = 79.370130000000000000
          Height = 18.897650000000000000
          DisplayFormat.DecimalSeparator = '.'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haCenter
          Memo.UTF8 = (
            #1591#167#1592#8230#1591#182#1591#167#1592#1657' '#1591#174#1591#177#1592#1657#1591#175#1591#167#1591#177)
          ParentFont = False
        end
        object Memo2: TfrxMemoView
          Left = 544.585653330000000000
          Top = 3.779530000000000000
          Width = 26.456710000000000000
          Height = 18.897650000000000000
          DisplayFormat.DecimalSeparator = '.'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8 = (
            #1591#177#1592#1657#1591#167#1592#8222)
          ParentFont = False
        end
        object Memo13: TfrxMemoView
          Left = 177.296587930000000000
          Top = 3.432900000000000000
          Width = 83.370078740000000000
          Height = 18.897650000000000000
          DataField = #1580#1605#1593' '#1705#1604' '#1601#1575#1705#1578#1608#1585
          DataSet = frxDBFactor
          DataSetName = #1601#1575#1705#1578#1608#1585
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haRight
          Memo.UTF8 = (
            '['#1592#1662#1591#167#1593#169#1591#1726#1592#710#1591#177'."'#1591#172#1592#8230#1591#185' '#1593#169#1592#8222' '#1592#1662#1591#167#1593#169#1591#1726#1592#710#1591#177'"]')
          ParentFont = False
        end
        object Memo31: TfrxMemoView
          Left = 146.666666670000000000
          Top = 3.212430000000000000
          Width = 26.456710000000000000
          Height = 18.897650000000000000
          DisplayFormat.DecimalSeparator = '.'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8 = (
            #1591#177#1592#1657#1591#167#1592#8222)
          ParentFont = False
        end
      end
      object PageHeader1: TfrxPageHeader
        Height = 30.236240000000000000
        Top = 18.897650000000000000
        Width = 755.906000000000000000
        object Memo29: TfrxMemoView
          Left = 304.120903335000000000
          Top = 3.000000000000000000
          Width = 147.664193330000000000
          Height = 22.677180000000000000
          DataField = #1606#1608#1593' '#1601#1575#1705#1578#1608#1585
          DataSet = frxDBFactor
          DataSetName = #1601#1575#1705#1578#1608#1585
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haCenter
          Memo.UTF8 = (
            '['#1592#1662#1591#167#1593#169#1591#1726#1592#710#1591#177'."'#1592#8224#1592#710#1591#185' '#1592#1662#1591#167#1593#169#1591#1726#1592#710#1591#177'"]')
          ParentFont = False
        end
        object Memo30: TfrxMemoView
          Left = 463.010823330000000000
          Top = 5.000000000000000000
          Width = 288.115646670000000000
          Height = 18.897650000000000000
          DisplayFormat.DecimalSeparator = '.'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8 = (
            '. . . '#1591#180#1591#177#1593#169#1591#1726)
          ParentFont = False
        end
      end
      object PageFooter1: TfrxPageFooter
        Height = 22.677180000000000000
        Top = 457.323130000000000000
        Width = 755.906000000000000000
        object Shape3: TfrxShapeView
          Align = baClient
          Width = 755.906000000000000000
          Height = 22.677180000000000000
          Color = 15921906
          Shape = skRoundRectangle
        end
        object Memo1: TfrxMemoView
          Left = 359.055350000000000000
          Top = 3.000000000000000000
          Width = 385.512060000000000000
          Height = 18.897650000000000000
          AutoWidth = True
          DisplayFormat.DecimalSeparator = '.'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8 = (
            
              #1592#8224#1591#177#1592#8230' '#1591#167#1592#1662#1591#178#1591#167#1591#177' '#1591#185#1593#169#1591#167#1591#179#1592#1657' '#1592#710' '#1592#1662#1592#1657#1592#8222#1592#8230#1591#168#1591#177#1591#175#1591#167#1591#177#1592#1657' '#1592#8225#1592#710#1591#180#1592#8230#1592#8224#1591 +
              #175'   '#1591#1726#1592#8222#1592#1662#1592#8224' :   09354856065   '#1592#710'   55014044 -021')
          ParentFont = False
          VAlign = vaCenter
        end
      end
    end
  end
  object QrCust: TQuery
    DatabaseName = 'MySoftDB'
    SQL.Strings = (
      'Select * '
      'From Cust'
      'Where (1=1)')
    Left = 112
    Top = 77
    object QrCustCust_ID: TIntegerField
      FieldName = 'Cust_ID'
      Origin = 'MYSOFTDB.Cust.Cust_ID'
    end
    object QrCustCode: TIntegerField
      Tag = 1
      DisplayLabel = #1603#1583' '#1605#1588#1578#1585#1610
      FieldName = 'Code'
      Origin = 'MYSOFTDB.Cust.Code'
    end
    object QrCustName: TStringField
      Tag = 1
      DisplayLabel = #1606#1575#1605' '#1605#1588#1578#1585#1610
      DisplayWidth = 20
      FieldName = 'Name'
      Origin = 'MYSOFTDB.Cust.Name'
      FixedChar = True
      Size = 100
    end
    object QrCustGender: TSmallintField
      Tag = 1
      DisplayLabel = #1580#1606#1587#1610#1578
      DisplayWidth = 6
      FieldName = 'Gender'
      Origin = 'MYSOFTDB.Cust.Gender'
    end
    object QrCustShenasnameh: TStringField
      Tag = 1
      Alignment = taRightJustify
      DisplayLabel = #1588'.'#1588#1606#1575#1587#1606#1575#1605#1607
      DisplayWidth = 10
      FieldName = 'Shenasnameh'
      Origin = 'MYSOFTDB.Cust.Shenasnameh'
      FixedChar = True
      Size = 100
    end
    object QrCustCodeMeli: TStringField
      Tag = 1
      Alignment = taRightJustify
      DisplayLabel = #1603#1583' '#1605#1604#1610
      DisplayWidth = 15
      FieldName = 'CodeMeli'
      Origin = 'MYSOFTDB.Cust.CodeMeli'
      FixedChar = True
      Size = 60
    end
    object QrCustBornDate: TStringField
      Tag = 1
      DisplayLabel = #1578#1575#1585#1610#1582' '#1578#1608#1604#1610#1583
      DisplayWidth = 11
      FieldName = 'BornDate'
      Origin = 'MYSOFTDB.Cust.BornDate'
      FixedChar = True
      Size = 50
    end
    object QrCustAge: TIntegerField
      Tag = 1
      DisplayLabel = #1587#1606
      DisplayWidth = 5
      FieldName = 'Age'
      Origin = 'MYSOFTDB.Cust.Age'
    end
    object QrCustTel1: TStringField
      Tag = 1
      DisplayLabel = #1578#1604#1601#1606'1'
      DisplayWidth = 15
      FieldName = 'Tel1'
      Origin = 'MYSOFTDB.Cust.Tel1'
      FixedChar = True
      Size = 40
    end
    object QrCustTel2: TStringField
      Tag = 1
      DisplayLabel = #1578#1604#1601#1606'2'
      DisplayWidth = 15
      FieldName = 'Tel2'
      Origin = 'MYSOFTDB.Cust.Tel2'
      FixedChar = True
      Size = 40
    end
    object QrCustMobail: TStringField
      Tag = 1
      DisplayLabel = #1607#1605#1585#1575#1607
      DisplayWidth = 15
      FieldName = 'Mobail'
      Origin = 'MYSOFTDB.Cust.Mobail'
      FixedChar = True
      Size = 40
    end
    object QrCustAddress: TStringField
      Tag = 1
      DisplayLabel = #1570#1583#1585#1587
      DisplayWidth = 50
      FieldName = 'Address'
      Origin = 'MYSOFTDB.Cust.Address'
      FixedChar = True
      Size = 255
    end
  end
  object QrFacType: TQuery
    DatabaseName = 'MySoftDB'
    SQL.Strings = (
      'Select 1 as FacType_ID , '#39#1601#1585#1608#1588#39' as TypeName , '#39'F'#39' as Type'
      'Union'
      'Select 2 as FacType_ID , '#39#1582#1585#1610#1583#39' as TypeName , '#39'KH'#39' as Type'
      'Union'
      'Select 3 as FacType_ID , '#39#1662#1610#1588' '#1601#1575#1705#1578#1608#1585#39' as TypeName , '#39'P'#39' as Type'
      'Union'
      
        'Select 4 as FacType_ID , '#39#1576#1585#1711#1588#1578' '#1575#1586' '#1601#1585#1608#1588#39' as TypeName , '#39'BF'#39' as T' +
        'ype'
      'Union'
      
        'Select 5 as FacType_ID , '#39#1576#1585#1711#1588#1578' '#1575#1586' '#1582#1585#1610#1583#39' as TypeName , '#39'BKH'#39' as ' +
        'Type'
      'Union'
      'Select 6 as FacType_ID , '#39#1575#1605#1575#1606#1610#39' as TypeName , '#39'A'#39' as Type'
      'Union'
      'Select 7 as FacType_ID , '#39#1575#1589#1591#1607#1604#1575#1705#39' as TypeName , '#39'E'#39' as Type')
    Left = 184
    Top = 24
    object QrFacTypeFacType_ID: TIntegerField
      FieldName = 'FacType_ID'
    end
    object QrFacTypeTypeName: TStringField
      Alignment = taCenter
      FieldName = 'TypeName'
      FixedChar = True
      Size = 13
    end
    object QrFacTypeType: TStringField
      FieldName = 'Type'
      FixedChar = True
      Size = 3
    end
  end
  object DSFacType: TDataSource
    AutoEdit = False
    DataSet = QrFacType
    Left = 185
    Top = 77
  end
  object QrArticle: TQuery
    DatabaseName = 'MySoftDB'
    SQL.Strings = (
      'Select *'
      'From Article'
      'Where (1=1)')
    Left = 112
    Top = 130
    object QrArticleArticle_ID: TStringField
      FieldName = 'Article_ID'
      Origin = 'MYSOFTDB.Article.Article_ID'
      FixedChar = True
      Size = 7
    end
    object QrArticleCode: TIntegerField
      Tag = 1
      DisplayLabel = #1705#1583' '#1705#1575#1604#1575
      DisplayWidth = 5
      FieldName = 'Code'
      Origin = 'MYSOFTDB.Article.Code'
    end
    object QrArticleName: TStringField
      Tag = 1
      DisplayLabel = #1606#1575#1605' '#1705#1575#1604#1575
      DisplayWidth = 30
      FieldName = 'Name'
      Origin = 'MYSOFTDB.Article.Name'
      FixedChar = True
      Size = 100
    end
    object QrArticleExist: TIntegerField
      Tag = 1
      DisplayLabel = #1605#1608#1580#1608#1583#1610' '#1601#1593#1604#1610
      DisplayWidth = 10
      FieldName = 'Exist'
      Origin = 'MYSOFTDB.Article.Exist'
    end
  end
  object QrPersonel: TQuery
    DatabaseName = 'MySoftDB'
    SQL.Strings = (
      'Select Personel_ID,Code , Name , Family '
      'From Personel'
      'Where (1=1)')
    Left = 112
    Top = 184
    object QrPersonelPersonel_ID: TIntegerField
      FieldName = 'Personel_ID'
      Origin = 'MYSOFTDB.Personel.Personel_ID'
    end
    object QrPersonelCode: TIntegerField
      Tag = 1
      DisplayLabel = #1705#1583' '#1662#1585#1587#1606#1604
      DisplayWidth = 5
      FieldName = 'Code'
      Origin = 'MYSOFTDB.Personel.Code'
    end
    object QrPersonelName: TStringField
      Tag = 1
      DisplayLabel = #1606#1575#1605' '#1662#1585#1587#1606#1604
      DisplayWidth = 15
      FieldName = 'Name'
      Origin = 'MYSOFTDB.Personel.Name'
      FixedChar = True
      Size = 100
    end
    object QrPersonelFamily: TStringField
      Tag = 1
      DisplayLabel = #1606#1575#1605' '#1582#1575#1606#1608#1575#1583#1711#1610' '#1662#1585#1587#1606#1604
      DisplayWidth = 25
      FieldName = 'Family'
      Origin = 'MYSOFTDB.Personel.Family'
      FixedChar = True
      Size = 100
    end
  end
  object QrFacDetails: TQuery
    Active = True
    BeforeOpen = QrFacDetailsBeforeOpen
    DatabaseName = 'MySoftDB'
    SQL.Strings = (
      
        'Select FD.Factor_Ref , Art.Code as ArtCode , RTrim(Art.Name) as ' +
        'ArtName'
      
        '       , RTrim(U.Name) as ArtUnitName , Art.Tozihat as ArtToziha' +
        't'
      '       , FD.ArtCount , FD.UnitPrice as ArtUnitPrice'
      
        '       , (FD.UnitPrice * FD.ArtCount * U.UnitCount) as ArtTotalP' +
        'rice'
      'from FacDetails FD , Article Art , Unit U'
      'Where(FD.Article_Ref = Art.Article_ID)'
      '  And(FD.Unit_Ref = U.Unit_ID)'
      '  And(FD.Factor_Ref = :Factor_ID)'
      'Order By FD.FacDetails_ID')
    Left = 264
    Top = 24
    ParamData = <
      item
        DataType = ftInteger
        Name = 'Factor_ID'
        ParamType = ptInput
      end>
    object QrFacDetailsFactor_Ref: TIntegerField
      FieldName = 'Factor_Ref'
    end
    object QrFacDetailsArtCode: TIntegerField
      FieldName = 'ArtCode'
      OnGetText = QrFactorFacDateGetText
    end
    object QrFacDetailsArtName: TStringField
      Alignment = taRightJustify
      FieldName = 'ArtName'
      FixedChar = True
      Size = 100
    end
    object QrFacDetailsArtUnitName: TStringField
      Alignment = taRightJustify
      FieldName = 'ArtUnitName'
      FixedChar = True
      Size = 100
    end
    object QrFacDetailsArtTozihat: TStringField
      Alignment = taRightJustify
      FieldName = 'ArtTozihat'
      FixedChar = True
      Size = 255
    end
    object QrFacDetailsArtCount: TIntegerField
      FieldName = 'ArtCount'
      OnGetText = QrFactorFacDateGetText
    end
    object QrFacDetailsArtUnitPrice: TFloatField
      FieldName = 'ArtUnitPrice'
      OnGetText = QrFactorFactorePriceGetText
    end
    object QrFacDetailsArtTotalPrice: TFloatField
      FieldName = 'ArtTotalPrice'
      OnGetText = QrFactorFactorePriceGetText
    end
  end
  object DSFacDetails: TDataSource
    AutoEdit = False
    DataSet = QrFacDetails
    Left = 264
    Top = 77
  end
  object frxDBFacDetails: TfrxDBDataset
    UserName = #1604#1610#1587#1578' '#1705#1575#1604#1575' '#1607#1575
    CloseDataSource = False
    FieldAliases.Strings = (
      '-Factor_Ref=Factor_Ref'
      'ArtCode='#1705#1583' '#1705#1575#1604#1575
      'ArtName='#1606#1575#1605' '#1705#1575#1604#1575
      'ArtUnitName='#1608#1575#1581#1583' '#1705#1575#1604#1575
      'ArtCount='#1578#1593#1583#1575#1583
      'ArtUnitPrice='#1602#1610#1605#1578' '#1608#1575#1581#1583
      'ArtTozihat='#1588#1585#1581' '#1705#1575#1604#1575
      'ArtTotalPrice='#1605#1576#1604#1594' '#1705#1604)
    DataSet = QrFacDetails
    Left = 264
    Top = 130
  end
  object frxMailExport1: TfrxMailExport
    UseFileCache = True
    ShowProgress = True
    ShowExportDialog = True
    SmtpPort = 25
    UseIniFile = True
    Left = 280
    Top = 208
  end
end
