object TasksTreeForm: TTasksTreeForm
  Left = 439
  Top = 152
  BiDiMode = bdRightToLeft
  BorderStyle = bsDialog
  Caption = #1580#1586#1574#1610#1575#1578' '#1575#1602#1583#1575#1605#1575#1578
  ClientHeight = 450
  ClientWidth = 607
  Color = clBtnFace
  Font.Charset = ARABIC_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  ParentBiDiMode = False
  OnCanResize = FormCanResize
  PixelsPerInch = 96
  TextHeight = 13
  object GroupBox1: TGroupBox
    Left = 0
    Top = 0
    Width = 607
    Height = 209
    Align = alTop
    Caption = #1575#1591#1604#1575#1593#1575#1578' '#1575#1602#1583#1575#1605' '#1575#1589#1604#1610
    TabOrder = 0
    DesignSize = (
      607
      209)
    object Label1: TLabel
      Left = 519
      Top = 15
      Width = 39
      Height = 13
      Anchors = [akTop, akRight]
      Caption = #1576#1575#1586#1575#1585#1610#1575#1576' :'
    end
    object Label2: TLabel
      Left = 228
      Top = 16
      Width = 49
      Height = 13
      Anchors = [akTop, akRight]
      Caption = #1606#1608#1593' '#1575#1602#1583#1575#1605' :'
    end
    object Label3: TLabel
      Left = 519
      Top = 40
      Width = 54
      Height = 13
      Anchors = [akTop, akRight]
      Caption = #1578#1575#1585#1610#1582' '#1575#1606#1580#1575#1605' :'
    end
    object Label4: TLabel
      Left = 519
      Top = 64
      Width = 81
      Height = 13
      Anchors = [akTop, akRight]
      Caption = #1578#1575#1585#1610#1582' '#1579#1576#1578' '#1608#1575#1602#1593#1610' :'
    end
    object Label5: TLabel
      Left = 227
      Top = 40
      Width = 64
      Height = 13
      Anchors = [akTop, akRight]
      Caption = #1587#1575#1593#1578' '#1575#1606#1580#1575#1605' :'
    end
    object Label6: TLabel
      Left = 519
      Top = 90
      Width = 47
      Height = 13
      Anchors = [akTop, akRight]
      Caption = #1578#1608#1590#1610#1581#1575#1578' :'
    end
    object DBText1: TDBText
      Left = 311
      Top = 15
      Width = 201
      Height = 15
      Anchors = [akTop, akRight]
      DataField = 'MarketerTitle'
      DataSource = DS_MainTask
      Font.Charset = ARABIC_CHARSET
      Font.Color = clGreen
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object DBText2: TDBText
      Left = 14
      Top = 15
      Width = 209
      Height = 15
      Anchors = [akTop, akRight]
      DataField = 'ActionTypeTitle'
      DataSource = DS_MainTask
      Font.Charset = ARABIC_CHARSET
      Font.Color = clGreen
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object DBText3: TDBText
      Left = 431
      Top = 40
      Width = 81
      Height = 17
      Anchors = [akTop, akRight]
      DataField = 'ToDoDate'
      DataSource = DS_MainTask
      Font.Charset = ARABIC_CHARSET
      Font.Color = clGreen
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object DBText4: TDBText
      Left = 141
      Top = 39
      Width = 81
      Height = 15
      Anchors = [akTop, akRight]
      DataField = 'ToDoTime'
      DataSource = DS_MainTask
      Font.Charset = ARABIC_CHARSET
      Font.Color = clGreen
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object DBText5: TDBText
      Left = 384
      Top = 63
      Width = 128
      Height = 15
      Anchors = [akTop, akRight]
      DataField = 'FollowUpInsertDate'
      DataSource = DS_MainTask
      Font.Charset = ARABIC_CHARSET
      Font.Color = clGreen
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object DBText6: TDBText
      Left = 141
      Top = 63
      Width = 81
      Height = 15
      Anchors = [akTop, akRight]
      DataField = 'DoneStatustitle'
      DataSource = DS_MainTask
      Font.Charset = ARABIC_CHARSET
      Font.Color = clGreen
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object Label7: TLabel
      Left = 226
      Top = 62
      Width = 67
      Height = 13
      Anchors = [akTop, akRight]
      Caption = #1608#1590#1593#1610#1578' '#1575#1606#1580#1575#1605' :'
    end
    object Label8: TLabel
      Left = 519
      Top = 148
      Width = 56
      Height = 13
      Anchors = [akTop, akRight]
      Caption = #1588#1585#1581' '#1575#1606#1580#1575#1605' :'
    end
    object DBMemo1: TDBMemo
      Left = 8
      Top = 91
      Width = 505
      Height = 54
      Anchors = [akLeft, akTop, akRight]
      DataField = 'Comment'
      DataSource = DS_MainTask
      ReadOnly = True
      TabOrder = 0
    end
    object DBMemo2: TDBMemo
      Left = 8
      Top = 149
      Width = 505
      Height = 52
      Anchors = [akLeft, akTop, akRight]
      DataField = 'DoneComment'
      DataSource = DS_MainTask
      ReadOnly = True
      TabOrder = 1
    end
  end
  object GroupBox2: TGroupBox
    Left = 0
    Top = 209
    Width = 607
    Height = 200
    Align = alClient
    Caption = #1586#1610#1585' '#1575#1602#1583#1575#1605' '#1607#1575
    TabOrder = 1
    object dbgFollow: TYDBGrid
      Left = 2
      Top = 15
      Width = 603
      Height = 183
      Cursor = crHandPoint
      TabStop = False
      Align = alClient
      DataSource = DS_SubTasks
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
      PrintTitle = #1575#1602#1583#1575#1605#1575#1578' '#1605#1588#1578#1585#1610#1575#1606
      InvertFarsiDate = True
      TitleSort = True
      AutoInsert = False
      FooterFields = 'Count'
      Columns = <
        item
          Expanded = False
          FieldName = 'MarketerTitle'
          Title.Alignment = taCenter
          Title.Caption = #1576#1575#1586#1575#1585#1610#1575#1576
          Title.Font.Charset = ARABIC_CHARSET
          Title.Font.Color = clWindowText
          Title.Font.Height = -11
          Title.Font.Name = 'Tahoma'
          Title.Font.Style = []
          Width = 99
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'ActionTypeTitle'
          Title.Alignment = taCenter
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
          Title.Alignment = taCenter
          Title.Caption = #1578#1575#1585#1610#1582' '#1575#1606#1580#1575#1605
          Title.Font.Charset = ARABIC_CHARSET
          Title.Font.Color = clWindowText
          Title.Font.Height = -11
          Title.Font.Name = 'Tahoma'
          Title.Font.Style = []
          Width = 84
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'DoneDate'
          Title.Alignment = taCenter
          Title.Caption = #1578#1575#1585#1610#1582' '#1608#1575#1602#1593#1610' '#1575#1606#1580#1575#1605
          Title.Font.Charset = ARABIC_CHARSET
          Title.Font.Color = clWindowText
          Title.Font.Height = -11
          Title.Font.Name = 'Tahoma'
          Title.Font.Style = []
          Width = 116
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'ToDoTime'
          Title.Alignment = taCenter
          Title.Caption = #1587#1575#1593#1578
          Title.Font.Charset = ARABIC_CHARSET
          Title.Font.Color = clWindowText
          Title.Font.Height = -11
          Title.Font.Name = 'Tahoma'
          Title.Font.Style = []
          Width = 93
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'Comment'
          Title.Alignment = taCenter
          Title.Caption = #1578#1608#1590#1610#1581
          Title.Font.Charset = ARABIC_CHARSET
          Title.Font.Color = clWindowText
          Title.Font.Height = -11
          Title.Font.Name = 'Tahoma'
          Title.Font.Style = []
          Width = 236
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'DoneStatustitle'
          Title.Alignment = taCenter
          Title.Caption = #1608#1590#1593#1610#1578' '#1575#1606#1580#1575#1605
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
          FieldName = 'DoneComment'
          Title.Alignment = taCenter
          Title.Caption = #1578#1608#1590#1610#1581' '#1575#1606#1580#1575#1605' '
          Title.Font.Charset = ARABIC_CHARSET
          Title.Font.Color = clWindowText
          Title.Font.Height = -11
          Title.Font.Name = 'Tahoma'
          Title.Font.Style = []
          Width = 173
          Visible = True
        end>
    end
  end
  object Panel1: TPanel
    Left = 0
    Top = 409
    Width = 607
    Height = 41
    Align = alBottom
    TabOrder = 2
    object BtnCancel: TBitBtn
      Left = 5
      Top = 4
      Width = 96
      Height = 34
      Caption = #1575#1606#1589#1585#1575#1601
      TabOrder = 0
      OnClick = BtnCancelClick
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
    object btnShowContractWord: TBitBtn
      Left = 106
      Top = 4
      Width = 95
      Height = 34
      Caption = #1575#1585#1587#1575#1604' '#1576#1607' '#1608#1608#1585#1583
      TabOrder = 1
      OnClick = btnShowContractWordClick
      Glyph.Data = {
        AA030000424DAA03000000000000360000002800000011000000110000000100
        1800000000007403000000000000000000000000000000000000A9542AA24B19
        A24815A449159E4715964513934210934211853D0F853C0E7D390D76350E7032
        0B71320B6A2F086A310D4E210400C36A43BD7A5EA1715B9E6E599C6E599C6E59
        986B56946A519066529065518A604C875D4B865D49875C49865E4B87543A6A31
        0D00C26C43BB8670FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFDFFFCFA
        FFF8F6FFF5F3FFF5F2FFF1EDFFFFFE865E4A6B2F0800C2734BBF8C77FFFFFFFF
        FFFFFFFFFFFFFFFFFFFBFAFAF4F3FFFFFFFFFFFFFFFCFBF8EBE8F5E6E1F4E6E1
        FFF1ED865D4970320A00C57650C08D77FFFFFFE4D3CCA16E56946246E1D3CBFE
        FAF8905B3B816246735A3AF9EDEAF9EBE8F5E6E1FFF5F2875D4B71330D00C87B
        57BF8D78FFFFFFDAC7C0C3795BBA5828996B50FEFDFD9D43189348227D360CA5
        9A89FFF7F5F7E8E6FFF5F2885F4A78370D00CC8160C69682FFFFFFDDCCC4C988
        6DD579509F5026D4C3B9AF6341B95A30AA4E24694420F2E9E5F9F0EDFFF8F68C
        624E823B1000D18665C69783FFFFFFDFCDC6D29478D3835FC5724A945F42B976
        5CC06239C35F337E370CAEA090FFFAFAFFFCF99367528A3E1100D58A6BC99C88
        FFFFFFE1D1C9DA9A80B4735AD99377B86D4AC47C5EC96D41B4623BCE6C406843
        1FF1EAE8FFFFFF9467548C411300DA9070CBA08CFFFFFFE9D2CAE2A892B0735A
        B7846DD89479CD7B58CB724C955B40B6705290481CA99B89FFFFFF986D579748
        1900DD9271CA9F8BFFFFFFEED7CEE4AB95B07258DACDC6D39E86D68F70D07B54
        AA6B4FC8B1A6BE6A436C4925FFFFFFA0725F9A4A1A00E19A7CCDA492FFFFFFD8
        A591E8B39EC1846BDDCAC0D6BAAEDB9D83D08564B27459F3F6F5B5765DA2542D
        AFAD9FA274619C4C1C00E29B7ED2AF9FEBC8BBD68A6CE5AD96E3A68CAC674CE9
        DBD5C5886DD78F72BC7A60E9C6B7C77454D18261C16C4398614AA6512300E59D
        80D0AA99FDF5F2F2DDD5F0DAD1F0D8CFF1D6CDFDF9F8F3E5DEECCFC3EED1C5F6
        ECE6E9CABDE9CBBEF0D2C7A4705AA54F2100E8A082CEA897FFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFAA
        7A66A6502000EBA587D0A997CEA997CEA896CFA997CCA492CB9E8ACB9E8BC596
        82C59682C49581BF8C76BF8B75C08A73B9826CBC7B60A8552300E1916FEBA487
        E7A082E69F82E39C7FE39C7EDB9578DA9277DA8E6DD58868D08362CF805CCA79
        54C9744EC36F47C46F46AA5B3000}
    end
  end
  object DS_MainTask: TDataSource
    DataSet = Q_MainTask
    Left = 224
    Top = 64
  end
  object Q_MainTask: TADOQuery
    Connection = Dm.YeganehConnection
    CursorType = ctStatic
    Parameters = <
      item
        Name = 'FollowUpID'
        Attributes = [paSigned, paNullable]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = Null
      end>
    SQL.Strings = (
      'exec sp_GetFollowUp @FollowUpID =:FollowUpID')
    Left = 304
    Top = 64
    object Q_MainTaskFollowUPID: TAutoIncField
      FieldName = 'FollowUPID'
      ReadOnly = True
    end
    object Q_MainTaskActionTypeID: TIntegerField
      FieldName = 'ActionTypeID'
    end
    object Q_MainTaskActionTypeTitle: TWideStringField
      FieldName = 'ActionTypeTitle'
      Size = 50
    end
    object Q_MainTaskMarketerID: TIntegerField
      FieldName = 'MarketerID'
    end
    object Q_MainTaskMarketerTitle: TWideStringField
      FieldName = 'MarketerTitle'
      Size = 50
    end
    object Q_MainTaskPersonTitle: TWideStringField
      FieldName = 'PersonTitle'
      Size = 100
    end
    object Q_MainTaskCompanyName: TWideStringField
      FieldName = 'CompanyName'
      Size = 100
    end
    object Q_MainTaskCustomerID: TIntegerField
      FieldName = 'CustomerID'
    end
    object Q_MainTaskComment: TWideStringField
      FieldName = 'Comment'
      Size = 1000
    end
    object Q_MainTaskToDoDate: TStringField
      FieldName = 'ToDoDate'
      FixedChar = True
      Size = 10
    end
    object Q_MainTaskDoneDate: TStringField
      FieldName = 'DoneDate'
      FixedChar = True
      Size = 10
    end
    object Q_MainTaskToDoTime: TStringField
      FieldName = 'ToDoTime'
      FixedChar = True
      Size = 5
    end
    object Q_MainTaskDoneComment: TWideStringField
      FieldName = 'DoneComment'
      Size = 1000
    end
    object Q_MainTaskParentFollowUpID: TIntegerField
      FieldName = 'ParentFollowUpID'
    end
    object Q_MainTaskFollowUpInsertDate: TWideStringField
      FieldName = 'FollowUpInsertDate'
      Size = 10
    end
    object Q_MainTaskDoneStatustitle: TWideStringField
      FieldName = 'DoneStatustitle'
      Size = 50
    end
  end
  object Q_SubTasks: TADOQuery
    Connection = Dm.YeganehConnection
    CursorType = ctStatic
    Parameters = <
      item
        Name = 'ParentFollowUpID'
        DataType = ftString
        Size = 3
        Value = Null
      end>
    SQL.Strings = (
      'exec sp_GetFollowUp @ParentFollowUpID =:ParentFollowUpID')
    Left = 336
    Top = 336
    object Q_SubTasksFollowUPID: TAutoIncField
      FieldName = 'FollowUPID'
      ReadOnly = True
    end
    object Q_SubTasksActionTypeID: TIntegerField
      FieldName = 'ActionTypeID'
    end
    object Q_SubTasksActionTypeTitle: TWideStringField
      FieldName = 'ActionTypeTitle'
      Size = 50
    end
    object Q_SubTasksMarketerID: TIntegerField
      FieldName = 'MarketerID'
    end
    object Q_SubTasksMarketerTitle: TWideStringField
      FieldName = 'MarketerTitle'
      Size = 50
    end
    object Q_SubTasksPersonTitle: TWideStringField
      FieldName = 'PersonTitle'
      Size = 100
    end
    object Q_SubTasksCompanyName: TWideStringField
      FieldName = 'CompanyName'
      Size = 100
    end
    object Q_SubTasksCustomerID: TIntegerField
      FieldName = 'CustomerID'
    end
    object Q_SubTasksComment: TWideStringField
      FieldName = 'Comment'
      Size = 1000
    end
    object Q_SubTasksToDoDate: TStringField
      FieldName = 'ToDoDate'
      FixedChar = True
      Size = 10
    end
    object Q_SubTasksDoneDate: TStringField
      FieldName = 'DoneDate'
      FixedChar = True
      Size = 10
    end
    object Q_SubTasksToDoTime: TStringField
      FieldName = 'ToDoTime'
      FixedChar = True
      Size = 5
    end
    object Q_SubTasksDoneComment: TWideStringField
      FieldName = 'DoneComment'
      Size = 1000
    end
    object Q_SubTasksParentFollowUpID: TIntegerField
      FieldName = 'ParentFollowUpID'
    end
    object Q_SubTasksFollowUpInsertDate: TWideStringField
      FieldName = 'FollowUpInsertDate'
      Size = 10
    end
    object Q_SubTasksDoneStatustitle: TWideStringField
      FieldName = 'DoneStatustitle'
      Size = 50
    end
  end
  object DS_SubTasks: TDataSource
    DataSet = Q_SubTasks
    Left = 272
    Top = 320
  end
end
