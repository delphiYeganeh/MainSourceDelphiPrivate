inherited FDoCommite: TFDoCommite
  Tag = 14
  Left = 524
  Top = 204
  BorderIcons = [biSystemMenu]
  BorderStyle = bsDialog
  Caption = #1575#1602#1583#1575#1605' '#1608' '#1576#1575#1610#1711#1575#1606#1610
  ClientHeight = 326
  ClientWidth = 596
  Constraints.MinHeight = 350
  Constraints.MinWidth = 400
  OldCreateOrder = True
  PixelsPerInch = 96
  TextHeight = 13
  object Panel2: TPanel [0]
    Left = 0
    Top = 65
    Width = 596
    Height = 220
    Align = alClient
    TabOrder = 2
    object Splitter1: TSplitter
      Left = 407
      Top = 1
      Height = 218
      Align = alRight
      Color = clMedGray
      ParentColor = False
    end
    object Panel4: TPanel
      Left = 1
      Top = 1
      Width = 406
      Height = 218
      Align = alClient
      TabOrder = 1
      DesignSize = (
        406
        218)
      object Label2: TLabel
        Left = 312
        Top = -1
        Width = 75
        Height = 13
        Anchors = [akTop, akRight]
        Caption = #1578#1608#1590#1610#1581#1575#1578' '#1576#1575#1610#1711#1575#1606#1610
      end
      object DBStaffMemo: TDBMemo
        Left = 2
        Top = 15
        Width = 398
        Height = 198
        Anchors = [akLeft, akTop, akRight, akBottom]
        DataField = 'StaffMemo'
        DataSource = DSForm
        TabOrder = 0
        OnEnter = TEditEnter
        OnExit = TEditExit
      end
    end
    object Panel3: TPanel
      Left = 410
      Top = 1
      Width = 185
      Height = 218
      Align = alRight
      TabOrder = 0
      object GroupBox1: TGroupBox
        Left = 1
        Top = 1
        Width = 183
        Height = 216
        Align = alClient
        Caption = #1602#1575#1604#1576' '#1607#1575#1610' '#1570#1605#1575#1583#1607
        Color = clBtnFace
        ParentColor = False
        TabOrder = 0
        DesignSize = (
          183
          216)
        object Label4: TLabel
          Left = 106
          Top = 159
          Width = 71
          Height = 13
          Anchors = [akTop, akRight]
          Caption = #1602#1575#1604#1576' '#1607#1575#1610' '#1583#1610#1711#1585':'
        end
        object Bevel1: TBevel
          Left = 0
          Top = 44
          Width = 181
          Height = 2
          Anchors = [akLeft, akTop, akRight]
        end
        object TemplateButton1: TBitBtn
          Tag = 1
          Left = 4
          Top = 48
          Width = 174
          Height = 23
          Cursor = crHandPoint
          Anchors = [akLeft, akTop, akRight]
          Caption = #1576#1585#1585#1587#1610' '#1588#1608#1583
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clNavy
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          TabOrder = 0
          OnClick = TemplateButton1Click
        end
        object TemplateButton2: TBitBtn
          Tag = 2
          Left = 4
          Top = 74
          Width = 174
          Height = 23
          Cursor = crHandPoint
          Anchors = [akLeft, akTop, akRight]
          Caption = #1580#1607#1578' '#1575#1591#1604#1575#1593
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clNavy
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          TabOrder = 1
          OnClick = TemplateButton1Click
        end
        object TemplateButton3: TBitBtn
          Tag = 3
          Left = 4
          Top = 100
          Width = 174
          Height = 23
          Cursor = crHandPoint
          Anchors = [akLeft, akTop, akRight]
          Caption = #1575#1602#1583#1575#1605' '#1601#1608#1585#1610
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clNavy
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          TabOrder = 2
          OnClick = TemplateButton1Click
        end
        object TemplateButton4: TBitBtn
          Tag = 4
          Left = 4
          Top = 126
          Width = 174
          Height = 23
          Cursor = crHandPoint
          Anchors = [akLeft, akTop, akRight]
          Caption = #1575#1602#1583#1575#1605' '#1604#1575#1586#1605' '
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clNavy
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          TabOrder = 3
          OnClick = TemplateButton1Click
        end
        object DBLookupComboBox1: TDBLookupComboBox
          Left = 4
          Top = 173
          Width = 176
          Height = 21
          Anchors = [akLeft, akTop, akRight]
          BiDiMode = bdLeftToRight
          KeyField = 'Paraph'
          ListField = 'Title'
          ListSource = Dm.DSELECT_ParaphTemplate
          ParentBiDiMode = False
          TabOrder = 4
          OnClick = DBLookupComboBox1Click
        end
        object BitBtn3: TBitBtn
          Tag = 1
          Left = 4
          Top = 16
          Width = 174
          Height = 23
          Cursor = crHandPoint
          Anchors = [akLeft, akTop, akRight]
          Caption = #1608#1610#1585#1575#1610#1588' '#1602#1575#1604#1576
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clNavy
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          TabOrder = 5
          OnClick = SpeedButton2Click
        end
      end
    end
  end
  object ArchivePanel: TPanel [1]
    Left = 0
    Top = 0
    Width = 596
    Height = 65
    Align = alTop
    ParentColor = True
    TabOrder = 0
    DesignSize = (
      596
      65)
    object Label1: TLabel
      Left = 525
      Top = 39
      Width = 62
      Height = 13
      Anchors = [akTop, akRight]
      Caption = #1662#1585#1608#1606#1583#1607' '#1576#1575#1610#1711#1575#1606#1610
    end
    object SpeedButton1: TSpeedButton
      Left = 500
      Top = 36
      Width = 22
      Height = 20
      Cursor = crHandPoint
      Anchors = [akTop, akRight]
      Font.Charset = ARABIC_CHARSET
      Font.Color = clNavy
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      Glyph.Data = {
        36040000424D3604000000000000360000002800000010000000100000000100
        2000000000000004000000000000000000000000000000000000FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00109A
        CE0018A2D600109ACE00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00109A
        CE0084D3EF006BEBFF0031B6DE00109ACE00088EB500088EB500088EB500FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00109A
        CE0039AADE0084FFFF007BFFFF005AD3F7005AD3F7005AD3F7005AD3F70031B6
        DE00109ACE00088EB500FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00109A
        CE0039AADE009CFFFF0073F7FF0073EBFF0073EBFF0073EBFF005AD3F7005AD3
        F7005AD3F70031B6EF00109ACE00FF00FF00FF00FF00FF00FF00FF00FF00109A
        CE00109ACE009CD3EF007BF7FF007BF7FF0073EBFF0073EBFF0073EBFF0073EB
        FF005AD3F7005AD3F70031B6EF00FF00FF00FF00FF00FF00FF00FF00FF00109A
        CE005AD3F700109ACE0084FFFF0073F7FF0073F7FF0073F7FF0073EBFF0073EB
        FF0073EBFF005AD3F7005AD3F700088EB500FF00FF00FF00FF00FF00FF00109A
        CE007BF7FF00109ACE009CD3EF008CEBF7008CEBF7008CF7FF0073EBFF0073EB
        FF0073EBFF005AD3F7005AD3F70021AADE00FF00FF00FF00FF00FF00FF00109A
        CE0084FFFF005AD3F700109ACE00088EB500088EB500088EB5009CD3EF0073F7
        FF006BEBFF006BEBFF005AD3F7005AD3F700088EB500FF00FF00FF00FF00109A
        CE0084FFFF007BF7FF0084868400005100000051000000510000109ACE009CD3
        EF006BEBFF006BEBFF006BEBFF007BEBFF00188ECE00FF00FF00FF00FF00109A
        CE0084FFFF007BF7FF008C8E8C00318E31000051000000200000001C0000109A
        CE00088EB500108ECE00108ECE00108ECE00088EB500FF00FF00FF00FF00109A
        CE00B5FFFF007BFFFF009C9AA50039AA4A00318E310000380000003C0000B551
        0000BD490000D6510000D65900006B696B00FF00FF00FF00FF00FF00FF00109A
        CE0084D3EF00B5FFFF00A5A2A500189A210010710800398621007B792900D661
        1000B53C0000AD300000B53800006B696B00FF00FF00FF00FF00FF00FF00FF00
        FF0018A2D600109ACE00ADAAAD00FFCB6B00FFBE4A00FFB63900FFB63900FFBE
        4A00FFDF7300F7D3AD00BD865A006B696B00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00B5B6B500F7BE7300FFA22900FF9A1000FFAA3900FFAA
        3900FFD38C00F7EBB500FFFFBD006B696B00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00B5B6B500A5A2AD00A5A2AD00A5A2AD00A5A2AD00A5A2
        AD00A5A2AD00A5A2AD00A5A2AD0073717B00FF00FF00FF00FF00}
      ParentFont = False
      OnClick = SpeedButton1Click
    end
    object Label3: TLabel
      Left = 552
      Top = 7
      Width = 35
      Height = 13
      Anchors = [akTop, akRight]
      Caption = #1580#1587#1578#1580#1608
    end
    object DBLkCBArchive: TDBLookupComboBox
      Left = 244
      Top = 36
      Width = 254
      Height = 21
      Anchors = [akTop, akRight]
      BiDiMode = bdLeftToRight
      DropDownRows = 20
      KeyField = 'Folderid'
      ListField = 'title'
      ListSource = Archive
      ParentBiDiMode = False
      TabOrder = 0
    end
    object Edit1: TEdit
      Left = 3
      Top = 5
      Width = 542
      Height = 21
      Anchors = [akLeft, akTop, akRight]
      TabOrder = 1
      OnChange = Edit1Change
    end
  end
  object Panel1: TPanel [2]
    Left = 0
    Top = 285
    Width = 596
    Height = 41
    Align = alBottom
    TabOrder = 1
    DesignSize = (
      596
      41)
    object BitBtn1: TBitBtn
      Left = 513
      Top = 10
      Width = 75
      Height = 25
      Cursor = crHandPoint
      Anchors = [akTop, akRight]
      Caption = #1578#1575#1610#1610#1583
      Default = True
      Font.Charset = ARABIC_CHARSET
      Font.Color = clNavy
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 0
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
    object BitBtn2: TBitBtn
      Left = 433
      Top = 10
      Width = 75
      Height = 25
      Cursor = crHandPoint
      Anchors = [akTop, akRight]
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
  end
  inherited DSForm: TDataSource
    DataSet = ReCommites
    Left = 273
    Top = 96
  end
  inherited ActionList: TActionList
    Left = 32
    Top = 88
  end
  inherited Grid_PopupMenu: TPopupMenu
    Left = 127
    Top = 116
  end
  object ReCommites: TADODataSet
    Connection = Dm.YeganehConnection
    CursorType = ctStatic
    CommandText = 
      'SELECT R.*'#13#10'FROM ReCommites R '#13#10'where r.RecommiteID=:@RecommiteI' +
      'D'
    Parameters = <
      item
        Name = '@RecommiteID'
        Attributes = [paSigned]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = Null
      end>
    Left = 49
    Top = 163
    object ReCommitesRecommiteID: TAutoIncField
      FieldName = 'RecommiteID'
      ReadOnly = True
    end
    object ReCommitesLetterID: TIntegerField
      FieldName = 'LetterID'
    end
    object ReCommitesID: TSmallintField
      FieldName = 'ID'
    end
    object ReCommitesType: TWordField
      FieldName = 'Type'
    end
    object ReCommitesParentId: TSmallintField
      FieldName = 'ParentId'
    end
    object ReCommitesOrgID: TIntegerField
      FieldName = 'OrgID'
    end
    object ReCommitesParaph: TWideStringField
      DisplayWidth = 3000
      FieldName = 'Paraph'
      Size = 3000
    end
    object ReCommitesRecommiteDate: TStringField
      FieldName = 'RecommiteDate'
      Size = 10
    end
    object ReCommitesUserID: TWordField
      FieldName = 'UserID'
    end
    object ReCommitesIsCopy: TBooleanField
      FieldName = 'IsCopy'
    end
    object ReCommitesProceeded: TBooleanField
      FieldName = 'Proceeded'
    end
    object ReCommitesProceedDate: TStringField
      FieldName = 'ProceedDate'
      Size = 10
    end
    object ReCommitesstaffmemo: TWideStringField
      FieldName = 'staffmemo'
      Size = 255
    end
    object ReCommitesviewdate: TStringField
      FieldName = 'viewdate'
      FixedChar = True
      Size = 10
    end
    object ReCommitesOrgStaff: TWideStringField
      FieldName = 'OrgStaff'
      Size = 50
    end
    object ReCommitesDeadLineDate: TStringField
      FieldName = 'DeadLineDate'
      FixedChar = True
      Size = 10
    end
    object ReCommitesLastUpdate: TDateTimeField
      FieldName = 'LastUpdate'
    end
    object ReCommitesActionTypeID: TWordField
      FieldName = 'ActionTypeID'
    end
  end
  object Archive: TDataSource
    Left = 200
    Top = 168
  end
end
