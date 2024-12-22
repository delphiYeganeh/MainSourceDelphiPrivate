inherited FExportToWord: TFExportToWord
  Left = 864
  Top = 241
  AutoScroll = False
  Caption = #1575#1585#1587#1575#1604' '#1576#1607' WORD'
  ClientHeight = 372
  ClientWidth = 412
  Constraints.MinHeight = 300
  Constraints.MinWidth = 420
  OldCreateOrder = True
  PixelsPerInch = 96
  TextHeight = 13
  object pnlMain: TPanel [0]
    Left = 0
    Top = 0
    Width = 412
    Height = 372
    Align = alClient
    ParentColor = True
    TabOrder = 0
    object Panel3: TPanel
      Left = 1
      Top = 40
      Width = 410
      Height = 290
      Align = alClient
      Caption = 'Panel3'
      TabOrder = 0
      object YDBGrid2: TYDBGrid
        Left = 1
        Top = 1
        Width = 408
        Height = 288
        Align = alClient
        Color = 15923705
        DataSource = Dm.DLetterTemplate
        Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit]
        ReadOnly = True
        TabOrder = 0
        TitleFont.Charset = ARABIC_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'Tahoma'
        TitleFont.Style = []
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
            Alignment = taRightJustify
            Expanded = False
            FieldName = 'Title'
            Title.Alignment = taCenter
            Title.Caption = #1602#1575#1604#1576' '#1605#1608#1585#1583' '#1575#1587#1578#1601#1575#1583#1607' '
            Width = 370
            Visible = True
          end>
      end
    end
    object Panel2: TPanel
      Left = 1
      Top = 330
      Width = 410
      Height = 41
      Align = alBottom
      TabOrder = 1
      DesignSize = (
        410
        41)
      object Button1: TAdvGlowButton
        Left = 5
        Top = 7
        Width = 75
        Height = 28
        Cursor = crHandPoint
        Cancel = True
        Caption = #1582#1585#1608#1580
        Font.Charset = ARABIC_CHARSET
        Font.Color = clNavy
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ImageIndex = 84
        Images = Dm.ImageList_MainNew
        NotesFont.Charset = DEFAULT_CHARSET
        NotesFont.Color = clWindowText
        NotesFont.Height = -11
        NotesFont.Name = 'Tahoma'
        NotesFont.Style = []
        ParentFont = False
        TabOrder = 0
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
      object ExpToWord: TAdvGlowButton
        Left = 161
        Top = 7
        Width = 128
        Height = 28
        Cursor = crHandPoint
        Anchors = [akTop, akRight]
        Caption = ' Word'
        Font.Charset = ARABIC_CHARSET
        Font.Color = clNavy
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ImageIndex = 43
        Images = Dm.ImageList_MainNew
        NotesFont.Charset = DEFAULT_CHARSET
        NotesFont.Color = clWindowText
        NotesFont.Height = -11
        NotesFont.Name = 'Tahoma'
        NotesFont.Style = []
        ParentFont = False
        TabOrder = 1
        OnClick = ExpToWordClick
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
      object OpenFile: TAdvGlowButton
        Left = 291
        Top = 7
        Width = 114
        Height = 28
        Cursor = crHandPoint
        Anchors = [akTop, akRight]
        Caption = #1582#1608#1575#1606#1583#1606' '#1575#1586' '#1601#1575#1610#1604
        Font.Charset = ARABIC_CHARSET
        Font.Color = clNavy
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ImageIndex = 36
        Images = Dm.ImageList_MainNew
        NotesFont.Charset = DEFAULT_CHARSET
        NotesFont.Color = clWindowText
        NotesFont.Height = -11
        NotesFont.Name = 'Tahoma'
        NotesFont.Style = []
        ParentFont = False
        TabOrder = 2
        OnClick = OpenFileClick
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
    end
    object Panel1: TPanel
      Left = 1
      Top = 1
      Width = 410
      Height = 39
      Align = alTop
      ParentColor = True
      TabOrder = 2
      DesignSize = (
        410
        39)
      object Label1: TLabel
        Left = 342
        Top = 14
        Width = 58
        Height = 13
        Anchors = [akTop, akRight]
        Caption = #1711#1585#1608#1607' '#1602#1575#1604#1576' '#1607#1575
      end
      object LookupTemplateGroup: TDBLookupComboBox
        Left = 8
        Top = 9
        Width = 328
        Height = 21
        Anchors = [akLeft, akTop, akRight]
        BiDiMode = bdLeftToRight
        KeyField = 'TemplateGroupID'
        ListField = 'TemplateGroupTitle'
        ListSource = Dm.DUserTemplateGroup
        ParentBiDiMode = False
        TabOrder = 0
        OnClick = LookupTemplateGroupClick
      end
    end
  end
  inherited DSForm: TDataSource
    DataSet = GetLetterTemplate_HeaderID
    Left = 74
    Top = 135
  end
  inherited ActionList: TActionList
    Left = 333
    Top = 133
  end
  inherited xpWindow1: TxpWindow
    Left = 333
    Top = 184
  end
  object WordApplication: TWordApplication
    AutoConnect = False
    ConnectKind = ckRunningOrNew
    AutoQuit = False
    OnDocumentBeforeClose = WordApplicationDocumentBeforeClose
    Left = 333
    Top = 84
  end
  object WordDocument: TWordDocument
    AutoConnect = False
    ConnectKind = ckRunningOrNew
    OnClose = WordDocumentClose
    Left = 227
    Top = 84
  end
  object Dsel: TDataSource
    DataSet = SelectInfo
    Left = 74
    Top = 264
  end
  object SelectInfo: TADOStoredProc
    Connection = Dm.YeganehConnection
    CursorType = ctStatic
    OnCalcFields = SelectInfoCalcFields
    ProcedureName = 'SelectInfo;1'
    Parameters = <
      item
        Name = '@RETURN_VALUE'
        DataType = ftInteger
        Direction = pdReturnValue
        Precision = 10
        Value = 0
      end
      item
        Name = '@where'
        Attributes = [paNullable]
        DataType = ftFixedChar
        Size = 1900
        Value = Null
      end>
    Left = 74
    Top = 210
    object SelectInfoIncommingMiladiDate_Calc: TStringField
      FieldKind = fkCalculated
      FieldName = 'IncommingMiladiDate_Calc'
      Calculated = True
    end
    object SelectInfoIncommingdate: TWideStringField
      FieldName = 'Incommingdate'
      Size = 10
    end
    object SelectInfoinnerno: TWideStringField
      FieldName = 'innerno'
      ReadOnly = True
      Size = 100
    end
    object SelectInfoLetterID: TAutoIncField
      FieldName = 'LetterID'
      ReadOnly = True
    end
    object SelectInfoIndicatorID: TIntegerField
      FieldName = 'IndicatorID'
    end
    object SelectInfoMYear: TWordField
      FieldName = 'MYear'
    end
    object SelectInfoLetter_Type: TWordField
      FieldName = 'Letter_Type'
    end
    object SelectInfoletterformat: TWordField
      FieldName = 'letterformat'
    end
    object SelectInfoIncommingNO: TWideStringField
      FieldName = 'IncommingNO'
      Size = 50
    end
    object SelectInfoCenterNo: TWideStringField
      FieldName = 'CenterNo'
      Size = 50
    end
    object SelectInfoCenterDate: TStringField
      FieldName = 'CenterDate'
      FixedChar = True
      Size = 10
    end
    object SelectInfoFromOrgID: TIntegerField
      FieldName = 'FromOrgID'
    end
    object SelectInfoToOrgID: TIntegerField
      FieldName = 'ToOrgID'
    end
    object SelectInfoSignerid: TWideStringField
      FieldName = 'Signerid'
      Size = 50
    end
    object SelectInfoClassificationID: TWordField
      FieldName = 'ClassificationID'
    end
    object SelectInfoUrgencyID: TSmallintField
      FieldName = 'UrgencyID'
    end
    object SelectInfoMemo: TWideStringField
      FieldName = 'Memo'
      Size = 2000
    end
    object SelectInfoAttachTitle: TWideStringField
      FieldName = 'AttachTitle'
      Size = 50
    end
    object SelectInfoNumberOfAttachPages: TSmallintField
      FieldName = 'NumberOfAttachPages'
    end
    object SelectInfoNumberOfPage: TWordField
      FieldName = 'NumberOfPage'
    end
    object SelectInfoReceiveTypeID: TWordField
      FieldName = 'ReceiveTypeID'
    end
    object SelectInfoUserID: TIntegerField
      FieldName = 'UserID'
    end
    object SelectInfoRetroactionNo: TWideStringField
      FieldName = 'RetroactionNo'
      Size = 50
    end
    object SelectInfoUserMemo: TWideStringField
      FieldName = 'UserMemo'
      Size = 255
    end
    object SelectInfoRegistrationDate: TStringField
      FieldName = 'RegistrationDate'
      FixedChar = True
      Size = 10
    end
    object SelectInfoRegistrationTime: TStringField
      FieldName = 'RegistrationTime'
      Size = 5
    end
    object SelectInfoFollowLetterNo: TWideStringField
      FieldName = 'FollowLetterNo'
      Size = 50
    end
    object SelectInfoToStaffer: TWideStringField
      FieldName = 'ToStaffer'
      Size = 50
    end
    object SelectInfoSentLetterID: TIntegerField
      FieldName = 'SentLetterID'
    end
    object SelectInfoTemplateID: TIntegerField
      FieldName = 'TemplateID'
    end
    object SelectInfoHeaderID: TIntegerField
      FieldName = 'HeaderID'
    end
    object SelectInfoLetterRecommites: TWideStringField
      FieldName = 'LetterRecommites'
      Size = 500
    end
    object SelectInfoFromStaffer: TWideStringField
      FieldName = 'FromStaffer'
      Size = 50
    end
    object SelectInfoLastUpdate: TDateTimeField
      FieldName = 'LastUpdate'
    end
    object SelectInfoSendStatusID: TWordField
      FieldName = 'SendStatusID'
    end
    object SelectInfoUserTableID: TIntegerField
      FieldName = 'UserTableID'
    end
    object SelectInfoFinalized: TBooleanField
      FieldName = 'Finalized'
    end
    object SelectInfoUserMemo1: TWideStringField
      FieldName = 'UserMemo1'
      Size = 255
    end
    object SelectInfoUserMemo2: TWideStringField
      FieldName = 'UserMemo2'
      Size = 255
    end
    object SelectInfoColor: TIntegerField
      FieldName = 'Color'
    end
    object SelectInfoLinked_LetterID: TIntegerField
      FieldName = 'Linked_LetterID'
    end
    object SelectInfoVersionDate: TStringField
      FieldName = 'VersionDate'
      FixedChar = True
      Size = 10
    end
    object SelectInfoVersionNumber: TStringField
      FieldName = 'VersionNumber'
      Size = 50
    end
    object SelectInfoReciveTitle: TWideStringField
      FieldName = 'ReciveTitle'
      Size = 50
    end
    object SelectInfoClassificatioTitle: TWideStringField
      FieldName = 'ClassificatioTitle'
      Size = 50
    end
    object SelectInfoUrgencyTitle: TWideStringField
      FieldName = 'UrgencyTitle'
      Size = 50
    end
    object SelectInfoUserTitle: TWideStringField
      FieldName = 'UserTitle'
      Size = 50
    end
    object SelectInfoFormatTitle: TWideStringField
      FieldName = 'FormatTitle'
      Size = 50
    end
    object SelectInfoToOrgTitle: TWideStringField
      FieldName = 'ToOrgTitle'
      Size = 100
    end
    object SelectInfoTemplateTitle: TWideStringField
      FieldName = 'TemplateTitle'
      Size = 50
    end
    object SelectInfoFromTitle: TWideStringField
      FieldName = 'FromTitle'
      Size = 100
    end
    object SelectInfoSignerTitle: TWideStringField
      FieldName = 'SignerTitle'
      Size = 100
    end
    object SelectInfoNumber: TIntegerField
      FieldName = 'Number'
    end
    object SelectInfoTitle: TWideStringField
      FieldName = 'Title'
      Size = 50
    end
    object SelectInfoSecretariatID: TIntegerField
      FieldName = 'SecretariatID'
    end
  end
  object Fields: TADODataSet
    Connection = Dm.YeganehConnection
    CursorType = ctStatic
    CommandText = 
      'select Fields.* from Fields'#13#10'inner join  Tables on  Tables.table' +
      'id=fields.tableid'#13#10'where  TableName in (:@tablename,'#39'Letter'#39')'
    Parameters = <
      item
        Name = '@tablename'
        DataType = ftString
        NumericScale = 255
        Precision = 255
        Size = 50
        Value = Null
      end>
    Left = 168
    Top = 176
    object FieldsID: TAutoIncField
      FieldName = 'ID'
      ReadOnly = True
    end
    object FieldsFieldName: TStringField
      FieldName = 'FieldName'
      Size = 50
    end
    object FieldsDescription: TWideStringField
      FieldName = 'Description'
      Size = 50
    end
  end
  object Timer1: TTimer
    Enabled = False
    Interval = 2000
    OnTimer = Timer1Timer
    Left = 333
    Top = 286
  end
  object GetLetterTemplate_HeaderID: TADODataSet
    Connection = Dm.YeganehConnection
    CursorType = ctStatic
    CommandText = 'GetLetterTemplate_HeaderID'
    CommandType = cmdStoredProc
    Parameters = <
      item
        Name = '@RETURN_VALUE'
        DataType = ftInteger
        Direction = pdReturnValue
        Precision = 10
        Value = 0
      end
      item
        Name = '@letterId'
        Attributes = [paNullable]
        DataType = ftInteger
        Precision = 10
        Value = Null
      end>
    Left = 74
    Top = 84
    object GetLetterTemplate_HeaderIDLetterID: TAutoIncField
      FieldName = 'LetterID'
      ReadOnly = True
    end
    object GetLetterTemplate_HeaderIDTemplateId: TIntegerField
      FieldName = 'TemplateId'
    end
    object GetLetterTemplate_HeaderIDheaderid: TIntegerField
      FieldName = 'headerid'
    end
    object GetLetterTemplate_HeaderIDFromOrgID: TIntegerField
      FieldName = 'FromOrgID'
    end
    object GetLetterTemplate_HeaderIDPreCode: TWideStringField
      FieldName = 'PreCode'
      Size = 50
    end
  end
  object TntOpenDialog: TTntOpenDialog
    Filter = 'Word Files |*.docx;*.doc'
    Left = 272
    Top = 149
  end
end
