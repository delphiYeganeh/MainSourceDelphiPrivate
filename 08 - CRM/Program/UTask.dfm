inherited frTask: TfrTask
  Left = 528
  Top = 315
  Width = 550
  Height = 258
  Caption = ''
  OldCreateOrder = True
  PixelsPerInch = 96
  TextHeight = 13
  inherited ShapeBase: TShape
    Width = 534
    Height = 174
  end
  object GroupBox2: TGroupBox [1]
    Left = 0
    Top = 0
    Width = 534
    Height = 174
    Align = alClient
    Caption = '  '#1579#1576#1578' '#1603#1575#1585'  '
    TabOrder = 1
    object Label38: TLabel
      Left = 485
      Top = 22
      Width = 34
      Height = 13
      Caption = #1608#1590#1593#1610#1578
      Transparent = True
    end
    object Label39: TLabel
      Left = 294
      Top = 22
      Width = 39
      Height = 13
      Caption = #1575#1585#1580#1575#1593' '#1576#1607' '
      Transparent = True
    end
    object Label3: TLabel
      Left = 483
      Top = 50
      Width = 38
      Height = 13
      Caption = #1588#1585#1581' '#1603#1575#1585
      Transparent = True
    end
    object dblStatusId: TDBLookupComboBox
      Left = 347
      Top = 18
      Width = 128
      Height = 21
      BiDiMode = bdLeftToRight
      DataField = 'StatusID'
      KeyField = 'TaskStatusID'
      ListField = 'TaskStatusTitle'
      ListSource = Dm.DsTaskStatus
      ParentBiDiMode = False
      TabOrder = 0
    end
    object dblUserRefrence: TDBLookupComboBox
      Left = 15
      Top = 18
      Width = 266
      Height = 21
      BiDiMode = bdLeftToRight
      DataField = 'ReferToUserID'
      KeyField = 'Id'
      ListField = 'Title'
      ListSource = Dm.dsUserByCaseFilter
      ParentBiDiMode = False
      TabOrder = 1
    end
    object mmoDescription: TMemo
      Left = 16
      Top = 48
      Width = 457
      Height = 121
      TabOrder = 2
    end
  end
  object Panel1: TPanel [2]
    Left = 0
    Top = 174
    Width = 534
    Height = 45
    Align = alBottom
    TabOrder = 0
    object BitBtn1: TBitBtn
      Left = 116
      Top = 7
      Width = 98
      Height = 32
      Caption = #1579#1576#1578
      TabOrder = 0
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
    object btnCancel: TBitBtn
      Left = 12
      Top = 7
      Width = 98
      Height = 32
      Cancel = True
      Caption = #1575#1606#1589#1585#1575#1601
      ModalResult = 2
      TabOrder = 1
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
  end
  inherited DSForm: TDataSource
    Left = 8
    Top = 176
  end
  inherited ActionList: TActionList
    Left = 8
    Top = 152
  end
  object SpInsert_Task_TaskAssigned: TADOStoredProc
    Connection = Dm.YeganehConnection
    ProcedureName = 'Insert_Task_TaskAssigned;1'
    Parameters = <
      item
        Name = '@RETURN_VALUE'
        DataType = ftInteger
        Direction = pdReturnValue
        Precision = 10
        Value = Null
      end
      item
        Name = '@Title'
        Attributes = [paNullable]
        DataType = ftWideString
        Size = 50
        Value = Null
      end
      item
        Name = '@StatusId'
        Attributes = [paNullable]
        DataType = ftInteger
        Precision = 10
        Value = Null
      end
      item
        Name = '@AssignedUserId'
        Attributes = [paNullable]
        DataType = ftInteger
        Precision = 10
        Value = Null
      end
      item
        Name = '@Description'
        Attributes = [paNullable]
        DataType = ftWideString
        Size = 500
        Value = Null
      end
      item
        Name = '@RegisterUserId'
        Attributes = [paNullable]
        DataType = ftInteger
        Precision = 10
        Value = Null
      end
      item
        Name = '@CaseId'
        Attributes = [paNullable]
        DataType = ftInteger
        Precision = 10
        Value = Null
      end
      item
        Name = '@Comment'
        Attributes = [paNullable]
        DataType = ftWideString
        Size = 200
        Value = Null
      end
      item
        Name = '@EstimatedDate'
        Attributes = [paNullable]
        DataType = ftWideString
        Size = 10
        Value = Null
      end
      item
        Name = '@TodoDate'
        Attributes = [paNullable]
        DataType = ftWideString
        Size = 10
        Value = Null
      end
      item
        Name = '@TaskId'
        Attributes = [paNullable]
        DataType = ftInteger
        Precision = 10
        Value = Null
      end>
    Left = 136
    Top = 64
    object SpInsert_Task_TaskAssignedTaskID: TAutoIncField
      FieldName = 'TaskID'
      ReadOnly = True
    end
    object SpInsert_Task_TaskAssignedCaseId: TIntegerField
      FieldName = 'CaseId'
    end
    object SpInsert_Task_TaskAssignedTitle: TWideStringField
      FieldName = 'Title'
      Size = 50
    end
    object SpInsert_Task_TaskAssignedDescription: TWideStringField
      FieldName = 'Description'
      Size = 500
    end
    object SpInsert_Task_TaskAssignedTodoDate: TWideStringField
      FieldName = 'TodoDate'
      FixedChar = True
      Size = 10
    end
    object SpInsert_Task_TaskAssignedRegisterDate: TWideStringField
      FieldName = 'RegisterDate'
      FixedChar = True
      Size = 10
    end
    object SpInsert_Task_TaskAssignedRegisterUserId: TIntegerField
      FieldName = 'RegisterUserId'
    end
  end
end
