object MFormatForm: TMFormatForm
  Left = 815
  Top = 377
  BorderStyle = bsDialog
  BorderWidth = 2
  Caption = 'MFormatForm'
  ClientHeight = 316
  ClientWidth = 228
  Color = clBtnText
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  FormStyle = fsStayOnTop
  KeyPreview = True
  OldCreateOrder = False
  Position = poDesigned
  OnCreate = FormCreate
  OnKeyDown = FormKeyDown
  PixelsPerInch = 96
  TextHeight = 13
  object PVPanel1: TPVPanel
    Left = 0
    Top = 282
    Width = 228
    Height = 34
    Align = alBottom
    BevelOuter = bvNone
    TabOrder = 0
    Direction = gsLeft
    Intensity = gsLittle
    object OKBtn: TPVSpeedButton
      Left = 160
      Top = 0
      Width = 34
      Height = 34
      Align = alRight
      Color = clBtnFace
      Tracking = True
      Flat = True
      Transparent = False
      Direction = gsTop
      Intensity = gsLittle
      Dithering = True
      UsePVPaintner = False
      FocusRectOffset = 0
      OnClick = OKBtnClick
      TabOrder = 0
    end
    object CancelBtn: TPVSpeedButton
      Left = 194
      Top = 0
      Width = 34
      Height = 34
      Align = alRight
      Color = clBtnFace
      Tracking = True
      Flat = True
      Transparent = False
      Direction = gsTop
      Intensity = gsLittle
      Dithering = True
      UsePVPaintner = False
      FocusRectOffset = 0
      OnClick = CancelBtnClick
      TabOrder = 1
    end
  end
  object PVPanel2: TPVPanel
    Left = 0
    Top = 0
    Width = 228
    Height = 282
    Align = alClient
    TabOrder = 1
    Direction = gsLeft
    Intensity = gsLittle
    object PVLabel1: TPVLabel
      Left = 1
      Top = 1
      Width = 226
      Height = 20
      Align = alTop
      Alignment = taCenter
      AutoSize = False
      Caption = 'Predefined formats'
      Transparent = True
      Layout = tlCenter
    end
    object PVGroupBox1: TPVGroupBox
      Left = 1
      Top = 58
      Width = 226
      Height = 223
      Align = alBottom
      Caption = 'Design'
      TabOrder = 0
      Direction = gsLeft
      Intensity = gsLittle
      object PVLabel2: TPVLabel
        Left = 2
        Top = 15
        Width = 222
        Height = 20
        Align = alTop
        Alignment = taCenter
        AutoSize = False
        Caption = 'Format string'
        Transparent = True
      end
      object PVLabel3: TPVLabel
        Left = 8
        Top = 66
        Width = 137
        Height = 20
        AutoSize = False
        Caption = 'Number of decimals'
        Transparent = True
        WordWrap = True
      end
      object PVLabel6: TPVLabel
        Left = 8
        Top = 94
        Width = 105
        Height = 20
        AutoSize = False
        Caption = 'Thousand separator'
        Transparent = True
        WordWrap = True
      end
      object FormatEdit: TEdit
        Left = 8
        Top = 36
        Width = 209
        Height = 21
        TabOrder = 0
        Text = 'FormatEdit'
        OnChange = FormatEditChange
      end
      object PVGroupBox2: TPVGroupBox
        Left = 2
        Top = 110
        Width = 222
        Height = 58
        Align = alBottom
        Caption = 'Symbol'
        TabOrder = 1
        Direction = gsLeft
        Intensity = gsLittle
        object PVLabel4: TPVLabel
          Left = 152
          Top = 30
          Width = 65
          Height = 14
          AutoSize = False
          Caption = 'Before'
          Transparent = True
          Layout = tlCenter
        end
        object PVLabel5: TPVLabel
          Left = 152
          Top = 14
          Width = 41
          Height = 14
          AutoSize = False
          Caption = 'After'
          Transparent = True
          Layout = tlCenter
        end
        object SymbEdit: TEdit
          Left = 8
          Top = 20
          Width = 113
          Height = 21
          TabOrder = 0
          Text = 'SymbEdit'
          OnChange = SymbEditChange
        end
        object BeforeRB: TRadioButton
          Left = 136
          Top = 30
          Width = 14
          Height = 14
          Caption = 'BeforeRB'
          TabOrder = 1
          OnClick = BeforeRBClick
        end
        object AfterRB: TRadioButton
          Left = 136
          Top = 14
          Width = 14
          Height = 14
          Caption = 'AfterRB'
          TabOrder = 2
          OnClick = AfterRBClick
        end
      end
      object PVGroupBox3: TPVGroupBox
        Left = 2
        Top = 168
        Width = 222
        Height = 53
        Align = alBottom
        Caption = 'Example'
        TabOrder = 2
        Direction = gsLeft
        Intensity = gsLittle
        object ExampleLbl: TPVLabel
          Left = 40
          Top = 20
          Width = 161
          Height = 25
          Alignment = taCenter
          AutoSize = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          Transparent = True
          Layout = tlCenter
          Direction = gsLeft
          Intensity = gsLittle
        end
      end
      object DecEdit: TEdit
        Left = 152
        Top = 62
        Width = 65
        Height = 21
        TabOrder = 3
        Text = '2'
        OnChange = DecEditChange
        OnKeyPress = DecEditKeyPress
      end
      object TSCB: TCheckBox
        Left = 120
        Top = 96
        Width = 14
        Height = 14
        TabOrder = 4
        OnClick = TSCBClick
      end
    end
  end
end
