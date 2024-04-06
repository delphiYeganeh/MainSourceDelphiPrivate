inherited Settings: TSettings
  Left = 389
  Top = 210
  ActiveControl = TreeView1
  BorderIcons = [biSystemMenu]
  BorderStyle = bsDialog
  Caption = #1578#1606#1592#1610#1605#1575#1578' '#1705#1575#1585#1576#1585#1610
  ClientHeight = 358
  ClientWidth = 632
  Constraints.MinHeight = 360
  Constraints.MinWidth = 640
  OldCreateOrder = True
  Position = poDesktopCenter
  PixelsPerInch = 96
  TextHeight = 13
  object Panel2: TPanel [0]
    Left = 0
    Top = 0
    Width = 632
    Height = 320
    Align = alClient
    Caption = 'Panel2'
    TabOrder = 0
    object PageControl1: TPageControl
      Left = 1
      Top = 1
      Width = 510
      Height = 318
      Cursor = crHandPoint
      ActivePage = TShBaseform
      Align = alClient
      TabOrder = 0
      object TShBaseform: TTabSheet
        Caption = #1601#1585#1605' '#1575#1589#1604#1610' '#1576#1585#1606#1575#1605#1607
        DesignSize = (
          502
          290)
        object GroupBox3: TGroupBox
          Left = 39
          Top = 8
          Width = 454
          Height = 162
          Anchors = [akTop, akRight]
          Caption = #1601#1585#1605' '#1575#1589#1604#1610' '#1576#1585#1606#1575#1605#1607
          TabOrder = 0
          DesignSize = (
            454
            162)
          object Label4: TLabel
            Left = 259
            Top = 20
            Width = 183
            Height = 13
            Anchors = [akTop, akRight]
            Caption = #1670#1607' '#1606#1608#1593' '#1606#1575#1605#1607' '#1607#1575#1610#1610' '#1585#1575' '#1583#1585' '#1588#1585#1608#1593' '#1606#1588#1575#1606' '#1583#1607#1583
          end
          object Label6: TLabel
            Left = 267
            Top = 50
            Width = 175
            Height = 13
            Anchors = [akTop, akRight]
            Caption = #1603#1583#1575#1605' '#1575#1576#1586#1575#1585' '#1583#1587#1578#1607' '#1576#1606#1583#1610' '#1606#1605#1575#1610#1588' '#1583#1575#1583#1607' '#1588#1608#1583
          end
          object Label39: TLabel
            Left = 347
            Top = 82
            Width = 95
            Height = 13
            Anchors = [akTop, akRight]
            Caption = #1578#1593#1583#1575#1583' '#1606#1575#1605#1607' '#1583#1585' '#1583#1576#1610#1585#1582#1575#1606#1607
          end
          object Label40: TLabel
            Left = 169
            Top = 82
            Width = 88
            Height = 13
            Anchors = [akTop, akRight]
            Caption = #1578#1593#1583#1575#1583' '#1606#1575#1605#1607' '#1583#1585' '#1603#1575#1585#1578#1575#1576#1604
          end
          object Label7: TLabel
            Left = 124
            Top = 144
            Width = 318
            Height = 13
            Caption = '('#1607#1606#1711#1575#1605#1610' '#1705#1607' '#1583#1585' '#1588#1605#1575#1585#1607' '#1578#1585#1705#1610#1576#1610' '#1606#1575#1605#1607' '#1575#1586' '#1581#1585#1608#1601' '#1604#1575#1578#1610#1606' '#1575#1587#1578#1601#1575#1583#1607' '#1588#1583#1607' '#1575#1587#1578')'
            Font.Charset = ARABIC_CHARSET
            Font.Color = clRed
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
          end
          object InitialReceivedMode: TComboBox
            Left = 168
            Top = 21
            Width = 89
            Height = 21
            Anchors = [akTop, akRight]
            BiDiMode = bdLeftToRight
            ItemHeight = 13
            ItemIndex = 0
            ParentBiDiMode = False
            TabOrder = 0
            Text = #1607#1605#1607' '#1606#1575#1605#1607' '#1607#1575
            Items.Strings = (
              #1607#1605#1607' '#1606#1575#1605#1607' '#1607#1575
              #1608#1575#1585#1583#1607
              #13#1589#1575#1583#1585#1607
              #1583#1575#1582#1604#1610
              #1605#1583#1585#1705)
          end
          object InitialArchiveMode: TComboBox
            Left = 40
            Top = 21
            Width = 118
            Height = 21
            Anchors = [akTop, akRight]
            BiDiMode = bdLeftToRight
            ItemHeight = 13
            ParentBiDiMode = False
            TabOrder = 1
            Text = #1580#1575#1585#1610
            Items.Strings = (
              #1580#1575#1585#1610
              #1570#1585#1588#1610#1608' '#1583#1587#1578#1607' '#1576#1606#1583#1610' '#1588#1583#1607
              #1570#1585#1588#1610#1608' '#1576#1583#1608#1606' '#1583#1587#1578#1607' '#1576#1606#1583#1610
              #1607#1605#1607' '#1606#1575#1605#1607' '#1607#1575)
          end
          object InitialDisplyMode: TComboBox
            Left = 168
            Top = 50
            Width = 89
            Height = 21
            Anchors = [akTop, akRight]
            BiDiMode = bdLeftToRight
            ItemHeight = 13
            ItemIndex = 2
            ParentBiDiMode = False
            TabOrder = 2
            Text = #1580#1587#1578#1580#1608
            Items.Strings = (
              #1607#1610#1670#1603#1583#1575#1605
              #1576#1575#1610#1711#1575#1606#1610
              #1580#1587#1578#1580#1608)
          end
          object MaxLetterInDabir: TEdit
            Left = 288
            Top = 79
            Width = 50
            Height = 21
            Anchors = [akTop, akRight]
            TabOrder = 3
            Text = '100'
          end
          object MaxLetterInKartable: TEdit
            Left = 114
            Top = 79
            Width = 50
            Height = 21
            Anchors = [akTop, akRight]
            TabOrder = 4
            Text = '100'
          end
          object AskMonoSelect: TCheckBox
            Left = 198
            Top = 108
            Width = 244
            Height = 13
            Anchors = [akTop, akRight]
            Caption = #1575#1606#1578#1582#1575#1576' '#1575#1606#1601#1585#1575#1583#1610' '#1587#1578#1608#1606' '#1607#1575' '#1583#1585' '#1580#1583#1608#1604' '#1575#1589#1604#1610' '#1606#1575#1605#1607' '#1607#1575
            Checked = True
            State = cbChecked
            TabOrder = 5
          end
          object ckBidiModeLetterGrid: TCheckBox
            Left = 258
            Top = 128
            Width = 184
            Height = 13
            Anchors = [akTop, akRight]
            Caption = #1670#1662' '#1670#1610#1606' '#1705#1585#1583#1606' '#1580#1583#1608#1604' '#1575#1589#1604#1610' '#1606#1575#1605#1607' '#1607#1575' '
            TabOrder = 6
          end
        end
        object GroupBox9: TGroupBox
          Left = 39
          Top = 178
          Width = 454
          Height = 88
          Anchors = [akTop, akRight]
          Caption = 'Word'
          TabOrder = 1
          DesignSize = (
            454
            88)
          object InsertSignInWord: TCheckBox
            Left = 16
            Top = 22
            Width = 428
            Height = 13
            Anchors = [akTop, akRight]
            Caption = 
              #1583#1585' '#1607#1606#1711#1575#1605' '#1576#1575#1586' '#1603#1585#1583#1606' '#1601#1575#1610#1604#1607#1575#1610' '#1608#1585#1583' '#1605#1578#1589#1604' '#1576#1607' '#1606#1575#1605#1607' '#1607#1575' '#1548' '#1576#1578#1608#1575#1606' '#1575#1605#1590#1575#1610' '#1582#1608#1583' ' +
              #1585#1575' '#1583#1585' '#1575#1606#1578#1607#1575#1610' '#1570#1606' '#1602#1585#1575#1585' '#1583#1575#1583'.'
            TabOrder = 0
          end
          object AskValueForEmptyFieldInWordTemplate: TCheckBox
            Left = 16
            Top = 48
            Width = 428
            Height = 30
            Anchors = [akTop, akRight]
            Caption = 
              #1607#1606#1711#1575#1605' '#1575#1606#1578#1582#1575#1576' '#1602#1575#1604#1576' Word '#1576#1585#1575#1610' '#1606#1575#1605#1607' '#1607#1575' '#1548' '#1583#1585' '#1589#1608#1585#1578#1610#1603#1607' '#1601#1610#1604#1583' '#1602#1575#1604#1576' '#1605#1608#1585#1583' ' +
              #1606#1592#1585' '#1610#1575#1601#1578' '#1606#1588#1583' '#1548' '#1605#1602#1583#1575#1585' '#1570#1606' '#1575#1586' '#1603#1575#1585#1576#1585' '#1711#1585#1601#1578#1607' '#1588#1608#1583'.'
            Font.Charset = ARABIC_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
            TabOrder = 1
            WordWrap = True
          end
        end
        object cbAlarmMessage: TCheckBox
          Left = 303
          Top = 272
          Width = 183
          Height = 13
          Anchors = [akTop, akRight]
          Caption = #1601#1593#1575#1604' '#1587#1575#1586#1610' '#1570#1604#1575#1585#1605' '#1578#1593#1583#1575#1583' '#1606#1575#1605#1607' '#1607#1575
          Checked = True
          State = cbChecked
          TabOrder = 2
          OnClick = cbAlarmMessageClick
        end
      end
      object TShReceivedLetter: TTabSheet
        Caption = #1606#1575#1605#1607' '#1608#1575#1585#1583#1607
        ImageIndex = 1
        DesignSize = (
          502
          290)
        object GroupBox1: TGroupBox
          Left = 12
          Top = 8
          Width = 481
          Height = 137
          Anchors = [akTop, akRight]
          Caption = #1606#1575#1605#1607' '#1608#1575#1585#1583#1607
          TabOrder = 0
          DesignSize = (
            481
            137)
          object Label2: TLabel
            Left = 170
            Top = 15
            Width = 211
            Height = 13
            Anchors = [akTop, akRight]
            Caption = #1606#1575#1605#1607' '#1608#1575#1585#1583#1607' '#1588#1605#1575#1585#1607' '#1583#1576#1610#1585#1582#1575#1606#1607' '#1605#1585#1603#1586#1610' '#1583#1575#1588#1578#1607' '#1576#1575#1588#1606#1583
          end
          object Label20: TLabel
            Left = 401
            Top = 44
            Width = 67
            Height = 13
            Anchors = [akTop, akRight]
            Caption = #1603#1583' '#1591#1576#1602#1607' '#1576#1606#1583#1610':'
            Font.Charset = ARABIC_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
          end
          object Label21: TLabel
            Left = 163
            Top = 44
            Width = 66
            Height = 13
            Anchors = [akTop, akRight]
            Caption = #1603#1583' '#1601#1608#1585#1610#1578' '#1606#1575#1605#1607':'
            Font.Charset = ARABIC_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
          end
          object Label22: TLabel
            Left = 284
            Top = 44
            Width = 66
            Height = 13
            Anchors = [akTop, akRight]
            Caption = #1603#1583' '#1606#1608#1593' '#1583#1585#1610#1575#1601#1578':'
            Font.Charset = ARABIC_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
          end
          object Label11: TLabel
            Left = 401
            Top = 72
            Width = 46
            Height = 13
            Anchors = [akTop, akRight]
            Caption = #1603#1583' '#1711#1610#1585#1606#1583#1607':'
            Font.Charset = ARABIC_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
          end
          object Label28: TLabel
            Left = 38
            Top = 44
            Width = 61
            Height = 13
            Anchors = [akTop, akRight]
            Caption = #1578#1593#1583#1575#1583' '#1589#1601#1581#1607' :'
            Font.Charset = ARABIC_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
          end
          object Label29: TLabel
            Left = 36
            Top = 73
            Width = 94
            Height = 13
            Anchors = [akTop, akRight]
            Caption = #1578#1593#1583#1575#1583' '#1589#1601#1581#1607' '#1662#1610#1608#1587#1578':'
            Font.Charset = ARABIC_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
          end
          object CheckBox1: TCheckBox
            Left = 381
            Top = 14
            Width = 17
            Height = 17
            Anchors = [akTop, akRight]
            Checked = True
            State = cbChecked
            TabOrder = 0
          end
          object DefaultRClassificationID: TEdit
            Left = 357
            Top = 40
            Width = 41
            Height = 21
            Anchors = [akTop, akRight]
            TabOrder = 1
            Text = '1'
          end
          object DefaultRUrgencyID: TEdit
            Left = 117
            Top = 40
            Width = 41
            Height = 21
            Anchors = [akTop, akRight]
            TabOrder = 2
            Text = '1'
          end
          object DefaultRReceiveTypeID: TEdit
            Left = 236
            Top = 40
            Width = 41
            Height = 21
            Anchors = [akTop, akRight]
            TabOrder = 3
            Text = '1'
          end
          object DefaultRNumberOfPage: TEdit
            Left = 10
            Top = 40
            Width = 25
            Height = 21
            Anchors = [akTop, akRight]
            TabOrder = 4
            Text = '1'
          end
          object DefaultRNumberOfAttachPages: TEdit
            Left = 10
            Top = 69
            Width = 25
            Height = 21
            Anchors = [akTop, akRight]
            TabOrder = 5
            Text = '1'
          end
          object DefaultRFromOrgId: TDBLookupComboBox
            Left = 149
            Top = 69
            Width = 249
            Height = 21
            Anchors = [akTop, akRight]
            BiDiMode = bdLeftToRight
            KeyField = 'ID'
            ListField = 'Title'
            ListSource = Dm.DSigner
            ParentBiDiMode = False
            TabOrder = 6
          end
          object ReciveIsCopy: TCheckBox
            Left = 40
            Top = 104
            Width = 356
            Height = 17
            Anchors = [akTop, akRight]
            Caption = 
              #1583#1585' '#1603#1575#1585#1578#1575#1576#1604' '#1662#1610#1608#1587#1578#1607#1575#1610' '#1606#1575#1605#1607' '#1607#1575#1610' '#1608#1575#1585#1583#1607' '#1576#1607' '#1589#1608#1585#1578' '#1601#1602#1591' '#1582#1608#1575#1606#1583#1606#1610' '#1575#1585#1580#1575#1593'  '#1588#1608 +
              #1606#1583' .'
            TabOrder = 7
          end
        end
      end
      object TShSentLetter: TTabSheet
        Caption = #1606#1575#1605#1607' '#1589#1575#1583#1585#1607
        ImageIndex = 2
        DesignSize = (
          502
          290)
        object GroupBox4: TGroupBox
          Left = 6
          Top = 8
          Width = 487
          Height = 121
          Anchors = [akTop, akRight]
          Caption = #1606#1575#1605#1607' '#1589#1575#1583#1585#1607
          TabOrder = 0
          DesignSize = (
            487
            121)
          object Label16: TLabel
            Left = 413
            Top = 18
            Width = 67
            Height = 13
            Anchors = [akTop, akRight]
            Caption = #1603#1583' '#1591#1576#1602#1607' '#1576#1606#1583#1610':'
            Font.Charset = ARABIC_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
          end
          object Label17: TLabel
            Left = 166
            Top = 17
            Width = 66
            Height = 13
            Anchors = [akTop, akRight]
            Caption = #1603#1583' '#1601#1608#1585#1610#1578' '#1606#1575#1605#1607':'
            Font.Charset = ARABIC_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
          end
          object Label18: TLabel
            Left = 285
            Top = 18
            Width = 66
            Height = 13
            Anchors = [akTop, akRight]
            Caption = #1603#1583' '#1606#1608#1593' '#1583#1585#1610#1575#1601#1578':'
            Font.Charset = ARABIC_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
          end
          object Label19: TLabel
            Left = 413
            Top = 75
            Width = 55
            Height = 13
            Alignment = taRightJustify
            Anchors = [akTop, akRight]
            Caption = #1575#1602#1583#1575#1605' '#1603#1606#1606#1583#1607':'
            Font.Charset = ARABIC_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
          end
          object Label25: TLabel
            Left = 413
            Top = 46
            Width = 47
            Height = 13
            Anchors = [akTop, akRight]
            Caption = ' '#1601#1585#1587#1578#1606#1583#1607':'
            Font.Charset = ARABIC_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
          end
          object Label3: TLabel
            Left = 36
            Top = 19
            Width = 61
            Height = 13
            Anchors = [akTop, akRight]
            Caption = #1578#1593#1583#1575#1583' '#1589#1601#1581#1607' :'
            Font.Charset = ARABIC_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
          end
          object Label30: TLabel
            Left = 36
            Top = 47
            Width = 94
            Height = 13
            Anchors = [akTop, akRight]
            Caption = #1578#1593#1583#1575#1583' '#1589#1601#1581#1607' '#1662#1610#1608#1587#1578':'
            Font.Charset = ARABIC_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
          end
          object SBDelDefualtSSigner: TSpeedButton
            Left = 160
            Top = 72
            Width = 23
            Height = 21
            Hint = #1581#1584#1601
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
            OnClick = SBDelDefualtSSignerClick
          end
          object DefaultSUrgencyID: TEdit
            Left = 121
            Top = 15
            Width = 41
            Height = 21
            Anchors = [akTop, akRight]
            TabOrder = 0
            Text = '1'
          end
          object DefaultSReceiveTypeID: TEdit
            Left = 240
            Top = 14
            Width = 41
            Height = 21
            Anchors = [akTop, akRight]
            TabOrder = 1
            Text = '1'
          end
          object DefaultSClassificationID: TEdit
            Left = 368
            Top = 15
            Width = 41
            Height = 21
            Anchors = [akTop, akRight]
            TabOrder = 2
            Text = '1'
          end
          object DefaultSNumberOfPage: TEdit
            Left = 10
            Top = 15
            Width = 23
            Height = 21
            Anchors = [akTop, akRight]
            TabOrder = 3
            Text = '1'
          end
          object DefaultSNumberOfAttachPages: TEdit
            Left = 10
            Top = 43
            Width = 23
            Height = 21
            Anchors = [akTop, akRight]
            TabOrder = 4
            Text = '1'
          end
          object DefualtSSigner: TDBLookupComboBox
            Left = 184
            Top = 72
            Width = 225
            Height = 21
            Anchors = [akTop, akRight]
            BiDiMode = bdLeftToRight
            KeyField = 'ID'
            ListField = 'Title'
            ListSource = Dm.DSigner
            ParentBiDiMode = False
            TabOrder = 5
          end
          object DefaultSFromOrgId: TDBLookupComboBox
            Left = 160
            Top = 43
            Width = 249
            Height = 21
            Anchors = [akTop, akRight]
            BiDiMode = bdLeftToRight
            KeyField = 'ID'
            ListField = 'Title'
            ListSource = Dm.DSigner
            ParentBiDiMode = False
            TabOrder = 6
          end
        end
      end
      object TShGraphic: TTabSheet
        Caption = #1592#1575#1607#1585' '#1587#1610#1587#1578#1605
        ImageIndex = 4
        DesignSize = (
          502
          290)
        object GroupBox2: TGroupBox
          Left = 295
          Top = 8
          Width = 202
          Height = 217
          Anchors = [akTop, akRight]
          Caption = #1578#1593#1610#1610#1606' '#1711#1585#1575#1601#1610#1603' '#1606#1585#1605' '#1575#1601#1586#1575#1585
          TabOrder = 0
          DesignSize = (
            202
            217)
          object LblGraphic: TLabel
            Left = 31
            Top = 162
            Width = 165
            Height = 13
            Anchors = [akTop, akRight]
            Caption = #1606#1575#1605' '#1711#1585#1575#1601#1610#1603' '#1584#1582#1610#1585#1607' '#1588#1583#1607' :  Skin11.skn'
          end
          object FileListBox: TFileListBox
            Left = 7
            Top = 19
            Width = 187
            Height = 141
            Ctl3D = False
            ItemHeight = 13
            Mask = '*.skn'
            ParentCtl3D = False
            TabOrder = 0
            OnDblClick = FileListBoxDblClick
          end
          object BitBtn3: TBitBtn
            Left = 64
            Top = 184
            Width = 75
            Height = 25
            Anchors = [akTop, akRight]
            Caption = #1578#1594#1610#1610#1585' '#1711#1585#1575#1601#1610#1603
            TabOrder = 1
            OnClick = BitBtn3Click
          end
        end
        object GroupBox7: TGroupBox
          Left = 12
          Top = 8
          Width = 269
          Height = 113
          Anchors = [akTop, akRight]
          Caption = #1585#1606#1711' '#1608' '#1601#1608#1606#1578' '#1603#1606#1578#1585#1604#1607#1575
          TabOrder = 1
          DesignSize = (
            269
            113)
          object Label8: TLabel
            Left = 181
            Top = 31
            Width = 77
            Height = 13
            Anchors = [akTop, akRight]
            Caption = #1585#1606#1711' '#1603#1606#1578#1585#1604' '#1601#1593#1575#1604' :'
          end
          object Pcolor: TPanel
            Left = 96
            Top = 27
            Width = 81
            Height = 24
            Cursor = crHandPoint
            Anchors = [akTop, akRight]
            BorderStyle = bsSingle
            Caption = #1585#1606#1711' . . .'
            Ctl3D = False
            Font.Charset = ARABIC_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentCtl3D = False
            ParentFont = False
            TabOrder = 0
            OnClick = PcolorClick
          end
          object MFont: TBitBtn
            Left = 75
            Top = 72
            Width = 182
            Height = 30
            Cursor = crHandPoint
            Anchors = [akTop, akRight]
            Caption = #1601#1608#1606#1578' '#1578#1575#1610#1662' '#1605#1590#1605#1608#1606' '#1608' '#1588#1605#1575#1585#1607' '
            Font.Charset = ARABIC_CHARSET
            Font.Color = clNavy
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
            TabOrder = 1
            OnClick = MFontClick
            Glyph.Data = {
              A2070000424DA207000000000000360000002800000019000000190000000100
              1800000000006C07000000000000000000000000000000000000171717FFFFFF
              FFFFFFFDFCFDF4EDECF2E9E8F3EBEAF7F2F2FFFFFFFFFFFFFFFFFFFFFFFFF5EE
              EEF1E7E7F3ECECFAF8F8FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFF00171818FFFFFFE5D0CDAA68587D18036F0100720600882D1DBB88
              80EFE0DFFFFFFFCDA9A575160E5E0000650000AF7776FFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF001A1E1FFEE7E38E32197E12007F14
              00811A009437238317016D0000923B2BBA87828023166E04006E0800750F0AB4
              7877FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00191A
              1BD8A190801300861D00953F2BF1E6E9F9F5F7F7F2F4C1938E740B00770F0078
              1200720800A1554EF7F1F1F8F2F2FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFF00151314C983698B2000831600DAB7A7EAC7ABE7C2A9E8
              C4ACEACDB4CB987E801A017B1400760C00C3918CFFFFFFFFFFFFF3E3D9DDB19A
              DEB9A4DFB9A5DEB8A5DEB8A5DEB7A5DBB39FE5C8BC00151212C980628F250082
              1700DFA674C75D00C35500C45500C15500C762089632057C15007A1100C89892
              FFFFFFFFFFFFE0B299B14500AA3D00A53600A133009D2F00992A009A3000AF5C
              3200151515D290719429008A1C00E9D3CCF3DDC9D59455CB5F00D89E72EBD0C0
              A1523A7F15007D1400C99993FFFFFFFFFFFFFCF6F4EED5C7D19268AF4400AC46
              00A53C00B86839E6CBBDF0DDD300191B1DE3AF95932500982E00B0664AFFFFFF
              FDFAF6D67812E0985BFFFFFFAB634E821700811800C99B93FFFFFFFFFFFFFFFF
              FFFFFFFFDFB99BAF4500B04A00AB4100D59E7EFFFFFFFFFFFF001A1D1EFFF5F0
              AC53259B31009A2F00A04013C6968CC3845DD77100E4C9C1AA634C861C00831A
              00CB9B93FFFFFFFFFFFFFFFFFFFFFFFFD8A681B14600B44C00B34E05E3BBA5FF
              FFFFFFFFFF00171717FFFFFFEFDFDBBA724CA33D02982B00962700902300861C
              00871A008B22008C2500861D00CB9B93FFFFFFFFFFFFFFFFFFFDFCFDD59565B8
              4D00B64F00B95910EDD3C7FFFFFFFFFFFF00171717FFFFFFFFFFFFFFFEFFDEB8
              A9C58A6CB86A44AE582DA74D24993200932C008E2700881F00CD9E93FFFFFFFF
              FFFFFFFFFFFAF4F2D2884ABE5400B95100BD631AF7ECE9FFFFFFFFFFFF001717
              17FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF7EFEFF4E7E4F2E3DFD58D52A53A008E
              28008B2200D0A29BFFFFFFFFFFFFFFFFFFFBF6F4CF7B32C25A00BE5500BF6725
              FFFFFFFFFFFFFFFFFF00171717FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFF3DFD1A845109129008C2500BA6D47ECB889E4AF83E4B086DCA173
              C5660BC86000C15900D08147FFFFFFFFFFFFFFFFFF00171819FFFFFFF0DDD5FA
              F5F5FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF3E7E5A7512B922A008D2600CB6E14
              EB8B12E08112DD7E11D5740DCF6700CB6500C45A00DFA177FFFFFFFFFFFFFFFF
              FF00191C1DFFF5EDC36C31CC814CE0B79FEBD3C9F1E2E0F4E9E8E9D4CCC18164
              983000952D008C2806F1E5E2F5E8E2F3E6E1F4E8E4E1BB9FCA5E00CE6800C85D
              00E5BBA0FFFFFFFFFFFFFFFFFF00191C1DFFF6EEC36415B84600B64C00BB5D17
              BA6226B7612AAD50179D33009A3100871A00BC5500FEF9F7FFFFFFFFFFFFFFFF
              FFE7BC98D36600D26B00CB5E00EDD5CBFFFFFFFFFFFFFFFFFF00171818FFFFFF
              E6C7B8CF895EB9540EAA3D00AB3E00A93C00A235009B3000A54316D5AFA8E98C
              16E9A454FFFFFFFFFFFFFFFFFFE2A066DA6F00D56E00C55900FAF6F8FFFFFFFF
              FFFFFFFFFF00171717FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF4E9E8ECDAD7EFDF
              DBFCF8FAFFFFFFFFFFFFF4DAC6F18600F1CDAFFFFFFFFFFFFFE08A36DC7300D7
              7100C95C00FFFFFFFFFFFFFFFFFFFFFFFF00171717FFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFED9E46EE9A33FB
              F6F4FFFFFFE0790BDF7700D97200D7751CFFFFFFFFFFFFFFFFFFFFFFFF001717
              17FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFF7E1CBED8606F3CB9DFFFFFFDA6B00E17B00DA7000DE9049FFFFFF
              FFFFFFFFFFFFFFFFFF00171717FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEFFFFF3B76EE27F09EDDFD6E17500
              E37D00DD7100E3A774FFFFFFFFFFFFFFFFFFFFFFFF00171717FFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              F7EEEBF59D25CB6C15EE8600E37D00DC6F00EBC5A8FFFFFFFFFFFFFFFFFFFFFF
              FF00171717FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEEC69CEC8100EA8400E57F00D66800F5E0
              D1FFFFFFFFFFFFFFFFFFFFFFFF00171717FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEFFFFEC94
              2BED7F00E57A00DA6800FBF2EAFFFFFFFFFFFFFFFFFFFFFFFF00171717FFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFF9EBE0EDB472ECB77BECB987FEFCFAFFFFFFFFFFFFFF
              FFFFFFFFFF00}
          end
        end
      end
      object TShEmail: TTabSheet
        Caption = #1578#1606#1592#1610#1605#1575#1578' '#1575#1610#1605#1610#1604
        ImageIndex = 5
        DesignSize = (
          502
          290)
        object GroupBox5: TGroupBox
          Left = 23
          Top = 93
          Width = 464
          Height = 140
          Anchors = [akTop, akRight]
          Caption = #1578#1606#1592#1610#1605#1575#1578' '#1575#1578#1589#1575#1604' '#1576#1607' '#1587#1575#1610#1578
          TabOrder = 1
          DesignSize = (
            464
            140)
          object Label12: TLabel
            Left = 311
            Top = 21
            Width = 142
            Height = 13
            Anchors = [akTop, akRight]
            BiDiMode = bdRightToLeft
            Caption = #1570#1583#1585#1587' Host '#1580#1607#1578' '#1575#1585#1587#1575#1604' '#1575#1610#1605#1610#1604' :'
            ParentBiDiMode = False
          end
          object Label13: TLabel
            Left = 45
            Top = 21
            Width = 59
            Height = 13
            Anchors = [akTop, akRight]
            BiDiMode = bdRightToLeft
            Caption = #1662#1608#1585#1578' '#1575#1585#1587#1575#1604' :'
            ParentBiDiMode = False
          end
          object Label14: TLabel
            Left = 311
            Top = 71
            Width = 79
            Height = 13
            Anchors = [akTop, akRight]
            BiDiMode = bdRightToLeft
            Caption = #1605#1583#1578' '#1586#1605#1575#1606' '#1575#1578#1589#1575#1604' :'
            ParentBiDiMode = False
          end
          object Label15: TLabel
            Left = 45
            Top = 47
            Width = 61
            Height = 13
            Anchors = [akTop, akRight]
            BiDiMode = bdRightToLeft
            Caption = #1662#1608#1585#1578' '#1583#1585#1610#1575#1601#1578' :'
            ParentBiDiMode = False
          end
          object Label27: TLabel
            Left = 311
            Top = 46
            Width = 144
            Height = 13
            Anchors = [akTop, akRight]
            BiDiMode = bdRightToLeft
            Caption = #1570#1583#1585#1587' Host '#1580#1607#1578' '#1583#1585#1610#1575#1601#1578' '#1575#1610#1605#1610#1604' :'
            ParentBiDiMode = False
          end
          object Label32: TLabel
            Left = 255
            Top = 70
            Width = 19
            Height = 13
            Anchors = [akTop, akRight]
            BiDiMode = bdRightToLeft
            Caption = #1579#1575#1606#1610#1607
            ParentBiDiMode = False
          end
          object Label1: TLabel
            Left = 313
            Top = 110
            Width = 120
            Height = 13
            Anchors = [akTop, akRight]
            BiDiMode = bdRightToLeft
            Caption = #1578#1575#1585#1610#1582' '#1588#1585#1608#1593' '#1583#1585#1610#1575#1601#1578' '#1575#1610#1605#1610#1604' :'
            ParentBiDiMode = False
          end
          object EmailSendHost: TEdit
            Left = 112
            Top = 18
            Width = 195
            Height = 21
            Anchors = [akTop, akRight]
            BiDiMode = bdLeftToRight
            ParentBiDiMode = False
            TabOrder = 0
            OnEnter = EdtSendHostEnter
            OnExit = EdtSendHostExit
          end
          object EmailSendPort: TEdit
            Left = 11
            Top = 18
            Width = 30
            Height = 21
            Anchors = [akTop, akRight]
            BiDiMode = bdLeftToRight
            ParentBiDiMode = False
            TabOrder = 2
            Text = '25'
            OnKeyPress = EdtEmailConTimeKeyPress
          end
          object EmailRecivePort: TEdit
            Left = 10
            Top = 43
            Width = 30
            Height = 21
            Anchors = [akTop, akRight]
            BiDiMode = bdLeftToRight
            ParentBiDiMode = False
            TabOrder = 3
            Text = '995'
            OnKeyPress = EdtEmailConTimeKeyPress
          end
          object EmailReciveHost: TEdit
            Left = 112
            Top = 43
            Width = 195
            Height = 21
            Anchors = [akTop, akRight]
            BiDiMode = bdLeftToRight
            ParentBiDiMode = False
            TabOrder = 1
            OnEnter = EdtSendHostEnter
            OnExit = EdtSendHostExit
          end
          object EmailSSL: TCheckBox
            Left = 160
            Top = 72
            Width = 49
            Height = 17
            Caption = 'SSL'
            TabOrder = 4
          end
          object EmailAutenticationType: TCheckBox
            Left = 16
            Top = 72
            Width = 121
            Height = 17
            Caption = 'AutenticationType'
            TabOrder = 5
          end
          object EmailEmailConTime: TEdit
            Left = 279
            Top = 68
            Width = 29
            Height = 21
            Anchors = [akTop, akRight]
            BiDiMode = bdLeftToRight
            ParentBiDiMode = False
            TabOrder = 6
            Text = '10'
            OnExit = EdtEmailConTimeExit
            OnKeyPress = EdtEmailConTimeKeyPress
          end
          object emailStartDate: TEdit
            Left = 184
            Top = 107
            Width = 123
            Height = 21
            Anchors = [akTop, akRight]
            BiDiMode = bdLeftToRight
            ParentBiDiMode = False
            TabOrder = 7
            OnEnter = EdtSendHostEnter
            OnExit = EdtSendHostExit
          end
        end
        object GroupBox6: TGroupBox
          Left = 23
          Top = 8
          Width = 464
          Height = 81
          Anchors = [akTop, akRight]
          Caption = #1578#1606#1592#1610#1605#1575#1578' '#1662#1610#1588' '#1601#1585#1590' '#1603#1575#1585#1576#1585
          TabOrder = 0
          DesignSize = (
            464
            81)
          object Label26: TLabel
            Left = 380
            Top = 26
            Width = 67
            Height = 13
            Anchors = [akTop, akRight]
            BiDiMode = bdRightToLeft
            Caption = #1605#1608#1590#1608#1593' '#1575#1610#1605#1610#1604' :'
            ParentBiDiMode = False
          end
          object Label31: TLabel
            Left = 380
            Top = 52
            Width = 63
            Height = 13
            Anchors = [akTop, akRight]
            Caption = #1575#1610#1605#1610#1604' '#1711#1610#1585#1606#1583#1607' :'
          end
          object DefaultEmailSubject: TEdit
            Left = 12
            Top = 21
            Width = 363
            Height = 21
            Anchors = [akTop, akRight]
            TabOrder = 0
          end
          object EmailReciveAddress: TEdit
            Left = 12
            Top = 49
            Width = 363
            Height = 21
            Anchors = [akTop, akRight]
            BiDiMode = bdLeftToRight
            ParentBiDiMode = False
            TabOrder = 1
            OnEnter = EdtSendHostEnter
            OnExit = EdtSendHostExit
          end
        end
      end
      object TShFox: TTabSheet
        Caption = #1601#1603#1587
        ImageIndex = 6
        DesignSize = (
          502
          290)
        object GroupBox10: TGroupBox
          Left = 6
          Top = 3
          Width = 489
          Height = 198
          Anchors = [akTop, akRight]
          Caption = #1601#1575#1705#1587
          TabOrder = 0
          DesignSize = (
            489
            198)
          object Label23: TLabel
            Left = 365
            Top = 77
            Width = 88
            Height = 13
            Anchors = [akTop]
            Caption = #1605#1587#1610#1585' '#1583#1585#1610#1575#1601#1578' '#1601#1705#1587
          end
          object Label33: TLabel
            Left = 365
            Top = 49
            Width = 103
            Height = 13
            Anchors = [akTop]
            Caption = #1662#1587#1608#1606#1583' '#1601#1575#1610#1604' '#1607#1575#1610' '#1601#1705#1587
          end
          object Label35: TLabel
            Left = 307
            Top = 22
            Width = 148
            Height = 13
            Anchors = [akTop]
            Caption = #1587#1610#1587#1578#1605' '#1583#1585#1610#1575#1601#1578' '#1601#1705#1587' '#1601#1593#1575#1604' '#1588#1608#1583
          end
          object SpeedButton1: TSpeedButton
            Left = 339
            Top = 75
            Width = 22
            Height = 21
            Cursor = crHandPoint
            Caption = '...'
            OnClick = SpeedButton1Click
          end
          object Label36: TLabel
            Left = 365
            Top = 106
            Width = 114
            Height = 13
            Alignment = taRightJustify
            Anchors = [akTop]
            Caption = #1705#1575#1585#1578#1575#1576#1604' '#1601#1705#1587' '#1607#1575#1610' '#1585#1587#1610#1583#1607
            Font.Charset = ARABIC_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
          end
          object Label38: TLabel
            Left = 365
            Top = 156
            Width = 118
            Height = 13
            Caption = #1583#1608#1585#1607' '#1576#1585#1608#1586' '#1585#1587#1575#1606#1610' '#1576#1607' '#1583#1602#1610#1602#1607' '
          end
          object Label37: TLabel
            Left = 365
            Top = 130
            Width = 118
            Height = 13
            Alignment = taRightJustify
            Anchors = [akTop]
            Caption = #1606#1575#1605' '#1583#1576#1610#1585#1582#1575#1606#1607' '#1583#1585#1610#1575#1601#1578#1610' '#1601#1603#1587
            Font.Charset = ARABIC_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
          end
          object SBDelFaxSecID: TSpeedButton
            Left = 112
            Top = 126
            Width = 23
            Height = 21
            Hint = #1581#1584#1601
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
            OnClick = SBDelFaxSecIDClick
          end
          object FaxUpdate: TCheckBox
            Left = 455
            Top = 23
            Width = 18
            Height = 17
            Anchors = [akTop]
            TabOrder = 0
          end
          object FaxDirectory: TEdit
            Left = 11
            Top = 74
            Width = 326
            Height = 21
            Anchors = [akTop]
            BiDiMode = bdLeftToRight
            ParentBiDiMode = False
            TabOrder = 1
            OnEnter = FaxDirectoryEnter
            OnExit = FaxDirectoryExit
          end
          object FaxCartableOrgID: TDBLookupComboBox
            Left = 112
            Top = 100
            Width = 249
            Height = 21
            Anchors = [akTop]
            BiDiMode = bdLeftToRight
            DropDownRows = 15
            KeyField = 'ID'
            ListField = 'Title'
            ListSource = Dm.DSigner
            ParentBiDiMode = False
            TabOrder = 2
          end
          object FaxUpdatePriod: TSpinEdit
            Left = 312
            Top = 152
            Width = 49
            Height = 22
            MaxValue = 30
            MinValue = 3
            TabOrder = 3
            Value = 5
          end
          object FaxExtention: TComboBox
            Left = 307
            Top = 48
            Width = 54
            Height = 21
            BiDiMode = bdLeftToRight
            ItemHeight = 13
            ParentBiDiMode = False
            TabOrder = 4
            Text = 'JPG'
            Items.Strings = (
              #13'JPG'#10
              'TIF')
          end
          object FaxSecID: TDBLookupComboBox
            Left = 136
            Top = 126
            Width = 225
            Height = 21
            Anchors = [akTop]
            BiDiMode = bdLeftToRight
            DropDownRows = 15
            KeyField = 'SecID'
            ListField = 'SecTitle'
            ListSource = DSUserSec
            NullValueKey = 46
            ParentBiDiMode = False
            TabOrder = 5
          end
        end
      end
      object TShOthers: TTabSheet
        Caption = #1587#1575#1610#1585' '#1605#1608#1575#1585#1583
        ImageIndex = 3
        DesignSize = (
          502
          290)
        object GroupBox8: TGroupBox
          Left = 11
          Top = 13
          Width = 478
          Height = 253
          Anchors = [akTop, akRight]
          Caption = #1587#1575#1610#1585' '#1605#1608#1575#1585#1583
          TabOrder = 0
          DesignSize = (
            478
            253)
          object Label5: TLabel
            Left = 346
            Top = 20
            Width = 121
            Height = 13
            Anchors = [akTop, akRight]
            Caption = #1578#1575#1585#1610#1582' '#1662#1610#1588' '#1601#1585#1590' '#1583#1585' '#1580#1587#1578#1580#1608
          end
          object ShowOriginalErrorMessage: TCheckBox
            Left = 264
            Top = 119
            Width = 204
            Height = 17
            Anchors = [akTop, akRight]
            Caption = #1587#1610#1587#1578#1605' '#1662#1610#1594#1575#1605' '#1607#1575#1610' '#1604#1575#1578#1610#1606' '#1585#1575' '#1606#1588#1575#1606' '#1583#1607#1583' .'
            TabOrder = 0
          end
          object IninitialSearchDate: TComboBox
            Left = 245
            Top = 17
            Width = 94
            Height = 21
            Style = csSimple
            Anchors = [akTop, akRight]
            ItemHeight = 13
            TabOrder = 1
            Text = '3 '#1605#1575#1607' '#1575#1582#1610#1585
            Items.Strings = (
              #1575#1605#1585#1608#1586
              #1583#1610#1585#1608#1586
              #1581#1575#1604#1575
              #1575#1605#1587#1575#1604
              #1585#1608#1586' '#1575#1582#1610#1585
              '1 '#1585#1608#1586' '#1575#1582#1610#1585
              '2 '#1585#1608#1586' '#1575#1582#1610#1585
              '3 '#1585#1608#1586' '#1575#1582#1610#1585
              '4 '#1585#1608#1586' '#1575#1582#1610#1585
              '5 '#1585#1608#1586' '#1575#1582#1610#1585
              '6 '#1585#1608#1586' '#1575#1582#1610#1585
              '7 '#1585#1608#1586' '#1575#1582#1610#1585
              '8 '#1585#1608#1586' '#1575#1582#1610#1585
              '9 '#1585#1608#1586' '#1575#1582#1610#1585
              #1610#1603' '#1585#1608#1586' '#1575#1582#1610#1585
              #1583#1608' '#1585#1608#1586' '#1575#1582#1610#1585
              #1587#1607' '#1585#1608#1586' '#1575#1582#1610#1585
              #1670#1607#1575#1585' '#1585#1608#1586' '#1575#1582#1610#1585
              #1662#1606#1580' '#1585#1608#1586' '#1575#1582#1610#1585
              #1588#1588' '#1585#1608#1586' '#1575#1582#1610#1585
              #1607#1601#1578' '#1585#1608#1586' '#1575#1582#1610#1585
              #1607#1588#1578' '#1585#1608#1586' '#1575#1582#1610#1585
              #1606#1607' '#1585#1608#1586' '#1575#1582#1610#1585
              #1585#1608#1586' '#1580#1575#1585#1610
              '1 '#1585#1608#1586' '#1580#1575#1585#1610
              '2 '#1585#1608#1586' '#1580#1575#1585#1610
              '3 '#1585#1608#1586' '#1580#1575#1585#1610
              '4 '#1585#1608#1586' '#1580#1575#1585#1610
              '5 '#1585#1608#1586' '#1580#1575#1585#1610
              '6 '#1585#1608#1586' '#1580#1575#1585#1610
              '7 '#1585#1608#1586' '#1580#1575#1585#1610
              '8 '#1585#1608#1586' '#1580#1575#1585#1610
              '9 '#1585#1608#1586' '#1580#1575#1585#1610
              #1610#1603' '#1585#1608#1586' '#1580#1575#1585#1610
              #1583#1608' '#1585#1608#1586' '#1580#1575#1585#1610
              #1587#1607' '#1585#1608#1586' '#1580#1575#1585#1610
              #1670#1607#1575#1585' '#1585#1608#1586' '#1580#1575#1585#1610
              #1662#1606#1580' '#1585#1608#1586' '#1580#1575#1585#1610
              #1588#1588' '#1585#1608#1586' '#1580#1575#1585#1610
              #1607#1601#1578' '#1585#1608#1586' '#1580#1575#1585#1610
              #1607#1588#1578' '#1585#1608#1586' '#1580#1575#1585#1610
              #1606#1607' '#1585#1608#1586' '#1580#1575#1585#1610
              #1585#1608#1586' '#1711#1584#1588#1578#1607
              '1 '#1585#1608#1586' '#1711#1584#1588#1578#1607
              '2 '#1585#1608#1586' '#1711#1584#1588#1578#1607
              '3 '#1585#1608#1586' '#1711#1584#1588#1578#1607
              '4 '#1585#1608#1586' '#1711#1584#1588#1578#1607
              '5 '#1585#1608#1586' '#1711#1584#1588#1578#1607
              '6 '#1585#1608#1586' '#1711#1584#1588#1578#1607
              '7 '#1585#1608#1586' '#1711#1584#1588#1578#1607
              '8 '#1585#1608#1586' '#1711#1584#1588#1578#1607
              '9 '#1585#1608#1586' '#1711#1584#1588#1578#1607
              #1610#1603' '#1585#1608#1586' '#1711#1584#1588#1578#1607
              #1583#1608' '#1585#1608#1586' '#1711#1584#1588#1578#1607
              #1587#1607' '#1585#1608#1586' '#1711#1584#1588#1578#1607
              #1670#1607#1575#1585' '#1585#1608#1586' '#1711#1584#1588#1578#1607
              #1662#1606#1580' '#1585#1608#1586' '#1711#1584#1588#1578#1607
              #1588#1588' '#1585#1608#1586' '#1711#1584#1588#1578#1607
              #1607#1601#1578' '#1585#1608#1586' '#1711#1584#1588#1578#1607
              #1607#1588#1578' '#1585#1608#1586' '#1711#1584#1588#1578#1607
              #1606#1607' '#1585#1608#1586' '#1711#1584#1588#1578#1607
              #1607#1601#1578#1607' '#1575#1582#1610#1585
              '1 '#1607#1601#1578#1607' '#1575#1582#1610#1585
              '2 '#1607#1601#1578#1607' '#1575#1582#1610#1585
              '3 '#1607#1601#1578#1607' '#1575#1582#1610#1585
              '4 '#1607#1601#1578#1607' '#1575#1582#1610#1585
              '5 '#1607#1601#1578#1607' '#1575#1582#1610#1585
              '6 '#1607#1601#1578#1607' '#1575#1582#1610#1585
              '7 '#1607#1601#1578#1607' '#1575#1582#1610#1585
              '8 '#1607#1601#1578#1607' '#1575#1582#1610#1585
              '9 '#1607#1601#1578#1607' '#1575#1582#1610#1585
              #1610#1603' '#1607#1601#1578#1607' '#1575#1582#1610#1585
              #1583#1608' '#1607#1601#1578#1607' '#1575#1582#1610#1585
              #1587#1607' '#1607#1601#1578#1607' '#1575#1582#1610#1585
              #1670#1607#1575#1585' '#1607#1601#1578#1607' '#1575#1582#1610#1585
              #1662#1606#1580' '#1607#1601#1578#1607' '#1575#1582#1610#1585
              #1588#1588' '#1607#1601#1578#1607' '#1575#1582#1610#1585
              #1607#1601#1578' '#1607#1601#1578#1607' '#1575#1582#1610#1585
              #1607#1588#1578' '#1607#1601#1578#1607' '#1575#1582#1610#1585
              #1606#1607' '#1607#1601#1578#1607' '#1575#1582#1610#1585
              #1607#1601#1578#1607' '#1575#1582#1610#1585
              '1 '#1607#1601#1578#1607' '#1580#1575#1585#1610
              '2 '#1607#1601#1578#1607' '#1580#1575#1585#1610
              '3 '#1607#1601#1578#1607' '#1580#1575#1585#1610
              '4 '#1607#1601#1578#1607' '#1580#1575#1585#1610
              '5 '#1607#1601#1578#1607' '#1580#1575#1585#1610
              '6 '#1607#1601#1578#1607' '#1580#1575#1585#1610
              '7 '#1607#1601#1578#1607' '#1580#1575#1585#1610
              '8 '#1607#1601#1578#1607' '#1580#1575#1585#1610
              '9 '#1607#1601#1578#1607' '#1580#1575#1585#1610
              #1610#1603' '#1607#1601#1578#1607' '#1580#1575#1585#1610
              #1583#1608' '#1607#1601#1578#1607' '#1580#1575#1585#1610
              #1587#1607' '#1607#1601#1578#1607' '#1580#1575#1585#1610
              #1670#1607#1575#1585' '#1607#1601#1578#1607' '#1580#1575#1585#1610
              #1662#1606#1580' '#1607#1601#1578#1607' '#1580#1575#1585#1610
              #1588#1588' '#1607#1601#1578#1607' '#1580#1575#1585#1610
              #1607#1601#1578' '#1607#1601#1578#1607' '#1580#1575#1585#1610
              #1607#1588#1578' '#1607#1601#1578#1607' '#1580#1575#1585#1610
              #1606#1607' '#1607#1601#1578#1607' '#1580#1575#1585#1610
              #1607#1601#1578#1607' '#1711#1584#1588#1578#1607
              '1 '#1607#1601#1578#1607' '#1711#1584#1588#1578#1607
              '2 '#1607#1601#1578#1607' '#1711#1584#1588#1578#1607
              '3 '#1607#1601#1578#1607' '#1711#1584#1588#1578#1607
              '4 '#1607#1601#1578#1607' '#1711#1584#1588#1578#1607
              '5 '#1607#1601#1578#1607' '#1711#1584#1588#1578#1607
              '6 '#1607#1601#1578#1607' '#1711#1584#1588#1578#1607
              '7 '#1607#1601#1578#1607' '#1711#1584#1588#1578#1607
              '8 '#1607#1601#1578#1607' '#1711#1584#1588#1578#1607
              '9 '#1607#1601#1578#1607' '#1711#1584#1588#1578#1607
              #1610#1603' '#1607#1601#1578#1607' '#1711#1584#1588#1578#1607
              #1583#1608' '#1607#1601#1578#1607' '#1711#1584#1588#1578#1607
              #1587#1607' '#1607#1601#1578#1607' '#1711#1584#1588#1578#1607
              #1670#1607#1575#1585' '#1607#1601#1578#1607' '#1711#1584#1588#1578#1607
              #1662#1606#1580' '#1607#1601#1578#1607' '#1711#1584#1588#1578#1607
              #1588#1588' '#1607#1601#1578#1607' '#1711#1584#1588#1578#1607
              #1607#1601#1578' '#1607#1601#1578#1607' '#1711#1584#1588#1578#1607
              #1607#1588#1578' '#1607#1601#1578#1607' '#1711#1584#1588#1578#1607
              #1606#1607' '#1607#1601#1578#1607' '#1711#1584#1588#1578#1607
              #1605#1575#1607' '#1575#1582#1610#1585
              '1 '#1605#1575#1607' '#1575#1582#1610#1585
              '2 '#1605#1575#1607' '#1575#1582#1610#1585
              '3 '#1605#1575#1607' '#1575#1582#1610#1585
              '4 '#1605#1575#1607' '#1575#1582#1610#1585
              '5 '#1605#1575#1607' '#1575#1582#1610#1585
              '6 '#1605#1575#1607' '#1575#1582#1610#1585
              '7 '#1605#1575#1607' '#1575#1582#1610#1585
              '8 '#1605#1575#1607' '#1575#1582#1610#1585
              '9 '#1605#1575#1607' '#1575#1582#1610#1585
              #1610#1603' '#1605#1575#1607' '#1575#1582#1610#1585
              #1583#1608' '#1605#1575#1607' '#1575#1582#1610#1585
              #1587#1607' '#1605#1575#1607' '#1575#1582#1610#1585
              #1670#1607#1575#1585' '#1605#1575#1607' '#1575#1582#1610#1585
              #1662#1606#1580' '#1605#1575#1607' '#1575#1582#1610#1585
              #1588#1588' '#1605#1575#1607' '#1575#1582#1610#1585
              #1607#1601#1578' '#1605#1575#1607' '#1575#1582#1610#1585
              #1607#1588#1578' '#1605#1575#1607' '#1575#1582#1610#1585
              #1606#1607' '#1605#1575#1607' '#1575#1582#1610#1585
              #1605#1575#1607' '#1575#1582#1610#1585
              '1 '#1605#1575#1607' '#1580#1575#1585#1610
              '2 '#1605#1575#1607' '#1580#1575#1585#1610
              '3 '#1605#1575#1607' '#1580#1575#1585#1610
              '4 '#1605#1575#1607' '#1580#1575#1585#1610
              '5 '#1605#1575#1607' '#1580#1575#1585#1610
              '6 '#1605#1575#1607' '#1580#1575#1585#1610
              '7 '#1605#1575#1607' '#1580#1575#1585#1610
              '8 '#1605#1575#1607' '#1580#1575#1585#1610
              '9 '#1605#1575#1607' '#1580#1575#1585#1610
              #1610#1603' '#1605#1575#1607' '#1580#1575#1585#1610
              #1583#1608' '#1605#1575#1607' '#1580#1575#1585#1610
              #1587#1607' '#1605#1575#1607' '#1580#1575#1585#1610
              #1670#1607#1575#1585' '#1605#1575#1607' '#1580#1575#1585#1610
              #1662#1606#1580' '#1605#1575#1607' '#1580#1575#1585#1610
              #1588#1588' '#1605#1575#1607' '#1580#1575#1585#1610
              #1607#1601#1578' '#1605#1575#1607' '#1580#1575#1585#1610
              #1607#1588#1578' '#1605#1575#1607' '#1580#1575#1585#1610
              #1606#1607' '#1605#1575#1607' '#1580#1575#1585#1610
              #1605#1575#1607' '#1711#1584#1588#1578#1607
              '1 '#1605#1575#1607' '#1711#1584#1588#1578#1607
              '2 '#1605#1575#1607' '#1711#1584#1588#1578#1607
              '3 '#1605#1575#1607' '#1711#1584#1588#1578#1607
              '4 '#1605#1575#1607' '#1711#1584#1588#1578#1607
              '5 '#1605#1575#1607' '#1711#1584#1588#1578#1607
              '6 '#1605#1575#1607' '#1711#1584#1588#1578#1607
              '7 '#1605#1575#1607' '#1711#1584#1588#1578#1607
              '8 '#1605#1575#1607' '#1711#1584#1588#1578#1607
              '9 '#1605#1575#1607' '#1711#1584#1588#1578#1607
              #1610#1603' '#1605#1575#1607' '#1711#1584#1588#1578#1607
              #1583#1608' '#1605#1575#1607' '#1711#1584#1588#1578#1607
              #1587#1607' '#1605#1575#1607' '#1711#1584#1588#1578#1607
              #1670#1607#1575#1585' '#1605#1575#1607' '#1711#1584#1588#1578#1607
              #1662#1606#1580' '#1605#1575#1607' '#1711#1584#1588#1578#1607
              #1588#1588' '#1605#1575#1607' '#1711#1584#1588#1578#1607
              #1607#1601#1578' '#1605#1575#1607' '#1711#1584#1588#1578#1607
              #1607#1588#1578' '#1605#1575#1607' '#1711#1584#1588#1578#1607
              #1606#1607' '#1605#1575#1607' '#1711#1584#1588#1578#1607)
          end
          object DefaultProceed: TCheckBox
            Left = 64
            Top = 69
            Width = 404
            Height = 17
            Anchors = [akTop, akRight]
            Caption = 
              #1583#1585' '#1603#1575#1585#1578#1575#1576#1604' '#1576#1607' '#1591#1608#1585' '#1662#1610#1588' '#1601#1585#1590' '#1576#1593#1583' '#1575#1586' '#1575#1585#1580#1575#1593' '#1606#1575#1605#1607' '#1548' '#1575#1585#1580#1575#1593' '#1601#1593#1604#1610' '#1575#1586' '#1705#1575#1585#1578 +
              #1575#1576#1604' '#1582#1575#1585#1580' '#1588#1608#1583' .'
            TabOrder = 2
          end
          object DefaultInnerCopy: TCheckBox
            Left = 80
            Top = 94
            Width = 388
            Height = 17
            Anchors = [akTop, akRight]
            Caption = 
              #1583#1585' '#1603#1575#1585#1578#1575#1576#1604' '#1606#1575#1605#1607' '#1607#1575#1610' '#1583#1575#1582#1604#1610' '#1576#1607' '#1589#1608#1585#1578' '#1662#1610#1588' '#1601#1585#1590' '#1576#1589#1608#1585#1578' '#1601#1602#1591' '#1582#1608#1575#1606#1583#1606#1610' '#1575#1585#1580#1575 +
              #1593' '#1588#1608#1606#1583' .'
            TabOrder = 3
          end
          object HasJpg: TRadioGroup
            Left = 335
            Top = 199
            Width = 132
            Height = 39
            Anchors = [akTop, akRight]
            Caption = #1601#1585#1605#1578' '#1578#1589#1575#1608#1610#1585' '#1575#1587#1603#1606#1585
            Columns = 2
            ItemIndex = 0
            Items.Strings = (
              'JPG'
              'Tiff')
            TabOrder = 4
          end
          object ConvertFaxToA4: TCheckBox
            Left = 96
            Top = 145
            Width = 372
            Height = 17
            Anchors = [akTop, akRight]
            Caption = 
              #1576#1591#1608#1585' '#1575#1578#1608#1605#1575#1578#1610#1603' '#1575#1576#1593#1575#1583' '#1578#1589#1575#1608#1610#1585' '#1583#1585#1610#1575#1601#1578' '#1588#1583#1607' '#1575#1586' '#1591#1585#1610#1602' '#1601#1603#1587' '#1548' '#1576#1607' '#1575#1576#1593#1575#1583' A4 ' +
              #1578#1594#1610#1610#1585' '#1610#1575#1576#1606#1583' .'
            TabOrder = 5
          end
          object DefaultIsCopy: TCheckBox
            Left = 136
            Top = 44
            Width = 332
            Height = 17
            Anchors = [akTop, akRight]
            Caption = #1583#1585' '#1583#1576#1610#1585#1582#1575#1606#1607' '#1576#1607' '#1591#1608#1585' '#1662#1610#1588' '#1601#1585#1590' '#1606#1575#1605#1607' '#1576#1607' '#1589#1608#1585#1578' '#1601#1602#1591' '#1582#1608#1575#1606#1583#1606#1610' '#1575#1585#1580#1575#1593' '#1588#1608#1583' .'
            TabOrder = 6
          end
          object Signature_RequestPass: TCheckBox
            Left = 148
            Top = 171
            Width = 319
            Height = 17
            Anchors = [akTop, akRight]
            Caption = #1604#1594#1608' '#1583#1585#1582#1608#1575#1587#1578' '#1705#1583' '#1575#1605#1606#1610#1578#1610' '#1608' '#1605#1578#1606' '#1662#1575#1585#1575#1601' '#1583#1585' '#1607#1606#1711#1575#1605' '#1583#1585#1580' '#1575#1605#1590#1575#1569
            TabOrder = 7
          end
        end
      end
    end
    object TreeView1: TTreeView
      Left = 511
      Top = 1
      Width = 120
      Height = 318
      Align = alRight
      Indent = 19
      ReadOnly = True
      TabOrder = 1
      OnKeyUp = TreeView1KeyUp
      OnMouseUp = TreeView1MouseUp
      Items.Data = {
        07000000280000000000000000000000FFFFFFFFFFFFFFFF0000000000000000
        0FDDD1E320C7D5E1ED20C8D1E4C7E3E5230000000000000001000000FFFFFFFF
        FFFFFFFF00000000000000000AE4C7E3E520E6C7D1CFE5230000000000000002
        000000FFFFFFFFFFFFFFFF00000000000000000AE4C7E3E520D5C7CFD1E52300
        00000000000003000000FFFFFFFFFFFFFFFF00000000000000000AD9C7E5D120
        D3EDD3CAE3260000000000000004000000FFFFFFFFFFFFFFFF00000000000000
        000DCAE4D9EDE3C7CA20C7EDE3EDE11C0000000000000005000000FFFFFFFFFF
        FFFFFF000000000000000003DDDFD3230000000000000006000000FFFFFFFFFF
        FFFFFF00000000000000000AD3C7EDD120E3E6C7D1CF}
    end
  end
  object Panel3: TPanel [1]
    Left = 0
    Top = 320
    Width = 632
    Height = 38
    Align = alBottom
    TabOrder = 1
    DesignSize = (
      632
      38)
    object BitBtn2: TBitBtn
      Left = 461
      Top = 8
      Width = 75
      Height = 25
      Cursor = crHandPoint
      Anchors = [akTop, akRight]
      Cancel = True
      Caption = #1575#1606#1589#1585#1575#1601
      Font.Charset = ARABIC_CHARSET
      Font.Color = clNavy
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 0
      OnClick = BitBtn2Click
      Glyph.Data = {
        AA030000424DAA03000000000000360000002800000011000000110000000100
        1800000000007403000000000000000000000000000000000000008080008080
        0080800080800080800080800080800080800080800080800080800080800080
        800080800080800080805465D400008080008080008080008080008080008080
        0080800080800080800080800080800080800080800080800080803B4CD10000
        C0000080800000BF0006C13446CF008080008080008080008080008080008080
        008080008080008080008080263BD10001C54153D4000080800000C50013C800
        0CC72E43D2008080008080008080008080008080008080008080008080132AD1
        0000C93B4FD7008080000080800080801027D10010CE000DCD1026D200808000
        80800080800080800080800080800017D10006CE4356DA008080008080000080
        800080800080804053DD000FD4000CD30080800080800080800080808D9AE705
        1DD50005D24355DD008080008080008080000080800080800080800080806A7B
        E5000ED9000BD80080800080807385E60016D80008D64558E000808000808000
        8080008080000080800080800080800080800080800080800822DF0000FF0000
        FF0018DC000BDA485CE300808000808000808000808000808000008080008080
        008080008080008080008080008080162EE30013E00013E04A5EE60080800080
        8000808000808000808000808000008080008080008080008080008080008080
        3D52E90016E20015E3001AE50A26EA97A4F00080800080800080800080800080
        80000080800080800080800080800080802740EB000DE7000EE75467EC008080
        011DEC0018ED8B99F10080800080800080800080800000808000808000808000
        80801E37ED000FEC000EEC5165EF008080008080008080132DF3000EF28F9EF4
        00808000808000808000008080008080008080112BF00013EF0010EF5063F100
        80800080800080800080800080803148F6000DF891A0F6008080008080000080
        800080800011F20015F30012F35B6DF500808000808000808000808000808000
        80800080806074F80014FD798AFA008080000080800014F70019F8000EF8586C
        F700808000808000808000808000808000808000808000808000808092A2FA88
        98FA00808000008080000DFD000EFC586CF90080800080800080800080800080
        80008080008080008080008080008080008080008080008080000080802D47FC
        7588FB0080800080800080800080800080800080800080800080800080800080
        8000808000808000808000808000}
    end
    object BitBtn1: TBitBtn
      Left = 541
      Top = 8
      Width = 75
      Height = 25
      Cursor = crHandPoint
      Anchors = [akTop, akRight]
      Caption = #1578#1575#1610#1610#1583
      Default = True
      Font.Charset = ARABIC_CHARSET
      Font.Color = clNavy
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 1
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
    Left = 113
    Top = 257
  end
  inherited ActionList: TActionList
    Left = 509
    Top = 257
  end
  inherited Grid_PopupMenu: TPopupMenu
    Left = 530
    Top = 209
  end
  object ColorDialog1: TColorDialog
    Left = 196
    Top = 257
  end
  object FontDialog: TFontDialog
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    Left = 271
    Top = 257
  end
  object QrUserSec: TADOQuery
    Connection = Dm.YeganehConnection
    Parameters = <
      item
        Name = 'UserID'
        DataType = ftInteger
        Size = -1
        Value = 0
      end>
    SQL.Strings = (
      'Select S.* '
      'from Secretariats S , UserSecretariats Us'
      'Where US.UserID = :UserID'#10
      'And S.SecID = US.SecID'
      '')
    Left = 111
    Top = 108
    object QrUserSecSecID: TAutoIncField
      FieldName = 'SecID'
      ReadOnly = True
    end
    object QrUserSecSecTitle: TWideStringField
      Alignment = taRightJustify
      FieldName = 'SecTitle'
      Size = 50
    end
    object QrUserSecPrecode: TWideStringField
      Alignment = taRightJustify
      FieldName = 'Precode'
      Size = 50
    end
    object QrUserSecServerID: TIntegerField
      FieldName = 'ServerID'
    end
    object QrUserSecArchiveCenterID: TIntegerField
      FieldName = 'ArchiveCenterID'
    end
  end
  object DSUserSec: TDataSource
    DataSet = QrUserSec
    Left = 31
    Top = 257
  end
end
