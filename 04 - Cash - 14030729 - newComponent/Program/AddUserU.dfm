inherited FrAddUser: TFrAddUser
  Tag = 2
  Left = 630
  Top = 232
  BorderStyle = bsDialog
  Caption = #1578#1593#1585#1610#1601' '#1705#1575#1585#1576#1585
  ClientHeight = 337
  ClientWidth = 614
  Color = clBtnFace
  Font.Height = -12
  KeyPreview = True
  OldCreateOrder = True
  PixelsPerInch = 96
  TextHeight = 14
  object pnlMain: TPanel [0]
    Left = 0
    Top = 0
    Width = 614
    Height = 337
    Align = alClient
    ParentColor = True
    TabOrder = 0
    object Panel2: TPanel
      Left = 1
      Top = 295
      Width = 612
      Height = 41
      Align = alBottom
      TabOrder = 0
      DesignSize = (
        612
        41)
      object BitBtn1: TAdvGlowButton
        Left = 514
        Top = 6
        Width = 84
        Height = 29
        Anchors = [akTop, akRight]
        Caption = #1578#1575#1610#1610#1583
        Font.Charset = ARABIC_CHARSET
        Font.Color = clNavy
        Font.Height = -12
        Font.Name = 'Tahoma'
        Font.Style = []
        ImageIndex = 59
        Images = dm.ImageList_MainNew
        NotesFont.Charset = DEFAULT_CHARSET
        NotesFont.Color = clWindowText
        NotesFont.Height = -11
        NotesFont.Name = 'Tahoma'
        NotesFont.Style = []
        ParentFont = False
        TabOrder = 0
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
    object xpPageControl1: TPageControl
      Left = 1
      Top = 1
      Width = 612
      Height = 294
      ActivePage = xpTabSheet2
      Align = alClient
      ParentShowHint = False
      ShowHint = True
      TabHeight = 25
      TabOrder = 1
      TabWidth = 100
      object userTab: TTabSheet
        Caption = #1578#1593#1585#1610#1601' '#1603#1575#1585#1576#1585
        object Panel1: TPanel
          Left = 0
          Top = 0
          Width = 604
          Height = 259
          Align = alClient
          ParentColor = True
          TabOrder = 0
          DesignSize = (
            604
            259)
          object Label1: TLabel
            Left = 516
            Top = 153
            Width = 83
            Height = 14
            Anchors = [akTop, akRight]
            Caption = #1587#1591#1581' '#1583#1587#1578#1585#1587#1610
          end
          object Label3: TLabel
            Left = 516
            Top = 77
            Width = 83
            Height = 14
            Anchors = [akTop, akRight]
            Caption = #1606#1575#1605' '#1705#1575#1585#1576#1585#1610
            FocusControl = DBEdit2
          end
          object Label4: TLabel
            Left = 516
            Top = 115
            Width = 83
            Height = 14
            Anchors = [akTop, akRight]
            Caption = #1705#1604#1605#1607' '#1593#1576#1608#1585
          end
          object Label10: TLabel
            Left = 255
            Top = 114
            Width = 21
            Height = 14
            Anchors = [akTop, akRight]
            Caption = #1578#1705#1585#1575#1585
          end
          object Label9: TLabel
            Left = 516
            Top = 38
            Width = 83
            Height = 14
            Anchors = [akTop, akRight]
            Caption = #1606#1575#1605' '#1705#1575#1605#1604
            FocusControl = DBEdit2
          end
          object Label13: TLabel
            Left = 516
            Top = 191
            Width = 83
            Height = 14
            Anchors = [akTop, akRight]
            Caption = #1588#1585#1608#1593' '#1575#1593#1578#1576#1575#1585
          end
          object Label14: TLabel
            Left = 252
            Top = 192
            Width = 52
            Height = 14
            Anchors = [akTop, akRight]
            Caption = #1662#1575#1610#1575#1606' '#1575#1593#1578#1576#1575#1585
          end
          object DBLookupComboBox1: TDBLookupComboBox
            Left = 204
            Top = 148
            Width = 309
            Height = 22
            Anchors = [akTop, akRight]
            BiDiMode = bdLeftToRight
            DataField = 'AccessTitle'
            DataSource = dm.DUsers
            Font.Charset = ARABIC_CHARSET
            Font.Color = clWindowText
            Font.Height = -12
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentBiDiMode = False
            ParentFont = False
            TabOrder = 4
          end
          object DBEdit1: TDBEdit
            Left = 48
            Top = 33
            Width = 465
            Height = 22
            Anchors = [akTop, akRight]
            DataField = 'FullName'
            DataSource = dm.DUsers
            Font.Charset = ARABIC_CHARSET
            Font.Color = clWindowText
            Font.Height = -12
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
            TabOrder = 0
          end
          object DBEdit2: TDBEdit
            Left = 48
            Top = 72
            Width = 465
            Height = 22
            Anchors = [akTop, akRight]
            DataField = 'UserName'
            DataSource = dm.DUsers
            Font.Charset = ARABIC_CHARSET
            Font.Color = clWindowText
            Font.Height = -12
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
            TabOrder = 1
          end
          object ActionToolBar1: TActionToolBar
            Left = 1
            Top = 1
            Width = 602
            Height = 27
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
            Left = 296
            Top = 110
            Width = 217
            Height = 22
            Anchors = [akTop, akRight]
            DataField = 'PassWord'
            DataSource = dm.DUsers
            Font.Charset = ARABIC_CHARSET
            Font.Color = clWindowText
            Font.Height = -12
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
            PasswordChar = '*'
            TabOrder = 2
          end
          object ConfirmPass: TEdit
            Left = 48
            Top = 110
            Width = 196
            Height = 22
            Anchors = [akTop, akRight]
            Font.Charset = ARABIC_CHARSET
            Font.Color = clWindowText
            Font.Height = -12
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
            PasswordChar = '*'
            TabOrder = 3
          end
          object DBELoanDate: TSolarDatePicker
            Left = 319
            Top = 186
            Width = 194
            Height = 22
            Anchors = [akTop, akRight]
            About = 'Created by : Mohamad Khorsandi'
            BiDiMode = bdLeftToRight
            Font.Charset = ARABIC_CHARSET
            Font.Color = clWindowText
            Font.Height = -12
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
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
            Left = 56
            Top = 186
            Width = 194
            Height = 22
            Anchors = [akTop, akRight]
            About = 'Created by : Mohamad Khorsandi'
            BiDiMode = bdLeftToRight
            Font.Charset = ARABIC_CHARSET
            Font.Color = clWindowText
            Font.Height = -12
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
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
            Top = 226
            Width = 602
            Height = 32
            Align = alBottom
            BevelInner = bvLowered
            Caption = ' '
            TabOrder = 8
            object DBCheckBox1: TDBCheckBox
              Left = 368
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
          604
          259)
        object Label12: TLabel
          Left = 502
          Top = 25
          Width = 89
          Height = 14
          Anchors = [akTop, akRight]
          Caption = #1580#1600#1600#1600#1600#1587#1600#1600#1600#1600#1600#1578#1600#1600#1600#1580#1600#1600#1600#1600#1600#1608
        end
        object DBGFromORG: TYDBGrid
          Left = 0
          Top = 56
          Width = 604
          Height = 203
          Cursor = crHandPoint
          Align = alBottom
          Anchors = [akLeft, akTop, akRight, akBottom]
          DataSource = dm.DSelect_User_like
          TabOrder = 0
          TitleFont.Charset = ARABIC_CHARSET
          TitleFont.Color = clWindowText
          TitleFont.Height = -12
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
          Left = 195
          Top = 11
          Width = 296
          Height = 22
          Anchors = [akTop, akRight]
          Font.Charset = ARABIC_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          TabOrder = 1
          OnChange = SEditChange
        end
      end
    end
  end
  inherited ahmadvand: TActionList
    Left = 45
    Top = 35
  end
  inherited Grid_PopupMenu: TPopupMenu
    Left = 87
    Top = 36
  end
  inherited qSetting: TADOQuery
    Left = 96
    Top = 48
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
            Action = DataSetInsert
            ImageIndex = 60
            ShortCut = 45
          end
          item
            Action = DataSetEdit
            ImageIndex = 2
            ShortCut = 115
          end
          item
            Action = DataSetPost
            ImageIndex = 59
            ShortCut = 113
          end
          item
            Action = DataSetCancel
            ImageIndex = 1
            ShortCut = 32776
          end
          item
            Action = DataSetPrior1
            ImageIndex = 87
          end
          item
            Action = DataSetNext1
            ImageIndex = 85
          end>
        ActionBar = ActionToolBar1
        AutoSize = False
      end>
    Images = dm.ImageList_MainNew
    Left = 19
    Top = 40
    StyleName = 'XP Style'
    object DataSetInsert: TDataSetInsert
      Tag = 3
      Category = #1578#1594#1610#1610#1585#1575#1578
      Caption = #1705#1575#1585#1576#1585' '#1580#1583#1610#1583
      Hint = 'Insert'
      ImageIndex = 60
      ShortCut = 45
      DataSource = dm.DUsers
    end
    object DataSetDelete: TDataSetDelete
      Tag = 4
      Category = #1578#1594#1610#1610#1585#1575#1578
      Caption = #1581#1584#1601
      Enabled = False
      Hint = 'Delete'
      ImageIndex = 90
      ShortCut = 16430
      DataSource = dm.DUsers
    end
    object DataSetEdit: TDataSetEdit
      Tag = 5
      Category = #1578#1594#1610#1610#1585#1575#1578
      Caption = #1608#1610#1585#1575#1610#1588' '
      Hint = 'Edit'
      ImageIndex = 2
      ShortCut = 115
      DataSource = dm.DUsers
    end
    object DataSetPost: TDataSetPost
      Tag = 6
      Category = #1578#1594#1610#1610#1585#1575#1578
      Caption = #1584#1582#1610#1585#1607
      Hint = 'Post'
      ImageIndex = 59
      ShortCut = 113
      OnExecute = DataSetPostExecute
      DataSource = dm.DUsers
    end
    object DataSetCancel: TDataSetCancel
      Tag = 7
      Category = #1578#1594#1610#1610#1585#1575#1578
      Caption = #1575#1606#1589#1585#1575#1601
      Hint = 'Cancel'
      ImageIndex = 1
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
      ImageIndex = 87
      DataSource = dm.DUsers
    end
    object DataSetNext1: TDataSetNext
      Category = #1578#1594#1610#1610#1585#1575#1578
      Caption = #1576#1593#1583#1610
      Hint = 'Next'
      ImageIndex = 85
      DataSource = dm.DUsers
    end
    object Action1: TAction
      Caption = '|'
    end
  end
end
