inherited MainForm: TMainForm
  Tag = 1
  Left = 288
  Top = 158
  Width = 1276
  Height = 784
  Align = alClient
  Caption = #1588#1585#1603#1578' '#1606#1585#1605' '#1575#1601#1586#1575#1585#1610' '#1610#1711#1575#1606#1607' - '#1606#1585#1605' '#1575#1601#1586#1575#1585' CRM '
  Color = 16771818
  Menu = MainMenu1
  OldCreateOrder = True
  OnResize = FormResize
  PixelsPerInch = 96
  TextHeight = 13
  object pgcMain: TPageControl [0]
    Left = 0
    Top = 34
    Width = 1260
    Height = 661
    ActivePage = xpTabSheet2
    Align = alClient
    BiDiMode = bdRightToLeft
    Font.Charset = ARABIC_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    MultiLine = True
    ParentBiDiMode = False
    ParentFont = False
    ParentShowHint = False
    ShowHint = True
    TabHeight = 30
    TabOrder = 0
    TabWidth = 410
    OnChange = pgcMainChange
    object TabSheet1: TTabSheet
      Caption = #1603#1575#1585#1607#1575#1610' '#1605#1606' ( '#1662#1588#1578#1610#1576#1575#1606#1610' '#1605#1581#1589#1608#1604#1575#1578' )'
      TabVisible = False
      OnShow = TabSheet1Show
      object dbgMyTasks: TYDBGrid
        Left = 0
        Top = 72
        Width = 1252
        Height = 386
        Cursor = crHandPoint
        Align = alClient
        DataSource = dsMyTasks
        Font.Charset = ARABIC_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        ReadOnly = True
        TabOrder = 0
        TitleFont.Charset = ARABIC_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -13
        TitleFont.Name = 'Tahoma'
        TitleFont.Style = [fsBold]
        OnCellClick = dbgMyTasksCellClick
        OnDblClick = dbgMyTasksDblClick
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
        FooterFields = 'Count,amount,Comission'
        Columns = <
          item
            Expanded = False
            FieldName = 'CaseId'
            Title.Alignment = taCenter
            Title.Caption = #1603#1583' '#1605#1608#1585#1583
            Title.Font.Charset = ARABIC_CHARSET
            Title.Font.Color = clWindowText
            Title.Font.Height = -11
            Title.Font.Name = 'Tahoma'
            Title.Font.Style = []
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'CaseTitle'
            Title.Alignment = taCenter
            Title.Caption = #1593#1606#1608#1575#1606' '#1605#1608#1585#1583
            Title.Font.Charset = ARABIC_CHARSET
            Title.Font.Color = clWindowText
            Title.Font.Height = -11
            Title.Font.Name = 'Tahoma'
            Title.Font.Style = []
            Width = 164
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'AssignedDate'
            Title.Alignment = taCenter
            Title.Caption = #1578#1575#1585#1610#1582' '#1583#1585#1610#1575#1601#1578
            Title.Font.Charset = ARABIC_CHARSET
            Title.Font.Color = clWindowText
            Title.Font.Height = -11
            Title.Font.Name = 'Tahoma'
            Title.Font.Style = []
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'EstimatedDate'
            Title.Alignment = taCenter
            Title.Caption = #1578#1575#1585#1610#1582' '#1578#1593#1607#1583' '#1575#1606#1580#1575#1605
            Title.Font.Charset = ARABIC_CHARSET
            Title.Font.Color = clWindowText
            Title.Font.Height = -11
            Title.Font.Name = 'Tahoma'
            Title.Font.Style = []
            Width = 94
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'TaskStatusTitle'
            Title.Alignment = taCenter
            Title.Caption = #1608#1590#1593#1610#1578
            Title.Font.Charset = ARABIC_CHARSET
            Title.Font.Color = clWindowText
            Title.Font.Height = -11
            Title.Font.Name = 'Tahoma'
            Title.Font.Style = []
            Width = 84
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'CasePriorityTitle'
            Title.Alignment = taCenter
            Title.Caption = #1575#1608#1604#1608#1610#1578
            Title.Font.Charset = ARABIC_CHARSET
            Title.Font.Color = clWindowText
            Title.Font.Height = -11
            Title.Font.Name = 'Tahoma'
            Title.Font.Style = []
            Width = 113
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'CaseTypeTitle'
            Title.Alignment = taCenter
            Title.Caption = #1606#1608#1593
            Title.Font.Charset = ARABIC_CHARSET
            Title.Font.Color = clWindowText
            Title.Font.Height = -11
            Title.Font.Name = 'Tahoma'
            Title.Font.Style = []
            Width = 105
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'ProductTitle'
            Title.Caption = #1605#1581#1589#1608#1604
            Title.Font.Charset = ARABIC_CHARSET
            Title.Font.Color = clWindowText
            Title.Font.Height = -11
            Title.Font.Name = 'Tahoma'
            Title.Font.Style = []
            Width = 142
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'CasesComment'
            Title.Caption = #1588#1585#1581
            Title.Font.Charset = ARABIC_CHARSET
            Title.Font.Color = clWindowText
            Title.Font.Height = -11
            Title.Font.Name = 'Tahoma'
            Title.Font.Style = []
            Visible = True
          end>
      end
      object xpPanel1: TxpPanel
        Left = 0
        Top = 0
        Width = 1252
        Height = 31
        StartColor = 16511469
        EndColor = 16244694
        FillDirection = fdLeftToRight
        Caption = 'xpPanel'
        Minimized = True
        Title = #1580#1587#1578#1580#1608' '#1662#1610#1588#1585#1601#1578#1607
        TitleFont.Charset = ARABIC_CHARSET
        TitleFont.Color = clNavy
        TitleFont.Height = -11
        TitleFont.Name = 'Tahoma'
        TitleFont.Style = []
        TitleAlignment = taRightJustify
        TitleStartColor = clWhite
        TitleEndColor = 15777194
        TitleColor = clWhite
        TitleFillDirect = fdLeftToRight
        TitleImageAlign = tiaLeft
        TitleButtons = [tbMinimize]
        Animation = False
        DefaultHeight = 105
        BorderColor = clWhite
        BGImageAlign = iaStretch
        Align = alTop
        TabOrder = 1
        AfterMinimized = pnlSearchContractAfterMinimized
      end
      object Panel3: TPanel
        Left = 0
        Top = 31
        Width = 1252
        Height = 41
        Align = alTop
        BevelOuter = bvNone
        Color = 16244694
        Ctl3D = True
        ParentCtl3D = False
        TabOrder = 2
        DesignSize = (
          1252
          41)
        object BitBtn6: TBitBtn
          Left = 1142
          Top = 7
          Width = 110
          Height = 28
          Anchors = [akTop, akRight]
          Caption = #1604#1610#1587#1578' '#1605#1608#1575#1585#1583' '#1605#1606
          ModalResult = 2
          TabOrder = 0
          OnClick = BitBtn6Click
          Glyph.Data = {
            36030000424D3603000000000000360000002800000010000000100000000100
            1800000000000003000000000000000000000000000000000000FBCB87FB970F
            FCA31EF9A01AFDA41EDB8F1EE8981EE7931EFFA91CF79C19FFA520F39815FFA8
            21F19716FF9E14FFB953E5BE8CE7F5FFF0F4FFD8E1FDE3F0FF228FFF54BBFF5A
            95FFFFFFFFCCCDFAFDFFFFC3BCE9FFFFFFB5AAD1FFFEFFFFA833E9C189CAC2D1
            D2C3C0CDBFB6CAC0D0306CFF4A80FF6B7DE1EBD6B7C1ABA9DAC3C1BEA19EDDBF
            BCB99792D2BBD7F0A136EBC38BD6D7E7E5DBDAD5CCC8D8D6E83473FF5C96FF73
            8CF1F2E6D5CEBCBEE4DDDDC9AFB0ECDDDDBDA2A0E7D9EDF6A937EBC38CE2E7F6
            EEE6E5DDD9D4E6E5F85092FF74B1FF7791F5FFFAE1D0C1C4F5E9E9CAB4B4FAE7
            E7C1A4A2F4E5FFFBAC3EE8C38BBCC2D1C6C4C3C5C0B8BCBDCE0D4BFF2C60FF61
            78E0E3D1B5BAADB0CCBEBEB8A3A3CEB9B9B49A98C3B5D1EC9C30ECC690EAF3FF
            FBFBF9E2DFDCEFF4FF5998FF86C3FF7F9BFFFFFFF2DAD1D1FBF9F9D3BEBEFFFE
            FEC4AAAAFFFAFFFFB23EE9C38DC7D0DFD1D0CECCCAC2C7CBDB2562FF407AFF66
            7FEAEFE3C8BEB5B6D9CECEBCAAAADCC6C6B89E9DD0C1E0F0A035EAC58FE1EBFA
            EFEFEDDBD9D6E3E7F64483FF6FAAFF7894FAFDF6E6D2CBCCF1EFEFCCBBBBF9F0
            F0C1A9A8F5EBFFFBAD3CEAC58DCDD7E6D9D8D8D0CEC8CFD3E13775FF548FFF6D
            88EDF0E6D0C5BDBEDFD7D7C1AFAFE3D3D3BBA3A1DACFE9F4A535E9C38DD6E0EF
            DCDBDAD7D4CCD4D8EA2462FE4A81FF6D88F0FEF2D7C8BEBEEBDBDAC4B2B1EFD5
            D5BDA29FE4D1EFF7A538EAC693E5F7FFF3F9FFDDE1E8E8F4FF4B95FF76BCFF74
            9AFFFFFFFFD5D2DDF7FCFFCCBFC9FFFDFFBFACB4FEF9FFFEB141E9C388C9C4B8
            D1C7B3D1C4ACC8C3B94C76BD5A80BC7C89BAECD4ADC6B2A1D9C2B0C4AB98DBBB
            A7C2A18CD0B7B9F2A12EFEBE5DF28000F28400F48600F48600F28300F28300F4
            8600F48600F48600F28500F48600F28500F58700F08600FC9300FECA83F1A357
            F0A152F1A352F1A352F4A552F4A552F3A452F0A254F1A353F0A353F1A354F0A3
            53F1A457F09E44FD9200FFDCACFE9C0FFEA420FEA421FEA421FEA421FEA421FE
            A421FEA421FEA421FEA421FEA421FEA421FEA621FE9E10FFD08A}
        end
        object btnCasesAll: TBitBtn
          Left = 1022
          Top = 7
          Width = 110
          Height = 28
          Anchors = [akTop, akRight]
          Caption = #1604#1610#1587#1578' '#1607#1605#1607' '#1605#1608#1575#1585#1583' '
          ModalResult = 2
          TabOrder = 1
          OnClick = btnCasesAllClick
          Glyph.Data = {
            36030000424D3603000000000000360000002800000010000000100000000100
            1800000000000003000000000000000000000000000000000000FBCB87FB970F
            FCA31EF9A01AFDA41EDB8F1EE8981EE7931EFFA91CF79C19FFA520F39815FFA8
            21F19716FF9E14FFB953E5BE8CE7F5FFF0F4FFD8E1FDE3F0FF228FFF54BBFF5A
            95FFFFFFFFCCCDFAFDFFFFC3BCE9FFFFFFB5AAD1FFFEFFFFA833E9C189CAC2D1
            D2C3C0CDBFB6CAC0D0306CFF4A80FF6B7DE1EBD6B7C1ABA9DAC3C1BEA19EDDBF
            BCB99792D2BBD7F0A136EBC38BD6D7E7E5DBDAD5CCC8D8D6E83473FF5C96FF73
            8CF1F2E6D5CEBCBEE4DDDDC9AFB0ECDDDDBDA2A0E7D9EDF6A937EBC38CE2E7F6
            EEE6E5DDD9D4E6E5F85092FF74B1FF7791F5FFFAE1D0C1C4F5E9E9CAB4B4FAE7
            E7C1A4A2F4E5FFFBAC3EE8C38BBCC2D1C6C4C3C5C0B8BCBDCE0D4BFF2C60FF61
            78E0E3D1B5BAADB0CCBEBEB8A3A3CEB9B9B49A98C3B5D1EC9C30ECC690EAF3FF
            FBFBF9E2DFDCEFF4FF5998FF86C3FF7F9BFFFFFFF2DAD1D1FBF9F9D3BEBEFFFE
            FEC4AAAAFFFAFFFFB23EE9C38DC7D0DFD1D0CECCCAC2C7CBDB2562FF407AFF66
            7FEAEFE3C8BEB5B6D9CECEBCAAAADCC6C6B89E9DD0C1E0F0A035EAC58FE1EBFA
            EFEFEDDBD9D6E3E7F64483FF6FAAFF7894FAFDF6E6D2CBCCF1EFEFCCBBBBF9F0
            F0C1A9A8F5EBFFFBAD3CEAC58DCDD7E6D9D8D8D0CEC8CFD3E13775FF548FFF6D
            88EDF0E6D0C5BDBEDFD7D7C1AFAFE3D3D3BBA3A1DACFE9F4A535E9C38DD6E0EF
            DCDBDAD7D4CCD4D8EA2462FE4A81FF6D88F0FEF2D7C8BEBEEBDBDAC4B2B1EFD5
            D5BDA29FE4D1EFF7A538EAC693E5F7FFF3F9FFDDE1E8E8F4FF4B95FF76BCFF74
            9AFFFFFFFFD5D2DDF7FCFFCCBFC9FFFDFFBFACB4FEF9FFFEB141E9C388C9C4B8
            D1C7B3D1C4ACC8C3B94C76BD5A80BC7C89BAECD4ADC6B2A1D9C2B0C4AB98DBBB
            A7C2A18CD0B7B9F2A12EFEBE5DF28000F28400F48600F48600F28300F28300F4
            8600F48600F48600F28500F48600F28500F58700F08600FC9300FECA83F1A357
            F0A152F1A352F1A352F4A552F4A552F3A452F0A254F1A353F0A353F1A354F0A3
            53F1A457F09E44FD9200FFDCACFE9C0FFEA420FEA421FEA421FEA421FEA421FE
            A421FEA421FEA421FEA421FEA421FEA421FEA621FE9E10FFD08A}
        end
      end
      object Panel7: TPanel
        Left = 0
        Top = 603
        Width = 1252
        Height = 48
        Align = alBottom
        TabOrder = 3
        object btnImageBR: TBitBtn
          Left = 95
          Top = 8
          Width = 92
          Height = 33
          Caption = #1601#1575#1610#1604' '#1607#1575#1610' '#1662#1610#1608#1587#1578
          TabOrder = 0
          OnClick = btnImageBRClick
        end
        object grbReference: TGroupBox
          Left = 907
          Top = 1
          Width = 344
          Height = 46
          Align = alRight
          Caption = '   '#1575#1585#1580#1575#1593' '#1576#1607'  '
          TabOrder = 1
          object dblUserRefrence: TDBLookupComboBox
            Left = 56
            Top = 18
            Width = 266
            Height = 21
            BiDiMode = bdLeftToRight
            KeyField = 'Id'
            ListField = 'Title'
            ListSource = Dm.dsUserByCaseFilter
            ParentBiDiMode = False
            TabOrder = 0
          end
          object btnRefer: TBitBtn
            Left = 14
            Top = 16
            Width = 39
            Height = 27
            TabOrder = 1
            OnClick = btnReferClick
            Glyph.Data = {
              36090000424D3609000000000000360000002800000018000000180000000100
              2000000000000009000000000000000000000000000000000000FFFFFF00FFFF
              FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
              FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
              FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
              FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00BDBD
              BD00BDBDBD00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
              FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
              FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00BDBDBD00C6C6
              C600C6C6C600BDBDBD00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
              FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
              FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00BDBDBD00BDBDBD00CECECE008C8C
              8C004A4A4A00CECECE00BDBDBD00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
              FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
              FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00BDBDBD00CECECE00A5A5A5000000
              000039393900D6D6D600BDBDBD00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
              FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
              FF00FFFFFF00FFFFFF00FFFFFF00BDBDBD00CECECE009C9C9C00080808000000
              000042424200D6D6D600BDBDBD00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
              FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
              FF00FFFFFF00BDBDBD00BDBDBD00CECECE009C9C9C0000000000000000000000
              000042424200CECECE00B5B5B500BDBDBD00BDBDBD00BDBDBD00BDBDBD00BDBD
              BD00BDBDBD00FFFFFF00BDBDBD00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
              FF00FFFFFF00BDBDBD00CECECE009C9C9C000000000000000000000000000000
              00004A4A4A00E7E7E700CECECE00CECECE00CECECE00D6D6D600C6C6C600C6C6
              C600C6C6C600BDBDBD00C6C6C600BDBDBD00FFFFFF00FFFFFF00FFFFFF00FFFF
              FF00BDBDBD00CECECE009C9C9C00080808000000000000000000000000000000
              0000181818004A4A4A00424242006B6B6B0063636300424242009C9C9C009494
              94009C9C9C00C6C6C600A5A5A500B5B5B500C6C6C600FFFFFF00C6C6C600BDBD
              BD00CECECE009C9C9C0000000000000000000000000000000000000000000000
              00000000000000000000000000000808080008080800292929004A4A4A008484
              840094949400A5A5A500B5B5B500BDBDBD00BDBDBD00FFFFFF00B5B5B500CECE
              CE009C9C9C000000000000000000000000000000000000000000000000000000
              00000000000000000000000000002121210021212100292929005A5A5A008484
              840094949400ADADAD00ADADAD00B5B5B500BDBDBD00FFFFFF00CECECE009C9C
              9C00080808000000000000000000000000000000000000000000000000000000
              00000000000000000000000000001818180018181800292929005A5A5A008484
              840094949400ADADAD00ADADAD00B5B5B500BDBDBD00FFFFFF00ADADAD000808
              0800000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000181818001818180029292900525252008484
              840094949400ADADAD00ADADAD00BDBDBD00BDBDBD00FFFFFF00CECECE009C9C
              9C00080808000000000000000000000000000000000000000000000000000000
              00000000000000000000000000001818180018181800292929005A5A5A008484
              840094949400ADADAD00ADADAD00B5B5B500BDBDBD00FFFFFF00B5B5B500CECE
              CE009C9C9C000000000000000000000000000000000000000000000000000000
              00000000000000000000000000001818180018181800212121005A5A5A008484
              840094949400ADADAD00ADADAD00B5B5B500BDBDBD00FFFFFF00C6C6C600BDBD
              BD00CECECE009C9C9C0000000000000000000000000000000000000000000000
              0000000000000000000000000000181818001818180039393900525252008484
              84009C9C9C00ADADAD00ADADAD00BDBDBD00BDBDBD00FFFFFF00FFFFFF00FFFF
              FF00BDBDBD00CECECE009C9C9C00080808000000000000000000000000000000
              0000000000000000000000000000101010001010100000000000525252007B7B
              7B008C8C8C00ADADAD00A5A5A500B5B5B500C6C6C600FFFFFF00FFFFFF00FFFF
              FF00FFFFFF00BDBDBD00CECECE009C9C9C000000000000000000000000000000
              000029292900848484007373730073737300737373007B7B7B0084848400ADAD
              AD00BDBDBD00ADADAD00C6C6C600BDBDBD00FFFFFF00FFFFFF00FFFFFF00FFFF
              FF00FFFFFF00BDBDBD00BDBDBD00CECECE009C9C9C0000000000000000000000
              00004A4A4A00E7E7E700CECECE00CECECE00CECECE00CECECE00CECECE00C6C6
              C600BDBDBD00C6C6C600BDBDBD00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
              FF00FFFFFF00FFFFFF00FFFFFF00BDBDBD00CECECE009C9C9C00080808000000
              000042424200CECECE00B5B5B500BDBDBD00BDBDBD00BDBDBD00BDBDBD00BDBD
              BD00BDBDBD00BDBDBD00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
              FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00BDBDBD00CECECE00A5A5A5000000
              000039393900D6D6D600BDBDBD00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
              FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
              FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00BDBDBD00BDBDBD00CECECE008C8C
              8C004A4A4A00CECECE00BDBDBD00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
              FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
              FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00BDBDBD00C6C6
              C600C6C6C600BDBDBD00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
              FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
              FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00BDBD
              BD00BDBDBD00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
              FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00}
          end
        end
        object GroupBox4: TGroupBox
          Left = 490
          Top = 1
          Width = 417
          Height = 46
          Align = alRight
          Caption = #1608#1610#1585#1575#1610#1588
          TabOrder = 2
          object Label38: TLabel
            Left = 374
            Top = 22
            Width = 34
            Height = 13
            Caption = #1608#1590#1593#1610#1578
            Transparent = True
          end
          object Label36: TLabel
            Left = 161
            Top = 22
            Width = 71
            Height = 13
            Caption = #1578#1575#1585#1610#1582' '#1578#1593#1607#1583' '#1575#1606#1580#1575#1605
            Transparent = True
          end
          object BitBtn4: TBitBtn
            Left = 10
            Top = 15
            Width = 39
            Height = 24
            TabOrder = 0
            OnClick = BitBtn4Click
            Glyph.Data = {
              DE010000424DDE01000000000000760000002800000024000000120000000100
              0400000000006801000000000000000000001000000000000000000000000000
              80000080000000808000800000008000800080800000C0C0C000808080000000
              FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
              3333333333333333333333330000333333333333333333333333F33333333333
              00003333344333333333333333388F3333333333000033334224333333333333
              338338F3333333330000333422224333333333333833338F3333333300003342
              222224333333333383333338F3333333000034222A22224333333338F338F333
              8F33333300003222A3A2224333333338F3838F338F33333300003A2A333A2224
              33333338F83338F338F33333000033A33333A222433333338333338F338F3333
              0000333333333A222433333333333338F338F33300003333333333A222433333
              333333338F338F33000033333333333A222433333333333338F338F300003333
              33333333A222433333333333338F338F00003333333333333A22433333333333
              3338F38F000033333333333333A223333333333333338F830000333333333333
              333A333333333333333338330000333333333333333333333333333333333333
              0000}
            NumGlyphs = 2
          end
          object DBShamsiDateEdit1: TDBShamsiDateEdit
            Left = 52
            Top = 18
            Width = 101
            Height = 21
            CheckValidity = True
            ShowMsg = False
            DataField = 'EstimatedDate'
            DataSource = dsMyTasks
            TabOrder = 1
          end
          object dblCaseStatus: TDBLookupComboBox
            Left = 239
            Top = 18
            Width = 128
            Height = 21
            BiDiMode = bdLeftToRight
            DataField = 'StatusID'
            DataSource = dsMyTasks
            KeyField = 'TaskStatusID'
            ListField = 'TaskStatusTitle'
            ListSource = Dm.DsTaskStatus
            ParentBiDiMode = False
            TabOrder = 2
          end
        end
        object btnFinishCase: TBitBtn
          Left = 10
          Top = 9
          Width = 79
          Height = 32
          Caption = #1575#1578#1605#1575#1605' '#1603#1575#1585
          TabOrder = 3
          OnClick = btnFinishCaseClick
          Glyph.Data = {
            DE010000424DDE01000000000000760000002800000024000000120000000100
            0400000000006801000000000000000000001000000000000000000000000000
            80000080000000808000800000008000800080800000C0C0C000808080000000
            FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
            3333333333333333333333330000333333333333333333333333F33333333333
            00003333344333333333333333388F3333333333000033334224333333333333
            338338F3333333330000333422224333333333333833338F3333333300003342
            222224333333333383333338F3333333000034222A22224333333338F338F333
            8F33333300003222A3A2224333333338F3838F338F33333300003A2A333A2224
            33333338F83338F338F33333000033A33333A222433333338333338F338F3333
            0000333333333A222433333333333338F338F33300003333333333A222433333
            333333338F338F33000033333333333A222433333333333338F338F300003333
            33333333A222433333333333338F338F00003333333333333A22433333333333
            3338F38F000033333333333333A223333333333333338F830000333333333333
            333A333333333333333338330000333333333333333333333333333333333333
            0000}
          NumGlyphs = 2
        end
      end
      object pnlDescTask: TxpPanel
        Left = 0
        Top = 458
        Width = 1252
        Height = 145
        StartColor = 16511469
        EndColor = 16244694
        FillDirection = fdLeftToRight
        Caption = 'xpPanel'
        Title = #1578#1608#1590#1610#1581#1575#1578
        TitleFont.Charset = ARABIC_CHARSET
        TitleFont.Color = clNavy
        TitleFont.Height = -11
        TitleFont.Name = 'Tahoma'
        TitleFont.Style = []
        TitleAlignment = taRightJustify
        TitleStartColor = clWhite
        TitleEndColor = 15777194
        TitleColor = clWhite
        TitleFillDirect = fdLeftToRight
        TitleImageAlign = tiaLeft
        TitleButtons = [tbMinimize]
        DefaultHeight = 60
        BorderColor = clWhite
        BGImageAlign = iaStretch
        Align = alBottom
        TabOrder = 4
        object DBMemo1: TDBMemo
          Left = 1
          Top = 1
          Width = 1248
          Height = 111
          Align = alClient
          DataField = 'Comment'
          DataSource = dsMyTasks
          ReadOnly = True
          TabOrder = 0
        end
        object grbReferenceComment: TGroupBox
          Left = 518
          Top = 0
          Width = 481
          Height = 113
          Caption = #1588#1585#1581' '#1575#1585#1580#1575#1593
          TabOrder = 1
          Visible = False
          object mmoDescription: TMemo
            Left = 2
            Top = 15
            Width = 477
            Height = 65
            Align = alClient
            TabOrder = 0
          end
          object Panel8: TPanel
            Left = 2
            Top = 80
            Width = 477
            Height = 31
            Align = alBottom
            TabOrder = 1
            object btnSaveReference: TBitBtn
              Left = 71
              Top = 5
              Width = 61
              Height = 24
              Caption = #1579#1576#1578
              TabOrder = 0
              OnClick = btnSaveReferenceClick
              Glyph.Data = {
                DE010000424DDE01000000000000760000002800000024000000120000000100
                0400000000006801000000000000000000001000000000000000000000000000
                80000080000000808000800000008000800080800000C0C0C000808080000000
                FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
                3333333333333333333333330000333333333333333333333333F33333333333
                00003333344333333333333333388F3333333333000033334224333333333333
                338338F3333333330000333422224333333333333833338F3333333300003342
                222224333333333383333338F3333333000034222A22224333333338F338F333
                8F33333300003222A3A2224333333338F3838F338F33333300003A2A333A2224
                33333338F83338F338F33333000033A33333A222433333338333338F338F3333
                0000333333333A222433333333333338F338F33300003333333333A222433333
                333333338F338F33000033333333333A222433333333333338F338F300003333
                33333333A222433333333333338F338F00003333333333333A22433333333333
                3338F38F000033333333333333A223333333333333338F830000333333333333
                333A333333333333333338330000333333333333333333333333333333333333
                0000}
              NumGlyphs = 2
            end
            object btnRefrenceCancel: TBitBtn
              Left = 5
              Top = 5
              Width = 61
              Height = 24
              Cancel = True
              Caption = #1575#1606#1589#1585#1575#1601
              ModalResult = 2
              TabOrder = 1
              OnClick = btnRefrenceCancelClick
              Glyph.Data = {
                DE010000424DDE01000000000000760000002800000024000000120000000100
                0400000000006801000000000000000000001000000000000000000000000000
                80000080000000808000800000008000800080800000C0C0C000808080000000
                FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
                333333333333333333333333000033338833333333333333333F333333333333
                0000333911833333983333333388F333333F3333000033391118333911833333
                38F38F333F88F33300003339111183911118333338F338F3F8338F3300003333
                911118111118333338F3338F833338F3000033333911111111833333338F3338
                3333F8330000333333911111183333333338F333333F83330000333333311111
                8333333333338F3333383333000033333339111183333333333338F333833333
                00003333339111118333333333333833338F3333000033333911181118333333
                33338333338F333300003333911183911183333333383338F338F33300003333
                9118333911183333338F33838F338F33000033333913333391113333338FF833
                38F338F300003333333333333919333333388333338FFF830000333333333333
                3333333333333333333888330000333333333333333333333333333333333333
                0000}
              NumGlyphs = 2
            end
          end
        end
      end
      object grbCaseFinish: TGroupBox
        Left = 3
        Top = 432
        Width = 481
        Height = 113
        Caption = #1588#1585#1581' '#1575#1578#1605#1575#1605
        TabOrder = 5
        Visible = False
        object mmoCompleteComment: TMemo
          Left = 2
          Top = 15
          Width = 477
          Height = 65
          Align = alClient
          TabOrder = 0
        end
        object Panel4: TPanel
          Left = 2
          Top = 80
          Width = 477
          Height = 31
          Align = alBottom
          TabOrder = 1
          object btnSaveCaseFinish: TBitBtn
            Left = 71
            Top = 5
            Width = 61
            Height = 24
            Caption = #1578#1575#1610#1610#1583
            TabOrder = 0
            OnClick = btnSaveCaseFinishClick
            Glyph.Data = {
              DE010000424DDE01000000000000760000002800000024000000120000000100
              0400000000006801000000000000000000001000000000000000000000000000
              80000080000000808000800000008000800080800000C0C0C000808080000000
              FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
              3333333333333333333333330000333333333333333333333333F33333333333
              00003333344333333333333333388F3333333333000033334224333333333333
              338338F3333333330000333422224333333333333833338F3333333300003342
              222224333333333383333338F3333333000034222A22224333333338F338F333
              8F33333300003222A3A2224333333338F3838F338F33333300003A2A333A2224
              33333338F83338F338F33333000033A33333A222433333338333338F338F3333
              0000333333333A222433333333333338F338F33300003333333333A222433333
              333333338F338F33000033333333333A222433333333333338F338F300003333
              33333333A222433333333333338F338F00003333333333333A22433333333333
              3338F38F000033333333333333A223333333333333338F830000333333333333
              333A333333333333333338330000333333333333333333333333333333333333
              0000}
            NumGlyphs = 2
          end
          object btnCaseFinishCancel: TBitBtn
            Left = 5
            Top = 5
            Width = 61
            Height = 24
            Cancel = True
            Caption = #1575#1606#1589#1585#1575#1601
            ModalResult = 2
            TabOrder = 1
            OnClick = btnCaseFinishCancelClick
            Glyph.Data = {
              DE010000424DDE01000000000000760000002800000024000000120000000100
              0400000000006801000000000000000000001000000000000000000000000000
              80000080000000808000800000008000800080800000C0C0C000808080000000
              FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
              333333333333333333333333000033338833333333333333333F333333333333
              0000333911833333983333333388F333333F3333000033391118333911833333
              38F38F333F88F33300003339111183911118333338F338F3F8338F3300003333
              911118111118333338F3338F833338F3000033333911111111833333338F3338
              3333F8330000333333911111183333333338F333333F83330000333333311111
              8333333333338F3333383333000033333339111183333333333338F333833333
              00003333339111118333333333333833338F3333000033333911181118333333
              33338333338F333300003333911183911183333333383338F338F33300003333
              9118333911183333338F33838F338F33000033333913333391113333338FF833
              38F338F300003333333333333919333333388333338FFF830000333333333333
              3333333333333333333888330000333333333333333333333333333333333333
              0000}
            NumGlyphs = 2
          end
        end
      end
    end
    object ContractTabSheet: TxpTabSheet
      Caption = #1602#1585#1575#1585#1583#1575#1583' '#1607#1575
      TabVisible = False
      OnEnter = ContractTabSheetEnter
      Color = clWhite
      BGStyle = bgsNone
      GradientStartColor = clWhite
      GradientEndColor = clSilver
      GradientFillDir = fdTopToBottom
      object Panel6: TPanel
        Left = 0
        Top = 73
        Width = 1252
        Height = 38
        Align = alTop
        BevelOuter = bvNone
        TabOrder = 0
        DesignSize = (
          1252
          38)
        object xpBitBtn7: TBitBtn
          Left = 947
          Top = 8
          Width = 100
          Height = 25
          Anchors = [akTop, akRight]
          Caption = #1605#1575#1607' '#1602#1576#1604
          Font.Charset = ARABIC_CHARSET
          Font.Color = clNavy
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          TabOrder = 0
          OnClick = xpBitBtn7Click
        end
        object xpBitBtn5: TBitBtn
          Left = 843
          Top = 8
          Width = 100
          Height = 25
          Anchors = [akTop, akRight]
          Caption = #1605#1575#1607' '#1580#1575#1585#1610
          Font.Charset = ARABIC_CHARSET
          Font.Color = clNavy
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          TabOrder = 1
          OnClick = xpBitBtn5Click
        end
        object xpBitBtn3: TBitBtn
          Left = 1051
          Top = 8
          Width = 100
          Height = 25
          Anchors = [akTop, akRight]
          Caption = #1587#1575#1604' '#1575#1582#1610#1585
          Font.Charset = ARABIC_CHARSET
          Font.Color = clNavy
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          TabOrder = 2
          OnClick = xpBitBtn3Click
        end
        object BitBtn7: TBitBtn
          Left = 1155
          Top = 8
          Width = 100
          Height = 25
          Anchors = [akTop, akRight]
          Caption = #1578#1605#1575#1605#1610' '#1602#1585#1575#1585' '#1583#1575#1583#1607#1575
          Font.Charset = ARABIC_CHARSET
          Font.Color = clNavy
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          TabOrder = 3
          OnClick = BitBtn7Click
        end
        object BitBtn2: TBitBtn
          Left = 737
          Top = 8
          Width = 100
          Height = 25
          Anchors = [akTop, akRight]
          Caption = #1605#1575#1607' '#1576#1593#1583
          Font.Charset = ARABIC_CHARSET
          Font.Color = clNavy
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          TabOrder = 4
          OnClick = BitBtn2Click
        end
        object pnlAllContract: TPanel
          Left = 288
          Top = 5
          Width = 446
          Height = 28
          Anchors = [akTop, akRight]
          BevelInner = bvRaised
          BevelOuter = bvLowered
          TabOrder = 5
          DesignSize = (
            446
            28)
          object Label37: TLabel
            Left = 85
            Top = 8
            Width = 47
            Height = 13
            Caption = #1578#1575#1585#1610#1582' '#1575#1578#1605#1575#1605
            Font.Charset = ARABIC_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
            Transparent = True
          end
          object Label39: TLabel
            Left = 221
            Top = 8
            Width = 52
            Height = 13
            Caption = #1578#1575#1585#1610#1582' '#1588#1585#1608#1593
            Font.Charset = ARABIC_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
            Transparent = True
          end
          object ContractDateEditTo: TShamsiDateEdit
            Left = 3
            Top = 4
            Width = 79
            Height = 21
            Font.Charset = ARABIC_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
            TabOrder = 0
            Text = '1403/12/29'#0
          end
          object ContractDateEditFrom: TShamsiDateEdit
            Left = 139
            Top = 4
            Width = 79
            Height = 21
            Font.Charset = ARABIC_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
            TabOrder = 1
            Text = '1300/01/01'#0
          end
          object BtnAllContract: TBitBtn
            Left = 278
            Top = 3
            Width = 166
            Height = 25
            Anchors = [akTop, akRight]
            Caption = #1578#1605#1575#1605#1610' '#1602#1585#1575#1585#1583#1575#1583' '#1607#1575#1610' '#1578#1605#1575#1605#1610' '#1603#1575#1585#1576#1585#1575#1606
            Font.Charset = ARABIC_CHARSET
            Font.Color = clNavy
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
            TabOrder = 2
            OnClick = BtnAllContractClick
          end
        end
      end
      object pnlSearchContract: TxpPanel
        Left = 0
        Top = 0
        Width = 1252
        Height = 73
        StartColor = 16511469
        EndColor = 16244694
        FillDirection = fdLeftToRight
        Caption = 'xpPanel'
        Title = #1580#1587#1578#1580#1608' '#1662#1610#1588#1585#1601#1578#1607
        TitleFont.Charset = ARABIC_CHARSET
        TitleFont.Color = clNavy
        TitleFont.Height = -11
        TitleFont.Name = 'Tahoma'
        TitleFont.Style = []
        TitleAlignment = taRightJustify
        TitleStartColor = clWhite
        TitleEndColor = 15777194
        TitleColor = clWhite
        TitleFillDirect = fdLeftToRight
        TitleImageAlign = tiaLeft
        TitleButtons = [tbMinimize]
        Animation = False
        DefaultHeight = 105
        BorderColor = clWhite
        BGImageAlign = iaStretch
        Align = alTop
        TabOrder = 1
        AfterMinimized = pnlSearchContractAfterMinimized
        DesignSize = (
          1250
          41)
        object Label16: TLabel
          Left = 1183
          Top = 16
          Width = 64
          Height = 13
          Anchors = [akTop, akRight]
          Caption = #1578#1575#1585#1610#1582' '#1602#1585#1575#1585#1583#1575#1583' '#1575#1586
          Transparent = True
        end
        object Label17: TLabel
          Left = 1057
          Top = 16
          Width = 6
          Height = 13
          Anchors = [akTop, akRight]
          Caption = #1578#1575
          Transparent = True
        end
        object Label20: TLabel
          Left = 648
          Top = 16
          Width = 34
          Height = 13
          Anchors = [akTop, akRight]
          Caption = #1605#1581#1589#1608#1604
          Transparent = True
        end
        object Label22: TLabel
          Left = 866
          Top = 16
          Width = 48
          Height = 13
          Anchors = [akTop, akRight]
          Caption = #1606#1608#1593' '#1602#1585#1575#1585#1583#1575#1583
          Transparent = True
        end
        object Label13: TLabel
          Left = 364
          Top = 16
          Width = 51
          Height = 13
          Anchors = [akTop, akRight]
          Caption = #1705#1583' '#1605#1588#1578#1585#1610
          Transparent = True
        end
        object SpeedButton9: TSpeedButton
          Left = 1083
          Top = 12
          Width = 23
          Height = 22
          Anchors = [akTop, akRight]
          Glyph.Data = {
            36030000424D3603000000000000360000002800000010000000100000000100
            18000000000000030000C30E0000C30E00000000000000000000ABA4A3827A79
            827A79827A79827A79827A79827A79827A79827A79827A79827A79827A79827A
            79827A79827A79827A79ABA4A3DCD4D1F7EEEBF7EEEBF7EEEBE0DEDEF7EEEBF7
            EEEBF7EEEBF7EEEBE0DEDEF7EEEBF7EEEBF7EEEBD2CAC8827A79ABA4A3DDD5D3
            F8EFECF8EFECF8EFECDADADAF8EFECF8EFECF8EFECF8EFECDADADAF8EFECF8EF
            ECF8EFECD2CAC8827A79ABA4A3DED7D4E1DFDEDADADADADADADADADADADADADA
            DADADADADADADADADADADADADADADADADAE1DFDED4CECB827A79ABA4A3DED8D5
            F9F2EFF9F2EFF9F2EFDADADA23C8FF23C8FF23C8FF23C8FFDADADAF9F2EFF9F2
            EFF9F2EFD5CFCD827A79ABA4A3DFD9D7FAF3F1FAF3F1FAF3F1DADADA23C8FF23
            C8FF23C8FF23C8FFDADADAFAF3F1FAF3F1FAF3F1D6D0CE827A79ABA4A3DFDAD8
            E1E0E0DADADADADADADADADADADADADADADADADADADADADADADADADADADADADA
            DAE1E0E0D6D1CF827A79ABA4A3E0DBDAFBF6F4FBF6F4FBF6F4DADADAFBF6F4FB
            F6F4FBF6F4FBF6F4DADADAFBF6F4FBF6F4FBF6F4D7D2D1827A79ABA4A3E0DDDB
            FCF7F5FCF7F5FCF7F5E2E0E0FCF7F5FCF7F5FCF7F5FCF7F5E2E0E0FCF7F5FCF7
            F5FCF7F5D8D4D2827A794242B48280C98E8CD48D8BD28C8BCF8C8ACC8B89CA8B
            89C88A88C68988C48987C38987C38987C38987C37877B32424AD2828B52828B5
            2525B12525B04242B4A1A1CC9393C48181BF8888C64D4DAF6060BB2424AD2424
            AD2424AD2424A42424A42828B53C3CCC4444D54444D56060D2B0B0D9CDCDE37E
            7ED39797D08383D39494D54444D44444D54444D53737BC2424A42828B54747DB
            5353E84F4FDC5959E86A6AE56A6AD45757E76969E66060D26666E65454E94E4E
            D95454EB4141CA2424A42828B53232CD4141AF71718F3434D63838B17B7A9133
            33D13333B68281933131CA3131BD8585933030C12E2EBD2424A4DEDEEE8080D6
            8585C89B9BAD8080D38080C7A2A2AE8080CF7D7DC4A8A8AC7F7FC87E7EC2A9A9
            A97D7DBE7878C0E4E4EEFFFFFFFFFFFFE1E1E3B6B6B6FFFFFFE9E9EAB3B2B3FF
            FFFFF1F1F2AEAEAEFFFFFFFAFAFAAAA9AAFCFCFDFFFFFFFFFFFF}
          OnClick = SpeedButton9Click
        end
        object SpeedButton10: TSpeedButton
          Left = 955
          Top = 12
          Width = 23
          Height = 22
          Anchors = [akTop, akRight]
          Glyph.Data = {
            36030000424D3603000000000000360000002800000010000000100000000100
            18000000000000030000C30E0000C30E00000000000000000000ABA4A3827A79
            827A79827A79827A79827A79827A79827A79827A79827A79827A79827A79827A
            79827A79827A79827A79ABA4A3DCD4D1F7EEEBF7EEEBF7EEEBE0DEDEF7EEEBF7
            EEEBF7EEEBF7EEEBE0DEDEF7EEEBF7EEEBF7EEEBD2CAC8827A79ABA4A3DDD5D3
            F8EFECF8EFECF8EFECDADADAF8EFECF8EFECF8EFECF8EFECDADADAF8EFECF8EF
            ECF8EFECD2CAC8827A79ABA4A3DED7D4E1DFDEDADADADADADADADADADADADADA
            DADADADADADADADADADADADADADADADADAE1DFDED4CECB827A79ABA4A3DED8D5
            F9F2EFF9F2EFF9F2EFDADADA23C8FF23C8FF23C8FF23C8FFDADADAF9F2EFF9F2
            EFF9F2EFD5CFCD827A79ABA4A3DFD9D7FAF3F1FAF3F1FAF3F1DADADA23C8FF23
            C8FF23C8FF23C8FFDADADAFAF3F1FAF3F1FAF3F1D6D0CE827A79ABA4A3DFDAD8
            E1E0E0DADADADADADADADADADADADADADADADADADADADADADADADADADADADADA
            DAE1E0E0D6D1CF827A79ABA4A3E0DBDAFBF6F4FBF6F4FBF6F4DADADAFBF6F4FB
            F6F4FBF6F4FBF6F4DADADAFBF6F4FBF6F4FBF6F4D7D2D1827A79ABA4A3E0DDDB
            FCF7F5FCF7F5FCF7F5E2E0E0FCF7F5FCF7F5FCF7F5FCF7F5E2E0E0FCF7F5FCF7
            F5FCF7F5D8D4D2827A794242B48280C98E8CD48D8BD28C8BCF8C8ACC8B89CA8B
            89C88A88C68988C48987C38987C38987C38987C37877B32424AD2828B52828B5
            2525B12525B04242B4A1A1CC9393C48181BF8888C64D4DAF6060BB2424AD2424
            AD2424AD2424A42424A42828B53C3CCC4444D54444D56060D2B0B0D9CDCDE37E
            7ED39797D08383D39494D54444D44444D54444D53737BC2424A42828B54747DB
            5353E84F4FDC5959E86A6AE56A6AD45757E76969E66060D26666E65454E94E4E
            D95454EB4141CA2424A42828B53232CD4141AF71718F3434D63838B17B7A9133
            33D13333B68281933131CA3131BD8585933030C12E2EBD2424A4DEDEEE8080D6
            8585C89B9BAD8080D38080C7A2A2AE8080CF7D7DC4A8A8AC7F7FC87E7EC2A9A9
            A97D7DBE7878C0E4E4EEFFFFFFFFFFFFE1E1E3B6B6B6FFFFFFE9E9EAB3B2B3FF
            FFFFF1F1F2AEAEAEFFFFFFFAFAFAAAA9AAFCFCFDFFFFFFFFFFFF}
          OnClick = SpeedButton10Click
        end
        object btnSrchContactAdnavce: TBitBtn
          Left = 195
          Top = 12
          Width = 70
          Height = 25
          Anchors = [akTop, akRight]
          Caption = #1580#1587#1578#1580#1608
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clNavy
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          TabOrder = 0
          OnClick = btnSrchContactAdnavceClick
        end
        object CbDate: TEdit
          Left = 1107
          Top = 12
          Width = 73
          Height = 21
          Anchors = [akTop, akRight]
          TabOrder = 1
        end
        object CEDate: TEdit
          Left = 979
          Top = 12
          Width = 73
          Height = 21
          Anchors = [akTop, akRight]
          TabOrder = 2
        end
        object dblsrchProductID: TDBLookupComboBox
          Left = 443
          Top = 12
          Width = 185
          Height = 21
          Anchors = [akTop, akRight]
          BiDiMode = bdLeftToRight
          KeyField = 'ProductID'
          ListField = 'ProductTitle'
          ListSource = Dm.DProduct
          ParentBiDiMode = False
          TabOrder = 3
          OnKeyDown = DBLookUpKeyDown
        end
        object dblSrchContractType: TDBLookupComboBox
          Left = 691
          Top = 12
          Width = 164
          Height = 21
          Anchors = [akTop, akRight]
          BiDiMode = bdLeftToRight
          ParentBiDiMode = False
          TabOrder = 4
          OnKeyDown = DBLookUpKeyDown
        end
        object edtCustomer: TEdit
          Left = 283
          Top = 12
          Width = 73
          Height = 21
          Anchors = [akTop, akRight]
          TabOrder = 5
        end
      end
      object ContractGrid: TYDBGrid
        Left = 0
        Top = 111
        Width = 1252
        Height = 540
        Cursor = crHandPoint
        Align = alClient
        Font.Charset = ARABIC_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        ReadOnly = True
        TabOrder = 2
        TitleFont.Charset = ARABIC_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -13
        TitleFont.Name = 'Tahoma'
        TitleFont.Style = [fsBold]
        OnDblClick = ContractGridDblClick
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
        FooterFields = 'Count,amount,Comission'
        Columns = <
          item
            Expanded = False
            FieldName = 'PersonTitle'
            Title.Alignment = taCenter
            Title.Caption = #1605#1583#1610#1585#1610#1578
            Title.Font.Charset = ARABIC_CHARSET
            Title.Font.Color = clWindowText
            Title.Font.Height = -11
            Title.Font.Name = 'Tahoma'
            Title.Font.Style = []
            Width = 106
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'CompanyName'
            Title.Alignment = taCenter
            Title.Caption = #1606#1575#1605' '#1588#1585#1705#1578
            Title.Font.Charset = ARABIC_CHARSET
            Title.Font.Color = clWindowText
            Title.Font.Height = -11
            Title.Font.Name = 'Tahoma'
            Title.Font.Style = []
            Width = 178
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'SignUpDate'
            Title.Alignment = taCenter
            Title.Caption = #1578#1575#1585#1610#1582' '#1579#1576#1578
            Title.Font.Charset = ARABIC_CHARSET
            Title.Font.Color = clWindowText
            Title.Font.Height = -12
            Title.Font.Name = 'Tahoma'
            Title.Font.Style = []
            Width = 82
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'BeginDate'
            Title.Alignment = taCenter
            Title.Caption = #1578#1575#1585#1610#1582' '#1588#1585#1608#1593
            Title.Font.Charset = ARABIC_CHARSET
            Title.Font.Color = clWindowText
            Title.Font.Height = -11
            Title.Font.Name = 'Tahoma'
            Title.Font.Style = []
            Width = 76
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'EndDate'
            Title.Alignment = taCenter
            Title.Caption = #1578#1575#1585#1610#1582' '#1662#1575#1610#1575#1606
            Title.Font.Charset = ARABIC_CHARSET
            Title.Font.Color = clWindowText
            Title.Font.Height = -11
            Title.Font.Name = 'Tahoma'
            Title.Font.Style = []
            Width = 66
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'Amount'
            Title.Alignment = taCenter
            Title.Caption = #1605#1576#1604#1594
            Title.Font.Charset = ARABIC_CHARSET
            Title.Font.Color = clWindowText
            Title.Font.Height = -11
            Title.Font.Name = 'Tahoma'
            Title.Font.Style = []
            Width = 110
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'TotalAmount'
            Title.Alignment = taCenter
            Title.Caption = #1605#1576#1604#1594' '#1603#1604
            Title.Font.Charset = ARABIC_CHARSET
            Title.Font.Color = clWindowText
            Title.Font.Height = -11
            Title.Font.Name = 'Tahoma'
            Title.Font.Style = []
            Width = 85
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'MarketerTitle'
            Title.Alignment = taCenter
            Title.Caption = #1576#1575#1586#1575#1585#1610#1575#1576
            Title.Font.Charset = ARABIC_CHARSET
            Title.Font.Color = clWindowText
            Title.Font.Height = -11
            Title.Font.Name = 'Tahoma'
            Title.Font.Style = []
            Visible = False
          end
          item
            Expanded = False
            FieldName = 'CustomerID'
            Title.Alignment = taCenter
            Title.Caption = #1705#1583' '#1605#1588#1578#1585#1610
            Title.Font.Charset = ARABIC_CHARSET
            Title.Font.Color = clWindowText
            Title.Font.Height = -11
            Title.Font.Name = 'Tahoma'
            Title.Font.Style = []
            Width = 70
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'CustomerNo'
            Title.Alignment = taCenter
            Title.Caption = #1705#1583' '#1587#1610#1587#1578#1605
            Title.Font.Charset = ARABIC_CHARSET
            Title.Font.Color = clWindowText
            Title.Font.Height = -11
            Title.Font.Name = 'Tahoma'
            Title.Font.Style = []
            Visible = False
          end
          item
            Expanded = False
            FieldName = 'Product'
            Title.Alignment = taCenter
            Title.Caption = #1605#1581#1589#1608#1604
            Title.Font.Charset = ARABIC_CHARSET
            Title.Font.Color = clWindowText
            Title.Font.Height = -11
            Title.Font.Name = 'Tahoma'
            Title.Font.Style = []
            Width = 97
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'Comission'
            Title.Alignment = taCenter
            Title.Caption = #1662#1608#1585#1587#1575#1606#1578
            Title.Font.Charset = ARABIC_CHARSET
            Title.Font.Color = clWindowText
            Title.Font.Height = -11
            Title.Font.Name = 'Tahoma'
            Title.Font.Style = []
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'ContractTypeTitle'
            Title.Alignment = taCenter
            Title.Caption = #1606#1608#1593' '#1602#1585#1575#1585#1583#1575#1583
            Title.Font.Charset = ARABIC_CHARSET
            Title.Font.Color = clWindowText
            Title.Font.Height = -11
            Title.Font.Name = 'Tahoma'
            Title.Font.Style = []
            Width = 107
            Visible = True
          end>
      end
    end
    object xpTabSheet1: TxpTabSheet
      Caption = #1575#1602#1583#1575#1605#1575#1578' '#1585#1608#1586#1575#1606#1607
      TabVisible = False
      OnShow = xpTabSheet1Show
      Color = clWhite
      BGStyle = bgsNone
      GradientStartColor = clWhite
      GradientEndColor = clSilver
      GradientFillDir = fdTopToBottom
      object GridPanel: TPanel
        Left = 0
        Top = 94
        Width = 1252
        Height = 557
        Align = alClient
        TabOrder = 0
        object FollowGrid: TYDBGrid
          Left = 1
          Top = 76
          Width = 1250
          Height = 480
          Cursor = crHandPoint
          Align = alClient
          DataSource = Dm.DSelect_FollowUP_By_Date
          Font.Charset = ARABIC_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          ReadOnly = True
          TabOrder = 0
          TitleFont.Charset = ARABIC_CHARSET
          TitleFont.Color = clWindowText
          TitleFont.Height = -13
          TitleFont.Name = 'Tahoma'
          TitleFont.Style = [fsBold]
          OnDrawColumnCell = FollowGridDrawColumnCell
          OnDblClick = FollowGridDblClick
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
          OnNeedFontCondition = FollowGridNeedFontCondition
          Columns = <
            item
              Expanded = False
              FieldName = 'CustomerID'
              Title.Alignment = taCenter
              Title.Caption = #1705#1583
              Title.Font.Charset = ARABIC_CHARSET
              Title.Font.Color = clWindowText
              Title.Font.Height = -11
              Title.Font.Name = 'Tahoma'
              Title.Font.Style = []
              Width = 24
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'CompanyName'
              Title.Alignment = taCenter
              Title.Caption = #1606#1575#1605' '#1587#1575#1586#1605#1575#1606
              Title.Font.Charset = ARABIC_CHARSET
              Title.Font.Color = clWindowText
              Title.Font.Height = -11
              Title.Font.Name = 'Tahoma'
              Title.Font.Style = []
              Width = 150
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'Treater'
              Title.Alignment = taCenter
              Title.Caption = #1591#1585#1601' '#1605#1705#1575#1578#1576#1607
              Title.Font.Charset = ARABIC_CHARSET
              Title.Font.Color = clWindowText
              Title.Font.Height = -11
              Title.Font.Name = 'Tahoma'
              Title.Font.Style = []
              Width = 103
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'PersonTitle'
              Title.Alignment = taCenter
              Title.Caption = #1605#1583#1610#1585#1610#1578
              Title.Font.Charset = ARABIC_CHARSET
              Title.Font.Color = clWindowText
              Title.Font.Height = -11
              Title.Font.Name = 'Tahoma'
              Title.Font.Style = []
              Width = 103
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'ActionTypeTitle'
              Title.Alignment = taCenter
              Title.Caption = #1575#1602#1583#1575#1605
              Title.Font.Charset = ARABIC_CHARSET
              Title.Font.Color = clWindowText
              Title.Font.Height = -11
              Title.Font.Name = 'Tahoma'
              Title.Font.Style = []
              Width = 69
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'ToDoDate'
              Title.Alignment = taCenter
              Title.Caption = #1578' '#1575#1606#1580#1575#1605
              Title.Font.Charset = ARABIC_CHARSET
              Title.Font.Color = clWindowText
              Title.Font.Height = -11
              Title.Font.Name = 'Tahoma'
              Title.Font.Style = []
              Width = 60
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'ToDoTime'
              Title.Alignment = taCenter
              Title.Caption = #1587#1575#1593#1578' '
              Title.Font.Charset = ARABIC_CHARSET
              Title.Font.Color = clWindowText
              Title.Font.Height = -11
              Title.Font.Name = 'Tahoma'
              Title.Font.Style = []
              Width = 43
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'SuccessChance'
              Title.Alignment = taCenter
              Title.Caption = #1588#1575#1606#1587' '
              Title.Font.Charset = ARABIC_CHARSET
              Title.Font.Color = clWindowText
              Title.Font.Height = -11
              Title.Font.Name = 'Tahoma'
              Title.Font.Style = []
              Width = 50
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'DoneStatustitle'
              Title.Alignment = taCenter
              Title.Caption = #1608#1590#1593#1610#1578
              Title.Font.Charset = ARABIC_CHARSET
              Title.Font.Color = clWindowText
              Title.Font.Height = -11
              Title.Font.Name = 'Tahoma'
              Title.Font.Style = []
              Visible = False
            end
            item
              Expanded = False
              FieldName = 'MarketerTitle'
              Title.Alignment = taCenter
              Title.Caption = #1576#1575#1586#1575#1585#1610#1575#1576
              Title.Font.Charset = ARABIC_CHARSET
              Title.Font.Color = clWindowText
              Title.Font.Height = -11
              Title.Font.Name = 'Tahoma'
              Title.Font.Style = []
              Visible = False
            end
            item
              Expanded = False
              FieldName = 'Phone'
              Title.Alignment = taCenter
              Title.Caption = #1578#1604#1601#1606' 1'
              Title.Font.Charset = ARABIC_CHARSET
              Title.Font.Color = clWindowText
              Title.Font.Height = -11
              Title.Font.Name = 'Tahoma'
              Title.Font.Style = []
              Visible = False
            end
            item
              Alignment = taCenter
              Expanded = False
              FieldName = 'ProductTitle'
              Title.Alignment = taCenter
              Title.Caption = #1605#1581#1589#1608#1604
              Title.Font.Charset = ARABIC_CHARSET
              Title.Font.Color = clWindowText
              Title.Font.Height = -11
              Title.Font.Name = 'Tahoma'
              Title.Font.Style = []
              Width = 200
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'WorkPhone1'
              Title.Alignment = taCenter
              Title.Caption = #1578#1604#1601#1606' 2'
              Title.Font.Charset = ARABIC_CHARSET
              Title.Font.Color = clWindowText
              Title.Font.Height = -11
              Title.Font.Name = 'Tahoma'
              Title.Font.Style = []
              Visible = False
            end
            item
              Expanded = False
              FieldName = 'Comment'
              Title.Alignment = taCenter
              Title.Caption = #1578#1608#1590#1610#1581
              Title.Font.Charset = ARABIC_CHARSET
              Title.Font.Color = clWindowText
              Title.Font.Height = -11
              Title.Font.Name = 'Tahoma'
              Title.Font.Style = []
              Width = 206
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'DoneComment'
              Title.Alignment = taCenter
              Title.Caption = #1606#1578#1610#1580#1607' '#1575#1602#1583#1575#1605
              Title.Font.Charset = ARABIC_CHARSET
              Title.Font.Color = clWindowText
              Title.Font.Height = -11
              Title.Font.Name = 'Tahoma'
              Title.Font.Style = []
              Width = 193
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'groupTitle'
              Title.Alignment = taCenter
              Title.Caption = #1606#1608#1593' '#1601#1593#1575#1604#1610#1578
              Title.Font.Charset = ARABIC_CHARSET
              Title.Font.Color = clWindowText
              Title.Font.Height = -11
              Title.Font.Name = 'Tahoma'
              Title.Font.Style = []
              Width = 150
              Visible = True
            end>
        end
        object Panel13: TPanel
          Left = 1
          Top = 42
          Width = 1250
          Height = 34
          Align = alTop
          BevelOuter = bvNone
          Color = 16244694
          TabOrder = 1
          DesignSize = (
            1250
            34)
          object Label18: TLabel
            Left = 1232
            Top = 11
            Width = 21
            Height = 13
            Anchors = [akTop, akRight]
            Caption = #1578#1604#1601#1606
            FocusControl = DBEdit6
          end
          object Label19: TLabel
            Left = 715
            Top = 11
            Width = 52
            Height = 13
            Anchors = [akTop, akRight]
            Caption = #1578#1604#1601#1606' '#1607#1605#1585#1575#1607
            FocusControl = DBEdit7
          end
          object Label21: TLabel
            Left = 1099
            Top = 11
            Width = 30
            Height = 13
            Anchors = [akTop, akRight]
            Caption = #1578#1604#1601#1606' 2'
            FocusControl = DBEdit9
          end
          object Label14: TLabel
            Left = 577
            Top = 11
            Width = 25
            Height = 13
            Anchors = [akTop, akRight]
            Caption = #1575#1610#1605#1610#1604
            FocusControl = DBEdit1
          end
          object Label23: TLabel
            Left = 873
            Top = 11
            Width = 25
            Height = 13
            Anchors = [akTop, akRight]
            Caption = #1601#1705#1587
            FocusControl = DBEdit9
          end
          object Label15: TLabel
            Left = 963
            Top = 11
            Width = 30
            Height = 13
            Anchors = [akTop, akRight]
            Caption = #1583#1575#1582#1604#1610
          end
          object DBEdit6: TDBEdit
            Left = 1138
            Top = 8
            Width = 90
            Height = 19
            Anchors = [akTop, akRight]
            Ctl3D = False
            DataField = 'Phone'
            DataSource = Dm.DSelect_FollowUP_By_Date
            Font.Charset = ARABIC_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentCtl3D = False
            ParentFont = False
            TabOrder = 0
          end
          object DBEdit7: TDBEdit
            Left = 618
            Top = 8
            Width = 90
            Height = 19
            Anchors = [akTop, akRight]
            Ctl3D = False
            DataField = 'MobilePhone'
            DataSource = Dm.DSelect_FollowUP_By_Date
            Font.Charset = ARABIC_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentCtl3D = False
            ParentFont = False
            TabOrder = 1
          end
          object DBEdit9: TDBEdit
            Left = 1001
            Top = 8
            Width = 90
            Height = 19
            Anchors = [akTop, akRight]
            Ctl3D = False
            DataField = 'WorkPhone1'
            DataSource = Dm.DSelect_FollowUP_By_Date
            Font.Charset = ARABIC_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentCtl3D = False
            ParentFont = False
            TabOrder = 2
          end
          object DBEdit1: TDBEdit
            Left = 406
            Top = 8
            Width = 169
            Height = 19
            Anchors = [akTop, akRight]
            BiDiMode = bdLeftToRight
            Ctl3D = False
            DataField = 'EmailAddress'
            DataSource = Dm.DSelect_FollowUP_By_Date
            Font.Charset = ARABIC_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentBiDiMode = False
            ParentCtl3D = False
            ParentFont = False
            TabOrder = 3
          end
          object DBEdit8: TDBEdit
            Left = 777
            Top = 8
            Width = 90
            Height = 19
            Anchors = [akTop, akRight]
            Ctl3D = False
            DataField = 'FaxNumber'
            DataSource = Dm.DSelect_FollowUP_By_Date
            Font.Charset = ARABIC_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentCtl3D = False
            ParentFont = False
            TabOrder = 4
          end
          object DBEdit12: TDBEdit
            Left = 918
            Top = 8
            Width = 42
            Height = 19
            Anchors = [akTop, akRight]
            Ctl3D = False
            DataField = 'InnerPhone'
            DataSource = Dm.DSelect_FollowUP_By_Date
            Font.Charset = ARABIC_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentCtl3D = False
            ParentFont = False
            ReadOnly = True
            TabOrder = 5
          end
          object cboDoneStatus: TDBLookupComboBox
            Left = 153
            Top = 8
            Width = 143
            Height = 21
            Anchors = [akTop, akRight]
            KeyField = 'DoneStatusID'
            ListField = 'DoneStatustitle'
            ListSource = Dm.DDoneStatus
            TabOrder = 6
          end
          object chkDoneStatus: TCheckBox
            Left = 303
            Top = 10
            Width = 89
            Height = 17
            Anchors = [akTop, akRight]
            Caption = #1608#1590#1593#1610#1578' '#1575#1606#1580#1575#1605' :'
            Checked = True
            State = cbChecked
            TabOrder = 7
            OnClick = chkDoneStatusClick
          end
        end
        object Panel5: TPanel
          Left = 1
          Top = 1
          Width = 1250
          Height = 41
          Align = alTop
          BevelOuter = bvNone
          Ctl3D = False
          ParentCtl3D = False
          TabOrder = 2
          DesignSize = (
            1250
            41)
          object Button22: TBitBtn
            Left = 1074
            Top = 10
            Width = 80
            Height = 25
            Anchors = [akTop, akRight]
            Caption = ' <  '#1583#1610#1585#1608#1586
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clNavy
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
            TabOrder = 0
            OnClick = Button22Click
          end
          object Button25: TBitBtn
            Left = 994
            Top = 10
            Width = 80
            Height = 25
            Anchors = [akTop, akRight]
            Caption = #1578#1575' '#1575#1605#1585#1608#1586
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clNavy
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
            TabOrder = 1
            OnClick = Button25Click
          end
          object Button18: TBitBtn
            Left = 914
            Top = 10
            Width = 80
            Height = 25
            Anchors = [akTop, akRight]
            Caption = #1575#1605#1585#1608#1586
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clNavy
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
            TabOrder = 2
            OnClick = Button18Click
          end
          object Button21: TBitBtn
            Left = 834
            Top = 10
            Width = 80
            Height = 25
            Anchors = [akTop, akRight]
            Caption = #1601#1585#1583#1575'  >'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clNavy
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
            TabOrder = 3
            OnClick = Button21Click
          end
          object Button23: TBitBtn
            Left = 754
            Top = 10
            Width = 80
            Height = 25
            Anchors = [akTop, akRight]
            Caption = #1575#1610#1606' '#1607#1601#1578#1607
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clNavy
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
            TabOrder = 4
            OnClick = Button23Click
          end
          object xpBitBtn1: TBitBtn
            Left = 15
            Top = 9
            Width = 118
            Height = 25
            Caption = #1606#1605#1575#1610#1588' '#1576#1607' '#1589#1608#1585#1578' '#1605#1575#1607#1575#1606#1607
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clNavy
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
            TabOrder = 5
            OnClick = xpBitBtn1Click
          end
          object btnViwCustomer: TBitBtn
            Left = 1157
            Top = 10
            Width = 100
            Height = 25
            Anchors = [akTop, akRight]
            Caption = #1605#1588#1582#1589#1575#1578' '#1605#1588#1578#1585#1610
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clNavy
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
            TabOrder = 6
            OnClick = btnViwCustomerClick
          end
          object PnlAllAct: TPanel
            Left = 319
            Top = 8
            Width = 428
            Height = 29
            Anchors = [akTop, akRight]
            BevelInner = bvLowered
            TabOrder = 7
            DesignSize = (
              428
              29)
            object Label4: TLabel
              Left = 117
              Top = 8
              Width = 47
              Height = 13
              Caption = #1578#1575#1585#1610#1582' '#1575#1578#1605#1575#1605
              Font.Charset = ARABIC_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = []
              ParentFont = False
              Transparent = True
            end
            object Label3: TLabel
              Left = 279
              Top = 8
              Width = 52
              Height = 13
              Caption = #1578#1575#1585#1610#1582' '#1588#1585#1608#1593
              Font.Charset = ARABIC_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = []
              ParentFont = False
              Transparent = True
            end
            object SpeedButton7: TSpeedButton
              Left = 171
              Top = 5
              Width = 23
              Height = 22
              Anchors = [akTop, akRight]
              Glyph.Data = {
                36030000424D3603000000000000360000002800000010000000100000000100
                18000000000000030000C30E0000C30E00000000000000000000ABA4A3827A79
                827A79827A79827A79827A79827A79827A79827A79827A79827A79827A79827A
                79827A79827A79827A79ABA4A3DCD4D1F7EEEBF7EEEBF7EEEBE0DEDEF7EEEBF7
                EEEBF7EEEBF7EEEBE0DEDEF7EEEBF7EEEBF7EEEBD2CAC8827A79ABA4A3DDD5D3
                F8EFECF8EFECF8EFECDADADAF8EFECF8EFECF8EFECF8EFECDADADAF8EFECF8EF
                ECF8EFECD2CAC8827A79ABA4A3DED7D4E1DFDEDADADADADADADADADADADADADA
                DADADADADADADADADADADADADADADADADAE1DFDED4CECB827A79ABA4A3DED8D5
                F9F2EFF9F2EFF9F2EFDADADA23C8FF23C8FF23C8FF23C8FFDADADAF9F2EFF9F2
                EFF9F2EFD5CFCD827A79ABA4A3DFD9D7FAF3F1FAF3F1FAF3F1DADADA23C8FF23
                C8FF23C8FF23C8FFDADADAFAF3F1FAF3F1FAF3F1D6D0CE827A79ABA4A3DFDAD8
                E1E0E0DADADADADADADADADADADADADADADADADADADADADADADADADADADADADA
                DAE1E0E0D6D1CF827A79ABA4A3E0DBDAFBF6F4FBF6F4FBF6F4DADADAFBF6F4FB
                F6F4FBF6F4FBF6F4DADADAFBF6F4FBF6F4FBF6F4D7D2D1827A79ABA4A3E0DDDB
                FCF7F5FCF7F5FCF7F5E2E0E0FCF7F5FCF7F5FCF7F5FCF7F5E2E0E0FCF7F5FCF7
                F5FCF7F5D8D4D2827A794242B48280C98E8CD48D8BD28C8BCF8C8ACC8B89CA8B
                89C88A88C68988C48987C38987C38987C38987C37877B32424AD2828B52828B5
                2525B12525B04242B4A1A1CC9393C48181BF8888C64D4DAF6060BB2424AD2424
                AD2424AD2424A42424A42828B53C3CCC4444D54444D56060D2B0B0D9CDCDE37E
                7ED39797D08383D39494D54444D44444D54444D53737BC2424A42828B54747DB
                5353E84F4FDC5959E86A6AE56A6AD45757E76969E66060D26666E65454E94E4E
                D95454EB4141CA2424A42828B53232CD4141AF71718F3434D63838B17B7A9133
                33D13333B68281933131CA3131BD8585933030C12E2EBD2424A4DEDEEE8080D6
                8585C89B9BAD8080D38080C7A2A2AE8080CF7D7DC4A8A8AC7F7FC87E7EC2A9A9
                A97D7DBE7878C0E4E4EEFFFFFFFFFFFFE1E1E3B6B6B6FFFFFFE9E9EAB3B2B3FF
                FFFFF1F1F2AEAEAEFFFFFFFAFAFAAAA9AAFCFCFDFFFFFFFFFFFF}
              OnClick = SpeedButton7Click
            end
            object SpeedButton8: TSpeedButton
              Left = 10
              Top = 5
              Width = 23
              Height = 22
              Anchors = [akTop, akRight]
              Glyph.Data = {
                36030000424D3603000000000000360000002800000010000000100000000100
                18000000000000030000C30E0000C30E00000000000000000000ABA4A3827A79
                827A79827A79827A79827A79827A79827A79827A79827A79827A79827A79827A
                79827A79827A79827A79ABA4A3DCD4D1F7EEEBF7EEEBF7EEEBE0DEDEF7EEEBF7
                EEEBF7EEEBF7EEEBE0DEDEF7EEEBF7EEEBF7EEEBD2CAC8827A79ABA4A3DDD5D3
                F8EFECF8EFECF8EFECDADADAF8EFECF8EFECF8EFECF8EFECDADADAF8EFECF8EF
                ECF8EFECD2CAC8827A79ABA4A3DED7D4E1DFDEDADADADADADADADADADADADADA
                DADADADADADADADADADADADADADADADADAE1DFDED4CECB827A79ABA4A3DED8D5
                F9F2EFF9F2EFF9F2EFDADADA23C8FF23C8FF23C8FF23C8FFDADADAF9F2EFF9F2
                EFF9F2EFD5CFCD827A79ABA4A3DFD9D7FAF3F1FAF3F1FAF3F1DADADA23C8FF23
                C8FF23C8FF23C8FFDADADAFAF3F1FAF3F1FAF3F1D6D0CE827A79ABA4A3DFDAD8
                E1E0E0DADADADADADADADADADADADADADADADADADADADADADADADADADADADADA
                DAE1E0E0D6D1CF827A79ABA4A3E0DBDAFBF6F4FBF6F4FBF6F4DADADAFBF6F4FB
                F6F4FBF6F4FBF6F4DADADAFBF6F4FBF6F4FBF6F4D7D2D1827A79ABA4A3E0DDDB
                FCF7F5FCF7F5FCF7F5E2E0E0FCF7F5FCF7F5FCF7F5FCF7F5E2E0E0FCF7F5FCF7
                F5FCF7F5D8D4D2827A794242B48280C98E8CD48D8BD28C8BCF8C8ACC8B89CA8B
                89C88A88C68988C48987C38987C38987C38987C37877B32424AD2828B52828B5
                2525B12525B04242B4A1A1CC9393C48181BF8888C64D4DAF6060BB2424AD2424
                AD2424AD2424A42424A42828B53C3CCC4444D54444D56060D2B0B0D9CDCDE37E
                7ED39797D08383D39494D54444D44444D54444D53737BC2424A42828B54747DB
                5353E84F4FDC5959E86A6AE56A6AD45757E76969E66060D26666E65454E94E4E
                D95454EB4141CA2424A42828B53232CD4141AF71718F3434D63838B17B7A9133
                33D13333B68281933131CA3131BD8585933030C12E2EBD2424A4DEDEEE8080D6
                8585C89B9BAD8080D38080C7A2A2AE8080CF7D7DC4A8A8AC7F7FC87E7EC2A9A9
                A97D7DBE7878C0E4E4EEFFFFFFFFFFFFE1E1E3B6B6B6FFFFFFE9E9EAB3B2B3FF
                FFFFF1F1F2AEAEAEFFFFFFFAFAFAAAA9AAFCFCFDFFFFFFFFFFFF}
              OnClick = SpeedButton8Click
            end
            object ActDateEditTo: TShamsiDateEdit
              Left = 35
              Top = 6
              Width = 79
              Height = 19
              Font.Charset = ARABIC_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = []
              ParentFont = False
              TabOrder = 0
              Text = '1403/12/29'#0
            end
            object ActDateEditFrom: TShamsiDateEdit
              Left = 197
              Top = 6
              Width = 79
              Height = 19
              Font.Charset = ARABIC_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = []
              ParentFont = False
              TabOrder = 1
              Text = '1300/01/01'#0
            end
            object BtnAllAct: TBitBtn
              Left = 341
              Top = 2
              Width = 80
              Height = 25
              Caption = #1578#1605#1575#1605#1610' '#1575#1602#1583#1575#1605#1575#1578
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clNavy
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = []
              ParentFont = False
              TabOrder = 2
              OnClick = BtnAllActClick
            end
          end
          object BitBtn9: TBitBtn
            Left = 170
            Top = 8
            Width = 119
            Height = 25
            Anchors = [akTop, akRight]
            Caption = #1606#1605#1575#1610#1588' '#1580#1586#1574#1610#1575#1578' '#1575#1602#1583#1575#1605
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clNavy
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
            TabOrder = 8
            OnClick = BitBtn9Click
          end
        end
      end
      object pnlSearchFollow: TxpPanel
        Left = 0
        Top = 0
        Width = 1252
        Height = 94
        StartColor = 16511469
        EndColor = 16244694
        FillDirection = fdLeftToRight
        Caption = 'xpPanel'
        Title = #1580#1587#1578#1580#1608' '#1662#1610#1588#1585#1601#1578#1607
        TitleFont.Charset = ARABIC_CHARSET
        TitleFont.Color = clNavy
        TitleFont.Height = -11
        TitleFont.Name = 'Tahoma'
        TitleFont.Style = []
        TitleAlignment = taRightJustify
        TitleStartColor = clWhite
        TitleEndColor = 15777194
        TitleColor = clWhite
        TitleFillDirect = fdLeftToRight
        TitleImageAlign = tiaLeft
        TitleButtons = [tbMinimize]
        Animation = False
        DefaultHeight = 94
        BorderColor = clWhite
        BGImageAlign = iaStretch
        Align = alTop
        TabOrder = 1
        DesignSize = (
          1250
          62)
        object Label6: TLabel
          Left = 1167
          Top = 12
          Width = 52
          Height = 13
          Anchors = [akTop, akRight]
          Caption = #1578#1575#1585#1610#1582' '#1588#1585#1608#1593
          Font.Charset = ARABIC_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          Transparent = True
        end
        object Label7: TLabel
          Left = 985
          Top = 12
          Width = 47
          Height = 13
          Anchors = [akTop, akRight]
          Caption = #1578#1575#1585#1610#1582' '#1575#1578#1605#1575#1605
          Font.Charset = ARABIC_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          Transparent = True
        end
        object Label5: TLabel
          Left = 812
          Top = 12
          Width = 60
          Height = 13
          Anchors = [akTop, akRight]
          Caption = #1608#1590#1593#1610#1578' '#1575#1606#1580#1575#1605
          Font.Charset = ARABIC_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          Transparent = True
        end
        object Label8: TLabel
          Left = 573
          Top = 12
          Width = 43
          Height = 13
          Anchors = [akTop, akRight]
          Caption = #1578#1608#1590#1610#1581#1575#1578' '
          Font.Charset = ARABIC_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          Transparent = True
        end
        object Label10: TLabel
          Left = 1165
          Top = 38
          Width = 70
          Height = 13
          Anchors = [akTop, akRight]
          Caption = #1588#1575#1606#1587' '#1605#1608#1601#1602#1610#1578
          Font.Charset = ARABIC_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          Transparent = True
        end
        object Label11: TLabel
          Left = 1106
          Top = 38
          Width = 6
          Height = 13
          Anchors = [akTop, akRight]
          Caption = #1578#1575
          Font.Charset = ARABIC_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
        end
        object Label9: TLabel
          Left = 573
          Top = 41
          Width = 67
          Height = 13
          Anchors = [akTop, akRight]
          Caption = #1578#1608#1590#1610#1581#1575#1578' '#1575#1602#1583#1575#1605
          Font.Charset = ARABIC_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          Transparent = True
        end
        object Label40: TLabel
          Left = 398
          Top = 8
          Width = 13
          Height = 41
          Anchors = [akTop, akRight]
          AutoSize = False
          Caption = '}'
          Color = 10701057
          Font.Charset = ARABIC_CHARSET
          Font.Color = 16558107
          Font.Height = -31
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentColor = False
          ParentFont = False
          Transparent = True
        end
        object SpeedButton5: TSpeedButton
          Left = 1058
          Top = 8
          Width = 23
          Height = 22
          Anchors = [akTop, akRight]
          Glyph.Data = {
            36030000424D3603000000000000360000002800000010000000100000000100
            18000000000000030000C30E0000C30E00000000000000000000ABA4A3827A79
            827A79827A79827A79827A79827A79827A79827A79827A79827A79827A79827A
            79827A79827A79827A79ABA4A3DCD4D1F7EEEBF7EEEBF7EEEBE0DEDEF7EEEBF7
            EEEBF7EEEBF7EEEBE0DEDEF7EEEBF7EEEBF7EEEBD2CAC8827A79ABA4A3DDD5D3
            F8EFECF8EFECF8EFECDADADAF8EFECF8EFECF8EFECF8EFECDADADAF8EFECF8EF
            ECF8EFECD2CAC8827A79ABA4A3DED7D4E1DFDEDADADADADADADADADADADADADA
            DADADADADADADADADADADADADADADADADAE1DFDED4CECB827A79ABA4A3DED8D5
            F9F2EFF9F2EFF9F2EFDADADA23C8FF23C8FF23C8FF23C8FFDADADAF9F2EFF9F2
            EFF9F2EFD5CFCD827A79ABA4A3DFD9D7FAF3F1FAF3F1FAF3F1DADADA23C8FF23
            C8FF23C8FF23C8FFDADADAFAF3F1FAF3F1FAF3F1D6D0CE827A79ABA4A3DFDAD8
            E1E0E0DADADADADADADADADADADADADADADADADADADADADADADADADADADADADA
            DAE1E0E0D6D1CF827A79ABA4A3E0DBDAFBF6F4FBF6F4FBF6F4DADADAFBF6F4FB
            F6F4FBF6F4FBF6F4DADADAFBF6F4FBF6F4FBF6F4D7D2D1827A79ABA4A3E0DDDB
            FCF7F5FCF7F5FCF7F5E2E0E0FCF7F5FCF7F5FCF7F5FCF7F5E2E0E0FCF7F5FCF7
            F5FCF7F5D8D4D2827A794242B48280C98E8CD48D8BD28C8BCF8C8ACC8B89CA8B
            89C88A88C68988C48987C38987C38987C38987C37877B32424AD2828B52828B5
            2525B12525B04242B4A1A1CC9393C48181BF8888C64D4DAF6060BB2424AD2424
            AD2424AD2424A42424A42828B53C3CCC4444D54444D56060D2B0B0D9CDCDE37E
            7ED39797D08383D39494D54444D44444D54444D53737BC2424A42828B54747DB
            5353E84F4FDC5959E86A6AE56A6AD45757E76969E66060D26666E65454E94E4E
            D95454EB4141CA2424A42828B53232CD4141AF71718F3434D63838B17B7A9133
            33D13333B68281933131CA3131BD8585933030C12E2EBD2424A4DEDEEE8080D6
            8585C89B9BAD8080D38080C7A2A2AE8080CF7D7DC4A8A8AC7F7FC87E7EC2A9A9
            A97D7DBE7878C0E4E4EEFFFFFFFFFFFFE1E1E3B6B6B6FFFFFFE9E9EAB3B2B3FF
            FFFFF1F1F2AEAEAEFFFFFFFAFAFAAAA9AAFCFCFDFFFFFFFFFFFF}
          OnClick = SpeedButton5Click
        end
        object SpeedButton6: TSpeedButton
          Left = 886
          Top = 8
          Width = 23
          Height = 22
          Anchors = [akTop, akRight]
          Glyph.Data = {
            36030000424D3603000000000000360000002800000010000000100000000100
            18000000000000030000C30E0000C30E00000000000000000000ABA4A3827A79
            827A79827A79827A79827A79827A79827A79827A79827A79827A79827A79827A
            79827A79827A79827A79ABA4A3DCD4D1F7EEEBF7EEEBF7EEEBE0DEDEF7EEEBF7
            EEEBF7EEEBF7EEEBE0DEDEF7EEEBF7EEEBF7EEEBD2CAC8827A79ABA4A3DDD5D3
            F8EFECF8EFECF8EFECDADADAF8EFECF8EFECF8EFECF8EFECDADADAF8EFECF8EF
            ECF8EFECD2CAC8827A79ABA4A3DED7D4E1DFDEDADADADADADADADADADADADADA
            DADADADADADADADADADADADADADADADADAE1DFDED4CECB827A79ABA4A3DED8D5
            F9F2EFF9F2EFF9F2EFDADADA23C8FF23C8FF23C8FF23C8FFDADADAF9F2EFF9F2
            EFF9F2EFD5CFCD827A79ABA4A3DFD9D7FAF3F1FAF3F1FAF3F1DADADA23C8FF23
            C8FF23C8FF23C8FFDADADAFAF3F1FAF3F1FAF3F1D6D0CE827A79ABA4A3DFDAD8
            E1E0E0DADADADADADADADADADADADADADADADADADADADADADADADADADADADADA
            DAE1E0E0D6D1CF827A79ABA4A3E0DBDAFBF6F4FBF6F4FBF6F4DADADAFBF6F4FB
            F6F4FBF6F4FBF6F4DADADAFBF6F4FBF6F4FBF6F4D7D2D1827A79ABA4A3E0DDDB
            FCF7F5FCF7F5FCF7F5E2E0E0FCF7F5FCF7F5FCF7F5FCF7F5E2E0E0FCF7F5FCF7
            F5FCF7F5D8D4D2827A794242B48280C98E8CD48D8BD28C8BCF8C8ACC8B89CA8B
            89C88A88C68988C48987C38987C38987C38987C37877B32424AD2828B52828B5
            2525B12525B04242B4A1A1CC9393C48181BF8888C64D4DAF6060BB2424AD2424
            AD2424AD2424A42424A42828B53C3CCC4444D54444D56060D2B0B0D9CDCDE37E
            7ED39797D08383D39494D54444D44444D54444D53737BC2424A42828B54747DB
            5353E84F4FDC5959E86A6AE56A6AD45757E76969E66060D26666E65454E94E4E
            D95454EB4141CA2424A42828B53232CD4141AF71718F3434D63838B17B7A9133
            33D13333B68281933131CA3131BD8585933030C12E2EBD2424A4DEDEEE8080D6
            8585C89B9BAD8080D38080C7A2A2AE8080CF7D7DC4A8A8AC7F7FC87E7EC2A9A9
            A97D7DBE7878C0E4E4EEFFFFFFFFFFFFE1E1E3B6B6B6FFFFFFE9E9EAB3B2B3FF
            FFFFF1F1F2AEAEAEFFFFFFFAFAFAAAA9AAFCFCFDFFFFFFFFFFFF}
          OnClick = SpeedButton6Click
        end
        object Label41: TLabel
          Left = 1024
          Top = 39
          Width = 31
          Height = 13
          Anchors = [akTop, akRight]
          Caption = #1601#1593#1575#1604#1610#1578
          Font.Charset = ARABIC_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          Transparent = True
        end
        object BDate: TShamsiDateEdit
          Left = 1081
          Top = 8
          Width = 67
          Height = 21
          Anchors = [akTop, akRight]
          Font.Charset = ARABIC_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          TabOrder = 0
          Text = '1386/12/29'#0
        end
        object Edate: TShamsiDateEdit
          Left = 912
          Top = 8
          Width = 66
          Height = 21
          Anchors = [akTop, akRight]
          Font.Charset = ARABIC_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          TabOrder = 1
          Text = '1386/12/29'#0
        end
        object DonStatus: TComboBox
          Left = 658
          Top = 8
          Width = 150
          Height = 21
          Anchors = [akTop, akRight]
          BiDiMode = bdLeftToRight
          Font.Charset = ARABIC_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ItemHeight = 13
          ParentBiDiMode = False
          ParentFont = False
          TabOrder = 2
          Text = #1607#1605#1607' '#1605#1608#1575#1585#1583
          Items.Strings = (
            #1607#1605#1607' '#1605#1608#1575#1585#1583
            #1575#1606#1580#1575#1605' '#1606#1588#1583#1607
            #1575#1606#1580#1575#1605' '#1588#1583#1607)
        end
        object Comment: TEdit
          Left = 418
          Top = 8
          Width = 150
          Height = 21
          Anchors = [akTop, akRight]
          Font.Charset = ARABIC_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          TabOrder = 3
        end
        object Bsuccess: TEdit
          Left = 1113
          Top = 34
          Width = 34
          Height = 21
          Anchors = [akTop, akRight]
          Font.Charset = ARABIC_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          TabOrder = 4
          Text = '0'
        end
        object Esuccess: TEdit
          Left = 1073
          Top = 34
          Width = 32
          Height = 21
          Anchors = [akTop, akRight]
          Font.Charset = ARABIC_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          TabOrder = 5
          Text = '100'
        end
        object DonComment: TEdit
          Left = 418
          Top = 33
          Width = 150
          Height = 21
          Anchors = [akTop, akRight]
          Font.Charset = ARABIC_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          TabOrder = 6
        end
        object ShowAction: TCheckBox
          Left = 811
          Top = 41
          Width = 69
          Height = 13
          Anchors = [akTop, akRight]
          Caption = #1606#1608#1593' '#1575#1602#1583#1575#1605
          Color = 16576491
          Font.Charset = ARABIC_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentColor = False
          ParentFont = False
          TabOrder = 7
          OnClick = ShowActionClick
        end
        object ActionType: TDBLookupComboBox
          Left = 658
          Top = 33
          Width = 150
          Height = 21
          Anchors = [akTop, akRight]
          BiDiMode = bdLeftToRight
          DropDownRows = 5
          Enabled = False
          Font.Charset = ARABIC_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          KeyField = 'ActionTypeID'
          ListField = 'ActionTypeTitle'
          ListSource = Dm.DActionType
          ParentBiDiMode = False
          ParentFont = False
          TabOrder = 8
        end
        object btnSrchFollow: TBitBtn
          Left = 176
          Top = 34
          Width = 80
          Height = 25
          Anchors = [akTop, akRight]
          Caption = #1580#1587#1578#1580#1608
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clNavy
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          TabOrder = 9
          OnClick = btnSrchFollowClick
        end
        object chkCommentType: TCheckBox
          Left = 270
          Top = 24
          Width = 121
          Height = 17
          Anchors = [akTop, akRight]
          Caption = #1580#1587#1578#1580#1608#1610' '#1578#1585#1705#1610#1576#1610' ('#1610#1575')'
          Color = 16576491
          ParentColor = False
          TabOrder = 10
        end
        object lcbGroup: TDBLookupComboBox
          Left = 884
          Top = 34
          Width = 134
          Height = 21
          Anchors = [akTop, akRight]
          BiDiMode = bdRightToLeft
          KeyField = 'GroupID'
          ListField = 'GroupTitle'
          ListSource = DGroups
          ParentBiDiMode = False
          TabOrder = 11
          OnCloseUp = SearchEditChange
          OnKeyDown = DBLookUpKeyDown
          OnKeyUp = dblGroupsKeyUp
        end
      end
    end
    object xpTabSheet2: TxpTabSheet
      Caption = #1605#1588#1578#1585#1610#1575#1606
      Font.Charset = ARABIC_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabVisible = False
      Color = clWhite
      BGStyle = bgsGradient
      GradientStartColor = clWhite
      GradientEndColor = clSilver
      GradientFillDir = fdLeftToRight
      object Panel2: TPanel
        Left = 0
        Top = 105
        Width = 1252
        Height = 41
        Align = alTop
        BevelInner = bvRaised
        BevelOuter = bvLowered
        TabOrder = 0
        DesignSize = (
          1252
          41)
        object Label2: TLabel
          Left = 24
          Top = 12
          Width = 106
          Height = 13
          Caption = #1588#1585#1705#1578' '#1606#1585#1605' '#1575#1601#1586#1575#1585#1610' '#1610#1711#1575#1606#1607
          Font.Charset = ARABIC_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
        end
        object BitBtn1: TBitBtn
          Left = 1152
          Top = 7
          Width = 95
          Height = 28
          Anchors = [akTop, akRight]
          Caption = #1605#1588#1578#1585#1610' '#1580#1583#1610#1583
          TabOrder = 0
          OnClick = BitBtn1Click
          Glyph.Data = {
            EE030000424DEE03000000000000360000002800000012000000110000000100
            180000000000B8030000120B0000120B00000000000000000000FFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFF4CB1D00192B80A9DBC069BBB0092B767BCD6FFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000FFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFF48B9D914BFD454D9E14ECFD807A5BD62BBD5FFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFF0000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF48BDDF25
            D4ED71F6FF64EAF30DAAC561B9D5FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            0000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF43BBDE2AD4EE6DF5FE5DE9F2
            0CACC65FB9D5FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000FFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFF50C0E023D3EC6DF6FF60E9F30CACC667BCD7FFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000D3EAF1B8DDEBBCDFECBBDFEDB8DF
            EDC2DFEC35B5DA21D6EE66F3FD60EAF50EB1CA45ACCCC4E3F0B8DEECBBE0EDBC
            E0EDBADCEBDEEFF4000058B6D21293B70E9CBC0E9ABD0F9CBD119FC211BBDB53
            EBF753ECFB57EBF745D1E009A2C1129BBE0D9BBD0E9ABC0E9CBC138FB785C7DC
            000050B8D90BB6D14FD5DF46D1DD49D4E04ADAE856E9F55CEEF917D7F921DAF8
            5DEAF44FDDE948D4E048D2DE47D2DF4DCDD6039BB87EC4DB000054BEDE1DD0EA
            7BF7FE65F0FB6BF3FD68F2FD59EDFA20DFFA00C2F800C7F82FE3F863EFFB6AF3
            FD69F2FC68F2FE6EEBF20BA4C082C5DB00004ABDDE27CDE8A6F5FA8CEEF896F1
            FA9AF3FBAAF6FA77F0F914D7F924DBF96DF1FA79F1FA87EFFA95F0FA87F0FA57
            E6F101A1BF7EC2D9000058C1E110B1DD08BEE509BCE408BFE814C5ED78DEF7B8
            F6FA56ECF957EEFA4CE6F60BC4E80DBDE607BEE509BDE40DBAE01399C385C7DD
            0000D3EDF6B9E0F0BBE1F0BAE0F1B9E2F2BEE2F429C1ED55E2F77BF2FA5EEFFA
            11C3DF44B5DAC4E5F3B7E0F0BBE1F1BCE2F1BADFEEDEEFF50000FFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFF52C4E531D8F17AF6FD5FEBF60EB3CD67BED8FFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000FFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFF43BCE02CD5EE6AF5FE5DE9F20CADC75FB9D5FFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFF0000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF46BCDE2C
            D3ED78F5FE65E8F20DABC562B9D6FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            0000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF45BDDF3DD6ED9EF9FE58EAF3
            06AEC662B9D4FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000FFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFF4CBEE006AFDC14BAE307B6DE009DC667BCD7FFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000}
        end
        object BitBtn3: TBitBtn
          Left = 1054
          Top = 7
          Width = 95
          Height = 28
          Action = ACustomerFollowUp
          Anchors = [akTop, akRight]
          Caption = #1575#1602#1583#1575#1605#1575#1578
          TabOrder = 1
          Glyph.Data = {
            0E060000424D0E06000000000000360000002800000016000000160000000100
            180000000000D805000000000000000000000000000000000000F4FBFEFAFFFF
            FFFFFFFBF6F3FFFAF2FFFFF5FFFFF1FFFFF0FFFFEEFFFDE9FFF7E6FFF9E9FFFE
            EFFFFFF4FFFFF7FFFFF8FFFFFBFFF9F7FFFBF9FFFFFCFFFEFEFCF7F60000F8FD
            FFF7F9FAFBF9F8FFFFFBFFFFF7FFFFF4FFE9D8EED0BDCFB09BC3A48FB79986B7
            9B8ABAA393C6B3A6DECEC2F4E4DDFFFEFBFFFEFCFFFEFCFFFEFCFFFEFEFFFEFD
            0000FFFEFFFEFCFCFFFEFBFFFFF8FFF6E9E6CCBCC6A591B9947EBC967EBC967E
            BC9781B99884B19584AD9484B29C90BCA79FE1CBC6FEE9E7FFFDFCFFFEFCFFFE
            FCFFFFFC0000FFFEFFFFFFFCFFFFFBFFEFE6DDC3B5B79784AE8973BB9279B98E
            73BE9378BD947BB38F77AD8C79A98D7CA3897B9B8278A38884D4BBB9FFEEEEFF
            FDFCFFFEFCFFFEFB0000FEF9F8FFFFFBFEF0EAD5C1B6B39786B18F78C0977ECB
            9F82C59778C7997ABE9176B89077CCA793E7C7B4E7CABBD5B9AEA88A85B49695
            D5BCBAFEE9E7FFFEFCFFFEFC0000FFFFF6FFFFF7F0DACFB29587A07C6ABD947E
            C89C84B68B70BD9174C2957AC2937DCCA18CF7D3C3FFFFF1FFFFF4FFEEE3D9BC
            B5AC8C87A78A85E1CBC6FFFEFBFFFFFB0000FFFFEDF7E9D6C5A592C19683BC89
            75D09E88B18770AC8870AB8972CAA492ECC0B3FFE1D5FFFDF7FFFFF8FFFCF7FA
            F8F0FFFCF0F7D7CACAAFA1A79186FFF7EEFFFFF80000FFFFEAE5D8BEBE9983C1
            8F7BB77F6CCD9B85BF9A84BC9F8AB09581B09182B48B82CCA49FF9DAD7FFFEFB
            F8FFFEFBFFFBD1BDACCAA996B19382A08777E6D4C9FFFFF50000FFFFEAC8BCA4
            AD8C78C0937EB88672D9AE99F0D3BEF0DEC7FAE9D4D4BDADAC897FB28E88E6C9
            C4FFF5F2F7FEFBF9FEF5B39B89BA9881AD8D7AA98F7EC4B1A4FFFCEF0000FFFF
            EDB3A78FA88974C49A87B98E7BE2BDA7FFFFE9FFFFEDFFFFF0DBCDBBA68A7FB0
            8F86EDD0CBFFFFF9FDFFFCFEFFF5B89D89C39D85B3937CBA9F8BB09C8BFFFFF0
            0000FFFFF0AEA18BAA8A77BE9985B38B78D0B39EFFFFE9FFFFEDFFFFEBCCC5B2
            9D8677AC8E83EDD0C9FFFBF6FFFDF8FFFAEFBC9D86C1997DAE8B71BB9C85A991
            7FFFFFF10000FFFFF0B09F8CAD8C7CB89280B18D7BCAB29CFFFFEAFFFFEDFFFF
            EED3D0BBA89181B8988DF5D3CDFFFBF5FFFFF9FFFFF4C7A68CC59C7CAE876BB7
            987FAE9581FFFFF00000FFFCECBAA394B69183B2897AB89182CFB6A2FFFFEDFF
            FFEDFFFFECCEC9B4A58C7CB99387F8CEC7FFF6F0FFFFF7FFFFF2D3AC90CBA07F
            B48E70B9987EC0A590FFFFEB0000FFFFF5CAAEA3BE968AAE8174B78D80CAAE9D
            FFFDE6FFFFEDFFFFEED7CFB8A68877AE8275DCABA3EDBFB8DAB9B0D9BAABC69E
            82C19576B18A6EB4957CCCB19CFFFFEA0000FFFCF5E5C6BDC2948DC99890EDC1
            B4FFE8D8FFFBE5FFFFE8FFFFEAF7E9D3E9C2B3D5A195C1867CB27B72AF847BB8
            9385B28970C39B7EBC977DB99A83E5CCB8FFFFED0000FFFEF8FEE1DAD5A8A4C4
            928CDEB0A5FFE5D7FFFFF0FFFFEEFFFFEDFFF6E0F7CBBAE5A99DD49489C5887E
            B6887DB68D7EC59C85BA957BAD8B74C6A994FDE7D5FFFFF10000FFFFF9FFFAF5
            F1CBC7C39490BA8B83DBB6A8FCE6D4FFFBE5F8E8D1E2C5B0D09E8CC98A7CCC88
            7BC98B80C09183BC9586BB9682AF8D76B69683E5CCBCFFFFF4FFFFF50000FEFB
            F7FFFFFBFFF1EEDDB5B0AE837AA68074B9A292CFBEA9B9A691B3947FB78372C3
            8575CF8E80CB9283BA9280B19080A18070B79988DCC1B3FFF3E7FFFFF7FFFDF5
            0000F0FEFAFDFFFCFFFEF9FFEAE5DDB8B0B39086A08979A3927DA8937EB0917C
            C79581D89E8BD99E8EC69684AC8D78A08876B19789DCC1B7FFEAE2FFFFF8FFFF
            FBFFFAF70000E8FFFEEDFFF8FFFFFAFFFEF8FFF9F2F0D4C9C0AE9DA99B85A795
            7EAC8D76B68772BC8773BB8776B78F7CB6A18BBEB09DEBD7CCFFF1ECFFFAF7FF
            F8F6FFFEFEFFFEFF0000DCFFFFE2FFFAF5FBF6FFFFF9FFFFF7FFFFF4F6E8D6DC
            CFB9CABAA3C8AE96CA9F8ACB9C86CDA28DD4B59EDFD6BBF4EFDAFFFCF5FFFDFC
            FFFDFEFFF4F6FFFDFFFFFEFF0000D4FFFDE1FFFEF6FFFCFEF8F1FFF6EEFFFFF4
            FFFFF1FFFFEDFFFFEAFFFEE6FFFEE7FFFFEAFFFFEBFFFFE7FFFFE8FFFFF0FFF9
            F3FFFDFEFFFDFFFFFEFFFFFDFFFBFAFE0000}
        end
        object BitBtn5: TBitBtn
          Left = 855
          Top = 7
          Width = 95
          Height = 28
          Action = AAtachments
          Anchors = [akTop, akRight]
          Caption = #1662#1610#1608#1587#1578' '#1607#1575
          TabOrder = 2
          Glyph.Data = {
            36090000424D3609000000000000360000002800000018000000180000000100
            2000000000000009000000000000000000000000000000000000FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00C6C6C600C6C6
            C600C6C6C600C6C6C600C6C6C600FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600CECEC600CECE
            CE00CECECE00CECECE00CECECE00C6C6C600C6C6C600C6C6C600C6C6C600C6C6
            C600C6C6C600C6C6C600C6C6C600CECEC600CECEC600C6C6C600C6C6C600CECE
            C600CECEC600CECECE00CECECE00CECECE00CECECE00CECEC6009C9C9C001818
            1800211818001818180031313100636B6B006363630063636300636363006363
            630063636300636363005A6363005A5A5A005A635A005A6363005A5A5A005A5A
            5A00636363004A4242001818180021212100181010008C8C8C00848C8C002910
            10007B2931005A1818008C5A6300C6CECE00BDB5BD00BDBDBD00BDBDBD00B5B5
            B500B5B5B500B5B5B500ADADAD00ADADAD00ADADAD00A5A5A500A5A5A500A59C
            9C00ADADAD008C7373006318210073293100210000007B7B7B00849494005A39
            3900C65A6300AD424A00C68C8C00E7EFEF00DEDEDE00DEDEDE00DEDEDE00D6D6
            D600D6D6D600D6D6D600CECECE00D6CECE00CEC6CE009C9C9C007B7B8400A5A5
            A500C6CECE00BD9C9C00AD424A00B55A5A004A1818007B7B7B0084948C006342
            4200D67B7B00BD5A6300D69C9C00EFF7F700E7E7E700E7E7E700E7E7E700EFE7
            E700DEDEDE00DEDEDE00D6D6D600D6D6D600ADADAD0052525A00424A42008C8C
            8C00C6CECE00C6A5A500BD5A6300CE6B730052212100737B7B00848C8C00634A
            4A00DE8C9400C6737300D6A5A500EFF7F700EFE7E700E7E7E700E7E7E700B5AD
            B500D6D6D600DEDEDE00D6D6DE00BDB5AD004A4A84000000630031316300B5B5
            AD00CECECE00C6ADAD00C6737B00D6848C005A293100737B7B00848C8C006352
            5200E7A5A500CE848C00DEB5B500EFF7F700E7E7EF00EFF7EF00A5A5A5007373
            7B0094949400DEDEDE00BDB5B5005A736B0000739C000021DE00636BB500D6D6
            CE00CECED600CEB5B500D68C8C00DE9C9C005A393900737B7B00848484006B5A
            5A00EFBDBD00D69CA500E7C6C600F7F7F700F7F7F700A5A5A50094949400F7DE
            B5009C9C9C007B737B005A736B000084840008DEDE007BBDD600D6D6D600D6D6
            D600CED6D600D6BDBD00DEA5A500E7B5B50063424A00737B7B007B8484006B63
            6300FFCED600E7B5BD00EFD6D600FFFFFF00A5A5A50094949400F7E7BD00F7DE
            A500CEB5940042525200007B840010E7E7007BD6D600DED6D600DEDEDE00D6D6
            D600D6D6D600DECECE00E7BDBD00EFC6CE006B525200737B73007B8484007363
            6300FFDEDE00EFC6CE00FFE7E700ADADAD0094949400FFEFD600F7E7C600CEBD
            9C00636B5A00088C8C0000D6DE0052ADAD00DECECE00DEDEDE00DEDEDE00DEDE
            DE00D6D6D600DECECE00EFCECE00F7D6DE006B5A5A00737373007B8484007363
            6300FFE7E700F7D6D600A5949400949C9C00FFEFD600FFEFCE00DEC6AD006B73
            6B000084840000D6DE008CDED600AD9C9C00A5A5A500E7E7E700DEDEDE00DEDE
            DE00D6DEDE00DED6D600EFCECE00F7D6D6006B5A5A00737373007B8484006B63
            6300F7D6D6009C848C009C9C9C00FFEFD600FFEFCE00EFDEBD007B8C7B000084
            8C0008D6DE0084DED600EFE7E700E7EFEF00DEE7E700E7E7E700E7E7E700DEDE
            DE00DEDEDE00DED6D600E7BDBD00F7CECE006B525200737373007B8484006B5A
            5A00DEB5B500A59CA500EFDECE00FFEFCE00FFEFD600BDC6B500109C9C0010DE
            DE008CE7DE00EFE7E700EFEFEF00EFEFEF00E7EFEF00E7E7E700E7E7E700E7DE
            DE00DEDEDE00DECECE00DEADAD00E7B5BD00634A4A00737B7B00848C8C006B52
            5200E7A5AD00DEB5B500EFE7E700FFF7E700FFEFCE009C9C9C0084A5A500B5E7
            DE00EFE7E700EFEFEF00F7F7F700EFEFEF00EFEFEF00EFEFEF00E7E7E700E7E7
            E700E7E7E700DEC6C600D6949400DEA5A50063394200737B7B00848C8C00634A
            5200E79C9C00CE848400DEBDBD00F7F7FF00F7EFDE00D6C6B500F7E7D600F7EF
            EF00F7F7F700F7F7F700F7F7F700F7F7F700EFEFEF00EFEFEF00EFEFEF00E7E7
            E700E7EFEF00DEC6C600CE848400DE949C005A393900737B7B00848C8C00634A
            4A00DE8C8C00BD6B7300DEADAD00F7FFFF00EFE7EF00FFFFEF00EFEFEF00EFEF
            EF00FFFFFF00F7F7F700EFEFEF00EFEFEF00EFEFEF00EFEFEF00E7EFEF00E7E7
            E700E7EFEF00D6BDBD00C66B7300CE8484005A293100737B7B0084949400634A
            5200D68C8C00BD6B7300DEADAD00FFFFFF00FFFFFF00F7F7F700FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00F7FFF700F7F7
            F700F7FFFF00E7C6CE00BD6B7300D68484005A293100737B7B00A5A5A500845A
            6300B57B7B00A56B6B00B5949400CECECE00CECECE00CECECE00CECECE00CECE
            CE00CECECE00CECECE00CECECE00CECECE00CEC6C600C6C6C600C6C6C600C6C6
            C600C6C6C600B5A5A500A56B6B00B57373006B2931008C8C8C00C6BDBD00BDA5
            A500B5A5A500B5A5A500ADA5A500A5A5A500A5A5A500A5A5A500A5A5A500A5A5
            A500A5A5A500A5A5A500A5A5A500A5A5A500A5A5A500A5A5A500A5A5A500A5A5
            A500A5A5A500ADA5A500B5A5A500B5A5A500AD949400C6B5B500C6CEC600CECE
            CE00CECECE00CECECE00CECECE00CECECE00CECECE00CECECE00CECECE00CECE
            CE00CECECE00CECECE00CECECE00CECECE00CECECE00CECECE00CECECE00CECE
            CE00CECECE00CECECE00CECECE00CECECE00CED6CE00C6CECE00C6C6C600C6C6
            C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6
            C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6
            C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00}
        end
        object btnContract: TBitBtn
          Left = 953
          Top = 7
          Width = 95
          Height = 28
          Anchors = [akTop, akRight]
          Caption = #1602#1585#1575#1583#1575#1583#1607#1575
          TabOrder = 3
          OnClick = btnContractClick
          Glyph.Data = {
            36090000424D3609000000000000360000002800000018000000180000000100
            2000000000000009000000000000000000000000000000000000FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00BDBD
            BD00BDBDBD00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00BDBDBD00C6C6
            C600C6C6C600BDBDBD00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00BDBDBD00BDBDBD00CECECE008C8C
            8C004A4A4A00CECECE00BDBDBD00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00BDBDBD00CECECE00A5A5A5000000
            000039393900D6D6D600BDBDBD00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00BDBDBD00CECECE009C9C9C00080808000000
            000042424200D6D6D600BDBDBD00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00BDBDBD00BDBDBD00CECECE009C9C9C0000000000000000000000
            000042424200CECECE00B5B5B500BDBDBD00BDBDBD00BDBDBD00BDBDBD00BDBD
            BD00BDBDBD00FFFFFF00BDBDBD00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00BDBDBD00CECECE009C9C9C000000000000000000000000000000
            00004A4A4A00E7E7E700CECECE00CECECE00CECECE00D6D6D600C6C6C600C6C6
            C600C6C6C600BDBDBD00C6C6C600BDBDBD00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00BDBDBD00CECECE009C9C9C00080808000000000000000000000000000000
            0000181818004A4A4A00424242006B6B6B0063636300424242009C9C9C009494
            94009C9C9C00C6C6C600A5A5A500B5B5B500C6C6C600FFFFFF00C6C6C600BDBD
            BD00CECECE009C9C9C0000000000000000000000000000000000000000000000
            00000000000000000000000000000808080008080800292929004A4A4A008484
            840094949400A5A5A500B5B5B500BDBDBD00BDBDBD00FFFFFF00B5B5B500CECE
            CE009C9C9C000000000000000000000000000000000000000000000000000000
            00000000000000000000000000002121210021212100292929005A5A5A008484
            840094949400ADADAD00ADADAD00B5B5B500BDBDBD00FFFFFF00CECECE009C9C
            9C00080808000000000000000000000000000000000000000000000000000000
            00000000000000000000000000001818180018181800292929005A5A5A008484
            840094949400ADADAD00ADADAD00B5B5B500BDBDBD00FFFFFF00ADADAD000808
            0800000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000181818001818180029292900525252008484
            840094949400ADADAD00ADADAD00BDBDBD00BDBDBD00FFFFFF00CECECE009C9C
            9C00080808000000000000000000000000000000000000000000000000000000
            00000000000000000000000000001818180018181800292929005A5A5A008484
            840094949400ADADAD00ADADAD00B5B5B500BDBDBD00FFFFFF00B5B5B500CECE
            CE009C9C9C000000000000000000000000000000000000000000000000000000
            00000000000000000000000000001818180018181800212121005A5A5A008484
            840094949400ADADAD00ADADAD00B5B5B500BDBDBD00FFFFFF00C6C6C600BDBD
            BD00CECECE009C9C9C0000000000000000000000000000000000000000000000
            0000000000000000000000000000181818001818180039393900525252008484
            84009C9C9C00ADADAD00ADADAD00BDBDBD00BDBDBD00FFFFFF00FFFFFF00FFFF
            FF00BDBDBD00CECECE009C9C9C00080808000000000000000000000000000000
            0000000000000000000000000000101010001010100000000000525252007B7B
            7B008C8C8C00ADADAD00A5A5A500B5B5B500C6C6C600FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00BDBDBD00CECECE009C9C9C000000000000000000000000000000
            000029292900848484007373730073737300737373007B7B7B0084848400ADAD
            AD00BDBDBD00ADADAD00C6C6C600BDBDBD00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00BDBDBD00BDBDBD00CECECE009C9C9C0000000000000000000000
            00004A4A4A00E7E7E700CECECE00CECECE00CECECE00CECECE00CECECE00C6C6
            C600BDBDBD00C6C6C600BDBDBD00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00BDBDBD00CECECE009C9C9C00080808000000
            000042424200CECECE00B5B5B500BDBDBD00BDBDBD00BDBDBD00BDBDBD00BDBD
            BD00BDBDBD00BDBDBD00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00BDBDBD00CECECE00A5A5A5000000
            000039393900D6D6D600BDBDBD00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00BDBDBD00BDBDBD00CECECE008C8C
            8C004A4A4A00CECECE00BDBDBD00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00BDBDBD00C6C6
            C600C6C6C600BDBDBD00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00BDBD
            BD00BDBDBD00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00}
        end
        object btnCustomerReportX: TBitBtn
          Left = 740
          Top = 7
          Width = 106
          Height = 28
          Hint = #1711#1586#1575#1585#1588' '#1605#1588#1578#1585#1610#1575#1606' '#1576#1575' X  '#1605#1575#1606#1607' '#1576#1607' '#1688#1575#1610#1575#1606' '#1602#1585#1575#1585#1583#1575#1583
          Anchors = [akTop, akRight]
          Caption = #1711#1586#1575#1585#1588' '#1605#1588#1578#1585#1610#1575#1606' '#1576#1575' X  '
          TabOrder = 4
          OnClick = btnCustomerReportXClick
        end
        object BitBtn8: TBitBtn
          Left = 622
          Top = 7
          Width = 110
          Height = 28
          Anchors = [akTop, akRight]
          Caption = #1605#1608#1575#1585#1583' '
          ModalResult = 2
          TabOrder = 5
          OnClick = BitBtn8Click
          Glyph.Data = {
            36030000424D3603000000000000360000002800000010000000100000000100
            1800000000000003000000000000000000000000000000000000FBCB87FB970F
            FCA31EF9A01AFDA41EDB8F1EE8981EE7931EFFA91CF79C19FFA520F39815FFA8
            21F19716FF9E14FFB953E5BE8CE7F5FFF0F4FFD8E1FDE3F0FF228FFF54BBFF5A
            95FFFFFFFFCCCDFAFDFFFFC3BCE9FFFFFFB5AAD1FFFEFFFFA833E9C189CAC2D1
            D2C3C0CDBFB6CAC0D0306CFF4A80FF6B7DE1EBD6B7C1ABA9DAC3C1BEA19EDDBF
            BCB99792D2BBD7F0A136EBC38BD6D7E7E5DBDAD5CCC8D8D6E83473FF5C96FF73
            8CF1F2E6D5CEBCBEE4DDDDC9AFB0ECDDDDBDA2A0E7D9EDF6A937EBC38CE2E7F6
            EEE6E5DDD9D4E6E5F85092FF74B1FF7791F5FFFAE1D0C1C4F5E9E9CAB4B4FAE7
            E7C1A4A2F4E5FFFBAC3EE8C38BBCC2D1C6C4C3C5C0B8BCBDCE0D4BFF2C60FF61
            78E0E3D1B5BAADB0CCBEBEB8A3A3CEB9B9B49A98C3B5D1EC9C30ECC690EAF3FF
            FBFBF9E2DFDCEFF4FF5998FF86C3FF7F9BFFFFFFF2DAD1D1FBF9F9D3BEBEFFFE
            FEC4AAAAFFFAFFFFB23EE9C38DC7D0DFD1D0CECCCAC2C7CBDB2562FF407AFF66
            7FEAEFE3C8BEB5B6D9CECEBCAAAADCC6C6B89E9DD0C1E0F0A035EAC58FE1EBFA
            EFEFEDDBD9D6E3E7F64483FF6FAAFF7894FAFDF6E6D2CBCCF1EFEFCCBBBBF9F0
            F0C1A9A8F5EBFFFBAD3CEAC58DCDD7E6D9D8D8D0CEC8CFD3E13775FF548FFF6D
            88EDF0E6D0C5BDBEDFD7D7C1AFAFE3D3D3BBA3A1DACFE9F4A535E9C38DD6E0EF
            DCDBDAD7D4CCD4D8EA2462FE4A81FF6D88F0FEF2D7C8BEBEEBDBDAC4B2B1EFD5
            D5BDA29FE4D1EFF7A538EAC693E5F7FFF3F9FFDDE1E8E8F4FF4B95FF76BCFF74
            9AFFFFFFFFD5D2DDF7FCFFCCBFC9FFFDFFBFACB4FEF9FFFEB141E9C388C9C4B8
            D1C7B3D1C4ACC8C3B94C76BD5A80BC7C89BAECD4ADC6B2A1D9C2B0C4AB98DBBB
            A7C2A18CD0B7B9F2A12EFEBE5DF28000F28400F48600F48600F28300F28300F4
            8600F48600F48600F28500F48600F28500F58700F08600FC9300FECA83F1A357
            F0A152F1A352F1A352F4A552F4A552F3A452F0A254F1A353F0A353F1A354F0A3
            53F1A457F09E44FD9200FFDCACFE9C0FFEA420FEA421FEA421FEA421FEA421FE
            A421FEA421FEA421FEA421FEA421FEA421FEA621FE9E10FFD08A}
        end
      end
      object Panel1: TPanel
        Left = 0
        Top = 146
        Width = 1252
        Height = 505
        Align = alClient
        BevelInner = bvRaised
        BevelOuter = bvLowered
        Caption = 'Panel1'
        TabOrder = 1
        object Splitter1: TSplitter
          Left = 1234
          Top = 46
          Width = 8
          Height = 457
          Align = alRight
          Beveled = True
          Color = clMoneyGreen
          Constraints.MaxWidth = 8
          Constraints.MinWidth = 8
          ParentColor = False
          Visible = False
        end
        object SplitterCity: TSplitter
          Left = 1242
          Top = 46
          Width = 8
          Height = 457
          Align = alRight
          Beveled = True
          Color = clMoneyGreen
          Constraints.MaxWidth = 8
          Constraints.MinWidth = 8
          ParentColor = False
          Visible = False
        end
        object GroupByDate: TPanel
          Left = 1155
          Top = 46
          Width = 79
          Height = 457
          Align = alRight
          Alignment = taRightJustify
          BevelInner = bvLowered
          BevelOuter = bvLowered
          Caption = 'CityPanel'
          TabOrder = 0
          Visible = False
          object MonthList: TListBox
            Left = 2
            Top = 22
            Width = 75
            Height = 433
            Align = alClient
            BiDiMode = bdLeftToRight
            Font.Charset = ARABIC_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Tahoma'
            Font.Style = []
            ItemHeight = 16
            Items.Strings = (
              #13#1607#1605#1607#10
              '1388/01'
              '1388/02'
              '1388/03'
              '1388/04'
              '1388/05'
              '1388/06'
              '1388/07'
              '1388/08'
              '1388/09'
              '1388/10'
              '1388/11'#13
              '1388/12'
              #13'1389/01'
              '1389/02'
              '1389/03'
              '1389/04'
              '1389/05'
              #13'1389/06'
              '1389/07'
              '1389/08'
              '1389/09'
              '1389/10'
              '1389/11'
              '1389/12'
              '1390/01'
              '1390/02'
              '1390/03'
              '1390/04'
              '1390/05'
              '1390/06'
              '1390/07'
              '1390/08'
              '1390/09'
              '1390/10'
              '1390/11'
              '1390/12'
              '1391/01'
              '1391/02'
              '1391/03'
              '1391/04'
              '1391/05'
              '1391/06'
              '1391/07'
              '1391/08'
              '1391/09'
              '1391/10'
              '1391/11'
              '1391/12'
              '1392/01'
              '1392/02'
              '1392/03'
              '1392/04'
              '1392/05'
              '1392/06')
            ParentBiDiMode = False
            ParentFont = False
            TabOrder = 0
            OnClick = MonthListClick
          end
          object Panel10: TPanel
            Left = 2
            Top = 2
            Width = 75
            Height = 20
            Align = alTop
            Caption = #1605#1575#1607' '#1579#1576#1578' '
            Font.Charset = ARABIC_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
            TabOrder = 1
          end
        end
        object Panel11: TPanel
          Left = 2
          Top = 46
          Width = 1153
          Height = 457
          Align = alClient
          Caption = 'Panel11'
          TabOrder = 1
          object PhoneGrid: TYDBGrid
            Left = 1
            Top = 1
            Width = 1151
            Height = 455
            Cursor = crHandPoint
            Align = alClient
            BiDiMode = bdRightToLeft
            DataSource = Dm.DCustomer
            Font.Charset = ARABIC_CHARSET
            Font.Color = clWindowText
            Font.Height = -12
            Font.Name = 'Tahoma'
            Font.Style = []
            Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit]
            ParentBiDiMode = False
            ParentFont = False
            TabOrder = 0
            TitleFont.Charset = ARABIC_CHARSET
            TitleFont.Color = clWindowText
            TitleFont.Height = -11
            TitleFont.Name = 'Tahoma'
            TitleFont.Style = []
            OnDrawColumnCell = PhoneGridDrawColumnCell
            OnDblClick = ApropertyExecute
            YeganehColor = False
            YeganehFinish = False
            PageNumber = False
            RecordNumber = False
            HasTime = False
            Oriention = poPortrait
            HasDate = False
            HasIndex = False
            InvertFarsiDate = True
            TitleSort = True
            AutoInsert = False
            OnNeedColorCondition = PhoneGridNeedColorCondition
            FooterFields = 'Count'
            OnNeedFontCondition = PhoneGridNeedFontCondition
            Columns = <
              item
                Expanded = False
                FieldName = 'CustomerID'
                Title.Alignment = taCenter
                Title.Caption = #1603#1583' '#1587#1610#1587#1578#1605
                Width = 90
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'CustomerNo'
                Title.Alignment = taCenter
                Title.Caption = #1603#1583' '#1605#1588#1578#1585#1610
                Width = 90
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'nickname'
                Title.Alignment = taCenter
                Title.Caption = #1606#1575#1605' '#1578#1585#1705#1610#1576#1610' '#1605#1588#1578#1585#1610
                Width = 228
                Visible = True
              end
              item
                Color = clWhite
                Expanded = False
                FieldName = 'CompanyName'
                Title.Caption = #1606#1575#1605' '#1588#1585#1705#1578
                Width = 130
                Visible = True
              end
              item
                Color = clWhite
                Expanded = False
                FieldName = 'PersonTitle'
                Title.Caption = #1605#1583#1610#1585#1610#1578
                Width = 130
                Visible = True
              end
              item
                Color = clWhite
                Expanded = False
                FieldName = 'Treater'
                Title.Caption = #1591#1585#1601' '#1605#1705#1575#1578#1576#1607
                Width = 130
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'Phone'
                Title.Alignment = taCenter
                Title.Caption = #1578#1604#1601#1606
                Width = 126
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'FinishedContractProducts'
                Title.Alignment = taCenter
                Title.Caption = #1662#1575#1610#1575#1606' '#1602#1585#1575#1585#1575#1583#1575#1583
                Width = 138
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'CityTitle'
                Title.Alignment = taCenter
                Title.Caption = #1588#1607#1585
                Width = 96
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'WorkPhone1'
                Title.Caption = #1578#1604#1601#1606' 2'
                Visible = False
              end
              item
                Expanded = False
                FieldName = 'GroupTitle'
                Title.Alignment = taCenter
                Title.Caption = #1606#1608#1593' '#1601#1593#1575#1604#1610#1578
                Width = 111
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'InnerPhone'
                Title.Caption = #1588#1605#1575#1585#1607' '#1583#1575#1582#1604#1610
                Visible = False
              end
              item
                Expanded = False
                FieldName = 'Notes'
                Title.Alignment = taCenter
                Title.Caption = #1578#1608#1590#1610#1581
                Visible = False
              end
              item
                Expanded = False
                FieldName = 'MarketerTitle'
                Title.Alignment = taCenter
                Title.Caption = #1579#1576#1578' '#1705#1606#1606#1583#1607
                Width = 111
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'PersonTitle'
                Title.Alignment = taCenter
                Title.Caption = #1605#1583#1610#1585#1610#1578
                Visible = False
              end
              item
                Expanded = False
                FieldName = 'Products'
                Title.Alignment = taCenter
                Title.Caption = #1605#1581#1589#1608#1604#1575#1578
                Width = 164
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'CustomerStatusTitle'
                Title.Alignment = taCenter
                Title.Caption = #1608#1590#1593#1610#1578
                Width = 97
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'CategoryTitle'
                Title.Caption = #1589#1606#1593#1578' '#1601#1593#1575#1604#1610#1578
                Width = 36
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'SubCategoryTitle'
                Title.Caption = #1586#1605#1610#1606#1607' '#1705#1575#1585#1610
                Width = 62
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'CompanyTypeTitle'
                Title.Caption = #1606#1608#1593' '#1588#1585#1705#1578' '
                Width = 66
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'CompanySizeTitle'
                Title.Caption = #1578#1593#1583#1575#1583' '#1662#1585#1587#1606#1604
                Width = 61
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'Insertdate'
                Title.Alignment = taCenter
                Title.Caption = #1578#1575#1585#1610#1582' '#1579#1576#1578
                Width = 89
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'latestFollowup'
                Title.Alignment = taCenter
                Title.Caption = #1570#1582#1585#1610#1606' '#1575#1602#1583#1575#1605#1575#1578
                Width = 96
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'nextFollowup'
                Title.Alignment = taCenter
                Title.Caption = #1575#1602#1583#1575#1605#1575#1578' '#1576#1593#1583#1610
                Width = 95
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'FaxNumber'
                Title.Alignment = taCenter
                Title.Caption = #1601#1705#1587
                Width = 139
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'MobilePhone'
                Title.Caption = #1578#1604#1601#1606' '#1607#1605#1585#1575#1607
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'Address'
                Title.Alignment = taCenter
                Title.Caption = #1570#1583#1585#1587
                Width = 300
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'Notes'
                Title.Alignment = taCenter
                Title.Caption = #1578#1608#1590#1610#1581#1575#1578
                Width = 100
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'PostalCode'
                Title.Alignment = taCenter
                Title.Caption = #1603#1583' '#1662#1587#1578#1610
                Visible = False
              end
              item
                Expanded = False
                FieldName = 'EmailAddress'
                Title.Alignment = taCenter
                Title.Caption = #1575#1610#1605#1610#1604
                Visible = False
              end
              item
                Expanded = False
                FieldName = 'Website'
                Title.Alignment = taCenter
                Title.Caption = #1608#1576' '#1587#1575#1610#1578
                Visible = False
              end
              item
                Expanded = False
                FieldName = 'competitiveNote'
                Title.Alignment = taCenter
                Title.Caption = #1585#1602#1576#1575
                Visible = False
              end
              item
                Alignment = taRightJustify
                Expanded = False
                FieldName = 'CompaginTitle'
                Title.Alignment = taCenter
                Title.Caption = #1591#1585#1610#1602#1607' '#1605#1593#1585#1601#1610
                Width = 200
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'CancelComment'
                Title.Alignment = taCenter
                Title.Caption = #1593#1604#1578' '#1575#1606#1589#1585#1575#1601
                Visible = False
              end
              item
                Expanded = False
                FieldName = 'CancelDate'
                Title.Alignment = taCenter
                Title.Caption = #1578#1575#1585#1610#1582' '#1575#1606#1589#1585#1575#1601
                Visible = False
              end
              item
                Expanded = False
                FieldName = 'Insertdate'
                Title.Alignment = taCenter
                Title.Caption = #1578#1575#1585#1610#1582' '#1608#1585#1608#1583
                Visible = False
              end
              item
                Expanded = False
                FieldName = 'ContractExpDate'
                Title.Alignment = taCenter
                Title.Caption = #1578#1575#1585#1610#1582' '#1575#1578#1605#1575#1605' '#1602#1585#1575#1585#1583#1575#1583
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'LastUpdate'
                Title.Alignment = taCenter
                Title.Caption = #1570#1582#1585#1610#1606' '#1608#1610#1585#1575#1610#1588
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'FreeField01'
                Width = 70
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'FreeField02'
                Width = 70
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'FreeField03'
                Width = 70
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'FreeField04'
                Width = 70
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'FreeField05'
                Width = 70
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'FreeField06'
                Width = 70
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'FreeField07'
                Width = 70
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'FreeField08'
                Width = 70
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'FreeField09'
                Width = 70
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'FreeField10'
                Width = 70
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'FreeField11'
                Width = 70
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'FreeField12'
                Width = 70
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'FreeField13'
                Width = 70
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'FreeField14'
                Width = 70
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'FreeField15'
                Width = 70
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'FreeField16'
                Width = 70
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'FreeField17'
                Width = 70
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'FreeField18'
                Width = 70
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'FreeField19'
                Width = 70
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'FreeField20'
                Width = 70
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'FreeField21'
                Width = 70
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'FreeField22'
                Width = 70
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'FreeField23'
                Width = 70
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'FreeField24'
                Width = 70
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'FreeField25'
                Width = 70
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'FreeField26'
                Width = 70
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'FreeField27'
                Width = 70
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'FreeField28'
                Width = 70
                Visible = True
              end>
          end
        end
        object GroupBox2: TGroupBox
          Left = 2
          Top = 2
          Width = 1248
          Height = 44
          Align = alTop
          Caption = '   '#1605#1588#1578#1585#1610#1575#1606'     '
          TabOrder = 2
          DesignSize = (
            1248
            44)
          object Label32: TLabel
            Left = 1230
            Top = 22
            Width = 21
            Height = 13
            Anchors = [akTop, akRight]
            Caption = #1578#1604#1601#1606
          end
          object Label33: TLabel
            Left = 626
            Top = 22
            Width = 52
            Height = 13
            Anchors = [akTop, akRight]
            Caption = #1578#1604#1601#1606' '#1607#1605#1585#1575#1607
            FocusControl = DBEdit3
          end
          object Label34: TLabel
            Left = 1049
            Top = 22
            Width = 30
            Height = 13
            Anchors = [akTop, akRight]
            Caption = #1578#1604#1601#1606' 2'
            FocusControl = DBEdit4
          end
          object Label35: TLabel
            Left = 437
            Top = 22
            Width = 25
            Height = 13
            Anchors = [akTop, akRight]
            Caption = #1575#1610#1605#1610#1604
            FocusControl = DBEdit5
          end
          object Label24: TLabel
            Left = 805
            Top = 22
            Width = 25
            Height = 13
            Anchors = [akTop, akRight]
            Caption = #1601#1705#1587
            FocusControl = DBEdit10
          end
          object Label25: TLabel
            Left = 886
            Top = 22
            Width = 30
            Height = 13
            Anchors = [akTop, akRight]
            Caption = #1583#1575#1582#1604#1610
          end
          object DBEdit2: TDBEdit
            Left = 1088
            Top = 19
            Width = 138
            Height = 19
            Anchors = [akTop, akRight]
            Ctl3D = False
            DataField = 'Phone'
            DataSource = Dm.DCustomer
            Font.Charset = ARABIC_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentCtl3D = False
            ParentFont = False
            ReadOnly = True
            TabOrder = 0
          end
          object DBEdit3: TDBEdit
            Left = 466
            Top = 19
            Width = 156
            Height = 19
            Anchors = [akTop, akRight]
            Ctl3D = False
            DataField = 'MobilePhone'
            DataSource = Dm.DCustomer
            Font.Charset = ARABIC_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentCtl3D = False
            ParentFont = False
            ReadOnly = True
            TabOrder = 1
          end
          object DBEdit4: TDBEdit
            Left = 921
            Top = 19
            Width = 125
            Height = 19
            Anchors = [akTop, akRight]
            Ctl3D = False
            DataField = 'WorkPhone1'
            DataSource = Dm.DCustomer
            Font.Charset = ARABIC_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentCtl3D = False
            ParentFont = False
            ReadOnly = True
            TabOrder = 2
          end
          object DBEdit5: TDBEdit
            Left = 266
            Top = 19
            Width = 169
            Height = 19
            Anchors = [akTop, akRight]
            BiDiMode = bdLeftToRight
            Ctl3D = False
            DataField = 'EmailAddress'
            DataSource = Dm.DCustomer
            Font.Charset = ARABIC_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentBiDiMode = False
            ParentCtl3D = False
            ParentFont = False
            ReadOnly = True
            TabOrder = 3
          end
          object DBEdit10: TDBEdit
            Left = 683
            Top = 19
            Width = 117
            Height = 19
            Anchors = [akTop, akRight]
            Ctl3D = False
            DataField = 'FaxNumber'
            DataSource = Dm.DCustomer
            Font.Charset = ARABIC_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentCtl3D = False
            ParentFont = False
            ReadOnly = True
            TabOrder = 4
          end
          object DBEdit11: TDBEdit
            Left = 839
            Top = 19
            Width = 42
            Height = 19
            Anchors = [akTop, akRight]
            Ctl3D = False
            DataField = 'InnerPhone'
            DataSource = Dm.DCustomer
            Font.Charset = ARABIC_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentCtl3D = False
            ParentFont = False
            ReadOnly = True
            TabOrder = 5
          end
          object bbb: TButton
            Left = 64
            Top = 16
            Width = 75
            Height = 25
            Caption = 'bbb'
            TabOrder = 6
            Visible = False
            OnClick = bbbClick
          end
        end
      end
      object pnlSearchCustomer: TxpPanel
        Left = 0
        Top = 0
        Width = 1252
        Height = 105
        StartColor = 16511469
        EndColor = 16244694
        FillDirection = fdLeftToRight
        Caption = 'xpPanel'
        Title = #1580#1587#1578#1580#1608
        TitleFont.Charset = ARABIC_CHARSET
        TitleFont.Color = clNavy
        TitleFont.Height = -11
        TitleFont.Name = 'Tahoma'
        TitleFont.Style = []
        TitleAlignment = taRightJustify
        TitleStartColor = clWhite
        TitleEndColor = 15777194
        TitleColor = clWhite
        TitleFillDirect = fdLeftToRight
        TitleImageAlign = tiaLeft
        TitleButtons = [tbMinimize]
        Animation = False
        DefaultHeight = 66
        BorderColor = clWhite
        BGImageAlign = iaStretch
        Align = alTop
        TabOrder = 2
        DesignSize = (
          1250
          73)
        object Label1: TLabel
          Left = 1177
          Top = 13
          Width = 42
          Height = 13
          Anchors = [akTop, akRight]
          Caption = #1580#1587#1578#1580#1608' :'
          Font.Charset = ARABIC_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          Transparent = True
        end
        object Label28: TLabel
          Left = 876
          Top = 13
          Width = 59
          Height = 13
          Anchors = [akTop, akRight]
          Caption = #1588#1605#1575#1585#1607' '#1578#1605#1575#1587
          Font.Charset = ARABIC_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          Transparent = True
        end
        object Label29: TLabel
          Left = 658
          Top = 13
          Width = 25
          Height = 13
          Anchors = [akTop, akRight]
          Caption = #1575#1610#1605#1610#1604
          Font.Charset = ARABIC_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          Transparent = True
        end
        object SBRefresh: TSpeedButton
          Left = 1226
          Top = 36
          Width = 26
          Height = 24
          Hint = #1576#1575#1586#1610#1575#1576#1610' '#1583#1608#1576#1575#1585#1607' '#1575#1591#1604#1575#1593#1575#1578
          Anchors = [akTop, akRight]
          Flat = True
          Glyph.Data = {
            36040000424D3604000000000000360000002800000010000000100000000100
            2000000000000004000000000000000000000000000000000000FF00FF00FF00
            FF00A5616B00A5616B00A5616B00A5616B00A5616B00A5616B00A5616B00A561
            6B00A5616B00A5616B00A5616B00A5616B00A5616B00FF00FF00FF00FF00FF00
            FF00A5616B00FFEFC600C6CF9400D6CF9400EFCF9C00E7CF9400EFC78400EFBE
            8400EFBE7B00EFBE8400EFBE8400EFC78400A5616B00FF00FF00FF00FF00FF00
            FF00A5616B00FFEFCE009CBE7300299E21006BAE4A0021961000219610005AA6
            3900CEB67300EFBE7B00EFBE7B00EFC78400A5616B00FF00FF00FF00FF00FF00
            FF00A5615A00FFEFDE00BDCF9C00108E08000086000000860000008600000086
            000029961800DEBE7B00EFBE7B00EFC78400A5616B00FF00FF00FF00FF00FF00
            FF00A5615A00FFF7E700BDCF9C00189610000086000018961000ADBE730073AE
            4A000086000073AE4A00EFBE8400EFC78400A5616B00FF00FF00FF00FF00FF00
            FF00A5716B00FFF7EF00BDD7A500088E0800008600000086000084B65A00EFCF
            A500A5B66B006BAE4A00EFC78C00EFC78400A5616B00FF00FF00FF00FF00FF00
            FF00A5716B00FFFFFF00E7E7D600A5CF94009CC7840094BE73009CBE7300EFD7
            AD00EFCFA5009CC77B00EFC79400EFC78C00A5616B00FF00FF00FF00FF00FF00
            FF00BD866B00FFFFFF00A5DFA500FFEFE700F7EFD6009CC7840094BE730094BE
            73009CBE7300EFCFA500EFCF9C00F7CF9400A5616B00FF00FF00FF00FF00FF00
            FF00BD866B00FFFFFF0073C77300ADD7A500FFEFE70084C77300008600000086
            0000088E0800EFD7AD00EFCFA500F7D7A500A5616B00FF00FF00FF00FF00FF00
            FF00D6966B00FFFFFF0084CF8400008600007BC77300ADD7A500189618000086
            0000108E0800F7D7B500F7D7AD00EFCFA500A5616B00FF00FF00FF00FF00FF00
            FF00D6966B00FFFFFF00F7F7EF0029A629000086000000860000008600000086
            0000108E0800FFEFCE00DECFB500B5AE9400A5616B00FF00FF00FF00FF00FF00
            FF00DE9E7300FFFFFF00FFFFFF00DEF7DE0063BE6300219E2100219E210073BE
            6B00299E210094695200A5695A00A5695A00A5616B00FF00FF00FF00FF00FF00
            FF00DE9E7300FFFFFF00FFFFFF00FFFFFF00FFFFFF00DEF7DE00DEF7DE00FFFF
            F700ADB694008C695200E79E5200E78E3100B5694A00FF00FF00FF00FF00FF00
            FF00E7AE7B00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00DEC7C600A5695A00FFB65A00BD795A00FF00FF00FF00FF00FF00FF00FF00
            FF00E7AE7B00F7F7EF00F7F7EF00F7F7EF00F7F7EF00F7F7EF00F7F7EF00F7F7
            EF00DEC7C600A5695A00BD866B00FF00FF00FF00FF00FF00FF00FF00FF00FF00
            FF00E7AE7B00D6966B00D6966B00D6966B00D6966B00D6966B00D6966B00D696
            6B00D6966B00A5695A00FF00FF00FF00FF00FF00FF00FF00FF00}
          OnClick = SBRefreshClick
        end
        object btnHome: TSpeedButton
          Left = 1226
          Top = 7
          Width = 26
          Height = 24
          Hint = #1576#1575#1586#1711#1588#1578' '#1576#1607' '#1581#1575#1604#1578' '#1575#1608#1604#1610#1607
          Anchors = [akTop, akRight]
          Flat = True
          Glyph.Data = {
            36040000424D3604000000000000360000002800000010000000100000000100
            2000000000000004000000000000000000000000000000000000FF00FF001A1C
            1C002C232300272222002C2222002121220000181F0000191D00001220000006
            09001A1B1A002F25250022202000382C2C000A0C0C00C8D0D300B1B9BC00D4FF
            FF00D4FFFF00D4FFFF00D4FFFF00D4FFFF00026EA60002D2FF0002D2FF00000F
            2100D4FFFF00D4FFFF00D4FFFF00D4FFFF003F393900C8D0D300ADB5B800D4FF
            FF00EAFFFF00BDFAFA00CBFFFE00BBF3F4000273AA0002D2FF0002D2FF000015
            2100D4FFFF00D1FFFF00BDFAFA00DFFDFE003C353500C8D0D300ADB6B900D4FF
            FF00DFFDFD00C0F6F600C8FBFA00C3EDF000057AA90002D2FF0005BFFF000222
            4000D4FFFF00CBFDFD00C3F5F500D7FCFC003E363600C8D0D300AFB7BA00D4FF
            FF00F5FEFE00C1F8F800CCFCFB00B2EEF2000C75A1004DD6EC0000C7F000001B
            3000D4FFFF00D6FFFF00BBF7F700E6FCFC003B363600C8D0D300ABB1B400D4FF
            FF00FFFDFD00FAF2F200C4FBFB00C6F4F600458EB2003289AD003A96BE003D51
            5C00D4FFFF00C7FBFB00C4F7F700D5F9F9003C353500C8D0D300C2CACE00A4A4
            A400FCFDFD00F3F5F500FDF4F400C6F9F900D4FFFF00D9FFFF00D7FFFF00D7FF
            FF00C7FDFE00C5F7F700BFF7F700E9FFFF00413B3B00C8D0D300363737002724
            22006E6A6A00FFFFFF00F4F6F700FDF2F200C8F6F700BDF6F700C3F6F700C4F4
            F400C2F7F700CAF8F800C8FFFF00818F8F00160E0D00282B2C001D69890059CB
            D3000D516C006C5A5800FDFDFC00F5F7F800FCF4F400CEF9F900C2FAFA00C6F9
            F900CCF8F800C5FFFF00737071004E70680033CCD00003172100B1C1CE004393
            B50060E6F3001257730064505000FBF9F700F5F8F800FCF4F400CEF8F800C1F8
            F800C7FFFF006E6665004A736A0043D6E3001B374700C8D0D300D6D8D700BBC3
            CB004088A9005DE5FA000B617F0052474700F9F6F500F5F7F800FFF3F300D9FF
            FF00635E5C005084820043DFF700223C4D00C8D0D300C8D0D300C8D0D300C8D0
            D300C3C9CF004387A8005EE3FA00026C8C00423E3F00F4F1F000F7FDFE006954
            5300519292003BF1FF003A01B10063595600C8D0D300C8D0D300C8D0D300C8D0
            D300C8D0D300C9CDD1004688A80061E1F7000B739100535155007D6C65004B98
            950027DAED003A01B1003A01B1004B5C4800C8D0D300C8D0D300C8D0D300C8D0
            D300C8D0D300C8D0D300C8D0D3004A88A8005EDFEF0020708D00378A990027CD
            D200C8D0D3003A01B1003A01B1004C5A4200C8D0D300C8D0D300C8D0D300C8D0
            D300C6CDD100C8D0D300C8D0D300C8D0D3004E89A80058D3EA001C9FBE00C8D0
            D300C9CDC7003A01B1003A01B1004B5A4200DBE2EC00C8D0D300C6CED200C6CE
            D200C6CED200C6CED200C5CDD200C6CED200D3D2D3005C9DBB0055829200C8D0
            D300C8D0D3003A01B1003A01B100545A4B00DAE3EB00C1C9CC00}
          ParentShowHint = False
          ShowHint = True
          OnClick = btnHomeClick
        end
        object Label12: TLabel
          Left = 438
          Top = 13
          Width = 37
          Height = 13
          Anchors = [akTop, akRight]
          Caption = #1608#1590#1593#1610#1578' '
          Transparent = True
        end
        object Label30: TLabel
          Left = 1180
          Top = 37
          Width = 34
          Height = 13
          Anchors = [akTop, akRight]
          Caption = #1605#1581#1589#1608#1604
          Font.Charset = ARABIC_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          Transparent = True
        end
        object Label31: TLabel
          Left = 893
          Top = 39
          Width = 31
          Height = 13
          Anchors = [akTop, akRight]
          Caption = #1601#1593#1575#1604#1610#1578
          Font.Charset = ARABIC_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          Transparent = True
        end
        object Label26: TLabel
          Left = 698
          Top = 36
          Width = 28
          Height = 13
          Anchors = [akTop, akRight]
          Caption = #1575#1587#1578#1575#1606
          Font.Charset = ARABIC_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          Transparent = True
        end
        object Label27: TLabel
          Left = 476
          Top = 34
          Width = 22
          Height = 13
          Anchors = [akTop, akRight]
          Caption = #1588#1607#1585
          Font.Charset = ARABIC_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          Transparent = True
        end
        object Label42: TLabel
          Left = 218
          Top = 13
          Width = 49
          Height = 13
          Anchors = [akTop, akRight]
          Caption = #1578#1593#1583#1575#1583' '#1585#1705#1608#1585#1583
          Transparent = True
        end
        object SearchEdit: TEdit
          Left = 939
          Top = 9
          Width = 238
          Height = 21
          Hint = #1606#1575#1605' '#1588#1585#1705#1578#1548' '#1591#1585#1601' '#1605#1603#1575#1578#1576#1607' '#1548' '#1605#1583#1610#1585#1610#1578#1548' '#1578#1608#1590#1610#1581#1575#1578#1548' '#1570#1583#1585#1587#1548' '#1603#1583#1548' '#1603#1583' '#1662#1587#1578#1610
          Anchors = [akTop, akRight]
          ParentShowHint = False
          ShowHint = True
          TabOrder = 0
          OnKeyPress = SearchEditKeyPress
        end
        object OnlyCurrentMarketer: TCheckBox
          Left = 280
          Top = 54
          Width = 185
          Height = 13
          Anchors = [akTop, akRight]
          Caption = #1575#1591#1604#1575#1593#1575#1578' '#1579#1576#1578' '#1588#1583#1607' '#1578#1608#1587#1591' '#1705#1575#1585#1576#1585' '#1580#1575#1585#1610
          Checked = True
          Color = 16510698
          ParentColor = False
          State = cbChecked
          TabOrder = 1
          OnClick = SearchEditChange
        end
        object edtContactNumber: TEdit
          Left = 734
          Top = 9
          Width = 141
          Height = 21
          Hint = #1578#1604#1601#1606'1/'#1578#1604#1601#1606'2/'#1607#1605#1585#1575#1607'/'#1601#1705#1587
          Anchors = [akTop, akRight]
          TabOrder = 2
          OnKeyPress = edtContactNumberKeyPress
        end
        object edtEmail: TEdit
          Left = 503
          Top = 9
          Width = 146
          Height = 21
          Anchors = [akTop, akRight]
          BiDiMode = bdLeftToRight
          ParentBiDiMode = False
          TabOrder = 3
          OnChange = SearchEditChange
          OnEnter = edtEmailEnter
          OnExit = edtEmailExit
        end
        object dblCustomerStatus: TDBLookupComboBox
          Left = 291
          Top = 9
          Width = 142
          Height = 21
          Anchors = [akTop, akRight]
          BiDiMode = bdLeftToRight
          KeyField = 'CustomerStatusID'
          ListField = 'CustomerStatusTitle'
          ListSource = Dm.DCustomerStatus
          ParentBiDiMode = False
          TabOrder = 4
          OnCloseUp = SearchEditChange
          OnKeyDown = DBLookUpKeyDown
          OnKeyUp = dblCustomerStatusKeyUp
        end
        object dblProduct: TDBLookupComboBox
          Left = 1032
          Top = 33
          Width = 144
          Height = 21
          Anchors = [akTop, akRight]
          BiDiMode = bdLeftToRight
          KeyField = 'ProductID'
          ListField = 'ProductTitle'
          ListSource = Dm.DProduct
          ParentBiDiMode = False
          TabOrder = 5
          OnCloseUp = SearchEditChange
          OnKeyDown = DBLookUpKeyDown
          OnKeyUp = dblProductKeyUp
        end
        object dblGroups: TDBLookupComboBox
          Left = 732
          Top = 35
          Width = 144
          Height = 21
          Anchors = [akTop, akRight]
          BiDiMode = bdLeftToRight
          KeyField = 'GroupID'
          ListField = 'GroupTitle'
          ListSource = DGroups
          ParentBiDiMode = False
          TabOrder = 6
          OnCloseUp = SearchEditChange
          OnKeyDown = DBLookUpKeyDown
          OnKeyUp = dblGroupsKeyUp
        end
        object dblState: TDBLookupComboBox
          Left = 503
          Top = 31
          Width = 146
          Height = 21
          Anchors = [akTop, akRight]
          BiDiMode = bdLeftToRight
          KeyField = 'StateID'
          ListField = 'StateTitle'
          ListSource = DState
          ParentBiDiMode = False
          TabOrder = 7
          OnCloseUp = SearchEditChange
          OnExit = dblStateExit
          OnKeyDown = DBLookUpKeyDown
          OnKeyUp = dblStateKeyUp
        end
        object dblCity: TDBLookupComboBox
          Left = 291
          Top = 29
          Width = 142
          Height = 21
          Anchors = [akTop, akRight]
          BiDiMode = bdLeftToRight
          KeyField = 'CityId'
          ListField = 'CityTitle'
          ListSource = Dm.DCitys
          ParentBiDiMode = False
          TabOrder = 8
          OnCloseUp = dblCityCloseUp
          OnExit = dblCityExit
          OnKeyDown = DBLookUpKeyDown
          OnKeyUp = dblCityKeyUp
        end
        object chkContractFinished: TCheckBox
          Left = 514
          Top = 54
          Width = 206
          Height = 13
          Anchors = [akTop, akRight]
          Caption = #1605#1588#1578#1585#1610#1575#1606#1610' '#1705#1607' '#1602#1585#1575#1585#1583#1575#1583#1588#1575#1606' '#1576#1607' '#1662#1575#1610#1575#1606' '#1585#1587#1610#1583#1607
          Color = 16510698
          ParentColor = False
          TabOrder = 9
          OnClick = SearchEditChange
        end
        object edtcity: TYWhereEdit
          Left = 435
          Top = 31
          Width = 38
          Height = 21
          Anchors = [akTop, akRight]
          BiDiMode = bdLeftToRight
          ParentBiDiMode = False
          TabOrder = 10
          isLike = False
          isDate = False
          EveryLike = False
          isString = True
          FieldName = 'CityId'
          ListTable = 'City'
          CodeField = 'CityId'
          TitleField = 'CityTitle'
        end
        object edtState: TYWhereEdit
          Left = 656
          Top = 32
          Width = 41
          Height = 21
          Anchors = [akTop, akRight]
          BiDiMode = bdLeftToRight
          ParentBiDiMode = False
          TabOrder = 11
          isLike = False
          isDate = False
          EveryLike = False
          isString = False
          FieldName = 'StateId'
          ListTable = 'State'
          CodeField = 'StateId'
          TitleField = 'StateTitle'
        end
        object edRecCount: TEdit
          Left = 176
          Top = 9
          Width = 37
          Height = 21
          Anchors = [akTop, akRight]
          TabOrder = 12
          Text = '200'
          OnKeyPress = edRecCountKeyPress
        end
      end
    end
  end
  object Panel9: TPanel [1]
    Left = 0
    Top = 695
    Width = 1260
    Height = 30
    Align = alBottom
    TabOrder = 1
    object StatusBar1: TStatusBar
      Left = 363
      Top = 1
      Width = 896
      Height = 28
      Align = alRight
      Color = 16244694
      Panels = <
        item
          Alignment = taCenter
          Width = 90
        end
        item
          Width = 170
        end
        item
          Text = #1578#1593#1583#1575#1583' 5000'
          Width = 100
        end
        item
          Width = 150
        end
        item
          Width = 150
        end
        item
          Text = #1606#1585#1605' '#1575#1601#1586#1575#1585' '#1605#1583#1610#1585#1610#1578' '#1585#1608#1575#1576#1591' '#1605#1588#1578#1585#1610' '#1610#1711#1575#1606#1607
          Width = 250
        end>
    end
    object Panel12: TPanel
      Left = 1
      Top = 1
      Width = 362
      Height = 28
      Align = alClient
      BevelInner = bvRaised
      BevelOuter = bvLowered
      Color = 16244694
      TabOrder = 1
      DesignSize = (
        362
        28)
      object SpeedButton4: TSpeedButton
        Left = 344
        Top = 2
        Width = 25
        Height = 22
        Hint = #1575#1606#1578#1582#1575#1576' '#1587#1578#1608#1606
        Anchors = [akTop, akRight]
        Flat = True
        Glyph.Data = {
          36030000424D3603000000000000360000002800000010000000100000000100
          1800000000000003000000000000000000000000000000000000FBCB87FB970F
          FCA31EF9A01AFDA41EDB8F1EE8981EE7931EFFA91CF79C19FFA520F39815FFA8
          21F19716FF9E14FFB953E5BE8CE7F5FFF0F4FFD8E1FDE3F0FF228FFF54BBFF5A
          95FFFFFFFFCCCDFAFDFFFFC3BCE9FFFFFFB5AAD1FFFEFFFFA833E9C189CAC2D1
          D2C3C0CDBFB6CAC0D0306CFF4A80FF6B7DE1EBD6B7C1ABA9DAC3C1BEA19EDDBF
          BCB99792D2BBD7F0A136EBC38BD6D7E7E5DBDAD5CCC8D8D6E83473FF5C96FF73
          8CF1F2E6D5CEBCBEE4DDDDC9AFB0ECDDDDBDA2A0E7D9EDF6A937EBC38CE2E7F6
          EEE6E5DDD9D4E6E5F85092FF74B1FF7791F5FFFAE1D0C1C4F5E9E9CAB4B4FAE7
          E7C1A4A2F4E5FFFBAC3EE8C38BBCC2D1C6C4C3C5C0B8BCBDCE0D4BFF2C60FF61
          78E0E3D1B5BAADB0CCBEBEB8A3A3CEB9B9B49A98C3B5D1EC9C30ECC690EAF3FF
          FBFBF9E2DFDCEFF4FF5998FF86C3FF7F9BFFFFFFF2DAD1D1FBF9F9D3BEBEFFFE
          FEC4AAAAFFFAFFFFB23EE9C38DC7D0DFD1D0CECCCAC2C7CBDB2562FF407AFF66
          7FEAEFE3C8BEB5B6D9CECEBCAAAADCC6C6B89E9DD0C1E0F0A035EAC58FE1EBFA
          EFEFEDDBD9D6E3E7F64483FF6FAAFF7894FAFDF6E6D2CBCCF1EFEFCCBBBBF9F0
          F0C1A9A8F5EBFFFBAD3CEAC58DCDD7E6D9D8D8D0CEC8CFD3E13775FF548FFF6D
          88EDF0E6D0C5BDBEDFD7D7C1AFAFE3D3D3BBA3A1DACFE9F4A535E9C38DD6E0EF
          DCDBDAD7D4CCD4D8EA2462FE4A81FF6D88F0FEF2D7C8BEBEEBDBDAC4B2B1EFD5
          D5BDA29FE4D1EFF7A538EAC693E5F7FFF3F9FFDDE1E8E8F4FF4B95FF76BCFF74
          9AFFFFFFFFD5D2DDF7FCFFCCBFC9FFFDFFBFACB4FEF9FFFEB141E9C388C9C4B8
          D1C7B3D1C4ACC8C3B94C76BD5A80BC7C89BAECD4ADC6B2A1D9C2B0C4AB98DBBB
          A7C2A18CD0B7B9F2A12EFEBE5DF28000F28400F48600F48600F28300F28300F4
          8600F48600F48600F28500F48600F28500F58700F08600FC9300FECA83F1A357
          F0A152F1A352F1A352F4A552F4A552F3A452F0A254F1A353F0A353F1A354F0A3
          53F1A457F09E44FD9200FFDCACFE9C0FFEA420FEA421FEA421FEA421FEA421FE
          A421FEA421FEA421FEA421FEA421FEA421FEA621FE9E10FFD08A}
        OnClick = SpeedButton4Click
      end
      object SpeedButton3: TSpeedButton
        Left = 319
        Top = 1
        Width = 24
        Height = 22
        Hint = #1575#1585#1587#1575#1604' '#1576#1607' '#1575#1603#1587#1604
        Anchors = [akTop, akRight]
        Flat = True
        Glyph.Data = {
          36030000424D3603000000000000360000002800000010000000100000000100
          18000000000000030000000000000000000000000000000000003A734F235C3A
          1F5C3A1F5C3A18533317513217513213482C0E40270E40280C3D2406341C0633
          1C032E1B06331D0720174B8D5C77BB8682B2947EB08F7DB18F7BAD8B75A68675
          A48674A68470A18168997C699C7D65997A69987E3E916107321D44865B96BFA1
          F3EEF1ECF0EAE9EFE8E7EDE7E5ECE3E2EBE1E1EAE0DFE8DDDEE8DDDCE7DADCE8
          D9E4EADF68987E032E1A4A8B6197C0A4FBFBF9FCFFF9F8FFF6F4FDF4F3FDF1EF
          FBEEEFF9EDE9F2E8E8E8E6E8EBE5E4ECE3E6E7E4669D7C05341C4F8E64A1C9AA
          B9CFBB8E9C91919E93909D93909D9398A19B7CA4803B7E3D083F19133E230A2E
          1A5464576B9D7F09362058946AAECFB679AE7E0059141C683521613531604512
          4A230F66126FBA74308F4A1D7F41157623C1D2BE749F850B3E245B976CAFCDB8
          FFFFFF87BE866ABB7183CB8A46A0482C8D3186C49159A7623B9149076F183272
          3AF8FCF574A5850D4126609E72AFCEB7F9F9FAFCFAFC86B98838903D27802A87
          C19060AD6650A258308435347A3F387D4CC7D5C27EAE8F0F402569A37AB7D3BD
          F5F7F5FFFFFFE1EDE33E8D4092C89A6DB67657A85D337D3988AE8AF3F5F4DCE9
          DCE5ECE276A48713462C6BA57BB8D3BEFBFAFDF2F7F275B47E9FCBA67CBE855E
          AB645B9760528F56367935D5E5D4F6FCF6E6EDE477A98717523373AB82C2D8C7
          E8F0E979B7819BCEA384C68E6BBA7358935C61A36878C5814F9855246F25C7DE
          C6F7F8F77BB08C1752327BB189C6DECA9BCCA196CB9E88C8936EBA7B66A96DC5
          D5C48AB58D5DAC666CBC76418F481C681DD7E6D886B6971752337EB28AC8E1CF
          B6D9B98CC3928DC18F81AD83DAE4DAFFFFFFF4F5F496B9978BB28E88A88E809F
          82DDE5DB85B6951E5B387FB48EC3DDC9F4F5F5FFFEFFFFFFFFFFFFFFFAFAFCF6
          F7F5F9F9F8FFFEFFFFFFFFFFFFFFFFFFFFF5EFF582B1911F5B3A8DBC99CCE3D0
          C4DCC9C6DFCCC3DDC8C0DAC5B7D3BDB6D3BDB1CEB6AACAB1A2C8AC9FC7A796C1
          A197BFA177BB85225D3B7AB1878CBE9980B68E7DB28B78AF8772AB826FA77E68
          A47A63A0745B986D5693684F8F634B8B6044865B4A8D5D3A734F}
        OnClick = SpeedButton3Click
      end
      object SpeedButton2: TSpeedButton
        Left = 290
        Top = 1
        Width = 26
        Height = 22
        Hint = #1670#1575#1662
        Anchors = [akTop, akRight]
        Flat = True
        Glyph.Data = {
          E6040000424DE604000000000000360000002800000014000000140000000100
          180000000000B004000000000000000000000000000000000000FFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFAFAFAEEEEEEC7C7C7999999A1A1A1EBEBEBF9F9F9FFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE8
          E8E8D3D3D3B8B8B8B2B2B2D4D4D4E3E3E37F7F7F6969698E8E8EB1B1B1D8D8D8
          EEEEEEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFDBDBDBBBBBBBBABABAC9C9
          C9E5E5E5FAFAFAFFFFFFE5E5E59191917878787373737A7A7A858585929292B6
          B6B6D9D9D9FFFFFFFFFFFFFFFFFFCECECEBDBDBDDEDEDEF4F4F4FFFFFFFFFFFF
          FEFEFEFEFEFEDBDBDB9595957F7F7F6C6C6C6A6A6A6E6E6E7878787F7F7F8383
          838E8E8EB3B3B3F5F5F5CECECEFEFEFEFFFFFFFFFFFFFFFFFFF6F6F6D9D9D9C1
          C1C1A4A4A47878787979798383838383837575756767676161617272727C7C7C
          767676717171D1D1D1FFFFFFFAFAFAE9E9E9CACACAB9B9B9C4C4C4DBDBDBDDDD
          DDA7A7A78C8C8C8080807676767A7A7A8282828282826B6B6B60606084848476
          7676D0D0D0E8E8E8CECECEC6C6C6DADADAE9E9E9E9E9E9E8E8E8D8D8D8BABABA
          AFAFAFA8A8A8A1A1A19595957E7E7E7474747F7F7F8586858E8E8E787878CCCC
          CCD8D8D8E7E7E7EEEEEEE8E8E8E1E1E1DCDCDCD9D9D9DFDFDFDFDFDFD0D0D0C6
          C6C6BABABAAEAFAEABACABA2A1A2958D94877E857E7D7D757575D2D2D2EDEDED
          E7E7E7E1E1E1DEDEDED7D7D7D1D1D1DEDEDEECECECECECECE9E9E9E2E3E2E6E2
          E6F1E5F1F3E3F4DFCEDDA0BCA591AC94ACA7AA7A787AD0D0D0EAEAEAE2E2E2D9
          D9D9D2D2D2E0E0E0FBFBFBFFFFFFFFFFFFF6F6F5F2EFF2FFFFFFF6F2F677A878
          468C454D8E536CC8807BEB8F9CC8A2817C81D3D3D3BFBFBFCFCFCFDADADAE4E3
          E39F9FA080818298999BBABBBCDAD9DBFBF7FB5FAC5F006B00007B00087C0020
          70000955003E8034A8AFA8DCD8DDF7F7F7C2C2C2BFBFBFD1D1D1A5AAAC8C7E70
          A7988888807876736FA994A857A759008B0005A50A49C55C15AC23009400148A
          001A64002F7821F6FDF7FFFFFFFFFFFFF9F9F9F1F0F0A5A8ACDCC8B0FFF0D0F3
          DABBE4CBB2DBC8BE008A0000A60A79CB83FDFDFFC5F0D600A10C009300148A00
          0A5E00A4C7A3FFFFFFFFFFFFFFFFFFFFFFFFAEAEADECD7C5FFEBD3FFE5CAFFF7
          EB7BAE661CB7376FC174FFF3FFFFF8FFFFFFFFB4EBC509A81F0093001779003C
          8433FFFFFFFFFFFFFFFFFFF6F7F79E9B97FFFAE8FFE9D7FFE6CFFFFBFB379A2F
          53CE6EADC3A3CFDAC916AB219AD89FFFFFFFB6EAC500A40C118600147006FFFF
          FFFFFFFFFFFFFFB9B9BAD0CBC3FFFCEFFFEFE2FFECDBFFFDFF52A14261DC8C15
          B13514B33515B93F00A7169DD9A4FFFFFFC3F4D718A01E207F16FFFFFFFFFFFF
          F0F0F0AEAEADF9FBF8FFF6EEFFF4EBFFF1E6FFF7F3C2D5B12AB74853DB8425C8
          592CC55920BB4800AA1D9DD59DF9FFFF47AB5071B06EFFFFFFF6F6F6B8B8B8E8
          E7E7FFFFFFFFFFFDFFFDFAFFF8F2FFF3E9FFFFFF3CAD3E5BD1824FD8832EC960
          21BE4C17B53713AA2039B242148F15E6F0E5FFFFFFE6E6E6C8C8C8DDDDDDDFDF
          DFDCDEDEEAEAEAFEFDFCFFFFFEFFFFFFBFCCB74BAE543AC05945D17534CA621B
          BC41009D0B029106A6D3A5FFFFFFFFFFFFFEFEFEFAFAFAF3F3F3F2F2F2F0F0F0
          ECECECE4E5E5DFE0E1DCDCDCEBE6E9F3F9F1C4E5C49CD5A188CE8F89CE8EABD9
          ADE9F2E7FFFFFFFFFFFF}
        OnClick = SpeedButton2Click
      end
      object SpeedButton1: TSpeedButton
        Left = 264
        Top = 1
        Width = 24
        Height = 22
        Hint = #1575#1585#1587#1575#1604' '#1576#1607' '#1608#1585#1583
        Anchors = [akTop, akRight]
        Flat = True
        Glyph.Data = {
          AA030000424DAA03000000000000360000002800000011000000110000000100
          1800000000007403000000000000000000000000000000000000A9542AA24B19
          A24815A449159E4715964513934210934211853D0F853C0E7D390D76350E7032
          0B71320B6A2F086A310D4E210400C36A43BD7A5EA1715B9E6E599C6E599C6E59
          986B56946A519066529065518A604C875D4B865D49875C49865E4B87543A6A31
          0D00C26C43BB8670FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFDFFFCFA
          FFF8F6FFF5F3FFF5F2FFF1EDFFFFFE865E4A6B2F0800C2734BBF8C77FFFFFFFF
          FFFFFFFFFFFFFFFFFFFBFAFAF4F3FFFFFFFFFFFFFFFCFBF8EBE8F5E6E1F4E6E1
          FFF1ED865D4970320A00C57650C08D77FFFFFFE4D3CCA16E56946246E1D3CBFE
          FAF8905B3B816246735A3AF9EDEAF9EBE8F5E6E1FFF5F2875D4B71330D00C87B
          57BF8D78FFFFFFDAC7C0C3795BBA5828996B50FEFDFD9D43189348227D360CA5
          9A89FFF7F5F7E8E6FFF5F2885F4A78370D00CC8160C69682FFFFFFDDCCC4C988
          6DD579509F5026D4C3B9AF6341B95A30AA4E24694420F2E9E5F9F0EDFFF8F68C
          624E823B1000D18665C69783FFFFFFDFCDC6D29478D3835FC5724A945F42B976
          5CC06239C35F337E370CAEA090FFFAFAFFFCF99367528A3E1100D58A6BC99C88
          FFFFFFE1D1C9DA9A80B4735AD99377B86D4AC47C5EC96D41B4623BCE6C406843
          1FF1EAE8FFFFFF9467548C411300DA9070CBA08CFFFFFFE9D2CAE2A892B0735A
          B7846DD89479CD7B58CB724C955B40B6705290481CA99B89FFFFFF986D579748
          1900DD9271CA9F8BFFFFFFEED7CEE4AB95B07258DACDC6D39E86D68F70D07B54
          AA6B4FC8B1A6BE6A436C4925FFFFFFA0725F9A4A1A00E19A7CCDA492FFFFFFD8
          A591E8B39EC1846BDDCAC0D6BAAEDB9D83D08564B27459F3F6F5B5765DA2542D
          AFAD9FA274619C4C1C00E29B7ED2AF9FEBC8BBD68A6CE5AD96E3A68CAC674CE9
          DBD5C5886DD78F72BC7A60E9C6B7C77454D18261C16C4398614AA6512300E59D
          80D0AA99FDF5F2F2DDD5F0DAD1F0D8CFF1D6CDFDF9F8F3E5DEECCFC3EED1C5F6
          ECE6E9CABDE9CBBEF0D2C7A4705AA54F2100E8A082CEA897FFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFAA
          7A66A6502000EBA587D0A997CEA997CEA896CFA997CCA492CB9E8ACB9E8BC596
          82C59682C49581BF8C76BF8B75C08A73B9826CBC7B60A8552300E1916FEBA487
          E7A082E69F82E39C7FE39C7EDB9578DA9277DA8E6DD58868D08362CF805CCA79
          54C9744EC36F47C46F46AA5B3000}
        OnClick = SpeedButton1Click
      end
    end
  end
  object Panel14: TPanel [2]
    Left = 0
    Top = 0
    Width = 1260
    Height = 34
    Align = alTop
    Color = 16771818
    TabOrder = 2
    DesignSize = (
      1260
      34)
    object lblCompanyName: TLabel
      Left = 424
      Top = 9
      Width = 74
      Height = 19
      Anchors = [akTop, akRight]
      Caption = '    '#1606#1575#1605' '#1588#1585#1705#1578
      Font.Charset = ARABIC_CHARSET
      Font.Color = clPurple
      Font.Height = -17
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object pgM: TPageControl
      Left = 504
      Top = 1
      Width = 755
      Height = 32
      ActivePage = TabCustomer
      Align = alRight
      BiDiMode = bdRightToLeft
      Font.Charset = ARABIC_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      MultiLine = True
      ParentBiDiMode = False
      ParentFont = False
      ParentShowHint = False
      ShowHint = True
      TabHeight = 30
      TabOrder = 0
      TabWidth = 250
      OnChange = pgcMainChange
      object TabContract: TTabSheet
        Caption = #1602#1600#1600#1600#1585#1575#1585#1583#1575#1583#1607#1600#1600#1600#1600#1575
        OnShow = TabContractShow
      end
      object TabEghdam: TTabSheet
        Caption = #1575#1602#1600#1600#1583#1575#1605#1600#1600#1600#1600#1575#1578' '#1585#1608#1586#1575#1606#1600#1600#1600#1600#1607
        ImageIndex = 1
        OnShow = TabEghdamShow
      end
      object TabCustomer: TTabSheet
        Caption = #1605#1600#1600#1588#1600#1578#1600#1600#1600#1585#1610#1600#1600#1575#1606
        ImageIndex = 2
        OnShow = TabCustomerShow
      end
    end
  end
  inherited DSForm: TDataSource
    Left = 296
    Top = 285
  end
  inherited ActionList: TActionList
    Left = 523
    Top = 356
    object acSendSMSForCustomerLock: TAction
      Caption = #1575#1585#1587#1575#1604' '#1662#1610#1575#1605#1705' '#1576#1575#1576#1578' '#1602#1601#1604' '#1605#1588#1578#1585#1610#1575#1606
      OnExecute = acSendSMSForCustomerLockExecute
    end
  end
  object ImageList: TImageList
    BlendColor = clBtnFace
    BkColor = clWhite
    Height = 24
    Width = 24
    Left = 523
    Top = 408
    Bitmap = {
      494C010112001300040018001800FFFFFF00FF10FFFFFFFFFFFFFFFF424D3600
      00000000000036000000280000006000000078000000010020000000000000B4
      000000000000000000000000000000000000FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00844A00005A390000080808008C94
      9400D6D6D600BDBDBD00C6CECE00C6CED600B5ADB50010210800395A31003152
      31005A735A00E7EFE700FFFFFF00FFFFFF00F7F7F700F7F7F700F7F7EF00EFEF
      EF00E7E7E700E7E7E700E7DEDE00DEDEDE00E7DEDE00ADC6AD0042843900297B
      2900217B2100005200004A4A4A00FFFFFF00C6CECE00C6CED600C6CECE00BDBD
      BD00CECEBD007373D6000000FF00000094000000730000008400000084000000
      7B0000007B0000007B0000008C0000004200FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00845200005A310000181818006363
      6B0084848400D6D6D600BDBDBD00C6CECE00B5ADB50010210800395A3100395A
      3900395A390052735200638463006B8C6B007B9C7300849C84008CA584009CB5
      9C009CB594008CAD8C007BA57B006BA56B00639C63004A8C4200318431002984
      2900187B1800005200004A4A4A00FFFFFF00C6CED600C6CECE00C6CED600C6CE
      CE00BDBDBD00D6D6B5007373DE000000FF00000094000000730000007B000000
      7B0000007B0000008C000000420052524A00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00844A000021180000ADC6CE00FFFF
      FF005A5A630084848400D6D6D600BDBDBD00B5ADB50010210800395A3100395A
      3900426342004A6B4A00527B520063845A006B8C6B007B947300849C7B0094AD
      94008CAD8C0084A57B0073A57300639C6300528C52004A8C4200398439002984
      2900187B1800005200004A4A4A00FFFFFF00C6CECE00C6CED600C6CECE00C6CE
      D600C6CECE00BDBDC600D6D6B5007373D6000808F70000008C0000007B000000
      7B0000008C0000004A004A4A42008C8C8C00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00312918005AADB500ADF7F700DEF7
      F700FFFFFF007373730084848400C6C6C600B5ADB50010210800395A3100395A
      390042634200527352005A7B5A006B8C6B007B9C7B0084AD840094B58C00A5C6
      A5009CBD9C0094BD940084B5840073AD6B0063A5630052945200398439002984
      2900187B1800005200004A4A4A00FFFFFF00C6CED600C6CECE00C6CED600C6CE
      CE00C6CED600C6CECE00BDBDC600D6D6B5004242EF000000940000007B000000
      7B0000008C0000004200313129008C8C8C00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00C6C6C600CEDED600ADBDBD00BDD6DE00B5CEDE00C6D6E700BDC6
      D600C6BDD600D6C6DE00FFEFFF00A59CA500636B6B00CEDEDE00B5DED600ADD6
      CE00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00BDCE
      D600B5C6D600C6CEDE00DEEFF700A5ADB50063636B00CED6E700CED6E700FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00315A5A0042BDC60063BDBD00A5E7
      E700DEFFFF0073737B0084848400C6C6C600B5ADB50010210800395A3100395A
      3900426B4200426342004A734A004A6B42004A5A42004A634A0052634A005A73
      5A00526B52004A634A0042634200315A310029522900316B3100428C4200297B
      2900217B2100005200004A4A4A00FFFFFF00C6CECE00C6CED600C6CECE00C6CE
      D600C6CECE00C6CED600BDBDC600CECEB5004242EF000000940000007B000000
      7B0000007B0000007B000000100031312900FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00D6D6D600BDCEC600CEDEDE00BDD6DE00C6DEEF00ADC6D600B5C6DE00C6CE
      E700D6D6EF00B5B5CE0063637300848494002931390029393900B5CECE00B5CE
      CE00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00BDCED600BDC6D600BDCE
      DE00CEDEE700B5BDCE007373840052738C00182131004A4A4A00A5ADB500BDCE
      D600FFFFFF00FFFFFF00FFFFFF00FFFFFF007B634A004A423100525A4200399C
      9C00294A4A008C848400D6D6D600BDBDBD00B5ADB50010210800395A3100395A
      3900395A39004263390031523100081008002118210021212100312931003931
      39004242420052525200635A63006B6B6B00847B84004A524A00216321003184
      3100187B1800005200004A4A4A00FFFFFF00C6CED600C6CECE00C6CED600C6CE
      CE00C6CED600BDBDBD00CECEB5008C8CDE000808BD0000007300000084000000
      9C0000008C0000007B0000007B0000000000FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00A5BDC600C6D6DE00CEDEE700A5B5C600ADBDD600BDCEEF00C6DEF7009CBD
      D600527B940039637B007BA5BD007394A500000810001018210063636B00847B
      8400FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00BDCED600BDC6D600BDCEDE00CEDEE700B5C6
      CE00737B8C0042526B005294B50073A5C600101021002129310052525200848C
      8C00FFFFFF00FFFFFF00FFFFFF00FFFFFF0094632100946321009C6B31001810
      0000736B7300DED6D600BDBDBD00C6CED600B5ADB50010210800395A3100395A
      3900315229005273520039523900181018004A524A005A5A5A006B6B6B008C84
      8C006B8C6B00428C4200398C39009CBD9C00FFFFFF007B7B7B00084208003194
      3100187B1800005200004A4A4A00FFFFFF00C6CECE00C6CED600C6CECE00C6CE
      D600C6CECE00BDBDBD00BDBDBD004A4ADE000000940000008400000063001010
      94000000FF000000940000007B0000002900FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00CEE7F700A5BDCE009CADC600BDCEEF00CEE7FF0094ADCE005A84A5002963
      8400397B9C0063A5BD00A5EFFF00639CAD0000213100212939009C8C9C00A594
      9C00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00BDCED600BDCEDE00CEDEE700B5C6CE00737B8C00425A
      6B004A84A50073C6EF0084DEFF00528CA500081829003139420073737B00A5AD
      B500FFFFFF00FFFFFF00FFFFFF00FFFFFF008C5A180084521000946B31003121
      18006B6B7300D6D6D600BDBDBD00C6CECE00B5ADB50010210800395A3100395A
      3900315231004A734A0039523900181018004242420052525200636363007B73
      7B00638463006B9C6B004A8C4A006B9C6B00F7EFF70073737300104A1000318C
      3100187B1800005200004A4A4A00FFFFFF00C6CED600C6CECE00C6CED600C6CE
      CE00BDBDBD00C6C6BD00A5A5D6000000D60000006B0000007B00101029009C9C
      7B007373DE000000FF000000940000008400FFFFFF00FFFFFF00FFFFFF00FFFF
      FF009CB5CE00BDD6F700BDD6F700ADC6E700637BA500295273004A84A50073BD
      DE008CE7FF007BD6EF0073C6E700397B8C0031526B0031395200B5A5BD00F7DE
      F700FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00BDCED600C6D6E700B5C6CE00737B8C00425A6B004A84A50073C6
      F70073D6FF0063CEFF0084C6F700217B8C00085A6B0039394A00B5C6CE00C6D6
      E700FFFFFF00FFFFFF00FFFFFF00FFFFFF008C5A100094631800845210001008
      00007B848400CECECE00BDBDBD00C6CED600B5ADB50010210800395A3100395A
      3900315231004A734A003952390018101800424A420052525200636363007B73
      7B006B8C6B0073A56B0052945200739C7300F7F7F7007373730010421000318C
      3100187B1800005200004A4A4A00FFFFFF00C6CECE00C6CED600C6CECE00C6CE
      D600BDBDBD00D6D6BD002929DE000000840000008C0000005A0031312900BDBD
      C600D6D6BD007373D6000000FF0000009400FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00B5C6EF00BDD6F700637BA500395A84004273940084C6E700A5EFFF0073C6
      EF007BD6F70073C6E7005AADC6005294AD0052738C0031425A008C849C00E7DE
      EF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00BDC6D600C6D6DE008C94A50039526B004A84AD0073C6F70073D6FF0063CE
      FF0063C6FF006BD6FF006B9CBD0008A5AD00106B7B002939630084949C00C6D6
      E700FFFFFF00FFFFFF00FFFFFF00FFFFFF00945A100063390800100000007373
      7300CECECE00BDBDBD00C6CED600C6CECE00B5ADB50010210800395A3100395A
      3900315231004A734A003952390018101800424A420052525200636363007B73
      7B006B8C6B0073A56B0052945200739C7300F7EFF7007373730010421000318C
      3100187B1800005200004A4A4A00FFFFFF00C6CED600C6CECE00C6CED600BDBD
      BD00C6C6BD008C8CD6000000F7000000940000006B0000000800ADADAD00BDBD
      C600BDBDBD00D6D6B5007373DE000000FF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00CED6FF009CADD6004A6B8C0084BDDE0094D6FF007BCEEF0073CEEF006BBD
      DE006BBDDE00B5F7FF004A7B9C00ADD6F700526B84001831420094A5BD00BDD6
      E700FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00BDCED600C6CEDE004A5A6B0073C6EF0073D6FF0063CEFF0063C6FF0063C6
      FF0063C6F70084DEFF005A7B940000CECE00186B8400213963008C94A500CED6
      E700FFFFFF00FFFFFF00FFFFFF00FFFFFF0029180000524A4A00848C8C00CECE
      CE00BDBDBD00C6CED600C6CECE00C6CED600B5ADB50010211000395A3100395A
      3900395A3100527B520039523900181818004A4A4A005A5A5A006B6B6B00847B
      8400739473007BAD7300529452007BA57B00FFFFFF007B7B7B00104A1000398C
      3900217B2100005A00004A4A4A00FFFFFF00C6CECE00C6CED600C6CECE00BDBD
      BD00C6C6BD008C8CCE006363DE000000F7000000CE0073738C00C6C6C600BDBD
      BD00C6CECE00BDBDBD00D6D6B5007373DE00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00BDC6E7009CADCE00527B9C009CD6F70094DEF7006BBDDE007BCEEF0094DE
      FF00A5DEFF007BA5C6005A7B9C00DEF7FF0039526B005273840039637300ADD6
      E700FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00D6E7EF00949CAD0063849C007BD6FF0063C6FF0063C6FF0063C6F7007BD6
      FF0094E7FF0094B5BD0029848C0018FFFF0010526B00315A84005A6B7B00C6CE
      DE00FFFFFF00FFFFFF00FFFFFF00FFFFFF00A5A5AD00BDBDBD00D6D6CE00BDBD
      BD00C6C6C600C6CECE00C6CED600C6CECE00ADA5AD000010000021311800294A
      290021422100395A3100213921000000000031313100393939004A4A4A005A5A
      5A006B6B6B007B847B00848C8400949C9400CECECE0063636300081008002973
      2900106B1000004A00005A5A5A00FFFFFF00C6CED600C6CECE00C6CED600C6CE
      CE00BDBDBD00CECEBD00CECEBD00A5A5CE00A5A5D600C6C6CE00BDBDBD00C6CE
      CE00C6CED600C6CECE00BDBDC600D6D6B500FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00CEE7FF005A73940084ADC6009CD6EF007BBDD6009CE7F700A5DEEF0084B5
      CE005A7B94008494AD00EFF7FF00E7F7FF00294252004A737B0031636B0094CE
      D600FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00D6DEEF00737B8C00639CC60073D6FF0063C6F7007BD6FF0094E7FF008CBD
      C6006B636B006B42420031EFEF0029FFFF0010526300316B8C004A5A6B00C6CE
      DE00FFFFFF00FFFFFF00FFFFFF00FFFFFF00CEC6C600C6BDBD00BDBDBD00C6CE
      D600C6CECE00C6CED600C6CECE00C6CED600CECECE005A5A5A00D6D6D6009494
      9400636363004A4A4A004A4A4A004A4A4A004A4A4A004A4A4A004A4A4A004A4A
      4A00524A5200524A52005252520052525200525252004A4A4A00C6C6C6009494
      94007B7B7B00848C8400FFFFFF00FFFFFF00C6CECE00C6CED600C6CECE00C6CE
      D600C6CECE00BDBDBD00BDBDBD00C6C6BD00C6C6BD00BDBDBD00C6CECE00C6CE
      D600C6CECE00C6CED600C6CECE00BDBDBD00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF009CC6D600527B8C0084ADBD00BDEFFF00B5DEEF008CADC6006B849C00849C
      AD00DEEFFF00DEE7FF00EFF7FF00EFFFFF004A6B7300426B7300396B730094CE
      CE00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00C6CEDE004A5A73007BCEF7007BD6FF009CE7FF0094BDC60073636300734A
      4A00946B6B006BD6D60039FFFF0039FFFF000852630021638C004A637B00B5BD
      CE00FFFFFF00FFFFFF00FFFFFF00FFFFFF00BDBDBD00BDBDBD00C6CED600C6CE
      CE00C6CED600C6CECE00C6CED600C6CECE00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00C6CED600C6CECE00C6CED600C6CE
      CE00C6CED600C6CECE00C6CED600BDBDBD00BDBDBD00C6CECE00C6CED600C6CE
      CE00C6CED600C6CECE00C6CED600C6CECE00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF0042848C006BA5AD00BDE7EF009CB5C6005A637B009C9CAD00E7E7F700EFEF
      FF00F7FFFF00EFFFFF00DEF7FF006B8C9400082939007394A500395A63006B8C
      9400FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF006B6B7B007B94AD00ADE7FF0094B5BD0073636B007B4A4A00AD5A63007BDE
      DE009CA5A50052FFFF0039EFEF0021949C00103952003994C600316B8400848C
      9C00FFFFFF00FFFFFF00FFFFFF00FFFFFF00BDCEDE00BDCEDE00BDCEDE00BDCE
      DE00BDCEDE00BDCEDE00BDCEDE00BDCEDE00BDCEDE00BDCEDE00BDCEDE00BDCE
      DE00BDCEDE00BDCEDE00BDCEDE00BDCEDE00BDCEDE00BDCEDE00BDCEDE00BDCE
      D600BDCED600BDCED600BDCED600BDCED600BDCED600BDCED600BDCED600BDCE
      D600BDCED600BDCEDE00BDCEDE00BDCEDE00BDCEDE00BDCEDE00BDCEDE00BDCE
      DE00BDCEDE00BDCEDE00CEDEE700CEDEE700CEDEE700CEDEE700CEDEE700CEDE
      E700CEDEE700CEDEE700CEDEE700CEDEE700FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00104A4A0042737B0052737B008C9CA500F7F7FF00FFFFFF00F7EFFF00FFFF
      FF00DEE7F7008C9CAD0018394A004A737B00739CA5008CADB5006B849400738C
      9C00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF0039424A007B848C006B737B00527B8400B5636300BD848C009CB5BD006BFF
      FF005AEFEF0031949C00184A6300315A8400428CBD0042A5D600316B8C00848C
      9C00FFFFFF00FFFFFF00FFFFFF00FFFFFF00B5C6CE00737B8C00737B8C00737B
      8C00737B8C00737B8C00737B8C00737B8C00737B8C00737B8C00737B8C00425A
      6B00425A6B00425A6B00425A6B00425A6B00425A6B00425A6B00425A6B00425A
      6B004A84A5004A84A5004A84A5004A84A5004A84A5004A84A5004A84A5004A84
      A5004A84A5004A84A50073C6EF0073C6EF0073C6EF0073C6EF0073C6EF0073C6
      EF0073C6EF0073C6EF0073C6EF0084DEFF0084DEFF0084DEFF0084DEFF0084DE
      FF0084DEFF0084DEFF0084DEFF0084DEFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF0094BDC6007B9CA50063737B00ADADBD00FFF7FF00FFFFFF00F7E7FF008484
      940042526300395A6B0084A5B50084ADBD008CADBD008CA5BD0042526300949C
      B500FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00A5B5BD008C9CA500737384006BADAD00CEADAD0094F7F70073F7F7004294
      9400214A630042638C005A9CCE004AADDE0042A5D6005AA5CE004A637B0094A5
      AD00FFFFFF00FFFFFF00FFFFFF00FFFFFF00528CA500528CA500081829000818
      2900081829000818290008182900081829000818290008182900081829000818
      2900313942003139420031394200313942003139420031394200313942003139
      42003139420073737B0073737B0073737B0073737B0073737B0073737B007373
      7B0073737B0073737B0073737B00A5ADB500A5ADB500A5ADB500A5ADB500A5AD
      B500A5ADB500A5ADB500A5ADB500A5ADB500BDCEDE00BDCEDE00BDCEDE00BDCE
      DE00BDCEDE00BDCEDE00BDCEDE00BDCEDE00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00CED6DE00DEE7EF00949CA500C6C6D600EFEFFF007B7B8C004A5263005A6B
      7B00849CAD006B8C9C0042637B0052738C00738CA50052638400848CAD00C6CE
      EF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00D6E7F7008C8C9C006BB5BD0094EFEF004A949C00294A6300426B
      8C006394BD0063849C005A737B005A7B9400527B9400636B7B009CA5B500C6CE
      DE00FFFFFF00FFFFFF00FFFFFF00FFFFFF00BDCEDE00BDCEDE00BDCEDE00BDCE
      D600BDCED600BDCED600BDCED600BDCED600BDCED600BDCED600BDCED600BDCE
      D600BDCED600BDCEDE00BDCEDE00BDCEDE00BDCEDE00BDCEDE00BDCEDE00BDCE
      DE00BDCEDE00BDCEDE00CEDEE700CEDEE700CEDEE700CEDEE700CEDEE700CEDE
      E700CEDEE700CEDEE700CEDEE700CEDEE700B5C6CE00B5C6CE00B5C6CE00B5C6
      CE00B5C6CE00B5C6CE00B5C6CE00B5C6CE00B5C6CE00737B8C00737B8C00737B
      8C00737B8C00737B8C00737B8C00737B8C00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00D6B5C600F7DEEF008C8494005A63730039526300315A63007B9CAD005A84
      9400426B7B00849CB500C6D6F7007B84A500949CBD00C6CEF700C6D6FF00BDC6
      EF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00B5C6D600C6D6E700848C9400426B6B0039525A00394A63006B9CBD005A84
      9C00636B7B00949CAD00C6CEDE00949CA500949CA500C6D6DE00C6D6E700BDCE
      D600FFFFFF00FFFFFF00FFFFFF00FFFFFF00425A6B00425A6B00425A6B00425A
      6B004A84A5004A84A5004A84A5004A84A5004A84A5004A84A5004A84A5004A84
      A5004A84A5004A84A50073C6EF0073C6EF0073C6EF0073C6EF0073C6EF0073C6
      EF0073C6EF0073C6EF0073C6EF0084DEFF0084DEFF0084DEFF0084DEFF0084DE
      FF0084DEFF0084DEFF0084DEFF0084DEFF0084DEFF00528CA500528CA500528C
      A500528CA500528CA500528CA500528CA500528CA500528CA500081829000818
      290008182900081829000818290008182900FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00E7B5CE00FFE7FF00AD9CAD00A5ADBD007BA5AD00215A6300528C94006BA5
      B500ADD6EF00ADC6E700C6D6F700BDC6E700D6DEFF00ADB5DE00B5BDEF00ADBD
      E700FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00BDCED600C6CEDE00ADB5C6009CA5B5008C949C004A5A630073849400949C
      AD00C6CEDE00C6D6E700BDCED600C6D6E700C6D6E700BDCED600BDCED600FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF003139420031394200313942003139
      42003139420073737B0073737B0073737B0073737B0073737B0073737B007373
      7B0073737B0073737B0073737B00A5ADB500A5ADB500A5ADB500A5ADB500A5AD
      B500A5ADB500A5ADB500A5ADB500A5ADB500BDCEDE00BDCEDE00BDCEDE00BDCE
      DE00BDCEDE00BDCEDE00BDCEDE00BDCEDE00BDCEDE00BDCEDE00BDCEDE00BDCE
      DE00BDCEDE00BDCEDE00BDCEDE00BDCEDE00BDCEDE00BDCEDE00BDCEDE00BDCE
      D600BDCED600BDCED600BDCED600BDCED600FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00BDCEDE00BDCEDE00BDCEDE00BDCE
      DE00BDCEDE00BDCEDE00CEDEE700CEDEE700CEDEE700CEDEE700CEDEE700CEDE
      E700CEDEE700CEDEE700CEDEE700CEDEE700B5C6CE00B5C6CE00B5C6CE00B5C6
      CE00B5C6CE00B5C6CE00B5C6CE00B5C6CE00B5C6CE00737B8C00737B8C00737B
      8C00737B8C00737B8C00737B8C00737B8C00737B8C00737B8C00737B8C00425A
      6B00425A6B00425A6B00425A6B00425A6B00425A6B00425A6B00425A6B00425A
      6B004A84A5004A84A5004A84A5004A84A500FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF0073C6EF0073C6EF0073C6EF0073C6
      EF0073C6EF0073C6EF0073C6EF0084DEFF0084DEFF0084DEFF0084DEFF0084DE
      FF0084DEFF0084DEFF0084DEFF0084DEFF0084DEFF00528CA500528CA500528C
      A500528CA500528CA500528CA500528CA500528CA500528CA500081829000818
      2900081829000818290008182900081829000818290008182900081829000818
      2900313942003139420031394200313942003139420031394200313942003139
      42003139420073737B0073737B0073737B00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00A5ADB500A5ADB500A5ADB500A5AD
      B500A5ADB500A5ADB500A5ADB500A5ADB500BDCEDE00BDCEDE00BDCEDE00BDCE
      DE00BDCEDE00BDCEDE00BDCEDE00BDCEDE00BDCEDE00BDCEDE00BDCEDE00BDCE
      DE00BDCEDE00BDCEDE00BDCEDE00BDCEDE00BDCEDE00BDCEDE00BDCEDE00BDCE
      D600BDCED600BDCED600BDCED600BDCED600BDCED600BDCED600BDCED600BDCE
      D600BDCED600BDCEDE00BDCEDE00BDCEDE00BDCEDE00BDCEDE00BDCEDE00BDCE
      DE00BDCEDE00BDCEDE00CEDEE700CEDEE700FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00B5C6CE00B5C6CE00B5C6CE00B5C6
      CE00B5C6CE00B5C6CE00B5C6CE00B5C6CE00B5C6CE00737B8C00737B8C00737B
      8C00737B8C00737B8C00737B8C00737B8C00737B8C00737B8C00737B8C00425A
      6B00425A6B00425A6B00425A6B00425A6B00425A6B00425A6B00425A6B00425A
      6B004A84A5004A84A5004A84A5004A84A5004A84A5004A84A5004A84A5004A84
      A5004A84A5004A84A50073C6EF0073C6EF0073C6EF0073C6EF0073C6EF0073C6
      EF0073C6EF0073C6EF0073C6EF0084DEFF00FFFFFF00FFFFFF00FFFFFF00BDBD
      BD00FFFFFF00FFFFFF00FFFFFF00BDBDBD00FFFFFF00FFFFFF00BDBDBD00BDBD
      BD00FFFFFF00FFFFFF000000000000000000FFFFFF00FFFFFF00BDBDBD00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00C6C6C600C6C6
      C600A59C9C007384840073848400737B7B00737B7B00737B7B0073737B006B73
      73006B7373006B737300737B7B00737B7B0073848400738484007B8484007B8C
      8C008C949400C6BDC600C6C6C600FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00BDBDBD00FFFFFF00FFFF
      FF00BDBDBD00BDBDBD00FFFFFF00FFFFFF00BDBDBD00BDBDBD00FFFFFF00FFFF
      FF00BDBDBD00FFFFFF0000000000FFFF000000000000FFFFFF00FFFFFF00BDBD
      BD00BDBDBD00FFFFFF00FFFFFF00FFFFFF00FFFFFF00C6C6C600C6CECE00BDB5
      B50063293100422929004A2929004A3131005239390052393900524242005A4A
      4A005A4A4A005A4A4A00524242004A3139004A3131004A212900421821003918
      180008000000ADADAD00CECECE00C6C6C600C6C6C600C6C6C600C6C6C600C6C6
      C600C6C6C600FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00C6C6
      C600C6C6C600C6C6C600C6C6C600C6C6C600FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00BDBDBD00FFFFFF00FFFFFF00FFFF
      FF00BDBDBD00FFFFFF00FFFFFF00BDBDBD00BDBDBD00FFFFFF00FFFFFF00BDBD
      BD00BDBDBD00FFFFFF0000000000FFFF00007B7B00007B7B000000000000BDBD
      BD00FFFFFF00FFFFFF00BDBDBD00BDBDBD00FFFFFF00C6C6C600CECECE00B5AD
      B5008C424A00D6737B00D67B8400DE949400E7A5A500EFBDBD00FFCECE00FFDE
      DE00FFE7E700FFD6D600F7BDBD00E7A5A500DE8C9400D6737B00C65A6300A542
      4A0021080800A5ADAD00CECECE00C6C6C600CECEC600CECECE00CECECE00CECE
      CE00CECECE00C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6
      C600C6C6C600CECEC600CECEC600C6C6C600C6C6C600CECEC600CECEC600CECE
      CE00CECECE00CECECE00CECECE00CECEC600FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00BDBDBD00BDBDBD00FFFF
      FF00FFFFFF00BDBDBD00BDBDBD00FFFFFF00FFFFFF00BDBDBD00FFFFFF00FFFF
      FF00FFFFFF00BDBDBD0000000000FFFF00007B7B00007B7B00007B7B0000FFFF
      FF00BDBDBD00BDBDBD00FFFFFF00FFFFFF00FFFFFF00C6C6C600CECECE00B5AD
      AD007B313900B5636300BD636B00C67B7B00CE8C8C00D6A5A500E7B5B500EFC6
      C600EFCECE00E7C6C600DEA5AD00D6949400CE7B7B00BD636B00B54A52009431
      390010000000A5ADAD00CECECE00C6C6C6009C9C9C0018181800211818001818
      180031313100636B6B0063636300636363006363630063636300636363006363
      63005A6363005A5A5A005A635A005A6363005A5A5A005A5A5A00636363004A42
      42001818180021212100181010008C8C8C00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00BDBDBD00FFFFFF00FFFFFF00BDBD
      BD00FFFFFF00FFFFFF00FFFFFF00BDBDBD00FFFFFF00FFFFFF00BDBDBD00BDBD
      BD00FFFFFF00FFFFFF0000000000FFFF00007B7B00007B7B00007B7B00000000
      0000FFFFFF00FFFFFF00BDBDBD00FFFFFF00FFFFFF00C6C6C600CECECE00BDB5
      B5009C737300D6A5A500DEA5AD00DEB5B500DEB5BD00E7C6C600E7CECE00E7D6
      D600E7D6D600DEC6CE00DEBDBD00CEA5AD00C6949C00BD848C00B5737B009C6B
      6B0042313100ADADAD00CECECE00C6C6C600848C8C00291010007B2931005A18
      18008C5A6300C6CECE00BDB5BD00BDBDBD00BDBDBD00B5B5B500B5B5B500B5B5
      B500ADADAD00ADADAD00ADADAD00A5A5A500A5A5A500A59C9C00ADADAD008C73
      73006318210073293100210000007B7B7B00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF009CCED600B5DEEF008CBDCE00A5C6DE009CC6DE00B5CEEF00ADCE
      EF00A5BDDE00B5D6EF00D6EFFF0094ADC6004A637300B5CEDE00CEE7EF00ADCE
      CE00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF0000000000BDBDBD00FFFF
      FF00FFFFFF00BDBDBD0000000000FFFF00007B7B00007B7B00007B7B00007B7B
      0000000000007B7B7B00FFFFFF00FFFFFF00FFFFFF00FFFFFF00CEC6C600BDBD
      BD00CED6D600FFFFFF00FFFFFF00FFFFFF00F7FFFF00EFF7F700E7EFEF00DEE7
      E700D6DEDE00D6D6D600CECECE00C6CECE00BDC6C600BDC6C600ADBDB500B5BD
      BD0084848400B5B5B500CECECE00C6C6C600849494005A393900C65A6300AD42
      4A00C68C8C00E7EFEF00DEDEDE00DEDEDE00DEDEDE00D6D6D600D6D6D600D6D6
      D600CECECE00D6CECE00CEC6CE009C9C9C007B7B8400A5A5A500C6CECE00BD9C
      9C00AD424A00B55A5A004A1818007B7B7B00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00B5DEE7009CC6D600A5D6DE00A5CEE700BDE7FF00A5CEE700A5C6E7009CC6
      E700BDDEFF009CB5D6004A637B006384940029425200314A52008CA5B500BDD6
      DE00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF0000000000FFFFFF00BDBD
      BD00BDBDBD00FFFFFF0000000000FFFF00007B7B00007B7B00007B7B00007B7B
      0000000000007B7B7B00FFFFFF00FFFFFF00FFFFFF00FFFFFF00CEC6CE00BDBD
      BD00C6C6C600FFFFFF00FFF7F700FFFFFF00FFFFFF00F7F7F700EFEFEF00EFEF
      EF00E7E7E700DEDEDE00D6D6D600CECECE00CEC6C600C6C6C600BDBDBD00BDBD
      BD007B7B7B00B5B5B500CECECE00C6C6C60084948C0063424200D67B7B00BD5A
      6300D69C9C00EFF7F700E7E7E700E7E7E700E7E7E700EFE7E700DEDEDE00DEDE
      DE00D6D6D600D6D6D600ADADAD0052525A00424A42008C8C8C00C6CECE00C6A5
      A500BD5A6300CE6B730052212100737B7B00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF008CB5C600ADD6E700B5E7F7008CBDCE0094C6DE00A5CEEF00ADD6F7008CB5
      D6005284A5004A7394007BA5BD005A849C00294A630018394A00183142007B9C
      A500FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00BDBDBD00FFFFFF0000000000000000000000
      0000000000000000000000000000FFFF00007B7B00007B7B00007B7B00007B7B
      0000000000007B7B7B00FFFFFF00FFFFFF00FFFFFF00FFFFFF00CEC6CE00BDBD
      BD00C6C6C600FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00F7F7F700EFEF
      EF00EFEFEF00E7E7E700DEDEDE00D6D6D600CECECE00C6C6C600C6C6C600C6C6
      C60084848400B5B5B500CECECE00C6C6C600848C8C00634A4A00DE8C9400C673
      7300D6A5A500EFF7F700EFE7E700E7E7E700E7E7E700B5ADB500D6D6D600DEDE
      DE00D6D6DE00BDB5AD004A4A84000000630031316300B5B5AD00CECECE00C6AD
      AD00C6737B00D6848C005A293100737B7B00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00BDE7F7009CC6DE008CB5CE00ADD6EF00ADDEFF0073ADCE005284AD00396B
      9400427B9C009CCEEF00A5D6F70052849C00527B940018394A006384940084A5
      B500FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF0000000000BDBDBD000000000000FFFF0000FF
      FF0000FFFF0000FFFF0000000000FFFF00007B7B00007B7B00007B7B00007B7B
      0000000000007B7B7B00FFFFFF00FFFFFF00FFFFFF00FFFFFF00CEC6CE00BDBD
      BD00C6C6C600FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00F7F7
      F700EFEFEF00EFEFEF00E7E7E700DEDEDE00D6D6D600CECECE00C6C6CE00CECE
      CE0084848400B5B5B500CECECE00C6C6C600848C8C0063525200E7A5A500CE84
      8C00DEB5B500EFF7F700E7E7EF00EFF7EF00A5A5A50073737B0094949400DEDE
      DE00BDB5B5005A736B0000739C000021DE00636BB500D6D6CE00CECED600CEB5
      B500D68C8C00DE9C9C005A393900737B7B00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00A5C6DE00B5DEF700A5CEE70094C6DE00528CAD00216384004A8CB50073BD
      E7008CD6FF00A5E7FF007BB5D600184A6B006B9CB50018425A008CB5C600B5D6
      EF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF007B7B0000000000000000000000FFFF0000FF
      FF0000FFFF0000FFFF0000000000FFFF00007B7B00007B7B00007B7B00007B7B
      0000000000007B7B7B00FFFFFF00FFFFFF00FFFFFF00FFFFFF00CEC6CE00BDBD
      BD00C6C6C600FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00F7F7F700EFEFEF00E7E7E700DEDEDE00D6D6D600D6CED600D6D6
      D6008C8C8C00B5B5B500CECECE00C6C6C600848484006B5A5A00EFBDBD00D69C
      A500E7C6C600F7F7F700F7F7F700A5A5A50094949400F7DEB5009C9C9C007B73
      7B005A736B000084840008DEDE007BBDD600D6D6D600D6D6D600CED6D600D6BD
      BD00DEA5A500E7B5B50063424A00737B7B00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00ADCEE700B5D6F7005A84A500396B8C00427BA5008CCEF700ADF7FF007BCE
      F7007BCEF70063B5DE006BB5D600084A73006BA5C600295A7B005A84A500ADD6
      EF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF007B7B00007B7B00000000000000FFFF0000FF
      FF0000FFFF0000FFFF0000000000FFFF00007B7B000000000000000000007B7B
      0000000000007B7B7B00FFFFFF00FFFFFF00FFFFFF00FFFFFF00CEC6CE00BDBD
      BD00C6C6C600FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00F7F7F700EFEFEF00E7E7E700DEDEDE00D6D6D600DEDE
      DE008C8C8C00B5B5B500CECECE00C6C6C6007B8484006B636300FFCED600E7B5
      BD00EFD6D600FFFFFF00A5A5A50094949400F7E7BD00F7DEA500CEB594004252
      5200007B840010E7E7007BD6D600DED6D600DEDEDE00D6D6D600D6D6D600DECE
      CE00E7BDBD00EFC6CE006B525200737B7300FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00B5CEEF0094B5D600527B9C0094C6E70094D6FF007BC6EF0073C6F7006BBD
      EF006BC6EF008CE7FF00297BA5003984AD006BADD600104A6B0073A5C600ADD6
      F700FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00BDBDBD00BDBD
      BD00BDBDBD00BDBDBD00BDBDBD00FFFF0000FFFF00007B7B00000000000000FF
      FF0000FFFF0000FFFF0000000000FFFF000000000000FFFFFF00000000007B7B
      0000000000007B7B7B00FFFFFF00FFFFFF00FFFFFF00FFFFFF00CEC6CE00BDBD
      BD00C6C6C600FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00F7F7F700EFEFEF00E7E7E700DEDEDE00E7E7
      E7008C8C8C00B5B5B500CECECE00C6C6C6007B84840073636300FFDEDE00EFC6
      CE00FFE7E700ADADAD0094949400FFEFD600F7E7C600CEBD9C00636B5A00088C
      8C0000D6DE0052ADAD00DECECE00DEDEDE00DEDEDE00DEDEDE00D6D6D600DECE
      CE00EFCECE00F7D6DE006B5A5A0073737300FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00BDD6F7009CB5D60052739C009CCEF70094D6FF006BBDE70073CEF7007BD6
      FF0084E7FF004AADDE00004A7B004294BD006BADD600316B940031638C00A5CE
      F700FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF0000000000000000000000
      0000000000000000000000000000FFFF0000FFFF0000FFFF00007B7B00000000
      000000FFFF0000FFFF0000000000FFFF00007B7B000000000000000000007B7B
      0000000000007B7B7B00FFFFFF00FFFFFF00FFFFFF00FFFFFF00CEC6CE00BDBD
      BD00C6C6C600FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00F7F7F700EFEFEF00E7E7E700EFEF
      EF0094949400B5B5B500CECECE00C6C6C6007B84840073636300FFE7E700F7D6
      D600A5949400949C9C00FFEFD600FFEFCE00DEC6AD006B736B000084840000D6
      DE008CDED600AD9C9C00A5A5A500E7E7E700DEDEDE00DEDEDE00D6DEDE00DED6
      D600EFCECE00F7D6D6006B5A5A0073737300FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00C6D6F700738CAD007394B500A5D6F7007BBDE70094DEFF008CE7FF0052B5
      DE00086B9C00086394002984AD0052A5D6004A8CB5004A84AD0008396300ADDE
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF007B7B00007B7B00007B7B
      00007B7B00007B7B00007B7B0000FFFF0000FFFF0000FFFF00007B7B00007B7B
      00000000000000FFFF0000000000FFFF00007B7B00007B7B00007B7B00007B7B
      0000000000007B7B7B00FFFFFF00FFFFFF00FFFFFF00FFFFFF00CEC6CE00BDBD
      BD00C6C6C600FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00F7F7F700EFEFEF00F7F7
      F70094949400B5B5B500CECECE00C6C6C6007B8484006B636300F7D6D6009C84
      8C009C9C9C00FFEFD600FFEFCE00EFDEBD007B8C7B0000848C0008D6DE0084DE
      D600EFE7E700E7EFEF00DEE7E700E7E7E700E7E7E700DEDEDE00DEDEDE00DED6
      D600E7BDBD00F7CECE006B52520073737300FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00ADBDDE004A6B8400B5D6FF00A5D6F7009CDEFF0063ADD600106B9400086B
      9400318CBD00429CCE0052A5D60052A5CE004A8CB5006BA5CE00185273007BA5
      CE00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF0000FFFF0000FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF0000FFFF
      00007B7B000000FFFF0000000000FFFF00007B7B00007B7B00007B7B00007B7B
      0000000000007B7B7B00FFFFFF00FFFFFF00FFFFFF00FFFFFF00CEC6CE00BDBD
      BD00C6C6C600FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00F7F7F700FFFF
      FF0094949400ADADB500CECECE00C6C6C6007B8484006B5A5A00DEB5B500A59C
      A500EFDECE00FFEFCE00FFEFD600BDC6B500109C9C0010DEDE008CE7DE00EFE7
      E700EFEFEF00EFEFEF00E7EFEF00E7E7E700E7E7E700E7DEDE00DEDEDE00DECE
      CE00DEADAD00E7B5BD00634A4A00737B7B00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00526B84007B9CB500B5DEF70073A5C6004A84AD00105A84003984B50052A5
      CE004294C600398CBD00398CBD004A94BD005294BD006B9CC600184A73005A8C
      B500FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF0000FFFF0000FFFF
      0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFFFF00FFFF00007B7B
      00000000000000FFFF0000000000FFFF00007B7B00007B7B00007B7B00007B7B
      0000000000007B7B7B00FFFFFF00FFFFFF00FFFFFF00FFFFFF00CEC6CE00BDBD
      BD00C6C6C600FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00F7F7F700EFEFEF00EFEFEF00EFEFEF00E7E7E700F7F7
      F70094949400ADB5B500CECECE00C6C6C600848C8C006B525200E7A5AD00DEB5
      B500EFE7E700FFF7E700FFEFCE009C9C9C0084A5A500B5E7DE00EFE7E700EFEF
      EF00F7F7F700EFEFEF00EFEFEF00EFEFEF00E7E7E700E7E7E700E7E7E700DEC6
      C600D6949400DEA5A50063394200737B7B00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00294A5A007B94AD005A7B94006B94B500215A7B004A8CAD0063A5D6004A94
      BD00529CCE0052A5CE00529CC6004A8CB500528CB50073ADCE00396B94005A8C
      AD00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF0000000000000000000000
      0000000000000000000000000000FFFF0000FFFFFF00FFFF00007B7B00000000
      000000FFFF0000FFFF0000000000FFFF00007B7B00007B7B00007B7B00007B7B
      0000000000007B7B7B00FFFFFF00FFFFFF00FFFFFF00FFFFFF00CEC6CE00BDBD
      BD00C6C6C600FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00F7F7F700CECECE00B5B5B500ADADAD00ADADAD00ADADAD00D6D6
      D60094949400B5B5B500CECECE00C6C6C600848C8C00634A5200E79C9C00CE84
      8400DEBDBD00F7F7FF00F7EFDE00D6C6B500F7E7D600F7EFEF00F7F7F700F7F7
      F700F7F7F700F7F7F700EFEFEF00EFEFEF00EFEFEF00E7E7E700E7EFEF00DEC6
      C600CE848400DE949C005A393900737B7B00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF008CADBD007394A5007B9CB500ADD6EF00295A73007BADCE004A84AD005A94
      BD005A94C6004A84AD005A9CC60084BDDE007BADD6005A8CAD0029527B006394
      B500FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFF0000FFFF00007B7B000000FFFF0000FF
      FF0000FFFF0000FFFF0000000000FFFF00007B7B00007B7B00007B7B00007B7B
      0000000000007B7B7B00FFFFFF00FFFFFF00FFFFFF00FFFFFF00CEC6CE00BDBD
      BD00C6C6C600FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00E7E7E700A5A5A5003939390039393900525252006B6B6B008484
      84006B737300B5B5BD00CECECE00C6C6C600848C8C00634A4A00DE8C8C00BD6B
      7300DEADAD00F7FFFF00EFE7EF00FFFFEF00EFEFEF00EFEFEF00FFFFFF00F7F7
      F700EFEFEF00EFEFEF00EFEFEF00EFEFEF00E7EFEF00E7E7E700E7EFEF00D6BD
      BD00C66B7300CE8484005A293100737B7B00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00BDE7EF00B5DEE700B5DEEF00BDEFFF00295A73004273940073A5C60073AD
      D60073A5CE004A7BA50042739C0042739C00427394004A7394006394B500BDE7
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFF00007B7B00000000000000FFFF0000FF
      FF0000FFFF0000FFFF0000000000FFFF00007B7B00007B7B00007B7B00007B7B
      0000000000007B7B7B00FFFFFF00FFFFFF00FFFFFF00FFFFFF00CEC6CE00BDBD
      BD00C6C6C600FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00DEDEDE009494940029292900848C8C00B5B5B500EFE7EF00BDC6
      C600A5ADAD00CEC6CE00C6C6C600FFFFFF0084949400634A5200D68C8C00BD6B
      7300DEADAD00FFFFFF00FFFFFF00F7F7F700FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00F7FFF700F7F7F700F7FFFF00E7C6
      CE00BD6B7300D68484005A293100737B7B00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF009CC6CE00B5E7E70094BDC600ADD6E7005A8C9C00396384007BADCE00426B
      8C00315A84007BADCE00A5CEF7006B9CBD00739CC600B5DEFF00B5DEFF008CBD
      D600FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF007B7B0000000000000000000000FFFF0000FF
      FF0000FFFF0000FFFF0000FFFF0000000000FFFF00007B7B00007B7B00007B7B
      0000000000007B7B7B00FFFFFF00FFFFFF00FFFFFF00FFFFFF00CEC6CE00BDBD
      BD00C6C6C600FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00DEDEDE008C8C8C0052525200B5BDBD00EFEFEF00DEDEDE00BDBD
      BD00CECECE00C6C6C600FFFFFF00FFFFFF00A5A5A500845A6300B57B7B00A56B
      6B00B5949400CECECE00CECECE00CECECE00CECECE00CECECE00CECECE00CECE
      CE00CECECE00CECECE00CEC6C600C6C6C600C6C6C600C6C6C600C6C6C600B5A5
      A500A56B6B00B57373006B2931008C8C8C00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00ADD6DE00A5CED600A5CED600B5DEEF006B8CA50039637B003963840084A5
      CE00B5D6FF009CC6EF00A5CEEF00ADCEF700A5CEEF0094BDDE0094C6DE00ADDE
      F700FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000000000000FFFF0000FF
      FF0000FFFF0000FFFF0000FFFF0000FFFF0000000000FFFF0000FFFF00007B7B
      0000000000007B7B7B00FFFFFF00FFFFFF00FFFFFF00FFFFFF00CEC6CE00BDBD
      BD00C6C6C600FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00DEDEDE00949494006B6B6B00DEDEDE00D6D6D600B5B5B500C6C6
      CE00C6C6C600FFFFFF00FFFFFF00FFFFFF00C6BDBD00BDA5A500B5A5A500B5A5
      A500ADA5A500A5A5A500A5A5A500A5A5A500A5A5A500A5A5A500A5A5A500A5A5
      A500A5A5A500A5A5A500A5A5A500A5A5A500A5A5A500A5A5A500A5A5A500ADA5
      A500B5A5A500B5A5A500AD949400C6B5B500FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000000000000FFFF0000FF
      FF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000000000FFFF00007B7B
      0000000000007B7B7B00FFFFFF00FFFFFF00FFFFFF00FFFFFF00CEC6CE00BDBD
      BD00C6CECE00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00EFEFEF00B5B5B50094949400CECECE00B5B5B500CECECE00C6C6
      C600FFFFFF00FFFFFF00FFFFFF00FFFFFF00C6CEC600CECECE00CECECE00CECE
      CE00CECECE00CECECE00CECECE00CECECE00CECECE00CECECE00CECECE00CECE
      CE00CECECE00CECECE00CECECE00CECECE00CECECE00CECECE00CECECE00CECE
      CE00CECECE00CECECE00CED6CE00C6CECE00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000000000000FFFF0000FF
      FF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000000000FFFF
      0000000000007B7B7B00FFFFFF00FFFFFF00FFFFFF00FFFFFF00C6C6CE00BDBD
      BD00B5B5B500DEDEDE00D6DEDE00DEDEDE00DEDEDE00DEDEDE00DEDEDE00DEDE
      DE00DEDEDE00CECECE00B5B5B5009C9C9C00B5B5B500CECECE00C6C6C600FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00C6C6C600C6C6C600C6C6C600C6C6
      C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6
      C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6
      C600C6C6C600C6C6C600C6C6C600C6C6C600FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00C6C6
      C600B5BDBD00B5B5B500B5B5B500B5B5B500B5B5B500B5B5B500B5B5B500B5B5
      B500B5B5B500B5B5B500B5B5B500BDBDBD00CEC6CE00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00CECEC6009C9C
      9C008C8C8C0094948C008C8C8C0094948C0094948C0094948C0094948C009494
      8C0094949400949494009494940094949400949494009C9C94009C9C9C009C9C
      9C00B5B5B500CEC6C600FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00BDBD
      BD00CECECE00CECECE00CECECE00CECECE00CECECE00CECECE00CECECE00CECE
      CE00CECECE00CECECE00CECECE00CECECE00CECECE00CECECE00CECECE00CECE
      CE00CECECE00CECECE00C6C6C600BDBDBD00FFFFFF00FFFFFF00FFFFFF00E7E7
      E700D6D6D600C6C6C600FFFFFF0084847B003939000029292900FFFFFF00DEDE
      DE00CECECE00EFEFEF00F7F7F700DEDEDE00CECECE00FFFFFF00E7E7E700D6D6
      D600CECECE00FFFFFF00EFEFEF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00BDBDBD00BDBDBD00FFFFFF00000000000000000000000000FFFFFF00FFFF
      FF00BDBDBD00FFFFFF00FFFFFF00FFFFFF00BDBDBD00FFFFFF00FFFFFF00BDBD
      BD00BDBDBD00FFFFFF00FFFFFF00FFFFFF00FFFFFF00C6C6C600CECEC6009494
      94008C948C00949494009494940094949400949494008C9494008C948C008C8C
      8C008C8C8C008C8C8C008C8C8C008C8C8C007B7B7B005A5A5A004A4A4A002929
      31009C9C9400D6D6D600C6C6C600FFFFFF00FFFFFF00FFFFFF00FFFFFF00BDBD
      BD00A5A5A500A5A5A500A5A5A500A5A5A500A5A5A500A5A5A500A5A5A500A5A5
      A500A5A5A500A5A5A500A5A5A500A5A5A500A5A5A500A5A5A500A5A5A500A5A5
      A500A5A5A500A5A5A500ADADAD00C6C6C600FFFFFF00F7F7F700DEDEDE00D6D6
      D600E7E7E700FFFFFF007B7B940073730000FFFF000031311800DEDEE700D6D6
      D600FFFFFF00DEDEDE00D6D6D600DEDEDE00F7F7F700DEDEDE00D6D6D600EFEF
      EF00EFEFEF00D6D6D600E7E7E700FFFFFF00FFFFFF00FFFFFF00FFFFFF00BDBD
      BD00FFFFFF00FFFFFF00FFFFFF00FFFF0000FFFF000000000000BDBDBD00BDBD
      BD00FFFFFF00FFFFFF00BDBDBD00BDBDBD00FFFFFF00FFFFFF00BDBDBD00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00C6C6C600EFEF
      EF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00F7F7F700E7E7DE00B5B5B5007B7B7B006B6B6B00636B
      5A0039396300C6C6C600CECEC600C6C6C600FFFFFF00BDBDBD00C6C6C600B5B5
      B500737373007373730073737300737373007373730073737300737373007373
      7300737373007373730073737300737373007373730073737300737373007373
      73007B7B7B007373730094949400C6C6C600CECECE00D6D6D600DEDEDE00F7F7
      F700EFEFEF0073737B0029290000BDBD0000FFFF000031311000EFEFEF00E7E7
      E700D6D6D600DEDEDE00F7F7F700D6D6D600D6D6D600DEDEDE00F7F7F700CECE
      CE00DEDEDE00DEDEDE00EFEFEF00CECECE00BDBDBD00FFFFFF00FFFFFF00FFFF
      FF00BDBDBD00000000007B7B0000FFFF0000FFFF000000000000FFFFFF00BDBD
      BD00BDBDBD00FFFFFF00FFFFFF00BDBDBD00FFFFFF00FFFFFF00FFFFFF00BDBD
      BD00FFFFFF00FFFFFF00BDBDBD00BDBDBD00FFFFFF00FFFFFF00C6C6C600E7E7
      E700F7F7F700F7F7F700F7F7F700F7F7F700EFEFEF00EFEFEF00EFEFEF00EFEF
      E700E7E7E700E7E7E700CECECE00A5A5A5006B6B6B0052525A008C8C8400635A
      7B000000840029188C00CECEC600C6C6C600B5B5B500CECECE00525252002929
      2900292929002929290029292900292929002929290029292900292929002929
      2900292929002929290029292900292929002929290029292900292929002929
      2900181818006B6B6B0094949400BDBDBD00FFFFFF00FFFFFF00F7F7F700EFEF
      EF00848494003939000084840000ADAD0000FFFF000031311800CECED600EFEF
      E700E7E7E700EFEFEF00D6D6D600FFFFFF00FFFFFF00FFFFFF00E7E7E700FFFF
      FF00FFFFFF00EFEFEF00F7F7F700FFFFFF00FFFFFF00FFFFFF00BDBDBD00BDBD
      BD00000000007B7B00007B7B0000FFFF0000FFFF000000000000BDBDBD00FFFF
      FF00FFFFFF00BDBDBD00BDBDBD00FFFFFF00FFFFFF00BDBDBD00BDBDBD00FFFF
      FF00FFFFFF00BDBDBD00FFFFFF00FFFFFF00FFFFFF00FFFFFF00C6C6C600E7E7
      E700FFFFFF00F7F7F700F7F7F700EFEFEF00E7E7E700DEDEDE00D6D6D600D6D6
      D600DED6D600CECECE00A5A5A500737373005A5A5A008C8C84006B6384000800
      8C000000DE005242AD00CECEC600C6C6C600B5B5B500DEDEDE00424242008C8C
      8C00C6C6C600B5B5B500B5B5B500B5B5B500B5B5B500B5B5B500B5B5B500B5B5
      B500B5B5B500B5B5B500B5B5B500B5B5B500B5B5B500B5B5B500B5B5B500CECE
      CE00393939006B6B6B007B7B7B00A5A5A500848484005A5A5A008C8C8C008C8C
      8C00424200008C8C000073730000ADAD0000FFFF000039392100F7F7FF00DEDE
      DE00D6D6D600E7E7E700C6C6C6008C8C8C005A5A5A007B7B7B008C8C8C007B7B
      7B005A5A5A00848484008C8C8C0073737300FFFFFF00BDBDBD00FFFFFF00FFFF
      FF007B7B00007B7B00007B7B0000FFFF0000FFFF000000000000FFFFFF00FFFF
      FF00BDBDBD00FFFFFF00FFFFFF00FFFFFF00BDBDBD00FFFFFF00FFFFFF00BDBD
      BD00BDBDBD00FFFFFF00FFFFFF00BDBDBD00FFFFFF00FFFFFF00C6C6C600E7E7
      E700F7F7F700F7F7F700EFEFEF00DEDEDE00CECECE00BDBDBD00B5B5B500B5B5
      B500B5B5B5009C9C94006B6B6B005A5A5A008C8C84006B63840008008C000000
      DE005A4AAD00D6D6C600C6C6C600C6C6C600CECECE0094949400101010001818
      1800212121001818180021212100212121002121210021212100212121002121
      2100181821002121180029291800212121002918290021182100211821002921
      290000080000313131007B7B7B00ADADAD008C8C8C0084848400424242000000
      00008C8C00007B7B000073730000ADAD0000FFFF000031311800DEE7EF00E7EF
      EF00FFFFFF00EFEFEF00393939006B6B6B00949494008C8C8C008C8C8C008C8C
      8C00949494008C8C8C008C8C8C008C8C8C00FFFFFF00BDBDBD007B7B7B000000
      00007B7B00007B7B00007B7B0000FFFF0000FFFF000000000000FFFFFF00FFFF
      FF00FFFFFF00BDBDBD0000000000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00C6C6C600E7E7
      E700F7F7F700EFEFEF00DEDEDE00C6C6C600BDBDB500BDBDBD00C6C6C600CECE
      CE00BDBDB5008C8C8C006B6B6B008C8C84006363840008008C000000E7002921
      8400A5A59400CECED600C6C6C600FFFFFF00E7E7E7005A5A5A005A5A5A00BDBD
      BD00A5A5A500A5A5A500A5A5A500A5A5A500A5A5A500A5A5A500A5A5A500A5A5
      A500ADADA5009C9CAD007B7BB5009CA5A5007BB57B009CAD9C0084B5840094B5
      94008C848C00101010007B7B7B00ADADAD00FFFFFF00FFFFFF009C9CA5002121
      10007B7B00008484000073730000ADAD0000FFFF000031311000DEC6C600C6B5
      B500AD949400D6C6C60042424200E7E7E700FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00BDBDBD007B7B7B000000
      00007B7B00007B7B00007B7B0000FFFF0000FFFF000000000000FFFFFF00BDBD
      BD00BDBDBD00FFFFFF0000000000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00C6C6C600E7E7
      E700EFF7F700E7DEDE00C6C6C600BDBDB500CECEC600D6D6D600ADADAD007B7B
      7B006B6B6B00736B6B0084847B005A527B0008008C000000D6006B5AC600ADAD
      9C008C8C8C00D6D6D600C6C6C600FFFFFF00E7E7E7006B6B6B0052525200B5B5
      B500A5A5A500A5A5A500A5A5A500A5A5A500A5A5A500A5A5A500A5A5A500A5A5
      A500ADADA5007373B5002121CE008C9C9C0021CE21007BAD7B0031C631004AC6
      4A0094849400181818007B7B7B00ADADAD00FFFFFF00E7E7E7008C8C8C001818
      08007B7B00007B7B000073730000ADAD0000FFFF000018210800005252000052
      5200005252000052520000181800CEC6C600B5B5B500CECECE00F7F7F700F7F7
      F700FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00BDBDBD007B7B7B000000
      00007B7B00007B7B00007B7B0000FFFF0000FFFF000000000000000000000000
      0000000000000000000000000000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00C6C6C600E7E7
      E700EFEFEF00D6D6D600BDB5B500C6BDBD00CECECE0073737300636363007373
      7300736B6B005252520042423900312973000000DE005A52B500F7F7DE00949C
      9C0094948C00D6D6D600C6C6C600FFFFFF00E7E7E700636363006B6B6B00D6CE
      D600CEC6CE00CECECE00D6CED600CECECE00CECECE00CECECE00CECECE00CECE
      CE00CECECE00D6D6CE00DEDEC600CECECE00DEC6DE00D6CED600DEC6DE00D6C6
      D600D6D6D6002929290073737300ADADAD00FFFFFF00EFEFEF008C8C94001818
      08007B7B0000848400007B7B0000ADAD0000FFFF00001839210000FFFF0000FF
      FF0000FFFF0000FFFF00005A5A00A58C8C00181818008C8C8C00FFFFFF00F7F7
      F700FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00BDBDBD007B7B7B000000
      00007B7B00007B7B00007B7B0000FFFF0000FFFF00000000000000FFFF0000FF
      FF0000FFFF0000FFFF0000000000BDBDBD0000000000FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00C6C6C600E7E7
      E700EFEFEF00CECECE00B5B5B500C6C6C6006B6B6B008C848400E7DED600F7EF
      E700F7EFDE00C6C6BD0084847B004A4A4A009494AD00DEDED600DEDEDE009494
      940094948C00D6D6D600C6C6C600FFFFFF00E7E7E700636363006B6B6B00BDE7
      BD00B5CEB500B5CEB500ADCEAD00C6C6C600C6C6C600C6C6C600C6C6C600C6C6
      C600C6C6C600C6C6C600C6C6CE00C6C6C600C6CEC600C6C6C600C6C6C600CECE
      CE009C9C9C001818180073737300ADADAD00FFFFFF00EFEFEF008C8C94001818
      0800848400007373000063630000B5B50000FFFF00001839180000F7FF0000FF
      F70000F7F70000FFFF00005A630031180800292900009C9CA500FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00BDBDBD007B7B7B000000
      00007B7B00007B7B00007B7B0000FFFF0000FFFF00000000000000FFFF0000FF
      FF0000FFFF0000FFFF00000000000000000000000000FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00C6C6C600E7E7
      E700E7E7E700CECEC600BDBDBD009C9494005A5A5A00E7DED600EFE7DE00E7DE
      D600DEDED600C6C6BD00BDB5AD005A5A5A008C8C8400DEDEDE00D6D6D6009494
      940094949400D6D6D600C6C6C600FFFFFF00E7E7E700636363007B847B00A5FF
      A500ADF7AD00ADFFAD0094FF9400E7EFE700EFEFEF00EFEFEF00EFEFEF00EFEF
      EF00EFEFEF00EFEFEF00EFEFEF00EFEFEF00EFEFEF00EFEFEF00EFEFEF00EFEF
      EF00CECECE002929290094949400B5B5B500FFFFFF00EFEFEF008C8C94001010
      08008C8C0000292900000808180094940000FFFF00001839180000FFFF0000FF
      FF0000FFFF0000E7EF00103939008C7B00005A63000084849400EFEFEF00E7E7
      E700E7E7E700FFFFFF00FFFFFF00FFFFFF00FFFFFF00BDBDBD007B7B7B000000
      00007B7B00000000000000000000FFFF0000FFFF00000000000000FFFF0000FF
      FF0000FFFF0000FFFF00000000007B7B000000000000FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00C6C6C600E7E7
      E700E7E7E700CECECE00C6C6BD006B6B6B006B6B6B00EFEFDE00E7DED600E7DE
      D600D6D6CE00BDB5AD00BDB5AD008C8C840052525200DEDEDE00D6D6D6009494
      940094949400D6D6D600C6C6C600FFFFFF00E7E7E7006B6B6B00313131006B5A
      6B006B5A6B006B636B0073637300636363006363630063636300636363006363
      6300636363006363630063636300636363006363630063636300636363006363
      63006363630021212100C6C6C600BDBDBD00FFFFFF00EFEFEF008C8C94001010
      08008C8C0000313100008484AD0052520000FFFF00001839180000FFFF0000FF
      FF0000EFF700184231006B5A0000E7EF00009C9C00005A5A7B00D6D6CE00BDBD
      BD00BDBDBD00DEDEDE00FFFFFF00FFFFFF00FFFFFF00BDBDBD007B7B7B000000
      00007B7B000000000000FFFFFF00FFFF0000FFFF00000000000000FFFF0000FF
      FF0000FFFF007B7B00007B7B0000FFFF000000000000BDBDBD00BDBDBD00BDBD
      BD00BDBDBD00BDBDBD00FFFFFF00FFFFFF00FFFFFF00FFFFFF00C6C6C600E7E7
      E700E7E7E700D6D6D600CECECE006363630063635A00DED6CE00CEC6BD00CEC6
      C600BDBDB500B5ADA500BDBDB5009C948C004A4A4A00DEDEDE00D6D6CE009494
      940094949400D6D6D600C6C6C600FFFFFF00C6C6C600BDBDBD008C8C8C001010
      1000A5A5A50021212100424A42006B6B6B006363630063636300636363006363
      63006363630063636300636363006363630073737300080808008C8C8C006363
      630031313100B5B5B500BDBDBD00BDBDBD00FFFFFF00EFEFEF008C8C94001818
      08008C8C00003131000029291800A5AD0000FFFF00001839180000FFFF0000EF
      F7001042290073630000CECE0800FFFF00009C9C000010101000212121001818
      1800212121001818100063636300F7F7F700FFFFFF00BDBDBD007B7B7B000000
      00007B7B00000000000000000000FFFF0000FFFF00000000000000FFFF0000FF
      FF00000000007B7B0000FFFF0000FFFF00000000000000000000000000000000
      00000000000000000000FFFFFF00FFFFFF00FFFFFF00FFFFFF00C6C6C600E7E7
      DE00E7E7E700DEDEDE00D6D6D6008C8C8C004A4A4A00B5B5AD00B5B5A500B5AD
      A500B5ADA500C6C6C600DEDED6007B7B730073737300D6D6D600CECECE009494
      8C0094949400D6D6D600C6C6C600FFFFFF00B5B5B500D6D6D600393939000000
      000018181800212121004A4A4A00636363005A5A5A0063636300636363006363
      6300636363006363630063636300636363006363630029292900292929000000
      000000000000ADADAD00C6C6C600BDBDBD00FFFFFF00EFEFEF008C8C94001818
      08007B7B00008484000073730000ADAD0000FFFF00001842210000DEDE001842
      31006B5A0000CED60000FFFF0000FFFF0000E7E70000A5A50000ADAD0000ADAD
      0000A5A50000B5B500004A4A00009C9CA500FFFFFF00BDBDBD007B7B7B000000
      00007B7B00007B7B00007B7B0000FFFF0000FFFF00000000000000FFFF000000
      00007B7B0000FFFF0000FFFF0000FFFF00007B7B00007B7B00007B7B00007B7B
      00007B7B00007B7B000000000000FFFFFF00FFFFFF00FFFFFF00C6C6C600E7E7
      DE00E7E7DE00DEDEDE00D6D6D600C6C6C6005252520084847B00C6BDB500BDBD
      B500CEC6BD00E7E7DE00C6C6C6004A4A4A00ADADAD00CECECE00D6CECE008C94
      8C0094949400D6D6D600C6C6C600FFFFFF00BDBDBD00C6C6C600949494007373
      7300ADADAD004A4A4A00DEE7E700FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00E7E7E700E7E7E700F7F7F700525252009C9C9C008484
      84007B7B7B00B5B5B500C6C6C600FFFFFF00FFFFFF00EFEFEF008C8C94001818
      08007B7B00007B7B000073730000ADAD0000FFFF000018523100008C9C005229
      0000E7EF0000FFFF3900FFFFAD00FFFF9C00FFFFAD00FFFFAD00FFFFAD00FFFF
      AD00FFFFAD00FFFF2100949400009494A500FFFFFF00BDBDBD007B7B7B000000
      00007B7B00007B7B00007B7B0000FFFF0000FFFF000000000000000000007B7B
      0000FFFF0000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFF000000000000FFFFFF00FFFFFF00FFFFFF00C6C6C600DEDE
      DE00DEDEDE00DEDEDE00D6D6D600DEDEDE00B5B5AD00525252006B6B63009494
      8C009C9C94007B7B73004A4A4A0084848400BDBDB500B5B5AD00BDBDBD008484
      840094949400D6D6D600C6C6C600FFFFFF00BDBDBD00BDBDBD00C6C6C600CECE
      CE00DEDEDE0039313100CEDEDE00FFBDBD00C6737300D67B7B00CE7B7B00CE84
      8400C6DEDE0018181800292929002929290039393900080808009C9C9C00D6D6
      D600CECECE00C6C6C600FFFFFF00FFFFFF00FFFFFF00EFEFEF008C8C94001818
      08007B7B00007B7B000073730000ADAD0000FFFF00001839180000F7F7000063
      6300846B0000FFFF1000FFFFB500FFFF7B00F7F73100CECE2100CECE1800C6C6
      1800C6C62100CECE000073730000A5A5B500FFFFFF00BDBDBD007B7B7B000000
      00007B7B00007B7B00007B7B0000FFFF0000FFFF00000000000000FFFF000000
      00007B7B0000FFFF0000FFFFFF00FFFF0000FFFF0000FFFF0000FFFF0000FFFF
      0000FFFF0000FFFF000000000000FFFFFF00FFFFFF00FFFFFF00C6C6C600DEDE
      DE00DEDEDE00D6D6D600D6D6D600D6D6D600DEDED600C6C6C600848484005252
      520042424A005A5A5A007B7B7B008C8484007B7B7B007B7B7B00948C8C006363
      63008C8C8C00D6D6D600C6C6C600FFFFFF00FFFFFF00FFFFFF00BDBDBD00B5B5
      B500CECECE0039393900CEDEDE00FFD6D600D6A5A500E7A5A500DEA5A500E7AD
      AD00BDC6C600524A4A00FFFFFF00FFFFFF00E7E7E7004A4A4A00ADADAD00BDBD
      BD00BDBDBD00BDBDBD00FFFFFF00FFFFFF00FFFFFF00EFEFEF008C8C94001818
      08007B7B00007B7B000073730000ADAD0000FFFF00001839180000FFFF0000FF
      FF00005A63007B630000FFFF0000FFFF7300949400002929290052524A005252
      4A005252520052525A0094949C00FFFFFF00FFFFFF00BDBDBD007B7B7B000000
      00007B7B00007B7B00007B7B0000FFFF0000FFFF00000000000000FFFF0000FF
      FF0000000000FFFF0000FFFF0000FFFFFF000000000000000000000000000000
      00000000000000000000FFFFFF00FFFFFF00FFFFFF00FFFFFF00C6C6C600DEDE
      DE00D6D6D600D6D6D600D6D6D600D6D6D600CECECE00D6D6D600D6D6D600DEDE
      DE00CECECE009C9C9C003939420029293100424242005A5A5A006B6B6B005A5A
      5A009C9C9C00D6CECE00C6C6C600FFFFFF00FFFFFF00FFFFFF00FFFFFF00BDBD
      BD00D6D6D60039393900CED6D600FFCECE00D69C9C00DEA5A500DEA5A500DEAD
      AD00BDC6C60052525200FFFFFF00DEDEDE004A4A4A00ADADAD00CECECE00BDBD
      BD00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00EFEFEF008C8C94001818
      08007B7B00007B7B000073730000A5A50000FFFF00001839180000FFFF0000FF
      FF0000FFFF00005263007B630000FFFF00008C8C00009494B500FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00BDBDBD007B7B7B000000
      00007B7B00007B7B00007B7B0000FFFF0000FFFF00000000000000FFFF0000FF
      FF0000FFFF00000000007B7B0000FFFF000000000000FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00C6C6C600DEDE
      DE00D6D6D600D6D6D600D6D6CE00D6D6CE00CECECE00CECECE00CEC6C600C6C6
      C600B5B5AD0084847B002929310073737B00ADADAD00DEDEDE00D6D6D600ADAD
      A500FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00BDBD
      BD00D6D6D60039393900E7E7E700FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00DEDEDE0063636300EFEFEF0042424200ADADAD00CECECE00BDBDBD00BDBD
      BD00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00EFEFEF008C8C94001818
      08007B7B0000848400006B6B0000BDBD0000F7E70000104A310000FFFF0000FF
      FF0000F7F70000FFFF00003952008C7300009494000084849C00FFFFFF00F7F7
      F700F7F7F700F7F7F700FFFFFF00FFFFFF00FFFFFF00BDBDBD007B7B7B000000
      00007B7B00007B7B00007B7B0000FFFF0000FFFF00000000000000FFFF0000FF
      FF0000FFFF0000FFFF00000000007B7B000000000000FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00C6C6C600DEDE
      DE00D6D6D600D6D6D600CECECE00CECECE00CECECE00CECEC600CEC6C600FFFF
      FF00B5B5B5007B7B7B0042424200A5A5A500E7E7E700EFEFEF00BDBDB500CECE
      CE00CEC6C600FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00BDBD
      BD00D6D6D6003131310073737300948C8C008C8C8C008C8C8C008C8C8C008C8C
      8C006B6B6B003131310063636300A5A5A500CECECE00BDBDBD00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00EFEFEF008C8C94001818
      0800848400006B6B0000B5B50000F7DE00003152310000E7F70000FFFF0000FF
      FF0000F7F70000FFFF00005A5A00523939000808000094949400FFFFFF00F7F7
      F700FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00BDBDBD007B7B7B000000
      00007B7B00007B7B00007B7B0000FFFF00000000000000FFFF0000FFFF0000FF
      FF0000FFFF0000FFFF00000000000000000000000000FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00C6C6C600DEDE
      DE00D6D6CE00CECECE00CECECE00CECECE00CECECE00CEC6C600C6C6C600C6C6
      C600B5B5B5007B7B7B00525A5A00C6C6C600E7E7E700B5B5B500C6C6C600FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00BDBD
      BD00C6C6C6009494940063636300636363006363630063636300636363006363
      63006B6B6B006B6B6B00A5A5A500CECECE00BDBDBD00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00EFEFEF008C8C94001818
      08006B6B0000B5BD0000FFEF00003152310000D6E70000FFF70000F7F70000FF
      FF0000F7F70000FFFF0000525200E7D6D6009C9CA500DEDEDE00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00BDBDBD007B7B7B000000
      00007B7B0000FFFF0000FFFF000000FFFF0000FFFF0000FFFF0000FFFF0000FF
      FF0000FFFF0000FFFF0000000000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00DEDE
      DE00CECECE00CECECE00CEC6C600C6C6C600C6C6C600C6C6BD00BDBDBD00BDBD
      BD00ADADAD007B7B7B0073737300CECECE00B5B5B500FFFFFF00CEC6C600FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00BDBDBD00C6C6C600D6D6D600D6D6D600D6D6D600D6D6D600D6D6D600D6D6
      D600D6D6D600D6D6D600C6C6C600BDBDBD00BDBDBD00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00EFEFEF008C8C94001818
      0800C6CE0000FFFF0000316B4A0000FFFF0008FFFF0000FFFF0000FFFF0000FF
      FF0000FFFF0000FFFF00005A5A00DEC6C600FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00BDBDBD007B7B7B000000
      0000FFFF0000FFFF00000000000000FFFF0000FFFF0000FFFF0000FFFF0000FF
      FF0000FFFF0000FFFF0000000000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00C6C6C600E7E7
      E700DEDED600D6D6D600D6D6D600D6D6D600D6D6D600D6D6D600CECED600CECE
      CE00C6C6BD00A5A5A50094949400B5B5AD00CEC6C600CEC6C600C6C6C600FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00BDBDBD00BDBDBD00BDBDBD00BDBDBD00BDBDBD00BDBDBD00BDBD
      BD00BDBDBD00BDBDBD00BDBDBD00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00C6C6CE000808
      00008C8C00001810000000637B00008C8C0000848400008C8C00008484000084
      840000848400008C8C0000181800DECECE00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF007B7B7B000000
      0000FFFF00000000000000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FF
      FF0000FFFF0000FFFF0000000000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00C6C6C600CECE
      CE00D6D6D600D6D6D600D6D6D600D6D6D600D6D6D600D6D6D600D6D6D600D6D6
      D600CECECE00CECECE00C6BDBD00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00B5B5
      B5009494AD00A5A5AD00AD9C9400AD949400AD949400AD949400AD949400AD94
      9400AD949400AD949400ADA5A500F7F7F700FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00C6C6C600BDBDBD00C6C6C600EFE7E700848C9400737B8400737B
      84007B848C007B848C008C8C9400DED6D600DEDEDE00C6C6C600B5B5B500C6C6
      C600FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00B5B5B500ADADB500ADAD
      AD00B5ADB50094949C008C8C8C00949494009494940094949400949494009494
      94009494940094949400949494009494940094949400A59CA500B5A5B500B5A5
      B500BDA5BD00BDADBD00CECECE00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00BDBDBD00CECECE00ADADAD00636B6B0042312100422918004229
      18003121080031210000080000005A636B0084847B00B5B5B500D6D6D600BDBD
      BD00BDBDBD00BDBDBD00FFFFFF00FFFFFF00B5B5B50000080000102110001821
      180010211000525252006B6B6B006363630063636300635A5A005A5A5A005A5A
      5A005A5A5A005A5A5A0052525200525252005A525A0031423100083108001039
      100000310000002100004A4A4A00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00BDBDBD00C6C6C600B5B5B5004A4239007B5A3900C6946B00CE9C6B00C694
      5A00B57B4200A5732900734A100031180000000000004A4A4A007B7B7B00C6C6
      C600C6C6C600C6C6C600BDBDBD00FFFFFF00ADADB50010211000426B3900315A
      3100849C8400FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFF7F700F7F7F700EFEF
      EF00EFEFEF00E7E7E700E7E7DE00DEDEDE00E7DEDE00CED6CE00529C52002973
      29009CB59C00297B290042424200FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00BDBDBD00FFFFFF00C6C6C600C6C6C600FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00BDBDBD00C6C6C600BDBDBD00BDBDBD00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00BDBDBD00C6C6C60031292900B5846300F7C6AD00CEA58400C6946B00B58C
      5A00AD7B4A009C6B39009C632100945A18002118000018182100424239005A5A
      5A009C9C9C00BDBDBD00C6C6C600BDBDBD00B5ADB50010210800395A3100214A
      2100A5B5A500EFEFEF00CECECE00D6D6D600D6D6D600D6D6D600CECECE00CECE
      CE00CECECE00CECECE00CECEC600C6C6C600C6C6C600D6C6D600639463002973
      290073737300105A1000424A4200FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00BDBDBD00BDBDBD00C6C6C600ADADAD007B7B7B00B5B5B500BDBDBD00FFFF
      FF00FFFFFF00BDBDBD00BDBDC600B5B5B500BDBDBD00C6C6C600BDBDBD00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FF9C3900FFAD4A00F7AD
      7300D6947B00F7D6B500F7DEC600FFE7CE00F7EFE700FFF7EF00FFF7EF00F7FF
      FF00FFFFFF00FFFFFF00FFFFF700FFF7EF00FFEFD600FFEFCE00FFDEB500E7A5
      7B00B55A4200A5290800A51800009C5A4A00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00BDBDBD00BDC6C60021211800CE9C7300DEB59C00CEA57B00C6946B00B58C
      5A00AD7B4A009C6B3100946321008452100021180000292929005A5252005A52
      5A006B6B6B0073737300B5B5B500C6C6C600B5ADB5001021080039633100294A
      29009CAD9C00F7F7F700DEDEDE00DEDEDE00DEDEDE00DEDEDE00D6D6D600D6D6
      D600D6D6D600D6D6CE00CECECE00CECECE00CECECE00D6CECE0063946300217B
      2100187B1800005200004A4A4A00FFFFFF00FFFFFF00FFFFFF00FFFFFF00BDBD
      BD00C6C6BD00D6D6C6005A5A52005A5A5A008484840084848400C6C6C600BDBD
      BD00BDBDBD00C6C6BD00BDBDB5007B7B840084848400FFFFFF00C6C6C600BDBD
      BD00FFFFFF00FFFFFF00FFFFFF00FFFFFF00DE7B3100DE6B2100DE732100DE73
      2100B5390800FF9C3900FFA54A00FFAD5200FFB56300FFB56B00FFB57300FFC6
      8400DE946B00E79C6B00F7AD6B00F7A56300F79C5200E7843100FFA54200D663
      1800A5210000A5210000A51800009C4A3100FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00BDBDBD00C6C6CE0021211800C6946B00E7B59C00CEA57B00C6946B00B58C
      5A00AD7B4A009C6B310094632100845210002110000029313100636363006B6B
      6B00737373007B7B7B008C8C8C00B5B5B500B5ADB5001021080039633100294A
      29009CAD9C00F7F7F700DEDEDE00DEDEDE00DEDEDE00DEDEDE00DEDEDE00D6D6
      D600D6D6D600D6D6D600D6D6D600CECECE00CECECE00D6CED60063946300217B
      2100217B2100005200004A4A4A00FFFFFF00FFFFFF00FFFFFF00BDBDBD00C6C6
      BD009494D6004A4ABD0000003900000000006B6B6B0084848400A5A5A500C6C6
      C600C6C6B5009C9CDE0031316B007B7B6B007B7B840084848400FFFFFF00C6C6
      C600FFFFFF00FFFFFF00FFFFFF00FFFFFF00EF9C4A00EF8C3100EF8C3100E77B
      2900B5390800E77B2900BD420800F78C3100CE521000F78C2900D6631800F78C
      2900CE520800D6631000C6520800CE5A1000E77B29009C180000FFA54200D663
      18009C180000A5210000A52100009C391800FFFFFF00FFFFFF00FFFFFF00BDBD
      BD00D6D6D6004A4A52008C634200EFC6A500DEB59400D6A58400C6946B00BD8C
      5A00AD7B4A009C6B3100946321008C5210006B4208001010000052525A007373
      73007B7B7B008C8C8C0094949400B5B5B500B5ADB5001021080039633100214A
      2100A5B5A500F7F7F700DEDEDE00DEE7DE00DEDEDE00DEDEDE00DEDEDE00D6D6
      D600D6D6D600D6D6D600D6D6D600CECECE00CECECE00DED6D600639C6300217B
      2100217B2100005200004A4A4A00FFFFFF00FFFFFF00FFFFFF00BDBDBD00CECE
      B5007373E7000000B50008088C0000003900424239008C8C940073737300ADAD
      A500BDBDCE000808E70000002900181800007B7B84007B7B7B0084848400BDBD
      BD00BDBDBD00FFFFFF00FFFFFF00FFFFFF00DE8C4A00D6631800D66B2100E773
      2900B5390800EF842900CE521000F7943900BD4A1000EF843100AD310000E77B
      2900D6632100D66B2100E7842900E77B2900F7943900D6632100FFA54200CE6B
      29009C210000A5210000A52100009C391800FFFFFF00FFFFFF00FFFFFF00BDBD
      BD00D6D6D600393939009C734A00F7C6B500DEB59400D6A58400C6946B00B58C
      5A00AD7B4A009C6B3100946321008C521000734A0800100800005A6363008484
      84008C8C8C00949494009C9C9C00BDBDBD00B5ADB5001021080039633100214A
      2100A5B5A500F7F7F700DEDEDE00DEE7DE00DEDEDE00DEDEDE00DEDEDE00DEDE
      DE00D6D6D600D6D6D600D6D6D600D6D6D600CECECE00DED6DE00639C6300217B
      2100217B2100005200004A4A4A00FFFFFF00FFFFFF00FFFFFF00BDBDBD00CECE
      B5007B7BE7000000AD000000730000006B00000000004A4A4A008C8C8C008484
      6B006B6BD6000000B50000007B0000002900181808007B7B84007B7B7B00A5A5
      A500C6C6C600BDBDBD00FFFFFF00FFFFFF00EFA55200EF8C3100DE732100DE6B
      2100B5390800FF9C4200FFAD5200FF9C3900FF942900FF9C3900F7943900FFA5
      4200CE5A1800D6632100FFAD4A00FFA54200FF9C3900FFAD4200FFA53900CE7B
      39009C210000A5210000A5210000A5310800FFFFFF00FFFFFF00FFFFFF00BDBD
      BD00D6D6D60039394200946B4200F7C6AD00DEB59400D6A58400C6946B00B58C
      5A00AD7B4A009C6B3100946321008C521000734A0800100800006B6B73008C8C
      8C0094949400ADADAD00BDBDBD00C6C6C600B5ADB5001021080039633100214A
      21009CAD9C00F7F7F700DEE7DE00E7E7E700E7E7E700DEDEDE00DEDEDE00DEDE
      DE00DEDEDE00D6D6D600D6D6D600D6D6D600CECECE00DED6D600639C6300217B
      2100217B2100005200004A4A4A00FFFFFF00FFFFFF00FFFFFF00BDBDBD00CECE
      BD007373DE000000E70000007B000000840000006B0000000000525239005252
      C6000000B5000000730000007B0000008C000000310008080800A5A5A500C6C6
      C600BDBDBD00FFFFFF00FFFFFF00FFFFFF00E7944A00D66B2100FFBD7300EF94
      4200B5310000FFB56B00FFEFDE00FFA55200FFCE9C00FF9C4A00EF842900FFA5
      4200CE5A1800D6631800FFD6AD00FFCE9400E77B2100BD4A1000FF9C3900CE7B
      39009C210000A5210000A5210000A5210000FFFFFF00FFFFFF00BDBDBD00D6CE
      CE00848C8C0052392100EFBDA500E7BDA500DEB59400D6A58400BD946B00C694
      6300AD7B4A009C6B31009463210084521000844A00004A29000029292900CECE
      CE00B5B5B500C6C6C600C6C6C600FFFFFF00B5ADB5001021080039633100214A
      2100ADBDAD00F7F7F700DEDEDE00E7DEE700DEDEDE00DEDEDE00DEDEDE00DEDE
      DE00D6D6D600D6D6D600D6D6D600D6D6D600CECECE00E7DEE7006B9C6B002173
      2100217B2100005200004A4A4A00FFFFFF00FFFFFF00FFFFFF00FFFFFF00BDBD
      BD00C6C6BD003131F70000009C000000730000008C0000006B00000008000000
      73000000840000007B0000007B0000008C000000390073736B00C6C6CE00BDBD
      BD00FFFFFF00FFFFFF00FFFFFF00FFFFFF00E79C4A00DE631000F7C69C00EF9C
      5A00B5310000FFA55A00FFCE9400FFA55200FFEFDE00F79C5200AD290000E77B
      2900D6632100D6631800FFD6A500FFCE9C00E77B2900A5290000FF9C3900CE7B
      39009C210000A5210000A5210000A5210000FFFFFF00BDBDBD00BDBDBD00D6D6
      CE00212929006B4A2900FFD6B500E7BDA500DEB59400CEA57B00D6A57B008463
      3900A5734200A57339009463210084521000844A00005A390000080808008C94
      9400D6D6D600BDBDBD00FFFFFF00FFFFFF00B5ADB50010210800395A31003152
      31005A735A00E7EFE700FFFFFF00FFFFFF00F7F7F700F7F7F700F7F7EF00EFEF
      EF00E7E7E700E7E7E700E7DEDE00DEDEDE00E7DEDE00ADC6AD0042843900297B
      2900217B2100005200004A4A4A00FFFFFF00FFFFFF00FFFFFF00FFFFFF00BDBD
      BD00CECEBD007373D6000000FF00000094000000730000008400000084000000
      7B0000007B0000007B0000008C000000420073736B00D6D6D600BDBDBD00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00F7C69400FFC68400FFA53900EF8C
      3100B5310000FF943900FF943100FF9C3900FFA54A00FF9C3900DE6B2100F794
      3900CE5A1800D6631800FFA53900FF9C3900FF943100EF7B2100FF9C3900CE7B
      39009C210000A5210000A5210000A5210000BDBDBD00C6C6C600C6C6C6005A5A
      52009C9C9C0063524A00BDA59C00F7CEB500D6AD8C00E7B58C008C6342006363
      63005A4A3100A56B31009463210084521000845200005A310000181818006363
      6B0084848400D6D6D600BDBDBD00FFFFFF00B5ADB50010210800395A3100395A
      3900395A390052735200638463006B8C6B007B9C7300849C84008CA584009CB5
      9C009CB594008CAD8C007BA57B006BA56B00639C63004A8C4200318431002984
      2900187B1800005200004A4A4A00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00BDBDBD00D6D6B5007373DE000000FF00000094000000730000007B000000
      7B0000007B0000008C000000420052524A00D6D6D600BDBDBD00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00F7BD8400FFBD7B00FFD69C00EF9C
      5A00BD390000F7BD8C00FFEFDE00FFA55200FFC68400F79C4A00FFA54A00FFAD
      4200CE5A1800DE6B2100FFC68400FFAD6300FFA54A00FFB56B00FFA53900CE7B
      39009C210000A5210000A5210000A5290800C6C6C600BDBDBD006B636300BDBD
      BD00FFFFFF00CECEE70042424A00BDAD9C00FFCEAD009C7352005A5A5A00E7E7
      E700848C8C00392110009C6321008C5A1800844A000021180000ADC6CE00FFFF
      FF005A5A630084848400D6D6D600BDBDBD00B5ADB50010210800395A3100395A
      3900426342004A6B4A00527B520063845A006B8C6B007B947300849C7B0094AD
      94008CAD8C0084A57B0073A57300639C6300528C52004A8C4200398439002984
      2900187B1800005200004A4A4A00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00BDBDC600D6D6B5007373D6000808F70000008C0000007B000000
      7B0000008C0000004A004A4A42008C8C8C0094949400BDBDBD00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFDEBD00FFB57300FFA54A00EF94
      4200C6420800FFAD5A00FFC68C00FFB56B00F7FFF700FFB56B00F7E7D600FFB5
      5A00CE5A1800E77B2100FFE7C600F7CE9C00FFC68C00F7F7F700FFA53900CE6B
      29009C210000A52100009C1000009C422100D6D6D6008C8C8C00736B6B00FFFF
      FF00DEDEEF00E7E7F700ADADEF00424A6B008C7B6B00524A4A00CECED600ADAD
      AD00ADADAD00737B8400423118008C521800312918005AADB500ADF7F700DEF7
      F700FFFFFF007373730084848400C6C6C600B5ADB50010210800395A3100395A
      390042634200527352005A7B5A006B8C6B007B9C7B0084AD840094B58C00A5C6
      A5009CBD9C0094BD940084B5840073AD6B0063A5630052945200398439002984
      2900187B1800005200004A4A4A00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00BDBDC600D6D6B5004242EF000000940000007B000000
      7B0000008C0000004200313129008C8C8C0073737300ADADAD00C6C6C600BDBD
      BD00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00EFC69C00CE7B
      3900BD5A2100FF9C4200FF9C4200FF9C3900FFAD5200FFAD5A00F7DECE00FFB5
      5A00CE521000E77B2900FFB55A00FFA54A00FFB56B00F7D6AD00FFA54200D663
      21009C1800009C210000B56B5200DED6D600B5B5B500CED6D6008C8C8C006363
      6300D6D6FF00A5A5F700736B8C00524A520018100800635A52005A524A005A52
      4A005A524A00736B5A004239310042211000315A5A0042BDC60063BDBD00A5E7
      E700DEFFFF0073737B0084848400C6C6C600B5ADB50010210800395A3100395A
      3900426B4200426342004A734A004A6B42004A5A42004A634A0052634A005A73
      5A00526B52004A634A0042634200315A310029522900316B3100428C4200297B
      2900217B2100005200004A4A4A00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00BDBDC600CECEB5004242EF000000940000007B000000
      7B0000007B0000007B000000100031312900848484008C8C8C00BDBDBD00C6C6
      C600BDBDBD00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00DEE7
      DE00BDAD8C00F7CE9400FFDEB500FFA54200FFA55200FF943100FF943100FFA5
      3900C64A1000CE5A1800F7943100FF9C3900FF942900FF8C2100FFA53100C642
      00009C210800C69C8C00FFFFFF00FFFFFF00C6C6C600BDBDBD00D6CED6009C9C
      9C00313131006B5A5A00BD947300BD9C7B00BD9C8400A5846B009C8463009C7B
      5A00947B5A008C734A0094734A008C734A007B634A004A423100525A4200399C
      9C00294A4A008C848400D6D6D600BDBDBD00B5ADB50010210800395A3100395A
      3900395A39004263390031523100081008002118210021212100312931003931
      39004242420052525200635A63006B6B6B00847B84004A524A00216321003184
      3100187B1800005200004A4A4A00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00BDBDBD00CECEB5008C8CDE000808BD0000007300000084000000
      9C0000008C0000007B0000007B00000000007B7B7B007B7B7B0084848400FFFF
      FF00C6C6C600BDBDBD00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00E7CEA500FFBD7B00FFC69400FFBD7B00FFEFE700FFAD5A00FFBD7B00FF9C
      4200C65210009C180000AD290000BD4A1800E7C69C00FFBD8400FFC68400D694
      6B00F7EFEF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00C6C6C6008484
      7B00AD8C7300F7C6AD00E7BD9C00DEB59400D6AD8C00D6A58400CE9C7300BD8C
      6300B5845200AD7B4A00A57339009C6B310094632100946321009C6B31001810
      0000736B7300DED6D600BDBDBD00FFFFFF00B5ADB50010210800395A3100395A
      3900315229005273520039523900181018004A524A005A5A5A006B6B6B008C84
      8C006B8C6B00428C4200398C39009CBD9C00FFFFFF007B7B7B00084208003194
      3100187B1800005200004A4A4A00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00BDBDBD00BDBDBD004A4ADE000000940000008400000063001010
      94000000FF000000940000007B0000002900181808007B7B84007B7B7B008484
      8400FFFFFF00C6C6C600BDBDBD00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00EFC69C00FF943100FF943100FFAD6300FFC68C00FFBD8400FFF7EF00FF9C
      4200BD4208009C210000A5180000A5392100FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00BDBDBD002121
      1800FFD6BD00E7B5A500E7B59C00DEB59400C6946B00B5845200C6947300B58C
      5A00AD845200AD7B4A00946329008C5A18008C5A180084521000946B31003121
      18006B6B7300D6D6D600BDBDBD00FFFFFF00B5ADB50010210800395A3100395A
      3900315231004A734A0039523900181018004242420052525200636363007B73
      7B00638463006B9C6B004A8C4A006B9C6B00F7EFF70073737300104A1000318C
      3100187B1800005200004A4A4A00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00BDBDBD00C6C6BD00A5A5D6000000D60000006B0000007B00101029009C9C
      7B007373DE000000FF00000094000000840000003100101010007B7B84007B7B
      7B0084848400BDBDBD00BDBDBD00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00F7C68C00FFCE9C00FFB57300FF942900FF943100FFAD6300FFCE9C00F794
      3900B5390800A5210000A5180000A5523100FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00C6C6C6003939
      3900D6AD9400FFD6BD00E7B59C00CE9C7300423118005A422900BD845200B58C
      5A00B5845200A5733100392108005A4229008C5A100094631800845210001008
      00007B848400CECECE00BDBDBD00FFFFFF00B5ADB50010210800395A3100395A
      3900315231004A734A003952390018101800424A420052525200636363007B73
      7B006B8C6B0073A56B0052945200739C7300F7F7F7007373730010421000318C
      3100187B1800005200004A4A4A00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00BDBDBD00D6D6BD002929DE000000840000008C0000005A0031312900BDBD
      C600D6D6BD007373D6000000FF00000094000000840000002900101008007B7B
      7B007B7B7B00B5B5B500C6C6C600FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFB56B00F7D6B500FFC68C00FFC68400FFBD8400FF943100FF9C3100F78C
      3900AD290000A5210000A5180000A5634A00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00BDBDBD00C6C6C600ADB5
      B500524A42008C736300FFCEAD007B635A00634A310029211800A57B4A00C694
      6B00C6946300423121006B52390031211800945A100063390800100000007373
      7300CECECE00BDBDBD00FFFFFF00FFFFFF00B5ADB50010210800395A3100395A
      3900315231004A734A003952390018101800424A420052525200636363007B73
      7B006B8C6B0073A56B0052945200739C7300F7EFF7007373730010421000318C
      3100187B1800005200004A4A4A00FFFFFF00FFFFFF00FFFFFF00FFFFFF00BDBD
      BD00C6C6BD008C8CD6000000F7000000940000006B0000000800ADADAD00BDBD
      C600BDBDBD00D6D6B5007373DE000000FF000000940000008400000021002121
      1800C6C6C600FFFFFF00BDBDBD00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00EFBD8C00FF943100FF9C3900FFE7C600FFCE9C00FFBD8400FFC68400EF84
      29009C180000A5290000A51800009C6B5200FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00BDBDBD00CECE
      CE00ADADAD006B6B6B004A4239005239290052392100634A3900292118003929
      210039292100423121007B634A004A31100029180000524A4A00848C8C00CECE
      CE00BDBDBD00FFFFFF00FFFFFF00FFFFFF00B5ADB50010211000395A3100395A
      3900395A3100527B520039523900181818004A4A4A005A5A5A006B6B6B00847B
      8400739473007BAD7300529452007BA57B00FFFFFF007B7B7B00104A1000398C
      3900217B2100005A00004A4A4A00FFFFFF00FFFFFF00FFFFFF00FFFFFF00BDBD
      BD00C6C6BD008C8CCE006363DE000000F7000000CE0073738C00C6C6C600BDBD
      BD00FFFFFF00BDBDBD00D6D6B5007373DE000000F7000000940008087B009C9C
      9400C6C6C600BDBDBD00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00EFF7F700E7C69400F79C3900FFA54A00FFA54A00FFE7C600FFD6AD00E76B
      1000A5210000A52100009C210000DEC6B500FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00C6C6C600BDBD
      BD00C6C6C600D6D6D600A5A5AD007373730018181800524A39008C6342007B63
      4200846342008C7352003131310031292100A5A5AD00BDBDBD00D6D6CE00BDBD
      BD00C6C6C600FFFFFF00FFFFFF00FFFFFF00ADA5AD000010000021311800294A
      290021422100395A3100213921000000000031313100393939004A4A4A005A5A
      5A006B6B6B007B847B00848C8400949C9400CECECE0063636300081008002973
      2900106B1000004A00005A5A5A00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00BDBDBD00CECEBD00CECEBD00A5A5CE00A5A5D600C6C6CE00BDBDBD00FFFF
      FF00FFFFFF00FFFFFF00BDBDC600D6D6B5007373DE001010F7009C9CBD00CECE
      C600BDBDBD00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00EFDECE00F7B57300FF942900FFB56B00FFB56B00D663
      18009C1800009C311000DECEC600FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00BDBDBD00BDBDBD00CECEC600C6C6C600C6C6C6007B7B730073736B007B73
      7300736B6B008C8C8C00CECECE00BDC6C600CEC6C600C6BDBD00BDBDBD00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00CECECE005A5A5A00D6D6D6009494
      9400636363004A4A4A004A4A4A004A4A4A004A4A4A004A4A4A004A4A4A004A4A
      4A00524A5200524A52005252520052525200525252004A4A4A00C6C6C6009494
      94007B7B7B00848C8400FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00BDBDBD00BDBDBD00C6C6BD00C6C6BD00BDBDBD00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00BDBDBD00C6C6BD00C6C6BD00C6C6C600BDBD
      BD00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00EFC69400EF8C2900FF9C3100C64A
      08009C311800E7D6CE00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00BDBDBD00BDBDBD00BDBDBD00C6C6C600CECECE00C6CE
      CE00CECECE00C6C6C600BDBDBD00BDBDBD00BDBDBD00BDBDBD00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00BDBDBD00BDBDBD00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00BDBDBD00BDBDBD00BDBDBD00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00F7FFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00E7D6C600F7B56B00B56B
      4200E7DED600FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00BDBDBD00BDBDBD00BDBDBD00BDBDBD00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00BDBDBD00BDBDBD00BDBDBD00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00BDBDBD00C6C6C600C6C6C600BDBDBD00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00BDBDBD00BDBDBD00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00BDBDBD00BDBDBD00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00BDBDBD00CECECE00C6C6C600BDBDBD00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00BDBDBD00CECECE00848484008C8C8C00CECECE00BDBDBD00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00C6C6C600FFFFFF00BDBDBD00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00BDBDBD00C6C6C600C6C6C600BDBD
      BD00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00BDBDBD00D6D6D6006B6B6B00A5A5A500C6C6C600BDBDBD00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00BDBDBD00CECECE007373730000000000A5A5A500CECECE00BDBD
      BD00BDBDBD00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00BDBDBD00C6C6
      C6009C9C9C0042424200CECECE00BDBDBD00BDBDBD00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00BDBDBD00BDBDBD00CECECE008C8C8C004A4A4A00CECE
      CE00BDBDBD00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00BDBD
      BD00D6D6D6007373730000000000A5A5A500C6C6C600BDBDBD00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00BDBDBD00CECECE007B7B7B0000000000080808009C9C9C00CECE
      CE00BDBDBD00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00BDBDBD00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00BDBDBD00C6C6
      C600ADADAD00000000004A4A4A00CECECE00BDBDBD00BDBDBD00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00BDBDBD00CECECE00A5A5A5000000000039393900D6D6
      D600BDBDBD00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00BDBDBD00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00BDBDBD00D6D6
      D600737373000000000000000000A5A5A500C6C6C600BDBDBD00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00BDBDBD00B5B5B500D6D6D6007B7B7B000000000000000000080808009C9C
      9C00CECECE00BDBDBD00FFFFFF00FFFFFF00FFFFFF00BDBDBD00FFFFFF00BDBD
      BD00BDBDBD00C6C6C600BDBDBD00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00BDBDBD00C6C6
      C600A5A5A500000000000000000042424200CECECE00BDBDBD00BDBDBD00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00BDBDBD00CECECE009C9C9C00080808000000000042424200D6D6
      D600BDBDBD00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00C6C6C600C6C6C600FFFFFF00C6C6
      C600BDBDBD00BDBDBD00FFFFFF00FFFFFF00FFFFFF00BDBDBD00D6D6D6007373
      7300000000000000000000000000ADADAD00C6C6C600BDBDBD00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00BDBDBD00BDBD
      BD00C6C6C600D6D6D6009C9C9C00080808000000000000000000000000000000
      00009C9C9C00CECECE00BDBDBD00BDBDBD00BDBDBD00C6C6C600BDBDBD00BDBD
      BD00BDBDBD00B5B5B500BDBDBD00BDBDBD00FFFFFF00FFFFFF00BDBDBD00FFFF
      FF00FFFFFF00BDBDBD00BDBDBD00BDBDBD00BDBDBD00BDBDBD00BDBDBD00C6C6
      C600A5A5A5000000000000000000000000004A4A4A00CECECE00BDBDBD00BDBD
      BD00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00BDBD
      BD00BDBDBD00CECECE009C9C9C0000000000000000000000000042424200CECE
      CE00B5B5B500BDBDBD00BDBDBD00BDBDBD00BDBDBD00BDBDBD00BDBDBD00FFFF
      FF00BDBDBD00FFFFFF00FFFFFF00FFFFFF00BDBDBD00B5B5B500BDBDBD00B5B5
      B500C6C6C600C6C6C600BDBDBD00FFFFFF00BDBDBD00D6D6D600737373000000
      000000000000000000000000000021212100BDBDBD00D6D6D600BDBDBD00BDBD
      BD00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00BDBDBD00CECE
      CE00B5B5B5007B7B7B0008080800000000000000000000000000000000000000
      0000000000009C9C9C00CECECE00BDBDBD00C6C6C600ADADAD00B5B5B5009C9C
      9C009C9C9C007B7B7B0094949400C6C6C600FFFFFF00BDBDBD00C6C6C600BDBD
      BD00C6C6C600C6C6C600C6C6C600CECECE00D6D6D600C6C6C600CECECE00D6D6
      D600B5B5B500000000000000000000000000000000004A4A4A00CECECE00BDBD
      BD00BDBDBD00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00BDBD
      BD00CECECE009C9C9C00000000000000000000000000000000004A4A4A00E7E7
      E700CECECE00CECECE00CECECE00D6D6D600C6C6C600C6C6C600C6C6C600BDBD
      BD00C6C6C600BDBDBD00FFFFFF00FFFFFF007B7B7B00848484009C9C9C00A5A5
      A500B5B5B500B5B5B500C6C6C600BDBDBD00D6D6D60073737300000000000000
      0000000000000000000000000000000000002929290084848400C6C6C600C6C6
      C600BDBDBD00FFFFFF00FFFFFF00FFFFFF00BDBDBD00BDBDBD00C6C6C6009494
      9400212121000000000000000000000000000000000000000000000000000000
      000000000000080808009C9C9C00CECECE00BDBDBD00ADADAD00B5B5B5009C9C
      9C00A5A5A5007B7B7B0094949400C6C6C600BDBDBD00C6C6C600A5A5A500BDBD
      BD00B5B5B500949494009C9C9C007B7B7B004242420084848400424242004242
      420039393900000000000000000000000000000000000000000042424200CECE
      CE00BDBDBD00BDBDBD00FFFFFF00FFFFFF00FFFFFF00FFFFFF00BDBDBD00CECE
      CE009C9C9C000808080000000000000000000000000000000000181818004A4A
      4A00424242006B6B6B0063636300424242009C9C9C00949494009C9C9C00C6C6
      C600A5A5A500B5B5B500C6C6C600FFFFFF007B7B7B008C8C8C00A5A5A500A5A5
      A500B5B5B500B5B5B500BDBDBD00CECECE007373730000000000000000000000
      000000000000000000000000000000000000000000000000000039393900ADAD
      AD00C6C6C600FFFFFF00FFFFFF00FFFFFF00BDBDBD00BDBDBD00A5A5A5006363
      6300292929002929290000000000000000000000000000000000000000000000
      00000000000000000000000000009C9C9C00D6D6D6009C9C9C00B5B5B5009C9C
      9C00A5A5A5007B7B7B0094949400C6C6C600BDBDBD00C6C6C600ADADAD00B5B5
      B5009C9C9C008C8C8C006B6B6B00313131001010100018181800000000000000
      0000000000000000000000000000000000000000000000000000000000004A4A
      4A00CECECE00BDBDBD00BDBDBD00FFFFFF00C6C6C600BDBDBD00CECECE009C9C
      9C00000000000000000000000000000000000000000000000000000000000000
      0000000000000808080008080800292929004A4A4A008484840094949400A5A5
      A500B5B5B500BDBDBD00BDBDBD00FFFFFF007B7B7B008C8C8C009C9C9C00A5A5
      A500ADADAD00A5A5A500D6D6D600737373000000000000000000000000000000
      0000000000000000000000000000000000000000000039393900292929008484
      8400ADADAD00FFFFFF00FFFFFF00FFFFFF00C6C6C600ADADAD009C9C9C007B7B
      7B004A4A4A001818180000000000000000000000000000000000000000000000
      0000000000000000000000000000000000009C9C9C00CECECE00B5B5B5009C9C
      9C00A5A5A5007B7B7B0094949400C6C6C600BDBDBD00C6C6C600ADADAD00B5B5
      B500A5A5A5008C8C8C0073737300424242001818180031313100000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00004A4A4A00CECECE00BDBDBD00FFFFFF00B5B5B500CECECE009C9C9C000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000002121210021212100292929005A5A5A008484840094949400ADAD
      AD00ADADAD00B5B5B500BDBDBD00FFFFFF007B7B7B008C8C8C00A5A5A500A5A5
      A500BDBDBD00CECECE0073737300000000000000000000000000000000000000
      0000000000000000000000000000000000000000000021212100525252008C8C
      8C009C9C9C00BDBDBD00BDBDBD00FFFFFF00C6C6C600B5B5B5009C9C9C007B7B
      7B00424242001818180000000000000000000000000000000000000000000000
      00000000000000000000000000000000000008080800A5A5A500CECECE009C9C
      9C00A5A5A5007B7B7B0094949400C6C6C600BDBDBD00C6C6C600ADADAD00B5B5
      B500A5A5A5008C8C8C0073737300424242001818180031313100000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000004A4A4A00C6C6C600BDBDBD00CECECE009C9C9C00080808000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000001818180018181800292929005A5A5A008484840094949400ADAD
      AD00ADADAD00B5B5B500BDBDBD00FFFFFF007B7B7B008C8C8C00A5A5A5009C9C
      9C00D6D6D6007373730000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000212121004A4A4A008C8C
      8C009C9C9C00BDBDBD00BDBDBD00FFFFFF00C6C6C600B5B5B5009C9C9C007373
      7300424242002121210000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000808080094949400ADAD
      AD009C9C9C007B7B7B0094949400C6C6C600BDBDBD00C6C6C600ADADAD00B5B5
      B500A5A5A5008C8C8C0073737300424242002121210029292900000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000063636300CECECE00ADADAD0008080800000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000181818001818180029292900525252008484840094949400ADAD
      AD00ADADAD00BDBDBD00BDBDBD00FFFFFF007B7B7B008C8C8C009C9C9C00B5B5
      B500737373000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000029292900424242008C8C
      8C00A5A5A500BDBDBD00BDBDBD00FFFFFF00C6C6C600B5B5B5009C9C9C007B7B
      7B00424242001818180000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000042424200C6C6
      C6009C9C9C007B7B7B0094949400C6C6C600BDBDBD00C6C6C600ADADAD00B5B5
      B500A5A5A5008C8C8C0073737300424242001818180031313100000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000004A4A4A00C6C6C600BDBDBD00CECECE009C9C9C00080808000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000001818180018181800292929005A5A5A008484840094949400ADAD
      AD00ADADAD00B5B5B500BDBDBD00FFFFFF007B7B7B008C8C8C00A5A5A500BDBD
      BD00181818000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000212121004A4A4A008C8C
      8C009C9C9C00BDBDBD00BDBDBD00FFFFFF00C6C6C600B5B5B5009C9C9C007B7B
      7B00424242001818180000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000004A4A4A00CECECE009C9C
      9C00A5A5A5007B7B7B0094949400C6C6C600BDBDBD00C6C6C600ADADAD00B5B5
      B500A5A5A5008C8C8C0073737300424242001818180031313100000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00004A4A4A00CECECE00BDBDBD00FFFFFF00B5B5B500CECECE009C9C9C000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000001818180018181800212121005A5A5A008484840094949400ADAD
      AD00ADADAD00B5B5B500BDBDBD00FFFFFF007B7B7B008C8C8C009C9C9C00A5A5
      A500C6C6C6002929290000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000212121004A4A4A008C8C
      8C009C9C9C00BDBDBD00BDBDBD00FFFFFF00C6C6C600B5B5B5009C9C9C007373
      7300393939002121210000000000000000000000000000000000000000000000
      0000000000000000000000000000000000004A4A4A00C6C6C600B5B5B5009C9C
      9C00A5A5A5007B7B7B0094949400C6C6C600BDBDBD00C6C6C600ADADAD00B5B5
      B500A5A5A50094949400737373004A4A4A002929290029292900000000000000
      0000000000000000000000000000000000000000000000000000000000004A4A
      4A00CECECE00BDBDBD00BDBDBD00FFFFFF00C6C6C600BDBDBD00CECECE009C9C
      9C00000000000000000000000000000000000000000000000000000000000000
      00000000000018181800181818003939390052525200848484009C9C9C00ADAD
      AD00ADADAD00BDBDBD00BDBDBD00FFFFFF007B7B7B008C8C8C00A5A5A500A5A5
      A500FFFFFF00B5B5B50021212100000000000000000000000000000000000000
      0000000000000000000000000000000000000000000029292900424242008C8C
      8C00A5A5A500BDBDBD00BDBDBD00FFFFFF00C6C6C600ADADAD009C9C9C007B7B
      7B004A4A4A001818180000000000000000000000000000000000000000000000
      000000000000000000000000000042424200CECECE00A5A5A500B5B5B5009C9C
      9C00A5A5A5007B7B7B0094949400C6C6C600BDBDBD00C6C6C600A5A5A500B5B5
      B500A5A5A5008484840073737300212121000000000029292900000000000000
      000000000000000000000000000000000000000000000000000042424200CECE
      CE00BDBDBD00BDBDBD00FFFFFF00FFFFFF00FFFFFF00FFFFFF00BDBDBD00CECE
      CE009C9C9C000808080000000000000000000000000000000000000000000000
      000000000000101010001010100000000000525252007B7B7B008C8C8C00ADAD
      AD00A5A5A500B5B5B500C6C6C600FFFFFF007B7B7B008C8C8C00A5A5A500A5A5
      A500ADADAD00B5B5B500BDBDBD00212121000000000000000000000000000000
      0000000000000000000000000000000000000000000021212100525252008C8C
      8C009C9C9C00BDBDBD00BDBDBD00FFFFFF00BDBDBD00C6C6C600B5B5B5008484
      8400080808001010100000000000000000000000000000000000000000000000
      000000000000000000004A4A4A00CECECE00C6C6C600A5A5A500B5B5B5009C9C
      9C009C9C9C007B7B7B0094949400C6C6C600FFFFFF00BDBDBD00C6C6C600BDBD
      BD00ADADAD00B5B5B5009C9C9C00737373007B7B7B00737373007B7B7B007B7B
      7B006B6B6B00000000000000000000000000000000004A4A4A00CECECE00BDBD
      BD00BDBDBD00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00BDBD
      BD00CECECE009C9C9C0000000000000000000000000000000000292929008484
      84007373730073737300737373007B7B7B0084848400ADADAD00BDBDBD00ADAD
      AD00C6C6C600BDBDBD00FFFFFF00FFFFFF007B7B7B00848484009C9C9C00A5A5
      A500ADADAD00ADADAD00C6C6C600BDBDBD002121210000000000000000000000
      000000000000000000000000000000000000000000001818180010101000A5A5
      A500B5B5B500C6C6C600BDBDBD00FFFFFF00BDBDBD00BDBDBD00C6C6C600BDBD
      BD00B5B5B5004242420010101000000000000000000000000000000000000000
      0000000000004A4A4A00CECECE00BDBDBD00FFFFFF00B5B5B500B5B5B500BDBD
      BD00BDBDBD00B5B5B500BDBDBD00BDBDBD00FFFFFF00FFFFFF00BDBDBD00BDBD
      BD00C6C6C600BDBDBD00C6C6C600CECECE00CECECE00CECECE00CECECE00D6D6
      D600B5B5B5000000000000000000000000004A4A4A00CECECE00BDBDBD00BDBD
      BD00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00BDBD
      BD00BDBDBD00CECECE009C9C9C000000000000000000000000004A4A4A00E7E7
      E700CECECE00CECECE00CECECE00CECECE00CECECE00C6C6C600BDBDBD00C6C6
      C600BDBDBD00FFFFFF00FFFFFF00FFFFFF00BDBDBD00B5B5B500BDBDBD00B5B5
      B500B5B5B500BDBDBD00BDBDBD00C6C6C600BDBDBD0021212100000000000000
      000000000000000000000000000000000000181818006B6B6B00B5B5B500C6C6
      C600BDBDBD00BDBDBD00FFFFFF00FFFFFF00FFFFFF00FFFFFF00BDBDBD00BDBD
      BD00C6C6C600CECECE00BDBDBD00292929000000000000000000000000000000
      000042424200CECECE00BDBDBD00BDBDBD00FFFFFF00C6C6C600BDBDBD00BDBD
      BD00BDBDBD00C6C6C600BDBDBD00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00BDBDBD00BDBDBD00BDBDBD00BDBDBD00BDBDBD00BDBDBD00BDBDBD00C6C6
      C600A5A5A500000000000000000042424200CECECE00BDBDBD00BDBDBD00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00BDBDBD00CECECE009C9C9C00080808000000000042424200CECE
      CE00B5B5B500BDBDBD00BDBDBD00BDBDBD00BDBDBD00BDBDBD00BDBDBD00BDBD
      BD00FFFFFF00FFFFFF00FFFFFF00FFFFFF00C6C6C600C6C6C600FFFFFF00BDBD
      BD00BDBDBD00BDBDBD00FFFFFF00BDBDBD00C6C6C600BDBDBD00212121000000
      00000000000000000000000000004A4A4A00CECECE00C6C6C600C6C6C600BDBD
      BD00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00BDBDBD00BDBDBD00D6D6D600848484000000000008080800000000004A4A
      4A00CECECE00BDBDBD00BDBDBD00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00BDBDBD00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00BDBDBD00C6C6
      C600ADADAD00000000004A4A4A00CECECE00BDBDBD00BDBDBD00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00BDBDBD00CECECE00A5A5A5000000000039393900D6D6
      D600BDBDBD00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00BDBDBD00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00BDBDBD00C6C6C600BDBDBD002121
      2100000000000000000000000000B5B5B500C6C6C600BDBDBD00BDBDBD00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00BDBDBD00CECECE007373730000000000000000004A4A4A00CECE
      CE00BDBDBD00BDBDBD00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00BDBDBD00C6C6
      C6009C9C9C0042424200CECECE00BDBDBD00BDBDBD00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00BDBDBD00BDBDBD00CECECE008C8C8C004A4A4A00CECE
      CE00BDBDBD00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00BDBDBD00BDBDBD00C6C6C600BDBD
      BD00212121000000000000000000A5A5A500C6C6C600BDBDBD00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00BDBDBD00CECECE007B7B7B00000000004A4A4A00CECECE00BDBD
      BD00BDBDBD00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00C6C6C600FFFFFF00BDBDBD00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00BDBDBD00C6C6C600C6C6C600BDBD
      BD00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00BDBDBD00C6C6
      C600BDBDBD002121210000000000ADADAD00C6C6C600BDBDBD00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00BDBDBD00CECECE006B6B6B0042424200CECECE00BDBDBD00BDBD
      BD00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00BDBDBD00BDBDBD00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00BDBDBD00BDBDBD00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00BDBD
      BD00C6C6C600BDBDBD00292929009C9C9C00C6C6C600BDBDBD00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00424D3E000000000000003E000000
      2800000060000000780000000100010000000000A00500000000000000000000
      000000000000000000000000FFFFFF00FFFFFFFFFFFF78CED7BDD7BDFFFFFFFF
      FFFF78CE78D678CEFFFFFFFFFFFF78CE78D678CEFFFFFFFFFFFF18C6D39C0842
      F8000FFFE01F78CE78D678CEF0000FFF800F78CE78D678CEF0000FFE000F78CE
      78D678CEF0000FFC000F59CED7BDD7BDF0000FF8000FD7BD59CE8E73F0000FF0
      000F78D678D678CEF0000FF0000FD7BD78CE78D6F0000FF0000F18C6D7BD0421
      F0000FF0000F78D678CE78D6F0000FF0000F78D678CE78D6F0000FF0000F78D6
      78CE78D6F0000FF0000FD7BD78CE78D6F0000FF0000F78D678CE78D6F0000FF8
      000F78D678CE78D6F0000FF0000F78D678CE78D6F0000FF0001F78D678CE18C6
      FFFFFFFFFFFF78D678CE78D6FFFFFFFFFFFF78D678CE78D6FFFFFFFFFFFF78D6
      78CE78D6FFFFFFFFFFFFD7BDD7BD78D6EECCDFC00001FFFFFFFFFFFFB3346780
      000007FFE0FFFFFF76640C800000000000FFFFFF99B813800000000000FFFFFF
      6ECC0D800000000000F8000FFF9803C00000000000F0000FFFA403C000000000
      00F0000FFE8003C00000000000F0000FFE0003C00000000000F0000FFE0003C0
      0000000000F0000FFE0003C00000000000F0000FC00043C00000000000F0000F
      800003C00000000000F0000F800003C00000000000F0000F9FC003C000000000
      00F0000F804003C00000000000F0000F808003C00000000000F0000FFE0003C0
      0000000000F0000FFE0003C00001000000F0000FFE0003C00003000000F0000F
      FF8003C00007000000FFFFFFFF8003C0000F000000FFFFFFFF8003C0001F0000
      00FFFFFFFFFFFFE0007FFFFFFFFFFFFFC00003E00000800000F23767800001E0
      0000000000EE0CDFC000008000000000007026ECC00000000000000040C0199B
      C00000000000000000B03766C000000000000000008039FFC000010000000000
      008025FFC000010000008000008001FFC0000100000000000080007FC0000100
      000000000080007FC0000100000000000080007FC00001000000000000820003
      C00001000000000000800003C00001000000000000800001C000010000010000
      008007F9C00001000003000000800201C00001C00003000000800103C00001E0
      000F00000080007FC0000FE0000F00000280007FC01007E0003F00000080007F
      C0001FE0007F0000008001FFE0005FF0007F0000008001FFC0001FF801FF8000
      C0C001FFC001FFFFFFFF000000FFFFFFF8000F800000FFFFFFFFFFFFF8000300
      0000FFFFFFFFFFFFF00001000000FD3C3FFFFFFFF00000000000F0181F800000
      F00000000000E0004F000000F00000000000C0002F000000E00000000000C000
      07000000E00000000000C00003000000E00000000000C00007000000C0000100
      0000E0000F000000800003000000E0001F000000000001000000F0003F000000
      000000000000F8003F000000000000000000FC000F000000000000000000FC00
      07000000000000000000F80013000000C00001000000F80009000000C0000100
      0000F00001000000C00001000000F00001000000800003000000E00005000000
      C00007000000E00803000000C00007000000F01C07000000F0001F000000F83E
      0F000000FC003F000000FE7F1F000000FC3FFFFFFFFFFFFFFFFFF8FFFC3FFFFF
      F9FFFF9FFFFFF87FF81FFFFFFAFFFF0FFFFFF03FF807FFFFC07FFC07FFFFE03F
      F807FBFFC03FFC07FFBFC03FF003A1FFC01FF807FF23803FC00000D8000FE000
      1701000FC00000800007E00003000007000000000003C0000100000700000000
      0001000001000007000000000001000001000001000000000000000001000001
      0000000000000000010000010000000000000000010000010000000000010000
      01000001000000000001000001080001000000000003C0000100000100000080
      0007E00003000001000080C0000FE00007000003C00081F0001FF8000F22000F
      F001FBFFC03FFC07FFBF001FF803FFFFC07FFC07FFFF003FF807FFFFFAFFFF0F
      FFFFC03FF80FFFFFF9FFFF9FFFFFE03F00000000000000000000000000000000
      000000000000}
  end
  object MainMenu1: TMainMenu
    BiDiMode = bdRightToLeftReadingOnly
    ParentBiDiMode = False
    Left = 659
    Top = 368
    object N1: TMenuItem
      Caption = #1601#1575#1610#1604
      ImageIndex = 13
      ShortCut = 45
      object NInsertCustomer: TMenuItem
        Caption = #1605#1588#1578#1585#1610' '#1580#1583#1610#1583
        ImageIndex = 13
        ShortCut = 45
        OnClick = NInsertCustomerClick
      end
      object N15: TMenuItem
        Caption = #1575#1589#1604#1575#1581' '#1575#1591#1604#1575#1593#1575#1578' '#1605#1588#1578#1585#1610
        ImageIndex = 14
        ShortCut = 32781
        OnClick = ApropertyExecute
      end
      object DeleteItem: TMenuItem
        Caption = #1581#1584#1601' '#1605#1588#1578#1585#1610
        Hint = 'Delete'
        ImageIndex = 4
        ShortCut = 16430
        OnClick = ADeleteExecute
      end
      object N46: TMenuItem
        Caption = '-'
      end
      object N10: TMenuItem
        Caption = #1579#1576#1578' '#1608#1585#1608#1583' '#1608' '#1582#1585#1608#1580
        OnClick = N10Click
      end
      object N14: TMenuItem
        Caption = '-'
      end
      object N12: TMenuItem
        Caption = #1582#1585#1608#1580
        ImageIndex = 12
        ShortCut = 27
        OnClick = Action6Execute
      end
    end
    object N2: TMenuItem
      Caption = #1578#1593#1575#1585#1610#1601
      object emplates1: TMenuItem
        Caption = #1608#1610#1585#1575#1610#1588' Templates'
        OnClick = emplates1Click
      end
      object N19: TMenuItem
        Caption = #1588#1607#1585' '#1607#1575' '#1608' '#1575#1587#1578#1575#1606' '#1607#1575
        OnClick = AcityExecute
      end
      object N4: TMenuItem
        Caption = #1575#1606#1608#1575#1593' '#1601#1593#1575#1604#1610#1578
        ImageIndex = 15
        OnClick = AGroupsExecute
      end
      object N17: TMenuItem
        Caption = #1576#1575#1586#1575#1585#1610#1575#1576' '#1607#1575
        OnClick = N17Click
      end
      object N26: TMenuItem
        Caption = #1575#1606#1608#1575#1593' '#1575#1602#1583#1575#1605
        OnClick = N26Click
      end
      object N57: TMenuItem
        Caption = #1578#1593#1591#1610#1604#1575#1578' '#1587#1575#1604
        Visible = False
        OnClick = N57Click
      end
      object N73: TMenuItem
        Caption = #1578#1593#1585#1610#1601' '#1589#1606#1593#1578#1607#1575
        OnClick = N73Click
      end
      object N54: TMenuItem
        Caption = '-'
      end
      object N6: TMenuItem
        Caption = #1575#1606#1608#1575#1593' '#1602#1585#1575#1585#1583#1575#1583
        OnClick = N6Click
      end
      object N53: TMenuItem
        Caption = #1575#1606#1608#1575#1593' '#1590#1605#1575#1606#1578' '#1602#1585#1575#1585#1583#1575#1583
        OnClick = N53Click
      end
      object N52: TMenuItem
        Caption = #1587#1575#1604' '#1608' '#1583#1585#1589#1583' '#1605#1575#1604#1610#1575#1578
        OnClick = N52Click
      end
      object N50: TMenuItem
        Caption = '-'
      end
      object NHost: TMenuItem
        Caption = #1587#1575#1610#1578#1607#1575#1610' '#1575#1610#1606#1578#1585#1606#1578#1610
        OnClick = NHostClick
      end
      object NHostGroup: TMenuItem
        Caption = #1578#1593#1585#1610#1601' '#1711#1585#1608#1607' '#1570#1583#1585#1587#1607#1575#1610' '#1575#1610#1606#1578#1585#1606#1578#1610
        OnClick = NHostGroupClick
      end
      object N58: TMenuItem
        Caption = '-'
      end
      object N59: TMenuItem
        Caption = #1578#1593#1575#1585#1610#1601' '#1605#1585#1576#1608#1591' '#1576#1607' '#1605#1608#1575#1585#1583' '#1608' '#1603#1575#1585#1607#1575
        OnClick = N59Click
      end
    end
    object N24: TMenuItem
      Caption = #1605#1581#1589#1608#1604#1575#1578
      object N23: TMenuItem
        Action = AProduct
      end
      object N27: TMenuItem
        Action = AAddProduct
        Caption = #1575#1582#1578#1589#1575#1589' '#1605#1581#1589#1608#1604' '#1576#1607' '#1605#1588#1578#1585#1610
      end
      object N61: TMenuItem
        Caption = #1605#1581#1589#1608#1604' '#1608' '#1583#1585#1589#1583' '#1662#1608#1585#1587#1575#1606#1578
        Visible = False
        OnClick = N61Click
      end
    end
    object N22: TMenuItem
      Caption = #1605#1583#1610#1585#1610#1578' '#1587#1610#1587#1578#1605
      object N20: TMenuItem
        Caption = #1578#1593#1585#1610#1601' '#1603#1575#1585#1576#1585
        OnClick = N20Click
      end
      object N51: TMenuItem
        Caption = #1578#1593#1585#1601' '#1606#1608#1593' '#1705#1575#1585#1576#1585
        OnClick = N51Click
      end
      object N38: TMenuItem
        Caption = #1578#1606#1592#1610#1605' '#1587#1591#1581' '#1583#1587#1578#1585#1587#1610
        OnClick = N38Click
      end
      object N47: TMenuItem
        Caption = '-'
      end
      object NSystemSettings: TMenuItem
        Caption = #1601#1585#1605' '#1578#1606#1592#1610#1605#1575#1578' '#1587#1610#1587#1578#1605#1610
        OnClick = NSystemSettingsClick
      end
      object N18: TMenuItem
        Caption = #1582#1591#1575#1607#1575#1610' '#1585#1582' '#1583#1575#1583#1607' '
        OnClick = N18Click
      end
      object N21: TMenuItem
        Caption = #1578#1607#1610#1607' '#1601#1575#1610#1604' '#1662#1588#1578#1610#1576#1575#1606
        OnClick = N21Click
      end
      object N29: TMenuItem
        Caption = #1576#1585#1608#1586#1585#1587#1575#1606#1610' '#1601#1575#1610#1604' '#1607#1575#1610' '#1602#1585#1575#1585#1583#1575#1583
        OnClick = N29Click
      end
    end
    object N16: TMenuItem
      Caption = #1601#1585#1605' '#1607#1575
      object N35: TMenuItem
        Action = AAddform
      end
      object N36: TMenuItem
        Action = AAddRefrenceTable
      end
      object N37: TMenuItem
        Action = AreportForm
        Visible = False
      end
      object N62: TMenuItem
        Action = acShowUserSequence
      end
    end
    object NMali: TMenuItem
      Caption = #1575#1605#1608#1585' '#1605#1575#1604#1610
      object NStore: TMenuItem
        Caption = #1578#1593#1585#1610#1601' '#1575#1606#1576#1575#1585
        OnClick = NStoreClick
      end
      object NFirstArtGroup: TMenuItem
        Caption = #1578#1593#1585#1610#1601' '#1711#1585#1608#1607' '#1575#1589#1604#1610' '#1705#1575#1604#1575
        OnClick = NFirstArtGroupClick
      end
      object NSecendArtGroup: TMenuItem
        Caption = #1578#1593#1585#1610#1601' '#1711#1585#1608#1607' '#1601#1585#1593#1610' '#1705#1575#1604#1575
        OnClick = NSecendArtGroupClick
      end
      object NUnit: TMenuItem
        Caption = #1578#1593#1585#1610#1601' '#1608#1575#1581#1583' '#1705#1575#1604#1575
        OnClick = NUnitClick
      end
      object NArticle: TMenuItem
        Caption = #1578#1593#1585#1610#1601' '#1705#1575#1604#1575
        OnClick = NArticleClick
      end
      object NArtService: TMenuItem
        Caption = #1578#1593#1585#1610#1601' '#1705#1575#1585#1607#1575#1610' '#1582#1583#1605#1575#1578#1610
        OnClick = NArtServiceClick
      end
      object N28: TMenuItem
        Caption = '-'
      end
      object N31: TMenuItem
        Caption = #1601#1575#1705#1578#1608#1585' '#1601#1585#1608#1588
        OnClick = N31Click
      end
      object N39: TMenuItem
        Caption = #1601#1575#1705#1578#1608#1585' '#1582#1585#1610#1583
        OnClick = N39Click
      end
      object N40: TMenuItem
        Caption = #1662#1610#1588' '#1601#1575#1705#1578#1608#1585
        OnClick = N40Click
      end
      object N41: TMenuItem
        Caption = #1601#1575#1705#1578#1608#1585' '#1576#1585#1711#1588#1578' '#1575#1586' '#1601#1585#1608#1588
        OnClick = N41Click
      end
      object N42: TMenuItem
        Caption = #1601#1575#1705#1578#1608#1585' '#1576#1585#1711#1588#1578' '#1575#1586' '#1582#1585#1610#1583
        OnClick = N42Click
      end
      object N43: TMenuItem
        Caption = #1601#1575#1705#1578#1608#1585' '#1575#1605#1575#1606#1610
        OnClick = N43Click
      end
      object N44: TMenuItem
        Caption = #1601#1575#1705#1578#1608#1585' '#1575#1587#1578#1607#1604#1575#1705
        OnClick = N44Click
      end
      object N45: TMenuItem
        Caption = '-'
      end
      object NCheque1: TMenuItem
        Caption = #1670#1705#1607#1575#1610' '#1583#1585#1610#1575#1601#1578#1610
        OnClick = NCheque1Click
      end
      object NCheque2: TMenuItem
        Caption = #1670#1705#1607#1575#1610' '#1662#1585#1583#1575#1582#1578#1610
        OnClick = NCheque2Click
      end
    end
    object Yeganehmenu: TMenuItem
      Caption = #1588#1585#1603#1578' '#1610#1711#1575#1606#1607
      Visible = False
      object N32: TMenuItem
        Caption = #1575#1610#1580#1575#1583' '#1602#1601#1604' '#1580#1583#1610#1583
        Visible = False
        OnClick = N32Click
      end
      object N56: TMenuItem
        Caption = #1575#1610#1580#1575#1583' '#1602#1601#1604' '#1587#1582#1578' '#1575#1601#1586#1575#1585#1610
        Visible = False
        OnClick = N56Click
      end
      object N25: TMenuItem
        Caption = #1589#1583#1608#1585' '#1588#1605#1575#1585#1607' '#1587#1585#1610#1575#1604
        Visible = False
        OnClick = N25Click
      end
      object N74: TMenuItem
        Caption = #1602#1601#1604' '#1606#1585#1605' '#1575#1601#1586#1575#1585#1610
        OnClick = N74Click
      end
      object N7: TMenuItem
        Caption = '-'
      end
      object N63: TMenuItem
        Action = acShowPoorsantList
      end
      object N55: TMenuItem
        Caption = #1711#1586#1575#1585#1588' '#1602#1601#1604' '#1607#1575#1610' '#1589#1575#1583#1585#1607
        Visible = False
        OnClick = N55Click
      end
      object N64: TMenuItem
        Action = acSendSMSForCustomerLock
      end
      object N34: TMenuItem
        Caption = #1711#1586#1575#1585#1588' '#1578#1605#1575#1587' '#1608' '#1601#1585#1608#1588
        Visible = False
        OnClick = N34Click
      end
      object N13: TMenuItem
        Caption = '-'
      end
      object N33: TMenuItem
        Action = Action5
        Visible = False
      end
    end
    object N9: TMenuItem
      Caption = #1711#1586#1575#1585#1588
      object N8: TMenuItem
        Caption = #1711#1586#1575#1585#1588' '#1575#1586' '#1575#1591#1604#1575#1593#1575#1578' '#1605#1588#1578#1585#1610#1575#1606
        ImageIndex = 8
        OnClick = AreportExecute
      end
      object N60: TMenuItem
        Caption = #1711#1586#1575#1585#1588' '#1575#1606#1589#1585#1575#1601
        OnClick = N60Click
      end
      object N49: TMenuItem
        Caption = '-'
      end
      object N3: TMenuItem
        Action = Amonth
      end
      object N5: TMenuItem
        Caption = #1711#1586#1575#1585#1588' '#1602#1585#1575#1585#1583#1575#1583' '#1607#1575' '
        OnClick = N5Click
      end
      object N11: TMenuItem
        Caption = #1711#1586#1575#1585#1588' '#1579#1576#1578#1610
        Visible = False
        OnClick = N11Click
      end
      object N48: TMenuItem
        Caption = '-'
      end
      object N65: TMenuItem
        Action = acShowRepTasks
      end
      object N30: TMenuItem
        Caption = #1711#1586#1575#1585#1588' '#1608#1585#1608#1583' '#1608' '#1582#1585#1608#1580
        OnClick = N30Click
      end
      object N75: TMenuItem
        Caption = '-'
      end
      object N76: TMenuItem
        Caption = #1711#1586#1575#1585#1588' '#1608#1590#1593#1610#1578' '#1605#1588#1578#1585#1610#1575#1606
        OnClick = N76Click
      end
    end
    object N67: TMenuItem
      Caption = #1662#1610#1575#1605#1705
      object N68: TMenuItem
        Action = acShowSMSGeneral
      end
      object N69: TMenuItem
        Action = acShowSMSEndContract
      end
      object N70: TMenuItem
        Action = acSMSBirthDate
      end
      object N66: TMenuItem
        Caption = '-'
      end
      object N72: TMenuItem
        Action = acShowAutoSMSText
      end
      object N71: TMenuItem
        Action = acSMSSettings
      end
    end
  end
  object DGroups: TDataSource
    DataSet = Groups
    Left = 822
    Top = 124
  end
  object Citys: TADODataSet
    Connection = Dm.YeganehConnection
    CursorType = ctStatic
    AfterScroll = CitysAfterScroll
    CommandText = 
      'Select StateCityTitle,StateTitle, CityID, StateID from VWCities ' +
      #13#10'Order By CityTitle, StateTitle'
    Parameters = <>
    Left = 192
    Top = 274
    object CitysCityID: TAutoIncField
      FieldName = 'CityID'
      ReadOnly = True
    end
    object CitysStateID: TIntegerField
      FieldName = 'StateID'
    end
    object CitysStateCityTitle: TWideStringField
      FieldName = 'StateCityTitle'
      ReadOnly = True
      Size = 103
    end
    object CitysStateTitle: TWideStringField
      FieldName = 'StateTitle'
      Size = 50
    end
  end
  object ActionManager: TActionManager
    ActionBars.SessionCount = 92
    ActionBars = <
      item
        Items = <
          item
            Action = Ainsert
            ImageIndex = 13
            ShortCut = 16429
          end
          item
            Action = Aproperty
            ImageIndex = 14
            ShortCut = 32781
          end
          item
            Action = ADelete
            ImageIndex = 4
            LastSession = 7
            ShortCut = 16430
          end
          item
            Action = Action3
            ImageIndex = 7
            LastSession = 45
          end
          item
            Action = Agrouping
            ImageIndex = 15
          end
          item
            Background.Data = {
              055449636F6E0000010012006060000001002000A89400002601000048480000
              0100200088540000CE95000040400000010020002842000056EA000030300000
              01002000A82500007E2C01002020000001002000A81000002652010010100000
              0100200068040000CE6201006060180000000000A87000003667010048481800
              0000000048400000DED701004040180000000000283200002618020030301800
              00000000A81C00004E4A02002020180000000000A80C0000F666020010101800
              00000000680300009E7302006060080000000000A82C00000677020048480800
              00000000C81B0000AEA3020040400800000000002816000076BF020030300800
              00000000A80E00009ED502002020080000000000A808000046E4020010100800
              0000000068050000EEEC02002800000060000000C00000000100200000000000
              8025000000000000000000000000000000000000000000000000000000000001
              7F7F7F0200000001000000010000000100000001000000010000000100000001
              0000000100000001000000010000000100000001000000010000000100000001
              0000000100000001000000010000000100000001000000010000000100000001
              0000000100000001000000010000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000005
              0000002100000034000000350000003500000035000000350000003500000035
              0000003500000035000000350000003500000035000000350000003500000035
              0000003500000035000000350000003500000035000000350000003500000035
              00000035000000350000002A0000000E00000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              000000000000000000000000000000000000000000000000000000003028203F
              3A322E7E322C24A1312B24A9322A24A8322A24A8322A24A8322A24A8322A24A8
              322A24A8322A24A8322A24A8322A24A8322A24A8322A24A8322A24A8322A24A8
              322A24A8322A24A8322A24A8322A24A8322A24A8322A24A8322A24A8322A24A8
              332A24A8342E2BA90D0909860000003F00000009000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000057484063
              D3B89FF5C3AA92F8C1A992F9C1A992F9C1A992F9C1A992F9C2A992F9C2A992F9
              C2A992F9C2A992F9C2A992F9C2A992F9C2A992F9C2A992F9C2A992F9C2A992F9
              C2A992F9C2A992F9C2A992F9C2A992F9C2A992F9C2A992F9C2A992F9C2A992F9
              C1A891F9CCB399F975695ADC0000007E0000002C000000020000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              00000000000000000000000000000000000000000000000000000000664C4C0A
              9E8977ABD1B79DFFC7AE96FFC7AE96FFC7AE96FFC7AE96FFC8AE96FFC7AE95FF
              C7AE95FFC7AE95FFC7AE95FFC7AE95FFC7AE95FFC7AE95FFC7AE95FFC7AE95FF
              C7AE95FFC7AE95FFC7AE95FFC7AE95FFC7AE95FFC7AE95FFC7AE95FFC8AF96FF
              C6AC92FFBFA183FFC7AD91FC443B33C200000064000000190000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              5C544624BEA58DDCCBB299FFC6AD95FFC6AD95FFC5AC94FFC2AA91FFBFA68EFF
              BEA58CFFBDA48BFFBDA48BFFBDA48BFFBDA48BFFBDA48BFFBDA48BFFBDA48BFF
              BDA48BFFBDA48BFFBDA48BFFBDA48BFFBDA48BFFBDA48BFFBEA58DFFC0A78FFF
              BDA186FFB79979FFC1A283FFB09B85F51B1814A50000004A0000000C00000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              000000036D615356CCB199FBC8AE96FFC6AD95FFC3AA91FFBDA38AFFB89F86FF
              B59C83FFB39B82FFB39B82FFB39A81FFB39A81FFB39A81FFB39A81FFB39A81FF
              B39A81FFB39A81FFB39A81FFB39A81FFB39A81FFB39A82FFB59C83FFB49A80FF
              AD9072FFB09172FFB69777FFC7A98BFE897969E4010101880000003400000004
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              00000000452E2E0B927F6E92D0B69DFFC8B098FFC5AD94FFBDA48CFFB69E86FF
              B29981FFAF977FFFAF977EFFAF967EFFAF967EFFAF967EFFAF967EFFAF967EFF
              AF967EFFAF967EFFAF967EFFAF967EFFAF967EFFAF967EFFB0987FFFA98E72FF
              A38567FFA98A6BFFB29374FFBC9D7EFFC9AE92FC574B41CC0000006D00000021
              0000000100000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000756B581AA6907DC7D7C1AAFFD3BFAAFFCAB6A0FFC2AD99FF
              BDA893FFBAA590FFB8A38EFFB7A28DFFB7A28DFFB7A28DFFB7A28DFFB7A28DFF
              B7A28DFFB7A28DFFB7A28DFFB7A28DFFB7A28DFFB7A38EFFB5A08AFFAC937AFF
              AA9075FFB0967BFFB9A085FFC4AA8FFFCFB59AFFAE9479F8251E18AF00000054
              0000001100000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000017B6C5D44C4AC94EED9C6B1FFD3C0ACFFCAB7A3FF
              C2AF9BFFBEAA96FFBBA894FFBAA793FFB39E88FFAD9780FFAE9780FFAE9780FF
              AE9780FFAE9780FFAE9780FFAE9780FFAE9780FFAE9780FFAB947CFFA88F76FF
              AA9279FFAF977DFFB69E84FFC1A88FFFCCB39AFFCDB295FF89715AEA0A080592
              0000003C00000008000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000005F5F3F088676657BD5BEA7FFD8C5B1FFD0BDA9FF
              C8B4A0FFC1AD99FFBDAA96FFBBA894FFB49F89FFA68E74FFA2886DFFA2886EFF
              A2886EFFA2886EFFA2886EFFA2886EFFA2886EFFA2886EFFA2876CFFA2896EFF
              A89076FFAC937AFFB1987FFFBAA289FFC4AC92FFCEB59CFFC4A88BFD5E4D3DD5
              0000007700000027000000020000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              00000000000000000000000000000000635842179E8A76B3DBC5AEFFD6C4B0FF
              CEBAA6FFC5B29EFFBFAC98FFBCA995FFBAA692FFAE9780FFA2876DFFA1866AFF
              A1866BFFA1866BFFA1866BFFA1866BFFA1866BFFA1866BFFA1866BFFA0866AFF
              A48B70FFAA9178FFAD957CFFB39A81FFBDA48BFFC8B097FFCFB59BFFB2977AF8
              362D22BA0000005D000000170000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              00000000000000000000000000000000000000007A6B5834B9A28DDDDAC6B1FF
              D4C1ADFFCAB7A3FFC4B09CFFBEAB97FFBCA995FFB7A38EFFAA917AFFA1866BFF
              A1866BFFA1866BFFA1866BFFA1866BFFA1866BFFA1866BFFA1866BFFA1866AFF
              A1866BFFA68C73FFAB9279FFAF967DFFB69D84FFBFA78EFFCBB29AFFCEB398FF
              967B64EF15100E9D000000440000000B00000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              00000000000000000000000000000000000000007F3F3F048C786966CDB69FF9
              D8C5B1FFD1BEAAFFC9B5A1FFC1AE9AFFBDAA96FFBAA793FFB49F89FFA68C73FF
              A1866AFFA1866BFFA1866BFFA1866BFFA1866BFFA1866BFFA1866BFFA1866BFF
              A0856AFFA1876DFFA78F75FFAB937AFFB0977EFFB9A087FFC4AB92FFCDB59CFF
              C7AB8FFE6F5B4ADC010101810000002E00000004000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              000000000000000000000000000000000000000000000000635446129985729E
              D9C3ACFFD6C3B0FFCFBBA7FFC6B29EFFC0AC98FFBCA995FFBAA692FFB09A83FF
              A3896EFFA1866AFFA1866BFFA1866BFFA1866BFFA1866BFFA1866BFFA1866BFF
              A1866BFFA0856AFFA38A6FFFA99177FFAD957BFFB29A80FFBCA38AFFC7AF96FF
              CFB69CFFB89B80FA45392CC3000000660000001D000000010000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              000000000000000000000000000000000000000000000000000000006F5B4E27
              AE9A86CDDBC6B0FFD5C2AEFFCCB8A4FFC4B09CFFBFAB97FFBCA995FFB8A490FF
              AB947CFFA2876CFFA1866BFFA1866BFFA1866BFFA1866BFFA1866BFFA1866BFF
              A1866BFFA1866BFFA1866AFFA58C72FFAA9178FFAE957CFFB59D84FFBFA68CFF
              C9B198FFCFB499FFA0866CF2231D16A70000004D0000000F0000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              84746253C6AF99EED9C5B1FFD3BFABFFC9B6A2FFC3AF9BFFBDAA96FFBBA894FF
              B5A18CFFA78F76FFA1866BFFA1866BFFA1866BFFA1866BFFA1866BFFA1866BFF
              A1866BFFA1866BFFA1866AFFA1876CFFA78E74FFAB937AFFAF977EFFB79F86FF
              C2AA91FFCCB49BFFCAAE92FF7D6752E20909058B000000360000000600000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              55553F0C9583708AD5BFA8FFD8C5B1FFCFBCA8FFC7B39FFFC1AD99FFBDA995FF
              BAA793FFB19C86FFA48A71FFA1866AFFA1866BFFA1866BFFA1866BFFA1866BFF
              A1866BFFA1866BFFA1866BFFA0856AFFA3896FFFA99077FFAC947BFFB29980FF
              BAA188FFC5AD94FFCFB69CFFBDA184FC534635CC0000006F0000002200000002
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              000000005C4D4521A99581BDDAC5AEFFD6C3AFFFCDB9A5FFC5B19DFFBFAC98FF
              BCA995FFB9A591FFAD967FFFA2886DFFA1866AFFA1866BFFA1866BFFA1866BFF
              A1866BFFA1866BFFA1866BFFA1866BFFA0856BFFA58B71FFA99178FFAE957CFF
              B49C83FFBDA58CFFC8B198FFCFB59AFFA88D73F52F261EB10000005500000013
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              00000000000000007D6A5B43BFA993E1DAC6B0FFD3C0ACFFCBB7A3FFC3AF9BFF
              BEAB97FFBCA895FFB7A28DFFA99178FFA1876BFFA1866BFFA1866BFFA1866BFF
              A1866BFFA1866BFFA1866BFFA1866BFFA1866BFFA1876BFFA68D73FFAB9279FF
              AF967DFFB69E84FFC1A88FFFCBB39AFFCDB295FF89725BE9120F0B950000003E
              0000000900000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              00000000000000006666660593806F77CEB8A1F9D8C5B1FFD1BDA9FFC8B4A0FF
              C1AE9AFFBDAA96FFBBA793FFB39D88FFA58C72FFA1866BFFA1866BFFA1866BFF
              A1866BFFA1866BFFA1866BFFA1866BFFA1866BFFA0856AFFA2886DFFA89076FF
              AB937AFFB19980FFBAA188FFC4AC92FFCEB69CFFC3A78AFE61513FD402020279
              0000002900000003000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              000000000000000000000000554A3F18A6917EACD8C2ACFFD6C3AFFFCEBAA6FF
              C6B29EFFC0AC98FFBDA995FFB9A692FFAF9881FFA3896EFFA1856AFFA1866BFF
              A1866BFFA1866BFFA1866BFFA1866BFFA1866BFFA1866BFFA0856AFFA48B70FF
              A99077FFAD957BFFB39A81FFBCA48BFFC8B097FFCFB69BFFAF9579F83C3126BA
              0000005E00000018000000010000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000069605135B9A38DD4DAC6B0FFD4C1ADFF
              CBB7A3FFC4B09CFFBFAB97FFBCA995FFB7A38EFFAA927AFFA2876CFFA1866BFF
              A1866BFFA1866BFFA1866BFFA1866BFFA1866BFFA1866BFFA1866BFFA1866BFF
              A58C72FFAA9278FFAF967DFFB59D84FFC0A78EFFCBB39AFFCFB497FF947C62ED
              1E18139F000000460000000D0000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              000000000000000000000000000000000000000089776564CAB39EF0D9C5B1FF
              D2BEAAFFC9B5A1FFC2AE9AFFBDAA96FFBBA894FFB49F8AFFA78E74FFA1866BFF
              A1866BFFA1866BFFA1866BFFA1866BFFA1866BFFA1866BFFA1866BFFA1856AFF
              A2886DFFA88F76FFAC937AFFB0987FFFB9A087FFC3AB92FFCDB59BFFC9AC8FFF
              705C4ADC09070583000000300000000600000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              00000000000000000000000000000000000000005B5B480EA08B789AD5BFA9FF
              D7C4B0FFCFBBA7FFC6B29EFFC0AD99FFBCA995FFBAA692FFB09A84FFA38A6FFF
              A1866BFFA1866BFFA1866BFFA1866BFFA1866BFFA1866BFFA1866BFFA1866BFF
              A0856AFFA38970FFA99177FFAD947BFFB29A81FFBBA389FFC7AE95FFCFB69CFF
              B89C81FB483B2EC4000000680000001E00000001000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000005B4E422AB49D89CA
              D9C5AFFFD5C2AEFFCCB8A4FFC4B19DFFBEAB97FFBCA894FFB8A490FFAC957CFF
              A2876CFFA1866BFFA1866BFFA1866BFFA1866BFFA1866BFFA1866BFFA1866BFF
              A0856AFFA1866BFFA58C72FFAA9278FFAE967DFFB59C83FFBEA58CFFC9B198FF
              D0B59AFF9D846BF2272119A90000004E00000010000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              000000000000000000000000000000000000000000000000000000007C695A52
              C4AD97E7DAC5B1FFD3BFABFFCAB6A2FFC2AF9BFFBEAA96FFBBA894FFB6A18CFF
              A88F76FFA1866BFFA1866BFFA1866BFFA1866BFFA1866BFFA1866BFFA1866BFF
              A1866BFFA0856AFFA1876CFFA78E74FFAB9379FFB0977EFFB89F86FFC2AA91FF
              CCB49BFFCCB093FF7B6750E3120E0A8C00000037000000070000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000066663305
              97827187D0BBA4F9D8C4B0FFD0BCA8FFC7B4A0FFC1AD99FFBDA995FFBBA793FF
              B29C87FFA48B71FFA1866BFFA1866BFFA1866BFFA1866BFFA1866BFFA1866BFF
              A1866BFFA1866BFFA08569FFA3896EFFA89076FFAD957CFFB29A81FFBAA289FF
              C5AD94FFCFB69CFFBFA385FE564737CC02020271000000240000000300000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              5B483F1CAE9984BAD8C3ADFFD6C3AFFFCDBAA6FFC5B19DFFBFAC98FFBCA894FF
              B9A692FFAE9780FFA3886DFFA1866BFFA1866BFFA1866BFFA1866BFFA1866BFF
              A1866BFFA1866BFFA0856AFFA0866AFFA58C72FFAA9279FFAD957CFFB49B82FF
              BDA48BFFC9B097FFD0B69BFFA88F73F632281FB2000000570000001500000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              00000000695A4E41C0A994DEDAC5B0FFD3C0ADFFCAB7A3FFC3B09CFFBEAA96FF
              BBA894FFB7A38EFFA99178FFA1866BFFA1866BFFA1866BFFA1866BFFA1866BFF
              A1866BFFA1866BFFA1866BFFA0856AFFA1876CFFA68E74FFAA9279FFAF977EFF
              B69E85FFC1A88FFFCBB39AFFCFB396FF88705AE919140F960000003F0000000A
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              000000000000000086746274CDB7A1F3D8C5B1FFD0BDA9FFC8B4A0FFC1AD99FF
              BDAA96FFBBA794FFB39E88FFA58C72FFA1866BFFA1866BFFA1866BFFA1866BFF
              A1866BFFA1866BFFA1866BFFA1866BFFA0856AFFA2886DFFA88F76FFAC937AFF
              B19980FFB9A188FFC4AC93FFCEB59CFFC6A98DFF61513FD60806047B0000002A
              0000000400000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              00000000000000005555440FA5907CAAD6C0AAFED6C3AFFFCEBBA7FFC6B29EFF
              BFAC98FFBDA995FFBAA792FFAF9982FFA3896EFFA1866BFFA1866BFFA1866BFF
              A1866BFFA1866BFFA1866BFFA1866BFFA1866BFFA0856AFFA48A70FFA99177FF
              AD957CFFB39A81FFBCA48BFFC7AF96FFD0B69CFFB2977AFB3B3027BC00000060
              0000001900000001000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000005D4E4331BBA78FD7D9C5B0FFD5C2AEFFCBB8A4FF
              C4B19DFFBFAB97FFBCA894FFB8A48FFFAB937BFFA1876CFFA1866BFFA1866BFF
              A1866BFFA1866BFFA1866BFFA1866BFFA1866BFFA0856AFFA1866AFFA58D73FF
              AA9278FFAE967DFFB59D84FFC0A78EFFCBB39AFFD0B599FF947C64EF1E1913A0
              000000470000000D000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              000000000000000000000000000000007363535FCBB49EEDD9C5B1FFD2BFABFF
              C9B6A2FFC2AE9AFFBEAA96FFBBA894FFB5A08BFFA78E74FFA1866BFFA1866BFF
              A1866BFFA1866BFFA1866BFFA1866BFFA1866BFFA1866BFFA0856AFFA1876DFF
              A78F75FFAB9379FFB0987EFFB89F86FFC2AA91FFCDB59BFFCBAF91FF6D5C48DD
              0D09078400000031000000050000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              000000000000000000000000000000003F3F3F0496847298D5BEA8FAD7C5B0FF
              CFBCA8FFC6B39FFFC0AD99FFBDAA96FFBBA794FFB19B84FFA48A70FFA1866BFF
              A1866BFFA1866BFFA1866BFFA1866BFFA1866BFFA1866BFFA1866BFFA08569FF
              A3896FFFA99077FFAC947BFFB29A80FFBAA289FFC6AE95FFD0B69CFFBB9F83FE
              46392EC6020202690000001F0000000200000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              000000000000000000000000000000000000000057473F20B49F8ACAD9C4AEFF
              D5C2AEFFCCB9A5FFC4B19DFFBFAC98FFBCA995FFB9A591FFAC957EFFA2886DFF
              A1866BFFA1866BFFA1866BFFA1866BFFA1866BFFA1866BFFA1866BFFA1866AFF
              A0856AFFA58C72FFAA9178FFAD957CFFB59C83FFBEA68DFFCAB299FFD0B69AFF
              A2886DF5221C16AA000000500000001100000001000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              00000000000000000000000000000000000000000000000065584A4BC8B19AE9
              D9C5B1FFD3BFACFFCAB6A2FFC2AF9BFFBEAB97FFBBA894FFB6A28DFFA88F76FF
              A1876BFFA1866BFFA1866BFFA1866BFFA1866BFFA1866BFFA1866BFFA1866BFF
              A0856AFFA1876BFFA78E75FFAB9379FFAF977EFFB79E85FFC1A990FFCCB49BFF
              CFB295FF7C6651E5110E0A8E0000003800000007000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000200000003000000030000000300000003000000030000000300000003
              0000000300000003000000030000000300000003000000030000000300000003
              0000000300000003000000030000000300000003000000030000000300000003
              0000000300000003000000020000000100000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000083716082
              D2BBA6F7D8C4B1FFD0BDA9FFC7B4A0FFC1AE9AFFBDA995FFBBA793FFB39D87FF
              A58C71FFA1866BFFA1866BFFA1866BFFA1866BFFA1866BFFA1866BFFA1866BFF
              A1866BFFA08569FFA2896FFFA89076FFAC947AFFB19980FFBAA188FFC5AC93FF
              CEB69CFFC5A88AFF524336CF0604047300000024000000030000000000000000
              0000000000000000000000000000000000000000000000000000000000000007
              000000160000001C0000001C0000001C0000001C0000001C0000001C0000001C
              0000001C0000001C0000001C0000001C0000001C0000001C0000001C0000001C
              1212121C1212121C1212121C1212121C1212121C1212121C1212121C1212121C
              1212121C1212121B171717161F1F1F0800000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              000000000000000000000000000000000000000000000000000000006655550F
              A7907EBBD8C2ADFED6C4B0FFCDBAA6FFC5B29EFFC0AC98FFBCA894FFB9A692FF
              AE9880FFA2886DFFA1866BFFA1866BFFA1866BFFA1866BFFA1866BFFA1866BFF
              A1866BFFA1866BFFA08569FFA48B71FFA99178FFAD947BFFB39A81FFBDA58CFF
              C8B097FFD0B69BFFAD9275FA2B241DB400000058000000140000000100000000
              00000000000000000000000000000000000000000000000000000006223A3F34
              21383D641A2E32731A2E33721A2E33721A2E33721A2E33721A2E33721A2E3372
              1A2E33721A2E33721A2E33721A2E33721A2E33721A2E33721A2E33721A2E3372
              1A2E33721D2E3372213133722131337221313372213133722131337221313372
              2130327321383A710D13134D0000001400000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              564C4335C3AB95E6D9C5B1FFD4C1ADFFCAB7A3FFC3B09CFFBFAB97FFBBA894FF
              B8A48FFFAA9279FFA2866BFFA1866BFFA1866BFFA1866BFFA1866BFFA1866BFF
              A1866BFFA1866BFFA0856AFFA1866BFFA68D74FFAA9279FFAF967DFFB69D84FF
              C0A88EFFCCB39AFFD0B598FF89735CED120F0B980000003F0000000A00000000
              0000000000000000000000000000000000000000000000011A2E3526508B94AC
              5B9FA9DE579AA5E1589AA3E0589AA3E0589AA3E0589AA3E0589AA3E0589AA3E0
              589AA3E0589AA3E0589AA3E0589AA3E0589AA3E0589AA3E0589AA3E0589AA3E0
              569AA3E05E9BA3E06CA0A3E06DA0A3E06DA0A3E06DA0A3E06DA0A3E06CA0A3E0
              6BA0A3E0629FA7E1223A3F750000000D00000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              000000007061536BD1BBA3F5D9C5B1FFD1BEAAFFC8B5A1FFC2AE9AFFBDA995FF
              BBA894FFB49F8AFFA68D73FFA1866BFFA1866BFFA1866BFFA1866BFFA1866BFF
              A1866BFFA1866BFFA1866BFFA08569FFA2886DFFA78F76FFAB937AFFB0987FFF
              B9A187FFC4AB92FFCDB59CFFCBAE90FF5F513ED90806067C0000002A00000003
              00000000000000000000000000000000000000001313270D4476818E8EF8FFFF
              8EF7FFFF8EF6FFFF8EF5FFFF8DF5FFFF8DF5FFFF8DF5FFFF8DF5FFFF8DF5FFFF
              8DF5FFFF8DF5FFFF8DF5FFFF8DF5FFFF8DF5FFFF8DF5FFFF8DF5FFFF8DF5FFFF
              8EF6FFFFA2FBFFFFAEFDFFFFADFDFFFFADFDFFFFACFDFFFFAAFDFFFFA3FDFFFF
              9DFCFDFE76CAD1D00F1419320000000100000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000055555503988472A7D8C2ADFCD7C4B0FFCFBBA7FFC6B39FFFC0AD99FF
              BCA995FFBAA793FFB09A83FFA3886EFFA1866BFFA1866BFFA1866BFFA1866BFF
              A1866BFFA1866BFFA1866BFFA1866BFF9F8569FFA48A70FFAA9177FFAD957CFF
              B39A81FFBBA38AFFC8B097FFD0B79DFFB99C80FE352D22BF0200006100000018
              00000001000000000000000000000000000000042B4B515881E0EEF48AEEFFFF
              86E9FFFF85E8FFFF84E6FFFF82E5FFFF82E5FFFF82E5FFFF82E5FFFF82E5FFFF
              82E5FFFF82E5FFFF82E5FFFF82E5FFFF82E5FFFF82E5FFFF82E5FFFF81E4FFFF
              90EAFFFFA2F0FFFFA2F1FFFFA3F2FFFFA2F3FFFF99F3FFFF8FF1FFFF89F5FFFF
              7BE3ECEE1B363954000000010000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000544D3D21B9A38DDAD9C5B0FFD5C2AEFFCCB8A4FFC4B19DFF
              BEAB97FFBCA894FFB9A590FFAB947CFFA2876CFFA1866BFFA1866BFFA1866BFF
              A1866BFFA1866BFFA1866BFFA1866BFFA1866AFFA0866AFFA58C72FFAA9278FF
              AF967DFFB59D83FFBEA68DFFCBB39AFFCFB397FF987E63F4140F0CA200000048
              0000000C00000000000000000000000117282E2C6AB9C4D18DF5FFFF86E9FFFF
              82E5FFFF7DE0FFFF7ADDFFFF78DBFFFF78DAFFFF78DAFFFF78DAFFFF78DAFFFF
              78DAFFFF78DAFFFF78DAFFFF78DAFFFF78DAFFFF78DAFFFF77DAFFFF7FDDFFFF
              96E5FFFF98E6FFFF98E8FFFF94EBFFFF8EF0FFFF86F0FFFF82F1FFFF84F6F8F9
              3869718700000009000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              00000000000000000000000063534A52CFB79FF6D8C6B2FFD2BFABFFC9B6A2FF
              C2AE9AFFBDAA96FFBBA894FFB5A28DFFA78D74FFA1866BFFA1866BFFA1866BFF
              A1866BFFA1866BFFA1866BFFA1866BFFA1866BFFA0856AFFA1876CFFA88E75FF
              AB937AFFB0977EFFB8A087FFC2AA91FFBDA082FFC2A180FF6F5E49E207050386
              0000003100000004000000000F1F1F104C858EA18DF7FFFF86E9FFFF81E4FFFF
              79DCFFFF74D7FFFF71D4FFFF71D4FFFF70D3FFFF70D3FFFF70D3FFFF70D3FFFF
              70D3FFFF70D3FFFF70D3FFFF70D3FFFF70D3FFFF70D3FFFF72D4FFFF8ADCFFFF
              90DFFFFF89DEFFFF80DFFFFF7BE3FFFF7FEDFFFF82F0FFFF87FAFCFD58A2ABBB
              0000001B00000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000084746390D8C2ABFCD7C5B1FFCEBBA7FF
              C6B29EFFBFAC98FFBCA995FFBAA793FFB19B85FFA2886DFFA1866BFFA1866BFF
              A1866BFFA1866BFFA1866BFFA1866BFFA1866BFFA1866BFFA0856AFFA3896FFF
              A99177FFAC947BFFB29A82FFB1957AFFB09172FFBA9A7BFFBD9D7DFF42352BC8
              0202026A0000001C000000042C4C516787EAF9FD88EDFFFF83E5FFFF7ADDFFFF
              73D6FFFF6FD2FFFF6CCFFFFF6CCFFFFF77D2FFFF78D2FFFF78D2FFFF78D2FFFF
              78D2FFFF78D2FFFF78D2FFFF78D2FFFF78D2FFFF78D2FFFF73D1FFFF73D2FFFF
              66CEFFFF5CCDFFFF5AD3FFFF63DDFFFF6DE8FFFF73F1FFFF65D0DDE4101D1D3D
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              000000000000000000000000000000005B5B480EAC9580CBDAC5B0FFD5C1AEFF
              CAB7A3FFC2AF9BFFBDAA96FFBBA894FFB7A38EFFA58C73FFA0856AFFA1866BFF
              A1866BFFA1866BFFA1866BFFA1866BFFA1866BFFA1866BFFA1866BFFA0856AFF
              A58C72FFAB927AFFA99075FFA18263FFA98A6AFFB49576FFBE9E7EFFA88A70FA
              1A1611AC000000500F1E1E4374C8D7E08CF3FFFF84E7FFFF7CDFFFFF74D7FFFF
              6ED1FFFF6BCEFFFF67CBFFFF70CFFFFF84D5FFFF83D5FFFF83D5FFFF83D5FFFF
              83D5FFFF83D5FFFF83D5FFFF82D5FFFF84D5FFFF74CFFFFF4BC2FFFF3BBDFFFF
              34BDFFFF37C3FFFF42CDFFFF4FDAFFFF56E4FFFF56E4FBFB19434C6E00000003
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000594C4339C9AF98F4D8C4B0FF
              CEBBA7FFC5B19DFFBEAB97FFBBA894FFB9A591FFAA9279FFA0856AFFA1866BFF
              A1866BFFA1866BFFA1866BFFA1866BFFA1866BFFA1866BFFA1866BFFA0856AFF
              A1866BFFA78E73FF9A7D5FFF997A5AFFA48465FFB09273FFB79879FFC2A180FF
              826B56EA0303038D467B88C28DF5FFFF86E9FFFF7EE1FFFF76D8FFFF70D3FFFF
              6CCFFFFF69CCFFFF5FC8FFFF64CAFFFF64CAFFFF64CAFFFF64CAFFFF64CAFFFF
              64CAFFFF64CAFFFF64CAFFFF65CBFFFF62CAFFFF3FBDFFFF2EB8FFFF31BBFFFF
              38C1FFFF41CBFFFF4DD7FFFF57E0FFFF5DEEFDFE2E7A8BA40000001000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              00000000000000000000000000000000000000000000000064574A8CD7C0A8FF
              D1BEAAFFC6B39FFFBFAC98FFBBA894FFBAA793FFAE977FFFA1866BFFA1866BFF
              A1866BFFA1866BFFA1866BFFA1866BFFA1866BFFA1866BFFA1866BFFA1866BFF
              A2876CFF977A5CFF8F6F4EFF967656FF9F7F5FFFAA8A6AFFB49474FFB69677FF
              BD9875FF616558E369C2D7FB87EAFFFF81E4FFFF78DBFFFF71D4FFFF6DCFFFFF
              6BCDFFFF61C9FFFF5FC8FFFF5CC7FFFF5BC7FFFF5BC7FFFF5BC7FFFF5BC7FFFF
              5BC7FFFF5BC7FFFF5BC7FFFF5EC8FFFF44BFFFFF2FB9FFFF30BBFFFF35BFFFFF
              3EC7FFFF4AD3FFFF56DFFFFF5DEDFFFF45B2C5D50000002A0000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              000000000000000000000000000000000000000000000019826F60BBCEB49AFF
              CAB6A0FFC7B4A0FFBFAB97FFBBA894FFBAA792FFAD967EFFA1866BFFA1866BFF
              A1866BFFA1866BFFA1866BFFA1866BFFA1866BFFA1866BFFA1866BFFA2886DFF
              9D8165FF8B6948FF8A6846FF906E4CFF987654FFA68462FFB18F6DFFB28F6CFF
              B08C69FF7DACB0FE7DDFF5FF84E7FFFF7BDDFFFF73D5FFFF6ED1FFFF6BCEFFFF
              65CAFFFF5DC8FFFF5EC8FFFF5CC7FFFF5CC7FFFF5CC7FFFF5CC7FFFF5CC7FFFF
              5CC7FFFF5CC7FFFF5FC8FFFF4FC3FFFF31B9FFFF30BAFFFF35BEFFFF3CC5FFFF
              45D0FFFF52DCFFFF5AE7FFFF53D8F0F6122D3355000000010000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000006554C4389D0B69CFCC5AB93FF
              BEA68EFFC2AF9AFFBFAC98FFBBA894FFB9A590FFA99177FFA0856AFFA1866BFF
              A1866BFFA1866BFFA1866BFFA1866BFFA1866BFFA1866BFFA2876CFFA1876BFF
              907050FF876542FF8B6846FF926F4DFF9C7957FFA98664FFB18E6CFFB48B65FF
              87988EFF74D2E8FF86E9FFFF7DE0FFFF74D7FFFF6FD1FFFF6CCEFFFF68CBFFFF
              5DC8FFFF5FC8FFFF5CC7FFFF5CC7FFFF5CC7FFFF5CC7FFFF5CC7FFFF5CC7FFFF
              5CC7FFFF5EC8FFFF58C6FFFF38BBFFFF2EB9FFFF32BCFFFF39C3FFFF43CCFFFF
              50D9FFFF58E2FFFF5CEDFFFF25606D8900001C09000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000027211B53BEA88FF3CBB198FFC1A990FF
              B79E86FFB69F88FFBDAA96FFBBA894FFB6A28DFFA58C72FFA1856AFFA1866BFF
              A1866BFFA1866BFFA1866BFFA1866BFFA1866BFFA1866BFFA3886EFF957758FF
              886744FF8A6745FF8F6D4AFF977552FFA3815FFFAF8D6BFFB48C67FF9A8F78FF
              70C0D2FF83E7FEFF80E4FFFF77DAFFFF70D3FFFF6CCFFFFF6ACCFFFF61C8FFFF
              5EC8FFFF5CC7FFFF5CC7FFFF5CC7FFFF5CC7FFFF5CC7FFFF5CC7FFFF5CC7FFFF
              5DC7FFFF5DC8FFFF41BEFFFF30B9FFFF32BCFFFF37C1FFFF3FC9FFFF4BD4FFFF
              57E0FFFF5EEFFFFF3C98ABBE0818181F00000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              00000000000000000000000006060027A08B78D0CFB49CFFC4AB93FFBBA38AFF
              B39A82FFAD947CFFB59F89FFBBA894FFAF9881FFA2876CFFA1866BFFA1866BFF
              A1866BFFA1866BFFA1866BFFA1866BFFA1866BFFA3886EFF9B7F62FF8A6847FF
              896644FF8D6B48FF947250FF9E7C5AFFAA8866FFB38E6AFFAA8B6BFF74AEB7FF
              7EE1F8FF83E6FFFF7ADDFFFF72D5FFFF6DD0FFFF6BCDFFFF64C9FFFF5DC8FFFF
              5DC7FFFF5CC7FFFF5CC7FFFF5CC7FFFF5CC7FFFF5CC7FFFF5CC7FFFF5CC7FFFF
              5FC8FFFF4BC2FFFF31B9FFFF31BAFFFF36BFFFFF3DC7FFFF47D1FFFF53DDFFFF
              5BEAFFFF4DC7DAE50F2A32420000000200000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              00000000000000000000000D7363549FCFB59CFBC6AD95FFC0A78EFFB79E85FF
              AF977EFFAB9279FFAB927AFFAF9982FFA58C72FFA1866AFFA1866BFFA1866BFF
              A1866BFFA1866BFFA1866BFFA1866BFFA2876DFF9F8469FF8D6D4DFF886543FF
              8C6947FF916F4DFF9A7856FFA78562FFB08E6BFFB28B66FF819E99FF77D6EDFF
              84E8FFFF7DE0FFFF75D8FFFF6ED1FFFF6BCEFFFF67CBFFFF5FC9FFFF5FC8FFFF
              5CC7FFFF5CC7FFFF5CC7FFFF5CC7FFFF5CC7FFFF5CC7FFFF5CC7FFFF5FC8FFFF
              53C4FFFF34BAFFFF30BAFFFF35BEFFFF3AC4FFFF43CDFFFF52DAFFFF59E4FFFF
              57E2F9FD1F535C71000000070000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              00000000000000023F3A3168C5AC94F5C9B097FFC2A991FFB9A087FFB29980FF
              AC947BFFAA9279FFA58B71FFA3896FFFA1876CFFA1866BFFA1866BFFA1866BFF
              A1866BFFA1866BFFA1866BFFA1866BFFA2886DFF937456FF896644FF8A6846FF
              906D4BFF977552FFA4825FFFAE8C69FFB58C67FF939380FF72C7DAFF84E7FDFF
              80E3FFFF77DAFFFF71D4FFFF6CCFFFFF69CCFFFF60C8FFFF5FC8FFFF5CC7FFFF
              5CC7FFFF5CC7FFFF5CC7FFFF5CC7FFFF5CC7FFFF5CC7FFFF5DC7FFFF5CC7FFFF
              3DBDFFFF2FB9FFFF31BCFFFF39C2FFFF41CAFFFF4ED7FFFF57E0FFFF5DEEFFFF
              348293A60B222216000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000011110D39AE9783DDCCB39AFFC4AB93FFBBA38AFFB49B82FFAE957CFF
              AB9279FFA78E74FFA2876DFFA2886DFFA1866BFFA1866BFFA1866BFFA1866BFF
              A1866BFFA1866BFFA1866BFFA3896EFF997C5EFF896846FF896744FF8D6B49FF
              957350FFA07E5BFFAC8A67FFB38E69FFA48D6FFF73B5C0FF80E3F9FF83E6FFFF
              79DCFFFF72D5FFFF6DD0FFFF6BCDFFFF62C9FFFF5FC8FFFF5DC7FFFF5CC7FFFF
              5CC7FFFF5CC7FFFF5CC7FFFF5CC7FFFF5CC7FFFF5CC7FFFF5EC8FFFF46C0FFFF
              31B9FFFF31BBFFFF35BFFFFF3DC7FFFF49D3FFFF55DEFFFF5DEDFFFF44B1C3D3
              142D383200000002000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              00000018887867B2CEB39AFCC6AD94FFBEA58CFFB59D84FFB0977EFFAB927AFF
              A88F76FFA3896EFFA2886EFFA1866BFFA1866BFFA1866BFFA1866BFFA1866BFF
              A1866BFFA1866BFFA2886DFF9E8266FF8C6C4BFF886643FF8C6A47FF92704EFF
              9C7A57FFA98764FFB18E6BFFAF8B67FF7CA4A4FF7ADAF0FF85E8FFFF7CDEFFFF
              74D7FFFF6ED1FFFF6BCEFFFF66CAFFFF5EC8FFFF5EC8FFFF5CC7FFFF5CC7FFFF
              5CC7FFFF5CC7FFFF5CC7FFFF5CC7FFFF5CC7FFFF5FC8FFFF50C3FFFF34BAFFFF
              30BAFFFF35BEFFFF3CC5FFFF46D0FFFF52DCFFFF5AE7FFFF52D6EAF21E4A555C
              0000000500000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000007
              5B4E427EC8AE96F5C8AF97FFC1A88FFFB89F86FFB19880FFAD947BFFAA9178FF
              A58A70FFA2886EFFA1866CFFA1866BFFA1866BFFA1866BFFA1866BFFA1866BFF
              A1866BFFA2876CFFA1866BFF917252FF886643FF8A6845FF8F6D4BFF997755FF
              A58260FFAF8D6AFFB48C66FF8C9789FF74CCE0FF84E7FEFF7FE2FFFF76D9FFFF
              70D3FFFF6CCFFFFF69CCFFFF5FC8FFFF5FC8FFFF5CC7FFFF5CC7FFFF5CC7FFFF
              5CC7FFFF5CC7FFFF5CC7FFFF5CC7FFFF5EC8FFFF58C6FFFF3ABCFFFF30B9FFFF
              33BCFFFF39C2FFFF42CCFFFF4FD8FFFF58E2FFFF5BEAFFFF2C74818E0F0F1F10
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              000000000000000000000000000000000000000000000000000000002C25214B
              B9A189E6CCB299FFC3AA92FFBAA189FFB29A81FFAD957CFFAA9279FFA68C73FF
              A2886DFFA2876CFFA1866BFFA1866BFFA1866BFFA1866BFFA1866BFFA1866BFF
              A1866BFFA3896EFF97795BFF886745FF8A6744FF8E6C49FF967452FFA07E5CFF
              AD8A68FFB48D68FF9D8E75FF73BBC9FF81E4FBFF81E5FFFF78DBFFFF71D4FFFF
              6DD0FFFF6ACCFFFF62C9FFFF5FC8FFFF5DC7FFFF5CC7FFFF5CC7FFFF5CC7FFFF
              5CC7FFFF5CC7FFFF5CC7FFFF5DC7FFFF5DC7FFFF42BFFFFF2FB9FFFF31BBFFFF
              37C1FFFF40C9FFFF4BD5FFFF55DFFFFF5DEDFFFF3F9FB1BE132D342700000001
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              00000000000000000000000000000000000000000000000007070724998773C2
              CDB39AFEC5AC94FFBDA48CFFB59C83FFAF967DFFAB9279FFA88F76FFA3896EFF
              A2886DFFA1866BFFA1866BFFA1866BFFA1866BFFA1866BFFA1866BFFA1866BFF
              A3886DFF9C8064FF8B6A49FF896644FF8C6A48FF93714EFF9D7B58FFAA8865FF
              B28E6AFFAB8B6AFF7AAAAEFF7CDDF3FF83E6FFFF7BDEFFFF73D6FFFF6ED1FFFF
              6BCDFFFF65CAFFFF5EC8FFFF5DC8FFFF5CC7FFFF5CC7FFFF5CC7FFFF5CC7FFFF
              5CC7FFFF5CC7FFFF5CC7FFFF5FC8FFFF4BC2FFFF33BAFFFF30BAFFFF35BEFFFF
              3CC6FFFF47D0FFFF54DCFFFF5BEAFFFF4CC5D8E21B484F4A0000000400000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              00000000000000000000000000000000000000000000000D70625691C9B097F7
              C8AF96FFC0A78FFFB79F86FFB0977FFFAC947BFFAA9178FFA38A6FFFA2886EFF
              A1876CFFA1866BFFA1866BFFA1866BFFA1866BFFA1866BFFA1866BFFA2886DFF
              A0856AFF907051FF886644FF8B6946FF916F4DFF9A7755FFA68462FFB08D6AFF
              B28C66FF869C93FF76D1E5FF85E8FEFF7EE1FFFF75D8FFFF6FD2FFFF6CCFFFFF
              67CCFFFF5FC8FFFF5EC8FFFF5CC7FFFF5CC7FFFF5CC7FFFF5CC7FFFF5CC7FFFF
              5CC7FFFF5CC7FFFF5EC8FFFF54C4FFFF37BBFFFF30BAFFFF34BDFFFF3BC4FFFF
              44CDFFFF50DAFFFF59E4FFFF57E0F5FA2A6976790000000C0000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000002433B335EBDA58EEACBB198FF
              C2A991FFBAA188FFB29980FFAD947CFFAA9279FFA58C72FFA2886DFFA2876DFF
              A1866BFFA1866BFFA1866BFFA1866BFFA1866BFFA1866BFFA1876CFFA2886DFF
              957758FF886744FF896745FF8F6D4AFF977452FFA3805EFFAD8B68FFB48D67FF
              97927CFF74C1D1FF82E6FBFF81E4FFFF78DBFFFF71D4FFFF6DD0FFFF6ACDFFFF
              61C9FFFF5EC8FFFF5DC7FFFF5CC7FFFF5CC7FFFF5CC7FFFF5CC7FFFF5CC7FFFF
              5CC7FFFF5DC7FFFF5DC8FFFF3FBEFFFF2FB9FFFF32BCFFFF38C2FFFF40CAFFFF
              4DD6FFFF56E0FFFF5BECFFFF3891A0A811222A1E000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000019141433A7927CCFCDB39AFFC4AB93FF
              BCA38BFFB49B82FFAE957DFFAB927AFFA78D75FFA3886DFFA2886DFFA1866BFF
              A1866BFFA1866BFFA1866BFFA1866BFFA1866BFFA1866BFFA2886DFF9A7D60FF
              8B6948FF886644FF8D6B49FF94724FFF9F7C5AFFAB8866FFB38E69FFA68D6FFF
              77B0B7FF7EDFF6FF83E6FFFF7ADDFFFF72D5FFFF6ED1FFFF6BCEFFFF63CAFFFF
              5EC8FFFF5DC7FFFF5CC7FFFF5CC7FFFF5CC7FFFF5CC7FFFF5CC7FFFF5CC7FFFF
              5CC7FFFF5EC8FFFF61C9FFFF42BFFFFF2EBAFFFF36BFFFFF3EC7FFFF49D2FFFF
              54DDFFFF5CECFFFF45B6C7D21940493B00000002000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              00000000000000000000000000000016847364A3CAB098FBC7AE95FFBFA68DFF
              B69E85FFB0977EFFAC937BFFA99077FFA3896FFFA2886DFFA1876CFFA1866BFF
              A1866BFFA1866BFFA1866BFFA1866BFFA1866BFFA2876CFF9F8467FF8E6E4DFF
              886643FF8C6947FF926F4DFF9B7957FFA78562FFB08D69FFB08B68FF82A19DFF
              78D5EAFF84E8FFFF7DE0FFFF75D8FFFF6FD2FFFF6CCFFFFF67CBFFFF60C8FFFF
              5EC8FFFF5CC7FFFF5CC7FFFF5CC7FFFF5CC7FFFF5CC7FFFF5CC7FFFF5CC7FFFF
              5CC7FFFF61C9FFFF61C9FFFF55C6FFFF3AC0FFFF38C3FFFF45CEFFFF51DBFFFF
              5AE7FFFF53D3E7EF235F6A650000000800000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000065A4E4371C1A991EECAB098FFC1A990FFB99F87FF
              B19980FFAC947BFFAA9179FFA58B71FFA2886DFFA1876CFFA1866BFFA1866BFF
              A1866BFFA1866BFFA1866BFFA1866BFFA2876CFFA2876CFF937455FF896644FF
              8A6845FF906D4BFF987654FFA4815FFFAE8C69FFB38C67FF919584FF74C7D8FF
              83E7FDFF81E4FFFF78DBFFFF70D3FFFF6DCFFFFF69CDFFFF60C9FFFF5FC8FFFF
              5DC7FFFF5CC7FFFF5CC7FFFF5CC7FFFF5CC7FFFF5CC7FFFF5CC7FFFF5CC7FFFF
              5DC8FFFF66CBFFFF64CAFFFF62CBFFFF57CBFFFF41C9FFFF4AD5FFFF57E2FFFF
              5BE7FEFF33829294000C0C150000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              00000000000000002D292243AE9882DBCDB39AFFC3AA92FFBBA289FFB39A82FF
              AD957CFFAA9279FFA78D73FFA2886DFFA2876CFFA1866BFFA1866BFFA1866BFF
              A1866BFFA1866BFFA1866BFFA1866BFFA3886DFF997B5DFF8A6847FF896644FF
              8E6C49FF957351FFA07E5BFFAC8967FFB48E69FFA18E73FF75B6C0FF7FE2F8FF
              85E8FFFF7CDFFFFF73D6FFFF6ED1FFFF6BCDFFFF62C9FFFF5FC8FFFF5DC7FFFF
              5CC7FFFF5CC7FFFF5CC7FFFF5CC7FFFF5CC7FFFF5CC7FFFF5CC7FFFF5CC7FFFF
              5FC8FFFF69CCFFFF67CBFFFF69CEFFFF6CD4FFFF5ED6FFFF53DBFFFF5BE9FFFF
              40A4B7C9142D3232000000010000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              000000000707072192806FB3CBB199FFC6AD94FFBEA58DFFB59D84FFAF977EFF
              AB937AFFA89076FFA3896FFFA2886DFFA1866BFFA1866BFFA1866BFFA1866BFF
              A1866BFFA1866BFFA1866BFFA2876DFF9D8165FF8D6C4BFF896644FF8C6A48FF
              93704EFF9C7A58FFA98664FFB28F6BFFAC8E6AFB80A8A7FD79D8EEFF86EAFFFF
              83E6FFFF79DCFFFF71D4FFFF6CCFFFFF68CCFFFF60C9FFFF5EC7FFFF5CC7FFFF
              5CC7FFFF5CC7FFFF5CC7FFFF5CC7FFFF5CC7FFFF5CC7FFFF5CC7FFFF5CC7FFFF
              60C9FFFF66CBFFFF64CAFFFF67CEFFFF6FD5FFFF75DFFFFF67E8FFFF4EC9E0F7
              13333A900000001F000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000C6D5F5383C4AB94F4C9AF97FFC0A78EFFB79F86FFB19880FFAC947BFF
              AA9178FFA48A70FFA2886DFFA1876CFFA1866BFFA1866BFFA1866BFFA1866BFF
              A1866BFFA1866BFFA2876CFFA1856AFF917253FF886644FF8B6846FF906E4CFF
              997754FFA48260FFAF8D6AFFB6926DFF78654CAD62AAB7CA88EFFDFF86E9FFFF
              83E6FFFF79DCFFFF71D4FFFF6BCEFFFF6FCFFFFF6ECEFFFF5EC8FFFF5CC7FFFF
              5CC7FFFF5CC7FFFF5CC7FFFF5CC7FFFF5CC7FFFF5CC7FFFF5CC7FFFF5CC7FFFF
              5FC8FFFF5EC8FFFF5AC7FFFF5ECBFFFF65D3FFFF73DFFFFF7AEFFFFF5CCDE5F9
              0E2328A3000000480000000D0000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000002
              453C3354B59E89E1CCB29AFFC3AA91FFBAA188FFB39A81FFAD947CFFAA9279FF
              A68C73FFA2886EFFA2876CFFA1866BFFA1866BFFA1866BFFA1866BFFA1866BFF
              A1866BFFA1876CFFA1876CFF97785BFF896746FF8A6745FF8E6C4AFF967452FF
              A17F5CFFAC8A68FFB79470FF917558D3332A1D3C498D995383E8F5EB88EDFFFF
              84E7FFFF7BDEFFFF72D5FFFF6FD1FFFF81D5FFFF80D4FFFF67CBFFFF5CC7FFFF
              5CC7FFFF5CC7FFFF5CC7FFFF5CC7FFFF5CC7FFFF5CC7FFFF5CC7FFFF5CC7FFFF
              5DC8FFFF5BC7FFFF54C4FFFF58C8FFFF62D0FFFF72DDFFFF86EDFFFF7DECFAFF
              41909FDD03090B85000000320000000600000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              000000000000000000000000000000000000000000000000000000001C1C162D
              9D8874C2CDB49BFFC5AC93FFBDA48BFFB49C83FFAF967DFFAB9279FFA88E76FF
              A3896EFFA2876DFFA1866BFFA1866BFFA1866BFFA1866BFFA1866BFFA1866BFF
              A1866BFFA2886DFF9B7F62FF8B6A49FF886644FF8D6A48FF93714FFF9E7B59FF
              AA8765FFB4926DFFA78664EE5142326B000000071933330A6DBBC98987EFFEFE
              86EAFFFF80E3FFFF76D9FFFF7FD9FFFF8BD9FFFF88D7FFFF79D1FFFF62C9FFFF
              5BC7FFFF5CC7FFFF5CC7FFFF5CC7FFFF5CC7FFFF5CC7FFFF5CC7FFFF5CC7FFFF
              5DC7FFFF5AC6FFFF56C5FFFF5ECAFFFF6AD1FFFF76DBFFFF84E7FFFF8DF3FFFF
              71E1ECFB29606CC6000000690000001F00000002000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              000000000000000000000000000000000000000000000000000000147C6E5D94
              C8AE95FAC7AF96FFBFA78EFFB79E85FFB0987FFFAC937AFFA99077FFA48970FF
              A2886EFFA1866BFFA1866BFFA1866BFFA1866BFFA1866BFFA1866BFFA1866BFF
              A2876CFF9F8469FF8F6F50FF886643FF8B6846FF916F4DFF9A7855FFA68462FF
              B08E6BFFB4916DFD705B449C0A0A001800000000000000004D6C732171CBD9BC
              8BF2FFFF83E7FFFF85E3FFFF90E1FFFF8EDCFFFF8AD8FFFF86D6FFFF71CFFFFF
              5EC8FFFF5BC7FFFF5CC7FFFF5CC7FFFF5CC7FFFF5CC7FFFF5CC7FFFF5CC7FFFF
              5CC7FFFF59C6FFFF5CC7FFFF67CCFFFF6DD0FFFF73D7FFFF7DE0FFFF8AECFFFF
              8AF6FFFF5DC7D4F216343CAA0000005000000011000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              000000000000000000000000000000000000000000000006584B4165BAA48CE9
              CBB199FFC1A990FFB9A188FFB29980FFAC947BFFAA9179FFA58B72FFA2886DFF
              A1876CFFA1866BFFA1866BFFA1866BFFA1866BFFA1866BFFA1866BFFA2876CFF
              A1876BFF957758FF896645FF8A6845FF8F6C4AFF977452FFA3805EFFAE8B69FF
              B79470FF8B6F54C7271D1834000000010000000000000000000000004F8C9843
              7CDDEADF8CEFFFFF9AEDFFFF99E7FFFF90DFFFFF8CDBFFFF89D8FFFF81D4FFFF
              6BCCFFFF5CC8FFFF5CC7FFFF5CC7FFFF5CC7FFFF5CC7FFFF5CC7FFFF5CC7FFFF
              5CC7FFFF5BC7FFFF5CC7FFFF66CBFFFF6BCEFFFF6FD2FFFF77DAFFFF82E5FFFF
              8CEFFFFF83F4FFFF499EAEE40815178F00000039000000080000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000001342B273AA5907BD0CEB49BFF
              C4AB93FFBCA38BFFB49B83FFAE967DFFAB937AFFA78E74FFA3886EFFA2886DFF
              A1866BFFA1866BFFA1866BFFA1866BFFA1866BFFA1866BFFA1866BFFA2886DFF
              9A7D60FF8B6A48FF896744FF8D6B49FF957250FF9F7C5AFFAB8866FFB5926EFF
              A08261E54537295C000000060000000000000000000000000000000055555503
              61ACBC768AEDF9F7A5F5FFFF9FEDFFFF95E4FFFF8FDEFFFF8AD9FFFF88D7FFFF
              7DD2FFFF64CBFFFF5CC7FFFF5CC7FFFF5CC7FFFF5CC7FFFF5CC7FFFF5CC7FFFF
              5CC7FFFF5CC7FFFF5BC7FFFF5FC8FFFF68CCFFFF6DD0FFFF72D5FFFF7ADEFFFF
              86E9FFFF8EF3FFFF77E7F3FE32717BCF00020273000000250000000300000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              000000000000000000000000000000000909091B877765A6CCB299FFC7AD95FF
              BFA68DFFB69D85FFB0977EFFAC937AFFA99077FFA3896EFFA2886DFFA2876CFF
              A1866BFFA1866BFFA1866BFFA1866BFFA1866BFFA1866BFFA2876CFF9E8366FF
              8E6E4EFF886543FF8C6947FF92704DFF9B7956FFA78563FFB28F6CFFAE8C69F8
              64523E8B00000011000000000000000000000000000000000000000000000000
              4551511670C7D5AA9EF7FFFFA4F2FFFF9BEAFFFF93E2FFFF8DDCFFFF89D8FFFF
              87D6FFFF75D0FFFF5FC8FFFF5CC7FFFF5CC7FFFF5CC7FFFF5CC7FFFF5CC7FFFF
              5CC7FFFF5CC7FFFF5BC7FFFF5BC7FFFF62CAFFFF6ACDFFFF6ED1FFFF74D7FFFF
              7DE0FFFF89ECFFFF8CF6FFFF65D1DCF61C4249B4000000580000001500000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000B665B4E75C0A891F2CAB098FFC1A88FFF
              B89F86FFB19880FFAD947BFFAA9178FFA58A71FFA2876CFFA2876CFFA1866BFF
              A1866BFFA1866BFFA1866BFFA1866BFFA1866BFFA1876CFFA1866BFF937555FF
              896744FF8A6845FF906D4BFF987654FFA4825FFFAF8C6AFFB6936FFF83694FBA
              120C0C2900000000000000000000000000000000000000000000000000000000
              00000000497A84347ED9E3D3A3F8FFFFA2F0FFFF99E8FFFF91E0FFFF8BDAFFFF
              89D8FFFF84D5FFFF6DCDFFFF5DC7FFFF5CC7FFFF5CC7FFFF5CC7FFFF5CC7FFFF
              5CC7FFFF5CC7FFFF5CC7FFFF5BC7FFFF5CC7FFFF65CBFFFF6BCEFFFF6FD2FFFF
              77D9FFFF80E4FFFF8CEEFFFF86F6FFFF50ADBCEA0D1F2498000000400000000A
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              000000000000000000000002433C3148AB9681DACEB49BFFC3AA92FFBBA289FF
              B39A81FFAE957CFFAB9279FFA68D74FFA2876DFFA2886DFFA1866BFFA1866BFF
              A1866BFFA1866BFFA1866BFFA1866BFFA1866BFFA2886DFF987B5DFF8A6846FF
              896744FF8E6C49FF957351FFA07E5BFFAC8A67FFB69370FF9B7D5EDD342B214D
              0000000300000000000000000000000000000000000000000000000000000000
              0000000000000000569BAA618EEBF3EDA5F6FFFFA0EEFFFF96E6FFFF8FDEFFFF
              8BDAFFFF89D7FFFF7ED3FFFF66CBFFFF5BC7FFFF5CC7FFFF5CC7FFFF5CC7FFFF
              5CC7FFFF5CC7FFFF5CC7FFFF5CC7FFFF5AC6FFFF5EC8FFFF67CCFFFF6CCFFFFF
              71D4FFFF78DCFFFF85E8FFFF8DF1FFFF7CEFFDFF397E8BD604080A7C0000002B
              0000000400000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000221B1425917F6BB6CEB49CFFC5AC94FFBDA48CFFB59C83FF
              AF967EFFAB937AFFA88F76FFA3896EFFA2886DFFA1876CFFA1866BFFA1866BFF
              A1866BFFA1866BFFA1866BFFA1866BFFA2886DFF9D8164FF8D6C4BFF886643FF
              8C6A48FF93714EFF9C7A58FFA88664FFB3906DFFAC8B68F15845357C0000000B
              0000000000000000000000000000000000000000000000000000000000000000
              00000000000000004C4C4C0A6ABDCA9799F3FDFDA5F4FFFF9CECFFFF94E3FFFF
              8EDDFFFF8AD9FFFF87D6FFFF78D1FFFF61C9FFFF5CC7FFFF5CC7FFFF5CC7FFFF
              5CC7FFFF5CC7FFFF5CC7FFFF5CC7FFFF5BC7FFFF5AC7FFFF61C9FFFF69CDFFFF
              6DD0FFFF73D6FFFF7CDFFFFF88EBFFFF8DF5FFFF6CDAE6FA214F57BD00000061
              0000001A00000001000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              000000000000001071645487C6AE94FAC8AF97FFC0A88FFFB89F86FFB0977FFF
              AC937BFFA99177FFA48A71FFA2886DFFA2876CFFA1866BFFA1866BFFA1866BFF
              A1866BFFA1866BFFA1866BFFA2876CFFA0856AFF917252FF886643FF8B6946FF
              906E4CFF997755FFA58360FFAF8D6BFFB4926DFD7B624AAB0808081E00000000
              0000000000000000000000000000000000000000000000000000000000000000
              000000000000000000000000435D64267BD5E4C7A2F8FFFFA3F1FFFF9AE8FFFF
              92E1FFFF8CDBFFFF89D8FFFF85D5FFFF70CEFFFF5EC8FFFF5CC7FFFF5CC7FFFF
              5CC7FFFF5CC7FFFF5CC7FFFF5CC7FFFF5CC7FFFF5BC7FFFF5BC7FFFF64CAFFFF
              6BCEFFFF6ED2FFFF75D8FFFF80E3FFFF8BEDFFFF89F7FFFF56B9C6EF12282FA2
              000000490000000D000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              000000054F433D57B49F88E5CCB39AFFC2AA91FFBAA189FFB39A81FFAD947CFF
              AA9179FFA68D72FFA2886DFFA2876DFFA1866BFFA1866BFFA1866BFFA1866BFF
              A1866BFFA1866BFFA1866BFFA2876DFF96785BFF896746FF8A6745FF8F6D4AFF
              967452FFA17F5DFFAD8B69FFB6936FFF95795BD4241C143F0000000100000000
              0000000000000000000000000000000000000000000000000000000000000000
              000000000000000000000000000000004C8B954D89E6EDE4A5F7FFFFA1EEFFFF
              97E6FFFF90DFFFFF8BDAFFFF89D7FFFF81D4FFFF69CCFFFF5CC7FFFF5CC7FFFF
              5CC7FFFF5CC7FFFF5CC7FFFF5CC7FFFF5CC7FFFF5CC7FFFF5BC6FFFF5DC7FFFF
              67CBFFFF6CCFFFFF71D4FFFF78DBFFFF82E6FFFF8EF0FFFF81F4FFFF408C9BDE
              0711138600000031000000060000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000001
              2F2A2530998473C6CFB59CFFC4AB93FFBDA48BFFB49B83FFAF967DFFAB927AFF
              A88E76FFA3896EFFA2886DFFA1866BFFA1866BFFA1866BFFA1866BFFA1866BFF
              A1866BFFA1866BFFA2876CFF9B8063FF8B6A49FF896644FF8D6B48FF93714FFF
              9E7C5AFFA98765FFB4916EFFA88865EB48392B6A000000060000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              00000000000000000000000000000000000000015EACBA8295F2F9F6A5F4FFFF
              9DECFFFF95E4FFFF8EDDFFFF8AD9FFFF88D7FFFF7BD2FFFF63CAFFFF5CC7FFFF
              5CC7FFFF5CC7FFFF5CC7FFFF5CC7FFFF5CC7FFFF5CC7FFFF5CC7FFFF5AC6FFFF
              60C8FFFF69CCFFFF6CD0FFFF73D6FFFF7BDEFFFF86EAFFFF8DF4FFFF71E4F1FD
              295C67C60002026A0000001F0000000200000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              000000000000000000000000000000000000000000000000000000000B0B0B16
              796A5B99CCB29AFFC6AE95FFBFA68EFFB69D85FFB0977EFFAC937AFFA99077FF
              A48A70FFA2886DFFA2876CFFA1866BFFA1866BFFA1866BFFA1866BFFA1866BFF
              A1866BFFA2876CFF9F8468FF8F6F4FFF886543FF8B6946FF92704DFF9A7856FF
              A68462FFB18E6CFFB38F6CF96E58419B00000015000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000515C5C1671CCDBB69FF8FFFF
              A3F2FFFF9BE9FFFF93E2FFFF8CDBFFFF8AD9FFFF86D6FFFF73CFFFFF5FC8FFFF
              5CC7FFFF5CC7FFFF5CC7FFFF5CC7FFFF5CC7FFFF5CC7FFFF5CC7FFFF5BC7FFFF
              5BC7FFFF63CAFFFF6ACDFFFF6ED2FFFF74D7FFFF7EE2FFFF8BEDFFFF8AF7FFFF
              5EC6D4F4163238AB000000510000001100000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              00000000000000000000000000000000000000000000000000000008594C4267
              BEA78EF1CBB198FFC1A990FFB9A087FFB19980FFAC947BFFAA9178FFA68B72FF
              A2876DFFA2876CFFA1866BFFA1866BFFA1866BFFA1866BFFA1866BFFA1866BFF
              A1876CFFA1876CFF957658FF886644FF8A6745FF8F6D4BFF977553FFA3815FFF
              AE8C6AFFB6936FFF8E7256C90F0F0A3000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000004570793B85E3ECDE
              A4F8FFFFA2F0FFFF98E7FFFF91E0FFFF8CDBFFFF89D8FFFF83D5FFFF6BCDFFFF
              5DC7FFFF5CC7FFFF5CC7FFFF5CC7FFFF5CC7FFFF5CC7FFFF5CC7FFFF5CC7FFFF
              5BC6FFFF5DC7FFFF66CBFFFF6BCEFFFF70D3FFFF78DBFFFF82E5FFFF8DEFFFFF
              84F7FFFF489BABE50A171A900000003900000008000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000023B372E3CA38D7BD4
              CEB59BFFC4AB92FFBBA38AFFB49B82FFAD957CFFAB9279FFA78D75FFA3886EFF
              A2886DFFA1866BFFA1866BFFA1866BFFA1866BFFA1866BFFA1866BFFA1866BFF
              A2886DFF9A7D60FF8A6947FF896644FF8D6A48FF957250FF9F7D5BFFAB8866FF
              B5916EFFA48463E7362A1F590000000300000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              000000000000000000000000000000000000000000000000000000005195A36D
              93F1F5F1A5F5FFFF9FEDFFFF96E5FFFF8FDDFFFF8BDAFFFF89D7FFFF7DD2FFFF
              65CAFFFF5CC7FFFF5CC7FFFF5CC7FFFF5CC7FFFF5CC7FFFF5CC7FFFF5CC7FFFF
              5CC7FFFF5AC6FFFF5FC8FFFF68CCFFFF6CCFFFFF71D5FFFF7ADDFFFF86E8FFFF
              8DF2FFFF78EDFDFF306B76CF0206087300000025000000030000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000241B1B1C837262ABD0B59CFF
              C5AD94FFBEA58CFFB69D84FFAF967EFFAB937AFFA98F76FFA3886EFFA2886DFF
              A1876BFFA1866BFFA1866BFFA1866BFFA1866BFFA1866BFFA1866BFFA2886DFF
              9E8367FF8E6D4DFF896644FF8C6947FF93704EFF9B7957FFA78563FFB28F6DFF
              B18E6CF55D4B378B0000000D0000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000071715409
              69C2D0A49DF6FDFCA4F2FFFF9CEBFFFF94E2FFFF8DDCFFFF8AD9FFFF88D7FFFF
              77D1FFFF60C8FFFF5CC7FFFF5CC7FFFF5CC7FFFF5CC7FFFF5CC7FFFF5CC7FFFF
              5CC7FFFF5BC7FFFF5AC6FFFF62C9FFFF69CDFFFF6ED1FFFF73D7FFFF7CE0FFFF
              8AECFFFF8DF6FFFF65D5E2F9193E45B400000059000000150000000100000000
              0000000000000000000000000000000000000000000000000000000000000000
              000000000000000000000000000000000000000B5F554878C6AD96FBC9B097FF
              C1A88FFFB89F87FFB1987FFFAD947CFFAA9178FFA48A71FFA2876CFFA2876CFF
              A1866BFFA1866BFFA1866BFFA1866BFFA1866BFFA1866BFFA2876CFFA1876BFF
              937455FF886644FF8B6846FF906E4BFF997654FFA48260FFAF8D6AFFB5926FFE
              846A50BB00000024000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              3150572983DEEBD4A3F8FFFFA2F1FFFF9AE8FFFF91E0FFFF8CDBFFFF89D8FFFF
              85D6FFFF6ECEFFFF5DC8FFFF5CC7FFFF5CC7FFFF5CC7FFFF5CC7FFFF5CC7FFFF
              5CC7FFFF5CC7FFFF5BC7FFFF5CC7FFFF65CBFFFF6BCEFFFF6FD2FFFF76DAFFFF
              81E4FFFF8CEEFFFF88F8FFFF4EAABAEC0D1D2199000000400000000A00000000
              0000000000000000000000000000000000000000000000000000000000000000
              000000000000000000000000000000033E373049B09984E3CDB39AFFC3AA92FF
              BBA289FFB39A81FFAE957CFFAB927AFFA78D73FFA2876CFFA2886DFFA1866BFF
              A1866BFFA1866BFFA1866BFFA1866BFFA1866BFFA1866BFFA2876DFF987C5EFF
              896745FF896745FF8E6B49FF967351FFA07E5BFFAC8967FFB5926FFF9E8161E1
              201C114700000001000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              00000000427E875592F3F5ECA5F6FFFFA0EEFFFF96E5FFFF8FDEFFFF8BDAFFFF
              89D7FFFF80D4FFFF67CBFFFF5CC7FFFF5CC7FFFF5CC7FFFF5CC7FFFF5CC7FFFF
              5CC7FFFF5CC7FFFF5CC7FFFF5BC6FFFF5EC8FFFF68CCFFFF6CCFFFFF70D4FFFF
              79DCFFFF85E7FFFF8EF1FFFF7DF4FFFF367A86D8040C0C7D0000002A00000004
              0000000000000000000000000000000000000000000000000000000000000000
              000000000000000000000000292222258E7B6ABED0B79DFFC4AC93FFBDA48BFF
              B59C83FFAF967DFFAB9279FFA68C73FFA1876CFFA3886DFFA1876CFFA1876CFF
              A1876CFFA1876CFFA1876CFFA1876CFFA1876CFFA1876CFF9D8165FF8C6C4AFF
              886643FF8D6A48FF93704EFF9D7A58FFA98764FFB3906CFFAF8C69F3483B2C78
              0000000700000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              000000000000000066B3C08E9CF8FCF8A5F4FFFF9DEBFFFF94E3FFFF8EDDFFFF
              8BD9FFFF89D7FFFF78D1FFFF5FC8FFFF5DC8FFFF5DC8FFFF5DC8FFFF5DC8FFFF
              5DC8FFFF5DC8FFFF5DC8FFFF5DC8FFFF5CC7FFFF63CAFFFF6ACDFFFF6ED0FFFF
              74D6FFFF7CDFFFFF88EBFFFF8EF5FFFF6DE0F0FD204750BE0000026200000019
              0000000100000000000000000000000000000000000000000000000000000000
              00000000000000001212120E675B4E8CCEB49CFFC7AF96FFC0A88FFFB89F86FF
              B19880FFAB9179FFA3886DFF997B5EFF9D8165FF9F8468FF9E8467FF9E8467FF
              9E8467FF9E8467FF9E8467FF9E8467FF9F8467FF9C8164FF8E6E4DFF896744FF
              8B6946FF916E4CFF9A7755FFA68361FFB08D6AFFB6936FFB755B47AC00000018
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000172E2E167ED9E8C4A2F8FFFFA3F1FFFF9AE9FFFF92E1FFFF
              8CDBFFFF8AD9FFFF7BD2FFFF5DC8FFFF59C6FFFF59C6FFFF59C6FFFF59C6FFFF
              59C6FFFF59C6FFFF59C6FFFF59C6FFFF5AC6FFFF5CC7FFFF64CAFFFF68CDFFFF
              6DD2FFFF75D9FFFF7FE3FFFF8BEDFFFF89F8FFFF57BCCCF20E2124A200000048
              0000000C00000000000000000000000000000000000000000000000000000000
              00000000000000054B453F58C2AE98F1D2BBA5FFCBB59EFFC3AC95FFBBA48DFF
              B29981FFA68B70FF97795BFF8F6E4DFF957657FF957656FF957656FF957656FF
              957656FF957656FF957656FF957656FF967757FF8E6E4DFF876441FF8E6C4AFF
              916F4CFF987653FFA2805EFFAE8C69FFB6936FFF94785AD80D09093700000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              000000000000000000000000345D653F97F1F6EB9FF4FFFF94EBFFFF8DE3FFFF
              86DDFFFF80D7FFFF60CBFFFF46C2FFFF45C1FFFF45C1FFFF45C1FFFF45C1FFFF
              45C1FFFF45C1FFFF45C1FFFF45C1FFFF46C1FFFF47C2FFFF4AC4FFFF52C6FFFF
              5BCBFFFF63D1FFFF6BD9FFFF77E4FFFF80ECFFFF76F3FFFF3D8C98E0050F1186
              0000003100000005000000000000000000000000000000000000000000000000
              00000001312C262EAB9B8BCFE2CEBAFFD8C5B2FFD4C1ACFFC9B5A0FFBDA68EFF
              B0967BFFA98D71FF9C7F60FF8D6946FF8C6945FF8C6946FF8C6946FF8C6946FF
              8C6946FF8C6946FF8C6946FF8C6946FF8C6946FF8D6946FF8E6A47FF947250FF
              9A7856FFA17F5DFFAC8A67FFB3916DFFAC8C69F2322B21640000000300000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              00000000000000000000000000000000689A9E779CF7FAF686EAFFFF81E4FFFF
              7ADCFFFF67D4FFFF3BC4FFFF30BFFFFF31BEFFFF31BEFFFF31BEFFFF31BEFFFF
              31BEFFFF31BEFFFF31BEFFFF31BEFFFF31BEFFFF31BEFFFF31BEFFFF31BFFFFF
              38C3FFFF42C8FFFF4FCFFFFF5BD9FFFF64E2FFFF6AE7FFFF69E8FCFF255760C7
              0204046B0000001E000000020000000000000000000000000000000000000000
              1C1C1C127B7266A1E4D0BBFFD7C4B0FFD6C1ACFFCEB7A1FFC0A78DFFB59A7DFF
              B19679FFAD9072FF997755FF967350FF977451FF977451FF977451FF977451FF
              977451FF977451FF977451FF977451FF977451FF987451FF997552FF9D7B58FF
              A58362FFAC8A67FFB18F6CFFB7936FFA604C399A0000000F0000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              000000000000000000000000000000002A2A2A068ACFD3B195F3FDFD85E9FFFF
              81E5FFFF5DD8FFFF3ECDFFFF3CCAFFFF3CC9FFFF3CC9FFFF3CC9FFFF3CC9FFFF
              3CC9FFFF3CC9FFFF3CC9FFFF3CC9FFFF3CC9FFFF3CC9FFFF3CC9FFFF3CC9FFFF
              3CCAFFFF40CDFFFF49D2FFFF56DBFFFF64E3FFFF67E4FFFF6AEBFFFF5CCDDEF8
              10282CAB00000051000000100000000100000000000000000000000000000003
              524B4169D7C6B1FCD9C4B0FFD1BBA4FFCCB299FFC7AB8FFFC3A78AFFC0A487FF
              BEA385FFAD8C6BFFA4805DFFA5815EFFA5815EFFA5815EFFA5815EFFA5815EFF
              A5815EFFA5815EFFA5815EFFA5815EFFA5815EFFA6825FFFA78360FFA98663FF
              B08D6BFFB2906EFFB7936FFE886F52CB00000027000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000527F852897E3ECE18DF0FFFF
              7BE8FFFF58E0FFFF4CDAFFFF4BD9FFFF49D8FFFF49D7FFFF49D7FFFF49D7FFFF
              49D7FFFF49D7FFFF49D7FFFF49D7FFFF49D7FFFF49D7FFFF49D7FFFF49D7FFFF
              4AD8FFFF4BD9FFFF4DDBFFFF52DFFFFF59E1FFFF5FE2FFFF65E3FFFF6DF1FFFF
              469FACE8050C0E8C000000360000000500000000000000000000000019131328
              BCAC96DFDBC4ACFCCCB499FCC9AD90FCC7AB8EFCC8AB8EFCC8AC8FFCC9AE90FC
              BD9C7DFCAE8966FCAF8B68FCAF8B68FCAF8B68FCAF8B68FCAF8B68FCAF8B68FC
              AF8B68FCAF8B68FCAF8B68FCAF8B68FCAF8B68FCB08B68FCB08B68FCB08B68FC
              B18D6AFCB5926FFDA88766EA211A134D00000001000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              000000000000000000000000000000000000000000000000557F855C9EF7FAF6
              6BE6FBFE52E2FBFD52E2FBFD52E2FBFD52E1FBFD52E1FBFD52E1FBFD52E1FBFD
              52E1FBFD52E1FBFD52E1FBFD52E1FBFD52E1FBFD52E1FBFD52E1FBFD52E1FBFD
              52E1FBFD52E2FBFD52E2FBFD52E2FBFD51E1FBFD53E1FBFD59E3FBFD5FE5FBFD
              69EFFCFD2D6874BE000303460000000E0000000000000000000000005D504572
              B49E86DFA28B72D2A2896DD2A2896FD2A2896FD2A2896FD2A28A70D29D836CD2
              8C6C4CD28B6C4BD28B6C4BD28B6C4BD28B6C4BD28B6C4BD28B6C4BD28B6C4BD2
              8B6C4BD28B6C4BD28B6C4BD28B6C4BD28B6C4BD28B6C4BD28B6C4BD28B6C4BD2
              8D6C4DD3977656D9413524690000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              000000000000000000000000000000000000000000000000000000005F959F93
              52C4DDE338B8D7DA3BB9D7DA3BB9D7DA3CB9D7DA3CB9D7DA3CB9D7DA3CB9D7DA
              3CB9D7DA3CB9D7DA3CB9D7DA3CB9D7DA3CB9D7DA3CB9D7DA3CB9D7DA3CB9D7DA
              3BB9D7DA3BB9D7DA3BB9D7DA3BB9D7DA3BB9D7DA3BB9D7DA3BB8D7DA3CB9D7DA
              44C0DCDE45B7CFD0081F233900000004000000000000000000000000AAAAAA0C
              9999990A9999990A9999990A9999990A9999990A9999990A9999990A9999990A
              9999990A9999990A9999990A9999990A9999990A9999990A9999990A9999990A
              9999990A9999990A9999990A9999990A9999990A9999990A9999990A9999990A
              9999990A9999990AFFFFFF010000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              00000000000000000000000000000000000000000000000000000000BFBFBF04
              B0B0B00DA3B6B60EA3B6B60EA3B6B60EA3B6B60EA3B6B60EA3B6B60EA3B6B60E
              A3B6B60EA3B6B60EA3B6B60EA3B6B60EA3B6B60EA3B6B60EA3B6B60EA3B6B60E
              A3B6B60EA3B6B60EA3B6B60EA3B6B60EA3B6B60EA3B6B60EA3B6B60EA3B6B60E
              A3B6B60EA5A5A5119F9F9F080000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000C0000003FFFFFFFFFFFFFFFF
              C0000001FFFFFFFFFFFFFFFFC0000000FFFFFFFFFFFFFFFFC00000007FFFFFFF
              FFFFFFFFC00000007FFFFFFFFFFFFFFFE00000003FFFFFFFFFFFFFFFE0000000
              1FFFFFFFFFFFFFFFF00000000FFFFFFFFFFFFFFFF80000000FFFFFFFFFFFFFFF
              F800000007FFFFFFFFFFFFFFFC00000003FFFFFFFFFFFFFFFE00000003FFFFFF
              FFFFFFFFFF00000001FFFFFFFFFFFFFFFF00000000FFFFFFFFFFFFFFFF800000
              007FFFFFFFFFFFFFFFC00000007FFFFFFFFFFFFFFFE00000003FFFFFFFFFFFFF
              FFE00000001FFFFFFFFFFFFFFFF00000001FFFFFFFFFFFFFFFF80000000FFFFF
              FFFFFFFFFFF800000007FFFFFFFFFFFFFFFC00000003FFFFFFFFFFFFFFFE0000
              0003FFFFFFFFFFFFFFFF00000001FFFFFFFFFFFFFFFF00000000FFFFFFFFFFFF
              FFFF80000000FFFFFFFFFFFFFFFFC00000007FFFFFFFFFFFFFFFC00000003FFF
              FFFFFFFFFFFFE00000003FFFFFFFFFFFFFFFF00000001FFFFFFFFFFFFFFFF800
              00000FFFFFFFFFFFFFFFF800000007FFFFFFFFFFFFFFFC00000007FFFFFFFFFF
              FFFFFE00000003FFFFFFFFFFFFFFFE00000001FFFFFFFFFFFFFFFF00000000FF
              FFFFFFFFFFFFFF80000000FFE0000001FFFFFFC00000007FC0000001FFFFFFC0
              0000003F80000001FFFFFFE00000003F00000001FFFFFFF00000001F00000001
              FFFFFFF00000000E00000003FFFFFFF80000000C00000007FFFFFFFC00000004
              0000000FFFFFFFFE000000000000001FFFFFFFFE000000000000001FFFFFFFFF
              000000000000003FFFFFFFFF800000000000007FFFFFFFFF000000000000007F
              FFFFFFFE00000000000000FFFFFFFFFE00000000000001FFFFFFFFFC00000000
              000001FFFFFFFFF800000000000003FFFFFFFFF000000000000007FFFFFFFFF0
              00000000000007FFFFFFFFE00000000000000FFFFFFFFFC00000000000001FFF
              FFFFFFC00000000000001FFFFFFFFF800000000000003FFFFFFFFF0000000000
              00007FFFFFFFFE00000000000000FFFFFFFFFE00000000000000FFFFFFFFFC00
              000000000001FFFFFFFFF800000000000003FFFFFFFFF800000000000003FFFF
              FFFFF000000000000007FFFFFFFFE000000000000003FFFFFFFFC00000000000
              0001FFFFFFFFC000000000000000FFFFFFFF8000000180000000FFFFFFFF0000
              0001C00000007FFFFFFE00000003C00000003FFFFFFE00000007E00000003FFF
              FFFC0000000FF00000001FFFFFF80000000FF80000000FFFFFF80000001FF800
              000007FFFFF00000003FFC00000007FFFFE00000003FFE00000003FFFFC00000
              007FFE00000001FFFFC0000000FFFF00000001FFFF80000001FFFF80000000FF
              FF00000001FFFFC00000007FFF00000003FFFFC00000003FFE00000007FFFFE0
              0000003FFC00000007FFFFF00000001FFC0000000FFFFFF80000000FF8000000
              1FFFFFF80000000FF00000003FFFFFFC00000007E00000003FFFFFFE00000003
              E00000007FFFFFFE00000001C0000000FFFFFFFF00000001C0000000FFFFFFFF
              80000001C0000003FFFFFFFFC0000001C0000003FFFFFFFFC0000003FFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF280000004800000090000000
              0100200000000000802500000000000000000000000000000000000000000000
              0000000000000001000000050000000500000005000000050000000500000005
              0000000500000005000000050000000500000005000000050000000500000005
              0000000500000005000000050000000500000005000000020000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              3322220F2019194715120E6C14100D6F14100D6E14100D6E14100D6E14100D6E
              14100D6E14100D6E14100D6E14100D6E14100D6E14100D6E14100D6E14100D6E
              14100D6E14100D6E14100D6E1614106F0E0B0E6C0000003D0000000600000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              37292225A38C7BC6AB957FF4A28C79EFA18E7BEEA18E7BEEA28E7BEEA28E7CEE
              A28E7CEEA28E7CEEA28E7CEEA28E7CEEA28E7CEEA28E7CEEA28E7CEEA28E7CEE
              A28E7CEEA28E7CEEA28E7BEEA6907EF09D8A75EE3A322CA60000002F00000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              3F3F3F04AC95807BD5B9A0FFD3B99FFFCFB59CFFCFB59DFFCFB59CFFCEB49AFF
              CEB49AFFCEB49AFFCEB49AFFCEB49AFFCEB49AFFCEB49AFFCEB49AFFCEB49AFF
              CEB49AFFCEB49AFFCFB69CFFCEB397FFD1B393FF97826EEE110F0D8000000017
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000045452E0BB29C86ADD5BAA0FFC6AD95FFC3AA91FFBDA48BFFB9A087FF
              B89F86FFB89F85FFB89F85FFB89F85FFB89F85FFB89F85FFB89F85FFB89F85FF
              B89F85FFB89F86FFBAA288FFB69A7EFFB69676FFC6A88AFF706356D50000005A
              0000000800000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              00000000000000007161562FBDA68EDAD4BAA2FFC3AB93FFB9A189FFB29A82FF
              B09880FFAF977EFFB0977FFFB09880FFB09880FFB09880FFB09880FFB09880FF
              B09880FFB19981FFAF957BFFA6886BFFAB8C6DFFBE9F7FFFBA9F85FE453B34B4
              0000003A00000001000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              00000000000000000000000094806D5DC9B49CF9D9C5AFFFC7B29EFFBEA994FF
              B9A48FFFB7A28DFFB5A08BFFB49F89FFB59F8AFFB59F8AFFB59F8AFFB59F8AFF
              B59F8AFFB5A08AFFAE9780FFA98E75FFB0967BFFBDA489FFD5BA9EFF9D866EF3
              17130C8E0000001F000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              00000000000000000000000000000006AC988198DEC9B3FFD6C3AFFFC6B39FFF
              BFAB97FFBCA996FFB4A08AFFA99178FFA78F76FFA88F77FFA88F77FFA88F77FF
              A88F77FFA78F76FFA58C72FFA89077FFAF977DFFB8A087FFCAB198FFD1B699FF
              75604EDE020000670000000D0000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              000000000000000000000000000000005C4D3D21B8A48FCBE2CDB7FFCFBCA8FF
              C3B09CFFBDAB97FFB9A590FFAA9279FFA08469FFA08569FFA0856AFFA0856AFF
              A0856AFFA0856AFFA08669FFA38B70FFAB9179FFB1987FFFBCA48AFFD0B79EFF
              C0A58AFF4D3E31C0000000460000000300000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              00000000000000000000000000000000000000008D78674AC9B29DEEDFCBB6FF
              CAB7A3FFC1AD99FFBCAA96FFB6A18BFFA68C73FFA08569FFA1866BFFA1866BFF
              A1866BFFA1866BFFA1866AFFA1866BFFA68C73FFAC937AFFB39A81FFC1A990FF
              D5BBA0FFA68C72F7271F189C0000002800000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              000000000000000000000000000000000000000000000002A5907C83D6C0AAFE
              D8C5B0FFC8B4A0FFBFAC98FFBBA894FFB29B85FFA2886EFFA08569FFA1866BFF
              A1866BFFA1866BFFA1866BFFA0856AFFA1876CFFA78F76FFAD957BFFB79E85FF
              C7B096FFD3B89CFF826E59E50A08047500000013000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              00000000000000000000000000000000000000000000000033262614B39E8CB6
              E0CAB5FFD2BEAAFFC4B09CFFBEAB97FFBAA793FFAC957DFFA1866BFFA1866BFF
              A1866BFFA1866BFFA1866BFFA1866BFFA1856AFFA38A6FFFA99177FFAF977DFF
              BBA289FFCEB59CFFC7AB8FFF5D4D3CCA00000051000000060000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              00000000000000000000000000000000000000000000000000000000816F5D39
              C4B099E2E1CCB7FFCCB9A5FFC2AE9AFFBDA996FFB7A38FFFA78F76FFA0856AFF
              A1866BFFA1866BFFA1866BFFA1866BFFA1866BFFA1866AFFA48B71FFAB927AFF
              B29981FFBFA78EFFD4BAA0FFAF937BFA352A1EA8000000320000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              9987756FD1BDA6F9DAC7B2FFC9B5A1FFC0AC98FFBCA995FFB39D89FFA48A70FF
              A08569FFA1866BFFA1866BFFA1866BFFA1866BFFA0856AFFA1866CFFA78E75FF
              AD947BFFB69D84FFC4AD94FFD4BA9DFF8D7961EC130F0B830000001A00000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              1717170BB09986A3DEC8B1FFD4C1ADFFC6B29EFFBFAC98FFBBA794FFAE9881FF
              A1876CFFA1856AFFA1866BFFA1866BFFA1866BFFA1866BFFA1856BFFA2886EFF
              A89077FFAF967DFFB9A087FFCCB399FFCCB195FF6A5846D60000005E0000000A
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              000000007C6A582BBFAB94D5E1CCB7FFCEBBA7FFC3AF9BFFBEAA96FFB9A491FF
              A99178FFA0856AFFA1866BFFA1866BFFA1866BFFA1866BFFA1866BFFA0856AFF
              A48B70FFAA9279FFB19980FFBDA58CFFD2B99FFFB59B80FE3F3527B50000003C
              0000000100000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              000000000000000091806D5BCDB8A0F1DCC8B4FFCAB6A2FFC1AD99FFBDA996FF
              B5A08AFFA68B71FFA18569FFA1866BFFA1866BFFA1866BFFA1866BFFA0856AFF
              A1876BFFA68D73FFAC937AFFB49C83FFC3AB92FFD5BBA0FF99826AF21E171190
              0000002200000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              000000000000000000000004AB95828FD9C3AEFFD7C3AEFFC7B39FFFBFAC97FF
              BBA894FFB09A83FFA2886DFFA0856AFFA1866BFFA1866BFFA1866BFFA1866BFF
              A1856AFFA2886CFFA88F76FFAF957DFFB89F87FFC9B197FFD2B699FF776251DE
              0200006B0000000F000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000006E5D4C1EB9A390C6E2CDB7FFD0BDA8FFC3B09CFF
              BDAA96FFB9A591FFAA947BFFA0866AFFA1866BFFA1866BFFA1866BFFA1866BFF
              A1866BFFA0856AFFA38A70FFAA9278FFB0987FFFBBA38AFFD0B79DFFC0A589FF
              4F3F33C100000048000000030000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000088736149C7B09AEADFCAB5FFCCB8A4FF
              C1AE9AFFBDA996FFB6A28DFFA78D73FFA08569FFA1866BFFA1866BFFA1866BFF
              A1866BFFA0856AFFA0866BFFA58C72FFAB937AFFB39A81FFC1A990FFD5BBA0FF
              A48B73F82823189E0000002A0000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000001A38F7A7BD1BCA6FED9C4B0FF
              C8B4A0FFBFAC97FFBCA995FFB29C87FFA3896EFFA0856AFFA1866BFFA1866BFF
              A1866BFFA1866BFFA0856AFFA1876CFFA78F75FFAE967DFFB79F86FFC7AF96FF
              D5B99CFF846F59E70C0806770000001500000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              00000000000000000000000000000000000000004C3F2614B39F8BB3DFCAB4FF
              D2BEABFFC5B19DFFBEAB97FFBAA793FFAD967EFFA1866BFFA1866BFFA1866BFF
              A1866BFFA1866BFFA1866BFFA08569FFA38A6FFFA99178FFAF977EFFBAA289FF
              CEB59CFFC8AD90FF5E4C3CCB0000005400000007000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              00000000000000000000000000000000000000000000000078655635C0AD98DD
              E0CBB6FFCCB9A5FFC2AE9AFFBDAA96FFB7A48FFFA89076FFA0856AFFA1866BFF
              A1866BFFA1866BFFA1866BFFA0856AFFA0866BFFA48B71FFAB9279FFB29A81FF
              BFA78EFFD4BA9FFFAF957AFB372C22AB00000034000000010000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000099887467
              CEBAA3F9DBC7B3FFC9B5A2FFC0AD99FFBDA995FFB49F89FFA48B70FFA0856AFF
              A1866BFFA1866BFFA1866BFFA1866BFFA1866BFFA1866BFFA78E74FFAD957CFF
              B59D84FFC4AD94FFD6BBA0FF8F7A62EE150F0B850000001B0000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              000000000000000000000000000000000000000000000000000000000000000A
              AE9985A1DCC7B1FFD4C1ADFFC6B39FFFBFAB97FFBCA894FFAF9881FFA1876CFF
              A1866BFFA1866BFFA1866BFFA1866BFFA1866BFFA08569FFA2886DFFA89076FF
              AE967DFFB9A188FFCCB49AFFCFB397FF695747D70000005F0000000B00000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              634D4624BBA593D0E0CCB6FFCEBCA8FFC3AF9BFFBDAA97FFB9A591FFAA9279FF
              A1856AFFA1866AFFA1866BFFA1866BFFA1866BFFA1866AFFA0856AFFA38A70FF
              AA9278FFB1997FFFBDA58BFFD3BA9FFFB99E83FE41362BB70000003E00000003
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              00000000917C6D54CDB7A1F2DECAB5FFCAB7A3FFC0AD99FFBDAA96FFB6A18CFF
              A58D73FFA08569FFA1866BFFA1866BFFA1866BFFA1866BFFA1866AFFA0856BFF
              A68D74FFAC947AFFB49B82FFC2AA92FFD7BCA0FF9C846BF41D18119300000023
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000003A28F7B8CD8C2ADFFD7C3B0FFC7B39FFFBFAC98FFBCA895FF
              B19B84FFA3886DFFA1856AFFA1866BFFA1866BFFA1866BFFA1866BFFA0856AFF
              A2876CFFA88F76FFAD957CFFB79F86FFC8B097FFD3B79BFF796350E10202006C
              0000000F00000000000000000000000000000000000000000000000000000000
              0000000000000000000000020000000200000002000000020000000200000002
              0000000200000002000000020000000200000002000000020000000200000002
              00000002000000020000000200000001000000027F0000020000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              000000000000000051452E16B79F8EC0E0CBB6FFD0BEAAFFC4B19DFFBEAA96FF
              BAA692FFAC957CFFA0866BFFA1856AFFA1866BFFA1866BFFA1866BFFA1866BFF
              A0856AFFA38A6FFFA99278FFB0977EFFBCA38AFFD0B89EFFC4A98CFF4F4234C4
              0000004900000004000000000000000000000000000000000000000000000000
              00000008050A0A32030B0B4503070B4303070B4303070B4303070B4303070B43
              03070B4303070B4303070B4303070B4303070B43070B0F43070B0F430B0F0F43
              0B0F0F430B0F0F430B0F0F430F0F124413171B420F0F0F210000000100000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              000000000000000000000000836F6340C8B19BEADFCBB6FFCBB8A4FFC1AE9AFF
              BDAA96FFB7A38DFFA78E75FFA1856AFFA1866BFFA1866BFFA1866BFFA1866BFF
              A1866BFFA0856AFFA58C73FFAB927AFFB39A81FFC0A88FFFD7BCA0FFA78E76FA
              292119A00000002B000000000000000000000000000000000000000000000000
              4171795A57959DC4519198D1539096CD539096CD539096CD539096CD539096CD
              539096CD539096CD539096CD539096CD539096CD4F9096CD599196CD679696CD
              649696CD679696CD679696CD66989BD4518287C0111A1E3A0000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000099867474D3BFA9FDD9C6B1FFC8B5A1FF
              C0AC98FFBCA995FFB29E87FFA4896FFFA0856AFFA1866BFFA1866BFFA1866BFF
              A1866BFFA0856AFFA0866CFFA78E75FFAD957CFFB69E84FFC6AE95FFD7BCA0FF
              86725BEA080604790000001500000000000000000000000000000000253A4A30
              76CDD8D893FAFFFF8CF3FFFF8CF1FFFF8BF1FFFF8BF1FFFF8BF1FFFF8BF1FFFF
              8BF1FFFF8BF1FFFF8BF1FFFF8BF1FFFF89F1FFFF8DF3FFFFA3F9FFFFADFBFFFF
              ACFBFFFFA8FAFFFFA2FDFFFF99FDFFFF64ABB0A20F0F0F100000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              000000000000000000000000000000003F2A2A0CB19E88AEE1CCB6FFD3BFACFF
              C5B29EFFBEAB97FFBAA894FFAD9780FFA1866BFFA1856AFFA1866BFFA1866BFF
              A1866BFFA1866BFFA0856AFFA3896EFFA99178FFAF977EFFB9A288FFCDB69CFF
              CCB094FF5E4E3DD0000000540000000600000000000000000000000E66B2BBAA
              90FAFFFF88ECFFFF83E6FFFF80E3FFFF7EE2FFFF7EE2FFFF7EE2FFFF7EE2FFFF
              7EE2FFFF7EE2FFFF7EE2FFFF7EE2FFFF7EE2FFFF92E9FFFFA2EFFFFFA0F0FFFF
              9BF4FFFF90F4FFFF8FFFFFFF6BC7D0CA1D3A3A23000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              000000000000000000000000000000000000000069584D2EC4AE98DDE2CEB8FF
              CDBAA6FFC2AE9AFFBDAA96FFB8A591FFA99077FFA1856AFFA1866BFFA1866BFF
              A1866BFFA1866BFFA1866BFFA0856AFFA48B71FFAB9279FFB29A80FFBFA78FFF
              CAAD91FFAA8D70FE362D23AE0000003400000000000000004D89927384E7F0FC
              89EFFFFF7CDEFFFF75D8FFFF72D5FFFF71D3FFFF71D4FFFF71D4FFFF71D4FFFF
              71D4FFFF71D4FFFF71D4FFFF71D4FFFF7FD9FFFF92E0FFFF8BDFFFFF82E1FFFF
              80EBFFFF88FEFFFF74DDE0EC36696C4B00000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              00000000000000000000000000000000000000000000000091806A5DCEB8A4FA
              DAC7B3FFC8B4A0FFBFAC98FFBCA996FFB39E88FFA2886EFFA1856AFFA1866BFF
              A1866BFFA1866BFFA1866BFFA0856AFFA1866BFFA68E74FFAE967EFFB0957BFF
              AF9072FFC6A482FF90785FF0110D0D860000001233525F3B7BD7E4E68FF9FFFF
              7DE0FFFF73D6FFFF6DD0FFFF6BCEFFFF78D2FFFF7ED3FFFF7CD3FFFF7CD3FFFF
              7CD3FFFF7CD3FFFF7DD3FFFF77D2FFFF69CEFFFF5DCAFFFF53CAFFFF57D5FFFF
              68ECFFFF6CECFAFF49929C810000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              00000000000000000000000000000000000000000000000000000002AE988498
              DEC7B2FFD0BDA9FFC2AF9BFFBCAA96FFB8A490FFA78E75FFA08469FFA1866BFF
              A1866BFFA1866BFFA1866BFFA1866BFFA0856AFFA3896EFFA88F75FF9D8062FF
              A38464FFB59677FFC5A383FF6D5945D40204076D66B2BDBB90FBFFFF82E5FFFF
              75D8FFFF6ED1FFFF67CCFFFF65CAFFFF72CFFFFF75D0FFFF75D0FFFF75D0FFFF
              74D0FFFF76D0FFFF76D0FFFF55C4FFFF34BAFFFF31BCFFFF3AC7FFFF4CD9FFFF
              5BEFFFFF3DABBDB7000000120000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000027171720
              B39E8AD9DEC9B3FFC5B29EFFBDAA96FFBAA793FFAB947BFFA0856AFFA1866BFF
              A1866BFFA1866BFFA1866BFFA1866BFFA1866BFFA2876CFF977B5DFF917251FF
              9D7D5DFFAC8D6DFFBC9B7AFFB28968FA586B68DF73D5E9FD88EEFFFF78DAFFFF
              70D2FFFF6BCEFFFF62C9FFFF5DC7FFFF5BC7FFFF5BC7FFFF5BC7FFFF5BC7FFFF
              5BC7FFFF5EC8FFFF4CC2FFFF2EB8FFFF2EBAFFFF3AC4FFFF4AD3FFFF5EF1FFFF
              4EC9D9E017384236000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              000000000000000000000000000000000000000000000000000000004B3D3947
              B59B85E7D2BBA2FFC5B29EFFBDAA96FFBAA792FFAB9379FFA0856AFFA1866BFF
              A1866BFFA1866BFFA1866BFFA1866BFFA3896EFF9C8063FF896746FF8C6947FF
              977553FFA88664FFB58E6AFFAB8F6EFF80BEC6FF82EAFFFF7CDEFFFF71D3FFFF
              6CCEFFFF65CAFFFF5EC8FFFF5CC7FFFF5BC7FFFF5BC7FFFF5BC7FFFF5BC7FFFF
              5EC8FFFF56C5FFFF34BAFFFF2EBAFFFF39C2FFFF46CEFFFF59E9FFFF58DFF3F9
              2E78846800000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000001E171721A7927DCC
              D3B89EFFBBA38AFFBCA892FFBDAB98FFB8A48FFFA68D73FFA08469FFA1866BFF
              A1866BFFA1866BFFA1866BFFA2876DFFA1856AFF8E6E4EFF886542FF8F6C4AFF
              9D7A58FFAF8A67FFB18864FF84A5A2FF7CE1F9FF80E5FFFF73D6FFFF6DCFFFFF
              68CBFFFF5FC8FFFF5CC7FFFF5CC7FFFF5CC7FFFF5CC7FFFF5CC7FFFF5DC8FFFF
              5CC7FFFF3FBDFFFF2EB9FFFF35BFFFFF41CAFFFF54DFFFFF5DEEFAFF3D9FAE9E
              0000000900000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000068E7A689AD1B69CFF
              C4AB92FFB39B82FFB09780FFBAA692FFB29D87FFA2886DFFA1866AFFA1866BFF
              A1866BFFA1866BFFA2876CFFA3886EFF947557FF886442FF8D6A48FF987653FF
              A88563FFB68A64FF929686FF77D2E8FF82E9FFFF77DAFFFF6ED1FFFF6ACCFFFF
              61C8FFFF5CC7FFFF5CC7FFFF5CC7FFFF5CC7FFFF5CC7FFFF5CC7FFFF5FC8FFFF
              49C1FFFF30B8FFFF33BDFFFF3DC7FFFF4DD6FFFF5EF2FFFF4ABDCDCE0D212E26
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              00000000000000000000000000000000000000006B5E4E61C0A790F5CEB39AFF
              BAA188FFAF977EFFAA9178FFAB947CFFA78E74FFA1866AFFA1866BFFA1866BFF
              A1866BFFA1866BFFA3896EFF997D60FF886745FF8A6745FF93714FFFA3815EFF
              B48A65FFA28D71FF78C0CDFF80E9FFFF7CDFFFFF70D3FFFF6BCEFFFF64CAFFFF
              5EC8FFFF5DC7FFFF5CC7FFFF5CC7FFFF5CC7FFFF5CC7FFFF60C8FFFF52C3FFFF
              32BAFFFF31BBFFFF3AC4FFFF48D0FFFF5BECFFFF51D2E6F125646E5100000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000043393431AD9883DBD4B99FFFBEA58CFF
              B39A81FFAC937AFFA78E74FFA2886DFFA0866BFFA1866BFFA1866BFFA1866BFF
              A1866BFFA2886DFF9F8367FF8C6C4CFF886643FF906E4CFF9D7B59FFAF8B65FF
              AF8A67FF80ADADFF7DE4FBFF80E4FFFF73D6FFFF6DCFFFFF67CBFFFF5FC8FFFF
              5CC7FFFF5CC7FFFF5CC7FFFF5CC7FFFF5CC7FFFF5EC8FFFF5AC6FFFF3BBCFFFF
              2EB9FFFF36C0FFFF43CCFFFF56E3FFFF59E3F1FE398F9F850000000400000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              00000000000000000000000000000011968471ADD2B79DFFC2A990FFB59D84FF
              AE957CFFA98F76FFA3896FFFA1876CFFA1866BFFA1866BFFA1866BFFA1866BFF
              A2876CFFA2876CFF927354FF876542FF8D6B49FF997755FFAA8865FFB48B64FF
              8D9C90FF79D8EDFF82E8FFFF76D9FFFF6ED1FFFF69CCFFFF61C8FFFF5DC8FFFF
              5CC7FFFF5CC7FFFF5CC7FFFF5CC7FFFF5DC7FFFF5EC7FFFF45BFFFFF2FB9FFFF
              34BEFFFF3FC8FFFF50DBFFFF5EF2FFFF43B0C2B90A151F180000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000007C6B5977C5AA94FBC9B097FFB89F86FFAF977EFF
              AA9279FFA58B71FFA2876CFFA1866BFFA1866BFFA1866BFFA1866BFFA1866BFF
              A3886EFF977A5CFF886644FF8B6945FF947250FFA58260FFB58B65FF9D9078FF
              77C7D6FF81E9FFFF7ADDFFFF70D3FFFF6BCDFFFF63C9FFFF5EC8FFFF5CC7FFFF
              5CC7FFFF5CC7FFFF5CC7FFFF5CC7FFFF5FC8FFFF4FC3FFFF31B9FFFF31BBFFFF
              3BC4FFFF4AD4FFFF5DEFFFFF4DCBDEE221535B3D000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000534C4043B79D87E7D1B79DFFBCA38AFFB19980FFAB937AFF
              A68D74FFA2886DFFA1866BFFA1866BFFA1866BFFA1866BFFA1866BFFA3886EFF
              9D8165FF8B6949FF896643FF916F4CFF9F7E5BFFB18A66FFAA8B6AFF7DB3B9FF
              7DE6FDFF7DE3FFFF72D5FFFF6CCFFFFF66CAFFFF5EC8FFFF5CC7FFFF5CC7FFFF
              5CC7FFFF5CC7FFFF5CC7FFFF5FC8FFFF57C5FFFF37BCFFFF2EB9FFFF37C1FFFF
              46CEFFFF57E6FFFF56DCEEF835818F6E00000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              000000001212121CA18B77BED2B89EFFC1A990FFB49B83FFAD947CFFA88F76FF
              A3896FFFA1876CFFA1866BFFA1866BFFA1866BFFA1866BFFA2886DFFA1866BFF
              907051FF886543FF8E6C4AFF9A7856FFAC8865FFB28A65FF88A19AFF7ADDF2FF
              82E7FFFF75D8FFFF6ED0FFFF68CCFFFF60C8FFFF5DC7FFFF5CC7FFFF5CC7FFFF
              5CC7FFFF5CC7FFFF5DC8FFFF5BC7FFFF40BEFFFF2FBAFFFF35BFFFFF40C9FFFF
              52DEFFFF5CEDFFFF40A4B2A30000000F00000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              000000048775648BC9AF96FFC7AE95FFB79E85FFAE957DFFAA9179FFA48A70FF
              A2876DFFA1866CFFA1866BFFA1866BFFA1866BFFA1876CFFA2896EFF96785AFF
              886644FF8C6A46FF977451FFA78362FFB58A64FF979580FF78CDDEFF82E9FFFF
              79DCFFFF70D2FFFF6BCEFFFF62C9FFFF5DC8FFFF5CC7FFFF5CC7FFFF5CC7FFFF
              5CC7FFFF5CC7FFFF5FC8FFFF50C3FFFF2FB9FFFF32BCFFFF3DC6FFFF4DD6FFFF
              5DF1FFFF4BC1D1CF1C3F4B2C0000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              63574C57BCA28DF0CEB39AFFBBA289FFB1987FFFAB927AFFA68C73FFA2876CFF
              A1866BFFA1866BFFA1866BFFA1866BFFA1866BFFA3896EFF9B7F62FF8A6847FF
              896745FF93714EFFA17F5CFFB38A65FFA68D6FFF7BBAC3FF7FE7FEFF7CE1FFFF
              71D4FFFF6DCFFFFF65CAFFFF5EC8FFFF5CC7FFFF5CC7FFFF5CC7FFFF5CC7FFFF
              5CC7FFFF5CC7FFFF61C9FFFF57C6FFFF36BDFFFF36C1FFFF47D0FFFF5AEAFFFF
              51D4E5F02A727E59000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              000000000000000000000000000000000000000000000000000000003630242A
              AB967FCCD2B79DFFBFA68DFFB39B82FFAC947CFFA78F76FFA2886EFFA1876CFF
              A1866BFFA1866BFFA1866BFFA1866BFFA3886DFFA08469FF8E6E4DFF886542FF
              906D4BFF9D7A59FFAE8964FFAF8A66FF84A8A5FF7BE0F8FF80E7FFFF75D8FFFF
              6ED0FFFF68CCFFFF60C8FFFF5DC7FFFF5CC7FFFF5CC7FFFF5CC7FFFF5CC7FFFF
              5CC7FFFF5DC8FFFF65CBFFFF64CBFFFF54C9FFFF41CAFFFF51DFFFFF5AE4F8FE
              3C97A78C00000006000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000B91816CA0
              CEB49BFFC5AC92FFB69D84FFAE967DFFA99177FFA48A70FFA2876CFFA1866BFF
              A1866BFFA1866BFFA1866BFFA1866CFFA3886CFF947556FF886543FF8D6B48FF
              987653FFA98562FFB7906AFF959E8EFF77D2E6FF84EBFFFF7ADDFFFF6FD2FFFF
              6ACCFFFF61C9FFFF5EC7FFFF5CC7FFFF5CC7FFFF5CC7FFFF5CC7FFFF5CC7FFFF
              5CC7FFFF5FC8FFFF68CBFFFF68CCFFFF6DD3FFFF61DAFFFF58E6FCFF40ABBCC6
              0E23232400000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              00000000000000000000000000000000000000000000000074655969BFA792F6
              CCB298FFB9A188FFB0987FFFAB937AFFA58C72FFA1876DFFA1866BFFA1866BFF
              A1866BFFA1866BFFA1866BFFA3886EFF997C5FFF8A6746FF8B6845FF947250FF
              A2805EFFB8916CFF9D8363E574B6BFED85EFFFFF84E8FFFF78DAFFFF6DD0FFFF
              6ACDFFFF64CBFFFF5CC7FFFF5CC7FFFF5CC7FFFF5CC7FFFF5CC7FFFF5CC7FFFF
              5CC7FFFF5FC9FFFF61C8FFFF60CAFFFF6AD3FFFF77E7FFFF65E2F7FF1E505FA8
              0000002300000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              00000000000000000000000000000000000000004F41393AB09B86DAD1B69DFF
              BDA48BFFB29A81FFAB937BFFA78E75FFA2886EFFA1866BFFA1866BFFA1866BFF
              A1866BFFA1866BFFA2886DFF9E8267FF8D6C4CFF886643FF906E4CFF9E7B59FF
              B3906CFFAA8967F5624C376A5FBACA7E89F0FDFF87ECFFFF78DBFFFF6ED1FFFF
              7AD3FFFF79D1FFFF5FC8FFFF5BC7FFFF5CC7FFFF5CC7FFFF5CC7FFFF5CC7FFFF
              5CC7FFFF5DC8FFFF59C6FFFF55C6FFFF60CFFFFF78E3FFFF84F3FEFF4595A3DC
              0004096D00000010000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              00000000000000000000000000000000170B0B169D8774B1D0B69CFFC3A990FF
              B59C83FFAE957CFFA88F77FFA48970FFA2876CFFA1866BFFA1866BFFA1866BFF
              A1866BFFA2876CFFA1866BFF917253FF876542FF8D6B49FF997755FFAD8A66FF
              B7956FFF846B50A2000000093586A11379D6E5BB8EF8FFFF7EE3FFFF7CD9FFFF
              8ADAFFFF88D6FFFF6FCEFFFF5BC7FFFF5BC7FFFF5CC7FFFF5CC7FFFF5CC7FFFF
              5CC7FFFF5DC7FFFF59C5FFFF5AC7FFFF68CFFFFF78DCFFFF8DF2FFFF7AE7F0FF
              2B6671C200000049000000050000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              000000000000000000000000000000048072617DC4AD93FAC9B097FFB8A087FF
              AF977EFFAA9279FFA48A71FFA1876DFFA1866BFFA1866BFFA1866BFFA1866BFF
              A2866BFFA3886DFF987A5CFF886644FF8B6945FF957351FFA68361FFBA9772FF
              987B5BD13630202F0000000000000000579EA73D7EDFEBE28FF4FFFF94E7FFFF
              91DFFFFF8CD9FFFF82D5FFFF67CBFFFF5AC7FFFF5CC7FFFF5CC7FFFF5CC7FFFF
              5CC7FFFF5CC7FFFF59C7FFFF62C9FFFF6CCEFFFF72D5FFFF81E3FFFF90FBFFFF
              64CAD7F81639419F0000002C0000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000006251474BB8A088E7D0B69CFFBBA28BFFB19980FF
              AB937AFFA68D74FFA2886DFFA1866BFFA1866BFFA1866BFFA1866BFFA1866BFF
              A2886DFF9C8164FF8C6B49FF896744FF926F4DFF9F7C5BFFB6926EFFA78864EE
              5E4A375C0000000000000000000000000000000065BACA6F90EDF6FBA7F7FFFF
              96E5FFFF8DDCFFFF8AD8FFFF7CD2FFFF61C9FFFF5BC7FFFF5CC7FFFF5CC7FFFF
              5CC7FFFF5CC7FFFF5BC7FFFF5DC7FFFF67CBFFFF6ED0FFFF77D9FFFF87EAFFFF
              8EFDFFFF50A4B2E80412147A0000001600000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              00000000000000001E1E1622A38E79C3D3B89EFFC0A78EFFB49B83FFAD957CFF
              A88F76FFA3896EFFA2876CFFA1866BFFA1866BFFA1866BFFA1866BFFA2876DFF
              A0856AFF907050FF886543FF8F6D4AFF9A7855FFAF8B69FFB2906CFF79604991
              00000009000000000000000000000000000000002233440F7BD1DAA7A5FDFFFF
              A0EFFFFF93E2FFFF8CDAFFFF88D6FFFF74CFFFFF5DC7FFFF5CC7FFFF5CC7FFFF
              5CC7FFFF5CC7FFFF5CC7FFFF5AC7FFFF5FC9FFFF6ACDFFFF70D2FFFF7BDDFFFF
              8DF2FFFF80F1F8FF357781CD0000005500000007000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              00000000000000098A7A6890C7AE96FEC7AD94FFB69E85FFAF967DFFA99279FF
              A48970FFA1876CFFA1866BFFA1866BFFA1866BFFA1866BFFA2876CFFA2886EFF
              967759FF886643FF8C6A47FF967452FFA88662FFBB9672FF917457C3241D1523
              0000000000000000000000000000000000000000000000004788942B87DEE8D3
              AAFFFFFF9CEBFFFF90DFFFFF8BD9FFFF85D6FFFF6BCCFFFF5BC6FFFF5BC7FFFF
              5CC7FFFF5CC7FFFF5CC7FFFF5BC7FFFF5BC6FFFF62CAFFFF6CCEFFFF72D5FFFF
              7FE2FFFF90F9FFFF6DD7E3FB1F4851AC00000035000000010000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              000000006A5D4C5DBCA58CF1CEB49BFFBAA188FFB0977FFFAC937AFFA58D73FF
              A2886DFFA1876CFFA1866BFFA1866BFFA1866BFFA1866BFFA2886DFF9B7F61FF
              8A6846FF896745FF93714EFFA17F5DFFB8946FFFA18161E6503F2E4C00000000
              0000000000000000000000000000000000000000000000000000000064B4BF59
              95EDF4F3A9FBFFFF97E7FFFF8EDDFFFF8AD9FFFF7FD3FFFF63CAFFFF5AC7FFFF
              5CC7FFFF5CC7FFFF5CC7FFFF5CC7FFFF5BC7FFFF5BC7FFFF66CBFFFF6DD0FFFF
              75D8FFFF85E8FFFF8FFDFFFF57B2BCEF091E22860000001C0000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              3B362B2FAB967FD2D3B99FFFBFA68DFFB39A81FFAC937BFFA78E75FFA3886EFF
              A2876CFFA1866BFFA1866BFFA1866BFFA1866BFFA2876DFF9F8469FF8E6E4DFF
              886643FF906E4CFF9C7A58FFB18E6BFFAF8C6BFC705A447F0000000300000000
              0000000000000000000000000000000000000000000000000000000000000006
              74C7D393A1F8FCFFA3F2FFFF94E2FFFF8CDBFFFF89D7FFFF77D0FFFF5EC8FFFF
              5BC7FFFF5CC7FFFF5CC7FFFF5CC7FFFF5CC7FFFF5AC7FFFF5EC8FFFF69CCFFFF
              6FD2FFFF79DCFFFF8BEFFFFF86F6FDFF3C8793D7000002610000000B00000000
              0000000000000000000000000000000000000000000000000000000000000000
              000000000000000000000000000000000000000000000000000000000000000F
              948070A3CEB59BFFC4AB91FFB69D84FFAE957CFFA98F78FFA48A6FFFA1876CFF
              A1866BFFA1866BFFA1866BFFA1866BFFA2876CFFA1876CFF937557FF886543FF
              8D6B48FF987654FFA98764FFB89570FF896E53B20B0B0B170000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              387A7A1B7FD7E2C2A8FEFFFF9DEBFFFF91E0FFFF8CD9FFFF86D6FFFF6ECDFFFF
              5CC7FFFF5BC7FFFF5CC7FFFF5CC7FFFF5CC7FFFF5CC7FFFF5AC6FFFF62C8FFFF
              6BCEFFFF71D5FFFF7EE0FFFF90F8FFFF75DFEAFE255761B80000003F00000003
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000076685B70
              C0A991FACAB198FFB89F87FFAF977EFFAB9279FFA58B72FFA2886DFFA1866BFF
              A1866BFFA1866BFFA1866BFFA1866BFFA3886DFF997C5EFF886745FF8A6845FF
              947350FFA3815FFFBA9671FF9C7E5CDC4134233A000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              000000005CA6B5458FEAF1E9AAFEFFFF99E7FFFF8EDDFFFF8BD9FFFF81D4FFFF
              66CAFFFF5BC7FFFF5CC7FFFF5CC7FFFF5CC7FFFF5CC7FFFF5BC7FFFF5BC7FFFF
              65CAFFFF6CD0FFFF74D7FFFF83E5FFFF90FDFFFF5FC0CAF4112B309400000024
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000004F423A3DB19D86E0
              D2B89EFFBCA48BFFB19980FFAC937AFFA78D74FFA3886EFFA1866CFFA1866BFF
              A1866BFFA1866BFFA1866BFFA2886DFF9E8367FF8C6B4BFF886543FF916F4DFF
              9E7C5AFFB4916DFFAB8A68F965523D6C00000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              00000000000000006CBDC77C9BF4F9FCA6F6FFFF95E4FFFF8DDCFFFF8AD8FFFF
              7AD2FFFF60C8FFFF5BC7FFFF5CC7FFFF5CC7FFFF5CC7FFFF5CC7FFFF5BC6FFFF
              5EC7FFFF68CCFFFF6ED1FFFF77DBFFFF8AECFFFF8BFAFFFF4796A2E20004066E
              0000001000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000151515189E8977B6D2B79EFF
              C2A990FFB49C83FFAD947CFFA88F76FFA3896FFFA1876CFFA1866BFFA1866BFF
              A1866BFFA1866BFFA2876CFFA1866CFF927253FF886543FF8E6B49FF997755FF
              AC8967FFB6926FFF80684DA10000000D00000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              00000000000000001E4B5A117ED6DDB0A7FEFFFFA0EEFFFF92E1FFFF8BDAFFFF
              88D7FFFF72CEFFFF5DC7FFFF5BC7FFFF5CC7FFFF5CC7FFFF5CC7FFFF5CC7FFFF
              5AC6FFFF60C8FFFF6ACDFFFF70D4FFFF7CDFFFFF8FF5FFFF7DECF5FF2D6871C4
              0000004A00000004000000000000000000000000000000000000000000000000
              000000000000000000000000000000000000000384726383C9B098FDC9AF96FF
              B79F86FFAF967EFFAA9179FFA48A70FFA2876CFFA1866BFFA1866BFFA1866BFF
              A1866BFFA1866BFFA3896EFF977A5CFF886644FF8C6946FF967451FFA58261FF
              BB9772FF95795AD0281C172C0000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              000000000000000000000000498E9C348BE3ECDFAAFFFFFF9BE9FFFF8FDEFFFF
              8BD9FFFF84D6FFFF69CCFFFF5BC7FFFF5CC7FFFF5CC7FFFF5CC7FFFF5CC7FFFF
              5BC7FFFF5BC7FFFF64CAFFFF6CCFFFFF72D6FFFF82E4FFFF92FDFFFF67CBD7F9
              16343FA10000002C000000000000000000000000000000000000000000000000
              000000000000000000000000000000005E51474EB9A08AEBD0B59BFFBAA189FF
              B1987FFFAC937BFFA68D73FFA2886CFFA1876CFFA1866CFFA1876CFFA1876CFF
              A1866CFFA2886EFF9C8165FF8B6A48FF896644FF926F4DFF9F7E5BFFB7926EFF
              A78765F155473659000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000064B4BC6397F1F5F9A7F7FFFF96E5FFFF
              8EDCFFFF8BD8FFFF7ED3FFFF63CAFFFF5BC7FFFF5DC7FFFF5DC7FFFF5DC7FFFF
              5DC7FFFF5CC7FFFF5EC7FFFF68CCFFFF6ED0FFFF77D9FFFF88E9FFFF8EFFFFFF
              4DA5B2E9040E107A000000150000000000000000000000000000000000000000
              000000000000000000000000241D1523A6907DC9D3B99EFFBFA68DFFB39A82FF
              AC927AFFA3886DFF9F8368FFA1866BFFA0866BFFA0876BFFA0876BFFA0876BFF
              A1876BFF9E8367FF8F6F4EFF886642FF8F6C4AFF9C7857FFB08D69FFB28F6DFE
              765F478E00000007000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              00000000000000000000000000000000002448077BD2DC9BA6FEFFFFA2F0FFFF
              94E3FFFF8EDBFFFF8AD8FFFF6ECDFFFF5AC7FFFF5CC7FFFF5CC7FFFF5CC7FFFF
              5CC7FFFF5DC7FFFF5CC7FFFF62C9FFFF6BCDFFFF71D3FFFF7BDEFFFF8EF1FFFF
              83F3FBFF367681CF000000550000000700000000000000000000000000000000
              00000000000000000000000893847598D5BEA7FFCEB79FFFBEA891FFB39A83FF
              A58A6FFF947555FF937354FF967859FF967858FF967858FF967858FF967858FF
              977959FF8E6E4DFF896643FF8F6D4AFF987553FFA98663FFBC9773FF8F7255C2
              1911111E00000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000346178228DE1EAD1A5FFFFFF
              91E7FFFF89DDFFFF7CD5FFFF55C7FFFF46C1FFFF48C1FFFF48C1FFFF48C1FFFF
              48C1FFFF48C1FFFF48C1FFFF4AC2FFFF50C5FFFF5ACAFFFF66D3FFFF74DFFFFF
              85F7FFFF65D5E0FD1D464DAE0000003400000000000000000000000000000000
              0000000000000000776C6260D1BEAAF5E2CFBAFFD0BDA8FFC0AA92FFB2987DFF
              A68A6DFF927150FF8D6945FF8E6B48FF8E6B48FF8E6B48FF8E6B48FF8E6B48FF
              8E6B48FF8E6A46FF926F4CFF9B7957FFA58361FFB99670FFA18261E8453A2B46
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              00000000000000000000000000000000000000000000000073ACAC4D92EAF1F0
              8AF0FFFF7FDFFFFF5ED1FFFF34C2FFFF32BFFFFF33C0FFFF33C0FFFF33C0FFFF
              33C0FFFF33C0FFFF33C0FFFF33C0FFFF32C0FFFF37C3FFFF43C9FFFF54D4FFFF
              65E2FFFF71F6FFFF4FB3C3F009181C870000001C000000000000000000000000
              0000000048433E31BEAF9CDCE7D3BCFFD3BCA6FFCBB197FFBFA487FFBA9E80FF
              AC8B6BFF9E7A57FF9F7B58FFA07C58FFA07C58FFA07C58FFA07C58FFA07C58FF
              A07C58FFA17C59FFA37F5CFFAB8866FFB79470FFAF8E68FD6A553E7A00000002
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              000000000000000000000000000000000000000000000000000000008ACFD485
              96F5FFFF81ECFFFF57DCFFFF43D4FFFF43D2FFFF43D2FFFF43D2FFFF43D2FFFF
              43D2FFFF43D2FFFF43D2FFFF43D2FFFF43D2FFFF43D3FFFF46D4FFFF4FDBFFFF
              5DE2FFFF66E8FFFF6EF3FFFF3B8792DA000200620000000D0000000000000000
              2713130DA59682B0E2CCB2FFCFB69AFFCAAD90FFC9AB8DFFC9AD90FFC0A181FF
              AF8A67FFAE8965FFAF8A67FFAF8A66FFAF8A66FFAF8A66FFAF8A66FFAF8A66FF
              AF8A66FFB08A67FFB08B67FFB58F6CFFBB9672FF876D52AD0000001000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              000000000000000000000000000000000000000000000000000000003F596614
              8ED7DEBC7FF8FFFF52E6FFFF50E4FFFF51E3FFFF51E3FFFF51E3FFFF51E3FFFF
              51E3FFFF51E3FFFF51E3FFFF51E3FFFF51E3FFFF51E3FFFF51E4FFFF51E4FFFF
              52E4FFFF56E4FFFF61EFFFFF61E2F3FF265E68AD000000230000000000000000
              50433C26A6917C9EAC947BA7A3886DA1A48B70A1A48E73A1A48B75A193765AA1
              8B6D4DA18E7050A18E7050A18E7050A18E7050A18E7050A18E7050A18E7050A1
              8E7050A18E7050A18E7050A1926F52A78B6E52982E281A260000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              679297365ABDD2A73EBCDBAC3FBDD9A841BDD9A841BDD9A841BDD9A841BDD9A8
              41BDD9A841BDD9A841BDD9A841BDD9A841BDD9A83FBDD9A83FBDD9A83FBCD9A8
              3EBCD9A83EBCD9A83FBAD9A849C5E2B143A6BB880C0C0C140000000000000000
              FFFFFF0200000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000FFFFFF010000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              00000000000000000000000000000000000000000000000000000000C00001FF
              FFFFFFFFFF000000800000FFFFFFFFFFFF000000800000FFFFFFFFFFFF000000
              8000007FFFFFFFFFFF000000C000003FFFFFFFFFFF000000E000001FFFFFFFFF
              FF000000F000001FFFFFFFFFFF000000F000000FFFFFFFFFFF000000F8000007
              FFFFFFFFFF000000FC000007FFFFFFFFFF000000FC000003FFFFFFFFFF000000
              FE000001FFFFFFFFFF000000FF000001FFFFFFFFFF000000FF800000FFFFFFFF
              FF000000FF8000007FFFFFFFFF000000FFC000003FFFFFFFFF000000FFE00000
              3FFFFFFFFF000000FFE000001FFFFFFFFF000000FFF000000FFFFFFFFF000000
              FFF800000FFFFFFFFF000000FFF8000007FFFFFFFF000000FFFC000003FFFFFF
              FF000000FFFE000001FFFFFFFF000000FFFF000001FFFFFFFF000000FFFF0000
              00FFFFFFFF000000FFFF8000007FFFFFFF000000FFFFC000007FFFFFFF000000
              FFFFC000003FE00001000000FFFFE000001F800000000000FFFFF000001F8000
              01000000FFFFF800000F000001000000FFFFF8000006000003000000FFFFFC00
              0006000007000000FFFFFE00000000000F000000FFFFFE00000000000F000000
              FFFFFF00000000001F000000FFFFFF00000000003F000000FFFFFE0000000000
              3F000000FFFFFC00000000007F000000FFFFFC0000000000FF000000FFFFF800
              00000000FF000000FFFFF00000000001FF000000FFFFF00000000003FF000000
              FFFFE00000000007FF000000FFFFC00000000007FF000000FFFF80000000000F
              FF000000FFFF80000000001FFF000000FFFF00000000001FFF000000FFFE0000
              0000003FFF000000FFFE00000000003FFF000000FFFC00000000001FFF000000
              FFF800000000000FFF000000FFF000001800000FFF000000FFF000003C000007
              FF000000FFE000003C000003FF000000FFC000007E000001FF000000FFC00000
              FF000001FF000000FF800000FF000000FF000000FF000001FF8000007F000000
              FF000003FFC000007F000000FE000007FFE000003F000000FC000007FFE00000
              1F000000F800000FFFF000001F000000F800001FFFF800000F000000F000001F
              FFF8000007000000E000003FFFFC000007000000E000007FFFFE000003000000
              C000007FFFFF000001000000800000FFFFFF000001000000800001FFFFFF8000
              01000000BFFFFFFFFFFFFFFFFD000000FFFFFFFFFFFFFFFFFF00000028000000
              4000000080000000010020000000000080250000000000000000000000000000
              0000000000000000000000000000000400000009000000080000000800000008
              0000000800000008000000080000000800000008000000080000000800000008
              0000000800000008000000080000000800000007000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              000000000000000043352E264B4238763932298D3A332C8B3B332C8A3B332C8A
              3B332C8A3B332C8A3B332C8A3B332C8A3B332C8A3B332C8A3B332C8A3B332C8A
              3B332C8A3B332C8A3B312C8A4037308E1D191977000000230000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000685B4D38B69F88E9C0A891FFB59F89FEB6A08AFEB8A08AFE
              B8A08AFEB8A08AFEB8A08AFEB8A08AFEB8A08AFEB8A08AFEB8A08AFEB8A08AFE
              B8A08AFEB8A08AFEB7A08BFEC1A78FFF95836DEF100E0E7A0000000D00000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              000000000000000000000001AC968178D4BA9FFFCFB49CFFCAB098FFC8AE95FF
              C5AC92FFC5AB92FFC5AB91FFC5AB91FFC5AB91FFC5AB91FFC5AB91FFC5AB91FF
              C5AB91FFC5AB92FFC7AE95FFC3A689FFCAAB8BFF786958D80000005000000002
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000BB49C87B5D6BAA1FFC4AB92FFBAA188FF
              B39A81FFB1997FFFB1987FFFB1987FFFB1987FFFB1987FFFB1987FFFB1987FFF
              B1987FFFB29981FFB1977CFFAA8C6DFFB89777FFBDA185FF4B413AB30000002E
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000079685C2CC0A993DFDAC3ABFFC3AE99FF
              B9A48EFFB59F89FFB49E88FFB39D87FFB49E88FFB49E88FFB49E88FFB49E88FF
              B49E88FFB49F89FFAC947AFFA88C70FFB3987BFFD0B396FFA58F76F71D18108A
              0000001400000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              00000000000000000000000000000000000000009B887361D5C0A8FBDAC7B2FF
              C6B29EFFBEAA96FFBBA894FFB19C86FFAA937BFFAB947CFFAB947CFFAB947CFF
              AB947CFFAB937BFFA78F76FFAB9279FFB49C82FFC4AD93FFD5B99DFF7B6752E1
              0000005E00000006000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              000000000000000000000000000000000000000000000004AD98859DE0CAB4FF
              D1BEAAFFC2AF9BFFBDAA96FFB59F8AFFA3896FFF9F8468FFA0856BFFA0856AFF
              A0856AFFA0856AFFA0866AFFA68D73FFAD957CFFB79E85FFCCB49BFFC7AC90FF
              504333C10000003B000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000007260461DC0A896CF
              E2CEB8FFCBB7A4FFC0AC98FFBBA995FFAF9882FFA1866BFFA0856AFFA1866BFF
              A1866BFFA1866BFFA1866AFFA1866CFFA88F76FFAF977EFFBBA38AFFD4BAA0FF
              AC9179FA29211A990000001C0000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              00000000000000000000000000000000000000000000000000000000937C6B4C
              CFBAA4F1DDC8B4FFC6B29FFFBEAB97FFB9A692FFAA927AFFA08569FFA1866BFF
              A1866BFFA1866BFFA1866BFFA0856AFFA3896FFFAA9279FFB29980FFC3AA91FF
              D6BBA0FF89745EE90906026E0000000A00000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              A8938085DAC5AFFFD4C0ACFFC4AF9BFFBDAA96FFB6A28DFFA58C73FFA08569FF
              A1866BFFA1866BFFA1866BFFA1866BFFA1866AFFA58C72FFAC947AFFB59D84FF
              CAB198FFCDB296FF61513ECC0000004700000001000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              46463812BAA58FBEE3CEB8FFCDBAA6FFC1AD99FFBCA996FFB19C86FFA2876DFF
              A0856AFFA1866BFFA1866BFFA1866BFFA1866BFFA1866BFFA88F76FFAE967DFF
              BAA188FFD1B89FFFB59B80FD352C21A700000026000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              000000007F6D5C3AC7B29DE7DFCBB5FFC8B5A1FFBFAC98FFBBA794FFAC957DFF
              A0856AFFA1866BFFA1866BFFA1866BFFA1866BFFA0856AFFA2896EFFA99178FF
              B1987FFFBFA78FFFD6BBA0FF957F68F0120C087C000000100000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000A38D7A70D2BDA8FED7C4AFFFC5B19DFFBEAB97FFB8A38FFF
              A78F75FFA08569FFA1866BFFA1866BFFA1866BFFA1866BFFA0856AFFA48B70FF
              AB937AFFB49B83FFC7AF96FFD2B79AFF6F5C49D7000000550000000400000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              00000000000000001515000CB49F8BAAE0CBB5FFCFBCA8FFC1AE9AFFBDAA96FF
              B39E88FFA3896FFFA0856AFFA1866BFFA1866BFFA1866BFFA1856AFFA1866BFF
              A68E74FFAD957BFFB8A087FFCFB69DFFBEA488FF453A2DB40000003000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              00000000000000000000000072664C28C3AE99DAE0CCB6FFCAB6A2FFC0AC98FF
              BBA894FFAE9780FFA1866BFFA1856AFFA1866BFFA1866BFFA1866BFFA1856AFF
              A2876DFFA99177FFB0987FFFBDA58DFFD6BCA0FFA48A70F72019148C00000018
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              000000000000000000000000000000009C86735DCFBBA4F9DAC6B1FFC5B29EFF
              BDAB97FFB8A591FFA89177FFA08569FFA1866BFFA1866BFFA1866BFFA1866BFF
              A0856AFFA48A70FFAB9279FFB39A81FFC4AC92FFD5B99EFF7B6953E102020263
              0000000600000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000004AE978494DDC7B1FFD2BEAAFF
              C2AF9BFFBDAA96FFB5A08BFFA48B70FFA0856AFFA1866BFFA1866BFFA1866BFF
              A1866BFFA0856BFFA68D72FFAD957BFFB79E85FFCCB49AFFC7AC90FF564635C3
              0000003C00000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              00000000000000000000000000000000000000006B58441ABDA994CBE1CDB7FF
              CCB8A4FFC0AD99FFBCA995FFB09A84FFA2876CFFA0856AFFA1866BFFA1866BFF
              A1866BFFA0856AFFA1876BFFA89076FFAF977EFFBBA38BFFD4BA9FFFAC9478FB
              2B241A990000001F000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000008F7A6B47CAB6A0EE
              DCC8B4FFC6B3A0FFBEAB97FFBAA793FFAB937BFFA08569FFA1866BFFA1866BFF
              A1866BFFA1866BFFA0856AFFA38A6FFFAA9279FFB19980FFC1A990FFD7BC9FFF
              8B745DEA0D0906710000000B0000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              00000000000000000000000000000000000000000000000000000000A4907E7F
              D8C3AEFFD4C1ADFFC3B09BFFBEAA96FFB7A28DFFA68D72FFA08569FFA1866BFF
              A1866BFFA1866BFFA1866BFFA0856AFFA58C72FFAC947BFFB59D84FFC9B198FF
              CEB396FF625241CF000000480000000100000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              000000000000000000000000000000000000000000000000000000004848360E
              B8A38CBBE2CDB7FFCEBBA7FFC1AE9AFFBDA996FFB29D86FFA2896DFFA0856AFF
              A1866BFFA1866BFFA1866BFFA0856AFFA1866BFFA78F75FFAE967DFFBAA188FF
              D2B99EFFB69C82FE392F24A80000002900000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              7A6B5834C6B19DE3DFCBB6FFC8B5A1FFBFAB98FFBBA894FFAD967DFFA0856BFF
              A1866BFFA1866BFFA1866BFFA1866BFFA0856AFFA2886EFFA99177FFB0987FFF
              BEA68EFFD7BCA1FF978168F1140E0C7F00000010000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              000000009D8A7669D3BDA8FED8C4AFFFC4B19DFFBEAB98FFB8A490FFA78F76FF
              A08469FFA1866BFFA1866BFFA1866BFFA1866BFFA08569FFA48B70FFAB937AFF
              B39B82FFC6AE95FFD4B89CFF715E4DDA00000056000000050000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000007B09B87A6E0CAB5FFD0BCA9FFC2AF9BFFBDAA97FFB49F89FF
              A38A6FFFA0856AFFA1866BFFA1866BFFA1866BFFA0856AFFA0866AFFA68E74FF
              AD957CFFB79F86FFCFB69CFFC3A78BFF473A2CB7000000330000000000000000
              0000000000000000000000000000000000000000000000000000000200000002
              0000000200000002000000020000000200000002000000020000000200000002
              0000000200000002000000020000000200000002000000020000000200000003
              0000000100000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              000000000000000061524322C1A996D7E2CDB8FFC9B7A3FFC0AC98FFBCA994FF
              AF9981FFA1866BFFA1856AFFA1866BFFA1866BFFA1866BFFA1856AFFA1886CFF
              A89077FFAF967DFFBCA48BFFD6BCA1FFA38A73F81E17138F0000001700000000
              0000000000000000000000000000000000000000141E233218292E5D15262B5D
              16262C5C16262C5C16262C5C16262C5C16262C5C16262C5C16262C5C16262C5C
              16262C5C18292C5C1E2C2C5C1E2C2C5C1E2C2C5C1E2B2E5D25353A6012252536
              0000000200000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              000000000000000000000000917C6A54D0BAA6F7DBC7B3FFC6B29EFFBEAB97FF
              B9A692FFAA9178FFA08569FFA1866BFFA1866BFFA1866BFFA1866BFFA0856AFF
              A38A70FFAA9279FFB29A81FFC4AB92FFD7BB9FFF7D6C55E50202006300000007
              000000000000000000000000000000002F4F5A3067B4BDCA6ABABFED69B5BEE9
              69B5BEE969B5BEE969B5BEE969B5BEE969B5BEE969B5BEE969B5BEE966B5BEE9
              65B5BEE977BABEE982BDBEE981BCBEE981BCBEE97FBEBFEC68AAADE5233E444E
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              00000000000000000000000000000001A896828DDEC8B3FFD3BFABFFC3AF9BFF
              BDAA97FFB6A28CFFA58B71FFA08569FFA1866BFFA1866BFFA1866BFFA1866BFF
              A0856AFFA58C72FFAC957BFFB69E84FFCCB39AFFCDB295FF544638C70000003E
              0000000000000000000000000000000C6AB8C5B195FFFFFF90FAFFFF8DF5FFFF
              8CF5FFFF8CF5FFFF8CF5FFFF8CF5FFFF8CF5FFFF8CF5FFFF8CF5FFFF89F4FFFF
              93F7FFFFABFEFFFFB0FFFFFFABFFFFFFA2FFFFFF9BFFFFFF67BBC09E172E2E0B
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000054483C15BBA892C8E4CFB9FFCBB9A5FF
              C0AD99FFBCA995FFB19C85FFA2876CFFA1866BFFA1866BFFA1866BFFA1866BFF
              A1866AFFA1866BFFA88F75FFAF977DFFBBA48AFFD3B99EFFAA9072FD2823189E
              0000001F000000000000000056949B7387ECF4FF88EDFFFF7BDEFFFF77D9FFFF
              75D7FFFF74D7FFFF74D7FFFF74D7FFFF74D7FFFF74D7FFFF73D7FFFF7AD9FFFF
              93E2FFFF98E5FFFF90E8FFFF8AEFFFFF8CFFFFFF69C7CFCB00121B1C00000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000816C5B3DCCB6A1EDDDCAB5FF
              C7B39FFFBEAB97FFBAA793FFAB937BFFA0856AFFA1866BFFA1866BFFA1866BFF
              A1866BFFA0856AFFA3896FFFAA9279FFB29A82FFB49A7EFFC4A381FF8B725CEE
              0B080872000000023D696D3A7DDAE6EC8DF5FFFF79DCFFFF70D3FFFF6DD0FFFF
              74D2FFFF78D3FFFF78D3FFFF78D3FFFF78D3FFFF78D3FFFF77D2FFFF75D2FFFF
              73D2FFFF64D1FFFF65DAFFFF76F6FFFF6DDCE8EF3A6D70460000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              000000000000000000000000000000000000000000000000A48F7C77D8C1ACFE
              D1BEAAFFC1AD99FFBCAA96FFB29D87FFA0866BFFA1856AFFA1866BFFA1866BFF
              A1866BFFA1866BFFA0856AFFA68D74FFA68D72FFA08262FFB29374FFC4A383FF
              655141CC000002586EBFCABD91FCFFFF7DE0FFFF71D4FFFF6ACDFFFF66CBFFFF
              75D0FFFF7AD1FFFF79D1FFFF79D1FFFF79D1FFFF7CD3FFFF6BCCFFFF41BFFFFF
              35BDFFFF3BC6FFFF50DFFFFF59E8F6FF368E9E7F000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              00000000000000000000000000000000000000000000000000000005AA9683BE
              DEC9B3FFC5B29EFFBCAA96FFB7A28DFFA48A6FFFA0856AFFA1866BFFA1866BFF
              A1866BFFA1866BFFA1876CFFA0856AFF947556FF977756FFA88969FFBC9B7AFF
              AF8866F9546F6BDC7CE0F4FF85EAFFFF73D6FFFF6DCFFFFF65CAFFFF5EC8FFFF
              5DC7FFFF5CC7FFFF5CC7FFFF5CC7FFFF5EC8FFFF5AC7FFFF37BBFFFF2BB9FFFF
              37C3FFFF4BD5FFFF5FF3FFFF44AFBDB70000000C000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              00000000000000000000000000000000000000000000000023231C24AA927CD3
              D2BBA2FFC5B29DFFBDAA96FFB6A28BFFA48A6FFFA0856AFFA1866BFFA1866BFF
              A1866BFFA1866BFFA3896EFF957758FF886543FF926F4DFFA38160FFB58D68FF
              AA8F70FF81C6D0FF81EAFFFF78DAFFFF6ED1FFFF68CCFFFF5EC8FFFF5CC7FFFF
              5BC7FFFF5BC7FFFF5BC7FFFF5CC7FFFF5EC8FFFF41BEFFFF2DB8FFFF37C0FFFF
              45CFFFFF5CEFFFFF4ECCDFE31A48583100000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              00000000000000000000000000000000000000000000000A988872AED3B99EFF
              BCA38AFFBAA58FFFBEAC98FFB29C86FFA1866BFFA1856AFFA1866BFFA1866BFF
              A1866BFFA3886EFF9B7F62FF896745FF8B6845FF987653FFAC8864FFB18964FF
              83ABAAFF7DE6FDFF7CE0FFFF70D2FFFF6BCCFFFF61C8FFFF5CC7FFFF5CC7FFFF
              5CC7FFFF5CC7FFFF5CC7FFFF60C8FFFF4DC2FFFF30B9FFFF33BDFFFF40C9FFFF
              56E4FFFF58DFECFB307B8B630000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              00000000000000000000000000000000000000007F6D5D70C8AE96FFC7AE95FF
              B39A81FFAE967EFFB6A28DFFAA9179FFA08569FFA1866BFFA1866BFFA1866BFF
              A3886DFF9F846AFF8D6C4BFF886543FF93714EFFA48260FFB58962FF92998AFF
              79D9F0FF80E7FFFF73D6FFFF6CCEFFFF65CAFFFF5DC7FFFF5CC7FFFF5CC7FFFF
              5CC7FFFF5CC7FFFF5FC8FFFF56C5FFFF35BAFFFF31BBFFFF3CC6FFFF4ED9FFFF
              5DF0FFFF40A3B59F000000060000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000052493C3BB69F88E9CFB59CFFB89F86FF
              AF967DFFA89076FFA58C73FFA2876DFFA1866BFFA1866BFFA1866BFFA1866BFF
              A2886DFF937455FF876542FF8F6C4AFF9F7D5AFFB38963FFA28F74FF79C7D6FF
              80EAFFFF78DBFFFF6ED0FFFF67CBFFFF5FC8FFFF5CC7FFFF5CC7FFFF5CC7FFFF
              5CC7FFFF5DC7FFFF5DC7FFFF3DBDFFFF2EB9FFFF38C2FFFF48D1FFFF5EF1FFFF
              4BC0D1CF071F2720000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000001A1A0D13A38F7AC0D4B9A0FFBDA48BFFB1987FFF
              AA9279FFA48B71FFA0866BFFA1866BFFA1866BFFA1866BFFA1866BFFA3896EFF
              987C5FFF886643FF8C6A47FF997755FFAE8864FFAD8A67FF80B3B6FF7EE7FFFF
              7CDFFFFF6FD2FFFF6ACCFFFF61C9FFFF5CC7FFFF5CC7FFFF5CC7FFFF5CC7FFFF
              5CC7FFFF5FC8FFFF49C0FFFF2FB9FFFF34BEFFFF42CCFFFF58E9FFFF52D6E5F3
              2B6B754C00000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000008A786788CDB299FFC4AB91FFB39A82FFAC947BFF
              A68D73FFA2876DFFA1866BFFA1866BFFA1866BFFA1866BFFA3886DFF9E8367FF
              8B6A49FF896644FF947250FFA78461FFB48A63FF8C9F95FF7ADEF6FF80E5FFFF
              72D5FFFF6CCEFFFF63C9FFFF5DC7FFFF5CC7FFFF5CC7FFFF5CC7FFFF5CC7FFFF
              5FC8FFFF53C4FFFF33B9FFFF31BCFFFF3EC7FFFF52DEFFFF5BE8FBFF3B98A684
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000675A4D4FBFA78EF1CDB299FFB69D85FFAD957CFFA88F76FF
              A3896EFFA1866BFFA1866BFFA1866BFFA1866BFFA2876CFFA2876CFF917151FF
              886542FF916E4CFFA17F5CFFB48963FF9C927BFF78CDDFFF80E8FFFF76D9FFFF
              6ED0FFFF66CAFFFF5EC8FFFF5DC7FFFF5CC7FFFF5CC7FFFF5CC7FFFF5EC7FFFF
              5AC7FFFF3ABCFFFF2EBAFFFF3AC3FFFF4BD5FFFF5DF0FFFF47B4C6B900000014
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              000000002F2F2720AA9580D0D3B89EFFBBA28AFFB0977EFFAA9278FFA48B70FF
              A1876CFFA1866BFFA1866BFFA1866BFFA1866BFFA3896EFF96795CFF886643FF
              8D6B48FF9B7957FFB08964FFAA8C6BFF7DBAC2FF7FE8FFFF7ADDFFFF6FD2FFFF
              69CCFFFF60C8FFFF5CC7FFFF5CC7FFFF5CC7FFFF5CC7FFFF5DC7FFFF5DC7FFFF
              43BFFFFF2FBAFFFF36C0FFFF45CEFFFF5BEDFFFF50CDDFE41F515B3800000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              000000069482709CD0B69CFFC2A890FFB29981FFAC937BFFA68C73FFA1886DFF
              A1866CFFA1866BFFA1866BFFA1866BFFA2886EFF9C8064FF8A6947FF8A6845FF
              967452FFA98562FFB28A64FF88A6A0FF7CE1F9FF7FE3FFFF72D5FFFF6BCEFFFF
              62C9FFFF5CC7FFFF5CC7FFFF5CC7FFFF5CC7FFFF5CC7FFFF5FC8FFFF55C5FFFF
              30B9FFFF32BDFFFF40C9FFFF54E2FFFF56DFF0FB3688946C0000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              77685B64C1A990FACAAF96FFB59D84FFAD947CFFA88E76FFA2886DFFA1876CFF
              A1866BFFA1866BFFA1866BFFA2876CFFA0856AFF8F6E4EFF896543FF92704DFF
              A2805EFFB58963FF969785FF79D4E7FF81E7FFFF74D7FFFF6DD0FFFF66CBFFFF
              5EC8FFFF5CC7FFFF5CC7FFFF5CC7FFFF5CC7FFFF5CC7FFFF60C9FFFF5DC7FFFF
              3CBFFFFF37C3FFFF4DD9FFFF5DEDFFFF42A8B6A2000000090000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              00000000000000000000000000000000000000000000000000000000423D2D32
              B39C86DED0B69CFFB9A088FFAF967EFFA99078FFA38A6FFFA1876CFFA1866BFF
              A1866BFFA1866BFFA1866BFFA3896DFF957657FF886542FF8E6C49FF9D7B59FF
              B38B65FFA68F71FF7AC1CCFF81EAFFFF79DDFFFF6ED1FFFF68CCFFFF5FC8FFFF
              5DC7FFFF5CC7FFFF5CC7FFFF5CC7FFFF5CC7FFFF5CC7FFFF64CAFFFF67CBFFFF
              5ECCFFFF4ACFFFFF58EAFFFF4FC5DAD11A3A4727000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              000000000000000000000000000000000000000000000000000000119E8A77B1
              D2B89EFFBFA68DFFB19980FFAA9279FFA58C71FFA1876CFFA1866BFFA1866BFF
              A1866BFFA1866BFFA3886EFF9B7E60FF8A6745FF8B6846FF987554FFAD8865FF
              AF8D69FF84AFAEFF7EE6FDFF82E6FFFF73D6FFFF6BCEFFFF62CAFFFF5DC7FFFF
              5CC7FFFF5CC7FFFF5CC7FFFF5CC7FFFF5CC7FFFF5DC8FFFF65CAFFFF66CBFFFF
              6ED3FFFF6EE6FFFF51D1E6FC1D525C7900000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              00000000000000000000000000000000000000000000000083726378C5AD96FD
              C6AC93FFB49B83FFAC947BFFA78E74FFA2886DFFA1876CFFA1866BFFA1866BFF
              A1866BFFA2886DFF9F8368FF8D6C4CFF896644FF93714EFFA58360FFB8936EFF
              886F52AE69C1D0BF8EF9FFFF80E3FFFF71D5FFFF6ECFFFFF72CFFFFF5FC8FFFF
              5BC6FFFF5CC7FFFF5CC7FFFF5CC7FFFF5CC7FFFF5DC7FFFF5DC8FFFF59C7FFFF
              62CFFFFF7BEAFFFF68D5E5FD1738429A0000001E000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              00000000000000000000000000000000000000005D4E4744BAA28BEACFB49BFF
              B89F86FFAF957DFFA89077FFA3896FFFA1866BFFA1866BFFA1866BFFA1866BFF
              A2876CFFA1876DFF917354FF886542FF8F6E4BFF9F7C5AFFBA956FFF9B7F5EDA
              281406265CB4C73783E7F5EB8AF2FFFF76DAFFFF7FD7FFFF89D7FFFF6FCEFFFF
              5AC6FFFF5BC7FFFF5CC7FFFF5CC7FFFF5CC7FFFF5DC7FFFF5AC6FFFF57C5FFFF
              63CEFFFF7BE1FFFF8DF8FFFF52ADB8EA041214710000000C0000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              000000000000000000000000000000001C1C1C1BA6927DC1D2B99DFFBCA48BFF
              B1987FFFAA9179FFA48B71FFA1876CFFA1866BFFA1866BFFA1866BFFA1866BFF
              A3886DFF987B5EFF886644FF8C6947FF997755FFB28E6AFFAA8967F867523D63
              00000000000000006CC1CE7887ECF9FD8CEBFFFF91E0FFFF8DDAFFFF83D5FFFF
              66CBFFFF5AC7FFFF5CC7FFFF5CC7FFFF5CC7FFFF5CC7FFFF5AC6FFFF5FC8FFFF
              6BCFFFFF74D8FFFF89ECFFFF86F6FDFF397D87CD0000004A0000000100000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              000000000000000000000000000000048F7D6C90CCB29AFFC3AA91FFB39B82FF
              AC947AFFA68D73FFA2876DFFA1866BFFA1866BFFA1866BFFA1866BFFA2886DFF
              9D8266FF8C6A49FF8A6744FF957250FFA98663FFB7946FFF81684D9800000006
              0000000000000000334C660A76D3E0AEA3FFFFFF9EEBFFFF8FDEFFFF8BD9FFFF
              7CD2FFFF5FC9FFFF5BC7FFFF5CC7FFFF5CC7FFFF5CC7FFFF5CC7FFFF5DC7FFFF
              67CCFFFF6FD1FFFF7ADCFFFF8FF6FFFF74DBE6FE1F4D53AB0000002900000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000006F605455C0A68FF3CDB299FFB69D85FFAE957DFF
              A88F76FFA3886DFFA2876CFFA1866BFFA1866BFFA1866BFFA1876CFFA1866BFF
              907151FF886543FF916E4CFFA17F5DFFBB9672FF96785CCD26261E2100000000
              000000000000000000000000549EA92D8EE4ECDEAAFEFFFF97E6FFFF8DDBFFFF
              89D7FFFF73CFFFFF5CC7FFFF5CC7FFFF5CC7FFFF5CC7FFFF5CC7FFFF5AC7FFFF
              5FC8FFFF6ACDFFFF71D4FFFF80E2FFFF91FDFFFF5BBAC5F2081C227F00000011
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              00000000000000003F393328AD9783D2D2B79EFFBBA288FFAF967EFFAA9179FF
              A48A70FFA1876CFFA1866BFFA1866BFFA1866BFFA1866BFFA2896EFF96795BFF
              886643FF8D6B48FF9B7957FFB5916DFFA78565EE5A47334F0000000000000000
              0000000000000000000000000000000067B5C35E98F0F5F7A5F6FFFF92E2FFFF
              8CDAFFFF85D5FFFF69CBFFFF5AC7FFFF5CC7FFFF5CC7FFFF5CC7FFFF5CC7FFFF
              5AC6FFFF61C9FFFF6CCFFFFF73D6FFFF87EAFFFF8BFBFFFF418D9ADA00000058
              0000000400000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000009978670A3D0B69DFFC1A78FFFB29981FFAB937AFFA58C72FF
              A2886DFFA1876CFFA1866BFFA1866BFFA1866BFFA3886EFF9C8063FF8A6947FF
              8A6845FF967452FFAC8966FFB3906DFF775F4886000000020000000000000000
              00000000000000000000000000000000000000047ACDDA9AA7FFFFFF9FEEFFFF
              90DFFFFF8BD8FFFF7ED3FFFF62C9FFFF5AC7FFFF5CC7FFFF5CC7FFFF5CC7FFFF
              5BC7FFFF5BC7FFFF65CBFFFF6DD0FFFF78DBFFFF8EF3FFFF7BE7EEFF275A64B7
              0000003300000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              000000007A695B6AC4AB93FBC9B096FFB59C84FFAD947CFFA78F75FFA2886EFF
              A1866CFFA1866BFFA1866BFFA1866BFFA2876CFFA0856AFF8E6E4EFF896643FF
              92704EFFA4815FFFBA9772FF907556BD170B0B16000000000000000000000000
              0000000000000000000000000000000000000000336E7F1E87DDE7CDABFFFFFF
              99E7FFFF8DDDFFFF8AD8FFFF76D0FFFF5DC8FFFF5BC7FFFF5CC7FFFF5CC7FFFF
              5CC7FFFF5AC6FFFF5EC7FFFF69CDFFFF70D3FFFF7EE0FFFF91FCFFFF64C7D2F8
              112C308F00000018000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              4D443B38B59D86E1D0B69DFFB89F87FFAF967DFFA99078FFA3896FFFA1876CFF
              A1866BFFA1866BFFA1866BFFA1866BFFA2886DFF947557FF886542FF8F6C4AFF
              9D7B59FFB7926FFFA38162E44A3D2D3E00000000000000000000000000000000
              0000000000000000000000000000000000000000000000005AABB54994EAF3F1
              A8F9FFFF94E3FFFF8CDBFFFF87D7FFFF6DCDFFFF5BC7FFFF5CC7FFFF5CC7FFFF
              5CC7FFFF5CC7FFFF5AC6FFFF61C9FFFF6BCEFFFF72D6FFFF84E7FFFF8EFEFFFF
              4B9CA8E300050764000000070000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000013
              A28A78B8D4B99FFFBDA58CFFB19880FFAB9279FFA58B72FFA2876CFFA1866BFF
              A1866BFFA1866BFFA1866BFFA2896EFF9A7D60FF886645FF8B6846FF987654FF
              AF8C69FFB08E6AFD6E5841710000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000071C6CF82
              A2FAFEFFA2F1FFFF91E0FFFF8CD9FFFF82D5FFFF65CAFFFF5AC6FFFF5CC7FFFF
              5CC7FFFF5CC7FFFF5CC7FFFF5BC6FFFF64CAFFFF6DD0FFFF77DAFFFF8CF0FFFF
              82F1F9FF326D76C60000003F0000000000000000000000000000000000000000
              000000000000000000000000000000000000000000000000000000018573637E
              C9B097FFC6AC93FFB39B82FFAD947BFFA78D74FFA2886DFFA1866BFFA1866BFF
              A1866BFFA1866BFFA3886DFF9F8468FF8C6B4BFF896644FF93714FFFA68461FF
              BA9572FF8A6E53AB0000000D0000000000000000000000000000000000000000
              000000000000000000000000000000000000000000000000000000000F4B5A11
              82DBE2BAAAFFFFFF9BE9FFFF8FDDFFFF8BD9FFFF7AD2FFFF5FC7FFFF5BC6FFFF
              5CC7FFFF5CC7FFFF5CC7FFFF5BC6FFFF5DC7FFFF67CBFFFF6FD2FFFF7CDEFFFF
              90F9FFFF6CD6E1FB153C419C0000002000000000000000000000000000000000
              0000000000000000000000000000000000000000000000005E534549BBA48CEF
              CEB49AFFB79E86FFAE967DFFA99077FFA3886DFFA1866BFFA1866BFFA1866BFF
              A1866BFFA2876CFFA2886DFF927354FF886543FF906D4BFF9F7D5BFFB99571FF
              9C7D60D932271C2D000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              549BA93691E7F0E6AAFDFFFF96E4FFFF8CDBFFFF89D8FFFF70CEFFFF5BC7FFFF
              5BC7FFFF5CC7FFFF5CC7FFFF5CC7FFFF5AC6FFFF5FC8FFFF6ACEFFFF71D5FFFF
              82E4FFFF91FFFFFF54ABB7EC041115740000000B000000000000000000000000
              0000000000000000000000000000000000000000241B1B1CA7937DC9D3B89EFF
              BCA38AFFB1987FFFAB927AFFA58A70FFA2876DFFA2876CFFA1876CFFA1876CFF
              A1876CFFA3896EFF987B5DFF886644FF8D6A48FF997755FFB38E6AFFAA8967F8
              5E4E385E00000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              000000006ABFC4699DF5F8FCA4F3FFFF92E0FFFF8CDAFFFF85D5FFFF68CBFFFF
              5CC7FFFF5DC8FFFF5DC8FFFF5DC8FFFF5DC8FFFF5CC7FFFF65CAFFFF6DCFFFFF
              76D8FFFF8AECFFFF88F8FFFF397C87D100000049000000010000000000000000
              0000000000000000000000000000000000000004907D6C96D0B69DFFC2AA90FF
              B49B83FFAA9077FF9E8267FF9E8366FFA08569FF9F8569FF9F8569FF9F8569FF
              A0866AFF9A7E61FF8A6A48FF8A6844FF967251FFAA8663FFB89470FF7F644C96
              0000000400000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              000000000000330580D5E0A5AAFFFFFF9DEBFFFF90DEFFFF8DD9FFFF73CFFFFF
              59C6FFFF5AC7FFFF5AC7FFFF5AC7FFFF5AC7FFFF5AC6FFFF5DC7FFFF66CBFFFF
              6FD1FFFF7ADDFFFF90F7FFFF76E0EBFF1C4950AB000000290000000000000000
              00000000000000000000000000000000786D645BCDB6A4F7D8C2ACFFC2AD97FF
              B49B83FFA3876BFF90704FFF906F4FFF917151FF917150FF917150FF917150FF
              927251FF8B6947FF8C6946FF947350FFA3805EFFBD9873FF96795BCC1911111E
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              000000000000000046868D2493E6E9D89CFAFFFF87E1FFFF7AD7FFFF4FC6FFFF
              3CBFFFFF3EBFFFFF3EBFFFFF3EBFFFFF3EBFFFFF3EBFFFFF3FC0FFFF43C1FFFF
              4DC6FFFF5BCFFFFF6DDEFFFF7DF8FFFF55B9C9F2091D1F810000001000000000
              000000000000000000000000443E3E29C2B0A0DAE8D3BFFFD2BDA8FFC1A890FF
              B4997DFFA6886AFF94714EFF936F4BFF936F4CFF936F4CFF936F4CFF936F4CFF
              936F4CFF95704DFF9A7754FFA48361FFB7936FFFA78765EF5042304900000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000007FBCBC5092EFF5F689EFFFFF66D9FFFF39C9FFFF
              36C6FFFF37C5FFFF37C5FFFF37C5FFFF37C5FFFF37C5FFFF37C5FFFF36C5FFFF
              37C7FFFF40CCFFFF52D7FFFF64E4FFFF70F4FFFF3F8C99DD0000005800000007
              00000000000000002E2E2E0BAC9F8CB0EBD5BCFFD6BCA2FFCFB295FFCBAE8FFF
              C5A788FFB28E6BFFAD8763FFAE8965FFAE8965FFAE8965FFAE8965FFAE8965FF
              AE8965FFAF8A66FFB18C68FFBA9572FFB79370FF735E46820000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              000000000000000000000000000000008ACFD69094FBFFFF63ECFFFF4EE4FFFF
              4FE2FFFF4FE2FFFF4FE2FFFF4FE2FFFF4FE2FFFF4FE2FFFF4FE2FFFF4FE2FFFF
              4FE2FFFF4FE3FFFF54E7FFFF5AE9FFFF66F2FFFF69EDFBFF2C636AB90000002C
              0000000000000000685C5142B59E8AD6B69D83D6AF9377D3B0977AD3B1987CD3
              A48666D3987654D3997A58D3997A58D3997A58D3997A58D3997A58D3997A58D3
              997A58D3997A58D3997758D3A17E5BDC886D519F0000000C0000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              00000000000000000000000000000000635454126EC6D4B44BCEE9E043C8E2D8
              45C8E5D845C8E5D845C8E5D845C8E5D845C8E5D845C8E5D845C8E5D845C8E5D8
              44C8E5D844C8E5D844C8E5D843C7E5D844C7E2D84FD5ECDD46AFC4C714282D33
              0000000000000000917F6D0E8B7F681663544612716354127171541271635412
              6354381263544612635446126354461263544612635446126354461263544612
              63544612635446126354461272594C1400000005000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              000000000000000000000000000000000000000033334C0A4D9BB1174891A915
              5491A9155491A9155491A9155491A9155491A9155491A9155491A9155491A915
              5491A9155491A9155491A9155491A9154891A915458BAD166ABFDF186D91B607
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              00000000C0000FFFFFFFFFFF800007FFFFFFFFFF800003FFFFFFFFFF800001FF
              FFFFFFFFC00001FFFFFFFFFFE00000FFFFFFFFFFF000007FFFFFFFFFF000007F
              FFFFFFFFF800003FFFFFFFFFFC00001FFFFFFFFFFE00000FFFFFFFFFFE00000F
              FFFFFFFFFF000007FFFFFFFFFF800003FFFFFFFFFF800003FFFFFFFFFFC00001
              FFFFFFFFFFE00000FFFFFFFFFFE00000FFFFFFFFFFF000007FFFFFFFFFF80000
              3FFFFFFFFFFC00001FFFFFFFFFFC00001FFFFFFFFFFE00000FFFFFFFFFFF0000
              07FFFFFFFFFF000007F80000FFFF800003F00000FFFFC00001E00001FFFFC000
              01C00001FFFFE00000C00003FFFFF00000000007FFFFF8000000000FFFFFF800
              0000000FFFFFF8000000001FFFFFF0000000003FFFFFF0000000003FFFFFE000
              0000007FFFFFC000000000FFFFFFC000000001FFFFFF8000000001FFFFFF0000
              000003FFFFFE0000000007FFFFFE0000000007FFFFFC000000000FFFFFF80000
              00001FFFFFF8000000000FFFFFF00000000007FFFFE00001800003FFFFC00001
              800003FFFFC00003C00001FFFF800007E00000FFFF000007E00000FFFF00000F
              F000007FFE00001FF800003FFC00003FFC00003FF800003FFC00001FF800007F
              FE00000FF00000FFFF000007E00000FFFF000007E00001FFFF800003C00003FF
              FFC00001800007FFFFE00001800007FFFFE0000180000FFFFFF00001FFFFFFFF
              FFFFFFFF28000000300000006000000001002000000000008025000000000000
              000000000000000000000000000000000000000B000000150000001D0000001C
              0000001C0000001C0000001C0000001C0000001C0000001C0000001C0000001C
              0000001C0000001D0000000C0000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              000000000000000000000000000000008674647F917D6CC3887565D0887565CE
              897866CE897866CE897866CE897866CE897866CE897866CE897866CE897866CE
              897866CE8A7968D03B352E850000000A00000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              00000000000000000000000000000000AC968147BEA790B2DFC3A8FFD3B89FFF
              D0B69CFFCFB499FFCFB499FFCFB499FFCFB499FFCFB499FFCFB499FFCFB499FF
              D0B69BFFD1B293FF9A866FF110100E5B00000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              00000000000000000000000000000000000000007269571DBFA891DDCEB59BFF
              BAA189FFB29A81FFB19880FFB29A81FFB39A82FFB39A82FFB39A82FFB39B83FF
              B1987EFFAB8D6FFFC3A485FF776757CF00000030000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000009E8B774DD1B9A3FB
              CDB9A5FFBCA893FFB7A38EFFB19C86FFB09A83FFB19A84FFB19A84FFB19B84FF
              AB937BFFAB9277FFC0A68BFFC5AA90FF453A2CA1000000120000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              00000000000000000000000000000000000000000000000000000000B5A08B8F
              DDC9B3FFC9B5A2FFBDAA96FFB09A84FFA2876CFFA2876DFFA2876DFFA2876DFF
              A1876CFFA89076FFB39B82FFCDB499FFA58F76F61914106E0000000200000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              000000000000000000000000000000000000000000000000000000005544330F
              C2AE9ACADCC8B3FFC3AF9CFFBAA793FFA99077FFA08469FFA1856AFFA1856AFF
              A1866AFFA2876DFFAA9279FFB9A087FFD2B89DFF826D59DB0000003F00000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              957F6D3ACEBAA5F1D3BFABFFC0AC98FFB7A38EFFA48B71FFA0856AFFA1866BFF
              A1866BFFA0856AFFA48B70FFAD957CFFC1A88FFFCAAF94FF564939B10000001B
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              00000000AC998576DAC5B0FFCBB7A3FFBDAA97FFB29C86FFA1876CFFA1866AFF
              A1866BFFA1866BFFA0866AFFA78D74FFB19880FFCAB197FFAF987DFB27211980
              0000000600000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000008BFA893B4DDC9B3FFC5B19DFFBCA995FFAC947CFFA0856AFF
              A1866BFFA1866BFFA1866BFFA2876CFFA99177FFB69D85FFD1B79CFF8F7862E6
              0300004F00000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              000000000000000088766329CAB5A1E5D7C2AEFFC1AD99FFB9A490FFA68D73FF
              A08569FFA1866BFFA1866BFFA0856AFFA38A6FFFAC937AFFBDA58CFFCEB498FF
              655544C200000026000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              000000000000000000000000A5927C5ED3BEA9FECEB9A6FFBFAB98FFB49F89FF
              A2886DFFA1856AFFA1866BFFA1866BFFA1856AFFA68C72FFB0977FFFC7AE95FF
              BAA086FE3B2F24920000000D0000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              00000000000000000000000000000001B7A28FA0DDC8B3FFC6B39FFFBCA995FF
              AE9780FFA1856AFFA1866BFFA1866BFFA1866BFFA1866CFFA99077FFB49C83FF
              D0B69BFF9B856DEF0F0D07600000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              00000000000000000000000000000000655B4719C6B29BD5DAC5B0FFC2AF9BFF
              BAA692FFA88F77FFA08569FFA1866BFFA1866BFFA0856AFFA3886EFFAB937AFF
              BBA38AFFD1B69BFF74634ED00000003300000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              000000000000000000000000000000000000000099887349D0BAA7F7D0BDA9FF
              BFAC98FFB6A18CFFA3896FFFA0856AFFA1866BFFA1866BFFA0856AFFA58C72FF
              AE967DFFC4AA92FFC4AA8FFF493C30A400000014000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              000000000000000000000000000000000000000000000000B19C8687DCC7B2FF
              C8B5A1FFBDAA96FFB09A83FFA1866BFFA1866BFFA1866BFFA1866BFFA0866BFF
              A88F75FFB29A81FFCEB39AFFA88F76F71D160F71000000030000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000004E3A3A0DC1AC96C3
              DBC7B3FFC3B09CFFBBA894FFAA9279FFA08569FFA1866BFFA1866BFFA0856AFF
              A2876DFFAA9278FFB89F86FFD2B89DFF836E5BDD000000420000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              00000000000000000000000000000000000000000000000000000000917D6933
              CCB8A4EFD4C1ACFFC0AD99FFB8A38FFFA58C71FFA0856AFFA1866BFFA1866BFF
              A0856AFFA48A70FFAC957CFFBFA78EFFCCB196FF57493BB50000001D00000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              A996816ED8C3AEFFCBB8A4FFBEAB97FFB29D87FFA2876CFFA1866AFFA1866BFF
              A1866BFFA0856AFFA68E74FFB0987FFFCAB197FFB49980FC2C221B8400000007
              0000000000000000000000000000000000000000000000080000000C0000000B
              0000000B0000000B0000000B0000000B0000000B0000000B0000000B0000000B
              0000000C0000000D000000040000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              00000003BCA692B0DECAB4FFC5B19DFFBCA995FFAC957DFFA0856AFFA1866BFF
              A1866BFFA1866AFFA1876CFFA99077FFB59D84FFD2B89DFF907A64E903030051
              00000000000000000000000000000000427276454D898EA54B8086A94A8288A8
              4A8288A84A8288A84A8288A84A8288A84A8288A84D8488A85C8888A85E8888A8
              5E8C8FB2416A6E84000000080000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000077675720C9B59FE1D7C4AFFFC1AE9AFFB9A591FFA78E74FFA0856AFF
              A1866BFFA1866BFFA0856AFFA3896FFFAB947BFFBDA48BFFD1B79BFF685A48C6
              0000002700000000000000002A4C4C1E7BD5E0DB8FF8FFFF8AF0FFFF89F0FFFF
              89F0FFFF89F0FFFF89F0FFFF89F0FFFF88F0FFFF9BF6FFFFADFBFFFFA7FBFFFF
              92F3F8FF58999E62000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000A08E7956D4C0ABFDCEBBA7FFBFAB98FFB4A08AFFA3896EFF
              A1856AFFA1866BFFA1866BFFA0856AFFA58C72FFB0977EFFC6AD94FFB79B7EFF
              382F23960000000A000000006DBEC7A68DF6FFFF7DE0FFFF76DAFFFF76D9FFFF
              76D9FFFF76D9FFFF76D9FFFF76D9FFFF83DDFFFF94E4FFFF8BE7FFFF8BFAFFFF
              5FB8BF9500000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              000000000000000000000000B7A38E96DCC7B2FFC5B19EFFBCAA96FFAC947DFF
              A0856AFFA1866BFFA1866BFFA1866BFFA1866BFFAA9178FFAB9075FFBA9A79FF
              977E66F20B00005C52969D6688ECFAFF7DE1FFFF6ED1FFFF6CCDFFFF7AD2FFFF
              7BD2FFFF7BD2FFFF7BD2FFFF76D0FFFF5AC7FFFF4CC7FFFF54D8FFFF63E7F9FF
              0F1E0F1100000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000002727130DBFA895D5D1BEA9FFBEAB97FFB29D86FF
              A1866BFFA1866BFFA1866BFFA1866BFFA1866BFF9F8469FF957656FFA68666FF
              C09C7BFF756551DB6CC4D6ED85ECFFFF71D3FFFF67CBFFFF60C8FFFF63C9FFFF
              63C9FFFF63C9FFFF65CAFFFF48C0FFFF2DB9FFFF3BC8FFFF56EAFFFF42B1C4A5
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000004D473B2BB6A088E2CAB49EFFBFAC98FFB29C86FF
              A1866BFFA1866BFFA1866BFFA1866BFFA2886CFF8F7050FF8C6946FFA17F5DFF
              B48B65FF92B0A9FF81E8FFFF75D7FFFF6ACDFFFF5FC8FFFF5BC7FFFF5AC6FFFF
              5AC6FFFF5DC7FFFF4DC2FFFF2EB9FFFF3AC3FFFF55E5FFFF4FCBDFDA1C38421B
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              00000000000000000000000BAA9580C1CCB298FFB39B84FFBAA691FFAC947BFF
              A0856AFFA1866BFFA1866BFFA2886DFF97795BFF886644FF957351FFAF8661FF
              9A9783FF7BDBF1FF7ADFFFFF6DCFFFFF63C9FFFF5CC7FFFF5CC7FFFF5CC7FFFF
              5DC7FFFF58C6FFFF35BAFFFF35BFFFFF4CD9FFFF56DEF1F832818B4B00000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              000000000000000095816F82CDB39AFFBAA188FFAB9379FFA89077FFA2886EFF
              A1866AFFA1866BFFA2876DFF9D8165FF896846FF906D4BFFA7825EFFA88D6EFF
              7EC8D6FF7DE5FFFF70D3FFFF66CBFFFF5EC7FFFF5CC7FFFF5CC7FFFF5CC7FFFF
              5DC7FFFF3EBDFFFF31BCFFFF44CEFFFF5AE9FFFF43A9BA890000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              000000006E605445C1A88FF7C2A88FFFAF967DFFA78D74FFA1866BFFA1856BFF
              A1866BFFA1876CFFA1866BFF8E6E4DFF8B6946FF9F7D59FFB08965FF87B2B1FF
              7EE6FFFF74D7FFFF69CDFFFF5FC8FFFF5CC7FFFF5CC7FFFF5CC7FFFF5FC8FFFF
              4AC1FFFF30BAFFFF3CC6FFFF57E9FFFF4DC4D6C30000000D0000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              352A1F18B19A86D3CAB097FFB29980FFA99077FFA3886EFFA1866BFFA1866BFF
              A1866BFFA2886DFF947657FF896643FF977553FFB08761FF959E8EFF7CDFF7FF
              78DDFFFF6CCFFFFF62C9FFFF5CC7FFFF5CC7FFFF5CC7FFFF5EC7FFFF54C4FFFF
              32BAFFFF37C1FFFF50DEFFFF52D6E9ED2B6E7835000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              9D89779ACEB49AFFB79E85FFAB937AFFA48A70FFA1866BFFA1866BFFA1866BFF
              A2886DFF9B7F62FF896745FF916F4DFFAA845FFFA39075FF7DCFDFFF7CE3FFFF
              6FD2FFFF65CAFFFF5DC7FFFF5CC7FFFF5CC7FFFF5CC7FFFF59C6FFFF3ABCFFFF
              32BDFFFF47D2FFFF59E3FAFF3C9AA86D00000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              000000000000000000000000000000000000000000000000000000008271615C
              C4AB92FCBEA58CFFAE957CFFA68D73FFA1876CFFA1866BFFA1866BFFA2876CFF
              9F8569FF8C6B4AFF8D6B48FFA27E5BFFAE8B67FF83B9BEFF7EE6FFFF73D5FFFF
              69CDFFFF5EC8FFFF5CC7FFFF5CC7FFFF5CC7FFFF5EC8FFFF4EC2FFFF2EBAFFFF
              40C9FFFF58E9FFFF48BACAAA0000000600000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000004E473A27B7A28BE1
              C8AE94FFB0987FFFA88F76FFA2886DFFA1866BFFA1866BFFA1866BFFA2876DFF
              927353FF896744FF9B7856FFB18964FF8FA49AFF7CE2FBFF78DBFFFF6BCEFFFF
              62C9FFFF5CC7FFFF5CC7FFFF5CC7FFFF5CC7FFFF61C9FFFF5FC9FFFF44C6FFFF
              4FDFFFFF52D3E7D81E4B52220000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              000000000000000000000000000000000000000000000008A7917DB1CEB39AFF
              B49C83FFAA9279FFA48A6FFFA1866BFFA1866BFFA1866BFFA3886DFF997B5EFF
              896644FF94714FFFAF8864FFA09A83FF7ED8EBFF7FE4FFFF6FD2FFFF64CAFFFF
              5DC7FFFF5CC7FFFF5CC7FFFF5CC7FFFF5CC7FFFF63CAFFFF68CDFFFF6CDBFFFF
              57D7EFFC26687469000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              00000000000000000000000000000000000000008D7C6C73C8AF97FFBBA289FF
              AD947CFFA58B72FFA1866BFFA1866BFFA1866BFFA2876DFF9E8266FF8B6949FF
              8F6C4AFFA88561FFAB8562EE6A8E8B8D82EBFDF880E5FFFF6FD1FFFF75D1FFFF
              60C9FFFF5BC7FFFF5CC7FFFF5CC7FFFF5CC7FFFF5DC8FFFF59C8FFFF70DDFFFF
              74DEEEFC1E474E8F0000000D0000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000066594C39BCA68EEEC5AB91FFAF977EFF
              A78E75FFA2876DFFA1866BFFA1866BFFA1866CFFA1866CFF8F6F50FF8B6845FF
              9E7B59FFB4916DFF846A4F810000000179D4E39589F2FFFF84DEFFFF8CD9FFFF
              74D0FFFF5BC7FFFF5CC7FFFF5CC7FFFF5CC7FFFF5AC6FFFF5DC8FFFF70D4FFFF
              8AF1FFFF61BECAEE07171C610000000100000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000001E0F0F11AF9983C4CCB298FFB39B82FFAA9178FF
              A3896EFFA1866BFFA1866BFFA1866BFFA2886DFF96795AFF896644FF967351FF
              B4906CFF95795CBF0000000E000000004386861380E0ECCEA3F8FFFF91DEFFFF
              87D7FFFF6BCCFFFF5AC7FFFF5CC7FFFF5CC7FFFF5BC7FFFF5FC9FFFF6CCFFFFF
              7BDEFFFF8CF8FFFF46909BD20000003500000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000009785728ACDB39AFFB9A087FFAC937AFFA58A70FF
              A1866BFFA1866BFFA1866BFFA2876DFF9C8164FF8A6846FF906D4BFFAC8865FF
              A58665EA534431340000000000000000000000006BB7C3409AEFF6F39FEEFFFF
              8DDBFFFF81D4FFFF61C9FFFF5BC7FFFF5CC7FFFF5CC7FFFF5BC7FFFF63CAFFFF
              6FD1FFFF83E7FFFF80EAF4FF295E64A500000014000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              00000000000000007A6D594DC1A991F7C1A78EFFAE957DFFA68D74FFA1876CFF
              A1866BFFA1866BFFA1876CFFA1866AFF8D6E4CFF8C6946FFA17E5CFFB08E6BFF
              7962486D000000000000000000000000000000000000000079CDD77CA4F9FFFF
              97E6FFFF8CD9FFFF78D1FFFF5CC7FFFF5BC7FFFF5CC7FFFF5CC7FFFF5BC7FFFF
              66CCFFFF72D5FFFF8BF2FFFF6BCCD5F70D282C72000000030000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              000000003D34341DB59E86D6CAB097FFB19981FFA99077FFA2886EFFA1866BFF
              A1866BFFA1866BFFA2876DFF947557FF896744FF987654FFB5916EFF927456AB
              0000000600000000000000000000000000000000000000001C38540988DFE7B9
              A7FAFFFF92E0FFFF89D7FFFF6ECDFFFF5BC7FFFF5CC7FFFF5CC7FFFF5BC7FFFF
              5EC8FFFF6ACEFFFF79DBFFFF8EF8FFFF50A0ACDE000000420000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              00000003A28C79A2CEB39AFFB69D85FFAB927AFFA48A70FFA1866BFFA1866BFF
              A1866BFFA2886DFF9A7E61FF896745FF92704DFFAF8B68FFA38162DC38312324
              000000000000000000000000000000000000000000000000000000005BA3B02A
              94EBF1E8A2F2FFFF8FDDFFFF84D6FFFF64CAFFFF5AC7FFFF5CC7FFFF5CC7FFFF
              5BC6FFFF61C9FFFF6ED0FFFF80E3FFFF86F2FCFF346F76B50000001E00000000
              0000000000000000000000000000000000000000000000000000000000000000
              84756562C4AB92FEBDA58BFFAD957CFFA68C73FFA1876CFFA1866BFFA1866BFF
              A2876CFF9F8469FF8C6B4AFF8D6A48FFA5825FFFAE8A6AFA6F57435700000000
              0000000000000000000000000000000000000000000000000000000000000000
              71C3CE639EF3F9FE9AE9FFFF8DDBFFFF7CD2FFFF5EC8FFFF5BC7FFFF5CC7FFFF
              5CC7FFFF5BC6FFFF65CBFFFF71D4FFFF89EEFFFF73D6E2FC17393F8400000007
              00000000000000000000000000000000000000000000000000000000564B452C
              B9A28CE7C7AD93FFB09880FFA88E76FFA2876DFFA1866BFFA1866BFFA1866BFF
              A2886DFF927354FF8A6745FF9C7956FFB5926FFF866E53960000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000183D9E1A3A8FCFFFF94E2FFFF8BD9FFFF72CFFFFF5CC7FFFF5CC7FFFF
              5CC7FFFF5BC7FFFF5DC7FFFF69CDFFFF76D8FFFF8EF7FFFF59B2BDE800090C52
              00000000000000000000000000000000000000000000000000000009A8927DB7
              CDB398FFB49B82FFAA9178FFA48970FFA2886DFFA2886DFFA2886DFFA3896EFF
              987B5DFF886644FF94714FFFB38E6AFF9D7E60CE222217160000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              000000003D848E1994E9EFD7A4F6FFFF91DEFFFF88D7FFFF6ACCFFFF5EC8FFFF
              5EC8FFFF5EC8FFFF5EC7FFFF63CAFFFF6FD0FFFF80E0FFFF8CF8FFFF3E818AC5
              0000000100000000000000000000000000000000000000009685777AD1B9A2FF
              C0A991FFAC927AFF997B5DFF96795BFF987B5CFF987B5CFF987B5DFF967859FF
              8A6847FF906E4BFFA98663FFA88968F55E4A3A41000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              00000000000000006EBDC74A9DF0F7FA95EAFFFF86D9FFFF5FC9FFFF4BC2FFFF
              4DC2FFFF4DC2FFFF4DC2FFFF4EC2FFFF56C6FFFF65CFFFFF7EE8FFFF72E0EDFF
              00000041000000000000000000000000000000027971693FD2BFACF4DBC6B0FF
              C1A990FFAF9376FF977553FF936F4BFF93704CFF93704CFF93704CFF936F4CFF
              977451FFA78462FFB5926EFF7E684E7F00000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000008AD5DB8892F5FFFF6FDDFFFF3CC9FFFF36C5FFFF
              37C5FFFF37C5FFFF37C5FFFF37C5FFFF37C5FFFF3FCAFFFF53D7FFFF6DF1FFFF
              316F78BA0000001E00000000000000009587776DB8A891D9E0C6ABFFCDB194FF
              C9AC8DFFB99775FFAD8763FFAE8864FFAE8864FFAE8864FFAE8864FFAE8964FF
              B08B67FFBC9671FF95785ABA0000000A00000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              000000000000000000000000738B8B0B8BDDE9C66BF3FFFF4DE4FFFF4EE3FFFF
              4EE3FFFF4EE3FFFF4EE3FFFF4EE3FFFF4EE3FFFF4DE3FFFF51E6FFFF58E8FFFF
              5DDAEDFF1E4A507E00000000000000009F8D7958AD9A8277A38A6F70A58E726F
              A58E756F9375546F9375546F9375546F9375546F9375546F9375546F9375546F
              9375546F9575576F4C44331E0000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              00000000000000000000000000000000669FA5284FC2DA7743BFD97546C1D974
              46C1D97446C1D97446C1D97446C1D97446C1D97446C1D97444BFD97441BFD974
              4DCBE67D449BAC4A000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000008000FFFFFFFF000080007FFFFFFF000080007FFF
              FFFF0000C0003FFFFFFF0000E0001FFFFFFF0000F0000FFFFFFF0000F0000FFF
              FFFF0000F80007FFFFFF0000FC0003FFFFFF0000FC0003FFFFFF0000FE0001FF
              FFFF0000FF0000FFFFFF0000FF0000FFFFFF0000FF80007FFFFF0000FFC0003F
              FFFF0000FFE0001FFFFF0000FFE0001FFFFF0000FFF0000FFFFF0000FFF80007
              C0000000FFF8000780000000FFFC000300010000FFFE000100030000FFFF0000
              00030000FFFF000000070000FFFF000000070000FFFE0000000F0000FFFE0000
              001F0000FFFC0000001F0000FFF80000003F0000FFF80000007F0000FFF00000
              007F0000FFE0000000FF0000FFC0000001FF0000FFC0000000FF0000FF800000
              007F0000FF000080007F0000FF0001C0003F0000FE0003E0001F0000FC0003E0
              001F0000F80007F0000F0000F8000FF800070000F0001FF800070000E0001FFC
              00030000E0003FFE0003000080007FFF0001000080007FFF000100008000FFFF
              80010000FFFFFFFFFFFF00002800000020000000400000000100200000000000
              802500000000000000000000000000000000000055553F0C53473D4F3E382F51
              433A334F473D334F473D334F473D334F473D334F483E3851302D294900000005
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000785A4B11B19B86DAC7AE96FF
              B79F88FFB79F88FFB8A088FFB8A088FFB8A088FFBDA48CFFAF967DFF3F382F6C
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              000000000000000000000000000000000000000000000000B299853FCFB69DFE
              C6AE96FFB79F87FFB79F87FFB8A088FFB9A189FFB59C83FFC1A181FFA08873ED
              0000003100000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              00000000000000000000000000000000000000000000000000000000BCAA947F
              E0CAB5FFBEAB98FFAC967FFFA48B72FFA68E75FFA48B71FFAC937AFFD3B89CFF
              796857C10000000B000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000003
              C8B39FC3DBC6B1FFB6A18DFFA1876CFF9F8367FF9F8469FFA2886EFFB79F85FF
              C9AF94FF4F423683000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              A18C7826D1BDA8F1CEBBA6FFB09B85FFA08569FFA1866BFFA0856AFFA48B71FF
              C6AD93FFAB937BF719120B450000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              00000000B7A38E64DDC8B2FFC2AF9BFFAA937AFF9F8368FFA1866BFFA0856AFF
              A99177FFD2B79CFF88755FD30000001600000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000C3AE9BABDEC9B4FFB9A692FFA48B71FFA08469FFA1856AFF
              A1876CFFB39A81FFCFB499FF5F50409B00000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              000000000000000090796317CDBAA5E3D3BFAAFFB39E88FFA1856BFFA1856AFF
              A0856AFFA38A6FFFC1A88EFFB49C83FE30271C5A000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              000000000000000000000000B09C874BD7C2ADFFC6B39FFFAC957EFF9F8368FF
              A1866BFFA0856AFFA78F75FFCFB599FF97806CE2000000250000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              00000000000000000000000000000000BFAA9791DFCBB5FFBCA995FFA68D74FF
              9F8468FFA1866AFFA0866BFFAF977DFFD2B89CFF6D5D4CB10000000400000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              000000000000000000000000000000004C4C330ACAB7A2D1D8C4AFFFB6A18CFF
              A2876CFFA0856AFFA0856AFFA2886EFFBBA389FFC2A88EFF3F332A7100000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000A68E7A34D3BDAAFACBB8A4FF
              AF9882FF9F8468FFA1866AFFA0856AFFA58C73FFCBB096FFA38B76EF04000035
              0000000000000000000000000D1A1A271A2828391826263518262635182B2635
              182B26351C2B2B3525252A363242423D19263314000000000000000000000000
              000000000000000000000000000000000000000000000000B9A69276E0CBB5FF
              C0AC99FFA99177FF9F8468FFA1866BFFA0856BFFAB9379FFD4B99DFF7D6E5AC5
              0000000D000000005D9DA53C7AD5DCEB76CCDBF872CADAF572CADAF572CADAF5
              78CFDAF591D5DAF596DEDEF871BFC2DC1D444E1A000000000000000000000000
              00000000000000000000000000000000000000000000000000000000C7B29EBB
              DBC7B1FFB8A490FFA3896FFFA0856AFFA0856AFFA1886DFFB79F86FFC2A588FF
              4D3B2B800000000D7DDCE9D588F5FFFF7ADFFFFF80E1FFFF7FE1FFFF7FE0FFFF
              80E1FFFF86EFFFFF84FBFFFF64C0C65100000000000000000000000000000000
              000000000000000000000000000000000000000000000000000000008E7A6519
              CBB8A3EAC9B6A3FFAB947CFF9F8468FFA1866BFFA2876DFF9D8266FFAE8D6BFF
              A37A59EC609AA2BE86F3FFFF6ACDFFFF65C9FFFF6BCCFFFF6ECDFFFF5CC6FFFF
              36BCFFFF50E8FFFF46BBCD900000000000000000000000000000000000000000
              000000000000000000000000000000000000000000000000000000007A6B5B32
              C1A790F0C5B29DFFAC957DFF9F8468FFA2876CFFA0856AFF8A6948FFA0764FFF
              A99A7FFF83E2F7FF71D6FFFF60C8FFFF5AC6FFFF5BC7FFFF57C5FFFF30B8FFFF
              46DEFFFF51D0E5CF000000080000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000002A2A2A0CB9A089D5
              C5AA8FFFAB937CFFA48A70FFA0856AFFA3886EFF907152FF926C48FFAB8661FF
              84CAD4FF75E0FFFF64C9FFFF5BC7FFFF5CC7FFFF5FC8FFFF3DBCFFFF3BCDFFFF
              53DBF2F73D8E9332000000000000000000000000000000000000000000000000
              000000000000000000000000000000000000000000000000A8928196CFB49AFF
              AB9279FFA1866BFFA0856AFFA3896FFF987B5DFF8B6845FFAA7D56FF91B2ADFF
              77E5FFFF6ACEFFFF5DC7FFFF5BC7FFFF60C8FFFF4AC0FFFF32BFFFFF56E9FFFF
              48B4C27100000000000000000000000000000000000000000000000000000000
              000000000000000000000000000000000000000095826F50C8AF96FFB49B82FF
              A3896FFFA1866AFFA2886DFF9F8367FF896847FFA2764FFF9F9C86FF7AE0F9FF
              6FD5FFFF5FC7FFFF5BC7FFFF5EC8FFFF53C4FFFF32B9FFFF4EE5FFFF50C9DAB5
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000062584E1ABEA48EE5C1A78DFFA58C72FF
              A0866BFFA1866BFFA2886DFF8E6E4EFF976F4BFFAA8C6BFF81D1E0FF73DEFFFF
              63C9FFFF5BC7FFFF5CC7FFFF60C8FFFF47C0FFFF3ED2FFFF53DAF0E434727B1D
              0000000000000000000000000000000000000000000000000000000000000000
              00000000000000000000000000000000AF9985B0CDB297FFA89077FFA1876CFF
              A1866BFFA3896EFF967759FF8D6A46FFAF8761FF90C2C2FF78E5FFFF67CCFFFF
              5CC7FFFF5CC7FFFF5BC7FFFF61C8FFFF66D0FFFF58DCF6FF328C975B00000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000009C89786ACDB299FFB0977EFFA2886EFFA0866AFF
              A2886EFF9C8064FF896745FFAF8962FF9C7956A676DFF3B185F1FFFF77D0FFFF
              62C9FFFF5AC6FFFF5CC7FFFF5BC6FFFF63CFFFFF7BE5F6FF2E61657E00000000
              0000000000000000000000000000000000000000000000000000000000000000
              00000000000000007F6E5C2CC1A78FF3BCA288FFA48A71FFA0866AFFA2876CFF
              A1876BFF8C6B4BFFA17C57FFA68765E43F00001055DFF4188CEAF7EC9DEDFFFF
              7AD1FFFF5AC6FFFF5BC7FFFF5AC6FFFF62C8FFFF83E9FFFF6FCFD8F70A232648
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000005B59E88C6C9AE94FFA78E75FFA1866BFFA1866BFFA3896EFF
              937455FF926F4BFFB08C69FF816A504F000000000000000085D4DA5AA4FAFFFF
              92DFFFFF6ECDFFFF59C6FFFF5CC7FFFF5BC6FFFF69CDFFFF8CF8FFFF57A6B1D5
              0000001700000000000000000000000000000000000000000000000000000000
              00000000A6907B84CFB59AFFAD947BFFA2886EFFA1866BFFA3886EFF9A7D61FF
              8A6845FFB38E68FF967B5E95000000000000000000000000000000008CE0EAA0
              A8FDFFFF88D7FFFF64C9FFFF59C6FFFF5BC7FFFF5DC6FFFF72D6FFFF8AF6FFFF
              39777C9C00000000000000000000000000000000000000000000000000000000
              89796941C5AC92FCB79E84FFA48A70FFA1866AFFA2876CFFA08469FF8A6947FF
              A7825DFFA38465D42727130D000000000000000000000000000000003F8F9F10
              95EBF3DCA1F2FFFF7ED2FFFF5CC7FFFF5BC7FFFF5BC6FFFF61C8FFFF7FE5FFFF
              77D9E3FE183C3F5C00000000000000000000000000000000000000003C2D2D11
              BBA18CDAC5AB91FFA68D74FFA2866BFFA2876CFFA3886EFF907051FF97734FFF
              AC8969FA765C4A3A000000000000000000000000000000000000000000000000
              77CFD340A0F3FAFD96E4FFFF74CFFFFF5AC6FFFF5CC7FFFF5CC6FFFF67CAFFFF
              8AF5FFFF61B6C1E40000002600000000000000000000000000000000AB96809F
              CFB49BFFA78D74FF9F8468FF9F8469FFA0866BFF95785AFF8C6946FFB48F6AFF
              8F75587C00000000000000000000000000000000000000000000000000000000
              000000008BDEE384A8FFFFFF8CD9FFFF64C8FFFF58C5FFFF59C5FFFF5BC5FFFF
              6ED1FFFF8DFAFFFF46888FB2000000050000000000000000AF9F9260E3CDB6FF
              C6AD93FFA28161FF987551FF9A7855FF9A7754FF987350FFB59069FF9E8060C1
              0000000300000000000000000000000000000000000000000000000000000000
              000000000033330594E9EFC689F6FFFF45CEFFFF3ECBFFFF40CCFFFF40CCFFFF
              43CCFFFF60E5FFFF6FEBFBFF295E627A00000001796D6115BBA791CFC9B194E6
              B3987AE3A07D5DE39F7B59E39F7C59E39F7C59E3A5805FE6A98666D46A543F24
              0000000000000000000000000000000000000000000000000000000000000000
              000000000000000095C7C7296CDFEDDB42D3F4E945D1F1E645D1F1E645D1F1E6
              44D1F1E644D1F1E657E3F8E94AAFC0D1151F2A1891916D078C7259145B48240E
              754E3A0D754E3A0D75624E0D75624E0D75624E0D7766440F0000000700000000
              0000000000000000000000000000000000000000000000000000000000000000
              000000000000000000000000194C7F0A4BA5A51155AAAA0F55AAAA0F55AAAA0F
              55AAAA0F4499AA0F1F7FAF1050C9F1133F7F7F04001FFFFF001FFFFF800FFFFF
              C007FFFFC007FFFFE003FFFFF001FFFFF801FFFFF800FFFFFC007FFFFE003FFF
              FE003FFFFF001C00FF800800FFC00001FFC00003FFC00003FF800007FF80000F
              FF00001FFE00001FFE00003FFC00003FF800001FF001800FF003C00FE003C007
              C007E003C00FF001800FF000001FF800003FFC00280000001000000020000000
              010020000000000080250000000000000000000000000000000000009C87764B
              A9937DAD9D8771A2A38F79A49B86709F2B231A1D000000000000000000000000
              00000000000000000000000000000000000000000000000000000000C1AF951D
              C9B39BEFD0B79DFFBA9F85FFC9AC8EFF96816EB7000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              C8B7A33DCCB8A3FFA68C72FF9F8469FFC1A68BFF7F6F5D700000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              00000000CAB5A383CFB9A2FF9D8267FFAB9074FFB19982F753483C2E00000000
              0000000000000000000000000000000000000000000000000000000000000000
              000000007F7F7F02C9B6A3C9C0A890FF9A7E63FFBA9F83FFA28D75CC00000006
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000BFAC9928CEBAA5F5AE947BFF9D8166FFC2A78BFF8A78658A
              0000000000000000000000000000000000000000000000000000000000000000
              000000000000000000000000C6B5A168D0BBA5FFA1866CFFA68B70FFB79F86FF
              6E55443C007F7F0270C2C98A69B8C49471B9C59286C6C79D61A1A44C00000000
              00000000000000000000000000000000C8B7A5A8C1AA92FF9D8266FFB29579FF
              9E7454D06FC3D7A781F2FFFF7DE3FFFF71EBFFFF6ADCF4F66DC4CB2300000000
              00000000000000000000000000000000B69F8AB3BBA289FFA0866BFF966D49FF
              A19D85FF78E0FFFF5DC7FFFF51C4FFFF40D0FDFF38BBD2440000000000000000
              000000000000000000000000B39B8679BFA489FFA0866CFF997758FF9C7D5AFF
              7FD2EAFF5FCEFFFF56C2FFFF46D6FFFF49C9E58A000000000000000000000000
              0000000000000000AB988434BAA18AFBA78C72FF9B7F63FF9F7750FF91C6CBFF
              61D4FFFF5BC5FFFF5ED4FFFF47C5E9C800000000000000000000000000000000
              000000008D717109B9A088D5B3977CFF9D8369FFA27E5BFF9D744FA07EE9FDA5
              83E6FFFF57C3FFFF67D7FFFF6EC8DBD20000000D000000000000000000000000
              00000000B39E8894BEA387FFA0866BFF9E7F5EFF9C7B58E49919000A9CFEFE0D
              9AEBF9E774D8FFFF56C3FFFF7AE7FFFF61B0BBA2000000000000000000000000
              AB93824CBFA58CFFA48B70FF9C7F62FFA07D59FF987B5F480000000000000000
              93E4E74C9AEEFFFF66CAFFFF5FC9FFFF7DE2FBFF528D905A00000000BDA99C27
              C1A890FCB59472FFA58463FFAE8963FF9B7A5C90000000000000000000000000
              000000009BE5F1947DF3FFFF4BD4FFFF60E8FFFF63D1E8FF3A7A7F30B4A08F3E
              C4AA8D829B7755789C77537AA37F60726D6D4807000000000000000000000000
              000000009FBF9F0854D7EF753FCDF27C3CC9F07B51DDF78346A0B04103FF0000
              03FF000081FF0000C0FF0000C07F0000E07F0000F0000000F8000000F8010000
              F0030000E0070000C0030000C00300008181000003C0000003C0000028000000
              60000000C00000000100180000000000006C0000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              000000000000000000000000000000007E7A7576726E78736F78736F78736F78
              736F78736F78736F78736F78736F78736F78736F78736F78736F78736F78736F
              78736F78736F78736F78736F78736F78736F78736F79736F787472807E7E0000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              00000000000000000000000000D5BBA3C5AC95C2AB95C2AB95C2AB95C2AB95C3
              AB95C3AB95C3AB95C3AB95C3AB95C3AB95C3AB95C3AB95C3AB95C3AB95C3AB95
              C3AB95C3AB95C3AB95C3AB95C3AB95C3AB95C3AB95C2AA94CDB59B887E710000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              00000000000000000000000000BEB0A4D1B79DC7AE96C7AE96C7AE96C7AE96C8
              AE96C7AE95C7AE95C7AE95C7AE95C7AE95C7AE95C7AE95C7AE95C7AE95C7AE95
              C7AE95C7AE95C7AE95C7AE95C7AE95C7AE95C8AF96C6AC92BFA183C8AE92716A
              6400000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              00000000000000000000000000000000C7B19DCBB299C6AD95C6AD95C5AC94C2
              AA91BFA68EBEA58CBDA48BBDA48BBDA48BBDA48BBDA48BBDA48BBDA48BBDA48B
              BDA48BBDA48BBDA48BBDA48BBDA48BBEA58DC0A78FBDA186B79979C1A283B39F
              8A6B6A6700000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              00000000000000000000000000000000000000CDB29BC8AE96C6AD95C3AA91BD
              A38AB89F86B59C83B39B82B39B82B39A81B39A81B39A81B39A81B39A81B39A81
              B39A81B39A81B39A81B39A81B39A82B59C83B49A80AD9072B09172B69777C7A9
              8B95877978787800000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              00000000000000000000000000000000000000C1B6ACD0B69DC8B098C5AD94BD
              A48CB69E86B29981AF977FAF977EAF967EAF967EAF967EAF967EAF967EAF967E
              AF967EAF967EAF967EAF967EAF967EB0987FA98E72A38567A98A6BB29374BC9D
              7ECAAF93796F6700000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              00000000000000000000000000000000000000000000BAA89AD7C1AAD3BFAACA
              B6A0C2AD99BDA893BAA590B8A38EB7A28DB7A28DB7A28DB7A28DB7A28DB7A28D
              B7A28DB7A28DB7A28DB7A28DB7A38EB5A08AAC937AAA9075B0967BB9A085C4AA
              8FCFB59AB0977D69656000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              00000000000000000000000000000000000000000000000000C8B29BD9C6B1D3
              C0ACCAB7A3C2AF9BBEAA96BBA894BAA793B39E88AD9780AE9780AE9780AE9780
              AE9780AE9780AE9780AE9780AE9780AB947CA88F76AA9279AF977DB69E84C1A8
              8FCCB39ACDB295937D6873727000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              00000000000000000000000000000000000000000000000000000000D5BEA7D8
              C5B1D0BDA9C8B4A0C1AD99BDAA96BBA894B49F89A68E74A2886DA2886EA2886E
              A2886EA2886EA2886EA2886EA2886EA2876CA2896EA89076AC937AB1987FBAA2
              89C4AC92CEB59CC4A98C796A5D00000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              00000000000000000000000000000000000000000000000000000000BBAD9FDB
              C5AED6C4B0CEBAA6C5B29EBFAC98BCA995BAA692AE9780A2876DA1866AA1866B
              A1866BA1866BA1866BA1866BA1866BA1866BA0866AA48B70AA9178AD957CB39A
              81BDA48BC8B097CFB59BB49A7E6C665E00000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              00000000000000000000000000000000000000000000000000000000000000C2
              AE9CDAC6B1D4C1ADCAB7A3C4B09CBEAB97BCA995B7A38EAA917AA1866BA1866B
              A1866BA1866BA1866BA1866BA1866BA1866BA1866AA1866BA68C73AB9279AF96
              7DB69D84BFA78ECBB29ACEB3989D836E6F6C6B00000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000CEB8A1D8C5B1D1BEAAC9B5A1C1AE9ABDAA96BAA793B49F89A68C73A1866A
              A1866BA1866BA1866BA1866BA1866BA1866BA1866BA0856AA1876DA78F75AB93
              7AB0977EB9A087C4AB92CDB59CC7AB8F83726300000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000C0B3A8D9C3ACD6C3B0CFBBA7C6B29EC0AC98BCA995BAA692B09A83A3896E
              A1866AA1866BA1866BA1866BA1866BA1866BA1866BA1866BA0856AA38A6FA991
              77AD957BB29A80BCA38AC7AF96CFB69CB99D8271685E00000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000BEAE9EDBC6B0D5C2AECCB8A4C4B09CBFAB97BCA995B8A490AB947C
              A2876CA1866BA1866BA1866BA1866BA1866BA1866BA1866BA1866BA1866AA58C
              72AA9178AE957CB59D84BFA68CC9B198CFB499A58C736F6B6600000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000CAB4A0D9C5B1D3BFABC9B6A2C3AF9BBDAA96BBA894B5A18C
              A78F76A1866BA1866BA1866BA1866BA1866BA1866BA1866BA1866BA1866AA187
              6CA78E74AB937AAF977EB79F86C2AA91CCB49BCAAE928C786679797700000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000C6BCB2D5BFA8D8C5B1CFBCA8C7B39FC1AD99BDA995BAA793
              B19C86A48A71A1866AA1866BA1866BA1866BA1866BA1866BA1866BA1866BA085
              6AA3896FA99077AC947BB29980BAA188C5AD94CFB69CBEA285756B5D00000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000BFB0A2DAC5AED6C3AFCDB9A5C5B19DBFAC98BCA995
              B9A591AD967FA2886DA1866AA1866BA1866BA1866BA1866BA1866BA1866BA186
              6BA0856BA58B71A99178AE957CB49C83BDA58CC8B198CFB59AAB91786F686300
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000C7B3A0DAC6B0D3C0ACCBB7A3C3AF9BBEAB97
              BCA895B7A28DA99178A1876BA1866BA1866BA1866BA1866BA1866BA1866BA186
              6BA1866BA1876BA68D73AB9279AF967DB69E84C1A88FCBB39ACDB295937E6975
              7370000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000CFBAA3D8C5B1D1BDA9C8B4A0C1AE9A
              BDAA96BBA793B39D88A58C72A1866BA1866BA1866BA1866BA1866BA1866BA186
              6BA1866BA0856AA2886DA89076AB937AB19980BAA188C4AC92CEB69CC3A78A7C
              6E5F000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000C3B5A8D8C2ACD6C3AFCEBAA6C6B29E
              C0AC98BDA995B9A692AF9881A3896EA1856AA1866BA1866BA1866BA1866BA186
              6BA1866BA1866BA0856AA48B70A99077AD957BB39A81BCA48BC8B097CFB69BB1
              987D716961000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000C5B3A0DAC6B0D4C1ADCBB7A3
              C4B09CBFAB97BCA995B7A38EAA927AA2876CA1866BA1866BA1866BA1866BA186
              6BA1866BA1866BA1866BA1866BA58C72AA9278AF967DB59D84C0A78ECBB39ACF
              B4979C856D736F6C000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000CDB7A4D9C5B1D2BEAA
              C9B5A1C2AE9ABDAA96BBA894B49F8AA78E74A1866BA1866BA1866BA1866BA186
              6BA1866BA1866BA1866BA1856AA2886DA88F76AC937AB0987FB9A087C3AB92CD
              B59BC9AC8F84726381807F000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000C6B9ADD5BFA9D7C4B0
              CFBBA7C6B29EC0AD99BCA995BAA692B09A84A38A6FA1866BA1866BA1866BA186
              6BA1866BA1866BA1866BA1866BA0856AA38970A99177AD947BB29A81BBA389C7
              AE95CFB69CB99E8372685E000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000C4B1A2D9C5AF
              D5C2AECCB8A4C4B19DBEAB97BCA894B8A490AC957CA2876CA1866BA1866BA186
              6BA1866BA1866BA1866BA1866BA0856AA1866BA58C72AA9278AE967DB59C83BE
              A58CC9B198D0B59AA28A73706C67000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000CAB5A1
              DAC5B1D3BFABCAB6A2C2AF9BBEAA96BBA894B6A18CA88F76A1866BA1866BA186
              6BA1866BA1866BA1866BA1866BA1866BA0856AA1876CA78E74AB9379B0977EB8
              9F86C2AA91CCB49BCCB0938978637D7B78000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000C8BDB4
              D1BDA6D8C4B0D0BCA8C7B4A0C1AD99BDA995BBA793B29C87A48B71A1866BA186
              6BA1866BA1866BA1866BA1866BA1866BA1866BA08569A3896EA89076AD957CB2
              9A81BAA289C5AD94CFB69CBFA385786C5F000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              C4B5A5D8C3ADD6C3AFCDBAA6C5B19DBFAC98BCA894B9A692AE9780A3886DA186
              6BA1866BA1866BA1866BA1866BA1866BA1866BA0856AA0866AA58C72AA9279AD
              957CB49B82BDA48BC9B097D0B69BAB9378706963000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              000000C8B4A2DAC5B0D3C0ADCAB7A3C3B09CBEAA96BBA894B7A38EA99178A186
              6BA1866BA1866BA1866BA1866BA1866BA1866BA1866BA0856AA1876CA68E74AA
              9279AF977EB69E85C1A88FCBB39ACFB396927C68787572000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              000000000000CFBAA5D8C5B1D0BDA9C8B4A0C1AD99BDAA96BBA794B39E88A58C
              72A1866BA1866BA1866BA1866BA1866BA1866BA1866BA1866BA0856AA2886DA8
              8F76AC937AB19980B9A188C4AC93CEB59CC6A98D7A6D5E000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              000000000000C3B5A8D6C0AAD6C3AFCEBBA7C6B29EBFAC98BDA995BAA792AF99
              82A3896EA1866BA1866BA1866BA1866BA1866BA1866BA1866BA1866BA0856AA4
              8A70A99177AD957CB39A81BCA48BC7AF96D0B69CB3997C6E6660000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              000000000000000000C6B5A1D9C5B0D5C2AECBB8A4C4B19DBFAB97BCA894B8A4
              8FAB937BA1876CA1866BA1866BA1866BA1866BA1866BA1866BA1866BA0856AA1
              866AA58D73AA9278AE967DB59D84C0A78ECBB39AD0B5999B846E726F6B000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              000000000000000000000000CFB9A5D9C5B1D2BFABC9B6A2C2AE9ABEAA96BBA8
              94B5A08BA78E74A1866BA1866BA1866BA1866BA1866BA1866BA1866BA1866BA0
              856AA1876DA78F75AB9379B0987EB89F86C2AA91CDB59BCBAF9180726082807F
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              000000000000000000000000C0B6ABD6BFAAD7C5B0CFBCA8C6B39FC0AD99BDAA
              96BBA794B19B84A48A70A1866BA1866BA1866BA1866BA1866BA1866BA1866BA1
              866BA08569A3896FA99077AC947BB29A80BAA289C6AE95D0B69CBB9F836F655D
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              000000000000000000000000000000C4B3A2D9C4AED5C2AECCB9A5C4B19DBFAC
              98BCA995B9A591AC957EA2886DA1866BA1866BA1866BA1866BA1866BA1866BA1
              866BA1866AA0856AA58C72AA9178AD957CB59C83BEA68DCAB299D0B69AA68D73
              6C68640000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              000000000000000000000000000000000000CDB8A3D9C5B1D3BFACCAB6A2C2AF
              9BBEAB97BBA894B6A28DA88F76A1876BA1866BA1866BA1866BA1866BA1866BA1
              866BA1866BA0856AA1876BA78E75AB9379AF977EB79E85C1A990CCB49BCFB295
              8976637A79770000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              000000000000000000000000000000000000C0B7AED3BDA9D8C4B1D0BDA9C7B4
              A0C1AE9ABDA995BBA793B39D87A58C71A1866BA1866BA1866BA1866BA1866BA1
              866BA1866BA1866BA08569A2896FA89076AC947AB19980BAA188C5AC93CEB69C
              C5A88A73665C0000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              000000000000000000000000000000000000000000BEAEA0D8C2ADD6C4B0CDBA
              A6C5B29EC0AC98BCA894B9A692AE9880A2886DA1866BA1866BA1866BA1866BA1
              866BA1866BA1866BA1866BA08569A48B71A99178AD947BB39A81BDA58CC8B097
              D0B69BAF947869645F0000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              000000000000000000000000000000000000000000000000C9B39FD9C5B1D4C1
              ADCAB7A3C3B09CBFAB97BBA894B8A48FAA9279A2866BA1866BA1866BA1866BA1
              866BA1866BA1866BA1866BA0856AA1866BA68D74AA9279AF967DB69D84C0A88E
              CCB39AD0B598917D6872706E0000000000000000000000000000000000000000
              0000000000000000000089B1B770ABB46BA6B06CA6AE6CA6AE6CA6AE6CA6AE6C
              A6AE6CA6AE6CA6AE6CA6AE6CA6AE6CA6AE6CA6AE6CA6AE6CA6AE6CA6AE6BA6AE
              72A7AE7EACAE7FACAE7FACAE7FACAE7FACAE7EACAE7DACAE74AAB10000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              000000000000000000000000000000000000000000000000000000D3BEA7D9C5
              B1D1BEAAC8B5A1C2AE9ABDA995BBA894B49F8AA68D73A1866BA1866BA1866BA1
              866BA1866BA1866BA1866BA1866BA08569A2886DA78F76AB937AB0987FB9A187
              C4AB92CDB59CCBAE90776B5B0000000000000000000000000000000000000000
              0000000000000097B3B98EF8FF8EF7FF8EF6FF8EF5FF8DF5FF8DF5FF8DF5FF8D
              F5FF8DF5FF8DF5FF8DF5FF8DF5FF8DF5FF8DF5FF8DF5FF8DF5FF8DF5FF8EF6FF
              A2FBFFAEFDFFADFDFFADFDFFACFDFFAAFDFFA3FDFF9DFCFD8FD4D90000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              000000000000000000000000000000000000000000000000000000BCAEA3D8C3
              AED7C4B0CFBBA7C6B39FC0AD99BCA995BAA793B09A83A3886EA1866BA1866BA1
              866BA1866BA1866BA1866BA1866BA1866B9F8569A48A70AA9177AD957CB39A81
              BBA38AC8B097D0B79DB99C806862590000000000000000000000000000000000
              0000000000000086E1EF8AEEFF86E9FF85E8FF84E6FF82E5FF82E5FF82E5FF82
              E5FF82E5FF82E5FF82E5FF82E5FF82E5FF82E5FF82E5FF82E5FF81E4FF90EAFF
              A2F0FFA2F1FFA3F2FFA2F3FF99F3FF8FF1FF89F5FF84E5ED0000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              000000000000000000000000000000000000000000000000000000000000C3B0
              9ED9C5B0D5C2AECCB8A4C4B19DBEAB97BCA894B9A590AB947CA2876CA1866BA1
              866BA1866BA1866BA1866BA1866BA1866BA1866AA0866AA58C72AA9278AF967D
              B59D83BEA68DCBB39ACFB3979C846A6A67650000000000000000000000000000
              0000000085C6CF8DF5FF86E9FF82E5FF7DE0FF7ADDFF78DBFF78DAFF78DAFF78
              DAFF78DAFF78DAFF78DAFF78DAFF78DAFF78DAFF78DAFF77DAFF7FDDFF96E5FF
              98E6FF98E8FF94EBFF8EF0FF86F0FF82F1FF87F6F896B0B40000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              00D1BAA2D8C6B2D2BFABC9B6A2C2AE9ABDAA96BBA894B5A28DA78D74A1866BA1
              866BA1866BA1866BA1866BA1866BA1866BA1866BA0856AA1876CA88E75AB937A
              B0977EB8A087C2AA91BDA082C2A1807F705E7D7C7B0000000000000000000000
              008EB2B88DF7FF86E9FF81E4FF79DCFF74D7FF71D4FF71D4FF70D3FF70D3FF70
              D3FF70D3FF70D3FF70D3FF70D3FF70D3FF70D3FF70D3FF72D4FF8ADCFF90DFFF
              89DEFF80DFFF7BE3FF7FEDFF82F0FF88FAFC85BBC10000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              00BAB1A7D8C3ACD7C5B1CEBBA7C6B29EBFAC98BCA995BAA793B19B85A2886DA1
              866BA1866BA1866BA1866BA1866BA1866BA1866BA1866BA0856AA3896FA99177
              AC947BB29A82B1957AB09172BA9A7BBD9D7D6B61590000000000000000000000
              0088EAF988EDFF83E5FF7ADDFF73D6FF6FD2FF6CCFFF6CCFFF77D2FF78D2FF78
              D2FF78D2FF78D2FF78D2FF78D2FF78D2FF78D2FF78D2FF73D1FF73D2FF66CEFF
              5CCDFF5AD3FF63DDFF6DE8FF73F1FF75D5E10000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              00000000BDAB9ADAC5B0D5C1AECAB7A3C2AF9BBDAA96BBA894B7A38EA58C73A0
              856AA1866BA1866BA1866BA1866BA1866BA1866BA1866BA1866BA0856AA58C72
              AB927AA99075A18263A98A6AB49576BE9E7EAA8C7365625E00000000000085CF
              DC8CF3FF84E7FF7CDFFF74D7FF6ED1FF6BCEFF67CBFF70CFFF84D5FF83D5FF83
              D5FF83D5FF83D5FF83D5FF83D5FF82D5FF84D5FF74CFFF4BC2FF3BBDFF34BDFF
              37C3FF42CDFF4FDAFF56E4FF59E4FB0000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              00000000000000CBB29CD8C4B0CEBBA7C5B19DBEAB97BBA894B9A591AA9279A0
              856AA1866BA1866BA1866BA1866BA1866BA1866BA1866BA1866BA0856AA1866B
              A78E739A7D5F997A5AA48465B09273B79879C2A1808C7764747474729BA48DF5
              FF86E9FF7EE1FF76D8FF70D3FF6CCFFF69CCFF5FC8FF64CAFF64CAFF64CAFF64
              CAFF64CAFF64CAFF64CAFF64CAFF65CBFF62CAFF3FBDFF2EB8FF31BBFF38C1FF
              41CBFF4DD7FF57E0FF5EEEFD79A9B40000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              00000000000000AAA39CD7C0A8D1BEAAC6B39FBFAC98BBA894BAA793AE977FA1
              866BA1866BA1866BA1866BA1866BA1866BA1866BA1866BA1866BA1866BA2876C
              977A5C8F6F4E9676569F7F5FAA8A6AB49474B69677BD987572766A6BC3D887EA
              FF81E4FF78DBFF71D4FF6DCFFF6BCDFF61C9FF5FC8FF5CC7FF5BC7FF5BC7FF5B
              C7FF5BC7FF5BC7FF5BC7FF5BC7FF5EC8FF44BFFF2FB9FF30BBFF35BFFF3EC7FF
              4AD3FF56DFFF5DEDFF64BFCF0000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              00000000000000A3958ACEB49ACAB6A0C7B4A0BFAB97BBA894BAA792AD967EA1
              866BA1866BA1866BA1866BA1866BA1866BA1866BA1866BA1866BA2886D9D8165
              8B69488A6846906E4C987654A68462B18F6DB28F6CB08C697EACB07DDFF584E7
              FF7BDDFF73D5FF6ED1FF6BCEFF65CAFF5DC8FF5EC8FF5CC7FF5CC7FF5CC7FF5C
              C7FF5CC7FF5CC7FF5CC7FF5FC8FF4FC3FF31B9FF30BAFF35BEFF3CC5FF45D0FF
              52DCFF5AE7FF59D9F10000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              00000000A49F9AD1B79DC5AB93BEA68EC2AF9ABFAC98BBA894B9A590A99177A0
              856AA1866BA1866BA1866BA1866BA1866BA1866BA1866BA2876CA1876B907050
              8765428B6846926F4D9C7957A98664B18E6CB48B6587988E74D2E886E9FF7DE0
              FF74D7FF6FD1FF6CCEFF68CBFF5DC8FF5FC8FF5CC7FF5CC7FF5CC7FF5CC7FF5C
              C7FF5CC7FF5CC7FF5EC8FF58C6FF38BBFF2EB9FF32BCFF39C3FF43CCFF50D9FF
              58E2FF5CEDFF8AAAB10000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              00000000C1AC94CBB198C1A990B79E86B69F88BDAA96BBA894B6A28DA58C72A1
              856AA1866BA1866BA1866BA1866BA1866BA1866BA1866BA3886E957758886744
              8A67458F6D4A977552A3815FAF8D6BB48C679A8F7870C0D283E7FE80E4FF77DA
              FF70D3FF6CCFFF6ACCFF61C8FF5EC8FF5CC7FF5CC7FF5CC7FF5CC7FF5CC7FF5C
              C7FF5CC7FF5DC7FF5DC8FF41BEFF30B9FF32BCFF37C1FF3FC9FF4BD4FF57E0FF
              5EEFFF6EB2C00000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              00B2A091CFB49CC4AB93BBA38AB39A82AD947CB59F89BBA894AF9881A2876CA1
              866BA1866BA1866BA1866BA1866BA1866BA1866BA3886E9B7F628A6847896644
              8D6B489472509E7C5AAA8866B38E6AAA8B6B74AEB77EE1F883E6FF7ADDFF72D5
              FF6DD0FF6BCDFF64C9FF5DC8FF5DC7FF5CC7FF5CC7FF5CC7FF5CC7FF5CC7FF5C
              C7FF5CC7FF5FC8FF4BC2FF31B9FF31BAFF36BFFF3DC7FF47D1FF53DDFF5BEAFF
              5FCDDE0000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              000000000000000000000000000000000000000000000000000000000000A89E
              94D0B69EC6AD95C0A78EB79E85AF977EAB9279AB927AAF9982A58C72A1866AA1
              866BA1866BA1866BA1866BA1866BA1866BA2876D9F84698D6D4D8865438C6947
              916F4D9A7856A78562B08E6BB28B66819E9977D6ED84E8FF7DE0FF75D8FF6ED1
              FF6BCEFF67CBFF5FC9FF5FC8FF5CC7FF5CC7FF5CC7FF5CC7FF5CC7FF5CC7FF5C
              C7FF5FC8FF53C4FF34BAFF30BAFF35BEFF3AC4FF43CDFF52DAFF59E4FF58E2F9
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              000000000000000000000000000000000000000000000000000000000000C7AF
              98C9B097C2A991B9A087B29980AC947BAA9279A58B71A3896FA1876CA1866BA1
              866BA1866BA1866BA1866BA1866BA1866BA2886D9374568966448A6846906D4B
              977552A4825FAE8C69B58C6793938072C7DA84E7FD80E3FF77DAFF71D4FF6CCF
              FF69CCFF60C8FF5FC8FF5CC7FF5CC7FF5CC7FF5CC7FF5CC7FF5CC7FF5CC7FF5D
              C7FF5CC7FF3DBDFF2FB9FF31BCFF39C2FF41CAFF4ED7FF57E0FF5DEEFF7BAEB9
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              000000000000000000000000000000000000000000000000000000B9A594CCB3
              9AC4AB93BBA38AB49B82AE957CAB9279A78E74A2876DA2886DA1866BA1866BA1
              866BA1866BA1866BA1866BA1866BA3896E997C5E8968468967448D6B49957350
              A07E5BAC8A67B38E69A48D6F73B5C080E3F983E6FF79DCFF72D5FF6DD0FF6BCD
              FF62C9FF5FC8FF5DC7FF5CC7FF5CC7FF5CC7FF5CC7FF5CC7FF5CC7FF5CC7FF5E
              C8FF46C0FF31B9FF31BBFF35BFFF3DC7FF49D3FF55DEFF5DEDFF64BECD000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              000000000000000000000000000000000000000000000000ACA195CFB49BC6AD
              94BEA58CB59D84B0977EAB927AA88F76A3896EA2886EA1866BA1866BA1866BA1
              866BA1866BA1866BA1866BA2886D9E82668C6C4B8866438C6A4792704E9C7A57
              A98764B18E6BAF8B677CA4A47ADAF085E8FF7CDEFF74D7FF6ED1FF6BCEFF66CA
              FF5EC8FF5EC8FF5CC7FF5CC7FF5CC7FF5CC7FF5CC7FF5CC7FF5CC7FF5FC8FF50
              C3FF34BAFF30BAFF35BEFF3CC5FF46D0FF52DCFF5AE7FF5BD8EB000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              000000000000000000000000000000000000000000000000CAB19AC8AF97C1A8
              8FB89F86B19880AD947BAA9178A58A70A2886EA1866CA1866BA1866BA1866BA1
              866BA1866BA1866BA2876CA1866B9172528866438A68458F6D4B997755A58260
              AF8D6AB48C668C978974CCE084E7FE7FE2FF76D9FF70D3FF6CCFFF69CCFF5FC8
              FF5FC8FF5CC7FF5CC7FF5CC7FF5CC7FF5CC7FF5CC7FF5CC7FF5EC8FF58C6FF3A
              BCFF30B9FF33BCFF39C2FF42CCFF4FD8FF58E2FF5BEAFF8AB2B9000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              000000000000000000000000000000000000000000C0AA95CCB299C3AA92BAA1
              89B29A81AD957CAA9279A68C73A2886DA2876CA1866BA1866BA1866BA1866BA1
              866BA1866BA1866BA3896E97795B8867458A67448E6C49967452A07E5CAD8A68
              B48D689D8E7573BBC981E4FB81E5FF78DBFF71D4FF6DD0FF6ACCFF62C9FF5FC8
              FF5DC7FF5CC7FF5CC7FF5CC7FF5CC7FF5CC7FF5CC7FF5DC7FF5DC7FF42BFFF2F
              B9FF31BBFF37C1FF40C9FF4BD5FF55DFFF5DEDFF70B7C5000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              000000000000000000000000000000000000B1A494CDB39AC5AC94BDA48CB59C
              83AF967DAB9279A88F76A3896EA2886DA1866BA1866BA1866BA1866BA1866BA1
              866BA1866BA3886D9C80648B6A498966448C6A4893714E9D7B58AA8865B28E6A
              AB8B6A7AAAAE7CDDF383E6FF7BDEFF73D6FF6ED1FF6BCDFF65CAFF5EC8FF5DC8
              FF5CC7FF5CC7FF5CC7FF5CC7FF5CC7FF5CC7FF5CC7FF5FC8FF4BC2FF33BAFF30
              BAFF35BEFF3CC6FF47D0FF54DCFF5BEAFF60CCDC000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              000000000000000000000000000000AEA69FCBB29AC8AF96C0A78FB79F86B097
              7FAC947BAA9178A38A6FA2886EA1876CA1866BA1866BA1866BA1866BA1866BA1
              866BA2886DA0856A9070518866448B6946916F4D9A7755A68462B08D6AB28C66
              869C9376D1E585E8FE7EE1FF75D8FF6FD2FF6CCFFF67CCFF5FC8FF5EC8FF5CC7
              FF5CC7FF5CC7FF5CC7FF5CC7FF5CC7FF5CC7FF5EC8FF54C4FF37BBFF30BAFF34
              BDFF3BC4FF44CDFF50DAFF59E4FF5AE1F5000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              000000000000000000000000000000C2AC97CBB198C2A991BAA188B29980AD94
              7CAA9279A58C72A2886DA2876DA1866BA1866BA1866BA1866BA1866BA1866BA1
              876CA2886D9577588867448967458F6D4A977452A3805EAD8B68B48D6797927C
              74C1D182E6FB81E4FF78DBFF71D4FF6DD0FF6ACDFF61C9FF5EC8FF5DC7FF5CC7
              FF5CC7FF5CC7FF5CC7FF5CC7FF5CC7FF5DC7FF5DC8FF3FBEFF2FB9FF32BCFF38
              C2FF40CAFF4DD6FF56E0FF5BECFF7CB7C0000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              000000000000000000000000B8A795CDB39AC4AB93BCA38BB49B82AE957DAB92
              7AA78D75A3886DA2886DA1866BA1866BA1866BA1866BA1866BA1866BA1866BA2
              886D9A7D608B69488866448D6B4994724F9F7C5AAB8866B38E69A68D6F77B0B7
              7EDFF683E6FF7ADDFF72D5FF6ED1FF6BCEFF63CAFF5EC8FF5DC7FF5CC7FF5CC7
              FF5CC7FF5CC7FF5CC7FF5CC7FF5CC7FF5EC8FF61C9FF42BFFF2EBAFF36BFFF3E
              C7FF49D2FF54DDFF5CECFF66C3D1000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              000000000000000000B0A69CCBB19AC7AE95BFA68DB69E85B0977EAC937BA990
              77A3896FA2886DA1876CA1866BA1866BA1866BA1866BA1866BA1866BA2876C9F
              84678E6E4D8866438C6947926F4D9B7957A78562B08D69B08B6882A19D78D5EA
              84E8FF7DE0FF75D8FF6FD2FF6CCFFF67CBFF60C8FF5EC8FF5CC7FF5CC7FF5CC7
              FF5CC7FF5CC7FF5CC7FF5CC7FF5CC7FF61C9FF61C9FF55C6FF3AC0FF38C3FF45
              CEFF51DBFF5AE7FF5ED6E9000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              000000000000000000C5AF98CAB098C1A990B99F87B19980AC947BAA9179A58B
              71A2886DA1876CA1866BA1866BA1866BA1866BA1866BA1866BA2876CA2876C93
              74558966448A6845906D4B987654A4815FAE8C69B38C6791958474C7D883E7FD
              81E4FF78DBFF70D3FF6DCFFF69CDFF60C9FF5FC8FF5DC7FF5CC7FF5CC7FF5CC7
              FF5CC7FF5CC7FF5CC7FF5CC7FF5DC8FF66CBFF64CAFF62CBFF57CBFF41C9FF4A
              D5FF57E2FF5BE7FE89B6C0000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              000000000000B9A794CDB39AC3AA92BBA289B39A82AD957CAA9279A78D73A288
              6DA2876CA1866BA1866BA1866BA1866BA1866BA1866BA1866BA3886D997B5D8A
              68478966448E6C49957351A07E5BAC8967B48E69A18E7375B6C07FE2F885E8FF
              7CDFFF73D6FF6ED1FF6BCDFF62C9FF5FC8FF5DC7FF5CC7FF5CC7FF5CC7FF5CC7
              FF5CC7FF5CC7FF5CC7FF5CC7FF5FC8FF69CCFF67CBFF69CEFF6CD4FF5ED6FF53
              DBFF5BE9FF68B7C6000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              000000B2A69ACBB199C6AD94BEA58DB59D84AF977EAB937AA89076A3896FA288
              6DA1866BA1866BA1866BA1866BA1866BA1866BA1866BA2876D9D81658D6C4B89
              66448C6A4893704E9C7A58A98664B28F6BAD906C81A9A879D8EE86EAFF83E6FF
              79DCFF71D4FF6CCFFF68CCFF60C9FF5EC7FF5CC7FF5CC7FF5CC7FF5CC7FF5CC7
              FF5CC7FF5CC7FF5CC7FF5CC7FF60C9FF66CBFF64CAFF67CEFF6FD5FF75DFFF67
              E8FF54CBE17A8C90000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              B4ADA7C7AF99C9AF97C0A78EB79F86B19880AC947BAA9178A48A70A2886DA187
              6CA1866BA1866BA1866BA1866BA1866BA1866BA2876CA1856A9172538866448B
              6846906E4C997754A48260AF8D6AB6926DA3978683BCC688EFFD86E9FF83E6FF
              79DCFF71D4FF6BCEFF6FCFFF6ECEFF5EC8FF5CC7FF5CC7FF5CC7FF5CC7FF5CC7
              FF5CC7FF5CC7FF5CC7FF5CC7FF5FC8FF5EC8FF5AC7FF5ECBFF65D3FF73DFFF7A
              EFFF60CEE6657276000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              BEA997CCB29AC3AA91BAA188B39A81AD947CAA9279A68C73A2886EA2876CA186
              6BA1866BA1866BA1866BA1866BA1866BA1876CA1876C97785B8967468A67458E
              6C4A967452A17F5CAC8A68B79470A48D750000000000008DEAF688EDFF84E7FF
              7BDEFF72D5FF6FD1FF81D5FF80D4FF67CBFF5CC7FF5CC7FF5CC7FF5CC7FF5CC7
              FF5CC7FF5CC7FF5CC7FF5CC7FF5DC8FF5BC7FF54C4FF58C8FF62D0FF72DDFF86
              EDFF7DECFA5A9FAC7C7F80000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000B4A495
              CDB49BC5AC93BDA48BB49C83AF967DAB9279A88E76A3896EA2876DA1866BA186
              6BA1866BA1866BA1866BA1866BA1866BA2886D9B7F628B6A498866448D6A4893
              714F9E7B59AA8765B4926DAD8E6E000000000000000000B1DAE287EFFE86EAFF
              80E3FF76D9FF7FD9FF8BD9FF88D7FF79D1FF62C9FF5BC7FF5CC7FF5CC7FF5CC7
              FF5CC7FF5CC7FF5CC7FF5CC7FF5DC7FF5AC6FF56C5FF5ECAFF6AD1FF76DBFF84
              E7FF8DF3FF73E1EC59848D000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000B3ABA1C9B097
              C7AF96BFA78EB79E85B0987FAC937AA99077A48970A2886EA1866BA1866BA186
              6BA1866BA1866BA1866BA1866BA2876C9F84698F6F508866438B6846916F4D9A
              7855A68462B08E6BB5926EA89B8D00000000000000000000000096D9E38BF2FF
              83E7FF85E3FF90E1FF8EDCFF8AD8FF86D6FF71CFFF5EC8FF5BC7FF5CC7FF5CC7
              FF5CC7FF5CC7FF5CC7FF5CC7FF5CC7FF59C6FF5CC7FF67CCFF6DD0FF73D7FF7D
              E0FF8AECFF8AF6FF65CAD664787D000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000C0AC96CBB199
              C1A990B9A188B29980AC947BAA9179A58B72A2886DA1876CA1866BA1866BA186
              6BA1866BA1866BA1866BA2876CA1876B9577588966458A68458F6C4A977452A3
              805EAE8B69B79470A48F7A0000000000000000000000000000000000008CE1ED
              8CEFFF9AEDFF99E7FF90DFFF8CDBFF89D8FF81D4FF6BCCFF5CC8FF5CC7FF5CC7
              FF5CC7FF5CC7FF5CC7FF5CC7FF5CC7FF5BC7FF5CC7FF66CBFF6BCEFF6FD2FF77
              DAFF82E5FF8CEFFF83F4FF5CA8B7747C7D000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000B6A493CEB49BC4AB93
              BCA38BB49B83AE967DAB937AA78E74A3886EA2886DA1866BA1866BA1866BA186
              6BA1866BA1866BA1866BA2886D9A7D608B6A488967448D6B499572509F7C5AAB
              8866B5926EAA8F71000000000000000000000000000000000000000000000000
              8EEEF9A5F5FF9FEDFF95E4FF8FDEFF8AD9FF88D7FF7DD2FF64CBFF5CC7FF5CC7
              FF5CC7FF5CC7FF5CC7FF5CC7FF5CC7FF5CC7FF5BC7FF5FC8FF68CCFF6DD0FF72
              D5FF7ADEFF86E9FF8EF3FF78E7F3598C94000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000B1A69BCCB299C7AD95BFA68D
              B69D85B0977EAC937AA99077A3896EA2886DA2876CA1866BA1866BA1866BA186
              6BA1866BA1866BA2876C9E83668E6E4E8865438C694792704D9B7956A78563B2
              8F6CB08F6DABA196000000000000000000000000000000000000000000000000
              A0DAE39EF7FFA4F2FF9BEAFF93E2FF8DDCFF89D8FF87D6FF75D0FF5FC8FF5CC7
              FF5CC7FF5CC7FF5CC7FF5CC7FF5CC7FF5CC7FF5BC7FF5BC7FF62CAFF6ACDFF6E
              D1FF74D7FF7DE0FF89ECFF8CF6FF6AD3DD5F7A7F000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000C3AC97CAB098C1A88FB89F86
              B19880AD947BAA9178A58A71A2876CA2876CA1866BA1866BA1866BA1866BA186
              6BA1866BA1876CA1866B9375558967448A6845906D4B987654A4825FAF8C6AB6
              936FA5927F000000000000000000000000000000000000000000000000000000
              00000094E0E8A3F8FFA2F0FF99E8FF91E0FF8BDAFF89D8FF84D5FF6DCDFF5DC7
              FF5CC7FF5CC7FF5CC7FF5CC7FF5CC7FF5CC7FF5CC7FF5BC7FF5CC7FF65CBFF6B
              CEFF6FD2FF77D9FF80E4FF8CEEFF86F6FF5EB4C26F797C000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000B7A593CEB49BC3AA92BBA289B39A81
              AE957CAB9279A68D74A2876DA2886DA1866BA1866BA1866BA1866BA1866BA186
              6BA1866BA2886D987B5D8A68468967448E6C49957351A07E5BAC8A67B69370A8
              8E73000000000000000000000000000000000000000000000000000000000000
              00000000000096ECF4A5F6FFA0EEFF96E6FF8FDEFF8BDAFF89D7FF7ED3FF66CB
              FF5BC7FF5CC7FF5CC7FF5CC7FF5CC7FF5CC7FF5CC7FF5CC7FF5AC6FF5EC8FF67
              CCFF6CCFFF71D4FF78DCFF85E8FF8DF1FF7CEFFD59939E000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000B0A495CEB49CC5AC94BDA48CB59C83AF967E
              AB937AA88F76A3896EA2886DA1876CA1866BA1866BA1866BA1866BA1866BA186
              6BA2886D9D81648D6C4B8866438C6A4893714E9C7A58A88664B3906DB1917000
              0000000000000000000000000000000000000000000000000000000000000000
              000000000000A7D8E09AF3FDA5F4FF9CECFF94E3FF8EDDFF8AD9FF87D6FF78D1
              FF61C9FF5CC7FF5CC7FF5CC7FF5CC7FF5CC7FF5CC7FF5CC7FF5BC7FF5AC7FF61
              C9FF69CDFF6DD0FF73D6FF7CDFFF88EBFF8DF5FF6FDBE65A7D82000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000B4ADA4C7B096C8AF97C0A88FB89F86B0977FAC937B
              A99177A48A71A2886DA2876CA1866BA1866BA1866BA1866BA1866BA1866BA287
              6CA0856A9172528866438B6946906E4C997755A58360AF8D6BB5936EA6968600
              0000000000000000000000000000000000000000000000000000000000000000
              00000000000000000098DEEAA2F8FFA3F1FF9AE8FF92E1FF8CDBFF89D8FF85D5
              FF70CEFF5EC8FF5CC7FF5CC7FF5CC7FF5CC7FF5CC7FF5CC7FF5CC7FF5BC7FF5B
              C7FF64CAFF6BCEFF6ED2FF75D8FF80E3FF8BEDFF89F7FF61BDCA68767B000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000BCA994CCB39AC2AA91BAA189B39A81AD947CAA9179
              A68D72A2886DA2876DA1866BA1866BA1866BA1866BA1866BA1866BA1866BA287
              6D96785B8967468A67458F6D4A967452A17F5DAD8B69B6936FA7907700000000
              0000000000000000000000000000000000000000000000000000000000000000
              00000000000000000000000095E9EFA5F7FFA1EEFF97E6FF90DFFF8BDAFF89D7
              FF81D4FF69CCFF5CC7FF5CC7FF5CC7FF5CC7FF5CC7FF5CC7FF5CC7FF5CC7FF5B
              C6FF5DC7FF67CBFF6CCFFF71D4FF78DBFF82E6FF8EF0FF81F4FF599BA87D8283
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000B09F92CFB59CC4AB93BDA48BB49B83AF967DAB927AA88E76
              A3896EA2886DA1866BA1866BA1866BA1866BA1866BA1866BA1866BA2876C9B80
              638B6A498966448D6B4893714F9E7C5AA98765B4916EAF917100000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              000000000000000000000000ADD5DC99F2F9A5F4FF9DECFF95E4FF8EDDFF8AD9
              FF88D7FF7BD2FF63CAFF5CC7FF5CC7FF5CC7FF5CC7FF5CC7FF5CC7FF5CC7FF5C
              C7FF5AC6FF60C8FF69CCFF6CD0FF73D6FF7BDEFF86EAFF8DF4FF72E4F1598089
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000AFA69DCCB29AC6AE95BFA68EB69D85B0977EAC937AA99077A48A70
              A2886DA2876CA1866BA1866BA1866BA1866BA1866BA1866BA2876C9F84688F6F
              4F8865438B694692704D9A7856A68462B18E6CB5926FA7998C00000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000009ADBE59FF8FFA3F2FF9BE9FF93E2FF8CDB
              FF8AD9FF86D6FF73CFFF5FC8FF5CC7FF5CC7FF5CC7FF5CC7FF5CC7FF5CC7FF5C
              C7FF5BC7FF5BC7FF63CAFF6ACDFF6ED2FF74D7FF7EE2FF8BEDFF8AF7FF65C8D6
              63767A0000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000C2AC94CBB198C1A990B9A087B19980AC947BAA9178A68B72A2876D
              A2876CA1866BA1866BA1866BA1866BA1866BA1866BA1876CA1876C9576588866
              448A67458F6D4B977553A3815FAE8C6AB6936FA6907A00000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              00000000000000000000000000000000000095E7EEA4F8FFA2F0FF98E7FF91E0
              FF8CDBFF89D8FF83D5FF6BCDFF5DC7FF5CC7FF5CC7FF5CC7FF5CC7FF5CC7FF5C
              C7FF5CC7FF5BC6FF5DC7FF66CBFF6BCEFF70D3FF78DBFF82E5FF8DEFFF84F7FF
              5BA5B4757C7E0000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000B3A091CEB59BC4AB92BBA38AB49B82AD957CAB9279A78D75A3886EA2886D
              A1866BA1866BA1866BA1866BA1866BA1866BA1866BA2886D9A7D608A69478966
              448D6A489572509F7D5BAB8866B5916EAD907200000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              00000000000000000000000000000000000000000099F2F6A5F5FF9FEDFF96E5
              FF8FDDFF8BDAFF89D7FF7DD2FF65CAFF5CC7FF5CC7FF5CC7FF5CC7FF5CC7FF5C
              C7FF5CC7FF5CC7FF5AC6FF5FC8FF68CCFF6CCFFF71D5FF7ADDFF86E8FF8DF2FF
              78EDFD5787900000000000000000000000000000000000000000000000000000
              00000000000000000000000000000000000000000000000000000000000000AC
              A096D0B59CC5AD94BEA58CB69D84AF967EAB937AA98F76A3886EA2886DA1876B
              A1866BA1866BA1866BA1866BA1866BA1866BA2886D9E83678E6D4D8966448C69
              4793704E9B7957A78563B28F6DB49272A79D9200000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000009FD8E19EF6FDA4F2FF9CEB
              FF94E2FF8DDCFF8AD9FF88D7FF77D1FF60C8FF5CC7FF5CC7FF5CC7FF5CC7FF5C
              C7FF5CC7FF5CC7FF5BC7FF5AC6FF62C9FF69CDFF6ED1FF73D7FF7CE0FF8AECFF
              8DF6FF69D6E35D777C0000000000000000000000000000000000000000000000
              00000000000000000000000000000000000000000000000000000000000000C7
              AE98C9B097C1A88FB89F87B1987FAD947CAA9178A48A71A2876CA2876CA1866B
              A1866BA1866BA1866BA1866BA1866BA2876CA1876B9374558866448B6846906E
              4B997654A48260AF8D6AB59270A5927F00000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              00000000000000000000000000000000000000000000000098E4EEA3F8FFA2F1
              FF9AE8FF91E0FF8CDBFF89D8FF85D6FF6ECEFF5DC8FF5CC7FF5CC7FF5CC7FF5C
              C7FF5CC7FF5CC7FF5CC7FF5BC7FF5CC7FF65CBFF6BCEFF6FD2FF76DAFF81E4FF
              8CEEFF88F8FF5BB0BF6E777A0000000000000000000000000000000000000000
              00000000000000000000000000000000000000000000000000000000B9A492CD
              B39AC3AA92BBA289B39A81AE957CAB927AA78D73A2876CA2886DA1866BA1866B
              A1866BA1866BA1866BA1866BA1866BA2876D987C5E8967458967458E6B499673
              51A07E5BAC8967B5926FA9907400000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000009AF4F6A5F6
              FFA0EEFF96E5FF8FDEFF8BDAFF89D7FF80D4FF67CBFF5CC7FF5CC7FF5CC7FF5C
              C7FF5CC7FF5CC7FF5CC7FF5CC7FF5BC6FF5EC8FF68CCFF6CCFFF70D4FF79DCFF
              85E7FF8EF1FF7DF4FF558E990000000000000000000000000000000000000000
              00000000000000000000000000000000000000000000000000AB9D90D0B79DC4
              AC93BDA48BB59C83AF967DAB9279A68C73A1876CA3886DA1876CA1876CA1876C
              A1876CA1876CA1876CA1876CA1876C9D81658C6C4A8866438D6A4893704E9D7A
              58A98764B3906CB3917000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              000000000000000000000000000000000000000000000000000000AAD5DC9FF8
              FCA5F4FF9DEBFF94E3FF8EDDFF8BD9FF89D7FF78D1FF5FC8FF5DC8FF5DC8FF5D
              C8FF5DC8FF5DC8FF5DC8FF5DC8FF5DC8FF5CC7FF63CAFF6ACDFF6ED0FF74D6FF
              7CDFFF88EBFF8EF5FF6EE0F059767D0000000000000000000000000000000000
              00000000000000000000000000000000000000000000ACA59ECEB49CC7AF96C0
              A88FB89F86B19880AB9179A3886D997B5E9D81659F84689E84679E84679E8467
              9E84679E84679E84679F84679C81648E6E4D8967448B6946916E4C9A7755A683
              61B08D6AB79571A2908300000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000009CE2
              EDA2F8FFA3F1FF9AE9FF92E1FF8CDBFF8AD9FF7BD2FF5DC8FF59C6FF59C6FF59
              C6FF59C6FF59C6FF59C6FF59C6FF59C6FF5AC6FF5CC7FF64CAFF68CDFF6DD2FF
              75D9FF7FE3FF8BEDFF89F8FF60BFCF6672740000000000000000000000000000
              00000000000000000000000000000000000000000000C5B29ED2BBA5CBB59EC3
              AC95BBA48DB29981A68B7097795B8F6E4D957657957656957656957656957656
              9576569576569576569677578E6E4D8764418E6C4A916F4C987653A2805EAE8C
              69B6936FA48D7300000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              009FF2F79FF4FF94EBFF8DE3FF86DDFF80D7FF60CBFF46C2FF45C1FF45C1FF45
              C1FF45C1FF45C1FF45C1FF45C1FF45C1FF46C1FF47C2FF4AC4FF52C6FF5BCBFF
              63D1FF6BD9FF77E4FF80ECFF76F3FF559AA57C81820000000000000000000000
              00000000000000000000000000000000000000BBAEA1E2CEBAD8C5B2D4C1ACC9
              B5A0BDA68EB0967BA98D719C7F608D69468C69458C69468C69468C69468C6946
              8C69468C69468C69468C69468D69468E6A479472509A7856A17F5DAC8A67B391
              6DB0927100000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              000000009FF7FA86EAFF81E4FF7ADCFF67D4FF3BC4FF30BFFF31BEFF31BEFF31
              BEFF31BEFF31BEFF31BEFF31BEFF31BEFF31BEFF31BEFF31BEFF31BFFF38C3FF
              42C8FF4FCFFF5BD9FF64E2FF6AE7FF69E8FC557C830000000000000000000000
              00000000000000000000000000000000ACA69EE4D0BBD7C4B0D6C1ACCEB7A1C0
              A78DB59A7DB19679AD9072997755967350977451977451977451977451977451
              9774519774519774519774519874519975529D7B58A58362AC8A67B18F6CB895
              729F938700000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              00000000AEDEE096F3FD85E9FF81E5FF5DD8FF3ECDFF3CCAFF3CC9FF3CC9FF3C
              C9FF3CC9FF3CC9FF3CC9FF3CC9FF3CC9FF3CC9FF3CC9FF3CC9FF3CC9FF3CCAFF
              40CDFF49D2FF56DBFF64E3FF67E4FF6AEBFF60CEDF5F6F720000000000000000
              00000000000000000000000000000000D7C7B2D9C4B0D1BBA4CCB299C7AB8FC3
              A78AC0A487BEA385AD8C6BA4805DA5815EA5815EA5815EA5815EA5815EA5815E
              A5815EA5815EA5815EA5815EA6825FA78360A98663B08D6BB2906EB79370A08C
              7500000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              00000000000000A3E6EE8DF0FF7BE8FF58E0FF4CDAFF4BD9FF49D8FF49D7FF49
              D7FF49D7FF49D7FF49D7FF49D7FF49D7FF49D7FF49D7FF49D7FF49D7FF4AD8FF
              4BD9FF4DDBFF52DFFF59E1FF5FE2FF65E3FF6DF1FF57A8B3767A7B0000000000
              00000000000000000000000000C4B6A3DBC5ADCDB59ACAAE91C8AC8FC9AC8FC9
              AD90CAAF91BE9D7FAF8A68B08C6AB08C6AB08C6AB08C6AB08C6AB08C6AB08C6A
              B08C6AB08C6AB08C6AB08C6AB18C6AB18C6AB18C6AB28E6CB69370AF91730000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              00000000000000000000A1F7FA6CE6FB53E2FB53E2FB53E2FB53E1FB53E1FB53
              E1FB53E1FB53E1FB53E1FB53E1FB53E1FB53E1FB53E1FB53E1FB53E1FB53E1FB
              53E2FB53E2FB53E2FB52E1FB54E1FB5AE3FB60E5FB6AEFFC638E970000000000
              00000000000000000000000000BDAA95B29F8BB29E87B29E88B29E88B29E88B2
              9F89AE9986A0866C9F866B9F866B9F866B9F866B9F866B9F866B9F866B9F866B
              9F866B9F866B9F866B9F866B9F866B9F866B9F866BA1856CA68A6F0000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              00000000000000000000A3C2C865CAE155C2DD57C3DD57C3DD58C3DD58C3DD58
              C3DD58C3DD58C3DD58C3DD58C3DD58C3DD58C3DD58C3DD58C3DD58C3DD57C3DD
              57C3DD57C3DD57C3DD57C3DD57C3DD57C2DD58C3DD5CC8E167C4D80000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              00000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000003
              FFFFFFFFFFFFFFFFE0000003FFFFFFFFFFFFFFFFE0000001FFFFFFFFFFFFFFFF
              F0000000FFFFFFFFFFFFFFFFF80000007FFFFFFFFFFFFFFFF80000007FFFFFFF
              FFFFFFFFFC0000003FFFFFFFFFFFFFFFFE0000001FFFFFFFFFFFFFFFFF000000
              1FFFFFFFFFFFFFFFFF0000000FFFFFFFFFFFFFFFFF80000007FFFFFFFFFFFFFF
              FFC0000007FFFFFFFFFFFFFFFFC0000003FFFFFFFFFFFFFFFFE0000001FFFFFF
              FFFFFFFFFFF0000000FFFFFFFFFFFFFFFFF0000000FFFFFFFFFFFFFFFFF80000
              007FFFFFFFFFFFFFFFFC0000003FFFFFFFFFFFFFFFFE0000003FFFFFFFFFFFFF
              FFFE0000001FFFFFFFFFFFFFFFFF0000000FFFFFFFFFFFFFFFFF80000007FFFF
              FFFFFFFFFFFF80000007FFFFFFFFFFFFFFFFC0000003FFFFFFFFFFFFFFFFE000
              0001FFFFFFFFFFFFFFFFE0000001FFFFFFFFFFFFFFFFF0000000FFFFFFFFFFFF
              FFFFF80000007FFFFFFFFFFFFFFFFC0000007FFFFFFFFFFFFFFFFC0000003FFF
              FFFFFFFFFFFFFE0000001FFFFFFFFFFFFFFFFF0000000FFFFFFFFFFFFFFFFF00
              00000FFFFFFFFFFFFFFFFF80000007FFFFFFFFFFFFFFFFC0000003FFFFFFFFFF
              FFFFFFC0000003FFFFFFFFFFFFFFFFE0000001FFFFFFFFFFFFFFFFF0000000FF
              C0000007FFFFFFF8000000FF80000007FFFFFFF80000007F8000000FFFFFFFFC
              0000003F0000000FFFFFFFFE0000001E0000001FFFFFFFFE0000001E0000003F
              FFFFFFFF0000000C0000007FFFFFFFFF800000000000007FFFFFFFFF80000000
              000000FFFFFFFFFF80000000000001FFFFFFFFFF00000000000001FFFFFFFFFF
              00000000000003FFFFFFFFFE00000000000007FFFFFFFFFC0000000000000FFF
              FFFFFFFC0000000000000FFFFFFFFFF80000000000001FFFFFFFFFF000000000
              00003FFFFFFFFFF00000000000003FFFFFFFFFE00000000000007FFFFFFFFFC0
              000000000000FFFFFFFFFF80000000000001FFFFFFFFFF80000000000001FFFF
              FFFFFF00000000000003FFFFFFFFFE00000000000007FFFFFFFFFE0000000000
              0007FFFFFFFFFC0000000000000FFFFFFFFFF80000000000000FFFFFFFFFF000
              00000000000FFFFFFFFFF000000180000007FFFFFFFFE000000380000007FFFF
              FFFFC0000003C0000003FFFFFFFFC0000007E0000001FFFFFFFF8000000FF000
              0001FFFFFFFF0000000FF0000000FFFFFFFF0000001FF80000007FFFFFFE0000
              003FFC0000007FFFFFFC0000007FFC0000003FFFFFF80000007FFE0000001FFF
              FFF8000000FFFF0000000FFFFFF0000001FFFF0000000FFFFFE0000001FFFF80
              000007FFFFE0000003FFFFC0000003FFFFC0000007FFFFE0000003FFFF800000
              07FFFFE0000001FFFF8000000FFFFFF0000000FFFF0000001FFFFFF8000000FF
              FE0000003FFFFFF80000007FFC0000003FFFFFFC0000003FFC0000007FFFFFFE
              0000001FF8000000FFFFFFFF0000001FF0000000FFFFFFFF0000000FF0000001
              FFFFFFFF80000007E0000003FFFFFFFFC0000007E0000007FFFFFFFFC0000007
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFF2800000048000000900000000100180000000000C03C000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000B9A799AF9A86A89583A99684A99684AA9684AA9685AA9785AA9785AA9785
              AA9785AA9785AA9785AA9785AA9785AA9785AA9785AA9684AD9886A492807F7A
              7600000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000D7CCC2D5B9A0
              D3B99FCFB59CCFB59DCFB59CCEB49ACEB49ACEB49ACEB49ACEB49ACEB49ACEB4
              9ACEB49ACEB49ACEB49ACEB49ACFB69CCEB397D1B3939E8C7800000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              000000000000000000000000000000000000000000CCBCADD5BAA0C6AD95C3AA
              91BDA48BB9A087B89F86B89F85B89F85B89F85B89F85B89F85B89F85B89F85B8
              9F85B89F86BAA288B69A7EB69676C6A88A887D72000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              00000000000000000000000000000000C8B3A0D4BAA2C3AB93B9A189B29A82B0
              9880AF977EB0977FB09880B09880B09880B09880B09880B09880B19981AF957B
              A6886BAB8C6DBE9F7FBCA1877D76700000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000CCB6A0D9C5AFC7B29EBEA994B9A48FB7A28DB5A08B
              B49F89B59F8AB59F8AB59F8AB59F8AB59F8AB5A08AAE9780A98E75B0967BBDA4
              89D5BA9EA28C757E7C7800000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              000000CEC2B5DEC9B3D6C3AFC6B39FBFAB97BCA996B4A08AA99178A78F76A88F
              77A88F77A88F77A88F77A78F76A58C72A89077AF977DB8A087CAB198D1B69987
              7665000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              000000000000000000000000000000000000000000000000000000000000C8B7
              A6E2CDB7CFBCA8C3B09CBDAB97B9A590AA9279A08469A08569A0856AA0856AA0
              856AA0856AA08669A38B70AB9179B1987FBCA48AD0B79EC0A58A796F64000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              00000000000000000000000000000000000000000000000000CDB9A5DFCBB6CA
              B7A3C1AD99BCAA96B6A18BA68C73A08569A1866BA1866BA1866BA1866BA1866A
              A1866BA68C73AC937AB39A81C1A990D5BBA0A990787B76720000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000D8C2ACD8C5B0C8B4A0BFAC98
              BBA894B29B85A2886EA08569A1866BA1866BA1866BA1866BA0856AA1876CA78F
              76AD957BB79E85C7B096D3B89C8F7D6A00000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              000000000000000000000000CABBADE0CAB5D2BEAAC4B09CBEAB97BAA793AC95
              7DA1866BA1866BA1866BA1866BA1866BA1866BA1856AA38A6FA99177AF977DBB
              A289CEB59CC7AB8F7F7265000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              00000000000000CBB9A6E1CCB7CCB9A5C2AE9ABDA996B7A38FA78F76A0856AA1
              866BA1866BA1866BA1866BA1866BA1866AA48B71AB927AB29981BFA78ED4BAA0
              B1977E7A736C0000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              00000000000000000000000000000000000000000000000000000000000000D3
              CBC3D4BFAADAC7B2C9B5A1C0AC98BCA995B39D89A48A70A08569A1866BA1866B
              A1866BA1866BA0856AA1866CA78E75AD947BB69D84C4AD94D4BA9D97836D0000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000DEC8B1
              D4C1ADC6B29EBFAC98BBA794AE9881A1876CA1856AA1866BA1866BA1866BA186
              6BA1856BA2886EA89077AF967DB9A087CCB399CCB195827364A1A1A100000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              000000000000000000000000000000000000000000CAB9A7E1CCB7CEBBA7C3AF
              9BBEAA96B9A491A99178A0856AA1866BA1866BA1866BA1866BA1866BA0856AA4
              8B70AA9279B19980BDA58CD2B99FB79D82787067000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              00000000000000000000000000D8D2CBD0BCA7DCC8B4CAB6A2C1AD99BDA996B5
              A08AA68B71A18569A1866BA1866BA1866BA1866BA0856AA1876BA68D73AC937A
              B49C83C3AB92D5BBA0A08A720000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000D9C3AED7C3AEC7B39FBFAC97BBA894B09A83A2886D
              A0856AA1866BA1866BA1866BA1866BA1856AA2886CA88F76AF957DB89F87C9B1
              97D2B6998A786895949400000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              000000CAB9A9E2CDB7D0BDA8C3B09CBDAA96B9A591AA947BA0866AA1866BA186
              6BA1866BA1866BA1866BA0856AA38A70AA9278B0987FBBA38AD0B79DC0A5897A
              6F65000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              000000000000000000000000000000000000000000000000000000000000CCB8
              A4DFCAB5CCB8A4C1AE9ABDA996B6A28DA78D73A08569A1866BA1866BA1866BA1
              866BA0856AA0866BA58C72AB937AB39A81C1A990D5BBA0A890777B7770000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              00000000000000000000000000000000000000000000D3C9BFD3BEA8D9C4B0C8
              B4A0BFAC97BCA995B29C87A3896EA0856AA1866BA1866BA1866BA1866BA0856A
              A1876CA78F75AE967DB79F86C7AF96D5B99C907E690000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000CBBCAEDFCAB4D2BEABC5B19DBEAB97
              BAA793AD967EA1866BA1866BA1866BA1866BA1866BA1866BA08569A38A6FA991
              78AF977EBAA289CEB59CC8AD907F716400000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              000000000000000000000000CAB8A6E0CBB6CCB9A5C2AE9ABDAA96B7A48FA890
              76A0856AA1866BA1866BA1866BA1866BA0856AA0866BA48B71AB9279B29A81BF
              A78ED4BA9FB2977E79726B000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              00000000000000D1BCA7DBC7B3C9B5A2C0AD99BDA995B49F89A48B70A0856AA1
              866BA1866BA1866BA1866BA1866BA1866BA78E74AD957CB59D84C4AD94D6BBA0
              98836E8582800000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              00000000000000000000000000000000000000000000000000000000000000CC
              BFB2DCC7B1D4C1ADC6B39FBFAB97BCA894AF9881A1876CA1866BA1866BA1866B
              A1866BA1866BA08569A2886DA89076AE967DB9A188CCB49ACFB3978273640000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000C9B7A7E0CCB6
              CEBCA8C3AF9BBDAA97B9A591AA9279A1856AA1866AA1866BA1866BA1866BA186
              6AA0856AA38A70AA9278B1997FBDA58BD3BA9FBBA085786F6700000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              000000000000000000000000000000000000000000D0BBA6DECAB5CAB7A3C0AD
              99BDAA96B6A18CA58D73A08569A1866BA1866BA1866BA1866BA1866AA0856BA6
              8D74AC947AB49B82C2AA92D7BCA0A28B737D7A76000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              00000000000000000000000000000000D8C2ADD7C3B0C7B39FBFAC98BCA895B1
              9B84A3886DA1856AA1866BA1866BA1866BA1866BA0856AA2876CA88F76AD957C
              B79F86C8B097D3B79B8977659494930000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000C9B8AAE0CBB6D0BEAAC4B19DBEAA96BAA692AC957CA0866B
              A1856AA1866BA1866BA1866BA1866BA0856AA38A6FA99278B0977EBCA38AD0B8
              9EC4A98C796E6300000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              000000CDB9A5DFCBB6CBB8A4C1AE9ABDAA96B7A38DA78E75A1856AA1866BA186
              6BA1866BA1866BA1866BA0856AA58C73AB927AB39A81C0A88FD7BCA0A9927979
              746F0000000000000000000000000000000000000000000000007EAFB472A5AC
              75A6AC75A6AC75A6AC75A6AC75A6AC75A6AC75A6AC75A6AC75A6AC75A6AC73A6
              AC7BA8AC85ABAC84ABAC85ABAC85ABAC80ABAC7CA1A600000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              000000000000000000000000000000000000000000000000000000000000D5C0
              AAD9C6B1C8B5A1C0AC98BCA995B29E87A4896FA0856AA1866BA1866BA1866BA1
              866BA0856AA0866CA78E75AD957CB69E84C6AE95D7BCA0907E69000000000000
              0000000000000000000000000000008BD5DE93FAFF8CF3FF8CF1FF8BF1FF8BF1
              FF8BF1FF8BF1FF8BF1FF8BF1FF8BF1FF8BF1FF89F1FF8DF3FFA3F9FFADFBFFAC
              FBFFA8FAFFA2FDFF99FDFF9DCACE000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              00000000000000000000000000000000000000000000CBBDAFE1CCB6D3BFACC5
              B29EBEAB97BAA894AD9780A1866BA1856AA1866BA1866BA1866BA1866BA0856A
              A3896EA99178AF977EB9A288CDB69CCCB0947C6F610000000000000000000000
              0000000000000090FAFF88ECFF83E6FF80E3FF7EE2FF7EE2FF7EE2FF7EE2FF7E
              E2FF7EE2FF7EE2FF7EE2FF7EE2FF92E9FFA2EFFFA0F0FF9BF4FF90F4FF8FFFFF
              8AD4DA0000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000CCB9A6E2CEB8CDBAA6C2AE9ABDAA96
              B8A591A99077A1856AA1866BA1866BA1866BA1866BA1866BA0856AA48B71AB92
              79B29A80BFA78FCAAD91AC8F71767069000000000000000000AFCACE87E9F289
              EFFF7CDEFF75D8FF72D5FF71D3FF71D4FF71D4FF71D4FF71D4FF71D4FF71D4FF
              71D4FF7FD9FF92E0FF8BDFFF82E1FF80EBFF88FEFF80E0E40000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              000000000000000000D7D1C9CFBBA6DAC7B3C8B4A0BFAC98BCA996B39E88A288
              6EA1856AA1866BA1866BA1866BA1866BA0856AA1866BA68E74AE967EB0957BAF
              9072C6A48298806A00000000000000000088DBE78FF9FF7DE0FF73D6FF6DD0FF
              6BCEFF78D2FF7ED3FF7CD3FF7CD3FF7CD3FF7CD3FF7DD3FF77D2FF69CEFF5DCA
              FF53CAFF57D5FF68ECFF6CECFAA3C8CD00000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              00000000CFC2B6DEC7B2D0BDA9C2AF9BBCAA96B8A490A78E75A08469A1866BA1
              866BA1866BA1866BA1866BA0856AA3896EA88F759D8062A38464B59677C5A383
              87756600000000000090FBFF82E5FF75D8FF6ED1FF67CCFF65CAFF72CFFF75D0
              FF75D0FF75D0FF74D0FF76D0FF76D0FF55C4FF34BAFF31BCFF3AC7FF4CD9FF5B
              EFFF75C3D1000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              00000000000000000000000000000000000000000000000000000000000000C0
              AE9DDEC9B3C5B29EBDAA96BAA793AB947BA0856AA1866BA1866BA1866BA1866B
              A1866BA1866BA2876C977B5D9172519D7D5DAC8D6DBC9B7AB48D6B6D7F7B76D7
              EB88EEFF78DAFF70D2FF6BCEFF62C9FF5DC7FF5BC7FF5BC7FF5BC7FF5BC7FF5B
              C7FF5EC8FF4CC2FF2EB8FF2EBAFF3AC4FF4AD3FF5EF1FF64D0DF000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000BCA692D2BBA2C5B29E
              BDAA96BAA792AB9379A0856AA1866BA1866BA1866BA1866BA1866BA3896E9C80
              638967468C6947977553A88664B58E6AAB8F6E80BEC682EAFF7CDEFF71D3FF6C
              CEFF65CAFF5EC8FF5CC7FF5BC7FF5BC7FF5BC7FF5BC7FF5EC8FF56C5FF34BAFF
              2EBAFF39C2FF46CEFF59E9FF5CE0F50000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              000000000000000000000000B9A897D3B89EBBA38ABCA892BDAB98B8A48FA68D
              73A08469A1866BA1866BA1866BA1866BA2876DA1856A8E6E4E8865428F6C4A9D
              7A58AF8A67B1886484A5A27CE1F980E5FF73D6FF6DCFFF68CBFF5FC8FF5CC7FF
              5CC7FF5CC7FF5CC7FF5CC7FF5DC8FF5CC7FF3FBDFF2EB9FF35BFFF41CAFF54DF
              FF5DEEFA88C4CD00000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              00BBAFA5D1B69CC4AB92B39B82B09780BAA692B29D87A2886DA1866AA1866BA1
              866BA1866BA2876CA3886E9475578864428D6A48987653A88563B68A64929686
              77D2E882E9FF77DAFF6ED1FF6ACCFF61C8FF5CC7FF5CC7FF5CC7FF5CC7FF5CC7
              FF5CC7FF5FC8FF49C1FF30B8FF33BDFF3DC7FF4DD6FF5EF2FF6DCBD800000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              00000000000000000000000000000000000000000000000000C4AC96CEB39ABA
              A188AF977EAA9178AB947CA78E74A1866AA1866BA1866BA1866BA1866BA3896E
              997D608867458A674593714FA3815EB48A65A28D7178C0CD80E9FF7CDFFF70D3
              FF6BCEFF64CAFF5EC8FF5DC7FF5CC7FF5CC7FF5CC7FF5CC7FF60C8FF52C3FF32
              BAFF31BBFF3AC4FF48D0FF5BECFF5CD6E9000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000D4B99FBEA58CB39A81AC937AA78E74
              A2886DA0866BA1866BA1866BA1866BA1866BA2886D9F83678C6C4C886643906E
              4C9D7B59AF8B65AF8A6780ADAD7DE4FB80E4FF73D6FF6DCFFF67CBFF5FC8FF5C
              C7FF5CC7FF5CC7FF5CC7FF5CC7FF5EC8FF5AC6FF3BBCFF2EB9FF36C0FF43CCFF
              56E3FF5AE5F398C5CD0000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              000000B9ACA0D2B79DC2A990B59D84AE957CA98F76A3896FA1876CA1866BA186
              6BA1866BA1866BA2876CA2876C9273548765428D6B49997755AA8865B48B648D
              9C9079D8ED82E8FF76D9FF6ED1FF69CCFF61C8FF5DC8FF5CC7FF5CC7FF5CC7FF
              5CC7FF5DC7FF5EC7FF45BFFF2FB9FF34BEFF3FC8FF50DBFF5EF2FF78C7D30000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              000000000000000000000000000000000000000000000000000000C6AD96C9B0
              97B89F86AF977EAA9279A58B71A2876CA1866BA1866BA1866BA1866BA1866BA3
              886E977A5C8866448B6945947250A58260B58B659D907877C7D681E9FF7ADDFF
              70D3FF6BCDFF63C9FF5EC8FF5CC7FF5CC7FF5CC7FF5CC7FF5CC7FF5FC8FF4FC3
              FF31B9FF31BBFF3BC4FF4AD4FF5DEFFF63D1E2CAD6D800000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              00000000000000000000000000000000BEA894D1B79DBCA38AB19980AB937AA6
              8D74A2886DA1866BA1866BA1866BA1866BA1866BA3886E9D81658B6949896643
              916F4C9F7E5BB18A66AA8B6A7DB3B97DE6FD7DE3FF72D5FF6CCFFF66CAFF5EC8
              FF5CC7FF5CC7FF5CC7FF5CC7FF5CC7FF5FC8FF57C5FF37BCFF2EB9FF37C1FF46
              CEFF57E6FF5BDDF0A8C9CF000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000B9AA9BD2B89EC1A990B49B83AD947CA88F76A3896FA1876CA1866B
              A1866BA1866BA1866BA2886DA1866B9070518865438E6C4A9A7856AC8865B28A
              6588A19A7ADDF282E7FF75D8FF6ED0FF68CCFF60C8FF5DC7FF5CC7FF5CC7FF5C
              C7FF5CC7FF5DC8FF5BC7FF40BEFF2FBAFF35BFFF40C9FF52DEFF5CEDFF000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000C9AF96
              C7AE95B79E85AE957DAA9179A48A70A2876DA1866CA1866BA1866BA1866BA187
              6CA2896E96785A8866448C6A46977451A78362B58A6497958078CDDE82E9FF79
              DCFF70D2FF6BCEFF62C9FF5DC8FF5CC7FF5CC7FF5CC7FF5CC7FF5CC7FF5FC8FF
              50C3FF2FB9FF32BCFF3DC6FF4DD6FF5DF1FF6DCEDB0000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              000000000000000000000000000000000000C0A994CEB39ABBA289B1987FAB92
              7AA68C73A2876CA1866BA1866BA1866BA1866BA1866BA3896E9B7F628A684789
              674593714EA17F5CB38A65A68D6F7BBAC37FE7FE7CE1FF71D4FF6DCFFF65CAFF
              5EC8FF5CC7FF5CC7FF5CC7FF5CC7FF5CC7FF5CC7FF61C9FF57C6FF36BDFF36C1
              FF47D0FF5AEAFF5DD7E8B5CED200000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              00000000000000BCAB9AD2B79DBFA68DB39B82AC947CA78F76A2886EA1876CA1
              866BA1866BA1866BA1866BA3886DA084698E6E4D886542906D4B9D7A59AE8964
              AF8A6684A8A57BE0F880E7FF75D8FF6ED0FF68CCFF60C8FF5DC7FF5CC7FF5CC7
              FF5CC7FF5CC7FF5CC7FF5DC8FF65CBFF64CBFF54C9FF41CAFF51DFFF5BE6FA94
              C6CF000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              00000000000000000000000000000000000000000000000000000000000000CE
              B49BC5AC92B69D84AE967DA99177A48A70A2876CA1866BA1866BA1866BA1866B
              A1866CA3886C9475568865438D6B48987653A98562B7906A959E8E77D2E684EB
              FF7ADDFF6FD2FF6ACCFF61C9FF5EC7FF5CC7FF5CC7FF5CC7FF5CC7FF5CC7FF5C
              C7FF5FC8FF68CBFF68CCFF6DD3FF61DAFF58E6FC6CBECB000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000C3AC96CCB298B9A188B0987F
              AB937AA58C72A1876DA1866BA1866BA1866BA1866BA1866BA3886E997C5F8A67
              468B6845947250A2805EB8916CA790737EBDC485EFFF84E8FF78DAFF6DD0FF6A
              CDFF64CBFF5CC7FF5CC7FF5CC7FF5CC7FF5CC7FF5CC7FF5CC7FF5FC9FF61C8FF
              60CAFF6AD3FF77E7FF65E2F76B8D960000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              000000000000000000BDAA98D1B69DBDA48BB29A81AB937BA78E75A2886EA186
              6BA1866BA1866BA1866BA1866BA2886D9E82678D6C4C886643906E4C9E7B59B3
              906CAF8E6D00000000000089F0FD87ECFF78DBFF6ED1FF7AD3FF79D1FF5FC8FF
              5BC7FF5CC7FF5CC7FF5CC7FF5CC7FF5CC7FF5DC8FF59C6FF55C6FF60CFFF78E3
              FF84F3FE60A4B092949600000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              000000000000000000000000000000000000000000000000000000000000BBAD
              9FD0B69CC3A990B59C83AE957CA88F77A48970A2876CA1866BA1866BA1866BA1
              866BA2876CA1866B9172538765428D6B49997755AD8A66B7956FB1A190000000
              0000009EE1EC8EF8FF7EE3FF7CD9FF8ADAFF88D6FF6FCEFF5BC7FF5BC7FF5CC7
              FF5CC7FF5CC7FF5CC7FF5DC7FF59C5FF5AC7FF68CFFF78DCFF8DF2FF7AE7F05F
              8C93000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              00000000000000000000000000000000000000000000C7AF97C9B097B8A087AF
              977EAA9279A48A71A1876DA1866BA1866BA1866BA1866BA2866BA3886D987A5C
              8866448B6945957351A68361BA9772AB937ADAD9D60000000000000000008DE3
              EF8FF4FF94E7FF91DFFF8CD9FF82D5FF67CBFF5AC7FF5CC7FF5CC7FF5CC7FF5C
              C7FF5CC7FF59C7FF62C9FF6CCEFF72D5FF81E3FF90FBFF6ACDDA6E8489000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000BFA995D0B69CBBA28BB19980AB937AA68D74A2886D
              A1866BA1866BA1866BA1866BA1866BA2886D9C81648C6B49896744926F4D9F7C
              5BB6926EAD907000000000000000000000000000000000000092EFF8A7F7FF96
              E5FF8DDCFF8AD8FF7CD2FF61C9FF5BC7FF5CC7FF5CC7FF5CC7FF5CC7FF5BC7FF
              5DC7FF67CBFF6ED0FF77D9FF87EAFF8EFDFF60AEB90000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              B9A99AD3B89EC0A78EB49B83AD957CA88F76A3896EA2876CA1866BA1866BA186
              6BA1866BA2876DA0856A9070508865438F6D4A9A7855AF8B69B2906CB3A59800
              0000000000000000000000000000000000A9E1E8A5FDFFA0EFFF93E2FF8CDAFF
              88D6FF74CFFF5DC7FF5CC7FF5CC7FF5CC7FF5CC7FF5CC7FF5AC7FF5FC9FF6ACD
              FF70D2FF7BDDFF8DF2FF80F1F85D929A00000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              000000000000000000000000000000000000000000000000C9B098C7AD94B69E
              85AF967DA99279A48970A1876CA1866BA1866BA1866BA1866BA2876CA2886E96
              77598866438C6A47967452A88662BB9672AB957F000000000000000000000000
              0000000000000000000000009CE4ECAAFFFF9CEBFF90DFFF8BD9FF85D6FF6BCC
              FF5BC6FF5BC7FF5CC7FF5CC7FF5CC7FF5BC7FF5BC6FF62CAFF6CCEFF72D5FF7F
              E2FF90F9FF71D8E568848A000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              00000000000000000000000000C0AA94CEB49BBAA188B0977FAC937AA58D73A2
              886DA1876CA1866BA1866BA1866BA1866BA2886D9B7F618A684689674593714E
              A17F5DB8946FAC8F720000000000000000000000000000000000000000000000
              000000000000009AEEF6A9FBFF97E7FF8EDDFF8AD9FF7FD3FF63CAFF5AC7FF5C
              C7FF5CC7FF5CC7FF5CC7FF5BC7FF5BC7FF66CBFF6DD0FF75D8FF85E8FF8FFDFF
              62B7C27E898B0000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000BAAA97D3B99FBFA68DB39A81AC937BA78E75A3886EA2876CA1866BA1866B
              A1866BA1866BA2876D9F84698E6E4D886643906E4C9C7A58B18E6BB08F6DB8AD
              A2000000000000000000000000000000000000000000000000000000000000AF
              DFE6A1F8FCA3F2FF94E2FF8CDBFF89D7FF77D0FF5EC8FF5BC7FF5CC7FF5CC7FF
              5CC7FF5CC7FF5AC7FF5EC8FF69CCFF6FD2FF79DCFF8BEFFF86F6FD5C9AA40000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000CEB59BC4AB91
              B69D84AE957CA98F78A48A6FA1876CA1866BA1866BA1866BA1866BA2876CA187
              6C9375578865438D6B48987654A98764B89570AD9A8700000000000000000000
              00000000000000000000000000000000000000000000000000009FE2E9A8FEFF
              9DEBFF91E0FF8CD9FF86D6FF6ECDFF5CC7FF5BC7FF5CC7FF5CC7FF5CC7FF5CC7
              FF5AC6FF62C8FF6BCEFF71D5FF7EE0FF90F8FF76E1EC62868D00000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              000000000000000000000000C3BDB7C3AB95CAB198B89F87AF977EAB9279A58B
              72A2886DA1866BA1866BA1866BA1866BA1866BA3886D997C5E8867458A684594
              7350A3815FBA9671AA9074000000000000000000000000000000000000000000
              00000000000000000000000000000000000000000099ECF4AAFEFF99E7FF8EDD
              FF8BD9FF81D4FF66CAFF5BC7FF5CC7FF5CC7FF5CC7FF5CC7FF5BC7FF5BC7FF65
              CAFF6CD0FF74D7FF83E5FF90FDFF66C3CE758487000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              00000000BCA995D2B89EBCA48BB19980AC937AA78D74A3886EA1866CA1866BA1
              866BA1866BA1866BA2886D9E83678C6B4B886543916F4D9E7C5AB4916DAD8D6C
              BEB6AD0000000000000000000000000000000000000000000000000000000000
              000000000000000000000000000000009EF6FBA6F6FF95E4FF8DDCFF8AD8FF7A
              D2FF60C8FF5BC7FF5CC7FF5CC7FF5CC7FF5CC7FF5BC6FF5EC7FF68CCFF6ED1FF
              77DBFF8AECFF8BFAFF5CA2AE9193940000000000000000000000000000000000
              00000000000000000000000000000000000000000000000000000000D2B79EC2
              A990B49C83AD947CA88F76A3896FA1876CA1866BA1866BA1866BA1866BA2876C
              A1866C9272538865438E6B49997755AC8967B6926FB0A08F0000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000A6E3E8A7FEFFA0EEFF92E1FF8BDAFF88D7FF72CEFF5DC7FF
              5BC7FF5CC7FF5CC7FF5CC7FF5CC7FF5AC6FF60C8FF6ACDFF70D4FF7CDFFF8FF5
              FF7DECF55E8B9200000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000CBB199C9AF96B79F86AF967EAA9179
              A48A70A2876CA1866BA1866BA1866BA1866BA1866BA3896E977A5C8866448C69
              46967451A58261BB9772AA927A00000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000009BE8F0AAFFFF9BE9FF8FDEFF8BD9FF84D6FF69CCFF5BC7FF5CC7FF5CC7
              FF5CC7FF5CC7FF5BC7FF5BC7FF64CAFF6CCFFF72D6FF82E4FF92FDFF6BCED86C
              8086000000000000000000000000000000000000000000000000000000000000
              000000000000C0A995D0B59BBAA189B1987FAC937BA68D73A2886CA1876CA186
              6CA1876CA1876CA1866CA2886E9C81658B6A48896644926F4D9F7E5BB7926EAC
              8E6F000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000009BF3
              F7A7F7FF96E5FF8EDCFF8BD8FF7ED3FF63CAFF5BC7FF5DC7FF5DC7FF5DC7FF5D
              C7FF5CC7FF5EC7FF68CCFF6ED0FF77D9FF88E9FF8EFFFF5EADB9000000000000
              000000000000000000000000000000000000000000000000000000B9A899D3B9
              9EBFA68DB39A82AC927AA3886D9F8368A1866BA0866BA0876BA0876BA0876BA1
              876B9E83678F6F4E8866428F6C4A9C7857B08D69B4916EB3A699000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              00000000000000000000000000000000000000000000AFE4EAA6FEFFA2F0FF94
              E3FF8EDBFF8AD8FF6ECDFF5AC7FF5CC7FF5CC7FF5CC7FF5CC7FF5DC7FF5CC7FF
              62C9FF6BCDFF71D3FF7BDEFF8EF1FF83F3FB5C90990000000000000000000000
              00000000000000000000000000000000000000D5BEA7CEB79FBEA891B39A83A5
              8A6F9475559373549678599678589678589678589678589779598E6E4D896643
              8F6D4A987553A98663BC9773AA957F0000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000A3E8EEA5FFFF91E7FF89DDFF7CD5FF
              55C7FF46C1FF48C1FF48C1FF48C1FF48C1FF48C1FF48C1FF4AC2FF50C5FF5ACA
              FF66D3FF74DFFF85F7FF68D7E265818600000000000000000000000000000000
              0000000000000000D3C1AFE2CFBAD0BDA8C0AA92B2987DA68A6D9271508D6945
              8E6B488E6B488E6B488E6B488E6B488E6B488E6A46926F4C9B7957A58361B996
              70AB8F7100000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000009AEDF28AF0FF7FDFFF5ED1FF34C2FF32BFFF33C0
              FF33C0FF33C0FF33C0FF33C0FF33C0FF33C0FF32C0FF37C3FF43C9FF54D4FF65
              E2FF71F6FF5BB9C8000000000000000000000000000000000000000000C7BAAB
              E7D3BCD3BCA6CBB197BFA487BA9E80AC8B6B9E7A579F7B58A07C58A07C58A07C
              58A07C58A07C58A07C58A17C59A37F5CAB8866B79470B08F6BB8AEA300000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              00000000C2E7E996F5FF81ECFF57DCFF43D4FF43D2FF43D2FF43D2FF43D2FF43
              D2FF43D2FF43D2FF43D2FF43D2FF43D3FF46D4FF4FDBFF5DE2FF66E8FF6EF3FF
              599AA2000000000000000000000000000000C1B7A9E2CCB2CFB69ACAAD90C9AB
              8DC9AD90C0A181AF8A67AE8965AF8A67AF8A66AF8A66AF8A66AF8A66AF8A66AF
              8A66B08A67B08B67B58F6CBB9672AE9C8A000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              00007FF8FF52E6FF50E4FF51E3FF51E3FF51E3FF51E3FF51E3FF51E3FF51E3FF
              51E3FF51E3FF51E3FF51E4FF51E4FF52E4FF56E4FF61EFFF61E2F36D92990000
              00000000000000000000C8BCAFC9B9A9C5B5A4C6B6A5C6B8A7C6B7A8BCA997B7
              A48FB8A591B8A591B8A591B8A591B8A591B8A591B8A591B8A591B8A591B8A591
              B8A28FBBA9980000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              000000000000000000000000000000000000000000000000000093D5E27DD3E7
              81D4E682D4E682D4E682D4E682D4E682D4E682D4E682D4E682D4E682D4E681D4
              E681D4E681D3E680D3E680D3E681D2E681D8EB9BD0DB00000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              000000000000000000000000FFFFFFFFFFFFFFFFFF000000FFFFFFFFFFFFFFFF
              FF000000C00001FFFFFFFFFFFF000000C00001FFFFFFFFFFFF000000E00000FF
              FFFFFFFFFF000000F000007FFFFFFFFFFF000000F800003FFFFFFFFFFF000000
              F800003FFFFFFFFFFF000000FC00001FFFFFFFFFFF000000FE00000FFFFFFFFF
              FF000000FF00000FFFFFFFFFFF000000FF000007FFFFFFFFFF000000FF800003
              FFFFFFFFFF000000FF800003FFFFFFFFFF000000FFE00000FFFFFFFFFF000000
              FFE00000FFFFFFFFFF000000FFE00000FFFFFFFFFF000000FFF800003FFFFFFF
              FF000000FFF800003FFFFFFFFF000000FFFC00001FFFFFFFFF000000FFFC0000
              1FFFFFFFFF000000FFFE00000FFFFFFFFF000000FFFF000007FFFFFFFF000000
              FFFF800003FFFFFFFF000000FFFF800003FFFFFFFF000000FFFFC00001FFFFFF
              FF000000FFFFE00000FFFFFFFF000000FFFFF000007FFFFFFF000000FFFFF000
              007FFFFFFF000000FFFFF800003FC00003000000FFFFFC00003F800003000000
              FFFFFC00001F800007000000FFFFFE00000E00000F000000FFFFFE00000E0000
              0F000000FFFFFF00000600001F000000FFFFFF80000000003F000000FFFFFF80
              000000007F000000FFFFFF00000000007F000000FFFFFE0000000000FF000000
              FFFFFE0000000001FF000000FFFFFE0000000001FF000000FFFFF80000000003
              FF000000FFFFF80000000003FF000000FFFFF00000000007FF000000FFFFE000
              0000001FFF000000FFFFE0000000001FFF000000FFFFC0000000001FFF000000
              FFFF80000000003FFF000000FFFF80000000007FFF000000FFFF00000000007F
              FF000000FFFE00001800003FFF000000FFFC00001800003FFF000000FFFC0000
              1C00001FFF000000FFF800007E00001FFF000000FFF000007E00000FFF000000
              FFF00000FF000007FF000000FFE00001FF800003FF000000FFC00001FF800003
              FF000000FFC00003FFC00001FF000000FF000007FFE00000FF000000FF000007
              FFF000007F000000FF00000FFFF000007F000000FE00001FFFF800003F000000
              FC00003FFFFC00003F000000F800003FFFFC00001F000000F800007FFFFE0000
              0F000000F00000FFFFFF00000F000000E00000FFFFFF000007000000C00001FF
              FFFFC00003000000C00003FFFFFFC00003000000FFFFFFFFFFFFFFFFFF000000
              FFFFFFFFFFFFFFFFFF0000002800000040000000800000000100180000000000
              0030000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000928E89
              94908C95918D95918D95918D95918D95918D95918D95918D95918D95918D9591
              8D95918D95918D95908D95908C96949400000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000BEA994C0A891
              B7A18BB8A28CBAA28CBAA28CBAA28CBAA28CBAA28CBAA28CBAA28CBAA28CBAA2
              8CBAA28CBAA28CB9A28DC1A78F9C8B7800000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000D4BA9F
              CFB49CCAB098C8AE95C5AC92C5AB92C5AB91C5AB91C5AB91C5AB91C5AB91C5AB
              91C5AB91C5AB92C7AE95C3A689CAAB8B8D807300000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000CAB9AA
              D6BAA1C4AB92BAA188B39A81B1997FB1987FB1987FB1987FB1987FB1987FB198
              7FB1987FB29981B1977CAA8C6DB89777BDA185817B7500000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              C8B4A1DAC3ABC3AE99B9A48EB59F89B49E88B39D87B49E88B49E88B49E88B49E
              88B49E88B49F89AC947AA88C70B3987BD0B396A8937C85827E00000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              000000D6C1ABDAC7B2C6B29EBEAA96BBA894B19C86AA937BAB947CAB947CAB94
              7CAB947CAB937BA78F76AB9279B49C82C4AD93D5B99D8B796800000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              000000CDC0B4E0CAB4D1BEAAC2AF9BBDAA96B59F8AA3896F9F8468A0856BA085
              6AA0856AA0856AA0866AA68D73AD957CB79E85CCB49BC7AC907C716600000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              000000000000CCBAAAE2CEB8CBB7A4C0AC98BBA995AF9882A1866BA0856AA186
              6BA1866BA1866BA1866AA1866CA88F76AF977EBBA38AD4BAA0AE957C7F7A7600
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              000000000000000000D2BEA9DDC8B4C6B29FBEAB97B9A692AA927AA08569A186
              6BA1866BA1866BA1866BA0856AA3896FAA9279B29980C3AA91D6BBA095806C00
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              000000000000000000D2C7BDDAC5AFD4C0ACC4AF9BBDAA96B6A28DA58C73A085
              69A1866BA1866BA1866BA1866BA1866AA58C72AC947AB59D84CAB198CDB29681
              7466000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              000000000000000000000000CCBCADE3CEB8CDBAA6C1AD99BCA996B19C86A287
              6DA0856AA1866BA1866BA1866BA1866BA1866BA88F76AE967DBAA188D1B89FB6
              9C817C766E000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              000000000000000000000000000000CEBBA8DFCBB5C8B5A1BFAC98BBA794AC95
              7DA0856AA1866BA1866BA1866BA1866BA0856AA2896EA99178B1987FBFA78FD6
              BBA09D8771000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              000000000000000000000000000000000000D4BFAAD7C4AFC5B19DBEAB97B8A3
              8FA78F75A08569A1866BA1866BA1866BA1866BA0856AA48B70AB937AB49B83C7
              AF96D2B79A877767000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              000000000000000000000000000000000000CDBFB2E0CBB5CFBCA8C1AE9ABDAA
              96B39E88A3896FA0856AA1866BA1866BA1866BA1856AA1866BA68E74AD957BB8
              A087CFB69DBEA4887D746B000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              000000000000000000000000000000000000000000CCBAA8E0CCB6CAB6A2C0AC
              98BBA894AE9780A1866BA1856AA1866BA1866BA1866BA1856AA2876DA99177B0
              987FBDA58DD6BCA0A78E7685817E000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              000000000000000000000000000000000000000000DBD3CCD2BDA8DAC6B1C5B2
              9EBDAB97B8A591A89177A08569A1866BA1866BA1866BA1866BA0856AA48A70AB
              9279B39A81C4AC92D5B99E8C7B69000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              000000000000000000000000000000000000000000000000000000DDC7B1D2BE
              AAC2AF9BBDAA96B5A08BA48B70A0856AA1866BA1866BA1866BA1866BA0856BA6
              8D72AD957BB79E85CCB49AC7AC907E7366000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              000000000000000000000000000000000000000000000000000000CCBCAAE1CD
              B7CCB8A4C0AD99BCA995B09A84A2876CA0856AA1866BA1866BA1866BA0856AA1
              876BA89076AF977EBBA38BD4BA9FAF967C000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              000000000000000000000000000000000000000000000000000000000000CFBB
              A8DCC8B4C6B3A0BEAB97BAA793AB937BA08569A1866BA1866BA1866BA1866BA0
              856AA38A6FAA9279B19980C1A990D7BC9F95816C949291000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              00D8C3AED4C1ADC3B09BBEAA96B7A28DA68D72A08569A1866BA1866BA1866BA1
              866BA0856AA58C72AC947BB59D84C9B198CEB396817465000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              00CBBCACE2CDB7CEBBA7C1AE9ABDA996B29D86A2896DA0856AA1866BA1866BA1
              866BA0856AA1866BA78F75AE967DBAA188D2B99EB89E847D766F000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              00000000CEBAA8DFCBB6C8B5A1BFAB98BBA894AD967DA0856BA1866BA1866BA1
              866BA1866BA0856AA2886EA99177B0987FBEA68ED7BCA19D88728A8786000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              00000000000000D5BFAAD8C4AFC4B19DBEAB98B8A490A78F76A08469A1866BA1
              866BA1866BA1866BA08569A48B70AB937AB39B82C6AE95D4B89C877767000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              00000000000000CCBEB1E0CAB5D0BCA9C2AF9BBDAA97B49F89A38A6FA0856AA1
              866BA1866BA1866BA0856AA0866AA68E74AD957CB79F86CFB69CC3A78B7B7269
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              00000000000000000000CBB8A8E2CDB8C9B7A3C0AC98BCA994AF9981A1866BA1
              856AA1866BA1866BA1866BA1856AA1886CA89077AF967DBCA48BD6BCA1A78F77
              817E7B0000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              00000000000000000000000000D3BEA9DBC7B3C6B29EBEAB97B9A692AA9178A0
              8569A1866BA1866BA1866BA1866BA0856AA38A70AA9279B29A81C4AB92D7BB9F
              8C7B6800000000000000000000000000000000000000000087C4CB76BFC576BD
              C476BDC476BDC476BDC476BDC476BDC476BDC476BDC475BDC474BDC483C0C48D
              C3C48CC2C48CC2C48AC3C479B3B7000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              00000000000000000000000000D0C5BADEC8B3D3BFABC3AF9BBDAA97B6A28CA5
              8B71A08569A1866BA1866BA1866BA1866BA0856AA58C72AC957BB69E84CCB39A
              CDB2957B706500000000000000000000000000000098CED895FFFF90FAFF8DF5
              FF8CF5FF8CF5FF8CF5FF8CF5FF8CF5FF8CF5FF8CF5FF89F4FF93F7FFABFEFFB0
              FFFFABFFFFA2FFFF9BFFFF000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              00000000000000000000000000000000CBBBAAE4CFB9CBB9A5C0AD99BCA995B1
              9C85A2876CA1866BA1866BA1866BA1866BA1866AA1866BA88F75AF977DBBA48A
              D3B99EAB91757B777100000000000000000000000087ECF488EDFF7BDEFF77D9
              FF75D7FF74D7FF74D7FF74D7FF74D7FF74D7FF73D7FF7AD9FF93E2FF98E5FF90
              E8FF8AEFFF8CFFFF89D4D9000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              00000000000000000000000000000000000000D0BDA8DDCAB5C7B39FBEAB97BA
              A793AB937BA0856AA1866BA1866BA1866BA1866BA0856AA3896FAA9279B29A82
              B49A7EC4A381937D6700000000000000000087DDE88DF5FF79DCFF70D3FF6DD0
              FF74D2FF78D3FF78D3FF78D3FF78D3FF78D3FF77D2FF75D2FF73D2FF64D1FF65
              DAFF76F6FF78E0EB000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              00000000000000000000000000000000000000D5CBC2DAC3AED1BEAAC1AD99BC
              AA96B29D87A0866BA1856AA1866BA1866BA1866BA1866BA0856AA68D74A68D72
              A08262B29374C4A38384746700000094D1D991FCFF7DE0FF71D4FF6ACDFF66CB
              FF75D0FF7AD1FF79D1FF79D1FF79D1FF7CD3FF6BCCFF41BFFF35BDFF3BC6FF50
              DFFF59E8F6000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              00000000000000000000000000000000000000000000C1B1A3DEC9B3C5B29EBC
              AA96B7A28DA48A6FA0856AA1866BA1866BA1866BA1866BA1876CA0856A947556
              977756A88969BC9B7AB18B6A6D83817CE0F485EAFF73D6FF6DCFFF65CAFF5EC8
              FF5DC7FF5CC7FF5CC7FF5CC7FF5EC8FF5AC7FF37BBFF2BB9FF37C3FF4BD5FF5F
              F3FF79C6D1000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              00000000000000000000000000000000000000000000B9A594D2BBA2C5B29DBD
              AA96B6A28BA48A6FA0856AA1866BA1866BA1866BA1866BA3896E957758886543
              926F4DA38160B58D68AA8F7081C6D081EAFF78DAFF6ED1FF68CCFF5EC8FF5CC7
              FF5BC7FF5BC7FF5BC7FF5CC7FF5EC8FF41BEFF2DB8FF37C0FF45CFFF5CEFFF63
              D2E4000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              00000000000000000000000000000000000000BAAEA0D3B99EBCA38ABAA58FBE
              AC98B29C86A1866BA1856AA1866BA1866BA1866BA3886E9B7F628967458B6845
              987653AC8864B1896483ABAA7DE6FD7CE0FF70D2FF6BCCFF61C8FF5CC7FF5CC7
              FF5CC7FF5CC7FF5CC7FF60C8FF4DC2FF30B9FF33BDFF40C9FF56E4FF5BE0EE00
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              00000000000000000000000000000000000000C8AE96C7AE95B39A81AE967EB6
              A28DAA9179A08569A1866BA1866BA1866BA3886D9F846A8D6C4B88654393714E
              A48260B5896292998A79D9F080E7FF73D6FF6CCEFF65CAFF5DC7FF5CC7FF5CC7
              FF5CC7FF5CC7FF5FC8FF56C5FF35BAFF31BBFF3CC6FF4ED9FF5DF0FF88C6D100
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              00000000000000000000000000000000BEA994CFB59CB89F86AF967DA89076A5
              8C73A2876DA1866BA1866BA1866BA1866BA2886D9374558765428F6C4A9F7D5A
              B38963A28F7479C7D680EAFF78DBFF6ED0FF67CBFF5FC8FF5CC7FF5CC7FF5CC7
              FF5CC7FF5DC7FF5DC7FF3DBDFF2EB9FF38C2FF48D1FF5EF1FF6DCCDB00000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              00000000000000000000000000BAAB9BD4B9A0BDA48BB1987FAA9279A48B71A0
              866BA1866BA1866BA1866BA1866BA3896E987C5F8866438C6A47997755AE8864
              AD8A6780B3B67EE7FF7CDFFF6FD2FF6ACCFF61C9FF5CC7FF5CC7FF5CC7FF5CC7
              FF5CC7FF5FC8FF49C0FF2FB9FF34BEFF42CCFF58E9FF5CD8E800000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              00000000000000000000000000CDB299C4AB91B39A82AC947BA68D73A2876DA1
              866BA1866BA1866BA1866BA3886D9E83678B6A49896644947250A78461B48A63
              8C9F957ADEF680E5FF72D5FF6CCEFF63C9FF5DC7FF5CC7FF5CC7FF5CC7FF5CC7
              FF5FC8FF53C4FF33B9FF31BCFF3EC7FF52DEFF5BE8FB9ACAD100000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              00000000000000000000C3AC96CDB299B69D85AD957CA88F76A3896EA1866BA1
              866BA1866BA1866BA2876CA2876C917151886542916E4CA17F5CB489639C927B
              78CDDF80E8FF76D9FF6ED0FF66CAFF5EC8FF5DC7FF5CC7FF5CC7FF5CC7FF5EC7
              FF5AC7FF3ABCFF2EBAFF3AC3FF4BD5FF5DF0FF7ACAD600000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              00000000000000BBAA99D3B89EBBA28AB0977EAA9278A48B70A1876CA1866BA1
              866BA1866BA1866BA3896E96795C8866438D6B489B7957B08964AA8C6B7DBAC2
              7FE8FF7ADDFF6FD2FF69CCFF60C8FF5CC7FF5CC7FF5CC7FF5CC7FF5DC7FF5DC7
              FF43BFFF2FBAFF36C0FF45CEFF5BEDFF64D4E400000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              00000000000000D0B69CC2A890B29981AC937BA68C73A1886DA1866CA1866BA1
              866BA1866BA2886E9C80648A69478A6845967452A98562B28A6488A6A07CE1F9
              7FE3FF72D5FF6BCEFF62C9FF5CC7FF5CC7FF5CC7FF5CC7FF5CC7FF5FC8FF55C5
              FF30B9FF32BDFF40C9FF54E2FF59E0F2AACDD200000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              00CAC4BFC4AB94CAAF96B59D84AD947CA88E76A2886DA1876CA1866BA1866BA1
              866BA2876CA0856A8F6E4E89654392704DA2805EB5896396978579D4E781E7FF
              74D7FF6DD0FF66CBFF5EC8FF5CC7FF5CC7FF5CC7FF5CC7FF5CC7FF60C9FF5DC7
              FF3CBFFF37C3FF4DD9FF5DEDFF00000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              00BDA996D0B69CB9A088AF967EA99078A38A6FA1876CA1866BA1866BA1866BA1
              866BA3896D9576578865428E6C499D7B59B38B65A68F717AC1CC81EAFF79DDFF
              6ED1FF68CCFF5FC8FF5DC7FF5CC7FF5CC7FF5CC7FF5CC7FF5CC7FF64CAFF67CB
              FF5ECCFF4ACFFF58EAFF6FD1E200000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              000000000000000000000000000000000000000000000000000000000000BCAE
              A1D2B89EBFA68DB19980AA9279A58C71A1876CA1866BA1866BA1866BA1866BA3
              886E9B7E608A67458B6846987554AD8865AF8D6984AFAE7EE6FD82E6FF73D6FF
              6BCEFF62CAFF5DC7FF5CC7FF5CC7FF5CC7FF5CC7FF5CC7FF5DC8FF65CAFF66CB
              FF6ED3FF6EE6FF55D2E894ADB200000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              000000000000000000000000000000000000000000000000000000C5BDB6C7AE
              97C6AC93B49B83AC947BA78E74A2886DA1876CA1866BA1866BA1866BA2886D9F
              83688D6C4C89664493714EA58360B8936EAE9D8990D2DC8EF9FF80E3FF71D5FF
              6ECFFF72CFFF5FC8FF5BC6FF5CC7FF5CC7FF5CC7FF5CC7FF5DC7FF5DC8FF59C7
              FF62CFFF7BEAFF6BD7E773888D00000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              000000000000000000000000000000000000000000000000000000C0AA95CFB4
              9BB89F86AF957DA89077A3896FA1866BA1866BA1866BA1866BA2876CA1876D91
              73548865428F6E4B9F7C5ABA956FAB92770000000000008DE9F68AF2FF76DAFF
              7FD7FF89D7FF6FCEFF5AC6FF5BC7FF5CC7FF5CC7FF5CC7FF5DC7FF5AC6FF57C5
              FF63CEFF7BE1FF8DF8FF62B4BE00000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              000000000000000000000000000000000000000000000000BDAD9DD2B99DBCA4
              8BB1987FAA9179A48B71A1876CA1866BA1866BA1866BA1866BA3886D987B5E88
              66448C6947997755B28E6AAE8E6DC4BCB4000000000000BAE2E888EEFB8CEBFF
              91E0FF8DDAFF83D5FF66CBFF5AC7FF5CC7FF5CC7FF5CC7FF5CC7FF5AC6FF5FC8
              FF6BCFFF74D8FF89ECFF86F6FD6098A000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              000000000000000000000000000000000000000000C0B6ACCCB29AC3AA91B39B
              82AC947AA68D73A2876DA1866BA1866BA1866BA1866BA2886D9D82668C6A498A
              6744957250A98663B7946F000000000000000000000000000000000000A3FFFF
              9EEBFF8FDEFF8BD9FF7CD2FF5FC9FF5BC7FF5CC7FF5CC7FF5CC7FF5CC7FF5DC7
              FF67CCFF6FD1FF7ADCFF8FF6FF75DDE869888C00000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              000000000000000000000000000000000000000000C3AC96CDB299B69D85AE95
              7DA88F76A3886DA2876CA1866BA1866BA1866BA1876CA1866B90715188654391
              6E4CA17F5DBB9672AB947C0000000000000000000000000000000000009DE9F0
              AAFEFF97E6FF8DDBFF89D7FF73CFFF5CC7FF5CC7FF5CC7FF5CC7FF5CC7FF5AC7
              FF5FC8FF6ACDFF71D4FF80E2FF91FDFF65BEC800000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              000000000000000000000000000000000000BDAB99D2B79EBBA288AF967EAA91
              79A48A70A1876CA1866BA1866BA1866BA1866BA2896E96795B8866438D6B489B
              7957B5916DAD8F71000000000000000000000000000000000000000000000000
              9DF2F7A5F6FF92E2FF8CDAFF85D5FF69CBFF5AC7FF5CC7FF5CC7FF5CC7FF5CC7
              FF5AC6FF61C9FF6CCFFF73D6FF87EAFF8BFBFF5E9FA900000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              000000000000000000000000000000BDB2A4D0B69DC1A78FB29981AB937AA58C
              72A2886DA1876CA1866BA1866BA1866BA3886E9C80638A69478A6845967452AC
              8966B3906D000000000000000000000000000000000000000000000000000000
              AFE2E9A7FFFF9FEEFF90DFFF8BD8FF7ED3FF62C9FF5AC7FF5CC7FF5CC7FF5CC7
              FF5BC7FF5BC7FF65CBFF6DD0FF78DBFF8EF3FF7BE7EE648A9000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              000000000000000000000000000000C5AE95C9B096B59C84AD947CA78F75A288
              6EA1866CA1866BA1866BA1866BA2876CA0856A8E6E4E89664392704EA4815FBA
              9772AD9983000000000000000000000000000000000000000000000000000000
              0000009FE4ECABFFFF99E7FF8DDDFF8AD8FF76D0FF5DC8FF5BC7FF5CC7FF5CC7
              FF5CC7FF5AC6FF5EC7FF69CDFF70D3FF7EE0FF91FCFF6AC9D57A898C00000000
              0000000000000000000000000000000000000000000000000000000000000000
              000000000000000000000000BEA996D0B69DB89F87AF967DA99078A3896FA187
              6CA1866BA1866BA1866BA1866BA2886D9475578865428F6C4A9D7B59B7926FAD
              9073000000000000000000000000000000000000000000000000000000000000
              000000D0E7EA9AEDF4A8F9FF94E3FF8CDBFF87D7FF6DCDFF5BC7FF5CC7FF5CC7
              FF5CC7FF5CC7FF5AC6FF61C9FF6BCEFF72D6FF84E7FF8EFEFF5FA7B200000000
              0000000000000000000000000000000000000000000000000000000000000000
              000000000000000000BCAC9ED4B99FBDA58CB19880AB9279A58B72A2876CA186
              6BA1866BA1866BA1866BA2896E9A7D608866458B6846987654AF8C69B18F6D00
              0000000000000000000000000000000000000000000000000000000000000000
              000000000000000000A2FAFEA2F1FF91E0FF8CD9FF82D5FF65CAFF5AC6FF5CC7
              FF5CC7FF5CC7FF5CC7FF5BC6FF64CAFF6DD0FF77DAFF8CF0FF82F1F9608E9600
              0000000000000000000000000000000000000000000000000000000000000000
              000000000000000000C9B097C6AC93B39B82AD947BA78D74A2886DA1866BA186
              6BA1866BA1866BA3886D9F84688C6B4B89664493714FA68461BA9572B19E8C00
              0000000000000000000000000000000000000000000000000000000000000000
              000000000000000000A4E5EAAAFFFF9BE9FF8FDDFF8BD9FF7AD2FF5FC7FF5BC6
              FF5CC7FF5CC7FF5CC7FF5BC6FF5DC7FF67CBFF6FD2FF7CDEFF90F9FF70D7E300
              0000000000000000000000000000000000000000000000000000000000000000
              000000000000C1AA95CEB49AB79E86AE967DA99077A3886DA1866BA1866BA186
              6BA1866BA2876CA2886D927354886543906D4B9F7D5BB99571AB927800000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000009CEBF3AAFDFF96E4FF8CDBFF89D8FF70CEFF5BC7
              FF5BC7FF5CC7FF5CC7FF5CC7FF5AC6FF5FC8FF6ACEFF71D5FF82E4FF91FFFF61
              B3BE8D9395000000000000000000000000000000000000000000000000000000
              000000BBAA9AD3B89EBCA38AB1987FAB927AA58A70A2876DA2876CA1876CA187
              6CA1876CA3896E987B5D8866448D6A48997755B38E6AAE8E6D00000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              000000000000000000000000000000A0F7FAA4F3FF92E0FF8CDAFF85D5FF68CB
              FF5CC7FF5DC8FF5DC8FF5DC8FF5DC8FF5CC7FF65CAFF6DCFFF76D8FF8AECFF88
              F8FF5D959E000000000000000000000000000000000000000000000000000000
              BEB3A9D0B69DC2AA90B49B83AA90779E82679E8366A085699F85699F85699F85
              69A0866A9A7E618A6A488A6844967251AA8663B89470B4A49600000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              000000000000000000000000000000ADE5EBAAFFFF9DEBFF90DEFF8DD9FF73CF
              FF59C6FF5AC7FF5AC7FF5AC7FF5AC7FF5AC6FF5DC7FF66CBFF6FD1FF7ADDFF90
              F7FF76E0EB68858A000000000000000000000000000000000000000000000000
              CFBAA7D8C2ACC2AD97B49B83A3876B90704F906F4F9171519171509171509171
              509272518B69478C6946947350A3805EBD9873AB947C00000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              000000000000000000000000000000000000A4EAEE9CFAFF87E1FF7AD7FF4FC6
              FF3CBFFF3EBFFF3EBFFF3EBFFF3EBFFF3EBFFF3FC0FF43C1FF4DC6FF5BCFFF6D
              DEFF7DF8FF5EBDCC838D8E000000000000000000000000000000000000CBBDAE
              E8D3BFD2BDA8C1A890B4997DA6886A94714E936F4B936F4C936F4C936F4C936F
              4C936F4C95704D9A7754A48361B7936FAD8F6F00000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              00000000000000000000000000000000000000000096F0F789EFFF66D9FF39C9
              FF36C6FF37C5FF37C5FF37C5FF37C5FF37C5FF37C5FF36C5FF37C7FF40CCFF52
              D7FF64E4FF70F4FF599DA8000000000000000000000000000000000000EBD5BC
              D6BCA2CFB295CBAE8FC5A788B28E6BAD8763AE8965AE8965AE8965AE8965AE89
              65AE8965AF8A66B18C68BA9572B79370B8ADA100000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              000000000000000000000000000000000000000000BEE4E894FBFF63ECFF4EE4
              FF4FE2FF4FE2FF4FE2FF4FE2FF4FE2FF4FE2FF4FE2FF4FE2FF4FE2FF4FE3FF54
              E7FF5AE9FF66F2FF69EDFB668E93000000000000000000000000C1AF9DC2AD97
              BDA790BEA991C0AA94B49B82AA8F73AC9175AC9175AC9175AC9175AC9175AC91
              75AC9175AC9175AC9075AE907300000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000009AD8E161D4EC60D2
              E863D2E963D2E963D2E963D2E963D2E963D2E963D2E963D2E962D2E962D2E961
              D2E960D1E961D0E868DBEF6FC1D1000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000FFFFFFFFFFFFFFFFE0000FFF
              FFFFFFFFC0000FFFFFFFFFFFE00007FFFFFFFFFFE00003FFFFFFFFFFF00001FF
              FFFFFFFFF80001FFFFFFFFFFF80000FFFFFFFFFFFC00007FFFFFFFFFFE00007F
              FFFFFFFFFE00003FFFFFFFFFFF00001FFFFFFFFFFF80001FFFFFFFFFFFC0000F
              FFFFFFFFFFC00007FFFFFFFFFFE00003FFFFFFFFFFE00003FFFFFFFFFFF80001
              FFFFFFFFFFF80001FFFFFFFFFFFC00007FFFFFFFFFFE00007FFFFFFFFFFE0000
              3FFFFFFFFFFF00001FFFFFFFFFFF80001FFFFFFFFFFF80000FFFFFFFFFFFC000
              07FFFFFFFFFFE00007F00003FFFFE00003E00007FFFFF00001E00007FFFFF800
              01C0000FFFFFF8000080001FFFFFFC000000001FFFFFFC000000003FFFFFF800
              0000007FFFFFF8000000007FFFFFF000000000FFFFFFE000000001FFFFFFE000
              000001FFFFFFC000000003FFFFFF8000000007FFFFFF8000000007FFFFFE0000
              00001FFFFFFE000000001FFFFFFC000000001FFFFFF8000000001FFFFFF80001
              80001FFFFFF0000180000FFFFFE00007E00007FFFFE00007E00007FFFFC0000F
              F00003FFFF80001FF00001FFFF80001FF80000FFFF00003FF80000FFFE00007F
              FE00007FFE00007FFE00007FFC0000FFFF00001FF80001FFFF80001FF00001FF
              FF80000FF00003FFFFC00007E00007FFFFE00007E00007FFFFE00003C0001FFF
              FFF00003FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF280000003000000060000000
              0100180000000000001B00000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              000000000000000000000000000000000000AB9C8F9E90839F9184A09285A092
              85A09285A09285A09285A09285A09285A09285A19285A0928400000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              00000000000000000000000000000000000000000000000000000000000000E8
              E2DCD3C2B2DFC3A8D3B89FD0B69CCFB499CFB499CFB499CFB499CFB499CFB499
              CFB499D0B69BD1B2930000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              000000000000000000000000000000000000EFEEECC9B4A0CEB59BBAA189B29A
              81B19880B29A81B39A82B39A82B39A82B39B83B1987EAB8D6FC3A48500000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000E2DCD6D2BCA6CDB9A5BCA893B7A38EB19C86B09A83B19A84B19A84
              B19B84AB937BAB9277C0A68BC5AA900000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              000000000000000000000000000000000000000000000000D6CABEDDC9B3C9B5
              A2BDAA96B09A84A2876CA2876DA2876DA2876DA1876CA89076B39B82CDB49900
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000F5F4F3D0BFAFDCC8B3C3AF9CBAA793A99077A08469A1856A
              A1856AA1866AA2876DAA9279B9A087D2B89D0000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              000000000000000000000000000000000000000000000000000000E7E2DED1BE
              AAD3BFABC0AC98B7A38EA48B71A0856AA1866BA1866BA0856AA48B70AD957CC1
              A88FCAAF94000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000D9D0C7DAC5B0CBB7A3BDAA97B29C86A1876C
              A1866AA1866BA1866BA0866AA78D74B19880CAB197B29A810000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              000000000000000000000000000000000000000000000000000000000000F7F7
              F7D2C3B4DDC9B3C5B19DBCA995AC947CA0856AA1866BA1866BA1866BA2876CA9
              9177B69D85D1B79C000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000ECE9E6D1BEABD7C2AEC1AD99B9A490
              A68D73A08569A1866BA1866BA0856AA38A6FAC937ABDA58CCEB4980000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              00000000DED7CFD5C0ABCEB9A6BFAB98B49F89A2886DA1856AA1866BA1866BA1
              856AA68C72B0977FC7AE95BCA288000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000FEFEFED3C5B9DDC8B3C6B39F
              BCA995AE9780A1856AA1866BA1866BA1866BA1866CA99077B49C83D0B69B0000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              00000000000000F0EFEDD1BFADDAC5B0C2AF9BBAA692A88F77A08569A1866BA1
              866BA0856AA3886EAB937ABBA38AD1B69B000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000E2DDD7D3BEAA
              D0BDA9BFAC98B6A18CA3896FA0856AA1866BA1866BA0856AA58C72AE967DC4AA
              92C4AA8F00000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              00000000000000000000000000D6CBC0DCC7B2C8B5A1BDAA96B09A83A1866BA1
              866BA1866BA1866BA0866BA88F75B29A81CEB39A000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000F6F5F5
              D0C1B0DBC7B3C3B09CBBA894AA9279A08569A1866BA1866BA0856AA2876DAA92
              78B89F86D2B89D00000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              00000000000000000000000000000000E9E5E1D1BEAAD4C1ACC0AD99B8A38FA5
              8C71A0856AA1866BA1866BA0856AA48A70AC957CBFA78ECCB196000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              000000DAD2C9D8C3AECBB8A4BEAB97B29D87A2876CA1866AA1866BA1866BA085
              6AA68E74B0987FCAB197B59C8300000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              00000000000000000000000000000000000000FCFCFCD1C2B4DECAB4C5B19DBC
              A995AC957DA0856AA1866BA1866BA1866AA1876CA99077B59D84D2B89D000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              000000000000EEECEAD1BEACD7C4AFC1AE9AB9A591A78E74A0856AA1866BA186
              6BA0856AA3896FAB947BBDA48BD1B79B000000000000000000000000E6EAEA8E
              DBE68FF8FF8AF0FF89F0FF89F0FF89F0FF89F0FF89F0FF88F0FF9BF6FFADFBFF
              A7FBFF92F3F80000000000000000000000000000000000000000000000000000
              00000000000000000000000000000000000000000000000000DFD9D2D6C2ACCE
              BBA7BFAB98B4A08AA3896EA1856AA1866BA1866BA0856AA58C72B0977EC6AD94
              B79B7E000000000000000000A0D5DB8DF6FF7DE0FF76DAFF76D9FF76D9FF76D9
              FF76D9FF76D9FF83DDFF94E4FF8BE7FF8BFAFFA2D6DA00000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              000000000000000000FFFFFFD5C9BDDCC7B2C5B19EBCAA96AC947DA0856AA186
              6BA1866BA1866BA1866BAA9178AB9075BA9A79000000000000BAD5D888ECFA7D
              E1FF6ED1FF6CCDFF7AD2FF7BD2FF7BD2FF7BD2FF76D0FF5AC7FF4CC7FF54D8FF
              63E7F90000000000000000000000000000000000000000000000000000000000
              00000000000000000000000000000000000000000000000000000000F4F4F3CA
              B8A8D1BEA9BEAB97B29D86A1866BA1866BA1866BA1866BA1866B9F8469957656
              A68666C09C7B8A7B6A78CAD985ECFF71D3FF67CBFF60C8FF63C9FF63C9FF63C9
              FF65CAFF48C0FF2DB9FF3BC8FF56EAFF00000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              000000000000000000000000E1E0DEC0AB97CAB49EBFAC98B29C86A1866BA186
              6BA1866BA1866BA2886C8F70508C6946A17F5DB48B6592B0A981E8FF75D7FF6A
              CDFF5FC8FF5BC7FF5AC6FF5AC6FF5DC7FF4DC2FF2EB9FF3AC3FF55E5FF000000
              0000000000000000000000000000000000000000000000000000000000000000
              00000000000000000000000000000000000000000000000000000000C0AF9FCC
              B298B39B84BAA691AC947BA0856AA1866BA1866BA2886D97795B886644957351
              AF86619A97837BDBF17ADFFF6DCFFF63C9FF5CC7FF5CC7FF5CC7FF5DC7FF58C6
              FF35BAFF35BFFF4CD9FF5BDFF300000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              000000000000000000C9BFB6CDB39ABAA188AB9379A89077A2886EA1866AA186
              6BA2876D9D8165896846906D4BA7825EA88D6E7EC8D67DE5FF70D3FF66CBFF5E
              C7FF5CC7FF5CC7FF5CC7FF5DC7FF3EBDFF31BCFF44CEFF5AE9FF000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              00000000000000000000000000000000000000000000D8D4D1C3AB94C2A88FAF
              967DA78D74A1866BA1856BA1866BA1876CA1866B8E6E4D8B69469F7D59B08965
              87B2B17EE6FF74D7FF69CDFF5FC8FF5CC7FF5CC7FF5CC7FF5FC8FF4AC1FF30BA
              FF3CC6FF57E9FF00000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              000000000000C0AD9BCAB097B29980A99077A3886EA1866BA1866BA1866BA288
              6D947657896643977553B08761959E8E7CDFF778DDFF6CCFFF62C9FF5CC7FF5C
              C7FF5CC7FF5EC7FF54C4FF32BAFF37C1FF50DEFF60D9EC000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              00000000000000000000000000000000000000C5B8ADCEB49AB79E85AB937AA4
              8A70A1866BA1866BA1866BA2886D9B7F62896745916F4DAA845FA390757DCFDF
              7CE3FF6FD2FF65CAFF5DC7FF5CC7FF5CC7FF5CC7FF59C6FF3ABCFF32BDFF47D2
              FF59E3FA00000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              D2CCC6C5AC95BEA58CAE957CA68D73A1876CA1866BA1866BA2876C9F85698C6B
              4A8D6B48A27E5BAE8B6783B9BE7EE6FF73D5FF69CDFF5EC8FF5CC7FF5CC7FF5C
              C7FF5EC8FF4EC2FF2EBAFF40C9FF58E9FF000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              00000000000000000000000000E4E3E1C1AD99C8AE94B0987FA88F76A2886DA1
              866BA1866BA1866BA2876D9273538967449B7856B189648FA49A7CE2FB78DBFF
              6BCEFF62C9FF5CC7FF5CC7FF5CC7FF5CC7FF61C9FF5FC9FF44C6FF4FDFFF0000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000C2B4A6
              CEB39AB49C83AA9279A48A6FA1866BA1866BA1866BA3886D997B5E8966449471
              4FAF8864A09A837ED8EB7FE4FF6FD2FF64CAFF5DC7FF5CC7FF5CC7FF5CC7FF5C
              C7FF63CAFF68CDFF6CDBFF59D9F1000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              00000000000000000000CCC4BDC8AF97BBA289AD947CA58B72A1866BA1866BA1
              866BA2876D9E82668B69498F6C4AA88561B18F6EADC1BF87ECFF80E5FF6FD1FF
              75D1FF60C9FF5BC7FF5CC7FF5CC7FF5CC7FF5DC8FF59C8FF70DDFF76E0F00000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000DDDAD7C2AC96C5AB91
              AF977EA78E75A2876DA1866BA1866BA1866CA1866C8F6F508B68459E7B59B491
              6D000000FEFEFEB1E7EF89F2FF84DEFF8CD9FF74D0FF5BC7FF5CC7FF5CC7FF5C
              C7FF5AC6FF5DC8FF70D4FF8AF1FF000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              00000000000000C2B1A0CCB298B39B82AA9178A3896EA1866BA1866BA1866BA2
              886D96795A896644967351B4906C000000000000000000F1F6F69AE6F1A3F8FF
              91DEFF87D7FF6BCCFF5AC7FF5CC7FF5CC7FF5BC7FF5FC9FF6CCFFF7BDEFF8CF8
              FF00000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000C7BDB3CDB39AB9A087AC937A
              A58A70A1866BA1866BA1866BA2876D9C81648A6846906D4BAC8865AE90720000
              00000000000000000000DAEDF09FF0F89FEEFF8DDBFF81D4FF61C9FF5BC7FF5C
              C7FF5CC7FF5BC7FF63CAFF6FD1FF83E7FF80EAF4000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              00D7D3CDC3AC96C1A78EAE957DA68D74A1876CA1866BA1866BA1876CA1866A8D
              6E4C8C6946A17E5CB08E6B000000000000000000000000000000000000BEE7EC
              A4F9FF97E6FF8CD9FF78D1FF5CC7FF5BC7FF5CC7FF5CC7FF5BC7FF66CCFF72D5
              FF8BF2FF00000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000E9E8E8C1AE9BCAB097B19981A99077A2886E
              A1866BA1866BA1866BA2876D947557896744987654B5916E0000000000000000
              00000000000000000000000000F7F8F9A9E8EEA7FAFF92E0FF89D7FF6ECDFF5B
              C7FF5CC7FF5CC7FF5BC7FF5EC8FF6ACEFF79DBFF8EF8FF000000000000000000
              000000000000000000000000000000000000000000000000000000000000C4B6
              AACEB39AB69D85AB927AA48A70A1866BA1866BA1866BA2886D9A7E6189674592
              704DAF8B68000000000000000000000000000000000000000000000000000000
              E4F0F29EEDF4A2F2FF8FDDFF84D6FF64CAFF5AC7FF5CC7FF5CC7FF5BC6FF61C9
              FF6ED0FF80E3FF86F2FC00000000000000000000000000000000000000000000
              0000000000000000000000D0CAC4C6AD94BDA58BAD957CA68C73A1876CA1866B
              A1866BA2876C9F84698C6B4A8D6A48A5825FB08E6D0000000000000000000000
              00000000000000000000000000000000000000C8E8ECA0F5FB9AE9FF8DDBFF7C
              D2FF5EC8FF5BC7FF5CC7FF5CC7FF5BC6FF65CBFF71D4FF89EEFF75D8E4000000
              000000000000000000000000000000000000000000000000E2E0DFC1AB97C7AD
              93B09880A88E76A2876DA1866BA1866BA1866BA2886D9273548A67459C7956B5
              926F000000000000000000000000000000000000000000000000000000000000
              000000FEFEFEB1E7EDA8FCFF94E2FF8BD9FF72CFFF5CC7FF5CC7FF5CC7FF5BC7
              FF5DC7FF69CDFF76D8FF8EF7FF00000000000000000000000000000000000000
              0000000000000000C1B1A2CDB398B49B82AA9178A48970A2886DA2886DA2886D
              A3896E987B5D88664494714FB38E6A0000000000000000000000000000000000
              00000000000000000000000000000000000000000000ECF3F4A5EEF3A4F6FF91
              DEFF88D7FF6ACCFF5EC8FF5EC8FF5EC8FF5EC7FF63CAFF6FD0FF80E0FF8CF8FF
              000000000000000000000000000000000000000000CDC5BED1B9A2C0A991AC92
              7A997B5D96795B987B5C987B5C987B5D9678598A6847906E4BA98663AD8E6E00
              0000000000000000000000000000000000000000000000000000000000000000
              000000000000000000D5ECEF9FF2F995EAFF86D9FF5FC9FF4BC2FF4DC2FF4DC2
              FF4DC2FF4EC2FF56C6FF65CFFF7EE8FF72E0ED00000000000000000000000000
              0000DEDCDAD4C2B0DBC6B0C1A990AF9376977553936F4B93704C93704C93704C
              936F4C977451A78462B5926E0000000000000000000000000000000000000000
              00000000000000000000000000000000000000000000000000000000C1E9EC92
              F5FF6FDDFF3CC9FF36C5FF37C5FF37C5FF37C5FF37C5FF37C5FF3FCAFF53D7FF
              6DF1FF000000000000000000000000000000C4B5A3E0C6ABCDB194C9AC8DB997
              75AD8763AE8864AE8864AE8864AE8864AE8964B08B67BC967100000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              000000000000000000000000F9FAFAA5E6EE6BF3FF4DE4FF4EE3FF4EE3FF4EE3
              FF4EE3FF4EE3FF4EE3FF4DE3FF51E6FF58E8FF5DDAED000000000000000000DE
              D8D1D9D0C5D7CCC0D8CEC2D8CEC3D0C3B5D0C3B5D0C3B5D0C3B5D0C3B5D0C3B5
              D0C3B5D0C3B50000000000000000000000000000000000000000000000000000
              00000000000000000000000000000000000000000000000000000000000000E7
              F0F1ADE3EEA9E2EEABE3EEABE3EEABE3EEABE3EEABE3EEABE3EEABE3EEAAE2EE
              A9E2EEA8E6F30000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              00000000000000000000000000000000000000000000000000000000FFFFFFFF
              FFFF0000C001FFFFFFFF00008001FFFFFFFF0000C000FFFFFFFF0000E0007FFF
              FFFF0000F0007FFFFFFF0000F0003FFFFFFF0000F8001FFFFFFF0000FC000FFF
              FFFF0000FC000FFFFFFF0000FE0007FFFFFF0000FF0003FFFFFF0000FF0003FF
              FFFF0000FF8001FFFFFF0000FFC000FFFFFF0000FFE000FFFFFF0000FFE0007F
              FFFF0000FFF0003FFFFF0000FFF8001FFFFF0000FFF8001FFFFF0000FFFC000F
              00030000FFFE000700030000FFFE000600070000FFFF0000000F0000FFFF0000
              001F0000FFFF0000001F0000FFFE0000003F0000FFFC0000007F0000FFFC0000
              007F0000FFF8000000FF0000FFF0000001FF0000FFE0000003FF0000FFE00000
              03FF0000FFC0000003FF0000FF80010003FF0000FF80038001FF0000FF0003C0
              00FF0000FE0007E000FF0000FC000FE0007F0000FC001FF0003F0000F8001FF8
              001F0000F0003FF8001F0000F0007FFC000F0000E0007FFE00070000C000FFFF
              00070000C001FFFF000300008003FFFF80030000FFFFFFFFFFFF000028000000
              20000000400000000100180000000000000C0000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              00000000000000BEAA98C7AE96B79F88B79F88B8A088B8A088B8A088BDA48CAF
              967D000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              00000000000000000000D1B89FC6AE96B79F87B79F87B8A088B9A189B59C83C1
              A181A7927D000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              00000000000000000000000000E0CAB5BEAB98AC967FA48B72A68E75A48B71AC
              937AD3B89C9B8E80000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              00000000000000000000000000D5C5B6DBC6B1B6A18DA1876C9F83679F8469A2
              886EB79F85C9AF94000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              00000000000000000000000000000000D5C1ADCEBBA6B09B85A08569A1866BA0
              856AA48B71C6AD93AE9881000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              00000000000000000000000000000000000000DDC8B2C2AF9BAA937A9F8368A1
              866BA0856AA99177D2B79C9D8D7C000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              00000000000000000000000000000000000000D7CABCDEC9B4B9A692A48B71A0
              8469A1856AA1876CB39A81CFB4999E958B000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              00000000000000000000000000000000000000000000D4C2AFD3BFAAB39E88A1
              856BA1856AA0856AA38A6FC1A88EB69E85000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              00000000000000000000000000000000000000000000000000D7C2ADC6B39FAC
              957E9F8368A1866BA0856AA78F75CFB599A3907D000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              00000000000000000000000000000000000000000000000000DBCFC4DFCBB5BC
              A995A68D749F8468A1866AA0866BAF977DD2B89C9B8F83000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              00000000000000000000000000000000000000000000000000000000D5C4B3D8
              C4AFB6A18CA2876CA0856AA0856AA2886EBBA389C2A88E000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              00000000000000000000000000000000000000000000000000000000000000D4
              C0ACCBB8A4AF98829F8468A1866AA0856AA58C73CBB096A9947F000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000E0CBB5C0AC99A991779F8468A1866BA0856BAB9379D4B99D9C8F80000000
              00000000000086DADF7ACFDC79CEDD79CEDD79CEDD7FD1DD97D7DD99DFDF86C8
              CC00000000000000000000000000000000000000000000000000000000000000
              0000D6C8B8DBC7B1B8A490A3896FA0856AA0856AA1886DB79F86C2A588A69D95
              00000094E2ED88F5FF7ADFFF80E1FF7FE1FF7FE0FF80E1FF86EFFF84FBFF0000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000D1BEABC9B6A3AB947C9F8468A1866BA2876D9D8266AE8D6BAA8467
              89B5BA86F3FF6ACDFF65C9FF6BCCFF6ECDFF5CC6FF36BCFF50E8FF97D9E30000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000C5AE98C5B29DAC957D9F8468A2876CA0856A8A6948A0764FA99A7F
              83E2F771D6FF60C8FF5AC6FF5BC7FF57C5FF30B8FF46DEFF72D9EA0000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000C5B19EC5AA8FAB937CA48A70A0856AA3886E907152926C48AB866184CAD4
              75E0FF64C9FF5BC7FF5CC7FF5FC8FF3DBCFF3BCDFF5ADEF40000000000000000
              00000000000000000000000000000000000000000000000000000000000000CD
              C0B5CFB49AAB9279A1866BA0856AA3896F987B5D8B6845AA7D5691B2AD77E5FF
              6ACEFF5DC7FF5BC7FF60C8FF4AC0FF32BFFF56E9FF0000000000000000000000
              00000000000000000000000000000000000000000000000000000000000000C8
              AF96B49B82A3896FA1866AA2886D9F8367896847A2764F9F9C867AE0F96FD5FF
              5FC7FF5BC7FF5EC8FF53C4FF32B9FF4EE5FF83D9E60000000000000000000000
              00000000000000000000000000000000000000000000000000000000C5AF9AC1
              A78DA58C72A0866BA1866BA2886D8E6E4E976F4BAA8C6B81D1E073DEFF63C9FF
              5BC7FF5CC7FF60C8FF47C0FF3ED2FF67DEF20000000000000000000000000000
              00000000000000000000000000000000000000000000000000C8B9ABCDB297A8
              9077A1876CA1866BA3896E9677598D6A46AF876190C2C278E5FF67CCFF5CC7FF
              5CC7FF5BC7FF61C8FF66D0FF58DCF60000000000000000000000000000000000
              00000000000000000000000000000000000000000000000000CDB299B0977EA2
              886EA0866AA2886E9C8064896745AF8962BFA891A0EAF785F1FF77D0FF62C9FF
              5AC6FF5CC7FF5BC6FF63CFFF7BE5F698B1B30000000000000000000000000000
              00000000000000000000000000000000000000000000C4AD96BCA288A48A71A0
              866AA2876CA1876B8C6B4BA17C57B1947700000000000096ECF89DEDFF7AD1FF
              5AC6FF5BC7FF5AC6FF62C8FF83E9FF75D1DB0000000000000000000000000000
              00000000000000000000000000000000000000C6B4A3C9AE94A78E75A1866BA1
              866BA3896E937455926F4BB08C69000000000000000000000000A4FAFF92DFFF
              6ECDFF59C6FF5CC7FF5BC6FF69CDFF8CF8FF73B6BE0000000000000000000000
              00000000000000000000000000000000D1C6BBCFB59AAD947BA2886EA1866BA3
              886E9A7D618A6845B38E68C2B2A1000000000000000000000000B7ECF2A8FDFF
              88D7FF64C9FF59C6FF5BC7FF5DC6FF72D6FF8AF6FF86ACB00000000000000000
              00000000000000000000000000000000C6AD95B79E84A48A70A1866AA2876CA0
              84698A6947A7825DB3997F000000000000000000000000000000000000A5EEF5
              A1F2FF7ED2FF5CC7FF5BC7FF5BC6FF61C8FF7FE5FF78DBE50000000000000000
              00000000000000000000000000C5B09DC5AB91A68D74A2866BA2876CA3886E90
              705197734FAE8D6C000000000000000000000000000000000000000000000000
              A1F5FC96E4FF74CFFF5AC6FF5CC7FF5CC6FF67CAFF8AF5FF72BEC80000000000
              00000000000000000000CBBEB1CFB49BA78D749F84689F8469A0866B95785A8C
              6946B48F6A000000000000000000000000000000000000000000000000000000
              C3EEF1A8FFFF8CD9FF64C8FF58C5FF59C5FF5BC5FF6ED1FF8DFAFF7EACB10000
              00000000000000000000E3CDB6C6AD93A281619875519A78559A7754987350B5
              9069B69F87000000000000000000000000000000000000000000000000000000
              000000ACEEF489F6FF45CEFF3ECBFF40CCFF40CCFF43CCFF60E5FF6FEBFB0000
              00000000000000C8B8A6D0B9A0BDA58AAC8D6FAA8B6DAB8C6DAB8C6DAE8E6FB8
              9C80000000000000000000000000000000000000000000000000000000000000
              00000000000081E4F154D7F559D6F459D6F459D6F458D6F458D6F467E7F96BBF
              CD00000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              00000000FFFFFFFF803FFFFFC01FFFFFE00FFFFFE00FFFFFF007FFFFF803FFFF
              F801FFFFFC01FFFFFE00FFFFFE007FFFFF007FFFFF803FFFFFC01C01FFC00803
              FFE00003FFE00007FFC0000FFF80001FFF80001FFF00003FFE00007FFE00003F
              FC01803FF803C01FF003C00FF007E00FE00FF007C01FF003C01FF803803FFC01
              FFFFFFFF28000000100000002000000001001800000000000003000000000000
              000000000000000000000000000000C5B6A8C1B3A6C4B7AAC1B4A70000000000
              00000000000000000000000000000000000000000000000000000000000000CE
              B8A3D0B79DBA9F85C9AC8EB5A697000000000000000000000000000000000000
              000000000000000000000000000000000000CCB8A3A68C729F8469C1A68B0000
              0000000000000000000000000000000000000000000000000000000000000000
              0000E4DAD0CFB9A29D8267AB9074B59E86000000000000000000000000000000
              000000000000000000000000000000000000000000D6C7B8C0A8909A7E63BA9F
              83B5A49200000000000000000000000000000000000000000000000000000000
              0000000000000000D0BDA9AE947B9D8166C2A78B000000000000000000000000
              000000000000000000000000000000000000000000000000E8E1D9D0BBA5A186
              6CA68B70B79F8600000000000000000000000000000000000000000000000000
              0000000000000000000000DCD0C4C1AA929D8266B29579B08F74A1D9E581F2FF
              7DE3FF71EBFF71DFF6000000000000000000000000000000000000CDBDADBBA2
              89A0866B966D49A19D8578E0FF5DC7FF51C4FF40D0FD00000000000000000000
              0000000000000000000000BFA489A0866C9977589C7D5A7FD2EA5FCEFF56C2FF
              46D6FF9DE2F1000000000000000000000000000000000000BDA48CA78C729B7F
              639F775091C6CB61D4FF5BC5FF5ED4FF6FD3EE00000000000000000000000000
              0000000000C5B19DB3977C9D8369A27E5BC2A991ACF2FF83E6FF57C3FF67D7FF
              88D2E3000000000000000000000000000000D4C7BABEA387A0866B9E7F5EA889
              6A000000000000A5EDFB74D8FF56C3FF7AE7FF00000000000000000000000000
              0000BFA58CA48B709C7F62A07D590000000000000000000000009AEEFF66CAFF
              5FC9FF7DE2FB000000000000000000C2AB93B59472A58463AE8963C7B5A30000
              00000000000000000000C5F1F87DF3FF4BD4FF60E8FF63D1E8000000EDE8E4E1
              D4C5D0BFAFD0BEADD6C6B8000000000000000000000000000000000000B1EDF8
              A2E7F9A1E5F8A6EEFB00000087FF000083FF0000C3FF0000C1FF0000E0FF0000
              F0FF0000F07F0000F8010000F8030000F8030000F0070000E0070000C1870000
              C3C3000083C1000007E100002800000060000000C00000000100080000000000
              0024000000000000000000000000000000000000000000000000800000800000
              00808000800000008000800080800000C0C0C000C0DCC000F0CAA60000204000
              00206000002080000020A0000020C0000020E000004000000040200000404000
              00406000004080000040A0000040C0000040E000006000000060200000604000
              00606000006080000060A0000060C0000060E000008000000080200000804000
              00806000008080000080A0000080C0000080E00000A0000000A0200000A04000
              00A0600000A0800000A0A00000A0C00000A0E00000C0000000C0200000C04000
              00C0600000C0800000C0A00000C0C00000C0E00000E0000000E0200000E04000
              00E0600000E0800000E0A00000E0C00000E0E000400000004000200040004000
              40006000400080004000A0004000C0004000E000402000004020200040204000
              40206000402080004020A0004020C0004020E000404000004040200040404000
              40406000404080004040A0004040C0004040E000406000004060200040604000
              40606000406080004060A0004060C0004060E000408000004080200040804000
              40806000408080004080A0004080C0004080E00040A0000040A0200040A04000
              40A0600040A0800040A0A00040A0C00040A0E00040C0000040C0200040C04000
              40C0600040C0800040C0A00040C0C00040C0E00040E0000040E0200040E04000
              40E0600040E0800040E0A00040E0C00040E0E000800000008000200080004000
              80006000800080008000A0008000C0008000E000802000008020200080204000
              80206000802080008020A0008020C0008020E000804000008040200080404000
              80406000804080008040A0008040C0008040E000806000008060200080604000
              80606000806080008060A0008060C0008060E000808000008080200080804000
              80806000808080008080A0008080C0008080E00080A0000080A0200080A04000
              80A0600080A0800080A0A00080A0C00080A0E00080C0000080C0200080C04000
              80C0600080C0800080C0A00080C0C00080C0E00080E0000080E0200080E04000
              80E0600080E0800080E0A00080E0C00080E0E000C0000000C0002000C0004000
              C0006000C0008000C000A000C000C000C000E000C0200000C0202000C0204000
              C0206000C0208000C020A000C020C000C020E000C0400000C0402000C0404000
              C0406000C0408000C040A000C040C000C040E000C0600000C0602000C0604000
              C0606000C0608000C060A000C060C000C060E000C0800000C0802000C0804000
              C0806000C0808000C080A000C080C000C080E000C0A00000C0A02000C0A04000
              C0A06000C0A08000C0A0A000C0A0C000C0A0E000C0C00000C0C02000C0C04000
              C0C06000C0C08000C0C0A000F0FBFF00A4A0A000808080000000FF0000FF0000
              00FFFF00FF000000FF00FF00FFFF0000FFFFFF00000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              000000000000000000000000000000000000000000000000A4A4A4A4A4A4A4A4
              A4A4A4A4A4A4A4A4A4A4A4A4A4A4A4A4A4A40000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000F5EDEDEDEDEDEDEDED
              EDEDEDEDEDEDEDEDEDEDEDEDEDEDEDEDF5A40000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              000000000000000000000000000000000000000000000007F5EDEDEDEDEDEDED
              EDEDEDEDEDEDEDEDEDEDEDEDEDEDEDEDEDED9B00000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              000000000000000000000000000000000000000000000000F5F5EDEDEDEDEDED
              EDEDEDEDEDEDEDEDEDEDEDEDEDEDEDEDEBEDF79B000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              00000000000000000000000000000000000000000000000000F5EDEDEDEDEDED
              EDEDEDEDEDEDEDEDEDEDEDEDEDEDEDABEBEBEDA4A40000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000007F5F5EDEDEDED
              ABABABABABABABABABABABABABEBABABABEBEBEDA40000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              000000000000000000000000000000000000000000000000000007F5F5F5EDED
              EDEDF7F7F7F7F7F7F7F7F7F7F7F7ABABEBEDEDF5EB9B00000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              000000000000000000000000000000000000000000000000000000F509F5F5ED
              EDEDEDF7F7F7F7F7F7F7F7F7F7ABABABABEDEDF5F59BA4000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              00000000000000000000000000000000000000000000000000000000F509F5F5
              EDEDEDF7ABABABABABABABABABABABABABEBEDEDF5ED9B000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              00000000000000000000000000000000000000000000000000000000070907F5
              F507EDEDF7ABABABABABABABABABABABABABEDEDF5F5EB9B0000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000ED09F5
              F5F5EDEDF7ABABABABABABABABABABABABABABEDEDF5F5AB9B00000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              000000000000000000000000000000000000000000000000000000000000F509
              F5F5EDEDEDF7ABABABABABABABABABABABABABEBEDEDF5EDA400000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000709
              07F5F5EDEDEDEDABABABABABABABABABABABABABEDEDEDF5ED9B000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000007
              09F5F5F5EDEDEDABABABABABABABABABABABABABABEDEDF5F5AB9B0000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              F509F5F5EDEDEDF7ABABABABABABABABABABABABABABEDEDF5ED9BA400000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              07F50907F5EDEDEDEDABABABABABABABABABABABABABEDEDEDF5ED9B00000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              000709F5F5F507EDEDABABABABABABABABABABABABABABEDEDF5F5AB9B000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              00000709F5F5EDEDEDF7ABABABABABABABABABABABABABABEDEDF5F59BA40000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              000000F509F5F5EDEDEDF7ABABABABABABABABABABABABABEDEDEDF5ED9B0000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000709F5F5F5EDEDEDF7ABABABABABABABABABABABABABEDEDF5F5EB9B00
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              000000000709F5F5F5EDEDF7ABABABABABABABABABABABABABABEDEDF5F5ABA4
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000F509F5F5EDEDEDF7ABABABABABABABABABABABABABEBEDEDF5EDA4
              A400000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              000000000007F507F5F5EDEDEDEDABABABABABABABABABABABABABEDEDEDF5ED
              9B00000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000709F5F5F5EDEDEDABABABABABABABABABABABABABABEDEDF5F5
              AB9B000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              00000000000000F509F5F5EDEDEDF7ABABABABABABABABABABABABABEBEDEDF5
              F59BA40000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000007F509F507EDEDEDEDABABABABABABABABABABABABABEDEDED
              F5ED9B0000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              00000000000000000709F5F5F507EDEDF7ABABABABABABABABABABABABABEDED
              F5F5AB9B00000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              000000000000000000F509F5F5F5EDEDF7ABABABABABABABABABABABABABABED
              EDF5F59BA4000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              00000000000000000000F509F5F5EDEDEDF7ABABABABABABABABABABABABABED
              EDEDF5ED9B000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000007F5F5F5F507EDEDF7ABABABABABABABABABABABABAB
              EDEDEDF5EB9B0000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              00000000000000000000000709F5F5F5EDEDEDABABABABABABABABABABABABAB
              ABEDEDF5F5ABA400000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              000000000000000000000000F509F5F5EDEDEDF7ABABABABABABABABABABABAB
              ABEBEDEDF5EDA4A4000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              00000000000000000000000007F50707F5EDEDEDEDABABABABABABABABABABAB
              ABABEDEDEDF5ED9B000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              000000000000000000000000000709F5F5F507EDEDABABABABABABABABABABAB
              ABABABEDEDF5F5AB9B0000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000F509F5F5EDEDEDF7ABABABABABABABABABAB
              ABABABABEDEDF5F59BA400000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              000000000000000000000000000007F509F507EDEDEDEDABABABABABABABABAB
              ABABABABEDEDEDF5ED9B00000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              000000000000000000000000000000070907F5F5EDEDEDF7ABABABABABABABAB
              ABABABABABEDEDF5F5AB9B000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              00000000000000000000000000000000F509F5F5F5EDEDEDABABABABABABABAB
              ABABABABABABEDEDF5F59BA400000000000000000000F7F7AEADADADADADADAD
              ADADADADADADADADADF7F7F7F7F7F7F7F7000000000000000000000000000000
              0000000000000000000000000000000000F509F5F5EDEDEDF7ABABABABABABAB
              ABABABABABABEBEDEDF5ED9B000000000000000000F7BFBFBFBFBFBFBFBFBFBF
              BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFB6000000000000000000000000000000
              0000000000000000000000000000000000070907F5F5EDEDEDEDABABABABABAB
              ABABABABABABABEDEDF5F5ED9B0000000000000000B7BFBFBFB7B7B7B7B7B7B7
              B7B7B7B7B7B7B7BFBFBFBFBFBFBFBFB700000000000000000000000000000000
              000000000000000000000000000000000000F509F5F5F5EDEDEDABABABABABAB
              ABABABABABABABABEDEDF5F5AB9B000000000000B6BFBFB7B7B7B7B7B7B7B7B7
              B7B7B7B7B7B7B7B7B7BFBFBFBFBFBFF700000000000000000000000000000000
              00000000000000000000000000000000000000F509F5F5EDEDEDF7ABABABABAB
              ABABABABABABABABEBEDEDEDEDA4A400000000F7BFBFB7B7B7B7B7B7B7B7B7B7
              B7B7B7B7B7B7B7B7B7B7B7BFBFBFB60000000000000000000000000000000000
              00000000000000000000000000000000000000070907F5F507EDEDEDABABABAB
              ABABABABABABABABABEDEBEBEBEB9B00000000BFBFB7B7B7B7B7B7B7B7B7B7B7
              B7B7B7B7B7B7B7B7B7B7B7BFBFB6000000000000000000000000000000000000
              00000000000000000000000000000000000000000709F5F5EDEDEDF7ABABABAB
              ABABABABABABABABABABABABEBEBAB5B0000B6BFB7B7B7B7B7B7B7B7B7B7B7B7
              B7B7B7B7B7777777777777B7B700000000000000000000000000000000000000
              000000000000000000000000000000000000000000F509F5F5EDEDEDABABABAB
              ABABABABABABABABAB9B9BABEBEBED9BA4ADBFBFB7B7B7B7B7B7B7B7B7B7B7B7
              B7B7B7B7777777777777B7BFF700000000000000000000000000000000000000
              000000000000000000000000000000000000000000F7F5F5F507EDEDABABABAB
              ABABABABABABABAB9B9A9B9BABEBEBEBA4B6BFB7B7B7B7B7B7B7B7B7B7B7B7B7
              B7B7B7777777777777B7BFB60000000000000000000000000000000000000000
              000000000000000000000000000000000000000000F7F5F507EDEDEDABABABAB
              ABABABABABABABAB9A9A9A9BABEBEBEBF7B7B7B7B7B7B7B7B7B7B7B7B7B7B7B7
              B7B7777777777777B7B7B7000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000F7F5EDEDED07EDEDABABABAB
              ABABABABABABAB9B9A9A9A9BABEBEBF7B7BFB7B7B7B7B7B7B7B7B7B7B7B7B7B7
              B7B77777777777B7B7BFF7000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000EDF5EDEDF7EDEDF7ABABABAB
              ABABABABABAB9B9A9A9A9BABABEBA4B6B7B7B7B7B7B7B7B7B7B7B7B7B7B7B7B7
              B7777777777777B7BFB600000000000000000000000000000000000000000000
              00000000000000000000000000000000000000F7F5EDEDEDABF7EDF7ABABABAB
              ABABABABAB9B9A9A9A9B9BABEBABF7B7B7B7B7B7B7B7B7B7B7B7B7B7B7B7B7B7
              777777777777B7BFB60000000000000000000000000000000000000000000000
              000000000000000000000000000000000000F7F5EDEDEDABABABF7ABABABABAB
              ABABABABAB9A9A9A9A9BABEBEBF7B7BFB7B7B7B7B7B7B7B7B7B7B7B7B7B7B7B7
              7777777777B7B7B7000000000000000000000000000000000000000000000000
              000000000000000000000000000000000000EDF5EDEDEDABABABABABABABABAB
              ABABABAB9B9A9A9A9BABABEBF7B6B7B7B7B7B7B7B7B7B7B7B7B7B7B7B7B7B777
              7777777777B7BFF7000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000EDF5EDEDEDABABABABABABABABABAB
              ABABAB9B9A9A9A9B9BABEBABB6B7B7B7B7B7B7B7B7B7B7B7B7B7B7B7B7B77777
              77777777B7BFB600000000000000000000000000000000000000000000000000
              00000000000000000000000000000000F7F5EDEDEDEBABABABABABABABABABAB
              ABABAB9A9A9A9A9BABEBABF7B7BFB7B7B7B7B7B7B7B7B7B7B7B7B7B7B7B77777
              777777B7B7B70000000000000000000000000000000000000000000000000000
              00000000000000000000000000000000F5EDEDEDEDABABABABABABABABABABAB
              ABAB9B9A9A9A9BABABEBF7B6B7B7B7B7B7B7B7B7B7B7B7B7B7B7B7B7B7777777
              777777B7BFF70000000000000000000000000000000000000000000000000000
              000000000000000000000000000000EDF5EDEDEDABABABABABABABABABABABAB
              AB9B9A9A9A9B9BABEBABB6B7B7B7B7B7B7B7B7B7B7B7B7B7B7B7B7B777777777
              7777B7BFB6000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000F7F5EDEDEDABABABABABABABABABABABABAB
              AB9A9A9A9A9BABEBABF7B7B7B7B7B7B7B7B7B7B7B7B7B7B7B7B7B77777777777
              77B7BFB600000000000000000000000000000000000000000000000000000000
              00000000000000000000000000F7F5EDEDEDEBABABABABABABABABABABABABAB
              9B9A9A9A9BABEBEBF7B6BFB7B7B7B7B7B7B7B7B7B7B7B7B7B7B7B77777777777
              B7B7B70000000000000000000000000000000000000000000000000000000000
              00000000000000000000000000EDF5EDEDEDABABABABABABABABABABABABAB9B
              9A9A9A9BABABEBA4B6B7B7B7B7B7B7B7B7B7B7B7B7B7B7B7B7B7777777777777
              B7BFF70000000000000000000000000000000000000000000000000000000000
              000000000000000000000000EDF5EDEDEDABABABABABABABABABABABABAB9B9A
              9A9A9A9BABEBABF7B7B7B7B7B7B7B7B7B7B7B7B7B7B7B7B7B7B77777777777B7
              BFB6000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000F7F5EDEDEDEBABABABABABABABABABABABABAB9A9A
              9A9A9BABEBEBF7B7BFB7B7B7B7B7B7B7B7B7B7B7B7B7B7B7B7B7B7777777B7B7
              B700000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000EDF5EDEDEDABABABABABABABABABABABABAB9B9A9A
              9A9BABABEBF7B6B7B7B7B7B7B7B7B7B7B7B7B7B7B7B7B7B7B7B7B7B77777B7B7
              F700000000000000000000000000000000000000000000000000000000000000
              00000000000000000000EDF5EDEDEDABABABABABABABABABABABABAB9B9A9A9A
              9B9BABEBABB6B7BFB7B7B7B7B7B7B7B7B7B7B7B7B7B7B7B7B7B7B7B7B7B7BFB6
              0000000000000000000000000000000000000000000000000000000000000000
              000000000000000000F7F5EDEDEDABABABABABABABABABABABABABAB9A9A9A9A
              9BABEBABF7B7BFB7B7B7B7B7B7B7B7B7B7B7B7B7B7B7B7B7B7B7B7B7B7BFB6A4
              0000000000000000000000000000000000000000000000000000000000000000
              000000000000000007EDEDEDEDEDABABABABABABABABABABABABAB9B9A9A9A9B
              ABABEBF7B6BFBFB7B7B7B7B7B7B7B7B7B7B7B7B7B7B7B7B7B7B7B7B7B7BFB6A4
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000EDF5EDEDEDABABABABABABABABABABABABAB9B9A9A9A9B9B
              ABEBAB0000BFBFB7B7B7B7B7B7B7B7B7B7B7B7B7B7B7B7B7B7B7B7B7B7BFBFAD
              A400000000000000000000000000000000000000000000000000000000000000
              00000000000000F7F5EDEDEDABABABABABABABABABABABABAB9B9A9A9A9A9BAB
              EBAB00000008BFBFB7B7B7B7B7B7B7B7B7B7B7B7B7B7B7B7B7B7B7B7B7B7BFB7
              AD00000000000000000000000000000000000000000000000000000000000000
              00000000000007F5EDEDEDEBABABABABABABABABABABABABAB9B9A9A9A9BABEB
              EBF700000000B6BFB7B7B7B7B7B7B7B7B7B7B7B7B7B7B7B7B7B7B7B7B7B7BFBF
              B6A4000000000000000000000000000000000000000000000000000000000000
              000000000000EDF5EDEDEDABABABABABABABABABABABABAB9B9A9A9A9BABABEB
              AB000000000000B7BFBFB7B7B7B7B7B7B7B7B7B7B7B7B7B7B7B7B7B7B7B7B7BF
              BFAEA40000000000000000000000000000000000000000000000000000000000
              0000000000F7F5EDEDEDABABABABABABABABABABABABAB9B9A9A9A9B9BABEBAB
              0000000000000000BFBFBFB7B7B7B7B7B7B7B7B7B7B7B7B7B7B7B7B7B7B7B7BF
              BFB7AD0000000000000000000000000000000000000000000000000000000000
              00000000F7F5EDEDEDEBABABABABABABABABABABABABAB9A9A9A9A9BABEBEBF7
              0000000000000000B6BFBFBFB7B7B7B7B7B7B7B7B7B7B7B7B7B7B7B7B7B7B7B7
              BFBFB6A400000000000000000000000000000000000000000000000000000000
              00000000EDF5EDEDEDABABABABABABABABABABABABAB9B9A9A9A9BABABEBAB00
              000000000000000000B7BFBFBFB7B7B7B7B7B7B7B7B7B7B7B7B7B7B7B7B7B7B7
              B7BFBFB6A4000000000000000000000000000000000000000000000000000000
              000000F7F5EDEDEDABABABABABABABABABABABABAB9B9A9A9A9B9BABEBAB0000
              00000000000000000000BFBFBFB7B7B7B7B7B7B7B7B7B7B7B7B7B7B7B7B7B7B7
              B7BFBFBFAD000000000000000000000000000000000000000000000000000000
              0000F7F5EDEDEDABABABABABABABABABABABABABAB9A9A9A9A9BABEBEB000000
              00000000000000000000B6BFBFBFB7B7B7B7B7B7B7B7B7B7B7B7B7B7B7B7B7B7
              B7B7BFBFB6A40000000000000000000000000000000000000000000000000000
              0007F5EDEDEDEBABABABABABABABABABABABABAB9B9A9A9A9BABABEBF7000000
              0000000000000000000000B7BFBFBFB7B7B7B7B7B7B7B7B7B7B7B7B7B7B7B7B7
              B7B7B7BFBFB6A400000000000000000000000000000000000000000000000000
              00EDF5EDEDEDABABABABABABABABABABABABAB9B9A9A9A9B9BABEBAB00000000
              000000000000000000000000BFBFBFB7B7B7B7B7B7B7B7B7B7B7B7B7B7B7B7B7
              B7B7B7B7BFBFADA4000000000000000000000000000000000000000000000000
              F7F5EDEDEDABABABABABABABABABABABABABAB9A9A9A9A9BABEBAB0000000000
              000000000000000000000000B6BFBFBFB7B7B7B7B7B7B7B7B7B7B7B7B7B7B7B7
              B7B7B7B7BFBFB7AD0000000000000000000000000000000000000000000000F7
              F5EDEDEDEBABABABABABABABABABABABABAB9A9A9A9A9BABEBEBF70000000000
              00000000000000000000000000B6BFBFBFB7B7B7B7B7B7B7B7B7B7B7B7B7B7B7
              B7B7B7B7B7BFBFB6A400000000000000000000000000000000000000000000ED
              F5EDEDEDABABABABABABABABABABABABAB9B9A9A9A9BABABEBAB000000000000
              0000000000000000000000000000B7BFBFB7B7B7B7B7B7B7B7B7B7B7B7B7B7B7
              B7B7B7B7B7B7BFBFAEA40000000000000000000000000000000000000000F7F5
              EDEDEDABABABABABABABABABABABABAB9B9A9A9A9B9BABEBAB00000000000000
              000000000000000000000000000000BFBFBFB7B7B7B7B7B7B7B7B7B7B7B7B7B7
              B7B7B7B7B7B7BFBFBFAD00000000000000000000000000000000000000F7F5ED
              EDEDABABABABABABABABABABABABABAB9A9A9A9A9BABEBEBF700000000000000
              000000000000000000000000000000B6BFBFBFB7B7B7B7B7B7B7B7B7B7B7B7B7
              B7B7B7B7B7B7B7BFBFB6A4000000000000000000000000000000000000EDF5ED
              EDEBABABABABABABABABABABABABAB9B9A9A9A9BABABEBAB0000000000000000
              00000000000000000000000000000000B7BFBFBFB7B7B7B7B7B7B7B7B7B7B7B7
              B7B7B7B7B7B7B7B7BFBFB6A400000000000000000000000000000000EDF5EDED
              EDABABABABABABABABABABABABAB9B9A9A9A9B9BABEBAB000000000000000000
              0000000000000000000000000000000000BFBFBFB7B7B7B7B7B7B7B7B7B7B7B7
              B7B7B7B7B7B7B7B7B7BFBFAD000000000000000000000000000000F7F5EDEDED
              ABABABABABABABABABABABABABAB9A9A9A9A9BABEBEB00000000000000000000
              0000000000000000000000000000000000B6BFBFBFB7B7B7B7B7B7B7B7B7B7B7
              B7B7B7B7B7B7B7B7B7BFBFB7A400000000000000000000000000F7F5EDEDEDED
              ABAB9BABABABABABABABABABAB9A9A9A9A9BABEBEBF700000000000000000000
              000000000000000000000000000000000000B7BFBFBFB7B7B7B7B7B7B7B7B7B7
              B7B7B7B7B7B7B7B7B7B7BFBFB6A4000000000000000000000000F5F5F5EDEDED
              AB9B9A9B9B9B9B9B9B9B9B9B9A9A9A9A9BABABEBAB0000000000000000000000
              00000000000000000000000000000000000000BFBFBFB7B7B7B7777777777777
              777777777777B7B7B7B7B7BFBFADA400000000000000000000070909F5F5EDEB
              AB9B9A9A9A9A9A9A9A9A9A9A9A9A9B9B9BABEBEB000000000000000000000000
              0000000000000000000000000000000000000000BFBFB7B7B777777777777777
              77777777777777777777B7B7B7BF9D000000000000000000F70907F5F5EDEBEB
              AB9B9B9B9B9B9B9B9B9B9B9B9B9B9BABABEBEBF7000000000000000000000000
              000000000000000000000000000000000000000008BFBFB7B777777777777777
              77777777777777777777B7B7B7BFB69B00000000000000000709F5F5EDEDEDED
              ABABABABABABABABABABABABABABABEBEBEBAB00000000000000000000000000
              000000000000000000000000000000000000000000B7BFBFB777777777777777
              77777777777777777777B7B7B7B7BFAEA40000000000000709F5EDEDEDEDEDEB
              ABEBEBEBEBEBEBEBEBEBEBEBEBEBEBEBEBAB0000000000000000000000000000
              00000000000000000000000000000000000000000000BFB7B7B7B7B7B7B7B7B7
              B7B7B7B7B7B7B7B7B7B7B7B7B7B7B7BFAD000000000000EDF7EDF7F7F7F7F7AB
              ABABABABABABABABABABABABABABABABAB000000000000000000000000000000
              00000000000000000000000000000000000000000000B6B6B6B6B6B6B6B6B6B6
              B6B6B6B6B6B6B6B6B6B6B6B6B6B6B6B6B6000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000FFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFF0000003FFFFFFFFFFFFFFFFE0000003FFFFFFFF
              FFFFFFFFE0000001FFFFFFFFFFFFFFFFF0000000FFFFFFFFFFFFFFFFF8000000
              7FFFFFFFFFFFFFFFF80000007FFFFFFFFFFFFFFFFC0000003FFFFFFFFFFFFFFF
              FE0000001FFFFFFFFFFFFFFFFF0000001FFFFFFFFFFFFFFFFF0000000FFFFFFF
              FFFFFFFFFF80000007FFFFFFFFFFFFFFFFC0000007FFFFFFFFFFFFFFFFC00000
              03FFFFFFFFFFFFFFFFE0000001FFFFFFFFFFFFFFFFF0000000FFFFFFFFFFFFFF
              FFF0000000FFFFFFFFFFFFFFFFF80000007FFFFFFFFFFFFFFFFC0000003FFFFF
              FFFFFFFFFFFE0000003FFFFFFFFFFFFFFFFE0000001FFFFFFFFFFFFFFFFF0000
              000FFFFFFFFFFFFFFFFF80000007FFFFFFFFFFFFFFFF80000007FFFFFFFFFFFF
              FFFFC0000003FFFFFFFFFFFFFFFFE0000001FFFFFFFFFFFFFFFFE0000001FFFF
              FFFFFFFFFFFFF0000000FFFFFFFFFFFFFFFFF80000007FFFFFFFFFFFFFFFFC00
              00007FFFFFFFFFFFFFFFFC0000003FFFFFFFFFFFFFFFFE0000001FFFFFFFFFFF
              FFFFFF0000000FFFFFFFFFFFFFFFFF0000000FFFFFFFFFFFFFFFFF80000007FF
              FFFFFFFFFFFFFFC0000003FFFFFFFFFFFFFFFFC0000003FFFFFFFFFFFFFFFFE0
              000001FFFFFFFFFFFFFFFFF0000000FFC0000007FFFFFFF8000000FF80000007
              FFFFFFF80000007F8000000FFFFFFFFC0000003F0000000FFFFFFFFE0000001E
              0000001FFFFFFFFE0000001E0000003FFFFFFFFF0000000C0000007FFFFFFFFF
              800000000000007FFFFFFFFF80000000000000FFFFFFFFFF80000000000001FF
              FFFFFFFF00000000000001FFFFFFFFFF00000000000003FFFFFFFFFE00000000
              000007FFFFFFFFFC0000000000000FFFFFFFFFFC0000000000000FFFFFFFFFF8
              0000000000001FFFFFFFFFF00000000000003FFFFFFFFFF00000000000003FFF
              FFFFFFE00000000000007FFFFFFFFFC0000000000000FFFFFFFFFF8000000000
              0001FFFFFFFFFF80000000000001FFFFFFFFFF00000000000003FFFFFFFFFE00
              000000000007FFFFFFFFFE00000000000007FFFFFFFFFC0000000000000FFFFF
              FFFFF80000000000000FFFFFFFFFF00000000000000FFFFFFFFFF00000018000
              0007FFFFFFFFE000000380000007FFFFFFFFC0000003C0000003FFFFFFFFC000
              0007E0000001FFFFFFFF8000000FF0000001FFFFFFFF0000000FF0000000FFFF
              FFFF0000001FF80000007FFFFFFE0000003FFC0000007FFFFFFC0000007FFC00
              00003FFFFFF80000007FFE0000001FFFFFF8000000FFFF0000000FFFFFF00000
              01FFFF0000000FFFFFE0000001FFFF80000007FFFFE0000003FFFFC0000003FF
              FFC0000007FFFFE0000003FFFF80000007FFFFE0000001FFFF8000000FFFFFF0
              000000FFFF0000001FFFFFF8000000FFFE0000003FFFFFF80000007FFC000000
              3FFFFFFC0000003FFC0000007FFFFFFE0000001FF8000000FFFFFFFF0000001F
              F0000000FFFFFFFF0000000FF0000001FFFFFFFF80000007E0000003FFFFFFFF
              C0000007E0000007FFFFFFFFC0000007FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF280000004800000090000000
              0100080000000000401400000000000000000000000000000000000000000000
              000080000080000000808000800000008000800080800000C0C0C000C0DCC000
              F0CAA6000020400000206000002080000020A0000020C0000020E00000400000
              004020000040400000406000004080000040A0000040C0000040E00000600000
              006020000060400000606000006080000060A0000060C0000060E00000800000
              008020000080400000806000008080000080A0000080C0000080E00000A00000
              00A0200000A0400000A0600000A0800000A0A00000A0C00000A0E00000C00000
              00C0200000C0400000C0600000C0800000C0A00000C0C00000C0E00000E00000
              00E0200000E0400000E0600000E0800000E0A00000E0C00000E0E00040000000
              400020004000400040006000400080004000A0004000C0004000E00040200000
              402020004020400040206000402080004020A0004020C0004020E00040400000
              404020004040400040406000404080004040A0004040C0004040E00040600000
              406020004060400040606000406080004060A0004060C0004060E00040800000
              408020004080400040806000408080004080A0004080C0004080E00040A00000
              40A0200040A0400040A0600040A0800040A0A00040A0C00040A0E00040C00000
              40C0200040C0400040C0600040C0800040C0A00040C0C00040C0E00040E00000
              40E0200040E0400040E0600040E0800040E0A00040E0C00040E0E00080000000
              800020008000400080006000800080008000A0008000C0008000E00080200000
              802020008020400080206000802080008020A0008020C0008020E00080400000
              804020008040400080406000804080008040A0008040C0008040E00080600000
              806020008060400080606000806080008060A0008060C0008060E00080800000
              808020008080400080806000808080008080A0008080C0008080E00080A00000
              80A0200080A0400080A0600080A0800080A0A00080A0C00080A0E00080C00000
              80C0200080C0400080C0600080C0800080C0A00080C0C00080C0E00080E00000
              80E0200080E0400080E0600080E0800080E0A00080E0C00080E0E000C0000000
              C0002000C0004000C0006000C0008000C000A000C000C000C000E000C0200000
              C0202000C0204000C0206000C0208000C020A000C020C000C020E000C0400000
              C0402000C0404000C0406000C0408000C040A000C040C000C040E000C0600000
              C0602000C0604000C0606000C0608000C060A000C060C000C060E000C0800000
              C0802000C0804000C0806000C0808000C080A000C080C000C080E000C0A00000
              C0A02000C0A04000C0A06000C0A08000C0A0A000C0A0C000C0A0E000C0C00000
              C0C02000C0C04000C0C06000C0C08000C0C0A000F0FBFF00A4A0A00080808000
              0000FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF0000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000EDF7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7
              F7F7A40000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000007F5F5F5F5F5F5F5F5F5
              F5F5F5F5F5F5F5F5F5F5A4000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000007
              F5EDEDEDEDEDEDEDEDEDEDEDEDEDEDEDEBEBEDA4000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000F5F5EDEDEDEDABEBEDEDEDEDEDEDEDABABABEBEDA4000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000F509F5EDEDF7F7F7F7F7F7F7F7F7F7
              ABEBEDF5ABA40000000000000000000000000000000000000000000000000000
              000000000000000000000000000000000000000000000000000709F5F5EDEDF7
              ABABABABABABABABABABEDF5F5A4000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000F50907F5EDEDABABABABABABABABABABEBEDF5EDA4000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000F509F5EDEDF7ABABABABABABABABABABEDEDF5ABA4
              0000000000000000000000000000000000000000000000000000000000000000
              00000000000000000000000000000000000000000909F507EDEDABABABABABAB
              ABABABABEDF5F5A4000000000000000000000000000000000000000000000000
              000000000000000000000000000000000000000000000000000000000709F5F5
              EDEDABABABABABABABABABABABEDF5EDA4000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000F509F5EDEDF7ABABABABABABABABABABEDEDF5EBA4000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000007F509F5EDEDF7ABABABABABABABABABABEDED
              F5AB000000000000000000000000000000000000000000000000000000000000
              000000000000000000000000000000000000000000000009F5F507EDF7ABABAB
              ABABABABABABABEDF5F5A4F70000000000000000000000000000000000000000
              00000000000000000000000000000000000000000000000000000000000000F5
              09F5EDEDEDABABABABABABABABABABEDEDF5EDA4000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000008F509F5EDEDF7ABABABABABABABABABABEDEDF5AB00000000
              0000000000000000000000000000000000000000000000000000000000000000
              000000000000000000000000000000000009F5F5EDEDEDABABABABABABABABAB
              ABEDF5F5A4F70000000000000000000000000000000000000000000000000000
              000000000000000000000000000000000000000000000000000709F5F5EDEDAB
              ABABABABABABABABABEBEDF5EDA4000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000F509F5EDEDF7ABABABABABABABABABABEDEDF5ABA4000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000007F509F5EDEDEDABABABABABABABABABABEDEDF59B00
              0000000000000000000000000000000000000000000000000000000000000000
              000000000000000000000000000000000000000709F5F5EDEDABABABABABABAB
              ABABABABEDF5EDA4000000000000000000000000000000000000000000000000
              00000000000000000000000000000000000000000000000000000000F509F5ED
              EDF7ABABABABABABABABABABEDEDF5EBA4000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000F509F5EDEDF7ABABABABABABABABABABEDEDF5ABA4000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              000000000000000000000000000709F5F5EDEDF7ABABABABABABABABABABEDF5
              F5A4000000000000000000000000000000000000000000000000000000000000
              00000000000000000000000000000000000000000000F50907EDEDEDABABABAB
              ABABABABABABEBEDF5EDA4000000000000000000000000000000000000000000
              00000000000000000000000000000000000000000000000000000000000000F5
              09F5EDEDF7ABABABABABABABABABABEDEDF5ABA4000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              00000000000000000907F507EDEDABABABABABABABABABABEDF5F59BF7000000
              0000000000000000000000000000000000000000000000000000000000000000
              000000000000000000000000000000000709F5F5EDEDABABABABABABABABABAB
              EBEDF5EDA4000000000000000000000000000000000000000000000000000000
              00000000000000000000000000000000000000000000000000F509F5EDEDF7AB
              ABABABABABABABABABEDEDF5ABA40000000000000000F7ADADADADADADADADAD
              ADADADF7F7F7F7F7F7F700000000000000000000000000000000000000000000
              0000F509F5EDEDEDABABABABABABABABABABEDEDF59B00000000000000B6BFBF
              BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFB60000000000000000000000000000
              000000000000000000000709F5F5EDEDF7ABABABABABABABABABABEDF5F5A400
              0000000000BFBFB7B7B7B7B7B7B7B7B7B7B7BFBFBFBFBFBFB600000000000000
              00000000000000000000000000000000000000F509F5EDEDEDABABABABABABAB
              ABABABEDEDEDABA4000000B6BFBFB7B7B7B7B7B7B7B7B7B7B7B7B7B7B7BFBFB6
              00000000000000000000000000000000000000000000000000000007F509F507
              EDF7ABABABABABABABABABABEBABEDAB000000B6BFB7B7B7B7B7B7B7B7B7B7B7
              B7B7B7B7B7BFBFB6000000000000000000000000000000000000000000000000
              000000000709F5EDEDEDABABABABABABABABABABABABEBEDA40000BFB7B7B7B7
              B7B7B7B7B7B7B7B7B777777777BFB60000000000000000000000000000000000
              00000000000000000000000000ED09F5EDEDABABABABABABABABAB9B9B9BABEB
              EBA4B7BFB7B7B7B7B7B7B7B7B7B7B77777777777BFB600000000000000000000
              000000000000000000000000000000000000000000EDF5F5EDEDABABABABABAB
              ABABAB9A9A9BABEBABB6BFB7B7B7B7B7B7B7B7B7B7B7B777777777BFB7000000
              00000000000000000000000000000000000000000000000000000000EDF5EDED
              07EDABABABABABABABAB9A9A9A9BABEBF7B7B7B7B7B7B7B7B7B7B7B7B7B77777
              7777B7BFB6000000000000000000000000000000000000000000000000000000
              00000007F5EDEDEDEDEDABABABABABABAB9B9A9A9BABEBF7B7BFB7B7B7B7B7B7
              B7B7B7B7B77777777777BFB60000000000000000000000000000000000000000
              0000000000000000000000EDF5EDABABABABABABABABABAB9B9A9A9AABEBABB6
              BFB7B7B7B7B7B7B7B7B7B7B7B777777777BFB700000000000000000000000000
              00000000000000000000000000000000000000F5EDEDABABABABABABABABABAB
              9A9A9A9BABABF7B7B7B7B7B7B7B7B7B7B7B7B7B777777777B7B7B60000000000
              0000000000000000000000000000000000000000000000000007F5EDEDABABAB
              ABABABABABABAB9B9A9A9BABEBF7B7BFB7B7B7B7B7B7B7B7B7B7B777777777B7
              BFB6000000000000000000000000000000000000000000000000000000000000
              00EDF5EDABABABABABABABABABAB9B9A9A9BABEBABB6BFB7B7B7B7B7B7B7B7B7
              B7B77777777777BFB60800000000000000000000000000000000000000000000
              0000000000000000EDF5EDEDABABABABABABABABABAB9A9A9A9BEBABF7B7B7B7
              B7B7B7B7B7B7B7B7B7B777777777B7B7B6000000000000000000000000000000
              00000000000000000000000000000007F5EDEDABABABABABABABABABAB9B9A9A
              9BABEBF7B7B7B7B7B7B7B7B7B7B7B7B7B777777777B7BF000000000000000000
              0000000000000000000000000000000000000000000000EDEDEDABABABABABAB
              ABABABAB9B9A9A9BABEBF7B6BFB7B7B7B7B7B7B7B7B7B7B7B777777777BFB600
              000000000000000000000000000000000000000000000000000000000000EDF5
              EDEBABABABABABABABABAB9B9A9A9A9BEBABB6B7B7B7B7B7B7B7B7B7B7B7B7B7
              B7777777BFB70700000000000000000000000000000000000000000000000000
              000000000007F5EDEDABABABABABABABABABAB9A9A9A9BABABF7B7B7B7B7B7B7
              B7B7B7B7B7B7B7B7B7B777B7B7B6000000000000000000000000000000000000
              00000000000000000000000000F5EDEDABABABABABABABABABAB9B9A9A9BABEB
              F7B6BFB7B7B7B7B7B7B7B7B7B7B7B7B7B7B7B7B7B60000000000000000000000
              0000000000000000000000000000000000000000EDF5EDEBABABABABABABABAB
              AB9B9A9A9BABEBABB6BFBFB7B7B7B7B7B7B7B7B7B7B7B7B7B7B7B7B7AD000000
              00000000000000000000000000000000000000000000000000000007F5EDEDAB
              ABABABABABABABABAB9A9A9A9BEBAB0000BFBFB7B7B7B7B7B7B7B7B7B7B7B7B7
              B7B7B7BFAEF70000000000000000000000000000000000000000000000000000
              000007F5EDEDABABABABABABABABABAB9B9A9A9BABEBF70000B7BFB7B7B7B7B7
              B7B7B7B7B7B7B7B7B7B7B7BFB7AD000000000000000000000000000000000000
              00000000000000000000EDF5EDABABABABABABABABABAB9B9A9A9BABEBAB0800
              0000B7BFB7B7B7B7B7B7B7B7B7B7B7B7B7B7B7B7BFB6A4000000000000000000
              0000000000000000000000000000000000EDF5EDEDABABABABABABABABABAB9A
              9A9A9BEBAB000000000000BFBFB7B7B7B7B7B7B7B7B7B7B7B7B7B7B7BFBFAE00
              00000000000000000000000000000000000000000000000007F5EDEDABABABAB
              ABABABABABAB9B9A9A9BABEBF700000000000008BFBFB7B7B7B7B7B7B7B7B7B7
              B7B7B7B7B7BFBFAD000000000000000000000000000000000000000000000000
              F5EDEDABABABABABABABABABAB9B9A9A9BABEBAB0000000000000000B7BFBFB7
              B7B7B7B7B7B7B7B7B7B7B7B7B7B7BFB6A4000000000000000000000000000000
              00000000000000EDF5EDEBABABABABABABABABAB9B9A9A9A9BEBAB0000000000
              0000000000BFBFB7B7B7B7B7B7B7B7B7B7B7B7B7B7B7BFBFB6A4000000000000
              0000000000000000000000000000EDF5EDEDABABABABABABABABABAB9A9A9A9B
              EBEB070000000000000000000008BFBFB7B7B7B7B7B7B7B7B7B7B7B7B7B7B7BF
              BFAD0000000000000000000000000000000000000000F5EDEDABABABABABABAB
              ABABAB9B9A9A9BABEBF7000000000000000000000000B7BFBFB7B7B7B7B7B7B7
              B7B7B7B7B7B7B7B7BFB7AD000000000000000000000000000000000007EDF5ED
              ABABABABABABABABABAB9B9A9A9BABEBAB0000000000000000000000000000BF
              BFB7B7B7B7B7B7B7B7B7B7B7B7B7B7B7B7BFB6A4000000000000000000000000
              00000000EDF5EDEDABABABABABABABABABAB9A9A9A9BEBAB0700000000000000
              0000000000000000BFBFB7B7B7B7B7B7B7B7B7B7B7B7B7B7B7BFBFADF7000000
              000000000000000000000000F5EDEDABABABABABABABABABAB9B9A9A9BABEBF7
              00000000000000000000000000000000B7BFBFB7B7B7B7B7B7B7B7B7B7B7B7B7
              B7B7BFBFAD0000000000000000000000000000F5EDEDABABABABABABABABABAB
              9B9A9A9BABEBAB000000000000000000000000000000000000BFBFBFB7B7B7B7
              B7B7B7B7B7B7B7B7B7B7B7BFB6A4000000000000000000000000EDF5EDEBABAB
              ABABABABABABABAB9A9A9A9BEBAB000000000000000000000000000000000000
              0000BFBFB7B7B7B7B7B7B7B7B7B7B7B7B7B7B7BFBFAE00000000000000000000
              0007F5EDEDABABABABABABABABABAB9A9A9A9BEBEBF700000000000000000000
              0000000000000000000008BFBFB7B7B7B7B7B7B7B7B7B7B7B7B7B7B7BFBFAD00
              000000000000000000F5F5EDEDAB9B9B9B9B9B9B9B9B9A9A9A9BABEBAB000000
              00000000000000000000000000000000000000BFBFB7B7B7B777777777777777
              77B7B7B7B7BFB6A40000000000000000F509F5EDEBAB9B9A9A9A9A9A9A9A9A9A
              9BABEBAB000000000000000000000000000000000000000000000000BFBFB7B7
              777777777777777777777777B7B7BFB6000000000000000709F5F5EDEDAB9B9B
              9B9B9B9B9B9B9B9BABEBEB070000000000000000000000000000000000000000
              0000000008BFBFB777777777777777777777777777B7BFBFAD00000000000709
              F5EDEDEDEDABABABABABABABABABEBEBEBEBF700000000000000000000000000
              0000000000000000000000000000BFB7B7B7B7B7B7B7B7B7B7B7B7B7B7B7B7BF
              B7AD0000000007070707F507EDF7EDEDEDEDEDEDEDEDEDEDED07000000000000
              00000000000000000000000000000000000000000000B6B6B6B6B6B6B6B6B6B6
              B6B6B6B6B6B6B6B6B7B600000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              00000000000000000000000000000000000000000000000000000000FFFFFFFF
              FFFFFFFFFF000000FFFFFFFFFFFFFFFFFF000000C00001FFFFFFFFFFFF000000
              C00001FFFFFFFFFFFF000000E00000FFFFFFFFFFFF000000F000007FFFFFFFFF
              FF000000F800003FFFFFFFFFFF000000F800003FFFFFFFFFFF000000FC00001F
              FFFFFFFFFF000000FE00000FFFFFFFFFFF000000FF00000FFFFFFFFFFF000000
              FF000007FFFFFFFFFF000000FF800003FFFFFFFFFF000000FF800003FFFFFFFF
              FF000000FFE00000FFFFFFFFFF000000FFE00000FFFFFFFFFF000000FFE00000
              FFFFFFFFFF000000FFF800003FFFFFFFFF000000FFF800003FFFFFFFFF000000
              FFFC00001FFFFFFFFF000000FFFC00001FFFFFFFFF000000FFFE00000FFFFFFF
              FF000000FFFF000007FFFFFFFF000000FFFF800003FFFFFFFF000000FFFF8000
              03FFFFFFFF000000FFFFC00001FFFFFFFF000000FFFFE00000FFFFFFFF000000
              FFFFF000007FFFFFFF000000FFFFF000007FFFFFFF000000FFFFF800003FC000
              03000000FFFFFC00003F800003000000FFFFFC00001F800007000000FFFFFE00
              000E00000F000000FFFFFE00000E00000F000000FFFFFF00000600001F000000
              FFFFFF80000000003F000000FFFFFF80000000007F000000FFFFFF0000000000
              7F000000FFFFFE0000000000FF000000FFFFFE0000000001FF000000FFFFFE00
              00000001FF000000FFFFF80000000003FF000000FFFFF80000000003FF000000
              FFFFF00000000007FF000000FFFFE0000000001FFF000000FFFFE0000000001F
              FF000000FFFFC0000000001FFF000000FFFF80000000003FFF000000FFFF8000
              0000007FFF000000FFFF00000000007FFF000000FFFE00001800003FFF000000
              FFFC00001800003FFF000000FFFC00001C00001FFF000000FFF800007E00001F
              FF000000FFF000007E00000FFF000000FFF00000FF000007FF000000FFE00001
              FF800003FF000000FFC00001FF800003FF000000FFC00003FFC00001FF000000
              FF000007FFE00000FF000000FF000007FFF000007F000000FF00000FFFF00000
              7F000000FE00001FFFF800003F000000FC00003FFFFC00003F000000F800003F
              FFFC00001F000000F800007FFFFE00000F000000F00000FFFFFF00000F000000
              E00000FFFFFF000007000000C00001FFFFFFC00003000000C00003FFFFFFC000
              03000000FFFFFFFFFFFFFFFFFF000000FFFFFFFFFFFFFFFFFF00000028000000
              4000000080000000010008000000000000100000000000000000000000000000
              0000000000000000000080000080000000808000800000008000800080800000
              C0C0C000C0DCC000F0CAA6000020400000206000002080000020A0000020C000
              0020E00000400000004020000040400000406000004080000040A0000040C000
              0040E00000600000006020000060400000606000006080000060A0000060C000
              0060E00000800000008020000080400000806000008080000080A0000080C000
              0080E00000A0000000A0200000A0400000A0600000A0800000A0A00000A0C000
              00A0E00000C0000000C0200000C0400000C0600000C0800000C0A00000C0C000
              00C0E00000E0000000E0200000E0400000E0600000E0800000E0A00000E0C000
              00E0E00040000000400020004000400040006000400080004000A0004000C000
              4000E00040200000402020004020400040206000402080004020A0004020C000
              4020E00040400000404020004040400040406000404080004040A0004040C000
              4040E00040600000406020004060400040606000406080004060A0004060C000
              4060E00040800000408020004080400040806000408080004080A0004080C000
              4080E00040A0000040A0200040A0400040A0600040A0800040A0A00040A0C000
              40A0E00040C0000040C0200040C0400040C0600040C0800040C0A00040C0C000
              40C0E00040E0000040E0200040E0400040E0600040E0800040E0A00040E0C000
              40E0E00080000000800020008000400080006000800080008000A0008000C000
              8000E00080200000802020008020400080206000802080008020A0008020C000
              8020E00080400000804020008040400080406000804080008040A0008040C000
              8040E00080600000806020008060400080606000806080008060A0008060C000
              8060E00080800000808020008080400080806000808080008080A0008080C000
              8080E00080A0000080A0200080A0400080A0600080A0800080A0A00080A0C000
              80A0E00080C0000080C0200080C0400080C0600080C0800080C0A00080C0C000
              80C0E00080E0000080E0200080E0400080E0600080E0800080E0A00080E0C000
              80E0E000C0000000C0002000C0004000C0006000C0008000C000A000C000C000
              C000E000C0200000C0202000C0204000C0206000C0208000C020A000C020C000
              C020E000C0400000C0402000C0404000C0406000C0408000C040A000C040C000
              C040E000C0600000C0602000C0604000C0606000C0608000C060A000C060C000
              C060E000C0800000C0802000C0804000C0806000C0808000C080A000C080C000
              C080E000C0A00000C0A02000C0A04000C0A06000C0A08000C0A0A000C0A0C000
              C0A0E000C0C00000C0C02000C0C04000C0C06000C0C08000C0C0A000F0FBFF00
              A4A0A000808080000000FF0000FF000000FFFF00FF000000FF00FF00FFFF0000
              FFFFFF0000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              00000000000000F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F70000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              000000000000EDEDF7EDEDEDEDEDEDEDEDEDEDEDEDEDEDA40000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              00000000000000F5F5F5EDEDEDEDEDEDEDEDEDEDEDEDEDEDA400000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000007F5EDEDEDEBEBEBEBEBEBEBEBEDEBABEBEDA4000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000F509EDEDF7F7EDF7F7F7F7F7F7ABABEBF5ABA40000000000
              0000000000000000000000000000000000000000000000000000000000000000
              000000000000000000F509F5EDEDEDABABABABABABABABEDEDF5A40000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000709F5EDEDF7ABABABABABABABABABEDF5EDA400000000
              0000000000000000000000000000000000000000000000000000000000000000
              000000000000000000000709F5EDEDF7ABABABABABABABABABEDF5ABA4000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000F509F5EDEDABABABABABABABABABEDEDF5AB000000
              0000000000000000000000000000000000000000000000000000000000000000
              00000000000000000000000709F5EDEDF7ABABABABABABABABABEDF5F5A40000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000709F5EDEDEDABABABABABABABABABEDF5EDA400
              0000000000000000000000000000000000000000000000000000000000000000
              000000000000000000000000000709F507EDABABABABABABABABABEBEDF5AB00
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000F5F5F5EDEDABABABABABABABABABEDEDF5A4
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000070907EDEDF7ABABABABABABABABABEDF5ED
              A400000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000709F5EDEDF7ABABABABABABABABEBEDF5
              ABA4000000000000000000000000000000000000000000000000000000000000
              00000000000000000000000000000008F509F5EDEDABABABABABABABABABEDED
              F5A4000000000000000000000000000000000000000000000000000000000000
              000000000000000000000000000000000009F5EDEDF7ABABABABABABABABABED
              F5EDA40000000000000000000000000000000000000000000000000000000000
              00000000000000000000000000000000000709F5EDEDEDABABABABABABABABAB
              EDF5AB0000000000000000000000000000000000000000000000000000000000
              000000000000000000000000000000000000070907EDEDABABABABABABABABAB
              EDEDF5ABF7000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000009F5F5EDF7ABABABABABABABAB
              ABEDF5F5A4000000000000000000000000000000000000000000000000000000
              000000000000000000000000000000000000000709F5EDEDEDABABABABABABAB
              ABABEDF5EDA40000000000000000000000000000000000000000000000000000
              00000000000000000000000000000000000000000709F507EDABABABABABABAB
              ABABEBEDF5ABA400000000000000000000000000000000000000000000000000
              000000000000000000000000000000000000000000F509F507EDABABABABABAB
              ABABABEDEDF5A400000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000709F5EDEDF7ABABABABAB
              ABABABABEDF5EDA4000000000000000000000000000000000000000000000000
              000000000000000000000000000000000000000000000709F5EDEDF7ABABABAB
              ABABABABABEDF5ABA40000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000F509F5EDEDABABABAB
              ABABABABABEDEDF5A400000000000000B6B6B6B6B6B6B6B6B6B6B6B6B6B6B6B6
              B6F70000000000000000000000000000000000000000000709F5EDEDF7ABABAB
              ABABABABABABEDF5F5A40000000000B6BFBFBFBFBFBFBFBFBFBFBFBFBFF6BFBF
              BF00000000000000000000000000000000000000000000000709F5EDEDEDABAB
              ABABABABABABABEDF5ABA400000000BFBFB7B7B7B7B7B7B7B7B7B7B7B7BFBFBF
              B6000000000000000000000000000000000000000000000000F509F5EDEDABAB
              ABABABABABABABEDEBED9B000000B7BFB7B7B7B7B7B7B7B7B7B7B7B7B7B7BFB7
              000000000000000000000000000000000000000000000000000709F5EDEDEDAB
              ABABABABABABABABABEBEDA400B6BFB7B7B7B7B7B7B7B7B7B7B7777777B7BF00
              00000000000000000000000000000000000000000000000000000709F5EDF7AB
              ABABABABABABAB9B9BABEBEBA4B7BFB7B7B7B7B7B7B7B7B7B777777777BFB600
              0000000000000000000000000000000000000000000000000000EDF5F5EDF7AB
              ABABABABABAB9B9A9AABEBABB6BFB7B7B7B7B7B7B7B7B7B777777777BFB60000
              0000000000000000000000000000000000000000000000000007F5EDED07EDAB
              ABABABABAB9B9A9A9BABEBF7B7B7B7B7B7B7B7B7B7B7B777777777B7B7000000
              00000000000000000000000000000000000000000000000000EDEDEDABF7ABAB
              ABABABABAB9A9A9AABEBF7B7B7B7B7B7B7B7B7B7B7B7B777777777BFB6000000
              000000000000000000000000000000000000000000000000EDF5EDABABABABAB
              ABABABAB9B9A9A9BEBABB6BFB7B7B7B7B7B7B7B7B7B777777777BFB600000000
              000000000000000000000000000000000000000000000007F5EDEBABABABABAB
              ABABAB9B9A9A9BABABF7B7B7B7B7B7B7B7B7B7B7B777777777BFB70000000000
              0000000000000000000000000000000000000000000000F5EDEDABABABABABAB
              ABABAB9A9A9BABEBF7B7B7B7B7B7B7B7B7B7B7B7B7777777B7BFB60000000000
              00000000000000000000000000000000000000000000EDF5EDABABABABABABAB
              ABAB9B9A9A9BEBABB6BFB7B7B7B7B7B7B7B7B7B777777777BFB6000000000000
              00000000000000000000000000000000000000000007F5EDEBABABABABABABAB
              AB9B9A9A9BEBABB6BFB7B7B7B7B7B7B7B7B7B777777777BFB600000000000000
              000000000000000000000000000000000000000000F5EDEDABABABABABABABAB
              AB9A9A9BABEBF7B7B7B7B7B7B7B7B7B7B7B7B7777777B7B7B600000000000000
              0000000000000000000000000000000000000007EDEDEDABABABABABABABABAB
              9A9A9AABEBF7B6B7B7B7B7B7B7B7B7B7B7B7B7777777BF000000000000000000
              00000000000000000000000000000000000000EDF5EDABABABABABABABABAB9B
              9A9A9BEBABB6BFB7B7B7B7B7B7B7B7B7B7B7B7B777BFB6000000000000000000
              00000000000000000000000000000000000007F5EDEDABABABABABABABAB9B9A
              9A9BABABF7B7B7B7B7B7B7B7B7B7B7B7B7B7B7B7B7B7F7000000000000000000
              000000000000000000000000000000000007EDEDEDABABABABABABABABAB9A9A
              9AABEBF7B6BFB7B7B7B7B7B7B7B7B7B7B7B7B7B7BFB6A4000000000000000000
              0000000000000000000000000000000000EDF5EDABABABABABABABABAB9B9A9A
              9BEBAB0000BFBFB7B7B7B7B7B7B7B7B7B7B7B7B7B7BFB6000000000000000000
              0000000000000000000000000000000007F5EDEBABABABABABABABAB9B9A9A9B
              EBAB07000008BFBFB7B7B7B7B7B7B7B7B7B7B7B7B7BFBFAD0000000000000000
              00000000000000000000000000000007F5EDEDABABABABABABABABAB9A9A9BAB
              EB000000000000BFBFB7B7B7B7B7B7B7B7B7B7B7B7B7BFB7AD00000000000000
              000000000000000000000000000000EDF5EDABABABABABABABABAB9B9A9A9BEB
              AB000000000000BFBFB7B7B7B7B7B7B7B7B7B7B7B7B7B7BFB600000000000000
              000000000000000000000000000007F5EDABABABABABABABABAB9B9A9A9BEBAB
              0000000000000000BFBFB7B7B7B7B7B7B7B7B7B7B7B7B7BFBFAD000000000000
              0000000000000000000000000007F5EDEDABABABABABABABABAB9A9A9BABEB00
              000000000000000008BFBFB7B7B7B7B7B7B7B7B7B7B7B7B7BFB7AD0000000000
              00000000000000000000000000EDF5EDABABABABABABABABAB9A9A9AABEBF700
              000000000000000000B7BFB7B7B7B7B7B7B7B7B7B7B7B7B7B7BFB6A400000000
              000000000000000000000000EDF5EDABABABABABABABABAB9B9A9A9BEBAB0000
              00000000000000000008BFBFB7B7B7B7B7B7B7B7B7B7B7B7B7B7BFAE00000000
              000000000000000000000007F5EDEDABABABABABABABAB9B9A9A9BABEB000000
              0000000000000000000000BFBFB7B7B7B7B7B7B7B7B7B7B7B7B7BFBFAD000000
              0000000000000000000000F5EDEDABABABABABABABABAB9A9A9AABEBF7000000
              0000000000000000000000B7BFBFB7B7B7B7B7B7B7B7B7B7B7B7B7BFB6000000
              00000000000000000000EDF5EDABABABABABABABABAB9B9A9A9BEBAB00000000
              000000000000000000000000BFBFB7B7B7B7B7B7B7B7B7B7B7B7B7B7BFB6F700
              00000000000000000007F5EDEBABABABABABABABAB9B9A9A9BEBAB0000000000
              00000000000000000000000000BFBFB7B7B7B7B7B7B7B7B7B7B7B7B7BFBFAD00
              000000000000000007F5EDEDABABABABABABABAB9B9A9A9BABEBF70000000000
              0000000000000000000000000008BFBFB7B7B7B7B7B7B7B7B7B7B7B7B7BFB7A4
              0000000000000000F509EDEDAB9A9A9B9B9B9B9B9A9A9BABEBAB000000000000
              0000000000000000000000000000BFBFB7B777777777777777777777B7B7BFB6
              A40000000000000709F5EDEBAB9A9A9A9A9A9A9A9A9BABEBAB00000000000000
              000000000000000000000000000000BFBFB77777777777777777777777B7B7BF
              AD00000000000009F5F5EDEDEBABABABABABABABABEBEBEB0700000000000000
              00000000000000000000000000000008BFBF7777777777777777777777B7BFBF
              BFAD00000000EDEDEDEDEDEDABABABABABABABABABABAB000000000000000000
              00000000000000000000000000000000B6B7B7B7B7B7B7B7B7B7B7B7B7B7B7B7
              B7B6000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              00000000FFFFFFFFFFFFFFFFE0000FFFFFFFFFFFC0000FFFFFFFFFFFE00007FF
              FFFFFFFFE00003FFFFFFFFFFF00001FFFFFFFFFFF80001FFFFFFFFFFF80000FF
              FFFFFFFFFC00007FFFFFFFFFFE00007FFFFFFFFFFE00003FFFFFFFFFFF00001F
              FFFFFFFFFF80001FFFFFFFFFFFC0000FFFFFFFFFFFC00007FFFFFFFFFFE00003
              FFFFFFFFFFE00003FFFFFFFFFFF80001FFFFFFFFFFF80001FFFFFFFFFFFC0000
              7FFFFFFFFFFE00007FFFFFFFFFFE00003FFFFFFFFFFF00001FFFFFFFFFFF8000
              1FFFFFFFFFFF80000FFFFFFFFFFFC00007FFFFFFFFFFE00007F00003FFFFE000
              03E00007FFFFF00001E00007FFFFF80001C0000FFFFFF8000080001FFFFFFC00
              0000001FFFFFFC000000003FFFFFF8000000007FFFFFF8000000007FFFFFF000
              000000FFFFFFE000000001FFFFFFE000000001FFFFFFC000000003FFFFFF8000
              000007FFFFFF8000000007FFFFFE000000001FFFFFFE000000001FFFFFFC0000
              00001FFFFFF8000000001FFFFFF8000180001FFFFFF0000180000FFFFFE00007
              E00007FFFFE00007E00007FFFFC0000FF00003FFFF80001FF00001FFFF80001F
              F80000FFFF00003FF80000FFFE00007FFE00007FFE00007FFE00007FFC0000FF
              FF00001FF80001FFFF80001FF00001FFFF80000FF00003FFFFC00007E00007FF
              FFE00007E00007FFFFE00003C0001FFFFFF00003FFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFF28000000300000006000000001000800000000000009000000000000
              0000000000000000000000000000000000008000008000000080800080000000
              8000800080800000C0C0C000C0DCC000F0CAA600002040000020600000208000
              0020A0000020C0000020E0000040000000402000004040000040600000408000
              0040A0000040C0000040E0000060000000602000006040000060600000608000
              0060A0000060C0000060E0000080000000802000008040000080600000808000
              0080A0000080C0000080E00000A0000000A0200000A0400000A0600000A08000
              00A0A00000A0C00000A0E00000C0000000C0200000C0400000C0600000C08000
              00C0A00000C0C00000C0E00000E0000000E0200000E0400000E0600000E08000
              00E0A00000E0C00000E0E0004000000040002000400040004000600040008000
              4000A0004000C0004000E0004020000040202000402040004020600040208000
              4020A0004020C0004020E0004040000040402000404040004040600040408000
              4040A0004040C0004040E0004060000040602000406040004060600040608000
              4060A0004060C0004060E0004080000040802000408040004080600040808000
              4080A0004080C0004080E00040A0000040A0200040A0400040A0600040A08000
              40A0A00040A0C00040A0E00040C0000040C0200040C0400040C0600040C08000
              40C0A00040C0C00040C0E00040E0000040E0200040E0400040E0600040E08000
              40E0A00040E0C00040E0E0008000000080002000800040008000600080008000
              8000A0008000C0008000E0008020000080202000802040008020600080208000
              8020A0008020C0008020E0008040000080402000804040008040600080408000
              8040A0008040C0008040E0008060000080602000806040008060600080608000
              8060A0008060C0008060E0008080000080802000808040008080600080808000
              8080A0008080C0008080E00080A0000080A0200080A0400080A0600080A08000
              80A0A00080A0C00080A0E00080C0000080C0200080C0400080C0600080C08000
              80C0A00080C0C00080C0E00080E0000080E0200080E0400080E0600080E08000
              80E0A00080E0C00080E0E000C0000000C0002000C0004000C0006000C0008000
              C000A000C000C000C000E000C0200000C0202000C0204000C0206000C0208000
              C020A000C020C000C020E000C0400000C0402000C0404000C0406000C0408000
              C040A000C040C000C040E000C0600000C0602000C0604000C0606000C0608000
              C060A000C060C000C060E000C0800000C0802000C0804000C0806000C0808000
              C080A000C080C000C080E000C0A00000C0A02000C0A04000C0A06000C0A08000
              C0A0A000C0A0C000C0A0E000C0C00000C0C02000C0C04000C0C06000C0C08000
              C0C0A000F0FBFF00A4A0A000808080000000FF0000FF000000FFFF00FF000000
              FF00FF00FFFF0000FFFFFF000000000000000000000000000000000000000000
              000000000000000000000000000000000000000000000000000000000000F7F7
              F7F7F7F7F7F7F7F7F7F7F7000000000000000000000000000000000000000000
              00000000000000000000000000F60709F5F5F5F5F5F5F5F5F5F5F50000000000
              000000000000000000000000000000000000000000000000000000000000F6F5
              F5EDEDEDEDEDEDEDEDEBABED0000000000000000000000000000000000000000
              00000000000000000000000000000008F5F5EDF7EDEDEDEDEDABABEDED000000
              0000000000000000000000000000000000000000000000000000000000000000
              0709F5EDEDABABABABABABEDF500000000000000000000000000000000000000
              00000000000000000000000000000000F6F509EDEDABABABABABABABEDF50000
              0000000000000000000000000000000000000000000000000000000000000000
              00F6F5F5EDF7ABABABABABABABEDED0000000000000000000000000000000000
              0000000000000000000000000000000000000709F5EDEDABABABABABABEDF5ED
              0000000000000000000000000000000000000000000000000000000000000000
              0000F60709F5EDABABABABABABABEDF500000000000000000000000000000000
              00000000000000000000000000000000000000F6F5F5EDEDABABABABABABABED
              F500000000000000000000000000000000000000000000000000000000000000
              0000000008F5F507F7ABABABABABABEBEDED0000000000000000000000000000
              0000000000000000000000000000000000000000FF0709F5EDF7ABABABABABAB
              EDF5000000000000000000000000000000000000000000000000000000000000
              0000000000F6F509EDEDABABABABABABABEDF500000000000000000000000000
              0000000000000000000000000000000000000000000008F5F507F7ABABABABAB
              ABABEDED00000000000000000000000000000000000000000000000000000000
              000000000000000709F5EDEDABABABABABABEDF5000000000000000000000000
              0000000000000000000000000000000000000000000000F60709F5EDABABABAB
              ABABABEDF5000000000000000000000000000000000000000000000000000000
              0000000000000000F6F5F5EDEDABABABABABABABEDF500000000000000000000
              000000000000000000000000000000000000000000000000000809F5EDEDABAB
              ABABABABEBF5ED00000000000000000000000000000000000000000000000000
              000000000000000000FF0709F5EDABABABABABABABEDF5000000000000000000
              0000000000000000000000000000000000000000000000000000F6F5F5EDEDAB
              ABABABABABABEDF500000000F6B6BFBFBFBFBFBFBFBFBFBFBFBF000000000000
              000000000000000000000008F5F507F7ABABABABABABEBEDEB000000B6BFB7B7
              B7B7B7B7B7B7B7B7BFB60000000000000000000000000000000000FF0709F5ED
              ABABABABABABABABEB000008BFB7B7B7B7B7B7B7B7B777B7B700000000000000
              000000000000000000000000F607F5EDEDABABABABABAB9BABEBA4B6BFB7B7B7
              B7B7B7B7777777BF0000000000000000000000000000000000000000F6EDF507
              EDABABABABAB9B9A9BEBF7BFB7B7B7B7B7B7B7777777B7000000000000000000
              000000000000000000000000EDF5EDEDABABABABAB9B9A9BABF7B7B7B7B7B7B7
              B7B7B7777777B7000000000000000000000000000000000000000007F5EDABAB
              ABABABABAB9A9AABABB6B7B7B7B7B7B7B7B7777777BF00000000000000000000
              0000000000000000000008EDEDABABABABABABAB9A9A9BEBF7B7B7B7B7B7B7B7
              B7777777BF000000000000000000000000000000000000000000EDF5EDABABAB
              ABABAB9B9A9BEBF7B7B7B7B7B7B7B7B7B77777B7B70000000000000000000000
              00000000000000000007F5EDABABABABABAB9B9A9AABABB6B7B7B7B7B7B7B7B7
              777777B7000000000000000000000000000000000000000007EDEDABABABABAB
              ABAB9A9A9BABF7B7B7B7B7B7B7B7B7777777BF00000000000000000000000000
              00000000000000F6EDEDEBABABABABABAB9B9A9BEBF7B7B7B7B7B7B7B7B7B7B7
              777700000000000000000000000000000000000000000007F5EDABABABABABAB
              9B9A9AABF7B7B7B7B7B7B7B7B7B7B7B7B7B70000000000000000000000000000
              00000000000007EDEDABABABABABABAB9A9AABEB07BFB7B7B7B7B7B7B7B7B7B7
              B7B70000000000000000000000000000000000000008EDEDABABABABABABAB9B
              9A9BEB00FF08BFB7B7B7B7B7B7B7B7B7B7BF0000000000000000000000000000
              000000000007F5EDABABABABABAB9B9A9BEB000000F6B7BFB7B7B7B7B7B7B7B7
              B7B7BF000000000000000000000000000000000007F5EDABABABABABABAB9A9A
              ABAB0000000008BFBFB7B7B7B7B7B7B7B7B7B7BF000000000000000000000000
              00000007EDEDABABABABABABAB9A9A9BEB00000000000008BFB7B7B7B7B7B7B7
              B7B7B7BF0000000000000000000000000000F6EDF5EDABABABABABAB9B9A9BEB
              00000000000000F6BFBFB7B7B7B7B7B7B7B7B7B7BF0000000000000000000000
              000007F5EDABABABABABAB9B9A9AAB000000000000000000F6BFBFB7B7B7B7B7
              B7B7B7B7B7BF000000000000000000000007EDEDABABABABABABAB9A9AABEB00
              00000000000000000008BFBFB7B7B7B7B7B7B7B7B7BFB6000000000000000000
              F6EDEDEDABABABABABAB9B9A9BEB0000000000000000000000FF08BFB7B7B7B7
              B7B7B7B7B7B7BF00000000000000000007F5EDABABABABABAB9B9A9AEB000000
              00000000000000000000F6BFBFB7B7B7B7B7B7B7B7B7B7BF0000000000000007
              F5EDAB9B9B9B9B9B9B9A9AABAB000000000000000000000000000008BFBFB7B7
              7777777777B7B7BFB70000000000080709EDAB9B9A9A9A9A9A9BABEB00000000
              00000000000000000000000008BFB77777777777777777B7BF00000000000709
              F5EDEBABABABABABABEBEB0000000000000000000000000000000000FFB7BF77
              77777777777777B7BFB700000008070707070707070707070707000000000000
              00000000000000000000000000F6080808080808080808080808000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              000000000000000000000000FFFFFFFFFFFF0000C001FFFFFFFF00008001FFFF
              FFFF0000C000FFFFFFFF0000E0007FFFFFFF0000F0007FFFFFFF0000F0003FFF
              FFFF0000F8001FFFFFFF0000FC000FFFFFFF0000FC000FFFFFFF0000FE0007FF
              FFFF0000FF0003FFFFFF0000FF0003FFFFFF0000FF8001FFFFFF0000FFC000FF
              FFFF0000FFE000FFFFFF0000FFE0007FFFFF0000FFF0003FFFFF0000FFF8001F
              FFFF0000FFF8001FFFFF0000FFFC000F00030000FFFE000700030000FFFE0006
              00070000FFFF0000000F0000FFFF0000001F0000FFFF0000001F0000FFFE0000
              003F0000FFFC0000007F0000FFFC0000007F0000FFF8000000FF0000FFF00000
              01FF0000FFE0000003FF0000FFE0000003FF0000FFC0000003FF0000FF800100
              03FF0000FF80038001FF0000FF0003C000FF0000FE0007E000FF0000FC000FE0
              007F0000FC001FF0003F0000F8001FF8001F0000F0003FF8001F0000F0007FFC
              000F0000E0007FFE00070000C000FFFF00070000C001FFFF000300008003FFFF
              80030000FFFFFFFFFFFF00002800000020000000400000000100080000000000
              0004000000000000000000000000000000000000000000000000800000800000
              00808000800000008000800080800000C0C0C000C0DCC000F0CAA60000204000
              00206000002080000020A0000020C0000020E000004000000040200000404000
              00406000004080000040A0000040C0000040E000006000000060200000604000
              00606000006080000060A0000060C0000060E000008000000080200000804000
              00806000008080000080A0000080C0000080E00000A0000000A0200000A04000
              00A0600000A0800000A0A00000A0C00000A0E00000C0000000C0200000C04000
              00C0600000C0800000C0A00000C0C00000C0E00000E0000000E0200000E04000
              00E0600000E0800000E0A00000E0C00000E0E000400000004000200040004000
              40006000400080004000A0004000C0004000E000402000004020200040204000
              40206000402080004020A0004020C0004020E000404000004040200040404000
              40406000404080004040A0004040C0004040E000406000004060200040604000
              40606000406080004060A0004060C0004060E000408000004080200040804000
              40806000408080004080A0004080C0004080E00040A0000040A0200040A04000
              40A0600040A0800040A0A00040A0C00040A0E00040C0000040C0200040C04000
              40C0600040C0800040C0A00040C0C00040C0E00040E0000040E0200040E04000
              40E0600040E0800040E0A00040E0C00040E0E000800000008000200080004000
              80006000800080008000A0008000C0008000E000802000008020200080204000
              80206000802080008020A0008020C0008020E000804000008040200080404000
              80406000804080008040A0008040C0008040E000806000008060200080604000
              80606000806080008060A0008060C0008060E000808000008080200080804000
              80806000808080008080A0008080C0008080E00080A0000080A0200080A04000
              80A0600080A0800080A0A00080A0C00080A0E00080C0000080C0200080C04000
              80C0600080C0800080C0A00080C0C00080C0E00080E0000080E0200080E04000
              80E0600080E0800080E0A00080E0C00080E0E000C0000000C0002000C0004000
              C0006000C0008000C000A000C000C000C000E000C0200000C0202000C0204000
              C0206000C0208000C020A000C020C000C020E000C0400000C0402000C0404000
              C0406000C0408000C040A000C040C000C040E000C0600000C0602000C0604000
              C0606000C0608000C060A000C060C000C060E000C0800000C0802000C0804000
              C0806000C0808000C080A000C080C000C080E000C0A00000C0A02000C0A04000
              C0A06000C0A08000C0A0A000C0A0C000C0A0E000C0C00000C0C02000C0C04000
              C0C06000C0C08000C0C0A000F0FBFF00A4A0A000808080000000FF0000FF0000
              00FFFF00FF000000FF00FF00FFFF0000FFFFFF00000000000000000000000000
              00000000000000000000000000000000000000000007EDF7F7EDEDEDEDAB0000
              00000000000000000000000000000000000000000000F5EDEDEDEDEDEDEDAB00
              00000000000000000000000000000000000000000000000907ABABABABABF5F7
              00000000000000000000000000000000000000000000000709F7ABABABABEDED
              000000000000000000000000000000000000000000000000F5F5EDABABABABED
              F700000000000000000000000000000000000000000000000009EDABABABABAB
              F5A400000000000000000000000000000000000000000000000709EDABABABAB
              EDF5F70000000000000000000000000000000000000000000000F5F5F7ABABAB
              ABEDED000000000000000000000000000000000000000000000000F5F5ABABAB
              ABABF5AB00000000000000000000000000000000000000000000000709EDABAB
              ABABABF5F700000000000000000000000000000000000000000000000709F7AB
              ABABABEDED000000000000000000000000000000000000000000000000F5F5F7
              ABABABABF5AB00000000000000000000000000000000000000000000000009ED
              ABABABABABF5F7000000B6B6B6B6B6B6B6B6B600000000000000000000000709
              EDABABABABEDEDF700B7BFB7B7B7B7B7BFBF00000000000000000000000000F5
              F5ABABABABABABABF7BFB7B7B7B7B777BFB600000000000000000000000000ED
              F5ABABABAB9A9AABB7B7B7B7B7B77777B700000000000000000000000000F5ED
              ABABABAB9B9AABB6B7B7B7B7B77777B70000000000000000000000000007F5AB
              ABABAB9B9A9BF7B7B7B7B7B77777BF0000000000000000000000000000EDEDAB
              ABABAB9A9AF7B7B7B7B7B7B77777B600000000000000000000000000EDEDABAB
              ABAB9A9AABB6B7B7B7B7B77777B70000000000000000000000000007F5ABABAB
              AB9B9AABB6B7B7B7B7B7B7B7B70000000000000000000000000000F5EBABABAB
              AB9AABEDBFBFB7B7B7B7B7B7B7F7000000000000000000000000EDEDABABABAB
              9A9BEB0000BFBFB7B7B7B7B7BFB6000000000000000000000007EDABABABAB9B
              9AEB00000000BFB7B7B7B7B7B7BFB600000000000000000007F5ABABABAB9B9A
              EB070000000008BFB7B7B7B7B7B7BFF70000000000000000EDEDABABABAB9AAB
              EB000000000000BFBFB7B7B7B7B7B7B600000000000000F5EDABABABAB9B9AAB
              0000000000000000BFB7B7B7B7B7B7BFB6000000000007F5ABABABAB9B9AEB00
              000000000000000008BFB7B7B7B7B7B7BFF70000000009EDAB9B9B9B9BEBED00
              000000000000000000BFBF7777777777B7BF000000F5F5EDABABABABABED0000
              00000000000000000000B7B7B7B7B7B7B7B7B600000000000000000000000000
              0000000000000000000000000000000000000000FFFFFFFF803FFFFFC01FFFFF
              E00FFFFFE00FFFFFF007FFFFF803FFFFF801FFFFFC01FFFFFE00FFFFFE007FFF
              FF007FFFFF803FFFFFC01C01FFC00803FFE00003FFE00007FFC0000FFF80001F
              FF80001FFF00003FFE00007FFE00003FFC01803FF803C01FF003C00FF007E00F
              E00FF007C01FF003C01FF803803FFC01FFFFFFFF280000001000000020000000
              0100080000000000000100000000000000000000000000000000000000000000
              000080000080000000808000800000008000800080800000C0C0C000C0DCC000
              F0CAA6000020400000206000002080000020A0000020C0000020E00000400000
              004020000040400000406000004080000040A0000040C0000040E00000600000
              006020000060400000606000006080000060A0000060C0000060E00000800000
              008020000080400000806000008080000080A0000080C0000080E00000A00000
              00A0200000A0400000A0600000A0800000A0A00000A0C00000A0E00000C00000
              00C0200000C0400000C0600000C0800000C0A00000C0C00000C0E00000E00000
              00E0200000E0400000E0600000E0800000E0A00000E0C00000E0E00040000000
              400020004000400040006000400080004000A0004000C0004000E00040200000
              402020004020400040206000402080004020A0004020C0004020E00040400000
              404020004040400040406000404080004040A0004040C0004040E00040600000
              406020004060400040606000406080004060A0004060C0004060E00040800000
              408020004080400040806000408080004080A0004080C0004080E00040A00000
              40A0200040A0400040A0600040A0800040A0A00040A0C00040A0E00040C00000
              40C0200040C0400040C0600040C0800040C0A00040C0C00040C0E00040E00000
              40E0200040E0400040E0600040E0800040E0A00040E0C00040E0E00080000000
              800020008000400080006000800080008000A0008000C0008000E00080200000
              802020008020400080206000802080008020A0008020C0008020E00080400000
              804020008040400080406000804080008040A0008040C0008040E00080600000
              806020008060400080606000806080008060A0008060C0008060E00080800000
              808020008080400080806000808080008080A0008080C0008080E00080A00000
              80A0200080A0400080A0600080A0800080A0A00080A0C00080A0E00080C00000
              80C0200080C0400080C0600080C0800080C0A00080C0C00080C0E00080E00000
              80E0200080E0400080E0600080E0800080E0A00080E0C00080E0E000C0000000
              C0002000C0004000C0006000C0008000C000A000C000C000C000E000C0200000
              C0202000C0204000C0206000C0208000C020A000C020C000C020E000C0400000
              C0402000C0404000C0406000C0408000C040A000C040C000C040E000C0600000
              C0602000C0604000C0606000C0608000C060A000C060C000C060E000C0800000
              C0802000C0804000C0806000C0808000C080A000C080C000C080E000C0A00000
              C0A02000C0A04000C0A06000C0A08000C0A0A000C0A0C000C0A0E000C0C00000
              C0C02000C0C04000C0C06000C0C08000C0C0A000F0FBFF00A4A0A00080808000
              0000FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF0000070707
              07000000000000000000000000F5F5EDEDF7000000000000000000000000F5AB
              ABED00000000000000000000000008F5ABABED00000000000000000000000007
              ED9BEDF7000000000000000000000000F5ABABED000000000000000000000000
              F6F5ABABED00000000000000000000000007EDABEBEBB6BFB7BFB70000000000
              0007EDAB9AF7B7B7B77700000000000000EDAB9B9BB7B7B777B7000000000000
              EDAB9B9BB6B7B7B7B7000000000000F5EBAB9BEDBFB7B7B7B6000000000007ED
              AB9BAB0000BFB7B7B70000000000EDAB9B9B00000000BFB7B7B7000000EDEBAB
              AB0700000000F6BF77BFB700F608F5F507000000000000F6B7B7BF0087FF0000
              83FF0000C3FF0000C1FF0000E0FF0000F0FF0000F07F0000F8010000F8030000
              F8030000F0070000E0070000C1870000C3C3000083C1000007E10000}
            Action = Action6
            ImageIndex = 12
            LastSession = 3
            ShortCut = 27
          end>
        AutoSize = False
      end
      item
        Items = <
          item
            Action = Amonth
            ImageIndex = 7
            LastSession = 92
          end>
      end>
    Images = ImageList
    Left = 523
    Top = 304
    StyleName = 'XP Style'
    object AAddform: TAction
      Tag = 70
      Category = #1601#1585#1605' '#1607#1575
      Caption = #1578#1593#1585#1610#1601' '#1601#1585#1605' '#1607#1575
      OnExecute = Action7Execute
    end
    object AAddRefrenceTable: TAction
      Tag = 71
      Category = #1601#1585#1605' '#1607#1575
      Caption = #1578#1593#1585#1610#1601' '#1580#1583#1575#1608#1604' '#1605#1585#1580#1593
      OnExecute = AAddRefrenceTableExecute
    end
    object AreportForm: TAction
      Tag = 72
      Category = #1601#1585#1605' '#1607#1575
      Caption = #1711#1586#1575#1585#1588' '#1575#1586' '#1601#1585#1605' '#1607#1575
      OnExecute = AreportFormExecute
    end
    object Ainsert: TAction
      Category = #1578#1605#1575#1587' '#1607#1575
      Caption = #1580#1583#1610#1583
      ImageIndex = 13
      ShortCut = 16429
      OnExecute = AinsertExecute
    end
    object Aproperty: TAction
      Category = #1578#1605#1575#1587' '#1607#1575
      Caption = #1580#1586#1574#1610#1575#1578
      ImageIndex = 14
      ShortCut = 32781
      OnExecute = ApropertyExecute
    end
    object Areport: TAction
      Category = #1711#1586#1575#1585#1588
      Caption = #1711#1586#1575#1585#1588
      ImageIndex = 8
      OnExecute = AreportExecute
    end
    object Action6: TAction
      Caption = #1582#1585#1608#1580
      ImageIndex = 12
      ShortCut = 27
      OnExecute = Action6Execute
    end
    object ADelete: TDataSetDelete
      Category = #1578#1605#1575#1587' '#1607#1575
      Caption = #1581#1584#1601
      Hint = 'Delete'
      ImageIndex = 4
      ShortCut = 16430
      OnExecute = ADeleteExecute
    end
    object Action2: TAction
      Category = #1711#1586#1575#1585#1588
      Caption = #1670#1575#1662
      ImageIndex = 9
    end
    object Agrouping: TAction
      Category = #1583#1587#1578#1607' '#1576#1606#1583#1610
      Caption = #1601#1593#1575#1604#1610#1578' '#1607#1575
      ImageIndex = 15
      OnExecute = AgroupingExecute
    end
    object Action3: TAction
      Category = #1583#1587#1578#1607' '#1576#1606#1583#1610
      Caption = #1588#1607#1585' '#1607#1575
      ImageIndex = 7
      OnExecute = Action3Execute
    end
    object AGroups: TAction
      Category = #1711#1585#1608#1607' '#1607#1575
      Caption = #1575#1606#1608#1575#1593' '#1601#1593#1575#1604#1610#1578
      ImageIndex = 15
      OnExecute = AGroupsExecute
    end
    object ACustom: TAction
      Category = #1711#1586#1575#1585#1588
      Caption = #1575#1606#1578#1582#1575#1576' '#1587#1578#1608#1606' '#1607#1575
    end
    object AWord: TAction
      Category = #1711#1586#1575#1585#1588
      Caption = #1575#1606#1578#1602#1575#1604' '#1604#1610#1587#1578' '#1576#1607' Word'
      ImageIndex = 16
    end
    object AnewGroup: TAction
      Category = #1711#1585#1608#1607' '#1607#1575
      Caption = #1587#1575#1586#1605#1575#1606' '#1610#1575' '#1711#1585#1608#1607' '#1580#1583#1610#1583
    end
    object AviewGroup: TAction
      Category = #1711#1585#1608#1607' '#1607#1575
      Caption = #1583#1610#1583#1606' '#1575#1591#1604#1575#1593#1575#1578' '#1575#1610#1606' '#1711#1585#1608#1607
    end
    object AdeleteGroup: TAction
      Category = #1711#1585#1608#1607' '#1607#1575
      Caption = #1581#1584#1601' '#1575#1610#1606' '#1587#1575#1586#1605#1575#1606
    end
    object Acity: TAction
      Category = #1711#1586#1575#1585#1588
      Caption = #1588#1607#1585' '#1607#1575' '#1608' '#1575#1587#1578#1575#1606' '#1607#1575
      OnExecute = AcityExecute
    end
    object AProduct: TAction
      Category = #1605#1581#1589#1608#1604#1575#1578
      Caption = #1579#1576#1578' '#1605#1581#1589#1608#1604#1575#1578
      OnExecute = AProductExecute
    end
    object AChangeProduct: TAction
      Category = #1605#1581#1589#1608#1604#1575#1578
      Caption = #1578#1594#1610#1610#1585#1605#1581#1589#1608#1604' '#1580#1575#1585#1610
      ImageIndex = 17
      ShortCut = 16458
      OnExecute = AChangeProductExecute
    end
    object AAddProduct: TAction
      Category = #1605#1581#1589#1608#1604#1575#1578
      Caption = #1575#1582#1578#1589#1575#1589' '#1610#1575' '#1581#1584#1601' '#1605#1588#1578#1585#1610#1575#1606' '#1605#1581#1589#1608#1604
      OnExecute = AAddProductExecute
    end
    object ASetPriority: TAction
      Category = #1711#1586#1575#1585#1588
      Caption = #1578#1606#1592#1610#1605' '#1575#1608#1604#1608#1610#1578' '#1575#1585#1587#1575#1604
    end
    object ACustomerFollowUp: TAction
      Category = #1578#1605#1575#1587' '#1607#1575
      Caption = #1575#1602#1583#1575#1605#1575#1578
      ImageIndex = 2
      OnExecute = ACustomerFollowUpExecute
    end
    object AContract: TAction
      Category = #1578#1605#1575#1587' '#1607#1575
      Caption = #1602#1585#1575#1585#1583#1575#1583' '#1607#1575
      ImageIndex = 16
      OnExecute = AContractExecute
    end
    object Amonth: TAction
      Category = #1583#1587#1578#1607' '#1576#1606#1583#1610
      Caption = #1605#1575#1607' '#1579#1576#1578
      ImageIndex = 7
      OnExecute = AmonthExecute
    end
    object Action4: TAction
      Category = #1711#1586#1575#1585#1588
      Caption = #1711#1586#1575#1585#1588' '#1575#1586' '#1601#1585#1608#1588' '#1576#1585' '#1575#1587#1575#1587' '#1578#1575#1585#1610#1582' '
    end
    object MakeLock: TAction
      Category = #1711#1586#1575#1585#1588
      Caption = #1575#1610#1580#1575#1583' '#1602#1601#1604' '#1587#1582#1578' '#1575#1601#1586#1575#1585#1610
    end
    object Action5: TAction
      Category = #1605#1581#1589#1608#1604#1575#1578
      Caption = #1601#1610#1588' '#1581#1602#1608#1602#1610
      Enabled = False
      OnExecute = Action5Execute
    end
    object AAtachments: TAction
      Category = #1578#1605#1575#1587' '#1607#1575
      Caption = #1662#1610#1608#1587#1578' '#1607#1575
      ImageIndex = 14
      OnExecute = AAtachmentsExecute
    end
    object acShowUserSequence: TAction
      Category = #1601#1585#1605' '#1607#1575
      Caption = #1601#1585#1605' '#1578#1593#1585#1610#1601' '#1705#1575#1585#1576#1585#1575#1606' '#1662#1575#1587#1582#1711#1608
      OnExecute = acShowUserSequenceExecute
    end
    object acShowPoorsantList: TAction
      Category = #1578#1593#1575#1585#1610#1601
      Caption = #1578#1593#1610#1610#1606' '#1662#1608#1585#1587#1575#1606#1578' '#1607#1575
      OnExecute = acShowPoorsantListExecute
    end
    object acShowRepTasks: TAction
      Category = #1711#1586#1575#1585#1588
      Caption = #1711#1586#1575#1585#1588' '#1705#1575#1585' '#1705#1575#1585#1576#1585#1575#1606
      OnExecute = acShowRepTasksExecute
    end
    object acSMSSettings: TAction
      Category = #1662#1610#1575#1605#1705
      Caption = #1578#1606#1592#1610#1605#1575#1578' '#1662#1610#1575#1605#1705
      OnExecute = acSMSSettingsExecute
    end
    object acShowSMSGeneral: TAction
      Category = #1662#1610#1575#1605#1705
      Caption = #1575#1585#1587#1575#1604' '#1593#1605#1608#1605#1610' '#1662#1610#1575#1605#1705
      OnExecute = acShowSMSGeneralExecute
    end
    object acShowSMSEndContract: TAction
      Category = #1662#1610#1575#1605#1705
      Caption = #1575#1585#1587#1575#1604' '#1662#1610#1575#1605#1705' '#1576#1575#1576#1578' '#1575#1578#1605#1575#1605' '#1602#1585#1575#1585#1583#1575#1583
      OnExecute = acShowSMSEndContractExecute
    end
    object acSMSBirthDate: TAction
      Category = #1662#1610#1575#1605#1705
      Caption = #1575#1585#1587#1575#1604' '#1662#1610#1575#1605#1705' '#1576#1575#1576#1578' '#1578#1575#1585#1610#1582' '#1578#1608#1604#1583
      OnExecute = acSMSBirthDateExecute
    end
    object acShowAutoSMSText: TAction
      Category = #1662#1610#1575#1605#1705
      Caption = #1578#1606#1592#1610#1605' '#1605#1578#1606' '#1662#1610#1575#1605#1705
      OnExecute = acShowAutoSMSTextExecute
    end
  end
  object keyboardTimer: TTimer
    Enabled = False
    Interval = 500
    OnTimer = keyboardTimerTimer
    Left = 331
    Top = 308
  end
  object Groups: TADOQuery
    Connection = Dm.YeganehConnection
    Parameters = <>
    SQL.Strings = (
      'SELECT 0 GroupID , '#39#39' GroupTitle , '#39'0'#39' GroupNo , 0 effect'
      'UNION '
      'Select * '
      'from Groups'
      'Where LTrim(RTrim(GroupTitle)) <> '#39#39
      'Order By GroupTitle')
    Left = 788
    Top = 139
    object GroupsGroupID: TIntegerField
      FieldName = 'GroupID'
    end
    object GroupsGroupTitle: TWideStringField
      Alignment = taRightJustify
      FieldName = 'GroupTitle'
      Size = 50
    end
    object GroupsGroupNo: TStringField
      Alignment = taRightJustify
      FieldName = 'GroupNo'
      Size = 50
    end
    object Groupseffect: TWordField
      FieldName = 'effect'
    end
  end
  object State: TADOTable
    Connection = Dm.YeganehConnection
    CursorType = ctStatic
    TableName = 'State'
    Left = 523
    Top = 128
    object StateStateID: TWordField
      FieldName = 'StateID'
      ReadOnly = True
    end
    object StateStateTitle: TWideStringField
      Alignment = taRightJustify
      FieldName = 'StateTitle'
      Size = 50
    end
  end
  object DState: TDataSource
    DataSet = adoState
    OnDataChange = DStateDataChange
    Left = 488
    Top = 131
  end
  object qryMyTasks: TADOQuery
    Connection = Dm.YeganehConnection
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      
        'SELECT     t.TaskID, t.CaseId, t.Comment, t.TodoDate, t.StatusId' +
        ', t.AssignedUserId, t.AssignedDate, t.EstimatedDate, Cases.CaseT' +
        'itle, ct.CaseTypeTitle, '
      
        '                      cp.CasePriorityTitle, ts.TaskStatusTitle, ' +
        'p.ProductTitle, ct.CaseTypeID, p.ProductID, Cases.RegisterUserID' +
        ', Cases.Completed, '
      
        '                      Cases.Comment AS CasesComment ,cp.CasePrio' +
        'rityID'
      'FROM         Tasks AS t LEFT OUTER JOIN'
      
        '                      Cases ON Cases.CaseID = t.CaseId LEFT OUTE' +
        'R JOIN'
      
        '                      TaskStatus AS ts ON ts.TaskStatusID = t.St' +
        'atusId LEFT OUTER JOIN'
      
        '                      CasePriority AS cp ON cp.CasePriorityID = ' +
        'Cases.CasePriorityId LEFT OUTER JOIN'
      
        '                      CaseType AS ct ON ct.CaseTypeID = Cases.Ca' +
        'seTypeID LEFT OUTER JOIN'
      
        '                      Product AS p ON p.ProductID = Cases.Produc' +
        'tId'
      ''
      ''
      
        '/*Select t.*,CaseTitle,ct.CaseTypeTitle,cp.CasePriorityTitle,ts.' +
        'TaskStatusTitle,p.ProductTitle'
      ',ct.CaseTypeId,p.ProductId,cases.registerUserId,cases.Completed'
      '  from Tasks t left join Cases on Cases .Caseid = t.caseid'
      #9#9#9#9'LEFT JOIN TaskStatus ts ON ts.TaskStatusID = t.StatusId'
      
        #9#9#9#9'LEFT JOIN CasePriority cp ON cp.CasePriorityID = cases.CaseP' +
        'riorityId'
      #9#9#9#9'LEFT JOIN CaseType ct ON ct.CaseTypeID = cases.CaseTypeID'
      'LEFT JOIN Product p ON p.ProductID = cases.ProductId*/')
    Left = 740
    Top = 356
    object qryMyTasksTaskID: TAutoIncField
      FieldName = 'TaskID'
      ReadOnly = True
    end
    object qryMyTasksCaseId: TIntegerField
      FieldName = 'CaseId'
    end
    object qryMyTasksComment: TWideStringField
      FieldName = 'Comment'
      Size = 300
    end
    object qryMyTasksTodoDate: TWideStringField
      FieldName = 'TodoDate'
      FixedChar = True
      Size = 10
    end
    object qryMyTasksStatusId: TIntegerField
      FieldName = 'StatusId'
    end
    object qryMyTasksAssignedUserId: TIntegerField
      FieldName = 'AssignedUserId'
    end
    object qryMyTasksAssignedDate: TWideStringField
      FieldName = 'AssignedDate'
      FixedChar = True
      Size = 10
    end
    object qryMyTasksEstimatedDate: TWideStringField
      FieldName = 'EstimatedDate'
      FixedChar = True
      Size = 10
    end
    object qryMyTasksCaseTitle: TWideStringField
      FieldName = 'CaseTitle'
      Size = 50
    end
    object qryMyTasksCaseTypeTitle: TWideStringField
      FieldName = 'CaseTypeTitle'
      Size = 50
    end
    object qryMyTasksCasePriorityTitle: TWideStringField
      FieldName = 'CasePriorityTitle'
      Size = 50
    end
    object qryMyTasksTaskStatusTitle: TWideStringField
      FieldName = 'TaskStatusTitle'
      Size = 50
    end
    object qryMyTasksProductTitle: TWideStringField
      FieldName = 'ProductTitle'
      Size = 100
    end
    object qryMyTasksCaseTypeId: TWordField
      FieldName = 'CaseTypeId'
      ReadOnly = True
    end
    object qryMyTasksProductId: TWordField
      FieldName = 'ProductId'
      ReadOnly = True
    end
    object qryMyTasksregisterUserId: TIntegerField
      FieldName = 'registerUserId'
    end
    object qryMyTasksCompleted: TBooleanField
      FieldName = 'Completed'
    end
    object qryMyTasksCasesComment: TWideStringField
      FieldName = 'CasesComment'
      Size = 250
    end
    object qryMyTasksCasePriorityID: TWordField
      FieldName = 'CasePriorityID'
      ReadOnly = True
    end
  end
  object dsMyTasks: TDataSource
    DataSet = qryMyTasks
    OnDataChange = dsMyTasksDataChange
    Left = 812
    Top = 316
  end
  object SpInsert_Task: TADOStoredProc
    Connection = Dm.YeganehConnection
    ProcedureName = 'Insert_Task'
    Parameters = <
      item
        Name = '@RETURN_VALUE'
        DataType = ftInteger
        Direction = pdReturnValue
        Precision = 10
        Value = Null
      end
      item
        Name = '@CaseId'
        Attributes = [paNullable]
        DataType = ftInteger
        Precision = 10
        Value = Null
      end
      item
        Name = '@Desc'
        Attributes = [paNullable]
        DataType = ftWideString
        Size = 500
        Value = Null
      end
      item
        Name = '@UserRefrence'
        Attributes = [paNullable]
        DataType = ftInteger
        Precision = 10
        Value = Null
      end>
    Left = 674
    Top = 508
  end
  object Timer1: TTimer
    Enabled = False
    Interval = 1000000
    OnTimer = Timer1Timer
    Left = 220
    Top = 372
  end
  object SetActiveUser: TTimer
    Enabled = False
    Interval = 58695
    OnTimer = SetActiveUserTimer
    Left = 990
    Top = 422
  end
  object MssCalendarPro1: TMssCalendarPro
    Style = mssGold
    Left = 810
    Top = 276
  end
  object RefereshCustomerTimer: TTimer
    Enabled = False
    Interval = 100000
    OnTimer = RefereshCustomerTimerTimer
    Left = 780
    Top = 475
  end
  object adoState: TADOQuery
    Connection = Dm.YeganehConnection
    Parameters = <>
    SQL.Strings = (
      'SELECT 0 [StateID] , '#39#39' [StateTitle]'
      'union'
      'SELECT [StateID]'
      '      ,[StateTitle]'
      '  FROM [dbo].[State]')
    Left = 570
    Top = 132
    object adoStateStateID: TIntegerField
      FieldName = 'StateID'
    end
    object adoStateStateTitle: TStringField
      FieldName = 'StateTitle'
    end
  end
end