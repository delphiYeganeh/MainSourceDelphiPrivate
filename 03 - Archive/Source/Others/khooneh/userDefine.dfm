inherited UserDefineF: TUserDefineF
  Tag = 2
  Left = 341
  Top = 69
  BorderIcons = [biSystemMenu]
  BorderStyle = bsDialog
  Caption = #1578#1593#1585#1610#1601' '#1705#1575#1585#1576#1585
  ClientHeight = 429
  ClientWidth = 648
  KeyPreview = True
  OldCreateOrder = True
  PixelsPerInch = 96
  TextHeight = 13
  object Bevel1: TBevel [0]
    Left = 304
    Top = 208
    Width = 50
    Height = 50
  end
  object BitBtn1: TxpBitBtn [1]
    Left = 3
    Top = 390
    Width = 85
    Height = 29
    startColor = 16645629
    EndColor = 14666957
    Caption = #1578#1575#1610#1610#1583
    Font.Charset = ARABIC_CHARSET
    Font.Color = clNavy
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
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
    Gradient = True
    TabOrder = 0
    TabStop = True
    OnClick = BitBtn1Click
  end
  object xpPageControl1: TxpPageControl [2]
    Left = 0
    Top = 0
    Width = 648
    Height = 383
    ActivePage = userTab
    Align = alTop
    ParentShowHint = False
    ShowHint = True
    Style = pcsXP
    TabOrder = 1
    TabPosition = tpTop
    BorderColor = clSilver
    TabTextAlignment = taCenter
    object userTab: TxpTabSheet
      Caption = #1578#1593#1585#1610#1601' '#1705#1575#1585#1576#1585
      Color = clWhite
      BGStyle = bgsNone
      GradientStartColor = clWhite
      GradientEndColor = clSilver
      GradientFillDir = fdTopToBottom
      object Panel1: TPanel
        Left = 0
        Top = 0
        Width = 646
        Height = 362
        Align = alClient
        ParentColor = True
        TabOrder = 0
        DesignSize = (
          646
          362)
        object Label1: TLabel
          Left = 558
          Top = 134
          Width = 77
          Height = 13
          Anchors = [akTop, akRight]
          Caption = #1587#1591#1581' '#1583#1587#1578#1585#1587#1610
        end
        object Label3: TLabel
          Left = 558
          Top = 78
          Width = 46
          Height = 13
          Anchors = [akTop, akRight]
          Caption = #1606#1575#1605' '#1705#1575#1585#1576#1585#1610
          FocusControl = UserName
        end
        object Label4: TLabel
          Left = 558
          Top = 106
          Width = 45
          Height = 13
          Anchors = [akTop, akRight]
          Caption = #1705#1604#1605#1607' '#1593#1576#1608#1585
        end
        object Label10: TLabel
          Left = 382
          Top = 106
          Width = 21
          Height = 13
          Anchors = [akTop, akRight]
          Caption = #1578#1705#1585#1575#1585
        end
        object Label9: TLabel
          Left = 558
          Top = 54
          Width = 38
          Height = 13
          Anchors = [akTop, akRight]
          Caption = #1606#1575#1605' '#1705#1575#1605#1604
          FocusControl = UserName
        end
        object Label5: TLabel
          Left = 514
          Top = 255
          Width = 123
          Height = 13
          Anchors = [akTop, akRight]
          Caption = #1583#1576#1610#1585#1582#1575#1606#1607' '#1607#1575#1610' '#1602#1575#1576#1604' '#1583#1587#1578#1585#1587
        end
        object SpeedButton1: TSpeedButton
          Left = 486
          Top = 251
          Width = 25
          Height = 20
          Anchors = [akTop, akRight]
          Caption = '...'
          OnClick = SpeedButton1Click
        end
        object Label7: TLabel
          Left = 408
          Top = 255
          Width = 71
          Height = 13
          Anchors = [akTop, akRight]
          Caption = #1578#1606#1592#1610#1605#1575#1578' '#1705#1575#1585#1576#1585#1610
        end
        object SpeedButton5: TSpeedButton
          Left = 378
          Top = 251
          Width = 25
          Height = 20
          Anchors = [akTop, akRight]
          Caption = '...'
          OnClick = SpeedButton5Click
        end
        object Label6: TLabel
          Left = 259
          Top = 254
          Width = 111
          Height = 13
          Anchors = [akTop, akRight]
          Caption = #1602#1575#1604#1576' '#1607#1575#1610' '#1605#1608#1585#1583' '#1575#1587#1578#1601#1575#1583#1607' '
        end
        object SpeedButton4: TSpeedButton
          Left = 232
          Top = 252
          Width = 25
          Height = 20
          Anchors = [akRight, akBottom]
          Caption = '...'
          OnClick = SpeedButton4Click
        end
        object Label2: TLabel
          Left = 522
          Top = 235
          Width = 97
          Height = 13
          Caption = #1705#1575#1585#1605#1606#1583' '#1583#1576#1610#1585#1582#1575#1606#1607' '#1575#1587#1578' '
        end
        object Label11: TLabel
          Left = 556
          Top = 159
          Width = 86
          Height = 13
          Anchors = [akTop, akRight]
          Caption = #1583#1576#1610#1585#1582#1575#1606#1607' '#1662#1610#1588' '#1601#1585#1590
          Font.Charset = ARABIC_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
        end
        object Label13: TLabel
          Left = 559
          Top = 192
          Width = 56
          Height = 13
          Caption = #1588#1585#1608#1593' '#1575#1593#1578#1576#1575#1585
          FocusControl = DBEdit4
        end
        object Label14: TLabel
          Left = 361
          Top = 192
          Width = 47
          Height = 13
          Caption = #1662#1575#1610#1575#1606' '#1575#1593#1578#1576#1575#1585
          FocusControl = DBEdit5
        end
        object Label16: TLabel
          Left = 91
          Top = 33
          Width = 49
          Height = 13
          Caption = #1578#1589#1608#1610#1585' '#1575#1605#1590#1575
          FocusControl = DBImage1
        end
        object DBImage1: TImage
          Left = 8
          Top = 48
          Width = 226
          Height = 206
          Stretch = True
        end
        object DBLookupComboBox1: TDBLookupComboBox
          Left = 239
          Top = 130
          Width = 278
          Height = 21
          Anchors = [akTop, akRight]
          DataField = 'AccessID'
          DataSource = DSForm
          KeyField = 'ID'
          ListField = 'Title'
          ListSource = DAccess2
          TabOrder = 5
        end
        object DBEdit1: TDBEdit
          Left = 404
          Top = 49
          Width = 151
          Height = 21
          Anchors = [akTop, akRight]
          DataField = 'Title'
          DataSource = DSForm
          TabOrder = 0
        end
        object UserName: TDBEdit
          Left = 404
          Top = 76
          Width = 151
          Height = 21
          Anchors = [akTop, akRight]
          DataField = 'UserName'
          DataSource = DSForm
          TabOrder = 1
        end
        object ActionToolBar1: TActionToolBar
          Left = 1
          Top = 1
          Width = 644
          Height = 27
          ActionManager = ActionManager
          Caption = 'ActionToolBar1'
          ColorMap.HighlightColor = 15660791
          ColorMap.BtnSelectedColor = clBtnFace
          ColorMap.UnusedColor = 15660791
          EdgeOuter = esRaised
          Orientation = boRightToLeft
          Spacing = 0
        end
        object Pass: TDBEdit
          Left = 415
          Top = 103
          Width = 140
          Height = 21
          Anchors = [akTop, akRight]
          DataField = 'PassWord'
          DataSource = DSForm
          PasswordChar = '*'
          TabOrder = 2
        end
        object ConfirmPass: TEdit
          Left = 239
          Top = 102
          Width = 140
          Height = 21
          Anchors = [akTop, akRight]
          PasswordChar = '*'
          TabOrder = 3
        end
        object IsSecretariatStaffer: TDBCheckBox
          Left = 621
          Top = 234
          Width = 19
          Height = 17
          Anchors = [akTop, akRight]
          DataField = 'IsSecretariantStaffer'
          DataSource = DSForm
          TabOrder = 9
          ValueChecked = 'True'
          ValueUnchecked = 'False'
        end
        object DBEdit3: TDBEdit
          Left = 518
          Top = 130
          Width = 35
          Height = 21
          Anchors = [akTop, akRight]
          DataField = 'AccessID'
          DataSource = DSForm
          Font.Charset = ARABIC_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          TabOrder = 4
          OnEnter = TEditEnter
          OnExit = TEditExit
          OnKeyDown = DBEdit9KeyDown
        end
        object GeneralStaffer: TPanel
          Left = 1
          Top = 291
          Width = 644
          Height = 70
          Align = alBottom
          ParentColor = True
          TabOrder = 10
          DesignSize = (
            644
            70)
          object Label8: TLabel
            Left = 551
            Top = 6
            Width = 58
            Height = 13
            Anchors = [akRight, akBottom]
            Caption = #1587#1605#1578' '#1575#1589#1604#1610
            Font.Charset = ARABIC_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
          end
          object SpeedButton2: TSpeedButton
            Left = 264
            Top = 5
            Width = 21
            Height = 18
            Caption = '...'
            OnClick = SpeedButton2Click
          end
          object Label15: TLabel
            Left = 552
            Top = 38
            Width = 48
            Height = 13
            Anchors = [akRight, akBottom]
            Caption = #1587#1605#1578' '#1583#1608#1605
            Font.Charset = ARABIC_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
          end
          object SpeedButton3: TSpeedButton
            Left = 264
            Top = 37
            Width = 21
            Height = 18
            Caption = '...'
            OnClick = SpeedButton3Click
          end
          object DBLookupComboBox2: TDBLookupComboBox
            Left = 292
            Top = 4
            Width = 257
            Height = 21
            Anchors = [akRight, akBottom]
            DataField = 'FromOrgTitle'
            DataSource = DSForm
            Font.Charset = ARABIC_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            ListField = 'Title'
            ParentFont = False
            TabOrder = 0
            OnKeyDown = DBEdit9KeyDown
          end
          object DBLookupComboBox4: TDBLookupComboBox
            Left = 292
            Top = 36
            Width = 257
            Height = 21
            Anchors = [akRight, akBottom]
            DataField = 'SecondOrgTitle'
            DataSource = DSForm
            Font.Charset = ARABIC_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            ListField = 'Title'
            ParentFont = False
            TabOrder = 1
            OnKeyDown = DBEdit9KeyDown
          end
          object xpBitBtn1: TxpBitBtn
            Left = 0
            Top = 32
            Width = 93
            Height = 25
            startColor = 16645629
            EndColor = 14666957
            Caption = #1581#1584#1601' '#1587#1605#1578' '#1583#1608#1605
            Font.Charset = ARABIC_CHARSET
            Font.Color = clNavy
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            Gradient = True
            TabOrder = 2
            TabStop = True
            OnClick = xpBitBtn1Click
          end
        end
        object DBLookupComboBox3: TDBLookupComboBox
          Left = 238
          Top = 158
          Width = 317
          Height = 21
          DataField = 'DefaultSec'
          DataSource = dm.Dusers
          TabOrder = 6
        end
        object DBEdit4: TDBShamsiDateEdit
          Left = 433
          Top = 188
          Width = 122
          Height = 21
          CheckValidity = True
          ShowMsg = False
          DataField = 'BeginActiveDate'
          DataSource = DSForm
          TabOrder = 7
        end
        object DBEdit5: TDBShamsiDateEdit
          Left = 238
          Top = 188
          Width = 122
          Height = 21
          CheckValidity = True
          ShowMsg = False
          DataField = 'EndActiveDate'
          DataSource = DSForm
          TabOrder = 8
        end
        object xpBitBtn2: TxpBitBtn
          Left = 120
          Top = 261
          Width = 75
          Height = 27
          startColor = 16645629
          EndColor = 14666957
          Caption = #1606#1605#1575#1610#1588
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clNavy
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          Gradient = True
          TabOrder = 12
          TabStop = True
          OnClick = xpBitBtn2Click
        end
        object xpBitBtn3: TxpBitBtn
          Left = 40
          Top = 261
          Width = 75
          Height = 27
          startColor = 16645629
          EndColor = 14666957
          Caption = #1578#1594#1610#1610#1585
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clNavy
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          Gradient = True
          TabOrder = 13
          TabStop = True
          OnClick = xpBitBtn3Click
        end
        object DBCheckBox1: TDBCheckBox
          Left = 448
          Top = 216
          Width = 191
          Height = 17
          Caption = #1583#1587#1578#1585#1587#1610' '#1576#1607' '#1606#1575#1605#1607' '#1607#1575#1610' '#1605#1581#1585#1605#1575#1606#1607
          DataField = 'HasSecureLetterAccess'
          DataSource = DSForm
          TabOrder = 14
          ValueChecked = 'True'
          ValueUnchecked = 'False'
        end
      end
    end
    object xpTabSheet2: TxpTabSheet
      Caption = #1604#1610#1587#1578' '#1705#1575#1585#1576#1585#1575#1606
      Color = clWhite
      BGStyle = bgsNone
      GradientStartColor = clWhite
      GradientEndColor = clSilver
      GradientFillDir = fdTopToBottom
      object Label12: TLabel
        Left = 606
        Top = 9
        Width = 35
        Height = 13
        Caption = #1580#1587#1578#1580#1608
      end
      object DBGFromORG: TYDBGrid
        Left = 0
        Top = 38
        Width = 646
        Height = 324
        Align = alBottom
        Color = 14671871
        DataSource = Dsearch
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
            Width = 189
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
            Width = 141
            Visible = True
          end>
      end
      object SEdit: TEdit
        Left = 176
        Top = 6
        Width = 425
        Height = 21
        TabOrder = 1
        OnChange = SEditChange
      end
    end
  end
  inherited DSForm: TDataSource
    AutoEdit = False
    DataSet = dm.Users
    Left = 291
    Top = 248
  end
  inherited ActionList: TActionList
    Left = 216
    Top = 240
  end
  inherited xpWindow1: TxpWindow
    Left = 352
    Top = 232
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
            Action = DataSetDelete
            Caption = #1581#1584#1601' &Ctrl+Del'
            ImageIndex = 3
            ShortCut = 16430
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
              end
              item
                Action = DataSetDelete
                ImageIndex = 3
                ShortCut = 16430
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
                Action = DataSetDelete
                ImageIndex = 3
                ShortCut = 16430
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
            Action = DataSetPrior1
            ImageIndex = 16
          end
          item
            Action = DataSetNext1
            ImageIndex = 19
          end
          item
            Action = DataSetEdit
            ImageIndex = 29
            ShortCut = 115
          end
          item
            Action = DataSetCancel
            ImageIndex = 40
            ShortCut = 32776
          end
          item
            Action = DataSetPost
            ImageIndex = 39
            ShortCut = 113
          end
          item
            Action = DataSetInsert
            ImageIndex = 37
            ShortCut = 45
          end>
        ActionBar = ActionToolBar1
        AutoSize = False
      end>
    Images = dm.LetterImages
    Left = 195
    Top = 336
    StyleName = 'XP Style'
    object DataSetInsert: TDataSetInsert
      Tag = 3
      Category = #1578#1594#1610#1610#1585#1575#1578
      Caption = #1705#1575#1585#1576#1585' '#1580#1583#1610#1583
      Hint = 'Insert'
      ImageIndex = 37
      ShortCut = 45
      OnExecute = DataSetInsertExecute
      DataSource = DSForm
    end
    object DataSetDelete: TDataSetDelete
      Tag = 4
      Category = #1578#1594#1610#1610#1585#1575#1578
      Caption = #1581#1584#1601
      Enabled = False
      Hint = 'Delete'
      ImageIndex = 38
      ShortCut = 16430
      OnExecute = DataSetDeleteExecute
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
  end
  object Access2: TADOTable
    Connection = dm.YeganehConnection
    CursorType = ctStatic
    IndexFieldNames = 'ID'
    MasterFields = 'AccessID'
    TableName = 'Accesses'
    Left = 253
    Top = 240
    object WordField7: TWordField
      FieldName = 'ID'
    end
    object WideStringField5: TWideStringField
      FieldName = 'Title'
      Size = 50
    end
  end
  object DAccess2: TDataSource
    DataSet = Access2
    Left = 244
    Top = 328
  end
  object Search: TADODataSet
    Connection = dm.YeganehConnection
    CursorType = ctStatic
    CommandText = 'select id,Title,username from users '
    Parameters = <>
    Left = 249
    Top = 92
    object Searchid: TAutoIncField
      FieldName = 'id'
      ReadOnly = True
    end
    object SearchTitle: TWideStringField
      FieldName = 'Title'
      Size = 50
    end
    object Searchusername: TWideStringField
      FieldName = 'username'
      Size = 50
    end
  end
  object Dsearch: TDataSource
    DataSet = Search
    Left = 129
    Top = 132
  end
  object OpenPictureDialog: TOpenPictureDialog
    Filter = 'JPG|*.jpg'
    Left = 89
    Top = 116
  end
end
