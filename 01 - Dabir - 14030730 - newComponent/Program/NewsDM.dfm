object DMNews: TDMNews
  OldCreateOrder = False
  Left = 762
  Top = 196
  Height = 489
  Width = 520
  object DSNews: TDataSource
    AutoEdit = False
    DataSet = SpNews
    Left = 28
    Top = 61
  end
  object SpNews: TADOStoredProc
    Connection = Dm.YeganehConnection
    CursorType = ctStatic
    AfterInsert = SpNewsAfterInsert
    BeforePost = SpNewsBeforePost
    AfterPost = SpNewsAfterPost
    BeforeDelete = SpNewsBeforeDelete
    AfterScroll = SpNewsAfterScroll
    ProcedureName = 'Sp_Sel_News;1'
    Parameters = <
      item
        Name = '@RETURN_VALUE'
        DataType = ftInteger
        Direction = pdReturnValue
        Precision = 10
        Value = Null
      end
      item
        Name = '@Like'
        Attributes = [paNullable]
        DataType = ftWideString
        Size = 50
        Value = #39#39
      end>
    Left = 28
    Top = 13
    object SpNewsNewsID: TAutoIncField
      FieldName = 'NewsID'
      ReadOnly = True
    end
    object SpNewsCode: TIntegerField
      FieldName = 'Code'
    end
    object SpNewsTitle: TWideStringField
      Alignment = taRightJustify
      FieldName = 'Title'
      Size = 300
    end
    object SpNewsMemo: TWideStringField
      FieldName = 'Memo'
      Size = 3000
    end
    object SpNewsUrgenceisID: TSmallintField
      FieldName = 'UrgenceisID'
    end
    object SpNewsDateAnnounce: TWideStringField
      FieldName = 'DateAnnounce'
      Size = 10
    end
    object SpNewsTimeAnnounce: TWideStringField
      FieldName = 'TimeAnnounce'
      EditMask = '!90:00;1; '
      Size = 10
    end
    object SpNewsDateExpire: TWideStringField
      FieldName = 'DateExpire'
      Size = 10
    end
    object SpNewsUserID: TIntegerField
      FieldName = 'UserID'
    end
    object SpNewsUserTitle: TStringField
      FieldKind = fkLookup
      FieldName = 'UserTitle'
      LookupDataSet = QrUsersList
      LookupKeyFields = 'Id'
      LookupResultField = 'Title'
      KeyFields = 'UserID'
      Lookup = True
    end
  end
  object QrUsersList: TADOQuery
    Connection = Dm.YeganehConnection
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'Select  Id,Title,UserName,PassWord '
      'From Users'
      '')
    Left = 186
    Top = 13
    object QrUsersListId: TAutoIncField
      FieldName = 'Id'
      ReadOnly = True
    end
    object QrUsersListTitle: TWideStringField
      Alignment = taRightJustify
      FieldName = 'Title'
      Size = 50
    end
    object QrUsersListUserName: TWideStringField
      Alignment = taRightJustify
      FieldName = 'UserName'
      Size = 50
    end
    object QrUsersListPassWord: TWideStringField
      Alignment = taRightJustify
      FieldName = 'PassWord'
      Size = 50
    end
  end
  object DSUsersList: TDataSource
    DataSet = QrUsersList
    Left = 186
    Top = 61
  end
  object DSImageData: TDataSource
    DataSet = SPImageData
    Left = 107
    Top = 61
  end
  object SPImageData: TADOStoredProc
    Connection = Dm.YeganehConnection
    CursorType = ctStatic
    ProcedureName = 'Sp_Sel_ImageData;1'
    Parameters = <
      item
        Name = '@RETURN_VALUE'
        DataType = ftInteger
        Direction = pdReturnValue
        Precision = 10
        Value = 0
      end
      item
        Name = '@TableName'
        Attributes = [paNullable]
        DataType = ftWideString
        Size = 50
        Value = 'Null'
      end
      item
        Name = '@TableID'
        Attributes = [paNullable]
        DataType = ftInteger
        Precision = 10
        Value = 0
      end>
    Left = 107
    Top = 13
    object SPImageDataImageDataID: TAutoIncField
      FieldName = 'ImageDataID'
      ReadOnly = True
    end
    object SPImageDataData: TBlobField
      Alignment = taRightJustify
      FieldName = 'Data'
    end
    object SPImageDataTableName: TWideStringField
      Alignment = taRightJustify
      FieldName = 'TableName'
      Size = 50
    end
    object SPImageDataTableID: TIntegerField
      FieldName = 'TableID'
    end
    object SPImageDataTag: TIntegerField
      FieldName = 'Tag'
    end
    object SPImageDataFileName: TWideStringField
      FieldName = 'FileName'
      Size = 50
    end
  end
  object QrUsers: TADOQuery
    Connection = Dm.YeganehConnection
    CursorType = ctStatic
    Parameters = <
      item
        Name = 'Pa_UserID'
        Attributes = [paSigned]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = Null
      end>
    SQL.Strings = (
      #13'/*'#1606#1575#1605' '#1705#1575#1585#1576#1585' '#1579#1576#1578' '#1705#1606#1606#1583#1607' */'#10
      'Select  Id,Title,UserName,PassWord '
      'From Users'
      'Where ID = :Pa_UserID')
    Left = 265
    Top = 13
    object AutoIncField1: TAutoIncField
      FieldName = 'Id'
      ReadOnly = True
    end
    object WideStringField1: TWideStringField
      Alignment = taRightJustify
      FieldName = 'Title'
      Size = 50
    end
    object WideStringField2: TWideStringField
      Alignment = taRightJustify
      FieldName = 'UserName'
      Size = 50
    end
    object WideStringField3: TWideStringField
      Alignment = taRightJustify
      FieldName = 'PassWord'
      Size = 50
    end
  end
  object DSUsers: TDataSource
    DataSet = QrUsers
    Left = 265
    Top = 61
  end
  object DSNewsGroup: TDataSource
    DataSet = SPNewsGroup
    Left = 68
    Top = 197
  end
  object QrNewsGroupUsers: TADOQuery
    Connection = Dm.YeganehConnection
    Parameters = <
      item
        Name = 'Pa_NewsGroupID'
        Attributes = [paSigned]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = 0
      end>
    SQL.Strings = (
      'Select *'
      'From NewsGroupUsers'
      'Where(NewsGroupID = :Pa_NewsGroupID )'
      '')
    Left = 186
    Top = 144
    object QrNewsGroupUsersNewsGroupUsersID: TIntegerField
      FieldName = 'NewsGroupUsersID'
    end
    object QrNewsGroupUsersUsersID: TIntegerField
      FieldName = 'UsersID'
    end
    object QrNewsGroupUsersNewsGroupID: TIntegerField
      FieldName = 'NewsGroupID'
    end
  end
  object DSNewsGroupUsers: TDataSource
    DataSet = QrNewsGroupUsers
    Left = 178
    Top = 197
  end
  object SPNewsGroup: TADOStoredProc
    Connection = Dm.YeganehConnection
    ProcedureName = 'Sp_Sel_NewsGroup;1'
    Parameters = <
      item
        Name = '@RETURN_VALUE'
        DataType = ftInteger
        Direction = pdReturnValue
        Precision = 10
        Value = 0
      end
      item
        Name = '@UsersID'
        Attributes = [paNullable]
        DataType = ftInteger
        Precision = 10
        Value = 0
      end>
    Left = 68
    Top = 144
    object SPNewsGroupNewsGroupID: TIntegerField
      FieldName = 'NewsGroupID'
    end
    object SPNewsGroupTitle: TWideStringField
      Alignment = taRightJustify
      DisplayLabel = #1593#1606#1608#1575#1606' '#1711#1585#1608#1607' '#1582#1576#1585#1610
      FieldName = 'Title'
      Size = 50
    end
    object SPNewsGroupDescript: TWideStringField
      Alignment = taRightJustify
      DisplayLabel = #1578#1608#1590#1610#1581#1575#1578
      FieldName = 'Descript'
      Size = 300
    end
    object SPNewsGroupUsersID: TIntegerField
      FieldName = 'UsersID'
    end
  end
  object frxJPEGExport1: TfrxJPEGExport
    UseFileCache = True
    ShowProgress = True
    OverwritePrompt = False
    DataOnly = False
    Left = 299
    Top = 340
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
    Left = 299
    Top = 392
  end
  object frxBMPExport1: TfrxBMPExport
    UseFileCache = True
    ShowProgress = True
    OverwritePrompt = False
    DataOnly = False
    Left = 213
    Top = 392
  end
  object frxRTFExport1: TfrxRTFExport
    UseFileCache = True
    ShowProgress = True
    OverwritePrompt = False
    DataOnly = False
    PictureType = gpPNG
    Wysiwyg = True
    Creator = 'FastReport http://www.fast-report.com'
    SuppressPageHeadersFooters = False
    HeaderFooterMode = hfText
    AutoSize = False
    Left = 213
    Top = 340
  end
  object frxXMLExport1: TfrxXMLExport
    UseFileCache = True
    ShowProgress = True
    OverwritePrompt = False
    DataOnly = False
    Background = True
    Creator = 'FastReport'
    EmptyLines = True
    SuppressPageHeadersFooters = False
    RowsCount = 0
    Split = ssNotSplit
    Left = 299
    Top = 288
  end
  object frxTXTExport1: TfrxTXTExport
    UseFileCache = True
    ShowProgress = True
    OverwritePrompt = False
    DataOnly = False
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
    Left = 127
    Top = 392
  end
  object frxSimpleTextExport1: TfrxSimpleTextExport
    UseFileCache = True
    ShowProgress = True
    OverwritePrompt = False
    DataOnly = False
    Frames = False
    EmptyLines = False
    OEMCodepage = False
    DeleteEmptyColumns = True
    Left = 41
    Top = 392
  end
  object frxXLSExport1: TfrxXLSExport
    UseFileCache = True
    ShowProgress = True
    OverwritePrompt = False
    DataOnly = False
    ExportEMF = True
    AsText = False
    Background = True
    FastExport = True
    PageBreaks = True
    EmptyLines = True
    SuppressPageHeadersFooters = False
    Left = 213
    Top = 288
  end
  object frxPDFExport1: TfrxPDFExport
    UseFileCache = True
    ShowProgress = True
    OverwritePrompt = False
    DataOnly = False
    PrintOptimized = False
    Outline = False
    Background = False
    HTMLTags = True
    Quality = 95
    Transparency = False
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
    PdfA = False
    Left = 127
    Top = 288
  end
  object frxGIFExport1: TfrxGIFExport
    UseFileCache = True
    ShowProgress = True
    OverwritePrompt = False
    DataOnly = False
    Left = 127
    Top = 340
  end
  object frxTIFFExport1: TfrxTIFFExport
    UseFileCache = True
    ShowProgress = True
    OverwritePrompt = False
    DataOnly = False
    Left = 41
    Top = 340
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
    TemplatesExt = 'fr3'
    Restrictions = []
    RTLLanguage = False
    MemoParentFont = False
    Left = 41
    Top = 288
  end
  object QrRepNews: TADOQuery
    Connection = Dm.YeganehConnection
    Parameters = <
      item
        Name = 'Pa_NewsID'
        Attributes = [paSigned]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = 0
      end>
    SQL.Strings = (
      'Select N.* , U.Title as UserName'
      'from News N'
      'Inner Join Users U on U.ID = N.UserID'
      'Where N.NewsID = :Pa_NewsID')
    Left = 424
    Top = 13
    object QrRepNewsNewsID: TAutoIncField
      FieldName = 'NewsID'
      ReadOnly = True
    end
    object QrRepNewsCode: TIntegerField
      DisplayLabel = #1705#1583' '#1582#1576#1585
      FieldName = 'Code'
    end
    object QrRepNewsTitle: TWideStringField
      DisplayLabel = #1593#1606#1608#1575#1606' '#1582#1576#1585
      DisplayWidth = 100
      FieldName = 'Title'
      Size = 300
    end
    object QrRepNewsMemo: TWideStringField
      DisplayLabel = #1605#1578#1606' '#1582#1576#1585
      FieldName = 'Memo'
      Size = 3000
    end
    object QrRepNewsUrgenceisID: TSmallintField
      FieldName = 'UrgenceisID'
    end
    object QrRepNewsDateAnnounce: TWideStringField
      DisplayLabel = #1578#1575#1585#1610#1582' '#1575#1593#1604#1575#1606
      FieldName = 'DateAnnounce'
      Size = 10
    end
    object QrRepNewsTimeAnnounce: TWideStringField
      DisplayLabel = #1587#1575#1593#1578' '#1575#1593#1604#1575#1606
      FieldName = 'TimeAnnounce'
      Size = 10
    end
    object QrRepNewsDateExpire: TWideStringField
      DisplayLabel = #1578#1575#1585#1610#1582' '#1575#1606#1602#1590#1575#1569
      FieldName = 'DateExpire'
      Size = 10
    end
    object QrRepNewsUserID: TIntegerField
      FieldName = 'UserID'
    end
    object QrRepNewsUserName: TWideStringField
      DisplayLabel = #1606#1575#1605' '#1705#1575#1585#1576#1585' '#1579#1576#1578' '#1705#1606#1606#1583#1607
      FieldName = 'UserName'
      Size = 50
    end
  end
  object DSRepNews: TDataSource
    DataSet = QrRepNews
    Left = 424
    Top = 61
  end
  object frxDBRepNews: TfrxDBDataset
    UserName = #1578#1593#1585#1610#1601' '#1582#1576#1585
    CloseDataSource = False
    FieldAliases.Strings = (
      '-NewsID=NewsID'
      'Code='#1705#1583' '#1582#1576#1585
      'Title='#1593#1606#1608#1575#1606' '#1582#1576#1585
      'Memo='#1605#1578#1606' '#1582#1576#1585
      '-UrgenceisID=UrgenceisID'
      'DateAnnounce='#1578#1575#1585#1610#1582' '#1575#1593#1604#1575#1606
      'TimeAnnounce='#1587#1575#1593#1578' '#1575#1593#1604#1575#1606
      'DateExpire='#1578#1575#1585#1610#1582' '#1575#1606#1602#1590#1575#1569
      '-UserID=UserID'
      'UserName='#1606#1575#1605' '#1705#1575#1585#1576#1585' '#1579#1576#1578' '#1705#1606#1606#1583#1607)
    DataSet = QrRepNews
    BCDToCurrency = False
    Left = 424
    Top = 112
  end
  object frxRepNews: TfrxReport
    Version = '5.4.6'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick]
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = #1662#1610#1588' '#1601#1585#1590
    PrintOptions.PrintOnSheet = 0
    ReportOptions.CreateDate = 39848.480324976900000000
    ReportOptions.LastChange = 39848.533959050910000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      'begin'
      ''
      'end.')
    Left = 424
    Top = 160
    Datasets = <
      item
        DataSet = frxDBRepNews
        DataSetName = #1578#1593#1585#1610#1601' '#1582#1576#1585
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
        FillType = ftBrush
        Height = 45.354360000000000000
        Top = 18.897650000000000000
        Width = 755.906000000000000000
        object Shape4: TfrxShapeView
          Align = baClient
          Width = 755.906000000000000000
          Height = 45.354360000000000000
          Fill.BackColor = 11206655
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
            #1593#175#1591#178#1591#167#1591#177#1591#180' '#1593#175#1592#1657#1591#177#1592#1657' '#1591#167#1591#178' '#1592#1662#1591#177#1592#8230' '#1591#174#1591#168#1591#177)
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
        FillType = ftBrush
        Height = 799.211143260000000000
        Top = 170.078850000000000000
        Width = 755.906000000000000000
        DataSet = frxDBRepNews
        DataSetName = #1578#1593#1585#1610#1601' '#1582#1576#1585
        RowCount = 0
        object Shape2: TfrxShapeView
          Align = baClient
          Width = 755.906000000000000000
          Height = 799.211143260000000000
          Curve = 1
          Shape = skRoundRectangle
        end
        object Line6: TfrxLineView
          Left = 201.671923330000000000
          Top = 1.028756659999999000
          Height = 26.456710000000000000
          Color = clBlack
          Frame.Typ = [ftLeft]
        end
        object Line4: TfrxLineView
          Left = 343.166666670000000000
          Top = 0.195423330000011200
          Height = 26.456710000000000000
          Color = clBlack
          Frame.Typ = [ftLeft]
        end
        object Line2: TfrxLineView
          Left = 696.579160000000000000
          Top = 0.333333330000016300
          Height = 26.456710000000000000
          Color = clBlack
          Frame.Typ = [ftLeft]
        end
        object Line5: TfrxLineView
          Left = 265.522263330000000000
          Top = 1.028756670000007000
          Height = 26.456710000000000000
          Color = clBlack
          Frame.Typ = [ftLeft]
        end
        object Line7: TfrxLineView
          Left = 141.015770000000000000
          Top = 0.362089999999994900
          Height = 26.456710000000000000
          Color = clBlack
          Frame.Typ = [ftLeft]
        end
        object Memo3: TfrxMemoView
          Left = 703.767773790000000000
          Top = 3.779529999999994000
          Width = 47.679941400000000000
          Height = 18.897650000000000000
          DataField = #1705#1583' '#1582#1576#1585
          DataSet = frxDBRepNews
          DataSetName = #1578#1593#1585#1610#1601' '#1582#1576#1585
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8 = (
            '['#1591#1726#1591#185#1591#177#1592#1657#1592#1662' '#1591#174#1591#168#1591#177'."'#1593#169#1591#175' '#1591#174#1591#168#1591#177'"]')
          ParentFont = False
        end
        object Memo8: TfrxMemoView
          Left = 712.291223720000000000
          Top = 29.950338750000010000
          Width = 39.931685270000000000
          Height = 18.897650000000000000
          DisplayFormat.DecimalSeparator = '.'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8 = (
            #1592#8230#1591#1726#1592#8224' '#1591#174#1591#168#1591#177)
          ParentFont = False
        end
        object Memo7: TfrxMemoView
          Left = 8.875968990000000000
          Top = 49.161460079999980000
          Width = 740.547181700000000000
          Height = 739.052688760000000000
          DataSet = frxDBRepNews
          DataSetName = #1578#1593#1585#1610#1601' '#1582#1576#1585
          DisplayFormat.DecimalSeparator = '.'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8 = (
            '['#1591#1726#1591#185#1591#177#1592#1657#1592#1662' '#1591#174#1591#168#1591#177'."'#1592#8230#1591#1726#1592#8224' '#1591#174#1591#168#1591#177'"]')
          ParentFont = False
        end
        object Line1: TfrxLineView
          Left = 0.000000010000000000
          Top = 26.820374810000000000
          Width = 756.589147280000000000
          Color = clBlack
          Frame.Typ = [ftTop]
        end
        object Memo16: TfrxMemoView
          Left = 3.100775200000000000
          Top = 3.564560849999992000
          Width = 133.963513340000000000
          Height = 18.897650000000000000
          DataField = #1606#1575#1605' '#1705#1575#1585#1576#1585' '#1579#1576#1578' '#1705#1606#1606#1583#1607
          DataSet = frxDBRepNews
          DataSetName = #1578#1593#1585#1610#1601' '#1582#1576#1585
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8 = (
            '['#1591#1726#1591#185#1591#177#1592#1657#1592#1662' '#1591#174#1591#168#1591#177'."'#1592#8224#1591#167#1592#8230' '#1593#169#1591#167#1591#177#1591#168#1591#177' '#1591#171#1591#168#1591#1726' '#1593#169#1592#8224#1592#8224#1591#175#1592#8225'"]')
          ParentFont = False
        end
        object Memo14: TfrxMemoView
          Left = 144.961240310000000000
          Top = 3.564560849999992000
          Width = 53.013540850000000000
          Height = 18.897650000000000000
          DataField = #1578#1575#1585#1610#1582' '#1575#1606#1602#1590#1575#1569
          DataSet = frxDBRepNews
          DataSetName = #1578#1593#1585#1610#1601' '#1582#1576#1585
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8 = (
            '['#1591#1726#1591#185#1591#177#1592#1657#1592#1662' '#1591#174#1591#168#1591#177'."'#1591#1726#1591#167#1591#177#1592#1657#1591#174' '#1591#167#1592#8224#1592#8218#1591#182#1591#167#1591#1548'"]')
          ParentFont = False
        end
        object Memo12: TfrxMemoView
          Left = 206.976744180000000000
          Top = 3.564560849999992000
          Width = 55.339122250000000000
          Height = 18.897650000000000000
          DataField = #1587#1575#1593#1578' '#1575#1593#1604#1575#1606
          DataSet = frxDBRepNews
          DataSetName = #1578#1593#1585#1610#1601' '#1582#1576#1585
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8 = (
            '['#1591#1726#1591#185#1591#177#1592#1657#1592#1662' '#1591#174#1591#168#1591#177'."'#1591#179#1591#167#1591#185#1591#1726' '#1591#167#1591#185#1592#8222#1591#167#1592#8224'"]')
          ParentFont = False
        end
        object Memo9: TfrxMemoView
          Left = 268.992248070000000000
          Top = 3.564560849999992000
          Width = 71.618192020000000000
          Height = 18.897650000000000000
          DataField = #1578#1575#1585#1610#1582' '#1575#1593#1604#1575#1606
          DataSet = frxDBRepNews
          DataSetName = #1578#1593#1585#1610#1601' '#1582#1576#1585
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8 = (
            '['#1591#1726#1591#185#1591#177#1592#1657#1592#1662' '#1591#174#1591#168#1591#177'."'#1591#1726#1591#167#1591#177#1592#1657#1591#174' '#1591#167#1591#185#1592#8222#1591#167#1592#8224'"]')
          ParentFont = False
        end
        object Memo5: TfrxMemoView
          Left = 348.000000000000000000
          Top = 4.587816659999987000
          Width = 345.260360000000000000
          Height = 18.897650000000000000
          DataField = #1593#1606#1608#1575#1606' '#1582#1576#1585
          DataSet = frxDBRepNews
          DataSetName = #1578#1593#1585#1610#1601' '#1582#1576#1585
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8 = (
            '['#1591#1726#1591#185#1591#177#1592#1657#1592#1662' '#1591#174#1591#168#1591#177'."'#1591#185#1592#8224#1592#710#1591#167#1592#8224' '#1591#174#1591#168#1591#177'"]')
          ParentFont = False
        end
      end
      object Header1: TfrxHeader
        FillType = ftBrush
        Height = 24.167903330000000000
        Top = 124.724490000000000000
        Width = 755.906000000000000000
        object Shape3: TfrxShapeView
          Align = baClient
          Width = 755.906000000000000000
          Height = 24.167903330000000000
          Curve = 1
          Fill.BackColor = 15329769
          Shape = skRoundRectangle
        end
        object Memo10: TfrxMemoView
          Left = 264.771800000000000000
          Top = 3.000000000000000000
          Width = 75.590551180000000000
          Height = 18.897650000000000000
          DisplayFormat.DecimalSeparator = '.'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haCenter
          Memo.UTF8 = (
            #1591#1726#1591#167#1591#177#1592#1657#1591#174' '#1591#167#1591#185#1592#8222#1591#167#1592#8224)
          ParentFont = False
        end
        object Memo13: TfrxMemoView
          Left = 202.853123330000000000
          Top = 3.000000000000000000
          Width = 60.472480000000000000
          Height = 18.897650000000000000
          DisplayFormat.DecimalSeparator = '.'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haCenter
          Memo.UTF8 = (
            #1591#179#1591#167#1591#185#1591#1726' '#1591#167#1591#185#1592#8222#1591#167#1592#8224)
          ParentFont = False
        end
        object Memo15: TfrxMemoView
          Left = 141.047310000000000000
          Top = 3.000000000000000000
          Width = 60.472480000000000000
          Height = 18.897650000000000000
          DisplayFormat.DecimalSeparator = '.'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haCenter
          Memo.UTF8 = (
            #1591#1726#1591#167#1591#177#1592#1657#1591#174' '#1591#167#1592#8224#1592#8218#1591#182#1591#167#1591#1548)
          ParentFont = False
        end
        object Memo17: TfrxMemoView
          Left = 3.484230000000000000
          Top = 3.000000000000000000
          Width = 137.563080000000000000
          Height = 18.897650000000000000
          DisplayFormat.DecimalSeparator = '.'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haCenter
          Memo.UTF8 = (
            #1592#8224#1591#167#1592#8230' '#1593#169#1591#167#1591#177#1591#168#1591#177' '#1591#171#1591#168#1591#1726' '#1593#169#1592#8224#1592#8224#1591#175#1592#8225)
          ParentFont = False
        end
        object Memo4: TfrxMemoView
          Left = 696.000000000000000000
          Top = 3.270265530000003000
          Width = 55.811070000000000000
          Height = 18.897637800000000000
          DisplayFormat.DecimalSeparator = '.'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haCenter
          Memo.UTF8 = (
            #1593#169#1591#175' '#1591#174#1591#168#1591#177)
          ParentFont = False
        end
        object Memo20: TfrxMemoView
          Left = 340.561533330000000000
          Top = 3.270253330000003000
          Width = 354.593383330000000000
          Height = 18.897650000000000000
          DisplayFormat.DecimalSeparator = '.'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haCenter
          Memo.UTF8 = (
            #1591#185#1592#8224#1592#710#1591#167#1592#8224' '#1591#174#1591#168#1591#177)
          ParentFont = False
        end
      end
      object PageFooter1: TfrxPageFooter
        FillType = ftBrush
        Height = 22.677180000000000000
        Top = 1031.811690000000000000
        Width = 755.906000000000000000
        object Memo2: TfrxMemoView
          Left = 540.742533020000000000
          Top = 2.350339999999960000
          Width = 211.421970310000000000
          Height = 18.897650000000000000
          DisplayFormat.DecimalSeparator = '.'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8 = (
            
              ' :  '#1591#180#1591#177#1593#169#1591#1726' '#1592#1657#1593#175#1591#167#1592#8224#1592#8225' - '#1592#8224#1591#177#1592#8230' '#1591#167#1592#1662#1591#178#1591#167#1591#177' '#1591#175#1591#168#1592#1657#1591#177#1591#174#1591#167#1592#8224#1592#8225' '#1592#710' ' +
              #1593#169#1591#167#1591#177#1591#1726#1591#167#1591#168#1592#8222' '#1591#1726#1592#8222#1592#1662#1592#8224)
          ParentFont = False
        end
        object Memo6: TfrxMemoView
          Left = 471.686046510000000000
          Top = 1.362406199999896000
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
  object QrNewsUsers: TADOQuery
    Connection = Dm.YeganehConnection
    CursorType = ctStatic
    Parameters = <
      item
        Name = 'Pa_NewsID'
        DataType = ftInteger
        Size = -1
        Value = Null
      end>
    SQL.Strings = (
      '/*'#1705#1575#1585#1576#1585#1575#1606' '#1583#1585#1610#1575#1601#1578' '#1705#1606#1606#1583#1607' '#1582#1576#1585'*/'
      'Select *'
      'From NewsUsers'
      'Where(NewsID = :Pa_NewsID)'
      '')
    Left = 344
    Top = 13
    object QrNewsUsersNewsUsersID: TAutoIncField
      FieldName = 'NewsUsersID'
      ReadOnly = True
    end
    object QrNewsUsersNewsID: TIntegerField
      FieldName = 'NewsID'
    end
    object QrNewsUsersUsersID: TIntegerField
      FieldName = 'UsersID'
    end
    object QrNewsUsersIsRead: TBooleanField
      FieldName = 'IsRead'
    end
    object QrNewsUsersNotShow: TBooleanField
      FieldName = 'NotShow'
    end
  end
  object DSNewsUsers: TDataSource
    DataSet = QrNewsUsers
    Left = 344
    Top = 61
  end
end
