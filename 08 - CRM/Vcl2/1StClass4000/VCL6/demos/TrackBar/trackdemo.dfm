object TrackbarForm: TTrackbarForm
  Left = 140
  Top = 75
  Width = 710
  Height = 715
  Caption = 'TrackBar Demo'
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
    Left = 304
    Top = 16
    Width = 393
    Height = 369
    Caption = 'Horizontal Examples'
    TabOrder = 0
    object fcLabel1: TfcLabel
      Left = 123
      Top = 192
      Width = 136
      Height = 13
      Caption = 'Inverted Horizontal Trackbar'
      TextOptions.Alignment = taLeftJustify
      TextOptions.VAlignment = vaTop
    end
    object fcDemoRichEdit1: TfcDemoRichEdit
      Left = 24
      Top = 224
      Width = 345
      Height = 121
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
      TabOrder = 0
      RichEditLines = {
        7B5C727466315C616E73695C616E7369637067313235325C64656666305C6465
        666C616E67313033337B5C666F6E7474626C7B5C66305C666E696C5C66636861
        727365743020417269616C3B7D7D0D0A5C766965776B696E64345C7563315C70
        6172645C667332302054686520686F72697A6F6E74616C20747261636B626172
        732061626F76652073686F772074686520666F6C6C6F77696E673A0D0A5C7061
        7220312E20547261636B696E67206F6620666C6F6174696E6720706F696E7420
        76616C7565730D0A5C70617220322E205469636B2054657874206C6162656C73
        2C20696E746572737065727365640D0A5C70617220322E20466F726D61747465
        64207465787420646973706C6179696E672063757272656E7420747261636B65
        6420706F736974696F6E20286C65667420616E64207269676874290D0A5C7061
        72207D0D0A00}
    end
    object fcTrackBar5: TfcTrackBar
      Left = 24
      Top = 40
      Width = 337
      Height = 81
      TextAttributes.Position = tbtRight
      TextAttributes.OffsetX = 15
      TextAttributes.Font.Charset = DEFAULT_CHARSET
      TextAttributes.Font.Color = clWindowText
      TextAttributes.Font.Height = -11
      TextAttributes.Font.Name = 'MS Sans Serif'
      TextAttributes.Font.Style = []
      TextAttributes.DisplayFormat = '0.00 inches'
      TextAttributes.ShowText = True
      TextAttributes.TickLabelFrequency = 5
      ThumbColor = clBtnFace
      SpacingRightBottom = 80
      SpacingEdgeTrackbar = 10
      ReadOnly = False
      Increment = 1
      Max = 10
      Frequency = 1
      Position = 5
      TabOrder = 1
    end
    object fcTrackBar4: TfcTrackBar
      Left = 24
      Top = 112
      Width = 313
      Height = 81
      TextAttributes.Font.Charset = DEFAULT_CHARSET
      TextAttributes.Font.Color = clWindowText
      TextAttributes.Font.Height = -11
      TextAttributes.Font.Name = 'MS Sans Serif'
      TextAttributes.Font.Style = []
      TextAttributes.DisplayFormat = '0.00 inches'
      TextAttributes.ShowText = True
      TextAttributes.TickLabelFrequency = 1
      ThumbColor = clBtnFace
      SpacingLeftTop = 75
      SpacingEdgeTrackbar = 10
      ReadOnly = False
      Inverted = True
      Increment = 1
      Max = 10
      Frequency = 1
      Position = 5
      TabOrder = 2
    end
  end
  object fcGroupBox2: TfcGroupBox
    Left = 8
    Top = 8
    Width = 281
    Height = 489
    Caption = 'Ruler Example'
    TabOrder = 1
    object fcLabel2: TfcLabel
      Left = 147
      Top = 16
      Width = 88
      Height = 31
      Caption = 'Inverted Trackbar'#13#10'with Custom Glyph'
      TextOptions.Alignment = taLeftJustify
      TextOptions.VAlignment = vaTop
    end
    object fcTrackBar1: TfcTrackBar
      Left = 56
      Top = 48
      Width = 81
      Height = 297
      TextAttributes.Position = tbtBottom
      TextAttributes.OffsetX = 15
      TextAttributes.Font.Charset = DEFAULT_CHARSET
      TextAttributes.Font.Color = clWindowText
      TextAttributes.Font.Height = -11
      TextAttributes.Font.Name = 'MS Sans Serif'
      TextAttributes.Font.Style = []
      TextAttributes.DisplayFormat = '0.00 inches'
      TextAttributes.ShowText = True
      TextAttributes.TickLabelFrequency = 4
      ThumbColor = clBtnFace
      SpacingRightBottom = 18
      SpacingEdgeTrackbar = 10
      ReadOnly = False
      Increment = 0.25
      Max = 3
      Orientation = trfcVertical
      PageSize = 1
      Frequency = 0.25
      Position = 3
      TabOrder = 0
    end
    object fcTrackBar7: TfcTrackBar
      Left = 152
      Top = 48
      Width = 81
      Height = 297
      TextAttributes.Position = tbtBottom
      TextAttributes.OffsetX = 15
      TextAttributes.Font.Charset = DEFAULT_CHARSET
      TextAttributes.Font.Color = clWindowText
      TextAttributes.Font.Height = -11
      TextAttributes.Font.Name = 'MS Sans Serif'
      TextAttributes.Font.Style = []
      TextAttributes.DisplayFormat = '0.00 inches'
      TextAttributes.ShowText = True
      TextAttributes.TickLabelFrequency = 4
      TrackThumbIcon.Data = {
        36010000424D3601000000000000760000002800000018000000100000000100
        040000000000C000000000000000000000001000000000000000000000000000
        8000008000000080800080000000800080008080000080808000C0C0C0000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00999999999999
        9999999999999999999999999799999999999999999999999779999999999999
        9999999997C79999999999999999999997CC7999999999F77777777777CCC799
        999999FCCCCCCCCCCCCCCC79999999FCCCCCCCCCCCCCCCC7999999FCCCCCCCCC
        CCCCCCCC799999FCCCCCCCCCCCCCCCCF999999FCCCCCCCCCCCCCCCF9999999FF
        FFFFFFFFFFCCCF9999999999999999999FCCF99999999999999999999FCF9999
        99999999999999999FF9999999999999999999999F9999999999}
      ThumbColor = clBtnFace
      SpacingRightBottom = 18
      SpacingEdgeTrackbar = 10
      ReadOnly = False
      Inverted = True
      Increment = 0.25
      Max = 3
      Orientation = trfcVertical
      PageSize = 1
      Frequency = 0.25
      Position = 3
      TabOrder = 1
    end
    object fcDemoRichEdit2: TfcDemoRichEdit
      Left = 16
      Top = 352
      Width = 249
      Height = 121
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
      TabOrder = 2
      RichEditLines = {
        7B5C727466315C616E73695C616E7369637067313235325C64656666305C6465
        666C616E67313033337B5C666F6E7474626C7B5C66305C666E696C5C66636861
        727365743020417269616C3B7D7D0D0A5C766965776B696E64345C7563315C70
        6172645C667332302054686520766572746963616C20747261636B6261727320
        61626F76652073686F772074686520666F6C6C6F77696E673A0D0A5C70617220
        312E20547261636B696E67206F6620666C6F6174696E6720706F696E74207661
        6C7565730D0A5C70617220322E205469636B2054657874206C6162656C732C20
        696E746572737065727365640D0A5C70617220332E20466F726D617474656420
        7465787420646973706C6179696E672063757272656E7420747261636B656420
        706F736974696F6E0D0A5C70617220342E20437573746F6D207468756D620D0A
        5C706172207D0D0A00}
    end
  end
  object fcGroupBox3: TfcGroupBox
    Left = 8
    Top = 504
    Width = 313
    Height = 177
    Caption = 'Custom Tick Labels'
    TabOrder = 2
    object fcTrackBar6: TfcTrackBar
      Left = 16
      Top = 24
      Width = 113
      Height = 145
      TextAttributes.Position = tbtBottom
      TextAttributes.OffsetX = 15
      TextAttributes.Font.Charset = DEFAULT_CHARSET
      TextAttributes.Font.Color = clWindowText
      TextAttributes.Font.Height = -11
      TextAttributes.Font.Name = 'MS Sans Serif'
      TextAttributes.Font.Style = []
      TextAttributes.DisplayFormat = '0.00 inches'
      TextAttributes.TickLabelFrequency = 1
      ThumbColor = clBtnFace
      SpacingEdgeTrackbar = 10
      ReadOnly = False
      Inverted = True
      Increment = 1
      Max = 3
      Orientation = trfcVertical
      PageSize = 1
      Frequency = 1
      Position = 3
      SelEnd = 7
      SelStart = 5
      TabOrder = 0
      OnDrawTickText = fcTrackBar6DrawTickText
    end
    object fcDemoRichEdit3: TfcDemoRichEdit
      Left = 136
      Top = 24
      Width = 161
      Height = 121
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
      TabOrder = 1
      RichEditLines = {
        7B5C727466315C616E73695C616E7369637067313235325C64656666305C6465
        666C616E67313033337B5C666F6E7474626C7B5C66305C666E696C5C66636861
        727365743020417269616C3B7D7D0D0A5C766965776B696E64345C7563315C70
        6172645C667332302054686520766572746963616C20747261636B6261722061
        626F76652073686F777320686F7720796F752063616E20757365207468652074
        7261636B62617220746F20686176652064657363726970746976652074657874
        20666F7220747261636B696E6720746963206C6162656C732E0D0A5C70617220
        0D0A5C706172207D0D0A00}
    end
  end
  object fcGroupBox4: TfcGroupBox
    Left = 328
    Top = 400
    Width = 369
    Height = 273
    Caption = 'Embed in DBCtrlGrid or InfoPower'#39's vertical or horizontal grid'
    TabOrder = 3
    object DBCtrlGrid1: TDBCtrlGrid
      Left = 16
      Top = 24
      Width = 337
      Height = 233
      ColCount = 1
      DataSource = DataSource1
      PanelHeight = 77
      PanelWidth = 320
      TabOrder = 0
      RowCount = 3
      object fcTrackBar2: TfcTrackBar
        Left = 8
        Top = 8
        Width = 297
        Height = 65
        TextAttributes.Position = tbtBottom
        TextAttributes.Font.Charset = DEFAULT_CHARSET
        TextAttributes.Font.Color = clWindowText
        TextAttributes.Font.Height = -11
        TextAttributes.Font.Name = 'MS Sans Serif'
        TextAttributes.Font.Style = []
        TextAttributes.DisplayFormat = #39'$'#39' 00.00'
        TextAttributes.ShowText = True
        TextAttributes.TickLabelFrequency = 2
        ThumbColor = clBtnFace
        SpacingLeftTop = 15
        SpacingRightBottom = 10
        ReadOnly = False
        Increment = 1000
        Max = 10000
        PageSize = 50
        Frequency = 1000
        Position = 1000
        TabOrder = 0
        DataField = 'ItemsTotal'
        DataSource = DataSource1
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
    DatabaseName = 'FirstClass'
    TableName = 'fcorders.DB'
    Left = 96
    Top = 64
  end
end
