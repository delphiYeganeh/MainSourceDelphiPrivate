object fDbName: TfDbName
  Left = 638
  Top = 376
  Width = 485
  Height = 284
  BiDiMode = bdRightToLeft
  Caption = #1578#1593#1585#1610#1601' '#1662#1575#1610#1711#1575#1607' '#1583#1575#1583#1607
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  ParentBiDiMode = False
  Position = poDesktopCenter
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 171
    Width = 469
    Height = 74
    Align = alBottom
    Color = clSilver
    TabOrder = 0
    object Button1: TButton
      Left = 392
      Top = 11
      Width = 75
      Height = 25
      Cursor = crHandPoint
      Caption = #1580#1583#1610#1583
      TabOrder = 0
      OnClick = Button1Click
    end
    object Button2: TButton
      Left = 315
      Top = 11
      Width = 75
      Height = 25
      Cursor = crHandPoint
      Caption = #1608#1610#1585#1575#1610#1588
      TabOrder = 1
      OnClick = Button2Click
    end
    object Button3: TButton
      Left = 238
      Top = 11
      Width = 75
      Height = 25
      Cursor = crHandPoint
      Caption = #1581#1584#1601
      TabOrder = 2
      OnClick = Button3Click
    end
    object Button6: TButton
      Left = 16
      Top = 28
      Width = 75
      Height = 25
      Cursor = crHandPoint
      Caption = #1575#1606#1578#1582#1575#1576
      TabOrder = 3
      OnClick = Button6Click
    end
    object Button7: TButton
      Left = 360
      Top = 44
      Width = 105
      Height = 25
      Cursor = crHandPoint
      Caption = #1576#1585#1608#1586#1585#1587#1575#1606#1610' '#1578#1606#1592#1610#1605#1575#1578
      TabOrder = 4
      OnClick = Button7Click
    end
    object Button8: TButton
      Left = 238
      Top = 44
      Width = 121
      Height = 25
      Cursor = crHandPoint
      Caption = #1576#1575#1586#1711#1588#1578' '#1576#1607' '#1583#1610#1578#1575#1576#1610#1587' '#1575#1589#1604#1610
      TabOrder = 5
      Visible = False
    end
  end
  object Panel2: TPanel
    Left = 0
    Top = 0
    Width = 469
    Height = 171
    Align = alClient
    Color = 15332329
    TabOrder = 1
    object DBGrid1: TDBGrid
      Left = 1
      Top = 1
      Width = 467
      Height = 169
      Align = alClient
      DataSource = DsSelect
      Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit]
      ReadOnly = True
      TabOrder = 0
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'MS Sans Serif'
      TitleFont.Style = []
      Columns = <
        item
          Expanded = False
          FieldName = 'ID'
          Visible = False
        end
        item
          Expanded = False
          FieldName = 'Name'
          Width = 100
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'ServerName'
          Width = 125
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'DBName'
          Width = 124
          Visible = True
        end>
    end
    object Panel3: TPanel
      Left = 48
      Top = 96
      Width = 393
      Height = 73
      TabOrder = 1
      Visible = False
      object Label1: TLabel
        Left = 322
        Top = 8
        Width = 62
        Height = 13
        Caption = #1606#1575#1605' '#1575#1582#1578#1589#1575#1589#1610
      end
      object Label2: TLabel
        Left = 151
        Top = 13
        Width = 41
        Height = 13
        Caption = #1606#1575#1605' '#1587#1585#1608#1585
      end
      object Label3: TLabel
        Left = 326
        Top = 34
        Width = 50
        Height = 13
        Caption = #1606#1575#1605' '#1583#1610#1578#1575#1576#1610#1587
      end
      object DBEdit1: TDBEdit
        Left = 200
        Top = 8
        Width = 121
        Height = 21
        BiDiMode = bdLeftToRight
        DataField = 'Name'
        DataSource = DsSelect
        ParentBiDiMode = False
        TabOrder = 0
      end
      object DBEdit2: TDBEdit
        Left = 24
        Top = 10
        Width = 121
        Height = 21
        BiDiMode = bdLeftToRight
        DataField = 'ServerName'
        DataSource = DsSelect
        ParentBiDiMode = False
        TabOrder = 1
      end
      object DBEdit3: TDBEdit
        Left = 200
        Top = 32
        Width = 121
        Height = 21
        BiDiMode = bdLeftToRight
        DataField = 'DBName'
        DataSource = DsSelect
        ParentBiDiMode = False
        TabOrder = 2
      end
      object Button5: TButton
        Left = 80
        Top = 40
        Width = 75
        Height = 25
        Cursor = crHandPoint
        Caption = #1584#1582#1610#1585#1607
        TabOrder = 3
        OnClick = Button5Click
      end
      object Button4: TButton
        Left = 3
        Top = 40
        Width = 75
        Height = 25
        Cursor = crHandPoint
        Caption = #1575#1606#1589#1585#1575#1601
        TabOrder = 4
        OnClick = Button4Click
      end
    end
  end
  object AdoSelect: TADOStoredProc
    Connection = Dm.YeganehConnection
    ProcedureName = 'PRCDbName_Select'
    Parameters = <>
    Left = 24
    Top = 7
    object AdoSelectID: TIntegerField
      FieldName = 'ID'
    end
    object AdoSelectName: TStringField
      DisplayLabel = #1606#1575#1605' '#1575#1582#1578#1589#1575#1589#1610
      FieldName = 'Name'
      Size = 50
    end
    object AdoSelectServerName: TStringField
      DisplayLabel = #1606#1575#1605' '#1587#1585#1608#1585
      FieldName = 'ServerName'
      Size = 50
    end
    object AdoSelectDBName: TStringField
      DisplayLabel = #1606#1575#1605' '#1583#1610#1578#1575#1576#1610#1587
      FieldName = 'DBName'
      Size = 50
    end
  end
  object DsSelect: TDataSource
    DataSet = AdoSelect
    Left = 104
    Top = 8
  end
  object AdoDelete: TADOStoredProc
    Connection = Dm.YeganehConnection
    ProcedureName = 'PRCDbName_Delete'
    Parameters = <
      item
        Name = '@ID'
        DataType = ftInteger
        Value = Null
      end>
    Left = 64
    Top = 7
    object IntegerField1: TIntegerField
      FieldName = 'ID'
    end
    object StringField1: TStringField
      DisplayLabel = #1606#1575#1605' '#1575#1582#1578#1589#1575#1589#1610
      FieldName = 'Name'
    end
    object StringField2: TStringField
      DisplayLabel = #1606#1575#1605' '#1587#1585#1608#1585
      FieldName = 'ServerName'
    end
    object StringField3: TStringField
      DisplayLabel = #1606#1575#1605' '#1583#1610#1578#1575#1576#1610#1587
      FieldName = 'DBName'
    end
  end
  object ClosingTimer: TTimer
    Enabled = False
    Interval = 100
    Left = 160
    Top = 48
  end
  object adoCheck: TADOStoredProc
    Connection = Dm.YeganehConnection
    ProcedureName = 'Prc_InserttoUser'
    Parameters = <
      item
        Name = '@DbName_Old'
        DataType = ftString
        Size = -1
        Value = Null
      end
      item
        Name = '@DbName_New'
        DataType = ftString
        Size = -1
        Value = Null
      end
      item
        Name = '@UserID'
        DataType = ftString
        Size = -1
        Value = Null
      end>
    Left = 24
    Top = 55
    object IntegerField2: TIntegerField
      FieldName = 'ID'
    end
    object StringField4: TStringField
      DisplayLabel = #1606#1575#1605' '#1575#1582#1578#1589#1575#1589#1610
      FieldName = 'Name'
    end
    object StringField5: TStringField
      DisplayLabel = #1606#1575#1605' '#1587#1585#1608#1585
      FieldName = 'ServerName'
    end
    object StringField6: TStringField
      DisplayLabel = #1606#1575#1605' '#1583#1610#1578#1575#1576#1610#1587
      FieldName = 'DBName'
    end
  end
  object adoCreatetbdbname: TADOStoredProc
    Connection = Dm.YeganehConnection
    ProcedureName = 'Prc_CreateTbDbName'
    Parameters = <
      item
        Name = '@DbName_New'
        DataType = ftString
        Size = -1
        Value = Null
      end
      item
        Name = '@DbName_Old'
        DataType = ftString
        Size = -1
        Value = Null
      end>
    Left = 232
    Top = 39
  end
  object adodbname_select: TADOStoredProc
    Connection = Dm.YeganehConnection
    ProcedureName = 'PRCDbName_Select_Check'
    Parameters = <
      item
        Name = '@DbName_New'
        DataType = ftString
        Size = -1
        Value = Null
      end>
    Left = 336
    Top = 47
  end
end
