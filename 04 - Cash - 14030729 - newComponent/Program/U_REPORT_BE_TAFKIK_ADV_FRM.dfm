object REPORT_BE_TAFKIK_ADV_FRM: TREPORT_BE_TAFKIK_ADV_FRM
  Left = 606
  Top = 324
  BiDiMode = bdRightToLeft
  BorderStyle = bsDialog
  Caption = #1711#1586#1575#1585#1588' '#1608#1575#1605' '#1576#1607' '#1578#1601#1705#1610#1705' '#1575#1593#1590#1575
  ClientHeight = 101
  ClientWidth = 405
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  ParentBiDiMode = False
  Position = poScreenCenter
  Scaled = False
  PixelsPerInch = 96
  TextHeight = 13
  object pnlMain: TPanel
    Left = 0
    Top = 0
    Width = 405
    Height = 101
    Align = alClient
    ParentColor = True
    TabOrder = 0
    object Label1: TLabel
      Left = 323
      Top = 22
      Width = 72
      Height = 14
      Caption = #1588#1605#1575#1585#1607' '#1581#1587#1575#1576
      Font.Charset = ARABIC_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object QuickRep1: TQuickRep
      Left = -411
      Top = -955
      Width = 816
      Height = 1056
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      DataSet = ADV_REP
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
      Options = [FirstPageHeader, LastPageFooter]
      Page.Columns = 1
      Page.Orientation = poPortrait
      Page.PaperSize = Letter
      Page.Values = (
        100.000000000000000000
        2794.000000000000000000
        100.000000000000000000
        2159.000000000000000000
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
      object QRBand1: TQRBand
        Left = 38
        Top = 38
        Width = 740
        Height = 107
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
          283.104166666666700000
          1957.916666666667000000)
        BandType = rbTitle
        object QRDBText1: TQRDBText
          Left = 584
          Top = 48
          Width = 57
          Height = 19
          Frame.Color = clBlack
          Frame.DrawTop = False
          Frame.DrawBottom = False
          Frame.DrawLeft = False
          Frame.DrawRight = False
          Size.Values = (
            50.270833333333330000
            1545.166666666667000000
            127.000000000000000000
            150.812500000000000000)
          Alignment = taLeftJustify
          AlignToBand = False
          AutoSize = True
          AutoStretch = False
          Color = clWhite
          DataSet = ADV_REP
          DataField = 'LastName'
          Font.Charset = ARABIC_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          Transparent = True
          WordWrap = True
          FontSize = 10
        end
        object QRDBText2: TQRDBText
          Left = 600
          Top = 80
          Width = 42
          Height = 19
          Frame.Color = clBlack
          Frame.DrawTop = False
          Frame.DrawBottom = False
          Frame.DrawLeft = False
          Frame.DrawRight = False
          Size.Values = (
            50.270833333333330000
            1587.500000000000000000
            211.666666666666700000
            111.125000000000000000)
          Alignment = taLeftJustify
          AlignToBand = False
          AutoSize = True
          AutoStretch = False
          Color = clWhite
          DataSet = ADV_REP
          DataField = 'Phones'
          Font.Charset = ARABIC_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          Transparent = True
          WordWrap = True
          FontSize = 10
        end
        object QRLabel1: TQRLabel
          Left = 317
          Top = 6
          Width = 106
          Height = 29
          Frame.Color = clBlack
          Frame.DrawTop = False
          Frame.DrawBottom = False
          Frame.DrawLeft = False
          Frame.DrawRight = False
          Size.Values = (
            76.729166666666670000
            838.729166666666700000
            15.875000000000000000
            280.458333333333300000)
          Alignment = taCenter
          AlignToBand = True
          AutoSize = True
          AutoStretch = False
          Caption = #1604#1610#1587#1578' '#1608#1575#1605' '#1607#1575
          Color = clWhite
          Font.Charset = ARABIC_CHARSET
          Font.Color = clNavy
          Font.Height = -19
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          Transparent = True
          WordWrap = True
          FontSize = 14
        end
        object QRLabel9: TQRLabel
          Left = 652
          Top = 48
          Width = 22
          Height = 17
          Frame.Color = clBlack
          Frame.DrawTop = False
          Frame.DrawBottom = False
          Frame.DrawLeft = False
          Frame.DrawRight = False
          Size.Values = (
            44.979166666666670000
            1725.083333333333000000
            127.000000000000000000
            58.208333333333330000)
          Alignment = taLeftJustify
          AlignToBand = False
          AutoSize = True
          AutoStretch = False
          BiDiMode = bdRightToLeft
          ParentBiDiMode = False
          Caption = #1606#1575#1605' :'
          Color = clWhite
          Font.Charset = ARABIC_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
          Transparent = True
          WordWrap = True
          FontSize = 8
        end
        object QRLabel10: TQRLabel
          Left = 652
          Top = 80
          Width = 30
          Height = 17
          Frame.Color = clBlack
          Frame.DrawTop = False
          Frame.DrawBottom = False
          Frame.DrawLeft = False
          Frame.DrawRight = False
          Size.Values = (
            44.979166666666670000
            1725.083333333333000000
            211.666666666666700000
            79.375000000000000000)
          Alignment = taLeftJustify
          AlignToBand = False
          AutoSize = True
          AutoStretch = False
          BiDiMode = bdRightToLeft
          ParentBiDiMode = False
          Caption = #1578#1604#1601#1606' :'
          Color = clWhite
          Font.Charset = ARABIC_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
          Transparent = True
          WordWrap = True
          FontSize = 8
        end
      end
      object QRBand2: TQRBand
        Left = 38
        Top = 185
        Width = 740
        Height = 104
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
          275.166666666666700000
          1957.916666666667000000)
        BandType = rbDetail
        object QRShape2: TQRShape
          Left = 2
          Top = 5
          Width = 735
          Height = 92
          Frame.Color = clBlack
          Frame.DrawTop = False
          Frame.DrawBottom = False
          Frame.DrawLeft = False
          Frame.DrawRight = False
          Size.Values = (
            243.416666666666700000
            5.291666666666667000
            13.229166666666670000
            1944.687500000000000000)
          Shape = qrsRectangle
        end
        object QRDBText3: TQRDBText
          Left = 633
          Top = 8
          Width = 102
          Height = 19
          Frame.Color = clBlack
          Frame.DrawTop = False
          Frame.DrawBottom = False
          Frame.DrawLeft = False
          Frame.DrawRight = False
          Size.Values = (
            50.270833333333330000
            1674.812500000000000000
            21.166666666666670000
            269.875000000000000000)
          Alignment = taCenter
          AlignToBand = False
          AutoSize = False
          AutoStretch = False
          Color = clWhite
          DataSet = ADV_REP
          DataField = 'LOANDATE'
          Font.Charset = ARABIC_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          Transparent = True
          WordWrap = True
          FontSize = 10
        end
        object QRDBText4: TQRDBText
          Left = 521
          Top = 8
          Width = 102
          Height = 19
          Frame.Color = clBlack
          Frame.DrawTop = False
          Frame.DrawBottom = False
          Frame.DrawLeft = False
          Frame.DrawRight = False
          Size.Values = (
            50.270833333333330000
            1378.479166666667000000
            21.166666666666670000
            269.875000000000000000)
          Alignment = taCenter
          AlignToBand = False
          AutoSize = False
          AutoStretch = False
          Color = clWhite
          DataSet = ADV_REP
          DataField = 'VAL_VAM'
          Font.Charset = ARABIC_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          Transparent = True
          WordWrap = True
          FontSize = 10
        end
        object QRDBText5: TQRDBText
          Left = 434
          Top = 8
          Width = 71
          Height = 19
          Frame.Color = clBlack
          Frame.DrawTop = False
          Frame.DrawBottom = False
          Frame.DrawLeft = False
          Frame.DrawRight = False
          Size.Values = (
            50.270833333333330000
            1148.291666666667000000
            21.166666666666670000
            187.854166666666700000)
          Alignment = taCenter
          AlignToBand = False
          AutoSize = False
          AutoStretch = False
          Color = clWhite
          DataSet = ADV_REP
          DataField = 'TedadAghsat'
          Font.Charset = ARABIC_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          Transparent = True
          WordWrap = True
          FontSize = 10
        end
        object QRDBText6: TQRDBText
          Left = 216
          Top = 8
          Width = 102
          Height = 19
          Frame.Color = clBlack
          Frame.DrawTop = False
          Frame.DrawBottom = False
          Frame.DrawLeft = False
          Frame.DrawRight = False
          Size.Values = (
            50.270833333333330000
            571.500000000000000000
            21.166666666666670000
            269.875000000000000000)
          Alignment = taCenter
          AlignToBand = False
          AutoSize = False
          AutoStretch = False
          Color = clWhite
          DataSet = ADV_REP
          DataField = 'JamePardakhti'
          Font.Charset = ARABIC_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          Transparent = True
          WordWrap = True
          FontSize = 10
        end
        object QRDBText7: TQRDBText
          Left = 98
          Top = 8
          Width = 102
          Height = 19
          Frame.Color = clBlack
          Frame.DrawTop = False
          Frame.DrawBottom = False
          Frame.DrawLeft = False
          Frame.DrawRight = False
          Size.Values = (
            50.270833333333330000
            259.291666666666700000
            21.166666666666670000
            269.875000000000000000)
          Alignment = taCenter
          AlignToBand = False
          AutoSize = False
          AutoStretch = False
          Color = clWhite
          DataSet = ADV_REP
          DataField = 'mandeh_vam'
          Font.Charset = ARABIC_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          Transparent = True
          WordWrap = True
          FontSize = 10
        end
        object QRDBText8: TQRDBText
          Left = 16
          Top = 50
          Width = 204
          Height = 19
          Frame.Color = clBlack
          Frame.DrawTop = False
          Frame.DrawBottom = False
          Frame.DrawLeft = False
          Frame.DrawRight = False
          Size.Values = (
            50.270833333333330000
            42.333333333333330000
            132.291666666666700000
            539.750000000000000000)
          Alignment = taCenter
          AlignToBand = False
          AutoSize = False
          AutoStretch = False
          Color = clWhite
          DataSet = ADV_REP
          DataField = 'ZAMEN_name'
          Font.Charset = ARABIC_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          Transparent = True
          WordWrap = True
          FontSize = 10
        end
        object QRDBText9: TQRDBText
          Left = 16
          Top = 74
          Width = 204
          Height = 19
          Frame.Color = clBlack
          Frame.DrawTop = False
          Frame.DrawBottom = False
          Frame.DrawLeft = False
          Frame.DrawRight = False
          Size.Values = (
            50.270833333333330000
            42.333333333333330000
            195.791666666666700000
            539.750000000000000000)
          Alignment = taCenter
          AlignToBand = False
          AutoSize = False
          AutoStretch = False
          Color = clWhite
          DataSet = ADV_REP
          DataField = 'ZAMEN_tel'
          Font.Charset = ARABIC_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          Transparent = True
          WordWrap = True
          FontSize = 10
        end
        object QRLabel7: TQRLabel
          Left = 222
          Top = 50
          Width = 102
          Height = 19
          Frame.Color = clBlack
          Frame.DrawTop = False
          Frame.DrawBottom = False
          Frame.DrawLeft = False
          Frame.DrawRight = False
          Size.Values = (
            50.270833333333330000
            587.375000000000000000
            132.291666666666700000
            269.875000000000000000)
          Alignment = taCenter
          AlignToBand = False
          AutoSize = False
          AutoStretch = False
          Caption = #1606#1575#1605' '#1590#1575#1605#1606
          Color = clWhite
          Font.Charset = ARABIC_CHARSET
          Font.Color = clWindowText
          Font.Height = -8
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
          Transparent = True
          WordWrap = True
          FontSize = 6
        end
        object QRLabel8: TQRLabel
          Left = 222
          Top = 74
          Width = 102
          Height = 19
          Frame.Color = clBlack
          Frame.DrawTop = False
          Frame.DrawBottom = False
          Frame.DrawLeft = False
          Frame.DrawRight = False
          Size.Values = (
            50.270833333333330000
            587.375000000000000000
            195.791666666666700000
            269.875000000000000000)
          Alignment = taCenter
          AlignToBand = False
          AutoSize = False
          AutoStretch = False
          Caption = #1578#1604#1601#1606' '#1590#1575#1605#1606
          Color = clWhite
          Font.Charset = ARABIC_CHARSET
          Font.Color = clWindowText
          Font.Height = -8
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
          Transparent = True
          WordWrap = True
          FontSize = 6
        end
        object QRDBText10: TQRDBText
          Left = 323
          Top = 8
          Width = 105
          Height = 19
          Frame.Color = clBlack
          Frame.DrawTop = False
          Frame.DrawBottom = False
          Frame.DrawLeft = False
          Frame.DrawRight = False
          Size.Values = (
            50.270833333333330000
            854.604166666666700000
            21.166666666666670000
            277.812500000000000000)
          Alignment = taCenter
          AlignToBand = False
          AutoSize = False
          AutoStretch = False
          Color = clWhite
          DataSet = ADV_REP
          DataField = 'tedadAghsatPardakhtShode'
          Font.Charset = ARABIC_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          Transparent = True
          WordWrap = True
          FontSize = 10
        end
        object QRLabel12: TQRLabel
          Left = 630
          Top = 50
          Width = 102
          Height = 19
          Frame.Color = clBlack
          Frame.DrawTop = False
          Frame.DrawBottom = False
          Frame.DrawLeft = False
          Frame.DrawRight = False
          Size.Values = (
            50.270833333333330000
            1666.875000000000000000
            132.291666666666700000
            269.875000000000000000)
          Alignment = taCenter
          AlignToBand = False
          AutoSize = False
          AutoStretch = False
          Caption = #1605#1576#1604#1594' '#1607#1585' '#1602#1587#1591
          Color = clWhite
          Font.Charset = ARABIC_CHARSET
          Font.Color = clWindowText
          Font.Height = -8
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
          Transparent = True
          WordWrap = True
          FontSize = 6
        end
        object QRDBText11: TQRDBText
          Left = 424
          Top = 50
          Width = 204
          Height = 19
          Frame.Color = clBlack
          Frame.DrawTop = False
          Frame.DrawBottom = False
          Frame.DrawLeft = False
          Frame.DrawRight = False
          Size.Values = (
            50.270833333333330000
            1121.833333333333000000
            132.291666666666700000
            539.750000000000000000)
          Alignment = taCenter
          AlignToBand = False
          AutoSize = False
          AutoStretch = False
          Color = clWhite
          DataSet = ADV_REP
          DataField = 'MablaghYekGhest'
          Font.Charset = ARABIC_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          Transparent = True
          WordWrap = True
          FontSize = 10
        end
      end
      object QRBand3: TQRBand
        Left = 38
        Top = 145
        Width = 740
        Height = 40
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
          105.833333333333300000
          1957.916666666667000000)
        BandType = rbColumnHeader
        object QRShape1: TQRShape
          Left = 2
          Top = 5
          Width = 735
          Height = 27
          Frame.Color = clBlack
          Frame.DrawTop = False
          Frame.DrawBottom = False
          Frame.DrawLeft = False
          Frame.DrawRight = False
          Size.Values = (
            71.437500000000000000
            5.291666666666667000
            13.229166666666670000
            1944.687500000000000000)
          Brush.Color = clSilver
          Shape = qrsRectangle
        end
        object QRLabel2: TQRLabel
          Left = 633
          Top = 10
          Width = 102
          Height = 19
          Frame.Color = clBlack
          Frame.DrawTop = False
          Frame.DrawBottom = False
          Frame.DrawLeft = False
          Frame.DrawRight = False
          Size.Values = (
            50.270833333333330000
            1674.812500000000000000
            26.458333333333330000
            269.875000000000000000)
          Alignment = taCenter
          AlignToBand = False
          AutoSize = False
          AutoStretch = False
          Caption = #1578#1575#1585#1610#1582' '#1662#1585#1583#1575#1582#1578' '#1608#1575#1605
          Color = clWhite
          Font.Charset = ARABIC_CHARSET
          Font.Color = clWindowText
          Font.Height = -8
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
          Transparent = True
          WordWrap = True
          FontSize = 6
        end
        object QRLabel3: TQRLabel
          Left = 521
          Top = 10
          Width = 102
          Height = 19
          Frame.Color = clBlack
          Frame.DrawTop = False
          Frame.DrawBottom = False
          Frame.DrawLeft = False
          Frame.DrawRight = False
          Size.Values = (
            50.270833333333330000
            1378.479166666667000000
            26.458333333333330000
            269.875000000000000000)
          Alignment = taCenter
          AlignToBand = False
          AutoSize = False
          AutoStretch = False
          Caption = #1605#1576#1604#1594' '#1608#1575#1605
          Color = clWhite
          Font.Charset = ARABIC_CHARSET
          Font.Color = clWindowText
          Font.Height = -8
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
          Transparent = True
          WordWrap = True
          FontSize = 6
        end
        object QRLabel4: TQRLabel
          Left = 433
          Top = 10
          Width = 71
          Height = 19
          Frame.Color = clBlack
          Frame.DrawTop = False
          Frame.DrawBottom = False
          Frame.DrawLeft = False
          Frame.DrawRight = False
          Size.Values = (
            50.270833333333330000
            1145.645833333333000000
            26.458333333333330000
            187.854166666666700000)
          Alignment = taCenter
          AlignToBand = False
          AutoSize = False
          AutoStretch = False
          Caption = #1578#1593#1583#1575#1583' '#1705#1604' '#1575#1602#1587#1575#1591
          Color = clWhite
          Font.Charset = ARABIC_CHARSET
          Font.Color = clWindowText
          Font.Height = -8
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
          Transparent = True
          WordWrap = True
          FontSize = 6
        end
        object QRLabel5: TQRLabel
          Left = 217
          Top = 10
          Width = 102
          Height = 19
          Frame.Color = clBlack
          Frame.DrawTop = False
          Frame.DrawBottom = False
          Frame.DrawLeft = False
          Frame.DrawRight = False
          Size.Values = (
            50.270833333333330000
            574.145833333333300000
            26.458333333333330000
            269.875000000000000000)
          Alignment = taCenter
          AlignToBand = False
          AutoSize = False
          AutoStretch = False
          Caption = #1605#1576#1604#1594' '#1662#1585#1583#1575#1582#1578#1610
          Color = clWhite
          Font.Charset = ARABIC_CHARSET
          Font.Color = clWindowText
          Font.Height = -8
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
          Transparent = True
          WordWrap = True
          FontSize = 6
        end
        object QRLabel6: TQRLabel
          Left = 106
          Top = 10
          Width = 102
          Height = 19
          Frame.Color = clBlack
          Frame.DrawTop = False
          Frame.DrawBottom = False
          Frame.DrawLeft = False
          Frame.DrawRight = False
          Size.Values = (
            50.270833333333330000
            280.458333333333300000
            26.458333333333330000
            269.875000000000000000)
          Alignment = taCenter
          AlignToBand = False
          AutoSize = False
          AutoStretch = False
          Caption = #1605#1576#1604#1594' '#1605#1575#1606#1583#1607
          Color = clWhite
          Font.Charset = ARABIC_CHARSET
          Font.Color = clWindowText
          Font.Height = -8
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
          Transparent = True
          WordWrap = True
          FontSize = 6
        end
        object QRLabel11: TQRLabel
          Left = 323
          Top = 10
          Width = 105
          Height = 19
          Frame.Color = clBlack
          Frame.DrawTop = False
          Frame.DrawBottom = False
          Frame.DrawLeft = False
          Frame.DrawRight = False
          Size.Values = (
            50.270833333333330000
            854.604166666666700000
            26.458333333333330000
            277.812500000000000000)
          Alignment = taCenter
          AlignToBand = False
          AutoSize = False
          AutoStretch = False
          Caption = #1578#1593#1583#1575#1583' '#1575#1602#1587#1575#1591' '#1662#1585#1583#1575#1582#1578' '#1588#1583#1607
          Color = clWhite
          Font.Charset = ARABIC_CHARSET
          Font.Color = clWindowText
          Font.Height = -8
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
          Transparent = True
          WordWrap = True
          FontSize = 6
        end
      end
    end
    object SearchEdit: TYWhereEdit
      Left = 121
      Top = 16
      Width = 183
      Height = 22
      BiDiMode = bdLeftToRight
      Font.Charset = ARABIC_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentBiDiMode = False
      ParentFont = False
      TabOrder = 1
      isLike = False
      isDate = False
      EveryLike = True
      isString = True
      FieldName = 'AccountNo'
      TableName = 'Account'
      CodeField = 'Code'
      TitleField = 'Title'
      Connection = dm.YeganehConnection
    end
    object MakeRep: TAdvGlowButton
      Left = 33
      Top = 13
      Width = 87
      Height = 28
      Caption = #1606#1605#1575#1610#1588
      Font.Charset = ARABIC_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Tahoma'
      Font.Style = []
      ImageIndex = 14
      Images = dm.ImageList_MainNew
      NotesFont.Charset = DEFAULT_CHARSET
      NotesFont.Color = clWindowText
      NotesFont.Height = -11
      NotesFont.Name = 'Tahoma'
      NotesFont.Style = []
      ParentFont = False
      TabOrder = 2
      OnClick = MakeRepClick
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
    object BitBtn1: TAdvGlowButton
      Left = 10
      Top = 62
      Width = 70
      Height = 27
      Caption = #1582#1585#1608#1580
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clNavy
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
      TabOrder = 3
      OnClick = BitBtn1Click
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
  object ADV_REP: TADOStoredProc
    Connection = dm.YeganehConnection
    CursorType = ctStatic
    ProcedureName = 'Report_Loan_ADV;1'
    Parameters = <
      item
        Name = '@RETURN_VALUE'
        DataType = ftInteger
        Direction = pdReturnValue
        Precision = 10
        Value = 0
      end
      item
        Name = '@AccountID'
        Attributes = [paNullable]
        DataType = ftInteger
        Precision = 10
        Value = 0
      end
      item
        Name = '@SelAll'
        Attributes = [paNullable]
        DataType = ftInteger
        Precision = 10
        Value = 0
      end>
    Left = 96
    Top = 64
    object ADV_REPAccountID: TIntegerField
      FieldName = 'AccountID'
    end
    object ADV_REPLoanID: TAutoIncField
      FieldName = 'LoanID'
      ReadOnly = True
    end
    object ADV_REPAccountTitle: TWideStringField
      FieldName = 'AccountTitle'
      Size = 100
    end
    object ADV_REPAccountNo: TStringField
      FieldName = 'AccountNo'
    end
    object ADV_REPAccountDate: TStringField
      FieldName = 'AccountDate'
      FixedChar = True
      Size = 10
    end
    object ADV_REPLoanTypeTitle: TWideStringField
      FieldName = 'LoanTypeTitle'
      Size = 50
    end
    object ADV_REPTOTALEXIST: TLargeintField
      FieldName = 'TOTALEXIST'
      ReadOnly = True
      DisplayFormat = '###,'
    end
    object ADV_REPTedadAghsat: TIntegerField
      FieldName = 'TedadAghsat'
      ReadOnly = True
    end
    object ADV_REPMablaghYekGhest: TIntegerField
      FieldName = 'MablaghYekGhest'
      ReadOnly = True
      DisplayFormat = '###,'
    end
    object ADV_REPtedadAghsatPardakhtShode: TIntegerField
      FieldName = 'tedadAghsatPardakhtShode'
      ReadOnly = True
    end
    object ADV_REPAghsatPardakhti: TIntegerField
      FieldName = 'AghsatPardakhti'
      ReadOnly = True
    end
    object ADV_REPTotalMandehVam: TIntegerField
      FieldName = 'TotalMandehVam'
      ReadOnly = True
    end
    object ADV_REPPaidIntrestAmount: TIntegerField
      FieldName = 'PaidIntrestAmount'
      ReadOnly = True
    end
    object ADV_REPTotalIntrestAmount: TIntegerField
      FieldName = 'TotalIntrestAmount'
      ReadOnly = True
    end
    object ADV_REPJamePardakhti: TIntegerField
      FieldName = 'JamePardakhti'
      ReadOnly = True
      DisplayFormat = '###,'
    end
    object ADV_REPLOANDATE: TStringField
      FieldName = 'LOANDATE'
      FixedChar = True
      Size = 10
    end
    object ADV_REPLastName: TWideStringField
      FieldName = 'LastName'
      Size = 40
    end
    object ADV_REPZAMEN_name: TWideStringField
      FieldName = 'ZAMEN_name'
      ReadOnly = True
      Size = 70
    end
    object ADV_REPZAMEN_tel: TWideStringField
      FieldName = 'ZAMEN_tel'
      ReadOnly = True
      Size = 50
    end
    object ADV_REPVAL_VAM: TIntegerField
      FieldName = 'VAL_VAM'
      DisplayFormat = '###,'
    end
    object ADV_REPmandeh_vam: TIntegerField
      FieldName = 'mandeh_vam'
      ReadOnly = True
    end
    object ADV_REPAccountDate_1: TStringField
      FieldName = 'AccountDate_1'
      FixedChar = True
      Size = 10
    end
    object ADV_REPPhones: TWideStringField
      FieldName = 'Phones'
      Size = 50
    end
  end
  object ADOConnection1: TADOConnection
    ConnectionString = 
      'Provider=SQLOLEDB.1;Integrated Security=SSPI;Persist Security In' +
      'fo=False;Initial Catalog=L;Data Source=TURAJ-PC\YEGANEH_2008;'
    LoginPrompt = False
    Provider = 'SQLOLEDB.1'
    Left = 184
    Top = 56
  end
end
