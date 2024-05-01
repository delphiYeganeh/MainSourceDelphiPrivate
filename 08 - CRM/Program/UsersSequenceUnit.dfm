inherited FUsersSequence: TFUsersSequence
  Left = 339
  Top = 119
  Width = 706
  Height = 512
  Caption = #1578#1593#1585#1610#1601' '#1705#1575#1585#1576#1585#1575#1606' '#1606#1608#1576#1578' '#1662#1575#1587#1582#1711#1608#1610#1610
  OldCreateOrder = True
  OnCanResize = FormCanResize
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel [0]
    Left = 434
    Top = 0
    Width = 256
    Height = 473
    Align = alRight
    TabOrder = 0
    DesignSize = (
      256
      473)
    object GroupBox1: TGroupBox
      Left = 11
      Top = 8
      Width = 236
      Height = 57
      Anchors = [akTop, akRight]
      Caption = #1580#1587#1578#1580#1608
      TabOrder = 0
      object Label1: TLabel
        Left = 202
        Top = 24
        Width = 13
        Height = 13
        Caption = #1606#1575#1605
      end
      object edtName: TEdit
        Left = 8
        Top = 22
        Width = 188
        Height = 21
        TabOrder = 0
        OnChange = edtNameChange
      end
    end
    object YDBGridUsers: TYDBGrid
      Left = 10
      Top = 72
      Width = 236
      Height = 393
      Cursor = crHandPoint
      Anchors = [akTop, akRight]
      DataSource = DSForm
      Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit]
      ReadOnly = True
      TabOrder = 1
      TitleFont.Charset = ARABIC_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'Tahoma'
      TitleFont.Style = []
      OnDblClick = YDBGridUsersDblClick
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
          FieldName = 'id'
          Title.Caption = #1705#1583
          Width = 35
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'Title'
          Title.Caption = #1705#1575#1585#1576#1585
          Width = 160
          Visible = True
        end>
    end
  end
  object Panel2: TPanel [1]
    Left = 0
    Top = 0
    Width = 337
    Height = 473
    Align = alLeft
    TabOrder = 1
    object Label2: TLabel
      Left = 5
      Top = 8
      Width = 324
      Height = 13
      Caption = 
        #1583#1585' '#1589#1608#1585#1578#1610#1705#1607' '#1607#1610#1670' '#1705#1575#1585#1576#1585#1610' '#1601#1593#1575#1604' '#1606#1576#1575#1588#1583' '#1705#1575#1585#1576#1585#1610' '#1705#1607'  '#1705#1605#1578#1585#1610#1606' '#1578#1585#1578#1610#1576' '#1662#1575#1587#1582#1711#1608#1610 +
        #1610
    end
    object Label3: TLabel
      Left = 110
      Top = 28
      Width = 219
      Height = 13
      Caption = #1585#1575' '#1583#1575#1588#1578#1607' '#1576#1575#1588#1583' '#1705#1575#1585#1576#1585' '#1601#1593#1575#1604' '#1583#1585' '#1606#1592#1585' '#1711#1585#1601#1578#1607' '#1605#1610' '#1588#1608#1583'.'
    end
    object Bevel1: TBevel
      Left = 10
      Top = 55
      Width = 313
      Height = 3
    end
    object YDBGrid2: TYDBGrid
      Left = 11
      Top = 71
      Width = 313
      Height = 393
      Cursor = crHandPoint
      DataSource = DsQUsersSequence
      TabOrder = 0
      TitleFont.Charset = ARABIC_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'Tahoma'
      TitleFont.Style = []
      OnDblClick = YDBGrid2DblClick
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
          FieldName = 'lkUserName'
          Title.Caption = #1705#1575#1585#1576#1585
          Width = 150
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'sequence'
          Title.Caption = #1578#1585#1578#1610#1576' '#1662#1575#1587#1582' '#1583#1607#1610
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'Active'
          Title.Caption = #1606#1608#1576#1578
          Visible = True
        end>
    end
  end
  object Panel3: TPanel [2]
    Left = 337
    Top = 0
    Width = 97
    Height = 473
    Align = alClient
    Anchors = [akTop, akRight]
    TabOrder = 2
    DesignSize = (
      97
      473)
    object Button1: TButton
      Left = 16
      Top = 56
      Width = 64
      Height = 25
      Anchors = [akLeft, akTop, akRight]
      Caption = '>>'
      TabOrder = 0
      OnClick = Button1Click
    end
    object Button2: TButton
      Left = 16
      Top = 88
      Width = 64
      Height = 25
      Anchors = [akLeft, akTop, akRight]
      Caption = '<<'
      TabOrder = 1
      OnClick = Button2Click
    end
  end
  inherited DSForm: TDataSource
    DataSet = QUsers
    Left = 520
    Top = 176
  end
  inherited ActionList: TActionList
    Left = 360
    Top = 272
  end
  object DsQUsersSequence: TDataSource
    DataSet = QUsersSequence
    Left = 192
    Top = 152
  end
  object QUsers: TADOQuery
    Connection = Dm.YeganehConnection
    Parameters = <>
    SQL.Strings = (
      'SELECT id,Title FROM Users')
    Left = 554
    Top = 120
    object QUsersid: TAutoIncField
      FieldName = 'id'
      ReadOnly = True
    end
    object QUsersTitle: TWideStringField
      FieldName = 'Title'
      ReadOnly = True
      Size = 50
    end
  end
  object QUsersSequence: TADOQuery
    Connection = Dm.YeganehConnection
    OnPostError = QUsersSequencePostError
    Parameters = <>
    SQL.Strings = (
      'SELECT * FROM UsersSequence')
    Left = 120
    Top = 144
    object QUsersSequenceID: TAutoIncField
      FieldName = 'ID'
      ReadOnly = True
    end
    object QUsersSequenceUsersID: TIntegerField
      FieldName = 'UsersID'
    end
    object QUsersSequencelkUserName: TStringField
      FieldKind = fkLookup
      FieldName = 'lkUserName'
      LookupDataSet = QAllUsers
      LookupKeyFields = 'id'
      LookupResultField = 'Title'
      KeyFields = 'UsersID'
      Size = 100
      Lookup = True
    end
    object QUsersSequencesequence: TIntegerField
      FieldName = 'sequence'
    end
    object QUsersSequenceActive: TBooleanField
      FieldName = 'Active'
    end
  end
  object QTemp: TADOQuery
    Connection = Dm.YeganehConnection
    Parameters = <>
    Left = 361
    Top = 200
  end
  object QGetLastSeq: TADOQuery
    Connection = Dm.YeganehConnection
    Parameters = <>
    Left = 361
    Top = 136
  end
  object QAllUsers: TADOQuery
    Connection = Dm.YeganehConnection
    Parameters = <>
    SQL.Strings = (
      'SELECT id,Title FROM Users')
    Left = 562
    Top = 272
    object QAllUsersid: TAutoIncField
      FieldName = 'id'
      ReadOnly = True
    end
    object QAllUsersTitle: TWideStringField
      FieldName = 'Title'
      Size = 50
    end
  end
end
