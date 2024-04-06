object FMWorkGroup: TFMWorkGroup
  Left = 638
  Top = 172
  BiDiMode = bdRightToLeft
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = #1601#1585#1605' '#1578#1593#1585#1610#1601' '#1711#1585#1608#1607' '#1705#1575#1585#1610
  ClientHeight = 550
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
  OnCreate = FormCreate
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Panel3: TPanel
    Left = 0
    Top = 509
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
    Top = 221
    Width = 461
    Height = 288
    Align = alBottom
    TabOrder = 1
    DesignSize = (
      461
      288)
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
      Top = 76
      Width = 444
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
      Ydataset = DMWorkGroup.FromOrganizations
      TitleField = 'title'
      IDField = 'id'
      OnChecked = OrgListChecked
      OnNeedCheck = OrgListNeedCheck
      ClearInDb = OrgListClearInDb
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
      ColorMap.HighlightColor = 15660791
      ColorMap.BtnSelectedColor = clBtnFace
      ColorMap.UnusedColor = 15660791
      ParentBiDiMode = False
      Spacing = 0
    end
  end
  object Panel4: TPanel
    Left = 0
    Top = 32
    Width = 461
    Height = 189
    Align = alClient
    TabOrder = 3
    object YDBGrid1: TYDBGrid
      Left = 1
      Top = 1
      Width = 459
      Height = 187
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
      OnExecute = DataSetEditExecute
      DataSource = DMWorkGroup.DSWorkGroup
    end
    object DataSetPost: TDataSetPost
      Tag = 4
      Category = #1578#1594#1610#1610#1585#1575#1578
      Caption = #1584#1582#1610#1585#1607
      Hint = 'Post'
      ImageIndex = 32
      ShortCut = 113
      OnExecute = DataSetPostExecute
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
end
