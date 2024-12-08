inherited fmArchiveAttachment: TfmArchiveAttachment
  Left = 284
  Top = 258
  ClientHeight = 486
  ClientWidth = 1054
  OldCreateOrder = True
  OnCreate = FormCreate
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 437
    Width = 1054
    Height = 49
    Align = alBottom
    TabOrder = 0
    DesignSize = (
      1054
      49)
    object btnSelDoc: TBitBtn
      Left = 968
      Top = 8
      Width = 75
      Height = 25
      Anchors = [akTop, akRight]
      Caption = #1575#1606#1578#1582#1575#1576' '#1587#1606#1583
      TabOrder = 0
      OnClick = btnSelDocClick
    end
    object btnSelAttach: TBitBtn
      Left = 208
      Top = 8
      Width = 75
      Height = 25
      Caption = #1575#1606#1578#1582#1575#1576' '#1662#1610#1608#1587#1578
      TabOrder = 1
      OnClick = btnSelAttachClick
    end
  end
  object Panel2: TPanel
    Left = 0
    Top = 0
    Width = 281
    Height = 437
    Align = alLeft
    TabOrder = 1
    object YDBGrid1: TYDBGrid
      Left = 1
      Top = 1
      Width = 279
      Height = 435
      Cursor = crHandPoint
      Align = alClient
      DataSource = dsAttachments
      Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit]
      ReadOnly = True
      TabOrder = 0
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'Tahoma'
      TitleFont.Style = []
      OnDblClick = YDBGrid1DblClick
      YeganehColor = True
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
          FieldName = 'PageNumber'
          Title.Caption = #1588#1605#1575#1585#1607' '#1589#1601#1581#1607
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'ExtentionTitle'
          Title.Caption = #1662#1587#1608#1606#1583
          Width = 100
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'Description'
          Title.Caption = #1578#1608#1590#1610#1581#1575#1578
          Width = 100
          Visible = True
        end>
    end
  end
  object Panel3: TPanel
    Left = 281
    Top = 0
    Width = 773
    Height = 437
    Align = alClient
    BiDiMode = bdRightToLeft
    ParentBiDiMode = False
    TabOrder = 2
    DesignSize = (
      773
      437)
    object Label1: TLabel
      Left = 597
      Top = 13
      Width = 43
      Height = 13
      Alignment = taRightJustify
      Anchors = [akTop, akRight]
      Caption = #1575#1606#1583#1610#1705#1575#1578#1608#1585' :'
    end
    object Label3: TLabel
      Left = 597
      Top = 45
      Width = 61
      Height = 13
      Alignment = taRightJustify
      Anchors = [akTop, akRight]
      Caption = #1588#1605#1575#1585#1607' '#1587#1606#1583' :'
    end
    object Label4: TLabel
      Left = 710
      Top = 13
      Width = 53
      Height = 13
      Alignment = taRightJustify
      Anchors = [akTop, akRight]
      Caption = #1578#1593#1583#1575#1583#1585#1705#1608#1585#1583' :'
    end
    object Label5: TLabel
      Left = 711
      Top = 45
      Width = 28
      Height = 13
      Alignment = taRightJustify
      Anchors = [akTop, akRight]
      Caption = #1587#1575#1604' :'
    end
    object Label6: TLabel
      Left = 477
      Top = 13
      Width = 38
      Height = 13
      Alignment = taRightJustify
      Anchors = [akTop, akRight]
      Caption = #1575#1586' '#1578#1575#1585#1610#1582' :'
    end
    object Label7: TLabel
      Left = 478
      Top = 45
      Width = 37
      Height = 13
      Alignment = taRightJustify
      Anchors = [akTop, akRight]
      Caption = #1578#1575' '#1578#1575#1585#1610#1582' :'
    end
    object Label8: TLabel
      Left = 335
      Top = 13
      Width = 68
      Height = 13
      Alignment = taRightJustify
      Anchors = [akTop, akRight]
      Caption = #1601#1610#1604#1583' '#1705#1575#1585#1576#1585#1610' 1 :'
    end
    object Label10: TLabel
      Left = 335
      Top = 45
      Width = 68
      Height = 13
      Alignment = taRightJustify
      Anchors = [akTop, akRight]
      Caption = #1601#1610#1604#1583' '#1705#1575#1585#1576#1585#1610' 2 :'
    end
    object Label11: TLabel
      Left = 161
      Top = 13
      Width = 68
      Height = 13
      Alignment = taRightJustify
      Anchors = [akTop, akRight]
      Caption = #1601#1610#1604#1583' '#1705#1575#1585#1576#1585#1610' 3 :'
    end
    object Label12: TLabel
      Left = 162
      Top = 45
      Width = 37
      Height = 13
      Alignment = taRightJustify
      Anchors = [akTop, akRight]
      Caption = #1582#1604#1575#1589#1607' :'
    end
    object DBGrid2: TYDBGrid
      Left = 1
      Top = 72
      Width = 771
      Height = 364
      Cursor = crHandPoint
      Align = alBottom
      DataSource = dsDocuments
      Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit]
      ReadOnly = True
      TabOrder = 0
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'Tahoma'
      TitleFont.Style = []
      OnDblClick = DBGrid2DblClick
      YeganehColor = True
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
          FieldName = 'IndicatorID'
          Title.Caption = #1575#1606#1583#1610#1705#1575#1578#1608#1585
          Width = 43
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'IncommingNO'
          Title.Caption = #1588#1605#1575#1585#1607' '#1587#1606#1583
          Width = 60
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'IncommingDate'
          Title.Caption = #1578#1575#1585#1610#1582' '#1587#1606#1583
          Width = 51
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'Memo'
          Title.Caption = #1582#1604#1575#1589#1607
          Width = 100
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'RegistrationDate'
          Title.Caption = #1578#1575#1585#1610#1582' '#1579#1576#1578
          Width = 51
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'SenderTitle'
          Title.Caption = #1605#1608#1590#1608#1593
          Width = 100
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'UserMemo'
          Title.Caption = #1601#1610#1604#1583' '#1705#1575#1585#1576#1585#1610' 1'
          Width = 100
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'UserMemo1'
          Title.Caption = #1601#1610#1604#1583' '#1705#1575#1585#1576#1585#1610' 2'
          Width = 100
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'UserMemo2'
          Title.Caption = #1601#1610#1604#1583' '#1705#1575#1585#1576#1585#1610' 3'
          Width = 100
          Visible = True
        end>
    end
    object edInnerNo: TEdit
      Left = 530
      Top = 40
      Width = 63
      Height = 21
      Anchors = [akTop, akRight]
      TabOrder = 1
      OnKeyPress = edInnerNoKeyPress
    end
    object edTop: TMaskEdit
      Left = 674
      Top = 8
      Width = 32
      Height = 21
      Anchors = [akTop, akRight]
      EditMask = '!999;1; '
      MaxLength = 3
      TabOrder = 2
      Text = '100'
      OnKeyPress = edTopKeyPress
    end
    object edFromDate: TMaskEdit
      Left = 415
      Top = 8
      Width = 60
      Height = 21
      Anchors = [akTop, akRight]
      BiDiMode = bdLeftToRight
      EditMask = '!1399/99/00;1; '
      MaxLength = 10
      ParentBiDiMode = False
      TabOrder = 3
      Text = '13  /  /  '
      OnKeyPress = edFromDateKeyPress
    end
    object edToDate: TMaskEdit
      Left = 415
      Top = 40
      Width = 60
      Height = 21
      Anchors = [akTop, akRight]
      BiDiMode = bdLeftToRight
      EditMask = '!1399/99/00;1; '
      MaxLength = 10
      ParentBiDiMode = False
      TabOrder = 4
      Text = '13  /  /  '
      OnKeyPress = edFromDateKeyPress
    end
    object edUserMemo1: TEdit
      Left = 239
      Top = 8
      Width = 92
      Height = 21
      Anchors = [akTop, akRight]
      TabOrder = 5
      OnKeyPress = edFromDateKeyPress
    end
    object edUserMemo2: TEdit
      Left = 239
      Top = 40
      Width = 92
      Height = 21
      Anchors = [akTop, akRight]
      TabOrder = 6
      OnKeyPress = edFromDateKeyPress
    end
    object edUserMemo3: TEdit
      Left = 63
      Top = 8
      Width = 92
      Height = 21
      Anchors = [akTop, akRight]
      TabOrder = 7
      OnKeyPress = edFromDateKeyPress
    end
    object edDesc: TEdit
      Left = 63
      Top = 40
      Width = 92
      Height = 21
      Anchors = [akTop, akRight]
      TabOrder = 8
      OnKeyPress = edFromDateKeyPress
    end
    object btnSearch: TBitBtn
      Left = 4
      Top = 8
      Width = 55
      Height = 55
      Anchors = [akTop, akRight]
      TabOrder = 9
      OnClick = btnSearchClick
      Glyph.Data = {
        AA040000424DAA04000000000000360000002800000013000000130000000100
        1800000000007404000000000000000000000000000000000000FCFCFCFFFFFF
        EAE5E2B9A69FBAA9A2BAA9A2B9A8A1B9A8A1BAA8A1B9A8A0B8A7A1B8A7A1B8A8
        A2B3A39FC7BBB5EADFCAC7C5C3FEFEFFFFFFFF000000FAF9F8FFFFFFC9B9B2B6
        9885CFB7A6C9AF9EC9B09FC9B19FC9B09EC9AF9EC8AF9DC9AE9CC6AC9BC7AC93
        D2BBAD818FC2A7A09AC7C5C5FDFEFE000000F9F8F7FFFFFFC7B6AFE4D9CCFFFF
        FBFFFAF0FFFBF2FFFCF1FFFCF0FFFAEFFFFBEEFFF9EEFFFDEBFFFCE77D9AF537
        97FFA2D6E9B2ACA8F5F6F6000000FAF9F8FFFFFFC8B7B0DCD1C6FDFCF3F8F2E8
        FAF3E9F7F1E8FBF4EAFEF6EAFCF5E9F7F2E5F0ECE77190F43D98FD69D3FE3488
        FDB0B9DCFDFDF8000000FAF9F8FFFFFFC9B7B0DED3C9FFFEF8F9F4ECFBF6EEFF
        FFF8F2F0EDE7E7E7E7E7E5FFFCEF9E9CAD3A8AE267D7FF3885FB8E9BDCFFFFFF
        FDFEFF000000FAF8F7FFFFFFC9B8B0DFD4CBFEFEFAFAF6EFFEFBF4C7C8C9B2A9
        9BB8A78FBBAD989F9E9EADA9A5B9CECD2F78E3A8B4F1CDB59EFAFBFDFEFEFE00
        0000F9F9F8FFFFFFCAB9B1E0D5CEFFFFFCFEFCF7C3C2C1BEA886F3CD90F7D092
        FAD59BDCBD8D908C86A7A3A1C2BEC5FFF7E6AC9384FCFDFDFFFFFF000000FAF9
        F8FFFFFFCCB9B1E0D4CFFFFFFFE5E5E4B9AB95FBDA9FEED3A0ECD09DE8C98FFD
        DA9FD3B98EB4B4B3FFFFF3F8EDE1B19789FDFEFEFFFFFF000000FAF8F8FFFFFF
        CCB9B1DFD4CEFEFEFECACACCDAC79EF9E5B7F2E0B6F3DEAFF0D7A4EBCC94F5D5
        A1BAB0A4F7F5F3FAF0E3B29889FCFDFDFFFFFF000000FBF9F7FFFFFFCDBBB1E0
        D5D0FFFFFFCACBCDE1D1ADFEF4D6F7EFD2F6E8C2F3DFB1EDD4A1F4D39CB8AFA1
        F8F6F3FBF0E4B2988AFDFEFEFFFFFF000000FBF9F8FFFFFFCEBBB2E1D6D1FFFF
        FFE6E5E8C8C1ADFFFFEEFCFBF4F8F1D5F2E3BCF9DEAADFC596BCB9B4FDFBF4FA
        F1E5B2988AFDFEFEFFFFFF000000FAF8F8FFFFFFCFBBB3E3D8D3FFFFFFFEFEFF
        CBCAC9DDD9C5FFFFEFFFFBDDFFECBFEED4A0ACA393E5E3E2FCFAF3F9EFE5B499
        8CFCFDFDFEFEFE000000FBF9F9FFFFFFCFBCB3E3D8D3FFFFFFFDFDFCFDFDFECC
        CBCBC3BFAFD0C8ADC8BBA1B2AFA7E5E7E7FFFFFFFFFDF7FEF6ECB29687FDFEFE
        FFFFFF000000FBF9F9FFFFFFD0BCB3E3D8D4FFFFFFFDFCFCFFFFFFFFFFFFECEC
        EFD5D6DADCDEE1EBE6E3DBCCC3D3C3BDD2C2BAB49A8BB69F94FFFFFFFEFDFD00
        0000FBF9F9FFFFFFD1BDB4E4D9D3FFFFFFFEFCFCFEFEFEFEFDFDFFFFFFFFFFFF
        FFFFFFDDD0C9B69C8DD5BFA1BA9063A98C7CF5F2F2FDFDFDFDFDFD000000FBF9
        F9FFFFFFD1BEB4E4D9D3FEFEFEFDFCFCFEFEFEFDFDFDFCFCFCFAF9F8FDFDFDE1
        D7D3D6BB9FEDCC94BB9E87F6F5F6FFFFFFFDFDFDFFFFFF000000FBF9F9FFFFFF
        D2BEB5E7DCD8FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEFDFFFFFFE9E2DEB68C
        64BC9D84F1F0F3FFFFFFFDFDFCFEFEFEFFFFFF000000FAF8F8FFFFFFCDB8AED8
        C7BFF2EDEBF0EAE7F1ECE9F1EBE9F1EBE8EFE8E5F1EBE9CFBDB4AB8B7BF3F0F0
        FFFFFFFDFCFCFFFFFFFFFFFFFEFEFE000000FCFBFBFFFFFFE6DCD8C8B0A6CEBA
        B1CDB8AFCCB8AECCB8AECBB7ADCAB6AEC8B4ABCBB9B0F6F3F2FFFFFFFDFDFDFF
        FFFFFEFEFEFEFEFEFFFFFF000000}
    end
    object edMyear: TEdit
      Left = 674
      Top = 40
      Width = 32
      Height = 21
      Anchors = [akTop, akRight]
      MaxLength = 2
      TabOrder = 10
      OnKeyPress = edMyearKeyPress
    end
    object edIndicatorID: TEdit
      Left = 530
      Top = 7
      Width = 63
      Height = 21
      Anchors = [akTop, akRight]
      TabOrder = 11
      OnKeyPress = edIndicatorIDKeyPress
    end
  end
  object dsAttachments: TDataSource
    DataSet = qryAttachments
    Left = 32
    Top = 120
  end
  object dsDocuments: TDataSource
    DataSet = sp_SearchArchive
    Left = 473
    Top = 120
  end
  object qryAttachments: TADOQuery
    Connection = Dm.ArchiveConnection
    CursorType = ctStatic
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
      
        'SELECT'#9'LetterDataID, PageNumber, extention.ExtentionID , Extenti' +
        'on.extention, ExtentionTitle, Description'
      'FROM'#9'LetterData INNER JOIN'
      #9#9'Extention ON LetterData.extention = extention.ExtentionID'
      'WHERE'#9'LetterID = :p1')
    Left = 32
    Top = 168
    object qryAttachmentsLetterDataID: TAutoIncField
      FieldName = 'LetterDataID'
      ReadOnly = True
    end
    object qryAttachmentsPageNumber: TIntegerField
      FieldName = 'PageNumber'
    end
    object qryAttachmentsExtentionTitle: TWideStringField
      FieldName = 'ExtentionTitle'
      Size = 100
    end
    object qryAttachmentsDescription: TWideStringField
      FieldName = 'Description'
      Size = 50
    end
    object qryAttachmentsextention: TStringField
      FieldName = 'extention'
      Size = 5
    end
    object qryAttachmentsExtentionID: TAutoIncField
      FieldName = 'ExtentionID'
      ReadOnly = True
    end
  end
  object sp_SearchArchive: TADOStoredProc
    Connection = Dm.ArchiveConnection
    CursorType = ctStatic
    AfterOpen = sp_SearchArchiveAfterOpen
    AfterScroll = sp_SearchArchiveAfterScroll
    ProcedureName = 'sp_SearchArchive;1'
    Parameters = <
      item
        Name = '@RETURN_VALUE'
        DataType = ftInteger
        Direction = pdReturnValue
        Precision = 10
        Value = 0
      end
      item
        Name = '@TOP'
        Attributes = [paNullable]
        DataType = ftInteger
        Precision = 10
        Value = Null
      end
      item
        Name = '@MYEAR'
        Attributes = [paNullable]
        DataType = ftInteger
        Precision = 10
        Value = Null
      end
      item
        Name = '@SecID'
        Attributes = [paNullable]
        DataType = ftInteger
        Precision = 10
        Value = Null
      end
      item
        Name = '@INDICATORID'
        Attributes = [paNullable]
        DataType = ftInteger
        Precision = 10
        Value = Null
      end
      item
        Name = '@INCOMMINGNO'
        Attributes = [paNullable]
        DataType = ftWideString
        Size = 50
        Value = Null
      end
      item
        Name = '@FROMDATE'
        Attributes = [paNullable]
        DataType = ftWideString
        Size = 10
        Value = Null
      end
      item
        Name = '@TODATE'
        Attributes = [paNullable]
        DataType = ftWideString
        Size = 10
        Value = Null
      end
      item
        Name = '@MEMO'
        Attributes = [paNullable]
        DataType = ftWideString
        Size = 500
        Value = Null
      end
      item
        Name = '@UserField1'
        Size = 500
        Value = Null
      end
      item
        Name = '@UserField2'
        Size = 500
        Value = Null
      end
      item
        Name = '@UserField3'
        Size = 500
        Value = Null
      end
      item
        Name = '@ArchiveUserID'
        Precision = 10
        Size = -1
        Value = Null
      end>
    Left = 473
    Top = 168
    object sp_SearchArchiveLetterID: TAutoIncField
      FieldName = 'LetterID'
      ReadOnly = True
    end
    object sp_SearchArchiveIndicatorID: TIntegerField
      FieldName = 'IndicatorID'
    end
    object sp_SearchArchiveMYear: TWordField
      FieldName = 'MYear'
    end
    object sp_SearchArchiveSecretariatID: TWordField
      FieldName = 'SecretariatID'
    end
    object sp_SearchArchiveIncommingNO: TWideStringField
      FieldName = 'IncommingNO'
      Size = 50
    end
    object sp_SearchArchiveFromOrgID: TIntegerField
      FieldName = 'FromOrgID'
    end
    object sp_SearchArchiveIncommingDate: TWideStringField
      FieldName = 'IncommingDate'
      Size = 10
    end
    object sp_SearchArchiveToOrgID: TIntegerField
      FieldName = 'ToOrgID'
    end
    object sp_SearchArchiveMemo: TWideStringField
      FieldName = 'Memo'
      Size = 2000
    end
    object sp_SearchArchiveRegistrationDate: TStringField
      FieldName = 'RegistrationDate'
      FixedChar = True
      Size = 10
    end
    object sp_SearchArchiveSenderTitle: TWideStringField
      FieldName = 'SenderTitle'
      Size = 100
    end
    object sp_SearchArchiveDeliverTitle: TWideStringField
      FieldName = 'DeliverTitle'
      Size = 100
    end
    object sp_SearchArchiveInnerNo: TWideStringField
      FieldName = 'InnerNo'
      ReadOnly = True
      Size = 100
    end
    object sp_SearchArchiveUserTitle: TWideStringField
      FieldName = 'UserTitle'
      Size = 50
    end
    object sp_SearchArchiveUserMemo: TWideStringField
      FieldName = 'UserMemo'
      Size = 255
    end
    object sp_SearchArchiveUserMemo1: TWideStringField
      FieldName = 'UserMemo1'
      Size = 255
    end
    object sp_SearchArchiveUserMemo2: TWideStringField
      FieldName = 'UserMemo2'
      Size = 255
    end
  end
  object ADOCommand1: TADOCommand
    ConnectionString = 
      'Provider=SQLOLEDB.1;Password=123;Persist Security Info=True;User' +
      ' ID=sa;Initial Catalog=yArchive;Data Source=DEVELOPER-PC'
    Parameters = <>
    Left = 192
    Top = 240
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
    Left = 129
    Top = 80
  end
end
