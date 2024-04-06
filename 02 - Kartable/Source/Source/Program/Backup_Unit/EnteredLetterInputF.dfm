inherited ReceivedLetterInputForm: TReceivedLetterInputForm
  Tag = 3
  Left = 829
  Top = 101
  BorderIcons = [biSystemMenu, biMinimize]
  BorderStyle = bsDialog
  Caption = #1606#1575#1605#1607' '#1608#1575#1585#1583#1607
  ClientHeight = 712
  ClientWidth = 740
  KeyPreview = True
  OldCreateOrder = True
  Position = poMainFormCenter
  OnActivate = FormActivate
  PixelsPerInch = 96
  TextHeight = 13
  object xpPageControl1: TxpPageControl [0]
    Left = 0
    Top = 0
    Width = 740
    Height = 712
    ActivePage = xpTabSheet1
    Align = alClient
    ParentShowHint = False
    ShowHint = True
    Style = pcsXP
    TabHeight = 23
    TabOrder = 0
    TabPosition = tpTop
    BorderColor = clSilver
    TabTextAlignment = taCenter
    object xpTabSheet1: TxpTabSheet
      Caption = #1606#1575#1605#1607' '#1608#1575#1585#1583#1607
      Color = clWhite
      BGStyle = bgsNone
      GradientStartColor = clWhite
      GradientEndColor = clWhite
      GradientFillDir = fdTopToBottom
      DesignSize = (
        732
        679)
      object GroupBox3: TPanel
        Left = 0
        Top = 52
        Width = 732
        Height = 27
        Align = alTop
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentColor = True
        ParentFont = False
        TabOrder = 0
        DesignSize = (
          732
          27)
        object Label1: TLabel
          Left = 659
          Top = 5
          Width = 69
          Height = 13
          Anchors = [akTop, akRight]
          Caption = #1588#1605#1575#1585#1607' '#1575#1606#1583#1610#1705#1575#1578#1608#1585
          FocusControl = DBEIndicatorID
          Font.Charset = ARABIC_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
        end
        object Label12: TLabel
          Left = 251
          Top = 5
          Width = 47
          Height = 13
          Anchors = [akTop, akRight]
          Caption = #1586#1605#1575#1606' '#1579#1576#1578' :'
          Font.Charset = ARABIC_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
        end
        object Label24: TLabel
          Left = 500
          Top = 5
          Width = 44
          Height = 13
          Anchors = [akTop, akRight]
          Caption = #1578#1575#1585#1610#1582' '#1579#1576#1578' '
          FocusControl = DBERegistrationDate
          Font.Charset = ARABIC_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
        end
        object Label13: TLabel
          Left = 148
          Top = 6
          Width = 44
          Height = 13
          Anchors = [akTop, akRight]
          Caption = #1579#1576#1578' '#1705#1606#1606#1583#1607
          Font.Charset = ARABIC_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
        end
        object DBEIndicatorID: TDBEdit
          Left = 550
          Top = 2
          Width = 100
          Height = 22
          TabStop = False
          Anchors = [akTop, akRight]
          BiDiMode = bdRightToLeft
          Ctl3D = True
          DataField = 'IndicatorID'
          DataSource = DSForm
          Font.Charset = ARABIC_CHARSET
          Font.Color = clBlue
          Font.Height = -12
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentBiDiMode = False
          ParentCtl3D = False
          ParentFont = False
          TabOrder = 0
        end
        object DBERegistrationDate: TDBShamsiDateEdit
          Left = 413
          Top = 2
          Width = 88
          Height = 22
          TabStop = False
          Anchors = [akTop, akRight]
          BiDiMode = bdRightToLeft
          CheckValidity = True
          ShowMsg = False
          Ctl3D = True
          DataField = 'RegistrationDate'
          DataSource = DSForm
          Font.Charset = ARABIC_CHARSET
          Font.Color = clBlue
          Font.Height = -12
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentBiDiMode = False
          ParentCtl3D = False
          ParentFont = False
          TabOrder = 1
        end
        object DBERegistrationTime: TDBEdit
          Left = 205
          Top = 2
          Width = 48
          Height = 20
          TabStop = False
          Anchors = [akTop, akRight]
          BiDiMode = bdRightToLeft
          Ctl3D = False
          DataField = 'RegistrationTime'
          DataSource = DSForm
          Font.Charset = ARABIC_CHARSET
          Font.Color = clBlue
          Font.Height = -12
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentBiDiMode = False
          ParentCtl3D = False
          ParentFont = False
          ReadOnly = True
          TabOrder = 2
        end
        object DBEUserTitle: TDBEdit
          Left = 6
          Top = 2
          Width = 139
          Height = 20
          TabStop = False
          Anchors = [akTop, akRight]
          BiDiMode = bdRightToLeft
          Ctl3D = False
          DataField = 'UserTitle'
          DataSource = DSForm
          Font.Charset = ARABIC_CHARSET
          Font.Color = clBlue
          Font.Height = -12
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentBiDiMode = False
          ParentCtl3D = False
          ParentFont = False
          ReadOnly = True
          TabOrder = 3
        end
        object DBEChristRegDate: TDBEdit
          Left = 336
          Top = 4
          Width = 74
          Height = 19
          Anchors = [akTop, akRight]
          BiDiMode = bdLeftToRight
          BorderStyle = bsNone
          DataField = 'ChristRegDate'
          DataSource = DSForm
          Font.Charset = ARABIC_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentBiDiMode = False
          ParentColor = True
          ParentFont = False
          ReadOnly = True
          TabOrder = 4
        end
      end
      object mainPanel: TPanel
        Left = 0
        Top = 79
        Width = 732
        Height = 548
        Align = alClient
        TabOrder = 1
        DesignSize = (
          732
          548)
        object GroupBox2: TGroupBox
          Left = 6
          Top = 4
          Width = 718
          Height = 268
          Anchors = [akTop, akRight]
          Caption = #1605#1588#1582#1589#1575#1578
          Color = clBtnFace
          Font.Charset = ARABIC_CHARSET
          Font.Color = clBlue
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentColor = False
          ParentFont = False
          TabOrder = 0
          DesignSize = (
            718
            268)
          object Label8: TLabel
            Left = 653
            Top = 85
            Width = 40
            Height = 13
            Anchors = [akTop, akRight]
            Caption = '&'#1601#1585#1587#1578#1606#1583#1607
            Color = clSkyBlue
            Font.Charset = ARABIC_CHARSET
            Font.Color = clMaroon
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentColor = False
            ParentFont = False
            Transparent = True
          end
          object Label10: TLabel
            Left = 653
            Top = 61
            Width = 28
            Height = 13
            Anchors = [akTop, akRight]
            Caption = '&'#1711#1610#1585#1606#1583#1607
            Color = clSkyBlue
            FocusControl = Edit_FromOrgID
            Font.Charset = ARABIC_CHARSET
            Font.Color = clMaroon
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentColor = False
            ParentFont = False
            Transparent = True
          end
          object Label19: TLabel
            Left = 654
            Top = 109
            Width = 38
            Height = 13
            Anchors = [akTop, akRight]
            Caption = #1662#1610#1585#1608' '#1606#1575#1605#1607
            Font.Charset = ARABIC_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
          end
          object Label21: TLabel
            Left = 371
            Top = 110
            Width = 46
            Height = 13
            Anchors = [akTop, akRight]
            Caption = #1593#1591#1601' '#1606#1575#1605#1607
            Font.Charset = ARABIC_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
          end
          object SpeedButton9: TSpeedButton
            Left = 172
            Top = 58
            Width = 21
            Height = 21
            Cursor = crHandPoint
            Anchors = [akTop, akRight]
            Font.Charset = ARABIC_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            Glyph.Data = {
              36040000424D3604000000000000360000002800000010000000100000000100
              2000000000000004000000000000000000000000000000000000FF00FF00FF00
              FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
              FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00109A
              CE0018A2D600109ACE00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
              FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00109A
              CE0084D3EF006BEBFF0031B6DE00109ACE00088EB500088EB500088EB500FF00
              FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00109A
              CE0039AADE0084FFFF007BFFFF005AD3F7005AD3F7005AD3F7005AD3F70031B6
              DE00109ACE00088EB500FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00109A
              CE0039AADE009CFFFF0073F7FF0073EBFF0073EBFF0073EBFF005AD3F7005AD3
              F7005AD3F70031B6EF00109ACE00FF00FF00FF00FF00FF00FF00FF00FF00109A
              CE00109ACE009CD3EF007BF7FF007BF7FF0073EBFF0073EBFF0073EBFF0073EB
              FF005AD3F7005AD3F70031B6EF00FF00FF00FF00FF00FF00FF00FF00FF00109A
              CE005AD3F700109ACE0084FFFF0073F7FF0073F7FF0073F7FF0073EBFF0073EB
              FF0073EBFF005AD3F7005AD3F700088EB500FF00FF00FF00FF00FF00FF00109A
              CE007BF7FF00109ACE009CD3EF008CEBF7008CEBF7008CF7FF0073EBFF0073EB
              FF0073EBFF005AD3F7005AD3F70021AADE00FF00FF00FF00FF00FF00FF00109A
              CE0084FFFF005AD3F700109ACE00088EB500088EB500088EB5009CD3EF0073F7
              FF006BEBFF006BEBFF005AD3F7005AD3F700088EB500FF00FF00FF00FF00109A
              CE0084FFFF007BF7FF0084868400005100000051000000510000109ACE009CD3
              EF006BEBFF006BEBFF006BEBFF007BEBFF00188ECE00FF00FF00FF00FF00109A
              CE0084FFFF007BF7FF008C8E8C00318E31000051000000200000001C0000109A
              CE00088EB500108ECE00108ECE00108ECE00088EB500FF00FF00FF00FF00109A
              CE00B5FFFF007BFFFF009C9AA50039AA4A00318E310000380000003C0000B551
              0000BD490000D6510000D65900006B696B00FF00FF00FF00FF00FF00FF00109A
              CE0084D3EF00B5FFFF00A5A2A500189A210010710800398621007B792900D661
              1000B53C0000AD300000B53800006B696B00FF00FF00FF00FF00FF00FF00FF00
              FF0018A2D600109ACE00ADAAAD00FFCB6B00FFBE4A00FFB63900FFB63900FFBE
              4A00FFDF7300F7D3AD00BD865A006B696B00FF00FF00FF00FF00FF00FF00FF00
              FF00FF00FF00FF00FF00B5B6B500F7BE7300FFA22900FF9A1000FFAA3900FFAA
              3900FFD38C00F7EBB500FFFFBD006B696B00FF00FF00FF00FF00FF00FF00FF00
              FF00FF00FF00FF00FF00B5B6B500A5A2AD00A5A2AD00A5A2AD00A5A2AD00A5A2
              AD00A5A2AD00A5A2AD00A5A2AD0073717B00FF00FF00FF00FF00}
            ParentFont = False
            OnClick = SpeedButton9Click
          end
          object SpeedButton6: TSpeedButton
            Left = 172
            Top = 82
            Width = 21
            Height = 21
            Cursor = crHandPoint
            Anchors = [akTop, akRight]
            Font.Charset = ARABIC_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            Glyph.Data = {
              36040000424D3604000000000000360000002800000010000000100000000100
              2000000000000004000000000000000000000000000000000000FF00FF00FF00
              FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
              FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00109A
              CE0018A2D600109ACE00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
              FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00109A
              CE0084D3EF006BEBFF0031B6DE00109ACE00088EB500088EB500088EB500FF00
              FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00109A
              CE0039AADE0084FFFF007BFFFF005AD3F7005AD3F7005AD3F7005AD3F70031B6
              DE00109ACE00088EB500FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00109A
              CE0039AADE009CFFFF0073F7FF0073EBFF0073EBFF0073EBFF005AD3F7005AD3
              F7005AD3F70031B6EF00109ACE00FF00FF00FF00FF00FF00FF00FF00FF00109A
              CE00109ACE009CD3EF007BF7FF007BF7FF0073EBFF0073EBFF0073EBFF0073EB
              FF005AD3F7005AD3F70031B6EF00FF00FF00FF00FF00FF00FF00FF00FF00109A
              CE005AD3F700109ACE0084FFFF0073F7FF0073F7FF0073F7FF0073EBFF0073EB
              FF0073EBFF005AD3F7005AD3F700088EB500FF00FF00FF00FF00FF00FF00109A
              CE007BF7FF00109ACE009CD3EF008CEBF7008CEBF7008CF7FF0073EBFF0073EB
              FF0073EBFF005AD3F7005AD3F70021AADE00FF00FF00FF00FF00FF00FF00109A
              CE0084FFFF005AD3F700109ACE00088EB500088EB500088EB5009CD3EF0073F7
              FF006BEBFF006BEBFF005AD3F7005AD3F700088EB500FF00FF00FF00FF00109A
              CE0084FFFF007BF7FF0084868400005100000051000000510000109ACE009CD3
              EF006BEBFF006BEBFF006BEBFF007BEBFF00188ECE00FF00FF00FF00FF00109A
              CE0084FFFF007BF7FF008C8E8C00318E31000051000000200000001C0000109A
              CE00088EB500108ECE00108ECE00108ECE00088EB500FF00FF00FF00FF00109A
              CE00B5FFFF007BFFFF009C9AA50039AA4A00318E310000380000003C0000B551
              0000BD490000D6510000D65900006B696B00FF00FF00FF00FF00FF00FF00109A
              CE0084D3EF00B5FFFF00A5A2A500189A210010710800398621007B792900D661
              1000B53C0000AD300000B53800006B696B00FF00FF00FF00FF00FF00FF00FF00
              FF0018A2D600109ACE00ADAAAD00FFCB6B00FFBE4A00FFB63900FFB63900FFBE
              4A00FFDF7300F7D3AD00BD865A006B696B00FF00FF00FF00FF00FF00FF00FF00
              FF00FF00FF00FF00FF00B5B6B500F7BE7300FFA22900FF9A1000FFAA3900FFAA
              3900FFD38C00F7EBB500FFFFBD006B696B00FF00FF00FF00FF00FF00FF00FF00
              FF00FF00FF00FF00FF00B5B6B500A5A2AD00A5A2AD00A5A2AD00A5A2AD00A5A2
              AD00A5A2AD00A5A2AD00A5A2AD0073717B00FF00FF00FF00FF00}
            ParentFont = False
            OnClick = SpeedButton6Click
          end
          object SpeedButton8: TSpeedButton
            Left = 345
            Top = 106
            Width = 21
            Height = 21
            Cursor = crHandPoint
            Anchors = [akTop, akRight]
            Glyph.Data = {
              AA040000424DAA04000000000000360000002800000013000000130000000100
              1800000000007404000000000000000000000000000000000000005F7F0091C7
              64B8D770C0DA68B8D369B8D153B4CE48B0CC42ABC739A5C633A0C32C9BC02596
              BD2092BA1787B40D83B20A8CBB024C83002D53003C00008FC521BFE866C4DFCD
              F0F68EF2FF68EBFD73EEFC71EFFC6FF0FD66EDFD5CEBFD50E6FD42E0FC31DBFC
              22D8FF20D9FE0D96C5018DC0016FA2006100008CC547DFFA4FE0F43DBADD8FDA
              ED7AF2FF50E9FC63ECFD6AEDFD65EEFD5DEBFE50E6FC3EDFFC34E3FF32D3F117
              94BF089DCB08DAFF027EB2003E00008FC945DBF777F7FF55E8FA3ABEE084CEE3
              AAF8FC80F9FF7DF5FC7FF5FD72F1FD5DE8FC5EF2FF48CAE41895BF15BAE517DA
              FF0ED7FE027EB10069000090CC4ADEF977F4FD69EEFD62F0FF37CAE95DBEDCAF
              F2F5A6FFFF86F7FB80F8FE82F8FD4CBFD9189FC820D0F623D8FF1CD2FB15DAFE
              0482B40061000091CC4BE0F87DF7FD6CEFFC68EDFD66F1FF45DBF343BCDC91DF
              F0B5FFFF8DF2F83CB7D723BAE132DFFE2EDCFE25D6FB21D4FC1CDCFE0584B500
              65000096D050E2FA83F8FE72F1FC6DEEFB6DF2FE5CEBFD259AC14F94AA6EC9DF
              61ABBD2A789927C4EB40E9FF33DBFB2CD9FD26D5FA21DAFF0788B9002000009B
              D454E4FA88F8FD75F3FC7DFCFF54DAF22F8FB3B5A68BFFD196B2BFB3EACCA3F1
              BD8A547487179FCB3DE7FF35DFFD2CD6FA25E0FF088ABB002200009BD657E5FA
              93FDFE83FBFF43C9E7488DA4D5B891FFE0B5FAEEDEFFFFF3FFF4E3FFE2C0FFD0
              9D82817E1881AD33D9FA39E4FF2BDEFD088BBC006E00009BD962EDFF91F9FB34
              B0D06A949AF8D6AFFFF6E4FAFDFFFCFFFFFAFAF6FCFAF4FBF9EFFBF2E0FFE8BE
              AA9685256B9022BEE436EFFF0A8EC0003E0000A5DE47D8F53AAFD297B6B8FFF2
              DBFEFFFDFBFEFFFEFDFCFCFCFCFEFEFCFDFCF6FDF9F1FDF8EDFAF6E9FFF8DBDB
              C3A83D65831EAAD00D95C4003C0001A8E00492C0B8AD9EFFFFFFFAFFFFFBFCFD
              FEFDFCFDFDFDFCFCFCFDFCFEFDFEFBFCFBF6FEF8F2FDF7EBFAF3E6FFFFEEDFB8
              AB2D3F5A00548E003C000033480F85A3EBC399FCFEFEFCFCFAFDFCFCFDFEFEFE
              FDFEFDFDFDFEFDFCFEFDFEFDFDFBFDFBF6FDF8F2FDF6E9FCF8EEEDC0AB4B515B
              0013340069000000000C1617E4C09CFEFEFEFDFCFBFDFDFDFEFEFEFEFEFEFEFE
              FEFEFEFDFEFDFDFDFDFDFEFDFBFEFAF6FDF7F1FDFDF2ECC5B445302300000000
              74000001030C0000E8BF99FFFFFFFCFBFAFDFDFDFEFEFEFEFEFEFDFDFDFDFDFE
              FDFEFDFDFCFDFDFEFEFDFDFBFCFAF5FCFEF9F1CCBD4A270E000000003C000000
              000D0601EAC8A5FFFFFFFDFCFBFDFDFDFEFDFDFDFDFDFDFDFDFDFDFDFDFDFDFD
              FDFDFDFDFCFDFDFEFCFCF9FDFEFDF3CDBD4D2B100000000068000000000E0600
              EECBAAFEFDFDFCFAF8FCFBFAFDFCFBFDFCFBFDFCFBFDFCFBFDFCFBFDFDFBFDFC
              FBFDFCFAFCFAF9FCFDFBF5D0BC4F2C0F0000000048000000000E0600F2D3B7FF
              FFFFFDFFFFFEFFFFFEFFFFFEFFFFFEFFFFFEFFFFFFFFFFFEFFFFFFFFFFFFFFFF
              FDFFFFFDFFFFF9DBD1522E100000000074000000000E0903F3CCA6FEE5CDF9DD
              C3F6D9BDF4D3B6F1CEAFF0CBAAEDC7A6EBC4A0E8BC98E6B790E4B18AE1AE86DB
              A881EAA268552D09000000007400}
            OnClick = SpeedButton8Click
          end
          object SpeedButton7: TSpeedButton
            Left = 628
            Top = 106
            Width = 21
            Height = 21
            Cursor = crHandPoint
            Anchors = [akTop, akRight]
            Glyph.Data = {
              AA040000424DAA04000000000000360000002800000013000000130000000100
              1800000000007404000000000000000000000000000000000000005F7F0091C7
              64B8D770C0DA68B8D369B8D153B4CE48B0CC42ABC739A5C633A0C32C9BC02596
              BD2092BA1787B40D83B20A8CBB024C83002D53003C00008FC521BFE866C4DFCD
              F0F68EF2FF68EBFD73EEFC71EFFC6FF0FD66EDFD5CEBFD50E6FD42E0FC31DBFC
              22D8FF20D9FE0D96C5018DC0016FA2006100008CC547DFFA4FE0F43DBADD8FDA
              ED7AF2FF50E9FC63ECFD6AEDFD65EEFD5DEBFE50E6FC3EDFFC34E3FF32D3F117
              94BF089DCB08DAFF027EB2003E00008FC945DBF777F7FF55E8FA3ABEE084CEE3
              AAF8FC80F9FF7DF5FC7FF5FD72F1FD5DE8FC5EF2FF48CAE41895BF15BAE517DA
              FF0ED7FE027EB10069000090CC4ADEF977F4FD69EEFD62F0FF37CAE95DBEDCAF
              F2F5A6FFFF86F7FB80F8FE82F8FD4CBFD9189FC820D0F623D8FF1CD2FB15DAFE
              0482B40061000091CC4BE0F87DF7FD6CEFFC68EDFD66F1FF45DBF343BCDC91DF
              F0B5FFFF8DF2F83CB7D723BAE132DFFE2EDCFE25D6FB21D4FC1CDCFE0584B500
              65000096D050E2FA83F8FE72F1FC6DEEFB6DF2FE5CEBFD259AC14F94AA6EC9DF
              61ABBD2A789927C4EB40E9FF33DBFB2CD9FD26D5FA21DAFF0788B9002000009B
              D454E4FA88F8FD75F3FC7DFCFF54DAF22F8FB3B5A68BFFD196B2BFB3EACCA3F1
              BD8A547487179FCB3DE7FF35DFFD2CD6FA25E0FF088ABB002200009BD657E5FA
              93FDFE83FBFF43C9E7488DA4D5B891FFE0B5FAEEDEFFFFF3FFF4E3FFE2C0FFD0
              9D82817E1881AD33D9FA39E4FF2BDEFD088BBC006E00009BD962EDFF91F9FB34
              B0D06A949AF8D6AFFFF6E4FAFDFFFCFFFFFAFAF6FCFAF4FBF9EFFBF2E0FFE8BE
              AA9685256B9022BEE436EFFF0A8EC0003E0000A5DE47D8F53AAFD297B6B8FFF2
              DBFEFFFDFBFEFFFEFDFCFCFCFCFEFEFCFDFCF6FDF9F1FDF8EDFAF6E9FFF8DBDB
              C3A83D65831EAAD00D95C4003C0001A8E00492C0B8AD9EFFFFFFFAFFFFFBFCFD
              FEFDFCFDFDFDFCFCFCFDFCFEFDFEFBFCFBF6FEF8F2FDF7EBFAF3E6FFFFEEDFB8
              AB2D3F5A00548E003C000033480F85A3EBC399FCFEFEFCFCFAFDFCFCFDFEFEFE
              FDFEFDFDFDFEFDFCFEFDFEFDFDFBFDFBF6FDF8F2FDF6E9FCF8EEEDC0AB4B515B
              0013340069000000000C1617E4C09CFEFEFEFDFCFBFDFDFDFEFEFEFEFEFEFEFE
              FEFEFEFDFEFDFDFDFDFDFEFDFBFEFAF6FDF7F1FDFDF2ECC5B445302300000000
              74000001030C0000E8BF99FFFFFFFCFBFAFDFDFDFEFEFEFEFEFEFDFDFDFDFDFE
              FDFEFDFDFCFDFDFEFEFDFDFBFCFAF5FCFEF9F1CCBD4A270E000000003C000000
              000D0601EAC8A5FFFFFFFDFCFBFDFDFDFEFDFDFDFDFDFDFDFDFDFDFDFDFDFDFD
              FDFDFDFDFCFDFDFEFCFCF9FDFEFDF3CDBD4D2B100000000068000000000E0600
              EECBAAFEFDFDFCFAF8FCFBFAFDFCFBFDFCFBFDFCFBFDFCFBFDFCFBFDFDFBFDFC
              FBFDFCFAFCFAF9FCFDFBF5D0BC4F2C0F0000000048000000000E0600F2D3B7FF
              FFFFFDFFFFFEFFFFFEFFFFFEFFFFFEFFFFFEFFFFFFFFFFFEFFFFFFFFFFFFFFFF
              FDFFFFFDFFFFF9DBD1522E100000000074000000000E0903F3CCA6FEE5CDF9DD
              C3F6D9BDF4D3B6F1CEAFF0CBAAEDC7A6EBC4A0E8BC98E6B790E4B18AE1AE86DB
              A881EAA268552D09000000007400}
            OnClick = SpeedButton7Click
          end
          object Label14: TLabel
            Left = 656
            Top = 233
            Width = 39
            Height = 26
            Anchors = [akTop, akRight]
            Caption = #1605#1608#1590#1608#1593' / '#1606#1608#1593' '#1606#1575#1605#1607
            Font.Charset = ARABIC_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
            WordWrap = True
          end
          object Label25: TLabel
            Left = 653
            Top = 131
            Width = 55
            Height = 13
            Anchors = [akTop, akRight]
            Caption = '&'#1605#1590#1605#1608#1606' '#1606#1575#1605#1607
            Font.Charset = ARABIC_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
          end
          object SpeedButton14: TBitBtn
            Left = 8
            Top = 102
            Width = 88
            Height = 25
            Cursor = crHandPoint
            Hint = #1606#1605#1575#1610#1588' '#1575#1585#1578#1576#1575#1591' '#1576#1610#1606' '#1606#1575#1605#1607' '#1607#1575' '#1575#1586' '#1585#1608#1610' '#1662#1610#1585#1608' '#1608' '#1593#1591#1601
            Anchors = [akTop, akRight]
            Caption = #1575#1585#1578#1576#1575#1591' '#1576#1610#1606' '#1606#1575#1605#1607' '#1607#1575
            Font.Charset = ARABIC_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
            TabOrder = 8
            TabStop = False
            OnClick = SpeedButton14Click
          end
          object Edit_FromOrgID: TEdit
            Left = 602
            Top = 57
            Width = 47
            Height = 21
            Anchors = [akTop, akRight]
            Font.Charset = ARABIC_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
            TabOrder = 1
            OnEnter = Edit_FromOrgIDEnter
            OnExit = Edit_FromOrgIDExit
          end
          object DBLkCBFromOrgTitle: TDBLookupComboBox
            Left = 427
            Top = 57
            Width = 173
            Height = 21
            Anchors = [akTop, akRight]
            BiDiMode = bdLeftToRight
            DataField = 'FromOrgTitle'
            DataSource = DSForm
            DropDownRows = 20
            Font.Charset = ARABIC_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            ListField = 'Title'
            ParentBiDiMode = False
            ParentFont = False
            TabOrder = 2
            OnClick = DBLkCBFromOrgTitleClick
            OnKeyDown = DBLkCBFromOrgTitleKeyDown
          end
          object DBEditToStaffer: TDBEdit
            Left = 196
            Top = 82
            Width = 224
            Height = 21
            Anchors = [akTop, akRight]
            Color = clWhite
            DataField = 'ToStaffer'
            DataSource = DSForm
            Font.Charset = ARABIC_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
            TabOrder = 5
            OnExit = TEditExit
          end
          object DBEdit16: TDBEdit
            Left = 196
            Top = 57
            Width = 224
            Height = 21
            TabStop = False
            Anchors = [akTop, akRight]
            BevelInner = bvLowered
            BiDiMode = bdRightToLeft
            Color = clWhite
            DataField = 'FromStaffer'
            DataSource = DSForm
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
          object ToOrgTitleEdit: TEdit
            Left = 427
            Top = 82
            Width = 222
            Height = 21
            Anchors = [akTop, akRight]
            Font.Charset = ARABIC_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
            TabOrder = 4
            OnChange = ToOrgTitleEditChange
            OnExit = ToOrgTitleEditExit
            OnKeyDown = ToOrgTitleEditKeyDown
          end
          object NoPanel: TPanel
            Left = 142
            Top = 16
            Width = 567
            Height = 39
            Anchors = [akTop, akRight]
            BevelOuter = bvNone
            ParentColor = True
            TabOrder = 0
            DesignSize = (
              567
              39)
            object Label3: TLabel
              Left = 511
              Top = 17
              Width = 51
              Height = 13
              Anchors = [akTop, akRight]
              Caption = '&'#1588#1605#1575#1585#1607' '#1606#1575#1605#1607
              Font.Charset = ARABIC_CHARSET
              Font.Color = clMaroon
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = []
              ParentFont = False
            end
            object Label4: TLabel
              Left = 211
              Top = 17
              Width = 21
              Height = 13
              Anchors = [akTop, akRight]
              Caption = '&'#1578#1575#1585#1610#1582
              Font.Charset = ARABIC_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = []
              ParentFont = False
            end
            object DBTextChristIncomDate: TDBText
              Left = 50
              Top = 18
              Width = 70
              Height = 17
              Anchors = [akTop, akRight]
              BiDiMode = bdLeftToRight
              DataField = 'ChristIncomDate'
              DataSource = DSForm
              Font.Charset = ARABIC_CHARSET
              Font.Color = clBlack
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = []
              ParentBiDiMode = False
              ParentFont = False
            end
            object SpeedButton4: TSpeedButton
              Left = 264
              Top = 15
              Width = 21
              Height = 20
              Cursor = crHandPoint
              Hint = #1578#1575#1610#1662' '#1601#1575#1585#1587#1610
              Anchors = [akTop, akRight]
              Caption = #1601
              OnClick = SpeedButton4Click
            end
            object SpeedButton1: TSpeedButton
              Left = 241
              Top = 15
              Width = 21
              Height = 20
              Cursor = crHandPoint
              Hint = #1578#1575#1610#1662' '#1575#1606#1711#1604#1610#1587#1610
              Anchors = [akTop, akRight]
              Caption = 'E'
              OnClick = SpeedButton1Click
            end
            object DBShamsiDateEdit: TDBShamsiDateEdit
              Left = 123
              Top = 15
              Width = 80
              Height = 21
              Anchors = [akTop, akRight]
              BiDiMode = bdLeftToRight
              CheckValidity = True
              ShowMsg = False
              DataField = 'Incommingdate'
              DataSource = DSForm
              Font.Charset = ARABIC_CHARSET
              Font.Color = clBlack
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = []
              ParentBiDiMode = False
              ParentColor = True
              ParentFont = False
              TabOrder = 1
              OnEnter = DBShamsiDateEditEnter
              OnExit = TEditExit
            end
            object DBEIncommingNO: TDBEdit
              Left = 286
              Top = 15
              Width = 220
              Height = 21
              Anchors = [akTop, akRight]
              BiDiMode = bdRightToLeft
              DataField = 'IncommingNO'
              DataSource = DSForm
              Font.Charset = ARABIC_CHARSET
              Font.Color = clBlack
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = []
              ParentBiDiMode = False
              ParentFont = False
              TabOrder = 0
              OnEnter = TEditEnter
              OnExit = DBEdit3Exit
              OnKeyPress = DBEIncommingNOKeyPress
            end
            object ChBoIncommingNO: TCheckBox
              Left = 296
              Top = -1
              Width = 210
              Height = 15
              Anchors = [akTop, akRight]
              Caption = #1576#1583#1608#1606' '#1575#1587#1578#1601#1575#1583#1607' '#1575#1586' '#1601#1585#1605#1608#1604' '#1578#1575#1610#1662' '#1588#1605#1575#1585#1607' '#1606#1575#1605#1607
              Font.Charset = ARABIC_CHARSET
              Font.Color = clBlack
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = []
              ParentFont = False
              TabOrder = 2
              OnClick = ChBoIncommingNOClick
            end
          end
          object DBEFollowLetterNo: TDBEdit
            Left = 427
            Top = 106
            Width = 199
            Height = 21
            TabStop = False
            Anchors = [akTop, akRight]
            DataField = 'FollowLetterNo'
            DataSource = DSForm
            Font.Charset = ARABIC_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
            TabOrder = 6
            OnEnter = TEditEnter
            OnExit = TEditExit
            OnKeyPress = DBEFollowLetterNoKeyPress
          end
          object DBERetroactionNo: TDBEdit
            Left = 196
            Top = 106
            Width = 147
            Height = 21
            TabStop = False
            Anchors = [akTop, akRight]
            DataField = 'RetroactionNo'
            DataSource = DSForm
            Font.Charset = ARABIC_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
            TabOrder = 7
            OnEnter = TEditEnter
            OnExit = TEditExit
            OnKeyPress = DBERetroactionNoKeyPress
          end
          object ChBoFollowRetroaction: TCheckBox
            Left = 118
            Top = 108
            Width = 74
            Height = 15
            Anchors = [akTop, akRight]
            Caption = #1576#1583#1608#1606' '#1601#1585#1605#1608#1604
            Font.Charset = ARABIC_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
            TabOrder = 9
          end
          object SBSimpleEditor: TBitBtn
            Left = 653
            Top = 154
            Width = 23
            Height = 22
            Cursor = crHandPoint
            Hint = #1608#1610#1585#1575#1610#1588#1711#1585' '#1587#1575#1583#1607
            TabOrder = 10
            OnClick = SBSimpleEditorClick
            Glyph.Data = {
              36040000424D3604000000000000360000002800000010000000100000000100
              2000000000000004000000000000000000000000000000000000C66B4200BD7B
              5A009C634A009C634A0094634A0094634A0094634A008C5A42008C5A42008C5A
              420084523900845239007B523900845239007B5239008C523900C66B4200BD84
              7300FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
              FF00FFFFF700FFF7F700FFF7F700FFF7EF00FFFFFF0084634A00C6734A00BD8C
              7300FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFF700FFF7F700FFFFFF00FFFF
              FF00FFFFF700F7EFE700F7E7E700F7E7E700FFF7EF00845A4A00C6735200BD8C
              7B00FFFFFF00EFDEDE00AD8C7B00AD847300F7EFE700FFFFF700A57B63009C84
              6B00947B6300FFF7F700FFEFE700F7E7E700FFF7F700845A4A00CE7B5200BD8C
              7B00FFFFFF00DEC6BD00BD735200AD4A18009C735A00FFFFFF00943910008442
              180073310800B5AD9C00FFF7F700F7EFE700FFF7F7008C5A4A00CE845A00C694
              8400FFFFFF00DECEC600CE846B00D67B4A009C522900E7DED600AD5A3900BD5A
              3100A54A1800735A3900FFF7F700FFEFEF00FFF7F7008C634A00CE846300C694
              8400FFFFFF00DECEC600D6947300D6845A00BD6B3900A5735A00BD735200BD63
              3100BD5A31006B310000C6BDAD00FFFFF700FFFFFF00946B5200D68C6B00C69C
              8400FFFFFF00E7D6CE00D69C7B00BD7B5A00DE9473009C5A3900BD7B6300C66B
              3900C66B3900BD633100735A3100FFF7F700FFFFFF00946B5200DE8C7300CEA5
              8C00FFFFFF00E7D6CE00E7A58C00AD735A00BD7B6300DE947300CE7B5200CE73
              4A00945A3900C66B4A007B421000C6BDAD00FFFFFF00946B5200DE947300CE9C
              8C00FFFFFF00EFD6CE00E7AD9400B5735A00CEB5A500D69C8400D6846300CE7B
              5200A5634A00BD948400B5633100846B4A00FFFFFF009C735A00DE947300CEA5
              8C00FFFFFF00E7C6BD00E7AD9400B57B5A00EFEFE700CEA59400E79C8400D67B
              5A00B5735200E7E7DE00BD7352007B421800E7E7DE00A5736300E79C7B00D6AD
              9C00FFF7F700D68C6B00EFBDA500DEA58C00B5846B00E7DED600CE8C7300DE94
              7B00B5846B00F7E7DE00BD7B6300CE7B5A00A57B6300A56B5A00E79C7B00D6AD
              9C00EFCEBD00DE9C8400DEA58C00DEA58C00CE846B00F7E7E700D6AD9400D68C
              6B00CE846B00E7CEBD00CE7B5A00CE846300CE7352009C634A00E79C8400CEAD
              9C00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
              FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00AD7B6300EFA58400CEA5
              9400F7EFEF00EFE7E700EFE7E700EFE7DE00EFE7DE00EFE7DE00EFE7DE00EFE7
              DE00EFE7DE00EFDEDE00EFDEDE00EFDEDE00EFE7E700AD7B6300EFA58400E7BD
              AD00DEAD9C00DEAD9C00DEAD9C00DEAD9C00DEA58C00DEA58C00D69C8400D694
              7B00D6947B00CE8C6B00CE846300D6846300C6735200D6846300}
          end
          object DBMemoMemo: TDBMemo
            Left = 8
            Top = 131
            Width = 641
            Height = 105
            Alignment = taRightJustify
            BiDiMode = bdRightToLeftNoAlign
            DataField = 'Memo'
            DataSource = DSForm
            Font.Charset = ARABIC_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentBiDiMode = False
            ParentFont = False
            TabOrder = 11
            OnEnter = DBMemoMemoEnter
            OnExit = DBMemoMemoExit
          end
          object DBLookupComboBox5: TDBLookupComboBox
            Left = 350
            Top = 240
            Width = 299
            Height = 21
            Anchors = [akTop, akRight]
            BiDiMode = bdLeftToRight
            DataField = 'SubjectTitle'
            DataSource = DSForm
            Font.Charset = ARABIC_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentBiDiMode = False
            ParentFont = False
            TabOrder = 12
          end
        end
        object GroupBox1: TGroupBox
          Left = 6
          Top = 275
          Width = 718
          Height = 41
          Anchors = [akTop, akRight]
          Caption = #1583#1576#1610#1585' '#1582#1575#1606#1607' '#1605#1585#1705#1586#1610'   '
          Font.Charset = ARABIC_CHARSET
          Font.Color = clBlue
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          TabOrder = 1
          DesignSize = (
            718
            41)
          object Label6: TLabel
            Left = 602
            Top = 17
            Width = 103
            Height = 13
            Anchors = [akTop, akRight]
            Caption = #1588#1605#1575#1585#1607' '#1583#1576#1610#1585#1582#1575#1606#1607' '#1605#1585#1705#1586#1610
            FocusControl = DBEdit5
            Font.Charset = ARABIC_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
          end
          object Label5: TLabel
            Left = 428
            Top = 17
            Width = 21
            Height = 13
            Anchors = [akTop, akRight]
            Caption = #1578#1575#1585#1610#1582'&'
            FocusControl = DBShamsiDateEdit2
            Font.Charset = ARABIC_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
          end
          object DBEdit5: TDBEdit
            Left = 462
            Top = 14
            Width = 137
            Height = 21
            Anchors = [akTop, akRight]
            BiDiMode = bdRightToLeft
            DataField = 'CenterNo'
            DataSource = DSForm
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
          object DBShamsiDateEdit2: TDBShamsiDateEdit
            Left = 350
            Top = 14
            Width = 73
            Height = 21
            Anchors = [akTop, akRight]
            BiDiMode = bdLeftToRight
            CheckValidity = True
            ShowMsg = False
            DataField = 'CenterDate'
            DataSource = DSForm
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
        end
        object GroupBox4: TGroupBox
          Left = 6
          Top = 319
          Width = 718
          Height = 94
          Anchors = [akTop, akRight]
          Caption = #1608#1610#1688#1711#1610' '#1606#1575#1605#1607
          Font.Charset = ARABIC_CHARSET
          Font.Color = clBlue
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          TabOrder = 2
          DesignSize = (
            718
            94)
          object Label2: TLabel
            Left = 653
            Top = 22
            Width = 49
            Height = 13
            Anchors = [akTop, akRight]
            Caption = '&'#1591#1576#1602#1607' '#1576#1606#1583#1610
            FocusControl = DBEdit6
            Font.Charset = ARABIC_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
          end
          object Label7: TLabel
            Left = 653
            Top = 46
            Width = 48
            Height = 13
            Anchors = [akTop, akRight]
            Caption = #1601#1608#1585#1610#1578' &'#1606#1575#1605#1607
            FocusControl = DBEdit8
            Font.Charset = ARABIC_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
          end
          object Label9: TLabel
            Left = 404
            Top = 22
            Width = 48
            Height = 13
            Anchors = [akTop, akRight]
            Caption = '&'#1606#1608#1593' '#1583#1585#1610#1575#1601#1578
            FocusControl = DBEdit14
            Font.Charset = ARABIC_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
          end
          object Label17: TLabel
            Left = 653
            Top = 68
            Width = 54
            Height = 13
            Anchors = [akTop, akRight]
            Caption = '&'#1578#1593#1583#1575#1583' '#1589#1601#1581#1607
            FocusControl = DBEdit17
            Font.Charset = ARABIC_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
          end
          object Label18: TLabel
            Left = 404
            Top = 46
            Width = 54
            Height = 13
            Anchors = [akTop, akRight]
            Caption = #1605#1607#1604#1578' '#1662#1575#1587#1582
            FocusControl = DBEdit9
            Font.Charset = ARABIC_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
          end
          object Label23: TLabel
            Left = 404
            Top = 68
            Width = 51
            Height = 13
            Anchors = [akTop, akRight]
            Caption = #1705#1583' '#1585#1607#1711#1610#1585#1610
          end
          object SpeedButton3: TBitBtn
            Left = 190
            Top = 18
            Width = 21
            Height = 21
            Cursor = crHandPoint
            Anchors = [akTop, akRight]
            Font.Charset = ARABIC_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
            TabOrder = 0
            OnClick = SpeedButton3Click
            Glyph.Data = {
              36040000424D3604000000000000360000002800000010000000100000000100
              2000000000000004000000000000000000000000000000000000FF00FF00FF00
              FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
              FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00109A
              CE0018A2D600109ACE00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
              FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00109A
              CE0084D3EF006BEBFF0031B6DE00109ACE00088EB500088EB500088EB500FF00
              FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00109A
              CE0039AADE0084FFFF007BFFFF005AD3F7005AD3F7005AD3F7005AD3F70031B6
              DE00109ACE00088EB500FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00109A
              CE0039AADE009CFFFF0073F7FF0073EBFF0073EBFF0073EBFF005AD3F7005AD3
              F7005AD3F70031B6EF00109ACE00FF00FF00FF00FF00FF00FF00FF00FF00109A
              CE00109ACE009CD3EF007BF7FF007BF7FF0073EBFF0073EBFF0073EBFF0073EB
              FF005AD3F7005AD3F70031B6EF00FF00FF00FF00FF00FF00FF00FF00FF00109A
              CE005AD3F700109ACE0084FFFF0073F7FF0073F7FF0073F7FF0073EBFF0073EB
              FF0073EBFF005AD3F7005AD3F700088EB500FF00FF00FF00FF00FF00FF00109A
              CE007BF7FF00109ACE009CD3EF008CEBF7008CEBF7008CF7FF0073EBFF0073EB
              FF0073EBFF005AD3F7005AD3F70021AADE00FF00FF00FF00FF00FF00FF00109A
              CE0084FFFF005AD3F700109ACE00088EB500088EB500088EB5009CD3EF0073F7
              FF006BEBFF006BEBFF005AD3F7005AD3F700088EB500FF00FF00FF00FF00109A
              CE0084FFFF007BF7FF0084868400005100000051000000510000109ACE009CD3
              EF006BEBFF006BEBFF006BEBFF007BEBFF00188ECE00FF00FF00FF00FF00109A
              CE0084FFFF007BF7FF008C8E8C00318E31000051000000200000001C0000109A
              CE00088EB500108ECE00108ECE00108ECE00088EB500FF00FF00FF00FF00109A
              CE00B5FFFF007BFFFF009C9AA50039AA4A00318E310000380000003C0000B551
              0000BD490000D6510000D65900006B696B00FF00FF00FF00FF00FF00FF00109A
              CE0084D3EF00B5FFFF00A5A2A500189A210010710800398621007B792900D661
              1000B53C0000AD300000B53800006B696B00FF00FF00FF00FF00FF00FF00FF00
              FF0018A2D600109ACE00ADAAAD00FFCB6B00FFBE4A00FFB63900FFB63900FFBE
              4A00FFDF7300F7D3AD00BD865A006B696B00FF00FF00FF00FF00FF00FF00FF00
              FF00FF00FF00FF00FF00B5B6B500F7BE7300FFA22900FF9A1000FFAA3900FFAA
              3900FFD38C00F7EBB500FFFFBD006B696B00FF00FF00FF00FF00FF00FF00FF00
              FF00FF00FF00FF00FF00B5B6B500A5A2AD00A5A2AD00A5A2AD00A5A2AD00A5A2
              AD00A5A2AD00A5A2AD00A5A2AD0073717B00FF00FF00FF00FF00}
          end
          object DBEdit6: TDBEdit
            Left = 622
            Top = 18
            Width = 26
            Height = 21
            Anchors = [akTop, akRight]
            DataField = 'ClassificationID'
            DataSource = DSForm
            Font.Charset = ARABIC_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
            TabOrder = 1
            OnEnter = TEditEnter
            OnExit = TEditExit
          end
          object DBEdit8: TDBEdit
            Left = 622
            Top = 41
            Width = 26
            Height = 21
            Anchors = [akTop, akRight]
            DataField = 'UrgencyID'
            DataSource = DSForm
            Font.Charset = ARABIC_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
            TabOrder = 2
            OnEnter = TEditEnter
            OnExit = TEditExit
          end
          object DBEdit14: TDBEdit
            Left = 372
            Top = 18
            Width = 28
            Height = 21
            Anchors = [akTop, akRight]
            DataField = 'ReceiveTypeID'
            DataSource = DSForm
            Font.Charset = ARABIC_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
            TabOrder = 3
            OnEnter = TEditEnter
            OnExit = TEditExit
          end
          object DBLookupComboBox1: TDBLookupComboBox
            Left = 475
            Top = 18
            Width = 145
            Height = 21
            Anchors = [akTop, akRight]
            BiDiMode = bdLeftToRight
            DataField = 'ClassificationTitle'
            DataSource = DSForm
            Font.Charset = ARABIC_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentBiDiMode = False
            ParentFont = False
            TabOrder = 4
          end
          object DBLookupComboBox3: TDBLookupComboBox
            Left = 475
            Top = 41
            Width = 145
            Height = 21
            Anchors = [akTop, akRight]
            BiDiMode = bdLeftToRight
            DataField = 'UrgencyTitle'
            DataSource = DSForm
            Font.Charset = ARABIC_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentBiDiMode = False
            ParentFont = False
            TabOrder = 5
          end
          object DBLookupComboBox7: TDBLookupComboBox
            Left = 214
            Top = 18
            Width = 154
            Height = 21
            Anchors = [akTop, akRight]
            BiDiMode = bdLeftToRight
            DataField = 'ReciveTypeTitle'
            DataSource = DSForm
            Font.Charset = ARABIC_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentBiDiMode = False
            ParentFont = False
            TabOrder = 6
          end
          object DBEdit17: TDBEdit
            Left = 585
            Top = 65
            Width = 63
            Height = 21
            Anchors = [akTop, akRight]
            DataField = 'NumberOfPage'
            DataSource = DSForm
            Font.Charset = ARABIC_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
            TabOrder = 7
            OnEnter = TEditEnter
            OnExit = TEditExit
          end
          object DBEdit9: TDBShamsiDateEdit
            Left = 310
            Top = 41
            Width = 90
            Height = 21
            Anchors = [akTop, akRight]
            CheckValidity = True
            ShowMsg = False
            DataField = 'DeadLineDate'
            DataSource = DSForm
            Font.Charset = ARABIC_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
            TabOrder = 8
          end
          object DBEFollowCode: TDBEdit
            Left = 217
            Top = 65
            Width = 183
            Height = 19
            Anchors = [akTop, akRight]
            BiDiMode = bdLeftToRight
            Ctl3D = False
            DataField = 'FollowCode'
            DataSource = DSForm
            ParentBiDiMode = False
            ParentCtl3D = False
            ReadOnly = True
            TabOrder = 9
          end
        end
        object GroupBox5: TGroupBox
          Left = 6
          Top = 417
          Width = 718
          Height = 75
          Anchors = [akTop, akRight]
          Caption = #1662#1610#1608#1587#1578#1607#1575
          Font.Charset = ARABIC_CHARSET
          Font.Color = clBlue
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          TabOrder = 3
          DesignSize = (
            718
            75)
          object Label20: TLabel
            Left = 318
            Top = 20
            Width = 54
            Height = 13
            Anchors = [akTop, akRight]
            Caption = #1578#1593#1583#1575#1583' &'#1589#1601#1581#1607
            FocusControl = DBEdit11
            Font.Charset = ARABIC_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
          end
          object Label15: TLabel
            Left = 644
            Top = 20
            Width = 62
            Height = 13
            Anchors = [akTop, akRight]
            Caption = '&'#1593#1606#1608#1575#1606' '#1662#1610#1608#1587#1578
            FocusControl = DBEdit10
            Font.Charset = ARABIC_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
          end
          object Label11: TLabel
            Left = 637
            Top = 46
            Width = 62
            Height = 13
            Anchors = [akTop, akRight]
            Caption = #1601#1585#1605' '#1662#1610#1608#1587#1578' 1'
            Font.Charset = ARABIC_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
          end
          object Label16: TLabel
            Left = 381
            Top = 45
            Width = 62
            Height = 13
            Anchors = [akTop, akRight]
            Caption = #1601#1585#1605' '#1662#1610#1608#1587#1578' 2'
            Font.Charset = ARABIC_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
          end
          object DBEdit10: TDBEdit
            Left = 385
            Top = 16
            Width = 249
            Height = 21
            Anchors = [akTop, akRight]
            DataField = 'AttachTitle'
            DataSource = DSForm
            Font.Charset = ARABIC_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
            TabOrder = 0
            OnEnter = TEditEnter
            OnExit = TEditExit
          end
          object DBEdit11: TDBEdit
            Left = 289
            Top = 16
            Width = 23
            Height = 21
            Anchors = [akTop, akRight]
            DataField = 'NumberOfAttachPages'
            DataSource = DSForm
            Font.Charset = ARABIC_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            MaxLength = 4
            ParentFont = False
            TabOrder = 1
            OnEnter = TEditEnter
            OnExit = TEditExit
          end
          object DBLookupComboBox4: TDBLookupComboBox
            Left = 458
            Top = 42
            Width = 177
            Height = 21
            Anchors = [akTop, akRight]
            BiDiMode = bdLeftToRight
            DataField = 'UserTableTitle'
            DataSource = DSForm
            Font.Charset = ARABIC_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentBiDiMode = False
            ParentFont = False
            TabOrder = 2
          end
          object DBLookupComboBox6: TDBLookupComboBox
            Left = 199
            Top = 42
            Width = 177
            Height = 21
            Anchors = [akTop, akRight]
            BiDiMode = bdLeftToRight
            DataField = 'UserTableTitle2'
            DataSource = DSForm
            Font.Charset = ARABIC_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentBiDiMode = False
            ParentFont = False
            TabOrder = 3
          end
        end
        object GBUserMemo: TGroupBox
          Left = 6
          Top = 497
          Width = 718
          Height = 45
          Anchors = [akTop, akRight]
          Caption = #1605#1604#1575#1581#1592#1575#1578' '#1705#1575#1576#1585#1610
          Font.Charset = ARABIC_CHARSET
          Font.Color = clBlue
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          TabOrder = 4
          DesignSize = (
            718
            45)
          object UserField: TLabel
            Left = 629
            Top = 20
            Width = 74
            Height = 13
            Anchors = [akTop, akRight]
            Caption = #1605#1604#1575#1581#1592#1575#1578' '#1705#1575#1585#1576#1585#1610
            FocusControl = DBEdit12
            Font.Charset = ARABIC_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
          end
          object Label22: TLabel
            Left = 178
            Top = 20
            Width = 26
            Height = 13
            Anchors = [akTop, akRight]
            Caption = '(F10)'
            FocusControl = DBEdit12
            Font.Charset = ARABIC_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
          end
          object DBEdit12: TDBEdit
            Left = 206
            Top = 15
            Width = 417
            Height = 21
            Anchors = [akTop, akRight]
            DataField = 'UserMemo'
            DataSource = DSForm
            Font.Charset = ARABIC_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
            TabOrder = 0
            OnEnter = TEditEnter
            OnExit = TEditExit
          end
          object xpBitBtn1: TBitBtn
            Left = 55
            Top = 14
            Width = 111
            Height = 25
            Cursor = crHandPoint
            Anchors = [akTop, akRight]
            Caption = #1605#1588#1575#1607#1583#1607' '#1587#1575#1610#1585' '#1587#1608#1575#1576#1602
            Font.Charset = ARABIC_CHARSET
            Font.Color = clNavy
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
            TabOrder = 1
            OnClick = xpBitBtn1Click
          end
        end
      end
      object Panel1: TPanel
        Left = 0
        Top = 0
        Width = 732
        Height = 52
        Align = alTop
        TabOrder = 2
        DesignSize = (
          732
          52)
        object SpeedButton2: TSpeedButton
          Left = 670
          Top = 1
          Width = 55
          Height = 50
          Glyph.Data = {
            361B0000424D361B000000000000360000002800000030000000300000000100
            180000000000001B0000120B0000120B00000000000000000000FFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFCFCFCBEBEBEB3B3B3F7F7F7DAD8D7FDFDFDFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFD0D0D0B3B3B3AFA5A7E1E6E9D5E5E8
            E3D9D6F9F9F9FFFFFFFFFFFFFDFDFDF8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8
            F8F8F8F8F8F8F8F8F8F8F8F8F8FBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFB
            FBFBFEFEFEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFCFCFCCECE
            CEB4B4B4BCB9BAB6A9B14A937B15A9CF91D6E4D7E1E3EBE6E3FCFCFCFBFBFBAB
            C3C398C4CEA2CADAA8D0E6ACD1EEABD0E8AACFEDA5D1EFA9D4ECA6CBE19FC7D8
            A5C7D6AAC8D6A9C9D5B6D1D3A2C9BDCBDCD3FDFDFDFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFCFCFCFC0C0C0BABABABFBCBD9A9393004E33005338
            0A8DB32DD5F2CEEAEEE5E0DBF4F4F6B2CDCF96D2E7A3E0F6AFE5FFB4E0FFAADE
            FFA3D9FFACE2FF9DD5FFA1DFFF99DCFE9FDCF7ABD7ED9ED1DB83B1995C6F5EA3
            A39BF8F8F8FEFEFEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFBFBFBD9D9D9C5C5C5C0C0
            C0B8B9BBB5B5B76F979B007D5D00543C02452F12545B118FBB74DCEDD8E7E9C9
            DADF92C3C3A8D9E8B8E0FAB5E2FFBDE4FFB6E0FFBADEFFBBE1FFB6DEFFABD3E9
            92C3C8737D73666D5C657270709397CBDAD7DBD4D6F1F1F1FDFDFDFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFCFCFCD6D6D6D0D0D0C5C5C5BEC0C0B4B4B9BBA896BEAAA0C6B79566A98C
            346048025B43006B570C91AE3ACBEBD2DFE1B7DFED939C848585637D8A71B1D9
            E7C9E7FFC7E4FFBCE3FE97A686786F447979609AA995AED1D8ABD5E184C7D0C9
            DAD8BFB8BAC8C8C8EFEFEFFCFCFCFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFDFDFDDDDDDDD2D2D2CACACAC1C1C1B7B9
            B9B0AEA8BB9E7EB1A598E0B56DD2B58D729A81409E9A84C1B7327C693A9AB9DB
            E5E2B2CDD7C2D3DAB9BCB7926E4D8C784AC4DCEBBBC8C58A7C4D99805CADAAA1
            ADBAAFB4C9CCBCD7E3BDD8E0A7CECED4DEDCC8C3C5C0C0C0C3C3C3E6E6E6FDFD
            FDFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEFEFEDB
            DBDBC5C5C5CFCFCFC7C7C7BDBDBFB1B4B8A2A9B39D9DA0A1A19EE9AA5BDCA468
            DBBB82DAC79CE6D3B36D927267917DE5E5D9BAB8989E8859A37039A167269E69
            2B956E338E6E338B7644949281ABBFBAA8CFCFA7C7CFAED0D5A2CACE8FB7B5D3
            DBD3CAC7CEC7C7C7CACACAE8E8E8FDFDFDFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFDCDCDCE0E0E0C9C9CBC0C0C2A7A5A7ACAFB4B7AA
            9EB1A296A8A5A8A0A8ADE2B973E9A94CEABC5CD6BB80757D9DE5D2B2EDDCC8EA
            E8CAE5E594D9DD94C9DB34C4CA23D5CE38D0CF4EC9D266C8D16CC5D479C3D279
            BCD668C0D659BAD448C2D340A5B83BD7DCB4CECCD6C9C9C9D5D5D5F2F2F2FDFD
            FDFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFC6C6C6CF
            D1D1A7A5A2958D86A19F9EBEB9B4B9A38DB7A48BBBA183B5AD9CC7A894947688
            5154930039B6727EA6FFD98BFFE4B0E4E6D2D9C58DDECF9EDED08DD0BB36B39B
            0FB59602BB9C03BBA103B0A306B4A605AFA508AE9F09A4990A9D910E978210D5
            CCA7D0D5D7CDCDCDCDCDCDD5D5D5EEEEEEFCFCFCFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFBDBDBDC9C9C993939580827F929597B9B7B6BCAB
            A1B9A391AFA0918293BAAE96A57985B9324BD2979CB5A4B5D2FFD17DFFD6A5F7
            E8D7FBD3A2FAD3A9F8D1ACF7D7A9F6D199F2A6539B882FC38312E77900E67600
            92721EE17200D87000D66C00BA6C04E2BEA2D6DDDDD6D6D6D9D9D9DBDBDBDDDD
            DDEFEFEFFCFCFCFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFB9B9B9BF
            C1C18F8C8C7E7B7E7775757C7A7C9EA1A5ADB0B29AA2A49DA7A95D76D58C8FBA
            9691A96489DF937FA9FFC772FFCF9EF9EFE0FFDFB4FFE6B8FFE1B2FFDFACFFDC
            AEFFD8ABFFD4A2FFCE91FFC576FEBF64FFBF4DFFBB37FEAE34F6A843E58F3CEB
            D3C1DCE3E3DFDFDFE2E2E2E5E5E5E6E6E6E8E8E8F3F3F3FBFBFBFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFB7B7B7BABABA8A8A8A7C7E7E7C7E7E7977777072
            6F848484B1B1B1B0B3AE86A6B57289D0BDB3A7A2ACD3B9A6B4FFB56BFFC98CF7
            EDE8F6D7CAF8D9CAF8D5C4F5D5C4F5CEBCF4CAB7F3C5B3F2BFB0EFBDB1F1B8AA
            ECB4A5E8AFA1E5A99CDFA098CB7F75E9D5D0E6E9E9E7E7E7EBEBEBEEEEEEF1F1
            F1F2F2F2F3F3F3F6F6F6FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFB4B4B4AF
            AFAF8686867C7E7C7F7F7F7D7F7F7D7D7D797976787878ADAFAFC5CACCA8AFAF
            7090D7B8BFD5DCD4D2FFC781FFB884F1EFEEEDD3CBEDD5D0ECD3CEECCDCAEACA
            C3E9C6BFE6C1BAE3BAB5DFB5B0DDAEACDBAAA5D6A39ED59D98CE9595BA8C89E4
            D8D8F0F0F0F0F0F0F4F4F4F5F5F5F7F7F7F7F7F7FAFAFAFCFCFCFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFB3B3B3A9A9A98585857D7D7D807D807D7F7F7E7E
            7E7F81817B7B7B938E8E5B5B5BC3C1C1D2C8BEA9DFE6F6E0B9FFE1BCFFE6C4FB
            FBFBF9F7F7F9F7F7F9F7F7FAF7F7F9F6F6F8F5F5F9F6F4F9F2F2F8F2F0F6EFEF
            F5EDEDF3EBE9F1E7E7EFE3E3EBE1E1F2F0F0F6F6F6F5F5F5F7F7F7FBFBFBFCFC
            FCFEFEFEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFAFAFAFA2
            A2A28282827B7C7E7F7C7D7D7D7D7E7E7B818181827F7F9B9B9B413F3F4D4B4B
            A69C99D3D5D3EFDBC7FFD8B1FFD9B3FFDEBCFFC597FFBF95CFEBED46B7D23CB6
            EB787A7398765FA17C6893755D8C7869828080E1E3E1EBEBEBC9CCCCDCDFDFFB
            FBFBFBFBFBFCFCFCFEFEFEFEFEFEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFADADAD99999B827F7F7C7C7C7B7B7B7D7D7D7D7D
            7F7D7F7F7F7F7F9D9D9D454343464649684A347E6350D6D2CFF1E3D9FFE2BFFF
            DCB7FFDEBCFAF5EE60D3E93ABBD729A9D74F74808F654D9A6D508A5E4088664D
            747272D2D2D2D0D0D0C1C1C1DFDFDFFEFEFEFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFDFDFDFFFFFFFFFFFFFFFFFFABABA897
            97977F81817D7D7D7A7C7A7C7E7C7D7F7D7E7E7E817E7E9C9C9C4745454F4745
            824D2A664832825B36CCB999F3EEE7FFEDDCFFECDD94B4BB6A8279778B81BCAA
            94D6D4D1D4C8C0815F488D66438B6D4D7A7C86D4D4D4D5D5D5C2C2C2E0E0E0FF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            F9F9F9FEFEFEFFFFFFFFFFFFA9A9A99393937F7F7C7A7A7A7E7E7E7E7B7E7D7F
            7D808080838380969696A2A2A25A4B4179492B664633735331A27231B29566F1
            ECE5ECE9E9D3C2C0EDEDEDF1F1F1D4E7E2B1D9CAE8E6E37C5D44815D418F775B
            919499D7D5D5DEDEDEC8C8C8F8F8F8FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF9F9F9FBFBFBFFFFFFFFFFFFA6A6A68E
            8E907B7B7B7A7A7A7B7B7B7C7C7C7C7C7C8380808683838587879595988A8076
            64452C694B38776150D0B587E2DAC9ECECE9D0E3DE9CCFC33EAD920C8B6E0079
            5E0B7A6ED0DFDF927461795F46B9A392D1C7AFD6D8D8F3F3F3FBFBFBFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFA6A6A68B8B8B7777777777777A7A7A7C7C7C7E7B
            7B8080808383838587858D8B8DA39B9BB3AAA0C2C0BFCCCCCCC8D4CFADD7C845
            B38C006B5400634D00664C007750003683002F828FAFDBCBBFB77D6551CBBFB2
            CEAF9BBDC3C5FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFA5A5A589
            89897777777777777777777676767979798A8A8A9F9C9CB0A9AEB8B8B8B1B9B4
            96B8A268AF943F8D7042967740C0851EB87E006E5200774C00794D002F8B002F
            9200306F2971DAECEAE7887768AAAFB1C2B3A4BBBEBEFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFA3A3A38686867274747375727676768B8B8BB0B0
            B0B2B2B2B0AFB293A6A69EA99C80A58F2D88482FA56A3BB3822DA38063D4B06A
            D1B10FA27E00845A0B475C002EA00047B0005DBB005FCAF1F3F6A5A099999B9E
            A1A19FBBBCBEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFA3A3A386
            86867774747476767A7A777F7F7FB2B2B2879F9888A39475A397A5AEA295B2A1
            2F8F4A3EAD7748B28134A77E34B98B73D5AF0BB589007E63323E4A113D730054
            C872A4F7005ABCBDD8F5D0D0CE999997A6A3A4BCBEBEFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFA5A5A5898B8B7774747B79797C7C7E7A7777ADAB
            AD9DA9A493AEA287AAA3A5B2AD97B5A32E954B43976946AB7D4AC28C28B4725E
            C2965DC9A200855E0E3C2D3E4A56005FDB37A0FF006CE789CEB1E6E8E69B999B
            ADADAABDBFBFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFA6A6A38D
            8A8A7979797C7E7E8183837C7979989596B4B7B494AC9E97B0A8A6B7B598B5A4
            2E9A4E477F6747A78255C38E36BB8038B78766CDA80DBB850A4D3A26443F4661
            70379CB938C2A5489E83EDF2F0AAACA9A7A5A4C0C0C0FFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFA7A4A48C8C8C7A7C7C827F7F8080807D7F7F8D8D
            8DBCBCBC9BAE9E9FB5B0A3B9B69BB4A7309C50369B624EB58948BC8233B77F49
            D29F28B7866CCAAA288369809EA359C29742D68C44D59141B288D7EDE4D6DBD6
            9D9B9AC3C3C3FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFA7A7A78D
            8D8D7E7E7E8080807F7F7F8D8D8A8B8888BDBDBDB6BBB3A7BDB39CB5B59CB7A6
            2F9B5239A25C51B88D43B17E47BD8C6BD7A6229F6C51C0A376BFA08ACFBB55CD
            A141D09A40CA9057C892C9E9DBEBF2ED9DA29DC3C0C3FFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFA8A8A89090907F7F7F7D7D7D8A8A8A919191918E
            8EB4B2B4C3C5C2B9C0BBB5BFBFA2B8AA3A975A30955339A8753CA87545CC9D45
            D89C1B9A6831BA8A51BA8E62D0985DD69D83DBB2A3E1C6A3DEC0B2DCC8F8FAFA
            A4BDABC1BCBFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFA9A9A993
            93937D7A7A848484909090919393989898ABABABCBCBCBB7BFB7C4C9C9B9C1BE
            8DB99982AE8E68AB9370BE9C7CE1AE75DFAC58B3899FE1C7B0E1CEBBE3D1BFE4
            D3B9E1CFAEDDC9A4DFC796CEB1F9FBF9CEE4D3BEBBBCFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFA9A9A990908D7D7D7F8B8B8B9292929797979E9E
            9EA6A6A3CBCBCBBFC2C0CACCCABCBFBC8CBA9A98BA9FADCABEB6D9C8C1E8D5C1
            E9D5B4D6C8C3EBDCC4EBD7B1D9C8B8DDCEB5DFCBABDAC6B8DFCEC6E1D8F7F9F9
            F2F2F2BEBBBEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFA5A5A790
            90908484848E8E8E9395959B9B9BA5A5A5A2A2A2C5C5C5C9CACCD0D2CFC1C3C3
            96BEA39FB8A4A1BCAEB3D5C7C7EAD9C9E9D6B5DDCCCAEFE3C0EADBB4E0CFC6E4
            D8E9F3F1F6F9F7FCFCFCF5F5F3E0DAD8DDE7D8C0C0C2FFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFA9A9A99494948785858E8E909795959D9F9FABAB
            AB9F9FA1BBB9BBD3D1D3D3D6D3C6C4C3A1BEAFA6BCA9ACC2B9BAD5C9C6E9DDCF
            EADECCE7DDE8F5F2EFF9F6F5F8F8F2F2F2EAEAEAD9D4D4CBCBC9C3BEB7BBB8B3
            D9D9D2C7C7C9FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFACACAC98
            98988989869390909B9898A4A2A2A7A7A7A7A7A4AFAFAFD6D6D6D7D9D7C8C6C5
            A8BCAFA9BAAEB1C4BAD3DFDAE9F1ECF7FAF8FAFAFAE3E3E3A29FA09A9D9AB7BC
            BABFBFBFCBCBCBD6D7D9C5C3BDD3CEC6DCDAD5CBCBCDFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFADAFAC9A9A9A8789899494949D9F9FA7A4A4A1A1
            A3ACAEABB4B1B1D5D5D5DCDCDCC8CBC9C8CFCAD4D6D4DDDDDDD2D2D2B7B2B4AC
            A7A98D8D8B77757580807EC7C5C7D1D6D1D1D3D1D7D7D9D3D5D5C0C2C2DFD7D0
            DCDADAD0D0D2FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFB0B2AF9E
            9B9B8E8B8B979494A2A2A2A2A2A2A8A8A8B3B3B3B8B8B8D3D3D3DFDFDFD6D6D6
            C7C7C78D8D8B4F4C4D423F3F4744458D8B8D95918E898787A4A4A1D1D1D1D2D9
            D2D9D7D9DFDFDFCBCBC8CACAC8D7D5D0E0DED6D2D3D5FFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFAFAFB19E9E9E8E90909B9B9BA4A4A4A4A4A4ABAB
            ABB5B5B5BFBFBFC9C9C9D7D5D5A3A5A55350504E4C4C4644444341416E6E6EA9
            A9A78E8C8C939595C7C7C7D4D4D6D9D7D9DFDDDFE2E2E2C5C5C5CECECBD1D2D4
            E4E1D8D3D4D6FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFB1B1B19F
            9F9F919393A09E9EA1A1A1A7A7A7B0B0B0BCB9B9C3C3C3CACACAD4D2D2B5B5B5
            5755556462625654564A4747A4A2A2AFAFAD8A8787A2A2A2D6D4D4D5D7D7DCDA
            DCE4E6E4E0E0E0C9C6C7D1D1D3D5D5D7E2DFDAD7D7D9FFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFB5B5B5A6A6A6989696A09E9EA5A3A3ADAAAAB6B6
            B6BEBEBEC5C5C5CCCCCCD4D4D4B7B5B55957566765655250505D5B5AB0AEAEA3
            A5A58A8888C2C4C1DCDCDCDCDCD9DFDFDCE7E9E7D9DBD9CFCFD1D6D6D6D5D5D5
            DADAD7DCDCDCFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFBABAB7AE
            AEAEA0A0A0A6A3A3AAACACB3B0B0BABABAC1C1C1C7C7C7CCCCCCD5D5D5B8B8B8
            58565666646452504F959393B5B5B5989696A09D9ED9D9D9E1E1E1E0E0E2E5E5
            E7EAEAEAD4D6D4D6D4D6D5D5D7D6D6D4D5D5D7E6E6E6FFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFBCBCBCB2B2B2A2A2A2A8AAAAB1B1B1B5B7B7BCBC
            BCC2C2C2C8C8C8D3D3D3D8D8D8B1AFAF59575760605E5A5A5AB2B2B2B9B9B990
            8E8EC0BDBDDCDCDCE0E0E0E7E4E4EAEAEAE6E6E6D1D4D1D6D6D6D6D6D6D7D7D7
            D7D7D7E9E9E9FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFC0C0C0B5
            B5B5A4A4A4AEAEAEB5B5B5BBBBBBC3C3C3CACACAD4D4D4CECECEA2A4A45F5D5D
            5A5858595757898686BBBBBBA5A7A7939393D6D4D4DFDFDFE4E4E4E9E9ECECEC
            ECDCDCDCD9D9D9DCDFDCDDDDDDDDDDDADDDDDDE1E1E1FFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFC3C5C5B6B6B6A7A7A7B2B2B2B7B7B7C1C1C1CCCA
            CAD3D3D3A5A3A36563636262606C6E6B737071686666BEBCBCC5C5C5A8A5A5B7
            B4B4E2E2E2E6E6E6E9E9E9EDEDEFEEEEEED9D9D9DEDEDEE0E0E0DCDADCDBDBD9
            C3C3C3E9E9E9FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFC5C2C2BA
            BABAABA8A8B5B5B7C7C7C5C9C9C9AEACAC6A68685F5D5D66686573706E727072
            6A686A807E7EC8C8C8BDBDBDA3A3A3D1D1D1E5E5E5EAEAEAEBEBEBECE9E9D6D8
            D6C2C2C2BDBDBDBCBFBCCFCFD1D9D9D9E2E2E2FFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFC5C5C5BCBCBCB6B6B6CBCBCBB2B2B2676464605E
            5D5F5D5D605E5E61615F636160646262686866AEABACCFD1D1C4C4C4B9B6B6BF
            BFBFBCBCBCB6B6B6CACACADEDEDEECECECF8F8F8FEFEFEFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFD1CECECE
            CECEAEABAB6F6F6F6462626868666D6B6A7676767E7C7C949494B1B3B3CBCBCB
            D6D4D4E3E3E3E6E8E8EFEFEFF4F4F4FBFBFBFEFEFEFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFCFCFCF848484888686959797CCCCCCD8D8D8E6E4
            E4F2F2F2FBFBFBFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFCFCFCF7
            F7F7FBFBFBFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF}
          Layout = blGlyphTop
          Spacing = 0
          OnClick = SBExitClick
        end
        object SpeedButton5: TSpeedButton
          Left = 613
          Top = 1
          Width = 55
          Height = 50
          Glyph.Data = {
            36040000424D3604000000000000360000002800000010000000100000000100
            2000000000000004000000000000000000000000000000000000FF00FF00FF00
            FF00FF00FF008484840000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000FF00FF00FF00
            FF00FF00FF0084848400C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6
            C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6C60000000000FF00FF00FF00
            FF00FF00FF0084848400FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00C6C6C60000000000FF00FF00FF00
            FF00FF00FF0084848400FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00C6C6
            C600C6C6C600C6C6C600C6C6C600FFFFFF00C6C6C6000000000000000000FF00
            000000000000FF00000000000000FF00000000000000FF00000000000000FF00
            0000FFFFFF00FFFFFF00FFFFFF00FFFFFF00C6C6C60000000000FF000000FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000000
            0000C6C6C600C6C6C600C6C6C600FFFFFF00C6C6C6000000000000000000FFFF
            FF0000000000FF000000FFFFFF00FF00000000000000FFFFFF00FFFFFF00FF00
            0000FFFFFF00FFFFFF00FFFFFF00FFFFFF00C6C6C60000000000FF000000FFFF
            FF00FF00000000000000C6C6C60000000000FF000000C6C6C600FFFFFF000000
            0000C6C6C600C6C6C600C6C6C600FFFFFF00C6C6C6000000000000000000FFFF
            FF0000000000FF00000000000000FF00000000000000FF000000FFFFFF00FF00
            0000C6C6C600FFFFFF00C6C6C600FFFFFF00C6C6C60000000000FF000000FFFF
            FF00FF000000FFFFFF00FF00000000000000FFFFFF0000000000C6C6C6000000
            0000C6C6C600FFFFFF00C6C6C600FFFFFF00C6C6C6000000000000000000FF00
            000000000000FFFFFF0000000000FF000000FFFFFF00FF00000000000000FF00
            0000FFFFFF00FFFFFF00C6C6C600FFFFFF00C6C6C60000000000FF0000000000
            0000FF00000000000000FF00000000000000FF00000000000000FF0000000000
            0000C6C6C600C6C6C600C6C6C600FFFFFF00C6C6C6000000000000000000FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FF00
            0000FFFFFF00FFFFFF0000000000000000000000000000000000FF0000000000
            0000FF00000000000000FF00000000000000FF00000000000000FF0000000000
            0000FFFFFF00FFFFFF0084848400FFFFFF0000000000FF00FF00FF00FF00FF00
            FF00FF00FF0084848400FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF008484840000000000FF00FF00FF00FF00FF00FF00FF00
            FF00FF00FF008484840084848400848484008484840084848400848484008484
            8400848484008484840084848400FF00FF00FF00FF00FF00FF00}
          Layout = blGlyphTop
          Spacing = 0
        end
        object SpeedButton10: TSpeedButton
          Left = 557
          Top = 1
          Width = 55
          Height = 50
          Glyph.Data = {
            76010000424D7601000000000000760000002800000020000000100000000100
            04000000000000010000120B0000120B00001000000000000000000000000000
            800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
            FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00555555555555
            555555FFFFFFFFFF55555000000000055555577777777775FFFF00B8B8B8B8B0
            0000775F5555555777770B0B8B8B8B8B0FF07F75F555555575F70FB0B8B8B8B8
            B0F07F575FFFFFFFF7F70BFB0000000000F07F557777777777570FBFBF0FFFFF
            FFF07F55557F5FFFFFF70BFBFB0F000000F07F55557F777777570FBFBF0FFFFF
            FFF075F5557F5FFFFFF750FBFB0F000000F0575FFF7F777777575700000FFFFF
            FFF05577777F5FF55FF75555550F00FF00005555557F775577775555550FFFFF
            0F055555557F55557F755555550FFFFF00555555557FFFFF7755555555000000
            0555555555777777755555555555555555555555555555555555}
          Layout = blGlyphTop
          NumGlyphs = 2
          Spacing = 0
        end
        object SpeedButton11: TSpeedButton
          Left = 501
          Top = 1
          Width = 55
          Height = 50
          Caption = #1575#1585#1580#1575#1593' '#1606#1575#1605#1607
          Layout = blGlyphTop
          NumGlyphs = 2
          Spacing = 0
        end
        object SpeedButton12: TSpeedButton
          Left = 445
          Top = 1
          Width = 55
          Height = 50
          Caption = #1585#1608#1606#1608#1588#1578
          Layout = blGlyphTop
          NumGlyphs = 2
          Spacing = 0
        end
        object SpeedButton13: TSpeedButton
          Left = 389
          Top = 1
          Width = 55
          Height = 50
          Caption = #1603#1662#1610' '#1576#1607' '#1583#1576#1610#1585#1582#1575#1606#1607' '#1583#1610#1711#1585
          Layout = blGlyphTop
          NumGlyphs = 2
          Spacing = 0
        end
        object Apicture: TBitBtn
          Left = 16
          Top = 27
          Width = 90
          Height = 26
          Cursor = crHandPoint
          Anchors = [akTop, akRight]
          Caption = #1578#1589#1608#1610#1585
          TabOrder = 0
          Visible = False
          OnClick = ApictureClick
          Glyph.Data = {
            36040000424D3604000000000000360000002800000010000000100000000100
            2000000000000004000000000000000000000000000000000000FF00FF00FF00
            FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
            FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
            FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
            FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
            FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
            FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF008442
            0000844200008442000084420000844200008442000084420000844200008442
            00008442000084420000844200008442000084420000FF00FF00FF004200FF00
            4200FF004200FF004200FF004200FF004200FF004200FF004200FF004200FF00
            4200FF004200FF004200FF004200FF00420084420000FF00FF00FF004200FF84
            8400E7E7E700D6D6D600D6D6D600D6D6D600D6D6D600D6D6D600D6D6D600D6D6
            D600D6D6D600D6D6D600DEDEDE00FF00420084420000FF00FF00FF004200FF84
            8400FF848400FF848400FF848400FF848400FF848400FF848400FF848400FF84
            8400FF848400FF848400FF848400FF00420084420000FF00FF00FF004200FF84
            0000FF004200FF004200FF004200FF004200FF004200FF004200FF004200FF00
            4200FF004200FF004200FF004200FF004200FF00FF00FF00FF00FF00FF00FF84
            0000FF840000FF840000FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
            FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
            FF00FF840000FF840000FF840000FF00FF00FF00FF00FF00FF00FF00FF00FF00
            FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
            FF00FF00FF00FF840000FF840000FF840000FF00FF00FF00FF00FF00FF00FF00
            FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
            FF00FF00FF00FF00FF00FF840000FF840000FF840000FF00FF00FF00FF00FF00
            FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
            FF00FF00FF00FF00FF00FF00FF00FF840000FF840000FF840000FF00FF00FF00
            FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
            FF00FF00FF00FF00FF00FF00FF00FF00FF00FF840000FF840000FF840000FF00
            FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
            FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF840000FF840000FF84
            0000FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
            FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF840000FF00
            FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00}
        end
        object AExpotToWord: TBitBtn
          Left = 108
          Top = 27
          Width = 90
          Height = 26
          Cursor = crHandPoint
          Anchors = [akTop, akRight]
          Caption = #1662#1610#1608#1587#1578' Word'
          TabOrder = 1
          Visible = False
          OnClick = AExpotToWordClick
          Glyph.Data = {
            36040000424D3604000000000000360000002800000010000000100000000100
            2000000000000004000000000000000000000000000000000000FF00FF00FF00
            FF00FF00FF008484840000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000FF00FF00FF00
            FF00FF00FF0084848400C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6
            C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6C60000000000FF00FF00FF00
            FF00FF00FF0084848400FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00C6C6C60000000000FF00FF00FF00
            FF00FF00FF0084848400FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00C6C6
            C600C6C6C600C6C6C600C6C6C600FFFFFF00C6C6C6000000000000000000FF00
            000000000000FF00000000000000FF00000000000000FF00000000000000FF00
            0000FFFFFF00FFFFFF00FFFFFF00FFFFFF00C6C6C60000000000FF000000FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000000
            0000C6C6C600C6C6C600C6C6C600FFFFFF00C6C6C6000000000000000000FFFF
            FF0000000000FF000000FFFFFF00FF00000000000000FFFFFF00FFFFFF00FF00
            0000FFFFFF00FFFFFF00FFFFFF00FFFFFF00C6C6C60000000000FF000000FFFF
            FF00FF00000000000000C6C6C60000000000FF000000C6C6C600FFFFFF000000
            0000C6C6C600C6C6C600C6C6C600FFFFFF00C6C6C6000000000000000000FFFF
            FF0000000000FF00000000000000FF00000000000000FF000000FFFFFF00FF00
            0000C6C6C600FFFFFF00C6C6C600FFFFFF00C6C6C60000000000FF000000FFFF
            FF00FF000000FFFFFF00FF00000000000000FFFFFF0000000000C6C6C6000000
            0000C6C6C600FFFFFF00C6C6C600FFFFFF00C6C6C6000000000000000000FF00
            000000000000FFFFFF0000000000FF000000FFFFFF00FF00000000000000FF00
            0000FFFFFF00FFFFFF00C6C6C600FFFFFF00C6C6C60000000000FF0000000000
            0000FF00000000000000FF00000000000000FF00000000000000FF0000000000
            0000C6C6C600C6C6C600C6C6C600FFFFFF00C6C6C6000000000000000000FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FF00
            0000FFFFFF00FFFFFF0000000000000000000000000000000000FF0000000000
            0000FF00000000000000FF00000000000000FF00000000000000FF0000000000
            0000FFFFFF00FFFFFF0084848400FFFFFF0000000000FF00FF00FF00FF00FF00
            FF00FF00FF0084848400FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF008484840000000000FF00FF00FF00FF00FF00FF00FF00
            FF00FF00FF008484840084848400848484008484840084848400848484008484
            8400848484008484840084848400FF00FF00FF00FF00FF00FF00}
        end
        object AaddLetterData: TBitBtn
          Left = 200
          Top = 27
          Width = 90
          Height = 26
          Cursor = crHandPoint
          Anchors = [akTop, akRight]
          Caption = #1662#1610#1608#1587#1578' '#1607#1575
          TabOrder = 2
          Visible = False
          OnClick = AaddLetterDataClick
          Glyph.Data = {
            76010000424D7601000000000000760000002800000020000000100000000100
            04000000000000010000120B0000120B00001000000000000000000000000000
            800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
            FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00555555555555
            555555FFFFFFFFFF55555000000000055555577777777775FFFF00B8B8B8B8B0
            0000775F5555555777770B0B8B8B8B8B0FF07F75F555555575F70FB0B8B8B8B8
            B0F07F575FFFFFFFF7F70BFB0000000000F07F557777777777570FBFBF0FFFFF
            FFF07F55557F5FFFFFF70BFBFB0F000000F07F55557F777777570FBFBF0FFFFF
            FFF075F5557F5FFFFFF750FBFB0F000000F0575FFF7F777777575700000FFFFF
            FFF05577777F5FF55FF75555550F00FF00005555557F775577775555550FFFFF
            0F055555557F55557F755555550FFFFF00555555557FFFFF7755555555000000
            0555555555777777755555555555555555555555555555555555}
          NumGlyphs = 2
        end
        object ActionToolBar1: TActionToolBar
          Left = 1
          Top = 1
          Width = 250
          Height = 32
          ActionManager = ActionManager
          Align = alNone
          Caption = 'ActionToolBar1'
          ColorMap.HighlightColor = 15660791
          ColorMap.BtnSelectedColor = clBtnFace
          ColorMap.UnusedColor = 15660791
          Orientation = boRightToLeft
          Spacing = 0
          Visible = False
        end
        object SBOther: TBitBtn
          Left = 291
          Top = 27
          Width = 90
          Height = 26
          Cursor = crHandPoint
          Anchors = [akTop, akRight]
          Caption = #1587#1575#1610#1585' '#1575#1605#1603#1575#1606#1575#1578
          TabOrder = 4
          Visible = False
          OnClick = SBOtherClick
          NumGlyphs = 2
        end
      end
      object Panel2: TPanel
        Left = 0
        Top = 627
        Width = 732
        Height = 52
        Align = alBottom
        TabOrder = 4
        object SBExit: TSpeedButton
          Left = 8
          Top = 1
          Width = 55
          Height = 50
          Caption = #1582#1585#1608#1580
          Flat = True
          Glyph.Data = {
            961E0000424D961E0000000000003600000028000000600000001B0000000100
            180000000000601E0000120B0000120B00000000000000000000FFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFC6C6C6999999D5
            D5D5FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFE8E8E8D6D6D6EEEEEEFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFC6C6C600003700006200
            01271E1E1E7B7B7BD8D8D8FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFE8E8E8ACACACBBBBBBA7A7A7A5A5A5CACACAEFEFEFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFC6C6C601023101
            02B60002D50000790001225A5A5AC3C3C3FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFE8E8E8AAAAAAD7D7D7E3E3E3C2C2C2A5A5A5BDBD
            BDE7E7E7FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFABABAB42
            42420406730104F50004EB000291000125696969D5D5D5FFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFDDDDDDB3B3B3C1C1C1EDEDEDEAEAEACBCB
            CBA6A6A6C3C3C3EEEEEEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0
            F0F0696969050651060AEC0003EE0003E00002780001098A8A8AFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF9F9F9C3C3C3B5B5B5EBEBEBEBEB
            EBE6E6E6C3C3C39C9C9CD0D0D0FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFF72727205063A0A0EEC0004EF0003DE0002B40001356C6C6CFCFCFC
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFC7C7C7ADADADEBEB
            EBEBEBEBE5E5E5D7D7D7ABABABC4C4C4FEFEFEFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFF7272720809510C10F50004EF0003DB0002CA000152696969
            DBDBDBFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFC7C7C7B5B5
            B5EEEEEEEBEBEBE5E5E5DEDEDEB5B5B5C3C3C3F1F1F1FFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFF6363631013960B0FF50004EB0003D70002C6000269
            696969F0F0F0FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFC1C1
            C1CECECEEEEEEEEAEAEAE3E3E3DDDDDDBDBDBDC3C3C3F9F9F9FFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFCCCCCC020311171AE80509F50003E50003D00003C2
            000159696969FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEBEB
            EB9F9F9FEAEAEAEEEEEEE8E8E8E1E1E1DBDBDBB8B8B8C3C3C3FFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFF7272721011881013F60004F10003DC0002CA
            0003BF0001417B7B7BFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFC7C7C7C9C9C9EFEFEFECECECE5E5E5DEDEDEDBDBDBAFAFAFCACACAFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFB7B7B70809451317F60307F50003E60002D4
            0002C60003B2000110DEDEDEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFE2E2E2B1B1B1EFEFEFEEEEEEE8E8E8E2E2E2DDDDDDD6D6D69F9F9FF2F2F2FF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFCFCFC939393FC
            FCFCFFFFFFFFFFFFFFFFFFFFFFFFDBDBDB0303231013F6060AF50004ED0003DD
            0003CF0002C600016B757575FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFEFEFED4D4D4FEFEFEFFFFFFFFFFFFFFFFFFFFFF
            FFF1F1F1A5A5A5EEEEEEEEEEEEEBEBEBE5E5E5E0E0E0DDDDDDBEBEBEC8C8C8FF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFABABAB42424200015A00
            0003FCFCFCFFFFFFFFFFFFFFFFFFB4B4B402033F090DF50509F50004F10003E5
            0003D70003CF0002BE121212FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFDDDDDDB3B3B3B8B8B89A9A9AFEFEFEFFFFFFFFFFFFFFFF
            FFE1E1E1AFAFAFEEEEEEEDEDEDECECECE8E8E8E3E3E3E0E0E0DADADAA0A0A0FF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF7E7E7E0001160002980001736F
            6F6FFFFFFFFFFFFFFFFFFFCFCFCF4B4B4B0002AC0205F50205F50003F30004EA
            0003E10003D90002D4000012EAEAEAFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFCBCBCBA1A1A1CDCDCDC1C1C1C5C5C5FFFFFFFFFFFFFFFFFFECEC
            ECB7B7B7D4D4D4EDEDEDEDEDEDECECECE9E9E9E7E7E7E4E4E4E2E2E29F9F9FF7
            F7F7FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFABABAB42424200023F0002BA0002C700002CC6
            C6C6FFFFFFE4E4E487878700000800018A0004ED0003F30205F50104F50004F1
            0004EB0003E40003DF000112EAEAEAFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            DDDDDDB3B3B3AFAFAFD9D9D9DDDDDDA8A8A8E8E8E8FFFFFFF4F4F4CFCFCF9C9C
            9CC9C9C9EAEAEAEDEDEDEDEDEDEDEDEDECECECEAEAEAE7E7E7E5E5E59F9F9FF7
            F7F7FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFB7B7B74E4E4E00012C00029A0002CD0003C90001AF1E1E1E4E
            4E4E1B1B1B0001150001600002C10003E50003EE0104F5070AF5070AF50408F5
            0003F40003EE0002C02D2D2DFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE2E2E2B8B8B8
            A8A8A8CECECEDFDFDFDEDEDED5D5D5A5A5A5B8B8B8A4A4A4A0A0A0BABABADCDC
            DCE8E8E8EBEBEBEDEDEDEEEEEEEDEDEDEEEEEEEDEDEDEBEBEBDBDBDBABABABFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF9F9
            F9ABABAB4B4B4B0000260002950003D60002D40003D20002D00003A300017900
            028D0003B80003D30003DC0003E60004EF0307F50A0EF50E11F61013F60D10F6
            080CF50307F5000147969696FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFDFDFDDDDDDDB7B7B7A6A6A6CCCCCC
            E3E3E3E2E2E2E1E1E1E1E1E1D1D1D1C3C3C3C9C9C9D8D8D8E1E1E1E5E5E5E8E8
            E8EBEBEBEDEDEDEEEEEEEEEEEEEFEFEFEEEEEEEEEEEEEDEDEDB1B1B1D5D5D5FF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFD8D8D89090905151510000
            0600024D0002A40003E60003E50004E30003E10003E00003DD0003DB0003DA00
            03DD0003E10003E80003EE0104F5090DF51013F61418F6171AF6171AF61418F6
            1014F3040662696969FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFEFEFEFD3D3D3B9B9B99B9B9BB4B4B4D1D1D1E8E8E8E8E8E8
            E7E7E7E7E7E7E6E6E6E5E5E5E5E5E5E4E4E4E5E5E5E6E6E6E9E9E9EBEBEBEDED
            EDEEEEEEEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEDEDEDBBBBBBC3C3C3FFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFD8D8D801022503056B0508A7070A
            E7070AF5060AF50408F50408F50104F50003F30004F00004ED0004EB0004EB00
            04EF0003F40509F50C10F51317F6171AF61C1FF61E21F61F22F61D20F61416C8
            0405346C6C6CFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFEFEFEFA6A6A6BEBEBED3D3D3E9E9E9EDEDEDEDEDEDEEEEEEEEEEEE
            EDEDEDEDEDEDECECECEBEBEBEAEAEAEAEAEAEBEBEBEDEDEDEEEEEEEEEEEEEFEF
            EFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFDFDFDFABABABC4C4C4FFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE4E4E401011A0607540D0F961719
            DF1B1EF61C1FF61C1FF61A1DF61619F61215F60D10F6080CF50509F5060AF50A
            0EF51013F61619F61D20F62224F62427F62528F62325E8191BA8080840303030
            999999FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFF4F4F4A2A2A2B6B6B6CDCDCDE7E7E7EFEFEFEFEFEFEFEFEFEFEFEF
            EFEFEFEFEFEFEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEFEFEFEFEFEFEFEFEFF0F0
            F0F0F0F0F0F0F0EBEBEBD4D4D4AFAFAFACACACD6D6D6FFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE4E4E4A8A8A86363631818
            180C0C491C1DA02C2EF12D2FF72A2CF72427F61D20F6171AF61317F61418F619
            1CF61E21F61F22D61F21BD1A1B941415740A0B400F0F0F515151BABABAFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFF4F4F4DCDCDCC1C1C1A3A3A3B3B3B3D1D1D1EFEFEFF0F0F0
            F0F0F0F0F0F0EFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE5E5E5DCDCDCCDCD
            CDC2C2C2AFAFAF9F9F9FB9B9B9E3E3E3FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFB4B4B45A5A5A06061A20228E3335EE3133F72A2CF72224F61618C207074305
            05290000002121213C3C3C666666878787BDBDBDFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE1E1E1BDBDBDA2A2A2CCCCCC
            EEEEEEF1F1F1F0F0F0EFEFEFDDDDDDB0B0B0A7A7A7999999A6A6A6B1B1B1C2C2
            C2CFCFCFE5E5E5FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFD5D5D56C6C6C06061A2223A02F31F72729F71B1ED9000003D5
            D5D5FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEEEEEEC4C4C4
            A2A2A2D2D2D2F1F1F1F0F0F0E5E5E59A9A9AEEEEEEFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFC3C3C35A5A5A0D0E462426DD1F22F605063AC3
            C3C3FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            E7E7E7BDBDBDB2B2B2E7E7E7EFEFEFADADADE7E7E7FFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF8484840304141416AE0C0E9169
            6969FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFCECECEA0A0A0D6D6D6CBCBCBC3C3C3FFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFB4B4B44B4B4B06076200
            0003FCFCFCFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFE1E1E1B7B7B7BBBBBB9A9A9AFEFEFEFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF999999FC
            FCFCFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFD6D6D6FEFEFEFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF}
          Layout = blGlyphTop
          NumGlyphs = 2
          Spacing = 0
          OnClick = SBExitClick
        end
        object DBNavigator1: TDBNavigator
          Left = 448
          Top = 1
          Width = 283
          Height = 50
          Cursor = crHandPoint
          DataSource = DSForm
          VisibleButtons = [nbInsert, nbDelete, nbEdit, nbPost, nbCancel]
          Align = alRight
          Flat = True
          Ctl3D = False
          ParentCtl3D = False
          ParentShowHint = False
          ConfirmDelete = False
          ShowHint = True
          TabOrder = 0
          TabStop = True
          BeforeAction = DBNavigator1BeforeAction
          OnClick = DBNavigator1Click
        end
      end
      object DBGToORG: TYDBGrid
        Left = 202
        Top = 188
        Width = 453
        Height = 145
        Cursor = crHandPoint
        Anchors = [akTop, akRight]
        Color = 16773862
        DataSource = Dm.DToOrganizations
        Options = [dgColumnResize, dgColLines, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit]
        ReadOnly = True
        TabOrder = 3
        TitleFont.Charset = ARABIC_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'Tahoma'
        TitleFont.Style = []
        Visible = False
        OnCellClick = DBGToORGCellClick
        OnKeyDown = DBGToORGKeyDown
        YeganehColor = False
        YeganehFinish = True
        PageNumber = False
        RecordNumber = False
        HasTime = False
        Oriention = poPortrait
        HasDate = False
        HasIndex = False
        PrintTitle = #1593#1606#1608#1575#1606
        InvertFarsiDate = True
        TitleSort = True
        AutoInsert = False
        OnNeedColorCondition = DBGToORGNeedColorCondition
        FooterFields = 'Count'
        Columns = <
          item
            Expanded = False
            FieldName = 'Title'
            Title.Alignment = taCenter
            Title.Caption = #1593#1606#1608#1575#1606
            Width = 225
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'ResponsibleStaffer'
            Title.Alignment = taCenter
            Title.Caption = #1605#1587#1574#1608#1604
            Width = 200
            Visible = True
          end>
      end
    end
    object FormData: TxpTabSheet
      Caption = #1601#1585#1605
      OnShow = FormDataShow
      Color = clWhite
      BGStyle = bgsNone
      GradientStartColor = clWhite
      GradientEndColor = clSilver
      GradientFillDir = fdTopToBottom
    end
    object Formdata2: TxpTabSheet
      Caption = #1601#1585#1605' 2'
      OnShow = Formdata2Show
      Color = clWhite
      BGStyle = bgsNone
      GradientStartColor = clWhite
      GradientEndColor = clSilver
      GradientFillDir = fdTopToBottom
    end
  end
  inherited DSForm: TDataSource
    AutoEdit = False
    DataSet = Select_Letter
    Left = 58
    Top = 277
  end
  inherited ActionList: TActionList
    Left = 176
    Top = 280
  end
  inherited Grid_PopupMenu: TPopupMenu
    Left = 448
    Top = 276
  end
  object Select_Letter: TADOStoredProc
    Connection = Dm.YeganehConnection
    CursorType = ctStatic
    AfterInsert = Select_LetterAfterInsert
    BeforePost = Select_LetterBeforePost
    AfterPost = Select_LetterAfterPost
    BeforeDelete = Select_LetterBeforeDelete
    OnCalcFields = Select_LetterCalcFields
    ProcedureName = 'select_Letter;1'
    Parameters = <
      item
        Name = '@RETURN_VALUE'
        DataType = ftInteger
        Direction = pdReturnValue
        Precision = 10
        Value = 0
      end
      item
        Name = '@LetterID'
        Attributes = [paNullable]
        DataType = ftInteger
        Precision = 10
        Value = Null
      end>
    Left = 58
    Top = 232
    object Select_LetterFromResponsibleStafferTitle: TWideStringField
      Alignment = taRightJustify
      FieldKind = fkLookup
      FieldName = 'FromResponsibleStafferTitle'
      LookupDataSet = Dm.FromOrganizations
      LookupKeyFields = 'ID'
      LookupResultField = 'ResponsibleStaffer'
      KeyFields = 'FromOrgID'
      Size = 50
      Lookup = True
    end
    object Select_LetterUrgencyTitle: TWideStringField
      Alignment = taRightJustify
      FieldKind = fkLookup
      FieldName = 'UrgencyTitle'
      LookupDataSet = Dm.Urgenceis
      LookupKeyFields = 'ID'
      LookupResultField = 'Title'
      KeyFields = 'UrgencyID'
      Size = 100
      Lookup = True
    end
    object Select_LetterClassificationTitle: TWideStringField
      Alignment = taRightJustify
      FieldKind = fkLookup
      FieldName = 'ClassificationTitle'
      LookupDataSet = Dm.Classifications
      LookupKeyFields = 'ID'
      LookupResultField = 'Title'
      KeyFields = 'ClassificationID'
      Size = 100
      Lookup = True
    end
    object Select_LetterReciveTypeTitle: TWideStringField
      Alignment = taRightJustify
      FieldKind = fkLookup
      FieldName = 'ReciveTypeTitle'
      LookupDataSet = Dm.ReceiveTypes
      LookupKeyFields = 'ID'
      LookupResultField = 'Title'
      KeyFields = 'ReceiveTypeID'
      Size = 100
      Lookup = True
    end
    object Select_LetterLetterID: TAutoIncField
      FieldName = 'LetterID'
      ReadOnly = True
    end
    object Select_LetterIndicatorID: TIntegerField
      FieldName = 'IndicatorID'
    end
    object Select_LetterMYear: TWordField
      FieldName = 'MYear'
    end
    object Select_LetterSecretariatID: TWordField
      FieldName = 'SecretariatID'
    end
    object Select_LetterLetter_Type: TWordField
      FieldName = 'Letter_Type'
    end
    object Select_Letterletterformat: TWordField
      FieldName = 'letterformat'
    end
    object Select_LetterIncommingNO: TWideStringField
      Alignment = taRightJustify
      FieldName = 'IncommingNO'
      Size = 50
    end
    object Select_LetterIncommingdate: TWideStringField
      FieldName = 'Incommingdate'
      Size = 10
    end
    object Select_LetterCenterNo: TWideStringField
      Alignment = taRightJustify
      FieldName = 'CenterNo'
      Size = 50
    end
    object Select_LetterCenterDate: TStringField
      Alignment = taRightJustify
      FieldName = 'CenterDate'
      FixedChar = True
      Size = 10
    end
    object Select_LetterFromOrgID: TIntegerField
      FieldName = 'FromOrgID'
    end
    object Select_LetterToOrgID: TIntegerField
      FieldName = 'ToOrgID'
    end
    object Select_LetterSignerid: TWideStringField
      Alignment = taRightJustify
      FieldName = 'Signerid'
      Size = 50
    end
    object Select_LetterClassificationID: TWordField
      FieldName = 'ClassificationID'
    end
    object Select_LetterUrgencyID: TSmallintField
      FieldName = 'UrgencyID'
    end
    object Select_LetterMemo: TWideStringField
      Alignment = taRightJustify
      FieldName = 'Memo'
      Size = 2000
    end
    object Select_LetterAttachTitle: TWideStringField
      Alignment = taRightJustify
      FieldName = 'AttachTitle'
      Size = 50
    end
    object Select_LetterNumberOfAttachPages: TSmallintField
      FieldName = 'NumberOfAttachPages'
    end
    object Select_LetterNumberOfPage: TWordField
      FieldName = 'NumberOfPage'
    end
    object Select_LetterReceiveTypeID: TWordField
      FieldName = 'ReceiveTypeID'
    end
    object Select_LetterUserID: TIntegerField
      FieldName = 'UserID'
    end
    object Select_LetterRetroactionNo: TWideStringField
      Alignment = taRightJustify
      FieldName = 'RetroactionNo'
      Size = 50
    end
    object Select_LetterUserMemo: TWideStringField
      Alignment = taRightJustify
      FieldName = 'UserMemo'
      Size = 200
    end
    object Select_LetterRegistrationDate: TStringField
      Alignment = taRightJustify
      FieldName = 'RegistrationDate'
      FixedChar = True
      Size = 10
    end
    object Select_LetterRegistrationTime: TStringField
      Alignment = taRightJustify
      FieldName = 'RegistrationTime'
      Size = 5
    end
    object Select_LetterFollowLetterNo: TWideStringField
      Alignment = taRightJustify
      FieldName = 'FollowLetterNo'
      Size = 50
    end
    object Select_LetterToStaffer: TWideStringField
      Alignment = taRightJustify
      FieldName = 'ToStaffer'
      Size = 50
    end
    object Select_LetterSentLetterID: TIntegerField
      FieldName = 'SentLetterID'
    end
    object Select_LetterTemplateID: TIntegerField
      FieldName = 'TemplateID'
    end
    object Select_LetterHeaderID: TIntegerField
      FieldName = 'HeaderID'
    end
    object Select_LettersenderTitle: TWideStringField
      Alignment = taRightJustify
      FieldName = 'senderTitle'
      Size = 100
    end
    object Select_LetterFromOrgtitle: TWideStringField
      Alignment = taRightJustify
      FieldKind = fkLookup
      FieldName = 'FromOrgtitle'
      LookupDataSet = Dm.FromOrganizations
      LookupKeyFields = 'ID'
      LookupResultField = 'Title'
      KeyFields = 'FromOrgID'
      Lookup = True
    end
    object Select_LetterFromStaffer: TWideStringField
      Alignment = taRightJustify
      FieldName = 'FromStaffer'
      Size = 50
    end
    object Select_LetterUserTitle: TWideStringField
      Alignment = taRightJustify
      FieldKind = fkLookup
      FieldName = 'UserTitle'
      LookupDataSet = Dm.Users
      LookupKeyFields = 'Id'
      LookupResultField = 'Title'
      KeyFields = 'UserID'
      Lookup = True
    end
    object Select_LetterLastUpdate: TDateTimeField
      Alignment = taRightJustify
      FieldName = 'LastUpdate'
    end
    object Select_LetterUserTableID2: TIntegerField
      FieldName = 'UserTableID2'
    end
    object Select_LetterUserTableTitle2: TStringField
      Alignment = taRightJustify
      FieldKind = fkLookup
      FieldName = 'UserTableTitle2'
      LookupDataSet = Dm.Tables
      LookupKeyFields = 'TableId'
      LookupResultField = 'Description'
      KeyFields = 'UserTableID2'
      Lookup = True
    end
    object Select_LetterUserTableID: TIntegerField
      FieldName = 'UserTableID'
    end
    object Select_LetterSubjectTitle: TStringField
      Alignment = taRightJustify
      FieldKind = fkLookup
      FieldName = 'SubjectTitle'
      LookupDataSet = Dm.Subject
      LookupKeyFields = 'SubjectID'
      LookupResultField = 'SubjectTitle'
      KeyFields = 'SubjectID'
      Lookup = True
    end
    object Select_LetterUserTableTitle: TStringField
      Alignment = taRightJustify
      FieldKind = fkLookup
      FieldName = 'UserTableTitle'
      LookupDataSet = Dm.Tables
      LookupKeyFields = 'TableId'
      LookupResultField = 'Description'
      KeyFields = 'UserTableID'
      Lookup = True
    end
    object Select_LetterSubjectID: TIntegerField
      FieldName = 'SubjectID'
    end
    object Select_LetterDeadLineDate: TStringField
      Alignment = taRightJustify
      FieldName = 'DeadLineDate'
      FixedChar = True
      Size = 10
    end
    object Select_LetterFollowCode: TStringField
      FieldKind = fkCalculated
      FieldName = 'FollowCode'
      Calculated = True
    end
    object Select_LetterChristRegDate: TStringField
      FieldKind = fkCalculated
      FieldName = 'ChristRegDate'
      Calculated = True
    end
    object Select_LetterChristIncomDate: TStringField
      FieldKind = fkCalculated
      FieldName = 'ChristIncomDate'
      Calculated = True
    end
    object Select_LetterLetterRecommites: TWideStringField
      FieldName = 'LetterRecommites'
      Size = 500
    end
    object Select_LetterPreCode: TWideStringField
      FieldName = 'PreCode'
      Size = 50
    end
    object Select_LetterFinalized: TBooleanField
      FieldName = 'Finalized'
    end
    object Select_LetterSendStatusID: TIntegerField
      FieldName = 'SendStatusID'
    end
    object Select_LetterUniqueID: TLargeintField
      FieldName = 'UniqueID'
    end
    object Select_LetterArchived: TBooleanField
      FieldName = 'Archived'
    end
    object Select_LetterSubjectDescription: TWideStringField
      FieldName = 'SubjectDescription'
      Size = 255
    end
    object Select_LetterLatestActionTypeID: TIntegerField
      FieldName = 'LatestActionTypeID'
    end
    object Select_LetterLatestActionReason: TWideStringField
      FieldName = 'LatestActionReason'
      Size = 255
    end
    object Select_LetterActionTypeID: TIntegerField
      FieldName = 'ActionTypeID'
    end
    object Select_LetterEmailNuFromDate: TWideStringField
      FieldName = 'EmailNuFromDate'
    end
    object Select_LetterIndicatorInnerNo: TWideStringField
      FieldName = 'IndicatorInnerNo'
      ReadOnly = True
      Size = 200
    end
  end
  object ActionManager: TActionManager
    ActionBars.SessionCount = 302
    ActionBars = <
      item
        Items = <
          item
            Action = DataSetInsert
            Caption = ' '#1606#1575#1605#1607' '#1580#1583#1610#1583' &Ins'
            ImageIndex = 2
            ShortCut = 45
          end
          item
            Action = DataSetEdit
            Caption = #1608#1610#1585#1575#1610#1588' &F4'
            ImageIndex = 14
            ShortCut = 115
          end
          item
            Action = DataSetPost
            Caption = #1584#1582#1610#1585#1607' F&2 '
            ImageIndex = 4
            ShortCut = 113
          end
          item
            Action = DataSetCancel
            Caption = #1604#1594#1608' C&trl+Z'
            ImageIndex = 5
            ShortCut = 16474
          end>
        AutoSize = False
      end
      item
        Items = <
          item
            Action = Action11
            Caption = '&Esc '#1582#1585#1608#1580
            ImageIndex = 12
            LastSession = 19
            ShortCut = 27
          end>
        AutoSize = False
      end
      item
        AutoSize = False
      end
      item
        Items = <
          item
            Items = <
              item
                Action = DataSetInsert
                ImageIndex = 2
                ShortCut = 45
              end
              item
                Action = DataSetCancel
                ImageIndex = 5
                ShortCut = 32776
              end
              item
                Action = DataSetEdit
                ImageIndex = 13
                ShortCut = 115
              end
              item
                Action = DataSetPost
                ImageIndex = 4
                ShortCut = 113
              end>
            Caption = #1578#1594#1610#1610#1585#1575#1578
          end
          item
            Items = <
              item
                Action = Action11
                ImageIndex = 14
                ShortCut = 27
              end>
            Caption = #1576#1585#1606#1575#1605#1607
          end>
        AutoSize = False
      end
      item
        Items = <
          item
            Action = DataSetInsert
            ImageIndex = 2
            ShortCut = 45
          end
          item
            Action = DataSetCancel
            ImageIndex = 5
            ShortCut = 16474
          end
          item
            Action = DataSetEdit
            ImageIndex = 13
            ShortCut = 115
          end
          item
            Action = DataSetPost
            ImageIndex = 4
            ShortCut = 113
          end
          item
            Action = Action12
            ShortCut = 16469
          end
          item
            Action = Action12
            LastSession = 63
            ShortCut = 16469
          end>
        AutoSize = False
      end
      item
        AutoSize = False
      end
      item
        Items = <
          item
            Action = DataSetInsert
            ImageIndex = 14
            ShortCut = 45
          end
          item
            Action = DataSetEdit
            ImageIndex = 9
            ShortCut = 115
          end
          item
            Action = DataSetPost
            ImageIndex = 32
            ShortCut = 113
          end
          item
            Action = DataSetCancel
            ImageIndex = 6
            ShortCut = 32776
          end>
        ActionBar = ActionToolBar1
        AutoSize = False
      end>
    Images = Dm.LetterImages
    OnExecute = ActionManagerExecute
    Left = 177
    Top = 230
    StyleName = 'XP Style'
    object DataSetInsert: TDataSetInsert
      Tag = 1
      Category = #1578#1594#1610#1610#1585#1575#1578
      Caption = #1580#1583#1610#1583
      Hint = 'Insert'
      ImageIndex = 14
      ShortCut = 45
      OnExecute = DataSetInsertExecute
      DataSource = DSForm
    end
    object DataSetEdit: TDataSetEdit
      Tag = 3
      Category = #1578#1594#1610#1610#1585#1575#1578
      Caption = #1608#1610#1585#1575#1610#1588' '
      Hint = 'Edit'
      ImageIndex = 9
      ShortCut = 115
      OnExecute = DataSetEditExecute
      DataSource = DSForm
    end
    object DataSetPost: TDataSetPost
      Tag = 4
      Category = #1578#1594#1610#1610#1585#1575#1578
      Caption = #1584#1582#1610#1585#1607
      Hint = 'Post'
      ImageIndex = 32
      ShortCut = 113
      OnExecute = DataSetPostExecute
      DataSource = DSForm
    end
    object DataSetCancel: TDataSetCancel
      Tag = -1
      Category = #1578#1594#1610#1610#1585#1575#1578
      Caption = #1575#1606#1589#1585#1575#1601
      Hint = 'Cancel'
      ImageIndex = 6
      ShortCut = 32776
      OnExecute = DataSetCancelExecute
      DataSource = DSForm
    end
    object Action11: TAction
      Tag = -1
      Category = #1576#1585#1606#1575#1605#1607
      Caption = #1582#1585#1608#1580
      ShortCut = 27
      OnExecute = Action11Execute
    end
    object Action12: TAction
      Tag = -1
      Caption = '|'
      ShortCut = 16469
    end
    object Aenter: TAction
      Tag = -1
      Category = #1576#1585#1606#1575#1605#1607
      Caption = 'Aenter'
      ShortCut = 13
      OnExecute = AenterExecute
    end
    object AmakeRecommite: TAction
      Tag = 1
      Category = #1576#1585#1606#1575#1605#1607
      Caption = #1575#1585#1580#1575#1593#1575#1578' '#1606#1575#1605#1607
      ImageIndex = 12
      ShortCut = 16453
    end
  end
  object PopMnuOther: TPopupMenu
    Images = Dm.LetterImages
    Left = 444
    Top = 228
    object N5: TMenuItem
      Caption = #1575#1585#1580#1575#1593' '#1606#1575#1605#1607
      OnClick = N5Click
    end
    object N1: TMenuItem
      Caption = #1585#1608#1606#1608#1588#1578
      ImageIndex = 44
      OnClick = N1Click
    end
    object N3: TMenuItem
      Caption = #1603#1662#1610' '#1576#1607' '#1583#1576#1610#1585#1582#1575#1606#1607' '#1583#1610#1711#1585
      OnClick = N3Click
    end
  end
end
