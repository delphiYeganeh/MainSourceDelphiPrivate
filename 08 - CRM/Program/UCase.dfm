inherited frCase: TfrCase
  Left = 353
  Top = 163
  Width = 863
  Height = 548
  Caption = '\'
  Color = 16244694
  OldCreateOrder = True
  OnCloseQuery = FormCloseQuery
  PixelsPerInch = 96
  TextHeight = 13
  object xpPanel1: TxpPanel [0]
    Left = 0
    Top = 156
    Width = 855
    Height = 31
    StartColor = 16511469
    EndColor = 16244694
    FillDirection = fdLeftToRight
    Caption = 'xpPanel'
    Minimized = True
    Title = #1580#1587#1578#1580#1608
    TitleFont.Charset = ARABIC_CHARSET
    TitleFont.Color = clNavy
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
    TitleAlignment = taRightJustify
    TitleStartColor = clWhite
    TitleEndColor = 15777194
    TitleColor = clWhite
    TitleFillDirect = fdLeftToRight
    TitleImageAlign = tiaLeft
    TitleButtons = [tbMinimize]
    DefaultHeight = 87
    BorderColor = clWhite
    BGImageAlign = iaStretch
    Align = alTop
    TabOrder = 0
    object Label4: TLabel
      Left = 473
      Top = 11
      Width = 50
      Height = 13
      Caption = #1606#1575#1605' '#1605#1581#1589#1608#1604
      Transparent = True
    end
    object Label6: TLabel
      Left = 774
      Top = 11
      Width = 37
      Height = 13
      Caption = #1605#1588#1578#1585#1610
      Transparent = True
    end
    object Label7: TLabel
      Left = 782
      Top = 35
      Width = 18
      Height = 13
      Caption = #1606#1608#1593' '
      Transparent = True
    end
    object Label8: TLabel
      Left = 480
      Top = 35
      Width = 32
      Height = 13
      Caption = #1575#1608#1604#1608#1610#1578' '
      Transparent = True
    end
    object dblProductId: TDBLookupComboBox
      Left = 261
      Top = 7
      Width = 204
      Height = 21
      BiDiMode = bdLeftToRight
      DataField = 'ProductID'
      KeyField = 'ProductID'
      ListField = 'ProductTitle'
      ListSource = Dm.DProduct
      ParentBiDiMode = False
      TabOrder = 0
      OnCloseUp = dblCaseTypeIdCloseUp
      OnKeyDown = DBLookUpKeyDown
      OnKeyUp = dblCaseTypeIdKeyUp
    end
    object DBLookupComboBox4: TDBLookupComboBox
      Left = 536
      Top = 7
      Width = 176
      Height = 21
      BiDiMode = bdLeftToRight
      DataField = 'CustomerID'
      ListSource = Dm.DCustomer
      ParentBiDiMode = False
      TabOrder = 1
      OnCloseUp = dblCustomerCloseUp
    end
    object edtCustomerId: TYWhereEdit
      Left = 722
      Top = 7
      Width = 43
      Height = 21
      BiDiMode = bdLeftToRight
      ParentBiDiMode = False
      TabOrder = 2
      OnChange = edtCustomerChange
      isLike = False
      isDate = False
      EveryLike = False
      isString = True
      FieldName = 'CustomerID'
      TableName = 'Customer'
      ListTable = 'Customer'
      CodeField = 'CustomerID'
      TitleField = 'CompanyName'
    end
    object dblCaseTypeId: TDBLookupComboBox
      Left = 638
      Top = 31
      Width = 129
      Height = 21
      BiDiMode = bdLeftToRight
      KeyField = 'CaseTypeID'
      ListField = 'CaseTypeTitle'
      ListSource = Dm.DsCaseType
      ParentBiDiMode = False
      TabOrder = 3
      OnCloseUp = dblCaseTypeIdCloseUp
      OnKeyDown = DBLookUpKeyDown
      OnKeyUp = dblCaseTypeIdKeyUp
    end
    object dblCasePriorityId: TDBLookupComboBox
      Left = 330
      Top = 31
      Width = 137
      Height = 21
      BiDiMode = bdLeftToRight
      KeyField = 'CasePriorityID'
      ListField = 'CasePriorityTitle'
      ListSource = Dm.dsCasePriority
      ParentBiDiMode = False
      TabOrder = 4
      OnCloseUp = dblCaseTypeIdCloseUp
      OnKeyDown = DBLookUpKeyDown
      OnKeyUp = dblCaseTypeIdKeyUp
    end
    object chkCompleted: TCheckBox
      Left = 136
      Top = 32
      Width = 97
      Height = 17
      Caption = #1578#1603#1605#1610#1604' '#1588#1583#1607' '#1607#1575
      Color = 16244694
      ParentColor = False
      TabOrder = 5
      OnClick = dblCaseTypeIdCloseUp
    end
  end
  object dbgCase: TYDBGrid [1]
    Left = 0
    Top = 187
    Width = 855
    Height = 179
    Cursor = crHandPoint
    Align = alClient
    DataSource = DsSelect_Cases
    PopupMenu = PopupMenu1
    ReadOnly = True
    TabOrder = 1
    TitleFont.Charset = ARABIC_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
    OnDblClick = dbgCaseDblClick
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
        FieldName = 'CaseID'
        Title.Caption = #1705#1583' '#1605#1608#1585#1583
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'CaseTitle'
        Title.Alignment = taCenter
        Title.Caption = #1593#1606#1608#1575#1606
        Width = 177
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'ProductTitle'
        Title.Alignment = taCenter
        Title.Caption = #1606#1575#1605' '#1605#1581#1589#1608#1604
        Width = 104
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'CaseTypeTitle'
        Title.Alignment = taCenter
        Title.Caption = #1606#1608#1593' '
        Width = 58
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'CasePriorityTitle'
        Title.Alignment = taCenter
        Title.Caption = #1575#1608#1604#1608#1610#1578
        Width = 72
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'CompanyName'
        Title.Alignment = taCenter
        Title.Caption = #1605#1588#1578#1585#1610
        Width = 141
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'RegisterDate'
        Title.Alignment = taCenter
        Title.Caption = #1578#1575#1585#1610#1582' '#1579#1576#1578
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Status'
        Title.Alignment = taCenter
        Title.Caption = #1608#1590#1593#1610#1578
        Width = 91
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'UserName'
        Title.Alignment = taCenter
        Title.Caption = #1579#1576#1578' '#1603#1606#1606#1583#1607
        Width = 90
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Comment'
        Title.Caption = #1588#1585#1581
        Visible = False
      end
      item
        Expanded = False
        FieldName = 'CompleteDate'
        Title.Alignment = taCenter
        Title.Caption = #1578#1575#1585#1610#1582' '#1578#1603#1605#1610#1604
        Visible = False
      end>
  end
  object Panel3: TPanel [2]
    Left = 0
    Top = 470
    Width = 855
    Height = 44
    Align = alBottom
    TabOrder = 2
    DesignSize = (
      855
      44)
    object BitBtn2: TBitBtn
      Left = 5
      Top = 6
      Width = 98
      Height = 32
      Cancel = True
      Caption = #1575#1606#1589#1585#1575#1601
      ModalResult = 2
      TabOrder = 0
      OnClick = BitBtn2Click
      Glyph.Data = {
        DE010000424DDE01000000000000760000002800000024000000120000000100
        0400000000006801000000000000000000001000000000000000000000000000
        80000080000000808000800000008000800080800000C0C0C000808080000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
        333333333333333333333333000033338833333333333333333F333333333333
        0000333911833333983333333388F333333F3333000033391118333911833333
        38F38F333F88F33300003339111183911118333338F338F3F8338F3300003333
        911118111118333338F3338F833338F3000033333911111111833333338F3338
        3333F8330000333333911111183333333338F333333F83330000333333311111
        8333333333338F3333383333000033333339111183333333333338F333833333
        00003333339111118333333333333833338F3333000033333911181118333333
        33338333338F333300003333911183911183333333383338F338F33300003333
        9118333911183333338F33838F338F33000033333913333391113333338FF833
        38F338F300003333333333333919333333388333338FFF830000333333333333
        3333333333333333333888330000333333333333333333333333333333333333
        0000}
      NumGlyphs = 2
    end
    object btnDelBR2: TBitBtn
      Left = 450
      Top = 6
      Width = 98
      Height = 32
      Anchors = [akTop, akRight]
      Caption = #1581#1584#1601
      TabOrder = 1
      OnClick = btnDelBRClick
      Glyph.Data = {
        56010000424D560100000000000036000000280000000F000000060000000100
        18000000000020010000120B0000120B00000000000000000000BEBEEBA0A0E2
        A1A1E5A2A2E5A2A2E6A1A1E5A1A1E5A1A1E4A1A1E4A1A1E5A2A2E6A2A2E6A1A1
        E5A1A1E3CCCCEF0000004545CE0808BA1515C11313C11313C11313C01313C013
        13BF1313C01313C01313C11313C11515C00404B56D6DD40000004444DB2727E4
        6363EF5656EE5858EF5757EE5757EE5757ED5757ED5757EE5858EF5656EF6565
        ED1C1CC56969D40000004141DF4D4DF3A3A3FF8D8DFF9191FF9090FF9090FF8F
        8FFE9090FE9090FF9090FF9393FF8282FF1A1ACE6868D20000004444DE1616E2
        2C2CEA2727EA2828EA2828E92828E92828E82828E82828E92828EA2A2AEA2020
        EA0303C96D6DD5000000BFBFF29D9DED9B9BEE9C9CEE9D9DEF9B9BEE9B9BEE9B
        9BED9B9BED9B9BEE9C9CEF9C9CEF9F9FEEA1A1EACCCCF1000000}
    end
    object btnAdd: TBitBtn
      Left = 752
      Top = 6
      Width = 98
      Height = 32
      Anchors = [akTop, akRight]
      Caption = #1575#1601#1586#1608#1583#1606
      TabOrder = 2
      OnClick = btnAddClick
      Glyph.Data = {
        F6060000424DF606000000000000360000002800000018000000180000000100
        180000000000C0060000C40E0000C40E00000000000000000000FFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEFFFFFCFFFFFC
        FFFFFDFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFC1D5C2
        74AB7872AD7A73AD7A71AB779EC2A0FBFBFBFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFF58B468009D2500AE3900B23C00A72F18A23AEAF0E8FFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFEFF66C17B3DCE8046DF9545E29644D98E46BE6AE4
        EEE2FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFDFF69CF8849EEA154F5AD53F4
        AE52F3AB4DD480E4EEE2FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFDFF57D182
        00E97600EC7E00ED7F00EC7A1DD168E7EEE3FFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFDFF59CD8000E36F00E67700E67700E67421CD64E7EEE3FFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFF5ACC7E00DC6400DF6D00E06D00DF6A21C95FEB
        F2E7FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFBFE
        F4EDF2F4ECF1F4ECF1F4ECF0F4EBF0F4EBF0F7EAF258C17609D96612DC7013DC
        7011DD6E27C25DDDDDD7F6EDF2F4EBF0F4ECF0F4ECF1F4ECF1F3ECF0FCF5FAFF
        FFFFFFFFFFA9CAAC3891443B974D3B984F3B9A503B9A523B9B523C985119AB45
        27DB742FDB792DDA772BDC7617BB4F35974A3C9C523B9B513B9B503B9A4F3B99
        4E35934467A96FF8F8F7FFFFFF67B77500941F00A23400A83A00AE3E00B14200
        B24300AF4000BE4F32D77237D77735D77535D7740FC55900AF4100B24300B243
        00AF4100AB3D00A538009B2B139D37E7EFE4FFFFFF75BE802EBB583DC8713BCC
        753BD0783BD37B3AD47D39D37C34D17241D5753FD5753ED4743CD3723ED37734
        D27934D27833D17633CE7332CB6E31C66929BE5B2AAD46E4EEE2FFFFFF79BE7F
        55C36371D0806DD1806BD2826AD48468D58566D78654D47A4AD27549D27547D2
        7445D17152D3795BD57E58D27A57CF7555CC7154CA6C52C76647C25836AD41E2
        EDE2FFFFFF70B87548BC5466CC7562CD7460CE775ED0785DD1795AD27A5DD47D
        55D07752D07550D0744FCF7251D0744ECF704BCC6C4ACA6748C76246C45D44C0
        573CBB4B31A83AE1ECE1FFFFFF8CC69143AE4B67BF7064BF6F63C07163C17262
        C27362C27455C36C57CD735CCE775ACE7558CE7454C66D5AC06E5BC06D5ABF6A
        59BE6858BC6558BB6248B45048AD4DEEF5EFFFFFFFF6FAF7CDE4CFCCE4CECCE4
        CECCE4CECCE4CECCE4CECCE2CE4DAB5B51C76766CE7A63CD7760CD753AAC4CB6
        D4B8CDE5CFCDE5CFCDE5CFCDE5CFCDE5CFCAE4CCE4F1E5FFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF67B47058C46770CE7D6CCC
        7A69CC7647AD55EDF0EEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF64B06B
        60C46979CD8075CC7D72CB7A49AA53E3EBE4FFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFF64AE6A68C36B82CD847ECC807CCB7D4DA852E3EBE4FFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFF64AC696FC46F8BD08B86CD8684CE8450A854E3
        EAE4FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF62AA687ECC7D9CD89B97D6
        9796D79552A857E1E9E3FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF88BC8E
        6BB77081C1857FC0837ABF7E6BB073F0F4F1FFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFF5F9F7D3E4D7D3E4D6D3E4D6D1E3D5E9F1EBFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF}
    end
    object btnEdit: TBitBtn
      Left = 652
      Top = 6
      Width = 98
      Height = 32
      Anchors = [akTop, akRight]
      Caption = #1608#1610#1585#1575#1610#1588
      TabOrder = 3
      OnClick = btnEditClick
    end
    object btnAddTask: TBitBtn
      Left = 106
      Top = 6
      Width = 98
      Height = 32
      Caption = #1603#1575#1585#1607#1575
      TabOrder = 4
      OnClick = btnAddTaskClick
      Glyph.Data = {
        DE010000424DDE01000000000000760000002800000024000000120000000100
        0400000000006801000000000000000000001000000000000000000000000000
        80000080000000808000800000008000800080800000C0C0C000808080000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
        3333333333333333333333330000333333333333333333333333F33333333333
        00003333344333333333333333388F3333333333000033334224333333333333
        338338F3333333330000333422224333333333333833338F3333333300003342
        222224333333333383333338F3333333000034222A22224333333338F338F333
        8F33333300003222A3A2224333333338F3838F338F33333300003A2A333A2224
        33333338F83338F338F33333000033A33333A222433333338333338F338F3333
        0000333333333A222433333333333338F338F33300003333333333A222433333
        333333338F338F33000033333333333A222433333333333338F338F300003333
        33333333A222433333333333338F338F00003333333333333A22433333333333
        3338F38F000033333333333333A223333333333333338F830000333333333333
        333A333333333333333338330000333333333333333333333333333333333333
        0000}
      NumGlyphs = 2
    end
    object btnAttachment: TBitBtn
      Left = 348
      Top = 6
      Width = 98
      Height = 32
      Anchors = [akTop, akRight]
      Caption = #1662#1610#1608#1587#1578' '#1607#1575#1610' '#1605#1608#1585#1583
      TabOrder = 5
      OnClick = btnAttachmentClick
    end
    object btnSave: TBitBtn
      Left = 551
      Top = 6
      Width = 98
      Height = 32
      Anchors = [akTop, akRight]
      Caption = #1579#1576#1578' '
      Enabled = False
      TabOrder = 6
      OnClick = btnSaveClick
      Glyph.Data = {
        DE010000424DDE01000000000000760000002800000024000000120000000100
        0400000000006801000000000000000000001000000000000000000000000000
        80000080000000808000800000008000800080800000C0C0C000808080000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
        3333333333333333333333330000333333333333333333333333F33333333333
        00003333344333333333333333388F3333333333000033334224333333333333
        338338F3333333330000333422224333333333333833338F3333333300003342
        222224333333333383333338F3333333000034222A22224333333338F338F333
        8F33333300003222A3A2224333333338F3838F338F33333300003A2A333A2224
        33333338F83338F338F33333000033A33333A222433333338333338F338F3333
        0000333333333A222433333333333338F338F33300003333333333A222433333
        333333338F338F33000033333333333A222433333333333338F338F300003333
        33333333A222433333333333338F338F00003333333333333A22433333333333
        3338F38F000033333333333333A223333333333333338F830000333333333333
        333A333333333333333338330000333333333333333333333333333333333333
        0000}
      NumGlyphs = 2
    end
  end
  object grbCase: TGroupBox [3]
    Left = 0
    Top = 0
    Width = 855
    Height = 156
    Align = alTop
    Caption = '  '#1575#1591#1604#1575#1593#1575#1578' '#1605#1608#1585#1583
    Enabled = False
    TabOrder = 3
    DesignSize = (
      855
      156)
    object Label25: TLabel
      Left = 815
      Top = 70
      Width = 18
      Height = 13
      Caption = #1606#1608#1593' '
      Transparent = True
    end
    object Label26: TLabel
      Left = 613
      Top = 70
      Width = 32
      Height = 13
      Caption = #1575#1608#1604#1608#1610#1578' '
      Transparent = True
    end
    object Label27: TLabel
      Left = 815
      Top = 44
      Width = 26
      Height = 13
      Caption = #1593#1606#1608#1575#1606
      Transparent = True
    end
    object Label5: TLabel
      Left = 814
      Top = 94
      Width = 37
      Height = 13
      Caption = #1605#1588#1578#1585#1610
      Transparent = True
    end
    object Label2: TLabel
      Left = 743
      Top = 123
      Width = 20
      Height = 13
      Caption = #1605#1606#1576#1593
      Transparent = True
    end
    object Label1: TLabel
      Left = 381
      Top = 61
      Width = 23
      Height = 13
      Caption = #1588#1585#1581
    end
    object SBCityID: TSpeedButton
      Left = 432
      Top = 89
      Width = 23
      Height = 22
      Anchors = [akTop, akRight]
      Glyph.Data = {
        36030000424D3603000000000000360000002800000010000000100000000100
        1800000000000003000000000000000000000000000000000000FF00FFFF00FF
        FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00
        FFAB7B7B314860FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF
        00FFFF00FFFF00FFFF00FFFF00FFB67B7B31608F0B73E05084B6FF00FFFF00FF
        FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFB67B7B3160
        8F1173EA38A1FF31A1FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF
        00FFFF00FFFF00FFB67B7B31608F0B6AE038A1FF38A1FFFF00FFFF00FFFF00FF
        FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFAB7B7B31608F0B73E031A1
        FF38A1FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFC08F84CAA18FB68F8498
        6058FF00FF405058116AD431A1FF38A1FFFF00FFFF00FFFF00FFFF00FFFF00FF
        C0988FE0D4ABFFFFCAFFFFCAFFFFCAF4E0C0A184738F7B73A1CAEA38ABFFFF00
        FFFF00FFFF00FFFF00FFFF00FFA17373F4F4EAFFFFEAFFFFD4FFFFD3FFFFD3FF
        FFD3FFEAB6CAA18FC0A1A1FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFD4CAAB
        FFFFFFFFFFD4FFFFD4FEFED3FFFFD3FFFED3FEFED3F4D4A1B67B73FF00FFFF00
        FFFF00FFFF00FFFF00FFB6847BF4EACAFFFFD4FEFED3FEFED3FEFED3FEFED3FF
        FED3FEFED3FFE098D4AB8FFF00FFFF00FFFF00FFFF00FFFF00FFB69884F4F4CA
        FFFFD4FEFED3FEFED3FEFED3FEFED3FEFED3FEFED3FFD498E0B698FF00FFFF00
        FFFF00FFFF00FFFF00FFB68F84F4EACAFFFFD4FFFFD4FFFED3FEFED3FFFED3FE
        FED3FEFED3FFE0A1D4AB98FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFE0D4AB
        FFFFD3FFFED3FFFED3FEFED3FEFED3FEFED3FFEAB6FFEAB6B6847BFF00FFFF00
        FFFF00FFFF00FFFF00FFFF00FFAB8473FFF4B6FFFED3FEFED3FEFED3FEFED3FF
        F4EAFFFFFFD4B698FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
        C09884F4D4A1FFE0A1FFE098FFEAB6F4EACACAABABFF00FFFF00FFFF00FFFF00
        FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFD4AB8FD4AB8FC09884C0
        987BFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF}
      ParentShowHint = False
      ShowHint = True
      OnClick = SBCityIDClick
    end
    object Label11: TLabel
      Left = 817
      Top = 19
      Width = 34
      Height = 13
      Caption = #1705#1583' '#1605#1608#1585#1583
      Transparent = True
    end
    object GroupBox2: TGroupBox
      Left = 23
      Top = 12
      Width = 381
      Height = 41
      Caption = #1605#1581#1589#1608#1604
      TabOrder = 0
      object Label3: TLabel
        Left = 61
        Top = 19
        Width = 57
        Height = 13
        Caption = #1608#1585#1688#1606' '#1605#1581#1589#1608#1604
        Transparent = True
      end
      object Label36: TLabel
        Left = 350
        Top = 19
        Width = 13
        Height = 13
        Caption = #1606#1575#1605
        Transparent = True
      end
      object dblProduct: TDBLookupComboBox
        Left = 141
        Top = 15
        Width = 204
        Height = 21
        BiDiMode = bdLeftToRight
        DataField = 'ProductID'
        DataSource = DsSelect_Cases
        KeyField = 'ProductID'
        ListField = 'ProductTitle'
        ListSource = Dm.DProduct
        ParentBiDiMode = False
        TabOrder = 0
      end
      object DBEdit1: TDBEdit
        Left = 5
        Top = 15
        Width = 41
        Height = 21
        DataField = 'ProductVersion'
        DataSource = DsSelect_Cases
        TabOrder = 1
      end
    end
    object dbeCaseTitle: TDBEdit
      Left = 432
      Top = 40
      Width = 380
      Height = 21
      BiDiMode = bdRightToLeft
      DataField = 'CaseTitle'
      DataSource = DsSelect_Cases
      ParentBiDiMode = False
      TabOrder = 1
    end
    object dblCaseType: TDBLookupComboBox
      Left = 655
      Top = 64
      Width = 157
      Height = 21
      BiDiMode = bdLeftToRight
      DataField = 'CaseTypeID'
      DataSource = DsSelect_Cases
      KeyField = 'CaseTypeID'
      ListField = 'CaseTypeTitle'
      ListSource = Dm.DsCaseType
      ParentBiDiMode = False
      TabOrder = 2
    end
    object dblPriority: TDBLookupComboBox
      Left = 432
      Top = 66
      Width = 168
      Height = 21
      BiDiMode = bdLeftToRight
      DataField = 'CasePriorityId'
      DataSource = DsSelect_Cases
      KeyField = 'CasePriorityID'
      ListField = 'CasePriorityTitle'
      ListSource = Dm.dsCasePriority
      ParentBiDiMode = False
      TabOrder = 3
    end
    object dblCustomer: TDBLookupComboBox
      Left = 432
      Top = 143
      Width = 294
      Height = 21
      BiDiMode = bdLeftToRight
      DataField = 'CustomerID'
      DataSource = DsSelect_Cases
      ParentBiDiMode = False
      TabOrder = 4
      Visible = False
      OnCloseUp = dblCustomerCloseUp
    end
    object edtCustomer: TYWhereEdit
      Left = 456
      Top = 143
      Width = 313
      Height = 21
      BiDiMode = bdLeftToRight
      ParentBiDiMode = False
      TabOrder = 5
      Visible = False
      OnChange = edtCustomerChange
      OnExit = edtCustomerExit
      OnKeyDown = CtrlSpace
      isLike = False
      isDate = False
      EveryLike = False
      isString = True
      FieldName = 'CustomerID'
      TableName = 'Customer'
      ListTable = 'Customer'
      CodeField = 'CustomerID'
      TitleField = 'CompanyName'
    end
    object dblCaseOriginal: TDBLookupComboBox
      Left = 523
      Top = 118
      Width = 204
      Height = 21
      BiDiMode = bdLeftToRight
      DataField = 'CaseOrigiranlId'
      DataSource = DsSelect_Cases
      KeyField = 'CaseOriginalId'
      ListField = 'CaseOriginalTitle'
      ListSource = Dm.DsCaseOriginal
      ParentBiDiMode = False
      TabOrder = 6
    end
    object DBMemo2: TDBMemo
      Left = 24
      Top = 60
      Width = 353
      Height = 91
      DataField = 'Comment'
      DataSource = DsSelect_Cases
      ScrollBars = ssVertical
      TabOrder = 7
    end
    object DBEdit3: TDBEdit
      Left = 456
      Top = 90
      Width = 309
      Height = 21
      DataSource = DsSelect_Cases
      ReadOnly = True
      TabOrder = 8
      Visible = False
    end
    object DBEdit4: TDBEdit
      Left = 770
      Top = 90
      Width = 42
      Height = 21
      DataField = 'CustomerID'
      DataSource = DsSelect_Cases
      TabOrder = 9
    end
    object Edit1: TEdit
      Left = 455
      Top = 90
      Width = 311
      Height = 21
      TabOrder = 10
    end
    object DBEdit5: TDBEdit
      Left = 690
      Top = 16
      Width = 121
      Height = 21
      DataField = 'CaseID'
      DataSource = DsSelect_Cases
      Enabled = False
      TabOrder = 11
    end
  end
  object Panel1: TPanel [4]
    Left = 0
    Top = 366
    Width = 855
    Height = 104
    Align = alBottom
    TabOrder = 4
    object Label9: TLabel
      Left = 792
      Top = 7
      Width = 49
      Height = 13
      Caption = #1588#1585#1581' '#1575#1578#1605#1575#1605
    end
    object Label10: TLabel
      Left = 202
      Top = 13
      Width = 47
      Height = 13
      Caption = #1578#1575#1585#1610#1582' '#1575#1578#1605#1575#1605
    end
    object DBMemo1: TDBMemo
      Left = 264
      Top = 8
      Width = 524
      Height = 91
      Color = clCream
      DataField = 'CompleteComment'
      DataSource = DsSelect_Cases
      ReadOnly = True
      ScrollBars = ssVertical
      TabOrder = 0
    end
    object DBEdit2: TDBEdit
      Left = 52
      Top = 11
      Width = 145
      Height = 21
      BiDiMode = bdRightToLeft
      Color = clCream
      DataField = 'CompleteDate'
      DataSource = DsSelect_Cases
      ParentBiDiMode = False
      ReadOnly = True
      TabOrder = 1
    end
  end
  inherited DSForm: TDataSource
    Left = 144
    Top = 64
  end
  inherited ActionList: TActionList
    Left = 88
    Top = 64
  end
  object SpSelect_Cases: TADOStoredProc
    Connection = Dm.YeganehConnection
    CursorType = ctStatic
    AfterPost = SpSelect_CasesAfterPost
    OnCalcFields = SpSelect_CasesCalcFields
    ProcedureName = 'Select_Case;1'
    Parameters = <
      item
        Name = '@RegisterUserID'
        Attributes = [paNullable]
        DataType = ftInteger
        Precision = 10
        Value = Null
      end>
    Left = 616
    Top = 240
    object SpSelect_CasesCaseID: TLargeintField
      FieldName = 'CaseID'
      ReadOnly = True
    end
    object SpSelect_CasesCaseTitle: TWideStringField
      Alignment = taRightJustify
      FieldName = 'CaseTitle'
      Size = 50
    end
    object SpSelect_CasesComment: TWideStringField
      FieldName = 'Comment'
      Size = 250
    end
    object SpSelect_CasesProductId: TIntegerField
      FieldName = 'ProductId'
    end
    object SpSelect_CasesProductVersion: TIntegerField
      FieldName = 'ProductVersion'
    end
    object SpSelect_CasesCaseTypeID: TWordField
      FieldName = 'CaseTypeID'
    end
    object SpSelect_CasesCasePriorityId: TWordField
      FieldName = 'CasePriorityId'
    end
    object SpSelect_CasesCustomerID: TIntegerField
      FieldName = 'CustomerID'
    end
    object SpSelect_CasesCaseOrigiranlId: TWordField
      FieldName = 'CaseOrigiranlId'
    end
    object SpSelect_CasesRegisterDate: TWideStringField
      FieldName = 'RegisterDate'
      FixedChar = True
      Size = 10
    end
    object SpSelect_CasesRegisterUserID: TIntegerField
      FieldName = 'RegisterUserID'
    end
    object SpSelect_CasesProductTitle: TWideStringField
      FieldName = 'ProductTitle'
      Size = 100
    end
    object SpSelect_CasesCaseTypeTitle: TWideStringField
      FieldName = 'CaseTypeTitle'
      Size = 50
    end
    object SpSelect_CasesCasePriorityTitle: TWideStringField
      FieldName = 'CasePriorityTitle'
      Size = 50
    end
    object SpSelect_CasesCompanyName: TWideStringField
      FieldName = 'CompanyName'
      Size = 100
    end
    object SpSelect_CasesUserName: TWideStringField
      FieldName = 'UserName'
      Size = 50
    end
    object SpSelect_CasesCompleted: TBooleanField
      FieldName = 'Completed'
    end
    object SpSelect_CasesCompleteDate: TWideStringField
      FieldName = 'CompleteDate'
      FixedChar = True
      Size = 10
    end
    object SpSelect_CasesStatus: TStringField
      FieldKind = fkCalculated
      FieldName = 'Status'
      Size = 50
      Calculated = True
    end
    object SpSelect_CasesCompleteComment: TWideStringField
      FieldName = 'CompleteComment'
      Size = 300
    end
  end
  object DsSelect_Cases: TDataSource
    DataSet = SpSelect_Cases
    OnDataChange = DsSelect_CasesDataChange
    Left = 616
    Top = 291
  end
  object PopupMenu1: TPopupMenu
    Left = 617
    Top = 189
    object N1: TMenuItem
      Caption = #1575#1578#1582#1575#1576' '#1587#1578#1608#1606
      OnClick = N1Click
    end
    object word1: TMenuItem
      Caption = #1575#1585#1587#1575#1604' '#1576#1607' word'
      OnClick = word1Click
    end
  end
  object Customer: TADOTable
    Connection = Dm.YeganehConnection
    CursorType = ctStatic
    TableName = 'Customer'
    Left = 456
    Top = 224
    object CustomerCustomerID: TAutoIncField
      FieldName = 'CustomerID'
      ReadOnly = True
    end
    object CustomerCompanyName: TWideStringField
      FieldName = 'CompanyName'
      Size = 100
    end
    object CustomerCode: TStringField
      FieldKind = fkLookup
      FieldName = 'Code'
      LookupDataSet = ADOTable1
      LookupKeyFields = 'CustomerID'
      LookupResultField = 'CustomerID'
      KeyFields = 'CustomerID'
      Lookup = True
    end
  end
  object ADOTable1: TADOTable
    Connection = Dm.YeganehConnection
    CursorType = ctStatic
    TableName = 'Customer'
    Left = 376
    Top = 288
    object AutoIncField1: TAutoIncField
      FieldName = 'CustomerID'
      ReadOnly = True
    end
    object WideStringField1: TWideStringField
      FieldName = 'CompanyName'
      Size = 100
    end
  end
end
