inherited FromOrgDialogF: TFromOrgDialogF
  Tag = 11
  Left = 353
  Top = 305
  ActiveControl = BitBtn1
  BorderIcons = [biSystemMenu]
  BorderStyle = bsDialog
  Caption = #1608#1585#1608#1583' '#1575#1591#1604#1575#1593#1575#1578' '#1587#1605#1578
  ClientHeight = 241
  ClientWidth = 400
  Constraints.MaxHeight = 280
  Constraints.MaxWidth = 416
  Constraints.MinHeight = 275
  Constraints.MinWidth = 408
  OldCreateOrder = True
  PixelsPerInch = 96
  TextHeight = 13
  object GroupBox1: TGroupBox [0]
    Left = 0
    Top = 0
    Width = 400
    Height = 209
    Align = alTop
    Caption = #1575#1591#1604#1575#1593#1575#1578' '#1587#1575#1586#1605#1575#1606
    TabOrder = 0
    object Label1: TLabel
      Left = 313
      Top = 31
      Width = 15
      Height = 13
      Caption = #1705#1583':'
      Font.Charset = ARABIC_CHARSET
      Font.Color = clRed
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object Label2: TLabel
      Left = 313
      Top = 56
      Width = 30
      Height = 13
      Caption = #1593#1606#1608#1575#1606':'
      Font.Charset = ARABIC_CHARSET
      Font.Color = clRed
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object Label4: TLabel
      Left = 313
      Top = 106
      Width = 25
      Height = 13
      Caption = #1578#1604#1601#1606':'
      FocusControl = DBEdit4
    end
    object Label5: TLabel
      Left = 313
      Top = 156
      Width = 82
      Height = 13
      Caption = #1570#1583#1585#1587' '#1575#1604#1705#1578#1585#1608#1606#1610#1705#1610':'
    end
    object Label9: TLabel
      Left = 313
      Top = 81
      Width = 38
      Height = 13
      Caption = #1605#1587#1574#1608#1604':'
      Font.Charset = ARABIC_CHARSET
      Font.Color = clRed
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object Label7: TLabel
      Left = 313
      Top = 131
      Width = 31
      Height = 13
      Caption = #1601#1575#1705#1587':'
      FocusControl = DBEdit7
    end
    object Label3: TLabel
      Left = 313
      Top = 181
      Width = 39
      Height = 13
      Caption = #1662#1610#1588' '#1705#1583':'
    end
    object DBEdit4: TDBEdit
      Left = 131
      Top = 102
      Width = 180
      Height = 21
      DataField = 'Phone'
      DataSource = DSForm
      TabOrder = 3
      OnEnter = TEditEnter
      OnExit = TEditExit
    end
    object DBEdit6: TDBEdit
      Left = 131
      Top = 152
      Width = 180
      Height = 21
      DataField = 'Email'
      DataSource = DSForm
      TabOrder = 5
      OnEnter = DBEdit6Enter
      OnExit = DBEdit6Exit
    end
    object DBEdit7: TDBEdit
      Left = 131
      Top = 127
      Width = 180
      Height = 21
      DataField = 'Fax'
      DataSource = DSForm
      TabOrder = 4
      OnEnter = TEditEnter
      OnExit = TEditExit
    end
    object DBECode: TDBEdit
      Left = 144
      Top = 27
      Width = 167
      Height = 21
      Ctl3D = True
      DataField = 'Code'
      DataSource = DSForm
      ParentCtl3D = False
      TabOrder = 0
    end
    object DBETitle: TDBEdit
      Left = 10
      Top = 52
      Width = 301
      Height = 21
      Ctl3D = True
      DataField = 'Title'
      DataSource = DSForm
      ParentCtl3D = False
      TabOrder = 1
      OnEnter = TEditEnter
      OnExit = TEditExit
    end
    object DBERespons: TDBEdit
      Left = 10
      Top = 77
      Width = 301
      Height = 21
      Ctl3D = True
      DataField = 'ResponsibleStaffer'
      DataSource = DSForm
      ParentCtl3D = False
      TabOrder = 2
      OnEnter = TEditEnter
      OnExit = TEditExit
    end
    object DBEdit1: TDBEdit
      Left = 131
      Top = 176
      Width = 180
      Height = 21
      DataField = 'PreCode'
      DataSource = DSForm
      TabOrder = 6
      OnEnter = DBEdit6Enter
      OnExit = DBEdit6Exit
    end
  end
  object BitBtn2: TBitBtn [1]
    Left = 232
    Top = 212
    Width = 75
    Height = 25
    Cursor = crHandPoint
    Cancel = True
    Caption = #1575#1606#1589#1585#1575#1601
    Font.Charset = ARABIC_CHARSET
    Font.Color = clNavy
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 1
    OnClick = BitBtn2Click
    Glyph.Data = {
      AA030000424DAA03000000000000360000002800000011000000110000000100
      1800000000007403000000000000000000000000000000000000008080008080
      0080800080800080800080800080800080800080800080800080800080800080
      800080800080800080805465D400008080008080008080008080008080008080
      0080800080800080800080800080800080800080800080800080803B4CD10000
      C0000080800000BF0006C13446CF008080008080008080008080008080008080
      008080008080008080008080263BD10001C54153D4000080800000C50013C800
      0CC72E43D2008080008080008080008080008080008080008080008080132AD1
      0000C93B4FD7008080000080800080801027D10010CE000DCD1026D200808000
      80800080800080800080800080800017D10006CE4356DA008080008080000080
      800080800080804053DD000FD4000CD30080800080800080800080808D9AE705
      1DD50005D24355DD008080008080008080000080800080800080800080806A7B
      E5000ED9000BD80080800080807385E60016D80008D64558E000808000808000
      8080008080000080800080800080800080800080800080800822DF0000FF0000
      FF0018DC000BDA485CE300808000808000808000808000808000008080008080
      008080008080008080008080008080162EE30013E00013E04A5EE60080800080
      8000808000808000808000808000008080008080008080008080008080008080
      3D52E90016E20015E3001AE50A26EA97A4F00080800080800080800080800080
      80000080800080800080800080800080802740EB000DE7000EE75467EC008080
      011DEC0018ED8B99F10080800080800080800080800000808000808000808000
      80801E37ED000FEC000EEC5165EF008080008080008080132DF3000EF28F9EF4
      00808000808000808000008080008080008080112BF00013EF0010EF5063F100
      80800080800080800080800080803148F6000DF891A0F6008080008080000080
      800080800011F20015F30012F35B6DF500808000808000808000808000808000
      80800080806074F80014FD798AFA008080000080800014F70019F8000EF8586C
      F700808000808000808000808000808000808000808000808000808092A2FA88
      98FA00808000008080000DFD000EFC586CF90080800080800080800080800080
      80008080008080008080008080008080008080008080008080000080802D47FC
      7588FB0080800080800080800080800080800080800080800080800080800080
      8000808000808000808000808000}
  end
  object BitBtn1: TBitBtn [2]
    Left = 312
    Top = 212
    Width = 75
    Height = 25
    Cursor = crHandPoint
    Caption = #1578#1575#1610#1610#1583
    Default = True
    Font.Charset = ARABIC_CHARSET
    Font.Color = clNavy
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 2
    OnClick = BitBtn1Click
    Glyph.Data = {
      06030000424D06030000000000003600000028000000100000000F0000000100
      180000000000D002000000000000000000000000000000000000008080008080
      0080800080808000008000000080800080800080800080800080800080800080
      8000808000808000808000808000808000808080000000800000800080000000
      8080008080008080008080008080008080008080008080008080008080008080
      8000000080000080000080000080008000000080800080800080800080800080
      8000808000808000808000808080000000800000800000800000800000800000
      8000800000008080008080008080008080008080008080008080800000008000
      00800000800000FF000080000080000080000080008000000080800080800080
      8000808000808000808000800000800000800000FF0000808000808000800000
      800000800080000000808000808000808000808000808000808000FF00008000
      00FF0000808000808000808000FF000080000080000080008000000080800080
      8000808000808000808000808000FF0000808000808000808000808000808000
      FF00008000008000008000800000008080008080008080008080008080008080
      00808000808000808000808000808000808000FF000080000080000080008000
      0000808000808000808000808000808000808000808000808000808000808000
      808000808000FF00008000008000008000800000008080008080008080008080
      00808000808000808000808000808000808000808000808000FF000080000080
      0000800080000000808000808000808000808000808000808000808000808000
      808000808000808000808000FF00008000008000008000800000008080008080
      00808000808000808000808000808000808000808000808000808000808000FF
      0000800000800080000000808000808000808000808000808000808000808000
      808000808000808000808000808000808000FF00008000008000008080008080
      0080800080800080800080800080800080800080800080800080800080800080
      8000808000FF00008080}
  end
  inherited DSForm: TDataSource
    DataSet = Fromorg
    Left = 88
  end
  object ActionManager: TActionManager
    Images = Dm.LetterImages
    Left = 177
    Top = 52
    StyleName = 'XP Style'
    object aEXIT: TAction
      Category = 'Internet'
      Caption = 'aEXIT'
      ImageIndex = 14
      ShortCut = 27
    end
  end
  object Fromorg: TADODataSet
    Connection = Dm.YeganehConnection
    CommandText = 'select * from fromorganizations where id=:id'
    Parameters = <
      item
        Name = 'id'
        DataType = ftString
        Size = 1
        Value = '1'
      end>
    Left = 83
    Top = 75
    object FromorgID: TAutoIncField
      FieldName = 'ID'
      ReadOnly = True
    end
    object FromorgTitle: TWideStringField
      Alignment = taRightJustify
      FieldName = 'Title'
      Size = 100
    end
    object FromorgParentID: TIntegerField
      FieldName = 'ParentID'
    end
    object FromorgPhone: TWideStringField
      Alignment = taRightJustify
      FieldName = 'Phone'
      Size = 30
    end
    object FromorgFax: TWideStringField
      Alignment = taRightJustify
      FieldName = 'Fax'
      Size = 30
    end
    object FromorgEmail: TWideStringField
      Alignment = taRightJustify
      FieldName = 'Email'
      Size = 30
    end
    object FromorgResponsibleStaffer: TWideStringField
      Alignment = taRightJustify
      FieldName = 'ResponsibleStaffer'
      Size = 50
    end
    object FromorgIsActive: TBooleanField
      Alignment = taRightJustify
      FieldName = 'IsActive'
    end
    object FromorgPreCode: TWideStringField
      Alignment = taRightJustify
      FieldName = 'PreCode'
    end
    object FromorgIsInnerOrg: TBooleanField
      Alignment = taRightJustify
      FieldName = 'IsInnerOrg'
    end
    object FromorgCode: TWideStringField
      Alignment = taRightJustify
      DisplayWidth = 50
      FieldName = 'Code'
      Size = 50
    end
    object FromorgUniqueID: TLargeintField
      FieldName = 'UniqueID'
    end
    object FromorgGroupID: TIntegerField
      FieldName = 'GroupID'
    end
  end
end
