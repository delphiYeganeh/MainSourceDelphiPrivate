object ProgressForm: TProgressForm
  Left = 246
  Top = 286
  Width = 710
  Height = 359
  Caption = 'ProgressBar Demo'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poDefaultPosOnly
  PixelsPerInch = 96
  TextHeight = 13
  object fcGroupBox1: TfcGroupBox
    Left = 16
    Top = 8
    Width = 345
    Height = 313
    Caption = 'ProgressBar Samples'
    TabOrder = 0
    object fcDemoRichEdit1: TfcDemoRichEdit
      Left = 8
      Top = 112
      Width = 257
      Height = 193
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
      TabOrder = 0
      RichEditLines = {
        7B5C727466315C616E73695C616E7369637067313235325C64656666305C6465
        666C616E67313033337B5C666F6E7474626C7B5C66305C66726F6D616E5C6670
        7271325C6663686172736574302054696D6573204E657720526F6D616E3B7D7B
        5C66315C666E696C5C66636861727365743020417269616C3B7D7D0D0A5C7669
        65776B696E64345C7563315C706172645C66692D3336305C6C693336305C7361
        34335C74783732305C66305C6673323020312E5C746162205468652031737443
        6C6173732050726F67726573734261722063616E20626520626F756E6420746F
        2061206461746162617365206669656C642C2063616C63756C61746564206669
        656C642028696E7465676572292C206F722063616E206265207573656420756E
        626F756E642E0D0A5C70617220322E5C7461622055736520697420696E736964
        6520616E20496E666F506F77657220766572746963616C206F7220686F72697A
        6F6E74616C2067726964202854777744617461496E73706563746F72292C206F
        722075736520697420696E20612044424374726C477269642E0D0A5C70617220
        332E5C7461622043616E20646973706C6179206120666F726D61747465642074
        6578742076616C756520726570726573656E74696E6720746865206375727265
        6E7420747261636B20706F736974696F6E0D0A5C70617220342E5C746162204E
        756D65726F75732070726F7065727469657320746F2066696E652D74756E6520
        7468652070726F6772657320626172277320646973706C61790D0A5C70617220
        352E5C74616220537570706F727473207468656D65730D0A5C706172205C7061
        72645C66692D3336305C6C693336305C736134335C6631200D0A5C706172207D
        0D0A00}
    end
    object fcProgressBar2: TfcProgressBar
      Left = 16
      Top = 24
      Width = 225
      Height = 17
      BlockColor = clBlack
      TabOrder = 1
    end
    object fcProgressBar3: TfcProgressBar
      Left = 280
      Top = 16
      Width = 49
      Height = 137
      BlockColor = clBlack
      Orientation = fcpbVertical
      Smooth = True
      TabOrder = 2
    end
  end
  object fcGroupBox4: TfcGroupBox
    Left = 376
    Top = 8
    Width = 297
    Height = 313
    Caption = 'Embed in DBCtrlGrid or InfoPower'#39's vertical or horizontal grid'
    TabOrder = 1
    object DBCtrlGrid1: TDBCtrlGrid
      Left = 16
      Top = 24
      Width = 273
      Height = 233
      DataSource = DataSource1
      PanelHeight = 77
      PanelWidth = 256
      TabOrder = 0
      object fcProgressBar1: TfcProgressBar
        Left = 16
        Top = 24
        Width = 225
        Height = 17
        DataField = 'PercentPaid'
        DataSource = DataSource1
        TabOrder = 0
      end
    end
  end
  object DataSource1: TDataSource
    DataSet = Table1
    Left = 56
    Top = 64
  end
  object Table1: TTable
    Active = True
    OnCalcFields = Table1CalcFields
    DatabaseName = 'FirstClass'
    TableName = 'fcorders.DB'
    Left = 96
    Top = 64
    object Table1OrderNo: TFloatField
      FieldName = 'OrderNo'
    end
    object Table1CustNo: TFloatField
      FieldName = 'CustNo'
      Required = True
    end
    object Table1SaleDate: TDateTimeField
      FieldName = 'SaleDate'
    end
    object Table1ShipDate: TDateTimeField
      FieldName = 'ShipDate'
    end
    object Table1EmpNo: TIntegerField
      FieldName = 'EmpNo'
      Required = True
    end
    object Table1ShipToContact: TStringField
      FieldName = 'ShipToContact'
    end
    object Table1ShipToAddr1: TStringField
      FieldName = 'ShipToAddr1'
      Size = 30
    end
    object Table1ShipToAddr2: TStringField
      FieldName = 'ShipToAddr2'
      Size = 30
    end
    object Table1ShipToCity: TStringField
      FieldName = 'ShipToCity'
      Size = 15
    end
    object Table1ShipToState: TStringField
      FieldName = 'ShipToState'
    end
    object Table1ShipToZip: TStringField
      FieldName = 'ShipToZip'
      Size = 10
    end
    object Table1ShipToCountry: TStringField
      FieldName = 'ShipToCountry'
    end
    object Table1ShipToPhone: TStringField
      FieldName = 'ShipToPhone'
      Size = 15
    end
    object Table1ShipVIA: TStringField
      FieldName = 'ShipVIA'
      Size = 7
    end
    object Table1PO: TStringField
      FieldName = 'PO'
      Size = 15
    end
    object Table1Terms: TStringField
      FieldName = 'Terms'
      Size = 6
    end
    object Table1PaymentMethod: TStringField
      FieldName = 'PaymentMethod'
      Size = 7
    end
    object Table1ItemsTotal: TCurrencyField
      FieldName = 'ItemsTotal'
    end
    object Table1TaxRate: TFloatField
      FieldName = 'TaxRate'
    end
    object Table1Freight: TCurrencyField
      FieldName = 'Freight'
    end
    object Table1AmountPaid: TCurrencyField
      FieldName = 'AmountPaid'
    end
    object Table1PercentPaid: TFloatField
      FieldKind = fkCalculated
      FieldName = 'PercentPaid'
      Calculated = True
    end
  end
  object Timer1: TTimer
    Interval = 500
    OnTimer = Timer1Timer
    Left = 360
    Top = 288
  end
end
