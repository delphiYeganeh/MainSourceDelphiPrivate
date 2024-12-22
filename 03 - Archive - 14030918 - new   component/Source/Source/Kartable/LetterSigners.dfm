object fmLetterSigners: TfmLetterSigners
  Left = 395
  Top = 236
  BiDiMode = bdRightToLeft
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = #1575#1605#1590#1575' '#1705#1606#1606#1583#1711#1575#1606' '#1606#1575#1605#1607
  ClientHeight = 232
  ClientWidth = 587
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  ParentBiDiMode = False
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 193
    Width = 587
    Height = 39
    Align = alBottom
    TabOrder = 0
    object Button1: TButton
      Left = 8
      Top = 8
      Width = 65
      Height = 25
      Caption = #1582#1585#1608#1580
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 0
      OnClick = Button1Click
    end
    object Button2: TButton
      Left = 80
      Top = 8
      Width = 89
      Height = 25
      Caption = #1575#1601#1586#1608#1583#1606' '#1575#1605#1590#1575
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 1
      OnClick = Button2Click
    end
    object Button3: TButton
      Left = 176
      Top = 8
      Width = 89
      Height = 25
      Caption = #1575#1585#1587#1575#1604' '#1576#1607' '#1583#1576#1610#1585#1582#1575#1606#1607
      Enabled = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 2
      OnClick = Button3Click
    end
  end
  object YDBGrid1: TYDBGrid
    Left = 0
    Top = 0
    Width = 587
    Height = 193
    Cursor = crHandPoint
    Align = alClient
    BiDiMode = bdRightToLeft
    DataSource = dLetterSign
    Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit]
    ParentBiDiMode = False
    ReadOnly = True
    TabOrder = 1
    TitleFont.Charset = DEFAULT_CHARSET
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
    AutoInsert = False
    FooterFields = 'Count'
    Columns = <
      item
        Alignment = taRightJustify
        Expanded = False
        FieldName = 'title'
        Title.Caption = #1606#1575#1605' '#1575#1605#1590#1575' '#1705#1606#1606#1583#1607
        Title.Color = clInactiveBorder
        Width = 162
        Visible = True
      end
      item
        Alignment = taRightJustify
        Expanded = False
        FieldName = 'date'
        Title.Caption = #1578#1575#1585#1610#1582' '#1575#1605#1590#1575
        Title.Color = clInactiveBorder
        Width = 80
        Visible = True
      end
      item
        Alignment = taRightJustify
        Expanded = False
        FieldName = 'time'
        Title.Caption = #1587#1575#1593#1578
        Title.Color = clInactiveBorder
        Width = 46
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'paraph'
        Title.Caption = #1662#1575#1585#1575#1601
        Title.Color = clInactiveBorder
        Width = 260
        Visible = True
      end>
  end
  object dLetterSign: TDataSource
    DataSet = Dm.qLetterSign
    Left = 56
    Top = 32
  end
  object QrUserSign: TADOQuery
    Connection = Dm.YeganehConnection
    Parameters = <
      item
        Name = 'Pa_UserID'
        Attributes = [paSigned]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = 0
      end>
    SQL.Strings = (
      
        'Select Us.UserID,Us.SecoundSign, U.Title , U.UserName , U.[Passw' +
        'ord]'
      'from userSign us , Users U '
      'Where Us.UserID = U.ID'
      'And Us.UserID = :Pa_UserID'
      ''
      '')
    Left = 108
    Top = 27
    object QrUserSignUserID: TIntegerField
      FieldName = 'UserID'
    end
    object QrUserSignSecoundSign: TBlobField
      FieldName = 'SecoundSign'
    end
    object QrUserSignTitle: TWideStringField
      FieldName = 'Title'
      Size = 50
    end
    object QrUserSignUserName: TWideStringField
      FieldName = 'UserName'
      Size = 50
    end
    object QrUserSignPassword: TWideStringField
      FieldName = 'Password'
      Size = 50
    end
  end
  object OpenPictureDialog: TOpenPictureDialog
    Filter = 'JPG|*.jpg'
    Left = 126
    Top = 96
  end
  object qryUpdate: TADOQuery
    Connection = Dm.YeganehConnection
    Parameters = <
      item
        Name = 'Param1'
        Attributes = [paNullable, paLong]
        DataType = ftVarBytes
        NumericScale = 255
        Precision = 255
        Size = 2147483647
        Value = Null
      end
      item
        Name = 'Param2'
        Attributes = [paSigned]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = Null
      end>
    SQL.Strings = (
      'UPDATE UserSign '
      'SET SecoundSign= :p1'
      'WHERE UserID = :p2')
    Left = 40
    Top = 144
  end
  object qrySecoundSign: TADOQuery
    Connection = Dm.YeganehConnection
    Parameters = <
      item
        Name = 'p1'
        Attributes = [paSigned]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = Null
      end>
    SQL.Strings = (
      'SELECT SecoundSign FROM UserSign'
      'WHERE UserID = :p1')
    Left = 184
    Top = 16
    object qrySecoundSignSecoundSign: TBlobField
      FieldName = 'SecoundSign'
    end
  end
  object qryWord: TADOQuery
    Connection = Dm.YeganehConnection
    Parameters = <
      item
        Name = 'p1'
        Attributes = [paSigned]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = Null
      end>
    SQL.Strings = (
      'SELECT * FROM LetterData'#10
      'WHERE LetterID= :p1'
      'and extention=3')
    Left = 216
    Top = 72
    object qryWordLetterDataID: TAutoIncField
      FieldName = 'LetterDataID'
      ReadOnly = True
    end
    object qryWordLetterID: TIntegerField
      FieldName = 'LetterID'
    end
    object qryWordPageNumber: TIntegerField
      FieldName = 'PageNumber'
    end
    object qryWordImage: TBlobField
      FieldName = 'Image'
    end
    object qryWordextention: TWordField
      FieldName = 'extention'
    end
    object qryWordDescription: TWideStringField
      FieldName = 'Description'
      Size = 200
    end
    object qryWordLastUpdate: TDateTimeField
      FieldName = 'LastUpdate'
    end
    object qryWordUniqueID: TLargeintField
      FieldName = 'UniqueID'
    end
    object qryWordListItemsID: TIntegerField
      FieldName = 'ListItemsID'
    end
    object qryWordIsCorrectedImage: TBooleanField
      FieldName = 'IsCorrectedImage'
    end
    object qryWordVersionNo: TStringField
      FieldName = 'VersionNo'
      Size = 10
    end
    object qryWordVersionDate: TStringField
      FieldName = 'VersionDate'
      Size = 10
    end
  end
end
