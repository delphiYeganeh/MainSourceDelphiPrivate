inherited frUserType: TfrUserType
  Left = 550
  Top = 178
  Width = 483
  Height = 441
  Caption = ''
  OldCreateOrder = True
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel [0]
    Left = 0
    Top = 366
    Width = 475
    Height = 41
    Align = alBottom
    TabOrder = 1
    DesignSize = (
      475
      41)
    object BitBtn2: TBitBtn
      Left = 9
      Top = 7
      Width = 75
      Height = 28
      Anchors = [akTop, akRight]
      Caption = #1575#1606#1589#1585#1575#1601
      TabOrder = 0
      Kind = bkCancel
    end
    object BitBtn1: TBitBtn
      Left = 88
      Top = 7
      Width = 75
      Height = 28
      Anchors = [akTop, akRight]
      Caption = #1578#1575#1610#1610#1583
      TabOrder = 1
      Kind = bkOK
    end
  end
  object GroupBox1: TGroupBox [1]
    Left = 0
    Top = 0
    Width = 475
    Height = 163
    Align = alClient
    Caption = '  '#1606#1608#1593' '#1705#1575#1585#1576#1585'  '
    TabOrder = 0
    object dbgUserType: TYDBGrid
      Left = 2
      Top = 15
      Width = 471
      Height = 123
      Align = alClient
      DataSource = DsUserType
      Options = [dgEditing, dgAlwaysShowEditor, dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit]
      TabOrder = 0
      TitleFont.Charset = ARABIC_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'Tahoma'
      TitleFont.Style = []
      OnKeyDown = GotoNextGrid
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
          Title.Caption = #1705#1583' '#1606#1608#1593
          Width = 75
          Visible = True
        end
        item
          Expanded = False
          Title.Caption = #1606#1608#1593' '#1705#1575#1585#1576#1585#1610
          Width = 231
          Visible = True
        end
        item
          Alignment = taCenter
          ButtonStyle = cbsNone
          Expanded = False
          Font.Charset = SYMBOL_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Wingdings 2'
          Font.Style = []
          PickList.Strings = (
            #1576#1604#1607
            #1582#1610#1585
            #1588#1575#1610#1583)
          Title.Alignment = taCenter
          Title.Caption = #1605#1583#1610#1585' '#1587#1610#1587#1578#1605
          Title.Font.Charset = ARABIC_CHARSET
          Title.Font.Color = clWindowText
          Title.Font.Height = -11
          Title.Font.Name = 'Tahoma'
          Title.Font.Style = []
          Width = 85
          Visible = True
        end>
    end
    object Panel2: TPanel
      Left = 2
      Top = 138
      Width = 471
      Height = 23
      Align = alBottom
      BevelOuter = bvNone
      TabOrder = 1
      object btnAddUserType: TBitBtn
        Left = 4
        Top = 1
        Width = 30
        Height = 21
        Caption = '+'
        TabOrder = 0
        OnClick = btnAddUserTypeClick
      end
    end
  end
  object grdAccessContractType: TGroupBox [2]
    Left = 0
    Top = 163
    Width = 475
    Height = 203
    Align = alBottom
    Caption = '  '#1606#1608#1593' '#1602#1585#1575#1585#1583#1575#1583' '#1607#1575#1610' '#1602#1575#1576#1604' '#1583#1587#1578#1585#1587#1610'  '
    TabOrder = 2
    object dbgContractType: TYDBGrid
      Left = 2
      Top = 15
      Width = 471
      Height = 163
      Cursor = crHandPoint
      Align = alClient
      Options = [dgEditing, dgAlwaysShowEditor, dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit]
      TabOrder = 0
      TitleFont.Charset = ARABIC_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'Tahoma'
      TitleFont.Style = []
      OnKeyDown = dbgContractTypeKeyDown
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
          Title.Caption = #1578#1610#1578#1585' '#1606#1608#1593' '#1602#1585#1575#1585#1583#1575#1583
          Width = 190
          Visible = True
        end>
    end
    object Panel4: TPanel
      Left = 2
      Top = 178
      Width = 471
      Height = 23
      Align = alBottom
      BevelOuter = bvNone
      TabOrder = 1
      object BtnAddContractTypeAccess: TBitBtn
        Left = 4
        Top = 1
        Width = 30
        Height = 21
        Caption = '+'
        TabOrder = 0
        OnClick = BtnAddContractTypeAccessClick
      end
    end
  end
  inherited DSForm: TDataSource
    Left = 32
    Top = 80
  end
  object DsUserType: TDataSource
    Left = 168
    Top = 88
  end
  object SPSelect_UserTypeContractType_By_UserTypeID: TADOStoredProc
    Connection = Dm.YeganehConnection
    BeforePost = SPSelect_UserTypeContractType_By_UserTypeIDBeforePost
    OnPostError = SPSelect_UserTypeContractType_By_UserTypeIDPostError
    ProcedureName = 'Select_UserTypeContractType_By_UserTypeID'
    Parameters = <
      item
        Name = '@RETURN_VALUE'
        DataType = ftInteger
        Direction = pdReturnValue
        Precision = 10
        Value = Null
      end
      item
        Name = '@UserTypeID'
        Attributes = [paNullable]
        DataType = ftInteger
        Precision = 10
        Value = Null
      end>
    Left = 320
    Top = 56
    object SPSelect_UserTypeContractType_By_UserTypeIDUserTypeContractTypeID: TAutoIncField
      FieldName = 'UserTypeContractTypeID'
      ReadOnly = True
    end
    object SPSelect_UserTypeContractType_By_UserTypeIDUserTypeId: TIntegerField
      FieldName = 'UserTypeId'
    end
    object SPSelect_UserTypeContractType_By_UserTypeIDContractTypeId: TWordField
      FieldName = 'ContractTypeId'
    end
    object SPSelect_UserTypeContractType_By_UserTypeIDContractTypeCode: TWideStringField
      FieldName = 'ContractTypeCode'
      Size = 50
    end
    object SPSelect_UserTypeContractType_By_UserTypeIDContractTypeTitle: TWideStringField
      FieldName = 'ContractTypeTitle'
      Size = 50
    end
    object SPSelect_UserTypeContractType_By_UserTypeIDUIContractTypeTitle: TWideStringField
      FieldKind = fkLookup
      FieldName = 'UIContractTypeTitle'
      LookupDataSet = Dm.ContractType
      LookupKeyFields = 'ContractTypeID'
      LookupResultField = 'ContractTypeTitle'
      KeyFields = 'ContractTypeId'
      Lookup = True
    end
    object SPSelect_UserTypeContractType_By_UserTypeIDuu: TWideStringField
      FieldKind = fkLookup
      FieldName = 'uu'
      LookupDataSet = Dm.ContractType
      LookupKeyFields = 'ContractTypeID'
      LookupResultField = 'ContractTypeID'
      KeyFields = 'UserTypeId'
      Lookup = True
    end
  end
end
