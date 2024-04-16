inherited UserSearch: TUserSearch
  Left = 516
  Top = 131
  BorderStyle = bsDialog
  Caption = #1580#1587#1578#1580#1608
  ClientHeight = 459
  ClientWidth = 256
  KeyPreview = True
  OldCreateOrder = True
  OnKeyDown = FormKeyDown
  OnKeyPress = FormKeyPress
  OnKeyUp = FormKeyUp
  PixelsPerInch = 96
  TextHeight = 13
  object Panel2: TPanel [0]
    Left = 0
    Top = 73
    Width = 256
    Height = 386
    TabOrder = 0
    object YDBGrid1: TYDBGrid
      Left = 1
      Top = 1
      Width = 254
      Height = 384
      Cursor = crHandPoint
      Align = alClient
      DataSource = DSForm
      ReadOnly = True
      TabOrder = 0
      TitleFont.Charset = ARABIC_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'Tahoma'
      TitleFont.Style = []
      OnDblClick = YDBGrid1DblClick
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
      OnNeedColorCondition = YDBGrid1NeedColorCondition
      FooterFields = 'Count'
      Columns = <
        item
          Expanded = False
          FieldName = 'Title'
          Title.Caption = #1606#1575#1605' '#1705#1575#1585#1610#1585
          Width = 215
          Visible = True
        end>
    end
  end
  object GroupBox1: TGroupBox [1]
    Left = 11
    Top = 8
    Width = 236
    Height = 57
    Caption = #1580#1587#1578#1580#1608
    TabOrder = 1
    object Label2: TLabel
      Left = 202
      Top = 24
      Width = 13
      Height = 13
      Caption = #1606#1575#1605
    end
    object edtName: TEdit
      Left = 8
      Top = 22
      Width = 188
      Height = 21
      TabOrder = 0
      OnChange = edtNameChange
    end
  end
  inherited DSForm: TDataSource
    DataSet = QUsers
    Left = 72
    Top = 216
  end
  object QUsers: TADOQuery
    Connection = Dm.YeganehConnection
    Parameters = <>
    SQL.Strings = (
      'SELECT 0 AS Id,'#39#1607#1605#1607#39' AS Title'
      'UNION ALL'
      'SELECT Id,Title FROM Users')
    Left = 200
    Top = 137
    object QUsersId: TAutoIncField
      FieldName = 'Id'
      ReadOnly = True
    end
    object QUsersTitle: TWideStringField
      FieldName = 'Title'
      ReadOnly = True
      Size = 50
    end
  end
end
