object DMReport: TDMReport
  OldCreateOrder = False
  Left = 811
  Top = 274
  Height = 444
  Width = 548
  object WordExport: TfrxDOCXExport
    UseFileCache = True
    ShowProgress = True
    OverwritePrompt = False
    DataOnly = False
    OpenAfterExport = False
    PictureType = gpPNG
    Left = 203
    Top = 20
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
    TemplatesExt = 'fr3'
    Restrictions = []
    RTLLanguage = False
    MemoParentFont = False
    Left = 464
    Top = 28
  end
  object frxReport_New: TfrxReport
    Version = '5.4.6'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick]
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = #1662#1610#1588' '#1601#1585#1590
    PrintOptions.PrintOnSheet = 0
    ReportOptions.CreateDate = 45658.752541527780000000
    ReportOptions.LastChange = 45658.752541527780000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      'begin'
      ''
      'end.')
    Left = 29
    Top = 21
    Datasets = <
      item
        DataSet = frxDBReport
        DataSetName = #1670#1575#1662
      end>
    Variables = <>
    Style = <>
    object Data: TfrxDataPage
      Height = 1000.000000000000000000
      Width = 1000.000000000000000000
    end
    object Page1: TfrxReportPage
      PaperWidth = 215.900000000000000000
      PaperHeight = 279.400000000000000000
      PaperSize = 121
      LeftMargin = 3.000000000000000000
      RightMargin = 3.000000000000000000
      TopMargin = 10.000000000000000000
      BottomMargin = 2.000000000000000000
      object AlignLeft_3: TfrxMemoView
        Align = baLeft
        Width = 113.385900000000000000
        Height = 680.315400000000000000
        Visibility = [vsPreview, vsExport]
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = []
        Frame.Typ = [ftRight]
        ParentFont = False
      end
      object AlignRight_3_50: TfrxMemoView
        Align = baRight
        Left = 661.039797000000000000
        Width = 132.283550000000000000
        Height = 680.315400000000000000
        Visibility = [vsPreview, vsExport]
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = []
        Frame.Typ = [ftLeft]
        ParentFont = False
      end
      object AlignBottom_8_70: TfrxMemoView
        Align = baBottom
        Top = 681.827212000000000000
        Width = 801.260360000000000000
        Height = 328.819110000000000000
        Visibility = [vsPreview, vsExport]
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
      end
      object MemName1: TfrxMemoView
        Align = baRight
        ShiftMode = smDontShift
        Left = 472.063297000000000000
        Top = 95.981102360000000000
        Width = 188.976500000000000000
        Height = 49.133858270000000000
        DisplayFormat.DecimalSeparator = '/'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -19
        Font.Name = '2  Nazanin'
        Font.Style = []
        Frame.Typ = [ftRight, ftTop]
        HAlign = haRight
        Memo.UTF8 = (
          ' '#1593#169#1592#8222#1591#167#1591#179#1592#8225' '#1592#190#1591#177#1592#710#1592#8224#1591#175#1592#8225' '#1591#1726#1591#177#1593#169#1594#338#1591#168#1594#338'  ')
        ParentFont = False
        VAlign = vaCenter
      end
      object MemName2: TfrxMemoView
        Align = baRight
        ShiftMode = smDontShift
        Left = 472.063297000000000000
        Top = 195.551330000000000000
        Width = 188.976500000000000000
        Height = 49.133858270000000000
        DisplayFormat.DecimalSeparator = '/'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -19
        Font.Name = '2  Nazanin'
        Font.Style = []
        Frame.Typ = [ftRight, ftTop, ftBottom]
        HAlign = haRight
        Memo.UTF8 = (
          ' '#1591#180#1592#8230#1591#167#1591#177#1592#8225' '#1591#172#1592#8222#1591#175' '#1592#190#1591#177#1592#710#1592#8224#1591#175#1592#8225'  ')
        ParentFont = False
        VAlign = vaCenter
      end
      object MemName4: TfrxMemoView
        Align = baRight
        ShiftMode = smDontShift
        Left = 472.063297000000000000
        Top = 245.244280000000000000
        Width = 188.976500000000000000
        Height = 49.133858270000000000
        DisplayFormat.DecimalSeparator = '/'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -19
        Font.Name = '2  Nazanin'
        Font.Style = []
        Frame.Typ = [ftRight, ftTop, ftBottom]
        HAlign = haRight
        Memo.UTF8 = (
          ' '#1592#8224#1591#167#1592#8230' '#1591#183#1591#177#1591#173'  ')
        ParentFont = False
        VAlign = vaCenter
      end
      object MemName5: TfrxMemoView
        Align = baRight
        ShiftMode = smDontShift
        Left = 426.708937000000000000
        Top = 294.937230000000000000
        Width = 234.330860000000000000
        Height = 37.795300000000000000
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -19
        Font.Name = '2  Nazanin'
        Font.Style = []
        Frame.Typ = [ftLeft, ftRight, ftBottom]
        HAlign = haRight
        Memo.UTF8 = (
          ' '#1592#8224#1591#167#1592#8230' '#1592#710' '#1592#8224#1591#167#1592#8230' '#1591#174#1591#167#1592#8224#1592#710#1591#167#1591#175#1593#175#1594#338'   ')
        ParentFont = False
        VAlign = vaCenter
      end
      object MemDesc11: TfrxMemoView
        Align = baLeft
        ShiftMode = smDontShift
        Left = 113.385900000000000000
        Top = 96.228448980000000000
        Width = 358.677397000000000000
        Height = 49.133858270000000000
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -19
        Font.Name = '2  Jadid'
        Font.Style = [fsBold]
        Frame.Typ = [ftLeft, ftRight, ftTop]
        HAlign = haCenter
        ParentFont = False
        VAlign = vaCenter
      end
      object MemDesc2: TfrxMemoView
        Align = baLeft
        ShiftMode = smDontShift
        Left = 113.385900000000000000
        Top = 195.401574800000000000
        Width = 358.677397000000000000
        Height = 49.133858270000000000
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -23
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
        HAlign = haCenter
        ParentFont = False
        VAlign = vaCenter
      end
      object MemDesc4: TfrxMemoView
        Align = baLeft
        ShiftMode = smDontShift
        Left = 113.385900000000000000
        Top = 245.291338580000000000
        Width = 359.055350000000000000
        Height = 49.133858270000000000
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -23
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
        HAlign = haCenter
        Memo.UTF8 = (
          '')
        ParentFont = False
        VAlign = vaCenter
      end
      object MemDesc5: TfrxMemoView
        Align = baRight
        ShiftMode = smDontShift
        Left = 426.708937000000000000
        Top = 333.512060000000000000
        Width = 234.330860000000000000
        Height = 34.015728500000000000
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = '2  Nazanin'
        Font.Style = [fsBold]
        Frame.Typ = [ftLeft, ftRight]
        HAlign = haCenter
        Memo.UTF8 = (
          '')
        ParentFont = False
        VAlign = vaCenter
      end
      object MHeader: TfrxMemoView
        Align = baWidth
        ShiftMode = smDontShift
        Left = 113.385900000000000000
        Width = 547.653897000000000000
        Height = 31.748031500000000000
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -25
        Font.Name = '2  Nazanin'
        Font.Style = [fsBold]
        Frame.Typ = [ftLeft, ftRight, ftTop]
        HAlign = haCenter
        Memo.UTF8 = (
          #1591#180#1591#177#1593#169#1591#1726' '#1593#175#1591#179#1591#1726#1591#177#1591#180' '#1592#1662#1592#8224' '#1591#162#1592#710#1591#177#1591#167#1592#8224' '#1591#167#1591#183#1592#8222#1591#167#1591#185#1591#167#1591#1726' '#1594#338#1593#175#1591#167#1592#8224#1592#8225)
        ParentFont = False
      end
      object MemName0: TfrxMemoView
        Align = baRight
        ShiftMode = smDontShift
        Left = 472.063297000000000000
        Top = 145.944960000000000000
        Width = 188.976500000000000000
        Height = 49.133858270000000000
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -19
        Font.Name = '2  Nazanin'
        Font.Style = []
        Frame.Typ = [ftRight, ftTop]
        HAlign = haRight
        Memo.UTF8 = (
          ' '#1591#167#1591#183#1592#8222#1591#167#1591#185#1591#167#1591#1726' '#1593#169#1592#8222#1594#338' '#1592#190#1591#177#1592#710#1592#8224#1591#175#1592#8225'  ')
        ParentFont = False
        VAlign = vaCenter
      end
      object MemDesc0: TfrxMemoView
        Align = baLeft
        ShiftMode = smDontShift
        Left = 113.385900000000000000
        Top = 145.889763780000000000
        Width = 359.055350000000000000
        Height = 49.133858270000000000
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -23
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        Frame.Typ = [ftLeft, ftRight, ftTop]
        HAlign = haCenter
        ParentFont = False
      end
      object Memo4: TfrxMemoView
        Align = baLeft
        ShiftMode = smDontShift
        Left = 113.385900000000000000
        Top = 294.913305280000000000
        Width = 173.480427000000000000
        Height = 37.795300000000000000
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -19
        Font.Name = '2  Nazanin'
        Font.Style = []
        Frame.Typ = [ftLeft, ftRight, ftBottom]
        HAlign = haCenter
        Memo.UTF8 = (
          #1593#169#1591#175#1592#8230#1592#8222#1592#1657'  ')
        ParentFont = False
        VAlign = vaCenter
      end
      object Memo5: TfrxMemoView
        Align = baLeft
        ShiftMode = smDontShift
        Left = 113.385900000000000000
        Top = 333.488093780000000000
        Width = 173.480427000000000000
        Height = 34.015728500000000000
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = '2  Nazanin'
        Font.Style = [fsBold]
        Frame.Typ = [ftLeft, ftRight, ftTop]
        HAlign = haCenter
        ParentFont = False
        VAlign = vaCenter
      end
      object Memo6: TfrxMemoView
        Align = baRight
        ShiftMode = smDontShift
        Left = 286.866327000000000000
        Top = 294.913305280000000000
        Width = 139.842610000000000000
        Height = 37.795300000000000000
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -19
        Font.Name = '2  Nazanin'
        Font.Style = []
        Frame.Typ = [ftLeft, ftRight, ftBottom]
        HAlign = haCenter
        Memo.UTF8 = (
          ' '#1592#8224#1591#167#1592#8230' '#1592#190#1591#175#1591#177'  ')
        ParentFont = False
        VAlign = vaCenter
      end
      object Memo7: TfrxMemoView
        Align = baRight
        ShiftMode = smDontShift
        Left = 286.866327000000000000
        Top = 333.488093780000000000
        Width = 139.842610000000000000
        Height = 34.015728500000000000
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = '2  Nazanin'
        Font.Style = [fsBold]
        Frame.Typ = [ftLeft, ftRight, ftTop]
        HAlign = haCenter
        Memo.UTF8 = (
          '')
        ParentFont = False
        VAlign = vaCenter
      end
      object Memo8: TfrxMemoView
        Align = baWidth
        ShiftMode = smDontShift
        Left = 113.385900000000000000
        Top = 32.795300000000000000
        Width = 547.653897000000000000
        Height = 30.992125980000000000
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -24
        Font.Name = '2  Nazanin'
        Font.Style = []
        Frame.Typ = [ftLeft, ftRight]
        HAlign = haCenter
        Memo.UTF8 = (
          #1591#177#1592#710#1593#169#1591#180' '#1592#190#1591#177#1592#710#1592#8224#1591#175#1592#8225)
        ParentFont = False
      end
      object Memo9: TfrxMemoView
        Align = baWidth
        ShiftMode = smDontShift
        Left = 113.385900000000000000
        Top = 63.913420000000000000
        Width = 547.653897000000000000
        Height = 30.992099130000000000
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -24
        Font.Name = 'MRT_Abasan'
        Font.Style = [fsBold]
        Frame.Typ = [ftLeft, ftRight]
        HAlign = haCenter
        Memo.UTF8 = (
          #1591#180#1592#8225#1591#177#1591#175#1591#167#1591#177#1592#1657' '#1591#167#1591#181#1592#1662#1592#8225#1591#167#1592#8224)
        ParentFont = False
      end
      object MemName6: TfrxMemoView
        Align = baRight
        ShiftMode = smDontShift
        Left = 472.063297000000000000
        Top = 368.173470000000000000
        Width = 188.976500000000000000
        Height = 63.874015750000000000
        DisplayFormat.DecimalSeparator = '/'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -19
        Font.Name = '2  Nazanin'
        Font.Style = []
        Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
        HAlign = haRight
        Memo.UTF8 = (
          ' '#1592#8230#1591#180#1591#174#1591#181#1591#167#1591#1726' '#1591#171#1591#168#1591#1726#1594#338' '#1592#8230#1592#8222#1593#169'  ')
        ParentFont = False
        VAlign = vaCenter
      end
      object MemName7: TfrxMemoView
        Align = baRight
        ShiftMode = smDontShift
        Left = 472.063297000000000000
        Top = 432.354882360000000000
        Width = 188.976500000000000000
        Height = 52.913385830000000000
        DisplayFormat.DecimalSeparator = '/'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -19
        Font.Name = '2  Nazanin'
        Font.Style = []
        Frame.Typ = [ftLeft, ftRight, ftBottom]
        HAlign = haRight
        Memo.UTF8 = (
          ' '#1591#162#1591#175#1591#177#1591#179' '#1592#710#1592#8218#1592#710#1591#185' '#1592#8230#1592#8222#1593#169'  ')
        ParentFont = False
        VAlign = vaCenter
      end
      object MemDesc7: TfrxMemoView
        Align = baLeft
        ShiftMode = smDontShift
        Left = 113.385900000000000000
        Top = 432.354882360000000000
        Width = 359.055350000000000000
        Height = 52.913385830000000000
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = '2  Nazanin'
        Font.Style = [fsBold]
        Frame.Typ = [ftLeft, ftRight, ftBottom]
        HAlign = haCenter
        ParentFont = False
        VAlign = vaCenter
      end
      object MemDesc60: TfrxMemoView
        Align = baRight
        ShiftMode = smDontShift
        Left = 275.346630000000000000
        Top = 368.079011100000000000
        Width = 94.488250000000000000
        Height = 26.456710000000000000
        DisplayFormat.DecimalSeparator = '/'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -19
        Font.Name = '2  Nazanin'
        Font.Style = []
        Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
        HAlign = haCenter
        Memo.UTF8 = (
          ' '#1591#168#1591#174#1591#180)
        ParentFont = False
      end
      object MemDesc62: TfrxMemoView
        Align = baLeft
        ShiftMode = smDontShift
        Left = 369.834880000000000000
        Top = 368.197050550000000000
        Width = 102.047310000000000000
        Height = 26.456710000000000000
        DisplayFormat.DecimalSeparator = '/'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -19
        Font.Name = '2  Nazanin'
        Font.Style = []
        Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
        HAlign = haCenter
        Memo.UTF8 = (
          ' '#1592#190#1592#8222#1591#167#1593#169' '#1592#1662#1591#177#1591#185#1594#338)
        ParentFont = False
      end
      object MemDesc63: TfrxMemoView
        Align = baRight
        ShiftMode = smDontShift
        Left = 275.346630000000000000
        Top = 395.157751260000000000
        Width = 94.488250000000000000
        Height = 36.661417320000000000
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -19
        Font.Name = '2  Nazanin'
        Font.Style = [fsBold]
        Frame.Typ = [ftLeft, ftRight, ftBottom]
        HAlign = haCenter
        ParentFont = False
        VAlign = vaCenter
      end
      object MemDesc65: TfrxMemoView
        Align = baLeft
        ShiftMode = smDontShift
        Left = 369.834880000000000000
        Top = 395.031696220000000000
        Width = 102.047205040000000000
        Height = 36.661417320000000000
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -19
        Font.Name = '2  Nazanin'
        Font.Style = [fsBold]
        Frame.Typ = [ftLeft, ftRight, ftBottom]
        HAlign = haCenter
        Memo.UTF8 = (
          '')
        ParentFont = False
        VAlign = vaCenter
      end
      object MemDesc61: TfrxMemoView
        Align = baRight
        ShiftMode = smDontShift
        Left = 112.826840000000000000
        Top = 368.173470000000000000
        Width = 162.519790000000000000
        Height = 26.456710000000000000
        DisplayFormat.DecimalSeparator = '/'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -19
        Font.Name = '2  Nazanin'
        Font.Style = []
        Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
        HAlign = haCenter
        Memo.UTF8 = (
          ' '#1592#190#1592#8222#1591#167#1593#169' '#1591#167#1591#181#1592#8222#1594#338)
        ParentFont = False
      end
      object MemDesc64: TfrxMemoView
        Align = baRight
        ShiftMode = smDontShift
        Left = 112.826661810000000000
        Top = 395.157717080000000000
        Width = 162.519968190000000000
        Height = 36.661417320000000000
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -19
        Font.Name = '2  Nazanin'
        Font.Style = [fsBold]
        Frame.Typ = [ftLeft, ftRight, ftBottom]
        HAlign = haCenter
        Memo.UTF8 = (
          '')
        ParentFont = False
        VAlign = vaCenter
      end
      object MemName8: TfrxMemoView
        Align = baRight
        ShiftMode = smDontShift
        Left = 472.063297000000000000
        Top = 486.338900000000000000
        Width = 188.976500000000000000
        Height = 52.913385830000000000
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -19
        Font.Name = '2  Nazanin'
        Font.Style = []
        Frame.Typ = [ftLeft, ftRight, ftBottom]
        HAlign = haRight
        Memo.UTF8 = (
          ' '#1593#169#1591#175' '#1592#8224#1592#710#1591#179#1591#167#1591#178#1592#1657'  ')
        ParentFont = False
        VAlign = vaCenter
      end
      object MemName9: TfrxMemoView
        Align = baRight
        ShiftMode = smDontShift
        Left = 472.063297000000000000
        Top = 540.031850000000000000
        Width = 188.976500000000000000
        Height = 52.913385830000000000
        DisplayFormat.DecimalSeparator = '/'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -19
        Font.Name = '2  Nazanin'
        Font.Style = []
        Frame.Typ = [ftLeft, ftRight, ftBottom]
        HAlign = haRight
        Memo.UTF8 = (
          ' '#1591#1726#1592#710#1591#182#1594#338#1591#173#1591#167#1591#1726'  ')
        ParentFont = False
        VAlign = vaCenter
      end
      object MemDesc8: TfrxMemoView
        Align = baLeft
        ShiftMode = smDontShift
        Left = 113.385900000000000000
        Top = 486.338900000000000000
        Width = 359.055350000000000000
        Height = 52.913385830000000000
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = '2  Nazanin'
        Font.Style = [fsBold]
        Frame.Typ = [ftLeft, ftRight, ftBottom]
        HAlign = haCenter
        Memo.UTF8 = (
          '')
        ParentFont = False
        VAlign = vaCenter
      end
      object MemDesc9: TfrxMemoView
        Align = baLeft
        ShiftMode = smDontShift
        Left = 113.385900000000000000
        Top = 540.031850000000000000
        Width = 359.055350000000000000
        Height = 52.913385830000000000
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = '2  Nazanin'
        Font.Style = [fsBold]
        Frame.Typ = [ftLeft, ftRight, ftBottom]
        HAlign = haCenter
        ParentFont = False
        VAlign = vaCenter
      end
      object MemDetail: TfrxMemoView
        Align = baWidth
        ShiftMode = smDontShift
        Left = 113.385900000000000000
        Top = 593.386210000000000000
        Width = 547.653897000000000000
        Height = 26.456710000000000000
        DisplayFormat.DecimalSeparator = '/'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = '2  Nazanin'
        Font.Style = [fsBold]
        Frame.Typ = [ftLeft, ftRight]
        HAlign = haCenter
        Memo.UTF8 = (
          #1593#169#1591#167#1591#177#1591#168#1591#177#1591#167#1592#8224' '#1591#162#1591#177#1591#180#1594#338#1592#710' '#1591#167#1592#8222#1593#169#1591#1726#1591#177#1592#710#1592#8224#1594#338#1593#169#1594#338)
        ParentFont = False
        VAlign = vaCenter
      end
      object MemDetail1: TfrxMemoView
        Align = baRight
        ShiftMode = smDontShift
        Left = 547.653982430000000000
        Top = 619.842920000000000000
        Width = 113.385814570000000000
        Height = 26.456710000000000000
        DisplayFormat.DecimalSeparator = '/'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -19
        Font.Name = '2  Nazanin'
        Font.Style = []
        Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
        HAlign = haCenter
        Memo.UTF8 = (
          ' '#1591#167#1591#179#1591#1726#1591#174#1591#177#1591#167#1591#172)
        ParentFont = False
      end
      object MemDetail21: TfrxMemoView
        Align = baRight
        ShiftMode = smDontShift
        Left = 317.921630860000000000
        Top = 646.480761650000000000
        Width = 109.606284570000000000
        Height = 34.015743150000000000
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = '2  Nazanin'
        Font.Style = []
        Frame.Typ = [ftLeft, ftRight, ftBottom]
        HAlign = haRight
        ParentFont = False
        VAlign = vaCenter
      end
      object MemDetail2: TfrxMemoView
        Align = baRight
        ShiftMode = smDontShift
        Left = 317.921630860000000000
        Top = 619.961535510000000000
        Width = 109.606284570000000000
        Height = 26.456710000000000000
        DisplayFormat.DecimalSeparator = '/'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -19
        Font.Name = '2  Nazanin'
        Font.Style = []
        Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
        HAlign = haCenter
        Memo.UTF8 = (
          ' '#1591#162#1592#8230#1591#167#1591#175#1592#8225' '#1591#179#1591#167#1591#178#1594#338)
        ParentFont = False
      end
      object MemDetail11: TfrxMemoView
        Align = baRight
        ShiftMode = smDontShift
        Left = 547.653982430000000000
        Top = 646.457095670000000000
        Width = 113.385814570000000000
        Height = 34.015728500000000000
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = '2  Nazanin'
        Font.Style = []
        Frame.Typ = [ftLeft, ftRight, ftBottom]
        HAlign = haRight
        ParentFont = False
        VAlign = vaCenter
      end
      object MemDetail4: TfrxMemoView
        Align = baRight
        ShiftMode = smDontShift
        Left = 113.826754570000000000
        Top = 619.842920000000000000
        Width = 105.827181720000000000
        Height = 26.456710000000000000
        DisplayFormat.DecimalSeparator = '/'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -19
        Font.Name = '2  Nazanin'
        Font.Style = []
        Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
        HAlign = haCenter
        Memo.UTF8 = (
          ' '#1591#167#1591#179#1593#169#1592#8224' '#1592#1662#1592#8222#1591#1726)
        ParentFont = False
      end
      object MemDetail41: TfrxMemoView
        Align = baRight
        ShiftMode = smDontShift
        Left = 113.826754570000000000
        Top = 646.480761650000000000
        Width = 105.827181720000000000
        Height = 34.015743150000000000
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = '2  Nazanin'
        Font.Style = []
        Frame.Typ = [ftLeft, ftRight, ftBottom]
        HAlign = haRight
        ParentFont = False
        VAlign = vaCenter
      end
      object MemDetail5: TfrxMemoView
        Align = baLeft
        ShiftMode = smDontShift
        Left = 427.527915430000000000
        Top = 619.842920000000000000
        Width = 120.944874570000000000
        Height = 26.456710000000000000
        DisplayFormat.DecimalSeparator = '/'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -19
        Font.Name = '2  Nazanin'
        Font.Style = []
        Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
        HAlign = haCenter
        Memo.UTF8 = (
          ' '#1591#168#1591#179#1591#1726#1592#8225' '#1591#168#1592#8224#1591#175#1594#338' ')
        ParentFont = False
      end
      object MemDetail51: TfrxMemoView
        Align = baLeft
        ShiftMode = smDontShift
        Left = 427.527915430000000000
        Top = 646.480761650000000000
        Width = 120.944874570000000000
        Height = 34.015743150000000000
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = '2  Nazanin'
        Font.Style = []
        Frame.Typ = [ftLeft, ftRight, ftBottom]
        HAlign = haRight
        ParentFont = False
        VAlign = vaCenter
      end
      object MemDetail3: TfrxMemoView
        Align = baRight
        ShiftMode = smDontShift
        Left = 219.653936290000000000
        Top = 619.842920000000000000
        Width = 98.267694570000000000
        Height = 26.456692910000000000
        DisplayFormat.DecimalSeparator = '/'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -19
        Font.Name = '2  Nazanin'
        Font.Style = []
        Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
        HAlign = haCenter
        Memo.UTF8 = (
          ' '#1591#167#1591#179#1593#169#1592#8224)
        ParentFont = False
      end
      object MemDetail31: TfrxMemoView
        Align = baRight
        ShiftMode = smDontShift
        Left = 219.653936290000000000
        Top = 646.480761650000000000
        Width = 98.267694570000000000
        Height = 34.015743150000000000
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = '2  Nazanin'
        Font.Style = []
        Frame.Typ = [ftLeft, ftRight, ftBottom]
        HAlign = haRight
        ParentFont = False
        VAlign = vaCenter
      end
    end
  end
  object frxReport11: TfrxReport
    Version = '5.4.6'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick]
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = #1662#1610#1588' '#1601#1585#1590
    PrintOptions.PrintOnSheet = 0
    ReportOptions.CreateDate = 45655.501704953710000000
    ReportOptions.LastChange = 45655.570959884260000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      'begin'
      ''
      'end.')
    Left = 26
    Top = 230
    Datasets = <>
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
      LeftMargin = 3.000000000000000000
      RightMargin = 3.000000000000000000
      TopMargin = 10.000000000000000000
      BottomMargin = 2.000000000000000000
      PrintOnPreviousPage = True
      object MemName1: TfrxMemoView
        ShiftMode = smDontShift
        Left = 466.882190000000000000
        Top = 93.981102360000000000
        Width = 188.976500000000000000
        Height = 49.133858270000000000
        Restrictions = [rfDontMove]
        DisplayFormat.DecimalSeparator = '/'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -19
        Font.Name = 'B Nazanin'
        Font.Style = []
        Frame.Typ = [ftLeft, ftRight, ftTop]
        HAlign = haRight
        Memo.UTF8 = (
          ' '#1593#169#1592#8222#1591#167#1591#179#1592#8225' '#1592#190#1591#177#1592#710#1592#8224#1591#175#1592#8225' '#1591#1726#1591#177#1593#169#1594#338#1591#168#1594#338'  ')
        ParentFont = False
        VAlign = vaCenter
      end
      object MemName2: TfrxMemoView
        ShiftMode = smDontShift
        Left = 466.882190000000000000
        Top = 191.551330000000000000
        Width = 188.976500000000000000
        Height = 49.133858270000000000
        Restrictions = [rfDontMove]
        DisplayFormat.DecimalSeparator = '/'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -19
        Font.Name = 'B Nazanin'
        Font.Style = []
        Frame.Typ = [ftLeft, ftRight, ftTop]
        HAlign = haRight
        Memo.UTF8 = (
          ' '#1591#180#1592#8230#1591#167#1591#177#1592#8225' '#1591#172#1592#8222#1591#175' '#1592#190#1591#177#1592#710#1592#8224#1591#175#1592#8225'  ')
        ParentFont = False
        VAlign = vaCenter
      end
      object MemName4: TfrxMemoView
        ShiftMode = smDontShift
        Left = 467.323130000000000000
        Top = 241.244280000000000000
        Width = 188.976500000000000000
        Height = 49.133890000000000000
        Restrictions = [rfDontMove]
        DisplayFormat.DecimalSeparator = '/'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -19
        Font.Name = 'B Nazanin'
        Font.Style = []
        Frame.Typ = [ftRight, ftTop, ftBottom]
        HAlign = haRight
        Memo.UTF8 = (
          ' '#1592#8224#1591#167#1592#8230' '#1591#183#1591#177#1591#173'  ')
        ParentFont = False
        VAlign = vaCenter
      end
      object MemName5: TfrxMemoView
        ShiftMode = smDontShift
        Left = 421.527830000000000000
        Top = 289.937230000000000000
        Width = 234.330860000000000000
        Height = 34.015748030000000000
        Restrictions = [rfDontMove]
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -19
        Font.Name = '2  Nazanin'
        Font.Style = []
        Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
        HAlign = haRight
        Memo.UTF8 = (
          ' '#1592#8224#1591#167#1592#8230' '#1592#710' '#1592#8224#1591#167#1592#8230' '#1591#174#1591#167#1592#8224#1592#710#1591#167#1591#175#1593#175#1594#338'   ')
        ParentFont = False
        VAlign = vaCenter
      end
      object MemName6: TfrxMemoView
        ShiftMode = smDontShift
        Left = 466.882190000000000000
        Top = 362.464537640000000000
        Width = 188.976500000000000000
        Height = 64.251968500000000000
        Restrictions = [rfDontMove]
        DisplayFormat.DecimalSeparator = '/'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -19
        Font.Name = 'B Nazanin'
        Font.Style = []
        Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
        HAlign = haRight
        Memo.UTF8 = (
          ' '#1592#8230#1591#180#1591#174#1591#181#1591#167#1591#1726' '#1591#171#1591#168#1591#1726#1594#338' '#1592#8230#1592#8222#1593#169'  ')
        ParentFont = False
        VAlign = vaCenter
      end
      object MemName7: TfrxMemoView
        ShiftMode = smDontShift
        Left = 466.882190000000000000
        Top = 427.866420000000000000
        Width = 188.976500000000000000
        Height = 56.692908500000000000
        Restrictions = [rfDontMove]
        DisplayFormat.DecimalSeparator = '/'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -19
        Font.Name = 'B Nazanin'
        Font.Style = []
        Frame.Typ = [ftLeft, ftRight, ftBottom]
        HAlign = haRight
        Memo.UTF8 = (
          ' '#1591#162#1591#175#1591#177#1591#179' '#1592#710#1592#8218#1592#710#1591#185' '#1592#8230#1592#8222#1593#169'  ')
        ParentFont = False
        VAlign = vaCenter
      end
      object MemName8: TfrxMemoView
        ShiftMode = smDontShift
        Left = 466.882190000000000000
        Top = 485.457020000000000000
        Width = 188.976500000000000000
        Height = 49.133848500000000000
        Restrictions = [rfDontMove]
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -19
        Font.Name = 'B Nazanin'
        Font.Style = []
        Frame.Typ = [ftLeft, ftRight, ftBottom]
        HAlign = haRight
        Memo.UTF8 = (
          ' '#1593#169#1591#175' '#1592#8224#1592#710#1591#179#1591#167#1591#178#1592#1657'  ')
        ParentFont = False
        VAlign = vaCenter
      end
      object MemName9: TfrxMemoView
        ShiftMode = smDontShift
        Left = 466.882190000000000000
        Top = 534.590910000000000000
        Width = 188.976500000000000000
        Height = 52.913378500000000000
        Restrictions = [rfDontMove]
        DisplayFormat.DecimalSeparator = '/'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -19
        Font.Name = 'B Nazanin'
        Font.Style = []
        Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
        HAlign = haRight
        Memo.UTF8 = (
          ' '#1591#1726#1592#710#1591#182#1594#338#1591#173#1591#167#1591#1726'  ')
        ParentFont = False
        VAlign = vaCenter
      end
      object MemDesc11: TfrxMemoView
        ShiftMode = smDontShift
        Left = 111.606370000000000000
        Top = 94.031478980000000000
        Width = 355.275820000000000000
        Height = 49.133858270000000000
        Restrictions = [rfDontMove]
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -19
        Font.Name = 'B Jadid'
        Font.Style = [fsBold]
        Frame.Typ = [ftLeft, ftRight, ftTop]
        HAlign = haCenter
        ParentFont = False
        VAlign = vaCenter
      end
      object MemDesc2: TfrxMemoView
        ShiftMode = smDontShift
        Left = 111.606370000000000000
        Top = 191.551330000000000000
        Width = 355.275820000000000000
        Height = 49.133858270000000000
        Restrictions = [rfDontMove]
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -23
        Font.Name = 'B Jadid'
        Font.Style = [fsBold]
        Frame.Typ = [ftLeft, ftRight, ftTop]
        HAlign = haCenter
        ParentFont = False
        VAlign = vaCenter
      end
      object MemDesc4: TfrxMemoView
        ShiftMode = smDontShift
        Left = 111.606370000000000000
        Top = 241.244280000000000000
        Width = 355.275820000000000000
        Height = 49.133848500000000000
        Restrictions = [rfDontMove]
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -23
        Font.Name = 'B Jadid'
        Font.Style = [fsBold]
        Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
        HAlign = haCenter
        ParentFont = False
        VAlign = vaCenter
      end
      object MemDesc5: TfrxMemoView
        ShiftMode = smDontShift
        Left = 421.527830000000000000
        Top = 324.512060000000000000
        Width = 234.330860000000000000
        Height = 37.795275590000000000
        Restrictions = [rfDontMove]
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = '2  Nazanin'
        Font.Style = [fsBold]
        Frame.Typ = [ftLeft, ftRight]
        HAlign = haCenter
        ParentFont = False
        VAlign = vaCenter
      end
      object MemDesc7: TfrxMemoView
        ShiftMode = smDontShift
        Left = 111.606370000000000000
        Top = 427.866420000000000000
        Width = 355.275820000000000000
        Height = 56.692908500000000000
        Restrictions = [rfDontMove]
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = 'B Nazanin'
        Font.Style = [fsBold]
        Frame.Typ = [ftLeft, ftRight, ftBottom]
        HAlign = haCenter
        ParentFont = False
        VAlign = vaCenter
      end
      object MemDesc8: TfrxMemoView
        ShiftMode = smDontShift
        Left = 111.606370000000000000
        Top = 485.457020000000000000
        Width = 355.275820000000000000
        Height = 49.133848500000000000
        Restrictions = [rfDontMove]
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = 'B Nazanin'
        Font.Style = [fsBold]
        Frame.Typ = [ftLeft, ftRight, ftBottom]
        HAlign = haCenter
        ParentFont = False
        VAlign = vaCenter
      end
      object MemDesc9: TfrxMemoView
        ShiftMode = smDontShift
        Left = 111.606370000000000000
        Top = 534.590910000000000000
        Width = 355.275820000000000000
        Height = 52.913378500000000000
        Restrictions = [rfDontMove]
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = 'B Nazanin'
        Font.Style = [fsBold]
        Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
        HAlign = haCenter
        ParentFont = False
        VAlign = vaCenter
      end
      object MemDetail: TfrxMemoView
        ShiftMode = smDontShift
        Left = 111.606370000000000000
        Top = 587.063390000000000000
        Width = 544.252320000000000000
        Height = 30.236240000000000000
        Restrictions = [rfDontMove]
        DisplayFormat.DecimalSeparator = '/'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'B Nazanin'
        Font.Style = [fsBold]
        Frame.Typ = [ftLeft, ftRight]
        HAlign = haCenter
        Memo.UTF8 = (
          #1593#169#1591#167#1591#177#1591#168#1591#177#1591#167#1592#8224' '#1591#162#1591#177#1591#180#1594#338#1592#710' '#1591#167#1592#8222#1593#169#1591#1726#1591#177#1592#710#1592#8224#1594#338#1593#169#1594#338)
        ParentFont = False
      end
      object MemDetail1: TfrxMemoView
        ShiftMode = smDontShift
        Left = 542.472875430000000000
        Top = 617.960544490000000000
        Width = 113.385814570000000000
        Height = 30.236220472440940000
        Restrictions = [rfDontMove]
        DisplayFormat.DecimalSeparator = '/'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -19
        Font.Name = 'B Nazanin'
        Font.Style = []
        Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
        HAlign = haCenter
        Memo.UTF8 = (
          ' '#1591#167#1591#179#1591#1726#1591#174#1591#177#1591#167#1591#172)
        ParentFont = False
      end
      object MemDetail21: TfrxMemoView
        ShiftMode = smDontShift
        Left = 432.866590860000000000
        Top = 647.818856140000000000
        Width = 109.606284570000000000
        Height = 34.015748030000000000
        Restrictions = [rfDontMove]
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'B Nazanin'
        Font.Style = []
        Frame.Typ = [ftLeft, ftRight, ftBottom]
        HAlign = haRight
        ParentFont = False
        VAlign = vaCenter
      end
      object MemDetail2: TfrxMemoView
        ShiftMode = smDontShift
        Left = 432.866590860000000000
        Top = 618.079160000000000000
        Width = 109.606284570000000000
        Height = 30.236220472440940000
        Restrictions = [rfDontMove]
        DisplayFormat.DecimalSeparator = '/'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -19
        Font.Name = 'B Nazanin'
        Font.Style = []
        Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
        HAlign = haCenter
        Memo.UTF8 = (
          ' '#1591#162#1592#8230#1591#167#1591#175#1592#8225' '#1591#179#1591#167#1591#178#1594#338)
        ParentFont = False
      end
      object MemDetail11: TfrxMemoView
        ShiftMode = smDontShift
        Left = 542.472875430000000000
        Top = 647.795190160000000000
        Width = 113.385814570000000000
        Height = 34.015748030000000000
        Restrictions = [rfDontMove]
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'B Nazanin'
        Font.Style = []
        Frame.Typ = [ftLeft, ftRight, ftBottom]
        HAlign = haRight
        ParentFont = False
        VAlign = vaCenter
      end
      object MemDetail4: TfrxMemoView
        ShiftMode = smDontShift
        Left = 228.771714570000000000
        Top = 617.960544490000000000
        Width = 105.827181720000000000
        Height = 30.236220472440940000
        Restrictions = [rfDontMove]
        DisplayFormat.DecimalSeparator = '/'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -19
        Font.Name = 'B Nazanin'
        Font.Style = []
        Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
        HAlign = haCenter
        Memo.UTF8 = (
          ' '#1591#167#1591#179#1593#169#1592#8224' '#1592#1662#1592#8222#1591#1726)
        ParentFont = False
      end
      object MemDetail41: TfrxMemoView
        ShiftMode = smDontShift
        Left = 228.771714570000000000
        Top = 647.818856140000000000
        Width = 105.827181720000000000
        Height = 34.015748030000000000
        Restrictions = [rfDontMove]
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'B Nazanin'
        Font.Style = []
        Frame.Typ = [ftLeft, ftRight, ftBottom]
        HAlign = haRight
        ParentFont = False
        VAlign = vaCenter
      end
      object MemDetail5: TfrxMemoView
        ShiftMode = smDontShift
        Left = 111.606370000000000000
        Top = 617.960544490000000000
        Width = 117.165344570000000000
        Height = 30.236220472440940000
        Restrictions = [rfDontMove]
        DisplayFormat.DecimalSeparator = '/'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -19
        Font.Name = 'B Nazanin'
        Font.Style = []
        Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
        HAlign = haCenter
        Memo.UTF8 = (
          ' '#1591#168#1591#179#1591#1726#1592#8225' '#1591#168#1592#8224#1591#175#1594#338' ')
        ParentFont = False
      end
      object MemDetail51: TfrxMemoView
        ShiftMode = smDontShift
        Left = 111.606370000000000000
        Top = 647.818856140000000000
        Width = 117.165344570000000000
        Height = 34.015748030000000000
        Restrictions = [rfDontMove]
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'B Nazanin'
        Font.Style = []
        Frame.Typ = [ftLeft, ftRight, ftBottom]
        HAlign = haRight
        ParentFont = False
        VAlign = vaCenter
      end
      object MemDetail3: TfrxMemoView
        ShiftMode = smDontShift
        Left = 334.598896290000000000
        Top = 617.960544490000000000
        Width = 98.267694570000000000
        Height = 30.236220472440940000
        Restrictions = [rfDontMove]
        DisplayFormat.DecimalSeparator = '/'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -19
        Font.Name = 'B Nazanin'
        Font.Style = []
        Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
        HAlign = haCenter
        Memo.UTF8 = (
          ' '#1591#167#1591#179#1593#169#1592#8224)
        ParentFont = False
      end
      object MemDetail31: TfrxMemoView
        ShiftMode = smDontShift
        Left = 334.598896290000000000
        Top = 647.818856140000000000
        Width = 98.267694570000000000
        Height = 34.015748030000000000
        Restrictions = [rfDontMove]
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'B Nazanin'
        Font.Style = []
        Frame.Typ = [ftLeft, ftRight, ftBottom]
        HAlign = haRight
        ParentFont = False
        VAlign = vaCenter
      end
      object MemDesc60: TfrxMemoView
        ShiftMode = smDontShift
        Left = 372.393940000000000000
        Top = 362.370078740000000000
        Width = 94.488250000000000000
        Height = 30.236220472440940000
        Restrictions = [rfDontMove]
        DisplayFormat.DecimalSeparator = '/'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -19
        Font.Name = 'B Nazanin'
        Font.Style = []
        Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
        HAlign = haCenter
        Memo.UTF8 = (
          ' '#1591#168#1591#174#1591#180)
        ParentFont = False
      end
      object MemDesc62: TfrxMemoView
        ShiftMode = smDontShift
        Left = 111.606370000000000000
        Top = 362.488118190000000000
        Width = 98.267780000000000000
        Height = 30.236220472440940000
        Restrictions = [rfDontMove]
        DisplayFormat.DecimalSeparator = '/'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -19
        Font.Name = 'B Nazanin'
        Font.Style = []
        Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
        HAlign = haCenter
        Memo.UTF8 = (
          ' '#1592#190#1592#8222#1591#167#1593#169' '#1592#1662#1591#177#1591#185#1594#338)
        ParentFont = False
      end
      object MemDesc63: TfrxMemoView
        ShiftMode = smDontShift
        Left = 372.393940000000000000
        Top = 393.448818900000000000
        Width = 94.488250000000000000
        Height = 34.015748030000000000
        Restrictions = [rfDontMove]
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -19
        Font.Name = 'B Nazanin'
        Font.Style = [fsBold]
        Frame.Typ = [ftLeft, ftRight, ftBottom]
        HAlign = haCenter
        ParentFont = False
        VAlign = vaCenter
      end
      object MemDesc65: TfrxMemoView
        ShiftMode = smDontShift
        Left = 111.606296770000000000
        Top = 393.322763860000000000
        Width = 98.267675040000000000
        Height = 34.015748030000000000
        Restrictions = [rfDontMove]
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -19
        Font.Name = 'B Nazanin'
        Font.Style = [fsBold]
        Frame.Typ = [ftLeft, ftRight, ftBottom]
        HAlign = haCenter
        ParentFont = False
        VAlign = vaCenter
      end
      object MemName0: TfrxMemoView
        ShiftMode = smDontShift
        Left = 466.882190000000000000
        Top = 142.944960000000000000
        Width = 188.976500000000000000
        Height = 49.133858270000000000
        Restrictions = [rfDontMove]
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -19
        Font.Name = 'B Nazanin'
        Font.Style = []
        Frame.Typ = [ftLeft, ftRight, ftTop]
        HAlign = haRight
        Memo.UTF8 = (
          ' '#1591#167#1591#183#1592#8222#1591#167#1591#185#1591#167#1591#1726' '#1593#169#1592#8222#1594#338' '#1592#190#1591#177#1592#710#1592#8224#1591#175#1592#8225'  ')
        ParentFont = False
        VAlign = vaCenter
      end
      object MemDesc0: TfrxMemoView
        ShiftMode = smDontShift
        Left = 111.606370000000000000
        Top = 142.944960000000000000
        Width = 355.275820000000000000
        Height = 49.133858270000000000
        Restrictions = [rfDontMove]
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -23
        Font.Name = 'B Jadid'
        Font.Style = [fsBold]
        Frame.Typ = [ftLeft, ftRight, ftTop]
        HAlign = haCenter
        ParentFont = False
      end
      object Memo1: TfrxMemoView
        ShiftMode = smDontShift
        Left = 111.606370000000000000
        Top = 289.913305280000000000
        Width = 170.078850000000000000
        Height = 34.015748030000000000
        Restrictions = [rfDontMove]
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -19
        Font.Name = '2  Nazanin'
        Font.Style = []
        Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
        HAlign = haCenter
        Memo.UTF8 = (
          #1593#169#1591#175#1592#8230#1592#8222#1592#1657'  ')
        ParentFont = False
        VAlign = vaCenter
      end
      object Memo2: TfrxMemoView
        ShiftMode = smDontShift
        Left = 111.606370000000000000
        Top = 324.488093780000000000
        Width = 170.078850000000000000
        Height = 37.795275590000000000
        Restrictions = [rfDontMove]
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = '2  Nazanin'
        Font.Style = [fsBold]
        Frame.Typ = [ftLeft, ftRight, ftTop]
        HAlign = haCenter
        ParentFont = False
        VAlign = vaCenter
      end
      object Memo3: TfrxMemoView
        ShiftMode = smDontShift
        Left = 281.685220000000000000
        Top = 289.913305280000000000
        Width = 139.842610000000000000
        Height = 34.015748030000000000
        Restrictions = [rfDontMove]
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -19
        Font.Name = '2  Nazanin'
        Font.Style = []
        Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
        HAlign = haCenter
        Memo.UTF8 = (
          ' '#1592#8224#1591#167#1592#8230' '#1592#190#1591#175#1591#177'  ')
        ParentFont = False
        VAlign = vaCenter
      end
      object MemDesc61: TfrxMemoView
        ShiftMode = smDontShift
        Left = 209.874150000000000000
        Top = 362.464537640000000000
        Width = 162.519790000000000000
        Height = 30.236220472440940000
        Restrictions = [rfDontMove]
        DisplayFormat.DecimalSeparator = '/'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -19
        Font.Name = 'B Nazanin'
        Font.Style = []
        Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
        HAlign = haCenter
        Memo.UTF8 = (
          ' '#1592#190#1592#8222#1591#167#1593#169' '#1591#167#1591#181#1592#8222#1594#338)
        ParentFont = False
      end
      object MemDesc64: TfrxMemoView
        ShiftMode = smDontShift
        Left = 209.873971810000000000
        Top = 393.448784720000000000
        Width = 162.519968190000000000
        Height = 34.015748030000000000
        Restrictions = [rfDontMove]
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -19
        Font.Name = 'B Nazanin'
        Font.Style = [fsBold]
        Frame.Typ = [ftLeft, ftRight, ftBottom]
        HAlign = haCenter
        ParentFont = False
        VAlign = vaCenter
      end
      object Memo4: TfrxMemoView
        ShiftMode = smDontShift
        Left = 281.685220000000000000
        Top = 324.488093780000000000
        Width = 139.842610000000000000
        Height = 37.795275590000000000
        Restrictions = [rfDontMove]
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = '2  Nazanin'
        Font.Style = [fsBold]
        Frame.Typ = [ftLeft, ftRight, ftTop]
        HAlign = haCenter
        ParentFont = False
        VAlign = vaCenter
      end
      object Memo5: TfrxMemoView
        Left = 112.385900000000000000
        Width = 543.874015750000000000
        Height = 94.488250000000000000
        Restrictions = [rfDontMove]
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = []
        Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
        ParentFont = False
      end
      object Picture1: TfrxPictureView
        Left = 191.976500000000000000
        Top = 3.779529999999998000
        Width = 370.393940000000000000
        Height = 86.929190000000000000
        Restrictions = [rfDontMove]
        Picture.Data = {
          0B546478504E47496D61676589504E470D0A1A0A0000000D494844520000015E
          00000052080200000093FC2B820000000467414D410000B18F0BFC6105000000
          097048597300000EC300000EC301C76FA8640000133549444154785EED9D6D99
          1CB7124643211842C11C0C6131988219848119048111844008848139E41ECF91
          EB6AF535DD3D3D3BB3769D1FFBB4D4FA2895AA5E6926BBCE6FFF254992743C97
          34FCFBEFBF7FFEF9E7E7CF9F4B39499E98AF5FBFBEBCBC10B4A5FC73F12CD2F0
          F7DF7F7FFAF4E9B70B7FFDF557A97DE7103AEF5DE6FEF9E79F53B68341BE7CF9
          520AEF9C6FDFBE7180FDF1C71FC4EA870F1F4AED4FC7E3A50151F8F8F1A3A220
          B8BEBC7BCF7098FCFEFBEF2C87E87947070BCE8FEDC07E72A0BCB80124D20119
          B954BD4F1405B7557E1ABDEB793B69C0894D86E0E8B8290029D4B7B913671D86
          354D9470D5745D1C2FA56AC45966E04C32B014CEE044C322974E1C1395214B79
          2855F707E36321EC29F7414EB5F2EEC92012B0F0466F9F200D6C0F99560A1554
          629FF18A9538B471A5C9A322D0989628C5B9F13D84B98E9D879E18C38302CBEB
          01EB7C58AC08B79CF589E35CD7E1A2134F78F6DD5C2AE5DBC0B7C48C9173E020
          6169077206DF32237B8A9F590EF3B21C02B8BC3E15C66FC269178637D63248A9
          3AC409D280837AF1AE7323E4B696061AE86515211AF743DDC2703425E980EB8D
          48689C8E5850D964A6D7F245F4B08534180ACD5E3480014BF936701A997C6EDC
          9FBBADEC1D169A421BD541457069F86AAF4E31A3DDF919617060EF167EE095EB
          72F0C3BB4947DC02ACF1800806B74A03DBC3624AA18245BA424CA4A8377D1560
          773842CE0D477C84E2E0A0663FA861AE5AA736A29152C796AB6B62941AEA4B61
          840AB5DD8C455429ACA570330ACD2EE95C473C2BC5C2030E1F62E823C4AEDA00
          5B6324D0D878635F1606CF30D4E91EECBDB310F0983114142AB5508639B51122
          93BD33C819F3B0C4DC1A4FEC3A94C26BD83C4E4EF700139B66ECA85E001CC14A
          9A53F730C601E3EBEB3E74B08457A5F003B69996EE3D3F870EBD18FB7F22D679
          EEF792CA9967E432C656FFE346029A01FB98C60CC639F1FEEF7D679766CD6C03
          4783B537361249CE68F87C8B2E8079A28BD8E8A19D6B74B2B0583279BB2EA808
          11F0FD491EE728B02E1A1CB0509C25E2FFB02EC071693097B0E3EAF1827D34AB
          3D620D30C22DD6F76095A1C3C8CC589FED818E2B850B9E9335845DBF3D6C5B79
          7DC158772DCD4446D2DA3334E80565464CEDA435CED5ACE8164CE6EDA1BFB0CD
          9C94ED8B5DC0F9118AB02B7F8E2942801CB0047E6E778B60B0CB27C688875E17
          B0CA062CEA160B81EEAA8C3975E36847A48129EB2D9F1D2F58A97136AE0D8DEE
          1BAD8FA1B630530471ABEA1B0A5BA2310DFD2D061B481B8C892E542A2B4D632B
          F58C1A8A1E414486F9DCE7D2101AD397F643C1321A98B1947782490C5E5BC268
          D494C23516B6B9467EC6769717B7B13D127AE88BBB4A6133ECA0F6B3D2BDB33B
          63AF0801AF1CDC4BCDEDDCE29F9ADDBBC5C468273E62C126C0D094080B9E099A
          260722B578285573EAA18630C8D5AB07A6AAF766A995A05250C9432C8496EC53
          2F0D352C8A8E3CD0B24F24D66B18D51A2A36D075DBF359936299757C3317432D
          3C40DF5968465C82355E82366A96CC6C234EA8C7096E371EB37E2F0B2FAD1DD8
          AB00F640295C03CB8D011678F1D07716A78ED00BEF452CCD8871EA2D58879CF4
          8B5AB03DC07A764B039E25E871960131DB6FDAB054F2D9506B4213C7D900AE2E
          35862AE5D7B0F8ABBBA50D8EC068B51E2973A5B00756444765AB4F245E31B2F2
          D16003B36591CF0B8CD4083E66592F81B986F9A0F1819546EAE1900ADB9AC161
          7B4ED6902D4D470677C735D5CA9EFE2D8B6ACC60A8DE2A66045EB183119C3C7C
          5FC305D668E5108281EEA530414B4AA1FA3AE6AA7AF68BC2154D6A6CF4CF55F6
          F564CACB12FECF6CBF5DAD56FA505E548447D61912439572051DF1E6F0550D7B
          CC0878903DE321768E8EDFA71F65022363F9224368C05B47660F4AED0567016C
          F315C1E4D91E2272359F81941E7A4687F8CA54ECB529B0C1709BB081296C1041
          B951B3AEDA56E7925E5A38938D6009FD3E5283618DF18C0C8B75091D69500A17
          542BD34618A7D93B67E4A77EA8B3CE4C6B4668608D8BBD102C67EB19A7942F38
          1DAC65A5591476E2DB52F8C146FF5C65873444C40B8B618518515EBF069B349A
          C580950DF475281AF46111C4503DBC825298635AE22C378007EB759F1822AC91
          36D843CD7AE4881E880181E070E31BCFE8BD500A9EE9EEAB218C336C10BB60D1
          786DE2BB4627F743D951B7D70D2EDB75E5ECDA621B6BD40FB464161E6A2F35B0
          41C32530111DEB8D6028866528F39C06E5C56B7CDB2CC44A8CB4A8B54DE0E12E
          97C6A44C6465A03367FED1B666DF87D0AC1F8419197CE8586916C5747469746A
          A37FB6B0431AD83FE59FB9D9C8757C633466D9A64F6CEA198171E84E03DB5059
          5EBFC6A14AA1C2C11924367B06BB153A45978806DD3784619BA0A9A1A3AEF0A7
          2D392ADD5D2AEB139567EC67C068695A32880D7A683073AC36C7D144B3B5A9CC
          4EFB3EF174056F1D501FEAD275706FB72D6070FD3F84D17AF304BF3160ECBEE3
          60390FC0AB59CC80D1550A17308F4A1EE8659243EC143EB49264A301130D6F07
          FA6D38AFDBDAECFE903EA541E747E60F8945E90ADAD7DE66818D7F168171951D
          D2D0601C2C60A9EB36AE4A5FAF19EEC455036A0CAF52588255ECF1CCA74CCADE
          D8928778DE42EC220F0487CF3D04161BBCD854868A5C2256AE1E53E6438D7A11
          4403256C2D34576D1B12E9DD403D3E2C858E2DF1334399BE13430F84DCDC02EE
          2DC38DD8B5A8B57FAE725C1A9AF06A70858BAD6591FA773D0ECC9CA5CA6E4471
          298511F891301D6A9020C3F5C618D0BBA4C17C660AD26F36113E412BF15B2977
          D080A1741D03AE230968D3E75EB32FD1C003C7E79E8DB60D19AE97AD5F2B9147
          DF8CD0C71EA62B8D26302FAE2B859DCC520E7B4A8B1B986928348BBA2A130BFF
          6CE1B834C0C2B9AED0602A5517E8422036E145042CEE0E0B67B1F845C720F287
          4D2D5517702EF73A665F47276DEA5988AAC89F75ECD6440E70B62CF68CB7B42C
          8511F48DD0E481ECF27908E6D5D6D6D481E5206C4A2F22355B6C2B23BE86B94A
          8BD7503F4B33A99597A929BA7C6B66BBC6721691E938F46DF68E2E0CCEABAB11
          B5D83E4285F14BBB43CCCE8C7A513CB8A7F532C33FB1B38BA8DEC24DD2F0D353
          87261ED7F5E5DD7D302E679BBA48F51EEFB70C58CA1DAC8506C34FD4434EB40D
          3C0309EE52EED0FEBDF1AD19749CE5D87BE4218B7A52692020484582A3947F0D
          3819D87EF05888AC2020E23458E45210270CF1E48DA081913D7B69B631F7CEB2
          2DE032E8805852DF22998857CAD076D9825814DC5BC1DF8C072EEAB9A4014710
          5E284284DAC6C0FD3968BE02E819A63AF983C774146FE3A66363521767C6614E
          91C61E41BBDC7BCCB6055E0A16ACCD234F58A9A768BD2878BFBAF0548B7A2269
          5017F0023F097702FA97D205080F0CE1201DE61EBDE260096AEF91D511610121
          B8CBBDC76C5B40FBDEAA60CBEEF7E272C08C67E37916F55CB706FCF20B2A420D
          6B4716EB24E499348E637F06A78ABDF8D99F300C1B47101EAE2FF0DB396CDB0C
          229EEE7E761007DC6E1E2D95450661813F47E43CC9A2F26BC8244906A4342449
          3220A521499201290D49920C4869489264404A43922403521A92241990D290EC
          E6EBE58F50DFEF2F1D265B48697846C8BA9767FDBFB37FFBF1D7B41FAEFD22F3
          E1DFAD4A9E819486A7837C7BF23F07C02A7481BB03FAD5243FC6C7AF5D424AC3
          FB25A5E1F1347F5F483A995AFC7CCE8B03067FB9FC43DEE67FFC863F0FF56F3D
          434AC3FB25A5E1C1904EA450A30E28C2A71BFE5FC977856C37EDB932F84BFEE5
          45F56FF9216AACE8217F14949C454AC383897FB6E0392F083D48C3C71FFFFF91
          E6BB061782642CBE8348DE0B290D7787F37371FEF3CA8C6AFE9D3B94A2A90978
          4566C2DE6399B9CE4ADAE1382E842BC355C35C7573574A9E8A9486FB421A9B30
          1FE6FF06B97F81CB515CCA17F840418E95C26B68E9984D971AE66DBEC2D49299
          DC5C65F18568081F366BD8FA5B92F848028B2F2330356F1F0F24A5E1BEC4A500
          66C7A949EB153DA048659F398C7019AC304B9EAF977F4DB07E4B6ED37EA1260B
          1887BE4DB6AB08543251D819EAB0F84F9B4AA12C2E0E8C10A293BC3D290DF7A5
          3E2181AC282F5E63B694C205BF83E80F79B2C59CF7EE303B7595A4FAA8A70B72
          43DF521E81EE0C7315A1E98DA186319DA8364355A272B6585ED14BCF2CA48AB7
          8D5C266F494AC37D21F4C901F01630CB0485A0142E7850F7C726233888B70046
          B6BEC18C6DBA93F6CD2C0D8C3C1CD08E75AA6B1E0F9AD1A80612A33A2013A5EA
          078C4FBDB3E013D7D2C3F88E50CAC99B93AEBF237E52F01E4E3210EB91093C10
          FD3E8309530A3FA0CD501A4C2DBBF0B3BC780D839378CDB96D9752E820C96789
          EA42E22D453F38A0087EC0E9ED541DFA635F1B300C0B1970362328978C53CAC9
          DB92D270470CEE9AB8AE97F23566D210CCA401FAD9A5BCEE208D17A3C597087B
          69C6541A82853400E2B23029B92B290D77C4CB7640A07B838052758D5E1AA829
          EF2E2C32A7993D28AF5FE3E15F0A2366A35DA5B1303E29C85A1AD66A95DC9594
          863BE29D990420C449E9FA13C4C643B8970606A9FBCE3287664C5A1ABDA6B478
          8D578C5218E13791C187CDFF1BB8DE42868A5E573F50A4343C8A94867709994F
          7272FCD67213F896BCEA9565869711B2B1945FE380EB137E2F5E436616C625A5
          949337275DFFFEE05389993FFC0F8D7C34F06DFDF90538E1A1AEA9511A8036F5
          7F566034F4C28F00C3E98EE18DA0B13008634E9C31D94B4AC35343E6BCBCBC70
          847A3BA048DA98A8DCC9A9248D4966BFC6A718690CF4A2920B394A612AC2EC94
          F6BB8635C7EEF6CC48866B2160B01FB2C04B4ABD409AC55BCCB6327908290DCF
          0E7240F29B2D01F91FC966F297173F5017482D3FD5936FE4E73AD9E20E3F64A6
          295B60E4FE2B0916E55B4C8A6B4290BAF070521ADE07E43FB9E48D8063B6BF87
          937E0A0449587F22302DFDE68FE775BE394B2D343C5373ECBE50C3BCDC11C242
          EF0B352AA00BE42175E1E1A434FC12A026A41C89D76B4A920C4969F825E0D847
          1D6EF95090FC6AA43424493220A521499201290D49920C4869489264404A4392
          2403521A92241990D27032FF76FF5EEB46FC0DE2537EEFE0DBB76FF1BB926FC3
          EDBF13750C56FAE1F24F48E6AF489D4E4AC3C97CBAFC9D72296C86C8A6D7F75F
          3F3CE37F6647AABCF1AF30206A0F5187CFDDFF412B398B9486933916A9E455FC
          59D4ED17078642A14AE1FEB058CCBE5DD10E80DF582920850F31E02726A5E164
          8851F2E4C011CAC58110BFFDCF90991A0338C64BF9FEB8E4E13D8574BDEB79AE
          34F0590C03663624C7486938C8ECAB0133F3803490429CF67C72BEFD63B37952
          0AF76721462F2F2FF7FBC38DF81486D3989DE7FCC6E144521A8E507F35D0FC11
          A179323BBE384587A9C280F1818263B0D41EC53F70BC5342F6603CD30DBF6171
          510756441756510A1398173F3385429CBA702E290D47201623939B0C5C48839F
          C9A14F1524C357B23DCAFD6B6BBA703E472FC6A7C684791BB4A1147E803D7A89
          9FA56A1BF10FCF6CF9FA2015E14EA4341C84882403E3AB018AC6F1421AB8F41A
          F1FDDD9BC4F6A38439B631259480201487D9296E19A427B4E66AF77A8D2EADBF
          A7841ACE748A2ECD44AC2B6477E8C63507BA2443521ACE81F8F6463D93864812
          E8A5213E2AFB8D5AFD652443F5A391517E6A686004DE620CCF7DAFABD8517A23
          6B98883691F08B7B8AAF6642C37A1102CD96B832C0700954F613F9B14EFBAD49
          6E24FDB80F4290682E858AC80D18C6340DB81A90D2BC1D4A03F5643BDDD188BA
          011D9BD168E3B9EA80D6A8143C581CDAB0A6162F584B8353609B45E6A2E8EC0D
          0E3B33C68EB570B07C9CBC503756DD4C44D12F2674A395C98DA41F77C0E1E6D9
          5ECA156626A13C4C4B3BF2CA5FD1E98F50C29DFA20D2928EA8403D9AB904CD20
          D69B33431B7AD0B87A1096E05C4C4A3EF746D63845D859CFDED32CA1C68EF196
          111813C37448FF0945873413D15E4B42A0AD4F6E21A56107FD011ED4A71C0F08
          81F5407C9B0012276D4DF301C140A7D20CA1484A50E48122B951DF5C78459119
          791559C1F3CC54A1572D739EEDF5B057C1362CF1997963765CE1F53EC0EC9931
          9AC1503C63432D91BD3631BE5EB2BDD08B4A06C1787721A5E114521AB6426692
          09914B3D7136F27089ED01BC1ABEA592FC19BEDA452D0DEB631F53EB06E67680
          25ACB7BC9BA09AF86C77BBD43A182C74AAFE722150E98E91D2700A290D5B2182
          3DCC67C49DC26BED597853D88859418AF2BC5031A8AF0CC0737D62C3D5047316
          9F51198E6E9FF74A8347FD76AE3A24A5E114521AB642E6ACA5E1F3E7CF260069
          B62B9F6770743BA0DF506CC1ACE0677DE5EEA9B3BA8157E6B65780054A89CF74
          890F11DC26FAEBCF4C1AF0D5F60B829F1A7AF76209FAC24FE74D6938859486AD
          188EC47D29BFC67C9825001D7945589B4E0C559FD86F0FC98319284E98410DB9
          AD795A68FD0C6F46579BAD6176BF3BD06F5AE55706D6D7FF11377963521AB6A2
          3490FFC46B2D1004749CEAB3F3CAD38C0420194CAA59CBB7C1249C81B5330504
          96100AB2EB6BCB06A630FF99CE1B0A3516FD12C4DBC4A56DF200D2F55B197E5B
          56434CCFEE02CDB70F8B966FC6EC1A8FA9F547099E118290001EA2232DADDC02
          1D69AFE2B0769C89131C472190C6AA1B6F25C92DA434ECA0C9F01A027D7DD2D6
          41BF2BA9EE04D6C6E18FF12421E93AFC7E4175B0657060095C55BC26D4D4BA00
          5E1C82E66DF296A434EC8360254FE2C48BA4BA7A0B8804233D1E7E65380089AD
          FD2C79F695CA1670A00281560E3F8F84823C8380FECAA43424493220A5214992
          01290D499274FCF7DFFF000BDA8925E1166D530000000049454E44AE426082}
        HightQuality = False
        Transparent = False
        TransparentColor = clWhite
      end
    end
  end
  object frxReportA4: TfrxReport
    Version = '5.4.6'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick]
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = #1662#1610#1588' '#1601#1585#1590
    PrintOptions.PrintOnSheet = 0
    ReportOptions.CreateDate = 45655.501704953710000000
    ReportOptions.LastChange = 45655.570959884260000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      'begin'
      ''
      'end.')
    Left = 114
    Top = 238
    Datasets = <>
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
      LeftMargin = 3.000000000000000000
      RightMargin = 3.000000000000000000
      TopMargin = 10.000000000000000000
      BottomMargin = 2.000000000000000000
      PrintOnPreviousPage = True
      object MemName1: TfrxMemoView
        ShiftMode = smDontShift
        Left = 466.882190000000000000
        Top = 93.981102360000000000
        Width = 188.976500000000000000
        Height = 49.133858270000000000
        Restrictions = [rfDontMove]
        DisplayFormat.DecimalSeparator = '/'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -19
        Font.Name = 'B Nazanin'
        Font.Style = []
        Frame.Typ = [ftLeft, ftRight, ftTop]
        HAlign = haRight
        Memo.UTF8 = (
          ' '#1593#169#1592#8222#1591#167#1591#179#1592#8225' '#1592#190#1591#177#1592#710#1592#8224#1591#175#1592#8225' '#1591#1726#1591#177#1593#169#1594#338#1591#168#1594#338'  ')
        ParentFont = False
        VAlign = vaCenter
      end
      object MemName2: TfrxMemoView
        ShiftMode = smDontShift
        Left = 466.882190000000000000
        Top = 191.551330000000000000
        Width = 188.976500000000000000
        Height = 49.133858270000000000
        Restrictions = [rfDontMove]
        DisplayFormat.DecimalSeparator = '/'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -19
        Font.Name = 'B Nazanin'
        Font.Style = []
        Frame.Typ = [ftLeft, ftRight, ftTop]
        HAlign = haRight
        Memo.UTF8 = (
          ' '#1591#180#1592#8230#1591#167#1591#177#1592#8225' '#1591#172#1592#8222#1591#175' '#1592#190#1591#177#1592#710#1592#8224#1591#175#1592#8225'  ')
        ParentFont = False
        VAlign = vaCenter
      end
      object MemName4: TfrxMemoView
        ShiftMode = smDontShift
        Left = 467.323130000000000000
        Top = 241.244280000000000000
        Width = 188.976500000000000000
        Height = 49.133890000000000000
        Restrictions = [rfDontMove]
        DisplayFormat.DecimalSeparator = '/'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -19
        Font.Name = 'B Nazanin'
        Font.Style = []
        Frame.Typ = [ftRight, ftTop, ftBottom]
        HAlign = haRight
        Memo.UTF8 = (
          ' '#1592#8224#1591#167#1592#8230' '#1591#183#1591#177#1591#173'  ')
        ParentFont = False
        VAlign = vaCenter
      end
      object MemName5: TfrxMemoView
        ShiftMode = smDontShift
        Left = 421.527830000000000000
        Top = 289.937230000000000000
        Width = 234.330860000000000000
        Height = 34.015748030000000000
        Restrictions = [rfDontMove]
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -19
        Font.Name = '2  Nazanin'
        Font.Style = []
        Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
        HAlign = haRight
        Memo.UTF8 = (
          ' '#1592#8224#1591#167#1592#8230' '#1592#710' '#1592#8224#1591#167#1592#8230' '#1591#174#1591#167#1592#8224#1592#710#1591#167#1591#175#1593#175#1594#338'   ')
        ParentFont = False
        VAlign = vaCenter
      end
      object MemName6: TfrxMemoView
        ShiftMode = smDontShift
        Left = 466.882190000000000000
        Top = 362.464537640000000000
        Width = 188.976500000000000000
        Height = 64.251968500000000000
        Restrictions = [rfDontMove]
        DisplayFormat.DecimalSeparator = '/'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -19
        Font.Name = 'B Nazanin'
        Font.Style = []
        Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
        HAlign = haRight
        Memo.UTF8 = (
          ' '#1592#8230#1591#180#1591#174#1591#181#1591#167#1591#1726' '#1591#171#1591#168#1591#1726#1594#338' '#1592#8230#1592#8222#1593#169'  ')
        ParentFont = False
        VAlign = vaCenter
      end
      object MemName7: TfrxMemoView
        ShiftMode = smDontShift
        Left = 466.882190000000000000
        Top = 427.866420000000000000
        Width = 188.976500000000000000
        Height = 56.692908500000000000
        Restrictions = [rfDontMove]
        DisplayFormat.DecimalSeparator = '/'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -19
        Font.Name = 'B Nazanin'
        Font.Style = []
        Frame.Typ = [ftLeft, ftRight, ftBottom]
        HAlign = haRight
        Memo.UTF8 = (
          ' '#1591#162#1591#175#1591#177#1591#179' '#1592#710#1592#8218#1592#710#1591#185' '#1592#8230#1592#8222#1593#169'  ')
        ParentFont = False
        VAlign = vaCenter
      end
      object MemName8: TfrxMemoView
        ShiftMode = smDontShift
        Left = 466.882190000000000000
        Top = 485.457020000000000000
        Width = 188.976500000000000000
        Height = 49.133848500000000000
        Restrictions = [rfDontMove]
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -19
        Font.Name = 'B Nazanin'
        Font.Style = []
        Frame.Typ = [ftLeft, ftRight, ftBottom]
        HAlign = haRight
        Memo.UTF8 = (
          ' '#1593#169#1591#175' '#1592#8224#1592#710#1591#179#1591#167#1591#178#1592#1657'  ')
        ParentFont = False
        VAlign = vaCenter
      end
      object MemName9: TfrxMemoView
        ShiftMode = smDontShift
        Left = 466.882190000000000000
        Top = 534.590910000000000000
        Width = 188.976500000000000000
        Height = 52.913378500000000000
        Restrictions = [rfDontMove]
        DisplayFormat.DecimalSeparator = '/'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -19
        Font.Name = 'B Nazanin'
        Font.Style = []
        Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
        HAlign = haRight
        Memo.UTF8 = (
          ' '#1591#1726#1592#710#1591#182#1594#338#1591#173#1591#167#1591#1726'  ')
        ParentFont = False
        VAlign = vaCenter
      end
      object MemDesc11: TfrxMemoView
        ShiftMode = smDontShift
        Left = 111.606370000000000000
        Top = 94.031478980000000000
        Width = 355.275820000000000000
        Height = 49.133858270000000000
        Restrictions = [rfDontMove]
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -19
        Font.Name = 'B Jadid'
        Font.Style = [fsBold]
        Frame.Typ = [ftLeft, ftRight, ftTop]
        HAlign = haCenter
        ParentFont = False
        VAlign = vaCenter
      end
      object MemDesc2: TfrxMemoView
        ShiftMode = smDontShift
        Left = 111.606370000000000000
        Top = 191.551330000000000000
        Width = 355.275820000000000000
        Height = 49.133858270000000000
        Restrictions = [rfDontMove]
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -23
        Font.Name = 'B Jadid'
        Font.Style = [fsBold]
        Frame.Typ = [ftLeft, ftRight, ftTop]
        HAlign = haCenter
        ParentFont = False
        VAlign = vaCenter
      end
      object MemDesc4: TfrxMemoView
        ShiftMode = smDontShift
        Left = 111.606370000000000000
        Top = 241.244280000000000000
        Width = 355.275820000000000000
        Height = 49.133848500000000000
        Restrictions = [rfDontMove]
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -23
        Font.Name = 'B Jadid'
        Font.Style = [fsBold]
        Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
        HAlign = haCenter
        ParentFont = False
        VAlign = vaCenter
      end
      object MemDesc5: TfrxMemoView
        ShiftMode = smDontShift
        Left = 421.527830000000000000
        Top = 324.512060000000000000
        Width = 234.330860000000000000
        Height = 37.795275590000000000
        Restrictions = [rfDontMove]
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = '2  Nazanin'
        Font.Style = [fsBold]
        Frame.Typ = [ftLeft, ftRight]
        HAlign = haCenter
        ParentFont = False
        VAlign = vaCenter
      end
      object MemDesc7: TfrxMemoView
        ShiftMode = smDontShift
        Left = 111.606370000000000000
        Top = 427.866420000000000000
        Width = 355.275820000000000000
        Height = 56.692908500000000000
        Restrictions = [rfDontMove]
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = 'B Nazanin'
        Font.Style = [fsBold]
        Frame.Typ = [ftLeft, ftRight, ftBottom]
        HAlign = haCenter
        ParentFont = False
        VAlign = vaCenter
      end
      object MemDesc8: TfrxMemoView
        ShiftMode = smDontShift
        Left = 111.606370000000000000
        Top = 485.457020000000000000
        Width = 355.275820000000000000
        Height = 49.133848500000000000
        Restrictions = [rfDontMove]
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = 'B Nazanin'
        Font.Style = [fsBold]
        Frame.Typ = [ftLeft, ftRight, ftBottom]
        HAlign = haCenter
        ParentFont = False
        VAlign = vaCenter
      end
      object MemDesc9: TfrxMemoView
        ShiftMode = smDontShift
        Left = 111.606370000000000000
        Top = 534.590910000000000000
        Width = 355.275820000000000000
        Height = 52.913378500000000000
        Restrictions = [rfDontMove]
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = 'B Nazanin'
        Font.Style = [fsBold]
        Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
        HAlign = haCenter
        ParentFont = False
        VAlign = vaCenter
      end
      object MemDetail: TfrxMemoView
        ShiftMode = smDontShift
        Left = 111.606370000000000000
        Top = 587.063390000000000000
        Width = 544.252320000000000000
        Height = 30.236240000000000000
        Restrictions = [rfDontMove]
        DisplayFormat.DecimalSeparator = '/'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'B Nazanin'
        Font.Style = [fsBold]
        Frame.Typ = [ftLeft, ftRight]
        HAlign = haCenter
        Memo.UTF8 = (
          #1593#169#1591#167#1591#177#1591#168#1591#177#1591#167#1592#8224' '#1591#162#1591#177#1591#180#1594#338#1592#710' '#1591#167#1592#8222#1593#169#1591#1726#1591#177#1592#710#1592#8224#1594#338#1593#169#1594#338)
        ParentFont = False
      end
      object MemDetail1: TfrxMemoView
        ShiftMode = smDontShift
        Left = 542.472875430000000000
        Top = 617.960544490000000000
        Width = 113.385814570000000000
        Height = 30.236220472440940000
        Restrictions = [rfDontMove]
        DisplayFormat.DecimalSeparator = '/'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -19
        Font.Name = 'B Nazanin'
        Font.Style = []
        Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
        HAlign = haCenter
        Memo.UTF8 = (
          ' '#1591#167#1591#179#1591#1726#1591#174#1591#177#1591#167#1591#172)
        ParentFont = False
      end
      object MemDetail21: TfrxMemoView
        ShiftMode = smDontShift
        Left = 432.866590860000000000
        Top = 647.818856140000000000
        Width = 109.606284570000000000
        Height = 34.015748030000000000
        Restrictions = [rfDontMove]
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'B Nazanin'
        Font.Style = []
        Frame.Typ = [ftLeft, ftRight, ftBottom]
        HAlign = haRight
        ParentFont = False
        VAlign = vaCenter
      end
      object MemDetail2: TfrxMemoView
        ShiftMode = smDontShift
        Left = 432.866590860000000000
        Top = 618.079160000000000000
        Width = 109.606284570000000000
        Height = 30.236220472440940000
        Restrictions = [rfDontMove]
        DisplayFormat.DecimalSeparator = '/'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -19
        Font.Name = 'B Nazanin'
        Font.Style = []
        Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
        HAlign = haCenter
        Memo.UTF8 = (
          ' '#1591#162#1592#8230#1591#167#1591#175#1592#8225' '#1591#179#1591#167#1591#178#1594#338)
        ParentFont = False
      end
      object MemDetail11: TfrxMemoView
        ShiftMode = smDontShift
        Left = 542.472875430000000000
        Top = 647.795190160000000000
        Width = 113.385814570000000000
        Height = 34.015748030000000000
        Restrictions = [rfDontMove]
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'B Nazanin'
        Font.Style = []
        Frame.Typ = [ftLeft, ftRight, ftBottom]
        HAlign = haRight
        ParentFont = False
        VAlign = vaCenter
      end
      object MemDetail4: TfrxMemoView
        ShiftMode = smDontShift
        Left = 228.771714570000000000
        Top = 617.960544490000000000
        Width = 105.827181720000000000
        Height = 30.236220472440940000
        Restrictions = [rfDontMove]
        DisplayFormat.DecimalSeparator = '/'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -19
        Font.Name = 'B Nazanin'
        Font.Style = []
        Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
        HAlign = haCenter
        Memo.UTF8 = (
          ' '#1591#167#1591#179#1593#169#1592#8224' '#1592#1662#1592#8222#1591#1726)
        ParentFont = False
      end
      object MemDetail41: TfrxMemoView
        ShiftMode = smDontShift
        Left = 228.771714570000000000
        Top = 647.818856140000000000
        Width = 105.827181720000000000
        Height = 34.015748030000000000
        Restrictions = [rfDontMove]
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'B Nazanin'
        Font.Style = []
        Frame.Typ = [ftLeft, ftRight, ftBottom]
        HAlign = haRight
        ParentFont = False
        VAlign = vaCenter
      end
      object MemDetail5: TfrxMemoView
        ShiftMode = smDontShift
        Left = 111.606370000000000000
        Top = 617.960544490000000000
        Width = 117.165344570000000000
        Height = 30.236220472440940000
        Restrictions = [rfDontMove]
        DisplayFormat.DecimalSeparator = '/'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -19
        Font.Name = 'B Nazanin'
        Font.Style = []
        Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
        HAlign = haCenter
        Memo.UTF8 = (
          ' '#1591#168#1591#179#1591#1726#1592#8225' '#1591#168#1592#8224#1591#175#1594#338' ')
        ParentFont = False
      end
      object MemDetail51: TfrxMemoView
        ShiftMode = smDontShift
        Left = 111.606370000000000000
        Top = 647.818856140000000000
        Width = 117.165344570000000000
        Height = 34.015748030000000000
        Restrictions = [rfDontMove]
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'B Nazanin'
        Font.Style = []
        Frame.Typ = [ftLeft, ftRight, ftBottom]
        HAlign = haRight
        ParentFont = False
        VAlign = vaCenter
      end
      object MemDetail3: TfrxMemoView
        ShiftMode = smDontShift
        Left = 334.598896290000000000
        Top = 617.960544490000000000
        Width = 98.267694570000000000
        Height = 30.236220472440940000
        Restrictions = [rfDontMove]
        DisplayFormat.DecimalSeparator = '/'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -19
        Font.Name = 'B Nazanin'
        Font.Style = []
        Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
        HAlign = haCenter
        Memo.UTF8 = (
          ' '#1591#167#1591#179#1593#169#1592#8224)
        ParentFont = False
      end
      object MemDetail31: TfrxMemoView
        ShiftMode = smDontShift
        Left = 334.598896290000000000
        Top = 647.818856140000000000
        Width = 98.267694570000000000
        Height = 34.015748030000000000
        Restrictions = [rfDontMove]
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'B Nazanin'
        Font.Style = []
        Frame.Typ = [ftLeft, ftRight, ftBottom]
        HAlign = haRight
        ParentFont = False
        VAlign = vaCenter
      end
      object MemDesc60: TfrxMemoView
        ShiftMode = smDontShift
        Left = 372.393940000000000000
        Top = 362.370078740000000000
        Width = 94.488250000000000000
        Height = 30.236220472440940000
        Restrictions = [rfDontMove]
        DisplayFormat.DecimalSeparator = '/'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -19
        Font.Name = 'B Nazanin'
        Font.Style = []
        Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
        HAlign = haCenter
        Memo.UTF8 = (
          ' '#1591#168#1591#174#1591#180)
        ParentFont = False
      end
      object MemDesc62: TfrxMemoView
        ShiftMode = smDontShift
        Left = 111.606370000000000000
        Top = 362.488118190000000000
        Width = 98.267780000000000000
        Height = 30.236220472440940000
        Restrictions = [rfDontMove]
        DisplayFormat.DecimalSeparator = '/'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -19
        Font.Name = 'B Nazanin'
        Font.Style = []
        Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
        HAlign = haCenter
        Memo.UTF8 = (
          ' '#1592#190#1592#8222#1591#167#1593#169' '#1592#1662#1591#177#1591#185#1594#338)
        ParentFont = False
      end
      object MemDesc63: TfrxMemoView
        ShiftMode = smDontShift
        Left = 372.393940000000000000
        Top = 393.448818900000000000
        Width = 94.488250000000000000
        Height = 34.015748030000000000
        Restrictions = [rfDontMove]
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -19
        Font.Name = 'B Nazanin'
        Font.Style = [fsBold]
        Frame.Typ = [ftLeft, ftRight, ftBottom]
        HAlign = haCenter
        ParentFont = False
        VAlign = vaCenter
      end
      object MemDesc65: TfrxMemoView
        ShiftMode = smDontShift
        Left = 111.606296770000000000
        Top = 393.322763860000000000
        Width = 98.267675040000000000
        Height = 34.015748030000000000
        Restrictions = [rfDontMove]
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -19
        Font.Name = 'B Nazanin'
        Font.Style = [fsBold]
        Frame.Typ = [ftLeft, ftRight, ftBottom]
        HAlign = haCenter
        ParentFont = False
        VAlign = vaCenter
      end
      object MemName0: TfrxMemoView
        ShiftMode = smDontShift
        Left = 466.882190000000000000
        Top = 142.944960000000000000
        Width = 188.976500000000000000
        Height = 49.133858270000000000
        Restrictions = [rfDontMove]
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -19
        Font.Name = 'B Nazanin'
        Font.Style = []
        Frame.Typ = [ftLeft, ftRight, ftTop]
        HAlign = haRight
        Memo.UTF8 = (
          ' '#1591#167#1591#183#1592#8222#1591#167#1591#185#1591#167#1591#1726' '#1593#169#1592#8222#1594#338' '#1592#190#1591#177#1592#710#1592#8224#1591#175#1592#8225'  ')
        ParentFont = False
        VAlign = vaCenter
      end
      object MemDesc0: TfrxMemoView
        ShiftMode = smDontShift
        Left = 111.606370000000000000
        Top = 142.944960000000000000
        Width = 355.275820000000000000
        Height = 49.133858270000000000
        Restrictions = [rfDontMove]
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -23
        Font.Name = 'B Jadid'
        Font.Style = [fsBold]
        Frame.Typ = [ftLeft, ftRight, ftTop]
        HAlign = haCenter
        ParentFont = False
      end
      object Memo1: TfrxMemoView
        ShiftMode = smDontShift
        Left = 111.606370000000000000
        Top = 289.913305280000000000
        Width = 170.078850000000000000
        Height = 34.015748030000000000
        Restrictions = [rfDontMove]
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -19
        Font.Name = '2  Nazanin'
        Font.Style = []
        Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
        HAlign = haCenter
        Memo.UTF8 = (
          #1593#169#1591#175#1592#8230#1592#8222#1592#1657'  ')
        ParentFont = False
        VAlign = vaCenter
      end
      object Memo2: TfrxMemoView
        ShiftMode = smDontShift
        Left = 111.606370000000000000
        Top = 324.488093780000000000
        Width = 170.078850000000000000
        Height = 37.795275590000000000
        Restrictions = [rfDontMove]
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = '2  Nazanin'
        Font.Style = [fsBold]
        Frame.Typ = [ftLeft, ftRight, ftTop]
        HAlign = haCenter
        ParentFont = False
        VAlign = vaCenter
      end
      object Memo3: TfrxMemoView
        ShiftMode = smDontShift
        Left = 281.685220000000000000
        Top = 289.913305280000000000
        Width = 139.842610000000000000
        Height = 34.015748030000000000
        Restrictions = [rfDontMove]
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -19
        Font.Name = '2  Nazanin'
        Font.Style = []
        Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
        HAlign = haCenter
        Memo.UTF8 = (
          ' '#1592#8224#1591#167#1592#8230' '#1592#190#1591#175#1591#177'  ')
        ParentFont = False
        VAlign = vaCenter
      end
      object MemDesc61: TfrxMemoView
        ShiftMode = smDontShift
        Left = 209.874150000000000000
        Top = 362.464537640000000000
        Width = 162.519790000000000000
        Height = 30.236220472440940000
        Restrictions = [rfDontMove]
        DisplayFormat.DecimalSeparator = '/'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -19
        Font.Name = 'B Nazanin'
        Font.Style = []
        Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
        HAlign = haCenter
        Memo.UTF8 = (
          ' '#1592#190#1592#8222#1591#167#1593#169' '#1591#167#1591#181#1592#8222#1594#338)
        ParentFont = False
      end
      object MemDesc64: TfrxMemoView
        ShiftMode = smDontShift
        Left = 209.873971810000000000
        Top = 393.448784720000000000
        Width = 162.519968190000000000
        Height = 34.015748030000000000
        Restrictions = [rfDontMove]
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -19
        Font.Name = 'B Nazanin'
        Font.Style = [fsBold]
        Frame.Typ = [ftLeft, ftRight, ftBottom]
        HAlign = haCenter
        ParentFont = False
        VAlign = vaCenter
      end
      object Memo4: TfrxMemoView
        ShiftMode = smDontShift
        Left = 281.685220000000000000
        Top = 324.488093780000000000
        Width = 139.842610000000000000
        Height = 37.795275590000000000
        Restrictions = [rfDontMove]
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = '2  Nazanin'
        Font.Style = [fsBold]
        Frame.Typ = [ftLeft, ftRight, ftTop]
        HAlign = haCenter
        ParentFont = False
        VAlign = vaCenter
      end
      object Memo5: TfrxMemoView
        Left = 112.385900000000000000
        Width = 543.874015750000000000
        Height = 94.488250000000000000
        Restrictions = [rfDontMove]
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = []
        Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
        ParentFont = False
      end
    end
  end
  object frxReport10: TfrxReport
    Version = '5.4.6'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick]
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = #1662#1610#1588' '#1601#1585#1590
    PrintOptions.PrintOnSheet = 0
    ReportOptions.CreateDate = 45655.501704953710000000
    ReportOptions.LastChange = 45655.570959884260000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      'begin'
      ''
      'end.')
    Left = 338
    Top = 174
    Datasets = <>
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
      LeftMargin = 3.000000000000000000
      RightMargin = 3.000000000000000000
      TopMargin = 10.000000000000000000
      BottomMargin = 2.000000000000000000
      object MemName1: TfrxMemoView
        ShiftMode = smDontShift
        Left = 466.882190000000000000
        Top = 80.981102360000000000
        Width = 188.976500000000000000
        Height = 41.574830000000000000
        DisplayFormat.DecimalSeparator = '/'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -20
        Font.Name = 'Arial'
        Font.Style = []
        Frame.Typ = [ftLeft, ftRight, ftTop]
        HAlign = haRight
        Memo.UTF8 = (
          ' '#1593#169#1592#8222#1591#167#1591#179#1592#8225' '#1592#190#1591#177#1592#710#1592#8224#1591#175#1592#8225' '#1591#1726#1591#177#1593#169#1594#338#1591#168#1594#338'  ')
        ParentFont = False
        VAlign = vaCenter
      end
      object MemName2: TfrxMemoView
        ShiftMode = smDontShift
        Left = 466.882190000000000000
        Top = 187.551330000000000000
        Width = 188.976500000000000000
        Height = 56.692950000000000000
        DisplayFormat.DecimalSeparator = '/'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -20
        Font.Name = 'Arial'
        Font.Style = []
        Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
        HAlign = haRight
        Memo.UTF8 = (
          ' '#1591#180#1592#8230#1591#167#1591#177#1592#8225' '#1591#172#1592#8222#1591#175' '#1592#190#1591#177#1592#710#1592#8224#1591#175#1592#8225'  ')
        ParentFont = False
        VAlign = vaCenter
      end
      object MemName4: TfrxMemoView
        ShiftMode = smDontShift
        Left = 466.882190000000000000
        Top = 244.244280000000000000
        Width = 188.976500000000000000
        Height = 49.133890000000000000
        DisplayFormat.DecimalSeparator = '/'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -20
        Font.Name = 'Arial'
        Font.Style = []
        Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
        HAlign = haRight
        Memo.UTF8 = (
          ' '#1592#8224#1591#167#1592#8230' '#1591#183#1591#177#1591#173'  ')
        ParentFont = False
        VAlign = vaCenter
      end
      object MemName5: TfrxMemoView
        ShiftMode = smDontShift
        Left = 421.527830000000000000
        Top = 292.937230000000000000
        Width = 234.330860000000000000
        Height = 37.795300000000000000
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -20
        Font.Name = 'Arial'
        Font.Style = []
        Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
        HAlign = haRight
        Memo.UTF8 = (
          ' '#1592#8224#1591#167#1592#8230' '#1592#710' '#1592#8224#1591#167#1592#8230' '#1591#174#1591#167#1592#8224#1592#710#1591#167#1591#175#1593#175#1594#338'   ')
        ParentFont = False
        VAlign = vaCenter
      end
      object MemName6: TfrxMemoView
        ShiftMode = smDontShift
        Left = 466.882190000000000000
        Top = 367.464537640000000000
        Width = 188.976500000000000000
        Height = 63.874015750000000000
        DisplayFormat.DecimalSeparator = '/'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -20
        Font.Name = 'Arial'
        Font.Style = []
        Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
        HAlign = haRight
        Memo.UTF8 = (
          ' '#1592#8230#1591#180#1591#174#1591#181#1591#167#1591#1726' '#1591#171#1591#168#1591#1726#1594#338' '#1592#8230#1592#8222#1593#169'  ')
        ParentFont = False
        VAlign = vaCenter
      end
      object MemName7: TfrxMemoView
        ShiftMode = smDontShift
        Left = 466.882190000000000000
        Top = 430.866420000000000000
        Width = 188.976500000000000000
        Height = 56.692908500000000000
        DisplayFormat.DecimalSeparator = '/'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -20
        Font.Name = 'Arial'
        Font.Style = []
        Frame.Typ = [ftLeft, ftRight, ftBottom]
        HAlign = haRight
        Memo.UTF8 = (
          ' '#1591#162#1591#175#1591#177#1591#179' '#1592#710#1592#8218#1592#710#1591#185' '#1592#8230#1592#8222#1593#169'  ')
        ParentFont = False
        VAlign = vaCenter
      end
      object MemName8: TfrxMemoView
        ShiftMode = smDontShift
        Left = 466.882190000000000000
        Top = 487.457020000000000000
        Width = 188.976500000000000000
        Height = 49.133848500000000000
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -20
        Font.Name = 'Arial'
        Font.Style = []
        Frame.Typ = [ftLeft, ftRight, ftBottom]
        HAlign = haRight
        Memo.UTF8 = (
          ' '#1593#169#1591#175' '#1592#8224#1592#710#1591#179#1591#167#1591#178#1592#1657'  ')
        ParentFont = False
        VAlign = vaCenter
      end
      object MemName9: TfrxMemoView
        ShiftMode = smDontShift
        Left = 466.882190000000000000
        Top = 536.590910000000000000
        Width = 188.976500000000000000
        Height = 71.811028500000000000
        DisplayFormat.DecimalSeparator = '/'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -20
        Font.Name = 'Arial'
        Font.Style = []
        Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
        HAlign = haRight
        Memo.UTF8 = (
          ' '#1591#1726#1592#710#1591#182#1594#338#1591#173#1591#167#1591#1726'  ')
        ParentFont = False
        VAlign = vaCenter
      end
      object MemDesc11: TfrxMemoView
        ShiftMode = smDontShift
        Left = 111.606370000000000000
        Top = 81.031478980000000000
        Width = 355.275820000000000000
        Height = 41.574788500000000000
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -23
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        Frame.Typ = [ftLeft, ftRight, ftTop]
        HAlign = haCenter
        ParentFont = False
        VAlign = vaCenter
      end
      object MemDesc2: TfrxMemoView
        ShiftMode = smDontShift
        Left = 111.606370000000000000
        Top = 187.551330000000000000
        Width = 355.275820000000000000
        Height = 56.692908500000000000
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -23
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
        HAlign = haCenter
        ParentFont = False
        VAlign = vaCenter
      end
      object MemDesc4: TfrxMemoView
        ShiftMode = smDontShift
        Left = 111.606370000000000000
        Top = 244.244280000000000000
        Width = 355.275820000000000000
        Height = 49.133848500000000000
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -23
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
        HAlign = haCenter
        ParentFont = False
        VAlign = vaCenter
      end
      object MemDesc5: TfrxMemoView
        ShiftMode = smDontShift
        Left = 421.527830000000000000
        Top = 331.512060000000000000
        Width = 234.330860000000000000
        Height = 34.015728500000000000
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -23
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        Frame.Typ = [ftLeft, ftRight]
        HAlign = haCenter
        ParentFont = False
        VAlign = vaCenter
      end
      object MemDesc7: TfrxMemoView
        ShiftMode = smDontShift
        Left = 111.606370000000000000
        Top = 430.866420000000000000
        Width = 355.275820000000000000
        Height = 56.692908500000000000
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -23
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        Frame.Typ = [ftLeft, ftRight, ftBottom]
        HAlign = haCenter
        ParentFont = False
        VAlign = vaCenter
      end
      object MemDesc8: TfrxMemoView
        ShiftMode = smDontShift
        Left = 111.606370000000000000
        Top = 487.457020000000000000
        Width = 355.275820000000000000
        Height = 49.133848500000000000
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -23
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        Frame.Typ = [ftLeft, ftRight, ftBottom]
        HAlign = haCenter
        ParentFont = False
        VAlign = vaCenter
      end
      object MemDesc9: TfrxMemoView
        ShiftMode = smDontShift
        Left = 111.606370000000000000
        Top = 536.590910000000000000
        Width = 355.275820000000000000
        Height = 71.811028500000000000
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -23
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
        HAlign = haCenter
        ParentFont = False
        VAlign = vaCenter
      end
      object MemDetail: TfrxMemoView
        ShiftMode = smDontShift
        Left = 111.606370000000000000
        Top = 608.961040000000000000
        Width = 544.252320000000000000
        Height = 26.456710000000000000
        DisplayFormat.DecimalSeparator = '/'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -20
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        Frame.Typ = [ftLeft, ftRight, ftBottom]
        HAlign = haCenter
        Memo.UTF8 = (
          #1593#169#1591#167#1591#177#1591#168#1591#177#1591#167#1592#8224' '#1591#162#1591#177#1591#180#1594#338#1592#710' '#1591#167#1592#8222#1593#169#1591#1726#1591#177#1592#710#1592#8224#1594#338#1593#169#1594#338)
        ParentFont = False
        VAlign = vaCenter
      end
      object MemDetail1: TfrxMemoView
        ShiftMode = smDontShift
        Left = 542.472875430000000000
        Top = 634.858194490000000000
        Width = 113.385814570000000000
        Height = 26.456710000000000000
        DisplayFormat.DecimalSeparator = '/'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -20
        Font.Name = 'Arial'
        Font.Style = []
        Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
        HAlign = haCenter
        Memo.UTF8 = (
          ' '#1591#167#1591#179#1591#1726#1591#174#1591#177#1591#167#1591#172)
        ParentFont = False
      end
      object MemDetail21: TfrxMemoView
        ShiftMode = smDontShift
        Left = 432.866590860000000000
        Top = 661.716506140000000000
        Width = 109.606284570000000000
        Height = 41.574803150000000000
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -23
        Font.Name = 'Arial'
        Font.Style = []
        Frame.Typ = [ftLeft, ftRight, ftBottom]
        HAlign = haRight
        ParentFont = False
        VAlign = vaCenter
      end
      object MemDetail2: TfrxMemoView
        ShiftMode = smDontShift
        Left = 432.866590860000000000
        Top = 634.976810000000000000
        Width = 109.606284570000000000
        Height = 26.456710000000000000
        DisplayFormat.DecimalSeparator = '/'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -20
        Font.Name = 'Arial'
        Font.Style = []
        Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
        HAlign = haCenter
        Memo.UTF8 = (
          ' '#1591#162#1592#8230#1591#167#1591#175#1592#8225' '#1591#179#1591#167#1591#178#1594#338)
        ParentFont = False
      end
      object MemDetail11: TfrxMemoView
        ShiftMode = smDontShift
        Left = 542.472875430000000000
        Top = 661.692840160000000000
        Width = 113.385814570000000000
        Height = 41.574788500000000000
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -23
        Font.Name = 'Arial'
        Font.Style = []
        Frame.Typ = [ftLeft, ftRight, ftBottom]
        HAlign = haRight
        ParentFont = False
        VAlign = vaCenter
      end
      object MemDetail4: TfrxMemoView
        ShiftMode = smDontShift
        Left = 228.771714570000000000
        Top = 634.858194490000000000
        Width = 105.827181720000000000
        Height = 26.456710000000000000
        DisplayFormat.DecimalSeparator = '/'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -20
        Font.Name = 'Arial'
        Font.Style = []
        Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
        HAlign = haCenter
        Memo.UTF8 = (
          ' '#1591#167#1591#179#1593#169#1592#8224' '#1592#1662#1592#8222#1591#1726)
        ParentFont = False
      end
      object MemDetail41: TfrxMemoView
        ShiftMode = smDontShift
        Left = 228.771714570000000000
        Top = 661.716506140000000000
        Width = 105.827181720000000000
        Height = 41.574803150000000000
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -23
        Font.Name = 'Arial'
        Font.Style = []
        Frame.Typ = [ftLeft, ftRight, ftBottom]
        HAlign = haRight
        ParentFont = False
        VAlign = vaCenter
      end
      object MemDetail5: TfrxMemoView
        ShiftMode = smDontShift
        Left = 111.606370000000000000
        Top = 634.858194490000000000
        Width = 117.165344570000000000
        Height = 26.456710000000000000
        DisplayFormat.DecimalSeparator = '/'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -20
        Font.Name = 'Arial'
        Font.Style = []
        Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
        HAlign = haCenter
        Memo.UTF8 = (
          ' '#1591#168#1591#179#1591#1726#1592#8225' '#1591#168#1592#8224#1591#175#1594#338' ')
        ParentFont = False
      end
      object MemDetail51: TfrxMemoView
        ShiftMode = smDontShift
        Left = 111.606370000000000000
        Top = 661.716506140000000000
        Width = 117.165344570000000000
        Height = 41.574803150000000000
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -23
        Font.Name = 'Arial'
        Font.Style = []
        Frame.Typ = [ftLeft, ftRight, ftBottom]
        HAlign = haRight
        ParentFont = False
        VAlign = vaCenter
      end
      object MemDetail3: TfrxMemoView
        ShiftMode = smDontShift
        Left = 334.598896290000000000
        Top = 634.858194490000000000
        Width = 98.267694570000000000
        Height = 26.456692910000000000
        DisplayFormat.DecimalSeparator = '/'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -20
        Font.Name = 'Arial'
        Font.Style = []
        Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
        HAlign = haCenter
        Memo.UTF8 = (
          ' '#1591#167#1591#179#1593#169#1592#8224)
        ParentFont = False
      end
      object MemDetail31: TfrxMemoView
        ShiftMode = smDontShift
        Left = 334.598896290000000000
        Top = 661.716506140000000000
        Width = 98.267694570000000000
        Height = 41.574803150000000000
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -23
        Font.Name = 'Arial'
        Font.Style = []
        Frame.Typ = [ftLeft, ftRight, ftBottom]
        HAlign = haRight
        ParentFont = False
        VAlign = vaCenter
      end
      object MemDesc60: TfrxMemoView
        ShiftMode = smDontShift
        Left = 372.393940000000000000
        Top = 367.370078740000000000
        Width = 94.488250000000000000
        Height = 26.456710000000000000
        DisplayFormat.DecimalSeparator = '/'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -20
        Font.Name = 'Arial'
        Font.Style = []
        Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
        HAlign = haCenter
        Memo.UTF8 = (
          ' '#1591#168#1591#174#1591#180)
        ParentFont = False
      end
      object MemDesc62: TfrxMemoView
        ShiftMode = smDontShift
        Left = 111.606370000000000000
        Top = 367.488118190000000000
        Width = 98.267780000000000000
        Height = 26.456710000000000000
        DisplayFormat.DecimalSeparator = '/'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -20
        Font.Name = 'Arial'
        Font.Style = []
        Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
        HAlign = haCenter
        Memo.UTF8 = (
          ' '#1592#190#1592#8222#1591#167#1593#169' '#1592#1662#1591#177#1591#185#1594#338)
        ParentFont = False
      end
      object MemDesc63: TfrxMemoView
        ShiftMode = smDontShift
        Left = 372.393940000000000000
        Top = 393.448818900000000000
        Width = 94.488250000000000000
        Height = 36.661417320000000000
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -23
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        Frame.Typ = [ftLeft, ftRight, ftBottom]
        HAlign = haCenter
        ParentFont = False
        VAlign = vaCenter
      end
      object MemDesc65: TfrxMemoView
        ShiftMode = smDontShift
        Left = 111.606296770000000000
        Top = 393.322763860000000000
        Width = 98.267675040000000000
        Height = 36.661417320000000000
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -23
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        Frame.Typ = [ftLeft, ftRight, ftBottom]
        HAlign = haCenter
        ParentFont = False
        VAlign = vaCenter
      end
      object MHeader: TfrxMemoView
        ShiftMode = smDontShift
        Left = 111.606370000000000000
        Width = 544.252320000000000000
        Height = 30.992099130000000000
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -23
        Font.Name = 'B Nazanin'
        Font.Style = [fsBold, fsItalic]
        Frame.Typ = [ftLeft, ftRight, ftTop]
        HAlign = haCenter
        Memo.UTF8 = (
          #1591#180#1591#177#1593#169#1591#1726' '#1593#175#1591#179#1591#1726#1591#177#1591#180' '#1592#1662#1592#8224' '#1591#162#1592#710#1591#177#1591#167#1592#8224' '#1591#167#1591#183#1592#8222#1591#167#1591#185#1591#167#1591#1726' '#1594#338#1593#175#1591#167#1592#8224#1592#8225)
        ParentFont = False
      end
      object MemName0: TfrxMemoView
        ShiftMode = smDontShift
        Left = 466.882190000000000000
        Top = 122.944960000000000000
        Width = 188.976500000000000000
        Height = 64.252010000000000000
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -20
        Font.Name = 'Arial'
        Font.Style = []
        Frame.Typ = [ftLeft, ftRight, ftTop]
        HAlign = haRight
        Memo.UTF8 = (
          ' '#1591#167#1591#183#1592#8222#1591#167#1591#185#1591#167#1591#1726' '#1593#169#1592#8222#1594#338' '#1592#190#1591#177#1592#710#1592#8224#1591#175#1592#8225'  ')
        ParentFont = False
        VAlign = vaCenter
      end
      object MemDesc0: TfrxMemoView
        ShiftMode = smDontShift
        Left = 111.606370000000000000
        Top = 122.944960000000000000
        Width = 355.275820000000000000
        Height = 64.251968500000000000
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -23
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        Frame.Typ = [ftLeft, ftRight, ftTop]
        HAlign = haCenter
        ParentFont = False
      end
      object Memo1: TfrxMemoView
        ShiftMode = smDontShift
        Left = 111.606370000000000000
        Top = 292.913305280000000000
        Width = 170.078850000000000000
        Height = 37.795300000000000000
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -20
        Font.Name = 'Arial'
        Font.Style = []
        Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
        HAlign = haCenter
        Memo.UTF8 = (
          #1593#169#1591#175#1592#8230#1592#8222#1592#1657'  ')
        ParentFont = False
        VAlign = vaCenter
      end
      object Memo2: TfrxMemoView
        ShiftMode = smDontShift
        Left = 111.606370000000000000
        Top = 331.488093780000000000
        Width = 170.078850000000000000
        Height = 34.015728500000000000
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -23
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        Frame.Typ = [ftLeft, ftRight, ftTop]
        HAlign = haCenter
        ParentFont = False
        VAlign = vaCenter
      end
      object Memo3: TfrxMemoView
        ShiftMode = smDontShift
        Left = 281.685220000000000000
        Top = 292.913305280000000000
        Width = 139.842610000000000000
        Height = 37.795300000000000000
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -20
        Font.Name = 'Arial'
        Font.Style = []
        Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
        HAlign = haCenter
        Memo.UTF8 = (
          ' '#1592#8224#1591#167#1592#8230' '#1592#190#1591#175#1591#177'  ')
        ParentFont = False
        VAlign = vaCenter
      end
      object MemDesc61: TfrxMemoView
        ShiftMode = smDontShift
        Left = 209.874150000000000000
        Top = 367.464537640000000000
        Width = 162.519790000000000000
        Height = 26.456710000000000000
        DisplayFormat.DecimalSeparator = '/'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -20
        Font.Name = 'Arial'
        Font.Style = []
        Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
        HAlign = haCenter
        Memo.UTF8 = (
          ' '#1592#190#1592#8222#1591#167#1593#169' '#1591#167#1591#181#1592#8222#1594#338)
        ParentFont = False
      end
      object MemDesc64: TfrxMemoView
        ShiftMode = smDontShift
        Left = 209.873971810000000000
        Top = 393.448784720000000000
        Width = 162.519968190000000000
        Height = 36.661417320000000000
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -23
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        Frame.Typ = [ftLeft, ftRight, ftBottom]
        HAlign = haCenter
        ParentFont = False
        VAlign = vaCenter
      end
      object Memo4: TfrxMemoView
        ShiftMode = smDontShift
        Left = 281.685220000000000000
        Top = 331.488093780000000000
        Width = 139.842610000000000000
        Height = 34.015728500000000000
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -23
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        Frame.Typ = [ftLeft, ftRight, ftTop]
        HAlign = haCenter
        ParentFont = False
        VAlign = vaCenter
      end
      object Memo5: TfrxMemoView
        ShiftMode = smDontShift
        Left = 111.606370000000000000
        Top = 31.795300000000000000
        Width = 544.252320000000000000
        Height = 23.433039130000000000
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -24
        Font.Name = 'Times'
        Font.Style = []
        Frame.Typ = [ftLeft, ftRight]
        HAlign = haCenter
        Memo.UTF8 = (
          #1591#177#1592#710#1593#169#1591#180' '#1592#190#1591#177#1592#710#1592#8224#1591#175#1592#8225)
        ParentFont = False
        VAlign = vaBottom
      end
      object Memo6: TfrxMemoView
        ShiftMode = smDontShift
        Left = 111.606370000000000000
        Top = 56.472480000000000000
        Width = 544.252320000000000000
        Height = 23.433039130000000000
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -23
        Font.Name = 'Times New Roman'
        Font.Style = [fsBold]
        Frame.Typ = [ftLeft, ftRight]
        HAlign = haCenter
        Memo.UTF8 = (
          #1591#180#1592#8225#1591#177#1591#175#1591#167#1591#177#1592#1657' '#1591#167#1591#181#1592#1662#1592#8225#1591#167#1592#8224)
        ParentFont = False
        VAlign = vaBottom
      end
    end
  end
  object frxReportA3: TfrxReport
    Version = '5.4.6'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick]
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = #1662#1610#1588' '#1601#1585#1590
    PrintOptions.PrintOnSheet = 0
    ReportOptions.CreateDate = 45655.501704953710000000
    ReportOptions.LastChange = 45655.570959884260000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      'begin'
      ''
      'end.')
    Left = 186
    Top = 238
    Datasets = <>
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
      LeftMargin = 3.000000000000000000
      RightMargin = 3.000000000000000000
      TopMargin = 10.000000000000000000
      BottomMargin = 2.000000000000000000
      object MemName1: TfrxMemoView
        ShiftMode = smDontShift
        Left = 466.882190000000000000
        Top = 95.981102360000000000
        Width = 188.976500000000000000
        Height = 49.133858267716540000
        DisplayFormat.DecimalSeparator = '/'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -19
        Font.Name = '2  Nazanin'
        Font.Style = []
        Frame.Typ = [ftLeft, ftRight, ftTop]
        HAlign = haRight
        Memo.UTF8 = (
          ' '#1593#169#1592#8222#1591#167#1591#179#1592#8225' '#1592#190#1591#177#1592#710#1592#8224#1591#175#1592#8225' '#1591#1726#1591#177#1593#169#1594#338#1591#168#1594#338'  ')
        ParentFont = False
        VAlign = vaCenter
      end
      object MemName2: TfrxMemoView
        ShiftMode = smDontShift
        Left = 466.882190000000000000
        Top = 193.551330000000000000
        Width = 188.976500000000000000
        Height = 49.133858270000000000
        DisplayFormat.DecimalSeparator = '/'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -19
        Font.Name = '2  Nazanin'
        Font.Style = []
        Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
        HAlign = haRight
        Memo.UTF8 = (
          ' '#1591#180#1592#8230#1591#167#1591#177#1592#8225' '#1591#172#1592#8222#1591#175' '#1592#190#1591#177#1592#710#1592#8224#1591#175#1592#8225'  ')
        ParentFont = False
        VAlign = vaCenter
      end
      object MemName4: TfrxMemoView
        ShiftMode = smDontShift
        Left = 466.882190000000000000
        Top = 243.244280000000000000
        Width = 188.976500000000000000
        Height = 49.133858270000000000
        DisplayFormat.DecimalSeparator = '/'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -19
        Font.Name = '2  Nazanin'
        Font.Style = []
        Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
        HAlign = haRight
        Memo.UTF8 = (
          ' '#1592#8224#1591#167#1592#8230' '#1591#183#1591#177#1591#173'  ')
        ParentFont = False
        VAlign = vaCenter
      end
      object MemName5: TfrxMemoView
        ShiftMode = smDontShift
        Left = 421.527830000000000000
        Top = 291.819110000000000000
        Width = 234.330860000000000000
        Height = 37.795300000000000000
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -19
        Font.Name = '2  Nazanin'
        Font.Style = []
        Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
        HAlign = haRight
        Memo.UTF8 = (
          ' '#1592#8224#1591#167#1592#8230' '#1592#710' '#1592#8224#1591#167#1592#8230' '#1591#174#1591#167#1592#8224#1592#710#1591#167#1591#175#1593#175#1594#338'   ')
        ParentFont = False
        VAlign = vaCenter
      end
      object MemName6: TfrxMemoView
        ShiftMode = smDontShift
        Left = 466.882190000000000000
        Top = 364.566887640000000000
        Width = 188.976500000000000000
        Height = 63.874015750000000000
        DisplayFormat.DecimalSeparator = '/'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -19
        Font.Name = '2  Nazanin'
        Font.Style = []
        Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
        HAlign = haRight
        Memo.UTF8 = (
          ' '#1592#8230#1591#180#1591#174#1591#181#1591#167#1591#1726' '#1591#171#1591#168#1591#1726#1594#338' '#1592#8230#1592#8222#1593#169'  ')
        ParentFont = False
        VAlign = vaCenter
      end
      object MemName7: TfrxMemoView
        ShiftMode = smDontShift
        Left = 466.882190000000000000
        Top = 428.748300000000000000
        Width = 188.976500000000000000
        Height = 52.913385830000000000
        DisplayFormat.DecimalSeparator = '/'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -19
        Font.Name = '2  Nazanin'
        Font.Style = []
        Frame.Typ = [ftLeft, ftRight, ftBottom]
        HAlign = haRight
        Memo.UTF8 = (
          ' '#1591#162#1591#175#1591#177#1591#179' '#1592#710#1592#8218#1592#710#1591#185' '#1592#8230#1592#8222#1593#169'  ')
        ParentFont = False
        VAlign = vaCenter
      end
      object MemName8: TfrxMemoView
        ShiftMode = smDontShift
        Left = 466.882190000000000000
        Top = 482.559370000000000000
        Width = 188.976500000000000000
        Height = 52.913385830000000000
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -19
        Font.Name = '2  Nazanin'
        Font.Style = []
        Frame.Typ = [ftLeft, ftRight, ftBottom]
        HAlign = haRight
        Memo.UTF8 = (
          ' '#1593#169#1591#175' '#1592#8224#1592#710#1591#179#1591#167#1591#178#1592#1657'  ')
        ParentFont = False
        VAlign = vaCenter
      end
      object MemName9: TfrxMemoView
        ShiftMode = smDontShift
        Left = 466.882190000000000000
        Top = 535.252320000000000000
        Width = 188.976500000000000000
        Height = 52.913385830000000000
        DisplayFormat.DecimalSeparator = '/'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -19
        Font.Name = '2  Nazanin'
        Font.Style = []
        Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
        HAlign = haRight
        Memo.UTF8 = (
          ' '#1591#1726#1592#710#1591#182#1594#338#1591#173#1591#167#1591#1726'  ')
        ParentFont = False
        VAlign = vaCenter
      end
      object MemDesc11: TfrxMemoView
        ShiftMode = smDontShift
        Left = 111.606370000000000000
        Top = 96.031478980000000000
        Width = 355.275820000000000000
        Height = 49.133858267716540000
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -19
        Font.Name = '2  Jadid'
        Font.Style = [fsBold]
        Frame.Typ = [ftLeft, ftRight, ftTop]
        HAlign = haCenter
        ParentFont = False
        VAlign = vaCenter
      end
      object MemDesc2: TfrxMemoView
        ShiftMode = smDontShift
        Left = 111.606370000000000000
        Top = 193.551330000000000000
        Width = 355.275820000000000000
        Height = 49.133858270000000000
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -23
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
        HAlign = haCenter
        ParentFont = False
        VAlign = vaCenter
      end
      object MemDesc4: TfrxMemoView
        ShiftMode = smDontShift
        Left = 111.606370000000000000
        Top = 243.244280000000000000
        Width = 355.275820000000000000
        Height = 49.133858270000000000
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -23
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
        HAlign = haCenter
        ParentFont = False
        VAlign = vaCenter
      end
      object MemDesc5: TfrxMemoView
        ShiftMode = smDontShift
        Left = 421.527830000000000000
        Top = 330.393940000000000000
        Width = 234.330860000000000000
        Height = 34.015728500000000000
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = '2  Nazanin'
        Font.Style = [fsBold]
        Frame.Typ = [ftLeft, ftRight]
        HAlign = haCenter
        ParentFont = False
        VAlign = vaCenter
      end
      object MemDesc7: TfrxMemoView
        ShiftMode = smDontShift
        Left = 111.606370000000000000
        Top = 428.748300000000000000
        Width = 355.275820000000000000
        Height = 52.913385830000000000
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = '2  Nazanin'
        Font.Style = [fsBold]
        Frame.Typ = [ftLeft, ftRight, ftBottom]
        HAlign = haCenter
        ParentFont = False
        VAlign = vaCenter
      end
      object MemDesc8: TfrxMemoView
        ShiftMode = smDontShift
        Left = 111.606370000000000000
        Top = 482.559370000000000000
        Width = 355.275820000000000000
        Height = 52.913385826771650000
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = '2  Nazanin'
        Font.Style = [fsBold]
        Frame.Typ = [ftLeft, ftRight, ftBottom]
        HAlign = haCenter
        ParentFont = False
        VAlign = vaCenter
      end
      object MemDesc9: TfrxMemoView
        ShiftMode = smDontShift
        Left = 111.606370000000000000
        Top = 535.252320000000000000
        Width = 355.275820000000000000
        Height = 52.913385826771650000
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = '2  Nazanin'
        Font.Style = [fsBold]
        Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
        HAlign = haCenter
        ParentFont = False
        VAlign = vaCenter
      end
      object MemDetail: TfrxMemoView
        ShiftMode = smDontShift
        Left = 111.606370000000000000
        Top = 587.945270000000000000
        Width = 544.252320000000000000
        Height = 26.456710000000000000
        DisplayFormat.DecimalSeparator = '/'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = '2  Nazanin'
        Font.Style = [fsBold]
        Frame.Typ = [ftLeft, ftRight]
        HAlign = haCenter
        Memo.UTF8 = (
          #1593#169#1591#167#1591#177#1591#168#1591#177#1591#167#1592#8224' '#1591#162#1591#177#1591#180#1594#338#1592#710' '#1591#167#1592#8222#1593#169#1591#1726#1591#177#1592#710#1592#8224#1594#338#1593#169#1594#338)
        ParentFont = False
        VAlign = vaCenter
      end
      object MemDetail1: TfrxMemoView
        ShiftMode = smDontShift
        Left = 542.472875430000000000
        Top = 614.842424490000000000
        Width = 113.385814570000000000
        Height = 26.456710000000000000
        DisplayFormat.DecimalSeparator = '/'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -19
        Font.Name = '2  Nazanin'
        Font.Style = []
        Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
        HAlign = haCenter
        Memo.UTF8 = (
          ' '#1591#167#1591#179#1591#1726#1591#174#1591#177#1591#167#1591#172)
        ParentFont = False
      end
      object MemDetail21: TfrxMemoView
        ShiftMode = smDontShift
        Left = 432.866590860000000000
        Top = 641.480266140000000000
        Width = 109.606284570000000000
        Height = 41.574803150000000000
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = '2  Nazanin'
        Font.Style = []
        Frame.Typ = [ftLeft, ftRight, ftBottom]
        HAlign = haRight
        ParentFont = False
        VAlign = vaCenter
      end
      object MemDetail2: TfrxMemoView
        ShiftMode = smDontShift
        Left = 432.866590860000000000
        Top = 614.961040000000000000
        Width = 109.606284570000000000
        Height = 26.456710000000000000
        DisplayFormat.DecimalSeparator = '/'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -19
        Font.Name = '2  Nazanin'
        Font.Style = []
        Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
        HAlign = haCenter
        Memo.UTF8 = (
          ' '#1591#162#1592#8230#1591#167#1591#175#1592#8225' '#1591#179#1591#167#1591#178#1594#338)
        ParentFont = False
      end
      object MemDetail11: TfrxMemoView
        ShiftMode = smDontShift
        Left = 542.472875430000000000
        Top = 641.456600160000000000
        Width = 113.385814570000000000
        Height = 41.574788500000000000
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = '2  Nazanin'
        Font.Style = []
        Frame.Typ = [ftLeft, ftRight, ftBottom]
        HAlign = haRight
        ParentFont = False
        VAlign = vaCenter
      end
      object MemDetail4: TfrxMemoView
        ShiftMode = smDontShift
        Left = 228.771714570000000000
        Top = 614.842424490000000000
        Width = 105.827181720000000000
        Height = 26.456710000000000000
        DisplayFormat.DecimalSeparator = '/'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -19
        Font.Name = '2  Nazanin'
        Font.Style = []
        Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
        HAlign = haCenter
        Memo.UTF8 = (
          ' '#1591#167#1591#179#1593#169#1592#8224' '#1592#1662#1592#8222#1591#1726)
        ParentFont = False
      end
      object MemDetail41: TfrxMemoView
        ShiftMode = smDontShift
        Left = 228.771714570000000000
        Top = 641.480266140000000000
        Width = 105.827181720000000000
        Height = 41.574803150000000000
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = '2  Nazanin'
        Font.Style = []
        Frame.Typ = [ftLeft, ftRight, ftBottom]
        HAlign = haRight
        ParentFont = False
        VAlign = vaCenter
      end
      object MemDetail5: TfrxMemoView
        ShiftMode = smDontShift
        Left = 111.606370000000000000
        Top = 614.842424490000000000
        Width = 117.165344570000000000
        Height = 26.456710000000000000
        DisplayFormat.DecimalSeparator = '/'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -19
        Font.Name = '2  Nazanin'
        Font.Style = []
        Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
        HAlign = haCenter
        Memo.UTF8 = (
          ' '#1591#168#1591#179#1591#1726#1592#8225' '#1591#168#1592#8224#1591#175#1594#338' ')
        ParentFont = False
      end
      object MemDetail51: TfrxMemoView
        ShiftMode = smDontShift
        Left = 111.606370000000000000
        Top = 641.480266140000000000
        Width = 117.165344570000000000
        Height = 41.574803150000000000
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = '2  Nazanin'
        Font.Style = []
        Frame.Typ = [ftLeft, ftRight, ftBottom]
        HAlign = haRight
        ParentFont = False
        VAlign = vaCenter
      end
      object MemDetail3: TfrxMemoView
        ShiftMode = smDontShift
        Left = 334.598896290000000000
        Top = 614.842424490000000000
        Width = 98.267694570000000000
        Height = 26.456692910000000000
        DisplayFormat.DecimalSeparator = '/'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -19
        Font.Name = '2  Nazanin'
        Font.Style = []
        Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
        HAlign = haCenter
        Memo.UTF8 = (
          ' '#1591#167#1591#179#1593#169#1592#8224)
        ParentFont = False
      end
      object MemDetail31: TfrxMemoView
        ShiftMode = smDontShift
        Left = 334.598896290000000000
        Top = 641.480266140000000000
        Width = 98.267694570000000000
        Height = 41.574803150000000000
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = '2  Nazanin'
        Font.Style = []
        Frame.Typ = [ftLeft, ftRight, ftBottom]
        HAlign = haRight
        ParentFont = False
        VAlign = vaCenter
      end
      object MemDesc60: TfrxMemoView
        ShiftMode = smDontShift
        Left = 372.393940000000000000
        Top = 365.472428740000000000
        Width = 94.488250000000000000
        Height = 26.456710000000000000
        DisplayFormat.DecimalSeparator = '/'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -19
        Font.Name = '2  Nazanin'
        Font.Style = []
        Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
        HAlign = haCenter
        Memo.UTF8 = (
          ' '#1591#168#1591#174#1591#180)
        ParentFont = False
      end
      object MemDesc62: TfrxMemoView
        ShiftMode = smDontShift
        Left = 111.606370000000000000
        Top = 364.590468190000000000
        Width = 98.267780000000000000
        Height = 26.456710000000000000
        DisplayFormat.DecimalSeparator = '/'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -19
        Font.Name = '2  Nazanin'
        Font.Style = []
        Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
        HAlign = haCenter
        Memo.UTF8 = (
          ' '#1592#190#1592#8222#1591#167#1593#169' '#1592#1662#1591#177#1591#185#1594#338)
        ParentFont = False
      end
      object MemDesc63: TfrxMemoView
        ShiftMode = smDontShift
        Left = 372.393940000000000000
        Top = 391.551168900000000000
        Width = 94.488250000000000000
        Height = 36.661417320000000000
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -19
        Font.Name = '2  Nazanin'
        Font.Style = [fsBold]
        Frame.Typ = [ftLeft, ftRight, ftBottom]
        HAlign = haCenter
        ParentFont = False
        VAlign = vaCenter
      end
      object MemDesc65: TfrxMemoView
        ShiftMode = smDontShift
        Left = 111.606296770000000000
        Top = 391.425113860000000000
        Width = 98.267675040000000000
        Height = 36.661417320000000000
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -19
        Font.Name = '2  Nazanin'
        Font.Style = [fsBold]
        Frame.Typ = [ftLeft, ftRight, ftBottom]
        HAlign = haCenter
        ParentFont = False
        VAlign = vaCenter
      end
      object MHeader: TfrxMemoView
        ShiftMode = smDontShift
        Left = 111.606370000000000000
        Width = 544.252320000000000000
        Height = 31.748031496062990000
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -25
        Font.Name = '2  Nazanin'
        Font.Style = [fsBold]
        Frame.Typ = [ftLeft, ftRight, ftTop]
        HAlign = haCenter
        Memo.UTF8 = (
          #1591#180#1591#177#1593#169#1591#1726' '#1593#175#1591#179#1591#1726#1591#177#1591#180' '#1592#1662#1592#8224' '#1591#162#1592#710#1591#177#1591#167#1592#8224' '#1591#167#1591#183#1592#8222#1591#167#1591#185#1591#167#1591#1726' '#1594#338#1593#175#1591#167#1592#8224#1592#8225)
        ParentFont = False
      end
      object MemName0: TfrxMemoView
        ShiftMode = smDontShift
        Left = 466.882190000000000000
        Top = 144.944960000000000000
        Width = 188.976500000000000000
        Height = 49.133858270000000000
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -19
        Font.Name = '2  Nazanin'
        Font.Style = []
        Frame.Typ = [ftLeft, ftRight, ftTop]
        HAlign = haRight
        Memo.UTF8 = (
          ' '#1591#167#1591#183#1592#8222#1591#167#1591#185#1591#167#1591#1726' '#1593#169#1592#8222#1594#338' '#1592#190#1591#177#1592#710#1592#8224#1591#175#1592#8225'  ')
        ParentFont = False
        VAlign = vaCenter
      end
      object MemDesc0: TfrxMemoView
        ShiftMode = smDontShift
        Left = 111.606370000000000000
        Top = 144.944960000000000000
        Width = 355.275820000000000000
        Height = 49.133858270000000000
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -23
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        Frame.Typ = [ftLeft, ftRight, ftTop]
        HAlign = haCenter
        ParentFont = False
      end
      object Memo1: TfrxMemoView
        ShiftMode = smDontShift
        Left = 111.606370000000000000
        Top = 291.795185280000000000
        Width = 170.078850000000000000
        Height = 37.795300000000000000
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -19
        Font.Name = '2  Nazanin'
        Font.Style = []
        Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
        HAlign = haCenter
        Memo.UTF8 = (
          #1593#169#1591#175#1592#8230#1592#8222#1592#1657'  ')
        ParentFont = False
        VAlign = vaCenter
      end
      object Memo2: TfrxMemoView
        ShiftMode = smDontShift
        Left = 111.606370000000000000
        Top = 330.369973780000000000
        Width = 170.078850000000000000
        Height = 34.015728500000000000
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = '2  Nazanin'
        Font.Style = [fsBold]
        Frame.Typ = [ftLeft, ftRight, ftTop]
        HAlign = haCenter
        ParentFont = False
        VAlign = vaCenter
      end
      object Memo3: TfrxMemoView
        ShiftMode = smDontShift
        Left = 281.685220000000000000
        Top = 291.795185280000000000
        Width = 139.842610000000000000
        Height = 37.795300000000000000
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -19
        Font.Name = '2  Nazanin'
        Font.Style = []
        Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
        HAlign = haCenter
        Memo.UTF8 = (
          ' '#1592#8224#1591#167#1592#8230' '#1592#190#1591#175#1591#177'  ')
        ParentFont = False
        VAlign = vaCenter
      end
      object MemDesc61: TfrxMemoView
        ShiftMode = smDontShift
        Left = 209.874150000000000000
        Top = 364.566887640000000000
        Width = 162.519790000000000000
        Height = 26.456710000000000000
        DisplayFormat.DecimalSeparator = '/'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -19
        Font.Name = '2  Nazanin'
        Font.Style = []
        Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
        HAlign = haCenter
        Memo.UTF8 = (
          ' '#1592#190#1592#8222#1591#167#1593#169' '#1591#167#1591#181#1592#8222#1594#338)
        ParentFont = False
      end
      object MemDesc64: TfrxMemoView
        ShiftMode = smDontShift
        Left = 209.873971810000000000
        Top = 391.551134720000000000
        Width = 162.519968190000000000
        Height = 36.661417320000000000
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -19
        Font.Name = '2  Nazanin'
        Font.Style = [fsBold]
        Frame.Typ = [ftLeft, ftRight, ftBottom]
        HAlign = haCenter
        ParentFont = False
        VAlign = vaCenter
      end
      object Memo4: TfrxMemoView
        ShiftMode = smDontShift
        Left = 281.685220000000000000
        Top = 330.369973780000000000
        Width = 139.842610000000000000
        Height = 34.015728500000000000
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = '2  Nazanin'
        Font.Style = [fsBold]
        Frame.Typ = [ftLeft, ftRight, ftTop]
        HAlign = haCenter
        ParentFont = False
        VAlign = vaCenter
      end
      object Memo5: TfrxMemoView
        ShiftMode = smDontShift
        Left = 111.606370000000000000
        Top = 32.795300000000000000
        Width = 544.252320000000000000
        Height = 30.992125980000000000
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -24
        Font.Name = '2  Nazanin'
        Font.Style = []
        Frame.Typ = [ftLeft, ftRight]
        HAlign = haCenter
        Memo.UTF8 = (
          #1591#177#1592#710#1593#169#1591#180' '#1592#190#1591#177#1592#710#1592#8224#1591#175#1592#8225)
        ParentFont = False
      end
      object Memo6: TfrxMemoView
        ShiftMode = smDontShift
        Left = 111.606370000000000000
        Top = 63.913420000000000000
        Width = 544.252320000000000000
        Height = 30.992099130000000000
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -24
        Font.Name = 'MRT_Abasan'
        Font.Style = [fsBold]
        Frame.Typ = [ftLeft, ftRight]
        HAlign = haCenter
        Memo.UTF8 = (
          #1591#180#1592#8225#1591#177#1591#175#1591#167#1591#177#1592#1657' '#1591#167#1591#181#1592#1662#1592#8225#1591#167#1592#8224)
        ParentFont = False
      end
    end
  end
  object frxReport9: TfrxReport
    Version = '5.4.6'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick]
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = #1662#1610#1588' '#1601#1585#1590
    PrintOptions.PrintOnSheet = 0
    ReportOptions.CreateDate = 45655.501704953710000000
    ReportOptions.LastChange = 45655.570959884260000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      'begin'
      ''
      'end.')
    Left = 258
    Top = 174
    Datasets = <>
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
      LeftMargin = 3.000000000000000000
      RightMargin = 3.000000000000000000
      TopMargin = 2.000000000000000000
      BottomMargin = 2.000000000000000000
      object MemName1: TfrxMemoView
        ShiftMode = smDontShift
        Left = 355.275820000000000000
        Top = 83.981102362204720000
        Width = 188.976500000000000000
        Height = 52.913420000000000000
        DisplayFormat.DecimalSeparator = '/'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -20
        Font.Name = 'Arial'
        Font.Style = []
        Frame.Typ = [ftLeft, ftRight, ftTop]
        HAlign = haRight
        Memo.UTF8 = (
          ' '#1593#169#1592#8222#1591#167#1591#179#1592#8225' '#1592#190#1591#177#1592#710#1592#8224#1591#175#1592#8225' '#1591#1726#1591#177#1593#169#1594#338#1591#168#1594#338'  ')
        ParentFont = False
        VAlign = vaCenter
      end
      object MemName2: TfrxMemoView
        ShiftMode = smDontShift
        Left = 355.275820000000000000
        Top = 221.551330000000000000
        Width = 188.976500000000000000
        Height = 64.252010000000000000
        DisplayFormat.DecimalSeparator = '/'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -20
        Font.Name = 'Arial'
        Font.Style = []
        Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
        HAlign = haRight
        Memo.UTF8 = (
          ' '#1591#180#1592#8230#1591#167#1591#177#1592#8225' '#1591#172#1592#8222#1591#175' '#1592#190#1591#177#1592#710#1592#8224#1591#175#1592#8225'  ')
        ParentFont = False
        VAlign = vaCenter
      end
      object MemName4: TfrxMemoView
        ShiftMode = smDontShift
        Left = 355.275820000000000000
        Top = 285.921460000000000000
        Width = 188.976500000000000000
        Height = 56.692950000000000000
        DisplayFormat.DecimalSeparator = '/'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -20
        Font.Name = 'Arial'
        Font.Style = []
        Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
        HAlign = haRight
        Memo.UTF8 = (
          ' '#1592#8224#1591#167#1592#8230' '#1591#183#1591#177#1591#173'  ')
        ParentFont = False
        VAlign = vaCenter
      end
      object MemName5: TfrxMemoView
        ShiftMode = smDontShift
        Left = 309.921460000000000000
        Top = 342.732530000000000000
        Width = 234.330860000000000000
        Height = 37.795300000000000000
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -20
        Font.Name = 'Arial'
        Font.Style = []
        Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
        HAlign = haRight
        Memo.UTF8 = (
          ' '#1592#8224#1591#167#1592#8230' '#1592#710' '#1592#8224#1591#167#1592#8230' '#1591#174#1591#167#1592#8224#1592#710#1591#167#1591#175#1593#175#1594#338'   ')
        ParentFont = False
        VAlign = vaCenter
      end
      object MemName6: TfrxMemoView
        ShiftMode = smDontShift
        Left = 355.275820000000000000
        Top = 416.259837637795300000
        Width = 188.976500000000000000
        Height = 64.252010000000000000
        DisplayFormat.DecimalSeparator = '/'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -20
        Font.Name = 'Arial'
        Font.Style = []
        Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
        HAlign = haRight
        Memo.UTF8 = (
          ' '#1592#8230#1591#180#1591#174#1591#181#1591#167#1591#1726' '#1591#171#1591#168#1591#1726#1594#338' '#1592#8230#1592#8222#1593#169'  ')
        ParentFont = False
        VAlign = vaCenter
      end
      object MemName7: TfrxMemoView
        ShiftMode = smDontShift
        Left = 355.275820000000000000
        Top = 480.661720000000000000
        Width = 188.976500000000000000
        Height = 64.251968500000000000
        DisplayFormat.DecimalSeparator = '/'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -20
        Font.Name = 'Arial'
        Font.Style = []
        Frame.Typ = [ftLeft, ftRight, ftBottom]
        HAlign = haRight
        Memo.UTF8 = (
          ' '#1591#162#1591#175#1591#177#1591#179' '#1592#710#1592#8218#1592#710#1591#185' '#1592#8230#1592#8222#1593#169'  ')
        ParentFont = False
        VAlign = vaCenter
      end
      object MemName8: TfrxMemoView
        ShiftMode = smDontShift
        Left = 355.275820000000000000
        Top = 545.252320000000000000
        Width = 188.976500000000000000
        Height = 49.133848500000000000
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -20
        Font.Name = 'Arial'
        Font.Style = []
        Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
        HAlign = haRight
        Memo.UTF8 = (
          ' '#1593#169#1591#175' '#1592#8224#1592#710#1591#179#1591#167#1591#178#1592#1657'  ')
        ParentFont = False
        VAlign = vaCenter
      end
      object MemName9: TfrxMemoView
        ShiftMode = smDontShift
        Left = 355.275820000000000000
        Top = 594.386210000000000000
        Width = 188.976500000000000000
        Height = 79.370088500000000000
        DisplayFormat.DecimalSeparator = '/'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -20
        Font.Name = 'Arial'
        Font.Style = []
        Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
        HAlign = haRight
        Memo.UTF8 = (
          ' '#1591#1726#1592#710#1591#182#1594#338#1591#173#1591#167#1591#1726'  ')
        ParentFont = False
        VAlign = vaCenter
      end
      object MemDesc11: TfrxMemoView
        ShiftMode = smDontShift
        Top = 84.031478980000000000
        Width = 355.275820000000000000
        Height = 52.913378500000000000
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -23
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        Frame.Typ = [ftLeft, ftRight, ftTop]
        HAlign = haRight
        ParentFont = False
        VAlign = vaCenter
      end
      object MemDesc2: TfrxMemoView
        ShiftMode = smDontShift
        Top = 221.551330000000000000
        Width = 355.275820000000000000
        Height = 64.251968500000000000
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -23
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
        HAlign = haRight
        ParentFont = False
        VAlign = vaCenter
      end
      object MemDesc4: TfrxMemoView
        ShiftMode = smDontShift
        Top = 285.921460000000000000
        Width = 355.275820000000000000
        Height = 56.692908500000000000
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -23
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
        HAlign = haRight
        ParentFont = False
        VAlign = vaCenter
      end
      object MemDesc5: TfrxMemoView
        ShiftMode = smDontShift
        Left = 309.921460000000000000
        Top = 381.307360000000000000
        Width = 234.330860000000000000
        Height = 34.015728500000000000
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -23
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        Frame.Typ = [ftLeft, ftRight, ftTop]
        HAlign = haRight
        ParentFont = False
        VAlign = vaCenter
      end
      object MemDesc7: TfrxMemoView
        ShiftMode = smDontShift
        Top = 480.661720000000000000
        Width = 355.275820000000000000
        Height = 64.251968500000000000
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -23
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        Frame.Typ = [ftLeft, ftRight, ftBottom]
        HAlign = haRight
        ParentFont = False
        VAlign = vaCenter
      end
      object MemDesc8: TfrxMemoView
        ShiftMode = smDontShift
        Top = 545.252320000000000000
        Width = 355.275820000000000000
        Height = 49.133848500000000000
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -23
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
        HAlign = haRight
        ParentFont = False
        VAlign = vaCenter
      end
      object MemDesc9: TfrxMemoView
        ShiftMode = smDontShift
        Top = 594.386210000000000000
        Width = 355.275820000000000000
        Height = 79.370088500000000000
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -23
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
        HAlign = haRight
        ParentFont = False
        VAlign = vaCenter
      end
      object MemDetail: TfrxMemoView
        ShiftMode = smDontShift
        Top = 674.315400000000000000
        Width = 544.252320000000000000
        Height = 26.456710000000000000
        DisplayFormat.DecimalSeparator = '/'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -20
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        Frame.Typ = [ftLeft, ftRight, ftBottom]
        HAlign = haCenter
        Memo.UTF8 = (
          #1593#169#1591#167#1591#177#1591#168#1591#177#1591#167#1592#8224' '#1591#162#1591#177#1591#180#1594#338#1592#710' '#1591#167#1592#8222#1593#169#1591#1726#1591#177#1592#710#1592#8224#1594#338#1593#169#1594#338)
        ParentFont = False
        VAlign = vaCenter
      end
      object MemDetail1: TfrxMemoView
        ShiftMode = smDontShift
        Left = 430.866505430000000000
        Top = 701.212554490000000000
        Width = 113.385814570000000000
        Height = 26.456710000000000000
        DisplayFormat.DecimalSeparator = '/'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -20
        Font.Name = 'Arial'
        Font.Style = []
        Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
        HAlign = haRight
        Memo.UTF8 = (
          ' '#1591#167#1591#179#1591#1726#1591#174#1591#177#1591#167#1591#172)
        ParentFont = False
      end
      object MemDetail21: TfrxMemoView
        ShiftMode = smDontShift
        Left = 321.260220860000000000
        Top = 728.047200160000000000
        Width = 109.606284570000000000
        Height = 56.692908500000000000
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -23
        Font.Name = 'Arial'
        Font.Style = []
        Frame.Typ = [ftLeft, ftRight, ftBottom]
        HAlign = haRight
        ParentFont = False
        VAlign = vaCenter
      end
      object MemDetail2: TfrxMemoView
        ShiftMode = smDontShift
        Left = 321.260220860000000000
        Top = 701.331170000000000000
        Width = 109.606284570000000000
        Height = 26.456710000000000000
        DisplayFormat.DecimalSeparator = '/'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -20
        Font.Name = 'Arial'
        Font.Style = []
        Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
        HAlign = haRight
        Memo.UTF8 = (
          ' '#1591#162#1592#8230#1591#167#1591#175#1592#8225' '#1591#179#1591#167#1591#178#1594#338)
        ParentFont = False
      end
      object MemDetail11: TfrxMemoView
        ShiftMode = smDontShift
        Left = 430.866505430000000000
        Top = 728.047200160000000000
        Width = 113.385814570000000000
        Height = 56.692908500000000000
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -23
        Font.Name = 'Arial'
        Font.Style = []
        Frame.Typ = [ftLeft, ftRight, ftBottom]
        HAlign = haRight
        ParentFont = False
        VAlign = vaCenter
      end
      object MemDetail4: TfrxMemoView
        ShiftMode = smDontShift
        Left = 117.165344570000000000
        Top = 701.212554490000000000
        Width = 105.827181720000000000
        Height = 26.456710000000000000
        DisplayFormat.DecimalSeparator = '/'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -20
        Font.Name = 'Arial'
        Font.Style = []
        Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
        HAlign = haRight
        Memo.UTF8 = (
          ' '#1591#167#1591#179#1593#169#1592#8224' '#1592#1662#1592#8222#1591#1726)
        ParentFont = False
      end
      object MemDetail41: TfrxMemoView
        ShiftMode = smDontShift
        Left = 117.165344570000000000
        Top = 728.047200160000000000
        Width = 105.827181720000000000
        Height = 56.692908500000000000
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -23
        Font.Name = 'Arial'
        Font.Style = []
        Frame.Typ = [ftLeft, ftRight, ftBottom]
        HAlign = haRight
        ParentFont = False
        VAlign = vaCenter
      end
      object MemDetail5: TfrxMemoView
        ShiftMode = smDontShift
        Top = 701.212554490000000000
        Width = 117.165344570000000000
        Height = 26.456710000000000000
        DisplayFormat.DecimalSeparator = '/'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -20
        Font.Name = 'Arial'
        Font.Style = []
        Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
        HAlign = haRight
        Memo.UTF8 = (
          ' '#1591#168#1591#179#1591#1726#1592#8225' '#1591#168#1592#8224#1591#175#1594#338' ')
        ParentFont = False
      end
      object MemDetail51: TfrxMemoView
        ShiftMode = smDontShift
        Top = 728.047200160000000000
        Width = 117.165344570000000000
        Height = 56.692908500000000000
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -23
        Font.Name = 'Arial'
        Font.Style = []
        Frame.Typ = [ftLeft, ftRight, ftBottom]
        HAlign = haRight
        ParentFont = False
        VAlign = vaCenter
      end
      object MemDetail3: TfrxMemoView
        ShiftMode = smDontShift
        Left = 222.992526290000000000
        Top = 701.212554490000000000
        Width = 98.267694570000000000
        Height = 26.456692910000000000
        DisplayFormat.DecimalSeparator = '/'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -20
        Font.Name = 'Arial'
        Font.Style = []
        Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
        HAlign = haRight
        Memo.UTF8 = (
          ' '#1591#167#1591#179#1593#169#1592#8224)
        ParentFont = False
      end
      object MemDetail31: TfrxMemoView
        ShiftMode = smDontShift
        Left = 222.992526290000000000
        Top = 728.008350000000000000
        Width = 98.267694570000000000
        Height = 56.692908500000000000
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -23
        Font.Name = 'Arial'
        Font.Style = []
        Frame.Typ = [ftLeft, ftRight, ftBottom]
        HAlign = haRight
        ParentFont = False
        VAlign = vaCenter
      end
      object MemDesc60: TfrxMemoView
        ShiftMode = smDontShift
        Left = 260.787570000000000000
        Top = 416.307360000000000000
        Width = 94.488250000000000000
        Height = 26.456710000000000000
        DisplayFormat.DecimalSeparator = '/'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -20
        Font.Name = 'Arial'
        Font.Style = []
        Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
        HAlign = haRight
        Memo.UTF8 = (
          ' '#1591#168#1591#174#1591#180)
        ParentFont = False
      end
      object MemDesc62: TfrxMemoView
        ShiftMode = smDontShift
        Top = 416.283418190000000000
        Width = 98.267780000000000000
        Height = 26.456710000000000000
        DisplayFormat.DecimalSeparator = '/'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -20
        Font.Name = 'Arial'
        Font.Style = []
        Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
        HAlign = haRight
        Memo.UTF8 = (
          ' '#1592#190#1592#8222#1591#167#1593#169' '#1592#1662#1591#177#1591#185#1594#338)
        ParentFont = False
      end
      object MemDesc63: TfrxMemoView
        ShiftMode = smDontShift
        Left = 260.787570000000000000
        Top = 443.205010000000000000
        Width = 94.488250000000000000
        Height = 36.661417320000000000
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -23
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
        HAlign = haRight
        ParentFont = False
        VAlign = vaCenter
      end
      object MemDesc65: TfrxMemoView
        ShiftMode = smDontShift
        Left = -0.000073230000000000
        Top = 443.118063860000000000
        Width = 98.267675040000000000
        Height = 36.661417320000000000
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -23
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
        HAlign = haRight
        ParentFont = False
        VAlign = vaCenter
      end
      object MHeader: TfrxMemoView
        ShiftMode = smDontShift
        Width = 544.252320000000000000
        Height = 30.992099130000000000
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -23
        Font.Name = 'Arial'
        Font.Style = [fsBold, fsItalic]
        Frame.Typ = [ftLeft, ftRight, ftTop]
        HAlign = haCenter
        Memo.UTF8 = (
          #1591#180#1591#177#1593#169#1591#1726' '#1593#175#1591#179#1591#1726#1591#177#1591#180' '#1592#1662#1592#8224' '#1591#162#1592#710#1591#177#1591#167#1592#8224' '#1591#167#1591#183#1592#8222#1591#167#1591#185#1591#167#1591#1726' '#1594#338#1593#175#1591#167#1592#8224#1592#8225)
        ParentFont = False
      end
      object MemName0: TfrxMemoView
        ShiftMode = smDontShift
        Left = 355.275820000000000000
        Top = 137.504020000000000000
        Width = 188.976500000000000000
        Height = 83.149660000000000000
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -20
        Font.Name = 'Arial'
        Font.Style = []
        Frame.Typ = [ftLeft, ftRight, ftTop]
        HAlign = haRight
        Memo.UTF8 = (
          ' '#1591#167#1591#183#1592#8222#1591#167#1591#185#1591#167#1591#1726' '#1593#169#1592#8222#1594#338' '#1592#190#1591#177#1592#710#1592#8224#1591#175#1592#8225'  ')
        ParentFont = False
        VAlign = vaCenter
      end
      object MemDesc0: TfrxMemoView
        ShiftMode = smDontShift
        Top = 137.504020000000000000
        Width = 355.275820000000000000
        Height = 83.149618500000000000
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -23
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        Frame.Typ = [ftLeft, ftRight, ftTop]
        HAlign = haRight
        ParentFont = False
      end
      object Memo1: TfrxMemoView
        ShiftMode = smDontShift
        Top = 342.708605280000000000
        Width = 170.078850000000000000
        Height = 37.795300000000000000
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -20
        Font.Name = 'Arial'
        Font.Style = []
        Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
        HAlign = haRight
        Memo.UTF8 = (
          #1593#169#1591#175#1592#8230#1592#8222#1592#1657'  ')
        ParentFont = False
        VAlign = vaCenter
      end
      object Memo2: TfrxMemoView
        ShiftMode = smDontShift
        Top = 381.283393780000000000
        Width = 170.078850000000000000
        Height = 34.015728500000000000
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -23
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        Frame.Typ = [ftLeft, ftRight, ftTop]
        HAlign = haRight
        ParentFont = False
        VAlign = vaCenter
      end
      object Memo3: TfrxMemoView
        ShiftMode = smDontShift
        Left = 170.078850000000000000
        Top = 342.708605280000000000
        Width = 139.842610000000000000
        Height = 37.795300000000000000
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -20
        Font.Name = 'Arial'
        Font.Style = []
        Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
        HAlign = haRight
        Memo.UTF8 = (
          ' '#1592#8224#1591#167#1592#8230' '#1592#190#1591#175#1591#177'  ')
        ParentFont = False
        VAlign = vaCenter
      end
      object MemDesc61: TfrxMemoView
        ShiftMode = smDontShift
        Left = 98.267780000000000000
        Top = 416.259837637795300000
        Width = 162.519790000000000000
        Height = 26.456710000000000000
        DisplayFormat.DecimalSeparator = '/'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -20
        Font.Name = 'Arial'
        Font.Style = []
        Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
        HAlign = haRight
        Memo.UTF8 = (
          ' '#1592#190#1592#8222#1591#167#1593#169' '#1591#167#1591#181#1592#8222#1594#338)
        ParentFont = False
      end
      object MemDesc64: TfrxMemoView
        ShiftMode = smDontShift
        Left = 98.267601810000000000
        Top = 443.244084720000000000
        Width = 162.519968190000000000
        Height = 36.661417320000000000
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -23
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
        HAlign = haRight
        ParentFont = False
        VAlign = vaCenter
      end
      object Memo4: TfrxMemoView
        ShiftMode = smDontShift
        Left = 170.078850000000000000
        Top = 381.283393780000000000
        Width = 139.842610000000000000
        Height = 34.015728500000000000
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -23
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        Frame.Typ = [ftLeft, ftRight, ftTop]
        HAlign = haRight
        ParentFont = False
        VAlign = vaCenter
      end
      object Memo5: TfrxMemoView
        ShiftMode = smDontShift
        Top = 31.795300000000000000
        Width = 544.252320000000000000
        Height = 27.212569130000000000
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -24
        Font.Name = 'Times'
        Font.Style = []
        Frame.Typ = [ftLeft, ftRight]
        HAlign = haCenter
        Memo.UTF8 = (
          #1591#177#1592#710#1593#169#1591#180' '#1592#190#1591#177#1592#710#1592#8224#1591#175#1592#8225)
        ParentFont = False
      end
      object Memo6: TfrxMemoView
        ShiftMode = smDontShift
        Top = 60.472480000000000000
        Width = 544.252320000000000000
        Height = 23.433039130000000000
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -23
        Font.Name = 'Times New Roman'
        Font.Style = [fsBold]
        Frame.Typ = [ftLeft, ftRight]
        HAlign = haCenter
        Memo.UTF8 = (
          #1591#180#1592#8225#1591#177#1591#175#1591#167#1591#177#1592#1657' '#1591#167#1591#181#1592#1662#1592#8225#1591#167#1592#8224)
        ParentFont = False
      end
    end
  end
  object frxReport8: TfrxReport
    Version = '5.4.6'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick]
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = #1662#1610#1588' '#1601#1585#1590
    PrintOptions.PrintOnSheet = 0
    ReportOptions.CreateDate = 45655.501704953710000000
    ReportOptions.LastChange = 45655.570959884260000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      'begin'
      ''
      'end.')
    Left = 178
    Top = 166
    Datasets = <>
    Variables = <>
    Style = <>
    object Data: TfrxDataPage
      Height = 1000.000000000000000000
      Width = 1000.000000000000000000
    end
    object Page1: TfrxReportPage
      PaperWidth = 150.000000000000000000
      PaperHeight = 300.000000000000000000
      PaperSize = 256
      LeftMargin = 3.000000000000000000
      RightMargin = 3.000000000000000000
      TopMargin = 2.000000000000000000
      BottomMargin = 2.000000000000000000
      object MemName1: TfrxMemoView
        Align = baRight
        ShiftMode = smDontShift
        Left = 355.275820000000000000
        Top = 83.981102362204720000
        Width = 188.976500000000000000
        Height = 52.913420000000000000
        DisplayFormat.DecimalSeparator = '/'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -20
        Font.Name = 'Arial'
        Font.Style = []
        Frame.Typ = [ftLeft, ftRight, ftTop]
        HAlign = haRight
        Memo.UTF8 = (
          ' '#1593#169#1592#8222#1591#167#1591#179#1592#8225' '#1592#190#1591#177#1592#710#1592#8224#1591#175#1592#8225' '#1591#1726#1591#177#1593#169#1594#338#1591#168#1594#338'  ')
        ParentFont = False
        VAlign = vaCenter
      end
      object MemName2: TfrxMemoView
        Align = baRight
        ShiftMode = smDontShift
        Left = 355.275820000000000000
        Top = 221.551330000000000000
        Width = 188.976500000000000000
        Height = 64.252010000000000000
        DisplayFormat.DecimalSeparator = '/'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -20
        Font.Name = 'Arial'
        Font.Style = []
        Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
        HAlign = haRight
        Memo.UTF8 = (
          ' '#1591#180#1592#8230#1591#167#1591#177#1592#8225' '#1591#172#1592#8222#1591#175' '#1592#190#1591#177#1592#710#1592#8224#1591#175#1592#8225'  ')
        ParentFont = False
        VAlign = vaCenter
      end
      object MemName4: TfrxMemoView
        Align = baRight
        ShiftMode = smDontShift
        Left = 355.275820000000000000
        Top = 285.921460000000000000
        Width = 188.976500000000000000
        Height = 56.692950000000000000
        DisplayFormat.DecimalSeparator = '/'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -20
        Font.Name = 'Arial'
        Font.Style = []
        Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
        HAlign = haRight
        Memo.UTF8 = (
          ' '#1592#8224#1591#167#1592#8230' '#1591#183#1591#177#1591#173'  ')
        ParentFont = False
        VAlign = vaCenter
      end
      object MemName5: TfrxMemoView
        Align = baRight
        ShiftMode = smDontShift
        Left = 309.921460000000000000
        Top = 342.732530000000000000
        Width = 234.330860000000000000
        Height = 37.795300000000000000
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -20
        Font.Name = 'Arial'
        Font.Style = []
        Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
        HAlign = haRight
        Memo.UTF8 = (
          ' '#1592#8224#1591#167#1592#8230' '#1592#710' '#1592#8224#1591#167#1592#8230' '#1591#174#1591#167#1592#8224#1592#710#1591#167#1591#175#1593#175#1594#338'   ')
        ParentFont = False
        VAlign = vaCenter
      end
      object MemName6: TfrxMemoView
        Align = baRight
        ShiftMode = smDontShift
        Left = 355.275820000000000000
        Top = 416.259837637795300000
        Width = 188.976500000000000000
        Height = 64.252010000000000000
        DisplayFormat.DecimalSeparator = '/'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -20
        Font.Name = 'Arial'
        Font.Style = []
        Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
        HAlign = haRight
        Memo.UTF8 = (
          ' '#1592#8230#1591#180#1591#174#1591#181#1591#167#1591#1726' '#1591#171#1591#168#1591#1726#1594#338' '#1592#8230#1592#8222#1593#169'  ')
        ParentFont = False
        VAlign = vaCenter
      end
      object MemName7: TfrxMemoView
        Align = baRight
        ShiftMode = smDontShift
        Left = 355.275820000000000000
        Top = 480.661720000000000000
        Width = 188.976500000000000000
        Height = 64.251968500000000000
        DisplayFormat.DecimalSeparator = '/'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -20
        Font.Name = 'Arial'
        Font.Style = []
        Frame.Typ = [ftLeft, ftRight, ftBottom]
        HAlign = haRight
        Memo.UTF8 = (
          ' '#1591#162#1591#175#1591#177#1591#179' '#1592#710#1592#8218#1592#710#1591#185' '#1592#8230#1592#8222#1593#169'  ')
        ParentFont = False
        VAlign = vaCenter
      end
      object MemName8: TfrxMemoView
        Align = baRight
        ShiftMode = smDontShift
        Left = 355.275820000000000000
        Top = 545.252320000000000000
        Width = 188.976500000000000000
        Height = 49.133848500000000000
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -20
        Font.Name = 'Arial'
        Font.Style = []
        Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
        HAlign = haRight
        Memo.UTF8 = (
          ' '#1593#169#1591#175' '#1592#8224#1592#710#1591#179#1591#167#1591#178#1592#1657'  ')
        ParentFont = False
        VAlign = vaCenter
      end
      object MemName9: TfrxMemoView
        Align = baRight
        ShiftMode = smDontShift
        Left = 355.275820000000000000
        Top = 594.386210000000000000
        Width = 188.976500000000000000
        Height = 79.370088500000000000
        DisplayFormat.DecimalSeparator = '/'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -20
        Font.Name = 'Arial'
        Font.Style = []
        Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
        HAlign = haRight
        Memo.UTF8 = (
          ' '#1591#1726#1592#710#1591#182#1594#338#1591#173#1591#167#1591#1726'  ')
        ParentFont = False
        VAlign = vaCenter
      end
      object MemDesc11: TfrxMemoView
        Align = baWidth
        ShiftMode = smDontShift
        Top = 84.031478980000000000
        Width = 355.275820000000000000
        Height = 52.913378500000000000
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -23
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        Frame.Typ = [ftLeft, ftRight, ftTop]
        HAlign = haRight
        ParentFont = False
        VAlign = vaCenter
      end
      object MemDesc2: TfrxMemoView
        Align = baWidth
        ShiftMode = smDontShift
        Top = 221.551330000000000000
        Width = 355.275820000000000000
        Height = 64.251968500000000000
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -23
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
        HAlign = haRight
        ParentFont = False
        VAlign = vaCenter
      end
      object MemDesc4: TfrxMemoView
        Align = baWidth
        ShiftMode = smDontShift
        Top = 285.921460000000000000
        Width = 355.275820000000000000
        Height = 56.692908500000000000
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -23
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
        HAlign = haRight
        ParentFont = False
        VAlign = vaCenter
      end
      object MemDesc5: TfrxMemoView
        Align = baRight
        ShiftMode = smDontShift
        Left = 309.921460000000000000
        Top = 381.307360000000000000
        Width = 234.330860000000000000
        Height = 34.015728500000000000
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -23
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        Frame.Typ = [ftLeft, ftRight, ftTop]
        HAlign = haRight
        ParentFont = False
        VAlign = vaCenter
      end
      object MemDesc7: TfrxMemoView
        Align = baWidth
        ShiftMode = smDontShift
        Top = 480.661720000000000000
        Width = 355.275820000000000000
        Height = 64.251968500000000000
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -23
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        Frame.Typ = [ftLeft, ftRight, ftBottom]
        HAlign = haRight
        ParentFont = False
        VAlign = vaCenter
      end
      object MemDesc8: TfrxMemoView
        Align = baWidth
        ShiftMode = smDontShift
        Top = 545.252320000000000000
        Width = 355.275820000000000000
        Height = 49.133848500000000000
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -23
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
        HAlign = haRight
        ParentFont = False
        VAlign = vaCenter
      end
      object MemDesc9: TfrxMemoView
        Align = baWidth
        ShiftMode = smDontShift
        Top = 594.386210000000000000
        Width = 355.275820000000000000
        Height = 79.370088500000000000
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -23
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
        HAlign = haRight
        ParentFont = False
        VAlign = vaCenter
      end
      object MemDetail: TfrxMemoView
        Align = baWidth
        ShiftMode = smDontShift
        Top = 674.315400000000000000
        Width = 544.252320000000000000
        Height = 26.456710000000000000
        DisplayFormat.DecimalSeparator = '/'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -20
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        Frame.Typ = [ftLeft, ftRight, ftBottom]
        HAlign = haCenter
        Memo.UTF8 = (
          #1593#169#1591#167#1591#177#1591#168#1591#177#1591#167#1592#8224' '#1591#162#1591#177#1591#180#1594#338#1592#710' '#1591#167#1592#8222#1593#169#1591#1726#1591#177#1592#710#1592#8224#1594#338#1593#169#1594#338)
        ParentFont = False
        VAlign = vaCenter
      end
      object MemDetail1: TfrxMemoView
        Align = baRight
        ShiftMode = smDontShift
        Left = 430.866505430000000000
        Top = 701.212554490000000000
        Width = 113.385814570000000000
        Height = 26.456710000000000000
        DisplayFormat.DecimalSeparator = '/'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -20
        Font.Name = 'Arial'
        Font.Style = []
        Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
        HAlign = haRight
        Memo.UTF8 = (
          ' '#1591#167#1591#179#1591#1726#1591#174#1591#177#1591#167#1591#172)
        ParentFont = False
      end
      object MemDetail21: TfrxMemoView
        Align = baRight
        ShiftMode = smDontShift
        Left = 321.260220860000000000
        Top = 728.047200160000000000
        Width = 109.606284570000000000
        Height = 56.692908500000000000
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -23
        Font.Name = 'Arial'
        Font.Style = []
        Frame.Typ = [ftLeft, ftRight, ftBottom]
        HAlign = haRight
        ParentFont = False
        VAlign = vaCenter
      end
      object MemDetail2: TfrxMemoView
        Align = baRight
        ShiftMode = smDontShift
        Left = 321.260220860000000000
        Top = 701.331170000000000000
        Width = 109.606284570000000000
        Height = 26.456710000000000000
        DisplayFormat.DecimalSeparator = '/'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -20
        Font.Name = 'Arial'
        Font.Style = []
        Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
        HAlign = haRight
        Memo.UTF8 = (
          ' '#1591#162#1592#8230#1591#167#1591#175#1592#8225' '#1591#179#1591#167#1591#178#1594#338)
        ParentFont = False
      end
      object MemDetail11: TfrxMemoView
        Align = baRight
        ShiftMode = smDontShift
        Left = 430.866505430000000000
        Top = 728.047200160000000000
        Width = 113.385814570000000000
        Height = 56.692908500000000000
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -23
        Font.Name = 'Arial'
        Font.Style = []
        Frame.Typ = [ftLeft, ftRight, ftBottom]
        HAlign = haRight
        ParentFont = False
        VAlign = vaCenter
      end
      object MemDetail4: TfrxMemoView
        Align = baWidth
        ShiftMode = smDontShift
        Left = 117.165344570000000000
        Top = 701.212554490000000000
        Width = 105.827181720000000000
        Height = 26.456710000000000000
        DisplayFormat.DecimalSeparator = '/'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -20
        Font.Name = 'Arial'
        Font.Style = []
        Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
        HAlign = haRight
        Memo.UTF8 = (
          ' '#1591#167#1591#179#1593#169#1592#8224' '#1592#1662#1592#8222#1591#1726)
        ParentFont = False
      end
      object MemDetail41: TfrxMemoView
        Align = baWidth
        ShiftMode = smDontShift
        Left = 117.165344570000000000
        Top = 728.047200160000000000
        Width = 105.827181720000000000
        Height = 56.692908500000000000
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -23
        Font.Name = 'Arial'
        Font.Style = []
        Frame.Typ = [ftLeft, ftRight, ftBottom]
        HAlign = haRight
        ParentFont = False
        VAlign = vaCenter
      end
      object MemDetail5: TfrxMemoView
        Align = baLeft
        ShiftMode = smDontShift
        Top = 701.212554490000000000
        Width = 117.165344570000000000
        Height = 26.456710000000000000
        DisplayFormat.DecimalSeparator = '/'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -20
        Font.Name = 'Arial'
        Font.Style = []
        Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
        HAlign = haRight
        Memo.UTF8 = (
          ' '#1591#168#1591#179#1591#1726#1592#8225' '#1591#168#1592#8224#1591#175#1594#338' ')
        ParentFont = False
      end
      object MemDetail51: TfrxMemoView
        Align = baLeft
        ShiftMode = smDontShift
        Top = 728.047200160000000000
        Width = 117.165344570000000000
        Height = 56.692908500000000000
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -23
        Font.Name = 'Arial'
        Font.Style = []
        Frame.Typ = [ftLeft, ftRight, ftBottom]
        HAlign = haRight
        ParentFont = False
        VAlign = vaCenter
      end
      object MemDetail3: TfrxMemoView
        Align = baRight
        ShiftMode = smDontShift
        Left = 222.992526290000000000
        Top = 701.212554490000000000
        Width = 98.267694570000000000
        Height = 26.456692910000000000
        DisplayFormat.DecimalSeparator = '/'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -20
        Font.Name = 'Arial'
        Font.Style = []
        Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
        HAlign = haRight
        Memo.UTF8 = (
          ' '#1591#167#1591#179#1593#169#1592#8224)
        ParentFont = False
      end
      object MemDetail31: TfrxMemoView
        Align = baRight
        ShiftMode = smDontShift
        Left = 222.992526290000000000
        Top = 728.008350000000000000
        Width = 98.267694570000000000
        Height = 56.692908500000000000
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -23
        Font.Name = 'Arial'
        Font.Style = []
        Frame.Typ = [ftLeft, ftRight, ftBottom]
        HAlign = haRight
        ParentFont = False
        VAlign = vaCenter
      end
      object MemDesc60: TfrxMemoView
        Align = baRight
        ShiftMode = smDontShift
        Left = 260.787570000000000000
        Top = 416.307360000000000000
        Width = 94.488250000000000000
        Height = 26.456710000000000000
        DisplayFormat.DecimalSeparator = '/'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -20
        Font.Name = 'Arial'
        Font.Style = []
        Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
        HAlign = haRight
        Memo.UTF8 = (
          ' '#1591#168#1591#174#1591#180)
        ParentFont = False
      end
      object MemDesc62: TfrxMemoView
        Align = baLeft
        ShiftMode = smDontShift
        Top = 416.283418190000000000
        Width = 98.267780000000000000
        Height = 26.456710000000000000
        DisplayFormat.DecimalSeparator = '/'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -20
        Font.Name = 'Arial'
        Font.Style = []
        Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
        HAlign = haRight
        Memo.UTF8 = (
          ' '#1592#190#1592#8222#1591#167#1593#169' '#1592#1662#1591#177#1591#185#1594#338)
        ParentFont = False
      end
      object MemDesc63: TfrxMemoView
        Align = baRight
        ShiftMode = smDontShift
        Left = 260.787570000000000000
        Top = 443.205010000000000000
        Width = 94.488250000000000000
        Height = 36.661417320000000000
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -23
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
        HAlign = haRight
        ParentFont = False
        VAlign = vaCenter
      end
      object MemDesc65: TfrxMemoView
        ShiftMode = smDontShift
        Left = -0.000073230000000000
        Top = 443.118063860000000000
        Width = 98.267675040000000000
        Height = 36.661417320000000000
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -23
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
        HAlign = haRight
        ParentFont = False
        VAlign = vaCenter
      end
      object MHeader: TfrxMemoView
        Align = baWidth
        ShiftMode = smDontShift
        Width = 544.252320000000000000
        Height = 30.992099130000000000
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -23
        Font.Name = 'Arial'
        Font.Style = [fsBold, fsItalic]
        Frame.Typ = [ftLeft, ftRight, ftTop]
        HAlign = haCenter
        Memo.UTF8 = (
          #1591#180#1591#177#1593#169#1591#1726' '#1593#175#1591#179#1591#1726#1591#177#1591#180' '#1592#1662#1592#8224' '#1591#162#1592#710#1591#177#1591#167#1592#8224' '#1591#167#1591#183#1592#8222#1591#167#1591#185#1591#167#1591#1726' '#1594#338#1593#175#1591#167#1592#8224#1592#8225)
        ParentFont = False
      end
      object MemName0: TfrxMemoView
        Align = baRight
        ShiftMode = smDontShift
        Left = 355.275820000000000000
        Top = 137.504020000000000000
        Width = 188.976500000000000000
        Height = 83.149660000000000000
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -20
        Font.Name = 'Arial'
        Font.Style = []
        Frame.Typ = [ftLeft, ftRight, ftTop]
        HAlign = haRight
        Memo.UTF8 = (
          ' '#1591#167#1591#183#1592#8222#1591#167#1591#185#1591#167#1591#1726' '#1593#169#1592#8222#1594#338' '#1592#190#1591#177#1592#710#1592#8224#1591#175#1592#8225'  ')
        ParentFont = False
        VAlign = vaCenter
      end
      object MemDesc0: TfrxMemoView
        Align = baWidth
        ShiftMode = smDontShift
        Top = 137.504020000000000000
        Width = 355.275820000000000000
        Height = 83.149618500000000000
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -23
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        Frame.Typ = [ftLeft, ftRight, ftTop]
        HAlign = haRight
        ParentFont = False
      end
      object Memo1: TfrxMemoView
        Align = baLeft
        ShiftMode = smDontShift
        Top = 342.708605280000000000
        Width = 170.078850000000000000
        Height = 37.795300000000000000
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -20
        Font.Name = 'Arial'
        Font.Style = []
        Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
        HAlign = haRight
        Memo.UTF8 = (
          #1593#169#1591#175#1592#8230#1592#8222#1592#1657'  ')
        ParentFont = False
        VAlign = vaCenter
      end
      object Memo2: TfrxMemoView
        Align = baLeft
        ShiftMode = smDontShift
        Top = 381.283393780000000000
        Width = 170.078850000000000000
        Height = 34.015728500000000000
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -23
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        Frame.Typ = [ftLeft, ftRight, ftTop]
        HAlign = haRight
        ParentFont = False
        VAlign = vaCenter
      end
      object Memo3: TfrxMemoView
        Align = baWidth
        ShiftMode = smDontShift
        Left = 170.078850000000000000
        Top = 342.708605280000000000
        Width = 139.842610000000000000
        Height = 37.795300000000000000
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -20
        Font.Name = 'Arial'
        Font.Style = []
        Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
        HAlign = haRight
        Memo.UTF8 = (
          ' '#1592#8224#1591#167#1592#8230' '#1592#190#1591#175#1591#177'  ')
        ParentFont = False
        VAlign = vaCenter
      end
      object MemDesc61: TfrxMemoView
        Align = baWidth
        ShiftMode = smDontShift
        Left = 98.267780000000000000
        Top = 416.259837637795300000
        Width = 162.519790000000000000
        Height = 26.456710000000000000
        DisplayFormat.DecimalSeparator = '/'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -20
        Font.Name = 'Arial'
        Font.Style = []
        Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
        HAlign = haRight
        Memo.UTF8 = (
          ' '#1592#190#1592#8222#1591#167#1593#169' '#1591#167#1591#181#1592#8222#1594#338)
        ParentFont = False
      end
      object MemDesc64: TfrxMemoView
        Align = baWidth
        ShiftMode = smDontShift
        Left = 98.267601810000000000
        Top = 443.244084720000000000
        Width = 162.519968190000000000
        Height = 36.661417320000000000
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -23
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
        HAlign = haRight
        ParentFont = False
        VAlign = vaCenter
      end
      object Memo4: TfrxMemoView
        Align = baWidth
        ShiftMode = smDontShift
        Left = 170.078850000000000000
        Top = 381.283393780000000000
        Width = 139.842610000000000000
        Height = 34.015728500000000000
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -23
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        Frame.Typ = [ftLeft, ftRight, ftTop]
        HAlign = haRight
        ParentFont = False
        VAlign = vaCenter
      end
      object Memo5: TfrxMemoView
        Align = baWidth
        ShiftMode = smDontShift
        Top = 31.795300000000000000
        Width = 544.252320000000000000
        Height = 27.212569130000000000
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -24
        Font.Name = 'Times'
        Font.Style = []
        Frame.Typ = [ftLeft, ftRight]
        HAlign = haCenter
        Memo.UTF8 = (
          #1591#177#1592#710#1593#169#1591#180' '#1592#190#1591#177#1592#710#1592#8224#1591#175#1592#8225)
        ParentFont = False
      end
      object Memo6: TfrxMemoView
        Align = baWidth
        ShiftMode = smDontShift
        Top = 60.472480000000000000
        Width = 544.252320000000000000
        Height = 23.433039130000000000
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -23
        Font.Name = 'Times New Roman'
        Font.Style = [fsBold]
        Frame.Typ = [ftLeft, ftRight]
        HAlign = haCenter
        Memo.UTF8 = (
          #1591#180#1592#8225#1591#177#1591#175#1591#167#1591#177#1592#1657' '#1591#167#1591#181#1592#1662#1592#8225#1591#167#1592#8224)
        ParentFont = False
      end
    end
  end
  object frxReport2: TfrxReport
    Version = '5.4.6'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick]
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = 'Default'
    PrintOptions.PrintOnSheet = 0
    ReportOptions.CreateDate = 45426.604135231500000000
    ReportOptions.LastChange = 45654.551757291670000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      'begin'
      ''
      'end.')
    Left = 105
    Top = 100
    Datasets = <
      item
      end
      item
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
      object Header1: TfrxHeader
        FillType = ftBrush
        Height = 86.929190000000000000
        Top = 18.897650000000000000
        Width = 718.110700000000000000
        object Memo1: TfrxMemoView
          Align = baCenter
          Left = 111.496135000000000000
          Top = 15.897650000000000000
          Width = 495.118430000000000000
          Height = 64.252010000000000000
          DisplayFormat.DecimalSeparator = '/'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -20
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haCenter
          Memo.UTF8 = (
            #1591#180#1591#177#1593#169#1591#1726' '#1593#175#1591#179#1591#1726#1591#177#1591#180' '#1592#1662#1592#8224' '#1591#162#1592#710#1591#177#1591#167#1592#8224' '#1591#167#1591#183#1592#8222#1591#167#1591#185#1591#167#1591#1726' '#1594#338#1593#175#1591#167#1592#8224#1592#8225
            #1591#177#1592#710#1593#169#1591#180' '#1592#190#1591#177#1592#710#1592#8224#1591#175#1592#8225' '
            #1591#180#1592#8225#1591#177#1591#175#1591#167#1591#177#1594#338' '#1591#167#1591#181#1592#1662#1592#8225#1591#167#1592#8224)
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo2: TfrxMemoView
          Align = baRight
          Left = 529.134200000000000000
          Top = 86.929190000000000000
          Width = 188.976500000000000000
          Height = 64.252010000000000000
          DisplayFormat.DecimalSeparator = '/'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -20
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haRight
          Memo.UTF8 = (
            ' '#1591#167#1591#183#1592#8222#1591#167#1591#185#1591#167#1591#1726' '#1593#169#1592#8222#1594#338' '#1592#190#1591#177#1592#710#1592#8224#1591#175#1592#8225'  ')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo12: TfrxMemoView
          Align = baWidth
          Top = 86.929190000000000000
          Width = 529.134200000000000000
          Height = 64.251968500000000000
          DisplayFormat.DecimalSeparator = '/'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -15
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haRight
          Memo.UTF8 = (
            ' '#1591#167#1591#183#1592#8222#1591#167#1591#185#1591#167#1591#1726' '#1593#169#1592#8222#1594#338' '#1592#190#1591#177#1592#710#1592#8224#1591#175#1592#8225'  ')
          ParentFont = False
          VAlign = vaCenter
        end
      end
      object Memo3: TfrxMemoView
        Align = baRight
        Left = 529.134200000000000000
        Top = 169.858380000000000000
        Width = 188.976500000000000000
        Height = 64.252010000000000000
        DisplayFormat.DecimalSeparator = '/'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -20
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
        HAlign = haRight
        Memo.UTF8 = (
          ' '#1593#169#1592#8222#1591#167#1591#179#1592#8225' '#1592#190#1591#177#1592#710#1592#8224#1591#175#1592#8225' '#1591#1726#1591#177#1593#169#1594#338#1591#168#1594#338'  ')
        ParentFont = False
        VAlign = vaCenter
      end
      object Memo4: TfrxMemoView
        Align = baRight
        Left = 529.134200000000000000
        Top = 234.448980000000000000
        Width = 188.976500000000000000
        Height = 64.252010000000000000
        DisplayFormat.DecimalSeparator = '/'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -20
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
        HAlign = haRight
        Memo.UTF8 = (
          ' '#1591#180#1592#8230#1591#167#1591#177#1592#8225' '#1591#172#1592#8222#1591#175' '#1592#190#1591#177#1592#710#1592#8224#1591#175#1592#8225'  ')
        ParentFont = False
        VAlign = vaCenter
      end
      object Memo5: TfrxMemoView
        Align = baRight
        Left = 529.134200000000000000
        Top = 298.700990000000000000
        Width = 188.976500000000000000
        Height = 64.252010000000000000
        DisplayFormat.DecimalSeparator = '/'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -20
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
        HAlign = haRight
        Memo.UTF8 = (
          ' '#1592#8224#1592#710#1591#185' '#1592#8218#1591#175#1592#8230#1591#1726'  ')
        ParentFont = False
        VAlign = vaCenter
      end
      object Memo6: TfrxMemoView
        Align = baRight
        Left = 529.134200000000000000
        Top = 363.291590000000000000
        Width = 188.976500000000000000
        Height = 64.252010000000000000
        DisplayFormat.DecimalSeparator = '/'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -20
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
        HAlign = haRight
        Memo.UTF8 = (
          ' '#1592#8224#1591#167#1592#8230' '#1591#183#1591#177#1591#173'  ')
        ParentFont = False
        VAlign = vaCenter
      end
      object Memo7: TfrxMemoView
        Align = baRight
        Left = 529.134200000000000000
        Top = 427.661720000000000000
        Width = 188.976500000000000000
        Height = 64.252010000000000000
        DisplayFormat.DecimalSeparator = '/'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -20
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
        HAlign = haRight
        Memo.UTF8 = (
          ' '#1592#8224#1591#167#1592#8230' '#1592#710' '#1592#8224#1591#167#1592#8230' '#1591#174#1591#167#1592#8224#1592#710#1591#167#1591#175#1593#175#1594#338' '#1592#8230#1591#167#1592#8222#1593#169#1594#338#1592#8224'  ')
        ParentFont = False
        VAlign = vaCenter
      end
      object Memo8: TfrxMemoView
        Align = baRight
        Left = 529.134200000000000000
        Top = 492.134200000000000000
        Width = 188.976500000000000000
        Height = 64.252010000000000000
        DisplayFormat.DecimalSeparator = '/'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -20
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
        HAlign = haRight
        Memo.UTF8 = (
          ' '#1592#8230#1591#180#1591#174#1591#181#1591#167#1591#1726' '#1591#171#1591#168#1591#1726#1594#338' '#1592#8230#1592#8222#1593#169'  ')
        ParentFont = False
        VAlign = vaCenter
      end
      object Memo9: TfrxMemoView
        Align = baRight
        Left = 529.134200000000000000
        Top = 556.472790000000000000
        Width = 188.976500000000000000
        Height = 64.251968500000000000
        DisplayFormat.DecimalSeparator = '/'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -20
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
        HAlign = haRight
        Memo.UTF8 = (
          ' '#1591#162#1591#175#1591#177#1591#179' '#1592#710#1592#8218#1592#710#1591#185' '#1592#8230#1592#8222#1593#169'  ')
        ParentFont = False
        VAlign = vaCenter
      end
      object Memo10: TfrxMemoView
        Align = baRight
        Left = 529.134200000000000000
        Top = 621.063390000000000000
        Width = 188.976500000000000000
        Height = 64.251968500000000000
        DisplayFormat.DecimalSeparator = '/'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -20
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
        HAlign = haRight
        Memo.UTF8 = (
          ' '#1592#8230#1591#173#1592#8222' '#1592#8224#1593#175#1592#8225#1591#175#1591#167#1591#177#1594#338' '#1592#190#1591#177#1592#710#1592#8224#1591#175#1592#8225' '#1591#168#1591#167#1594#338#1593#175#1591#167#1592#8224#1594#338'  ')
        ParentFont = False
        VAlign = vaCenter
      end
      object Memo11: TfrxMemoView
        Align = baRight
        Left = 529.134200000000000000
        Top = 685.315400000000000000
        Width = 188.976500000000000000
        Height = 64.251968500000000000
        DisplayFormat.DecimalSeparator = '/'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -20
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
        HAlign = haRight
        Memo.UTF8 = (
          ' '#1591#1726#1592#710#1591#182#1594#338#1591#173#1591#167#1591#1726'  ')
        ParentFont = False
        VAlign = vaCenter
      end
      object Memo13: TfrxMemoView
        Align = baWidth
        Top = 169.858380000000000000
        Width = 442.205010000000000000
        Height = 31.748031500000000000
        DisplayFormat.DecimalSeparator = '/'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
        HAlign = haRight
        Memo.UTF8 = (
          ' '#1593#169#1592#8222#1591#167#1591#179#1592#8225' '#1592#190#1591#177#1592#710#1592#8224#1591#175#1592#8225' '#1591#1726#1591#177#1593#169#1594#338#1591#168#1594#338'  ')
        ParentFont = False
        VAlign = vaCenter
      end
      object Memo14: TfrxMemoView
        Align = baWidth
        Top = 234.448980000000000000
        Width = 529.134200000000000000
        Height = 64.251968500000000000
        DisplayFormat.DecimalSeparator = '/'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
        HAlign = haRight
        Memo.UTF8 = (
          ' '#1591#180#1592#8230#1591#167#1591#177#1592#8225' '#1591#172#1592#8222#1591#175' '#1592#190#1591#177#1592#710#1592#8224#1591#175#1592#8225'  ')
        ParentFont = False
        VAlign = vaCenter
      end
      object Memo15: TfrxMemoView
        Align = baWidth
        Top = 298.700990000000000000
        Width = 529.134200000000000000
        Height = 64.251968500000000000
        DisplayFormat.DecimalSeparator = '/'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
        HAlign = haRight
        Memo.UTF8 = (
          ' '#1592#8224#1592#710#1591#185' '#1592#8218#1591#175#1592#8230#1591#1726'  ')
        ParentFont = False
        VAlign = vaCenter
      end
      object Memo16: TfrxMemoView
        Align = baWidth
        Top = 363.291590000000000000
        Width = 529.134200000000000000
        Height = 64.251968500000000000
        DisplayFormat.DecimalSeparator = '/'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
        HAlign = haRight
        Memo.UTF8 = (
          ' '#1592#8224#1591#167#1592#8230' '#1591#183#1591#177#1591#173'  ')
        ParentFont = False
        VAlign = vaCenter
      end
      object Memo17: TfrxMemoView
        Align = baWidth
        Top = 427.661720000000000000
        Width = 529.134200000000000000
        Height = 64.251968500000000000
        DisplayFormat.DecimalSeparator = '/'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
        HAlign = haRight
        Memo.UTF8 = (
          ' '#1592#8224#1591#167#1592#8230' '#1592#710' '#1592#8224#1591#167#1592#8230' '#1591#174#1591#167#1592#8224#1592#710#1591#167#1591#175#1593#175#1594#338' '#1592#8230#1591#167#1592#8222#1593#169#1594#338#1592#8224'  ')
        ParentFont = False
        VAlign = vaCenter
      end
      object Memo19: TfrxMemoView
        Align = baWidth
        Top = 556.472790000000000000
        Width = 529.134200000000000000
        Height = 64.251968500000000000
        DisplayFormat.DecimalSeparator = '/'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
        HAlign = haRight
        Memo.UTF8 = (
          ' '#1591#162#1591#175#1591#177#1591#179' '#1592#710#1592#8218#1592#710#1591#185' '#1592#8230#1592#8222#1593#169'  ')
        ParentFont = False
        VAlign = vaCenter
      end
      object Memo20: TfrxMemoView
        Align = baWidth
        Top = 621.063390000000000000
        Width = 529.134200000000000000
        Height = 64.251968500000000000
        DisplayFormat.DecimalSeparator = '/'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
        HAlign = haRight
        Memo.UTF8 = (
          ' '#1592#8230#1591#173#1592#8222' '#1592#8224#1593#175#1592#8225#1591#175#1591#167#1591#177#1594#338' '#1592#190#1591#177#1592#710#1592#8224#1591#175#1592#8225' '#1591#168#1591#167#1594#338#1593#175#1591#167#1592#8224#1594#338'  ')
        ParentFont = False
        VAlign = vaCenter
      end
      object Memo21: TfrxMemoView
        Align = baWidth
        Top = 685.315400000000000000
        Width = 529.134200000000000000
        Height = 64.251968500000000000
        DisplayFormat.DecimalSeparator = '/'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
        HAlign = haRight
        Memo.UTF8 = (
          ' '#1591#1726#1592#710#1591#182#1594#338#1591#173#1591#167#1591#1726'  ')
        ParentFont = False
        VAlign = vaCenter
      end
      object Memo22: TfrxMemoView
        Align = baRight
        Left = 442.205010000000000000
        Top = 170.078850000000000000
        Width = 86.929190000000000000
        Height = 31.748031500000000000
        DisplayFormat.DecimalSeparator = '/'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -20
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
        HAlign = haRight
        Memo.UTF8 = (
          ' '#1591#175#1591#167#1593#169#1592#710#1591#177'  ')
        ParentFont = False
        VAlign = vaCenter
      end
      object Memo23: TfrxMemoView
        Align = baRight
        Left = 442.205010000000000000
        Top = 202.315090000000000000
        Width = 86.929190000000000000
        Height = 31.748031500000000000
        DisplayFormat.DecimalSeparator = '/'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
        HAlign = haRight
        Memo.UTF8 = (
          ' '#1591#168#1592#8225' '#1591#1726#1592#1662#1593#169#1592#1657#1593#169'  ')
        ParentFont = False
        VAlign = vaCenter
      end
      object Memo24: TfrxMemoView
        Align = baRight
        Left = 332.598640000000000000
        Top = 202.315090000000000000
        Width = 109.606370000000000000
        Height = 31.748031500000000000
        DisplayFormat.DecimalSeparator = '/'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
        HAlign = haRight
        Memo.UTF8 = (
          ' '#1591#168#1592#8225' '#1591#1726#1592#1662#1593#169#1592#1657#1593#169'  ')
        ParentFont = False
        VAlign = vaCenter
      end
      object Memo25: TfrxMemoView
        Align = baRight
        Left = 222.992340790000000000
        Top = 202.204724410000000000
        Width = 109.606299210000000000
        Height = 31.748031500000000000
        DisplayFormat.DecimalSeparator = '/'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
        HAlign = haRight
        Memo.UTF8 = (
          ' '#1591#168#1592#8225' '#1591#1726#1592#1662#1593#169#1592#1657#1593#169'  ')
        ParentFont = False
        VAlign = vaCenter
      end
      object Memo26: TfrxMemoView
        Align = baWidth
        Left = 113.385826770000000000
        Top = 202.204724410000000000
        Width = 109.606514020000000000
        Height = 31.748031500000000000
        DisplayFormat.DecimalSeparator = '/'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
        HAlign = haRight
        Memo.UTF8 = (
          ' '#1591#168#1592#8225' '#1591#1726#1592#1662#1593#169#1592#1657#1593#169'  ')
        ParentFont = False
        VAlign = vaCenter
      end
      object Memo27: TfrxMemoView
        Align = baLeft
        Top = 202.204724410000000000
        Width = 113.385826770000000000
        Height = 31.748031500000000000
        DisplayFormat.DecimalSeparator = '/'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
        HAlign = haRight
        Memo.UTF8 = (
          ' '#1591#168#1592#8225' '#1591#1726#1592#1662#1593#169#1592#1657#1593#169'  ')
        ParentFont = False
        VAlign = vaCenter
      end
      object Memo28: TfrxMemoView
        Align = baWidth
        Top = 750.126470000000000000
        Width = 491.338900000000000000
        Height = 18.897650000000000000
        DisplayFormat.DecimalSeparator = '/'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
        HAlign = haCenter
        Memo.UTF8 = (
          #1593#169#1591#167#1591#177#1591#168#1591#177#1591#167#1592#8224' '#1591#162#1591#177#1591#180#1594#338#1592#710' '#1591#167#1592#8222#1593#169#1591#1726#1591#177#1592#710#1592#8224#1594#338#1593#169#1594#338)
        ParentFont = False
        VAlign = vaCenter
      end
      object Memo29: TfrxMemoView
        Align = baRight
        Left = 604.724800000000000000
        Top = 769.024120000000000000
        Width = 113.385900000000000000
        Height = 26.456710000000000000
        DisplayFormat.DecimalSeparator = '/'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
        HAlign = haRight
        Memo.UTF8 = (
          ' '#1591#167#1591#179#1591#1726#1591#174#1591#177#1591#167#1591#172)
        ParentFont = False
      end
      object Memo30: TfrxMemoView
        Align = baRight
        Left = 604.724800000000000000
        Top = 795.480830000000000000
        Width = 113.385900000000000000
        Height = 64.251968500000000000
        DisplayFormat.DecimalSeparator = '/'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = 'Arial'
        Font.Style = []
        Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
        HAlign = haRight
        Memo.UTF8 = (
          ' '#1591#167#1591#179#1591#1726#1591#174#1591#177#1591#167#1591#172'  ')
        ParentFont = False
        VAlign = vaCenter
      end
      object Memo31: TfrxMemoView
        Align = baRight
        Left = 491.338900000000000000
        Top = 768.803650000000000000
        Width = 113.385900000000000000
        Height = 26.456710000000000000
        DisplayFormat.DecimalSeparator = '/'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
        HAlign = haRight
        Memo.UTF8 = (
          ' '#1591#162#1592#8230#1591#167#1591#175#1592#8225' '#1591#179#1591#167#1591#178#1594#338)
        ParentFont = False
      end
      object Memo32: TfrxMemoView
        Align = baRight
        Left = 491.338900000000000000
        Top = 795.260360000000000000
        Width = 113.385900000000000000
        Height = 64.251968500000000000
        DisplayFormat.DecimalSeparator = '/'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = 'Arial'
        Font.Style = []
        Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
        HAlign = haRight
        Memo.UTF8 = (
          ' '#1591#162#1592#8230#1591#167#1591#175#1592#8225' '#1591#179#1591#167#1591#178#1594#338'  ')
        ParentFont = False
        VAlign = vaCenter
      end
      object Memo33: TfrxMemoView
        Align = baWidth
        Left = 113.385900000000000000
        Top = 769.024120000000000000
        Width = 264.567100000000000000
        Height = 26.456710000000000000
        DisplayFormat.DecimalSeparator = '/'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
        HAlign = haRight
        Memo.UTF8 = (
          ' '#1591#167#1591#179#1593#169#1592#8224' '#1592#1662#1592#8222#1591#1726)
        ParentFont = False
      end
      object Memo34: TfrxMemoView
        Align = baWidth
        Left = 113.385900000000000000
        Top = 795.480830000000000000
        Width = 264.567100000000000000
        Height = 64.251968500000000000
        DisplayFormat.DecimalSeparator = '/'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = 'Arial'
        Font.Style = []
        Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
        HAlign = haRight
        Memo.UTF8 = (
          ' '#1591#167#1591#179#1593#169#1592#8224' '#1592#1662#1592#8222#1591#1726'  ')
        ParentFont = False
        VAlign = vaCenter
      end
      object Memo35: TfrxMemoView
        Align = baLeft
        Top = 769.133858270000000000
        Width = 113.385900000000000000
        Height = 26.456710000000000000
        DisplayFormat.DecimalSeparator = '/'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
        HAlign = haRight
        Memo.UTF8 = (
          ' '#1591#168#1591#179#1591#1726#1592#8225' '#1591#168#1592#8224#1591#175#1594#338' ')
        ParentFont = False
      end
      object Memo36: TfrxMemoView
        Align = baLeft
        Top = 795.590551180000000000
        Width = 113.385900000000000000
        Height = 64.251968500000000000
        DisplayFormat.DecimalSeparator = '/'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = 'Arial'
        Font.Style = []
        Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
        HAlign = haRight
        Memo.UTF8 = (
          ' '#1591#168#1591#179#1591#1726#1592#8225' '#1591#168#1592#8224#1591#175#1594#338'  ')
        ParentFont = False
        VAlign = vaCenter
      end
      object Memo37: TfrxMemoView
        Align = baRight
        Left = 377.953000000000000000
        Top = 769.024120000000000000
        Width = 113.385900000000000000
        Height = 26.456710000000000000
        DisplayFormat.DecimalSeparator = '/'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
        HAlign = haRight
        Memo.UTF8 = (
          ' '#1591#167#1591#179#1593#169#1592#8224)
        ParentFont = False
      end
      object Memo38: TfrxMemoView
        Align = baRight
        Left = 377.953000000000000000
        Top = 795.480830000000000000
        Width = 113.385900000000000000
        Height = 64.251968500000000000
        DisplayFormat.DecimalSeparator = '/'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = 'Arial'
        Font.Style = []
        Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
        HAlign = haRight
        Memo.UTF8 = (
          ' '#1591#167#1591#179#1593#169#1592#8224'  ')
        ParentFont = False
        VAlign = vaCenter
      end
      object Memo39: TfrxMemoView
        Align = baRight
        Left = 362.834880000000000000
        Top = 492.118430000000000000
        Width = 166.299320000000000000
        Height = 26.456710000000000000
        DisplayFormat.DecimalSeparator = '/'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
        HAlign = haRight
        Memo.UTF8 = (
          ' '#1591#168#1591#174#1591#180)
        ParentFont = False
      end
      object Memo40: TfrxMemoView
        Align = baWidth
        Left = 162.519790000000000000
        Top = 492.094488190000000000
        Width = 200.315090000000000000
        Height = 26.456710000000000000
        DisplayFormat.DecimalSeparator = '/'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
        HAlign = haRight
        Memo.UTF8 = (
          ' '#1592#190#1592#8222#1591#167#1593#169' '#1591#167#1591#181#1592#8222#1594#338)
        ParentFont = False
      end
      object Memo41: TfrxMemoView
        Align = baLeft
        Top = 492.094488190000000000
        Width = 162.519790000000000000
        Height = 26.456710000000000000
        DisplayFormat.DecimalSeparator = '/'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
        HAlign = haRight
        Memo.UTF8 = (
          ' '#1592#190#1592#8222#1591#167#1593#169' '#1592#1662#1591#177#1591#185#1594#338)
        ParentFont = False
      end
      object Memo18: TfrxMemoView
        Align = baRight
        Left = 362.834880000000000000
        Top = 519.016080000000000000
        Width = 166.299320000000000000
        Height = 36.661417320000000000
        DisplayFormat.DecimalSeparator = '/'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
        HAlign = haRight
        Memo.UTF8 = (
          ' '#1591#168#1591#174#1591#180'  ')
        ParentFont = False
        VAlign = vaCenter
      end
      object Memo42: TfrxMemoView
        Align = baLeft
        Top = 518.929133860000000000
        Width = 162.519685040000000000
        Height = 36.661417320000000000
        DisplayFormat.DecimalSeparator = '/'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
        HAlign = haRight
        Memo.UTF8 = (
          ' '#1592#190#1592#8222#1591#167#1593#169' '#1592#1662#1591#177#1591#185#1592#1657'  ')
        ParentFont = False
        VAlign = vaCenter
      end
      object Memo43: TfrxMemoView
        Left = 162.519685040000000000
        Top = 518.929133860000000000
        Width = 200.314960630000000000
        Height = 36.661417320000000000
        DisplayFormat.DecimalSeparator = '/'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
        HAlign = haRight
        Memo.UTF8 = (
          ' '#1592#190#1592#8222#1591#167#1593#169' '#1591#167#1591#181#1592#8222#1592#1657'  ')
        ParentFont = False
        VAlign = vaCenter
      end
    end
  end
  object frxReport6: TfrxReport
    Version = '5.4.6'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick]
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = #1662#1610#1588' '#1601#1585#1590
    PrintOptions.PrintOnSheet = 0
    ReportOptions.CreateDate = 45655.501704953710000000
    ReportOptions.LastChange = 45655.570959884260000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      'begin'
      ''
      'end.')
    Left = 18
    Top = 158
    Datasets = <>
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
      object MemName1: TfrxMemoView
        Align = baRight
        Left = 529.134200000000000000
        Top = 94.606370000000000000
        Width = 188.976500000000000000
        Height = 64.252010000000000000
        DisplayFormat.DecimalSeparator = '/'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -20
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        Frame.Typ = [ftLeft, ftRight, ftTop]
        HAlign = haRight
        Memo.UTF8 = (
          ' '#1593#169#1592#8222#1591#167#1591#179#1592#8225' '#1592#190#1591#177#1592#710#1592#8224#1591#175#1592#8225' '#1591#1726#1591#177#1593#169#1594#338#1591#168#1594#338'  ')
        ParentFont = False
        VAlign = vaCenter
      end
      object MemName2: TfrxMemoView
        Align = baRight
        Left = 529.134200000000000000
        Top = 288.921460000000000000
        Width = 188.976500000000000000
        Height = 64.252010000000000000
        DisplayFormat.DecimalSeparator = '/'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -20
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
        HAlign = haRight
        Memo.UTF8 = (
          ' '#1591#180#1592#8230#1591#167#1591#177#1592#8225' '#1591#172#1592#8222#1591#175' '#1592#190#1591#177#1592#710#1592#8224#1591#175#1592#8225'  ')
        ParentFont = False
        VAlign = vaCenter
      end
      object MemName4: TfrxMemoView
        Align = baRight
        Left = 529.134200000000000000
        Top = 353.291590000000000000
        Width = 188.976500000000000000
        Height = 64.252010000000000000
        DisplayFormat.DecimalSeparator = '/'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -20
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
        HAlign = haRight
        Memo.UTF8 = (
          ' '#1592#8224#1591#167#1592#8230' '#1591#183#1591#177#1591#173'  ')
        ParentFont = False
        VAlign = vaCenter
      end
      object MemName5: TfrxMemoView
        Align = baRight
        Left = 529.134200000000000000
        Top = 417.661720000000000000
        Width = 188.976500000000000000
        Height = 64.252010000000000000
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -20
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
        HAlign = haRight
        Memo.UTF8 = (
          ' '#1592#8224#1591#167#1592#8230' '#1592#710' '#1592#8224#1591#167#1592#8230' '#1591#174#1591#167#1592#8224#1592#710#1591#167#1591#175#1593#175#1594#338'   ')
        ParentFont = False
        VAlign = vaCenter
      end
      object MemName6: TfrxMemoView
        Align = baRight
        Left = 529.134200000000000000
        Top = 482.134200000000000000
        Width = 188.976500000000000000
        Height = 64.252010000000000000
        DisplayFormat.DecimalSeparator = '/'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -20
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
        HAlign = haRight
        Memo.UTF8 = (
          ' '#1592#8230#1591#180#1591#174#1591#181#1591#167#1591#1726' '#1591#171#1591#168#1591#1726#1594#338' '#1592#8230#1592#8222#1593#169'  ')
        ParentFont = False
        VAlign = vaCenter
      end
      object MemName7: TfrxMemoView
        Align = baRight
        Left = 529.134200000000000000
        Top = 546.472790000000000000
        Width = 188.976500000000000000
        Height = 64.251968500000000000
        DisplayFormat.DecimalSeparator = '/'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -20
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
        HAlign = haRight
        Memo.UTF8 = (
          ' '#1591#162#1591#175#1591#177#1591#179' '#1592#710#1592#8218#1592#710#1591#185' '#1592#8230#1592#8222#1593#169'  ')
        ParentFont = False
        VAlign = vaCenter
      end
      object MemName8: TfrxMemoView
        Align = baRight
        Left = 529.134200000000000000
        Top = 611.063390000000000000
        Width = 188.976500000000000000
        Height = 64.251968500000000000
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -20
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
        HAlign = haRight
        Memo.UTF8 = (
          ' '#1593#169#1591#175' '#1592#8224#1592#710#1591#179#1591#167#1591#178#1592#1657'  ')
        ParentFont = False
        VAlign = vaCenter
      end
      object MemName9: TfrxMemoView
        Align = baRight
        Left = 529.134200000000000000
        Top = 675.315400000000000000
        Width = 188.976500000000000000
        Height = 64.251968500000000000
        DisplayFormat.DecimalSeparator = '/'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -20
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
        HAlign = haRight
        Memo.UTF8 = (
          ' '#1591#1726#1592#710#1591#182#1594#338#1591#173#1591#167#1591#1726'  ')
        ParentFont = False
        VAlign = vaCenter
      end
      object MemDesc11: TfrxMemoView
        Align = baWidth
        Top = 95.047248980000000000
        Width = 529.134200000000000000
        Height = 64.251968500000000000
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        Frame.Typ = [ftLeft, ftRight, ftTop]
        HAlign = haRight
        Memo.UTF8 = (
          '')
        ParentFont = False
        VAlign = vaCenter
      end
      object MemDesc2: TfrxMemoView
        Align = baWidth
        Top = 288.921460000000000000
        Width = 529.134200000000000000
        Height = 64.251968500000000000
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
        HAlign = haRight
        ParentFont = False
        VAlign = vaCenter
      end
      object MemDesc4: TfrxMemoView
        Align = baWidth
        Top = 353.291590000000000000
        Width = 529.134200000000000000
        Height = 64.251968500000000000
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
        HAlign = haRight
        ParentFont = False
        VAlign = vaCenter
      end
      object MemDesc5: TfrxMemoView
        Align = baWidth
        Top = 417.661720000000000000
        Width = 529.134200000000000000
        Height = 64.251968500000000000
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
        HAlign = haRight
        ParentFont = False
        VAlign = vaCenter
      end
      object MemDesc7: TfrxMemoView
        Align = baWidth
        Top = 546.472790000000000000
        Width = 529.134200000000000000
        Height = 64.251968500000000000
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
        HAlign = haRight
        ParentFont = False
        VAlign = vaCenter
      end
      object MemDesc8: TfrxMemoView
        Align = baWidth
        Top = 611.063390000000000000
        Width = 529.134200000000000000
        Height = 64.251968500000000000
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
        HAlign = haRight
        ParentFont = False
        VAlign = vaCenter
      end
      object MemDesc9: TfrxMemoView
        Align = baWidth
        Top = 675.315400000000000000
        Width = 529.134200000000000000
        Height = 64.251968500000000000
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
        HAlign = haRight
        ParentFont = False
        VAlign = vaCenter
      end
      object MemDetail: TfrxMemoView
        Align = baWidth
        Top = 740.126470000000000000
        Width = 718.110700000000000000
        Height = 26.456710000000000000
        DisplayFormat.DecimalSeparator = '/'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        Frame.Typ = [ftLeft, ftRight, ftBottom]
        HAlign = haCenter
        Memo.UTF8 = (
          #1593#169#1591#167#1591#177#1591#168#1591#177#1591#167#1592#8224' '#1591#162#1591#177#1591#180#1594#338#1592#710' '#1591#167#1592#8222#1593#169#1591#1726#1591#177#1592#710#1592#8224#1594#338#1593#169#1594#338)
        ParentFont = False
        VAlign = vaCenter
      end
      object MemDetail1: TfrxMemoView
        Align = baRight
        Left = 453.543770860000000000
        Top = 767.244094490000000000
        Width = 132.283464570000000000
        Height = 26.456710000000000000
        DisplayFormat.DecimalSeparator = '/'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
        HAlign = haRight
        Memo.UTF8 = (
          ' '#1591#167#1591#179#1591#1726#1591#174#1591#177#1591#167#1591#172)
        ParentFont = False
      end
      object MemDetail21: TfrxMemoView
        Align = baRight
        Left = 453.543770860000000000
        Top = 794.078740160000000000
        Width = 132.283464570000000000
        Height = 64.251968500000000000
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = 'Arial'
        Font.Style = []
        Frame.Typ = [ftLeft, ftRight, ftBottom]
        HAlign = haRight
        ParentFont = False
        VAlign = vaCenter
      end
      object MemDetail2: TfrxMemoView
        Align = baRight
        Left = 585.827235430000000000
        Top = 767.362710000000000000
        Width = 132.283464570000000000
        Height = 26.456710000000000000
        DisplayFormat.DecimalSeparator = '/'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
        HAlign = haRight
        Memo.UTF8 = (
          ' '#1591#162#1592#8230#1591#167#1591#175#1592#8225' '#1591#179#1591#167#1591#178#1594#338)
        ParentFont = False
      end
      object MemDetail11: TfrxMemoView
        Align = baRight
        Left = 585.827235430000000000
        Top = 794.078740160000000000
        Width = 132.283464570000000000
        Height = 64.251968500000000000
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = 'Arial'
        Font.Style = []
        Frame.Typ = [ftLeft, ftRight, ftBottom]
        HAlign = haRight
        ParentFont = False
        VAlign = vaCenter
      end
      object MemDetail4: TfrxMemoView
        Align = baWidth
        Left = 132.283464566929100000
        Top = 767.244094490000000000
        Width = 188.976841723070900000
        Height = 26.456710000000000000
        DisplayFormat.DecimalSeparator = '/'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
        HAlign = haRight
        Memo.UTF8 = (
          ' '#1591#167#1591#179#1593#169#1592#8224' '#1592#1662#1592#8222#1591#1726)
        ParentFont = False
      end
      object MemDetail41: TfrxMemoView
        Align = baWidth
        Left = 132.283464570000000000
        Top = 794.078740160000000000
        Width = 188.976841720000000000
        Height = 64.251968500000000000
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = 'Arial'
        Font.Style = []
        Frame.Typ = [ftLeft, ftRight, ftBottom]
        HAlign = haRight
        ParentFont = False
        VAlign = vaCenter
      end
      object MemDetail5: TfrxMemoView
        Align = baRight
        Left = 321.260306290000000000
        Top = 767.244094490000000000
        Width = 132.283464570000000000
        Height = 26.456710000000000000
        DisplayFormat.DecimalSeparator = '/'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
        HAlign = haRight
        Memo.UTF8 = (
          ' '#1591#168#1591#179#1591#1726#1592#8225' '#1591#168#1592#8224#1591#175#1594#338' ')
        ParentFont = False
      end
      object MemDetail51: TfrxMemoView
        Align = baRight
        Left = 321.260306290000000000
        Top = 794.078740160000000000
        Width = 132.283464570000000000
        Height = 64.251968500000000000
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = 'Arial'
        Font.Style = []
        Frame.Typ = [ftLeft, ftRight, ftBottom]
        HAlign = haRight
        ParentFont = False
        VAlign = vaCenter
      end
      object MemDetail3: TfrxMemoView
        Align = baLeft
        Top = 767.244094490000000000
        Width = 132.283464566929100000
        Height = 26.456710000000000000
        DisplayFormat.DecimalSeparator = '/'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
        HAlign = haRight
        Memo.UTF8 = (
          ' '#1591#167#1591#179#1593#169#1592#8224)
        ParentFont = False
      end
      object MemDetail31: TfrxMemoView
        Align = baLeft
        Top = 794.039890000000000000
        Width = 132.283464570000000000
        Height = 64.251968500000000000
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = 'Arial'
        Font.Style = []
        Frame.Typ = [ftLeft, ftRight, ftBottom]
        HAlign = haRight
        ParentFont = False
        VAlign = vaCenter
      end
      object MemDesc60: TfrxMemoView
        Align = baRight
        Left = 362.834880000000000000
        Top = 482.118430000000000000
        Width = 166.299320000000000000
        Height = 26.456710000000000000
        DisplayFormat.DecimalSeparator = '/'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
        HAlign = haRight
        Memo.UTF8 = (
          ' '#1591#168#1591#174#1591#180)
        ParentFont = False
      end
      object MemDesc61: TfrxMemoView
        Align = baWidth
        Left = 162.519790000000000000
        Top = 482.094488190000000000
        Width = 200.315090000000000000
        Height = 26.456710000000000000
        DisplayFormat.DecimalSeparator = '/'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
        HAlign = haRight
        Memo.UTF8 = (
          ' '#1592#190#1592#8222#1591#167#1593#169' '#1591#167#1591#181#1592#8222#1594#338)
        ParentFont = False
      end
      object MemDesc62: TfrxMemoView
        Align = baLeft
        Top = 482.094488190000000000
        Width = 162.519790000000000000
        Height = 26.456710000000000000
        DisplayFormat.DecimalSeparator = '/'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
        HAlign = haRight
        Memo.UTF8 = (
          ' '#1592#190#1592#8222#1591#167#1593#169' '#1592#1662#1591#177#1591#185#1594#338)
        ParentFont = False
      end
      object MemDesc63: TfrxMemoView
        Align = baRight
        Left = 362.834880000000000000
        Top = 509.016080000000000000
        Width = 166.299320000000000000
        Height = 36.661417320000000000
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
        HAlign = haRight
        ParentFont = False
        VAlign = vaCenter
      end
      object MemDesc65: TfrxMemoView
        Align = baLeft
        Top = 508.929133860000000000
        Width = 162.519685040000000000
        Height = 36.661417320000000000
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
        HAlign = haRight
        ParentFont = False
        VAlign = vaCenter
      end
      object MemDesc64: TfrxMemoView
        Left = 162.519685040000000000
        Top = 508.929133860000000000
        Width = 200.314960630000000000
        Height = 36.661417320000000000
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
        HAlign = haRight
        ParentFont = False
        VAlign = vaCenter
      end
      object MHeader: TfrxMemoView
        Align = baWidth
        Width = 718.110700000000000000
        Height = 94.488250000000000000
        DisplayFormat.DecimalSeparator = '/'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -24
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        Frame.Typ = [ftLeft, ftRight, ftTop]
        HAlign = haCenter
        Memo.UTF8 = (
          #1591#180#1591#177#1593#169#1591#1726' '#1593#175#1591#179#1591#1726#1591#177#1591#180' '#1592#1662#1592#8224' '#1591#162#1592#710#1591#177#1591#167#1592#8224' '#1591#167#1591#183#1592#8222#1591#167#1591#185#1591#167#1591#1726' '#1594#338#1593#175#1591#167#1592#8224#1592#8225
          #1591#177#1592#710#1593#169#1591#180' '#1592#190#1591#177#1592#710#1592#8224#1591#175#1592#8225' '
          #1591#180#1592#8225#1591#177#1591#175#1591#167#1591#177#1594#338' '#1591#167#1591#181#1592#1662#1592#8225#1591#167#1592#8224)
        ParentFont = False
        VAlign = vaCenter
      end
      object MemName0: TfrxMemoView
        Align = baRight
        Left = 529.134200000000000000
        Top = 159.519790000000000000
        Width = 188.976500000000000000
        Height = 128.504020000000000000
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -20
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        Frame.Typ = [ftLeft, ftRight, ftTop]
        HAlign = haRight
        Memo.UTF8 = (
          ' '#1591#167#1591#183#1592#8222#1591#167#1591#185#1591#167#1591#1726' '#1593#169#1592#8222#1594#338' '#1592#190#1591#177#1592#710#1592#8224#1591#175#1592#8225'  ')
        ParentFont = False
        VAlign = vaCenter
      end
      object MemDesc0: TfrxMemoView
        Align = baWidth
        Top = 159.519790000000000000
        Width = 529.134200000000000000
        Height = 128.503978500000000000
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        Frame.Typ = [ftLeft, ftRight, ftTop]
        HAlign = haRight
        ParentFont = False
      end
    end
  end
  object frxReport1: TfrxReport
    Version = '5.4.6'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick]
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = #1662#1610#1588' '#1601#1585#1590
    PrintOptions.PrintOnSheet = 0
    ReportOptions.CreateDate = 45655.501704953710000000
    ReportOptions.LastChange = 45655.501704953710000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      'begin'
      ''
      'end.')
    Left = 26
    Top = 102
    Datasets = <>
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
      object MemName1: TfrxMemoView
        Align = baRight
        Left = 529.134200000000000000
        Top = 159.858380000000000000
        Width = 188.976500000000000000
        Height = 64.252010000000000000
        DisplayFormat.DecimalSeparator = '/'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -20
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
        HAlign = haRight
        Memo.UTF8 = (
          ' '#1593#169#1592#8222#1591#167#1591#179#1592#8225' '#1592#190#1591#177#1592#710#1592#8224#1591#175#1592#8225' '#1591#1726#1591#177#1593#169#1594#338#1591#168#1594#338'  ')
        ParentFont = False
        VAlign = vaCenter
      end
      object MemName2: TfrxMemoView
        Align = baRight
        Left = 529.134200000000000000
        Top = 224.448980000000000000
        Width = 188.976500000000000000
        Height = 64.252010000000000000
        DisplayFormat.DecimalSeparator = '/'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -20
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
        HAlign = haRight
        Memo.UTF8 = (
          ' '#1591#180#1592#8230#1591#167#1591#177#1592#8225' '#1591#172#1592#8222#1591#175' '#1592#190#1591#177#1592#710#1592#8224#1591#175#1592#8225'  ')
        ParentFont = False
        VAlign = vaCenter
      end
      object MemName3: TfrxMemoView
        Align = baRight
        Left = 529.134200000000000000
        Top = 288.700990000000000000
        Width = 188.976500000000000000
        Height = 64.252010000000000000
        DisplayFormat.DecimalSeparator = '/'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -20
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
        HAlign = haRight
        Memo.UTF8 = (
          ' '#1592#8224#1592#710#1591#185' '#1592#8218#1591#175#1592#8230#1591#1726'  ')
        ParentFont = False
        VAlign = vaCenter
      end
      object MemName4: TfrxMemoView
        Align = baRight
        Left = 529.134200000000000000
        Top = 353.291590000000000000
        Width = 188.976500000000000000
        Height = 64.252010000000000000
        DisplayFormat.DecimalSeparator = '/'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -20
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
        HAlign = haRight
        Memo.UTF8 = (
          ' '#1592#8224#1591#167#1592#8230' '#1591#183#1591#177#1591#173'  ')
        ParentFont = False
        VAlign = vaCenter
      end
      object MemName5: TfrxMemoView
        Align = baRight
        Left = 529.134200000000000000
        Top = 417.661720000000000000
        Width = 188.976500000000000000
        Height = 64.252010000000000000
        DisplayFormat.DecimalSeparator = '/'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -20
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
        HAlign = haRight
        Memo.UTF8 = (
          ' '#1592#8224#1591#167#1592#8230' '#1592#710' '#1592#8224#1591#167#1592#8230' '#1591#174#1591#167#1592#8224#1592#710#1591#167#1591#175#1593#175#1594#338' '#1592#8230#1591#167#1592#8222#1593#169#1594#338#1592#8224'  ')
        ParentFont = False
        VAlign = vaCenter
      end
      object MemName6: TfrxMemoView
        Align = baRight
        Left = 529.134200000000000000
        Top = 482.134200000000000000
        Width = 188.976500000000000000
        Height = 64.252010000000000000
        DisplayFormat.DecimalSeparator = '/'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -20
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
        HAlign = haRight
        Memo.UTF8 = (
          ' '#1592#8230#1591#180#1591#174#1591#181#1591#167#1591#1726' '#1591#171#1591#168#1591#1726#1594#338' '#1592#8230#1592#8222#1593#169'  ')
        ParentFont = False
        VAlign = vaCenter
      end
      object MemName7: TfrxMemoView
        Align = baRight
        Left = 529.134200000000000000
        Top = 546.472790000000000000
        Width = 188.976500000000000000
        Height = 64.251968500000000000
        DisplayFormat.DecimalSeparator = '/'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -20
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
        HAlign = haRight
        Memo.UTF8 = (
          ' '#1591#162#1591#175#1591#177#1591#179' '#1592#710#1592#8218#1592#710#1591#185' '#1592#8230#1592#8222#1593#169'  ')
        ParentFont = False
        VAlign = vaCenter
      end
      object MemName8: TfrxMemoView
        Align = baRight
        Left = 529.134200000000000000
        Top = 611.063390000000000000
        Width = 188.976500000000000000
        Height = 64.251968500000000000
        DisplayFormat.DecimalSeparator = '/'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -20
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
        HAlign = haRight
        Memo.UTF8 = (
          ' '#1592#8230#1591#173#1592#8222' '#1592#8224#1593#175#1592#8225#1591#175#1591#167#1591#177#1594#338' '#1592#190#1591#177#1592#710#1592#8224#1591#175#1592#8225' '#1591#168#1591#167#1594#338#1593#175#1591#167#1592#8224#1594#338'  ')
        ParentFont = False
        VAlign = vaCenter
      end
      object MemName9: TfrxMemoView
        Align = baRight
        Left = 529.134200000000000000
        Top = 675.315400000000000000
        Width = 188.976500000000000000
        Height = 64.251968500000000000
        DisplayFormat.DecimalSeparator = '/'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -20
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
        HAlign = haRight
        Memo.UTF8 = (
          ' '#1591#1726#1592#710#1591#182#1594#338#1591#173#1591#167#1591#1726'  ')
        ParentFont = False
        VAlign = vaCenter
      end
      object MemDesc11: TfrxMemoView
        Align = baWidth
        Top = 159.858380000000000000
        Width = 442.205010000000000000
        Height = 31.748031500000000000
        DisplayFormat.DecimalSeparator = '/'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
        HAlign = haRight
        Memo.UTF8 = (
          ' '#1593#169#1592#8222#1591#167#1591#179#1592#8225' '#1592#190#1591#177#1592#710#1592#8224#1591#175#1592#8225' '#1591#1726#1591#177#1593#169#1594#338#1591#168#1594#338'  ')
        ParentFont = False
        VAlign = vaCenter
      end
      object MemDesc2: TfrxMemoView
        Align = baWidth
        Top = 224.448980000000000000
        Width = 529.134200000000000000
        Height = 64.251968500000000000
        DisplayFormat.DecimalSeparator = '/'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
        HAlign = haRight
        Memo.UTF8 = (
          ' '#1591#180#1592#8230#1591#167#1591#177#1592#8225' '#1591#172#1592#8222#1591#175' '#1592#190#1591#177#1592#710#1592#8224#1591#175#1592#8225'  ')
        ParentFont = False
        VAlign = vaCenter
      end
      object MemDesc3: TfrxMemoView
        Align = baWidth
        Top = 288.700990000000000000
        Width = 529.134200000000000000
        Height = 64.251968500000000000
        DisplayFormat.DecimalSeparator = '/'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
        HAlign = haRight
        Memo.UTF8 = (
          ' '#1592#8224#1592#710#1591#185' '#1592#8218#1591#175#1592#8230#1591#1726'  ')
        ParentFont = False
        VAlign = vaCenter
      end
      object MemDesc4: TfrxMemoView
        Align = baWidth
        Top = 353.291590000000000000
        Width = 529.134200000000000000
        Height = 64.251968500000000000
        DisplayFormat.DecimalSeparator = '/'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
        HAlign = haRight
        Memo.UTF8 = (
          ' '#1592#8224#1591#167#1592#8230' '#1591#183#1591#177#1591#173'  ')
        ParentFont = False
        VAlign = vaCenter
      end
      object MemDesc5: TfrxMemoView
        Align = baWidth
        Top = 417.661720000000000000
        Width = 529.134200000000000000
        Height = 64.251968500000000000
        DisplayFormat.DecimalSeparator = '/'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
        HAlign = haRight
        Memo.UTF8 = (
          ' '#1592#8224#1591#167#1592#8230' '#1592#710' '#1592#8224#1591#167#1592#8230' '#1591#174#1591#167#1592#8224#1592#710#1591#167#1591#175#1593#175#1594#338' '#1592#8230#1591#167#1592#8222#1593#169#1594#338#1592#8224'  ')
        ParentFont = False
        VAlign = vaCenter
      end
      object MemDesc7: TfrxMemoView
        Align = baWidth
        Top = 546.472790000000000000
        Width = 529.134200000000000000
        Height = 64.251968500000000000
        DisplayFormat.DecimalSeparator = '/'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
        HAlign = haRight
        Memo.UTF8 = (
          ' '#1591#162#1591#175#1591#177#1591#179' '#1592#710#1592#8218#1592#710#1591#185' '#1592#8230#1592#8222#1593#169'  ')
        ParentFont = False
        VAlign = vaCenter
      end
      object MemDesc8: TfrxMemoView
        Align = baWidth
        Top = 611.063390000000000000
        Width = 529.134200000000000000
        Height = 64.251968500000000000
        DisplayFormat.DecimalSeparator = '/'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
        HAlign = haRight
        Memo.UTF8 = (
          ' '#1592#8230#1591#173#1592#8222' '#1592#8224#1593#175#1592#8225#1591#175#1591#167#1591#177#1594#338' '#1592#190#1591#177#1592#710#1592#8224#1591#175#1592#8225' '#1591#168#1591#167#1594#338#1593#175#1591#167#1592#8224#1594#338'  ')
        ParentFont = False
        VAlign = vaCenter
      end
      object MemDesc9: TfrxMemoView
        Align = baWidth
        Top = 675.315400000000000000
        Width = 529.134200000000000000
        Height = 64.251968500000000000
        DisplayFormat.DecimalSeparator = '/'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
        HAlign = haRight
        Memo.UTF8 = (
          ' '#1591#1726#1592#710#1591#182#1594#338#1591#173#1591#167#1591#1726'  ')
        ParentFont = False
        VAlign = vaCenter
      end
      object MemDesc1: TfrxMemoView
        Align = baRight
        Left = 442.205010000000000000
        Top = 160.078850000000000000
        Width = 86.929190000000000000
        Height = 31.748031500000000000
        DisplayFormat.DecimalSeparator = '/'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -20
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
        HAlign = haRight
        Memo.UTF8 = (
          ' '#1591#175#1591#167#1593#169#1592#710#1591#177'  ')
        ParentFont = False
        VAlign = vaCenter
      end
      object Memo23: TfrxMemoView
        Align = baRight
        Left = 442.205010000000000000
        Top = 192.315090000000000000
        Width = 86.929190000000000000
        Height = 31.748031500000000000
        DisplayFormat.DecimalSeparator = '/'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
        HAlign = haRight
        Memo.UTF8 = (
          ' '#1591#168#1592#8225' '#1591#1726#1592#1662#1593#169#1592#1657#1593#169'  ')
        ParentFont = False
        VAlign = vaCenter
      end
      object MemDesc13: TfrxMemoView
        Align = baWidth
        Left = 151.181129210000000000
        Top = 192.315090000000000000
        Width = 143.622284020000000000
        Height = 31.748031500000000000
        DisplayFormat.DecimalSeparator = '/'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
        HAlign = haRight
        Memo.UTF8 = (
          ' '#1591#168#1592#8225' '#1591#1726#1592#1662#1593#169#1592#1657#1593#169'  ')
        ParentFont = False
        VAlign = vaCenter
      end
      object MemDesc14: TfrxMemoView
        Align = baLeft
        Top = 192.204724410000000000
        Width = 151.181129210000000000
        Height = 31.748031500000000000
        DisplayFormat.DecimalSeparator = '/'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
        HAlign = haRight
        Memo.UTF8 = (
          ' '#1591#168#1592#8225' '#1591#1726#1592#1662#1593#169#1592#1657#1593#169'  ')
        ParentFont = False
        VAlign = vaCenter
      end
      object Memo26: TfrxMemoView
        Align = baWidth
        Left = 718.110700000000000000
        Top = 192.204724410000000000
        Height = 31.748031500000000000
        DisplayFormat.DecimalSeparator = '/'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
        HAlign = haRight
        Memo.UTF8 = (
          ' '#1591#168#1592#8225' '#1591#1726#1592#1662#1593#169#1592#1657#1593#169'  ')
        ParentFont = False
        VAlign = vaCenter
      end
      object MemDesc12: TfrxMemoView
        Align = baRight
        Left = 294.803413230000000000
        Top = 192.204724410000000000
        Width = 147.401596770000000000
        Height = 31.748031500000000000
        DisplayFormat.DecimalSeparator = '/'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
        HAlign = haRight
        Memo.UTF8 = (
          ' '#1591#168#1592#8225' '#1591#1726#1592#1662#1593#169#1592#1657#1593#169'  ')
        ParentFont = False
        VAlign = vaCenter
      end
      object MemDetail: TfrxMemoView
        Align = baWidth
        Top = 740.126470000000000000
        Width = 718.110700000000000000
        Height = 26.456710000000000000
        DisplayFormat.DecimalSeparator = '/'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        Frame.Typ = [ftLeft, ftRight, ftBottom]
        HAlign = haCenter
        Memo.UTF8 = (
          #1593#169#1591#167#1591#177#1591#168#1591#177#1591#167#1592#8224' '#1591#162#1591#177#1591#180#1594#338#1592#710' '#1591#167#1592#8222#1593#169#1591#1726#1591#177#1592#710#1592#8224#1594#338#1593#169#1594#338)
        ParentFont = False
        VAlign = vaCenter
      end
      object MemDetail1: TfrxMemoView
        Align = baRight
        Left = 453.543770860000000000
        Top = 767.244094490000000000
        Width = 132.283464570000000000
        Height = 26.456710000000000000
        DisplayFormat.DecimalSeparator = '/'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
        HAlign = haRight
        Memo.UTF8 = (
          ' '#1591#167#1591#179#1591#1726#1591#174#1591#177#1591#167#1591#172)
        ParentFont = False
      end
      object MemDetail21: TfrxMemoView
        Align = baRight
        Left = 453.543770860000000000
        Top = 794.078740160000000000
        Width = 132.283464570000000000
        Height = 64.251968500000000000
        DisplayFormat.DecimalSeparator = '/'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = 'Arial'
        Font.Style = []
        Frame.Typ = [ftLeft, ftRight, ftBottom]
        HAlign = haRight
        Memo.UTF8 = (
          ' '#1591#167#1591#179#1591#1726#1591#174#1591#177#1591#167#1591#172'  ')
        ParentFont = False
        VAlign = vaCenter
      end
      object MemDetail2: TfrxMemoView
        Align = baRight
        Left = 585.827235430000000000
        Top = 767.362710000000000000
        Width = 132.283464570000000000
        Height = 26.456710000000000000
        DisplayFormat.DecimalSeparator = '/'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
        HAlign = haRight
        Memo.UTF8 = (
          ' '#1591#162#1592#8230#1591#167#1591#175#1592#8225' '#1591#179#1591#167#1591#178#1594#338)
        ParentFont = False
      end
      object MemDetail11: TfrxMemoView
        Align = baRight
        Left = 585.827235430000000000
        Top = 794.078740160000000000
        Width = 132.283464570000000000
        Height = 64.251968500000000000
        DisplayFormat.DecimalSeparator = '/'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = 'Arial'
        Font.Style = []
        Frame.Typ = [ftLeft, ftRight, ftBottom]
        HAlign = haRight
        Memo.UTF8 = (
          ' '#1591#162#1592#8230#1591#167#1591#175#1592#8225' '#1591#179#1591#167#1591#178#1594#338'  ')
        ParentFont = False
        VAlign = vaCenter
      end
      object MemDetail4: TfrxMemoView
        Align = baWidth
        Left = 132.283464566929100000
        Top = 767.244094490000000000
        Width = 188.976841723070900000
        Height = 26.456710000000000000
        DisplayFormat.DecimalSeparator = '/'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
        HAlign = haRight
        Memo.UTF8 = (
          ' '#1591#167#1591#179#1593#169#1592#8224' '#1592#1662#1592#8222#1591#1726)
        ParentFont = False
      end
      object MemDetail41: TfrxMemoView
        Align = baWidth
        Left = 132.283464566929100000
        Top = 794.078740160000000000
        Width = 188.976841723070900000
        Height = 64.251968500000000000
        DisplayFormat.DecimalSeparator = '/'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = 'Arial'
        Font.Style = []
        Frame.Typ = [ftLeft, ftRight, ftBottom]
        HAlign = haRight
        Memo.UTF8 = (
          ' '#1591#167#1591#179#1593#169#1592#8224' '#1592#1662#1592#8222#1591#1726'  ')
        ParentFont = False
        VAlign = vaCenter
      end
      object MemDetail5: TfrxMemoView
        Align = baRight
        Left = 321.260306290000000000
        Top = 767.244094490000000000
        Width = 132.283464570000000000
        Height = 26.456710000000000000
        DisplayFormat.DecimalSeparator = '/'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
        HAlign = haRight
        Memo.UTF8 = (
          ' '#1591#168#1591#179#1591#1726#1592#8225' '#1591#168#1592#8224#1591#175#1594#338' ')
        ParentFont = False
      end
      object MemDetail51: TfrxMemoView
        Align = baRight
        Left = 321.260306290000000000
        Top = 794.078740160000000000
        Width = 132.283464570000000000
        Height = 64.251968500000000000
        DisplayFormat.DecimalSeparator = '/'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = 'Arial'
        Font.Style = []
        Frame.Typ = [ftLeft, ftRight, ftBottom]
        HAlign = haRight
        Memo.UTF8 = (
          ' '#1591#168#1591#179#1591#1726#1592#8225' '#1591#168#1592#8224#1591#175#1594#338'  ')
        ParentFont = False
        VAlign = vaCenter
      end
      object MemDetail3: TfrxMemoView
        Align = baLeft
        Top = 767.244094490000000000
        Width = 132.283464566929100000
        Height = 26.456710000000000000
        DisplayFormat.DecimalSeparator = '/'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
        HAlign = haRight
        Memo.UTF8 = (
          ' '#1591#167#1591#179#1593#169#1592#8224)
        ParentFont = False
      end
      object MemDetail31: TfrxMemoView
        Align = baLeft
        Top = 794.039890000000000000
        Width = 132.283464566929100000
        Height = 64.251968500000000000
        DisplayFormat.DecimalSeparator = '/'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = 'Arial'
        Font.Style = []
        Frame.Typ = [ftLeft, ftRight, ftBottom]
        HAlign = haRight
        Memo.UTF8 = (
          ' '#1591#167#1591#179#1593#169#1592#8224'  ')
        ParentFont = False
        VAlign = vaCenter
      end
      object MemDesc60: TfrxMemoView
        Align = baRight
        Left = 362.834880000000000000
        Top = 482.118430000000000000
        Width = 166.299320000000000000
        Height = 26.456710000000000000
        DisplayFormat.DecimalSeparator = '/'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
        HAlign = haRight
        Memo.UTF8 = (
          ' '#1591#168#1591#174#1591#180)
        ParentFont = False
      end
      object MemDesc61: TfrxMemoView
        Align = baWidth
        Left = 162.519790000000000000
        Top = 482.094488190000000000
        Width = 200.315090000000000000
        Height = 26.456710000000000000
        DisplayFormat.DecimalSeparator = '/'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
        HAlign = haRight
        Memo.UTF8 = (
          ' '#1592#190#1592#8222#1591#167#1593#169' '#1591#167#1591#181#1592#8222#1594#338)
        ParentFont = False
      end
      object MemDesc62: TfrxMemoView
        Align = baLeft
        Top = 482.094488190000000000
        Width = 162.519790000000000000
        Height = 26.456710000000000000
        DisplayFormat.DecimalSeparator = '/'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
        HAlign = haRight
        Memo.UTF8 = (
          ' '#1592#190#1592#8222#1591#167#1593#169' '#1592#1662#1591#177#1591#185#1594#338)
        ParentFont = False
      end
      object MemDesc63: TfrxMemoView
        Align = baRight
        Left = 362.834880000000000000
        Top = 509.016080000000000000
        Width = 166.299320000000000000
        Height = 36.661417320000000000
        DisplayFormat.DecimalSeparator = '/'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
        HAlign = haRight
        Memo.UTF8 = (
          ' '#1591#168#1591#174#1591#180'  ')
        ParentFont = False
        VAlign = vaCenter
      end
      object MemDesc65: TfrxMemoView
        Align = baLeft
        Top = 508.929133860000000000
        Width = 162.519685040000000000
        Height = 36.661417320000000000
        DisplayFormat.DecimalSeparator = '/'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
        HAlign = haRight
        Memo.UTF8 = (
          ' '#1592#190#1592#8222#1591#167#1593#169' '#1592#1662#1591#177#1591#185#1592#1657'  ')
        ParentFont = False
        VAlign = vaCenter
      end
      object MemDesc64: TfrxMemoView
        Left = 162.519685040000000000
        Top = 508.929133860000000000
        Width = 200.314960630000000000
        Height = 36.661417320000000000
        DisplayFormat.DecimalSeparator = '/'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
        HAlign = haRight
        Memo.UTF8 = (
          ' '#1592#190#1592#8222#1591#167#1593#169' '#1591#167#1591#181#1592#8222#1592#1657'  ')
        ParentFont = False
        VAlign = vaCenter
      end
      object MHeader: TfrxMemoView
        Align = baWidth
        Width = 718.110700000000000000
        Height = 94.488250000000000000
        DisplayFormat.DecimalSeparator = '/'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -20
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        Frame.Typ = [ftLeft, ftRight, ftTop]
        HAlign = haCenter
        Memo.UTF8 = (
          #1591#180#1591#177#1593#169#1591#1726' '#1593#175#1591#179#1591#1726#1591#177#1591#180' '#1592#1662#1592#8224' '#1591#162#1592#710#1591#177#1591#167#1592#8224' '#1591#167#1591#183#1592#8222#1591#167#1591#185#1591#167#1591#1726' '#1594#338#1593#175#1591#167#1592#8224#1592#8225
          #1591#177#1592#710#1593#169#1591#180' '#1592#190#1591#177#1592#710#1592#8224#1591#175#1592#8225' '
          #1591#180#1592#8225#1591#177#1591#175#1591#167#1591#177#1594#338' '#1591#167#1591#181#1592#1662#1592#8225#1591#167#1592#8224)
        ParentFont = False
        VAlign = vaCenter
      end
      object MemName0: TfrxMemoView
        Align = baRight
        Left = 529.134200000000000000
        Top = 95.267780000000000000
        Width = 188.976500000000000000
        Height = 64.252010000000000000
        DisplayFormat.DecimalSeparator = '/'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -20
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        Frame.Typ = [ftLeft, ftRight, ftTop]
        HAlign = haRight
        Memo.UTF8 = (
          ' '#1591#167#1591#183#1592#8222#1591#167#1591#185#1591#167#1591#1726' '#1593#169#1592#8222#1594#338' '#1592#190#1591#177#1592#710#1592#8224#1591#175#1592#8225'  ')
        ParentFont = False
        VAlign = vaCenter
      end
      object MemDesc0: TfrxMemoView
        Align = baWidth
        Top = 95.267780000000000000
        Width = 529.134200000000000000
        Height = 64.251968500000000000
        DisplayFormat.DecimalSeparator = '/'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        Frame.Typ = [ftLeft, ftRight, ftTop]
        HAlign = haRight
        Memo.UTF8 = (
          ' '#1591#167#1591#183#1592#8222#1591#167#1591#185#1591#167#1591#1726' '#1593#169#1592#8222#1594#338' '#1592#190#1591#177#1592#710#1592#8224#1591#175#1592#8225'  ')
        ParentFont = False
        VAlign = vaCenter
      end
    end
  end
  object frxReport3: TfrxReport
    Version = '5.4.6'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick]
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = #1662#1610#1588' '#1601#1585#1590
    PrintOptions.PrintOnSheet = 0
    ReportOptions.CreateDate = 45655.501704953710000000
    ReportOptions.LastChange = 45655.501704953710000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      'begin'
      ''
      'end.')
    Left = 186
    Top = 102
    Datasets = <>
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
      object MemName1: TfrxMemoView
        Align = baRight
        Left = 529.134200000000000000
        Top = 159.858380000000000000
        Width = 188.976500000000000000
        Height = 64.252010000000000000
        DisplayFormat.DecimalSeparator = '/'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -20
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
        HAlign = haRight
        Memo.UTF8 = (
          ' '#1593#169#1592#8222#1591#167#1591#179#1592#8225' '#1592#190#1591#177#1592#710#1592#8224#1591#175#1592#8225' '#1591#1726#1591#177#1593#169#1594#338#1591#168#1594#338'  ')
        ParentFont = False
        VAlign = vaCenter
      end
      object MemName2: TfrxMemoView
        Align = baRight
        Left = 529.134200000000000000
        Top = 224.448980000000000000
        Width = 188.976500000000000000
        Height = 64.252010000000000000
        DisplayFormat.DecimalSeparator = '/'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -20
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
        HAlign = haRight
        Memo.UTF8 = (
          ' '#1591#180#1592#8230#1591#167#1591#177#1592#8225' '#1591#172#1592#8222#1591#175' '#1592#190#1591#177#1592#710#1592#8224#1591#175#1592#8225'  ')
        ParentFont = False
        VAlign = vaCenter
      end
      object MemName3: TfrxMemoView
        Align = baRight
        Left = 529.134200000000000000
        Top = 288.700990000000000000
        Width = 188.976500000000000000
        Height = 64.252010000000000000
        DisplayFormat.DecimalSeparator = '/'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -20
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
        HAlign = haRight
        Memo.UTF8 = (
          ' '#1592#8224#1592#710#1591#185' '#1592#8218#1591#175#1592#8230#1591#1726'  ')
        ParentFont = False
        VAlign = vaCenter
      end
      object MemName4: TfrxMemoView
        Align = baRight
        Left = 529.134200000000000000
        Top = 353.291590000000000000
        Width = 188.976500000000000000
        Height = 64.252010000000000000
        DisplayFormat.DecimalSeparator = '/'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -20
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
        HAlign = haRight
        Memo.UTF8 = (
          ' '#1592#8224#1591#167#1592#8230' '#1591#183#1591#177#1591#173'  ')
        ParentFont = False
        VAlign = vaCenter
      end
      object MemName5: TfrxMemoView
        Align = baRight
        Left = 529.134200000000000000
        Top = 417.661720000000000000
        Width = 188.976500000000000000
        Height = 64.252010000000000000
        DisplayFormat.DecimalSeparator = '/'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -20
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
        HAlign = haRight
        Memo.UTF8 = (
          ' '#1592#8224#1591#167#1592#8230' '#1592#710' '#1592#8224#1591#167#1592#8230' '#1591#174#1591#167#1592#8224#1592#710#1591#167#1591#175#1593#175#1594#338' '#1592#8230#1591#167#1592#8222#1593#169#1594#338#1592#8224'  ')
        ParentFont = False
        VAlign = vaCenter
      end
      object MemName6: TfrxMemoView
        Align = baRight
        Left = 529.134200000000000000
        Top = 482.134200000000000000
        Width = 188.976500000000000000
        Height = 64.252010000000000000
        DisplayFormat.DecimalSeparator = '/'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -20
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
        HAlign = haRight
        Memo.UTF8 = (
          ' '#1592#8230#1591#180#1591#174#1591#181#1591#167#1591#1726' '#1591#171#1591#168#1591#1726#1594#338' '#1592#8230#1592#8222#1593#169'  ')
        ParentFont = False
        VAlign = vaCenter
      end
      object MemName7: TfrxMemoView
        Align = baRight
        Left = 529.134200000000000000
        Top = 546.472790000000000000
        Width = 188.976500000000000000
        Height = 64.251968500000000000
        DisplayFormat.DecimalSeparator = '/'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -20
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
        HAlign = haRight
        Memo.UTF8 = (
          ' '#1591#162#1591#175#1591#177#1591#179' '#1592#710#1592#8218#1592#710#1591#185' '#1592#8230#1592#8222#1593#169'  ')
        ParentFont = False
        VAlign = vaCenter
      end
      object MemName8: TfrxMemoView
        Align = baRight
        Left = 529.134200000000000000
        Top = 611.063390000000000000
        Width = 188.976500000000000000
        Height = 64.251968500000000000
        DisplayFormat.DecimalSeparator = '/'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -20
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
        HAlign = haRight
        Memo.UTF8 = (
          ' '#1592#8230#1591#173#1592#8222' '#1592#8224#1593#175#1592#8225#1591#175#1591#167#1591#177#1594#338' '#1592#190#1591#177#1592#710#1592#8224#1591#175#1592#8225' '#1591#168#1591#167#1594#338#1593#175#1591#167#1592#8224#1594#338'  ')
        ParentFont = False
        VAlign = vaCenter
      end
      object MemName9: TfrxMemoView
        Align = baRight
        Left = 529.134200000000000000
        Top = 675.315400000000000000
        Width = 188.976500000000000000
        Height = 64.251968500000000000
        DisplayFormat.DecimalSeparator = '/'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -20
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
        HAlign = haRight
        Memo.UTF8 = (
          ' '#1591#1726#1592#710#1591#182#1594#338#1591#173#1591#167#1591#1726'  ')
        ParentFont = False
        VAlign = vaCenter
      end
      object MemDesc11: TfrxMemoView
        Align = baWidth
        Top = 159.858380000000000000
        Width = 442.205010000000000000
        Height = 31.748031500000000000
        DisplayFormat.DecimalSeparator = '/'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
        HAlign = haRight
        Memo.UTF8 = (
          ' '#1593#169#1592#8222#1591#167#1591#179#1592#8225' '#1592#190#1591#177#1592#710#1592#8224#1591#175#1592#8225' '#1591#1726#1591#177#1593#169#1594#338#1591#168#1594#338'  ')
        ParentFont = False
        VAlign = vaCenter
      end
      object MemDesc2: TfrxMemoView
        Align = baWidth
        Top = 224.448980000000000000
        Width = 529.134200000000000000
        Height = 64.251968500000000000
        DisplayFormat.DecimalSeparator = '/'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
        HAlign = haRight
        Memo.UTF8 = (
          ' '#1591#180#1592#8230#1591#167#1591#177#1592#8225' '#1591#172#1592#8222#1591#175' '#1592#190#1591#177#1592#710#1592#8224#1591#175#1592#8225'  ')
        ParentFont = False
        VAlign = vaCenter
      end
      object MemDesc3: TfrxMemoView
        Align = baWidth
        Top = 288.700990000000000000
        Width = 529.134200000000000000
        Height = 64.251968500000000000
        DisplayFormat.DecimalSeparator = '/'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
        HAlign = haRight
        Memo.UTF8 = (
          ' '#1592#8224#1592#710#1591#185' '#1592#8218#1591#175#1592#8230#1591#1726'  ')
        ParentFont = False
        VAlign = vaCenter
      end
      object MemDesc4: TfrxMemoView
        Align = baWidth
        Top = 353.291590000000000000
        Width = 529.134200000000000000
        Height = 64.251968500000000000
        DisplayFormat.DecimalSeparator = '/'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
        HAlign = haRight
        Memo.UTF8 = (
          ' '#1592#8224#1591#167#1592#8230' '#1591#183#1591#177#1591#173'  ')
        ParentFont = False
        VAlign = vaCenter
      end
      object MemDesc5: TfrxMemoView
        Align = baWidth
        Top = 417.661720000000000000
        Width = 529.134200000000000000
        Height = 64.251968500000000000
        DisplayFormat.DecimalSeparator = '/'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
        HAlign = haRight
        Memo.UTF8 = (
          ' '#1592#8224#1591#167#1592#8230' '#1592#710' '#1592#8224#1591#167#1592#8230' '#1591#174#1591#167#1592#8224#1592#710#1591#167#1591#175#1593#175#1594#338' '#1592#8230#1591#167#1592#8222#1593#169#1594#338#1592#8224'  ')
        ParentFont = False
        VAlign = vaCenter
      end
      object MemDesc7: TfrxMemoView
        Align = baWidth
        Top = 546.472790000000000000
        Width = 529.134200000000000000
        Height = 64.251968500000000000
        DisplayFormat.DecimalSeparator = '/'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
        HAlign = haRight
        Memo.UTF8 = (
          ' '#1591#162#1591#175#1591#177#1591#179' '#1592#710#1592#8218#1592#710#1591#185' '#1592#8230#1592#8222#1593#169'  ')
        ParentFont = False
        VAlign = vaCenter
      end
      object MemDesc8: TfrxMemoView
        Align = baWidth
        Top = 611.063390000000000000
        Width = 529.134200000000000000
        Height = 64.251968500000000000
        DisplayFormat.DecimalSeparator = '/'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
        HAlign = haRight
        Memo.UTF8 = (
          ' '#1592#8230#1591#173#1592#8222' '#1592#8224#1593#175#1592#8225#1591#175#1591#167#1591#177#1594#338' '#1592#190#1591#177#1592#710#1592#8224#1591#175#1592#8225' '#1591#168#1591#167#1594#338#1593#175#1591#167#1592#8224#1594#338'  ')
        ParentFont = False
        VAlign = vaCenter
      end
      object MemDesc9: TfrxMemoView
        Align = baWidth
        Top = 675.315400000000000000
        Width = 529.134200000000000000
        Height = 64.251968500000000000
        DisplayFormat.DecimalSeparator = '/'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
        HAlign = haRight
        Memo.UTF8 = (
          ' '#1591#1726#1592#710#1591#182#1594#338#1591#173#1591#167#1591#1726'  ')
        ParentFont = False
        VAlign = vaCenter
      end
      object MemDesc1: TfrxMemoView
        Align = baRight
        Left = 442.205010000000000000
        Top = 160.078850000000000000
        Width = 86.929190000000000000
        Height = 31.748031500000000000
        DisplayFormat.DecimalSeparator = '/'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -20
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
        HAlign = haRight
        Memo.UTF8 = (
          ' '#1591#175#1591#167#1593#169#1592#710#1591#177'  ')
        ParentFont = False
        VAlign = vaCenter
      end
      object Memo23: TfrxMemoView
        Align = baRight
        Left = 442.205010000000000000
        Top = 192.315090000000000000
        Width = 86.929190000000000000
        Height = 31.748031500000000000
        DisplayFormat.DecimalSeparator = '/'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
        HAlign = haRight
        Memo.UTF8 = (
          ' '#1591#168#1592#8225' '#1591#1726#1592#1662#1593#169#1592#1657#1593#169'  ')
        ParentFont = False
        VAlign = vaCenter
      end
      object MemDesc13: TfrxMemoView
        Align = baWidth
        Left = 151.181129210000000000
        Top = 192.315090000000000000
        Width = 143.622284020000000000
        Height = 31.748031500000000000
        DisplayFormat.DecimalSeparator = '/'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
        HAlign = haRight
        Memo.UTF8 = (
          ' '#1591#168#1592#8225' '#1591#1726#1592#1662#1593#169#1592#1657#1593#169'  ')
        ParentFont = False
        VAlign = vaCenter
      end
      object MemDesc14: TfrxMemoView
        Align = baLeft
        Top = 192.204724410000000000
        Width = 151.181129210000000000
        Height = 31.748031500000000000
        DisplayFormat.DecimalSeparator = '/'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
        HAlign = haRight
        Memo.UTF8 = (
          ' '#1591#168#1592#8225' '#1591#1726#1592#1662#1593#169#1592#1657#1593#169'  ')
        ParentFont = False
        VAlign = vaCenter
      end
      object Memo26: TfrxMemoView
        Align = baWidth
        Left = 718.110700000000000000
        Top = 192.204724410000000000
        Height = 31.748031500000000000
        DisplayFormat.DecimalSeparator = '/'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
        HAlign = haRight
        Memo.UTF8 = (
          ' '#1591#168#1592#8225' '#1591#1726#1592#1662#1593#169#1592#1657#1593#169'  ')
        ParentFont = False
        VAlign = vaCenter
      end
      object MemDesc12: TfrxMemoView
        Align = baRight
        Left = 294.803413230000000000
        Top = 192.204724410000000000
        Width = 147.401596770000000000
        Height = 31.748031500000000000
        DisplayFormat.DecimalSeparator = '/'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
        HAlign = haRight
        Memo.UTF8 = (
          ' '#1591#168#1592#8225' '#1591#1726#1592#1662#1593#169#1592#1657#1593#169'  ')
        ParentFont = False
        VAlign = vaCenter
      end
      object MemDetail: TfrxMemoView
        Align = baWidth
        Top = 740.126470000000000000
        Width = 718.110700000000000000
        Height = 18.897650000000000000
        DisplayFormat.DecimalSeparator = '/'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
        HAlign = haCenter
        Memo.UTF8 = (
          #1593#169#1591#167#1591#177#1591#168#1591#177#1591#167#1592#8224' '#1591#162#1591#177#1591#180#1594#338#1592#710' '#1591#167#1592#8222#1593#169#1591#1726#1591#177#1592#710#1592#8224#1594#338#1593#169#1594#338)
        ParentFont = False
        VAlign = vaCenter
      end
      object MemDetail1: TfrxMemoView
        Align = baRight
        Left = 604.724800000000000000
        Top = 759.024120000000000000
        Width = 113.385900000000000000
        Height = 26.456710000000000000
        DisplayFormat.DecimalSeparator = '/'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
        HAlign = haRight
        Memo.UTF8 = (
          ' '#1591#167#1591#179#1591#1726#1591#174#1591#177#1591#167#1591#172)
        ParentFont = False
      end
      object MemDetail21: TfrxMemoView
        Align = baRight
        Left = 491.338900000000000000
        Top = 785.480830000000000000
        Width = 113.385900000000000000
        Height = 64.251968500000000000
        DisplayFormat.DecimalSeparator = '/'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = 'Arial'
        Font.Style = []
        Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
        HAlign = haRight
        Memo.UTF8 = (
          ' '#1591#167#1591#179#1591#1726#1591#174#1591#177#1591#167#1591#172'  ')
        ParentFont = False
        VAlign = vaCenter
      end
      object MemDetail2: TfrxMemoView
        Align = baRight
        Left = 491.338900000000000000
        Top = 758.803650000000000000
        Width = 113.385900000000000000
        Height = 26.456710000000000000
        DisplayFormat.DecimalSeparator = '/'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
        HAlign = haRight
        Memo.UTF8 = (
          ' '#1591#162#1592#8230#1591#167#1591#175#1592#8225' '#1591#179#1591#167#1591#178#1594#338)
        ParentFont = False
      end
      object MemDetail11: TfrxMemoView
        Align = baRight
        Left = 604.724800000000000000
        Top = 786.039890000000000000
        Width = 113.385900000000000000
        Height = 64.251968500000000000
        DisplayFormat.DecimalSeparator = '/'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = 'Arial'
        Font.Style = []
        Frame.Typ = [ftLeft, ftRight, ftBottom]
        HAlign = haRight
        Memo.UTF8 = (
          ' '#1591#162#1592#8230#1591#167#1591#175#1592#8225' '#1591#179#1591#167#1591#178#1594#338'  ')
        ParentFont = False
        VAlign = vaCenter
      end
      object MemDetail4: TfrxMemoView
        Align = baWidth
        Left = 113.385900000000000000
        Top = 759.024120000000000000
        Width = 264.567100000000000000
        Height = 26.456710000000000000
        DisplayFormat.DecimalSeparator = '/'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
        HAlign = haRight
        Memo.UTF8 = (
          ' '#1591#167#1591#179#1593#169#1592#8224' '#1592#1662#1592#8222#1591#1726)
        ParentFont = False
      end
      object MemDetail41: TfrxMemoView
        Align = baWidth
        Left = 113.385900000000000000
        Top = 785.480830000000000000
        Width = 264.567100000000000000
        Height = 64.251968500000000000
        DisplayFormat.DecimalSeparator = '/'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = 'Arial'
        Font.Style = []
        Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
        HAlign = haRight
        Memo.UTF8 = (
          ' '#1591#167#1591#179#1593#169#1592#8224' '#1592#1662#1592#8222#1591#1726'  ')
        ParentFont = False
        VAlign = vaCenter
      end
      object MemDetail5: TfrxMemoView
        Align = baLeft
        Top = 759.133858270000000000
        Width = 113.385900000000000000
        Height = 26.456710000000000000
        DisplayFormat.DecimalSeparator = '/'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
        HAlign = haRight
        Memo.UTF8 = (
          ' '#1591#168#1591#179#1591#1726#1592#8225' '#1591#168#1592#8224#1591#175#1594#338' ')
        ParentFont = False
      end
      object MemDetail51: TfrxMemoView
        Align = baLeft
        Top = 785.590551180000000000
        Width = 113.385900000000000000
        Height = 64.251968500000000000
        DisplayFormat.DecimalSeparator = '/'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = 'Arial'
        Font.Style = []
        Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
        HAlign = haRight
        Memo.UTF8 = (
          ' '#1591#168#1591#179#1591#1726#1592#8225' '#1591#168#1592#8224#1591#175#1594#338'  ')
        ParentFont = False
        VAlign = vaCenter
      end
      object MemDetail3: TfrxMemoView
        Align = baRight
        Left = 377.953000000000000000
        Top = 759.024120000000000000
        Width = 113.385900000000000000
        Height = 26.456710000000000000
        DisplayFormat.DecimalSeparator = '/'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
        HAlign = haRight
        Memo.UTF8 = (
          ' '#1591#167#1591#179#1593#169#1592#8224)
        ParentFont = False
      end
      object MemDetail31: TfrxMemoView
        Align = baRight
        Left = 377.953000000000000000
        Top = 785.480830000000000000
        Width = 113.385900000000000000
        Height = 64.251968500000000000
        DisplayFormat.DecimalSeparator = '/'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = 'Arial'
        Font.Style = []
        Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
        HAlign = haRight
        Memo.UTF8 = (
          ' '#1591#167#1591#179#1593#169#1592#8224'  ')
        ParentFont = False
        VAlign = vaCenter
      end
      object MemDesc60: TfrxMemoView
        Align = baRight
        Left = 362.834880000000000000
        Top = 482.118430000000000000
        Width = 166.299320000000000000
        Height = 26.456710000000000000
        DisplayFormat.DecimalSeparator = '/'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
        HAlign = haRight
        Memo.UTF8 = (
          ' '#1591#168#1591#174#1591#180)
        ParentFont = False
      end
      object MemDesc61: TfrxMemoView
        Align = baWidth
        Left = 162.519790000000000000
        Top = 482.094488190000000000
        Width = 200.315090000000000000
        Height = 26.456710000000000000
        DisplayFormat.DecimalSeparator = '/'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
        HAlign = haRight
        Memo.UTF8 = (
          ' '#1592#190#1592#8222#1591#167#1593#169' '#1591#167#1591#181#1592#8222#1594#338)
        ParentFont = False
      end
      object MemDesc62: TfrxMemoView
        Align = baLeft
        Top = 482.094488190000000000
        Width = 162.519790000000000000
        Height = 26.456710000000000000
        DisplayFormat.DecimalSeparator = '/'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
        HAlign = haRight
        Memo.UTF8 = (
          ' '#1592#190#1592#8222#1591#167#1593#169' '#1592#1662#1591#177#1591#185#1594#338)
        ParentFont = False
      end
      object MemDesc63: TfrxMemoView
        Align = baRight
        Left = 362.834880000000000000
        Top = 509.016080000000000000
        Width = 166.299320000000000000
        Height = 36.661417320000000000
        DisplayFormat.DecimalSeparator = '/'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
        HAlign = haRight
        Memo.UTF8 = (
          ' '#1591#168#1591#174#1591#180'  ')
        ParentFont = False
        VAlign = vaCenter
      end
      object MemDesc65: TfrxMemoView
        Align = baLeft
        Top = 508.929133860000000000
        Width = 162.519685040000000000
        Height = 36.661417320000000000
        DisplayFormat.DecimalSeparator = '/'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
        HAlign = haRight
        Memo.UTF8 = (
          ' '#1592#190#1592#8222#1591#167#1593#169' '#1592#1662#1591#177#1591#185#1592#1657'  ')
        ParentFont = False
        VAlign = vaCenter
      end
      object MemDesc64: TfrxMemoView
        Left = 162.519685040000000000
        Top = 508.929133860000000000
        Width = 200.314960630000000000
        Height = 36.661417320000000000
        DisplayFormat.DecimalSeparator = '/'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
        HAlign = haRight
        Memo.UTF8 = (
          ' '#1592#190#1592#8222#1591#167#1593#169' '#1591#167#1591#181#1592#8222#1592#1657'  ')
        ParentFont = False
        VAlign = vaCenter
      end
      object MHeader: TfrxMemoView
        Align = baWidth
        Width = 718.110700000000000000
        Height = 94.488250000000000000
        DisplayFormat.DecimalSeparator = '/'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -20
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        Frame.Typ = [ftLeft, ftRight, ftTop]
        HAlign = haCenter
        Memo.UTF8 = (
          #1591#180#1591#177#1593#169#1591#1726' '#1593#175#1591#179#1591#1726#1591#177#1591#180' '#1592#1662#1592#8224' '#1591#162#1592#710#1591#177#1591#167#1592#8224' '#1591#167#1591#183#1592#8222#1591#167#1591#185#1591#167#1591#1726' '#1594#338#1593#175#1591#167#1592#8224#1592#8225
          #1591#177#1592#710#1593#169#1591#180' '#1592#190#1591#177#1592#710#1592#8224#1591#175#1592#8225' '
          #1591#180#1592#8225#1591#177#1591#175#1591#167#1591#177#1594#338' '#1591#167#1591#181#1592#1662#1592#8225#1591#167#1592#8224)
        ParentFont = False
        VAlign = vaCenter
      end
      object MemName0: TfrxMemoView
        Align = baRight
        Left = 529.134200000000000000
        Top = 95.267780000000000000
        Width = 188.976500000000000000
        Height = 64.252010000000000000
        DisplayFormat.DecimalSeparator = '/'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -20
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
        HAlign = haRight
        Memo.UTF8 = (
          ' '#1591#167#1591#183#1592#8222#1591#167#1591#185#1591#167#1591#1726' '#1593#169#1592#8222#1594#338' '#1592#190#1591#177#1592#710#1592#8224#1591#175#1592#8225'  ')
        ParentFont = False
        VAlign = vaCenter
      end
      object MemDesc0: TfrxMemoView
        Align = baWidth
        Top = 95.267780000000000000
        Width = 529.134200000000000000
        Height = 64.251968500000000000
        DisplayFormat.DecimalSeparator = '/'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
        HAlign = haRight
        Memo.UTF8 = (
          ' '#1591#167#1591#183#1592#8222#1591#167#1591#185#1591#167#1591#1726' '#1593#169#1592#8222#1594#338' '#1592#190#1591#177#1592#710#1592#8224#1591#175#1592#8225'  ')
        ParentFont = False
        VAlign = vaCenter
      end
    end
  end
  object frxReport4: TfrxReport
    Version = '5.4.6'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick]
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = #1662#1610#1588' '#1601#1585#1590
    PrintOptions.PrintOnSheet = 0
    ReportOptions.CreateDate = 45655.501704953710000000
    ReportOptions.LastChange = 45655.501704953710000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      'begin'
      ''
      'end.')
    Left = 266
    Top = 102
    Datasets = <>
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
      object MemName1: TfrxMemoView
        Align = baRight
        Left = 529.134200000000000000
        Top = 159.858380000000000000
        Width = 188.976500000000000000
        Height = 64.252010000000000000
        DisplayFormat.DecimalSeparator = '/'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -20
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
        HAlign = haRight
        Memo.UTF8 = (
          ' '#1593#169#1592#8222#1591#167#1591#179#1592#8225' '#1592#190#1591#177#1592#710#1592#8224#1591#175#1592#8225' '#1591#1726#1591#177#1593#169#1594#338#1591#168#1594#338'  ')
        ParentFont = False
        VAlign = vaCenter
      end
      object MemName2: TfrxMemoView
        Align = baRight
        Left = 529.134200000000000000
        Top = 224.448980000000000000
        Width = 188.976500000000000000
        Height = 64.252010000000000000
        DisplayFormat.DecimalSeparator = '/'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -20
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
        HAlign = haRight
        Memo.UTF8 = (
          ' '#1591#180#1592#8230#1591#167#1591#177#1592#8225' '#1591#172#1592#8222#1591#175' '#1592#190#1591#177#1592#710#1592#8224#1591#175#1592#8225'  ')
        ParentFont = False
        VAlign = vaCenter
      end
      object MemName3: TfrxMemoView
        Align = baRight
        Left = 529.134200000000000000
        Top = 288.700990000000000000
        Width = 188.976500000000000000
        Height = 64.252010000000000000
        DisplayFormat.DecimalSeparator = '/'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -20
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
        HAlign = haRight
        Memo.UTF8 = (
          ' '#1592#8224#1592#710#1591#185' '#1592#8218#1591#175#1592#8230#1591#1726'  ')
        ParentFont = False
        VAlign = vaCenter
      end
      object MemName4: TfrxMemoView
        Align = baRight
        Left = 529.134200000000000000
        Top = 353.291590000000000000
        Width = 188.976500000000000000
        Height = 64.252010000000000000
        DisplayFormat.DecimalSeparator = '/'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -20
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
        HAlign = haRight
        Memo.UTF8 = (
          ' '#1592#8224#1591#167#1592#8230' '#1591#183#1591#177#1591#173'  ')
        ParentFont = False
        VAlign = vaCenter
      end
      object MemName5: TfrxMemoView
        Align = baRight
        Left = 529.134200000000000000
        Top = 417.661720000000000000
        Width = 188.976500000000000000
        Height = 64.252010000000000000
        DisplayFormat.DecimalSeparator = '/'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -20
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
        HAlign = haRight
        Memo.UTF8 = (
          ' '#1592#8224#1591#167#1592#8230' '#1592#710' '#1592#8224#1591#167#1592#8230' '#1591#174#1591#167#1592#8224#1592#710#1591#167#1591#175#1593#175#1594#338' '#1592#8230#1591#167#1592#8222#1593#169#1594#338#1592#8224'  ')
        ParentFont = False
        VAlign = vaCenter
      end
      object MemName6: TfrxMemoView
        Align = baRight
        Left = 529.134200000000000000
        Top = 482.134200000000000000
        Width = 188.976500000000000000
        Height = 64.252010000000000000
        DisplayFormat.DecimalSeparator = '/'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -20
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
        HAlign = haRight
        Memo.UTF8 = (
          ' '#1592#8230#1591#180#1591#174#1591#181#1591#167#1591#1726' '#1591#171#1591#168#1591#1726#1594#338' '#1592#8230#1592#8222#1593#169'  ')
        ParentFont = False
        VAlign = vaCenter
      end
      object MemName7: TfrxMemoView
        Align = baRight
        Left = 529.134200000000000000
        Top = 546.472790000000000000
        Width = 188.976500000000000000
        Height = 64.251968500000000000
        DisplayFormat.DecimalSeparator = '/'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -20
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
        HAlign = haRight
        Memo.UTF8 = (
          ' '#1591#162#1591#175#1591#177#1591#179' '#1592#710#1592#8218#1592#710#1591#185' '#1592#8230#1592#8222#1593#169'  ')
        ParentFont = False
        VAlign = vaCenter
      end
      object MemName8: TfrxMemoView
        Align = baRight
        Left = 529.134200000000000000
        Top = 611.063390000000000000
        Width = 188.976500000000000000
        Height = 64.251968500000000000
        DisplayFormat.DecimalSeparator = '/'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -20
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
        HAlign = haRight
        Memo.UTF8 = (
          ' '#1592#8230#1591#173#1592#8222' '#1592#8224#1593#175#1592#8225#1591#175#1591#167#1591#177#1594#338' '#1592#190#1591#177#1592#710#1592#8224#1591#175#1592#8225' '#1591#168#1591#167#1594#338#1593#175#1591#167#1592#8224#1594#338'  ')
        ParentFont = False
        VAlign = vaCenter
      end
      object MemName9: TfrxMemoView
        Align = baRight
        Left = 529.134200000000000000
        Top = 675.315400000000000000
        Width = 188.976500000000000000
        Height = 64.251968500000000000
        DisplayFormat.DecimalSeparator = '/'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -20
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
        HAlign = haRight
        Memo.UTF8 = (
          ' '#1591#1726#1592#710#1591#182#1594#338#1591#173#1591#167#1591#1726'  ')
        ParentFont = False
        VAlign = vaCenter
      end
      object MemDesc11: TfrxMemoView
        Align = baWidth
        Top = 159.858380000000000000
        Width = 442.205010000000000000
        Height = 31.748031500000000000
        DisplayFormat.DecimalSeparator = '/'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
        HAlign = haRight
        Memo.UTF8 = (
          ' '#1593#169#1592#8222#1591#167#1591#179#1592#8225' '#1592#190#1591#177#1592#710#1592#8224#1591#175#1592#8225' '#1591#1726#1591#177#1593#169#1594#338#1591#168#1594#338'  ')
        ParentFont = False
        VAlign = vaCenter
      end
      object MemDesc2: TfrxMemoView
        Align = baWidth
        Top = 224.448980000000000000
        Width = 529.134200000000000000
        Height = 64.251968500000000000
        DisplayFormat.DecimalSeparator = '/'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
        HAlign = haRight
        Memo.UTF8 = (
          ' '#1591#180#1592#8230#1591#167#1591#177#1592#8225' '#1591#172#1592#8222#1591#175' '#1592#190#1591#177#1592#710#1592#8224#1591#175#1592#8225'  ')
        ParentFont = False
        VAlign = vaCenter
      end
      object MemDesc3: TfrxMemoView
        Align = baWidth
        Top = 288.700990000000000000
        Width = 529.134200000000000000
        Height = 64.251968500000000000
        DisplayFormat.DecimalSeparator = '/'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
        HAlign = haRight
        Memo.UTF8 = (
          ' '#1592#8224#1592#710#1591#185' '#1592#8218#1591#175#1592#8230#1591#1726'  ')
        ParentFont = False
        VAlign = vaCenter
      end
      object MemDesc4: TfrxMemoView
        Align = baWidth
        Top = 353.291590000000000000
        Width = 529.134200000000000000
        Height = 64.251968500000000000
        DisplayFormat.DecimalSeparator = '/'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
        HAlign = haRight
        Memo.UTF8 = (
          ' '#1592#8224#1591#167#1592#8230' '#1591#183#1591#177#1591#173'  ')
        ParentFont = False
        VAlign = vaCenter
      end
      object MemDesc5: TfrxMemoView
        Align = baWidth
        Top = 417.661720000000000000
        Width = 529.134200000000000000
        Height = 64.251968500000000000
        DisplayFormat.DecimalSeparator = '/'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
        HAlign = haRight
        Memo.UTF8 = (
          ' '#1592#8224#1591#167#1592#8230' '#1592#710' '#1592#8224#1591#167#1592#8230' '#1591#174#1591#167#1592#8224#1592#710#1591#167#1591#175#1593#175#1594#338' '#1592#8230#1591#167#1592#8222#1593#169#1594#338#1592#8224'  ')
        ParentFont = False
        VAlign = vaCenter
      end
      object MemDesc7: TfrxMemoView
        Align = baWidth
        Top = 546.472790000000000000
        Width = 529.134200000000000000
        Height = 64.251968500000000000
        DisplayFormat.DecimalSeparator = '/'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
        HAlign = haRight
        Memo.UTF8 = (
          ' '#1591#162#1591#175#1591#177#1591#179' '#1592#710#1592#8218#1592#710#1591#185' '#1592#8230#1592#8222#1593#169'  ')
        ParentFont = False
        VAlign = vaCenter
      end
      object MemDesc8: TfrxMemoView
        Align = baWidth
        Top = 611.063390000000000000
        Width = 529.134200000000000000
        Height = 64.251968500000000000
        DisplayFormat.DecimalSeparator = '/'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
        HAlign = haRight
        Memo.UTF8 = (
          ' '#1592#8230#1591#173#1592#8222' '#1592#8224#1593#175#1592#8225#1591#175#1591#167#1591#177#1594#338' '#1592#190#1591#177#1592#710#1592#8224#1591#175#1592#8225' '#1591#168#1591#167#1594#338#1593#175#1591#167#1592#8224#1594#338'  ')
        ParentFont = False
        VAlign = vaCenter
      end
      object MemDesc9: TfrxMemoView
        Align = baWidth
        Top = 675.315400000000000000
        Width = 529.134200000000000000
        Height = 64.251968500000000000
        DisplayFormat.DecimalSeparator = '/'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
        HAlign = haRight
        Memo.UTF8 = (
          ' '#1591#1726#1592#710#1591#182#1594#338#1591#173#1591#167#1591#1726'  ')
        ParentFont = False
        VAlign = vaCenter
      end
      object MemDesc1: TfrxMemoView
        Align = baRight
        Left = 442.205010000000000000
        Top = 160.078850000000000000
        Width = 86.929190000000000000
        Height = 31.748031500000000000
        DisplayFormat.DecimalSeparator = '/'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -20
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
        HAlign = haRight
        Memo.UTF8 = (
          ' '#1591#175#1591#167#1593#169#1592#710#1591#177'  ')
        ParentFont = False
        VAlign = vaCenter
      end
      object Memo23: TfrxMemoView
        Align = baRight
        Left = 442.205010000000000000
        Top = 192.315090000000000000
        Width = 86.929190000000000000
        Height = 31.748031500000000000
        DisplayFormat.DecimalSeparator = '/'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
        HAlign = haRight
        Memo.UTF8 = (
          ' '#1591#168#1592#8225' '#1591#1726#1592#1662#1593#169#1592#1657#1593#169'  ')
        ParentFont = False
        VAlign = vaCenter
      end
      object MemDesc13: TfrxMemoView
        Align = baWidth
        Left = 151.181129210000000000
        Top = 192.315090000000000000
        Width = 143.622284020000000000
        Height = 31.748031500000000000
        DisplayFormat.DecimalSeparator = '/'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
        HAlign = haRight
        Memo.UTF8 = (
          ' '#1591#168#1592#8225' '#1591#1726#1592#1662#1593#169#1592#1657#1593#169'  ')
        ParentFont = False
        VAlign = vaCenter
      end
      object MemDesc14: TfrxMemoView
        Align = baLeft
        Top = 192.204724410000000000
        Width = 151.181129210000000000
        Height = 31.748031500000000000
        DisplayFormat.DecimalSeparator = '/'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
        HAlign = haRight
        Memo.UTF8 = (
          ' '#1591#168#1592#8225' '#1591#1726#1592#1662#1593#169#1592#1657#1593#169'  ')
        ParentFont = False
        VAlign = vaCenter
      end
      object Memo26: TfrxMemoView
        Align = baWidth
        Left = 718.110700000000000000
        Top = 192.204724410000000000
        Height = 31.748031500000000000
        DisplayFormat.DecimalSeparator = '/'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
        HAlign = haRight
        Memo.UTF8 = (
          ' '#1591#168#1592#8225' '#1591#1726#1592#1662#1593#169#1592#1657#1593#169'  ')
        ParentFont = False
        VAlign = vaCenter
      end
      object MemDesc12: TfrxMemoView
        Align = baRight
        Left = 294.803413230000000000
        Top = 192.204724410000000000
        Width = 147.401596770000000000
        Height = 31.748031500000000000
        DisplayFormat.DecimalSeparator = '/'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
        HAlign = haRight
        Memo.UTF8 = (
          ' '#1591#168#1592#8225' '#1591#1726#1592#1662#1593#169#1592#1657#1593#169'  ')
        ParentFont = False
        VAlign = vaCenter
      end
      object MemDetail: TfrxMemoView
        Align = baWidth
        Top = 740.126470000000000000
        Width = 718.110700000000000000
        Height = 26.456710000000000000
        DisplayFormat.DecimalSeparator = '/'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
        HAlign = haCenter
        Memo.UTF8 = (
          #1593#169#1591#167#1591#177#1591#168#1591#177#1591#167#1592#8224' '#1591#162#1591#177#1591#180#1594#338#1592#710' '#1591#167#1592#8222#1593#169#1591#1726#1591#177#1592#710#1592#8224#1594#338#1593#169#1594#338)
        ParentFont = False
        VAlign = vaCenter
      end
      object MemDetail1: TfrxMemoView
        Align = baRight
        Left = 453.543770860000000000
        Top = 767.244094490000000000
        Width = 132.283464570000000000
        Height = 26.456710000000000000
        DisplayFormat.DecimalSeparator = '/'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
        HAlign = haRight
        Memo.UTF8 = (
          ' '#1591#167#1591#179#1591#1726#1591#174#1591#177#1591#167#1591#172)
        ParentFont = False
      end
      object MemDetail21: TfrxMemoView
        Align = baRight
        Left = 453.543770860000000000
        Top = 794.078740160000000000
        Width = 132.283464570000000000
        Height = 64.251968500000000000
        DisplayFormat.DecimalSeparator = '/'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = 'Arial'
        Font.Style = []
        Frame.Typ = [ftLeft, ftRight, ftBottom]
        HAlign = haRight
        Memo.UTF8 = (
          ' '#1591#167#1591#179#1591#1726#1591#174#1591#177#1591#167#1591#172'  ')
        ParentFont = False
        VAlign = vaCenter
      end
      object MemDetail2: TfrxMemoView
        Align = baRight
        Left = 585.827235430000000000
        Top = 767.362710000000000000
        Width = 132.283464570000000000
        Height = 26.456710000000000000
        DisplayFormat.DecimalSeparator = '/'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
        HAlign = haRight
        Memo.UTF8 = (
          ' '#1591#162#1592#8230#1591#167#1591#175#1592#8225' '#1591#179#1591#167#1591#178#1594#338)
        ParentFont = False
      end
      object MemDetail11: TfrxMemoView
        Align = baRight
        Left = 585.827235430000000000
        Top = 794.078740160000000000
        Width = 132.283464570000000000
        Height = 64.251968500000000000
        DisplayFormat.DecimalSeparator = '/'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = 'Arial'
        Font.Style = []
        Frame.Typ = [ftLeft, ftRight, ftBottom]
        HAlign = haRight
        Memo.UTF8 = (
          ' '#1591#162#1592#8230#1591#167#1591#175#1592#8225' '#1591#179#1591#167#1591#178#1594#338'  ')
        ParentFont = False
        VAlign = vaCenter
      end
      object MemDetail4: TfrxMemoView
        Align = baWidth
        Left = 132.283464566929100000
        Top = 767.244094490000000000
        Width = 188.976841723070900000
        Height = 26.456710000000000000
        DisplayFormat.DecimalSeparator = '/'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
        HAlign = haRight
        Memo.UTF8 = (
          ' '#1591#167#1591#179#1593#169#1592#8224' '#1592#1662#1592#8222#1591#1726)
        ParentFont = False
      end
      object MemDetail41: TfrxMemoView
        Align = baWidth
        Left = 132.283464566929100000
        Top = 794.078740160000000000
        Width = 188.976841723070900000
        Height = 64.251968500000000000
        DisplayFormat.DecimalSeparator = '/'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = 'Arial'
        Font.Style = []
        Frame.Typ = [ftLeft, ftRight, ftBottom]
        HAlign = haRight
        Memo.UTF8 = (
          ' '#1591#167#1591#179#1593#169#1592#8224' '#1592#1662#1592#8222#1591#1726'  ')
        ParentFont = False
        VAlign = vaCenter
      end
      object MemDetail5: TfrxMemoView
        Align = baRight
        Left = 321.260306290000000000
        Top = 767.244094490000000000
        Width = 132.283464570000000000
        Height = 26.456710000000000000
        DisplayFormat.DecimalSeparator = '/'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
        HAlign = haRight
        Memo.UTF8 = (
          ' '#1591#168#1591#179#1591#1726#1592#8225' '#1591#168#1592#8224#1591#175#1594#338' ')
        ParentFont = False
      end
      object MemDetail51: TfrxMemoView
        Align = baRight
        Left = 321.260306290000000000
        Top = 794.078740160000000000
        Width = 132.283464570000000000
        Height = 64.251968500000000000
        DisplayFormat.DecimalSeparator = '/'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = 'Arial'
        Font.Style = []
        Frame.Typ = [ftLeft, ftRight, ftBottom]
        HAlign = haRight
        Memo.UTF8 = (
          ' '#1591#168#1591#179#1591#1726#1592#8225' '#1591#168#1592#8224#1591#175#1594#338'  ')
        ParentFont = False
        VAlign = vaCenter
      end
      object MemDetail3: TfrxMemoView
        Align = baLeft
        Top = 767.244094490000000000
        Width = 132.283464566929100000
        Height = 26.456710000000000000
        DisplayFormat.DecimalSeparator = '/'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
        HAlign = haRight
        Memo.UTF8 = (
          ' '#1591#167#1591#179#1593#169#1592#8224)
        ParentFont = False
      end
      object MemDetail31: TfrxMemoView
        Align = baLeft
        Top = 794.039890000000000000
        Width = 132.283464566929100000
        Height = 64.251968500000000000
        DisplayFormat.DecimalSeparator = '/'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = 'Arial'
        Font.Style = []
        Frame.Typ = [ftLeft, ftRight, ftBottom]
        HAlign = haRight
        Memo.UTF8 = (
          ' '#1591#167#1591#179#1593#169#1592#8224'  ')
        ParentFont = False
        VAlign = vaCenter
      end
      object MemDesc60: TfrxMemoView
        Align = baRight
        Left = 362.834880000000000000
        Top = 482.118430000000000000
        Width = 166.299320000000000000
        Height = 26.456710000000000000
        DisplayFormat.DecimalSeparator = '/'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
        HAlign = haRight
        Memo.UTF8 = (
          ' '#1591#168#1591#174#1591#180)
        ParentFont = False
      end
      object MemDesc61: TfrxMemoView
        Align = baWidth
        Left = 162.519790000000000000
        Top = 482.094488190000000000
        Width = 200.315090000000000000
        Height = 26.456710000000000000
        DisplayFormat.DecimalSeparator = '/'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
        HAlign = haRight
        Memo.UTF8 = (
          ' '#1592#190#1592#8222#1591#167#1593#169' '#1591#167#1591#181#1592#8222#1594#338)
        ParentFont = False
      end
      object MemDesc62: TfrxMemoView
        Align = baLeft
        Top = 482.094488190000000000
        Width = 162.519790000000000000
        Height = 26.456710000000000000
        DisplayFormat.DecimalSeparator = '/'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
        HAlign = haRight
        Memo.UTF8 = (
          ' '#1592#190#1592#8222#1591#167#1593#169' '#1592#1662#1591#177#1591#185#1594#338)
        ParentFont = False
      end
      object MemDesc63: TfrxMemoView
        Align = baRight
        Left = 362.834880000000000000
        Top = 509.016080000000000000
        Width = 166.299320000000000000
        Height = 36.661417320000000000
        DisplayFormat.DecimalSeparator = '/'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
        HAlign = haRight
        Memo.UTF8 = (
          ' '#1591#168#1591#174#1591#180'  ')
        ParentFont = False
        VAlign = vaCenter
      end
      object MemDesc65: TfrxMemoView
        Align = baLeft
        Top = 508.929133860000000000
        Width = 162.519685040000000000
        Height = 36.661417320000000000
        DisplayFormat.DecimalSeparator = '/'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
        HAlign = haRight
        Memo.UTF8 = (
          ' '#1592#190#1592#8222#1591#167#1593#169' '#1592#1662#1591#177#1591#185#1592#1657'  ')
        ParentFont = False
        VAlign = vaCenter
      end
      object MemDesc64: TfrxMemoView
        Left = 162.519685040000000000
        Top = 508.929133860000000000
        Width = 200.314960630000000000
        Height = 36.661417320000000000
        DisplayFormat.DecimalSeparator = '/'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
        HAlign = haRight
        Memo.UTF8 = (
          ' '#1592#190#1592#8222#1591#167#1593#169' '#1591#167#1591#181#1592#8222#1592#1657'  ')
        ParentFont = False
        VAlign = vaCenter
      end
      object MHeader: TfrxMemoView
        Align = baWidth
        Width = 718.110700000000000000
        Height = 94.488250000000000000
        DisplayFormat.DecimalSeparator = '/'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -20
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        Frame.Typ = [ftLeft, ftRight, ftTop]
        HAlign = haCenter
        Memo.UTF8 = (
          #1591#180#1591#177#1593#169#1591#1726' '#1593#175#1591#179#1591#1726#1591#177#1591#180' '#1592#1662#1592#8224' '#1591#162#1592#710#1591#177#1591#167#1592#8224' '#1591#167#1591#183#1592#8222#1591#167#1591#185#1591#167#1591#1726' '#1594#338#1593#175#1591#167#1592#8224#1592#8225
          #1591#177#1592#710#1593#169#1591#180' '#1592#190#1591#177#1592#710#1592#8224#1591#175#1592#8225' '
          #1591#180#1592#8225#1591#177#1591#175#1591#167#1591#177#1594#338' '#1591#167#1591#181#1592#1662#1592#8225#1591#167#1592#8224)
        ParentFont = False
        VAlign = vaCenter
      end
      object MemName0: TfrxMemoView
        Align = baRight
        Left = 529.134200000000000000
        Top = 95.267780000000000000
        Width = 188.976500000000000000
        Height = 64.252010000000000000
        DisplayFormat.DecimalSeparator = '/'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -20
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
        HAlign = haRight
        Memo.UTF8 = (
          ' '#1591#167#1591#183#1592#8222#1591#167#1591#185#1591#167#1591#1726' '#1593#169#1592#8222#1594#338' '#1592#190#1591#177#1592#710#1592#8224#1591#175#1592#8225'  ')
        ParentFont = False
        VAlign = vaCenter
      end
      object MemDesc0: TfrxMemoView
        Align = baWidth
        Top = 95.267780000000000000
        Width = 529.134200000000000000
        Height = 64.251968500000000000
        DisplayFormat.DecimalSeparator = '/'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
        HAlign = haRight
        Memo.UTF8 = (
          ' '#1591#167#1591#183#1592#8222#1591#167#1591#185#1591#167#1591#1726' '#1593#169#1592#8222#1594#338' '#1592#190#1591#177#1592#710#1592#8224#1591#175#1592#8225'  ')
        ParentFont = False
        VAlign = vaCenter
      end
    end
  end
  object frxReport5: TfrxReport
    Version = '5.4.6'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick]
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = #1662#1610#1588' '#1601#1585#1590
    PrintOptions.PrintOnSheet = 0
    ReportOptions.CreateDate = 45655.501704953710000000
    ReportOptions.LastChange = 45655.570959884260000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      'begin'
      ''
      'end.')
    Left = 330
    Top = 102
    Datasets = <>
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
      object MemName1: TfrxMemoView
        Align = baRight
        ShiftMode = smDontShift
        Left = 529.134200000000000000
        Top = 94.606370000000000000
        Width = 188.976500000000000000
        Height = 64.252010000000000000
        DisplayFormat.DecimalSeparator = '/'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -20
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        Frame.Typ = [ftLeft, ftRight, ftTop]
        HAlign = haRight
        Memo.UTF8 = (
          ' '#1593#169#1592#8222#1591#167#1591#179#1592#8225' '#1592#190#1591#177#1592#710#1592#8224#1591#175#1592#8225' '#1591#1726#1591#177#1593#169#1594#338#1591#168#1594#338'  ')
        ParentFont = False
        VAlign = vaCenter
      end
      object MemName2: TfrxMemoView
        Align = baRight
        ShiftMode = smDontShift
        Left = 529.134200000000000000
        Top = 288.921460000000000000
        Width = 188.976500000000000000
        Height = 64.252010000000000000
        DisplayFormat.DecimalSeparator = '/'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -20
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
        HAlign = haRight
        Memo.UTF8 = (
          ' '#1591#180#1592#8230#1591#167#1591#177#1592#8225' '#1591#172#1592#8222#1591#175' '#1592#190#1591#177#1592#710#1592#8224#1591#175#1592#8225'  ')
        ParentFont = False
        VAlign = vaCenter
      end
      object MemName4: TfrxMemoView
        Align = baRight
        ShiftMode = smDontShift
        Left = 529.134200000000000000
        Top = 353.291590000000000000
        Width = 188.976500000000000000
        Height = 64.252010000000000000
        DisplayFormat.DecimalSeparator = '/'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -20
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
        HAlign = haRight
        Memo.UTF8 = (
          ' '#1592#8224#1591#167#1592#8230' '#1591#183#1591#177#1591#173'  ')
        ParentFont = False
        VAlign = vaCenter
      end
      object MemName5: TfrxMemoView
        Align = baRight
        ShiftMode = smDontShift
        Left = 377.953000000000000000
        Top = 417.661720000000000000
        Width = 340.157700000000000000
        Height = 64.252010000000000000
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -20
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
        HAlign = haRight
        Memo.UTF8 = (
          ' '#1592#8224#1591#167#1592#8230' '#1592#710' '#1592#8224#1591#167#1592#8230' '#1591#174#1591#167#1592#8224#1592#710#1591#167#1591#175#1593#175#1594#338'   ')
        ParentFont = False
        VAlign = vaCenter
      end
      object MemName6: TfrxMemoView
        Align = baRight
        ShiftMode = smDontShift
        Left = 529.134200000000000000
        Top = 546.519685039370100000
        Width = 188.976500000000000000
        Height = 64.252010000000000000
        DisplayFormat.DecimalSeparator = '/'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -20
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
        HAlign = haRight
        Memo.UTF8 = (
          ' '#1592#8230#1591#180#1591#174#1591#181#1591#167#1591#1726' '#1591#171#1591#168#1591#1726#1594#338' '#1592#8230#1592#8222#1593#169'  ')
        ParentFont = False
        VAlign = vaCenter
      end
      object MemName7: TfrxMemoView
        Align = baRight
        ShiftMode = smDontShift
        Left = 529.134200000000000000
        Top = 611.504330000000000000
        Width = 188.976500000000000000
        Height = 64.251968500000000000
        DisplayFormat.DecimalSeparator = '/'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -20
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        Frame.Typ = [ftLeft, ftRight, ftBottom]
        HAlign = haRight
        Memo.UTF8 = (
          ' '#1591#162#1591#175#1591#177#1591#179' '#1592#710#1592#8218#1592#710#1591#185' '#1592#8230#1592#8222#1593#169'  ')
        ParentFont = False
        VAlign = vaCenter
      end
      object MemName8: TfrxMemoView
        Align = baRight
        ShiftMode = smDontShift
        Left = 529.134200000000000000
        Top = 676.094930000000000000
        Width = 188.976500000000000000
        Height = 64.251968500000000000
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -20
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
        HAlign = haRight
        Memo.UTF8 = (
          ' '#1593#169#1591#175' '#1592#8224#1592#710#1591#179#1591#167#1591#178#1592#1657'  ')
        ParentFont = False
        VAlign = vaCenter
      end
      object MemName9: TfrxMemoView
        Align = baRight
        ShiftMode = smDontShift
        Left = 529.134200000000000000
        Top = 740.346940000000000000
        Width = 188.976500000000000000
        Height = 64.251968500000000000
        DisplayFormat.DecimalSeparator = '/'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -20
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
        HAlign = haRight
        Memo.UTF8 = (
          ' '#1591#1726#1592#710#1591#182#1594#338#1591#173#1591#167#1591#1726'  ')
        ParentFont = False
        VAlign = vaCenter
      end
      object MemDesc11: TfrxMemoView
        Align = baWidth
        ShiftMode = smDontShift
        Top = 95.047248980000000000
        Width = 529.134200000000000000
        Height = 64.251968500000000000
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        Frame.Typ = [ftLeft, ftRight, ftTop]
        HAlign = haRight
        Memo.UTF8 = (
          '')
        ParentFont = False
        VAlign = vaCenter
      end
      object MemDesc2: TfrxMemoView
        Align = baWidth
        ShiftMode = smDontShift
        Top = 288.921460000000000000
        Width = 529.134200000000000000
        Height = 64.251968500000000000
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
        HAlign = haRight
        ParentFont = False
        VAlign = vaCenter
      end
      object MemDesc4: TfrxMemoView
        Align = baWidth
        ShiftMode = smDontShift
        Top = 353.291590000000000000
        Width = 529.134200000000000000
        Height = 64.251968500000000000
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
        HAlign = haRight
        ParentFont = False
        VAlign = vaCenter
      end
      object MemDesc5: TfrxMemoView
        Align = baRight
        ShiftMode = smDontShift
        Left = 377.953000000000000000
        Top = 481.913730000000000000
        Width = 340.157700000000000000
        Height = 64.251968500000000000
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        Frame.Typ = [ftLeft, ftRight, ftTop]
        HAlign = haRight
        ParentFont = False
        VAlign = vaCenter
      end
      object MemDesc7: TfrxMemoView
        Align = baWidth
        ShiftMode = smDontShift
        Top = 611.504330000000000000
        Width = 529.134200000000000000
        Height = 64.251968500000000000
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        Frame.Typ = [ftLeft, ftRight, ftBottom]
        HAlign = haRight
        ParentFont = False
        VAlign = vaCenter
      end
      object MemDesc8: TfrxMemoView
        Align = baWidth
        ShiftMode = smDontShift
        Top = 676.094930000000000000
        Width = 529.134200000000000000
        Height = 64.251968500000000000
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
        HAlign = haRight
        ParentFont = False
        VAlign = vaCenter
      end
      object MemDesc9: TfrxMemoView
        Align = baWidth
        ShiftMode = smDontShift
        Top = 740.346940000000000000
        Width = 529.134200000000000000
        Height = 64.251968500000000000
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
        HAlign = haRight
        ParentFont = False
        VAlign = vaCenter
      end
      object MemDetail: TfrxMemoView
        Align = baWidth
        ShiftMode = smDontShift
        Top = 805.158010000000000000
        Width = 718.110700000000000000
        Height = 26.456710000000000000
        DisplayFormat.DecimalSeparator = '/'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -20
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        Frame.Typ = [ftLeft, ftRight, ftBottom]
        HAlign = haCenter
        Memo.UTF8 = (
          #1593#169#1591#167#1591#177#1591#168#1591#177#1591#167#1592#8224' '#1591#162#1591#177#1591#180#1594#338#1592#710' '#1591#167#1592#8222#1593#169#1591#1726#1591#177#1592#710#1592#8224#1594#338#1593#169#1594#338)
        ParentFont = False
        VAlign = vaCenter
      end
      object MemDetail1: TfrxMemoView
        Align = baRight
        ShiftMode = smDontShift
        Left = 453.543770860000000000
        Top = 832.275634490000000000
        Width = 132.283464570000000000
        Height = 26.456710000000000000
        DisplayFormat.DecimalSeparator = '/'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -19
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
        HAlign = haRight
        Memo.UTF8 = (
          ' '#1591#167#1591#179#1591#1726#1591#174#1591#177#1591#167#1591#172)
        ParentFont = False
      end
      object MemDetail21: TfrxMemoView
        Align = baRight
        ShiftMode = smDontShift
        Left = 453.543770860000000000
        Top = 859.110280160000000000
        Width = 132.283464570000000000
        Height = 64.251968500000000000
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = 'Arial'
        Font.Style = []
        Frame.Typ = [ftLeft, ftRight, ftBottom]
        HAlign = haRight
        ParentFont = False
        VAlign = vaCenter
      end
      object MemDetail2: TfrxMemoView
        Align = baRight
        ShiftMode = smDontShift
        Left = 585.827235430000000000
        Top = 832.394250000000000000
        Width = 132.283464570000000000
        Height = 26.456710000000000000
        DisplayFormat.DecimalSeparator = '/'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -19
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
        HAlign = haRight
        Memo.UTF8 = (
          ' '#1591#162#1592#8230#1591#167#1591#175#1592#8225' '#1591#179#1591#167#1591#178#1594#338)
        ParentFont = False
      end
      object MemDetail11: TfrxMemoView
        Align = baRight
        ShiftMode = smDontShift
        Left = 585.827235430000000000
        Top = 859.110280160000000000
        Width = 132.283464570000000000
        Height = 64.251968500000000000
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = 'Arial'
        Font.Style = []
        Frame.Typ = [ftLeft, ftRight, ftBottom]
        HAlign = haRight
        ParentFont = False
        VAlign = vaCenter
      end
      object MemDetail4: TfrxMemoView
        Align = baWidth
        ShiftMode = smDontShift
        Left = 139.842524570000000000
        Top = 832.275634490000000000
        Width = 173.858721720000000000
        Height = 26.456710000000000000
        DisplayFormat.DecimalSeparator = '/'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -19
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
        HAlign = haRight
        Memo.UTF8 = (
          ' '#1591#167#1591#179#1593#169#1592#8224' '#1592#1662#1592#8222#1591#1726)
        ParentFont = False
      end
      object MemDetail41: TfrxMemoView
        Align = baWidth
        ShiftMode = smDontShift
        Left = 139.842524570000000000
        Top = 859.110280160000000000
        Width = 173.858721720000000000
        Height = 64.251968500000000000
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = 'Arial'
        Font.Style = []
        Frame.Typ = [ftLeft, ftRight, ftBottom]
        HAlign = haRight
        ParentFont = False
        VAlign = vaCenter
      end
      object MemDetail5: TfrxMemoView
        Align = baRight
        ShiftMode = smDontShift
        Left = 313.701246290000000000
        Top = 832.275634490000000000
        Width = 139.842524570000000000
        Height = 26.456710000000000000
        DisplayFormat.DecimalSeparator = '/'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -19
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
        HAlign = haRight
        Memo.UTF8 = (
          ' '#1591#168#1591#179#1591#1726#1592#8225' '#1591#168#1592#8224#1591#175#1594#338' ')
        ParentFont = False
      end
      object MemDetail51: TfrxMemoView
        Align = baRight
        ShiftMode = smDontShift
        Left = 313.701246290000000000
        Top = 859.110280160000000000
        Width = 139.842524570000000000
        Height = 64.251968500000000000
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = 'Arial'
        Font.Style = []
        Frame.Typ = [ftLeft, ftRight, ftBottom]
        HAlign = haRight
        ParentFont = False
        VAlign = vaCenter
      end
      object MemDetail3: TfrxMemoView
        Align = baLeft
        ShiftMode = smDontShift
        Top = 832.275634490000000000
        Width = 139.842524570000000000
        Height = 26.456710000000000000
        DisplayFormat.DecimalSeparator = '/'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -19
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
        HAlign = haRight
        Memo.UTF8 = (
          ' '#1591#167#1591#179#1593#169#1592#8224)
        ParentFont = False
      end
      object MemDetail31: TfrxMemoView
        Align = baLeft
        ShiftMode = smDontShift
        Top = 859.071430000000000000
        Width = 139.842524570000000000
        Height = 64.251968500000000000
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = 'Arial'
        Font.Style = []
        Frame.Typ = [ftLeft, ftRight, ftBottom]
        HAlign = haRight
        ParentFont = False
        VAlign = vaCenter
      end
      object MemDesc60: TfrxMemoView
        Align = baRight
        ShiftMode = smDontShift
        Left = 377.953000000000000000
        Top = 547.149970000000000000
        Width = 151.181200000000000000
        Height = 26.456710000000000000
        DisplayFormat.DecimalSeparator = '/'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -20
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
        HAlign = haRight
        Memo.UTF8 = (
          ' '#1591#168#1591#174#1591#180)
        ParentFont = False
      end
      object MemDesc61: TfrxMemoView
        Align = baWidth
        ShiftMode = smDontShift
        Left = 188.976500000000000000
        Top = 547.126028190000000000
        Width = 188.976500000000000000
        Height = 26.456710000000000000
        DisplayFormat.DecimalSeparator = '/'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -20
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
        HAlign = haRight
        Memo.UTF8 = (
          ' '#1592#190#1592#8222#1591#167#1593#169' '#1591#167#1591#181#1592#8222#1594#338)
        ParentFont = False
      end
      object MemDesc62: TfrxMemoView
        Align = baLeft
        ShiftMode = smDontShift
        Top = 547.126028190000000000
        Width = 188.976500000000000000
        Height = 26.456710000000000000
        DisplayFormat.DecimalSeparator = '/'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -20
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
        HAlign = haRight
        Memo.UTF8 = (
          ' '#1592#190#1592#8222#1591#167#1593#169' '#1592#1662#1591#177#1591#185#1594#338)
        ParentFont = False
      end
      object MemDesc63: TfrxMemoView
        Align = baRight
        ShiftMode = smDontShift
        Left = 377.953000000000000000
        Top = 574.047620000000000000
        Width = 151.181200000000000000
        Height = 36.661417320000000000
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
        HAlign = haRight
        ParentFont = False
        VAlign = vaCenter
      end
      object MemDesc65: TfrxMemoView
        Align = baLeft
        ShiftMode = smDontShift
        Top = 573.960673860000000000
        Width = 188.976395040000000000
        Height = 36.661417320000000000
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
        HAlign = haRight
        ParentFont = False
        VAlign = vaCenter
      end
      object MemDesc64: TfrxMemoView
        Align = baWidth
        ShiftMode = smDontShift
        Left = 188.976395040000000000
        Top = 573.960673860000000000
        Width = 188.976604960000000000
        Height = 36.661417320000000000
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
        HAlign = haRight
        ParentFont = False
        VAlign = vaCenter
      end
      object MHeader: TfrxMemoView
        Align = baWidth
        ShiftMode = smDontShift
        Width = 718.110700000000000000
        Height = 94.488250000000000000
        DisplayFormat.DecimalSeparator = '/'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -24
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        Frame.Typ = [ftLeft, ftRight, ftTop]
        HAlign = haCenter
        Memo.UTF8 = (
          #1591#180#1591#177#1593#169#1591#1726' '#1593#175#1591#179#1591#1726#1591#177#1591#180' '#1592#1662#1592#8224' '#1591#162#1592#710#1591#177#1591#167#1592#8224' '#1591#167#1591#183#1592#8222#1591#167#1591#185#1591#167#1591#1726' '#1594#338#1593#175#1591#167#1592#8224#1592#8225
          #1591#177#1592#710#1593#169#1591#180' '#1592#190#1591#177#1592#710#1592#8224#1591#175#1592#8225' '
          #1591#180#1592#8225#1591#177#1591#175#1591#167#1591#177#1594#338' '#1591#167#1591#181#1592#1662#1592#8225#1591#167#1592#8224)
        ParentFont = False
        VAlign = vaCenter
      end
      object MemName0: TfrxMemoView
        Align = baRight
        ShiftMode = smDontShift
        Left = 529.134200000000000000
        Top = 159.519790000000000000
        Width = 188.976500000000000000
        Height = 128.504020000000000000
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -20
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        Frame.Typ = [ftLeft, ftRight, ftTop]
        HAlign = haRight
        Memo.UTF8 = (
          ' '#1591#167#1591#183#1592#8222#1591#167#1591#185#1591#167#1591#1726' '#1593#169#1592#8222#1594#338' '#1592#190#1591#177#1592#710#1592#8224#1591#175#1592#8225'  ')
        ParentFont = False
        VAlign = vaCenter
      end
      object MemDesc0: TfrxMemoView
        Align = baWidth
        ShiftMode = smDontShift
        Top = 159.519790000000000000
        Width = 529.134200000000000000
        Height = 128.503978500000000000
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        Frame.Typ = [ftLeft, ftRight, ftTop]
        HAlign = haRight
        ParentFont = False
      end
      object Memo1: TfrxMemoView
        Align = baLeft
        ShiftMode = smDontShift
        Top = 417.637795280000000000
        Width = 188.976500000000000000
        Height = 64.252010000000000000
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -20
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
        HAlign = haRight
        Memo.UTF8 = (
          #1593#169#1591#175#1592#8230#1592#8222#1592#1657'  ')
        ParentFont = False
        VAlign = vaCenter
      end
      object Memo2: TfrxMemoView
        Align = baLeft
        ShiftMode = smDontShift
        Top = 481.889763780000000000
        Width = 188.976500000000000000
        Height = 64.251968500000000000
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        Frame.Typ = [ftLeft, ftRight, ftTop]
        HAlign = haRight
        ParentFont = False
        VAlign = vaCenter
      end
      object Memo3: TfrxMemoView
        Align = baWidth
        ShiftMode = smDontShift
        Left = 188.976500000000000000
        Top = 417.637795280000000000
        Width = 188.976500000000000000
        Height = 64.252010000000000000
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -20
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
        HAlign = haRight
        Memo.UTF8 = (
          ' '#1592#8224#1591#167#1592#8230' '#1592#190#1591#175#1591#177'  ')
        ParentFont = False
        VAlign = vaCenter
      end
      object Memo4: TfrxMemoView
        Align = baWidth
        ShiftMode = smDontShift
        Left = 188.976500000000000000
        Top = 481.889763780000000000
        Width = 188.976500000000000000
        Height = 64.251968500000000000
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        Frame.Typ = [ftLeft, ftRight, ftTop]
        HAlign = haRight
        ParentFont = False
        VAlign = vaCenter
      end
    end
  end
  object frxReport7: TfrxReport
    Version = '5.4.6'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick]
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = #1662#1610#1588' '#1601#1585#1590
    PrintOptions.PrintOnSheet = 0
    ReportOptions.CreateDate = 45655.501704953710000000
    ReportOptions.LastChange = 45655.570959884260000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      'begin'
      ''
      'end.')
    Left = 98
    Top = 158
    Datasets = <>
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
      object MemName1: TfrxMemoView
        Align = baRight
        ShiftMode = smDontShift
        Left = 529.134200000000000000
        Top = 94.606370000000000000
        Width = 188.976500000000000000
        Height = 64.252010000000000000
        DisplayFormat.DecimalSeparator = '/'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -20
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        Frame.Typ = [ftLeft, ftRight, ftTop]
        HAlign = haRight
        Memo.UTF8 = (
          ' '#1593#169#1592#8222#1591#167#1591#179#1592#8225' '#1592#190#1591#177#1592#710#1592#8224#1591#175#1592#8225' '#1591#1726#1591#177#1593#169#1594#338#1591#168#1594#338'  ')
        ParentFont = False
        VAlign = vaCenter
      end
      object MemName2: TfrxMemoView
        Align = baRight
        ShiftMode = smDontShift
        Left = 529.134200000000000000
        Top = 288.921460000000000000
        Width = 188.976500000000000000
        Height = 64.252010000000000000
        DisplayFormat.DecimalSeparator = '/'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -20
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
        HAlign = haRight
        Memo.UTF8 = (
          ' '#1591#180#1592#8230#1591#167#1591#177#1592#8225' '#1591#172#1592#8222#1591#175' '#1592#190#1591#177#1592#710#1592#8224#1591#175#1592#8225'  ')
        ParentFont = False
        VAlign = vaCenter
      end
      object MemName4: TfrxMemoView
        Align = baRight
        ShiftMode = smDontShift
        Left = 529.134200000000000000
        Top = 353.291590000000000000
        Width = 188.976500000000000000
        Height = 64.252010000000000000
        DisplayFormat.DecimalSeparator = '/'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -20
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
        HAlign = haRight
        Memo.UTF8 = (
          ' '#1592#8224#1591#167#1592#8230' '#1591#183#1591#177#1591#173'  ')
        ParentFont = False
        VAlign = vaCenter
      end
      object MemName5: TfrxMemoView
        Align = baRight
        ShiftMode = smDontShift
        Left = 377.953000000000000000
        Top = 417.661720000000000000
        Width = 340.157700000000000000
        Height = 64.252010000000000000
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -20
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
        HAlign = haRight
        Memo.UTF8 = (
          ' '#1592#8224#1591#167#1592#8230' '#1592#710' '#1592#8224#1591#167#1592#8230' '#1591#174#1591#167#1592#8224#1592#710#1591#167#1591#175#1593#175#1594#338'   ')
        ParentFont = False
        VAlign = vaCenter
      end
      object MemName6: TfrxMemoView
        Align = baRight
        ShiftMode = smDontShift
        Left = 529.134200000000000000
        Top = 546.519685039370100000
        Width = 188.976500000000000000
        Height = 64.252010000000000000
        DisplayFormat.DecimalSeparator = '/'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -20
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
        HAlign = haRight
        Memo.UTF8 = (
          ' '#1592#8230#1591#180#1591#174#1591#181#1591#167#1591#1726' '#1591#171#1591#168#1591#1726#1594#338' '#1592#8230#1592#8222#1593#169'  ')
        ParentFont = False
        VAlign = vaCenter
      end
      object MemName7: TfrxMemoView
        Align = baRight
        ShiftMode = smDontShift
        Left = 529.134200000000000000
        Top = 611.504330000000000000
        Width = 188.976500000000000000
        Height = 64.251968500000000000
        DisplayFormat.DecimalSeparator = '/'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -20
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        Frame.Typ = [ftLeft, ftRight, ftBottom]
        HAlign = haRight
        Memo.UTF8 = (
          ' '#1591#162#1591#175#1591#177#1591#179' '#1592#710#1592#8218#1592#710#1591#185' '#1592#8230#1592#8222#1593#169'  ')
        ParentFont = False
        VAlign = vaCenter
      end
      object MemName8: TfrxMemoView
        Align = baRight
        ShiftMode = smDontShift
        Left = 529.134200000000000000
        Top = 676.094930000000000000
        Width = 188.976500000000000000
        Height = 64.251968500000000000
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -20
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
        HAlign = haRight
        Memo.UTF8 = (
          ' '#1593#169#1591#175' '#1592#8224#1592#710#1591#179#1591#167#1591#178#1592#1657'  ')
        ParentFont = False
        VAlign = vaCenter
      end
      object MemName9: TfrxMemoView
        Align = baRight
        ShiftMode = smDontShift
        Left = 529.134200000000000000
        Top = 740.346940000000000000
        Width = 188.976500000000000000
        Height = 64.251968500000000000
        DisplayFormat.DecimalSeparator = '/'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -20
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
        HAlign = haRight
        Memo.UTF8 = (
          ' '#1591#1726#1592#710#1591#182#1594#338#1591#173#1591#167#1591#1726'  ')
        ParentFont = False
        VAlign = vaCenter
      end
      object MemDesc11: TfrxMemoView
        Align = baWidth
        ShiftMode = smDontShift
        Top = 95.047248980000000000
        Width = 529.134200000000000000
        Height = 64.251968500000000000
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        Frame.Typ = [ftLeft, ftRight, ftTop]
        HAlign = haRight
        Memo.UTF8 = (
          '')
        ParentFont = False
        VAlign = vaCenter
      end
      object MemDesc2: TfrxMemoView
        Align = baWidth
        ShiftMode = smDontShift
        Top = 288.921460000000000000
        Width = 529.134200000000000000
        Height = 64.251968500000000000
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
        HAlign = haRight
        ParentFont = False
        VAlign = vaCenter
      end
      object MemDesc4: TfrxMemoView
        Align = baWidth
        ShiftMode = smDontShift
        Top = 353.291590000000000000
        Width = 529.134200000000000000
        Height = 64.251968500000000000
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
        HAlign = haRight
        ParentFont = False
        VAlign = vaCenter
      end
      object MemDesc5: TfrxMemoView
        Align = baRight
        ShiftMode = smDontShift
        Left = 377.953000000000000000
        Top = 481.913730000000000000
        Width = 340.157700000000000000
        Height = 64.251968500000000000
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        Frame.Typ = [ftLeft, ftRight, ftTop]
        HAlign = haRight
        ParentFont = False
        VAlign = vaCenter
      end
      object MemDesc7: TfrxMemoView
        Align = baWidth
        ShiftMode = smDontShift
        Top = 611.504330000000000000
        Width = 529.134200000000000000
        Height = 64.251968500000000000
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        Frame.Typ = [ftLeft, ftRight, ftBottom]
        HAlign = haRight
        ParentFont = False
        VAlign = vaCenter
      end
      object MemDesc8: TfrxMemoView
        Align = baWidth
        ShiftMode = smDontShift
        Top = 676.094930000000000000
        Width = 529.134200000000000000
        Height = 64.251968500000000000
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
        HAlign = haRight
        ParentFont = False
        VAlign = vaCenter
      end
      object MemDesc9: TfrxMemoView
        Align = baWidth
        ShiftMode = smDontShift
        Top = 740.346940000000000000
        Width = 529.134200000000000000
        Height = 64.251968500000000000
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
        HAlign = haRight
        ParentFont = False
        VAlign = vaCenter
      end
      object MemDetail: TfrxMemoView
        Align = baWidth
        ShiftMode = smDontShift
        Top = 805.158010000000000000
        Width = 718.110700000000000000
        Height = 26.456710000000000000
        DisplayFormat.DecimalSeparator = '/'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -20
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        Frame.Typ = [ftLeft, ftRight, ftBottom]
        HAlign = haCenter
        Memo.UTF8 = (
          #1593#169#1591#167#1591#177#1591#168#1591#177#1591#167#1592#8224' '#1591#162#1591#177#1591#180#1594#338#1592#710' '#1591#167#1592#8222#1593#169#1591#1726#1591#177#1592#710#1592#8224#1594#338#1593#169#1594#338)
        ParentFont = False
        VAlign = vaCenter
      end
      object MemDetail1: TfrxMemoView
        Align = baRight
        ShiftMode = smDontShift
        Left = 453.543770860000000000
        Top = 832.275634490000000000
        Width = 132.283464570000000000
        Height = 26.456710000000000000
        DisplayFormat.DecimalSeparator = '/'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -19
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
        HAlign = haRight
        Memo.UTF8 = (
          ' '#1591#167#1591#179#1591#1726#1591#174#1591#177#1591#167#1591#172)
        ParentFont = False
      end
      object MemDetail21: TfrxMemoView
        Align = baRight
        ShiftMode = smDontShift
        Left = 453.543770860000000000
        Top = 859.110280160000000000
        Width = 132.283464570000000000
        Height = 64.251968500000000000
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = 'Arial'
        Font.Style = []
        Frame.Typ = [ftLeft, ftRight, ftBottom]
        HAlign = haRight
        ParentFont = False
        VAlign = vaCenter
      end
      object MemDetail2: TfrxMemoView
        Align = baRight
        ShiftMode = smDontShift
        Left = 585.827235430000000000
        Top = 832.394250000000000000
        Width = 132.283464570000000000
        Height = 26.456710000000000000
        DisplayFormat.DecimalSeparator = '/'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -19
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
        HAlign = haRight
        Memo.UTF8 = (
          ' '#1591#162#1592#8230#1591#167#1591#175#1592#8225' '#1591#179#1591#167#1591#178#1594#338)
        ParentFont = False
      end
      object MemDetail11: TfrxMemoView
        Align = baRight
        ShiftMode = smDontShift
        Left = 585.827235430000000000
        Top = 859.110280160000000000
        Width = 132.283464570000000000
        Height = 64.251968500000000000
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = 'Arial'
        Font.Style = []
        Frame.Typ = [ftLeft, ftRight, ftBottom]
        HAlign = haRight
        ParentFont = False
        VAlign = vaCenter
      end
      object MemDetail4: TfrxMemoView
        Align = baWidth
        ShiftMode = smDontShift
        Left = 139.842524570000000000
        Top = 832.275634490000000000
        Width = 173.858721720000000000
        Height = 26.456710000000000000
        DisplayFormat.DecimalSeparator = '/'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -19
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
        HAlign = haRight
        Memo.UTF8 = (
          ' '#1591#167#1591#179#1593#169#1592#8224' '#1592#1662#1592#8222#1591#1726)
        ParentFont = False
      end
      object MemDetail41: TfrxMemoView
        Align = baWidth
        ShiftMode = smDontShift
        Left = 139.842524570000000000
        Top = 859.110280160000000000
        Width = 173.858721720000000000
        Height = 64.251968500000000000
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = 'Arial'
        Font.Style = []
        Frame.Typ = [ftLeft, ftRight, ftBottom]
        HAlign = haRight
        ParentFont = False
        VAlign = vaCenter
      end
      object MemDetail5: TfrxMemoView
        Align = baRight
        ShiftMode = smDontShift
        Left = 313.701246290000000000
        Top = 832.275634490000000000
        Width = 139.842524570000000000
        Height = 26.456710000000000000
        DisplayFormat.DecimalSeparator = '/'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -19
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
        HAlign = haRight
        Memo.UTF8 = (
          ' '#1591#168#1591#179#1591#1726#1592#8225' '#1591#168#1592#8224#1591#175#1594#338' ')
        ParentFont = False
      end
      object MemDetail51: TfrxMemoView
        Align = baRight
        ShiftMode = smDontShift
        Left = 313.701246290000000000
        Top = 859.110280160000000000
        Width = 139.842524570000000000
        Height = 64.251968500000000000
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = 'Arial'
        Font.Style = []
        Frame.Typ = [ftLeft, ftRight, ftBottom]
        HAlign = haRight
        ParentFont = False
        VAlign = vaCenter
      end
      object MemDetail3: TfrxMemoView
        Align = baLeft
        ShiftMode = smDontShift
        Top = 832.275634490000000000
        Width = 139.842524570000000000
        Height = 26.456710000000000000
        DisplayFormat.DecimalSeparator = '/'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -19
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
        HAlign = haRight
        Memo.UTF8 = (
          ' '#1591#167#1591#179#1593#169#1592#8224)
        ParentFont = False
      end
      object MemDetail31: TfrxMemoView
        Align = baLeft
        ShiftMode = smDontShift
        Top = 859.071430000000000000
        Width = 139.842524570000000000
        Height = 64.251968500000000000
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = 'Arial'
        Font.Style = []
        Frame.Typ = [ftLeft, ftRight, ftBottom]
        HAlign = haRight
        ParentFont = False
        VAlign = vaCenter
      end
      object MemDesc60: TfrxMemoView
        Align = baRight
        ShiftMode = smDontShift
        Left = 377.953000000000000000
        Top = 547.149970000000000000
        Width = 151.181200000000000000
        Height = 26.456710000000000000
        DisplayFormat.DecimalSeparator = '/'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -20
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
        HAlign = haRight
        Memo.UTF8 = (
          ' '#1591#168#1591#174#1591#180)
        ParentFont = False
      end
      object MemDesc61: TfrxMemoView
        Align = baWidth
        ShiftMode = smDontShift
        Left = 188.976500000000000000
        Top = 547.126028190000000000
        Width = 188.976500000000000000
        Height = 26.456710000000000000
        DisplayFormat.DecimalSeparator = '/'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -20
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
        HAlign = haRight
        Memo.UTF8 = (
          ' '#1592#190#1592#8222#1591#167#1593#169' '#1591#167#1591#181#1592#8222#1594#338)
        ParentFont = False
      end
      object MemDesc62: TfrxMemoView
        Align = baLeft
        ShiftMode = smDontShift
        Top = 547.126028190000000000
        Width = 188.976500000000000000
        Height = 26.456710000000000000
        DisplayFormat.DecimalSeparator = '/'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -20
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
        HAlign = haRight
        Memo.UTF8 = (
          ' '#1592#190#1592#8222#1591#167#1593#169' '#1592#1662#1591#177#1591#185#1594#338)
        ParentFont = False
      end
      object MemDesc63: TfrxMemoView
        Align = baRight
        ShiftMode = smDontShift
        Left = 377.953000000000000000
        Top = 574.047620000000000000
        Width = 151.181200000000000000
        Height = 36.661417320000000000
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
        HAlign = haRight
        ParentFont = False
        VAlign = vaCenter
      end
      object MemDesc65: TfrxMemoView
        Align = baLeft
        ShiftMode = smDontShift
        Top = 573.960673860000000000
        Width = 188.976395040000000000
        Height = 36.661417320000000000
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
        HAlign = haRight
        ParentFont = False
        VAlign = vaCenter
      end
      object MemDesc64: TfrxMemoView
        Align = baWidth
        ShiftMode = smDontShift
        Left = 188.976395040000000000
        Top = 573.960673860000000000
        Width = 188.976604960000000000
        Height = 36.661417320000000000
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
        HAlign = haRight
        ParentFont = False
        VAlign = vaCenter
      end
      object MHeader: TfrxMemoView
        Align = baWidth
        ShiftMode = smDontShift
        Width = 718.110700000000000000
        Height = 94.488250000000000000
        DisplayFormat.DecimalSeparator = '/'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -24
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        Frame.Typ = [ftLeft, ftRight, ftTop]
        HAlign = haCenter
        Memo.UTF8 = (
          #1591#180#1591#177#1593#169#1591#1726' '#1593#175#1591#179#1591#1726#1591#177#1591#180' '#1592#1662#1592#8224' '#1591#162#1592#710#1591#177#1591#167#1592#8224' '#1591#167#1591#183#1592#8222#1591#167#1591#185#1591#167#1591#1726' '#1594#338#1593#175#1591#167#1592#8224#1592#8225
          #1591#177#1592#710#1593#169#1591#180' '#1592#190#1591#177#1592#710#1592#8224#1591#175#1592#8225' '
          #1591#180#1592#8225#1591#177#1591#175#1591#167#1591#177#1594#338' '#1591#167#1591#181#1592#1662#1592#8225#1591#167#1592#8224)
        ParentFont = False
        VAlign = vaCenter
      end
      object MemName0: TfrxMemoView
        Align = baRight
        ShiftMode = smDontShift
        Left = 529.134200000000000000
        Top = 159.519790000000000000
        Width = 188.976500000000000000
        Height = 128.504020000000000000
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -20
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        Frame.Typ = [ftLeft, ftRight, ftTop]
        HAlign = haRight
        Memo.UTF8 = (
          ' '#1591#167#1591#183#1592#8222#1591#167#1591#185#1591#167#1591#1726' '#1593#169#1592#8222#1594#338' '#1592#190#1591#177#1592#710#1592#8224#1591#175#1592#8225'  ')
        ParentFont = False
        VAlign = vaCenter
      end
      object MemDesc0: TfrxMemoView
        Align = baWidth
        ShiftMode = smDontShift
        Top = 159.519790000000000000
        Width = 529.134200000000000000
        Height = 128.503978500000000000
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        Frame.Typ = [ftLeft, ftRight, ftTop]
        HAlign = haRight
        ParentFont = False
      end
      object Memo1: TfrxMemoView
        Align = baLeft
        ShiftMode = smDontShift
        Top = 417.637795280000000000
        Width = 188.976500000000000000
        Height = 64.252010000000000000
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -20
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
        HAlign = haRight
        Memo.UTF8 = (
          #1593#169#1591#175#1592#8230#1592#8222#1592#1657'  ')
        ParentFont = False
        VAlign = vaCenter
      end
      object Memo2: TfrxMemoView
        Align = baLeft
        ShiftMode = smDontShift
        Top = 481.889763780000000000
        Width = 188.976500000000000000
        Height = 64.251968500000000000
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        Frame.Typ = [ftLeft, ftRight, ftTop]
        HAlign = haRight
        ParentFont = False
        VAlign = vaCenter
      end
      object Memo3: TfrxMemoView
        Align = baWidth
        ShiftMode = smDontShift
        Left = 188.976500000000000000
        Top = 417.637795280000000000
        Width = 188.976500000000000000
        Height = 64.252010000000000000
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -20
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
        HAlign = haRight
        Memo.UTF8 = (
          ' '#1592#8224#1591#167#1592#8230' '#1592#190#1591#175#1591#177'  ')
        ParentFont = False
        VAlign = vaCenter
      end
      object Memo4: TfrxMemoView
        Align = baWidth
        ShiftMode = smDontShift
        Left = 188.976500000000000000
        Top = 481.889763780000000000
        Width = 188.976500000000000000
        Height = 64.251968500000000000
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        Frame.Typ = [ftLeft, ftRight, ftTop]
        HAlign = haRight
        ParentFont = False
        VAlign = vaCenter
      end
    end
  end
  object frxReportTestPrinter: TfrxReport
    Version = '5.4.6'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick]
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = #1662#1610#1588' '#1601#1585#1590
    PrintOptions.PrintOnSheet = 0
    ReportOptions.CreateDate = 45655.501704953710000000
    ReportOptions.LastChange = 45655.501704953710000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      'begin'
      ''
      'end.')
    Left = 74
    Top = 310
    Datasets = <>
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
      object MHeader: TfrxMemoView
        Align = baWidth
        Width = 718.110700000000000000
        Height = 94.488250000000000000
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -20
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
        HAlign = haCenter
        Memo.UTF8 = (
          'Test Printer'
          #1591#1726#1591#179#1591#1726' '#1592#190#1591#177#1592#1657#1592#8224#1591#1726#1591#177)
        ParentFont = False
        VAlign = vaCenter
      end
    end
  end
  object CDTemp__: TClientDataSet
    Aggregates = <>
    PacketRecords = 1000
    Params = <>
    Left = 445
    Top = 237
    object CDTemp__F1: TStringField
      DisplayWidth = 250
      FieldName = 'F1'
      Size = 250
    end
    object CDTemp__F2: TStringField
      DisplayWidth = 250
      FieldName = 'F2'
      Size = 250
    end
    object CDTemp__F3: TStringField
      DisplayWidth = 250
      FieldName = 'F3'
      Size = 250
    end
    object CDTemp__F4: TStringField
      DisplayWidth = 250
      FieldName = 'F4'
      Size = 250
    end
    object CDTemp__F5: TStringField
      DisplayWidth = 300
      FieldName = 'F5'
      Size = 300
    end
    object CDTemp__F6: TStringField
      DisplayWidth = 250
      FieldName = 'F6'
      Size = 250
    end
    object CDTemp__F7: TStringField
      DisplayWidth = 10
      FieldName = 'F7'
      Size = 10
    end
    object CDTemp__F8: TStringField
      DisplayWidth = 250
      FieldName = 'F8'
      Size = 250
    end
    object CDTemp__F9: TStringField
      DisplayWidth = 250
      FieldName = 'F9'
      Size = 250
    end
    object CDTemp__F10: TStringField
      DisplayWidth = 250
      FieldName = 'F10'
      Size = 250
    end
    object CDTemp__F11: TStringField
      DisplayWidth = 250
      FieldName = 'F11'
      Size = 250
    end
    object CDTemp__F12: TStringField
      DisplayWidth = 250
      FieldName = 'F12'
      Size = 250
    end
    object CDTemp__F13: TStringField
      DisplayWidth = 500
      FieldName = 'F13'
      Size = 500
    end
  end
  object DataSource1: TDataSource
    DataSet = DM.CDTemp
    Left = 334
    Top = 311
  end
  object frxDBReport: TfrxDBDataset
    UserName = #1670#1575#1662
    CloseDataSource = False
    FieldAliases.Strings = (
      'F1='#1705#1604#1575#1587#1607' '#1662#1585#1608#1606#1583#1607' '#1578#1585#1705#1610#1576#1610
      'F2='#1575#1591#1604#1575#1593#1575#1578' '#1705#1604#1610' '#1662#1585#1608#1606#1583#1607
      'F3='#1588#1605#1575#1585#1607' '#1580#1604#1583' '#1662#1585#1608#1606#1583#1607
      'F4='#1606#1575#1605' '#1591#1585#1581
      'F5='#1606#1575#1605' '#1608#1606#1575#1605' '#1582#1575#1606#1608#1575#1583#1711#1610
      'F6='#1606#1575#1605' '#1662#1583#1585
      'F7='#1705#1583#1605#1604#1610
      'F8='#1705#1583#1606#1608#1587#1575#1586#1610
      'F9='#1576#1582#1588
      'F10='#1662#1604#1575#1705' '#1575#1589#1604#1610
      'F11='#1662#1604#1575#1705' '#1601#1585#1593#1610
      'F12='#1570#1583#1585#1587' '#1608#1602#1608#1593' '#1605#1604#1705
      'F13='#1578#1608#1590#1610#1581#1575#1578)
    DataSource = DataSource1
    BCDToCurrency = False
    Left = 256
    Top = 309
  end
  object XlsExport: TfrxXLSXExport
    UseFileCache = True
    ShowProgress = True
    OverwritePrompt = False
    DataOnly = False
    ChunkSize = 0
    PictureType = gpPNG
    Left = 291
    Top = 20
  end
  object frxReport_Main: TfrxReport
    Version = '5.4.6'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick]
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = #1662#1610#1588' '#1601#1585#1590
    PrintOptions.PrintOnSheet = 0
    ReportOptions.CreateDate = 45658.752541527780000000
    ReportOptions.LastChange = 45658.752541527780000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      'begin'
      ''
      'end.')
    Left = 381
    Top = 21
    Datasets = <
      item
        DataSet = frxDBReport
        DataSetName = #1670#1575#1662
      end>
    Variables = <>
    Style = <>
    object Data: TfrxDataPage
      Height = 1000.000000000000000000
      Width = 1000.000000000000000000
    end
    object Page1: TfrxReportPage
      PaperWidth = 215.900000000000000000
      PaperHeight = 279.400000000000000000
      PaperSize = 121
      LeftMargin = 3.000000000000000000
      RightMargin = 3.000000000000000000
      TopMargin = 10.000000000000000000
      BottomMargin = 2.000000000000000000
      object AlignLeft_3: TfrxMemoView
        Align = baLeft
        Width = 113.385900000000000000
        Height = 680.315400000000000000
        Visibility = [vsPreview, vsExport]
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = []
        Frame.Typ = [ftRight]
        ParentFont = False
      end
      object AlignRight_3_50: TfrxMemoView
        Align = baRight
        Left = 661.039797000000000000
        Width = 132.283550000000000000
        Height = 680.315400000000000000
        Visibility = [vsPreview, vsExport]
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = []
        Frame.Typ = [ftLeft]
        ParentFont = False
      end
      object AlignBottom_8_70: TfrxMemoView
        Align = baBottom
        Top = 681.827212000000000000
        Width = 801.260360000000000000
        Height = 328.819110000000000000
        Visibility = [vsPreview, vsExport]
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
      end
      object MemName1: TfrxMemoView
        Align = baRight
        ShiftMode = smDontShift
        Left = 472.063297000000000000
        Top = 95.981102360000000000
        Width = 188.976500000000000000
        Height = 49.133858270000000000
        DisplayFormat.DecimalSeparator = '/'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -19
        Font.Name = '2  Nazanin'
        Font.Style = []
        Frame.Typ = [ftRight, ftTop]
        HAlign = haRight
        Memo.UTF8 = (
          ' '#1593#169#1592#8222#1591#167#1591#179#1592#8225' '#1592#190#1591#177#1592#710#1592#8224#1591#175#1592#8225' '#1591#1726#1591#177#1593#169#1594#338#1591#168#1594#338'  ')
        ParentFont = False
        VAlign = vaCenter
      end
      object MemName2: TfrxMemoView
        Align = baRight
        ShiftMode = smDontShift
        Left = 472.063297000000000000
        Top = 195.551330000000000000
        Width = 188.976500000000000000
        Height = 49.133858270000000000
        DisplayFormat.DecimalSeparator = '/'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -19
        Font.Name = '2  Nazanin'
        Font.Style = []
        Frame.Typ = [ftRight, ftTop, ftBottom]
        HAlign = haRight
        Memo.UTF8 = (
          ' '#1591#180#1592#8230#1591#167#1591#177#1592#8225' '#1591#172#1592#8222#1591#175' '#1592#190#1591#177#1592#710#1592#8224#1591#175#1592#8225'  ')
        ParentFont = False
        VAlign = vaCenter
      end
      object MemName4: TfrxMemoView
        Align = baRight
        ShiftMode = smDontShift
        Left = 472.063297000000000000
        Top = 245.244280000000000000
        Width = 188.976500000000000000
        Height = 49.133858270000000000
        DisplayFormat.DecimalSeparator = '/'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -19
        Font.Name = '2  Nazanin'
        Font.Style = []
        Frame.Typ = [ftRight, ftTop, ftBottom]
        HAlign = haRight
        Memo.UTF8 = (
          ' '#1592#8224#1591#167#1592#8230' '#1591#183#1591#177#1591#173'  ')
        ParentFont = False
        VAlign = vaCenter
      end
      object MemName5: TfrxMemoView
        Align = baRight
        ShiftMode = smDontShift
        Left = 426.708937000000000000
        Top = 294.937230000000000000
        Width = 234.330860000000000000
        Height = 37.795300000000000000
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -19
        Font.Name = '2  Nazanin'
        Font.Style = []
        Frame.Typ = [ftLeft, ftRight, ftBottom]
        HAlign = haRight
        Memo.UTF8 = (
          ' '#1592#8224#1591#167#1592#8230' '#1592#710' '#1592#8224#1591#167#1592#8230' '#1591#174#1591#167#1592#8224#1592#710#1591#167#1591#175#1593#175#1594#338'   ')
        ParentFont = False
        VAlign = vaCenter
      end
      object MemDesc11: TfrxMemoView
        Align = baLeft
        ShiftMode = smDontShift
        Left = 113.385900000000000000
        Top = 96.228448980000000000
        Width = 358.677397000000000000
        Height = 49.133858270000000000
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -19
        Font.Name = '2  Jadid'
        Font.Style = [fsBold]
        Frame.Typ = [ftLeft, ftRight, ftTop]
        HAlign = haCenter
        ParentFont = False
        VAlign = vaCenter
      end
      object MemDesc2: TfrxMemoView
        Align = baLeft
        ShiftMode = smDontShift
        Left = 113.385900000000000000
        Top = 195.401574803149600000
        Width = 358.677397000000000000
        Height = 49.133858270000000000
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -23
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
        HAlign = haCenter
        ParentFont = False
        VAlign = vaCenter
      end
      object MemDesc4: TfrxMemoView
        Align = baLeft
        ShiftMode = smDontShift
        Left = 113.385900000000000000
        Top = 245.291338580000000000
        Width = 359.055350000000000000
        Height = 49.133858270000000000
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -23
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
        HAlign = haCenter
        ParentFont = False
        VAlign = vaCenter
      end
      object MemDesc5: TfrxMemoView
        Align = baRight
        ShiftMode = smDontShift
        Left = 426.708937000000000000
        Top = 333.512060000000000000
        Width = 234.330860000000000000
        Height = 34.015728500000000000
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = '2  Nazanin'
        Font.Style = [fsBold]
        Frame.Typ = [ftLeft, ftRight]
        HAlign = haCenter
        ParentFont = False
        VAlign = vaCenter
      end
      object MHeader: TfrxMemoView
        Align = baWidth
        ShiftMode = smDontShift
        Left = 113.385900000000000000
        Width = 547.653897000000000000
        Height = 31.748031500000000000
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -25
        Font.Name = '2  Nazanin'
        Font.Style = [fsBold]
        Frame.Typ = [ftLeft, ftRight, ftTop]
        HAlign = haCenter
        Memo.UTF8 = (
          #1591#180#1591#177#1593#169#1591#1726' '#1593#175#1591#179#1591#1726#1591#177#1591#180' '#1592#1662#1592#8224' '#1591#162#1592#710#1591#177#1591#167#1592#8224' '#1591#167#1591#183#1592#8222#1591#167#1591#185#1591#167#1591#1726' '#1594#338#1593#175#1591#167#1592#8224#1592#8225)
        ParentFont = False
      end
      object MemName0: TfrxMemoView
        Align = baRight
        ShiftMode = smDontShift
        Left = 472.063297000000000000
        Top = 145.944960000000000000
        Width = 188.976500000000000000
        Height = 49.133858270000000000
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -19
        Font.Name = '2  Nazanin'
        Font.Style = []
        Frame.Typ = [ftRight, ftTop]
        HAlign = haRight
        Memo.UTF8 = (
          ' '#1591#167#1591#183#1592#8222#1591#167#1591#185#1591#167#1591#1726' '#1593#169#1592#8222#1594#338' '#1592#190#1591#177#1592#710#1592#8224#1591#175#1592#8225'  ')
        ParentFont = False
        VAlign = vaCenter
      end
      object MemDesc0: TfrxMemoView
        Align = baLeft
        ShiftMode = smDontShift
        Left = 113.385900000000000000
        Top = 145.889763780000000000
        Width = 359.055350000000000000
        Height = 49.133858270000000000
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -23
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        Frame.Typ = [ftLeft, ftRight, ftTop]
        HAlign = haCenter
        ParentFont = False
      end
      object Memo4: TfrxMemoView
        Align = baLeft
        ShiftMode = smDontShift
        Left = 113.385900000000000000
        Top = 294.913305280000000000
        Width = 173.480427000000000000
        Height = 37.795300000000000000
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -19
        Font.Name = '2  Nazanin'
        Font.Style = []
        Frame.Typ = [ftLeft, ftRight, ftBottom]
        HAlign = haCenter
        Memo.UTF8 = (
          #1593#169#1591#175#1592#8230#1592#8222#1592#1657'  ')
        ParentFont = False
        VAlign = vaCenter
      end
      object Memo5: TfrxMemoView
        Align = baLeft
        ShiftMode = smDontShift
        Left = 113.385900000000000000
        Top = 333.488093780000000000
        Width = 173.480427000000000000
        Height = 34.015728500000000000
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = '2  Nazanin'
        Font.Style = [fsBold]
        Frame.Typ = [ftLeft, ftRight, ftTop]
        HAlign = haCenter
        ParentFont = False
        VAlign = vaCenter
      end
      object Memo6: TfrxMemoView
        Align = baRight
        ShiftMode = smDontShift
        Left = 286.866327000000000000
        Top = 294.913305280000000000
        Width = 139.842610000000000000
        Height = 37.795300000000000000
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -19
        Font.Name = '2  Nazanin'
        Font.Style = []
        Frame.Typ = [ftLeft, ftRight, ftBottom]
        HAlign = haCenter
        Memo.UTF8 = (
          ' '#1592#8224#1591#167#1592#8230' '#1592#190#1591#175#1591#177'  ')
        ParentFont = False
        VAlign = vaCenter
      end
      object Memo7: TfrxMemoView
        Align = baRight
        ShiftMode = smDontShift
        Left = 286.866327000000000000
        Top = 333.488093780000000000
        Width = 139.842610000000000000
        Height = 34.015728500000000000
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = '2  Nazanin'
        Font.Style = [fsBold]
        Frame.Typ = [ftLeft, ftRight, ftTop]
        HAlign = haCenter
        ParentFont = False
        VAlign = vaCenter
      end
      object Memo8: TfrxMemoView
        Align = baWidth
        ShiftMode = smDontShift
        Left = 113.385900000000000000
        Top = 32.795300000000000000
        Width = 547.653897000000000000
        Height = 30.992125980000000000
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -24
        Font.Name = '2  Nazanin'
        Font.Style = []
        Frame.Typ = [ftLeft, ftRight]
        HAlign = haCenter
        Memo.UTF8 = (
          #1591#177#1592#710#1593#169#1591#180' '#1592#190#1591#177#1592#710#1592#8224#1591#175#1592#8225)
        ParentFont = False
      end
      object Memo9: TfrxMemoView
        Align = baWidth
        ShiftMode = smDontShift
        Left = 113.385900000000000000
        Top = 63.913420000000000000
        Width = 547.653897000000000000
        Height = 30.992099130000000000
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -24
        Font.Name = 'MRT_Abasan'
        Font.Style = [fsBold]
        Frame.Typ = [ftLeft, ftRight]
        HAlign = haCenter
        Memo.UTF8 = (
          #1591#180#1592#8225#1591#177#1591#175#1591#167#1591#177#1592#1657' '#1591#167#1591#181#1592#1662#1592#8225#1591#167#1592#8224)
        ParentFont = False
      end
      object MemName6: TfrxMemoView
        Align = baRight
        ShiftMode = smDontShift
        Left = 472.063297000000000000
        Top = 368.173470000000000000
        Width = 188.976500000000000000
        Height = 63.874015750000000000
        DisplayFormat.DecimalSeparator = '/'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -19
        Font.Name = '2  Nazanin'
        Font.Style = []
        Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
        HAlign = haRight
        Memo.UTF8 = (
          ' '#1592#8230#1591#180#1591#174#1591#181#1591#167#1591#1726' '#1591#171#1591#168#1591#1726#1594#338' '#1592#8230#1592#8222#1593#169'  ')
        ParentFont = False
        VAlign = vaCenter
      end
      object MemName7: TfrxMemoView
        Align = baRight
        ShiftMode = smDontShift
        Left = 472.063297000000000000
        Top = 432.354882360000000000
        Width = 188.976500000000000000
        Height = 52.913385830000000000
        DisplayFormat.DecimalSeparator = '/'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -19
        Font.Name = '2  Nazanin'
        Font.Style = []
        Frame.Typ = [ftLeft, ftRight, ftBottom]
        HAlign = haRight
        Memo.UTF8 = (
          ' '#1591#162#1591#175#1591#177#1591#179' '#1592#710#1592#8218#1592#710#1591#185' '#1592#8230#1592#8222#1593#169'  ')
        ParentFont = False
        VAlign = vaCenter
      end
      object MemDesc7: TfrxMemoView
        Align = baLeft
        ShiftMode = smDontShift
        Left = 113.385900000000000000
        Top = 432.354882360000000000
        Width = 359.055350000000000000
        Height = 52.913385830000000000
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = '2  Nazanin'
        Font.Style = [fsBold]
        Frame.Typ = [ftLeft, ftRight, ftBottom]
        HAlign = haCenter
        ParentFont = False
        VAlign = vaCenter
      end
      object MemDesc60: TfrxMemoView
        Align = baRight
        ShiftMode = smDontShift
        Left = 275.346630000000000000
        Top = 368.079011100000000000
        Width = 94.488250000000000000
        Height = 26.456710000000000000
        DisplayFormat.DecimalSeparator = '/'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -19
        Font.Name = '2  Nazanin'
        Font.Style = []
        Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
        HAlign = haCenter
        Memo.UTF8 = (
          ' '#1591#168#1591#174#1591#180)
        ParentFont = False
      end
      object MemDesc62: TfrxMemoView
        Align = baLeft
        ShiftMode = smDontShift
        Left = 369.834880000000000000
        Top = 368.197050550000000000
        Width = 102.047310000000000000
        Height = 26.456710000000000000
        DisplayFormat.DecimalSeparator = '/'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -19
        Font.Name = '2  Nazanin'
        Font.Style = []
        Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
        HAlign = haCenter
        Memo.UTF8 = (
          ' '#1592#190#1592#8222#1591#167#1593#169' '#1592#1662#1591#177#1591#185#1594#338)
        ParentFont = False
      end
      object MemDesc63: TfrxMemoView
        Align = baRight
        ShiftMode = smDontShift
        Left = 275.346630000000000000
        Top = 395.157751260000000000
        Width = 94.488250000000000000
        Height = 36.661417320000000000
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -19
        Font.Name = '2  Nazanin'
        Font.Style = [fsBold]
        Frame.Typ = [ftLeft, ftRight, ftBottom]
        HAlign = haCenter
        ParentFont = False
        VAlign = vaCenter
      end
      object MemDesc65: TfrxMemoView
        Align = baLeft
        ShiftMode = smDontShift
        Left = 369.834880000000000000
        Top = 395.031696220000000000
        Width = 102.047205040000000000
        Height = 36.661417320000000000
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -19
        Font.Name = '2  Nazanin'
        Font.Style = [fsBold]
        Frame.Typ = [ftLeft, ftRight, ftBottom]
        HAlign = haCenter
        ParentFont = False
        VAlign = vaCenter
      end
      object MemDesc61: TfrxMemoView
        Align = baRight
        ShiftMode = smDontShift
        Left = 112.826840000000000000
        Top = 368.173470000000000000
        Width = 162.519790000000000000
        Height = 26.456710000000000000
        DisplayFormat.DecimalSeparator = '/'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -19
        Font.Name = '2  Nazanin'
        Font.Style = []
        Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
        HAlign = haCenter
        Memo.UTF8 = (
          ' '#1592#190#1592#8222#1591#167#1593#169' '#1591#167#1591#181#1592#8222#1594#338)
        ParentFont = False
      end
      object MemDesc64: TfrxMemoView
        Align = baRight
        ShiftMode = smDontShift
        Left = 112.826661810000000000
        Top = 395.157717080000000000
        Width = 162.519968190000000000
        Height = 36.661417320000000000
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -19
        Font.Name = '2  Nazanin'
        Font.Style = [fsBold]
        Frame.Typ = [ftLeft, ftRight, ftBottom]
        HAlign = haCenter
        ParentFont = False
        VAlign = vaCenter
      end
      object MemName8: TfrxMemoView
        Align = baRight
        ShiftMode = smDontShift
        Left = 472.063297000000000000
        Top = 486.338900000000000000
        Width = 188.976500000000000000
        Height = 52.913385830000000000
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -19
        Font.Name = '2  Nazanin'
        Font.Style = []
        Frame.Typ = [ftLeft, ftRight, ftBottom]
        HAlign = haRight
        Memo.UTF8 = (
          ' '#1593#169#1591#175' '#1592#8224#1592#710#1591#179#1591#167#1591#178#1592#1657'  ')
        ParentFont = False
        VAlign = vaCenter
      end
      object MemName9: TfrxMemoView
        Align = baRight
        ShiftMode = smDontShift
        Left = 472.063297000000000000
        Top = 540.031850000000000000
        Width = 188.976500000000000000
        Height = 52.913385830000000000
        DisplayFormat.DecimalSeparator = '/'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -19
        Font.Name = '2  Nazanin'
        Font.Style = []
        Frame.Typ = [ftLeft, ftRight, ftBottom]
        HAlign = haRight
        Memo.UTF8 = (
          ' '#1591#1726#1592#710#1591#182#1594#338#1591#173#1591#167#1591#1726'  ')
        ParentFont = False
        VAlign = vaCenter
      end
      object MemDesc8: TfrxMemoView
        Align = baLeft
        ShiftMode = smDontShift
        Left = 113.385900000000000000
        Top = 486.338900000000000000
        Width = 359.055350000000000000
        Height = 52.913385830000000000
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = '2  Nazanin'
        Font.Style = [fsBold]
        Frame.Typ = [ftLeft, ftRight, ftBottom]
        HAlign = haCenter
        ParentFont = False
        VAlign = vaCenter
      end
      object MemDesc9: TfrxMemoView
        Align = baLeft
        ShiftMode = smDontShift
        Left = 113.385900000000000000
        Top = 540.031850000000000000
        Width = 359.055350000000000000
        Height = 52.913385830000000000
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = '2  Nazanin'
        Font.Style = [fsBold]
        Frame.Typ = [ftLeft, ftRight, ftBottom]
        HAlign = haCenter
        ParentFont = False
        VAlign = vaCenter
      end
      object MemDetail: TfrxMemoView
        Align = baWidth
        ShiftMode = smDontShift
        Left = 113.385900000000000000
        Top = 593.386210000000000000
        Width = 547.653897000000000000
        Height = 26.456710000000000000
        DisplayFormat.DecimalSeparator = '/'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = '2  Nazanin'
        Font.Style = [fsBold]
        Frame.Typ = [ftLeft, ftRight]
        HAlign = haCenter
        Memo.UTF8 = (
          #1593#169#1591#167#1591#177#1591#168#1591#177#1591#167#1592#8224' '#1591#162#1591#177#1591#180#1594#338#1592#710' '#1591#167#1592#8222#1593#169#1591#1726#1591#177#1592#710#1592#8224#1594#338#1593#169#1594#338)
        ParentFont = False
        VAlign = vaCenter
      end
      object MemDetail1: TfrxMemoView
        Align = baRight
        ShiftMode = smDontShift
        Left = 547.653982430000000000
        Top = 619.842920000000000000
        Width = 113.385814570000000000
        Height = 26.456710000000000000
        DisplayFormat.DecimalSeparator = '/'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -19
        Font.Name = '2  Nazanin'
        Font.Style = []
        Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
        HAlign = haCenter
        Memo.UTF8 = (
          ' '#1591#167#1591#179#1591#1726#1591#174#1591#177#1591#167#1591#172)
        ParentFont = False
      end
      object MemDetail21: TfrxMemoView
        Align = baRight
        ShiftMode = smDontShift
        Left = 317.921630860000000000
        Top = 646.480761650000000000
        Width = 109.606284570000000000
        Height = 34.015743150000000000
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = '2  Nazanin'
        Font.Style = []
        Frame.Typ = [ftLeft, ftRight, ftBottom]
        HAlign = haRight
        ParentFont = False
        VAlign = vaCenter
      end
      object MemDetail2: TfrxMemoView
        Align = baRight
        ShiftMode = smDontShift
        Left = 317.921630860000000000
        Top = 619.961535510000000000
        Width = 109.606284570000000000
        Height = 26.456710000000000000
        DisplayFormat.DecimalSeparator = '/'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -19
        Font.Name = '2  Nazanin'
        Font.Style = []
        Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
        HAlign = haCenter
        Memo.UTF8 = (
          ' '#1591#162#1592#8230#1591#167#1591#175#1592#8225' '#1591#179#1591#167#1591#178#1594#338)
        ParentFont = False
      end
      object MemDetail11: TfrxMemoView
        Align = baRight
        ShiftMode = smDontShift
        Left = 547.653982430000000000
        Top = 646.457095670000000000
        Width = 113.385814570000000000
        Height = 34.015728500000000000
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = '2  Nazanin'
        Font.Style = []
        Frame.Typ = [ftLeft, ftRight, ftBottom]
        HAlign = haRight
        ParentFont = False
        VAlign = vaCenter
      end
      object MemDetail4: TfrxMemoView
        Align = baRight
        ShiftMode = smDontShift
        Left = 113.826754570000000000
        Top = 619.842920000000000000
        Width = 105.827181720000000000
        Height = 26.456710000000000000
        DisplayFormat.DecimalSeparator = '/'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -19
        Font.Name = '2  Nazanin'
        Font.Style = []
        Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
        HAlign = haCenter
        Memo.UTF8 = (
          ' '#1591#167#1591#179#1593#169#1592#8224' '#1592#1662#1592#8222#1591#1726)
        ParentFont = False
      end
      object MemDetail41: TfrxMemoView
        Align = baRight
        ShiftMode = smDontShift
        Left = 113.826754570000000000
        Top = 646.480761650000000000
        Width = 105.827181720000000000
        Height = 34.015743150000000000
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = '2  Nazanin'
        Font.Style = []
        Frame.Typ = [ftLeft, ftRight, ftBottom]
        HAlign = haRight
        ParentFont = False
        VAlign = vaCenter
      end
      object MemDetail5: TfrxMemoView
        Align = baLeft
        ShiftMode = smDontShift
        Left = 427.527915430000000000
        Top = 619.842920000000000000
        Width = 120.944874570000000000
        Height = 26.456710000000000000
        DisplayFormat.DecimalSeparator = '/'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -19
        Font.Name = '2  Nazanin'
        Font.Style = []
        Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
        HAlign = haCenter
        Memo.UTF8 = (
          ' '#1591#168#1591#179#1591#1726#1592#8225' '#1591#168#1592#8224#1591#175#1594#338' ')
        ParentFont = False
      end
      object MemDetail51: TfrxMemoView
        Align = baLeft
        ShiftMode = smDontShift
        Left = 427.527915430000000000
        Top = 646.480761650000000000
        Width = 120.944874570000000000
        Height = 34.015743150000000000
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = '2  Nazanin'
        Font.Style = []
        Frame.Typ = [ftLeft, ftRight, ftBottom]
        HAlign = haRight
        ParentFont = False
        VAlign = vaCenter
      end
      object MemDetail3: TfrxMemoView
        Align = baRight
        ShiftMode = smDontShift
        Left = 219.653936290000000000
        Top = 619.842920000000000000
        Width = 98.267694570000000000
        Height = 26.456692910000000000
        DisplayFormat.DecimalSeparator = '/'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -19
        Font.Name = '2  Nazanin'
        Font.Style = []
        Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
        HAlign = haCenter
        Memo.UTF8 = (
          ' '#1591#167#1591#179#1593#169#1592#8224)
        ParentFont = False
      end
      object MemDetail31: TfrxMemoView
        Align = baRight
        ShiftMode = smDontShift
        Left = 219.653936290000000000
        Top = 646.480761650000000000
        Width = 98.267694570000000000
        Height = 34.015743150000000000
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = '2  Nazanin'
        Font.Style = []
        Frame.Typ = [ftLeft, ftRight, ftBottom]
        HAlign = haRight
        ParentFont = False
        VAlign = vaCenter
      end
    end
  end
  object frxReport_New_Backup: TfrxReport
    Version = '5.4.6'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick]
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = #1662#1610#1588' '#1601#1585#1590
    PrintOptions.PrintOnSheet = 0
    ReportOptions.CreateDate = 45658.752541527780000000
    ReportOptions.LastChange = 45658.752541527780000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      'begin'
      ''
      'end.')
    Left = 117
    Top = 37
    Datasets = <
      item
        DataSet = frxDBReport
        DataSetName = #1670#1575#1662
      end>
    Variables = <>
    Style = <>
    object Data: TfrxDataPage
      Height = 1000.000000000000000000
      Width = 1000.000000000000000000
    end
    object Page1: TfrxReportPage
      PaperWidth = 215.900000000000000000
      PaperHeight = 279.400000000000000000
      PaperSize = 121
      LeftMargin = 3.000000000000000000
      RightMargin = 3.000000000000000000
      TopMargin = 10.000000000000000000
      BottomMargin = 2.000000000000000000
      object AlignLeft_3: TfrxMemoView
        Align = baLeft
        Width = 113.385900000000000000
        Height = 680.315400000000000000
        Visibility = [vsPreview, vsExport]
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = []
        Frame.Typ = [ftRight]
        ParentFont = False
      end
      object AlignRight_3_50: TfrxMemoView
        Align = baRight
        Left = 661.039797000000000000
        Width = 132.283550000000000000
        Height = 680.315400000000000000
        Visibility = [vsPreview, vsExport]
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = []
        Frame.Typ = [ftLeft]
        ParentFont = False
      end
      object AlignBottom_8_70: TfrxMemoView
        Align = baBottom
        Top = 681.827212000000000000
        Width = 801.260360000000000000
        Height = 328.819110000000000000
        Visibility = [vsPreview, vsExport]
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
      end
      object MemName1: TfrxMemoView
        Align = baRight
        ShiftMode = smDontShift
        Left = 472.063297000000000000
        Top = 95.981102360000000000
        Width = 188.976500000000000000
        Height = 49.133858270000000000
        DisplayFormat.DecimalSeparator = '/'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -19
        Font.Name = '2  Nazanin'
        Font.Style = []
        Frame.Typ = [ftRight, ftTop]
        HAlign = haRight
        Memo.UTF8 = (
          ' '#1593#169#1592#8222#1591#167#1591#179#1592#8225' '#1592#190#1591#177#1592#710#1592#8224#1591#175#1592#8225' '#1591#1726#1591#177#1593#169#1594#338#1591#168#1594#338'  ')
        ParentFont = False
        VAlign = vaCenter
      end
      object MemName2: TfrxMemoView
        Align = baRight
        ShiftMode = smDontShift
        Left = 472.063297000000000000
        Top = 195.551330000000000000
        Width = 188.976500000000000000
        Height = 49.133858270000000000
        DisplayFormat.DecimalSeparator = '/'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -19
        Font.Name = '2  Nazanin'
        Font.Style = []
        Frame.Typ = [ftRight, ftTop, ftBottom]
        HAlign = haRight
        Memo.UTF8 = (
          ' '#1591#180#1592#8230#1591#167#1591#177#1592#8225' '#1591#172#1592#8222#1591#175' '#1592#190#1591#177#1592#710#1592#8224#1591#175#1592#8225'  ')
        ParentFont = False
        VAlign = vaCenter
      end
      object MemName4: TfrxMemoView
        Align = baRight
        ShiftMode = smDontShift
        Left = 472.063297000000000000
        Top = 245.244280000000000000
        Width = 188.976500000000000000
        Height = 49.133858270000000000
        DisplayFormat.DecimalSeparator = '/'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -19
        Font.Name = '2  Nazanin'
        Font.Style = []
        Frame.Typ = [ftRight, ftTop, ftBottom]
        HAlign = haRight
        Memo.UTF8 = (
          ' '#1592#8224#1591#167#1592#8230' '#1591#183#1591#177#1591#173'  ')
        ParentFont = False
        VAlign = vaCenter
      end
      object MemName5: TfrxMemoView
        Align = baRight
        ShiftMode = smDontShift
        Left = 426.708937000000000000
        Top = 294.937230000000000000
        Width = 234.330860000000000000
        Height = 37.795300000000000000
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -19
        Font.Name = '2  Nazanin'
        Font.Style = []
        Frame.Typ = [ftLeft, ftRight, ftBottom]
        HAlign = haRight
        Memo.UTF8 = (
          ' '#1592#8224#1591#167#1592#8230' '#1592#710' '#1592#8224#1591#167#1592#8230' '#1591#174#1591#167#1592#8224#1592#710#1591#167#1591#175#1593#175#1594#338'   ')
        ParentFont = False
        VAlign = vaCenter
      end
      object MemDesc11: TfrxMemoView
        Align = baLeft
        ShiftMode = smDontShift
        Left = 113.385900000000000000
        Top = 96.228448980000000000
        Width = 358.677397000000000000
        Height = 49.133858270000000000
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -19
        Font.Name = '2  Jadid'
        Font.Style = [fsBold]
        Frame.Typ = [ftLeft, ftRight, ftTop]
        HAlign = haCenter
        ParentFont = False
        VAlign = vaCenter
      end
      object MemDesc2: TfrxMemoView
        Align = baLeft
        ShiftMode = smDontShift
        Left = 113.385900000000000000
        Top = 195.401574803149600000
        Width = 358.677397000000000000
        Height = 49.133858270000000000
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -23
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
        HAlign = haCenter
        ParentFont = False
        VAlign = vaCenter
      end
      object MemDesc4: TfrxMemoView
        Align = baLeft
        ShiftMode = smDontShift
        Left = 113.385900000000000000
        Top = 245.291338580000000000
        Width = 359.055350000000000000
        Height = 49.133858270000000000
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -23
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
        HAlign = haCenter
        ParentFont = False
        VAlign = vaCenter
      end
      object MemDesc5: TfrxMemoView
        Align = baRight
        ShiftMode = smDontShift
        Left = 426.708937000000000000
        Top = 333.512060000000000000
        Width = 234.330860000000000000
        Height = 34.015728500000000000
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = '2  Nazanin'
        Font.Style = [fsBold]
        Frame.Typ = [ftLeft, ftRight]
        HAlign = haCenter
        ParentFont = False
        VAlign = vaCenter
      end
      object MHeader: TfrxMemoView
        Align = baWidth
        ShiftMode = smDontShift
        Left = 113.385900000000000000
        Width = 547.653897000000000000
        Height = 31.748031500000000000
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -25
        Font.Name = '2  Nazanin'
        Font.Style = [fsBold]
        Frame.Typ = [ftLeft, ftRight, ftTop]
        HAlign = haCenter
        Memo.UTF8 = (
          #1591#180#1591#177#1593#169#1591#1726' '#1593#175#1591#179#1591#1726#1591#177#1591#180' '#1592#1662#1592#8224' '#1591#162#1592#710#1591#177#1591#167#1592#8224' '#1591#167#1591#183#1592#8222#1591#167#1591#185#1591#167#1591#1726' '#1594#338#1593#175#1591#167#1592#8224#1592#8225)
        ParentFont = False
      end
      object MemName0: TfrxMemoView
        Align = baRight
        ShiftMode = smDontShift
        Left = 472.063297000000000000
        Top = 145.944960000000000000
        Width = 188.976500000000000000
        Height = 49.133858270000000000
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -19
        Font.Name = '2  Nazanin'
        Font.Style = []
        Frame.Typ = [ftRight, ftTop]
        HAlign = haRight
        Memo.UTF8 = (
          ' '#1591#167#1591#183#1592#8222#1591#167#1591#185#1591#167#1591#1726' '#1593#169#1592#8222#1594#338' '#1592#190#1591#177#1592#710#1592#8224#1591#175#1592#8225'  ')
        ParentFont = False
        VAlign = vaCenter
      end
      object MemDesc0: TfrxMemoView
        Align = baLeft
        ShiftMode = smDontShift
        Left = 113.385900000000000000
        Top = 145.889763780000000000
        Width = 359.055350000000000000
        Height = 49.133858270000000000
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -23
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        Frame.Typ = [ftLeft, ftRight, ftTop]
        HAlign = haCenter
        ParentFont = False
      end
      object Memo4: TfrxMemoView
        Align = baLeft
        ShiftMode = smDontShift
        Left = 113.385900000000000000
        Top = 294.913305280000000000
        Width = 173.480427000000000000
        Height = 37.795300000000000000
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -19
        Font.Name = '2  Nazanin'
        Font.Style = []
        Frame.Typ = [ftLeft, ftRight, ftBottom]
        HAlign = haCenter
        Memo.UTF8 = (
          #1593#169#1591#175#1592#8230#1592#8222#1592#1657'  ')
        ParentFont = False
        VAlign = vaCenter
      end
      object Memo5: TfrxMemoView
        Align = baLeft
        ShiftMode = smDontShift
        Left = 113.385900000000000000
        Top = 333.488093780000000000
        Width = 173.480427000000000000
        Height = 34.015728500000000000
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = '2  Nazanin'
        Font.Style = [fsBold]
        Frame.Typ = [ftLeft, ftRight, ftTop]
        HAlign = haCenter
        ParentFont = False
        VAlign = vaCenter
      end
      object Memo6: TfrxMemoView
        Align = baRight
        ShiftMode = smDontShift
        Left = 286.866327000000000000
        Top = 294.913305280000000000
        Width = 139.842610000000000000
        Height = 37.795300000000000000
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -19
        Font.Name = '2  Nazanin'
        Font.Style = []
        Frame.Typ = [ftLeft, ftRight, ftBottom]
        HAlign = haCenter
        Memo.UTF8 = (
          ' '#1592#8224#1591#167#1592#8230' '#1592#190#1591#175#1591#177'  ')
        ParentFont = False
        VAlign = vaCenter
      end
      object Memo7: TfrxMemoView
        Align = baRight
        ShiftMode = smDontShift
        Left = 286.866327000000000000
        Top = 333.488093780000000000
        Width = 139.842610000000000000
        Height = 34.015728500000000000
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = '2  Nazanin'
        Font.Style = [fsBold]
        Frame.Typ = [ftLeft, ftRight, ftTop]
        HAlign = haCenter
        ParentFont = False
        VAlign = vaCenter
      end
      object Memo8: TfrxMemoView
        Align = baWidth
        ShiftMode = smDontShift
        Left = 113.385900000000000000
        Top = 32.795300000000000000
        Width = 547.653897000000000000
        Height = 30.992125980000000000
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -24
        Font.Name = '2  Nazanin'
        Font.Style = []
        Frame.Typ = [ftLeft, ftRight]
        HAlign = haCenter
        Memo.UTF8 = (
          #1591#177#1592#710#1593#169#1591#180' '#1592#190#1591#177#1592#710#1592#8224#1591#175#1592#8225)
        ParentFont = False
      end
      object Memo9: TfrxMemoView
        Align = baWidth
        ShiftMode = smDontShift
        Left = 113.385900000000000000
        Top = 63.913420000000000000
        Width = 547.653897000000000000
        Height = 30.992099130000000000
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -24
        Font.Name = 'MRT_Abasan'
        Font.Style = [fsBold]
        Frame.Typ = [ftLeft, ftRight]
        HAlign = haCenter
        Memo.UTF8 = (
          #1591#180#1592#8225#1591#177#1591#175#1591#167#1591#177#1592#1657' '#1591#167#1591#181#1592#1662#1592#8225#1591#167#1592#8224)
        ParentFont = False
      end
      object MemName6: TfrxMemoView
        Align = baRight
        ShiftMode = smDontShift
        Left = 472.063297000000000000
        Top = 368.173470000000000000
        Width = 188.976500000000000000
        Height = 63.874015750000000000
        DisplayFormat.DecimalSeparator = '/'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -19
        Font.Name = '2  Nazanin'
        Font.Style = []
        Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
        HAlign = haRight
        Memo.UTF8 = (
          ' '#1592#8230#1591#180#1591#174#1591#181#1591#167#1591#1726' '#1591#171#1591#168#1591#1726#1594#338' '#1592#8230#1592#8222#1593#169'  ')
        ParentFont = False
        VAlign = vaCenter
      end
      object MemName7: TfrxMemoView
        Align = baRight
        ShiftMode = smDontShift
        Left = 472.063297000000000000
        Top = 432.354882360000000000
        Width = 188.976500000000000000
        Height = 52.913385830000000000
        DisplayFormat.DecimalSeparator = '/'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -19
        Font.Name = '2  Nazanin'
        Font.Style = []
        Frame.Typ = [ftLeft, ftRight, ftBottom]
        HAlign = haRight
        Memo.UTF8 = (
          ' '#1591#162#1591#175#1591#177#1591#179' '#1592#710#1592#8218#1592#710#1591#185' '#1592#8230#1592#8222#1593#169'  ')
        ParentFont = False
        VAlign = vaCenter
      end
      object MemDesc7: TfrxMemoView
        Align = baLeft
        ShiftMode = smDontShift
        Left = 113.385900000000000000
        Top = 432.354882360000000000
        Width = 359.055350000000000000
        Height = 52.913385830000000000
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = '2  Nazanin'
        Font.Style = [fsBold]
        Frame.Typ = [ftLeft, ftRight, ftBottom]
        HAlign = haCenter
        ParentFont = False
        VAlign = vaCenter
      end
      object MemDesc60: TfrxMemoView
        Align = baRight
        ShiftMode = smDontShift
        Left = 275.346630000000000000
        Top = 368.079011100000000000
        Width = 94.488250000000000000
        Height = 26.456710000000000000
        DisplayFormat.DecimalSeparator = '/'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -19
        Font.Name = '2  Nazanin'
        Font.Style = []
        Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
        HAlign = haCenter
        Memo.UTF8 = (
          ' '#1591#168#1591#174#1591#180)
        ParentFont = False
      end
      object MemDesc62: TfrxMemoView
        Align = baLeft
        ShiftMode = smDontShift
        Left = 369.834880000000000000
        Top = 368.197050550000000000
        Width = 102.047310000000000000
        Height = 26.456710000000000000
        DisplayFormat.DecimalSeparator = '/'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -19
        Font.Name = '2  Nazanin'
        Font.Style = []
        Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
        HAlign = haCenter
        Memo.UTF8 = (
          ' '#1592#190#1592#8222#1591#167#1593#169' '#1592#1662#1591#177#1591#185#1594#338)
        ParentFont = False
      end
      object MemDesc63: TfrxMemoView
        Align = baRight
        ShiftMode = smDontShift
        Left = 275.346630000000000000
        Top = 395.157751260000000000
        Width = 94.488250000000000000
        Height = 36.661417320000000000
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -19
        Font.Name = '2  Nazanin'
        Font.Style = [fsBold]
        Frame.Typ = [ftLeft, ftRight, ftBottom]
        HAlign = haCenter
        ParentFont = False
        VAlign = vaCenter
      end
      object MemDesc65: TfrxMemoView
        Align = baLeft
        ShiftMode = smDontShift
        Left = 369.834880000000000000
        Top = 395.031696220000000000
        Width = 102.047205040000000000
        Height = 36.661417320000000000
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -19
        Font.Name = '2  Nazanin'
        Font.Style = [fsBold]
        Frame.Typ = [ftLeft, ftRight, ftBottom]
        HAlign = haCenter
        ParentFont = False
        VAlign = vaCenter
      end
      object MemDesc61: TfrxMemoView
        Align = baRight
        ShiftMode = smDontShift
        Left = 112.826840000000000000
        Top = 368.173470000000000000
        Width = 162.519790000000000000
        Height = 26.456710000000000000
        DisplayFormat.DecimalSeparator = '/'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -19
        Font.Name = '2  Nazanin'
        Font.Style = []
        Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
        HAlign = haCenter
        Memo.UTF8 = (
          ' '#1592#190#1592#8222#1591#167#1593#169' '#1591#167#1591#181#1592#8222#1594#338)
        ParentFont = False
      end
      object MemDesc64: TfrxMemoView
        Align = baRight
        ShiftMode = smDontShift
        Left = 112.826661810000000000
        Top = 395.157717080000000000
        Width = 162.519968190000000000
        Height = 36.661417320000000000
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -19
        Font.Name = '2  Nazanin'
        Font.Style = [fsBold]
        Frame.Typ = [ftLeft, ftRight, ftBottom]
        HAlign = haCenter
        ParentFont = False
        VAlign = vaCenter
      end
      object MemName8: TfrxMemoView
        Align = baRight
        ShiftMode = smDontShift
        Left = 472.063297000000000000
        Top = 486.338900000000000000
        Width = 188.976500000000000000
        Height = 52.913385830000000000
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -19
        Font.Name = '2  Nazanin'
        Font.Style = []
        Frame.Typ = [ftLeft, ftRight, ftBottom]
        HAlign = haRight
        Memo.UTF8 = (
          ' '#1593#169#1591#175' '#1592#8224#1592#710#1591#179#1591#167#1591#178#1592#1657'  ')
        ParentFont = False
        VAlign = vaCenter
      end
      object MemName9: TfrxMemoView
        Align = baRight
        ShiftMode = smDontShift
        Left = 472.063297000000000000
        Top = 540.031850000000000000
        Width = 188.976500000000000000
        Height = 52.913385830000000000
        DisplayFormat.DecimalSeparator = '/'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -19
        Font.Name = '2  Nazanin'
        Font.Style = []
        Frame.Typ = [ftLeft, ftRight, ftBottom]
        HAlign = haRight
        Memo.UTF8 = (
          ' '#1591#1726#1592#710#1591#182#1594#338#1591#173#1591#167#1591#1726'  ')
        ParentFont = False
        VAlign = vaCenter
      end
      object MemDesc8: TfrxMemoView
        Align = baLeft
        ShiftMode = smDontShift
        Left = 113.385900000000000000
        Top = 486.338900000000000000
        Width = 359.055350000000000000
        Height = 52.913385830000000000
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = '2  Nazanin'
        Font.Style = [fsBold]
        Frame.Typ = [ftLeft, ftRight, ftBottom]
        HAlign = haCenter
        ParentFont = False
        VAlign = vaCenter
      end
      object MemDesc9: TfrxMemoView
        Align = baLeft
        ShiftMode = smDontShift
        Left = 113.385900000000000000
        Top = 540.031850000000000000
        Width = 359.055350000000000000
        Height = 52.913385830000000000
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = '2  Nazanin'
        Font.Style = [fsBold]
        Frame.Typ = [ftLeft, ftRight, ftBottom]
        HAlign = haCenter
        ParentFont = False
        VAlign = vaCenter
      end
      object MemDetail: TfrxMemoView
        Align = baWidth
        ShiftMode = smDontShift
        Left = 113.385900000000000000
        Top = 593.386210000000000000
        Width = 547.653897000000000000
        Height = 26.456710000000000000
        DisplayFormat.DecimalSeparator = '/'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = '2  Nazanin'
        Font.Style = [fsBold]
        Frame.Typ = [ftLeft, ftRight]
        HAlign = haCenter
        Memo.UTF8 = (
          #1593#169#1591#167#1591#177#1591#168#1591#177#1591#167#1592#8224' '#1591#162#1591#177#1591#180#1594#338#1592#710' '#1591#167#1592#8222#1593#169#1591#1726#1591#177#1592#710#1592#8224#1594#338#1593#169#1594#338)
        ParentFont = False
        VAlign = vaCenter
      end
      object MemDetail1: TfrxMemoView
        Align = baRight
        ShiftMode = smDontShift
        Left = 547.653982430000000000
        Top = 619.842920000000000000
        Width = 113.385814570000000000
        Height = 26.456710000000000000
        DisplayFormat.DecimalSeparator = '/'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -19
        Font.Name = '2  Nazanin'
        Font.Style = []
        Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
        HAlign = haCenter
        Memo.UTF8 = (
          ' '#1591#167#1591#179#1591#1726#1591#174#1591#177#1591#167#1591#172)
        ParentFont = False
      end
      object MemDetail21: TfrxMemoView
        Align = baRight
        ShiftMode = smDontShift
        Left = 317.921630860000000000
        Top = 646.480761650000000000
        Width = 109.606284570000000000
        Height = 34.015743150000000000
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = '2  Nazanin'
        Font.Style = []
        Frame.Typ = [ftLeft, ftRight, ftBottom]
        HAlign = haRight
        ParentFont = False
        VAlign = vaCenter
      end
      object MemDetail2: TfrxMemoView
        Align = baRight
        ShiftMode = smDontShift
        Left = 317.921630860000000000
        Top = 619.961535510000000000
        Width = 109.606284570000000000
        Height = 26.456710000000000000
        DisplayFormat.DecimalSeparator = '/'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -19
        Font.Name = '2  Nazanin'
        Font.Style = []
        Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
        HAlign = haCenter
        Memo.UTF8 = (
          ' '#1591#162#1592#8230#1591#167#1591#175#1592#8225' '#1591#179#1591#167#1591#178#1594#338)
        ParentFont = False
      end
      object MemDetail11: TfrxMemoView
        Align = baRight
        ShiftMode = smDontShift
        Left = 547.653982430000000000
        Top = 646.457095670000000000
        Width = 113.385814570000000000
        Height = 34.015728500000000000
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = '2  Nazanin'
        Font.Style = []
        Frame.Typ = [ftLeft, ftRight, ftBottom]
        HAlign = haRight
        ParentFont = False
        VAlign = vaCenter
      end
      object MemDetail4: TfrxMemoView
        Align = baRight
        ShiftMode = smDontShift
        Left = 113.826754570000000000
        Top = 619.842920000000000000
        Width = 105.827181720000000000
        Height = 26.456710000000000000
        DisplayFormat.DecimalSeparator = '/'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -19
        Font.Name = '2  Nazanin'
        Font.Style = []
        Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
        HAlign = haCenter
        Memo.UTF8 = (
          ' '#1591#167#1591#179#1593#169#1592#8224' '#1592#1662#1592#8222#1591#1726)
        ParentFont = False
      end
      object MemDetail41: TfrxMemoView
        Align = baRight
        ShiftMode = smDontShift
        Left = 113.826754570000000000
        Top = 646.480761650000000000
        Width = 105.827181720000000000
        Height = 34.015743150000000000
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = '2  Nazanin'
        Font.Style = []
        Frame.Typ = [ftLeft, ftRight, ftBottom]
        HAlign = haRight
        ParentFont = False
        VAlign = vaCenter
      end
      object MemDetail5: TfrxMemoView
        Align = baLeft
        ShiftMode = smDontShift
        Left = 427.527915430000000000
        Top = 619.842920000000000000
        Width = 120.944874570000000000
        Height = 26.456710000000000000
        DisplayFormat.DecimalSeparator = '/'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -19
        Font.Name = '2  Nazanin'
        Font.Style = []
        Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
        HAlign = haCenter
        Memo.UTF8 = (
          ' '#1591#168#1591#179#1591#1726#1592#8225' '#1591#168#1592#8224#1591#175#1594#338' ')
        ParentFont = False
      end
      object MemDetail51: TfrxMemoView
        Align = baLeft
        ShiftMode = smDontShift
        Left = 427.527915430000000000
        Top = 646.480761650000000000
        Width = 120.944874570000000000
        Height = 34.015743150000000000
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = '2  Nazanin'
        Font.Style = []
        Frame.Typ = [ftLeft, ftRight, ftBottom]
        HAlign = haRight
        ParentFont = False
        VAlign = vaCenter
      end
      object MemDetail3: TfrxMemoView
        Align = baRight
        ShiftMode = smDontShift
        Left = 219.653936290000000000
        Top = 619.842920000000000000
        Width = 98.267694570000000000
        Height = 26.456692910000000000
        DisplayFormat.DecimalSeparator = '/'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -19
        Font.Name = '2  Nazanin'
        Font.Style = []
        Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
        HAlign = haCenter
        Memo.UTF8 = (
          ' '#1591#167#1591#179#1593#169#1592#8224)
        ParentFont = False
      end
      object MemDetail31: TfrxMemoView
        Align = baRight
        ShiftMode = smDontShift
        Left = 219.653936290000000000
        Top = 646.480761650000000000
        Width = 98.267694570000000000
        Height = 34.015743150000000000
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = '2  Nazanin'
        Font.Style = []
        Frame.Typ = [ftLeft, ftRight, ftBottom]
        HAlign = haRight
        ParentFont = False
        VAlign = vaCenter
      end
    end
  end
end
