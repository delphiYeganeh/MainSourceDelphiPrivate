inherited UserDefineF: TUserDefineF
  Tag = 2
  Left = 408
  Top = 133
  BorderIcons = [biSystemMenu]
  BorderStyle = bsDialog
  Caption = #1578#1593#1585#1610#1601' '#1705#1575#1585#1576#1585
  ClientHeight = 545
  ClientWidth = 671
  KeyPreview = True
  OldCreateOrder = True
  Position = poDesktopCenter
  OnKeyDown = FormKeyDown
  PixelsPerInch = 96
  TextHeight = 13
  object Bevel1: TBevel [0]
    Left = 304
    Top = 208
    Width = 50
    Height = 50
  end
  object xpPageControl1: TxpPageControl [1]
    Left = 0
    Top = 0
    Width = 671
    Height = 504
    ActivePage = userTab
    Align = alClient
    ParentShowHint = False
    ShowHint = True
    Style = pcsXP
    TabHeight = 30
    TabOrder = 0
    TabPosition = tpTop
    BorderColor = clSilver
    TabTextAlignment = taCenter
    object userTab: TxpTabSheet
      Caption = '  '#1578#1593#1585#1610#1601' '#1705#1575#1585#1576#1585'  '
      Color = clWindow
      BGStyle = bgsNone
      GradientStartColor = clWindow
      GradientEndColor = clSilver
      GradientFillDir = fdTopToBottom
      object Panel1: TPanel
        Left = 0
        Top = 0
        Width = 663
        Height = 464
        Align = alClient
        Anchors = [akTop, akRight]
        BevelOuter = bvNone
        Color = clWindow
        TabOrder = 0
        DesignSize = (
          663
          464)
        object Label1: TLabel
          Left = 581
          Top = 124
          Width = 77
          Height = 13
          Anchors = [akTop, akRight]
          Caption = #1587#1591#1581' '#1583#1587#1578#1585#1587#1610
        end
        object Label3: TLabel
          Left = 581
          Top = 70
          Width = 46
          Height = 13
          Anchors = [akTop, akRight]
          Caption = #1606#1575#1605' '#1705#1575#1585#1576#1585#1610
          FocusControl = DBEUserName
        end
        object Label4: TLabel
          Left = 581
          Top = 98
          Width = 45
          Height = 13
          Anchors = [akTop, akRight]
          Caption = #1705#1604#1605#1607' '#1593#1576#1608#1585
        end
        object Label10: TLabel
          Left = 404
          Top = 98
          Width = 21
          Height = 13
          Anchors = [akTop, akRight]
          Caption = #1578#1705#1585#1575#1585
        end
        object Label9: TLabel
          Left = 581
          Top = 45
          Width = 38
          Height = 13
          Anchors = [akTop, akRight]
          Caption = #1606#1575#1605' '#1705#1575#1605#1604
          FocusControl = DBEUserName
        end
        object Label5: TLabel
          Left = 430
          Top = 338
          Width = 123
          Height = 13
          Anchors = [akTop, akRight]
          Caption = #1583#1576#1610#1585#1582#1575#1606#1607' '#1607#1575#1610' '#1602#1575#1576#1604' '#1583#1587#1578#1585#1587
        end
        object SpeedButton1: TSpeedButton
          Left = 556
          Top = 334
          Width = 22
          Height = 22
          Cursor = crHandPoint
          Anchors = [akTop, akRight]
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
          OnClick = SpeedButton1Click
        end
        object Label6: TLabel
          Left = 269
          Top = 338
          Width = 111
          Height = 13
          Anchors = [akTop, akRight]
          Caption = #1602#1575#1604#1576' '#1607#1575#1610' '#1605#1608#1585#1583' '#1575#1587#1578#1601#1575#1583#1607' '
        end
        object SpeedButton4: TSpeedButton
          Left = 384
          Top = 334
          Width = 22
          Height = 22
          Cursor = crHandPoint
          Anchors = [akTop, akRight]
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
          OnClick = SpeedButton4Click
        end
        object Label11: TLabel
          Left = 581
          Top = 147
          Width = 47
          Height = 26
          Anchors = [akTop, akRight]
          Caption = #1583#1576#1610#1585#1582#1575#1606#1607' '#1662#1610#1588' '#1601#1585#1590
          Font.Charset = ARABIC_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          WordWrap = True
        end
        object Label13: TLabel
          Left = 581
          Top = 180
          Width = 56
          Height = 13
          Anchors = [akTop, akRight]
          Caption = #1588#1585#1608#1593' '#1575#1593#1578#1576#1575#1585
          FocusControl = DBEBeginActiveDate
        end
        object Label14: TLabel
          Left = 433
          Top = 181
          Width = 47
          Height = 13
          Anchors = [akTop, akRight]
          Caption = #1662#1575#1610#1575#1606' '#1575#1593#1578#1576#1575#1585
          FocusControl = DBEEndActiveDate
        end
        object Label17: TLabel
          Left = 431
          Top = 360
          Width = 122
          Height = 13
          Anchors = [akTop, akRight]
          Caption = #1586#1608#1606#1705#1606' '#1607#1575#1610' '#1602#1575#1576#1604' '#1583#1587#1578#1585#1587#1610
        end
        object SBAccessToZonkan: TSpeedButton
          Left = 556
          Top = 357
          Width = 22
          Height = 22
          Cursor = crHandPoint
          Anchors = [akTop, akRight]
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
          OnClick = SBAccessToZonkanClick
        end
        object Label2: TLabel
          Left = 581
          Top = 207
          Width = 25
          Height = 13
          Anchors = [akTop, akRight]
          Caption = #1575#1610#1605#1610#1604
        end
        object Label7: TLabel
          Left = 332
          Top = 361
          Width = 73
          Height = 13
          Anchors = [akTop, akRight]
          Caption = #1578#1593#1610#1610#1606' '#1711#1585#1608#1607' '#1705#1575#1585#1610
        end
        object SpeedButton6: TSpeedButton
          Left = 207
          Top = 359
          Width = 22
          Height = 22
          Cursor = crHandPoint
          Hint = #1581#1584#1601' '#1587#1605#1578' '#1583#1608#1605
          Anchors = [akTop, akRight]
          Glyph.Data = {
            36030000424D3603000000000000360000002800000010000000100000000100
            1800000000000003000000000000000000000000000000000000FFFFFFFFFFFF
            C4C5C753558FEAEAEAFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFF6F6FA5763DA3245E6434896EFEFF1FFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFCCCBD1FBFBFBFFFFFFE4E5F9
            4A5AE5283CDD1B2FDEC4C5BFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFF2F2F55A5BA5FFFFFFFFFFFFF3F3FC4B59E02337D0172DDEA49DAEFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF767AC88B8CCAFFFFFFFFFFFFFFFFFF
            6D77E61E33CA142AD53943A0FEFEFEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFECEB
            EF182BD2E6E6E2FFFFFFFFFFFFFFFFFFDEE0F8283BCB1329CA1529C9BFC0C3FF
            FFFFFFFFFFFFFFFFFFFFFFFEFEFE6870C04754C3FDFDFDFFFFFFFFFFFFFFFFFF
            FFFFFFB8BDF01F34C21128CC2735AFCCCCC1FFFFFFFFFFFFEBEBF0575FAF1C31
            DCD7D8DFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEFEFFAFB1EE152AC3142AD929
            30A1D9D9D5FFFFFF6269AE162FE8505AB9FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFDFDFE9FA2EB0D23BA1F34DD5759A69EA3C5162CE2172CC6D3D5
            DDFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFB4B9EE14
            27B80A1FC5091ED12939C1DDDDE7FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFEFEFF18082B5091EC50016BD0014BE4F519DE4E4E6FFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE0E0D34A52A6142CEF04
            1DE2011AC92B39C70014C0242A8CDCDCD6FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            EFEFF2878BB45E68D14E63F02B40EA142EE8626FDFEDEDF95A65E20D26E83743
            ABD9D9D6FFFFFFFFFFFFFFFFFFA5A6BB6973CA8D9EF38697F1697EF15F6CDBCD
            CFEAFCFCFDFFFFFFFDFDFEDBDCF8727DF1545FC89595AFF9F9F9FFFFFFC7CDF8
            5A69DB6876E47581EBA4A8E7F6F6FAFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFDFD
            FED5D7F87D84EE5A61ABFFFFFFFFFFFFDCE0F9C7C8F4F0F0FCFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFBFBFED6D7F8}
          ParentShowHint = False
          ShowHint = True
          OnClick = SpeedButton6Click
        end
        object GroupBox1: TGroupBox
          Left = 3
          Top = 32
          Width = 242
          Height = 267
          Anchors = [akTop, akRight]
          Caption = #1578#1589#1608#1610#1585' '#1575#1605#1590#1575
          TabOrder = 12
          DesignSize = (
            242
            267)
          object DBImage1: TImage
            Left = 7
            Top = 21
            Width = 226
            Height = 206
            Anchors = [akTop, akRight]
            Stretch = True
          end
          object xpBitBtn3: TBitBtn
            Left = 56
            Top = 233
            Width = 62
            Height = 25
            Cursor = crHandPoint
            Anchors = [akTop, akRight]
            Caption = #1578#1594#1610#1610#1585
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clNavy
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
            TabOrder = 0
            OnClick = xpBitBtn3Click
          end
          object xpBitBtn2: TBitBtn
            Left = 128
            Top = 233
            Width = 59
            Height = 25
            Cursor = crHandPoint
            Anchors = [akTop, akRight]
            Caption = #1606#1605#1575#1610#1588
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clNavy
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
            TabOrder = 1
            OnClick = xpBitBtn2Click
          end
          object BitBtn5: TBitBtn
            Left = 8
            Top = 233
            Width = 33
            Height = 24
            Caption = #1575#1605#1590#1575#1569' '#1605#1608#1602#1578
            Font.Charset = ARABIC_CHARSET
            Font.Color = clMaroon
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
            TabOrder = 2
            Visible = False
            OnClick = BitBtn5Click
          end
        end
        object DBLkCBAccessID: TDBLookupComboBox
          Left = 338
          Top = 122
          Width = 240
          Height = 21
          Anchors = [akTop, akRight]
          BiDiMode = bdLeftToRight
          DataField = 'AccessID'
          DataSource = DSForm
          KeyField = 'ID'
          ListField = 'Title'
          ListSource = DMUserDefine.DAccess2
          ParentBiDiMode = False
          TabOrder = 4
        end
        object DBETitle: TDBEdit
          Left = 428
          Top = 41
          Width = 150
          Height = 21
          Anchors = [akTop, akRight]
          DataField = 'Title'
          DataSource = DSForm
          TabOrder = 0
        end
        object DBEUserName: TDBEdit
          Left = 428
          Top = 68
          Width = 150
          Height = 21
          Anchors = [akTop, akRight]
          DataField = 'UserName'
          DataSource = DSForm
          TabOrder = 1
        end
        object ActionToolBar1: TActionToolBar
          Left = 16
          Top = 0
          Width = 647
          Height = 27
          ActionManager = ActionManager
          Align = alNone
          Anchors = [akTop, akRight]
          Caption = 'ActionToolBar1'
          ColorMap.HighlightColor = 15660791
          ColorMap.BtnSelectedColor = clBtnFace
          ColorMap.UnusedColor = 15660791
          EdgeOuter = esRaised
          Orientation = boRightToLeft
          Spacing = 0
        end
        object EdtPassword: TEdit
          Left = 428
          Top = 95
          Width = 150
          Height = 21
          Anchors = [akTop, akRight]
          PasswordChar = '*'
          TabOrder = 2
          OnKeyPress = EdtPasswordKeyPress
        end
        object EdtConfirmPassword: TEdit
          Left = 251
          Top = 95
          Width = 150
          Height = 21
          Anchors = [akTop, akRight]
          PasswordChar = '*'
          TabOrder = 3
          OnKeyPress = EdtConfirmPasswordKeyPress
        end
        object DBCBIsSecretariatStaffer: TDBCheckBox
          Left = 458
          Top = 296
          Width = 120
          Height = 17
          Anchors = [akTop, akRight]
          Caption = #1705#1575#1585#1605#1606#1583' '#1583#1576#1610#1585#1582#1575#1606#1607' '#1575#1587#1578' '
          DataField = 'IsSecretariantStaffer'
          DataSource = DSForm
          TabOrder = 10
          ValueChecked = 'True'
          ValueUnchecked = 'False'
        end
        object DBLkCBDefaultSec: TDBLookupComboBox
          Left = 338
          Top = 149
          Width = 240
          Height = 21
          Anchors = [akTop, akRight]
          BiDiMode = bdLeftToRight
          DataField = 'DefaultSec'
          DataSource = Dm.Dusers
          ParentBiDiMode = False
          TabOrder = 5
        end
        object DBEBeginActiveDate: TDBShamsiDateEdit
          Left = 489
          Top = 177
          Width = 89
          Height = 21
          Anchors = [akTop, akRight]
          CheckValidity = True
          ShowMsg = False
          DataField = 'BeginActiveDate'
          DataSource = DSForm
          TabOrder = 6
        end
        object DBEEndActiveDate: TDBShamsiDateEdit
          Left = 338
          Top = 177
          Width = 89
          Height = 21
          Anchors = [akTop, akRight]
          CheckValidity = True
          ShowMsg = False
          DataField = 'EndActiveDate'
          DataSource = DSForm
          TabOrder = 7
        end
        object DBChBoHasSecureLetterAccess: TDBCheckBox
          Left = 408
          Top = 233
          Width = 170
          Height = 17
          Anchors = [akTop, akRight]
          Caption = #1583#1587#1578#1585#1587#1610' '#1576#1607' '#1606#1575#1605#1607' '#1607#1575#1610' '#1605#1581#1585#1605#1575#1606#1607
          DataField = 'HasSecureLetterAccess'
          DataSource = DSForm
          TabOrder = 9
          ValueChecked = 'True'
          ValueUnchecked = 'False'
        end
        object GroupBox2: TGroupBox
          Left = 232
          Top = 384
          Width = 346
          Height = 77
          Anchors = [akTop, akRight]
          Caption = #1578#1593#1610#1610#1606' '#1587#1605#1578' '#1705#1575#1585#1576#1585
          TabOrder = 13
          DesignSize = (
            346
            77)
          object Label8: TLabel
            Left = 276
            Top = 21
            Width = 58
            Height = 13
            Anchors = [akTop, akRight]
            Caption = #1587#1605#1578' '#1575#1589#1604#1610
            Font.Charset = ARABIC_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
          end
          object Label15: TLabel
            Left = 276
            Top = 47
            Width = 48
            Height = 13
            Anchors = [akTop, akRight]
            Caption = #1587#1605#1578' '#1583#1608#1605
            Font.Charset = ARABIC_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
          end
          object SpeedButton5: TSpeedButton
            Left = 15
            Top = 45
            Width = 22
            Height = 22
            Cursor = crHandPoint
            Hint = #1581#1584#1601' '#1587#1605#1578' '#1583#1608#1605
            Anchors = [akTop, akRight]
            Glyph.Data = {
              36030000424D3603000000000000360000002800000010000000100000000100
              1800000000000003000000000000000000000000000000000000FFFFFFFFFFFF
              C4C5C753558FEAEAEAFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFF6F6FA5763DA3245E6434896EFEFF1FFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFCCCBD1FBFBFBFFFFFFE4E5F9
              4A5AE5283CDD1B2FDEC4C5BFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFF2F2F55A5BA5FFFFFFFFFFFFF3F3FC4B59E02337D0172DDEA49DAEFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF767AC88B8CCAFFFFFFFFFFFFFFFFFF
              6D77E61E33CA142AD53943A0FEFEFEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFECEB
              EF182BD2E6E6E2FFFFFFFFFFFFFFFFFFDEE0F8283BCB1329CA1529C9BFC0C3FF
              FFFFFFFFFFFFFFFFFFFFFFFEFEFE6870C04754C3FDFDFDFFFFFFFFFFFFFFFFFF
              FFFFFFB8BDF01F34C21128CC2735AFCCCCC1FFFFFFFFFFFFEBEBF0575FAF1C31
              DCD7D8DFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEFEFFAFB1EE152AC3142AD929
              30A1D9D9D5FFFFFF6269AE162FE8505AB9FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFDFDFE9FA2EB0D23BA1F34DD5759A69EA3C5162CE2172CC6D3D5
              DDFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFB4B9EE14
              27B80A1FC5091ED12939C1DDDDE7FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFEFEFF18082B5091EC50016BD0014BE4F519DE4E4E6FFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE0E0D34A52A6142CEF04
              1DE2011AC92B39C70014C0242A8CDCDCD6FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              EFEFF2878BB45E68D14E63F02B40EA142EE8626FDFEDEDF95A65E20D26E83743
              ABD9D9D6FFFFFFFFFFFFFFFFFFA5A6BB6973CA8D9EF38697F1697EF15F6CDBCD
              CFEAFCFCFDFFFFFFFDFDFEDBDCF8727DF1545FC89595AFF9F9F9FFFFFFC7CDF8
              5A69DB6876E47581EBA4A8E7F6F6FAFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFDFD
              FED5D7F87D84EE5A61ABFFFFFFFFFFFFDCE0F9C7C8F4F0F0FCFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFBFBFED6D7F8}
            ParentShowHint = False
            ShowHint = True
            OnClick = SpeedButton5Click
          end
          object SpeedButton3: TSpeedButton
            Left = 250
            Top = 45
            Width = 22
            Height = 22
            Cursor = crHandPoint
            Anchors = [akTop, akRight]
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
            OnClick = SpeedButton3Click
          end
          object SpeedButton2: TSpeedButton
            Left = 250
            Top = 19
            Width = 22
            Height = 22
            Cursor = crHandPoint
            Anchors = [akTop, akRight]
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
            OnClick = SpeedButton2Click
          end
          object DBLkCBFromOrgTitle: TDBLookupComboBox
            Left = 39
            Top = 19
            Width = 210
            Height = 21
            Anchors = [akTop, akRight]
            BiDiMode = bdLeftToRight
            DataField = 'FromOrgTitle'
            DataSource = DSForm
            Font.Charset = ARABIC_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            ListField = 'Title'
            ParentBiDiMode = False
            ParentFont = False
            TabOrder = 0
          end
          object DBLkCBSecondOrgTitle: TDBLookupComboBox
            Left = 39
            Top = 45
            Width = 210
            Height = 21
            Anchors = [akTop, akRight]
            BiDiMode = bdLeftToRight
            DataField = 'SecondOrgTitle'
            DataSource = DSForm
            Font.Charset = ARABIC_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            ListField = 'Title'
            ParentBiDiMode = False
            ParentFont = False
            TabOrder = 1
          end
        end
        object DBEEmail: TDBEdit
          Left = 338
          Top = 205
          Width = 240
          Height = 21
          BiDiMode = bdLeftToRight
          DataField = 'Email'
          DataSource = DSForm
          ParentBiDiMode = False
          TabOrder = 8
          OnEnter = DBEEmailEnter
          OnExit = DBEEmailExit
        end
        object DBCheckBox1: TDBCheckBox
          Left = 416
          Top = 252
          Width = 162
          Height = 17
          Anchors = [akTop, akRight]
          Caption = #1583#1587#1578#1585#1587#1610' '#1576#1607' '#1575#1585#1580#1575#1593#1575#1578' '#1605#1581#1585#1605#1575#1606#1607
          DataField = 'CanViewSecureRecommite'
          DataSource = DSForm
          TabOrder = 14
          ValueChecked = 'True'
          ValueUnchecked = 'False'
        end
        object DBLookupComboBox1: TDBLookupComboBox
          Left = 232
          Top = 360
          Width = 97
          Height = 21
          DataField = 'GroupID'
          DataSource = DSForm
          KeyField = 'GroupID'
          ListField = 'GroupName'
          ListSource = Dm.dsChartWorkGroup
          TabOrder = 15
        end
        object chkShowPassword: TCheckBox
          Left = 304
          Top = 72
          Width = 97
          Height = 17
          Caption = #1606#1605#1575#1610#1588' '#1585#1605#1586#1593#1576#1608#1585
          TabOrder = 16
          Visible = False
          OnClick = chkShowPasswordClick
        end
        object DBCheckBox2: TDBCheckBox
          Left = 280
          Top = 316
          Width = 298
          Height = 17
          Anchors = [akTop, akRight]
          Caption = #1575#1585#1580#1575#1593' '#1606#1575#1605#1607' '#1576#1575' '#1575#1587#1578#1601#1575#1583#1607' '#1575#1586' '#1587#1575#1610#1585' '#1587#1605#1578' '#1607#1575' '#1608' '#1575#1605#1705#1575#1606' '#1581#1584#1601' '#1575#1585#1580#1575#1593
          DataField = 'CanRecommiteWithOtherOrg'
          DataSource = DSForm
          TabOrder = 17
          ValueChecked = 'True'
          ValueUnchecked = 'False'
        end
        object chkArchiveClassification: TDBCheckBox
          Left = 368
          Top = 274
          Width = 210
          Height = 17
          Anchors = [akTop, akRight]
          Caption = #1583#1587#1578#1585#1587#1610' '#1576#1607' '#1575#1587#1606#1575#1583' '#1605#1581#1585#1605#1575#1606#1607' '#1576#1575#1610#1711#1575#1606#1610
          DataField = 'canViewClassifiedArchiveDocs'
          DataSource = DSForm
          TabOrder = 18
          ValueChecked = 'True'
          ValueUnchecked = 'False'
        end
      end
    end
    object xpTabSheet2: TxpTabSheet
      Caption = ' '#1604#1610#1587#1578' '#1705#1575#1585#1576#1585#1575#1606' '
      Color = clWhite
      BGStyle = bgsNone
      GradientStartColor = clWhite
      GradientEndColor = clSilver
      GradientFillDir = fdTopToBottom
      object DBGFromORG: TYDBGrid
        Left = 0
        Top = 34
        Width = 663
        Height = 430
        Align = alClient
        Color = 14671871
        DataSource = DMUserDefine.Dsearch
        TabOrder = 0
        TitleFont.Charset = ARABIC_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'Tahoma'
        TitleFont.Style = []
        OnDblClick = DBGFromORGDblClick
        YeganehColor = True
        YeganehFinish = False
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
        FooterFields = 'Count'
        Columns = <
          item
            Color = 16434943
            Expanded = False
            FieldName = 'Title'
            ReadOnly = True
            Title.Alignment = taCenter
            Title.Caption = #1593#1606#1608#1575#1606
            Width = 209
            Visible = True
          end
          item
            Alignment = taRightJustify
            Color = 15790335
            Expanded = False
            FieldName = 'username'
            ReadOnly = True
            Title.Alignment = taCenter
            Title.Caption = #1606#1575#1605' '#1705#1575#1585#1576#1585#1610
            Width = 168
            Visible = True
          end>
      end
      object Panel2: TPanel
        Left = 0
        Top = 0
        Width = 663
        Height = 34
        Align = alTop
        TabOrder = 1
        DesignSize = (
          663
          34)
        object Label12: TLabel
          Left = 620
          Top = 9
          Width = 35
          Height = 13
          Anchors = [akTop, akRight]
          Caption = #1580#1587#1578#1580#1608
        end
        object SEdit: TEdit
          Left = 402
          Top = 6
          Width = 213
          Height = 21
          Anchors = [akTop, akRight]
          TabOrder = 0
          OnChange = SEditChange
        end
        object cbAccess: TDBLookupComboBox
          Left = 19
          Top = 5
          Width = 192
          Height = 21
          Anchors = [akTop, akRight]
          BiDiMode = bdLeftToRight
          Enabled = False
          KeyField = 'ID'
          ListField = 'Title'
          ListSource = DMUserDefine.DAccess2
          ParentBiDiMode = False
          TabOrder = 1
          OnClick = FilterAccessClick
        end
        object FilterAccess: TCheckBox
          Left = 216
          Top = 8
          Width = 161
          Height = 17
          Caption = #1705#1575#1585#1576#1585#1575#1606' '#1583#1575#1585#1575#1610' '#1587#1591#1581' '#1583#1587#1578#1585#1587#1610' '
          TabOrder = 2
          OnClick = FilterAccessClick
        end
      end
    end
    object xpTabSheet1: TxpTabSheet
      Caption = #1604#1610#1587#1578' '#1705#1575#1585#1576#1585#1575#1606' '#1594#1610#1585#1601#1593#1575#1604
      Color = clWhite
      BGStyle = bgsNone
      GradientStartColor = clWhite
      GradientEndColor = clSilver
      GradientFillDir = fdTopToBottom
      object Panel4: TPanel
        Left = 0
        Top = 0
        Width = 663
        Height = 45
        Align = alTop
        TabOrder = 0
        object BitBtn2: TBitBtn
          Left = 552
          Top = 10
          Width = 105
          Height = 25
          Action = acShowDeactivateUsers
          Caption = #1606#1605#1575#1610#1588' '#1705#1575#1585#1576#1585#1575#1606
          TabOrder = 0
          Glyph.Data = {
            36040000424D3604000000000000360000002800000010000000100000000100
            2000000000000004000000000000000000000000000000000000FF00FF00FF00
            FF00FF00FF00FF00FF00F7F7F70073737B00B58C6B00EFB58C00AD846B006B73
            7B00FFFFFF00FF00FF00F7F7F700848C94007B848400C6C6CE00FF00FF00FF00
            FF00FF00FF00FF00FF005A5A630094847300FFDEA500FFD6A500FFD69C00847B
            6B00DEDEE700F7F7F700636B7300AD846300C6947B00635A5A00FF00FF00FF00
            FF00FFFFFF006B6B6B006B737300B5A59400FFEFCE00FFE7CE00FFE7BD00B5A5
            84007B7B7B00636B7300A58C7300FFE7A500FFD69400DEB58C00FF00FF00FF00
            FF005A5A5A006B6B6B00A5A5A500A5A59C00EFD6CE00FF00FF00FFFFDE008C8C
            7B00212129007B848C00DEB59C00FFF7D600FFE7C600FFE7B500EFEFEF005A5A
            5A00393939008C8C8C00D6D6D600D6DEDE00A5949400CEB5AD00BDAD9C003931
            390094949400C6C6C600AD9C9C00FFF7E700FFFFFF00F7DEBD0063636300ADAD
            AD00949494004A4A4A00DEDEDE00FF00FF00E7EFEF00635A5A00736B7300424A
            4A0084848400E7E7E700E7E7EF00AD949400DEC6BD008C7B7300424242009C9C
            9C00ADADAD00D6D6D6006B6B6B00848484004242420039424200525252004242
            4200CECECE00E7FFE700DEF7D600C6BDC60063636300DEDEDE0042424200B5B5
            B500DEDEDE00CECECE00C6C6C6009C9C9C008C8C8C007B737B005A5A5A005A52
            5A00736B7300B5BDAD00189C3100A5B59C00FFFFFF00FF00FF00636363003939
            390094949400ADADAD00A5A5A500A5A5A500ADADAD00BDBDBD00ADBDAD00ADBD
            AD00ADB5A5009CB5940039C66B0031B54A00CEE7C600FF00FF00F7F7F700BDBD
            BD00C6C6C600B5B5B500A5A5A5008C8C8C00736B7300739C730021B5420021AD
            4A0021AD420029AD4A0039D66B0042DE7B0029AD4200CEEFCE00FF00FF00FF00
            FF00FF00FF00FF00FF00FFFFFF00F7F7F700DED6DE0084AD840042DE730039DE
            730042DE7B004AE77B004AE77B004AEF84004ADE7B0039AD4A00FF00FF00FF00
            FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF008CC6940052DE840031DE
            6B0042DE730042E77B004AE77B0052EF84005AF78C0042E78400FF00FF00FF00
            FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF0084BD84006BE79C004AE7
            84005AEF940063F794006BF79C0052F78C005AFF94004AD66300FF00FF00FF00
            FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF009CCE9C004ACE6B005AD6
            7B0063DE84005AD673008CEFAD004AFF8C004AD66300E7EFDE00FF00FF00FF00
            FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00F7FFF700DEEFD600DEEF
            D600DEEFDE00B5CEA5006BEF9C0042D66300D6EFCE00FF00FF00FF00FF00FF00
            FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
            FF00FF00FF00E7EFDE0039C65200E7F7E700FF00FF00FF00FF00}
        end
        object BitBtn4: TBitBtn
          Left = 440
          Top = 10
          Width = 105
          Height = 25
          Action = acActivateUser
          Caption = #1601#1593#1575#1604' '#1705#1585#1583#1606' '#1705#1575#1585#1576#1585
          TabOrder = 1
          Glyph.Data = {
            36040000424D3604000000000000360000002800000010000000100000000100
            2000000000000004000000000000000000000000000000000000FF00FF007A28
            32009C4B3F00A14F3F009D4C3F009B4A3E0099473E00E3CDC90032942D003DBB
            5100B5C9AC0095433C0071203000400F3B00EDE9EB00EDE9EB0071203000E3AA
            6B00E49F4700E49E4400E49E4600E49F4700F8E6CF003D992C005ADB800075F2
            96003AB74C00F2E2CA00E0A76C006B1C3100EDE9EB00EDE9EB0091424000E5A3
            4F00E3983900E3983900E3983900F8E5CC0037992D0055D6790073EC8B0077F0
            8C0062E4880039962800F8E6CF008B3C3D00EDE9EB00EDE9EB009B504900E5A2
            4D00E2973900E2973900F7E2C7003CA1310053D377006AE1820060E086005CDE
            82006DED870043C45E00DBD8BE00964C4700EDE9EB00EDE9EB009D585200E39F
            4E00DF933700DF933700F7E2C9003EC455005DD4770057D87C0035A4300033AC
            340068EB8D005DE2800030AB3600E3D1D000EDE9EB00EDE9EB0093545500E1A1
            5B00DB8B3600DB8B3600EADCCD0038A8340040C556003CA83C00E3D6D100D0D1
            BD0047CB63005CE073004AD06D0037822C00FFFFFF00EDE9EB00814D6400D398
            6D00D6863B00AC6A2A00996E4F00D3D9E200CCDDF000CCDDF00064789A00E2D7
            CE0035992A0054DB79004CD563003BBF5300D5E3D500EDE9EB00462E4700925A
            6300C6886600956E54003E80C50083BCF200A3D3FE00A3D3FE0082BBF2003E80
            C500DFD5CE0035B841004DD76C0048D3670031B13D00F7F9F700EDE9EB00EDE9
            EB00452F4700275EA00095C9F8008AC8FE0089C8FF0089C8FF0089C7FE0093C8
            F800265C9E00CAD9CA003DC4550045D05C0048D26B002AA32D00EDE9EB00EDE9
            EB00021C39005AA2EA0087C6FE0084C4FF0083C4FF0083C3FF0082C3FF0085C4
            FE0058A0EA00EAEDEF00248E230043CB620047D2610039BD4F00EDE9EB00EDE9
            EB00358DDD007AB8F6007EC1FF007DC0FF007DC0FF007CC0FF007BBFFF007BBF
            FF0076B7F6003690E200FFFFFF00289C280037BC4900279B2700EDE9EB00EDE9
            EB003593E7007ABAF90076BDFF0076BCFF0075BCFF0074BCFF0074BBFF0073BB
            FF0077B8F9003696ED00EDE9EB00FFFFFF00FFFFFF00FFFFFF00EDE9EB00EDE9
            EB001065BC0065AFF90070B9FE006FB8FF006EB8FF006DB8FF006DB7FF006DB8
            FE0063AEF900126CCA00EDE9EB00EDE9EB00EDE9EB00EDE9EB00EDE9EB00EDE9
            EB00EDE9EB003197FC0084C2FE0068B5FF0068B5FF0067B4FF0067B4FF0082C1
            FE003097FC00EDE9EB00EDE9EB00EDE9EB00EDE9EB00EDE9EB00EDE9EB00EDE9
            EB00EDE9EB00197FE900409FFE0082C1FE0070B8FE0070B8FE0081C0FE003F9E
            FE001983EF00EDE9EB00EDE9EB00EDE9EB00EDE9EB00EDE9EB00EDE9EB00EDE9
            EB00EDE9EB00EDE9EB001779DE001E8FFE0042A0FE0042A0FE001E90FE00197D
            E500EDE9EB00EDE9EB00EDE9EB00EDE9EB00EDE9EB00EDE9EB00}
        end
        object BitBtn3: TBitBtn
          Left = 328
          Top = 10
          Width = 105
          Height = 25
          Action = acDeleteUser
          Caption = #1581#1584#1601' '#1705#1575#1585#1576#1585
          TabOrder = 2
          Glyph.Data = {
            36040000424D3604000000000000360000002800000010000000100000000100
            2000000000000004000000000000000000000000000000000000FF00FF007A28
            32009C4B3F00A14F3F009D4C3F009B4A3E0099473E00E3CDC90036297C00312D
            9D00E4CDCA0095433C00DBC7CB002727920021218100FFFFFF0071203000E3AA
            6B00E49F4700E49E4400E49E4600E49F4700F8E6CF00443A83005555D3006464
            E10033319F00F8E5CD00312E95004646CF004343C9002121810091424000E5A3
            4F00E3983900E3983900E3983900E5A14A00EED9D0003430A1005B5BD8007070
            E6006969E8003737B7005151D8004444CD004646CE00282897009B504900E5A2
            4D00E2973900E2973900E2973900D89B6300CF9C8D00F1E3DE003633A3006565
            E3007777F0006C6CED005656DB004848D00029299B00FFFFFF009D585200E39F
            4E00DF933700DF933700E0973E00C17C5900F7EAE700F7E9E700EEDAD0003939
            BE007575F1006D6DEB005959DF003434B400FFFFFF000000000093545500E1A1
            5B00DB8B3600DB8B3600B6834C009B6C5A00BFB9B900EDEBEB003331A3006565
            E3007777F0006C6CED005656DB004848D1002B2BA000FFFFFF00814D6400D398
            6D00D6863B00AC6A2A00996E4F0063779900CCDDF0002F33AC005B5BD9007070
            E6006969E9003939BE005252D9004444CD004646D0002A2AA000462E4700925A
            6300C6886600956E54003E80C50083BCF200E5F3FE003C44AA005656D7006464
            E2003533AA00EFDDD400312FA3004747D2004444CD0023238B00EDE9EB00EDE9
            EB00EDE9EB00275EA00095C9F8008AC8FE0089C8FF00DEF0FF003842AA003538
            B400C3D2E400EDE9EB00FFFFFF002C2CA50024248F00FFFFFF00EDE9EB00EDE9
            EB00EDE9EB005AA2EA0087C6FE0084C4FF0083C4FF0083C3FF00DCEEFF00DDEF
            FE0058A0EA00EDE9EB00EDE9EB00FFFFFF00FFFFFF00EDE9EB00EDE9EB00EDE9
            EB00358DDD007AB8F6007EC1FF007DC0FF007DC0FF007CC0FF007BBFFF007BBF
            FF0076B7F6003690E200EDE9EB00EDE9EB00EDE9EB00EDE9EB00EDE9EB00EDE9
            EB003593E7007ABAF90076BDFF0076BCFF0075BCFF0074BCFF0074BBFF0073BB
            FF0077B8F9003696ED00EDE9EB00EDE9EB00EDE9EB00EDE9EB00EDE9EB00EDE9
            EB001065BC0065AFF90070B9FE006FB8FF006EB8FF006DB8FF006DB7FF006DB8
            FE0063AEF900126CCA00EDE9EB00EDE9EB00EDE9EB00EDE9EB00EDE9EB00EDE9
            EB00EDE9EB003197FC0084C2FE0068B5FF0068B5FF0067B4FF0067B4FF0082C1
            FE003097FC00EDE9EB00EDE9EB00EDE9EB00EDE9EB00EDE9EB00EDE9EB00EDE9
            EB00EDE9EB00197FE900409FFE0082C1FE0070B8FE0070B8FE0081C0FE003F9E
            FE001983EF00EDE9EB00EDE9EB00EDE9EB00EDE9EB00EDE9EB00EDE9EB00EDE9
            EB00EDE9EB00EDE9EB001779DE001E8FFE0042A0FE0042A0FE001E90FE00197D
            E500EDE9EB00EDE9EB00EDE9EB00EDE9EB00EDE9EB00EDE9EB00}
        end
      end
      object DBGrid1: TDBGrid
        Left = 0
        Top = 45
        Width = 663
        Height = 419
        Align = alClient
        Color = clBtnFace
        DataSource = DsDeactivateUsers
        Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit]
        ReadOnly = True
        TabOrder = 1
        TitleFont.Charset = ARABIC_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'Tahoma'
        TitleFont.Style = []
        Columns = <
          item
            Alignment = taCenter
            Color = 14736093
            Expanded = False
            FieldName = 'Id'
            Title.Alignment = taCenter
            Title.Caption = #1588#1606#1575#1587#1607' '#1705#1575#1585#1576#1585
            Width = 80
            Visible = True
          end
          item
            Color = 14736093
            Expanded = False
            FieldName = 'UserName'
            Title.Caption = #1606#1575#1605' '#1705#1575#1585#1576#1585
            Width = 250
            Visible = True
          end
          item
            Color = 14736093
            Expanded = False
            FieldName = 'Title'
            Title.Caption = #1606#1575#1605' '#1705#1575#1605#1604
            Width = 290
            Visible = True
          end>
      end
    end
  end
  object Panel3: TPanel [2]
    Left = 0
    Top = 504
    Width = 671
    Height = 41
    Align = alBottom
    TabOrder = 1
    DesignSize = (
      671
      41)
    object BitBtn1: TBitBtn
      Left = 581
      Top = 8
      Width = 75
      Height = 25
      Cursor = crHandPoint
      Anchors = [akTop, akRight]
      Caption = #1578#1575#1610#1610#1583
      Font.Charset = ARABIC_CHARSET
      Font.Color = clNavy
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 0
      OnClick = BitBtn1Click
      Glyph.Data = {
        06030000424D06030000000000003600000028000000100000000F0000000100
        180000000000D002000000000000000000000000000000000000008080008080
        0080800080808000008000000080800080800080800080800080800080800080
        8000808000808000808000808000808000808080000000800000800080000000
        8080008080008080008080008080008080008080008080008080008080008080
        8000000080000080000080000080008000000080800080800080800080800080
        8000808000808000808000808080000000800000800000800000800000800000
        8000800000008080008080008080008080008080008080008080800000008000
        00800000800000FF000080000080000080000080008000000080800080800080
        8000808000808000808000800000800000800000FF0000808000808000800000
        800000800080000000808000808000808000808000808000808000FF00008000
        00FF0000808000808000808000FF000080000080000080008000000080800080
        8000808000808000808000808000FF0000808000808000808000808000808000
        FF00008000008000008000800000008080008080008080008080008080008080
        00808000808000808000808000808000808000FF000080000080000080008000
        0000808000808000808000808000808000808000808000808000808000808000
        808000808000FF00008000008000008000800000008080008080008080008080
        00808000808000808000808000808000808000808000808000FF000080000080
        0000800080000000808000808000808000808000808000808000808000808000
        808000808000808000808000FF00008000008000008000800000008080008080
        00808000808000808000808000808000808000808000808000808000808000FF
        0000800000800080000000808000808000808000808000808000808000808000
        808000808000808000808000808000808000FF00008000008000008080008080
        0080800080800080800080800080800080800080800080800080800080800080
        8000808000FF00008080}
    end
  end
  inherited DSForm: TDataSource
    AutoEdit = False
    DataSet = Dm.Users
    Left = 68
    Top = 88
  end
  inherited ActionList: TActionList
    Left = 174
    Top = 136
  end
  inherited Grid_PopupMenu: TPopupMenu
    Left = 174
    Top = 236
  end
  object ActionManager: TActionManager
    ActionBars.SessionCount = 171
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
            Action = DataSetNext1
            ImageIndex = 26
            LastSession = 137
          end
          item
            Action = DataSetPrior1
            ImageIndex = 1
            LastSession = 137
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
          end>
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
                Action = DataSetCancel
                ImageIndex = 5
                ShortCut = 32776
              end
              item
                Action = DataSetPrior1
                ImageIndex = 1
              end
              item
                Action = DataSetNext1
                ImageIndex = 26
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
            ImageIndex = 14
            ShortCut = 45
          end
          item
            Action = DataSetEdit
            ImageIndex = 29
            ShortCut = 115
          end
          item
            Action = DataSetPost
            ImageIndex = 39
            ShortCut = 113
          end
          item
            Action = DataSetCancel
            ImageIndex = 40
            ShortCut = 32776
          end
          item
            Action = DeleteUser
            ImageIndex = 48
            ShortCut = 16430
          end
          item
            Caption = '-'
            LastSession = 171
          end
          item
            Action = DataSetPrior1
            ImageIndex = 16
          end
          item
            Action = DataSetNext1
            ImageIndex = 19
          end>
        ActionBar = ActionToolBar1
        AutoSize = False
      end>
    Images = Dm.LetterImages
    Left = 174
    Top = 88
    StyleName = 'XP Style'
    object DataSetInsert: TDataSetInsert
      Tag = 3
      Category = #1578#1594#1610#1610#1585#1575#1578
      Caption = #1705#1575#1585#1576#1585' '#1580#1583#1610#1583
      Hint = 'Insert'
      ImageIndex = 14
      ShortCut = 45
      OnExecute = DataSetInsertExecute
      DataSource = DSForm
    end
    object DataSetEdit: TDataSetEdit
      Tag = 5
      Category = #1578#1594#1610#1610#1585#1575#1578
      Caption = #1608#1610#1585#1575#1610#1588' '
      Hint = 'Edit'
      ImageIndex = 29
      ShortCut = 115
      DataSource = DSForm
    end
    object DataSetPost: TDataSetPost
      Tag = 6
      Category = #1578#1594#1610#1610#1585#1575#1578
      Caption = #1584#1582#1610#1585#1607
      Hint = 'Post'
      ImageIndex = 39
      ShortCut = 113
      OnExecute = DataSetPostExecute
      DataSource = DSForm
    end
    object DataSetCancel: TDataSetCancel
      Tag = 7
      Category = #1578#1594#1610#1610#1585#1575#1578
      Caption = #1575#1606#1589#1585#1575#1601
      Hint = 'Cancel'
      ImageIndex = 40
      ShortCut = 32776
      DataSource = DSForm
    end
    object Action11: TAction
      Tag = 18
      Category = #1576#1585#1606#1575#1605#1607
      Caption = #1582#1585#1608#1580
      ImageIndex = 1
      ShortCut = 27
      OnExecute = Action11Execute
    end
    object DataSetPrior1: TDataSetPrior
      Category = #1578#1594#1610#1610#1585#1575#1578
      Caption = #1602#1576#1604#1610
      Hint = 'Prior'
      ImageIndex = 16
      OnExecute = DataSetPrior1Execute
      DataSource = DSForm
    end
    object DataSetNext1: TDataSetNext
      Category = #1578#1594#1610#1610#1585#1575#1578
      Caption = #1576#1593#1583#1610
      Hint = 'Next'
      ImageIndex = 19
      OnExecute = DataSetNext1Execute
      DataSource = DSForm
    end
    object Action1: TAction
      Caption = '|'
    end
    object DeleteUser: TAction
      Category = #1578#1594#1610#1610#1585#1575#1578
      Caption = #1594#1610#1585#1601#1593#1575#1604' '#1705#1585#1583#1606' '#1705#1575#1585#1576#1585
      ImageIndex = 48
      ShortCut = 16430
      OnExecute = DeleteUserExecute
    end
    object acShowDeactivateUsers: TAction
      Category = #1705#1575#1585#1576#1585#1575#1606' '#1594#1610#1585#1601#1593#1575#1604
      Caption = 'acShowDeactivateUsers'
      ImageIndex = 15
      OnExecute = acShowDeactivateUsersExecute
    end
    object acActivateUser: TAction
      Category = #1705#1575#1585#1576#1585#1575#1606' '#1594#1610#1585#1601#1593#1575#1604
      ImageIndex = 47
      OnExecute = acActivateUserExecute
      OnUpdate = acActivateUserUpdate
    end
    object acDeleteUser: TAction
      Category = #1705#1575#1585#1576#1585#1575#1606' '#1594#1610#1585#1601#1593#1575#1604
      Caption = 'acDeleteUser'
      ImageIndex = 49
      OnExecute = acDeleteUserExecute
      OnUpdate = acDeleteUserUpdate
    end
  end
  object OpenPictureDialogT: TOpenPictureDialog
    Filter = 'JPG|*.jpg'
    Left = 110
    Top = 128
  end
  object PopupMenu1: TPopupMenu
    Left = 80
    Top = 348
    object N1: TMenuItem
      Caption = #1575#1601#1586#1608#1583#1606'/'#1578#1594#1610#1610#1585
      OnClick = N1Click
    end
    object N2: TMenuItem
      Caption = #1581#1584#1601
      OnClick = N2Click
    end
  end
  object DsDeactivateUsers: TDataSource
    DataSet = Dm.qDeactivateUsers
    Left = 396
    Top = 156
  end
  object PopupMenu2: TPopupMenu
    Left = 168
    Top = 332
    object MenuItem1: TMenuItem
      Caption = #1575#1605#1590#1575' '#1575#1589#1604#1610
      OnClick = MenuItem1Click
    end
    object MenuItem2: TMenuItem
      Caption = #1575#1605#1590#1575' '#1605#1608#1602#1578
      OnClick = MenuItem2Click
    end
  end
  object qrySecoundSign: TADOQuery
    Connection = Dm.YeganehConnection
    Parameters = <
      item
        Name = 'p1'
        Attributes = [paSigned]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = Null
      end>
    SQL.Strings = (
      'SELECT SecoundSign FROM UserSign'
      'WHERE UserID = :p1')
    Left = 40
    Top = 392
    object qrySecoundSignSecoundSign: TBlobField
      FieldName = 'SecoundSign'
    end
  end
  object qryUpdate: TADOQuery
    Connection = Dm.YeganehConnection
    Parameters = <
      item
        Name = 'Param1'
        Attributes = [paNullable, paLong]
        DataType = ftVarBytes
        NumericScale = 255
        Precision = 255
        Size = 2147483647
        Value = Null
      end
      item
        Name = 'Param2'
        Attributes = [paSigned]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = Null
      end>
    SQL.Strings = (
      'UPDATE UserSign '
      'SET SecoundSign= :p1'
      'WHERE UserID = :p2')
    Left = 40
    Top = 144
  end
  object OpenPictureDialog: TTntOpenPictureDialog
    Filter = 'JPG|*.jpg'
    Left = 95
    Top = 188
  end
end
