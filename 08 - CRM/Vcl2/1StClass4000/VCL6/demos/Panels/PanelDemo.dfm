object PanelDemoForm: TPanelDemoForm
  Left = 212
  Top = 176
  Width = 493
  Height = 372
  Caption = '1stClass GroupBox Demo'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object fcImager1: TfcImager
    Left = 0
    Top = 0
    Width = 485
    Height = 345
    Align = alClient
    AutoSize = False
    BitmapOptions.AlphaBlend.Amount = 0
    BitmapOptions.AlphaBlend.Transparent = False
    BitmapOptions.Color = clNone
    BitmapOptions.Contrast = 0
    BitmapOptions.Embossed = False
    BitmapOptions.TintColor = clNone
    BitmapOptions.GaussianBlur = 0
    BitmapOptions.GrayScale = False
    BitmapOptions.HorizontallyFlipped = False
    BitmapOptions.Inverted = False
    BitmapOptions.Lightness = 0
    BitmapOptions.Rotation.CenterX = -1
    BitmapOptions.Rotation.CenterY = -1
    BitmapOptions.Rotation.Angle = 0
    BitmapOptions.Saturation = -1
    BitmapOptions.Sharpen = 0
    BitmapOptions.Sponge = 0
    BitmapOptions.VerticallyFlipped = False
    BitmapOptions.Wave.XDiv = 0
    BitmapOptions.Wave.YDiv = 0
    BitmapOptions.Wave.Ratio = 0
    BitmapOptions.Wave.Wrap = False
    DrawStyle = dsTile
    Picture.Data = {
      07544269746D617056020000424D560200000000000076000000280000001E00
      00001E0000000100040000000000E00100000000000000000000100000000000
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
    PreProcess = True
    SmoothStretching = False
    Transparent = False
    TransparentColor = clNone
    TabOrder = 0
  end
  object fcGroupBox1: TfcGroupBox
    Left = 228
    Top = 7
    Width = 253
    Height = 177
    Caption = 'QUESTIONAIRE'
    Color = clYellow
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    Frame.Enabled = True
    Frame.NonFocusColor = clBtnFace
    Frame.NonFocusFontColor = clBlack
    ParentColor = False
    ParentFont = False
    TabOrder = 0
    object fcLabel3: TfcLabel
      Left = 13
      Top = 121
      Width = 173
      Height = 14
      Caption = '3.) Which is your favorite style?'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clInactiveCaption
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ParentFont = False
      TextOptions.Alignment = taLeftJustify
      TextOptions.VAlignment = vaTop
      Transparent = True
    end
    object fcLabel2: TfcLabel
      Left = 9
      Top = 75
      Width = 193
      Height = 14
      Caption = '2.) What do you think of our demo?'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clInactiveCaption
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ParentFont = False
      TextOptions.Alignment = taLeftJustify
      TextOptions.VAlignment = vaTop
      Transparent = True
    end
    object fcLabel1: TfcLabel
      Left = 12
      Top = 18
      Width = 161
      Height = 27
      Caption = '1.) Where did you hear about '#13#10'     1stClass?'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clInactiveCaption
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ParentFont = False
      TextOptions.Alignment = taLeftJustify
      TextOptions.LineSpacing = -1
      TextOptions.VAlignment = vaTop
      Transparent = True
    end
    object fcTreeCombo3: TfcTreeCombo
      Left = 26
      Top = 137
      Width = 175
      Height = 19
      BorderStyle = bsNone
      ButtonStyle = cbsCustom
      ButtonGlyph.Data = {
        D6000000424DD60000000000000076000000280000000C0000000C0000000100
        04000000000060000000130B0000130B00001000000000000000007F7F007F7F
        7F00850115000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000022100000
        C6810000221000003A00000011100000C8000000221000000400000022100000
        5D01000022210000020000000222100080030111002221000200022200222100
        7C0302221122210035030022222210004A010002222100003203}
      Text = 'Underline'
      Frame.Enabled = True
      Frame.Transparent = True
      DropDownCount = 8
      Items.StreamVersion = 1
      Items.Data = {
        080000003500000014000000FFFFFFFFFFFFFFFFFFFFFFFF0000000000000000
        000000000000000000000000000009556E6465726C696E650000000000010000
        00013400000008000000FFFFFFFFFFFFFFFFFFFFFFFF00000000000000000000
        000000000000000000000000084672616D65426F780000000000010000000138
        00000015000000FFFFFFFFFFFFFFFFFFFFFFFF00000000000000000000000000
        0000000000000000000C466C617420427574746F6E7300000000000100000001
        3D000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000000000000000000000
        00000000000000000000114E6F204672616D6520284E6F726D616C2900000000
        0001000000013800000009000000FFFFFFFFFFFFFFFFFFFFFFFF000000000000
        000000000000000000000000000000000C53756E6B656E20466F637573000000
        000001000000013E00000007000000FFFFFFFFFFFFFFFFFFFFFFFF0000000000
        0000000000000000000000000000000000125261697365642050616E656C2046
        6F637573000000000001000000013200000006000000FFFFFFFFFFFFFFFFFFFF
        FFFF000000000000000000000000000000000000000000000645746368656400
        0000000001000000013000000005000000FFFFFFFFFFFFFFFFFFFFFFFF000000
        000000000000000000000000000000000000000442756D700000000000010000
        0001}
      Options = [icoExpanded, icoEndNodesOnly]
      ReadOnly = False
      ShowMatchText = True
      Sorted = False
      Style = csDropDownList
      TabOrder = 2
      TreeOptions = [tvoHideSelection, tvoShowRoot, tvoToolTips]
    end
    object fcTreeCombo2: TfcTreeCombo
      Left = 26
      Top = 91
      Width = 175
      Height = 19
      BorderStyle = bsNone
      ButtonStyle = cbsCustom
      ButtonGlyph.Data = {
        D6000000424DD60000000000000076000000280000000C0000000C0000000100
        04000000000060000000130B0000130B00001000000000000000007F7F007F7F
        7F00850115000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000022100000
        C781000022100000010000001110000000000000221000000100000022100000
        000000002221000002000000022210008003011100222100DB02022200222100
        C681022211222100C581002222221000C6810002222100002202}
      Text = 'It'#39's Great'
      Frame.Enabled = True
      Frame.Transparent = True
      DropDownCount = 8
      Items.StreamVersion = 1
      Items.Data = {
        03000000360000000A000000FFFFFFFFFFFFFFFFFFFFFFFF0000000000000000
        00000000000000000000000000000A4974277320477265617400000000000100
        000001370000000D000000FFFFFFFFFFFFFFFFFFFFFFFF000000000000000000
        000000000000000000000000000B50726574747920476F6F6400000000000100
        0000013C0000000E000000FFFFFFFFFFFFFFFFFFFFFFFF000000000000000000
        000000000000000000000000001049206469646E2774206C696B652069740000
        0000000100000001}
      Options = [icoExpanded, icoEndNodesOnly]
      ReadOnly = False
      ShowMatchText = True
      Sorted = False
      Style = csDropDownList
      TabOrder = 1
      TreeOptions = [tvoHideSelection, tvoShowRoot, tvoToolTips]
    end
    object fcTreeCombo1: TfcTreeCombo
      Left = 26
      Top = 47
      Width = 175
      Height = 19
      BorderStyle = bsNone
      ButtonStyle = cbsCustom
      ButtonGlyph.Data = {
        D6000000424DD60000000000000076000000280000000C0000000C0000000100
        04000000000060000000130B0000130B00001000000000000000007F7F007F7F
        7F00850115000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000022100000
        C681000022100000010000001110000000000000221000000100000022100000
        000000002221000038020000022210007C03011100222100E700022200222100
        02000222112221003403002222221000EE000002222100003103}
      Text = '   <Choose From List>'
      Frame.Enabled = True
      Frame.Transparent = True
      DropDownCount = 8
      Items.StreamVersion = 1
      Items.Data = {
        0200000034000000FEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000000000000000
        0000000000000000000003000000084D6167617A696E6500000000003C000000
        19000000FFFFFFFFFFFFFFFFFFFFFFFF00000000000000000000000000000000
        0000000000001044656C70686920496E666F726D616E74000000000001000000
        013B00000018000000FFFFFFFFFFFFFFFFFFFFFFFF0000000000000000000000
        00000000000000000000000F44656C706869204D6167617A696E650000000000
        01000000013C00000017000000FFFFFFFFFFFFFFFFFFFFFFFF00000000000000
        0000000000000000000000000000001056697375616C20446576656C6F706572
        00000000000100000001010000000034000000FEFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFF0000000000000000000000000000000000000300000008576562205369
        74650000000000390000001A000000FFFFFFFFFFFFFFFFFFFFFFFF0000000000
        00000000000000000000000000000000000D7777772E61626F75742E636F6D00
        000000000100000001470000001B000000FFFFFFFFFFFFFFFFFFFFFFFF000000
        000000000000000000000000000000000000001B426F726C616E6420436F6D6D
        756E69747920486F6D65205061676500000000000100000001380000001B0000
        00FFFFFFFFFFFFFFFFFFFFFFFF00000000000000000000000000000000000000
        0000000C43616C69747A2042726F732E000000000001000000010100000000}
      Options = [icoExpanded, icoEndNodesOnly]
      ReadOnly = False
      ShowMatchText = True
      Sorted = False
      Style = csDropDownList
      TabOrder = 0
    end
  end
  object fcGroupBox2: TfcGroupBox
    Left = 228
    Top = 192
    Width = 253
    Height = 145
    Caption = 'PERSONAL INFORMATION'
    Color = clYellow
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    Frame.Enabled = True
    Frame.NonFocusColor = clBtnFace
    ParentColor = False
    ParentFont = False
    TabOrder = 1
    object fcLabel8: TfcLabel
      Left = 14
      Top = 42
      Width = 28
      Height = 14
      Caption = 'Name'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clInactiveCaption
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
      TextOptions.Alignment = taLeftJustify
      TextOptions.VAlignment = vaTop
      Transparent = True
    end
    object fcLabel9: TfcLabel
      Left = 15
      Top = 82
      Width = 75
      Height = 14
      Caption = 'Email  x@x.xxx'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clInactiveCaption
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
      TextOptions.Alignment = taLeftJustify
      TextOptions.VAlignment = vaTop
      Transparent = True
    end
    object fcTreeCombo4: TfcTreeCombo
      Left = 12
      Top = 22
      Width = 189
      Height = 19
      BorderStyle = bsNone
      ButtonStyle = cbsDownArrow
      Text = 'Peter Wilkinson'
      Frame.Enabled = True
      Frame.Transparent = True
      DropDownCount = 8
      Items.StreamVersion = 1
      Items.Data = {
        010000003B00000000000000FFFFFFFFFFFFFFFFFFFFFFFF0000000000000000
        00000000000000000000000000000F50657465722057696C6B696E736F6E0000
        0000000100000001}
      Options = [icoExpanded]
      ReadOnly = False
      ShowButton = False
      ShowMatchText = True
      Sorted = False
      Style = csDropDown
      TabOrder = 0
      TreeOptions = [tvoHideSelection, tvoShowRoot, tvoToolTips]
    end
    object fcTreeCombo5: TfcTreeCombo
      Left = 12
      Top = 62
      Width = 189
      Height = 19
      BorderStyle = bsNone
      ButtonStyle = cbsDownArrow
      Text = 'pwilkins@aaa.com'
      Frame.Enabled = True
      Frame.Transparent = True
      DropDownCount = 8
      Items.StreamVersion = 1
      Items.Data = {
        010000003C00000000000000FFFFFFFFFFFFFFFFFFFFFFFF0000000000000000
        0000000000000000000000000000107077696C6B696E73406161612E636F6D00
        000000000100000001}
      Options = [icoExpanded]
      ReadOnly = False
      ShowButton = False
      ShowMatchText = True
      Sorted = False
      Style = csDropDown
      TabOrder = 1
      TreeOptions = [tvoHideSelection, tvoShowRoot, tvoToolTips]
    end
  end
  object fcGroupBox3: TfcGroupBox
    Left = 6
    Top = 8
    Width = 217
    Height = 329
    Caption = 'Groupbox Options'
    Color = clBtnFace
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    Frame.Enabled = True
    ParentColor = False
    ParentFont = False
    TabOrder = 2
    object fcLabel4: TfcLabel
      Left = 21
      Top = 71
      Width = 80
      Height = 14
      Caption = 'Non Focus color'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clInactiveCaption
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
      TextOptions.Alignment = taLeftJustify
      TextOptions.VAlignment = vaTop
      Transparent = True
    end
    object fcLabel5: TfcLabel
      Left = 20
      Top = 109
      Width = 58
      Height = 14
      Caption = 'Focus color'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clInactiveCaption
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
      TextOptions.Alignment = taLeftJustify
      TextOptions.VAlignment = vaTop
      Transparent = True
    end
    object fcLabel6: TfcLabel
      Left = 19
      Top = 183
      Width = 69
      Height = 14
      Caption = 'Caption Indent'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clInactiveCaption
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
      TextOptions.Alignment = taLeftJustify
      TextOptions.VAlignment = vaTop
      Transparent = True
    end
    object fcColorCombo1: TfcColorCombo
      Left = 18
      Top = 50
      Width = 176
      Height = 21
      ColorListOptions.Font.Charset = DEFAULT_CHARSET
      ColorListOptions.Font.Color = clWindowText
      ColorListOptions.Font.Height = -11
      ColorListOptions.Font.Name = 'MS Sans Serif'
      ColorListOptions.Font.Style = []
      ColorListOptions.Options = [ccoShowSystemColors, ccoShowColorNone, ccoShowStandardColors, ccoShowColorNames]
      CustomColors.Strings = (
        'Transparent')
      DropDownCount = 8
      ReadOnly = False
      SelectedColor = clBtnFace
      TabOrder = 0
      OnChange = fcColorCombo1Change
    end
    object fcColorCombo2: TfcColorCombo
      Left = 18
      Top = 88
      Width = 176
      Height = 21
      ColorListOptions.Font.Charset = DEFAULT_CHARSET
      ColorListOptions.Font.Color = clWindowText
      ColorListOptions.Font.Height = -11
      ColorListOptions.Font.Name = 'MS Sans Serif'
      ColorListOptions.Font.Style = []
      ColorListOptions.Options = [ccoShowSystemColors, ccoShowColorNone, ccoShowStandardColors, ccoShowColorNames]
      CustomColors.Strings = (
        'Transparent')
      DropDownCount = 8
      ReadOnly = False
      SelectedColor = clYellow
      TabOrder = 1
      OnChange = fcColorCombo2Change
    end
    object CheckBox1: TCheckBox
      Left = 10
      Top = 24
      Width = 121
      Height = 25
      Caption = 'Transparent'
      TabOrder = 2
      OnClick = CheckBox1Click
    end
    object FullBorderCheckbox: TCheckBox
      Left = 10
      Top = 128
      Width = 121
      Height = 25
      Caption = 'Full Border'
      TabOrder = 3
      OnClick = FullBorderCheckboxClick
    end
    object Edit1: TEdit
      Left = 19
      Top = 160
      Width = 121
      Height = 21
      ReadOnly = True
      TabOrder = 4
      Text = '8'
      OnChange = Edit1Change
    end
    object UpDown1: TUpDown
      Left = 140
      Top = 160
      Width = 15
      Height = 21
      Associate = Edit1
      Min = 0
      Max = 50
      Position = 8
      TabOrder = 5
      Wrap = False
    end
  end
end
