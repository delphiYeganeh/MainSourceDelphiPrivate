object DocumentsListForm: TDocumentsListForm
  Left = 462
  Top = 234
  BiDiMode = bdRightToLeft
  BorderStyle = bsDialog
  Caption = #1605#1583#1575#1585#1705' '#1605#1608#1580#1608#1583
  ClientHeight = 386
  ClientWidth = 692
  Color = clBtnFace
  Constraints.MinHeight = 300
  Constraints.MinWidth = 700
  Font.Charset = ARABIC_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  ParentBiDiMode = False
  OnClose = FormClose
  OnCreate = FormCreate
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 692
    Height = 41
    Align = alTop
    TabOrder = 0
    DesignSize = (
      692
      41)
    object btnSelect: TBitBtn
      Left = 585
      Top = 8
      Width = 99
      Height = 25
      Anchors = [akTop, akRight]
      Caption = #1575#1606#1578#1582#1575#1576
      TabOrder = 0
      OnClick = btnSelectClick
    end
    object btnClose: TBitBtn
      Left = 481
      Top = 8
      Width = 99
      Height = 25
      Anchors = [akTop, akRight]
      Caption = #1582#1585#1608#1580
      TabOrder = 1
      OnClick = btnCloseClick
    end
  end
  object Panel2: TPanel
    Left = 0
    Top = 41
    Width = 692
    Height = 56
    Align = alTop
    TabOrder = 1
    DesignSize = (
      692
      56)
    object Label1: TLabel
      Left = 652
      Top = 8
      Width = 28
      Height = 13
      Anchors = [akTop, akRight]
      Caption = #1587#1575#1604' :'
    end
    object Label2: TLabel
      Left = 350
      Top = 8
      Width = 61
      Height = 13
      Anchors = [akTop, akRight]
      Caption = #1582#1604#1575#1589#1607' '#1587#1606#1583' :'
    end
    object Label3: TLabel
      Left = 342
      Top = 32
      Width = 82
      Height = 13
      Anchors = [akTop, akRight]
      Caption = #1578#1608#1590#1610#1581#1575#1578' '#1576#1575#1610#1711#1575#1606#1610' :'
    end
    object Label4: TLabel
      Left = 606
      Top = 32
      Width = 76
      Height = 13
      Anchors = [akTop, akRight]
      Caption = #1588#1605#1575#1585#1607' '#1575#1606#1583#1610#1705#1575#1578#1608#1585' :'
    end
    object Label9: TLabel
      Left = 135
      Top = 2
      Width = 19
      Height = 46
      Anchors = [akTop, akRight]
      Caption = '}'
      Font.Charset = ARABIC_CHARSET
      Font.Color = clWindowText
      Font.Height = -40
      Font.Name = 'Times New Roman'
      Font.Style = []
      ParentFont = False
    end
    object seYear: TSpinEdit
      Left = 520
      Top = 5
      Width = 77
      Height = 22
      Anchors = [akTop, akRight]
      MaxValue = 1499
      MinValue = 1380
      TabOrder = 0
      Value = 1380
    end
    object BitBtn1: TBitBtn
      Left = 5
      Top = 3
      Width = 94
      Height = 25
      Caption = #1580#1587#1578#1580#1608
      TabOrder = 1
      OnClick = BitBtn1Click
    end
    object txtMemo: TEdit
      Left = 153
      Top = 6
      Width = 185
      Height = 21
      Anchors = [akTop, akRight]
      TabOrder = 2
    end
    object txtSubjectDescription: TEdit
      Left = 153
      Top = 30
      Width = 185
      Height = 21
      Anchors = [akTop, akRight]
      TabOrder = 3
    end
    object txtIndicatorID: TEdit
      Left = 435
      Top = 30
      Width = 161
      Height = 21
      Anchors = [akTop, akRight]
      BiDiMode = bdRightToLeftReadingOnly
      ParentBiDiMode = False
      TabOrder = 4
    end
    object RadioButton1: TRadioButton
      Left = 99
      Top = 11
      Width = 34
      Height = 17
      Anchors = [akTop, akRight]
      Caption = #1608
      Checked = True
      TabOrder = 5
      TabStop = True
    end
    object RadioButton2: TRadioButton
      Left = 108
      Top = 31
      Width = 25
      Height = 17
      Anchors = [akTop, akRight]
      Caption = #1610#1575
      TabOrder = 6
    end
  end
  object lettersDbGrid: TYDBGrid
    Left = 0
    Top = 97
    Width = 692
    Height = 289
    Cursor = crHandPoint
    Align = alClient
    BiDiMode = bdRightToLeft
    Ctl3D = True
    DataSource = DSItems
    FixedColor = clBtnHighlight
    Font.Charset = ARABIC_CHARSET
    Font.Color = clWindowText
    Font.Height = -15
    Font.Name = 'Tahoma'
    Font.Style = []
    Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgRowSelect, dgAlwaysShowSelection, dgMultiSelect]
    ParentBiDiMode = False
    ParentCtl3D = False
    ParentFont = False
    ReadOnly = True
    TabOrder = 2
    TitleFont.Charset = ARABIC_CHARSET
    TitleFont.Color = clBlack
    TitleFont.Height = -12
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
    OnDblClick = lettersDbGridDblClick
    YeganehColor = False
    YeganehFinish = True
    PageNumber = False
    RecordNumber = False
    HasTime = False
    Oriention = poPortrait
    HasDate = False
    HasIndex = False
    PrintTitle = #1593#1606#1608#1575#1606
    InvertFarsiDate = True
    TitleSort = True
    AutoInsert = False
    FooterFields = 'Count'
    Columns = <
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'IndicatorID'
        Title.Alignment = taCenter
        Title.Caption = #1575#1606#1583#1610#1705#1575#1578#1608#1585
        Title.Color = clBtnShadow
        Width = 62
        Visible = True
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'MYear'
        Title.Alignment = taCenter
        Title.Caption = #1587#1575#1604
        Title.Color = clBtnShadow
        Width = 57
        Visible = True
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'InnerNo'
        Title.Alignment = taCenter
        Title.Caption = #1588#1605#1575#1585#1607' '#1578#1585#1705#1610#1576#1610
        Title.Color = clBtnShadow
        Width = 133
        Visible = True
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'Memo'
        Title.Alignment = taCenter
        Title.Caption = #1582#1604#1575#1589#1607' '#1587#1606#1583
        Title.Color = clBtnShadow
        Width = 197
        Visible = True
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'SubjectDescription'
        Title.Alignment = taCenter
        Title.Caption = #1578#1608#1590#1610#1581#1575#1578' '#1576#1575#1610#1711#1575#1606#1610
        Title.Color = clBtnShadow
        Width = 200
        Visible = True
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'letterformat'
        Title.Alignment = taCenter
        Title.Color = clBtnShadow
        Visible = False
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'IncommingNO'
        Title.Alignment = taCenter
        Title.Caption = #1588#1605#1575#1585#1607' '#1608#1575#1585#1583#1607
        Title.Color = clBtnShadow
        Visible = False
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'IncommingDate'
        Title.Alignment = taCenter
        Title.Caption = #1578#1575#1585#1610#1582' '#1608#1575#1585#1583#1607
        Title.Color = clBtnShadow
        Visible = False
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'UrgencyID'
        Title.Alignment = taCenter
        Title.Color = clBtnShadow
        Visible = False
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'RetroactionNo'
        Title.Alignment = taCenter
        Title.Color = clBtnShadow
        Visible = False
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'RegistrationDate'
        Title.Alignment = taCenter
        Title.Color = clBtnShadow
        Visible = False
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'FollowLetterNo'
        Title.Alignment = taCenter
        Title.Color = clBtnShadow
        Visible = False
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'ToStaffer'
        Title.Alignment = taCenter
        Title.Color = clBtnShadow
        Visible = False
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'SentLetterID'
        Title.Alignment = taCenter
        Title.Color = clBtnShadow
        Visible = False
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'TemplateID'
        Title.Alignment = taCenter
        Title.Color = clBtnShadow
        Visible = False
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'UserMemo'
        Title.Alignment = taCenter
        Title.Color = clBtnShadow
        Visible = False
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'DeadLineDate'
        Title.Alignment = taCenter
        Title.Color = clBtnShadow
        Visible = False
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'SenderTitle'
        Title.Alignment = taCenter
        Title.Color = clBtnShadow
        Visible = False
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'DeliverTitle'
        Title.Alignment = taCenter
        Title.Color = clBtnShadow
        Visible = False
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'has_Page'
        Title.Alignment = taCenter
        Title.Color = clBtnShadow
        Visible = False
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'has_WordPage'
        Title.Alignment = taCenter
        Title.Color = clBtnShadow
        Visible = False
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'has_file'
        Title.Alignment = taCenter
        Title.Color = clBtnShadow
        Visible = False
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'SubjectID'
        Title.Alignment = taCenter
        Title.Color = clBtnShadow
        Visible = False
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'LetterTypeTitle'
        Title.Alignment = taCenter
        Title.Color = clBtnShadow
        Visible = False
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'LetterRecommites'
        Title.Alignment = taCenter
        Title.Color = clBtnShadow
        Visible = False
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'sendstatusTitle'
        Title.Alignment = taCenter
        Title.Color = clBtnShadow
        Visible = False
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'Archived'
        Title.Alignment = taCenter
        Title.Color = clBtnShadow
        Visible = False
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'ActionTypeTitle'
        Title.Alignment = taCenter
        Title.Color = clBtnShadow
        Visible = False
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'SignerID'
        Title.Alignment = taCenter
        Title.Color = clBtnShadow
        Visible = False
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'SignerTitle'
        Title.Alignment = taCenter
        Title.Color = clBtnShadow
        Visible = False
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'ReceiveTypeID'
        Title.Alignment = taCenter
        Title.Color = clBtnShadow
        Visible = False
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'ClassificationID'
        Title.Alignment = taCenter
        Title.Color = clBtnShadow
        Visible = False
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'ArchivePlace'
        Title.Alignment = taCenter
        Title.Color = clBtnShadow
        Visible = False
      end>
  end
  object DSItems: TDataSource
    DataSet = Get_All_Letter
    Left = 184
    Top = 152
  end
  object Get_All_Letter: TADOStoredProc
    Connection = Dm.YeganehConnection
    CursorType = ctStatic
    LockType = ltBatchOptimistic
    ProcedureName = 'Get_All_Letter'
    Parameters = <
      item
        Name = '@RETURN_VALUE'
        DataType = ftInteger
        Direction = pdReturnValue
        Precision = 10
        Value = 0
      end
      item
        Name = '@SecretariatID'
        Attributes = [paNullable]
        DataType = ftInteger
        Precision = 10
        Value = 0
      end
      item
        Name = '@Myear'
        Attributes = [paNullable]
        DataType = ftWord
        Precision = 3
        Value = 0
      end
      item
        Name = '@Letter_Type'
        Attributes = [paNullable]
        DataType = ftInteger
        Precision = 10
        Value = 4
      end
      item
        Name = '@LetterFormat'
        Attributes = [paNullable]
        DataType = ftInteger
        Precision = 10
        Value = 0
      end
      item
        Name = '@Where'
        Attributes = [paNullable]
        DataType = ftWideString
        Size = 4000
        Value = Null
      end
      item
        Name = '@Top'
        Attributes = [paNullable]
        DataType = ftSmallint
        Precision = 5
        Value = 100
      end
      item
        Name = '@ArchiveFolderID'
        Attributes = [paNullable]
        DataType = ftInteger
        Precision = 10
        Value = 0
      end
      item
        Name = '@ArchiveStatus'
        Attributes = [paNullable]
        DataType = ftWord
        Precision = 3
        Value = 0
      end
      item
        Name = '@UserID'
        Attributes = [paNullable]
        DataType = ftInteger
        Precision = 10
        Value = 1
      end>
    Left = 111
    Top = 140
    object Get_All_LetterLetterID: TIntegerField
      FieldName = 'LetterID'
    end
    object Get_All_LetterCenterNo: TWideStringField
      FieldName = 'CenterNo'
      Size = 50
    end
    object Get_All_LetterIndicatorID: TIntegerField
      FieldName = 'IndicatorID'
    end
    object Get_All_LetterMYear: TIntegerField
      FieldName = 'MYear'
    end
    object Get_All_LetterSecretariatID: TIntegerField
      FieldName = 'SecretariatID'
    end
    object Get_All_LetterLetter_Type: TIntegerField
      FieldName = 'Letter_Type'
    end
    object Get_All_Letterletterformat: TIntegerField
      FieldName = 'letterformat'
    end
    object Get_All_LetterIncommingNO: TWideStringField
      FieldName = 'IncommingNO'
      Size = 50
    end
    object Get_All_LetterFromOrgID: TIntegerField
      FieldName = 'FromOrgID'
    end
    object Get_All_LetterIncommingDate: TWideStringField
      FieldName = 'IncommingDate'
      Size = 10
    end
    object Get_All_LetterToOrgID: TIntegerField
      FieldName = 'ToOrgID'
    end
    object Get_All_LetterUrgencyID: TIntegerField
      FieldName = 'UrgencyID'
    end
    object Get_All_LetterMemo: TWideStringField
      FieldName = 'Memo'
      Size = 2000
    end
    object Get_All_LetterRetroactionNo: TWideStringField
      FieldName = 'RetroactionNo'
      Size = 50
    end
    object Get_All_LetterRegistrationDate: TStringField
      FieldName = 'RegistrationDate'
      FixedChar = True
      Size = 10
    end
    object Get_All_LetterFollowLetterNo: TWideStringField
      FieldName = 'FollowLetterNo'
      Size = 50
    end
    object Get_All_Letterhas_WordPage: TBooleanField
      FieldName = 'has_WordPage'
    end
    object Get_All_LetterToStaffer: TWideStringField
      FieldName = 'ToStaffer'
      Size = 50
    end
    object Get_All_LetterSentLetterID: TIntegerField
      FieldName = 'SentLetterID'
    end
    object Get_All_LetterTemplateID: TIntegerField
      FieldName = 'TemplateID'
    end
    object Get_All_LetterUserMemo: TWideStringField
      FieldName = 'UserMemo'
      Size = 255
    end
    object Get_All_LetterDeadLineDate: TStringField
      FieldName = 'DeadLineDate'
      FixedChar = True
      Size = 10
    end
    object Get_All_LetterSenderTitle: TWideStringField
      FieldName = 'SenderTitle'
      Size = 100
    end
    object Get_All_LetterDeliverTitle: TWideStringField
      FieldName = 'DeliverTitle'
      Size = 100
    end
    object Get_All_Letterhas_Page: TBooleanField
      FieldName = 'has_Page'
    end
    object Get_All_Letterhas_file: TBooleanField
      FieldName = 'has_file'
    end
    object Get_All_LetterSubjectID: TIntegerField
      FieldName = 'SubjectID'
    end
    object Get_All_LetterLetterTypeTitle: TWideStringField
      FieldName = 'LetterTypeTitle'
      Size = 50
    end
    object Get_All_LetterLetterRecommites: TWideStringField
      FieldName = 'LetterRecommites'
      Size = 500
    end
    object Get_All_LettersendstatusTitle: TWideStringField
      FieldName = 'sendstatusTitle'
      Size = 100
    end
    object Get_All_LetterInnerNo: TStringField
      FieldName = 'InnerNo'
      Size = 50
    end
    object Get_All_LetterArchived: TBooleanField
      FieldName = 'Archived'
    end
    object Get_All_LetterActionTypeTitle: TWideStringField
      FieldName = 'ActionTypeTitle'
      Size = 50
    end
    object Get_All_LetterSignerID: TWideStringField
      FieldName = 'SignerID'
      Size = 200
    end
    object Get_All_LetterSignerTitle: TWideStringField
      FieldName = 'SignerTitle'
      Size = 100
    end
    object Get_All_LetterReceiveTypeID: TIntegerField
      FieldName = 'ReceiveTypeID'
    end
    object Get_All_LetterClassificationID: TIntegerField
      FieldName = 'ClassificationID'
    end
    object Get_All_LetterArchivePlace: TWideStringField
      FieldName = 'ArchivePlace'
      Size = 500
    end
    object Get_All_LetterSubjectDescription: TStringField
      FieldName = 'SubjectDescription'
      Size = 4000
    end
  end
end
