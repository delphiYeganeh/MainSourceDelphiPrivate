inherited FrFollowUp: TFrFollowUp
  Left = 699
  Top = 366
  Caption = #1662#1610#1711#1610#1585#1610
  ClientHeight = 511
  ClientWidth = 712
  Constraints.MinHeight = 490
  Constraints.MinWidth = 520
  OldCreateOrder = True
  PixelsPerInch = 96
  TextHeight = 13
  object BitBtn1: TBitBtn [0]
    Left = 8
    Top = 482
    Width = 80
    Height = 25
    Cursor = crHandPoint
    Anchors = [akLeft, akBottom]
    Caption = #1582#1585#1608#1580
    ModalResult = 1
    TabOrder = 4
    OnClick = BitBtn1Click
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
  object GroupBox3: TPanel [1]
    Left = 0
    Top = 0
    Width = 712
    Height = 158
    Align = alTop
    TabOrder = 0
    object Panel1: TGroupBox
      Left = 1
      Top = 1
      Width = 710
      Height = 155
      Align = alTop
      Caption = #1575#1602#1583#1575#1605' '#1580#1575#1585#1610
      Color = 12771042
      ParentColor = False
      TabOrder = 0
      DesignSize = (
        710
        155)
      object Label6: TLabel
        Left = 637
        Top = 72
        Width = 43
        Height = 13
        Anchors = [akTop, akRight]
        Caption = #1578#1608#1590#1610#1581#1575#1578' '
      end
      object Label7: TLabel
        Left = 637
        Top = 48
        Width = 47
        Height = 13
        Anchors = [akTop, akRight]
        Caption = #1578#1575#1585#1610#1582' '#1575#1606#1580#1575#1605
        FocusControl = DBEdit7
      end
      object Label11: TLabel
        Left = 265
        Top = 50
        Width = 57
        Height = 13
        Anchors = [akTop, akRight]
        Caption = #1587#1575#1593#1578' '#1575#1606#1580#1575#1605
        FocusControl = DBEdit11
      end
      object Label12: TLabel
        Left = 637
        Top = 24
        Width = 42
        Height = 13
        Anchors = [akTop, akRight]
        Caption = #1606#1608#1593' '#1575#1602#1583#1575#1605
        FocusControl = FollowTypeCombo
      end
      object SpeedButton3: TSpeedButton
        Left = 496
        Top = 48
        Width = 21
        Height = 21
        Cursor = crHandPoint
        Anchors = [akTop, akRight]
        Caption = '+'
        OnClick = SpeedButton3Click
      end
      object SpeedButton4: TSpeedButton
        Left = 472
        Top = 48
        Width = 21
        Height = 21
        Cursor = crHandPoint
        Anchors = [akTop, akRight]
        Caption = '-'
        Font.Charset = ARABIC_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        OnClick = SpeedButton4Click
      end
      object DayinWeek: TLabel
        Left = 450
        Top = 51
        Width = 12
        Height = 13
        Anchors = [akTop, akRight]
        Caption = '    '
      end
      object DBEdit7: TDBShamsiDateEdit
        Left = 521
        Top = 47
        Width = 112
        Height = 21
        Anchors = [akTop, akRight]
        CheckValidity = True
        ShowMsg = False
        DataField = 'ToDoDate'
        DataSource = DSForm
        TabOrder = 1
        OnChange = DBEdit7Change
      end
      object DBEdit11: TDBEdit
        Left = 214
        Top = 48
        Width = 47
        Height = 21
        Anchors = [akTop, akRight]
        DataField = 'ToDoTime'
        DataSource = DSForm
        TabOrder = 2
      end
      object FollowTypeCombo: TDBLookupComboBox
        Left = 381
        Top = 20
        Width = 252
        Height = 21
        Anchors = [akTop, akRight]
        BiDiMode = bdLeftToRight
        DataField = 'FollowupTypeTitle'
        DataSource = DSForm
        DropDownRows = 12
        ParentBiDiMode = False
        TabOrder = 0
      end
      object DBMemo1: TDBMemo
        Left = 212
        Top = 77
        Width = 422
        Height = 70
        Anchors = [akTop, akRight]
        DataField = 'Comment'
        DataSource = DSForm
        TabOrder = 3
      end
    end
  end
  object DonePanel: TGroupBox [2]
    Left = 0
    Top = 158
    Width = 712
    Height = 99
    Align = alTop
    Caption = #1575#1606#1580#1575#1605': '
    TabOrder = 1
    DesignSize = (
      712
      99)
    object Label3: TLabel
      Left = 637
      Top = 21
      Width = 60
      Height = 13
      Anchors = [akTop, akRight]
      Caption = #1608#1590#1593#1610#1578' '#1575#1606#1580#1575#1605
    end
    object Label4: TLabel
      Left = 636
      Top = 44
      Width = 67
      Height = 13
      Anchors = [akTop, akRight]
      Caption = #1578#1608#1590#1610#1581#1575#1578' '#1575#1602#1583#1575#1605
    end
    object DBLookupComboBox2: TDBLookupComboBox
      Left = 497
      Top = 21
      Width = 137
      Height = 21
      Anchors = [akTop, akRight]
      BiDiMode = bdLeftToRight
      DataField = 'DoneStatusTitle'
      DataSource = DSForm
      ParentBiDiMode = False
      TabOrder = 0
    end
    object DBMemo2: TDBMemo
      Left = 211
      Top = 45
      Width = 422
      Height = 46
      Anchors = [akTop, akRight]
      DataField = 'DoneComment'
      DataSource = DSForm
      TabOrder = 1
    end
  end
  object Panel2: TPanel [3]
    Left = 0
    Top = 257
    Width = 712
    Height = 38
    Align = alTop
    BevelOuter = bvNone
    TabOrder = 2
    DesignSize = (
      712
      38)
    object BitBtn2: TBitBtn
      Left = 489
      Top = 7
      Width = 50
      Height = 25
      Cursor = crHandPoint
      Action = DataSetCancel1
      Anchors = [akTop, akRight]
      Caption = #1575#1606#1589#1585#1575#1601
      ModalResult = 2
      TabOrder = 0
      NumGlyphs = 2
    end
    object CBNext: TComboBox
      Left = 292
      Top = 9
      Width = 97
      Height = 21
      Anchors = [akTop, akRight]
      BiDiMode = bdLeftToRight
      ItemHeight = 13
      ParentBiDiMode = False
      TabOrder = 1
      Text = #1601#1585#1583#1575
      Items.Strings = (
        #1575#1605#1585#1608#1586
        #1601#1585#1583#1575
        #1662#1587' '#1601#1585#1583#1575
        #1587#1607' '#1585#1608#1586' '#1583#1610#1711#1585
        #1670#1607#1575#1585' '#1585#1608#1586' '#1583#1610#1711#1585
        #1575#1608#1604' '#1607#1601#1578#1607' '#1570#1610#1606#1583#1607' '
        #1610#1705' '#1607#1601#1578#1607' '#1583#1610#1711#1585
        #1583#1608' '#1607#1601#1578#1607' '#1583#1610#1711#1585
        #1610#1705' '#1605#1575#1607' '#1583#1610#1711#1585)
    end
    object BitBtn3: TBitBtn
      Left = 595
      Top = 7
      Width = 50
      Height = 25
      Cursor = crHandPoint
      Action = DataSetEdit1
      Anchors = [akTop, akRight]
      Caption = #1608#1610#1585#1575#1610#1588
      TabOrder = 2
    end
    object Button2: TBitBtn
      Left = 542
      Top = 7
      Width = 50
      Height = 25
      Cursor = crHandPoint
      Action = DataSetDelete1
      Anchors = [akTop, akRight]
      Caption = #1581#1584#1601
      TabOrder = 3
    end
    object BitBtn4: TBitBtn
      Left = 649
      Top = 7
      Width = 50
      Height = 25
      Cursor = crHandPoint
      Action = DataSetPost1
      Anchors = [akTop, akRight]
      Caption = #1584#1582#1610#1585#1607
      TabOrder = 4
    end
    object Button1: TButton
      Left = 396
      Top = 7
      Width = 75
      Height = 25
      Cursor = crHandPoint
      Anchors = [akTop, akRight]
      Caption = #1662#1610#1711#1610#1585#1610' '#1580#1583#1610#1583
      TabOrder = 5
      OnClick = Button1Click
    end
  end
  object GroupBox2: TGroupBox [4]
    Left = 0
    Top = 295
    Width = 712
    Height = 182
    Align = alTop
    Anchors = [akLeft, akTop, akRight, akBottom]
    Caption = #1705#1604' '#1575#1602#1583#1575#1605#1575#1578
    TabOrder = 3
    object YDBGrid3: TYDBGrid
      Left = 2
      Top = 15
      Width = 708
      Height = 165
      Cursor = crHandPoint
      TabStop = False
      Align = alClient
      DataSource = DSForm
      Font.Charset = ARABIC_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      ReadOnly = True
      TabOrder = 0
      TitleFont.Charset = ARABIC_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -13
      TitleFont.Name = 'Tahoma'
      TitleFont.Style = [fsBold]
      YeganehColor = False
      YeganehFinish = False
      PageNumber = False
      RecordNumber = False
      HasTime = False
      Oriention = poPortrait
      HasDate = False
      HasIndex = False
      PrintTitle = #1604#1610#1587#1578' '#1578#1607#1610#1607' '#1588#1583#1607' '#1578#1608#1587#1591' '#1606#1585#1605' '#1575#1601#1586#1575#1585' '#1610#1711#1575#1606#1607
      InvertFarsiDate = True
      TitleSort = True
      AutoInsert = False
      FooterFields = 'Count'
      Columns = <
        item
          Expanded = False
          FieldName = 'FollowupTypeTitle'
          Title.Caption = #1606#1608#1593' '#1575#1602#1583#1575#1605
          Title.Font.Charset = ARABIC_CHARSET
          Title.Font.Color = clWindowText
          Title.Font.Height = -11
          Title.Font.Name = 'Tahoma'
          Title.Font.Style = []
          Width = 100
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'ToDoDate'
          Title.Caption = #1578#1575#1585#1610#1582' '#1575#1606#1580#1575#1605
          Title.Font.Charset = ARABIC_CHARSET
          Title.Font.Color = clWindowText
          Title.Font.Height = -11
          Title.Font.Name = 'Tahoma'
          Title.Font.Style = []
          Width = 67
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'ToDoTime'
          Title.Caption = #1587#1575#1593#1578
          Title.Font.Charset = ARABIC_CHARSET
          Title.Font.Color = clWindowText
          Title.Font.Height = -11
          Title.Font.Name = 'Tahoma'
          Title.Font.Style = []
          Width = 46
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'Comment'
          Title.Caption = #1578#1608#1590#1610#1581
          Title.Font.Charset = ARABIC_CHARSET
          Title.Font.Color = clWindowText
          Title.Font.Height = -11
          Title.Font.Name = 'Tahoma'
          Title.Font.Style = []
          Width = 182
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'DoneComment'
          Title.Caption = #1578#1608#1590#1610#1581' '#1575#1606#1580#1575#1605' '
          Title.Font.Charset = ARABIC_CHARSET
          Title.Font.Color = clWindowText
          Title.Font.Height = -12
          Title.Font.Name = 'Tahoma'
          Title.Font.Style = [fsBold]
          Width = 173
          Visible = True
        end>
    end
  end
  inherited DSForm: TDataSource
    DataSet = Select_FollowUp_ByStart
    Left = 216
    Top = 408
  end
  inherited ActionList: TActionList
    Left = 408
    Top = 360
    object DataSetEdit1: TDataSetEdit
      Category = 'Dataset'
      Caption = #1608#1610#1585#1575#1610#1588
      DataSource = DSForm
    end
    object DataSetCancel1: TDataSetCancel
      Category = 'Dataset'
      Caption = #1575#1606#1589#1585#1575#1601
      DataSource = DSForm
    end
    object DataSetInsert1: TDataSetInsert
      Category = 'Dataset'
      Caption = #1575#1610#1580#1575#1583' '#1662#1610#1711#1610#1585#1610
      DataSource = DSForm
    end
    object DataSetDelete1: TDataSetDelete
      Category = 'Dataset'
      Caption = #1581#1584#1601
      DataSource = DSForm
    end
    object DataSetPost1: TDataSetPost
      Category = 'Dataset'
      Caption = #1584#1582#1610#1585#1607
      DataSource = DSForm
    end
  end
  object OpenDialog: TOpenDialog
    Left = 408
    Top = 408
  end
  object Select_FollowUp_ByStart: TADOStoredProc
    Connection = Dm.YeganehConnection
    CursorType = ctStatic
    AfterInsert = Select_FollowUp_ByStartAfterInsert
    AfterPost = Select_FollowUp_ByStartAfterPost
    AfterCancel = Select_FollowUp_ByStartAfterCancel
    ProcedureName = 'Select_FollowUp_ByStart;1'
    Parameters = <
      item
        Name = '@RETURN_VALUE'
        DataType = ftInteger
        Direction = pdReturnValue
        Precision = 10
        Value = Null
      end
      item
        Name = '@StartFollowUpID'
        Attributes = [paNullable]
        DataType = ftInteger
        Precision = 10
        Value = Null
      end>
    Left = 217
    Top = 360
    object Select_FollowUp_ByStartFollowUPID: TAutoIncField
      FieldName = 'FollowUPID'
      ReadOnly = True
    end
    object Select_FollowUp_ByStartFollowUPTypeID: TIntegerField
      FieldName = 'FollowUPTypeID'
    end
    object Select_FollowUp_ByStartDoneStatusID: TWordField
      FieldName = 'DoneStatusID'
    end
    object Select_FollowUp_ByStartUserID: TIntegerField
      FieldName = 'UserID'
    end
    object Select_FollowUp_ByStartComment: TWideStringField
      FieldName = 'Comment'
      Size = 255
    end
    object Select_FollowUp_ByStartToDoDate: TStringField
      FieldName = 'ToDoDate'
      FixedChar = True
      Size = 10
    end
    object Select_FollowUp_ByStartToDoTime: TStringField
      FieldName = 'ToDoTime'
      FixedChar = True
      Size = 5
    end
    object Select_FollowUp_ByStartDoneComment: TWideStringField
      FieldName = 'DoneComment'
      Size = 255
    end
    object Select_FollowUp_ByStartHasAlarm: TBooleanField
      FieldName = 'HasAlarm'
    end
    object Select_FollowUp_ByStartDoneStatusTitle: TStringField
      FieldKind = fkLookup
      FieldName = 'DoneStatusTitle'
      LookupDataSet = Dm.DoneStatus
      LookupKeyFields = 'DoneStatusID'
      LookupResultField = 'DoneStatustitle'
      KeyFields = 'DoneStatusID'
      Lookup = True
    end
    object Select_FollowUp_ByStartFollowupTypeTitle: TStringField
      FieldKind = fkLookup
      FieldName = 'FollowupTypeTitle'
      LookupDataSet = Dm.FollowUpType
      LookupKeyFields = 'FollowUpTypeID'
      LookupResultField = 'FollowUpTypeTitle'
      KeyFields = 'FollowUPTypeID'
      Lookup = True
    end
    object Select_FollowUp_ByStartStartFollowUpID: TIntegerField
      FieldName = 'StartFollowUpID'
    end
    object Select_FollowUp_ByStartLetterid: TIntegerField
      FieldName = 'Letterid'
    end
  end
end
