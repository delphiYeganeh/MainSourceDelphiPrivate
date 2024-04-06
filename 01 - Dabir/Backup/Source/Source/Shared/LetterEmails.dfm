inherited frmLetterEmails: TfrmLetterEmails
  Left = 508
  Top = 351
  Caption = #1604#1610#1587#1578' '#1575#1610#1605#1610#1604' '#1607#1575
  ClientHeight = 303
  ClientWidth = 577
  OldCreateOrder = True
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel [0]
    Left = 0
    Top = 0
    Width = 577
    Height = 33
    Align = alTop
    BevelInner = bvLowered
    TabOrder = 0
    object Label1: TLabel
      Left = 522
      Top = 10
      Width = 45
      Height = 13
      Caption = #1580#1587#1578#1580#1608' : '
    end
    object Edit1: TEdit
      Left = 400
      Top = 8
      Width = 121
      Height = 21
      TabOrder = 0
    end
  end
  object Panel2: TPanel [1]
    Left = 0
    Top = 270
    Width = 577
    Height = 33
    Align = alBottom
    BevelInner = bvLowered
    TabOrder = 1
    object BitBtn1: TBitBtn
      Left = 499
      Top = 5
      Width = 75
      Height = 25
      Caption = #1578#1575#1610#1610#1583
      TabOrder = 0
      OnClick = BitBtn1Click
      Kind = bkOK
    end
    object BitBtn2: TBitBtn
      Left = 422
      Top = 5
      Width = 75
      Height = 25
      Caption = #1575#1606#1589#1585#1575#1601
      TabOrder = 1
      Kind = bkCancel
    end
    object chBoxSSL: TCheckBox
      Left = 8
      Top = 8
      Width = 41
      Height = 17
      Caption = 'SSL'
      TabOrder = 2
    end
  end
  object Panel3: TPanel [2]
    Left = 0
    Top = 33
    Width = 577
    Height = 237
    Align = alClient
    Caption = 'Panel3'
    TabOrder = 2
    object DBGrid1: TDBGrid
      Left = 1
      Top = 1
      Width = 575
      Height = 235
      Align = alClient
      DataSource = DSForm
      TabOrder = 0
      TitleFont.Charset = ARABIC_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'Tahoma'
      TitleFont.Style = []
      Columns = <
        item
          Expanded = False
          FieldName = 'Title'
          Title.Alignment = taCenter
          Title.Caption = #1593#1606#1608#1575#1606
          Width = 210
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'Email'
          Title.Alignment = taCenter
          Title.Caption = #1575#1610#1605#1610#1604
          Width = 199
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'Too'
          Title.Alignment = taCenter
          Title.Caption = 'TO/CC/BCC'
          Width = 83
          Visible = True
        end>
    end
  end
  inherited DSForm: TDataSource
    DataSet = ClientDataSetEmails
    Left = 352
    Top = 172
  end
  inherited Timer1sssss: TTimer
    Left = 40
    Top = 88
  end
  object ADOQueryEmails: TADOQuery
    Connection = Dm.YeganehConnection
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'SELECT [Id], [EmailAddress], [Title],ResType FROM LetterEmails')
    Left = 72
    Top = 145
    object ADOQueryEmailsId: TAutoIncField
      FieldName = 'Id'
      ReadOnly = True
    end
    object ADOQueryEmailsEmailAddress: TStringField
      FieldName = 'EmailAddress'
      Size = 200
    end
    object ADOQueryEmailsTitle: TWideStringField
      FieldName = 'Title'
      Size = 100
    end
    object ADOQueryEmailsResType: TStringField
      FieldName = 'ResType'
      Size = 10
    end
  end
  object ClientDataSetEmailType: TClientDataSet
    Aggregates = <>
    Params = <>
    Left = 384
    Top = 145
    object ClientDataSetEmailTypeTo: TStringField
      FieldName = 'To'
    end
  end
  object ClientDataSetEmails: TClientDataSet
    Aggregates = <>
    Params = <>
    Left = 384
    Top = 177
    object ClientDataSetEmailsTitle: TStringField
      DisplayWidth = 100
      FieldName = 'Title'
      Size = 100
    end
    object ClientDataSetEmailsEmail: TStringField
      DisplayWidth = 100
      FieldName = 'Email'
      Size = 100
    end
    object ClientDataSetEmailsTo: TStringField
      FieldName = 'To'
      LookupDataSet = ClientDataSetEmailType
      LookupKeyFields = 'To'
      LookupResultField = 'To'
      KeyFields = 'To'
    end
    object ClientDataSetEmailsToo: TStringField
      FieldKind = fkLookup
      FieldName = 'Too'
      LookupDataSet = ClientDataSetEmailType
      LookupKeyFields = 'To'
      LookupResultField = 'To'
      KeyFields = 'To'
      Lookup = True
    end
  end
end
