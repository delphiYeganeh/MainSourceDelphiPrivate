inherited FGroupUser: TFGroupUser
  Left = 459
  Top = 201
  Caption = #1575#1606#1578#1589#1575#1576' '#1711#1585#1608#1607
  ClientHeight = 337
  ClientWidth = 247
  OldCreateOrder = True
  PixelsPerInch = 96
  TextHeight = 13
  object GroupBox1: TGroupBox [0]
    Left = 8
    Top = 8
    Width = 233
    Height = 325
    Caption = ' '#1711#1585#1608#1607#1607#1575#1610' '#1705#1575#1585#1610' '#1605#1608#1580#1608#1583' '
    Font.Charset = ARABIC_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 0
    object Label1: TLabel
      Left = 77
      Top = 21
      Width = 135
      Height = 13
      Caption = #1580#1587#1578#1580#1608' '#1576#1585' '#1575#1587#1575#1587' '#1606#1575#1605' '#1711#1585#1608#1607
      Font.Charset = ARABIC_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label2: TLabel
      Left = 177
      Top = 44
      Width = 32
      Height = 16
      Caption = #1605#1602#1583#1575#1585
      Font.Charset = ARABIC_CHARSET
      Font.Color = clGreen
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object DBGrid1: TDBGrid
      Left = 21
      Top = 72
      Width = 192
      Height = 209
      Color = 15856100
      DataSource = DSForm
      ReadOnly = True
      TabOrder = 0
      TitleFont.Charset = ARABIC_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'Tahoma'
      TitleFont.Style = []
      Columns = <
        item
          Expanded = False
          FieldName = 'GroupName'
          Title.Caption = #1606#1575#1605' '#1711#1585#1608#1607
          Width = 150
          Visible = True
        end>
    end
    object edtValue: TEdit
      Left = 21
      Top = 43
      Width = 152
      Height = 21
      Color = 15856100
      TabOrder = 1
      OnChange = edtValueChange
    end
    object BitBtn2: TBitBtn
      Left = 130
      Top = 290
      Width = 75
      Height = 25
      Caption = #1575#1606#1578#1589#1575#1576
      TabOrder = 2
      OnClick = BitBtn2Click
      Kind = bkOK
    end
    object BitBtn3: TBitBtn
      Left = 29
      Top = 290
      Width = 75
      Height = 25
      Caption = #1582#1585#1608#1580
      TabOrder = 3
      OnClick = BitBtn3Click
      Kind = bkCancel
    end
  end
  inherited DSForm: TDataSource
    DataSet = QGroups
  end
  inherited ActionList: TActionList
    Left = 40
    Top = 72
  end
  inherited Grid_PopupMenu: TPopupMenu
    Left = 87
    Top = 92
  end
  object QGroups: TADOQuery
    Connection = Dm.YeganehConnection
    Parameters = <>
    SQL.Strings = (
      'SELECT * FROM ChartWorkGroup')
    Left = 56
    Top = 120
    object QGroupsGroupID: TAutoIncField
      FieldName = 'GroupID'
      ReadOnly = True
    end
    object QGroupsGroupName: TStringField
      FieldName = 'GroupName'
      ReadOnly = True
      Size = 100
    end
  end
  object spGroupUser: TADOStoredProc
    Connection = Dm.YeganehConnection
    ProcedureName = 'spGroupUser;1'
    Parameters = <
      item
        Name = '@GroupID'
        Attributes = [paNullable]
        DataType = ftInteger
        Precision = 10
        Value = Null
      end
      item
        Name = '@OrgID'
        Attributes = [paNullable]
        DataType = ftInteger
        Precision = 10
        Value = Null
      end>
    Left = 112
    Top = 192
  end
end
