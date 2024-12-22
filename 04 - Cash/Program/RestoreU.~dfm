object FrRestore: TFrRestore
  Left = 532
  Top = 110
  BiDiMode = bdRightToLeft
  BorderIcons = [biSystemMenu]
  BorderStyle = bsDialog
  Caption = #1576#1575#1586#1711#1585#1583#1575#1606#1583#1606' '#1606#1587#1582#1607' '#1662#1588#1578#1610#1576#1575#1606' -  '#1588#1585#1705#1578' '#1610#1711#1575#1606#1607
  ClientHeight = 185
  ClientWidth = 518
  Color = clBtnFace
  Font.Charset = ARABIC_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  ParentBiDiMode = False
  Position = poScreenCenter
  OnCreate = FormCreate
  OnShow = FormShow
  DesignSize = (
    518
    185)
  PixelsPerInch = 96
  TextHeight = 13
  object Label2: TLabel
    Left = 427
    Top = 34
    Width = 59
    Height = 13
    Caption = #1601#1575#1610#1604' '#1662#1588#1578#1610#1576#1575#1606
  end
  object Label3: TLabel
    Left = 431
    Top = 60
    Width = 60
    Height = 13
    Caption = #1605#1587#1610#1585' '#1576#1575#1586#1610#1575#1576#1610
  end
  object SpeedButton1: TSpeedButton
    Left = 398
    Top = 32
    Width = 23
    Height = 20
    Caption = '...'
    OnClick = SpeedButton1Click
  end
  object SpeedButton3: TSpeedButton
    Left = 398
    Top = 56
    Width = 23
    Height = 22
    Caption = '...'
    OnClick = SpeedButton3Click
  end
  object Label4: TLabel
    Left = 25
    Top = 135
    Width = 478
    Height = 26
    Anchors = [akLeft, akBottom]
    Caption = 
      #1576#1575' '#1575#1606#1580#1575#1605' '#1575#1610#1606' '#1593#1605#1604#1610#1575#1578' '#1705#1604#1610#1607' '#1575#1591#1604#1575#1593#1575#1578' '#1601#1593#1604#1610' '#1588#1605#1575' '#1576#1575' '#1575#1591#1604#1575#1593#1575#1578' '#1606#1587#1582#1607' '#1662#1588#1578#1610#1576#1575 +
      #1606#1610' '#1705#1607' '#1605#1593#1585#1601#1610' '#1605#1610' '#1705#1606#1610#1583' '#1580#1575#1610#1711#1586#1610#1606' '#1605#1610' '#1588#1608#1583' '#1604#1591#1601#1575' '#1583#1602#1578' '#1705#1606#1610#1583'.'
    Font.Charset = ARABIC_CHARSET
    Font.Color = clMaroon
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    WordWrap = True
  end
  object BackupPath: TEdit
    Left = 26
    Top = 31
    Width = 370
    Height = 21
    BiDiMode = bdLeftToRight
    ParentBiDiMode = False
    ReadOnly = True
    TabOrder = 0
  end
  object RestorePath: TEdit
    Left = 26
    Top = 56
    Width = 370
    Height = 21
    BiDiMode = bdLeftToRight
    ParentBiDiMode = False
    TabOrder = 1
  end
  object Button1: TButton
    Left = 167
    Top = 93
    Width = 154
    Height = 33
    Anchors = [akLeft, akBottom]
    Caption = #1576#1575#1586#1610#1575#1576#1610' '#1606#1587#1582#1607' '#1662#1588#1578#1610#1576#1575#1606
    Font.Charset = ARABIC_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 2
    OnClick = Button1Click
  end
  object ProgressBar: TProgressBar
    Left = 0
    Top = 169
    Width = 518
    Height = 16
    Align = alBottom
    TabOrder = 3
  end
  object DBGrid1: TDBGrid
    Left = 8
    Top = 80
    Width = 504
    Height = 6
    Anchors = [akLeft, akTop, akBottom]
    DataSource = dsFileList
    Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit]
    TabOrder = 4
    TitleFont.Charset = ARABIC_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
    Visible = False
  end
  object OpenDialog: TOpenDialog
    Left = 8
    Top = 8
  end
  object dbinfo: TADOQuery
    Connection = dm.YeganehConnection
    Parameters = <>
    Left = 128
    Top = 96
  end
  object ADOConnection: TADOConnection
    CommandTimeout = 3000
    ConnectionString = 
      'Provider=SQLOLEDB.1;Integrated Security=SSPI;Persist Security In' +
      'fo=False;Initial Catalog=master'
    LoginPrompt = False
    Provider = 'SQLOLEDB.1'
    Left = 368
    Top = 96
  end
  object Processes: TADOQuery
    Connection = ADOConnection
    CursorType = ctStatic
    Parameters = <
      item
        Name = 'Dbname'
        DataType = ftWideString
        NumericScale = 255
        Precision = 255
        Size = 128
        Value = Null
      end>
    SQL.Strings = (
      ''
      'select   l.req_spid ProcessID'
      'from master..syslockinfo l with (NOLOCK) '
      'where ISNULL(db_name(l.rsc_dbid), N'#39'(internal)'#39')=:Dbname'
      ' ')
    Left = 448
    Top = 96
    object ProcessesProcessID: TIntegerField
      FieldName = 'ProcessID'
    end
  end
  object quFileList: TADOQuery
    Connection = dm.YeganehConnection
    CursorType = ctStatic
    OnCalcFields = quFileListCalcFields
    Parameters = <
      item
        Name = 'p1'
        DataType = ftString
        Size = 18
        Value = 'f:\DabirBackup.bak'
      end>
    SQL.Strings = (
      'RESTORE FILELISTONLY FROM DISK = :p1')
    Left = 72
    Top = 96
    object quFileListLogicalName: TWideStringField
      DisplayLabel = #1606#1575#1605' '#1605#1606#1591#1602#1610
      DisplayWidth = 18
      FieldName = 'LogicalName'
      ReadOnly = True
      Size = 128
    end
    object quFileListPhysicalName: TWideStringField
      DisplayLabel = #1606#1575#1605' '#1601#1610#1586#1610#1705#1610
      DisplayWidth = 30
      FieldName = 'PhysicalName'
      ReadOnly = True
      Size = 260
    end
    object quFileListDL: TStringField
      DisplayLabel = #1606#1608#1593' '#1601#1575#1610#1604
      DisplayWidth = 9
      FieldKind = fkCalculated
      FieldName = 'DL'
      Size = 10
      Calculated = True
    end
    object quFileListNewSize: TStringField
      DisplayLabel = #1575#1606#1583#1575#1586#1607' '#1601#1575#1610#1604
      DisplayWidth = 18
      FieldKind = fkCalculated
      FieldName = 'NewSize'
      Size = 30
      Calculated = True
    end
    object quFileListFileGroupName: TWideStringField
      FieldName = 'FileGroupName'
      ReadOnly = True
      Visible = False
      Size = 128
    end
    object quFileListType: TWideStringField
      FieldName = 'Type'
      ReadOnly = True
      Visible = False
      FixedChar = True
      Size = 1
    end
  end
  object dsFileList: TDataSource
    DataSet = quFileList
    Left = 16
    Top = 96
  end
end
