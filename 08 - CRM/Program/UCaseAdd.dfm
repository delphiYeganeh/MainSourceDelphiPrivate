inherited frCaseAdd: TfrCaseAdd
  Left = 283
  Top = 103
  Width = 910
  Height = 555
  Caption = ''
  OldCreateOrder = True
  PixelsPerInch = 96
  TextHeight = 13
  object pnlbtn: TPanel [0]
    Left = 0
    Top = 371
    Width = 902
    Height = 150
    Align = alBottom
    TabOrder = 0
    object btnCancel: TBitBtn
      Left = 4
      Top = 111
      Width = 98
      Height = 32
      Cancel = True
      Caption = #1575#1606#1589#1585#1575#1601
      ModalResult = 2
      TabOrder = 0
      Glyph.Data = {
        DE010000424DDE01000000000000760000002800000024000000120000000100
        0400000000006801000000000000000000001000000000000000000000000000
        80000080000000808000800000008000800080800000C0C0C000808080000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
        333333333333333333333333000033338833333333333333333F333333333333
        0000333911833333983333333388F333333F3333000033391118333911833333
        38F38F333F88F33300003339111183911118333338F338F3F8338F3300003333
        911118111118333338F3338F833338F3000033333911111111833333338F3338
        3333F8330000333333911111183333333338F333333F83330000333333311111
        8333333333338F3333383333000033333339111183333333333338F333833333
        00003333339111118333333333333833338F3333000033333911181118333333
        33338333338F333300003333911183911183333333383338F338F33300003333
        9118333911183333338F33838F338F33000033333913333391113333338FF833
        38F338F300003333333333333919333333388333338FFF830000333333333333
        3333333333333333333888330000333333333333333333333333333333333333
        0000}
      NumGlyphs = 2
    end
    object btnAddAttachment: TBitBtn
      Left = 104
      Top = 111
      Width = 98
      Height = 32
      Caption = #1662#1610#1608#1587#1578' '#1607#1575#1610' '#1603#1575#1585
      TabOrder = 1
      OnClick = btnAddAttachmentClick
    end
    object btnDelBR2: TBitBtn
      Left = 203
      Top = 111
      Width = 98
      Height = 32
      Caption = #1581#1584#1601' '#1603#1575#1585
      TabOrder = 2
      OnClick = btnDelBR2Click
      Glyph.Data = {
        56010000424D560100000000000036000000280000000F000000060000000100
        18000000000020010000120B0000120B00000000000000000000BEBEEBA0A0E2
        A1A1E5A2A2E5A2A2E6A1A1E5A1A1E5A1A1E4A1A1E4A1A1E5A2A2E6A2A2E6A1A1
        E5A1A1E3CCCCEF0000004545CE0808BA1515C11313C11313C11313C01313C013
        13BF1313C01313C01313C11313C11515C00404B56D6DD40000004444DB2727E4
        6363EF5656EE5858EF5757EE5757EE5757ED5757ED5757EE5858EF5656EF6565
        ED1C1CC56969D40000004141DF4D4DF3A3A3FF8D8DFF9191FF9090FF9090FF8F
        8FFE9090FE9090FF9090FF9393FF8282FF1A1ACE6868D20000004444DE1616E2
        2C2CEA2727EA2828EA2828E92828E92828E82828E82828E92828EA2A2AEA2020
        EA0303C96D6DD5000000BFBFF29D9DED9B9BEE9C9CEE9D9DEF9B9BEE9B9BEE9B
        9BED9B9BED9B9BEE9C9CEF9C9CEF9F9FEEA1A1EACCCCF1000000}
    end
    object grbEdit: TGroupBox
      Left = 312
      Top = 1
      Width = 589
      Height = 148
      Align = alRight
      Caption = '   '#1608#1610#1585#1575#1610#1588' '
      Enabled = False
      TabOrder = 3
      object Label38: TLabel
        Left = 537
        Top = 18
        Width = 34
        Height = 13
        Caption = #1608#1590#1593#1610#1578
        Transparent = True
      end
      object Label5: TLabel
        Left = 531
        Top = 42
        Width = 23
        Height = 13
        Caption = #1588#1585#1581
      end
      object dblCaseStatus: TDBLookupComboBox
        Left = 399
        Top = 14
        Width = 128
        Height = 21
        BiDiMode = bdLeftToRight
        DataField = 'StatusID'
        DataSource = DSForm
        KeyField = 'TaskStatusID'
        ListField = 'TaskStatusTitle'
        ListSource = Dm.DsTaskStatus
        ParentBiDiMode = False
        TabOrder = 0
      end
      object DBMemo2: TDBMemo
        Left = 8
        Top = 40
        Width = 520
        Height = 105
        Color = clWhite
        DataField = 'Comment'
        DataSource = DSForm
        TabOrder = 1
      end
    end
    object btnAddTask: TBitBtn
      Left = 6
      Top = 6
      Width = 98
      Height = 32
      Caption = #1579#1576#1578' '#1603#1575#1585
      TabOrder = 4
      Visible = False
      OnClick = btnAddTaskClick
      Glyph.Data = {
        DE010000424DDE01000000000000760000002800000024000000120000000100
        0400000000006801000000000000000000001000000000000000000000000000
        80000080000000808000800000008000800080800000C0C0C000808080000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
        3333333333333333333333330000333333333333333333333333F33333333333
        00003333344333333333333333388F3333333333000033334224333333333333
        338338F3333333330000333422224333333333333833338F3333333300003342
        222224333333333383333338F3333333000034222A22224333333338F338F333
        8F33333300003222A3A2224333333338F3838F338F33333300003A2A333A2224
        33333338F83338F338F33333000033A33333A222433333338333338F338F3333
        0000333333333A222433333333333338F338F33300003333333333A222433333
        333333338F338F33000033333333333A222433333333333338F338F300003333
        33333333A222433333333333338F338F00003333333333333A22433333333333
        3338F38F000033333333333333A223333333333333338F830000333333333333
        333A333333333333333338330000333333333333333333333333333333333333
        0000}
      NumGlyphs = 2
    end
  end
  object grbTasks: TGroupBox [1]
    Left = 0
    Top = 151
    Width = 902
    Height = 220
    Align = alClient
    Caption = '  '#1604#1610#1587#1578' '#1603#1575#1585#1607#1575'   '
    TabOrder = 1
    object YDBGrid1: TYDBGrid
      Left = 2
      Top = 15
      Width = 898
      Height = 203
      Cursor = crHandPoint
      Align = alClient
      DataSource = DSForm
      Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit]
      ReadOnly = True
      TabOrder = 0
      TitleFont.Charset = ARABIC_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'Tahoma'
      TitleFont.Style = []
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
      AutoInsert = True
      FooterFields = 'Count'
      Columns = <
        item
          Expanded = False
          FieldName = 'AssignedDate'
          ReadOnly = False
          Title.Alignment = taCenter
          Title.Caption = #1578#1575#1585#1610#1582' '#1575#1585#1580#1575#1593
          Width = 72
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'AssignedUser'
          ReadOnly = False
          Title.Alignment = taCenter
          Title.Caption = #1575#1585#1580#1575#1593' '#1576#1607
          Width = 168
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'Status'
          ReadOnly = False
          Title.Alignment = taCenter
          Title.Caption = #1608#1590#1593#1610#1578
          Width = 81
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'TodoDate'
          Title.Caption = #1578#1575#1585#1610#1582' '#1608#1575#1602#1593#1610' '#1575#1606#1580#1575#1605
          Width = 96
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'EstimatedDate'
          ReadOnly = False
          Title.Alignment = taCenter
          Title.Caption = #1578#1575#1585#1610#1582' '#1575#1606#1580#1575#1605
          Width = 80
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'Comment'
          ReadOnly = False
          Title.Caption = #1588#1585#1581
          Width = 337
          Visible = True
        end>
    end
  end
  object xpPanel1: TxpPanel [2]
    Left = 0
    Top = 120
    Width = 902
    Height = 31
    StartColor = 16511469
    EndColor = 16244694
    FillDirection = fdLeftToRight
    Caption = 'xpPanel'
    Minimized = True
    Title = #1580#1587#1578#1580#1608
    TitleFont.Charset = ARABIC_CHARSET
    TitleFont.Color = clNavy
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
    TitleAlignment = taRightJustify
    TitleStartColor = clWhite
    TitleEndColor = 15777194
    TitleColor = clWhite
    TitleFillDirect = fdLeftToRight
    TitleImageAlign = tiaLeft
    TitleButtons = [tbMinimize]
    DefaultHeight = 60
    BorderColor = clWhite
    BGImageAlign = iaStretch
    Align = alTop
    TabOrder = 2
  end
  object grbCase: TGroupBox [3]
    Left = 0
    Top = 0
    Width = 902
    Height = 120
    Align = alTop
    Caption = '  '#1605#1608#1585#1583'   '
    TabOrder = 3
    object Label27: TLabel
      Left = 584
      Top = 20
      Width = 53
      Height = 13
      Caption = #1593#1606#1608#1575#1606' '#1605#1608#1585#1583':'
      Transparent = True
    end
    object Label1: TLabel
      Left = 188
      Top = 20
      Width = 34
      Height = 13
      Caption = #1605#1581#1589#1608#1604
      Transparent = True
    end
    object Label2: TLabel
      Left = 191
      Top = 47
      Width = 15
      Height = 13
      Caption = #1606#1608#1593
      Transparent = True
    end
    object Label26: TLabel
      Left = 188
      Top = 73
      Width = 31
      Height = 13
      Caption = #1575#1608#1604#1608#1610#1578' '
      Transparent = True
    end
    object Label3: TLabel
      Left = 842
      Top = 44
      Width = 27
      Height = 13
      Caption = #1588#1585#1581':'
      Transparent = True
    end
    object Label4: TLabel
      Left = 842
      Top = 20
      Width = 38
      Height = 13
      Caption = #1705#1583' '#1605#1608#1585#1583':'
      Transparent = True
    end
    object dblProduct: TDBLookupComboBox
      Left = 6
      Top = 16
      Width = 183
      Height = 21
      BiDiMode = bdLeftToRight
      Color = clCream
      DataField = 'ProductID'
      KeyField = 'ProductID'
      ListField = 'ProductTitle'
      ListSource = Dm.DProduct
      ParentBiDiMode = False
      ReadOnly = True
      TabOrder = 0
    end
    object edtCaseTitle: TEdit
      Left = 229
      Top = 16
      Width = 353
      Height = 21
      Color = clCream
      ReadOnly = True
      TabOrder = 1
      Text = 'edtCaseTitle'
    end
    object dblCaseType: TDBLookupComboBox
      Left = 7
      Top = 43
      Width = 182
      Height = 21
      BiDiMode = bdLeftToRight
      Color = clCream
      KeyField = 'CaseTypeID'
      ListField = 'CaseTypeTitle'
      ListSource = Dm.DsCaseType
      ParentBiDiMode = False
      ReadOnly = True
      TabOrder = 2
    end
    object dblPriority: TDBLookupComboBox
      Left = 7
      Top = 69
      Width = 182
      Height = 21
      BiDiMode = bdLeftToRight
      Color = clCream
      DataField = 'CasePriorityId'
      KeyField = 'CasePriorityID'
      ListField = 'CasePriorityTitle'
      ListSource = Dm.dsCasePriority
      ParentBiDiMode = False
      ReadOnly = True
      TabOrder = 3
    end
    object edtCaseID: TEdit
      Left = 688
      Top = 16
      Width = 153
      Height = 21
      Color = clCream
      ReadOnly = True
      TabOrder = 4
      Text = 'edtCaseTitle'
    end
    object CaseCommentM: TMemo
      Left = 230
      Top = 40
      Width = 612
      Height = 73
      Color = clCream
      ReadOnly = True
      ScrollBars = ssVertical
      TabOrder = 5
    end
  end
  inherited DSForm: TDataSource
    DataSet = Spselect_Tasks
    Left = 296
    Top = 328
  end
  inherited ActionList: TActionList
    Left = 120
    Top = 112
  end
  object Spselect_Tasks: TADOStoredProc
    Connection = Dm.YeganehConnection
    CursorType = ctStatic
    AfterScroll = Spselect_TasksAfterScroll
    BeforeRefresh = Spselect_TasksBeforeRefresh
    ProcedureName = 'select_Tasks'
    Parameters = <
      item
        Name = '@RETURN_VALUE'
        DataType = ftInteger
        Direction = pdReturnValue
        Precision = 10
        Value = 0
      end
      item
        Name = '@CaseID'
        Attributes = [paNullable]
        DataType = ftInteger
        Precision = 10
        Value = Null
      end>
    Left = 304
    Top = 344
    object Spselect_TasksComment: TWideStringField
      FieldName = 'Comment'
      Size = 200
    end
    object Spselect_TasksStatusId: TIntegerField
      FieldName = 'StatusId'
    end
    object Spselect_TasksAssignedUserId: TIntegerField
      FieldName = 'AssignedUserId'
    end
    object Spselect_TasksAssignedDate: TWideStringField
      FieldName = 'AssignedDate'
      FixedChar = True
      Size = 10
    end
    object Spselect_TasksEstimatedDate: TWideStringField
      FieldName = 'EstimatedDate'
      FixedChar = True
      Size = 10
    end
    object Spselect_TasksStatus: TStringField
      FieldKind = fkLookup
      FieldName = 'Status'
      LookupDataSet = Dm.tblTaskStatus
      LookupKeyFields = 'TaskStatusID'
      LookupResultField = 'TaskStatusTitle'
      KeyFields = 'StatusId'
      Size = 500
      Lookup = True
    end
    object Spselect_TasksAssignedUser: TStringField
      FieldKind = fkLookup
      FieldName = 'AssignedUser'
      LookupDataSet = Dm.User
      LookupKeyFields = 'Id'
      LookupResultField = 'Title'
      KeyFields = 'AssignedUserId'
      Size = 200
      Lookup = True
    end
    object Spselect_TasksTaskID: TAutoIncField
      FieldName = 'TaskID'
      ReadOnly = True
    end
    object Spselect_TasksCaseId: TIntegerField
      FieldName = 'CaseId'
    end
    object Spselect_TasksTodoDate: TWideStringField
      FieldName = 'TodoDate'
      FixedChar = True
      Size = 10
    end
  end
end
