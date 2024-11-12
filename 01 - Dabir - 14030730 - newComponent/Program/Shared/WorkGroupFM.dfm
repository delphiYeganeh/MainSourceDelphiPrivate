object FMWorkGroup: TFMWorkGroup
  Left = 638
  Top = 172
  BiDiMode = bdRightToLeft
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = #1601#1585#1605' '#1578#1593#1585#1610#1601' '#1711#1585#1608#1607' '#1705#1575#1585#1610
  ClientHeight = 628
  ClientWidth = 461
  Color = clBtnFace
  Constraints.MinHeight = 480
  Constraints.MinWidth = 420
  Font.Charset = ARABIC_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  KeyPreview = True
  OldCreateOrder = False
  ParentBiDiMode = False
  Position = poDesktopCenter
  OnClose = FormClose
  OnCloseQuery = FormCloseQuery
  OnCreate = FormCreate
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Panel3: TPanel
    Left = 0
    Top = 587
    Width = 461
    Height = 41
    Align = alBottom
    TabOrder = 0
    object BitBtn1: TBitBtn
      Left = 10
      Top = 8
      Width = 75
      Height = 25
      Cursor = crHandPoint
      Caption = #1582#1585#1608#1580
      TabOrder = 0
      Kind = bkClose
    end
  end
  object Panel1: TPanel
    Left = 0
    Top = 264
    Width = 461
    Height = 323
    Align = alBottom
    TabOrder = 1
    DesignSize = (
      461
      323)
    object Label4: TLabel
      Left = 394
      Top = 34
      Width = 47
      Height = 13
      Anchors = [akTop, akRight]
      Caption = #1578#1608#1590#1610#1581#1575#1578' :'
    end
    object Label6: TLabel
      Left = 394
      Top = 8
      Width = 56
      Height = 13
      Anchors = [akTop, akRight]
      Caption = #1593#1606#1608#1575#1606' '#1711#1585#1608#1607' :'
    end
    object Label1: TLabel
      Left = 307
      Top = 61
      Width = 142
      Height = 13
      Anchors = [akTop, akRight]
      Caption = #1578#1593#1610#1610#1606' '#1593#1590#1608#1607#1575#1610' '#1610#1705' '#1711#1585#1608#1607' '#1705#1575#1585#1610' :'
    end
    object DBEDescript: TDBEdit
      Left = 7
      Top = 34
      Width = 381
      Height = 21
      Anchors = [akLeft, akTop, akRight]
      Ctl3D = True
      DataField = 'Descript'
      DataSource = DMWorkGroup.DSWorkGroup
      ParentCtl3D = False
      TabOrder = 1
    end
    object DBETitle: TDBEdit
      Left = 157
      Top = 8
      Width = 231
      Height = 21
      Anchors = [akTop, akRight]
      DataField = 'Title'
      DataSource = DMWorkGroup.DSWorkGroup
      TabOrder = 0
    end
    object OrgList: TYchecklistBox
      Left = 8
      Top = 107
      Width = 449
      Height = 207
      TabStop = False
      Anchors = [akLeft, akTop, akRight]
      BevelInner = bvNone
      Columns = 1
      Ctl3D = False
      Enabled = False
      ItemHeight = 13
      ParentCtl3D = False
      TabOrder = 2
      Visible = False
      Ydataset = DMWorkGroup.FromOrganizations
      TitleField = 'title'
      IDField = 'id'
      OnChecked = OrgListChecked
      OnNeedCheck = OrgListNeedCheck
      ClearInDb = OrgListClearInDb
    end
    object Edit1: TEdit
      Left = 256
      Top = 80
      Width = 193
      Height = 21
      TabOrder = 3
      Text = #1580#1607#1578' '#1580#1587#1578#1580#1608' '#1606#1575#1605' '#1610#1575' '#1587#1605#1578' '#1585#1575' '#1608#1575#1585#1583' '#1705#1606#1610#1583
      OnChange = Edit1Change
      OnClick = Edit1Click
    end
    object DBAdvGrid1: TDBAdvGrid
      Left = 88
      Top = 106
      Width = 449
      Height = 215
      Cursor = crDefault
      ColCount = 3
      RowCount = 17
      FixedRows = 1
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      ScrollBars = ssBoth
      TabOrder = 4
      HoverRowCells = [hcNormal, hcSelected]
      ActiveCellFont.Charset = DEFAULT_CHARSET
      ActiveCellFont.Color = clWindowText
      ActiveCellFont.Height = -11
      ActiveCellFont.Name = 'Tahoma'
      ActiveCellFont.Style = [fsBold]
      ControlLook.FixedGradientHoverFrom = clGray
      ControlLook.FixedGradientHoverTo = clWhite
      ControlLook.FixedGradientDownFrom = clGray
      ControlLook.FixedGradientDownTo = clSilver
      ControlLook.DropDownHeader.Font.Charset = DEFAULT_CHARSET
      ControlLook.DropDownHeader.Font.Color = clWindowText
      ControlLook.DropDownHeader.Font.Height = -11
      ControlLook.DropDownHeader.Font.Name = 'Tahoma'
      ControlLook.DropDownHeader.Font.Style = []
      ControlLook.DropDownHeader.Visible = True
      ControlLook.DropDownHeader.Buttons = <>
      ControlLook.DropDownFooter.Font.Charset = DEFAULT_CHARSET
      ControlLook.DropDownFooter.Font.Color = clWindowText
      ControlLook.DropDownFooter.Font.Height = -11
      ControlLook.DropDownFooter.Font.Name = 'MS Sans Serif'
      ControlLook.DropDownFooter.Font.Style = []
      ControlLook.DropDownFooter.Visible = True
      ControlLook.DropDownFooter.Buttons = <>
      Filter = <>
      FilterDropDown.Font.Charset = DEFAULT_CHARSET
      FilterDropDown.Font.Color = clWindowText
      FilterDropDown.Font.Height = -11
      FilterDropDown.Font.Name = 'MS Sans Serif'
      FilterDropDown.Font.Style = []
      FilterDropDown.TextChecked = 'Checked'
      FilterDropDown.TextUnChecked = 'Unchecked'
      FilterDropDownClear = '(All)'
      FilterEdit.TypeNames.Strings = (
        'Starts with'
        'Ends with'
        'Contains'
        'Not contains'
        'Equal'
        'Not equal'
        'Clear')
      FixedColWidth = 1
      FixedRowHeight = 22
      FixedFont.Charset = DEFAULT_CHARSET
      FixedFont.Color = clWindowText
      FixedFont.Height = -11
      FixedFont.Name = 'Tahoma'
      FixedFont.Style = [fsBold]
      FloatFormat = '%.2f'
      HoverButtons.Buttons = <>
      HoverButtons.Position = hbLeftFromColumnLeft
      PrintSettings.DateFormat = 'dd/mm/yyyy'
      PrintSettings.Font.Charset = DEFAULT_CHARSET
      PrintSettings.Font.Color = clWindowText
      PrintSettings.Font.Height = -11
      PrintSettings.Font.Name = 'MS Sans Serif'
      PrintSettings.Font.Style = []
      PrintSettings.FixedFont.Charset = DEFAULT_CHARSET
      PrintSettings.FixedFont.Color = clWindowText
      PrintSettings.FixedFont.Height = -11
      PrintSettings.FixedFont.Name = 'MS Sans Serif'
      PrintSettings.FixedFont.Style = []
      PrintSettings.HeaderFont.Charset = DEFAULT_CHARSET
      PrintSettings.HeaderFont.Color = clWindowText
      PrintSettings.HeaderFont.Height = -11
      PrintSettings.HeaderFont.Name = 'MS Sans Serif'
      PrintSettings.HeaderFont.Style = []
      PrintSettings.FooterFont.Charset = DEFAULT_CHARSET
      PrintSettings.FooterFont.Color = clWindowText
      PrintSettings.FooterFont.Height = -11
      PrintSettings.FooterFont.Name = 'MS Sans Serif'
      PrintSettings.FooterFont.Style = []
      PrintSettings.PageNumSep = '/'
      SearchFooter.FindNextCaption = 'Find &next'
      SearchFooter.FindPrevCaption = 'Find &previous'
      SearchFooter.Font.Charset = DEFAULT_CHARSET
      SearchFooter.Font.Color = clWindowText
      SearchFooter.Font.Height = -11
      SearchFooter.Font.Name = 'MS Sans Serif'
      SearchFooter.Font.Style = []
      SearchFooter.HighLightCaption = 'Highlight'
      SearchFooter.HintClose = 'Close'
      SearchFooter.HintFindNext = 'Find next occurrence'
      SearchFooter.HintFindPrev = 'Find previous occurrence'
      SearchFooter.HintHighlight = 'Highlight occurrences'
      SearchFooter.MatchCaseCaption = 'Match case'
      SortSettings.DefaultFormat = ssAutomatic
      Version = '2.3.6.21'
      AutoCreateColumns = True
      AutoRemoveColumns = True
      Columns = <
        item
          Borders = []
          BorderPen.Color = clSilver
          CheckFalse = 'N'
          CheckTrue = 'Y'
          Color = clWindow
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          HeaderFont.Charset = DEFAULT_CHARSET
          HeaderFont.Color = clWindowText
          HeaderFont.Height = -11
          HeaderFont.Name = 'Tahoma'
          HeaderFont.Style = []
          PrintBorders = [cbTop, cbLeft, cbRight, cbBottom]
          PrintFont.Charset = DEFAULT_CHARSET
          PrintFont.Color = clWindowText
          PrintFont.Height = -11
          PrintFont.Name = 'Tahoma'
          PrintFont.Style = []
          Width = 1
        end
        item
          Borders = []
          BorderPen.Color = clSilver
          CheckFalse = 'N'
          CheckTrue = 'Y'
          Color = clWindow
          FieldName = 'title'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          Header = #1606#1575#1605' '#1608' '#1587#1605#1578
          HeaderFont.Charset = DEFAULT_CHARSET
          HeaderFont.Color = clWindowText
          HeaderFont.Height = -11
          HeaderFont.Name = 'Tahoma'
          HeaderFont.Style = []
          Name = 'title'
          PrintBorders = [cbTop, cbLeft, cbRight, cbBottom]
          PrintFont.Charset = DEFAULT_CHARSET
          PrintFont.Color = clWindowText
          PrintFont.Height = -11
          PrintFont.Name = 'Tahoma'
          PrintFont.Style = []
          Width = 370
        end
        item
          Borders = []
          BorderPen.Color = clSilver
          CheckBoxField = True
          CheckFalse = 'False'
          CheckTrue = 'True'
          Color = clWindow
          Editor = edCheckBox
          FieldName = 'Selected'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          Header = #1575#1606#1578#1582#1575#1576
          HeaderFont.Charset = DEFAULT_CHARSET
          HeaderFont.Color = clWindowText
          HeaderFont.Height = -11
          HeaderFont.Name = 'Tahoma'
          HeaderFont.Style = []
          PrintBorders = [cbTop, cbLeft, cbRight, cbBottom]
          PrintFont.Charset = DEFAULT_CHARSET
          PrintFont.Color = clWindowText
          PrintFont.Height = -11
          PrintFont.Name = 'Tahoma'
          PrintFont.Style = []
          Width = 45
        end>
      DataSource = DataSource2
      InvalidPicture.Data = {
        055449636F6E0000010001002020040000000000E80200001600000028000000
        2000000040000000010004000000000000020000000000000000000000000000
        0000000000000000000080000080000000808000800000008000800080800000
        80808000C0C0C0000000FF0000FF000000FFFF00FF000000FF00FF00FFFF0000
        FFFFFF000000000000777777777777000000000000000000777788FFFF887777
        000000000000007778F8887117788F877700000000000778F87111111111178F
        877000000000778871111111111999178877000000077F811111111111199999
        18F7700000778811111111111119999991887700007881111111111111119199
        99188700077F711111811111111198719997F7700788111118FF111111118FF7
        1991887077F71111888FF1111118FFFF19997F77778111118888FF1111888FF8
        911918777881111118888FF1188888811111188778811111118888FF88888811
        111117877F7111111118888888888111111117F77F7999111111888888881111
        111111F77F7999991111788888F71111111111F77F7999999917888888FF7111
        111117F778879999917FFF88888FF111111117877887999997FFFFF88888FF11
        11111887778799997FFFFFF798888FF11111187777F87997FFFFFF71178F88FF
        71117F7707887997FFFFF7999978F88871118870077F87997FFF799999978F87
        1117F77000788879978799999999787111188700007788879999999999999999
        1188770000077F88799999999999999778F77000000077888879999999999778
        8877000000000778F88877799777788F877000000000007778F8888878888F87
        7700000000000000777788FFFF88777700000000000000000077777777777700
        00000000FFC003FFFF0000FFFC00003FF800001FF000000FE0000007C0000003
        C000000380000001800000010000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000080000001
        80000001C0000003C0000003E0000007F000000FF800001FFC00003FFF0000FF
        FFC003FF}
      ShowUnicode = False
      ColWidths = (
        1
        370
        45)
    end
    object Button1: TButton
      Left = 168
      Top = 80
      Width = 75
      Height = 25
      Caption = #1584#1582#1610#1585#1607
      TabOrder = 5
      OnClick = Button1Click
    end
  end
  object Panel2: TPanel
    Left = 0
    Top = 0
    Width = 461
    Height = 32
    Align = alTop
    BevelOuter = bvNone
    Ctl3D = True
    ParentCtl3D = False
    TabOrder = 2
    DesignSize = (
      461
      32)
    object ActionToolBar1: TActionToolBar
      Left = 97
      Top = 2
      Width = 359
      Height = 28
      ActionManager = ActionManager
      Align = alNone
      Anchors = [akTop, akRight]
      BiDiMode = bdLeftToRight
      Caption = 'ActionToolBar1'
      ColorMap.HighlightColor = clWhite
      ColorMap.BtnSelectedColor = clBtnFace
      ColorMap.UnusedColor = clWhite
      ParentBiDiMode = False
      Spacing = 0
    end
  end
  object Panel4: TPanel
    Left = 0
    Top = 32
    Width = 461
    Height = 232
    Align = alClient
    TabOrder = 3
    object YDBGrid1: TYDBGrid
      Left = 1
      Top = 1
      Width = 459
      Height = 230
      Cursor = crHandPoint
      Align = alClient
      DataSource = DMWorkGroup.DSWorkGroup
      Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit]
      ReadOnly = True
      TabOrder = 0
      TitleFont.Charset = ARABIC_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'Tahoma'
      TitleFont.Style = []
      OnCellClick = YDBGrid1CellClick
      OnKeyUp = YDBGrid1KeyUp
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
      FooterFields = 'Count'
      Columns = <
        item
          Expanded = False
          FieldName = 'Title'
          Title.Alignment = taCenter
          Title.Caption = #1593#1606#1608#1575#1606' '#1711#1585#1608#1607
          Width = 174
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'Descript'
          Title.Alignment = taCenter
          Title.Caption = #1578#1608#1590#1610#1581#1575#1578
          Width = 199
          Visible = True
        end>
    end
  end
  object ActionManager: TActionManager
    ActionBars.SessionCount = 262
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
              end>
            Caption = #1578#1594#1610#1610#1585#1575#1578
          end
          item
            Caption = #1606#1575#1605#1607
          end
          item
            Caption = #1587#1610#1587#1578#1605
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
            ShortCut = 16474
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
            LastSession = 262
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
      end
      item
      end
      item
        Items = <
          item
            Action = DataSetCancel
            ImageIndex = 6
            ShortCut = 32776
          end
          item
            Action = DataSetPost
            ImageIndex = 32
            ShortCut = 113
          end
          item
            Action = DataSetEdit
            ImageIndex = 9
            ShortCut = 115
          end
          item
            Action = DataSetInsert
            ImageIndex = 14
            ShortCut = 45
          end>
      end
      item
      end
      item
      end
      item
      end
      item
        Items = <
          item
            Action = DataSetPrior1
            ImageIndex = 19
            LastSession = 262
          end
          item
            Action = DataSetNext1
            ImageIndex = 16
            LastSession = 262
          end
          item
            Action = DataSetCancel
            ImageIndex = 6
            ShortCut = 32776
          end
          item
            Action = DataSetPost
            ImageIndex = 32
            ShortCut = 113
          end
          item
            Action = DataSetEdit
            ImageIndex = 9
            ShortCut = 115
          end
          item
            Action = DataSetInsert
            ImageIndex = 14
            ShortCut = 45
          end>
      end
      item
        Items = <
          item
            Action = DataSetPrior1
            ImageIndex = 19
            LastSession = 262
          end
          item
            Action = DataSetNext1
            ImageIndex = 16
            LastSession = 262
          end
          item
            Action = DataSetCancel
            ImageIndex = 6
            LastSession = 262
            ShortCut = 32776
          end
          item
            Action = DataSetPost
            ImageIndex = 32
            LastSession = 262
            ShortCut = 113
          end
          item
            Action = DataSetEdit
            ImageIndex = 9
            LastSession = 262
            ShortCut = 115
          end
          item
            Action = DataSetInsert
            ImageIndex = 14
            ShortCut = 45
          end>
      end
      item
        Items = <
          item
            Action = DataSetPrior1
            ImageIndex = 19
            LastSession = 262
          end
          item
            Action = DataSetNext1
            ImageIndex = 16
            LastSession = 262
          end
          item
            Action = DataSetCancel
            ImageIndex = 6
            LastSession = 262
            ShortCut = 32776
          end
          item
            Action = DataSetPost
            ImageIndex = 32
            LastSession = 262
            ShortCut = 113
          end
          item
            Action = DataSetEdit
            ImageIndex = 9
            LastSession = 262
            ShortCut = 115
          end
          item
            Action = DataSetInsert
            ImageIndex = 14
            ShortCut = 45
          end>
      end
      item
        Items = <
          item
            Action = DataSetPrior1
            ImageIndex = 19
            LastSession = 262
          end
          item
            Action = DataSetNext1
            ImageIndex = 16
            LastSession = 262
          end
          item
            Action = DataSetCancel
            ImageIndex = 6
            LastSession = 262
            ShortCut = 32776
          end
          item
            Action = DataSetPost
            ImageIndex = 32
            LastSession = 262
            ShortCut = 113
          end
          item
            Action = DataSetEdit
            ImageIndex = 9
            LastSession = 262
            ShortCut = 115
          end
          item
            Action = DataSetInsert
            ImageIndex = 14
            ShortCut = 45
          end>
      end
      item
        Items = <
          item
            Action = DataSetPrior1
            ImageIndex = 19
            LastSession = 262
          end
          item
            Action = DataSetNext1
            ImageIndex = 16
            LastSession = 262
          end
          item
            Caption = '-'
            LastSession = 262
          end
          item
            Action = DataSetCancel
            ImageIndex = 6
            LastSession = 262
            ShortCut = 32776
          end
          item
            Action = DataSetEdit
            ImageIndex = 9
            LastSession = 262
            ShortCut = 115
          end
          item
            Action = DataSetInsert
            ImageIndex = 14
            ShortCut = 45
          end>
        ActionBar = ActionToolBar1
      end>
    Images = Dm.LetterImages
    Left = 152
    Top = 102
    StyleName = 'XP Style'
    object DataSetPrior1: TDataSetPrior
      Category = #1578#1594#1610#1610#1585#1575#1578
      Caption = #1602#1576#1604#1610
      ImageIndex = 19
      OnExecute = DataSetPrior1Execute
      DataSource = DMWorkGroup.DSWorkGroup
    end
    object DataSetNext1: TDataSetNext
      Category = #1578#1594#1610#1610#1585#1575#1578
      Caption = #1576#1593#1583#1610
      ImageIndex = 16
      OnExecute = DataSetNext1Execute
      DataSource = DMWorkGroup.DSWorkGroup
    end
    object DataSetInsert: TDataSetInsert
      Tag = 1
      Category = #1578#1594#1610#1610#1585#1575#1578
      Caption = #1580#1583#1610#1583
      Hint = 'Insert'
      ImageIndex = 14
      ShortCut = 45
      OnExecute = DataSetInsertExecute
      DataSource = DMWorkGroup.DSWorkGroup
    end
    object DataSetEdit: TDataSetEdit
      Tag = 3
      Category = #1578#1594#1610#1610#1585#1575#1578
      Caption = #1608#1610#1585#1575#1610#1588' '
      Hint = 'Edit'
      ImageIndex = 9
      ShortCut = 115
      DataSource = DMWorkGroup.DSWorkGroup
    end
    object DataSetPost: TDataSetPost
      Tag = 4
      Category = #1578#1594#1610#1610#1585#1575#1578
      Caption = #1584#1582#1610#1585#1607
      Hint = 'Post'
      ImageIndex = 32
      ShortCut = 113
      DataSource = DMWorkGroup.DSWorkGroup
    end
    object DataSetCancel: TDataSetCancel
      Tag = 5
      Category = #1578#1594#1610#1610#1585#1575#1578
      Caption = #1575#1606#1589#1585#1575#1601
      Hint = 'Cancel'
      ImageIndex = 6
      ShortCut = 32776
      OnExecute = DataSetCancelExecute
      DataSource = DMWorkGroup.DSWorkGroup
    end
  end
  object DataSource1: TDataSource
    Left = 232
    Top = 408
  end
  object ADOQuery1: TADOQuery
    Parameters = <>
    Left = 208
    Top = 384
  end
  object DataSource2: TDataSource
    DataSet = ADOQuery1
    Left = 272
    Top = 384
  end
end
