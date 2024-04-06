inherited FrAddUser: TFrAddUser
  Tag = 2
  Left = 459
  Top = 219
  BorderStyle = bsDialog
  Caption = #1578#1593#1585#1610#1601' '#1705#1575#1585#1576#1585
  ClientHeight = 314
  ClientWidth = 423
  Color = clBtnFace
  KeyPreview = True
  OldCreateOrder = True
  PixelsPerInch = 96
  TextHeight = 13
  object xpPageControl1: TPageControl [0]
    Left = 0
    Top = 0
    Width = 423
    Height = 273
    ActivePage = userTab
    Align = alClient
    ParentShowHint = False
    ShowHint = True
    TabOrder = 0
    object userTab: TTabSheet
      Caption = #1578#1593#1585#1610#1601' '#1603#1575#1585#1576#1585
      object Panel1: TPanel
        Left = 0
        Top = 0
        Width = 415
        Height = 245
        Align = alClient
        ParentColor = True
        TabOrder = 0
        DesignSize = (
          415
          245)
        object Label1: TLabel
          Left = 328
          Top = 139
          Width = 77
          Height = 13
          Anchors = [akTop, akRight]
          Caption = #1587#1591#1581' '#1583#1587#1578#1585#1587#1610
        end
        object Label3: TLabel
          Left = 328
          Top = 84
          Width = 46
          Height = 13
          Anchors = [akTop, akRight]
          Caption = #1606#1575#1605' '#1705#1575#1585#1576#1585#1610
          FocusControl = DBEdit2
        end
        object Label4: TLabel
          Left = 328
          Top = 112
          Width = 45
          Height = 13
          Anchors = [akTop, akRight]
          Caption = #1705#1604#1605#1607' '#1593#1576#1608#1585
        end
        object Label10: TLabel
          Left = 154
          Top = 112
          Width = 21
          Height = 13
          Anchors = [akTop, akRight]
          Caption = #1578#1705#1585#1575#1585
        end
        object Label9: TLabel
          Left = 328
          Top = 58
          Width = 38
          Height = 13
          Anchors = [akTop, akRight]
          Caption = #1606#1575#1605' '#1705#1575#1605#1604
          FocusControl = DBEdit2
        end
        object Label13: TLabel
          Left = 328
          Top = 164
          Width = 56
          Height = 13
          Anchors = [akTop, akRight]
          Caption = #1588#1585#1608#1593' '#1575#1593#1578#1576#1575#1585
        end
        object Label14: TLabel
          Left = 176
          Top = 165
          Width = 47
          Height = 13
          Anchors = [akTop, akRight]
          Caption = #1662#1575#1610#1575#1606' '#1575#1593#1578#1576#1575#1585
        end
        object DBLookupComboBox1: TDBLookupComboBox
          Left = 15
          Top = 134
          Width = 309
          Height = 21
          Anchors = [akTop, akRight]
          BiDiMode = bdLeftToRight
          DataField = 'AccessTitle'
          DataSource = dm.DUsers
          ParentBiDiMode = False
          TabOrder = 4
        end
        object DBEdit1: TDBEdit
          Left = 175
          Top = 56
          Width = 149
          Height = 21
          Anchors = [akTop, akRight]
          DataField = 'FullName'
          DataSource = dm.DUsers
          TabOrder = 0
        end
        object DBEdit2: TDBEdit
          Left = 175
          Top = 82
          Width = 149
          Height = 21
          Anchors = [akTop, akRight]
          DataField = 'UserName'
          DataSource = dm.DUsers
          TabOrder = 1
        end
        object ActionToolBar1: TActionToolBar
          Left = 1
          Top = 1
          Width = 413
          Height = 30
          ActionManager = ActionManager
          Caption = 'ActionToolBar1'
          ColorMap.HighlightColor = clWhite
          ColorMap.BtnSelectedColor = clBtnFace
          ColorMap.UnusedColor = clWhite
          EdgeOuter = esRaised
          Orientation = boRightToLeft
          Spacing = 0
        end
        object Pass: TDBEdit
          Left = 184
          Top = 108
          Width = 140
          Height = 21
          Anchors = [akTop, akRight]
          DataField = 'PassWord'
          DataSource = dm.DUsers
          PasswordChar = '*'
          TabOrder = 2
        end
        object ConfirmPass: TEdit
          Left = 14
          Top = 108
          Width = 137
          Height = 21
          Anchors = [akTop, akRight]
          PasswordChar = '*'
          TabOrder = 3
        end
        object DBELoanDate: TSolarDatePicker
          Left = 235
          Top = 160
          Width = 90
          Height = 21
          Anchors = [akTop, akRight]
          About = 'Created by : Mohamad Khorsandi'
          BiDiMode = bdLeftToRight
          TabOrder = 6
          Enabled = True
          OnEnter = TEditEnter
          OnExit = TEditExit
          OnKeyDown = GotoNext
          DateKind = dkSolar
          CheckInputOnExit = False
          Divider = dSlash
          ShowToDay = True
          MonthObject = moPopupMenu
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
          DataSource = dm.DUsers
          DataField = 'BeginDate'
          DataFieldType = dftSolar
          DataFieldAutoSaveModified = False
        end
        object DBEdit3: TSolarDatePicker
          Left = 83
          Top = 160
          Width = 90
          Height = 21
          Anchors = [akTop, akRight]
          About = 'Created by : Mohamad Khorsandi'
          BiDiMode = bdLeftToRight
          TabOrder = 7
          Enabled = True
          OnEnter = TEditEnter
          OnExit = TEditExit
          OnKeyDown = GotoNext
          DateKind = dkSolar
          CheckInputOnExit = False
          Divider = dSlash
          ShowToDay = True
          MonthObject = moPopupMenu
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
          DataSource = dm.DUsers
          DataField = 'EndDate'
          DataFieldType = dftSolar
          DataFieldAutoSaveModified = False
        end
        object Panel3: TPanel
          Left = 1
          Top = 212
          Width = 413
          Height = 32
          Align = alBottom
          BevelInner = bvLowered
          Caption = ' '
          TabOrder = 8
          object DBCheckBox1: TDBCheckBox
            Left = 112
            Top = 8
            Width = 225
            Height = 17
            Caption = #1583#1587#1578#1585#1587#1610' '#1576#1607' '#1589#1601#1581#1607' '#1605#1583#1610#1585#1610#1578' '#1581#1587#1575#1576#1607#1575
            DataField = 'AccMngtAccess'
            DataSource = dm.DUsers
            TabOrder = 0
            ValueChecked = '1'
            ValueUnchecked = '0'
          end
        end
      end
    end
    object xpTabSheet2: TTabSheet
      Caption = #1604#1610#1587#1578' '#1603#1575#1585#1576#1585#1575#1606
      DesignSize = (
        415
        245)
      object Label12: TLabel
        Left = 367
        Top = 9
        Width = 35
        Height = 13
        Anchors = [akTop, akRight]
        Caption = #1580#1587#1578#1580#1608
      end
      object DBGFromORG: TYDBGrid
        Left = 0
        Top = 76
        Width = 415
        Height = 169
        Cursor = crHandPoint
        Align = alBottom
        Color = 14671871
        DataSource = dm.DSelect_User_like
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
            FieldName = 'FullName'
            ReadOnly = True
            Title.Alignment = taCenter
            Title.Caption = #1593#1606#1608#1575#1606
            Width = 216
            Visible = True
          end
          item
            Color = 15790335
            Expanded = False
            FieldName = 'UserName'
            ReadOnly = True
            Title.Alignment = taCenter
            Title.Caption = #1606#1575#1605' '#1705#1575#1585#1576#1585#1610
            Width = 142
            Visible = True
          end>
      end
      object SEdit: TEdit
        Left = 65
        Top = 6
        Width = 296
        Height = 21
        Anchors = [akTop, akRight]
        TabOrder = 1
        OnChange = SEditChange
      end
    end
  end
  object Panel2: TPanel [1]
    Left = 0
    Top = 273
    Width = 423
    Height = 41
    Align = alBottom
    TabOrder = 1
    DesignSize = (
      423
      41)
    object BitBtn1: TBitBtn
      Left = 325
      Top = 6
      Width = 84
      Height = 29
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
  inherited ahmadvand: TActionList
    Left = 29
    Top = 59
  end
  inherited Grid_PopupMenu: TPopupMenu
    Left = 31
    Top = 108
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
    Left = 27
    Top = 160
    StyleName = 'XP Style'
    object DataSetInsert: TDataSetInsert
      Tag = 3
      Category = #1578#1594#1610#1610#1585#1575#1578
      Caption = #1705#1575#1585#1576#1585' '#1580#1583#1610#1583
      Hint = 'Insert'
      ImageIndex = 37
      ShortCut = 45
      DataSource = dm.DUsers
    end
    object DataSetDelete: TDataSetDelete
      Tag = 4
      Category = #1578#1594#1610#1610#1585#1575#1578
      Caption = #1581#1584#1601
      Enabled = False
      Hint = 'Delete'
      ImageIndex = 38
      ShortCut = 16430
      DataSource = dm.DUsers
    end
    object DataSetEdit: TDataSetEdit
      Tag = 5
      Category = #1578#1594#1610#1610#1585#1575#1578
      Caption = #1608#1610#1585#1575#1610#1588' '
      Hint = 'Edit'
      ImageIndex = 29
      ShortCut = 115
      DataSource = dm.DUsers
    end
    object DataSetPost: TDataSetPost
      Tag = 6
      Category = #1578#1594#1610#1610#1585#1575#1578
      Caption = #1584#1582#1610#1585#1607
      Hint = 'Post'
      ImageIndex = 39
      ShortCut = 113
      OnExecute = DataSetPostExecute
      DataSource = dm.DUsers
    end
    object DataSetCancel: TDataSetCancel
      Tag = 7
      Category = #1578#1594#1610#1610#1585#1575#1578
      Caption = #1575#1606#1589#1585#1575#1601
      Hint = 'Cancel'
      ImageIndex = 40
      ShortCut = 32776
      DataSource = dm.DUsers
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
      DataSource = dm.DUsers
    end
    object DataSetNext1: TDataSetNext
      Category = #1578#1594#1610#1610#1585#1575#1578
      Caption = #1576#1593#1583#1610
      Hint = 'Next'
      ImageIndex = 19
      DataSource = dm.DUsers
    end
    object Action1: TAction
      Caption = '|'
    end
  end
end
