inherited FApplicantFilter: TFApplicantFilter
  Left = 200
  Top = 256
  Width = 654
  Height = 230
  Caption = #1606#1585#1605' '#1575#1601#1586#1575#1585#1610' '#1610#1711#1575#1606#1607
  Color = 16377053
  OldCreateOrder = True
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel [0]
    Left = 556
    Top = 19
    Width = 82
    Height = 13
    Anchors = [akTop, akRight]
    Caption = #1588#1605#1575#1585#1607' '#1583#1575#1606#1588#1580#1608#1610#1610
    FocusControl = DBEdit1
    Font.Charset = ARABIC_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object Label2: TLabel [1]
    Left = 556
    Top = 56
    Width = 58
    Height = 13
    Anchors = [akTop, akRight]
    Caption = #1606#1575#1605' '#1582#1575#1606#1608#1575#1583#1711#1610
    FocusControl = DBEdit2
    Font.Charset = ARABIC_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object Label3: TLabel [2]
    Left = 556
    Top = 96
    Width = 66
    Height = 13
    Anchors = [akTop, akRight]
    Caption = #1585#1588#1578#1607' '#1578#1581#1589#1610#1604#1610
    FocusControl = DBEdit3
    Font.Charset = ARABIC_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object Label4: TLabel [3]
    Left = 226
    Top = 89
    Width = 58
    Height = 13
    Anchors = [akTop, akRight]
    Caption = #1606#1610#1605#1587#1575#1604' '#1608#1585#1608#1583
    FocusControl = DBEdit4
    Font.Charset = ARABIC_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object Label5: TLabel [4]
    Left = 226
    Top = 164
    Width = 77
    Height = 13
    Anchors = [akTop, akRight]
    Caption = #1705#1583' '#1711#1585#1608#1607' '#1570#1605#1608#1586#1588#1610
    FocusControl = DBEdit5
    Font.Charset = ARABIC_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object Label6: TLabel [5]
    Left = 226
    Top = 126
    Width = 39
    Height = 13
    Anchors = [akTop, akRight]
    Caption = #1705#1583' '#1585#1588#1578#1607
    FocusControl = DBEdit6
    Font.Charset = ARABIC_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object Label7: TLabel [6]
    Left = 556
    Top = 131
    Width = 63
    Height = 13
    Anchors = [akTop, akRight]
    Caption = #1711#1585#1608#1607' '#1570#1605#1608#1586#1588#1610
    FocusControl = DBEdit7
    Font.Charset = ARABIC_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object Label8: TLabel [7]
    Left = 226
    Top = 52
    Width = 40
    Height = 13
    Anchors = [akTop, akRight]
    Caption = #1583#1575#1606#1588#1705#1583#1607
    FocusControl = DBEdit8
    Font.Charset = ARABIC_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object Label9: TLabel [8]
    Left = 556
    Top = 163
    Width = 26
    Height = 13
    Anchors = [akTop, akRight]
    Caption = #1605#1602#1591#1593
    FocusControl = YWhereEdit1
    Font.Charset = ARABIC_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object DBEdit1: TYWhereEdit [9]
    Left = 24
    Top = 15
    Width = 512
    Height = 21
    Anchors = [akTop, akRight]
    BiDiMode = bdLeftToRight
    ParentBiDiMode = False
    TabOrder = 0
    isLike = False
    isDate = False
    EveryLike = False
    isString = True
    FieldName = 'ApplicantCode'
    TableName = 'Applicant'
    CodeField = 'Code'
    TitleField = 'Title'
    Connection = Dm.YeganehConnection
  end
  object DBEdit2: TYWhereEdit [10]
    Left = 336
    Top = 52
    Width = 200
    Height = 21
    Anchors = [akTop, akRight]
    TabOrder = 1
    isLike = True
    isDate = False
    EveryLike = False
    isString = True
    FieldName = 'LastName'
    TableName = 'Applicant'
    CodeField = 'Code'
    TitleField = 'Title'
    Connection = Dm.YeganehConnection
  end
  object DBEdit3: TYWhereEdit [11]
    Left = 336
    Top = 89
    Width = 200
    Height = 21
    Anchors = [akTop, akRight]
    BiDiMode = bdLeftToRight
    Color = 15654399
    ParentBiDiMode = False
    TabOrder = 2
    isLike = False
    isDate = False
    EveryLike = False
    isString = False
    FieldName = 'MajorID'
    TableName = 'Applicant'
    ListTable = 'Major'
    CodeField = 'MajorID'
    TitleField = 'Title'
    Connection = Dm.YeganehConnection
  end
  object DBEdit4: TYWhereEdit [12]
    Left = 16
    Top = 84
    Width = 200
    Height = 21
    Anchors = [akTop, akRight]
    TabOrder = 6
    isLike = True
    isDate = False
    EveryLike = False
    isString = True
    FieldName = 'Termcode'
    TableName = 'Applicant'
    CodeField = 'Code'
    TitleField = 'Title'
    Connection = Dm.YeganehConnection
  end
  object DBEdit5: TYWhereEdit [13]
    Left = 16
    Top = 159
    Width = 200
    Height = 21
    Anchors = [akTop, akRight]
    TabOrder = 8
    isLike = True
    isDate = False
    EveryLike = False
    isString = True
    FieldName = 'EducationGroupCode'
    TableName = 'EducationGroup'
    CodeField = 'Code'
    TitleField = 'Title'
    Connection = Dm.YeganehConnection
  end
  object DBEdit6: TYWhereEdit [14]
    Left = 16
    Top = 121
    Width = 200
    Height = 21
    Anchors = [akTop, akRight]
    BiDiMode = bdLeftToRight
    ParentBiDiMode = False
    TabOrder = 7
    isLike = False
    isDate = False
    EveryLike = False
    isString = True
    FieldName = 'MajorCode'
    TableName = 'Major'
    CodeField = 'Code'
    TitleField = 'Title'
    Connection = Dm.YeganehConnection
  end
  object DBEdit7: TYWhereEdit [15]
    Left = 336
    Top = 127
    Width = 200
    Height = 21
    Anchors = [akTop, akRight]
    BiDiMode = bdLeftToRight
    Color = 15654399
    ParentBiDiMode = False
    TabOrder = 3
    isLike = False
    isDate = False
    EveryLike = False
    isString = False
    FieldName = 'EducationGroupTitle'
    TableName = 'EducationGroup'
    ListTable = 'EducationGroup'
    CodeField = 'EducationGroupID'
    TitleField = 'EducationGroupTitle'
    Connection = Dm.YeganehConnection
  end
  object DBEdit8: TYWhereEdit [16]
    Left = 16
    Top = 47
    Width = 200
    Height = 21
    Anchors = [akTop, akRight]
    BiDiMode = bdLeftToRight
    Color = 15654399
    ParentBiDiMode = False
    TabOrder = 5
    isLike = False
    isDate = False
    EveryLike = False
    isString = False
    FieldName = 'FacultyID'
    TableName = 'Faculty'
    ListTable = 'Faculty'
    CodeField = 'FacultyID'
    TitleField = 'FacultyTitle'
    Connection = Dm.YeganehConnection
  end
  object YWhereEdit1: TYWhereEdit [17]
    Left = 336
    Top = 159
    Width = 200
    Height = 21
    Anchors = [akTop, akRight]
    BiDiMode = bdLeftToRight
    Color = 15654399
    ParentBiDiMode = False
    TabOrder = 4
    isLike = False
    isDate = False
    EveryLike = False
    isString = False
    FieldName = 'EducationGroupTitle'
    TableName = 'Level'
    ListTable = '[Level]'
    CodeField = 'LevelID'
    TitleField = 'LevelTitle'
    Connection = Dm.YeganehConnection
  end
  inherited ActionList: TActionList
    Left = 295
  end
  inherited xpWindow1: TxpWindow
    Left = 296
  end
  object DSForm: TDataSource
    Left = 16
    Top = 8
  end
  object Report_Applicant: TADOStoredProc
    Active = True
    Connection = Dm.YeganehConnection
    CursorType = ctStatic
    ProcedureName = 'Report_Applicant'
    Parameters = <
      item
        Name = '@RETURN_VALUE'
        DataType = ftInteger
        Direction = pdReturnValue
        Precision = 10
        Value = 0
      end
      item
        Name = '@Where'
        Attributes = [paNullable]
        DataType = ftWideString
        Size = 2000
        Value = Null
      end>
    Left = 32
    Top = 24
    object Report_ApplicantApplicantID: TAutoIncField
      FieldName = 'ApplicantID'
      ReadOnly = True
    end
    object Report_ApplicantApplicantCode: TStringField
      FieldName = 'ApplicantCode'
    end
    object Report_ApplicantFirstName: TWideStringField
      FieldName = 'FirstName'
      Size = 50
    end
    object Report_ApplicantLastName: TWideStringField
      FieldName = 'LastName'
      Size = 50
    end
    object Report_ApplicantFullName: TWideStringField
      FieldName = 'FullName'
      Size = 80
    end
    object Report_ApplicantMajorID: TSmallintField
      FieldName = 'MajorID'
    end
    object Report_ApplicantTermcode: TStringField
      FieldName = 'Termcode'
      FixedChar = True
      Size = 3
    end
    object Report_ApplicantEducationGroupCode: TStringField
      FieldName = 'EducationGroupCode'
      Size = 50
    end
    object Report_ApplicantEducationGroupTitle: TWideStringField
      FieldName = 'EducationGroupTitle'
      Size = 50
    end
    object Report_ApplicantFacultyTitle: TWideStringField
      FieldName = 'FacultyTitle'
      Size = 50
    end
    object Report_ApplicantLevelTitle: TWideStringField
      FieldName = 'LevelTitle'
      Size = 50
    end
    object Report_ApplicantMajorCode: TStringField
      FieldName = 'MajorCode'
    end
    object Report_ApplicantMajorTitle: TWideStringField
      FieldName = 'MajorTitle'
      Size = 60
    end
  end
  object DataSource1: TDataSource
    DataSet = Report_Applicant
    Left = 88
    Top = 64
  end
end
