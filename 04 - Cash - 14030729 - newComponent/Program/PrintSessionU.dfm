inherited FrPrintSession: TFrPrintSession
  Left = 785
  Top = 255
  BorderStyle = bsToolWindow
  Caption = #1670#1575#1662' '#1589#1608#1585#1578#1580#1604#1587#1607
  ClientHeight = 486
  ClientWidth = 534
  Font.Height = -12
  OldCreateOrder = True
  PixelsPerInch = 96
  TextHeight = 14
  object pnlMain: TPanel [0]
    Left = 0
    Top = 0
    Width = 534
    Height = 486
    Align = alClient
    ParentColor = True
    TabOrder = 0
    object QuickRep1: TQuickRep
      Left = -300
      Top = -722
      Width = 794
      Height = 1123
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Arial'
      Font.Style = []
      Functions.Strings = (
        'PAGENUMBER'
        'COLUMNNUMBER'
        'REPORTTITLE')
      Functions.DATA = (
        '0'
        '0'
        #39#39)
      OnPreview = QuickRep1Preview
      Options = [FirstPageHeader, LastPageFooter]
      Page.Columns = 1
      Page.Orientation = poPortrait
      Page.PaperSize = A4
      Page.Values = (
        100.000000000000000000
        2970.000000000000000000
        100.000000000000000000
        2100.000000000000000000
        100.000000000000000000
        100.000000000000000000
        0.000000000000000000)
      PrinterSettings.Copies = 1
      PrinterSettings.Duplex = False
      PrinterSettings.FirstPage = 0
      PrinterSettings.LastPage = 0
      PrinterSettings.OutputBin = Auto
      PrintIfEmpty = True
      SnapToGrid = True
      Units = MM
      Zoom = 100
      object DetailBand1: TQRBand
        Left = 38
        Top = 38
        Width = 718
        Height = 1046
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        AlignToBottom = False
        Color = clWhite
        ForceNewColumn = False
        ForceNewPage = False
        Size.Values = (
          2767.541666666667000000
          1899.708333333333000000)
        BandType = rbDetail
        object cashTitle: TQRLabel
          Left = 286
          Top = 15
          Width = 145
          Height = 27
          Frame.Color = clBlack
          Frame.DrawTop = False
          Frame.DrawBottom = False
          Frame.DrawLeft = False
          Frame.DrawRight = False
          Size.Values = (
            71.437500000000000000
            756.708333333333300000
            39.687500000000000000
            383.645833333333300000)
          Alignment = taCenter
          AlignToBand = True
          AutoSize = True
          AutoStretch = False
          Caption = #1589#1606#1583#1608#1602' '#1602#1585#1590' '#1575#1604#1581#1587#1606#1607' '#1610#1711#1575#1606#1607
          Color = clWhite
          Font.Charset = ARABIC_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = 'Nazanin'
          Font.Style = [fsBold]
          ParentFont = False
          Transparent = False
          WordWrap = True
          FontSize = 12
        end
        object QRLabel2: TQRLabel
          Left = 329
          Top = 48
          Width = 60
          Height = 27
          Frame.Color = clBlack
          Frame.DrawTop = False
          Frame.DrawBottom = False
          Frame.DrawLeft = False
          Frame.DrawRight = False
          Size.Values = (
            71.437500000000000000
            870.479166666666700000
            127.000000000000000000
            158.750000000000000000)
          Alignment = taCenter
          AlignToBand = True
          AutoSize = True
          AutoStretch = False
          Caption = #1576#1587#1605#1607' '#1578#1593#1575#1604#1610
          Color = clWhite
          Font.Charset = ARABIC_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = 'Nazanin'
          Font.Style = [fsBold]
          ParentFont = False
          Transparent = False
          WordWrap = True
          FontSize = 12
        end
        object QRLabel1: TQRLabel
          Left = 324
          Top = 86
          Width = 70
          Height = 27
          Frame.Color = clBlack
          Frame.DrawTop = False
          Frame.DrawBottom = False
          Frame.DrawLeft = False
          Frame.DrawRight = False
          Size.Values = (
            71.437500000000000000
            857.250000000000000000
            227.541666666666700000
            185.208333333333300000)
          Alignment = taCenter
          AlignToBand = True
          AutoSize = True
          AutoStretch = False
          Caption = #1589#1608#1585#1578' '#1580#1604#1587#1607
          Color = clWhite
          Font.Charset = ARABIC_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = 'Nazanin'
          Font.Style = [fsBold]
          ParentFont = False
          Transparent = False
          WordWrap = True
          FontSize = 12
        end
        object QRLabel4: TQRLabel
          Left = 124
          Top = 80
          Width = 52
          Height = 27
          Frame.Color = clBlack
          Frame.DrawTop = False
          Frame.DrawBottom = False
          Frame.DrawLeft = False
          Frame.DrawRight = False
          Size.Values = (
            71.437500000000000000
            328.083333333333400000
            211.666666666666700000
            137.583333333333300000)
          Alignment = taLeftJustify
          AlignToBand = False
          AutoSize = False
          AutoStretch = False
          BiDiMode = bdRightToLeft
          ParentBiDiMode = False
          Caption = #1578#1575#1585#1610#1582' '
          Color = clWhite
          Font.Charset = ARABIC_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = 'Nazanin'
          Font.Style = [fsBold]
          ParentFont = False
          Transparent = False
          WordWrap = True
          FontSize = 12
        end
        object QRLabel5: TQRLabel
          Left = 126
          Top = 118
          Width = 50
          Height = 27
          Frame.Color = clBlack
          Frame.DrawTop = False
          Frame.DrawBottom = False
          Frame.DrawLeft = False
          Frame.DrawRight = False
          Size.Values = (
            71.437500000000000000
            333.375000000000000000
            312.208333333333400000
            132.291666666666700000)
          Alignment = taLeftJustify
          AlignToBand = False
          AutoSize = False
          AutoStretch = False
          BiDiMode = bdRightToLeft
          ParentBiDiMode = False
          Caption = #1588#1605#1575#1585#1607
          Color = clWhite
          Font.Charset = ARABIC_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = 'Nazanin'
          Font.Style = [fsBold]
          ParentFont = False
          Transparent = False
          WordWrap = True
          FontSize = 12
        end
        object QREdit: TQRLabel
          Left = 8
          Top = 80
          Width = 104
          Height = 27
          Frame.Color = clBlack
          Frame.DrawTop = False
          Frame.DrawBottom = False
          Frame.DrawLeft = False
          Frame.DrawRight = False
          Size.Values = (
            71.437500000000000000
            21.166666666666670000
            211.666666666666700000
            275.166666666666700000)
          Alignment = taLeftJustify
          AlignToBand = False
          AutoSize = False
          AutoStretch = False
          BiDiMode = bdRightToLeft
          ParentBiDiMode = False
          Caption = '1403/01/01'
          Color = clWhite
          Font.Charset = ARABIC_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = 'Nazanin'
          Font.Style = [fsBold]
          ParentFont = False
          Transparent = False
          WordWrap = True
          FontSize = 12
        end
        object QrNo: TQRLabel
          Left = 8
          Top = 118
          Width = 106
          Height = 27
          Frame.Color = clBlack
          Frame.DrawTop = False
          Frame.DrawBottom = False
          Frame.DrawLeft = False
          Frame.DrawRight = False
          Size.Values = (
            71.437500000000000000
            21.166666666666670000
            312.208333333333400000
            280.458333333333400000)
          Alignment = taLeftJustify
          AlignToBand = False
          AutoSize = False
          AutoStretch = False
          BiDiMode = bdRightToLeft
          ParentBiDiMode = False
          Caption = '22115'
          Color = clWhite
          Font.Charset = ARABIC_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = 'Nazanin'
          Font.Style = [fsBold]
          ParentFont = False
          Transparent = False
          WordWrap = True
          FontSize = 12
        end
        object QRRespons1: TQRLabel
          Left = 536
          Top = 967
          Width = 170
          Height = 30
          Frame.Color = clBlack
          Frame.DrawTop = False
          Frame.DrawBottom = False
          Frame.DrawLeft = False
          Frame.DrawRight = False
          Size.Values = (
            79.375000000000000000
            1418.166666666667000000
            2558.520833333333000000
            449.791666666666700000)
          Alignment = taCenter
          AlignToBand = False
          AutoSize = False
          AutoStretch = False
          BiDiMode = bdRightToLeft
          ParentBiDiMode = False
          Caption = #1589#1606#1583#1608#1602' '#1583#1575#1585
          Color = clWhite
          Font.Charset = ARABIC_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = 'Nazanin'
          Font.Style = [fsBold]
          ParentFont = False
          Transparent = False
          WordWrap = True
          FontSize = 12
        end
        object QRRespons2: TQRLabel
          Left = 360
          Top = 967
          Width = 170
          Height = 30
          Frame.Color = clBlack
          Frame.DrawTop = False
          Frame.DrawBottom = False
          Frame.DrawLeft = False
          Frame.DrawRight = False
          Size.Values = (
            79.375000000000000000
            952.500000000000000000
            2558.520833333333000000
            449.791666666666700000)
          Alignment = taCenter
          AlignToBand = False
          AutoSize = False
          AutoStretch = False
          BiDiMode = bdRightToLeft
          ParentBiDiMode = False
          Caption = #1589#1606#1583#1608#1602' '#1583#1575#1585
          Color = clWhite
          Font.Charset = ARABIC_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = 'Nazanin'
          Font.Style = [fsBold]
          ParentFont = False
          Transparent = False
          WordWrap = True
          FontSize = 12
        end
        object QRRespons3: TQRLabel
          Left = 184
          Top = 967
          Width = 170
          Height = 30
          Frame.Color = clBlack
          Frame.DrawTop = False
          Frame.DrawBottom = False
          Frame.DrawLeft = False
          Frame.DrawRight = False
          Size.Values = (
            79.375000000000000000
            486.833333333333300000
            2558.520833333333000000
            449.791666666666700000)
          Alignment = taCenter
          AlignToBand = False
          AutoSize = False
          AutoStretch = False
          BiDiMode = bdRightToLeft
          ParentBiDiMode = False
          Caption = #1589#1606#1583#1608#1602' '#1583#1575#1585
          Color = clWhite
          Font.Charset = ARABIC_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = 'Nazanin'
          Font.Style = [fsBold]
          ParentFont = False
          Transparent = False
          WordWrap = True
          FontSize = 12
        end
        object QRRespons4: TQRLabel
          Left = 9
          Top = 967
          Width = 170
          Height = 30
          Frame.Color = clBlack
          Frame.DrawTop = False
          Frame.DrawBottom = False
          Frame.DrawLeft = False
          Frame.DrawRight = False
          Size.Values = (
            79.375000000000000000
            23.812500000000000000
            2558.520833333333000000
            449.791666666666700000)
          Alignment = taCenter
          AlignToBand = False
          AutoSize = False
          AutoStretch = False
          BiDiMode = bdRightToLeft
          ParentBiDiMode = False
          Caption = #1589#1606#1583#1608#1602' '#1583#1575#1585
          Color = clWhite
          Font.Charset = ARABIC_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = 'Nazanin'
          Font.Style = [fsBold]
          ParentFont = False
          Transparent = False
          WordWrap = True
          FontSize = 12
        end
        object QRPerson1: TQRLabel
          Left = 532
          Top = 1006
          Width = 170
          Height = 30
          Frame.Color = clBlack
          Frame.DrawTop = False
          Frame.DrawBottom = False
          Frame.DrawLeft = False
          Frame.DrawRight = False
          Size.Values = (
            79.375000000000000000
            1407.583333333333000000
            2661.708333333333000000
            449.791666666666700000)
          Alignment = taCenter
          AlignToBand = False
          AutoSize = False
          AutoStretch = False
          BiDiMode = bdRightToLeft
          ParentBiDiMode = False
          Caption = #1581#1587#1576#1606' '#1593#1606#1575#1576#1587#1578#1575#1606#1610
          Color = clWhite
          Font.Charset = ARABIC_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = 'Nazanin'
          Font.Style = [fsBold]
          ParentFont = False
          Transparent = False
          WordWrap = True
          FontSize = 12
        end
        object QRPerson2: TQRLabel
          Left = 356
          Top = 1006
          Width = 170
          Height = 30
          Frame.Color = clBlack
          Frame.DrawTop = False
          Frame.DrawBottom = False
          Frame.DrawLeft = False
          Frame.DrawRight = False
          Size.Values = (
            79.375000000000000000
            941.916666666666800000
            2661.708333333333000000
            449.791666666666700000)
          Alignment = taCenter
          AlignToBand = False
          AutoSize = False
          AutoStretch = False
          BiDiMode = bdRightToLeft
          ParentBiDiMode = False
          Caption = #1581#1587#1576#1606' '#1593#1606#1575#1576#1587#1578#1575#1606#1610
          Color = clWhite
          Font.Charset = ARABIC_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = 'Nazanin'
          Font.Style = [fsBold]
          ParentFont = False
          Transparent = False
          WordWrap = True
          FontSize = 12
        end
        object QRPerson3: TQRLabel
          Left = 181
          Top = 1006
          Width = 170
          Height = 30
          Frame.Color = clBlack
          Frame.DrawTop = False
          Frame.DrawBottom = False
          Frame.DrawLeft = False
          Frame.DrawRight = False
          Size.Values = (
            79.375000000000000000
            478.895833333333300000
            2661.708333333333000000
            449.791666666666700000)
          Alignment = taCenter
          AlignToBand = False
          AutoSize = False
          AutoStretch = False
          BiDiMode = bdRightToLeft
          ParentBiDiMode = False
          Caption = #1581#1587#1576#1606' '#1593#1606#1575#1576#1587#1578#1575#1606#1610
          Color = clWhite
          Font.Charset = ARABIC_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = 'Nazanin'
          Font.Style = [fsBold]
          ParentFont = False
          Transparent = False
          WordWrap = True
          FontSize = 12
        end
        object QRPerson4: TQRLabel
          Left = 6
          Top = 1006
          Width = 170
          Height = 30
          Frame.Color = clBlack
          Frame.DrawTop = False
          Frame.DrawBottom = False
          Frame.DrawLeft = False
          Frame.DrawRight = False
          Size.Values = (
            79.375000000000000000
            15.875000000000000000
            2661.708333333333000000
            449.791666666666700000)
          Alignment = taCenter
          AlignToBand = False
          AutoSize = False
          AutoStretch = False
          BiDiMode = bdRightToLeft
          ParentBiDiMode = False
          Caption = #1581#1587#1576#1606' '#1593#1606#1575#1576#1587#1578#1575#1606#1610
          Color = clWhite
          Font.Charset = ARABIC_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = 'Nazanin'
          Font.Style = [fsBold]
          ParentFont = False
          Transparent = False
          WordWrap = True
          FontSize = 12
        end
        object CashLogo3: TQRImage
          Left = 5
          Top = 4
          Width = 70
          Height = 70
          Frame.Color = clBlack
          Frame.DrawTop = False
          Frame.DrawBottom = False
          Frame.DrawLeft = False
          Frame.DrawRight = False
          Size.Values = (
            185.208333333333300000
            13.229166666666670000
            10.583333333333330000
            185.208333333333300000)
          Stretch = True
        end
        object QRMemo1: TQRMemo
          Left = 40
          Top = 200
          Width = 642
          Height = 713
          Frame.Color = clBlack
          Frame.DrawTop = False
          Frame.DrawBottom = False
          Frame.DrawLeft = False
          Frame.DrawRight = False
          Size.Values = (
            1886.479166666667000000
            105.833333333333300000
            529.166666666666800000
            1698.625000000000000000)
          Alignment = taLeftJustify
          AlignToBand = False
          AutoSize = False
          AutoStretch = False
          Color = clWhite
          Transparent = False
          WordWrap = True
          FontSize = 10
        end
      end
    end
    object Panel2: TPanel
      Left = 1
      Top = 1
      Width = 532
      Height = 443
      Align = alClient
      TabOrder = 1
      DesignSize = (
        532
        443)
      object Label1: TLabel
        Left = 436
        Top = 9
        Width = 22
        Height = 14
        Anchors = [akTop, akRight]
        Caption = #1578#1575#1585#1610#1582
        Font.Charset = ARABIC_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
      end
      object Label2: TLabel
        Left = 178
        Top = 9
        Width = 33
        Height = 14
        Anchors = [akTop, akRight]
        Caption = #1588#1605#1575#1585#1607
        Font.Charset = ARABIC_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
      end
      object Label3: TLabel
        Left = 427
        Top = 47
        Width = 87
        Height = 14
        Anchors = [akTop, akRight]
        Caption = #1581#1575#1590#1585' '#1583#1585' '#1580#1604#1587#1607' 1'
        Font.Charset = ARABIC_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
      end
      object Label4: TLabel
        Left = 179
        Top = 48
        Width = 30
        Height = 14
        Anchors = [akTop, akRight]
        Caption = #1587#1605#1578
        Font.Charset = ARABIC_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
      end
      object Label5: TLabel
        Left = 427
        Top = 87
        Width = 87
        Height = 14
        Anchors = [akTop, akRight]
        Caption = #1581#1575#1590#1585' '#1583#1585' '#1580#1604#1587#1607' 2'
        Font.Charset = ARABIC_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
      end
      object Label6: TLabel
        Left = 179
        Top = 88
        Width = 30
        Height = 14
        Anchors = [akTop, akRight]
        Caption = #1587#1605#1578
        Font.Charset = ARABIC_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
      end
      object Label7: TLabel
        Left = 427
        Top = 124
        Width = 87
        Height = 14
        Anchors = [akTop, akRight]
        Caption = #1581#1575#1590#1585' '#1583#1585' '#1580#1604#1587#1607' 3'
        Font.Charset = ARABIC_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
      end
      object Label8: TLabel
        Left = 179
        Top = 124
        Width = 30
        Height = 14
        Anchors = [akTop, akRight]
        Caption = #1587#1605#1578
        Font.Charset = ARABIC_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
      end
      object Label9: TLabel
        Left = 427
        Top = 162
        Width = 87
        Height = 14
        Anchors = [akTop, akRight]
        Caption = #1581#1575#1590#1585' '#1583#1585' '#1580#1604#1587#1607' 4'
        Font.Charset = ARABIC_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
      end
      object Label10: TLabel
        Left = 179
        Top = 164
        Width = 30
        Height = 14
        Anchors = [akTop, akRight]
        Caption = #1587#1605#1578
        Font.Charset = ARABIC_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
      end
      object Label11: TLabel
        Left = 435
        Top = 199
        Width = 87
        Height = 14
        Anchors = [akTop, akRight]
        Caption = #1605#1578#1606' '#1589#1608#1585#1578' '#1580#1604#1587#1607
        Font.Charset = ARABIC_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
      end
      object NoEdit: TEdit
        Left = 41
        Top = 3
        Width = 129
        Height = 22
        Anchors = [akTop, akRight]
        Font.Charset = ARABIC_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        TabOrder = 1
      end
      object Person1: TEdit
        Left = 246
        Top = 41
        Width = 178
        Height = 22
        Anchors = [akTop, akRight]
        Font.Charset = ARABIC_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        TabOrder = 2
      end
      object Response1: TEdit
        Left = 20
        Top = 41
        Width = 150
        Height = 22
        Anchors = [akTop, akRight]
        Font.Charset = ARABIC_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        TabOrder = 3
        Text = #1589#1606#1583#1608#1602#1583#1575#1585
      end
      object Person2: TEdit
        Left = 246
        Top = 79
        Width = 178
        Height = 22
        Anchors = [akTop, akRight]
        Font.Charset = ARABIC_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        TabOrder = 4
      end
      object Response2: TEdit
        Left = 20
        Top = 79
        Width = 150
        Height = 22
        Anchors = [akTop, akRight]
        Font.Charset = ARABIC_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        TabOrder = 5
        Text = #1593#1590#1608' '#1607#1610#1575#1578' '#1605#1583#1610#1585#1607
      end
      object Person3: TEdit
        Left = 246
        Top = 117
        Width = 178
        Height = 22
        Anchors = [akTop, akRight]
        Font.Charset = ARABIC_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        TabOrder = 6
      end
      object Response3: TEdit
        Left = 20
        Top = 117
        Width = 150
        Height = 22
        Anchors = [akTop, akRight]
        Font.Charset = ARABIC_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        TabOrder = 7
        Text = #1593#1590#1608' '#1607#1610#1575#1578' '#1605#1583#1610#1585#1607
      end
      object Person4: TEdit
        Left = 246
        Top = 155
        Width = 178
        Height = 22
        Anchors = [akTop, akRight]
        Font.Charset = ARABIC_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        TabOrder = 8
      end
      object Response4: TEdit
        Left = 20
        Top = 157
        Width = 150
        Height = 22
        Anchors = [akTop, akRight]
        Font.Charset = ARABIC_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        TabOrder = 9
        Text = #1593#1590#1608' '#1607#1610#1575#1578' '#1605#1583#1610#1585#1607
      end
      object MEDate: TSolarDatePicker
        Left = 251
        Top = 3
        Width = 173
        Height = 22
        Anchors = [akTop, akRight]
        About = 'Created by : Mohamad Khorsandi'
        BiDiMode = bdLeftToRight
        Font.Charset = ARABIC_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        TabOrder = 0
        Text = '1403/11/05'
        Enabled = True
        DateKind = dkSolar
        CheckInputOnExit = False
        Divider = dSlash
        ShowToDay = True
        MonthObject = moPopupMenu
        Glyph = gtCalendar
        ShowDefaultDate = True
        AutoCheck = False
        AutoDeleteDelimiter = False
        EnabledDays = [mcSaturday, mcSunday, mcMonday, mcTuesday, mcWednesday, mcThursday, mcFriday]
        MaskEnabled = False
        ColorCaptionStart = 13158600
        ColorCaptionStop = clWhite
        ColorBodyStart = clWhite
        ColorBodyStop = clWhite
        ColorTodayLine = clBlack
        ColorSelectBrush = 14474460
        ColorDisableMonth = clGray
        ColorVacationDay = clRed
        ColorNormalDay = clBlack
        ColorStyle = csWhiteGray
        ButtonStyle = bsRound
        DataFieldType = dftSolar
        DataFieldAutoSaveModified = False
      end
      object Memo1: TMemo
        Left = 1
        Top = 220
        Width = 530
        Height = 222
        Align = alBottom
        Anchors = [akLeft, akTop, akRight, akBottom]
        TabOrder = 10
      end
    end
    object Panel1: TPanel
      Left = 1
      Top = 444
      Width = 532
      Height = 41
      Align = alBottom
      TabOrder = 2
      DesignSize = (
        532
        41)
      object Button1: TAdvGlowButton
        Left = 407
        Top = 7
        Width = 116
        Height = 28
        Anchors = [akTop, akRight]
        Caption = #1670#1575#1662' '#1589#1608#1585#1578#1580#1604#1587#1607
        Default = True
        Font.Charset = ARABIC_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Tahoma'
        Font.Style = []
        ImageIndex = 55
        Images = dm.LetterImages_New
        NotesFont.Charset = DEFAULT_CHARSET
        NotesFont.Color = clWindowText
        NotesFont.Height = -11
        NotesFont.Name = 'Tahoma'
        NotesFont.Style = []
        ParentFont = False
        TabOrder = 0
        OnClick = Button1Click
        Appearance.ColorChecked = 16111818
        Appearance.ColorCheckedTo = 16367008
        Appearance.ColorDisabled = 15921906
        Appearance.ColorDisabledTo = 15921906
        Appearance.ColorDown = 16111818
        Appearance.ColorDownTo = 16367008
        Appearance.ColorHot = 16117985
        Appearance.ColorHotTo = 16372402
        Appearance.ColorMirrorHot = 16107693
        Appearance.ColorMirrorHotTo = 16775412
        Appearance.ColorMirrorDown = 16102556
        Appearance.ColorMirrorDownTo = 16768988
        Appearance.ColorMirrorChecked = 16102556
        Appearance.ColorMirrorCheckedTo = 16768988
        Appearance.ColorMirrorDisabled = 11974326
        Appearance.ColorMirrorDisabledTo = 15921906
      end
      object Button2: TAdvGlowButton
        Left = 12
        Top = 7
        Width = 75
        Height = 28
        Cancel = True
        Caption = #1582#1585#1608#1580
        Font.Charset = ARABIC_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Tahoma'
        Font.Style = []
        ImageIndex = 84
        Images = dm.ImageList_MainNew
        NotesFont.Charset = DEFAULT_CHARSET
        NotesFont.Color = clWindowText
        NotesFont.Height = -11
        NotesFont.Name = 'Tahoma'
        NotesFont.Style = []
        ParentFont = False
        TabOrder = 1
        OnClick = Button2Click
        Appearance.ColorChecked = 16111818
        Appearance.ColorCheckedTo = 16367008
        Appearance.ColorDisabled = 15921906
        Appearance.ColorDisabledTo = 15921906
        Appearance.ColorDown = 16111818
        Appearance.ColorDownTo = 16367008
        Appearance.ColorHot = 16117985
        Appearance.ColorHotTo = 16372402
        Appearance.ColorMirrorHot = 16107693
        Appearance.ColorMirrorHotTo = 16775412
        Appearance.ColorMirrorDown = 16102556
        Appearance.ColorMirrorDownTo = 16768988
        Appearance.ColorMirrorChecked = 16102556
        Appearance.ColorMirrorCheckedTo = 16768988
        Appearance.ColorMirrorDisabled = 11974326
        Appearance.ColorMirrorDisabledTo = 15921906
      end
    end
  end
  inherited ahmadvand: TActionList
    Left = 228
    Top = 91
  end
  inherited Grid_PopupMenu: TPopupMenu
    Left = 239
    Top = 76
  end
  inherited qSetting: TADOQuery
    Left = 208
    Top = 160
  end
end
