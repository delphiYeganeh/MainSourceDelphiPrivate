inherited FUniversity: TFUniversity
  Left = 624
  Top = 301
  Caption = #1578#1593#1585#1610#1601' '#1583#1575#1606#1588#1711#1575#1607
  OldCreateOrder = True
  PixelsPerInch = 96
  TextHeight = 13
  object pnlMain: TPanel [0]
    Left = 0
    Top = 0
    Width = 609
    Height = 368
    Align = alClient
    TabOrder = 0
    object Panel1: TPanel
      Left = 1
      Top = 326
      Width = 607
      Height = 41
      Align = alBottom
      TabOrder = 0
      object xpBitBtn1: TxpBitBtn
        Left = 16
        Top = 6
        Width = 101
        Height = 32
        startColor = 16645629
        EndColor = 14666957
        Caption = #1582#1585#1608#1580
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clNavy
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        Glyph.Data = {
          32040000424D3204000000000000360000002800000014000000110000000100
          180000000000FC030000000000000000000000000000000000001816136788FF
          0012D16F6CC6F7F1EC9997D90000B1262FBBCBC8DFFFF8CFFFE9C8FFEACCFFEB
          CCFFEBCBFFEBCBFFEBCBFFECCBFFECCCFFE7C4FFF6EB1D18117987FF0F57FF08
          37E4060084031FC60753FF002DE78370A4FFCA66FFB156FFB359FFB25AFFB159
          FFAF59FFAE59FFAC58FFAB59FFAC53FF9B0D282310C0B8E60017CE2565FF154B
          FC1852FF0B34DF4447BDD8D6EEFFFAFFFFEEFFFFEDFEFFEBFDFFE8FAFFE5F9FF
          E2F8FFDEF5FFD9EDFFF0FFFF9C13171309FFFFE88079BC1232D32B65FF1C54FE
          2733B8C3B9D3FFFFF6FFEAE8FFE7E6FFE4E3FFE1E0FFDDDCFFDCDBFFD8D6FFD5
          D3FFCFCAFFE6FFFFA015161109FFFFED7674CD2257E12355F11344EA1242E565
          65C7F1EDEDFFF4F0FFEAEBFFE8E8FFE6E6FFE3E3FFE0E0FFDCDCFFD9D9FFD2CF
          FFE8FFFF9F151B160CEFEDE32739D31952EF363DB66062C00434E6153BDAABA8
          D8FFFFF7FFECEDFFEBEBFFE8E8FFE5E5FFE1E1FFDDDDFFDADAFFD4D1FFEBFFFF
          9F141A150CF7F7E53C4ED7021BC3B1AAD7FFFCF76167D5031ED48E93DCFEFFFA
          FFF0F0FFEDEDFFEBEBFFE5E5FFE3E3FFDEDEFFDCDCFFD5D2FFEAFFFF9F141511
          0AFFFFE9D8D6F88B89D6F6F5FBFFFFFFF0EFF8A3A3DFD5D2EBFFFFFBFFF3F3FF
          F0F0FFEDEDFFE8E8FFE4E4FFE0E0FFDEDEFFD6D4FFECFFFFA01315100AFFFFEA
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEFFFAFAFFF4F4FFF2F2FFEF
          EFFFE9E9FFE5E5FFE1E1FFDFDFFFD8D5FFEEFFFFA01415100AFFFFEAFAFEFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEFEFFFBFBFFF5F5FFF3F3FFEFEFFFEBEB
          FFE7E7FFE3E3FFDEDEFFD8D5FFEEFFFFA01415100AFFFFEAFAFDFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFDFDFFF5F5FFF3F3FFF0F0FFECECFFE8E8FF
          E4E4FFDFDFFFD9D6FFEFFFFFA01415100AFFFFE9FAFDFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFDFDFFF4F4FFF3F2FFEFEFFFEAEAFFE6E6FFE2E2FFDD
          DDFFD7D5FFEEFFFFA01415100AFFFFF0FEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFDFFFFFAFDFFF5F9FFF1F5FFEDF1FFE7ECFFE3E4
          FFF8FFFFA11616120DFFFFD4D5D5D6DCD8D4DCD8D4DCD8D4DCD8D4DCD8D4DCD7
          D2DCD7D2DCD2CDDCD0CCDCCCC7DCC9C4DCC5C0DCC2BDDCBFBADCB8B1D9C8E0FA
          9E18141611FFE153F87600F77E00F77E00F77E00F77E00F77E00F77E00F77E00
          F78000F78000F78000F78100F78000F78100F78200F78200F78500FF93001413
          0DFFFEA7F1A159EFA35CF0A55DF0A55DF0A55DF0A55DF0A55DF0A55DF0A55DF0
          A55DF0A55DF0A55DF0A55DF0A55DF0A55EEFA661F29B3BFD9300131B21FFFCAE
          FE9809FEA31CFEA31DFEA31DFEA31DFEA31DFEA31DFEA31DFEA31DFEA31DFEA3
          1DFEA31DFEA31DFEA31DFEA31DFEA21AFE9B0BFED99E}
        Gradient = True
        TabOrder = 0
        TabStop = True
        OnClick = xpBitBtn1Click
      end
    end
    object Panel2: TPanel
      Left = 1
      Top = 1
      Width = 607
      Height = 325
      Align = alClient
      TabOrder = 1
      object Label1: TLabel
        Left = 528
        Top = 8
        Width = 64
        Height = 14
        Caption = #1583#1575#1606#1588#1711#1575#1607' '#1607#1575
        Font.Charset = ARABIC_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object YDBGrid1: TYDBGrid
        Left = 1
        Top = 40
        Width = 605
        Height = 284
        Align = alBottom
        Anchors = [akLeft, akTop, akRight, akBottom]
        DataSource = Dm.DSUniversity
        TabOrder = 0
        TitleFont.Charset = ARABIC_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'Tahoma'
        TitleFont.Style = []
        YeganehColor = False
        YeganehFinish = False
        PageNumber = False
        RecordNumber = False
        HasTime = False
        Oriention = poPortrait
        HasDate = False
        HasIndex = False
        PrintTitle = #1604#1610#1587#1578' '#1578#1607#1610#1607' '#1588#1583#1607' '#1578#1608#1587#1591' '#1606#1585#1605' '#1575#1601#1586#1575#1585' '#1610#1711#1575#1606#1607
        InvertFarsiDate = True
        TitleSort = True
        AutoInsert = False
        FooterFields = 'Count'
        Columns = <
          item
            Expanded = False
            FieldName = 'UTCode'
            Title.Caption = #1705#1583' '#1583#1575#1606#1588#1711#1575#1607
            Visible = False
          end
          item
            Expanded = False
            FieldName = 'UTName'
            Title.Caption = #1606#1575#1605' '#1583#1575#1606#1588#1711#1575#1607
            Width = 310
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'Description'
            Title.Caption = #1578#1608#1590#1610#1581#1575#1578
            Visible = False
          end>
      end
      object xpBitBtn2: TxpBitBtn
        Left = 16
        Top = 2
        Width = 75
        Height = 25
        startColor = 16645629
        EndColor = 14666957
        Caption = #1581#1584#1601
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clNavy
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        Gradient = True
        Visible = False
        TabOrder = 1
        TabStop = True
      end
      object xpBitBtn3: TxpBitBtn
        Left = 96
        Top = 2
        Width = 75
        Height = 25
        startColor = 16645629
        EndColor = 14666957
        Caption = #1608#1610#1585#1575#1610#1588
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clNavy
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        Gradient = True
        TabOrder = 2
        TabStop = True
        OnClick = xpBitBtn3Click
      end
      object xpBitBtn4: TxpBitBtn
        Left = 176
        Top = 2
        Width = 75
        Height = 25
        startColor = 16645629
        EndColor = 14666957
        Caption = #1583#1585#1580
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clNavy
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        Gradient = True
        TabOrder = 3
        TabStop = True
        OnClick = xpBitBtn4Click
      end
    end
  end
end
