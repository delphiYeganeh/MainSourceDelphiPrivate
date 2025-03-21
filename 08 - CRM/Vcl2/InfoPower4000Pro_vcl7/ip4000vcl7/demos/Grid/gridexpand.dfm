object GridExpandForm: TGridExpandForm
  Left = 174
  Top = 257
  Width = 559
  Height = 319
  Caption = 'Expanding Grouped Fields'
  Color = clAqua
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  PixelsPerInch = 96
  TextHeight = 13
  object wwDBGrid1: TwwDBGrid
    Left = 0
    Top = 0
    Width = 534
    Height = 185
    ControlType.Strings = (
      'selected;CheckBox;Yes;No'
      'EDUCATION;CustomEdit;wwRadioGroup1;F'
      'SEX;CustomEdit;wwRadioGroup2;F'
      'MARRIED;CustomEdit;wwCheckBox2;F'
      'RINTERESTS;RichEdit;wwDBRichEdit2;T'
      'IMAGE;CustomEdit;DBImage2;T'
      'PAYMETHOD;CustomEdit;wwRadioGroup2;F'
      'Name;CustomEdit;wwExpandButton1;F'
      'ShippingAddress;CustomEdit;wwExpandButton2;F')
    Selected.Strings = (
      'ACCT_NBR'#9'7'#9'Account #'#9'F'
      'Name'#9'20'#9'Name'#9'F'
      'ShippingAddress'#9'39'#9'ShippingAddress'#9'F'
      'RINTERESTS'#9'14'#9'Interests/Hobbies'#9'F')
    IniAttributes.Delimiter = ';;'
    TitleColor = 12615680
    FixedCols = 1
    ShowHorzScrollBar = True
    Align = alTop
    DataSource = DataSource1
    Options = [dgEditing, dgAlwaysShowEditor, dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit, dgWordWrap, dgFixedResizable, dgProportionalColResize]
    TabOrder = 0
    TitleAlignment = taCenter
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
    TitleLines = 1
    TitleButtons = True
    UseTFields = False
    PaintOptions.BackgroundBitmap.Data = {
      07544269746D617056020000424D560200000000000076000000280000001E00
      00001E0000000100040000000000E0010000C40E0000C40E0000100000000000
      0000D9EEEE00C7E0E000EBFEFE00C6DFDF00B3D0D000EDFFFF00DAEFEF00B2CF
      CF00A1C0C000FFFFFF0000000000000000000000000000000000000000000000
      0000600111111111111333111116660110000001111110011111331111100011
      3000600001110601111111110000011331000000000000011111111000000011
      1100600000001100001111111006001111000000001111166600001111126011
      1000111001160006666666014411060011001100601000006666660111110001
      3300110666000000006662260001001111000000000000000006622226611111
      1000000111100011000662222260111106000601111000010006662222620113
      1100660111060000000600062662611111000601106660000000011066026111
      0600660000060100001062662262201102000600000600000000626622626011
      0200600006666000000062662262601102000066666666011000066622660011
      0600266622266001100000666660001006002226222660011100100000000000
      6600200666660000113131000000000662000000000601100341330011000066
      2200000006600000134000011111106626000000000111111111111111310066
      6600000001144333111331111110066600001000000114311113100000100060
      0000310066661410001111000000000001003110022201302011111111100000
      1100111002220000000011333110000000000010022222013100011310022000
      0000}
    PaintOptions.AlternatingRowRegions = [arrDataColumns]
    PaintOptions.FastRecordScrolling = False
    PaintOptions.AlternatingRowColor = clSilver
    PaintOptions.BackgroundOptions = [coFillDataCells, coBlendFixedRow, coBlendFixedColumn, coBlendAlternatingRow]
  end
  object wwDBRichEdit2: TwwDBRichEdit
    Left = 176
    Top = 40
    Width = 89
    Height = 16
    AutoURLDetect = False
    PrintJobName = 'Delphi 5'
    TabOrder = 1
    EditorCaption = 'Edit Rich Text'
    EditorPosition.Left = 0
    EditorPosition.Top = 0
    EditorPosition.Width = 0
    EditorPosition.Height = 0
    MeasurementUnits = muInches
    PrintMargins.Top = 1.000000000000000000
    PrintMargins.Bottom = 1.000000000000000000
    PrintMargins.Left = 1.000000000000000000
    PrintMargins.Right = 1.000000000000000000
    RichEditVersion = 2
    Data = {
      990000007B5C727466315C6662696469735C616E73695C616E73696370673132
      35325C64656666305C6465666C616E67313033337B5C666F6E7474626C7B5C66
      305C666E696C5C666368617273657430204D532053616E732053657269663B7D
      7D0D0A5C766965776B696E64345C7563315C706172645C6C74727061725C6630
      5C6673313620777744425269636845646974325C7061720D0A7D0D0A00}
  end
  object wwDataInspector1: TwwDataInspector
    Left = 272
    Top = 40
    Width = 211
    Height = 36
    Ctl3D = False
    CaptionColor = clNone
    ParentCtl3D = False
    ScrollBars = ssNone
    TabOrder = 2
    DataSource = DataSource1
    Items = <
      item
        DataSource = DataSource1
        DataField = 'FIRST_NAME'
        Caption = 'First Name'
        WordWrap = False
      end
      item
        DataSource = DataSource1
        DataField = 'LAST_NAME'
        Caption = 'Last Name'
        WordWrap = False
      end>
    CaptionWidth = 107
    Options = [ovColumnResize, ovRowResize, ovEnterToTab, ovCenterCaptionVert]
    CaptionFont.Charset = DEFAULT_CHARSET
    CaptionFont.Color = clWindowText
    CaptionFont.Height = -11
    CaptionFont.Name = 'MS Sans Serif'
    CaptionFont.Style = []
    LineStyleCaption = ovDottedLine
    LineStyleData = ovDottedLine
    CaptionIndent = 2
    Visible = False
  end
  object wwExpandButton1: TwwExpandButton
    Left = 312
    Top = 120
    Width = 124
    Height = 16
    TabStop = False
    Grid = wwDataInspector1
    Caption = 'wwExpandButton1'
    Color = clWindow
    ParentColor = False
    ShowText = True
    TabOrder = 3
  end
  object wwDataInspector2: TwwDataInspector
    Left = 72
    Top = 64
    Width = 211
    Height = 73
    Ctl3D = False
    CaptionColor = clNone
    ParentCtl3D = False
    ScrollBars = ssNone
    TabOrder = 4
    DataSource = DataSource1
    Items = <
      item
        DataSource = DataSource1
        DataField = 'ADDRESS_1'
        Caption = 'Street'
        WordWrap = False
      end
      item
        DataSource = DataSource1
        DataField = 'CITY'
        Caption = 'City'
        WordWrap = False
      end
      item
        DataSource = DataSource1
        DataField = 'STATE'
        Caption = 'State'
        WordWrap = False
      end
      item
        DataSource = DataSource1
        DataField = 'ZIP'
        Caption = 'Zip'
        WordWrap = False
      end>
    CaptionWidth = 107
    Options = [ovColumnResize, ovRowResize, ovEnterToTab, ovCenterCaptionVert]
    CaptionFont.Charset = DEFAULT_CHARSET
    CaptionFont.Color = clWindowText
    CaptionFont.Height = -11
    CaptionFont.Name = 'MS Sans Serif'
    CaptionFont.Style = []
    LineStyleCaption = ovDottedLine
    LineStyleData = ovDottedLine
    CaptionIndent = 2
    Visible = False
  end
  object wwExpandButton2: TwwExpandButton
    Left = 40
    Top = 136
    Width = 238
    Height = 16
    TabStop = False
    Grid = wwDataInspector2
    Caption = 'wwExpandButton1'
    Color = clWindow
    ParentColor = False
    ShowText = True
    TabOrder = 5
  end
  object wwDBRichEdit1: TwwDBRichEdit
    Left = 0
    Top = 185
    Width = 534
    Height = 159
    Align = alBottom
    AutoURLDetect = False
    PrintJobName = 'Delphi 5'
    TabOrder = 6
    EditorCaption = 'Edit Rich Text'
    EditorPosition.Left = 0
    EditorPosition.Top = 0
    EditorPosition.Width = 0
    EditorPosition.Height = 0
    MeasurementUnits = muInches
    PrintMargins.Top = 1.000000000000000000
    PrintMargins.Bottom = 1.000000000000000000
    PrintMargins.Left = 1.000000000000000000
    PrintMargins.Right = 1.000000000000000000
    RichEditVersion = 2
    Data = {
      6B0100007B5C727466315C6662696469735C616E73695C616E73696370673132
      35325C64656666305C6465666C616E67313033337B5C666F6E7474626C7B5C66
      305C666E696C5C6663686172736574302054696D6573204E657720526F6D616E
      3B7D7D0D0A5C766965776B696E64345C7563315C706172645C6C74727061725C
      66305C6673323220546869732064656D6F2064656D6F6E737472617465732061
      6E6F7468657220757365206F662074686520657870616E6420627574746F6E20
      636F6E74726F6C2077697468696E2074686520677269642E2020546865206772
      696420757365732074776F2063616C63756C61746564206669656C647320746F
      20646973706C617920746865206E616D6520616E642074686520616464726573
      732E202054686520757365722063616E20657870616E64207468657365206361
      6C63756C61746564206669656C647320746F2065646974207468656972207661
      6C7565732E5C7061720D0A7D0D0A00}
  end
  object DataSource1: TDataSource
    DataSet = Table1
    Left = 8
    Top = 8
  end
  object Table1: TTable
    Active = True
    OnCalcFields = Table1CalcFields
    DatabaseName = 'InfoDemo5'
    TableName = 'clients.DBF'
    Left = 40
    Top = 8
    object Table1ACCT_NBR: TFloatField
      DisplayLabel = 'Account #'
      DisplayWidth = 10
      FieldName = 'ACCT_NBR'
    end
    object Table1FIRST_NAME: TStringField
      DisplayLabel = 'First'
      DisplayWidth = 7
      FieldName = 'FIRST_NAME'
    end
    object Table1LAST_NAME: TStringField
      DisplayLabel = 'Last'
      DisplayWidth = 5
      FieldName = 'LAST_NAME'
    end
    object Table1RINTERESTS: TBlobField
      DisplayLabel = 'Interests/Hobbies'
      DisplayWidth = 33
      FieldName = 'RINTERESTS'
      BlobType = ftTypedBinary
      Size = 1
    end
    object Table1IMAGE: TBlobField
      DisplayLabel = 'Photo'
      DisplayWidth = 8
      FieldName = 'IMAGE'
      BlobType = ftTypedBinary
      Size = 1
    end
    object Table1PAYMETHOD: TSmallintField
      FieldName = 'PAYMETHOD'
    end
    object Table1BALANCEDUE: TFloatField
      FieldName = 'BALANCEDUE'
      currency = True
    end
    object Table1SEX: TStringField
      DisplayLabel = 'Sex'
      DisplayWidth = 15
      FieldName = 'SEX'
      Size = 6
    end
    object Table1MARRIED: TBooleanField
      DisplayLabel = 'Married?'
      DisplayWidth = 9
      FieldName = 'MARRIED'
    end
    object Table1CITY: TStringField
      DisplayWidth = 9
      FieldName = 'CITY'
    end
    object Table1EDUCATION: TSmallintField
      DisplayLabel = 'Highest level of Education:'
      DisplayWidth = 31
      FieldName = 'EDUCATION'
    end
    object Table1ADDRESS_1: TStringField
      DisplayWidth = 13
      FieldName = 'ADDRESS_1'
    end
    object Table1STATE: TStringField
      DisplayWidth = 5
      FieldName = 'STATE'
      Size = 2
    end
    object Table1ZIP: TStringField
      DisplayWidth = 5
      FieldName = 'ZIP'
      Size = 5
    end
    object Table1TELEPHONE: TStringField
      DisplayWidth = 12
      FieldName = 'TELEPHONE'
      Size = 12
    end
    object Table1DATE_OPEN: TDateField
      DisplayWidth = 14
      FieldName = 'DATE_OPEN'
    end
    object Table1INTERESTS: TStringField
      DisplayWidth = 33
      FieldName = 'INTERESTS'
      Size = 120
    end
    object Table1SS_NUMBER: TFloatField
      DisplayWidth = 11
      FieldName = 'SS_NUMBER'
    end
    object Table1PICTURE: TStringField
      DisplayWidth = 15
      FieldName = 'PICTURE'
      Size = 15
    end
    object Table1BIRTH_DATE: TDateField
      DisplayWidth = 11
      FieldName = 'BIRTH_DATE'
    end
    object Table1RISK_LEVEL: TStringField
      DisplayWidth = 10
      FieldName = 'RISK_LEVEL'
      Size = 8
    end
    object Table1OCCUPATION: TStringField
      DisplayWidth = 20
      FieldName = 'OCCUPATION'
    end
    object Table1OBJECTIVES: TStringField
      DisplayWidth = 10
      FieldName = 'OBJECTIVES'
      Size = 10
    end
    object Table1CREDRATING: TStringField
      DisplayWidth = 11
      FieldName = 'CREDRATING'
      Size = 1
    end
    object Table1Name: TStringField
      FieldKind = fkCalculated
      FieldName = 'Name'
      Size = 40
      Calculated = True
    end
    object Table1ShippingAddress: TStringField
      FieldKind = fkCalculated
      FieldName = 'ShippingAddress'
      Size = 60
      Calculated = True
    end
  end
end
