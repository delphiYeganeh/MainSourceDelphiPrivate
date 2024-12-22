inherited FTadakhol: TFTadakhol
  Left = 181
  Top = 162
  Caption = #1605#1588#1575#1607#1583#1607' '#1578#1583#1575#1582#1604' '#1580#1604#1587#1575#1578' '#1705#1575#1585#1576#1585
  ClientWidth = 756
  KeyPreview = True
  OldCreateOrder = True
  OnKeyPress = FormKeyPress
  PixelsPerInch = 96
  TextHeight = 13
  object MssPanelPro2: TMssPanelPro [0]
    Left = 0
    Top = 0
    Width = 756
    Height = 473
    Align = alClient
    TabOrder = 0
    DrawGrad = False
    GradFromColor = clBtnFace
    GradToColor = clWhite
    GradStyle = gsRadialTL
    object MssDBGrid2: TMssDBGrid
      Left = 1
      Top = 1
      Width = 754
      Height = 471
      Align = alClient
      DataSource = DSForm
      Options = [dgEditing, dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit]
      ReadOnly = True
      TabOrder = 0
      TitleFont.Charset = ARABIC_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'Tahoma'
      TitleFont.Style = []
      Flat = False
      Bands.Strings = (
        #1578#1575#1585#1610#1582
        #1586#1605#1575#1606)
      BandsFont.Charset = ARABIC_CHARSET
      BandsFont.Color = clWindowText
      BandsFont.Height = -11
      BandsFont.Name = 'Tahoma'
      BandsFont.Style = []
      GridStyle.Style = gsCustom
      GridStyle.OddColor = clWindow
      GridStyle.EvenColor = 15724527
      GridStyle.FilterColor = clWindow
      TitleHeight.PixelCount = 24
      FooterColor = clBtnFace
      ExOptions = [eoBooleanAsCheckBox, eoENTERlikeTAB, eoKeepSelection, eoDrawBands, eoTitleWordWrap, eoShowFilterBar, eoFilterAutoApply, eoShowColumnVisibility]
      FixedCols = 1
      WidthOfIndicator = 11
      DefaultRowHeight = 17
      ScrollBars = ssHorizontal
      ColCount = 14
      RowCount = 2
      MssImages = <>
      MssGroupHeaderField = 'Enter:HeaderFieldName'
      MssGroupHeaderFieldValue = 'Enter:HeaderFieldValue'
      MssGroupHeaderFieldCaption = 'Enter:HeaderFieldCaption'
      MssGroupHeaderColor = clBtnFace
      ModalDialogColor = clBtnFace
      Columns = <
        item
          Expanded = False
          FieldName = 'ID'
          Title.Caption = #1705#1583'/'#1588#1606#1575#1587#1607
          Width = 60
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'lkStatus'
          Title.Caption = #1608#1590#1593#1610#1578
          Width = 50
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'lkType'
          Title.Caption = #1606#1608#1593
          Width = 60
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'lkImportantLevel'
          Title.Caption = #1605#1610#1586#1575#1606' '#1575#1607#1605#1610#1578
          Width = 70
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'Subject'
          Title.Caption = #1605#1608#1590#1608#1593
          Width = -1
          Visible = False
        end
        item
          Expanded = False
          FieldName = 'Place'
          Title.Caption = #1605#1705#1575#1606
          Width = 100
          Visible = True
        end
        item
          Alignment = taCenter
          Expanded = False
          FieldName = 'Year_Shamsi'
          PickList.Strings = (
            '1390'
            '1391'
            '1392'
            '1393'
            '1394'
            '1395'
            '1396'
            '1397'
            '1398'
            '1399'
            '1400'
            '1401'
            '1402'
            '1403'
            '1404'
            '1405'
            '1406'
            '1407'
            '1408'
            '1409'
            '1410'
            '1411'
            '1412'
            '1413'
            '1414'
            '1415')
          Title.Alignment = taCenter
          Title.Caption = #1587#1575#1604
          Width = 30
          Visible = True
          BandIndex = 0
        end
        item
          Alignment = taCenter
          Expanded = False
          FieldName = 'Month_Shamsi'
          PickList.Strings = (
            #1601#1585#1608#1585#1583#1610#1606
            #1575#1585#1583#1610#1576#1607#1588#1578
            #1582#1585#1583#1575#1583
            #1578#1610#1585
            #1605#1585#1583#1575#1583
            #1588#1607#1585#1610#1608#1585
            #1605#1607#1585
            #1570#1576#1575#1606
            #1570#1584#1585
            #1583#1610
            #1576#1607#1605#1606
            #1575#1587#1601#1606#1583)
          Title.Alignment = taCenter
          Title.Caption = #1605#1575#1607
          Width = 75
          Visible = True
          BandIndex = 0
        end
        item
          Alignment = taCenter
          Expanded = False
          FieldName = 'Day_Shamsi'
          PickList.Strings = (
            '1'
            '2'
            '3'
            '4'
            '5'
            '6'
            '7'
            '8'
            '9'
            '10'
            '11'
            '12'
            '13'
            '14'
            '15'
            '16'
            '17'
            '18'
            '19'
            '20'
            '21'
            '22'
            '23'
            '24'
            '25'
            '26'
            '27'
            '28'
            '29'
            '30'
            '31')
          Title.Alignment = taCenter
          Title.Caption = #1585#1608#1586
          Width = 30
          Visible = True
          BandIndex = 0
        end
        item
          Alignment = taCenter
          Expanded = False
          FieldName = 'BeginTime'
          Title.Alignment = taCenter
          Title.Caption = #1588#1585#1608#1593
          Width = 40
          Visible = True
          BandIndex = 1
        end
        item
          Alignment = taCenter
          Expanded = False
          FieldName = 'EndTime'
          Title.Alignment = taCenter
          Title.Caption = #1662#1575#1610#1575#1606
          Width = 40
          Visible = True
          BandIndex = 1
        end
        item
          ButtonStyle = cbsEllipsis
          Expanded = False
          FieldName = 'lkManagerUserID'
          Title.Caption = #1601#1585#1583' '#1711#1585#1583#1575#1606#1606#1583#1607'('#1605#1583#1610#1585')'
          Width = 150
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'Description'
          Title.Caption = #1578#1608#1590#1610#1581#1575#1578
          Width = -1
          Visible = False
        end>
    end
  end
  inherited DSForm: TDataSource
    DataSet = QSessions
  end
  inherited Grid_PopupMenu: TPopupMenu
    Left = 279
    Top = 116
  end
  object QSessions: TADOQuery
    Connection = Dm.YeganehConnection
    Parameters = <>
    SQL.Strings = (
      
        'SELECT *,BeginTimeHour+'#39':'#39'+BeginTimeMinute AS '#39'BeginTime'#39',EndTim' +
        'eHour+'#39':'#39'+EndTimeMinute AS '#39'EndTime'#39
      'FROM WorkSheet_Base')
    Left = 624
    Top = 152
    object QSessionsID: TAutoIncField
      FieldName = 'ID'
      ReadOnly = True
    end
    object QSessionsType: TIntegerField
      FieldName = 'Type'
    end
    object QSessionslkType: TStringField
      FieldKind = fkLookup
      FieldName = 'lkType'
      LookupDataSet = Dm.QWorkSheetBaseType
      LookupKeyFields = 'Code'
      LookupResultField = 'Mean'
      KeyFields = 'Type'
      Size = 50
      Lookup = True
    end
    object QSessionsRegUserID: TIntegerField
      FieldName = 'RegUserID'
    end
    object QSessionslkRegUserID: TStringField
      FieldKind = fkLookup
      FieldName = 'lkRegUserID'
      LookupDataSet = Dm.QWorkSheetUsers
      LookupKeyFields = 'ID'
      LookupResultField = 'Title'
      KeyFields = 'RegUserID'
      Size = 100
      Lookup = True
    end
    object QSessionsRegDate_Shamsi: TStringField
      FieldName = 'RegDate_Shamsi'
      Size = 50
    end
    object QSessionsRegDate_Miladi: TStringField
      FieldName = 'RegDate_Miladi'
      Size = 50
    end
    object QSessionsYear_Shamsi: TStringField
      FieldName = 'Year_Shamsi'
    end
    object QSessionsYear_Miladi: TStringField
      FieldName = 'Year_Miladi'
    end
    object QSessionsMonth_Shamsi: TStringField
      FieldName = 'Month_Shamsi'
    end
    object QSessionsMonth_Miladi: TStringField
      FieldName = 'Month_Miladi'
    end
    object QSessionsDay_Shamsi: TStringField
      FieldName = 'Day_Shamsi'
    end
    object QSessionsDay_Miladi: TStringField
      FieldName = 'Day_Miladi'
    end
    object QSessionsPlace: TStringField
      FieldName = 'Place'
      Size = 200
    end
    object QSessionsSubject: TStringField
      FieldName = 'Subject'
      Size = 3000
    end
    object QSessionsImportantLevel: TIntegerField
      FieldName = 'ImportantLevel'
    end
    object QSessionslkImportantLevel: TStringField
      FieldKind = fkLookup
      FieldName = 'lkImportantLevel'
      LookupDataSet = Dm.QWorkSheetBaseImportantLevel
      LookupKeyFields = 'Code'
      LookupResultField = 'Mean'
      KeyFields = 'ImportantLevel'
      Size = 50
      Lookup = True
    end
    object QSessionsDescription: TStringField
      FieldName = 'Description'
      Size = 3000
    end
    object QSessionsManagerUserID: TIntegerField
      FieldName = 'ManagerUserID'
    end
    object QSessionslkManagerUserID: TStringField
      FieldKind = fkLookup
      FieldName = 'lkManagerUserID'
      LookupDataSet = Dm.QWorkSheetUsers
      LookupKeyFields = 'ID'
      LookupResultField = 'Title'
      KeyFields = 'ManagerUserID'
      Size = 100
      Lookup = True
    end
    object QSessionsStatus: TIntegerField
      FieldName = 'Status'
    end
    object QSessionslkStatus: TStringField
      FieldKind = fkLookup
      FieldName = 'lkStatus'
      LookupDataSet = Dm.QWorkSheetBaseStatus
      LookupKeyFields = 'Code'
      LookupResultField = 'Mean'
      KeyFields = 'Status'
      Size = 50
      Lookup = True
    end
    object QSessionsBeginTimeToMinute: TIntegerField
      FieldName = 'BeginTimeToMinute'
    end
    object QSessionsEndTimeToMinute: TIntegerField
      FieldName = 'EndTimeToMinute'
    end
    object QSessionsDate_Shamsi: TStringField
      FieldName = 'Date_Shamsi'
      Size = 50
    end
    object QSessionsBeginTimeHour: TStringField
      FieldName = 'BeginTimeHour'
      Size = 50
    end
    object QSessionsBeginTimeMinute: TStringField
      FieldName = 'BeginTimeMinute'
      Size = 50
    end
    object QSessionsEndTimeHour: TStringField
      FieldName = 'EndTimeHour'
      Size = 50
    end
    object QSessionsEndTimeMinute: TStringField
      FieldName = 'EndTimeMinute'
      Size = 50
    end
    object QSessionsBeginTime: TStringField
      FieldName = 'BeginTime'
      ReadOnly = True
      Size = 101
    end
    object QSessionsEndTime: TStringField
      FieldName = 'EndTime'
      ReadOnly = True
      Size = 101
    end
  end
end
