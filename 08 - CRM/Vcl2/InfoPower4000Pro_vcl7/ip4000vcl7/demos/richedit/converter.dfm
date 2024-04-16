object RTFImportExportForm: TRTFImportExportForm
  Left = 253
  Top = 145
  Width = 544
  Height = 366
  Caption = 'Demo for Import/Export from RTF'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  DesignSize = (
    536
    332)
  PixelsPerInch = 96
  TextHeight = 13
  object wwDBRichEdit1: TwwDBRichEdit
    Left = 0
    Top = 0
    Width = 536
    Height = 273
    ScrollBars = ssVertical
    Anchors = [akLeft, akTop, akRight, akBottom]
    AutoURLDetect = False
    BorderStyle = bsNone
    Frame.Enabled = True
    PrintJobName = 'Delphi 6'
    TabOrder = 0
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
    PrintHeader.VertMargin = 0.500000000000000000
    PrintHeader.Font.Charset = DEFAULT_CHARSET
    PrintHeader.Font.Color = clWindowText
    PrintHeader.Font.Height = -11
    PrintHeader.Font.Name = 'MS Sans Serif'
    PrintHeader.Font.Style = []
    PrintFooter.VertMargin = 0.500000000000000000
    PrintFooter.Font.Charset = DEFAULT_CHARSET
    PrintFooter.Font.Color = clWindowText
    PrintFooter.Font.Height = -11
    PrintFooter.Font.Name = 'MS Sans Serif'
    PrintFooter.Font.Style = []
    RichEditVersion = 2
    Data = {
      7C0200007B5C727466315C6662696469735C616E73695C616E73696370673132
      35325C64656666305C6465666C616E67313033337B5C666F6E7474626C7B5C66
      305C66726F6D616E5C66707271325C6663686172736574302054696D6573204E
      657720526F6D616E3B7D7B5C66315C666E696C5C666368617273657430205469
      6D6573204E657720526F6D616E3B7D7B5C66325C666E696C5C66636861727365
      7430204D532053616E732053657269663B7D7D0D0A7B5C636F6C6F7274626C20
      3B5C7265643235355C677265656E3235355C626C7565303B5C726564305C6772
      65656E305C626C7565303B5C7265643235355C677265656E305C626C7565303B
      7D0D0A5C766965776B696E64345C7563315C706172645C6C74727061725C7269
      3138305C736135375C716A5C686967686C69676874315C625C66305C66733230
      204E657720696E20496E666F506F7765722034303030205C6366325C68696768
      6C69676874305C663120202D5C63663320205C6366305C62305C6630204E6F77
      20737570706F72747320696D706F7274696E672066726F6D204D6963726F736F
      667420576F7264206F72206D706F7274696E6720616E64206578706F7274696E
      6720746F2048544D4C20204F7468657220666F726D61747320616C736F207375
      70706F72746564206261736564206F6E2074686520746578742066696C746572
      7320696E7374616C6C6564206F6E2074686520636C69656E7420636F6D707574
      65722E2020466F7220696E7374616E63652C20796F752063616E20696D706F72
      742066726F6D20616E20457863656C2073707265616473686565742E5C706172
      0D0A5C706172645C6C74727061725C66325C667331365C7061720D0A7D0D0A00}
  end
  object OpenButton: TBitBtn
    Left = 312
    Top = 280
    Width = 89
    Height = 25
    Anchors = [akRight, akBottom]
    Caption = 'Import'
    TabOrder = 1
    OnClick = OpenButtonClick
  end
  object SaveButton: TButton
    Left = 424
    Top = 280
    Width = 89
    Height = 25
    Anchors = [akRight, akBottom]
    Caption = 'Export'
    TabOrder = 2
    OnClick = SaveButtonClick
  end
  object StatusBar1: TStatusBar
    Left = 0
    Top = 313
    Width = 536
    Height = 19
    Panels = <
      item
        Width = 250
      end
      item
        Width = 100
      end
      item
        Width = 50
      end>
  end
  object OpenDialog1: TOpenDialog
    Left = 232
    Top = 280
  end
  object SaveDialog1: TSaveDialog
    Left = 272
    Top = 288
  end
end
