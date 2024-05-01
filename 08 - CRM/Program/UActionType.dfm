inherited frActionType: TfrActionType
  Left = 466
  Top = 222
  Width = 316
  Height = 357
  Caption = ''
  OldCreateOrder = True
  OnCanResize = FormCanResize
  PixelsPerInch = 96
  TextHeight = 13
  object GroupBox2: TGroupBox [0]
    Left = 0
    Top = 0
    Width = 300
    Height = 318
    Align = alClient
    Caption = '  '#1606#1608#1593' '#1575#1602#1583#1575#1605#1575#1578'  '
    TabOrder = 0
    object dbgActionType: TYDBGrid
      Left = 2
      Top = 15
      Width = 296
      Height = 276
      Cursor = crHandPoint
      Align = alClient
      Options = [dgEditing, dgAlwaysShowEditor, dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit]
      TabOrder = 0
      TitleFont.Charset = ARABIC_CHARSET
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
      AutoInsert = True
      FooterFields = 'Count'
      Columns = <
        item
          Expanded = False
          FieldName = 'ActionTypeTitle'
          Title.Caption = #1578#1610#1578#1585' '#1575#1602#1583#1575#1605
          Width = 138
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'UIUserTypeTitle'
          Title.Caption = #1606#1608#1593' '#1603#1575#1585#1576#1585#1610
          Width = 128
          Visible = True
        end>
    end
    object Panel5: TPanel
      Left = 2
      Top = 291
      Width = 296
      Height = 25
      Align = alBottom
      BevelOuter = bvNone
      TabOrder = 1
      object BitBtn3: TBitBtn
        Left = 4
        Top = 1
        Width = 30
        Height = 21
        Caption = '+'
        TabOrder = 0
        OnClick = BitBtn3Click
      end
      object BitBtn1: TBitBtn
        Left = 36
        Top = 1
        Width = 30
        Height = 21
        Caption = '-'
        TabOrder = 1
        OnClick = BitBtn1Click
      end
    end
  end
  inherited ActionList: TActionList
    Left = 136
    Top = 48
  end
  object ADQActionType: TADOQuery
    Connection = Dm.YeganehConnection
    Parameters = <>
    SQL.Strings = (
      'select * from ActionType')
    Left = 272
    Top = 144
    object ADQActionTypeActionTypeID: TAutoIncField
      FieldName = 'ActionTypeID'
      ReadOnly = True
    end
    object ADQActionTypeActionTypeTitle: TWideStringField
      FieldName = 'ActionTypeTitle'
      Size = 50
    end
    object ADQActionTypeUserTypeId: TIntegerField
      FieldName = 'UserTypeId'
    end
    object ADQActionTypeUserTypeTitle: TWideStringField
      FieldKind = fkLookup
      FieldName = 'UIUserTypeTitle'
      LookupDataSet = ADQUserType
      LookupKeyFields = 'UserTypeId'
      LookupResultField = 'UserTypeTitle'
      KeyFields = 'UserTypeId'
      Size = 100
      Lookup = True
    end
  end
  object ADQUserType: TADOQuery
    Connection = Dm.YeganehConnection
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'select * from UserType')
    Left = 96
    Top = 208
    object ADQUserTypeUserTypeId: TAutoIncField
      FieldName = 'UserTypeId'
      ReadOnly = True
    end
    object ADQUserTypeUserTypeTitle: TWideStringField
      FieldName = 'UserTypeTitle'
      Size = 50
    end
    object ADQUserTypeUserTypeCode: TWideStringField
      FieldName = 'UserTypeCode'
      Size = 50
    end
  end
end
