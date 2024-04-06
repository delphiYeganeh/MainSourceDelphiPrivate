inherited FrAddLetterDataDialog: TFrAddLetterDataDialog
  Tag = 11
  Left = 745
  Top = 253
  BorderIcons = [biSystemMenu]
  BorderStyle = bsDialog
  Caption = #1575#1590#1575#1601#1607' '#1705#1585#1583#1606' '#1662#1610#1608#1587#1578
  ClientHeight = 194
  ClientWidth = 391
  Constraints.MinHeight = 220
  Constraints.MinWidth = 380
  OldCreateOrder = True
  PixelsPerInch = 96
  TextHeight = 13
  object GroupBox1: TGroupBox [0]
    Left = 0
    Top = 0
    Width = 391
    Height = 153
    Align = alClient
    Caption = #1575#1591#1604#1575#1593#1575#1578' '#1662#1610#1608#1587#1578
    Color = clBtnFace
    ParentColor = False
    TabOrder = 0
    DesignSize = (
      391
      153)
    object Label2: TLabel
      Left = 310
      Top = 24
      Width = 59
      Height = 13
      Anchors = [akTop, akRight]
      Caption = #1588#1585#1581' '#1662#1610#1608#1587#1578
    end
    object Label1: TLabel
      Left = 310
      Top = 49
      Width = 51
      Height = 13
      Anchors = [akTop, akRight]
      Caption = #1606#1608#1593' '#1662#1610#1608#1587#1578
    end
    object Label3: TLabel
      Left = 310
      Top = 75
      Width = 55
      Height = 13
      Anchors = [akTop, akRight]
      Caption = #1601#1575#1610#1604' '#1662#1610#1608#1587#1578
    end
    object SpeedButton1: TSpeedButton
      Left = 286
      Top = 72
      Width = 20
      Height = 20
      Cursor = crHandPoint
      Anchors = [akTop, akRight]
      Caption = '...'
      OnClick = SpeedButton1Click
    end
    object Label4: TLabel
      Left = 312
      Top = 101
      Width = 61
      Height = 13
      Anchors = [akTop, akRight]
      Caption = #1588#1605#1575#1585#1607' '#1606#1587#1582#1607
    end
    object Label5: TLabel
      Left = 136
      Top = 101
      Width = 52
      Height = 13
      Anchors = [akTop, akRight]
      Caption = #1578#1575#1585#1610#1582' '#1606#1587#1582#1607
    end
    object Title: TDBEdit
      Left = 32
      Top = 20
      Width = 274
      Height = 21
      Anchors = [akTop, akRight]
      Ctl3D = True
      DataField = 'description'
      DataSource = DSForm
      ParentCtl3D = False
      TabOrder = 0
      OnEnter = TEditEnter
      OnExit = TEditExit
    end
    object DBLookupComboBox1: TDBLookupComboBox
      Left = 32
      Top = 48
      Width = 274
      Height = 21
      Anchors = [akTop, akRight]
      BiDiMode = bdLeftToRight
      DataField = 'ExtentionTitle'
      DataSource = DSForm
      ParentBiDiMode = False
      TabOrder = 1
      OnClick = DBLookupComboBox1Click
    end
    object Path: TEdit
      Left = 32
      Top = 72
      Width = 253
      Height = 21
      Anchors = [akTop, akRight]
      BiDiMode = bdLeftToRight
      ParentBiDiMode = False
      TabOrder = 2
    end
    object DBEdit1: TDBEdit
      Left = 210
      Top = 96
      Width = 97
      Height = 21
      Anchors = [akTop, akRight]
      DataField = 'VersionNo'
      DataSource = DSForm
      TabOrder = 3
    end
    object DBEdit2: TDBEdit
      Left = 33
      Top = 96
      Width = 97
      Height = 21
      Anchors = [akTop, akRight]
      DataField = 'VersionDate'
      DataSource = DSForm
      TabOrder = 4
    end
    object chkSendAttachToArchive: TCheckBox
      Left = 35
      Top = 126
      Width = 273
      Height = 17
      Anchors = [akTop, akRight]
      Caption = #1575#1601#1586#1608#1583#1606' '#1662#1610#1608#1587#1578' '#1580#1575#1585#1610' '#1576#1607' '#1662#1575#1610#1711#1575#1607' '#1583#1575#1583#1607' '#1576#1575#1610#1711#1575#1606#1610
      TabOrder = 5
      Visible = False
    end
  end
  object Panel1: TPanel [1]
    Left = 0
    Top = 153
    Width = 391
    Height = 41
    Align = alBottom
    TabOrder = 1
    object BitBtn2: TBitBtn
      Left = 230
      Top = 9
      Width = 75
      Height = 25
      Cursor = crHandPoint
      Cancel = True
      Caption = #1575#1606#1589#1585#1575#1601
      Font.Charset = ARABIC_CHARSET
      Font.Color = clNavy
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 0
      OnClick = BitBtn2Click
      Glyph.Data = {
        AA030000424DAA03000000000000360000002800000011000000110000000100
        1800000000007403000000000000000000000000000000000000008080008080
        0080800080800080800080800080800080800080800080800080800080800080
        800080800080800080805465D400008080008080008080008080008080008080
        0080800080800080800080800080800080800080800080800080803B4CD10000
        C0000080800000BF0006C13446CF008080008080008080008080008080008080
        008080008080008080008080263BD10001C54153D4000080800000C50013C800
        0CC72E43D2008080008080008080008080008080008080008080008080132AD1
        0000C93B4FD7008080000080800080801027D10010CE000DCD1026D200808000
        80800080800080800080800080800017D10006CE4356DA008080008080000080
        800080800080804053DD000FD4000CD30080800080800080800080808D9AE705
        1DD50005D24355DD008080008080008080000080800080800080800080806A7B
        E5000ED9000BD80080800080807385E60016D80008D64558E000808000808000
        8080008080000080800080800080800080800080800080800822DF0000FF0000
        FF0018DC000BDA485CE300808000808000808000808000808000008080008080
        008080008080008080008080008080162EE30013E00013E04A5EE60080800080
        8000808000808000808000808000008080008080008080008080008080008080
        3D52E90016E20015E3001AE50A26EA97A4F00080800080800080800080800080
        80000080800080800080800080800080802740EB000DE7000EE75467EC008080
        011DEC0018ED8B99F10080800080800080800080800000808000808000808000
        80801E37ED000FEC000EEC5165EF008080008080008080132DF3000EF28F9EF4
        00808000808000808000008080008080008080112BF00013EF0010EF5063F100
        80800080800080800080800080803148F6000DF891A0F6008080008080000080
        800080800011F20015F30012F35B6DF500808000808000808000808000808000
        80800080806074F80014FD798AFA008080000080800014F70019F8000EF8586C
        F700808000808000808000808000808000808000808000808000808092A2FA88
        98FA00808000008080000DFD000EFC586CF90080800080800080800080800080
        80008080008080008080008080008080008080008080008080000080802D47FC
        7588FB0080800080800080800080800080800080800080800080800080800080
        8000808000808000808000808000}
    end
    object BitBtn1: TBitBtn
      Left = 310
      Top = 9
      Width = 75
      Height = 25
      Cursor = crHandPoint
      Caption = #1578#1575#1610#1610#1583
      Default = True
      Font.Charset = ARABIC_CHARSET
      Font.Color = clNavy
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 1
      OnClick = BitBtn1Click
      Glyph.Data = {
        06030000424D06030000000000003600000028000000100000000F0000000100
        180000000000D002000000000000000000000000000000000000008080008080
        0080800080808000008000000080800080800080800080800080800080800080
        8000808000808000808000808000808000808080000000800000800080000000
        8080008080008080008080008080008080008080008080008080008080008080
        8000000080000080000080000080008000000080800080800080800080800080
        8000808000808000808000808080000000800000800000800000800000800000
        8000800000008080008080008080008080008080008080008080800000008000
        00800000800000FF000080000080000080000080008000000080800080800080
        8000808000808000808000800000800000800000FF0000808000808000800000
        800000800080000000808000808000808000808000808000808000FF00008000
        00FF0000808000808000808000FF000080000080000080008000000080800080
        8000808000808000808000808000FF0000808000808000808000808000808000
        FF00008000008000008000800000008080008080008080008080008080008080
        00808000808000808000808000808000808000FF000080000080000080008000
        0000808000808000808000808000808000808000808000808000808000808000
        808000808000FF00008000008000008000800000008080008080008080008080
        00808000808000808000808000808000808000808000808000FF000080000080
        0000800080000000808000808000808000808000808000808000808000808000
        808000808000808000808000FF00008000008000008000800000008080008080
        00808000808000808000808000808000808000808000808000808000808000FF
        0000800000800080000000808000808000808000808000808000808000808000
        808000808000808000808000808000808000FF00008000008000008080008080
        0080800080800080800080800080800080800080800080800080800080800080
        8000808000FF00008080}
    end
  end
  inherited DSForm: TDataSource
    Left = 96
    Top = 8
  end
  inherited ActionList: TActionList
    Left = 232
    Top = 8
  end
  inherited Grid_PopupMenu: TPopupMenu
    Left = 319
    Top = 12
  end
  object QUpdateGroupImage: TADOQuery
    Connection = Dm.YeganehConnection
    Parameters = <>
    Left = 176
    Top = 48
  end
  object QFileSizeInDB: TADOQuery
    Connection = Dm.YeganehConnection
    Parameters = <>
    SQL.Strings = (
      
        'SELECT TOP 1 VALUE AS '#39'FileSizeInDB'#39' FROM Settings WHERE Variabl' +
        'eName='#39'SizeOfRecommiteAttachFile'#39)
    Left = 48
    Top = 56
    object QFileSizeInDBFileSizeInDB: TWideStringField
      FieldName = 'FileSizeInDB'
      Size = 255
    end
  end
  object Insert_Archive: TADOStoredProc
    Connection = Dm.ArchiveConnection
    ProcedureName = 'Insert_Letter_From_Dabir;1'
    Parameters = <
      item
        Name = '@RETURN_VALUE'
        DataType = ftInteger
        Direction = pdReturnValue
        Precision = 10
        Value = 0
      end
      item
        Name = '@INNO'
        Attributes = [paNullable]
        DataType = ftWideString
        Size = 50
        Value = #39#39
      end
      item
        Name = '@IndicatorID'
        Attributes = [paNullable]
        DataType = ftInteger
        Precision = 10
        Value = 0
      end
      item
        Name = '@MYear'
        Attributes = [paNullable]
        DataType = ftWord
        Precision = 3
        Value = 0
      end
      item
        Name = '@SecretariatID'
        Attributes = [paNullable]
        DataType = ftWord
        Precision = 3
        Value = 0
      end
      item
        Name = '@Letter_Type'
        Attributes = [paNullable]
        DataType = ftWord
        Precision = 3
        Value = 0
      end
      item
        Name = '@letterformat'
        Attributes = [paNullable]
        DataType = ftWord
        Precision = 3
        Value = 0
      end
      item
        Name = '@Memo'
        Attributes = [paNullable]
        DataType = ftWideString
        Size = 500
        Value = ''
      end
      item
        Name = '@UserID'
        Attributes = [paNullable]
        DataType = ftInteger
        Precision = 10
        Value = 0
      end
      item
        Name = '@RegistrationDate'
        Attributes = [paNullable]
        DataType = ftString
        Size = 16
        Value = '0'
      end
      item
        Name = '@RegistrationTime'
        Attributes = [paNullable]
        DataType = ftString
        Size = 5
        Value = ''
      end
      item
        Name = '@ExtenTionType'
        Attributes = [paNullable]
        DataType = ftWideString
        Size = 5
        Value = ''
      end
      item
        Name = '@ExtenTionDesc'
        Attributes = [paNullable]
        DataType = ftWideString
        Size = 100
        Value = ''
      end
      item
        Name = '@DataDesc'
        Attributes = [paNullable]
        DataType = ftWideString
        Size = 50
        Value = ''
      end
      item
        Name = '@out_LetterDataID'
        Attributes = [paNullable]
        DataType = ftInteger
        Direction = pdInputOutput
        Precision = 10
        Value = 5828
      end>
    Left = 112
    Top = 120
  end
  object qryUpdateImage: TADOQuery
    Connection = Dm.ArchiveConnection
    CursorType = ctStatic
    Parameters = <
      item
        Name = 'p1'
        Attributes = [paSigned]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = 0
      end>
    SQL.Strings = (
      'select * from letterdata where letterdataID = :p1')
    Left = 40
    Top = 136
    object qryUpdateImageLetterDataID: TAutoIncField
      FieldName = 'LetterDataID'
      ReadOnly = True
    end
    object qryUpdateImageLetterID: TIntegerField
      FieldName = 'LetterID'
    end
    object qryUpdateImagePageNumber: TIntegerField
      FieldName = 'PageNumber'
    end
    object qryUpdateImageImage: TBlobField
      FieldName = 'Image'
    end
    object qryUpdateImageextention: TWordField
      FieldName = 'extention'
    end
    object qryUpdateImageDescription: TWideStringField
      FieldName = 'Description'
      Size = 50
    end
    object qryUpdateImageLastUpdate: TDateTimeField
      FieldName = 'LastUpdate'
    end
    object qryUpdateImageListItemsID: TIntegerField
      FieldName = 'ListItemsID'
    end
    object qryUpdateImageIsCorrectedImage: TBooleanField
      FieldName = 'IsCorrectedImage'
    end
    object qryUpdateImageColorID: TIntegerField
      FieldName = 'ColorID'
    end
    object qryUpdateImageVersionNo: TStringField
      FieldName = 'VersionNo'
      Size = 50
    end
    object qryUpdateImageVersionDate: TStringField
      FieldName = 'VersionDate'
      Size = 10
    end
  end
  object sp_INSERT_LetterData_Extended: TADOStoredProc
    Connection = Dm.YeganehConnection
    ProcedureName = 'sp_INSERT_LetterData_Extended;1'
    Parameters = <
      item
        Name = '@RETURN_VALUE'
        DataType = ftInteger
        Direction = pdReturnValue
        Precision = 10
        Value = -6
      end
      item
        Name = '@LetterID'
        Attributes = [paNullable]
        DataType = ftInteger
        Precision = 10
        Value = Null
      end
      item
        Name = '@PageNumber'
        Attributes = [paNullable]
        DataType = ftInteger
        Precision = 10
        Value = Null
      end
      item
        Name = '@extentionType'
        Attributes = [paNullable]
        DataType = ftWideString
        Size = 10
        Value = Null
      end
      item
        Name = '@extentionDesc'
        Attributes = [paNullable]
        DataType = ftWideString
        Size = 500
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
        Name = '@archiveID'
        Attributes = [paNullable]
        DataType = ftInteger
        Precision = 10
        Value = Null
      end
      item
        Name = '@isDocument'
        Attributes = [paNullable]
        DataType = ftInteger
        Precision = 10
        Value = Null
      end
      item
        Name = '@isFromArchive'
        DataType = ftBoolean
        Value = Null
      end>
    Left = 201
    Top = 120
  end
  object OpenDialog: TTntOpenDialog
    Filter = #1607#1605#1607' '#1601#1575#1740#1604'  '#1607#1575'|*.*'
    Left = 56
    Top = 120
  end
end
