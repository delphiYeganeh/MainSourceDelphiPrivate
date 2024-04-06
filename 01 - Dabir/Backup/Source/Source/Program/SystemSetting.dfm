inherited SystemSettings: TSystemSettings
  Left = 541
  Top = 110
  BorderIcons = [biSystemMenu]
  BorderStyle = bsDialog
  Caption = #1578#1606#1592#1610#1605#1575#1578' '#1583#1576#1610#1585#1582#1575#1606#1607
  ClientHeight = 301
  ClientWidth = 550
  OldCreateOrder = True
  PixelsPerInch = 96
  TextHeight = 13
  object PageControl1: TPageControl [0]
    Left = 0
    Top = 0
    Width = 550
    Height = 257
    Cursor = crHandPoint
    ActivePage = TShLetterNu
    Align = alClient
    TabHeight = 30
    TabOrder = 1
    object TShOthers: TTabSheet
      Caption = '     '#1587#1575#1610#1585'     '
      ImageIndex = 6
      DesignSize = (
        542
        217)
      object GroupBox6: TGroupBox
        Left = 2
        Top = 2
        Width = 538
        Height = 207
        Anchors = [akTop, akRight]
        Caption = #1587#1575#1610#1585
        TabOrder = 0
        DesignSize = (
          538
          207)
        object Label15: TLabel
          Left = 385
          Top = 21
          Width = 132
          Height = 13
          Anchors = [akTop, akRight]
          Caption = #1606#1575#1605' '#1605#1588#1582#1589#1607' '#1605#1582#1589#1608#1589' '#1603#1575#1585#1576#1585#1575#1606
        end
        object Label35: TLabel
          Left = 385
          Top = 46
          Width = 135
          Height = 13
          Anchors = [akTop, akRight]
          Caption = #1662#1610#1588' '#1705#1583' '#1662#1610#1588' '#1601#1585#1590' '#1576#1585#1575#1610' '#1670#1575#1585#1578
        end
        object Label36: TLabel
          Left = 385
          Top = 70
          Width = 50
          Height = 13
          Anchors = [akTop, akRight]
          Caption = #1606#1575#1605' '#1587#1575#1586#1605#1575#1606
        end
        object UserMemoDisplay: TEdit
          Left = 204
          Top = 18
          Width = 177
          Height = 21
          Anchors = [akTop, akRight]
          TabOrder = 0
          Text = #1605#1604#1575#1581#1592#1575#1578' '#1603#1575#1585#1576#1585
        end
        object DefaultOrgPreCode: TEdit
          Left = 299
          Top = 42
          Width = 82
          Height = 21
          Anchors = [akTop, akRight]
          TabOrder = 1
        end
        object OrgName: TEdit
          Left = 204
          Top = 67
          Width = 177
          Height = 21
          Anchors = [akTop, akRight]
          Enabled = False
          TabOrder = 2
        end
        object AllowMultiUser: TCheckBox
          Left = 224
          Top = 95
          Width = 302
          Height = 17
          Anchors = [akTop, akRight]
          Caption = #1587#1610#1587#1578#1605' '#1602#1575#1576#1604#1610#1578' '#1608#1585#1608#1583' '#1583#1608' '#1603#1575#1585#1576#1585' '#1576#1575' '#1610#1603' '#1606#1575#1605' '#1603#1575#1585#1576#1585#1610' '#1585#1575' '#1583#1575#1588#1578#1607' '#1576#1575#1588#1583
          TabOrder = 3
        end
        object RecommiteCopy: TCheckBox
          Left = 216
          Top = 119
          Width = 310
          Height = 17
          Anchors = [akTop, akRight]
          Caption = #1576#1607' '#1589#1608#1585#1578' '#1662#1610#1588' '#1601#1585#1590' '#1606#1575#1605#1607' '#1607#1575' '#1576#1607' '#1589#1608#1585#1578' '#1705#1662#1610' '#1575#1585#1580#1575#1593' '#1583#1575#1583#1607' '#1588#1608#1606#1583
          TabOrder = 4
        end
        object UseTemplate: TCheckBox
          Left = 28
          Top = 68
          Width = 157
          Height = 17
          Anchors = [akTop, akRight]
          Caption = #1575#1605#1705#1575#1606' '#1575#1587#1578#1601#1575#1583#1607' '#1575#1586' '#1602#1575#1604#1576' '#1606#1575#1605#1607' '#1607#1575
          TabOrder = 5
        end
        object ShowFarsiCaption: TCheckBox
          Left = 32
          Top = 93
          Width = 153
          Height = 17
          Anchors = [akTop, akRight]
          Caption = #1606#1605#1575#1610#1588' '#1593#1606#1608#1575#1606' '#1601#1575#1585#1587#1610' '#1601#1585#1605' '#1607#1575
          TabOrder = 6
        end
        object ShowLifeTips: TCheckBox
          Left = 32
          Top = 118
          Width = 153
          Height = 17
          Anchors = [akTop, akRight]
          Caption = #1606#1605#1575#1610#1588' '#1580#1605#1604#1575#1578' '#1586#1610#1576#1575' '#1575#1586' '#1576#1586#1585#1711#1575#1606
          TabOrder = 7
        end
        object RecommiteOtherAfterAssignNo: TCheckBox
          Left = 96
          Top = 144
          Width = 430
          Height = 17
          Anchors = [akTop, akRight]
          Caption = 
            #1662#1610#1588' '#1606#1608#1610#1587' '#1606#1575#1605#1607' '#1589#1575#1583#1585#1607' '#1578#1575' '#1586#1605#1575#1606' '#1575#1582#1578#1589#1575#1589' '#1588#1605#1575#1585#1607'  '#1576#1607' '#1583#1610#1711#1585' '#1711#1610#1585#1606#1583#1711#1575#1606' '#1608' '#1585#1608#1606 +
            #1608#1588#1578' '#1607#1575' '#1575#1585#1580#1575#1593' '#1588#1608#1583
          TabOrder = 8
        end
        object GroupBox4: TGroupBox
          Left = 264
          Top = 165
          Width = 265
          Height = 39
          Caption = #1602#1575#1604#1576' '#1607#1575#1610' '#1606#1575#1605#1607' '
          TabOrder = 9
          object cbWord: TCheckBox
            Left = 104
            Top = 16
            Width = 57
            Height = 17
            Caption = 'Word'
            Checked = True
            State = cbChecked
            TabOrder = 0
          end
          object cbExcel: TCheckBox
            Left = 15
            Top = 16
            Width = 57
            Height = 17
            Caption = 'Excel'
            TabOrder = 1
          end
        end
      end
    end
    object TShOtherSoft: TTabSheet
      Caption = '   '#1575#1585#1578#1576#1575#1591' '#1576#1575' '#1606#1585#1605' '#1575#1601#1586#1575#1585' '#1607#1575#1610' '#1583#1610#1711#1585'  '
      ImageIndex = 3
      DesignSize = (
        542
        217)
      object GroupBox1: TGroupBox
        Left = 83
        Top = 10
        Width = 445
        Height = 80
        Anchors = [akTop, akRight]
        Caption = #1575#1585#1578#1576#1575#1591' '#1576#1575' '#1606#1585#1605' '#1575#1601#1586#1575#1585' '#1607#1575#1610' '#1583#1610#1711#1585
        TabOrder = 0
        DesignSize = (
          445
          80)
        object Label2: TLabel
          Left = 370
          Top = 25
          Width = 54
          Height = 13
          Anchors = [akTop, akRight]
          Caption = #1580#1583#1608#1604' '#1605#1585#1578#1576#1591
        end
        object Label3: TLabel
          Left = 371
          Top = 52
          Width = 48
          Height = 13
          Anchors = [akTop, akRight]
          Caption = #1601#1610#1604#1583' '#1593#1606#1608#1575#1606
        end
        object Label4: TLabel
          Left = 139
          Top = 24
          Width = 49
          Height = 13
          Anchors = [akTop, akRight]
          Caption = #1603#1604#1610#1583' '#1575#1589#1604#1610
        end
        object RelatedTableName: TDBLookupComboBox
          Left = 221
          Top = 21
          Width = 145
          Height = 21
          Anchors = [akTop, akRight]
          BiDiMode = bdLeftToRight
          KeyField = 'TableName'
          ListField = 'Description'
          ListSource = DSForm
          ParentBiDiMode = False
          TabOrder = 0
        end
        object RelatedIDField: TEdit
          Left = 15
          Top = 21
          Width = 121
          Height = 21
          Anchors = [akTop, akRight]
          TabOrder = 1
        end
        object RelatedDisplayField: TEdit
          Left = 221
          Top = 48
          Width = 145
          Height = 21
          Anchors = [akTop, akRight]
          TabOrder = 2
        end
      end
    end
    object TShLetterTrans: TTabSheet
      Caption = '   '#1575#1606#1578#1602#1575#1604' '#1606#1575#1605#1607' '#1607#1575'   '
      ImageIndex = 2
      DesignSize = (
        542
        217)
      object Label1: TLabel
        Left = 81
        Top = 171
        Width = 393
        Height = 36
        Anchors = [akTop, akRight]
        Caption = 
          #1605#1585#1576#1608#1591' '#1576#1607' '#1605#1576#1581#1579' Replicate'#13#10#1583#1575#1585#1575#1610' '#1587#1608#1585#1587' '#1608' '#1601#1575#1610#1604' '#1575#1580#1585#1575#1610#1610' '#1580#1583#1575#1711#1575#1606#1607' '#1576#1606#1575#1605'  ' +
          'Replication_Sent.exe'
        Font.Charset = ARABIC_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        Visible = False
      end
      object GroupBox2: TGroupBox
        Left = 29
        Top = 10
        Width = 498
        Height = 83
        Anchors = [akTop, akRight]
        Caption = #1575#1606#1578#1602#1575#1604' '#1606#1575#1605#1607' '#1607#1575
        TabOrder = 0
        DesignSize = (
          498
          83)
        object Label11: TLabel
          Left = 363
          Top = 54
          Width = 26
          Height = 13
          Anchors = [akTop, akRight]
          Caption = #1583#1602#1610#1602#1607
        end
        object Label10: TLabel
          Left = 447
          Top = 54
          Width = 40
          Height = 13
          Anchors = [akTop, akRight]
          Caption = #1583#1608#1585#1607' '#1575#1580#1585#1575
        end
        object Label13: TLabel
          Left = 157
          Top = 54
          Width = 129
          Height = 13
          Anchors = [akTop, akRight]
          Caption = #1581#1583' '#1575#1705#1579#1585' '#1581#1580#1605' '#1662#1610#1608#1587#1578' '#1606#1575#1605#1607' '#1607#1575
        end
        object Label16: TLabel
          Left = 19
          Top = 54
          Width = 75
          Height = 13
          Anchors = [akTop, akRight]
          Caption = 'kb  '#1576#1585#1575#1610' '#1607#1585' '#1606#1575#1605#1607
        end
        object Label17: TLabel
          Left = 157
          Top = 26
          Width = 131
          Height = 13
          Anchors = [akTop, akRight]
          Caption = #1705#1583' '#1605#1606#1581#1589#1585' '#1576#1607' '#1601#1585#1583' '#1575#1610#1606' '#1583#1576#1610#1585#1582#1575#1606#1607
        end
        object Label19: TLabel
          Left = 318
          Top = 26
          Width = 143
          Height = 13
          Anchors = [akTop, akRight]
          Caption = #1602#1575#1576#1604#1610#1578' '#1575#1587#1578#1601#1575#1583#1607' '#1575#1586' '#1575#1606#1578#1602#1575#1604' '#1606#1575#1605#1607' '#1607#1575
        end
        object ReplicatePriod: TEdit
          Left = 400
          Top = 50
          Width = 41
          Height = 21
          Anchors = [akTop, akRight]
          TabOrder = 0
          Text = '10'
        end
        object MaxReplicateAttachSize: TEdit
          Left = 99
          Top = 50
          Width = 55
          Height = 21
          Anchors = [akTop, akRight]
          TabOrder = 1
          Text = '1000'
        end
        object ServerID: TEdit
          Left = 99
          Top = 24
          Width = 55
          Height = 21
          Anchors = [akTop, akRight]
          TabOrder = 2
          Text = '123'
        end
        object hasReplicate: TCheckBox
          Left = 465
          Top = 25
          Width = 18
          Height = 17
          Anchors = [akTop, akRight]
          TabOrder = 3
        end
      end
      object GroupBox3: TGroupBox
        Left = 29
        Top = 98
        Width = 498
        Height = 74
        BiDiMode = bdRightToLeft
        Caption = 'ECE '#1578#1593#1610#1610#1606' '#1605#1587#1610#1585' '#1606#1575#1605#1607' '#1607#1575#1610' '#1578#1576#1583#1610#1604' '#1588#1583#1607' '#1576#1607
        ParentBiDiMode = False
        TabOrder = 1
        object Label22: TLabel
          Left = 454
          Top = 24
          Width = 31
          Height = 13
          Caption = #1605#1587#1610#1585':'
        end
        object Button1: TButton
          Left = 433
          Top = 22
          Width = 20
          Height = 20
          Caption = '...'
          TabOrder = 0
          OnClick = Button1Click
        end
        object PathOfECE: TEdit
          Left = 8
          Top = 22
          Width = 425
          Height = 21
          BiDiMode = bdLeftToRight
          ParentBiDiMode = False
          TabOrder = 1
          Text = 'C:\'
        end
        object AutomaticSendForECE: TCheckBox
          Left = 344
          Top = 51
          Width = 139
          Height = 17
          Caption = #1606#1605#1575#1610#1588' '#1662#1606#1580#1585#1607' '#1575#1585#1587#1575#1604' EMail'
          TabOrder = 2
        end
      end
    end
    object TShSystem: TTabSheet
      Caption = '    '#1603#1575#1585#1575#1610#1610' '#1587#1610#1587#1578#1605'  '
      ImageIndex = 1
      DesignSize = (
        542
        217)
      object GroupBox7: TGroupBox
        Left = 37
        Top = 10
        Width = 494
        Height = 191
        Anchors = [akTop, akRight]
        Caption = #1603#1575#1585#1575#1610#1610' '#1587#1610#1587#1578#1605
        TabOrder = 0
        DesignSize = (
          494
          191)
        object Label27: TLabel
          Left = 216
          Top = 52
          Width = 263
          Height = 13
          Anchors = [akTop, akRight]
          Caption = #1587#1610#1587#1578#1605' '#1670#1607' '#1585#1608#1586#1610' '#1575#1586' '#1607#1601#1578#1607' '#1662#1610#1594#1575#1605' '#1578#1607#1610#1607' '#1606#1587#1582#1607' '#1662#1588#1578#1610#1576#1575#1606' '#1576#1583#1607#1583
        end
        object Label32: TLabel
          Left = 275
          Top = 107
          Width = 186
          Height = 13
          Anchors = [akTop, akRight]
          Caption = #1587#1610#1587#1578#1605' '#1548' '#1576#1610#1604#1575#1606' '#1603#1575#1585#1610' '#1603#1575#1585#1576#1585#1575#1606' '#1585#1575' '#1584#1582#1610#1585#1607' '#1603#1606#1583
        end
        object Label37: TLabel
          Left = 191
          Top = 25
          Width = 272
          Height = 13
          Anchors = [akTop, akRight]
          Caption = #1587#1610#1587#1578#1605' '#1602#1575#1576#1604#1610#1578' '#1580#1587#1578#1580#1608' '#1583#1585' '#1605#1578#1606' '#1578#1575#1610#1662#1610' '#1606#1575#1605#1607' '#1607#1575' '#1585#1575' '#1583#1575#1588#1578#1607' '#1576#1575#1588#1583
        end
        object Label5: TLabel
          Left = 263
          Top = 81
          Width = 216
          Height = 13
          Anchors = [akTop, akRight]
          Caption = #1601#1575#1589#1604#1607' '#1586#1605#1575#1606#1610' '#1576#1585#1608#1586' '#1570#1608#1585#1610' '#1601#1607#1585#1587#1578' '#1606#1575#1605#1607' '#1607#1575'('#1576#1607' '#1579#1575#1606#1610#1607')'
        end
        object DayInWeekForBackup: TComboBox
          Left = 138
          Top = 49
          Width = 73
          Height = 21
          Anchors = [akTop, akRight]
          BiDiMode = bdLeftToRight
          DropDownCount = 10
          ItemHeight = 13
          ParentBiDiMode = False
          TabOrder = 0
          Text = #1607#1610#1670#1705#1583#1575#1605
          Items.Strings = (
            #1588#1606#1576#1607
            #13#1610#1603' '#1588#1606#1576#1607
            #1583#1608' '#1588#1606#1576#1607
            #1587#1607' '#1588#1606#1576#1607
            #1670#1607#1575#1585' '#1588#1606#1576#1607
            #1662#1606#1580' '#1588#1606#1576#1607
            #1580#1605#1593#1607
            #1607#1610#1670#1705#1583#1575#1605
            #13#1607#1585' '#1585#1608#1586)
        end
        object InsertLog: TCheckBox
          Left = 464
          Top = 107
          Width = 17
          Height = 17
          Anchors = [akTop, akRight]
          TabOrder = 1
        end
        object FulltextSearch: TCheckBox
          Left = 464
          Top = 24
          Width = 17
          Height = 17
          Anchors = [akTop, akRight]
          TabOrder = 2
        end
        object RefreshPriodTime: TSpinEdit
          Left = 211
          Top = 78
          Width = 50
          Height = 22
          Anchors = [akTop, akRight]
          MaxValue = 3600
          MinValue = 30
          TabOrder = 3
          Value = 30
        end
        object GroupBox11: TGroupBox
          Left = 256
          Top = 136
          Width = 225
          Height = 46
          Caption = #1578#1606#1592#1610#1605' '#1587#1575#1610#1586' '#1601#1575#1610#1604' '#1662#1610#1608#1587#1578' '#1583#1585' '#1575#1585#1580#1575#1593#1575#1578
          TabOrder = 4
          object Label20: TLabel
            Left = 207
            Top = 19
            Width = 9
            Height = 13
            Caption = #1578#1575' '
          end
          object Label21: TLabel
            Left = 106
            Top = 19
            Width = 37
            Height = 13
            Caption = #1705#1610#1604#1608#1576#1575#1610#1578
          end
          object SizeOfRecommiteAttachFile: TEdit
            Left = 144
            Top = 19
            Width = 65
            Height = 21
            TabOrder = 0
            Text = '1024'
          end
        end
      end
    end
    object TShLetterNu: TTabSheet
      Caption = '     '#1588#1605#1575#1585#1607' '#1575#1606#1583#1610#1705#1575#1578#1608#1585' '#1606#1575#1605#1607'    '
      DesignSize = (
        542
        217)
      object GroupBox5: TGroupBox
        Left = 29
        Top = 11
        Width = 498
        Height = 175
        Anchors = [akTop, akRight]
        Caption = #1588#1605#1575#1585#1607' '#1606#1575#1605#1607
        TabOrder = 0
        DesignSize = (
          498
          175)
        object Label12: TLabel
          Left = 297
          Top = 24
          Width = 185
          Height = 13
          Anchors = [akTop, akRight]
          Caption = #1606#1581#1608#1607' '#1588#1605#1575#1585#1607' '#1711#1584#1575#1585#1610' '#1575#1606#1583#1610#1705#1575#1578#1608#1585' '#1608#1575#1585#1583#1607' '#1608' '#1589#1575#1583#1585#1607
        end
        object Label14: TLabel
          Left = 235
          Top = 137
          Width = 247
          Height = 13
          Anchors = [akTop, akRight]
          Caption = #1583#1585' '#1588#1585#1608#1593' '#1587#1575#1604' '#1588#1605#1575#1585#1607' '#1575#1606#1583#1610#1705#1575#1578#1608#1585' '#1576#1575' '#1670#1607' '#1593#1583#1583#1610' '#1588#1585#1608#1593' '#1588#1608#1583
        end
        object EqualAnswerIndicator: TCheckBox
          Left = 136
          Top = 77
          Width = 346
          Height = 17
          Anchors = [akTop, akRight]
          Caption = 
            #1588#1605#1575#1585#1607' '#1575#1606#1583#1610#1705#1575#1578#1608#1585' '#1580#1608#1575#1576' '#1606#1575#1605#1607' '#1608#1575#1585#1583#1607' '#1576#1575' '#1588#1605#1575#1585#1607' '#1575#1606#1583#1610#1705#1575#1578#1608#1585' '#1606#1575#1605#1607' '#1608#1575#1585#1583#1607' '#1610#1603 +
            #1610' '#1576#1575#1588#1583'.'
          TabOrder = 0
        end
        object BeginIndicator: TEdit
          Left = 174
          Top = 134
          Width = 57
          Height = 21
          Anchors = [akTop, akRight]
          TabOrder = 1
          Text = '100'
        end
        object LetterHasArchiveCopy: TCheckBox
          Left = 291
          Top = 108
          Width = 191
          Height = 17
          Anchors = [akTop, akRight]
          Caption = #1583#1585' '#1578#1575#1610#1662' '#1606#1575#1605#1607' '#1606#1587#1582#1607' '#1576#1575#1610#1711#1575#1606#1610' '#1578#1607#1610#1607' '#1588#1608#1583' '
          TabOrder = 2
        end
        object Uniqeindicator: TComboBox
          Left = 8
          Top = 24
          Width = 285
          Height = 21
          Anchors = [akTop, akRight]
          BiDiMode = bdLeftToRight
          DropDownCount = 10
          ItemHeight = 13
          ParentBiDiMode = False
          TabOrder = 3
          Text = #1588#1605#1575#1585#1607' '#1606#1575#1605#1607' '#1608#1575#1585#1583#1607' '#1548' '#1589#1575#1583#1585#1607' '#1608' '#1583#1575#1582#1604#1610' '#1662#1610#1608#1587#1578#1607' '#1576#1575#1588#1583
          OnChange = UniqeindicatorChange
          Items.Strings = (
            #1588#1605#1575#1585#1607' '#1575#1606#1583#1610#1705#1575#1578#1608#1585' '#1608#1575#1585#1583#1607' '#1608' '#1589#1575#1583#1585#1607' '#1662#1610#1608#1587#1578#1607' '#1576#1575#1588#1583
            #1588#1605#1575#1585#1607' '#1575#1606#1583#1610#1705#1575#1578#1608#1585' '#1608#1575#1585#1583#1607' '#1608' '#1589#1575#1583#1585#1607' '#1605#1580#1586#1575' '#1608' '#1587#1585#1610#1575#1604' '#1576#1575#1588#1583
            #1588#1605#1575#1585#1607' '#1575#1606#1583#1610#1705#1575#1578#1608#1585' '#1607#1575#1610' '#1589#1575#1583#1585#1607' '#1586#1608#1580'  '#1608' '#1608#1575#1585#1583#1607' '#1601#1585#1583' '#1576#1575#1588#1583
            #1588#1605#1575#1585#1607' '#1575#1606#1583#1610#1705#1575#1578#1608#1585' '#1607#1575#1610' '#1589#1575#1583#1585#1607' '#1601#1585#1583'  '#1608' '#1608#1575#1585#1583#1607' '#1586#1608#1580' '#1576#1575#1588#1583)
        end
        object UniqueIndSec: TCheckBox
          Left = 168
          Top = 47
          Width = 314
          Height = 23
          Anchors = [akTop, akRight]
          Caption = #1576#1585#1575#1610' '#1578#1605#1575#1605#1610' '#1583#1576#1610#1585#1582#1575#1606#1607' '#1607#1575' '#1548' '#1588#1605#1575#1585#1607' '#1575#1606#1583#1610#1603#1575#1578#1608#1585' '#1576#1589#1608#1585#1578' '#1662#1610#1608#1587#1578#1607' '#1576#1575#1588#1583' . '
          TabOrder = 4
          WordWrap = True
        end
      end
    end
  end
  object Panel3: TPanel [1]
    Left = 0
    Top = 257
    Width = 550
    Height = 44
    Align = alBottom
    TabOrder = 0
    DesignSize = (
      550
      44)
    object BitBtn2: TBitBtn
      Left = 377
      Top = 11
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
      Left = 457
      Top = 11
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
    Left = 130
    Top = 149
  end
  inherited ActionList: TActionList
    Left = 93
    Top = 157
  end
  inherited Grid_PopupMenu: TPopupMenu
    Left = 40
    Top = 117
  end
  inherited Timer1sssss: TTimer
    Left = 40
    Top = 152
  end
  object OpenDialog1: TOpenDialog
    Left = 377
    Top = 126
  end
end
