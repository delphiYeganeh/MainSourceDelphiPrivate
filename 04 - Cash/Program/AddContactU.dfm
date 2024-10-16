inherited FrAddContact: TFrAddContact
  Left = 596
  Top = 133
  AutoScroll = False
  AutoSize = True
  BorderIcons = []
  Caption = #1578#1593#1585#1610#1601' '#1581#1587#1575#1576' '#1580#1583#1610#1583
  ClientHeight = 621
  ClientWidth = 623
  Color = clBtnFace
  OldCreateOrder = True
  PixelsPerInch = 96
  TextHeight = 13
  object xpPageControl: TPageControl [0]
    Left = 0
    Top = 0
    Width = 623
    Height = 621
    ActivePage = xpTabSheet2
    Align = alClient
    ParentShowHint = False
    ShowHint = True
    Style = tsFlatButtons
    TabHeight = 25
    TabOrder = 0
    TabWidth = 289
    object xpTabSheet1: TTabSheet
      Caption = #1580#1587#1578#1580#1608
      OnShow = xpTabSheet1Show
      object Panel1: TPanel
        Left = 0
        Top = 0
        Width = 615
        Height = 41
        Align = alTop
        BevelOuter = bvNone
        ParentColor = True
        TabOrder = 0
        DesignSize = (
          615
          41)
        object SearchTitle: TLabel
          Left = 512
          Top = 14
          Width = 89
          Height = 13
          Anchors = [akTop, akRight]
          Caption = #1606#1575#1605' '#1610#1575' '#1588#1605#1575#1585#1607' '#1581#1587#1575#1576
        end
        object SearchEdit: TEdit
          Left = 311
          Top = 10
          Width = 197
          Height = 21
          Anchors = [akTop, akRight]
          TabOrder = 0
          OnChange = SearchEditChange
          OnEnter = TEditEnter
          OnExit = TEditEnter
        end
      end
      object YDBGrid1: TYDBGrid
        Left = 0
        Top = 41
        Width = 615
        Height = 499
        Cursor = crHandPoint
        Align = alClient
        DataSource = dm.DSelect_Contact_Like
        FixedColor = 11446133
        Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit]
        ReadOnly = True
        TabOrder = 1
        TitleFont.Charset = ARABIC_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'Tahoma'
        TitleFont.Style = []
        OnDblClick = YDBGrid1DblClick
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
            FieldName = 'AccountNo'
            Title.Alignment = taCenter
            Title.Caption = #1588#1605#1575#1585#1607' '#1581#1587#1575#1576
            Width = 94
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'PersonalNo'
            Title.Caption = #1588#1605#1575#1585#1607' '#1603#1575#1585#1605#1606#1583#1610
            Width = 91
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'FullName'
            Title.Alignment = taCenter
            Title.Caption = #1606#1575#1605' '#1608' '#1606#1575#1605' '#1582#1575#1606#1608#1575#1583#1711#1610
            Width = 209
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'FatherName'
            Title.Alignment = taCenter
            Title.Caption = #1606#1575#1605' '#1662#1583#1585
            Width = 130
            Visible = True
          end>
      end
      object Panel2: TPanel
        Left = 0
        Top = 540
        Width = 615
        Height = 46
        Align = alBottom
        ParentColor = True
        TabOrder = 2
        object ShowDetailBtn: TBitBtn
          Left = 366
          Top = 8
          Width = 127
          Height = 28
          Caption = #1606#1605#1575#1610#1588' '#1605#1588#1582#1589#1575#1578' '
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clNavy
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          TabOrder = 0
          OnClick = ShowDetailBtnClick
          Glyph.Data = {
            A2070000424DA207000000000000360000002800000019000000190000000100
            1800000000006C07000000000000000000000000000000000000FFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFC4CBF1848384A5A29C7D7D7D80
            8080F7F7F700FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFBFCAFF00
            43FF4582E3D1D0C9D0CCCA7D7D7ECCCCCC00FFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFB0BFFF1450FF3488FF4EB2FF8BCDEFE9E8E4A5A29FCBCBCC00FFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFA7B7FF235DFF3182FF59B8FF68D1FF5EC7FF
            75A9DBA9A7A199979500FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFA6B8FF2660FF3181FF
            58B7FF6AD2FF64C8FF4CA8FF176BFC7085CECAC8C500FFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            ADBBFF1A55F63384FF58B9FF6AD3FF64CAFF4CA6FF1E6EFF4C78FFE0E6FFFFFF
            FF00FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFF4F3F08889921442BD2F82F25CBEFF6AD3FF64C9FF489FFF226E
            FF547CFFF0F0FFFFFFFFFFFFFF00FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0F0F0
            E2E3E4DEDFE0DFE0E1E7E7E7F7F7F7FFFFFFD7D7D7938F8890979B4E9AD162CE
            FC63C9FF49A1FF216DFF577EFFF1F2FFFFFFFFFFFFFFFFFFFF00FFFFFFFFFFFF
            FFFFFFE3E4E4B2B4B790949A807F7D7E7A747F7D79888A8D989CA1C5C6C7C8C8
            C8898989DAD3CEA7BABD4FA3D5409CF71D68FB5C81FFF2F2FFFFFFFFFFFFFFFF
            FFFFFFFFFF00FFFFFFFFFFFFC7C8C986898E958D7FC2AC8BE2C59AEED1A2ECCD
            A0D8BE94B1A0848F90943F4044A5A5A4EAEAEAE7E2DDA3B2C4235CD65B7EF9F8
            F8FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00FFFFFFC8C9CB818383BFAC8CEECD
            93F4CD8FF1CB8EEFCD92F1D099F4D19AF7D298EBC58EA6A3A055595EBEBEBFC3
            C1C3ACC1A18DA2BAF4F3FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00ECEC
            EC77797AC8B491F7D292F1CF92EDCD94EDCC94EDCB92EEC98FEDCB94F0D4A9F2
            D39FF5C882A8A7A93A3C3FA49FA498C497339E31F6FCF2FFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFF009B9C9FACA08EFFDB9BF0D39EEFD29EEFD39DF0D19DEE
            D099EFCE96EDC98EEEC78BF4D8B0F8D6A5EEC18492949ECAC2CABBE1B740C16D
            17971FFBFCF8FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF007E8081F5D7A0F2D7A4F1
            D9A6F1D8A7F1DAA7F1D6A8F1D6A2EFD19BF6E0BBE8DEBCDDD4A8E2E1C2E6E3C3
            DBDBBCD5DED69CC99642C16B3BC47226A12EE3F3E1FFFFFFFFFFFFFFFFFFFFFF
            FF009D978EFFE5ACF1DBADF3DDAFF3DDAFF3DDB0F3DDAEF1DBAAF0D7A3FFE3C0
            70AC6030A03E36A34337A74436A64032A54423962F3CD16C49E47E3ABE6A3EAF
            4AD8F0D5FFFFFFFFFFFFFFFFFF00B6AB94FFE7B4F5E2B8F5E4BAF5E6BFF6E7BF
            F5E3B8F4E0B4F2DBAAFFEBCE5CA75A34C76A37CD703ACE713DCF7440D07543D1
            7844D3774BE97F4CE2803ABE674AB555D4EFD3FFFFFFFFFFFF00BDB197FEEABB
            F7E9C7F9ECCDF8EECDF7ECCAF6E9C3F6E6BBF5DFB1FFEED35BA6574AD6783CDA
            7140DC7443DF7747E27A49E57D4CE77F4DE78150EB8452E6863DC06746B551DA
            F1D8FFFFFF00B1A995FFF1C2F9F0D6FCF2D8FAF2D4FBF0D1F9EFCBF7EAC4F5E3
            BAFFEFD758A65658DA833BD86F42DB7545DE7848E17B4BE47E4EE78150E98352
            EB8555F18956EB8A44C67442B34AF7FBF60092908AFFFDCEFBF6E1FAF7E4FBFA
            EDFDFAF1FCF3D6F8EECEF6EAC2FFF3DC53A7536BDD8F35DA6C3EDD7341E07644
            E37947E67C4AE98052EC8655EE885AF38C60FB9C2BBF45ADDDACFFFFFF009697
            9BE4DBB7FFFEE4FDFBF0FDFDF8FDFEF9FBF7DFFBF2D4F9EDCAFFF4DE52A75379
            E49E64E6926CE89670EB9C72EE9D77F2A282F2A75CEF8E5AF58E60FC9842D65D
            B0E0ACFFFFFFFFFFFF00D4D4D69C998FFCF9D9FFFEECFDFCF4FCFCF1FCF7DEFB
            F5DAF8ECCAFFF2D963AF5F4CD27465E08765DF8865DF886CE69064DF8597F4B6
            5BF48F5FFC9748D967A5D9A1FFFFFFFFFFFFFFFFFF00FAFAFBB1B1B2B5B2A3FA
            F8DEFFFFEDFCFBE9FCF9E5FAF2D7F7EAC5FFEED2C0D5A49DC77C92C38273AC73
            84BF849ED79D5CAC556FE79262FFA042D25DA3D7A0FFFFFFFFFFFFFFFFFFFFFF
            FF00FFFFFFEFF0F1B1B0B1A9A99CE6E0C5FFFFDFFFFAD8FFF5CDFFEEC2FFF1C4
            FFE9C4D5C3B19F979DD6CFD8FFFFFFFFFFFFB3D7AE73FCA530CC4EADDBA9FFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFF00FFFFFFFFFFFFF4F4F5BEBFBF9897939D9C92
            BEB6A0CDC1A4C8BD9FAFA6938D88817E7E7DC4C5C6FBFBFBFFFFFFFFFFFFA9DA
            A725BA3BAFDEAFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00FFFFFFFFFFFF
            FFFFFFFFFFFFEFF0F1DCDCDECFD0D0C8C9C9C8C8C9CECECFDDDEE0F6F6F7FFFF
            FFFFFFFFFFFFFFFFFFFFDCF2DCDEF0DDFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFF00}
        end
        object Okbtn: TBitBtn
          Left = 501
          Top = 8
          Width = 75
          Height = 28
          Caption = #1578#1575#1610#1610#1583
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clNavy
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          TabOrder = 1
          OnClick = YDBGrid1DblClick
        end
        object Cancelbutton: TBitBtn
          Left = 7
          Top = 8
          Width = 75
          Height = 28
          Action = AExit
          Caption = #1575#1606#1589#1585#1575#1601
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clNavy
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          TabOrder = 2
          Glyph.Data = {
            1E060000424D1E06000000000000360000002800000018000000150000000100
            180000000000E8050000000000000000000000000000000000000D0B038394FF
            0133F00606AEB7B4DDFFFFFFBEBBE7060EB10005A56D6FCAF9F9F5FFFCE8FFF6
            E7FFF6E9FFF6E9FFF7E9FFF7E9FFF7E9FFF7E9FFF8E9FFF8E9FFF8E9FFF5E6FF
            FFFF0B0700858FFF0E4FFF236FFF0008B42E166F161CA70747FF074BFF1C2ECF
            B5886FFFB428FF9E1AFF9F1DFF9F1DFF9E1CFF9E1CFF9D1CFF9D1BFF9C1AFF9C
            1AFF9B1DFF9305FFAD32161404C4B4E70012D72C66FF215EFF042AE1103FF019
            54FF022BDD3B47C4D8D6F6FFFFFFFFF1FFFFF1FFFFEFFFFFEDFFFFEBFFFFE9FF
            FFE7FFFFE3FFFFE1FBFFDEF9FFEEFFFF93000C0800FFFFD33536B90B2ACF2B67
            FF245AFF2059FF113DE32826AAC3B9DAFFFAEFFFE7E6FFE4E3FFE3E2FFE1E0FF
            DFDEFFDAD9FFDAD9FFD8D7FFD5D3FFD2D1FFCDC9FFE3FFFF9A04040000FFFFBF
            FFFFFF2920881B4CF92A62FF2158FF1532CD776EB2FFFFFFFFF0EDFFEBEBFFE9
            E9FFE7E7FFE5E5FFE1E1FFDFDFFFDEDEFFDBDBFFD8D8FFD6D6FFD0CEFFE6FFFF
            9A03050000FFFFC2E7E9FE11159F377BFF2352F11A4BEF1A53F12530C1B9B1D9
            FFFDF6FFEFEEFFEBEBFFE9E9FFE7E7FFE4E4FFE2E2FFE0E0FFDDDDFFDADAFFD7
            D7FFD1CFFFE8FFFF9A04050000FFFFCC7F7DDA1233D23470FA2330B93039B810
            40EA154BEE565AC2EBE4EBFFF9F4FFECEDFFECECFFE9E9FFE6E6FFE4E4FFE1E1
            FFDEDEFFDBDBFFD8D8FFD3D1FFE9FFFF9A03050000FFFFCF4E50C90734DB1B3C
            D4857BBFDBD6E53D47C60026E32948D9BEB9DEFFFFFAFFEFEFFFEDEDFFEBEBFF
            E8E8FFE4E4FFE2E2FFDFDFFFDCDCFFD9D9FFD4D2FFE9FFFF9A03050000FFFFC8
            B4B6EB3E4BCF3237BDF2EFF9FFFFFFE2DFF3363CCD4251D7D0CEE9FFFFFBFFF2
            F2FFF0F0FFEDEDFFEAEAFFE6E6FFE4E4FFE1E1FFDEDEFFDADAFFD5D3FFE9FFFF
            9A02050000FFFFC3FFFFFFDEDBF2B3B1E3FFFFFFFFFFFFFFFFFFEDECF5BFBBE2
            FBF9F7FFFBF9FFF4F4FFF2F2FFEFEFFFECECFFE8E8FFE5E5FFE2E2FFDFDFFFDC
            DCFFD6D5FFEBFFFF9B02050000FFFFC4F6FCFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFEFFF9F9FFF6F6FFF3F3FFF0F0FFEDEDFFE9E9FFE6E6
            FFE3E3FFE0E0FFDDDDFFD7D5FFECFFFF9B03050000FFFFC4F6FCFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEFEFFFBFBFFF7F7FFF4F4FFF1F1FF
            EDEDFFEAEAFFE7E7FFE4E4FFDFDFFFDDDDFFD7D5FFECFFFF9A03050000FFFFC4
            F6FCFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFCFCFFF7
            F7FFF4F4FFF2F2FFEDEDFFEBEBFFE8E8FFE5E5FFDFDFFFDEDEFFD8D6FFEDFFFF
            9A03050000FFFFC4F6FCFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFDFDFFF7F7FFF4F4FFF3F3FFEDEDFFEBEBFFE8E8FFE5E5FFDFDFFFDE
            DEFFD8D6FFEDFFFF9A03050000FFFFC4F6FCFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFDFDFFF7F7FFF4F4FFF3F2FFEDEDFFEAEAFFE7E7
            FFE4E4FFDFDFFFDDDDFFD7D6FFEDFFFF9A03050000FFFFC7FCFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEFFFFFBFDFFF9FAFF
            F4F4FFF1F2FFEEEFFFEBECFFE6E7FFE4E5FFDFDDFFF3FFFF9A04050000FFFFCA
            D2E9FFDAE9FBDAE8FBDAE8FBDAE8FBDAE8FBDAE8FBDAE8FBDAE7FADAE6F9DAE1
            F4DADFF3DADBEFDAD9EBDAD4E8DAD2E5DACFE2DACBDEDAC8DBD9C0D3DBD7FFFD
            9B09040408FFE66EF98F0BFC9615FB9716FB9716FB9716FB9716FB9716FB9716
            FB9615FB9615FB9715FB9715FB9614FB9714FB9714FB9613FB9713FB9713FB97
            12FB9711FB971AFF9700040304FFF391F38800EB7700ED7C00ED7B00ED7B00ED
            7B00ED7B00ED7B00ED7B00ED7B00ED7C00ED7C00ED7C00ED7C00ED7C00ED7C00
            ED7C00ED7C00ED7C00EB7C00F18500FF9500040100FFFEB5F9BD8AF5B97CF5BB
            81F5BB80F5BB80F5BB80F5BB80F5BB80F5BB80F5BB80F5BB80F5BB80F5BB80F5
            BB80F5BB80F5BB80F5BB80F5BB80F5BB84F5B97CF9A43DFE9D0B04090FFFFFD2
            FF9805FF9D09FF9E0DFF9E0DFF9E0DFF9E0DFF9E0DFF9E0DFF9E0DFF9E0DFF9E
            0DFF9E0DFF9E0DFF9E0DFF9E0DFF9E0DFF9E0DFF9E0DFF9F0EFF9B06FF9F13FF
            E4B9}
        end
      end
    end
    object xpTabSheet2: TTabSheet
      Caption = #1575#1591#1604#1575#1593#1575#1578' '
      object IdentityGroup: TGroupBox
        Left = 0
        Top = 0
        Width = 615
        Height = 257
        Align = alTop
        Caption = #1588#1606#1575#1587#1606#1575#1605#1607' '#1575#1610
        Font.Charset = ARABIC_CHARSET
        Font.Color = clNavy
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        TabOrder = 0
        DesignSize = (
          615
          257)
        object Label4: TLabel
          Left = 551
          Top = 72
          Width = 32
          Height = 13
          Alignment = taRightJustify
          Anchors = [akTop, akRight]
          BiDiMode = bdLeftToRight
          Caption = #1606#1575#1605' '#1662#1583#1585' '
          Font.Charset = ARABIC_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentBiDiMode = False
          ParentFont = False
        end
        object Label3: TLabel
          Left = 564
          Top = 17
          Width = 19
          Height = 13
          Alignment = taRightJustify
          Anchors = [akTop, akRight]
          BiDiMode = bdLeftToRight
          Caption = #1606#1575#1605'  '
          Font.Charset = ARABIC_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentBiDiMode = False
          ParentFont = False
        end
        object Label10: TLabel
          Left = 542
          Top = 151
          Width = 41
          Height = 13
          Alignment = taRightJustify
          Anchors = [akTop, akRight]
          BiDiMode = bdLeftToRight
          Caption = #1578#1575#1585#1610#1582' '#1578#1608#1604#1583
          Font.Charset = ARABIC_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentBiDiMode = False
          ParentFont = False
        end
        object Label5: TLabel
          Left = 502
          Top = 100
          Width = 81
          Height = 13
          Alignment = taRightJustify
          Anchors = [akTop, akRight]
          BiDiMode = bdLeftToRight
          Caption = #1588#1605#1575#1585#1607' '#1588#1606#1575#1587#1606#1575#1605#1607
          Font.Charset = ARABIC_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentBiDiMode = False
          ParentFont = False
        end
        object Label2: TLabel
          Left = 525
          Top = 44
          Width = 58
          Height = 13
          Alignment = taRightJustify
          Anchors = [akTop, akRight]
          BiDiMode = bdLeftToRight
          Caption = #1606#1575#1605' '#1582#1575#1606#1608#1575#1583#1711#1610
          Font.Charset = ARABIC_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentBiDiMode = False
          ParentFont = False
        end
        object Label7: TLabel
          Left = 542
          Top = 179
          Width = 41
          Height = 13
          Alignment = taRightJustify
          Anchors = [akTop, akRight]
          BiDiMode = bdLeftToRight
          Caption = #1605#1581#1604' '#1578#1608#1604#1583
          Font.Charset = ARABIC_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentBiDiMode = False
          ParentFont = False
        end
        object PersonalNo: TLabel
          Left = 512
          Top = 207
          Width = 71
          Height = 13
          Anchors = [akTop, akRight]
          BiDiMode = bdRightToLeft
          Caption = #1588#1605#1575#1585#1607' '#1705#1575#1585#1605#1606#1583#1610
          Font.Charset = ARABIC_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentBiDiMode = False
          ParentFont = False
        end
        object Label16: TLabel
          Left = 546
          Top = 125
          Width = 37
          Height = 13
          Alignment = taRightJustify
          Anchors = [akTop, akRight]
          BiDiMode = bdLeftToRight
          Caption = #1580#1606#1587#1610#1578
          Font.Charset = ARABIC_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentBiDiMode = False
          ParentFont = False
        end
        object Label17: TLabel
          Left = 525
          Top = 231
          Width = 58
          Height = 13
          Anchors = [akTop, akRight]
          BiDiMode = bdRightToLeft
          Caption = #1575#1585#1587#1575#1604' '#1662#1610#1575#1605#1705
          Font.Charset = ARABIC_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentBiDiMode = False
          ParentFont = False
        end
        object xpPageControl2: TPageControl
          Left = 88
          Top = 8
          Width = 195
          Height = 201
          ActivePage = xpTabSheet3
          Anchors = [akTop, akRight]
          ParentShowHint = False
          ShowHint = True
          TabOrder = 8
          TabStop = False
          TabWidth = 96
          object xpTabSheet3: TTabSheet
            Caption = #1593#1603#1587
            object PicImage: TImage
              Left = 16
              Top = 4
              Width = 151
              Height = 145
              Stretch = True
            end
            object PicBtn2: TSpeedButton
              Left = 20
              Top = 153
              Width = 71
              Height = 20
              Caption = #1578#1594#1610#1610#1585
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clNavy
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = []
              ParentFont = False
              OnClick = PicBtn2Click
            end
            object PicDel2: TSpeedButton
              Left = 94
              Top = 153
              Width = 71
              Height = 20
              Caption = #1581#1584#1601
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clNavy
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = []
              ParentFont = False
              OnClick = PicDel2Click
            end
          end
          object sign: TTabSheet
            Caption = #1606#1605#1608#1606#1607' '#1575#1605#1590#1575
            object SignImage: TImage
              Left = 17
              Top = 4
              Width = 153
              Height = 145
              Stretch = True
            end
            object PicBtn1: TSpeedButton
              Left = 20
              Top = 153
              Width = 71
              Height = 20
              Caption = #1578#1594#1610#1610#1585
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clNavy
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = []
              ParentFont = False
              OnClick = PicBtn1Click
            end
            object PicDel1: TSpeedButton
              Left = 94
              Top = 153
              Width = 71
              Height = 20
              Caption = #1581#1584#1601
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clNavy
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = []
              ParentFont = False
              OnClick = PicDel1Click
            end
          end
        end
        object DbName: TDBEdit
          Left = 336
          Top = 14
          Width = 161
          Height = 21
          Anchors = [akTop, akRight]
          BiDiMode = bdRightToLeft
          Color = clWhite
          DataField = 'FirstName'
          DataSource = dm.DSelect_Contact
          Font.Charset = ARABIC_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentBiDiMode = False
          ParentFont = False
          TabOrder = 0
          OnEnter = TEditEnter
          OnExit = TEditExit
        end
        object DBEdit3: TDBEdit
          Left = 336
          Top = 41
          Width = 161
          Height = 21
          Anchors = [akTop, akRight]
          BiDiMode = bdRightToLeft
          Color = clWhite
          DataField = 'LastName'
          DataSource = dm.DSelect_Contact
          Font.Charset = ARABIC_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentBiDiMode = False
          ParentFont = False
          TabOrder = 1
          OnEnter = TEditEnter
          OnExit = TEditExit
        end
        object DBEdit2: TDBEdit
          Left = 336
          Top = 69
          Width = 161
          Height = 21
          Anchors = [akTop, akRight]
          BiDiMode = bdRightToLeft
          Color = clWhite
          DataField = 'FatherName'
          DataSource = dm.DSelect_Contact
          Font.Charset = ARABIC_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentBiDiMode = False
          ParentFont = False
          TabOrder = 2
          OnEnter = TEditEnter
          OnExit = TEditExit
        end
        object DBEdit5: TDBEdit
          Left = 336
          Top = 97
          Width = 161
          Height = 21
          Anchors = [akTop, akRight]
          BiDiMode = bdRightToLeft
          Color = clWhite
          DataField = 'Idno'
          DataSource = dm.DSelect_Contact
          Font.Charset = ARABIC_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentBiDiMode = False
          ParentFont = False
          TabOrder = 3
        end
        object DBEBirthDate: TSolarDatePicker
          Left = 336
          Top = 149
          Width = 161
          Height = 21
          Anchors = [akTop, akRight]
          About = 'Created by : Mohamad Khorsandi'
          BiDiMode = bdLeftToRight
          Color = clWhite
          Font.Charset = ARABIC_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          TabOrder = 5
          Enabled = True
          DateKind = dkSolar
          CheckInputOnExit = True
          Divider = dSlash
          ShowToDay = True
          MonthObject = moComboBox
          Glyph = gtCalendar
          ShowDefaultDate = False
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
          DataSource = dm.DSelect_Contact
          DataField = 'BirthDate'
          DataFieldType = dftSolar
          DataFieldAutoSaveModified = False
        end
        object DBEdit9: TDBEdit
          Left = 336
          Top = 177
          Width = 161
          Height = 21
          Anchors = [akTop, akRight]
          BiDiMode = bdRightToLeft
          Color = clWhite
          DataField = 'BirthPlace'
          DataSource = dm.DSelect_Contact
          Font.Charset = ARABIC_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentBiDiMode = False
          ParentFont = False
          TabOrder = 6
          OnEnter = TEditEnter
          OnExit = TEditExit
        end
        object PersonalCode: TDBEdit
          Left = 336
          Top = 205
          Width = 161
          Height = 21
          Anchors = [akTop, akRight]
          BiDiMode = bdRightToLeft
          Color = clWhite
          DataField = 'PersonalNo'
          DataSource = dm.DSelect_Contact
          Font.Charset = ARABIC_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentBiDiMode = False
          ParentFont = False
          TabOrder = 7
          OnEnter = TEditEnter
          OnExit = TEditExit
        end
        object DBLookupComboBox3: TDBLookupComboBox
          Left = 337
          Top = 122
          Width = 159
          Height = 21
          Anchors = [akTop, akRight]
          BiDiMode = bdLeftToRight
          DataField = 'SexId'
          DataSource = dm.DSelect_Contact
          Font.Charset = ARABIC_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          KeyField = 'Sexid'
          ListField = 'Title'
          ListSource = dm.dSexes
          ParentBiDiMode = False
          ParentFont = False
          TabOrder = 4
        end
        object DBCheckBox1: TDBCheckBox
          Left = 335
          Top = 232
          Width = 17
          Height = 17
          DataField = 'SendSms'
          DataSource = dm.DSelect_Contact
          TabOrder = 9
          ValueChecked = 'True'
          ValueUnchecked = 'False'
        end
      end
      object AccountGroupBox: TGroupBox
        Left = 0
        Top = 257
        Width = 615
        Height = 45
        Align = alTop
        Caption = #1581#1587#1575#1576
        Font.Charset = ARABIC_CHARSET
        Font.Color = clNavy
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        TabOrder = 1
        DesignSize = (
          615
          45)
        object Label6: TLabel
          Left = 264
          Top = 18
          Width = 84
          Height = 13
          Anchors = [akTop, akRight]
          BiDiMode = bdLeftToRight
          Caption = #1578#1575#1585#1610#1582' '#1575#1601#1578#1578#1575#1581' '#1581#1587#1575#1576
          Font.Charset = ARABIC_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentBiDiMode = False
          ParentFont = False
        end
        object label1: TLabel
          Left = 503
          Top = 18
          Width = 64
          Height = 13
          Anchors = [akTop, akRight]
          BiDiMode = bdLeftToRight
          Caption = #1588#1605#1575#1585#1607' '#1581#1587#1575#1576
          Font.Charset = ARABIC_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentBiDiMode = False
          ParentFont = False
        end
        object AccountNo: TDBEdit
          Left = 383
          Top = 14
          Width = 112
          Height = 21
          Anchors = [akTop, akRight]
          BiDiMode = bdRightToLeft
          Color = clWhite
          DataField = 'AccountNo'
          DataSource = dm.DSelect_Account
          Font.Charset = ARABIC_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentBiDiMode = False
          ParentFont = False
          TabOrder = 0
          OnEnter = TEditEnter
          OnExit = TEditExit
        end
        object DBEAccountDate: TDBEdit
          Left = 160
          Top = 14
          Width = 96
          Height = 21
          Anchors = [akTop, akRight]
          BiDiMode = bdLeftToRight
          Color = clWhite
          DataField = 'AccountDate'
          DataSource = dm.DSelect_Account
          ParentBiDiMode = False
          TabOrder = 1
          OnEnter = TEditEnter
          OnExit = TEditExit
        end
      end
      object MoreGroupBox: TGroupBox
        Left = 0
        Top = 366
        Width = 615
        Height = 178
        Align = alClient
        Caption = ' '#1576#1610#1588#1578#1585
        Font.Charset = ARABIC_CHARSET
        Font.Color = clNavy
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        TabOrder = 3
        DesignSize = (
          615
          178)
        object Label8: TLabel
          Left = 578
          Top = 44
          Width = 25
          Height = 13
          Alignment = taRightJustify
          Anchors = [akTop, akRight]
          BiDiMode = bdLeftToRight
          Caption = #1570#1583#1585#1587
          Font.Charset = ARABIC_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentBiDiMode = False
          ParentFont = False
        end
        object Label9: TLabel
          Left = 549
          Top = 22
          Width = 54
          Height = 13
          Alignment = taRightJustify
          Anchors = [akTop, akRight]
          BiDiMode = bdLeftToRight
          Caption = #1588#1605#1575#1585#1607' '#1578#1604#1601#1606
          Font.Charset = ARABIC_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentBiDiMode = False
          ParentFont = False
        end
        object Label15: TLabel
          Left = 563
          Top = 65
          Width = 40
          Height = 13
          Anchors = [akTop, akRight]
          Caption = #1578#1608#1590#1610#1581#1575#1578
          Font.Charset = ARABIC_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
        end
        object userField1: TLabel
          Left = 561
          Top = 110
          Width = 42
          Height = 13
          Hint = #1593#1606#1608#1575#1606' '#1575#1610#1606' '#1601#1610#1604#1583' '#1585#1575' '#1605#1610' '#1578#1608#1575#1606#1610#1583' '#1583#1585' '#1575#1591#1604#1575#1593#1575#1578' '#1579#1575#1576#1578' '#1606#1585#1605' '#1575#1601#1586#1575#1585' '#1578#1594#1610#1610#1585' '#1583#1607#1610#1583
          Alignment = taRightJustify
          Anchors = [akTop, akRight]
          BiDiMode = bdLeftToRight
          Caption = #1601#1610#1604#1583' '#1705#1575#1585#1576#1585
          Font.Charset = ARABIC_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentBiDiMode = False
          ParentFont = False
        end
        object userField2: TLabel
          Left = 561
          Top = 134
          Width = 42
          Height = 13
          Hint = #1593#1606#1608#1575#1606' '#1575#1610#1606' '#1601#1610#1604#1583' '#1585#1575' '#1605#1610' '#1578#1608#1575#1606#1610#1583' '#1583#1585' '#1575#1591#1604#1575#1593#1575#1578' '#1579#1575#1576#1578' '#1606#1585#1605' '#1575#1601#1586#1575#1585' '#1578#1594#1610#1610#1585' '#1583#1607#1610#1583
          Alignment = taRightJustify
          Anchors = [akTop, akRight]
          BiDiMode = bdLeftToRight
          Caption = #1601#1610#1604#1583' '#1705#1575#1585#1576#1585
          Font.Charset = ARABIC_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentBiDiMode = False
          ParentFont = False
        end
        object Label11: TLabel
          Left = 11
          Top = 122
          Width = 162
          Height = 13
          Caption = #1662#1585#1601#1585#1575#1688' B '#1711#1586#1575#1585#1588' 1 : PerfrajBRep.fr3'
        end
        object Label14: TLabel
          Left = 5
          Top = 138
          Width = 168
          Height = 13
          Caption = #1662#1585#1601#1585#1575#1688' B '#1711#1586#1575#1585#1588' 2 : PerfrajBRep2.fr3'
        end
        object DBEdit4: TDBEdit
          Left = 19
          Top = 41
          Width = 510
          Height = 21
          Anchors = [akTop, akRight]
          BiDiMode = bdRightToLeft
          Color = clWhite
          DataField = 'Address'
          DataSource = dm.DSelect_Contact
          Font.Charset = ARABIC_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentBiDiMode = False
          ParentFont = False
          TabOrder = 1
          OnEnter = TEditEnter
          OnExit = TEditExit
        end
        object DBEdit7: TDBEdit
          Left = 264
          Top = 18
          Width = 265
          Height = 21
          Anchors = [akTop, akRight]
          BiDiMode = bdRightToLeft
          Color = clWhite
          DataField = 'Phones'
          DataSource = dm.DSelect_Contact
          Font.Charset = ARABIC_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentBiDiMode = False
          ParentFont = False
          TabOrder = 0
          OnEnter = TEditEnter
          OnExit = TEditExit
        end
        object DBMemo1: TDBMemo
          Left = 19
          Top = 63
          Width = 510
          Height = 40
          Anchors = [akTop, akRight]
          DataField = 'Memo'
          DataSource = dm.DSelect_Contact
          Font.Charset = ARABIC_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          TabOrder = 2
        end
        object DBEdit12: TDBEdit
          Left = 233
          Top = 106
          Width = 296
          Height = 21
          Hint = #1593#1606#1608#1575#1606' '#1575#1610#1606' '#1601#1610#1604#1583' '#1585#1575' '#1605#1610' '#1578#1608#1575#1606#1610#1583' '#1583#1585' '#1575#1591#1604#1575#1593#1575#1578' '#1579#1575#1576#1578' '#1606#1585#1605' '#1575#1601#1586#1575#1585' '#1578#1594#1610#1610#1585' '#1583#1607#1610#1583
          Anchors = [akTop, akRight]
          BiDiMode = bdRightToLeft
          Color = clWhite
          DataField = 'UserField1'
          DataSource = dm.DSelect_Contact
          Font.Charset = ARABIC_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentBiDiMode = False
          ParentFont = False
          TabOrder = 3
          OnEnter = TEditEnter
          OnExit = TEditExit
        end
        object DBEdit13: TDBEdit
          Left = 233
          Top = 130
          Width = 296
          Height = 21
          Hint = #1593#1606#1608#1575#1606' '#1575#1610#1606' '#1601#1610#1604#1583' '#1585#1575' '#1605#1610' '#1578#1608#1575#1606#1610#1583' '#1583#1585' '#1575#1591#1604#1575#1593#1575#1578' '#1579#1575#1576#1578' '#1606#1585#1605' '#1575#1601#1586#1575#1585' '#1578#1594#1610#1610#1585' '#1583#1607#1610#1583
          Anchors = [akTop, akRight]
          BiDiMode = bdRightToLeft
          Color = clWhite
          DataField = 'UserField2'
          DataSource = dm.DSelect_Contact
          Font.Charset = ARABIC_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentBiDiMode = False
          ParentFont = False
          TabOrder = 4
          OnEnter = TEditEnter
          OnExit = TEditExit
        end
        object DBChBoHaveInterest: TDBCheckBox
          Left = 27
          Top = 19
          Width = 234
          Height = 16
          Anchors = [akTop, akRight]
          Caption = #1576#1585#1575#1610' '#1575#1610#1606' '#1593#1590#1608' '#1548' '#1578#1602#1587#1610#1605' '#1587#1608#1583' '#1587#1662#1585#1583#1607' '#1578#1593#1604#1602' '#1711#1610#1585#1583
          DataField = 'HaveInterest'
          DataSource = dm.DSelect_Contact
          Font.Charset = ARABIC_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          TabOrder = 5
          ValueChecked = '1'
          ValueUnchecked = '0'
          Visible = False
          WordWrap = True
        end
      end
      object MonthlyGroup: TGroupBox
        Left = 0
        Top = 302
        Width = 615
        Height = 64
        Align = alTop
        Caption = #1593#1590#1608#1610#1578
        Font.Charset = ARABIC_CHARSET
        Font.Color = clNavy
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        TabOrder = 2
        DesignSize = (
          615
          64)
        object Label12: TLabel
          Left = 490
          Top = 12
          Width = 89
          Height = 13
          Anchors = [akTop, akRight]
          BiDiMode = bdLeftToRight
          Caption = #1578#1575#1585#1610#1582' '#1588#1585#1608#1593' '#1593#1590#1608#1610#1578
          Font.Charset = ARABIC_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentBiDiMode = False
          ParentFont = False
        end
        object Label13: TLabel
          Left = 275
          Top = 11
          Width = 52
          Height = 13
          Anchors = [akTop, akRight]
          BiDiMode = bdLeftToRight
          Caption = #1606#1608#1593' '#1593#1590#1608#1610#1578
          Font.Charset = ARABIC_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentBiDiMode = False
          ParentFont = False
        end
        object DBLookupComboBox1: TDBLookupComboBox
          Left = 85
          Top = 9
          Width = 186
          Height = 21
          Anchors = [akTop, akRight]
          BiDiMode = bdLeftToRight
          DataField = 'MonthlyTypeTitle'
          DataSource = dm.DSelect_Account
          Font.Charset = ARABIC_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentBiDiMode = False
          ParentFont = False
          TabOrder = 1
        end
        object DBLookupComboBox2: TDBLookupComboBox
          Left = 286
          Top = 37
          Width = 200
          Height = 21
          Anchors = [akTop, akRight]
          BiDiMode = bdLeftToRight
          DataField = 'FamilyTitle'
          DataSource = dm.DSelect_Account
          Enabled = False
          Font.Charset = ARABIC_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentBiDiMode = False
          ParentFont = False
          TabOrder = 2
        end
        object FirstBalance: TBitBtn
          Left = 46
          Top = 34
          Width = 113
          Height = 27
          Anchors = [akTop, akRight]
          Caption = #1579#1576#1578' '#1605#1608#1580#1608#1583#1610' '#1575#1608#1604#1610#1607
          Font.Charset = ARABIC_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          TabOrder = 4
          Visible = False
          OnClick = FirstBalanceClick
        end
        object xpBitBtn1: TBitBtn
          Left = 164
          Top = 34
          Width = 106
          Height = 27
          Anchors = [akTop, akRight]
          Caption = #1670#1575#1662' '#1587#1585#1576#1585#1711' '#1583#1601#1578#1585#1670#1607
          Font.Charset = ARABIC_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          TabOrder = 3
          Visible = False
          OnClick = PerferazeBtnClick
        end
        object MonthlyBeginDate: TSolarDatePicker
          Left = 384
          Top = 9
          Width = 102
          Height = 21
          Anchors = [akTop, akRight]
          About = 'Created by : Mohamad Khorsandi'
          BiDiMode = bdLeftToRight
          Color = clWhite
          Font.Charset = ARABIC_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          TabOrder = 0
          Enabled = True
          OnExit = TEditExit
          DateKind = dkSolar
          CheckInputOnExit = True
          Divider = dSlash
          ShowToDay = True
          MonthObject = moComboBox
          Glyph = gtCalendar
          ShowDefaultDate = False
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
          DataSource = dm.DSelect_Account
          DataField = 'MonthlyBeginDate'
          DataFieldType = dftSolar
          DataFieldAutoSaveModified = False
        end
        object FamilyLabel: TCheckBox
          Left = 488
          Top = 38
          Width = 57
          Height = 17
          Anchors = [akTop, akRight]
          Caption = #1582#1575#1606#1608#1575#1583#1607
          TabOrder = 5
          OnClick = FamilyLabelClick
        end
      end
      object Panel5: TPanel
        Left = 0
        Top = 544
        Width = 615
        Height = 42
        Align = alBottom
        ParentColor = True
        TabOrder = 4
        DesignSize = (
          615
          42)
        object InsBtn: TBitBtn
          Left = 533
          Top = 7
          Width = 75
          Height = 28
          Hint = 'Insert'
          Anchors = [akTop, akRight]
          Caption = '(Ins)'#1575#1610#1580#1575#1583
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clNavy
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          TabOrder = 0
          OnClick = InsBtnClick
          Glyph.Data = {
            36040000424D3604000000000000360000002800000010000000100000000100
            2000000000000004000000000000000000000000000000000000FF00FF00FF00
            FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
            FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
            FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
            FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
            FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
            FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
            FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
            FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
            FF00FF00FF00FF00FF00FF00FF00FF00FF00000000000000000000000000FF00
            FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
            FF00FF00FF00FF00FF00FF00FF00FF00FF00000000000000000000000000FF00
            FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
            FF00FF00FF00FF00FF00FF00FF00FF00FF00000000000000000000000000FF00
            FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
            FF00FF00FF000000000000000000000000000000000000000000000000000000
            00000000000000000000FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
            FF00FF00FF000000000000000000000000000000000000000000000000000000
            00000000000000000000FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
            FF00FF00FF000000000000000000000000000000000000000000000000000000
            00000000000000000000FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
            FF00FF00FF00FF00FF00FF00FF00FF00FF00000000000000000000000000FF00
            FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
            FF00FF00FF00FF00FF00FF00FF00FF00FF00000000000000000000000000FF00
            FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
            FF00FF00FF00FF00FF00FF00FF00FF00FF00000000000000000000000000FF00
            FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
            FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
            FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
            FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
            FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
            FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
            FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00}
        end
        object EditBtn: TBitBtn
          Left = 457
          Top = 7
          Width = 75
          Height = 28
          Hint = 'Edit'
          Anchors = [akTop, akRight]
          Caption = #1608#1610#1585#1575#1610#1588
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clNavy
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          TabOrder = 1
          OnClick = EditBtnClick
          Glyph.Data = {
            36040000424D3604000000000000360000002800000010000000100000000100
            2000000000000004000000000000000000000000000000000000FF00FF000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF0000000000FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF0000000000FF00FF00FF00FF00FF00FF00FF00FF00FF00FF0000000000FFFF
            FF00FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000000000000000
            0000000000000000000000000000FF00FF00000000000000000000000000FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000000000000FFFF00FFFF
            FF0000FFFF00FFFFFF0000FFFF000000000000000000FFFF000000000000FFFF
            FF0000000000FFFF0000FFFF0000FFFF0000FFFF000000000000000000000000
            0000FFFFFF0000FFFF00FFFFFF0000FFFF0000000000FFFF000000000000FFFF
            FF00FFFFFF000000000000000000FFFFFF0000000000FFFFFF0000FFFF00FFFF
            FF0000FFFF00FFFFFF0000FFFF00FFFFFF0000000000FFFF000000000000FFFF
            FF00FFFF00000000000000FFFF00000000000000000000000000000000000000
            0000FFFFFF0000FFFF00FFFFFF0000FFFF0000000000FFFF000000000000FFFF
            FF00FFFFFF00FFFFFF0000000000FFFFFF0000FFFF00FFFFFF0000FFFF00FFFF
            FF0000FFFF00FFFFFF0000FFFF00FFFFFF0000000000FFFF000000000000FFFF
            FF00FFFF0000FFFF0000FFFF0000000000000000000000000000000000000000
            00000000000000000000FFFFFF0000FFFF0000000000FFFF000000000000FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000000000000FFFF00000000000000
            000000FFFF00FFFFFF0000FFFF0000000000000000000000000000000000FFFF
            FF00FFFF0000FFFF0000FFFF0000FFFF0000FFFF00000000000000FFFF000000
            0000000000000000000000000000FF00FF00FF00FF00FF00FF0000000000FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000000000000FF
            FF0000000000FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00000000000000
            0000FFFFFF0000000000FFFFFF0000000000FFFFFF0000000000FFFFFF000000
            000000FFFF0000000000FF00FF00FF00FF00FF00FF00FF00FF00FF00FF000000
            0000848484000000000084848400000000008484840000000000848484000000
            00000000000000FFFF0000000000FF00FF00FF00FF00FF00FF00FF00FF000000
            0000848484000000000084848400000000008484840000000000848484000000
            0000FF00FF00000000000000FF0000000000FF00FF00FF00FF0000000000FF00
            FF0000000000FF00FF0000000000FF00FF0000000000FF00FF0000000000FF00
            FF00FF00FF00FF00FF0000000000FF00FF00FF00FF00FF00FF00}
        end
        object PostBtn: TBitBtn
          Left = 379
          Top = 7
          Width = 75
          Height = 28
          Hint = 'Post'
          Anchors = [akTop, akRight]
          Caption = '(F2)'#1584#1582#1610#1585#1607
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clNavy
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          TabOrder = 2
          OnClick = PostBtnClick
          Glyph.Data = {
            36040000424D3604000000000000360000002800000010000000100000000100
            2000000000000004000000000000000000000000000000000000FF00FF00FF00
            FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
            FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
            FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
            FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
            FF00FF00FF00FF00FF00FF00FF000000FF0000000000FF00FF00FF00FF00FF00
            FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
            FF00FF00FF00FF00FF000000FF000000FF000000FF0000000000FF00FF00FF00
            FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
            FF00FF00FF00FF00FF000000FF000000FF000000FF0000000000FF00FF00FF00
            FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
            FF00FF00FF000000FF000000FF000000FF000000FF000000FF0000000000FF00
            FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
            FF000000FF000000FF000000FF000000FF000000FF000000FF0000000000FF00
            FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF008484
            84000000FF000000FF0000000000FF00FF000000FF000000FF000000FF000000
            0000FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00848484000000
            FF0000000000FF00FF00FF00FF00FF00FF00FF00FF000000FF000000FF000000
            0000FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
            FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF000000FF000000FF000000
            FF0000000000FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
            FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF000000FF000000
            FF0000000000FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
            FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF000000
            FF000000FF0000000000FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
            FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
            FF00848484000000FF0000000000FF00FF00FF00FF00FF00FF00FF00FF00FF00
            FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
            FF00FF00FF00848484000000FF0000000000FF00FF00FF00FF00FF00FF00FF00
            FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
            FF00FF00FF00FF00FF00FF00FF000000FF000000FF0000000000FF00FF00FF00
            FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
            FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00}
        end
        object CancelBtn: TBitBtn
          Left = 302
          Top = 7
          Width = 75
          Height = 28
          Hint = 'Cancel'
          Anchors = [akTop, akRight]
          Caption = #1604#1594#1608
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clNavy
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          TabOrder = 3
          OnClick = CancelBtnClick
          Glyph.Data = {
            36040000424D3604000000000000360000002800000010000000100000000100
            2000000000000004000000000000000000000000000000000000FF00FF00FF00
            FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
            FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
            FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
            FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
            FF000000FF000000FF000000FF00FF00FF00FF00FF0084848400000000008484
            8400FF00FF00FF00FF000000FF000000FF000000FF00FF00FF00FF00FF00FF00
            FF00FF00FF000000FF000000FF000000FF00FF00FF0000000000000000000000
            0000FF00FF000000FF000000FF000000FF00FF00FF00FF00FF00FF00FF00FF00
            FF00FF00FF00FF00FF000000FF000000FF000000FF0084848400000000008484
            84000000FF000000FF000000FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
            FF00FF00FF00FF00FF00FF00FF000000FF000000FF000000FF00FF00FF000000
            FF000000FF000000FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
            FF00FF00FF00FF00FF00FF00FF00FF00FF000000FF000000FF00000000000000
            FF000000FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
            FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF0000008400000000000000
            8400FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
            FF00FF00FF00FF00FF00FF00FF00FF00FF000000FF0000008400000000000000
            84000000FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
            FF00FF00FF00FF00FF00FF00FF000000FF000000FF0000000000000000000000
            00000000FF000000FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
            FF00FF00FF00FF00FF000000FF000000FF000000FF0000000000000000000000
            00000000FF000000FF000000FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
            FF00FF00FF000000FF000000FF000000FF00FF00FF0000000000000000000000
            0000FF00FF000000FF000000FF000000FF00FF00FF00FF00FF00FF00FF00FF00
            FF000000FF000000FF000000FF00FF00FF00FF00FF0084848400000000008484
            8400FF00FF00FF00FF000000FF000000FF000000FF00FF00FF00FF00FF00FF00
            FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
            FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
            FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
            FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
            FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
            FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00}
        end
        object PerferazeBtn: TBitBtn
          Left = 124
          Top = 7
          Width = 36
          Height = 28
          Hint = #1662#1585#1601#1585#1575#1688' '#1583#1601#1578#1585#1670#1607' '#1581#1587#1575#1576' A('#1602#1583#1610#1605')'
          Anchors = [akTop, akRight]
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clNavy
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          ParentShowHint = False
          ShowHint = True
          TabOrder = 4
          Visible = False
          OnClick = PerferazeBtnClick
          Glyph.Data = {
            F6000000424DF600000000000000760000002800000010000000100000000100
            0400000000008000000000000000000000001000000000000000000000000000
            8000008000000080800080000000800080008080000080808000C0C0C0000000
            FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00FFFFFFFFFFFF
            FFFFFFFFFFF999FF999FFFFFFFFF99FF99FFF000000F999999FFFF0000FF9999
            99FFFFF00FFF99FF99FFFFF00FFF99FF99FFFFF00FFFF9999FFFFFF00FFFFF99
            FFFFFFF000000FFFFFFFFFF0000000FFFFFFFFF00FFF00FFFFFFFFF00FFF00FF
            FFFFFFF0000000FFFFFFFFFF00000FFFFFFFFFFFFFFFFFFFFFFF}
        end
        object ExitButton: TBitBtn
          Left = 9
          Top = 7
          Width = 75
          Height = 28
          Action = AExit
          Caption = #1582#1585#1608#1580
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clNavy
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          TabOrder = 5
          Glyph.Data = {
            1E060000424D1E06000000000000360000002800000018000000150000000100
            180000000000E8050000000000000000000000000000000000000D0B038394FF
            0133F00606AEB7B4DDFFFFFFBEBBE7060EB10005A56D6FCAF9F9F5FFFCE8FFF6
            E7FFF6E9FFF6E9FFF7E9FFF7E9FFF7E9FFF7E9FFF8E9FFF8E9FFF8E9FFF5E6FF
            FFFF0B0700858FFF0E4FFF236FFF0008B42E166F161CA70747FF074BFF1C2ECF
            B5886FFFB428FF9E1AFF9F1DFF9F1DFF9E1CFF9E1CFF9D1CFF9D1BFF9C1AFF9C
            1AFF9B1DFF9305FFAD32161404C4B4E70012D72C66FF215EFF042AE1103FF019
            54FF022BDD3B47C4D8D6F6FFFFFFFFF1FFFFF1FFFFEFFFFFEDFFFFEBFFFFE9FF
            FFE7FFFFE3FFFFE1FBFFDEF9FFEEFFFF93000C0800FFFFD33536B90B2ACF2B67
            FF245AFF2059FF113DE32826AAC3B9DAFFFAEFFFE7E6FFE4E3FFE3E2FFE1E0FF
            DFDEFFDAD9FFDAD9FFD8D7FFD5D3FFD2D1FFCDC9FFE3FFFF9A04040000FFFFBF
            FFFFFF2920881B4CF92A62FF2158FF1532CD776EB2FFFFFFFFF0EDFFEBEBFFE9
            E9FFE7E7FFE5E5FFE1E1FFDFDFFFDEDEFFDBDBFFD8D8FFD6D6FFD0CEFFE6FFFF
            9A03050000FFFFC2E7E9FE11159F377BFF2352F11A4BEF1A53F12530C1B9B1D9
            FFFDF6FFEFEEFFEBEBFFE9E9FFE7E7FFE4E4FFE2E2FFE0E0FFDDDDFFDADAFFD7
            D7FFD1CFFFE8FFFF9A04050000FFFFCC7F7DDA1233D23470FA2330B93039B810
            40EA154BEE565AC2EBE4EBFFF9F4FFECEDFFECECFFE9E9FFE6E6FFE4E4FFE1E1
            FFDEDEFFDBDBFFD8D8FFD3D1FFE9FFFF9A03050000FFFFCF4E50C90734DB1B3C
            D4857BBFDBD6E53D47C60026E32948D9BEB9DEFFFFFAFFEFEFFFEDEDFFEBEBFF
            E8E8FFE4E4FFE2E2FFDFDFFFDCDCFFD9D9FFD4D2FFE9FFFF9A03050000FFFFC8
            B4B6EB3E4BCF3237BDF2EFF9FFFFFFE2DFF3363CCD4251D7D0CEE9FFFFFBFFF2
            F2FFF0F0FFEDEDFFEAEAFFE6E6FFE4E4FFE1E1FFDEDEFFDADAFFD5D3FFE9FFFF
            9A02050000FFFFC3FFFFFFDEDBF2B3B1E3FFFFFFFFFFFFFFFFFFEDECF5BFBBE2
            FBF9F7FFFBF9FFF4F4FFF2F2FFEFEFFFECECFFE8E8FFE5E5FFE2E2FFDFDFFFDC
            DCFFD6D5FFEBFFFF9B02050000FFFFC4F6FCFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFEFFF9F9FFF6F6FFF3F3FFF0F0FFEDEDFFE9E9FFE6E6
            FFE3E3FFE0E0FFDDDDFFD7D5FFECFFFF9B03050000FFFFC4F6FCFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEFEFFFBFBFFF7F7FFF4F4FFF1F1FF
            EDEDFFEAEAFFE7E7FFE4E4FFDFDFFFDDDDFFD7D5FFECFFFF9A03050000FFFFC4
            F6FCFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFCFCFFF7
            F7FFF4F4FFF2F2FFEDEDFFEBEBFFE8E8FFE5E5FFDFDFFFDEDEFFD8D6FFEDFFFF
            9A03050000FFFFC4F6FCFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFDFDFFF7F7FFF4F4FFF3F3FFEDEDFFEBEBFFE8E8FFE5E5FFDFDFFFDE
            DEFFD8D6FFEDFFFF9A03050000FFFFC4F6FCFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFDFDFFF7F7FFF4F4FFF3F2FFEDEDFFEAEAFFE7E7
            FFE4E4FFDFDFFFDDDDFFD7D6FFEDFFFF9A03050000FFFFC7FCFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEFFFFFBFDFFF9FAFF
            F4F4FFF1F2FFEEEFFFEBECFFE6E7FFE4E5FFDFDDFFF3FFFF9A04050000FFFFCA
            D2E9FFDAE9FBDAE8FBDAE8FBDAE8FBDAE8FBDAE8FBDAE8FBDAE7FADAE6F9DAE1
            F4DADFF3DADBEFDAD9EBDAD4E8DAD2E5DACFE2DACBDEDAC8DBD9C0D3DBD7FFFD
            9B09040408FFE66EF98F0BFC9615FB9716FB9716FB9716FB9716FB9716FB9716
            FB9615FB9615FB9715FB9715FB9614FB9714FB9714FB9613FB9713FB9713FB97
            12FB9711FB971AFF9700040304FFF391F38800EB7700ED7C00ED7B00ED7B00ED
            7B00ED7B00ED7B00ED7B00ED7B00ED7C00ED7C00ED7C00ED7C00ED7C00ED7C00
            ED7C00ED7C00ED7C00EB7C00F18500FF9500040100FFFEB5F9BD8AF5B97CF5BB
            81F5BB80F5BB80F5BB80F5BB80F5BB80F5BB80F5BB80F5BB80F5BB80F5BB80F5
            BB80F5BB80F5BB80F5BB80F5BB80F5BB84F5B97CF9A43DFE9D0B04090FFFFFD2
            FF9805FF9D09FF9E0DFF9E0DFF9E0DFF9E0DFF9E0DFF9E0DFF9E0DFF9E0DFF9E
            0DFF9E0DFF9E0DFF9E0DFF9E0DFF9E0DFF9E0DFF9E0DFF9F0EFF9B06FF9F13FF
            E4B9}
        end
        object PerferazeBtn2: TBitBtn
          Left = 85
          Top = 7
          Width = 38
          Height = 28
          Hint = #1662#1585#1601#1585#1575#1688' '#1583#1601#1578#1585#1670#1607' '#1581#1587#1575#1576' B'
          Anchors = [akTop, akRight]
          BiDiMode = bdRightToLeft
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clNavy
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentBiDiMode = False
          ParentFont = False
          ParentShowHint = False
          ShowHint = True
          TabOrder = 6
          OnClick = PerferazeBtn2Click
          Glyph.Data = {
            F6000000424DF600000000000000760000002800000010000000100000000100
            0400000000008000000000000000000000001000000000000000000000000000
            8000008000000080800080000000800080008080000080808000C0C0C0000000
            FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00FFFFFFFFCCCC
            CFFFFFFFFFFFCCCCCCFFFFFFFFFFCCFFCCFFF000000FCCFFCCFFFF0000FFCCCC
            CFFFFFF00FFFCCFFCCFFFFF00FFFCCFFCCFFFFF00FFFCCCCCCFFFFF00FFFCCCC
            CFFFFFF000000FFFFFFFFFF0000000FFFFFFFFF00FFF00FFFFFFFFF00FFF00FF
            FFFFFFF0000000FFFFFFFFFF00000FFFFFFFFFFFFFFFFFFFFFFF}
        end
        object BtnPresenter: TBitBtn
          Left = 161
          Top = 7
          Width = 83
          Height = 28
          Hint = #1605#1593#1585#1601
          Anchors = [akTop, akRight]
          Caption = #1605#1593#1585#1601
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clNavy
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          ParentShowHint = False
          ShowHint = True
          TabOrder = 7
          OnClick = BtnPresenterClick
          Glyph.Data = {
            96040000424D9604000000000000360000002800000012000000140000000100
            18000000000060040000000000000000000000000000000000008563529E7F6D
            987665987765987765977765977766967664977665967462997265A49A821C9B
            1B059D1000930077A567FFF2FEFFFFFF00009C7E6FFFFFFFFFFFF4FFFFF9FFFF
            F9FFFFF9FFFFF8FFFFF8FFFFF5FFFFFFFFFFFFF9F7E82FBB4450F19514B32D7F
            A16BFFF9FFFFFFFF0000987A6CFFFFFFF5EBE0EDDFD3EDDFD4EDDFD3ECDFD2EB
            DCCFFFE5E39BD19B6AB96663AD531EAD2D5AF69D13AC27338A237CB9727AC67A
            00009A7A6CFFFFFFEEDED4D7BBAED8BCB0D8BCAFD8BCAED6B7A7FFC9D234A531
            19C64227C5463CD56652EB8A33CD581AB8361ABB3800920000009C7B6DFFFFFF
            EFE2D8D8C0B6D9C2B9DAC2B7DAC0B5D7BBAEFFD0DA34A6324EFB965AFB9B55F0
            8F4EE78153EC8E54F39848EB8B00980500009B7D6EFFFFFFEFE3DCD8C3BCDBC4
            BFDBC3BCDBC1B9D7BDB0FBCED565B7603EB7483EB03F2ABF435BF6982AC34923
            A02649BA5447AC4700009E7D70FFFFFFEFE5E0D8C5C1DBC7C3DBC5C0DBC3BBD9
            C0B5DEC2BAE3CABFE5C2B9CABDA232BB436AFFB018B62F6F9958FFEFF7FBFFFC
            0000A17E6FFFFFFFEFE5E0D8C3C2D9C6C3DAC5C1DAC4BDDBC2B8D9BFB3DBBBAE
            E5BBB3CBBFA512B02A38EC7B00A60C689C55FFF5FFFFFFFF0000A18070FFFFFF
            EFE3E0D7BFBAD8C0BAD8C1BAD8BEB7D8BCB2D8BAB0D8B8A9DAB5A7E0C9BA95B5
            7A8DBD7A9ACC8FB9BDA4F6ECF0FFFFFF0000A38270FFFFFFF4EDEBE6D6D1E6D7
            D2E6D6D1E7D6CFE5D4CBE5D2C9E5CFC4E5CFC2E8CFC4F8CFCBFFF8FBFFF9FCC6
            A59BE1DAD7FFFFFF0000A58172FFFFFFFEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FEFFFFFFFCFEFEFAFEFDF8FDFBF5FBF8F0FCF9F1F8F1E5BA9F8FE1D9D6FFFFFF
            0000A68272FFFFFFF1E9E8DCCCCBDDCAC8DDCAC7DCC8C4DCC4BEDCC3BADCBFB4
            DCBCAFDCBAA9D8B4A0F6EAE0F9F5ECBB9F92E2DBD7FFFFFF0000A78373FFFFFF
            F0E7E6DBC9C8DCC8C6DBC7C3DAC6C1DBC2BBDBBFB6D9BDB1DCBFB0DCBCABDBB5
            A1FAF0E6FEFAF3BCA192E1D9D6FFFFFF0000A98573FFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF4F1EEEFEBE6EDE8E6E8DFDBD3C1B4AE
            9181E9E5E1FFFFFF0000AA8674FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFD
            FEFEFEFDFCFBFAFABEA79CB79C8FC0A590BA94708E6857D3C7C2FFFFFFFFFFFF
            0000AB8774FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEFEFEFDFDFDFDFCFAFAF9F9
            C2ACA1E2D2B7FCDEA5A5774BD8CECAFFFFFFFFFFFFFFFFFF0000AB8774FFFFFF
            FEFEFEFEFEFEFEFEFEFDFEFEFCFDFDFEFCFBFDFAF9FEFFFFCBB8AAD4A971B187
            60DAD3D6FFFFFFFFFFFFFFFFFFFFFFFF0000A78170FFFFFFFEFFFFFFFFFFFEFF
            FFFEFFFFFEFFFFFEFEFEFFFFFDFEFEFFBDA28FA37958DCD2D1FFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFF0000D7B5A4FFFFFFFFFFFDFFFFFEFFFFFDFFFFFEFFFFFEFF
            FFFDFFFFFEFFFEFAE3C9BDF7E9E5FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            000028242227222025211E25211F26201E25211F25201F25201D25201D25201E
            2C2B293335362E2E2E2E2E2E2E2E2E2E2E2E2E2E2E2E2E2E0000}
        end
        object IMPORT_BTN: TBitBtn
          Left = 247
          Top = 7
          Width = 54
          Height = 28
          Caption = 'IMPORT'
          TabOrder = 8
          Visible = False
          OnClick = IMPORT_BTNClick
        end
      end
    end
  end
  inherited ahmadvand: TActionList
    Left = 64
    Top = 141
  end
  object OpenPictureDialog: TOpenPictureDialog [2]
    Left = 64
    Top = 90
  end
  inherited Grid_PopupMenu: TPopupMenu
    Left = 39
    Top = 204
  end
  object ActionManager: TActionManager
    ActionBars.SessionCount = 23
    ActionBars = <
      item
        AutoSize = False
      end>
    Left = 256
    Top = 88
    StyleName = 'XP Style'
    object Action1: TAction
      Caption = #1584#1582#1610#1585#1607
      ShortCut = 113
      OnExecute = Action1Execute
    end
    object Action2: TAction
      Caption = #1575#1610#1580#1575#1583
      ShortCut = 45
      OnExecute = Action2Execute
    end
  end
  object RepPopMnu: TPopupMenu
    MenuAnimation = [maRightToLeft, maTopToBottom]
    TrackButton = tbLeftButton
    Left = 200
    Top = 516
    object NShow1: TMenuItem
      AutoHotkeys = maAutomatic
      Caption = #1662#1610#1588' '#1606#1605#1575#1610#1588' '#1608' '#1670#1575#1662' '#1711#1586#1575#1585#1588' 1'
      OnClick = NShowClick
    end
    object NShow2: TMenuItem
      Caption = #1662#1610#1588' '#1606#1605#1575#1610#1588' '#1608' '#1670#1575#1662' '#1711#1586#1575#1585#1588' 2'
      OnClick = NShowClick
    end
    object NPrint: TMenuItem
      Tag = 1
      AutoHotkeys = maAutomatic
      Caption = #1670#1575#1662' '#1576#1583#1608#1606' '#1662#1610#1588' '#1606#1605#1575#1610#1588'   Ctrl+F9'
      OnClick = NShowClick
    end
    object NDesign: TMenuItem
      Tag = 2
      AutoHotkeys = maAutomatic
      Caption = #1591#1585#1575#1581#1610' '#1711#1586#1575#1585#1588'   Alt+F9'
      OnClick = NShowClick
    end
    object N8: TMenuItem
      Caption = '-'
    end
    object N11: TMenuItem
      Caption = #1591#1585#1575#1581#1610' '#1662#1610#1588' '#1601#1585#1590
    end
  end
  object ActionList1: TActionList
    Left = 52
    Top = 271
    object Action3: TAction
      Caption = 'Action3'
      ShortCut = 16457
      OnExecute = Action3Execute
    end
  end
  object MssCalendarPro1: TMssCalendarPro
    Style = mssGold
    Left = 244
    Top = 263
  end
end
