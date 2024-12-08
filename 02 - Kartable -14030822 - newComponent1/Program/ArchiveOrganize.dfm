inherited ArchiveOrganizeForm: TArchiveOrganizeForm
  Tag = 12
  Left = 736
  Top = 118
  BorderIcons = [biSystemMenu]
  BorderStyle = bsDialog
  Caption = #1586#1608#1606#1705#1606' '#1607#1575#1610' '#1576#1575#1610#1711#1575#1606#1610
  ClientHeight = 566
  ClientWidth = 506
  OldCreateOrder = True
  PixelsPerInch = 96
  TextHeight = 13
  object Panel3: TPanel [0]
    Left = 0
    Top = 37
    Width = 376
    Height = 414
    Align = alClient
    TabOrder = 2
    object PageControl1: TPageControl
      Left = 1
      Top = 28
      Width = 374
      Height = 385
      ActivePage = TabSheet1
      Align = alClient
      TabHeight = 30
      TabOrder = 0
      object TabSheet1: TTabSheet
        Caption = #1583#1585#1582#1578#1610
        OnShow = TabSheet1Show
        object ArchiveTree: TDBTreeView
          Left = 0
          Top = 0
          Width = 366
          Height = 315
          Align = alClient
          Indent = 19
          TabOrder = 0
          OnDblClick = ArchiveTreeDblClick
          OnGetImageIndex = ArchiveTreeGetImageIndex
          DataSource = DSForm
          RootID = 0
          IDField = 'FolderID'
          ParentIDField = 'ParentFolderID'
          DisplayField = 'Title'
          BuildMethod = bmFilter
        end
        object Panel4: TPanel
          Left = 0
          Top = 315
          Width = 366
          Height = 30
          Align = alBottom
          TabOrder = 1
          DesignSize = (
            366
            30)
          object Cut: TSpeedButton
            Left = 319
            Top = 5
            Width = 45
            Height = 22
            Cursor = crHandPoint
            Anchors = [akTop, akRight]
            Caption = 'Cut'
            OnClick = CutClick
          end
          object Paste: TSpeedButton
            Left = 272
            Top = 5
            Width = 45
            Height = 22
            Cursor = crHandPoint
            Anchors = [akTop, akRight]
            Caption = 'Paste'
            Visible = False
            OnClick = PasteClick
          end
        end
      end
      object TabSheet2: TTabSheet
        Caption = #1604#1610#1587#1578
        ImageIndex = 1
        OnShow = TabSheet2Show
        object DBGFromORG: TYDBGrid
          Left = 0
          Top = 0
          Width = 366
          Height = 345
          Cursor = crHandPoint
          Align = alClient
          DataSource = Dlist
          Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit]
          ReadOnly = True
          TabOrder = 0
          TitleFont.Charset = ARABIC_CHARSET
          TitleFont.Color = clWindowText
          TitleFont.Height = -11
          TitleFont.Name = 'Tahoma'
          TitleFont.Style = []
          OnDrawColumnCell = DBGFromORGDrawColumnCell
          YeganehColor = True
          YeganehFinish = False
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
              Expanded = False
              FieldName = 'Place'
              Title.Alignment = taCenter
              Title.Caption = #1605#1705#1575#1606
              Width = 53
              Visible = True
            end
            item
              Color = 16434943
              Expanded = False
              FieldName = 'Title'
              Title.Alignment = taCenter
              Title.Caption = #1593#1606#1608#1575#1606
              Width = 140
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'Notes'
              Title.Alignment = taCenter
              Title.Caption = #1578#1608#1590#1610#1581#1575#1578
              Width = 133
              Visible = True
            end>
        end
      end
    end
    object Panel1: TPanel
      Left = 1
      Top = 1
      Width = 374
      Height = 27
      Align = alTop
      BevelOuter = bvNone
      TabOrder = 1
      DesignSize = (
        374
        27)
      object SpeedButton1: TSpeedButton
        Left = 230
        Top = 2
        Width = 67
        Height = 22
        Cursor = crHandPoint
        Anchors = [akTop, akRight]
        GroupIndex = 1
        Caption = #1604#1610#1587#1578#1610
        OnClick = SpeedButton1Click
      end
      object SpeedButton2: TSpeedButton
        Left = 300
        Top = 2
        Width = 67
        Height = 22
        Cursor = crHandPoint
        Anchors = [akTop, akRight]
        GroupIndex = 1
        Down = True
        Caption = ' '#1583#1585#1582#1578#1610
        OnClick = SpeedButton2Click
      end
      object SBCollapse: TSpeedButton
        Left = 5
        Top = 1
        Width = 23
        Height = 22
        Hint = #1576#1575#1586' '#1705#1585#1583#1606' '#1578#1605#1575#1605#1610' '#1711#1585#1607' '#1607#1575
        Glyph.Data = {
          36050000424D3605000000000000360400002800000010000000100000000100
          0800000000000001000000000000000000000001000000010000FF00FF00C06E
          C500597FC6008887CA00988BCA00B195CE00CEA0D400D6A4D600BC9BD4003DC7
          EB0088E1FF007DE3FE0061DDF80051C9F1005BC9EF006DD1EF0086D9EF00AAE0
          F000D3ECF500F6FAFC00FFFFFF00B87CC4003DB7EA008BE3FF007EE3FF0086E7
          FF008BE9FF008AEAFF0086EBFF0081ECFF0079EEFE006BDDF6005CC2E70066C3
          E50077BCDC00A770BC0042BFEA008EE5FF007FE3FF0083E5FF0083E7FF0085EA
          FF0087ECFF0089EDFF008CEFFF0094F1FF009CF1FF00A3F1FF0067CCEB00F2F9
          FC00A873C10046C7EC0090E7FF0090EBFF0096EDFF0097EFFF0099F0FF009FF1
          FF00A4F1FF00A6F1FF00AAF2FF007EE3F600CEE2EE009368BB004DD4EF008EE8
          FD0087EAFF00266BAB001F6796002067960022679600226695004A8FDA00B0F2
          FF009BF0FB009FD4E7008563B80078E1F5006FDBF6008CEDFF0098EFFF00116B
          940022F6DE0022F5DE0015C7E70024E4BB00548FD100B7F3FF00A7F1FB0095D2
          E700745FB60096EEFB005BC8E90092EFFF009AF1FF003796E70045BBF60045AF
          F60047AFF60049B2F6004CAAF10067A2F300BEF4FF00B8F1FB008ED0E7006B5B
          B5009FF5FE005BC8E80099F1FF009CF2FF009EF4FF00A4F5FF00AAF5FF00B0F5
          FF00B6F5FF00BBF6FF00C0F5FF00C5F5FF00C3F2FB0088CEE8006A5BB500AAF7
          FF005BC0E00063D2EF0076E4F50098F3FD00A7F6FE00ABF6FF00B2F4FF00B7F4
          FF00BDF4FF00C5F6FF00C6F3FB0098E0F200DEF1F600B4F8FF00B2F8FE00A5F3
          FC0080E4F30068D1EB005EC3E3008CE5F400B6F7FF00BDF7FF00C3F7FF00C9F7
          FF00CFF7FF00CCF2FA00D8F7FC0084C6E100615AB400BEF8FF00B4F7FF00B2F8
          FF00AFF8FF00ADF7FF00A6F6FF006BE0F30068D4EB0072D4EA007AD2E80095D9
          ED00BCEDF700CFF2FA00E6FAFF0072B9DC00685AB500C2F6FD00C5F9FF00BDF8
          FF00B3F8FF00B1F8FF00A8F7FF006AD4ED0060CBEA0062D5F2006FE8FA0071EA
          FC0065DAF8004EAEDB00C7E5F000B8E3EF00DA90D0007BCEEC009AE8F500C4F7
          FD00C4F9FE00BCF8FF006DC3E200E3F3F800FEFEFE00EBF7FA00CBE0EC0097CC
          E20085CBE50089C9E400D789CE00B3DCED006FB8DA0059AFD50051AAD300D1EC
          F5008F0101000000000012E85800000000004C0000000012E90090EE18000000
          7C00FF003800FFFFFF0091056D00C2DE7C000077C2000000000000000000C2E3
          0000000101000000260012E88800000000007C0000000012E90090EE18000570
          7C00FF7C9100FFFFFF0091056D00C2DE7C000077C2000038000000000000C2E3
          0000E077C20004659A007F41A00000000400D8000000047F45000000010045C8
          000000047F000000000012E95800174F00002C0001000012EF00C35C94002070
          7700FF77C100FFFFFF00C2C2E30045DA77000800010004889000000000000000
          000000000000000000000102030405060707070707070707070708090A0B0C0D
          0E0F101112131414141415161718191A1B1C1D1E1F2021221414232425262728
          292A2B2C2D2E2F30311432333428353637382E393A3B3C3D3E143F4041423643
          444445464748494A4B144C4D4E4F5051525354525556575859145A5B5C5D5E5F
          60616263646566676814696A6B6C6D6E6F70717273747576771478797A7B7C7D
          7E7F7F80818283848586788788898A8B8C8D8E8F909192939495969798999A9B
          9C9D9E9FA0A1A2A3A4A5A6A7A8A9AAABACADAEAFB0B1B2B3B4B5B6B7B8B9BABB
          BCBDBEBFC0C1C2C31414C4BEC5C6C7C8C9141414141414141414}
        ParentShowHint = False
        ShowHint = True
        OnClick = SBCollapseClick
      end
      object SBExpand: TSpeedButton
        Left = 29
        Top = 1
        Width = 23
        Height = 22
        Hint = #1576#1587#1578#1606' '#1578#1605#1575#1605#1610' '#1711#1585#1607' '#1607#1575
        Glyph.Data = {
          36050000424D3605000000000000360400002800000010000000100000000100
          0800000000000001000000000000000000000001000000010000FF00FF00C1BF
          E0004FA0D50086ABDA0097B0DA00ADB6DB00CDC3E200E5CCE700E7CDE700ACDE
          EE0047C0F00089E2FF0079E3FF006DE3FD005ACEF50053C6F00063D7EF007EDB
          EF0096DEEF00B5DEEE00E1F2F800FDFEFE00FFFFFF009CD2E20049B9E80087E3
          FF007EE2FF0083E6FF0089E9FF0093EAFF003C87DE002366990062D3FF007CED
          FD0064D0EE005ABCE3006EB8D90082C2DA004EC4EB008AE5FF0081E5FF0083E7
          FF0085E9FF0096ECFF002A74AA0046BB95005BBDFF009DF1FF009AF1FF00A4F1
          FF0065C9EA00F1F8FB007EC4DE0053CBEF008CE8FF008CEAFF0095EBFF0096ED
          FF0098EFFF002A71BE0052ABA0007AC9FF00A7F1FF00ABF2FF007FE8F600C6E0
          EE006CBCDC0057D2F1008DEAFE00347DB700115F8B00105A8F00065097001462
          A9000C529300125F8D001B60920089D3FF00A4F0FB009ED4E7006ABBD9006AE0
          F50083E6FC00328AD30027C9EC0024BAF1000F76E9001E97F10023A2F40027C5
          EF00368DCB0088D1FF00B2F0FB0094D2E70050B1D70090EBF90064D4F1009DF3
          FF00A1F4FF002E72A900469EA10085CAFF00B6F4FF00BAF4FF00BFF4FF00BCF1
          FB008DD0E7004BB0D6009FF5FE005CCAEA0093F2FF0091F4FF00A4F5FF003076
          A8003FBE990075BDFF00BBF6FF00B8F3FF00C0F5FF00C1F2FB0088CFE8004EAF
          D700AAF7FF0056BADE0063D2EE0077E5F70099F3FD00A8F6FF003787D800378E
          BD0073BAFF00C0F6FF00BEF4FF00C7F6FF00C6F2FB0098E0F200DEF1F600B4F8
          FF00B2F7FE00A7F3FC0083E5F5006AD4EC0061D4E8009DEBF800B7F7FF00BDF7
          FF00C3F7FF00CAF7FF00CFF7FF00CEF3FB00D9F7FD0084C5E10045ACD600BEF8
          FF00B5F8FF00B3F8FF00B1F8FF00ADF7FF00A6F6FF0070E3F50067D5EC006DD3
          EA0073D0E8007ED1E900A5DEEF00B9E6F300E3F8FD0071B7DB0049A7CE00C6F8
          FE00C6F9FF00AFF8FF00A6F7FE0063CAE7005BC5E60060D2EF006DE6FA0075EC
          FE006CE5FC0053AFDB00C8E6F100C8E7F300EFF8FB0076BADC00A4EDF700C5F7
          FD00C4F9FE00BBF8FE006ABBDE00EDF8FB00FEFEFE00EBF7FA00CCE0EC0094CB
          E10084CAE4008AC8E300FAFDFE00A8D7E9006DB6D90059AFD50050A9D200E2F2
          F800980101000000010012E85800000000004C0000000012E90090EE18000000
          7C00FF003800FFFFFF0091056D00C2DE7C000077C2000000000000000000C2E3
          0000D10101000000260012E88800000000007C0000000012E90090EE18000570
          7C00FF7C9100FFFFFF0091056D00C2DE7C000077C2000038000000000000C2E3
          0000E077C20004659A00874CD800000004004800000004888300000001005100
          0000000487000000000012E95800174F00002C0001000012EF00C35C94002070
          7700FF77C100FFFFFF00C2C2E30045DA77008000010004875900000000000000
          0000000000000000000001020304050607080808080808080808090A0B0C0D0E
          0F1011121314151616161718191A1B1C1D1E1F2021222324161625262728292A
          2B2C2D2E2F30313233163435363738393A3B3C3D313E3F404116424344384546
          4748494A4B4C4D4E4F1650515239535455565758595A5B5C5D165E5F603A3061
          62636465666768696A166B6C6D306E6F70717273747576777816797A7B7C7D7E
          7F8081828384858687885E898A8B8C8D8E8F909192939495969798999A9B9C9D
          9E9FA0A1A2A3A4A5A6A7A8A9AA999BABACADAEAFB0B1B2B3B4B5B6B7B8B9BABB
          BCBDBEBFC0C1C2C3161616C4C5C6C7C8C9161616161616161616}
        ParentShowHint = False
        ShowHint = True
        OnClick = SBExpandClick
      end
    end
  end
  object Panel2: TPanel [1]
    Left = 0
    Top = 0
    Width = 506
    Height = 37
    Align = alTop
    TabOrder = 1
    DesignSize = (
      506
      37)
    object Label2: TLabel
      Left = 461
      Top = 9
      Width = 35
      Height = 13
      Anchors = [akTop, akRight]
      Caption = #1580#1587#1578#1580#1608
    end
    object DBText1: TDBText
      Left = 6
      Top = 9
      Width = 144
      Height = 17
      Anchors = [akTop, akRight]
      DataField = 'Title'
      DataSource = DSForm
      Font.Charset = ARABIC_CHARSET
      Font.Color = clRed
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object Label3: TLabel
      Left = 152
      Top = 8
      Width = 90
      Height = 13
      Anchors = [akTop, akRight]
      Caption = #1586#1608#1606#1705#1606' '#1575#1606#1578#1582#1575#1576' '#1588#1583#1607' :'
    end
    object SEdit: TEdit
      Left = 246
      Top = 7
      Width = 209
      Height = 21
      Anchors = [akTop, akRight]
      TabOrder = 0
      OnChange = SEditChange
      OnExit = SEditExit
    end
  end
  object GroupBox1: TGroupBox [2]
    Left = 0
    Top = 451
    Width = 506
    Height = 115
    Align = alBottom
    Caption = #1575#1591#1604#1575#1593#1575#1578' '#1605#1608#1590#1608#1593
    TabOrder = 0
    DesignSize = (
      506
      115)
    object Label4: TLabel
      Left = 466
      Top = 48
      Width = 22
      Height = 13
      Anchors = [akTop, akRight]
      Caption = #1605#1705#1575#1606
      FocusControl = DBEPlace
    end
    object Label9: TLabel
      Left = 466
      Top = 21
      Width = 26
      Height = 13
      Anchors = [akTop, akRight]
      Caption = #1593#1606#1608#1575#1606
    end
    object Label1: TLabel
      Left = 466
      Top = 72
      Width = 29
      Height = 13
      Anchors = [akTop, akRight]
      Caption = #1578#1608#1590#1610#1581
      FocusControl = DBENotes
    end
    object LabelAccess: TLabel
      Left = 109
      Top = 94
      Width = 389
      Height = 13
      Anchors = [akTop, akRight]
      Caption = 
        #1578#1608#1580#1607' :  '#1580#1607#1578' '#1578#1593#1610#1610#1606' '#1583#1587#1578#1585#1587#1610' '#1576#1585#1575#1610' '#1586#1608#1606#1705#1606' '#1607#1575' '#1604#1591#1601#1575' '#1576#1607' '#1601#1585#1605' " '#1578#1593#1585#1610#1601' '#1705#1575#1585#1576#1585 +
        ' " '#1605#1585#1575#1580#1593#1607' '#1606#1605#1575#1610#1610#1583
    end
    object DBEPlace: TDBEdit
      Left = 118
      Top = 42
      Width = 345
      Height = 21
      Anchors = [akTop, akRight]
      DataField = 'place'
      DataSource = DSForm
      ReadOnly = True
      TabOrder = 1
      OnEnter = TEditEnter
      OnExit = TEditExit
    end
    object DBETitle: TDBEdit
      Left = 118
      Top = 17
      Width = 345
      Height = 21
      Anchors = [akTop, akRight]
      Ctl3D = True
      DataField = 'title'
      DataSource = DSForm
      ParentCtl3D = False
      ReadOnly = True
      TabOrder = 0
      OnEnter = TEditEnter
      OnExit = TEditExit
    end
    object DBENotes: TDBEdit
      Left = 118
      Top = 68
      Width = 345
      Height = 21
      Anchors = [akTop, akRight]
      DataField = 'notes'
      DataSource = DSForm
      ReadOnly = True
      TabOrder = 2
      OnEnter = TEditEnter
      OnExit = TEditExit
    end
  end
  object Panel5: TPanel [3]
    Left = 376
    Top = 37
    Width = 130
    Height = 414
    Align = alRight
    TabOrder = 3
    DesignSize = (
      130
      414)
    object LblPaste: TLabel
      Left = 9
      Top = 281
      Width = 112
      Height = 41
      Anchors = [akTop, akRight]
      AutoSize = False
      Caption = 'LblPaste'
      Font.Charset = ARABIC_CHARSET
      Font.Color = clRed
      Font.Height = -12
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      Visible = False
      WordWrap = True
    end
    object BBOK: TBitBtn
      Left = 30
      Top = 15
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
      ModalResult = 1
      ParentFont = False
      TabOrder = 0
      OnClick = BBOKClick
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
    object BBCancel: TBitBtn
      Left = 30
      Top = 44
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
      OnClick = BBCancelClick
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
    object BBInsert: TBitBtn
      Left = 30
      Top = 86
      Width = 75
      Height = 25
      Cursor = crHandPoint
      Anchors = [akTop, akRight]
      Caption = #1580#1583#1610#1583
      Font.Charset = ARABIC_CHARSET
      Font.Color = clNavy
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 2
      OnClick = BBInsertClick
      Glyph.Data = {
        EE030000424DEE03000000000000360000002800000012000000110000000100
        180000000000B8030000120B0000120B00000000000000000000FFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFF4CB1D00192B80A9DBC069BBB0092B767BCD6FFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000FFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFF48B9D914BFD454D9E14ECFD807A5BD62BBD5FFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFF0000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF48BDDF25
        D4ED71F6FF64EAF30DAAC561B9D5FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        0000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF43BBDE2AD4EE6DF5FE5DE9F2
        0CACC65FB9D5FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000FFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFF50C0E023D3EC6DF6FF60E9F30CACC667BCD7FFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000D3EAF1B8DDEBBCDFECBBDFEDB8DF
        EDC2DFEC35B5DA21D6EE66F3FD60EAF50EB1CA45ACCCC4E3F0B8DEECBBE0EDBC
        E0EDBADCEBDEEFF4000058B6D21293B70E9CBC0E9ABD0F9CBD119FC211BBDB53
        EBF753ECFB57EBF745D1E009A2C1129BBE0D9BBD0E9ABC0E9CBC138FB785C7DC
        000050B8D90BB6D14FD5DF46D1DD49D4E04ADAE856E9F55CEEF917D7F921DAF8
        5DEAF44FDDE948D4E048D2DE47D2DF4DCDD6039BB87EC4DB000054BEDE1DD0EA
        7BF7FE65F0FB6BF3FD68F2FD59EDFA20DFFA00C2F800C7F82FE3F863EFFB6AF3
        FD69F2FC68F2FE6EEBF20BA4C082C5DB00004ABDDE27CDE8A6F5FA8CEEF896F1
        FA9AF3FBAAF6FA77F0F914D7F924DBF96DF1FA79F1FA87EFFA95F0FA87F0FA57
        E6F101A1BF7EC2D9000058C1E110B1DD08BEE509BCE408BFE814C5ED78DEF7B8
        F6FA56ECF957EEFA4CE6F60BC4E80DBDE607BEE509BDE40DBAE01399C385C7DD
        0000D3EDF6B9E0F0BBE1F0BAE0F1B9E2F2BEE2F429C1ED55E2F77BF2FA5EEFFA
        11C3DF44B5DAC4E5F3B7E0F0BBE1F1BCE2F1BADFEEDEEFF50000FFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFF52C4E531D8F17AF6FD5FEBF60EB3CD67BED8FFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000FFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFF43BCE02CD5EE6AF5FE5DE9F20CADC75FB9D5FFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFF0000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF46BCDE2C
        D3ED78F5FE65E8F20DABC562B9D6FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        0000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF45BDDF3DD6ED9EF9FE58EAF3
        06AEC662B9D4FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000FFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFF4CBEE006AFDC14BAE307B6DE009DC667BCD7FFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000}
    end
    object DeleteBtn: TBitBtn
      Left = 30
      Top = 141
      Width = 75
      Height = 25
      Cursor = crHandPoint
      Anchors = [akTop, akRight]
      Caption = #1581#1584#1601
      Font.Charset = ARABIC_CHARSET
      Font.Color = clNavy
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 3
      OnClick = DeleteBtnClick
      Glyph.Data = {
        BE010000424DBE01000000000000360000002800000012000000070000000100
        1800000000008801000000000000000000000000000000000000D3D3F1B8B8EB
        BCBCECBBBBEDBCBCEDBDBDEEBBBBEDBBBBEDBBBBECBBBBECBBBBECBBBBEDBDBD
        EEBDBDEEBBBBEDBCBCEDBABAEBDEDEF45C505858D21212B70E0EBC0E0EBD0E0E
        BD0E0EBD0E0EBC0E0EBC0E0EBB0E0EBB0E0EBC0E0EBC0E0EBD0E0EBE0E0EBC0E
        0EBC1313B78585DC00005050D90B0BD14F4FDE4747DD4949DF4949DF4848DE48
        48DE4848DD4848DD4848DD4848DE4949DF4949DE4747DF4D4DD60303B87E7EDB
        00005454DE1D1DEA7B7BFE6565FB6B6BFD6B6BFD6A6AFC6A6AFC6969FB6969FB
        6A6AFB6A6AFC6A6AFD6A6AFC6868FE6E6EF20B0BC08282DB00004A4ADE2727E8
        A6A6FA8C8CF89393FA9292FA9191F99191F99191F89191F89191F89191F99090
        FA9797F98787FA5757F10101BF7E7ED96E085858E11010DD0808E50808E40808
        E50808E50808E40808E40808E30808E30808E30808E40808E50808E50909E40D
        0DE01313C38585DD0000D3D3F6B9B9F0BBBBF0BABAF1BBBBF1BCBCF2BABAF1BA
        BAF1BABAF0BABAF0BABAF0BABAF1BBBBF2BCBCF2BBBBF1BCBCF1BABAEEDEDEF5
        0000}
    end
    object BBEdit: TBitBtn
      Left = 30
      Top = 113
      Width = 75
      Height = 25
      Cursor = crHandPoint
      Anchors = [akTop, akRight]
      Caption = #1608#1610#1585#1575#1610#1588
      Font.Charset = ARABIC_CHARSET
      Font.Color = clNavy
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 4
      OnClick = BBEditClick
      Glyph.Data = {
        36030000424D3603000000000000360000002800000010000000100000000100
        1800000000000003000000000000000000000000000000000000FFFFFFEDECEB
        9168519C7757A88455A48757A48B58A48D59A48C5AA48C59A48857A58557A37E
        54936E528C5B4D837177FFFFFFE1E5E3E2AB8AD2B9ADE9D6A6E7D7A7E7DBA9E7
        DCA8E7DCA8E7DCA9E7D8A7E7D7A6E7D4A5E0C4A3DCBCAF97564AFFFFFFE6EDEC
        FBEDD9E3EAFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFF4EE967869FFFFFFF7F8F8F5D1A7C1BDEDF2E5D5DACFCED6CBC8D2
        C9C3CCC6BFC9BFB8E6D5CCC8B8B2E5D9D6FBF6F6F9E3C6A8A6A5FFFFFFFFFFFF
        EAD1A6D7E3FBFDFEFAF8F8F8F6F7F7F5F6F6F3F3F4F7F5F4D4E0F1738297F1F1
        F0FFFFFFF5D2A7D1D9DCFFFFFFFFFFFFDEC09FD1CBF1F9F3E7F4E8EAF8EFEAFA
        F5EFFDF8F384B7DE7D99D7F1F1F6FAF5F4F9F5F4DCB59AF4F4F4FFFFFFFFFFFF
        D8C7A1D5DDF7F7F6F3F4F2F3F7F4F3FAF7F470BAEF0D95F3CDEBF5F8F5F4F7F3
        F3F7F5F6C7B197FFFFFFFFFFFFFFFFFFE3CBA1D5DCF6F3F1F0F2F1F1F8F4F068
        B4E3038BEA77E6FCF7F2F1F3F1F1F2F1F1F3F3F6C6B095FFFFFFFFFFFFFFFFFF
        E8C79FCFD1EDEBE4DCF1E8DA78B7E4028BEE4BD9F8E4EADEEEE3DEEAE1E0EAE0
        DDEFEBEECDAF94FFFFFFFFFFFFFFFFFFEECDA1E3E2EEEBE8E565B0E7149CF66C
        E0F6E2EAE8EBEAE8EBEAEAEAEAEAE9EAE9EFEEEFCEAE98FFFFFFFFFFFFFFFFFF
        E8C4A2D7DCE3318CDB18A8F8AFE2EFE6E0CFE8E5E3E4DCD8E2DCDBE7E3E3DBD6
        D6ECE5E1C4AEA1FFFFFFFFFFFFFFFFFFE5DCBA3E92DB06A1F991E8F9E3E0D299
        9891EAEAEAB9B6ACC7C9C2EEEEEFA0A098E9E2D5D3C9C5FFFFFFFFFFFFFAFAFA
        5492B61BB7FA7BDFF1DCDBD2E0E0DF9A9A9AF7F7F7C1C1C3C2C2C4FAFAFAA8A8
        A8EEEEEEFFFFFFFFFFFFFAFAFA6896B41FBAFEB4D9D4E5D9CEF7F7F7F2F2F2C7
        C7C7FFFFFFEEEEEEEEEEEEFFFFFFD9D9D9FDFDFDFFFFFFFFFFFF7A7A78C2C7C8
        B0D7DBFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFD2D7E3D2C7BFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF}
    end
  end
  inherited DSForm: TDataSource
    Left = 120
    Top = 176
  end
  inherited ActionList: TActionList
    Left = 280
    Top = 248
  end
  inherited Grid_PopupMenu: TPopupMenu
    Left = 279
    Top = 196
  end
  object ActionManager1: TActionManager
    ActionBars.SessionCount = 113
    ActionBars = <
      item
        Items = <
          item
            Caption = #1585#1705#1608#1585#1583
          end
          item
            Action = AClose
            ShortCut = 27
          end>
        AutoSize = False
      end>
    Images = Dm.LetterImages
    Left = 280
    Top = 144
    StyleName = 'XP Style'
    object AClose: TAction
      Tag = 2
      Category = #1585#1705#1608#1585#1583
      Caption = #1582#1585#1608#1580
      ShortCut = 27
      OnExecute = ACloseExecute
    end
    object AInsert: TAction
      Tag = 4
      Category = #1585#1705#1608#1585#1583
      Caption = #1580#1583#1610#1583
      ImageIndex = 16
      ShortCut = 45
      OnExecute = AInsertExecute
    end
    object Apost: TAction
      Tag = 5
      Category = #1585#1705#1608#1585#1583
      Caption = #1584#1582#1610#1585#1607
      ImageIndex = 40
      ShortCut = 113
      OnExecute = ApostExecute
    end
    object Adelete: TAction
      Tag = 6
      Category = #1585#1705#1608#1585#1583
      Caption = #1581#1584#1601
      ImageIndex = 29
      ShortCut = 16430
      OnExecute = AdeleteExecute
    end
    object AEdit: TAction
      Tag = 3
      Category = #1585#1705#1608#1585#1583
      Caption = #1608#1610#1585#1575#1610#1588
      OnExecute = AEditExecute
    end
  end
  object Dlist: TDataSource
    Left = 176
    Top = 176
  end
  object Get_ArchiveFolder_ByAccess_And_Title: TADOStoredProc
    Connection = Dm.YeganehConnection
    CursorType = ctStatic
    AfterScroll = Get_ArchiveFolder_ByAccess_And_TitleAfterScroll
    ProcedureName = 'Get_ArchiveFolder_ByAccessAndTitle;1'
    Parameters = <
      item
        Name = '@RETURN_VALUE'
        DataType = ftInteger
        Direction = pdReturnValue
        Precision = 10
        Value = 0
      end
      item
        Name = '@userID'
        Attributes = [paNullable]
        DataType = ftInteger
        Precision = 10
        Value = 0
      end
      item
        Name = '@SecID'
        Attributes = [paNullable]
        DataType = ftInteger
        Precision = 10
        Value = 0
      end
      item
        Name = '@ArchiveCenterID'
        Attributes = [paNullable]
        DataType = ftInteger
        Precision = 10
        Value = 1
      end
      item
        Name = '@like'
        Attributes = [paNullable]
        DataType = ftWideString
        Size = 100
        Value = ' '
      end>
    Left = 101
    Top = 245
    object Get_ArchiveFolder_ByAccess_And_TitleFolderID: TAutoIncField
      FieldName = 'FolderID'
      ReadOnly = True
    end
    object Get_ArchiveFolder_ByAccess_And_TitleParentFolderID: TIntegerField
      FieldName = 'ParentFolderID'
    end
    object Get_ArchiveFolder_ByAccess_And_TitleTitle: TWideStringField
      FieldName = 'Title'
      Size = 100
    end
    object Get_ArchiveFolder_ByAccess_And_TitleUserID: TIntegerField
      FieldName = 'UserID'
    end
    object Get_ArchiveFolder_ByAccess_And_TitleNotes: TWideStringField
      FieldName = 'Notes'
      Size = 500
    end
    object Get_ArchiveFolder_ByAccess_And_TitlePlace: TWideStringField
      FieldName = 'Place'
      Size = 100
    end
    object Get_ArchiveFolder_ByAccess_And_TitleArchiveCenterID: TIntegerField
      FieldName = 'ArchiveCenterID'
    end
  end
  object Get_ArchiveFolder_byUserID_and_Title: TADOStoredProc
    Connection = Dm.YeganehConnection
    CursorType = ctStatic
    AfterScroll = Get_ArchiveFolder_byUserID_and_TitleAfterScroll
    ProcedureName = 'get_ArchiveFolder_byUserID_and_Title;1'
    Parameters = <
      item
        Name = '@RETURN_VALUE'
        DataType = ftInteger
        Direction = pdReturnValue
        Precision = 10
        Value = 0
      end
      item
        Name = '@userID'
        Attributes = [paNullable]
        DataType = ftInteger
        Precision = 10
        Value = 0
      end
      item
        Name = '@like'
        Attributes = [paNullable]
        DataType = ftWideString
        Size = 100
        Value = ' '
      end
      item
        Name = '@ArchiveCenterID'
        Attributes = [paNullable]
        DataType = ftInteger
        Precision = 10
        Value = 1
      end>
    Left = 101
    Top = 293
    object Get_ArchiveFolder_byUserID_and_TitleFolderID: TAutoIncField
      FieldName = 'FolderID'
      ReadOnly = True
    end
    object Get_ArchiveFolder_byUserID_and_TitleParentFolderID: TIntegerField
      FieldName = 'ParentFolderID'
    end
    object Get_ArchiveFolder_byUserID_and_TitleTitle: TWideStringField
      FieldName = 'Title'
      Size = 100
    end
    object Get_ArchiveFolder_byUserID_and_TitleUserID: TIntegerField
      FieldName = 'UserID'
    end
    object Get_ArchiveFolder_byUserID_and_TitleNotes: TWideStringField
      FieldName = 'Notes'
      Size = 500
    end
    object Get_ArchiveFolder_byUserID_and_TitlePlace: TWideStringField
      FieldName = 'Place'
      Size = 100
    end
    object Get_ArchiveFolder_byUserID_and_TitleArchiveCenterID: TIntegerField
      FieldName = 'ArchiveCenterID'
    end
  end
  object Get_ArchiveFolder_ByUserID: TADOStoredProc
    Connection = Dm.YeganehConnection
    CursorType = ctStatic
    LockType = ltBatchOptimistic
    ProcedureName = 'get_ArchiveFolder_byUserID;1'
    Parameters = <
      item
        Name = '@RETURN_VALUE'
        DataType = ftInteger
        Direction = pdReturnValue
        Precision = 10
        Value = 0
      end
      item
        Name = '@userID'
        Attributes = [paNullable]
        DataType = ftInteger
        Precision = 10
        Value = 0
      end
      item
        Name = '@SecID'
        Attributes = [paNullable]
        DataType = ftInteger
        Precision = 10
        Value = 0
      end
      item
        Name = '@ArchiveCenterID'
        Attributes = [paNullable]
        DataType = ftInteger
        Precision = 10
        Value = 1
      end
      item
        Name = '@DabirOrKartable'
        Attributes = [paNullable]
        DataType = ftInteger
        Precision = 10
        Value = 1
      end>
    Left = 101
    Top = 349
    object Get_ArchiveFolder_ByUserIDFolderID: TIntegerField
      FieldName = 'FolderID'
    end
    object Get_ArchiveFolder_ByUserIDParentFolderID: TIntegerField
      FieldName = 'ParentFolderID'
    end
    object Get_ArchiveFolder_ByUserIDTitle: TWideStringField
      FieldName = 'Title'
      Size = 100
    end
    object Get_ArchiveFolder_ByUserIDUserID: TIntegerField
      FieldName = 'UserID'
    end
    object Get_ArchiveFolder_ByUserIDNotes: TWideStringField
      FieldName = 'Notes'
      Size = 500
    end
    object Get_ArchiveFolder_ByUserIDPlace: TWideStringField
      FieldName = 'Place'
      Size = 100
    end
    object Get_ArchiveFolder_ByUserIDArchiveCenterID: TIntegerField
      FieldName = 'ArchiveCenterID'
    end
  end
  object Get_ArchiveFolder_ByAccess: TADOStoredProc
    Connection = Dm.YeganehConnection
    ProcedureName = 'Get_ArchiveFolder_ByAccess;1'
    Parameters = <
      item
        Name = '@RETURN_VALUE'
        DataType = ftInteger
        Direction = pdReturnValue
        Precision = 10
        Value = 0
      end
      item
        Name = '@userID'
        Attributes = [paNullable]
        DataType = ftInteger
        Precision = 10
        Value = 0
      end
      item
        Name = '@SecID'
        Attributes = [paNullable]
        DataType = ftInteger
        Precision = 10
        Value = 0
      end>
    Left = 101
    Top = 405
    object Get_ArchiveFolder_ByAccessFolderID: TAutoIncField
      FieldName = 'FolderID'
      ReadOnly = True
    end
    object Get_ArchiveFolder_ByAccessParentFolderID: TIntegerField
      FieldName = 'ParentFolderID'
    end
    object Get_ArchiveFolder_ByAccessTitle: TWideStringField
      FieldName = 'Title'
      Size = 100
    end
    object Get_ArchiveFolder_ByAccessUserID: TIntegerField
      FieldName = 'UserID'
    end
    object Get_ArchiveFolder_ByAccessNotes: TWideStringField
      FieldName = 'Notes'
      Size = 500
    end
    object Get_ArchiveFolder_ByAccessPlace: TWideStringField
      FieldName = 'Place'
      Size = 100
    end
    object Get_ArchiveFolder_ByAccessArchiveCenterID: TIntegerField
      FieldName = 'ArchiveCenterID'
    end
  end
end
