object FrRestore: TFrRestore
  Left = 737
  Top = 265
  BiDiMode = bdRightToLeft
  BorderIcons = [biSystemMenu]
  BorderStyle = bsDialog
  Caption = #1576#1575#1586#1711#1585#1583#1575#1606#1583#1606' '#1606#1587#1582#1607' '#1662#1588#1578#1610#1576#1575#1606' -  '#1588#1585#1705#1578' '#1610#1711#1575#1606#1607
  ClientHeight = 185
  ClientWidth = 518
  Color = clBtnFace
  Font.Charset = ARABIC_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  ParentBiDiMode = False
  Position = poScreenCenter
  OnClose = FormClose
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 14
  object pnlMain: TPanel
    Left = 0
    Top = 0
    Width = 518
    Height = 185
    Align = alClient
    ParentColor = True
    TabOrder = 0
    DesignSize = (
      518
      185)
    object Label4: TLabel
      Left = 36
      Top = 135
      Width = 467
      Height = 28
      Anchors = [akLeft, akBottom]
      Caption = 
        #1576#1575' '#1575#1606#1580#1575#1605' '#1575#1610#1606' '#1593#1605#1604#1610#1575#1578' '#1705#1604#1610#1607' '#1575#1591#1604#1575#1593#1575#1578' '#1601#1593#1604#1610' '#1588#1605#1575' '#1576#1575' '#1575#1591#1604#1575#1593#1575#1578' '#1606#1587#1582#1607' '#1662#1588#1578#1610#1576#1575 +
        #1606#1610' '#1705#1607' '#1605#1593#1585#1601#1610' '#1605#1610' '#1705#1606#1610#1583' '#1580#1575#1610#1711#1586#1610#1606' '#1605#1610' '#1588#1608#1583' '#1604#1591#1601#1575' '#1583#1602#1578' '#1705#1606#1610#1583'.'
      Font.Charset = ARABIC_CHARSET
      Font.Color = clMaroon
      Font.Height = -12
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      WordWrap = True
    end
    object Label3: TLabel
      Left = 426
      Top = 56
      Width = 65
      Height = 14
      Caption = #1605#1587#1610#1585' '#1576#1575#1586#1610#1575#1576#1610
    end
    object Label2: TLabel
      Left = 425
      Top = 18
      Width = 65
      Height = 14
      Caption = #1601#1575#1610#1604' '#1662#1588#1578#1610#1576#1575#1606
    end
    object SpeedButton1: TAdvGlowButton
      Left = 6
      Top = 11
      Width = 23
      Height = 20
      ImageIndex = 78
      Images = dm.ImageList_MainNew
      NotesFont.Charset = DEFAULT_CHARSET
      NotesFont.Color = clWindowText
      NotesFont.Height = -11
      NotesFont.Name = 'Tahoma'
      NotesFont.Style = []
      TabOrder = 5
      OnClick = SpeedButton1Click
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
    object SpeedButton3: TAdvGlowButton
      Left = 7
      Top = 49
      Width = 23
      Height = 22
      ImageIndex = 78
      Images = dm.ImageList_MainNew
      NotesFont.Charset = DEFAULT_CHARSET
      NotesFont.Color = clWindowText
      NotesFont.Height = -11
      NotesFont.Name = 'Tahoma'
      NotesFont.Style = []
      TabOrder = 6
      OnClick = SpeedButton3Click
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
    object ProgressBar: TProgressBar
      Left = 1
      Top = 168
      Width = 516
      Height = 16
      Align = alBottom
      TabOrder = 0
    end
    object RestorePath: TEdit
      Left = 29
      Top = 49
      Width = 370
      Height = 22
      BiDiMode = bdLeftToRight
      Font.Charset = ARABIC_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentBiDiMode = False
      ParentFont = False
      TabOrder = 1
    end
    object DBGrid1: TDBGrid
      Left = 8
      Top = 88
      Width = 504
      Height = 9
      Anchors = [akLeft, akTop, akBottom]
      DataSource = dsFileList
      Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit]
      TabOrder = 2
      TitleFont.Charset = ARABIC_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -12
      TitleFont.Name = 'Tahoma'
      TitleFont.Style = []
      Visible = False
    end
    object Button1: TAdvGlowButton
      Left = 167
      Top = 99
      Width = 154
      Height = 33
      Anchors = [akLeft, akBottom]
      Caption = #1576#1575#1586#1610#1575#1576#1610' '#1606#1587#1582#1607' '#1662#1588#1578#1610#1576#1575#1606
      Font.Charset = ARABIC_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Tahoma'
      Font.Style = []
      ImageIndex = 98
      Images = dm.LetterImages_New
      NotesFont.Charset = DEFAULT_CHARSET
      NotesFont.Color = clWindowText
      NotesFont.Height = -11
      NotesFont.Name = 'Tahoma'
      NotesFont.Style = []
      ParentFont = False
      TabOrder = 3
      OnClick = Button1Click
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
    object BackupPath: TEdit
      Left = 29
      Top = 10
      Width = 370
      Height = 22
      BiDiMode = bdLeftToRight
      Font.Charset = ARABIC_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentBiDiMode = False
      ParentFont = False
      ReadOnly = True
      TabOrder = 4
    end
  end
  object OpenDialog: TOpenDialog
    Left = 48
    Top = 16
  end
  object dbinfo: TADOQuery
    Connection = dm.YeganehConnection
    Parameters = <>
    Left = 240
    Top = 24
  end
  object ADOConnection: TADOConnection
    CommandTimeout = 3000
    ConnectionString = 
      'Provider=SQLOLEDB.1;Integrated Security=SSPI;Persist Security In' +
      'fo=False;Initial Catalog=master'
    LoginPrompt = False
    Provider = 'SQLOLEDB.1'
    Left = 136
    Top = 8
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
    Left = 336
    Top = 32
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
    Left = 128
    Top = 72
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
    Left = 48
    Top = 160
  end
end
