inherited FrTeacherExamInfo_byDate: TFrTeacherExamInfo_byDate
  Left = 650
  Top = 227
  Width = 800
  Height = 600
  Caption = #1575#1591#1604#1575#1593#1575#1578' '#1578#1581#1604#1610#1604' '#1570#1586#1605#1608#1606#1607#1575#1610#1610' '#1705#1607' '#1575#1587#1578#1575#1583' '#1583#1585' '#1570#1606' '#1591#1585#1575#1581' '#1587#1574#1608#1575#1604' '#1576#1608#1583#1607' '#1575#1587#1578
  OldCreateOrder = True
  PixelsPerInch = 96
  TextHeight = 13
  object number: TLabel [0]
    Left = 744
    Top = 528
    Width = 23
    Height = 13
    Anchors = [akRight, akBottom]
    Caption = #1578#1593#1583#1575#1583
  end
  object Panel1: TPanel [1]
    Left = 0
    Top = 0
    Width = 784
    Height = 59
    Align = alTop
    TabOrder = 0
    DesignSize = (
      784
      59)
    object Label1: TLabel
      Left = 724
      Top = 8
      Width = 51
      Height = 14
      Anchors = [akTop, akRight]
      Caption = #1705#1583' '#1575#1587#1578#1575#1583
      FocusControl = DBEdit1
      Font.Charset = ARABIC_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label4: TLabel
      Left = 759
      Top = 33
      Width = 16
      Height = 14
      Anchors = [akTop, akRight]
      Caption = #1606#1575#1605
      FocusControl = DBEdit4
      Font.Charset = ARABIC_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object DBEdit1: TDBEdit
      Left = 536
      Top = 4
      Width = 128
      Height = 21
      Anchors = [akLeft, akTop, akRight]
      DataField = 'TeacherCode'
      DataSource = Dm.Dselect_teacher_by_where
      TabOrder = 0
    end
    object DBEdit4: TDBEdit
      Left = 415
      Top = 29
      Width = 249
      Height = 21
      Anchors = [akLeft, akTop, akRight]
      DataField = 'FullName'
      DataSource = Dm.Dselect_teacher_by_where
      TabOrder = 1
    end
  end
  object Panel2: TPanel [2]
    Left = 0
    Top = 59
    Width = 784
    Height = 41
    Align = alTop
    TabOrder = 1
    DesignSize = (
      784
      41)
    object Label3: TLabel
      Left = 523
      Top = 12
      Width = 12
      Height = 14
      Anchors = [akTop, akRight]
      Caption = #1578#1575' '
      Font.Charset = ARABIC_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label6: TLabel
      Left = 664
      Top = 11
      Width = 82
      Height = 14
      Anchors = [akTop, akRight]
      Caption = #1578#1575#1585#1610#1582' '#1570#1586#1605#1608#1606' '#1575#1586' '
      Font.Charset = ARABIC_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object EndExamDate: TEdit
      Left = 400
      Top = 8
      Width = 121
      Height = 21
      Anchors = [akTop, akRight]
      TabOrder = 0
      Text = '1392/12/29'
    end
    object BeginExamDate: TEdit
      Left = 544
      Top = 8
      Width = 121
      Height = 21
      Anchors = [akTop, akRight]
      TabOrder = 1
      Text = '1390/01/01'
    end
    object xpBitBtn1: TxpBitBtn
      Left = 269
      Top = 5
      Width = 109
      Height = 30
      startColor = 16645629
      EndColor = 14666957
      Caption = #1576#1585#1608#1586' '#1585#1587#1575#1606#1610
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clNavy
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ImageList = Dm.LetterImages
      ImageIndex = 28
      Gradient = True
      Anchors = [akTop, akRight]
      TabOrder = 2
      TabStop = True
      OnClick = xpBitBtn1Click
    end
  end
  object Button3: TxpBitBtn [3]
    Left = 227
    Top = 519
    Width = 100
    Height = 35
    startColor = 16645629
    EndColor = 14666957
    Caption = 'Word'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clNavy
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    Glyph.Data = {
      66090000424D660900000000000036000000280000001C0000001C0000000100
      1800000000003009000000000000000000000000000000000000AB552E883C08
      8236058236058236058236058236058236057832017832017832017832017832
      01682B01682B01682B01682B015B26015B260152220152220152220152220152
      2201471D01471D01471D01471D01AB552EE28964D97748D97748D97748D97748
      D97748CC7449CC7449CC7449C46E42C46E42C46E42BD6C3FBD6C3FB8693AB869
      3AB46339B46339AE6138AB5D32AB5D32AB5D32A45A2CA45A2CA45A2CA45A2C47
      1D01AB552EE08C69A46D558C5D46805643805643805643805643805643805643
      80564378533C78533C744F3D744F3D744F3D744F3D6A47376A47376A47376A47
      376A47376A47376A47376A47376A4737A45A2C471D01AB552EE6916FA46D55FE
      FBFAFDFAF9FDF8F7FDF8F7FCF7F5FBF6F4FAF4F2FAF2F0FAF2F0F8F0EEF9EFEC
      F8EEEAF7ECE8F7E9E6F7E8E4F5E6E1F5E6E1F5E6E1F4E2DCF4E2DCF4E2DCF4E2
      DC6A4737A45A2C471D01AB5D32E99675A46D55FEFBFAFEFBFAFDFAF9FDF8F7FD
      F8F7FCF7F5FBF6F4FAF4F2FAF2F0FAF2F0F8F0EEF9EFECF8EEEAF7ECE8F7E9E6
      F7E8E4F5E6E1F5E6E1F5E6E1F4E2DCF4E2DCF4E2DC6A4737A45A2C522201AB5D
      32E69E80AB755DFEFCFBFEFBFAFEFBFAFDFAF9FDF8F7FDF8F7FCF7F5FBF6F4FA
      F4F2FAF2F0FAF2F0F8F0EEF9EFECF8EEEAF7ECE8F7E9E6F7E8E4F5E6E1F5E6E1
      F5E6E1F4E2DCF4E2DC6A4737AB5D32522201AE6138E69E80AB755DFEFCFBFEFC
      FBFEFBFAFEFBFAFDFAF9FDF9F8FDF8F7FCF7F5FBF6F4FAF4F2FAF2F0FAF2F0F8
      F0EEF9EFECF8EEEAF7ECE8F7E9E6F7E8E4F5E6E1F5E6E1F5E6E1F4E2DC6A4737
      AB5D32522201AE6138E9A589AB755DFEFDFCFEFCFBFEFCFB9B644D8D55398751
      32875132D0BAADFCF7F5FBF6F48A4C277849266B45216B4521563C16E2D2C9F7
      ECE8F7E9E6F7E8E4F5E6E1F5E6E1F5E6E16A4737AE6138522201B46339E9A589
      AB755DFFFEFDFEFDFCFEFCFB9B644DD28B72AB552E9F5329875132FDF8F7FCF7
      F58F5230AB552E7849267849266F3D179C8A77F8EEEAF7ECE8F7E9E6F7E8E4F5
      E6E1F5E6E16A4737B46339522201B46640E6AB93AB755DFFFEFDFFFEFDFEFDFC
      A46D55D8977CCC7449CC74498A4C27D0BAADFDF8F7985A3AC26135AB552EA951
      279A4C21563C16E2D2C9F8EEEAF7ECE8F7E9E6F7E8E4F5E6E16A4737B8693A5B
      2601B96A44EDB199B37E67FFFFFFFFFEFDFFFEFDA46D55DA9C83CE7B55CC7449
      AE61388F5230FDF9F89B644DC46E42B65B32AB552EA951276F3D179C8A77F9EF
      ECF8EEEAF7ECE8F7E9E6F7E8E46A4737BD6C3F5B2601B96A44EDB199B37E67FF
      FFFFFFFFFFFFFEFDAB755DDDA48BD58360CE7B55CA77528A4C27D0BAADA76A4D
      C67452B65B32B65B32AB552E9A4C21563C16E2D2C9F9EFECF8EEEAF7ECE8F7E9
      E6744F3DC46E42682B01C16F4BF0B7A0B37E67FFFFFEFFFFFFFFFFFFAB755DE6
      AB93D58A67CD8160D17E58AE61388D5539A46D55CB7C5DBF643EC26135C26135
      AB552E6F3D179C8A77F8F0EEF9EFECF8EEEAF7ECE8744F3DC46E42682B01C16F
      4BF0B7A0B37E67FFFFFFFFFFFEFFFFFFB37E67E6AB93D28B72B57358DA9C83CD
      81608F5230AB755DCF8568C46E42C26135C46E42CC74499F5329563C16E2D2C9
      F8F0EEF9EFECF8EEEA744F3DCC7449682B01C67452F1BEAABA8670FFFFFFFFFF
      FFFFFFFEB37E67EDB199D591779B644DCD8160DA9C83D17E58CE7B55C67452CC
      7449BF643E985A3ACA7752C261356F3D179C8A77FAF2F0F8F0EEF9EFEC744F3D
      CC7449682B01CA7752F1BEAABA8670FFFFFFFFFFFFFFFFFFC7836BEABCA9D897
      7C9B644DAB755DDA9C83D28B72CD8160CE7B55CA7752BF643E8C5D469B644DCC
      74499F5329574421E2D2C9FAF2F0F8F0EE78533CCE7B55783201CE7B55F1BEAA
      BA8670FFFFFFFFFFFFFFFFFFC7836BEABCA9DA9C839B644DD0BAADB37E67DDA4
      8BCF8568CD8160D17E58B96A449B644DBF917CA46D55C46E42784926B5A392FA
      F2F0FAF2F0805643D17E58783201CE7B55F1BEAABA8670FFFFFFFFFFFFFFFFFF
      D28B72EABCA9DDA48B9B644DEADCD6D0BAADDA9C83DA9C83D58A67D58360C16F
      4BA46D55FBF6F49B644DCD8160AB5D32574421EADCD6FAF2F0805643D7815A78
      3201D17E58F4C8B7BA8670FFFFFFFFFFFFEADCD6D28B72EABCA9E6AB93A46D55
      E2D2C9FAF2F0BA8670E6AB93D59177D58A67C16F4BAB755DFDFAF9B5A392B573
      58CB7C5D784926B5A392EADCD6805643D7815A783201D58360F4C8B7BF917CFF
      FFFFFFFFFFDA9C83DA9C83EABCA9E6AB93BA8670B37E67F7EAE7D8C4B9C99075
      DDA48BD59177C1785DB37E67FDFAF9DFBCAFAB755DCB7C5DB463396D5B3BD8C4
      B9805643DD8560783201D58360F4C8B7BF917CFFFFFFD59177D59177EDB199EA
      BCA9EABCA9E6AB93B37E67AB755DFFFFFFBA8670DA9C83DDA48BDA9C83B37E67
      FDFAF9C67452D59177D59177D8977CD58A67C16F4B805643DD8560823605D583
      60F4C8B7BF917CFFFFFFDA9C83DA9C83DA9C83D8977CD59177D59177D28B72D2
      8B72FFFFFEE2D2C9CD8160CB7C5DCB7C5DC67452FDFBFAC16F4BC67452C67452
      C16F4BC16F4BBF643E805643DD8560823605DB8866F4C8B7BF917CFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEFFFFFFFF
      FFFFFFFEFDFFFEFDFEFDFCFEFCFBFEFCFBFEFBFAFEFBFAFDFAF9FDF9F88C5D46
      DD8560823605DB8866F4C8B7BF917CFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEFFFFFFFFFFFFFFFEFDFFFEFDFE
      FDFCFEFCFBFEFCFBFEFBFAFEFBFAFDFAF98C5D46E28964823605E08C69F4C8B7
      BF917CFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFEFFFFFFFFFFFFFFFEFDFFFEFDFEFDFCFEFCFBFEFCFBFE
      FBFAFEFBFA8C5D46E28964823605E08C69F4C8B7BF917CBF917CBF917CBF917C
      BF917CBF917CBF917CBA8670BA8670BA8670BA8670B37E67B37E67B37E67B37E
      67B37E67AB755DAB755DAB755DAB755DAB755DA46D55A46D55A46D55E2896488
      3C08E08C69F4C8B7F4C8B7F4C8B7F4C8B7F4C8B7F4C8B7F4C8B7F4C8B7F4C8B7
      F1BEAAF1BEAAF1BEAAF0B7A0F0B7A0EDB199EDB199E6AB93E9A589E9A589E69E
      80E99675E99675E08C69E28964DD8560E28964883C08E08C69E08C69E08C69E0
      8C69DB8866DB8866DB8866D58360D58360D58360CD8160CB7C5DCB7C5DCE7B55
      C67452C67452C16F4BC16F4BC16F4BB96A44B96A44B46640B46640B46640AE61
      38AE6138AE6138AE6138}
    Gradient = True
    Anchors = [akLeft, akBottom]
    TabOrder = 2
    TabStop = True
    OnClick = Button3Click
  end
  object Button4: TxpBitBtn [4]
    Left = 125
    Top = 519
    Width = 100
    Height = 35
    startColor = 16645629
    EndColor = 14666957
    Caption = 'Excel'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clNavy
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    Glyph.Data = {
      66090000424D660900000000000036000000280000001C0000001C0000000100
      1800000000003009000000000000000000000000000000000000417B57214F39
      214F39214F39214F39214F39214F391A45331A45331A45331A45331A45331A45
      331335291335291335291335291335291335290D281F0D281F0D281F0D281F0D
      281F0A1F190A1F190A1F190A1F19417B575CAA6545A35F45A35F45A35F45A35F
      3F9E5A3F9E5A3F9E5A399755399755399755358C4F358C4F2D87472D87472D87
      47227F40227F40227F401A7A3C1A7A3C1274371274371274370F6C330A6D300A
      1F19417B575CAA656C977E517666517666517666517666517666517666517666
      4B6B604B6B604B6B604B6B604B6B604B6B604B6B60435F59435F59435F59435F
      59435F59435F59435F59435F59435F590F6C330A1F1947815D63B2766C977EE8
      F1E8E8F1E8E6F0E6E4EFE4E2EEE3E2EEE3E0EEE0DFECDFDEEBDEDCEADBDCEADB
      DAE9DAD9E8D9D8E7D8D8E7D8D5E5D5D5E5D5D5E5D5D2E4D2D2E4D2D2E4D2D2E4
      D2435F591274370A1F1947815D63B2766C977EEAF2E9E8F1E8E8F1E8E6F0E6E4
      EFE4E2EEE3E2EEE3E0EEE0DFECDFDEEBDEDCEADBDCEADBDAE9DAD9E8D9D8E7D8
      D8E7D8D5E5D5D5E5D5D5E5D5D2E4D2D2E4D2D2E4D2435F591274370D281F4781
      5D63B2766C977EEBF3EBEAF2E9E8F1E8E8F1E8E6F0E6E4EFE4E2EEE3E2EEE3E0
      EEE0DFECDFDEEBDEDCEADBDCEADBDAE9DAD9E8D9D8E7D8D8E7D8D5E5D5D5E5D5
      D5E5D5D2E4D2D2E4D2435F591274370D281F4D876273BA836C977EEDF5EDEBF3
      EBEAF2E9E8F1E8E8F1E8E6F0E6E4EFE4E2EEE3E2EEE3E0EEE0DFECDFDEEBDEDC
      EADBDCEADBDAE9DAD9E8D9D8E7D8D8E7D8D5E5D5D5E5D5D5E5D5D2E4D2435F59
      1A7A3C0D281F4D876273BA836C977EEDF5EDEDF5EDEBF3EBEAF2E9E8F1E8E8F1
      E8E6F0E6E4EFE4E2EEE3E2EEE3E0EEE0DFECDFAAD6B261996426422D213B2721
      3B27213B27213B27213B27213B27D5E5D5435F591A7A3C0D281F4D87627CC185
      76A086EFF6EF4B964D26422D26422D26422D26422D26422D26422D26422D2642
      2D26422D1A4D2A0F60153287353287351274371C6C3A2C66422C66423A5F5121
      3B27D5E5D5435F59227F400D281F558E6781BC9076A086F1F7F14B964D127437
      1274371C6C3A1C6C3A2C66422C66423A5F513A5F513A5F510469041D781E88C7
      926DB6752D87472D8747227F40227F40046904D8E7D8D5E5D5435F59227F4013
      3529558E6788C79276A086F3F8F3DAE9DA4B964D6DB67573BB7C73BB7C6DB675
      68B06F5CAA6555A45A0469044093479DD0A76DB675409347358C4F2D87472D87
      4704690494C79CD8E7D8D8E7D8435F59227F40133529558E6794C79C76A086F3
      F8F3F3F8F3DAE9DA4B964D6DB67573BB7C73BB7C64AC6955A45A046904409347
      9DD0A768B06F499B54499B54409347358C4F0469041A4D2AA8C2A8D9E8D9D8E7
      D84B6B602D874713352958966B94C79C76A086F5F9F5F3F8F3F3F8F3DAE9DA4B
      964D6DB67568B06F55A45A0469044093479DD0A76DB67555A45A55A45A499B54
      499B540469042D8747227F400F6015DAE9DAD9E8D94B6B602D87471335295896
      6B9DD0A781AA8DF6FAF5F5F9F5F3F8F3F3F8F3DAE9DA4B964D55A45A04690440
      9347AAD6B273BB7C55A45A55A45A55A45A55A45A0469043A734C57825A558E67
      57825ADCEADBDAE9DA4B6B602D87471335295F9B729DD0A781AA8DF6FAF6F6FA
      F5F5F9F5F3F8F3F3F8F3DAE9DA1D781E409347AAD6B27CC1855CAA655CAA6555
      A45A55A45A3A734CA8C2A8E2EEE3E0EEE0DFECDFDEEBDEDCEADBDCEADB4B6B60
      358C4F1335295F9B72AAD6B281AA8DF8FAF8F6FAF6F6FAF5F5F9F5F3F8F394C7
      9C4B964DBADEC088C79264AC6964AC695CAA6555A45A57825A046904CDDACDE2
      EEE3E2EEE3E0EEE0DFECDFDEEBDEDCEADB4B6B60358C4F1A45335F9B72AAD6B2
      81AA8DF9FBFAF8FAF8F6FAF6F6FAF594C79C499B54BADEC094C79C6DB67568B0
      6F64AC695CAA6557825A579A5E57825A046904CDDACDE2EEE3E2EEE3E0EEE0DF
      ECDFDEEBDE4B6B603997551A453366A077AAD6B281AA8DFAFDFAF9FBFAF8FAF8
      94C79C55A45AC4E5CA94C79C73BB7C73BB7C6DB67564AC6957825A68B06F6DB6
      7555A45A57825A046904CDDACDE2EEE3E2EEE3E0EEE0DFECDF5176663997551A
      453366A077BADEC081AA8DFAFDFAFAFDFA94C79C5CAA65C4E5CA88C7927CC185
      7CC18573BB7C68B06F57825A68B06F73BB7C73BB7C6DB67555A45A57825A0469
      04CDDACDE2EEE3E2EEE3E0EEE05176663997551A45336CA67CBADEC08AB795FB
      FEFB94C79C68B06FC4E5CA9DD0A788C7927CC1857CC18573BB7C619964A8C2A8
      6199646DB67573BB7C73BB7C6DB67555A45A57825A046904CDDACDE2EEE3E2EE
      E35176663F9E5A1A45336CA67CBADEC08AB795FDFEFD6DB675C4E5CA9DD0A788
      C79288C79288C79273BA83619964D8E7D8F3F8F3CDDACD6199646DB67573BB7C
      73BB7C6DB67555A45A57825A046904E4EFE4E2EEE35176663F9E5A1A45336CA6
      7CC4E5CA8AB795FEFFFE6DB6756DB67568B06F64AC6964AC69619964619964E3
      EBE3F5F9F5F3F8F3F3F8F3CDDACD619964619964619964558E6757825A57825A
      57825AE6F0E6E4EFE45176663F9E5A214F3971AA81C4E5CA8AB795FFFFFFFEFF
      FEFDFEFDFBFEFBFAFDFAFAFDFAF9FBFAF8FAF8F6FAF6F6FAF5F5F9F5F3F8F3F3
      F8F3F1F7F1EFF6EFEDF5EDEDF5EDEBF3EBEAF2E9E8F1E8E8F1E8E6F0E6517666
      45A35F214F3971AA81C4E5CA8AB795FFFFFFFFFFFFFEFFFEFDFEFDFBFEFBFAFD
      FAFAFDFAF9FBFAF8FAF8F6FAF6F6FAF5F5F9F5F3F8F3F3F8F3F1F7F1EFF6EFED
      F5EDEDF5EDEBF3EBEAF2E9E8F1E8E8F1E851766645A35F214F3971AA81CCE9D2
      8AB795FFFFFFFFFFFFFFFFFFFEFFFEFDFEFDFBFEFBFAFDFAFAFDFAF9FBFAF8FA
      F8F6FAF6F6FAF5F5F9F5F3F8F3F3F8F3F1F7F1EFF6EFEDF5EDEDF5EDEBF3EBEA
      F2E9E8F1E851766645A35F214F3976AF85CCE9D281AA8D8AB7958AB7958AB795
      8AB7958AB7958AB7958AB79581AA8D81AA8D81AA8D81AA8D81AA8D76A08676A0
      8676A08676A08676A08676A0866C977E6C977E6C977E6C977E6C977E45A35F21
      4F3976AF85CCE9D2CCE9D2CCE9D2C4E5CAC4E5CAC4E5CABADEC0BADEC0BADEC0
      AAD6B2AAD6B2AAD6B29DD0A79DD0A794C79C94C79C88C79281BC907CC18573BA
      8373BA8363B27663B27663B2765CAA655CAA65214F3976AF8576AF8576AF8571
      AA8171AA8171AA816CA67C6CA67C6CA67C66A07766A07766A0775F9B725F9B72
      5F9B7258966B558E67558E67558E674D87624D87624D876247815D47815D4781
      5D417B57417B57417B57}
    Gradient = True
    Anchors = [akLeft, akBottom]
    TabOrder = 3
    TabStop = True
    OnClick = Button4Click
  end
  object Button5: TxpBitBtn [5]
    Left = 23
    Top = 519
    Width = 100
    Height = 35
    startColor = 16645629
    EndColor = 14666957
    Caption = #1582#1585#1608#1580
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clNavy
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    Glyph.Data = {
      32040000424D3204000000000000360000002800000014000000110000000100
      180000000000FC030000000000000000000000000000000000001816136788FF
      0012D16F6CC6F7F1EC9997D90000B1262FBBCBC8DFFFF8CFFFE9C8FFEACCFFEB
      CCFFEBCBFFEBCBFFEBCBFFECCBFFECCCFFE7C4FFF6EB1D18117987FF0F57FF08
      37E4060084031FC60753FF002DE78370A4FFCA66FFB156FFB359FFB25AFFB159
      FFAF59FFAE59FFAC58FFAB59FFAC53FF9B0D282310C0B8E60017CE2565FF154B
      FC1852FF0B34DF4447BDD8D6EEFFFAFFFFEEFFFFEDFEFFEBFDFFE8FAFFE5F9FF
      E2F8FFDEF5FFD9EDFFF0FFFF9C13171309FFFFE88079BC1232D32B65FF1C54FE
      2733B8C3B9D3FFFFF6FFEAE8FFE7E6FFE4E3FFE1E0FFDDDCFFDCDBFFD8D6FFD5
      D3FFCFCAFFE6FFFFA015161109FFFFED7674CD2257E12355F11344EA1242E565
      65C7F1EDEDFFF4F0FFEAEBFFE8E8FFE6E6FFE3E3FFE0E0FFDCDCFFD9D9FFD2CF
      FFE8FFFF9F151B160CEFEDE32739D31952EF363DB66062C00434E6153BDAABA8
      D8FFFFF7FFECEDFFEBEBFFE8E8FFE5E5FFE1E1FFDDDDFFDADAFFD4D1FFEBFFFF
      9F141A150CF7F7E53C4ED7021BC3B1AAD7FFFCF76167D5031ED48E93DCFEFFFA
      FFF0F0FFEDEDFFEBEBFFE5E5FFE3E3FFDEDEFFDCDCFFD5D2FFEAFFFF9F141511
      0AFFFFE9D8D6F88B89D6F6F5FBFFFFFFF0EFF8A3A3DFD5D2EBFFFFFBFFF3F3FF
      F0F0FFEDEDFFE8E8FFE4E4FFE0E0FFDEDEFFD6D4FFECFFFFA01315100AFFFFEA
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEFFFAFAFFF4F4FFF2F2FFEF
      EFFFE9E9FFE5E5FFE1E1FFDFDFFFD8D5FFEEFFFFA01415100AFFFFEAFAFEFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEFEFFFBFBFFF5F5FFF3F3FFEFEFFFEBEB
      FFE7E7FFE3E3FFDEDEFFD8D5FFEEFFFFA01415100AFFFFEAFAFDFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFDFDFFF5F5FFF3F3FFF0F0FFECECFFE8E8FF
      E4E4FFDFDFFFD9D6FFEFFFFFA01415100AFFFFE9FAFDFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFDFDFFF4F4FFF3F2FFEFEFFFEAEAFFE6E6FFE2E2FFDD
      DDFFD7D5FFEEFFFFA01415100AFFFFF0FEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFDFFFFFAFDFFF5F9FFF1F5FFEDF1FFE7ECFFE3E4
      FFF8FFFFA11616120DFFFFD4D5D5D6DCD8D4DCD8D4DCD8D4DCD8D4DCD8D4DCD7
      D2DCD7D2DCD2CDDCD0CCDCCCC7DCC9C4DCC5C0DCC2BDDCBFBADCB8B1D9C8E0FA
      9E18141611FFE153F87600F77E00F77E00F77E00F77E00F77E00F77E00F77E00
      F78000F78000F78000F78100F78000F78100F78200F78200F78500FF93001413
      0DFFFEA7F1A159EFA35CF0A55DF0A55DF0A55DF0A55DF0A55DF0A55DF0A55DF0
      A55DF0A55DF0A55DF0A55DF0A55DF0A55EEFA661F29B3BFD9300131B21FFFCAE
      FE9809FEA31CFEA31DFEA31DFEA31DFEA31DFEA31DFEA31DFEA31DFEA31DFEA3
      1DFEA31DFEA31DFEA31DFEA31DFEA21AFE9B0BFED99E}
    Gradient = True
    Anchors = [akLeft, akBottom]
    TabOrder = 4
    TabStop = True
    OnClick = Button5Click
  end
  object Button6: TxpBitBtn [6]
    Left = 334
    Top = 519
    Width = 123
    Height = 35
    startColor = 16645629
    EndColor = 14666957
    Caption = #1575#1606#1578#1582#1575#1576' '#1587#1578#1608#1606' '#1607#1575
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clNavy
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    Glyph.Data = {
      36030000424D3603000000000000360000002800000010000000100000000100
      1800000000000003000000000000000000000000000000000000FFA016FC9D14
      FC9D14FFA118F89A10FFA118FA9B12FE9F15FE9F15FA9B11FFA117F89910FFA0
      16FC9C12FC9C12FF9E14FFF1FFE6D7E6E6D7E6FFF8FFC4B8C7FFF8FFD5C5D4F8
      E2F2F8E0EFD5BECEFFEDFCC4ADBCFFE4F4E6C3D2E6C0CFFFD6E5D8C5C5CFBEBE
      CFBEBEDAC7C7C6B5B5DAC8C8CBB8B8D5BFBFD5BCBCCBB1B1DABDBDC6AAAADAB7
      B7CFADADCFAAAAD8AEAEF8E6E6E3D3D2E5D5D1FFEEEACCBDB9FFEFEAD9C7C2F3
      DBD7F3DBD6D7BFBCFEDFDFC8ADADFDD8D8E1BDBDE1BABAF8CACAFAEBEADAD0D8
      C9C5E0E5DFFAB2AFC6E7DEF9BEB8D0D9CEE8D6CBE7C6B5C5FFE3E0C8AFAFFDD9
      D9E1C0C0E1BDBDF8CCCCE0D3CB8D9CE41754FF265FFF134AFF2E68FF164DFF2A
      63FF1654FF4E6AEDE8CDBFC6AFAFDABDBDCFB2B2CFAEAED8B2B2FFFFFEB5C1FF
      5E98FF8EC6FF3B6BFF9CD7FF4C7EFF86BFFF6FAAFF6D83FAFFFFF2C9B3B3FFEE
      EEECCBCBECC6C6FFDEDED0C9C08899DB1449FF194CFF4D7AFF3768FF3F6EFF43
      73FF2457FF5B74E4D6BFB2C5B0B0C9B0B0C7ACACC7A9A9C8A7A7FFFFFFAFC2FF
      5B94FF8DC5FF3061FF93CCFF4374FF7CB4FF67A1FF6A82FAFFFFF4C9B6B6FFEE
      EEEBCCCCEBC7C7FFDFDFEEEAE2A2B4F1457FFF5791FF3A6CFF5F99FF3D71FF5B
      94FF3E7BFF5C77F2F8DFD2C7B3B3EBCECED8BBBBD8B7B7E7C1C1EAE7E4C7CEE0
      A2B4F1AEC0FF9AABDDB2C1FF9CAAE2AEB9F3A1ABF2A7A7D1F1DAD5C7B3B3EBCE
      CED8BBBBD8B7B7E7C1C1FFFFFFECEEEFF0F0EDFFFFFFCECDCAFFFFFFDFD8D4FF
      F8F5FFF4F0DDCECDFFFAFEC7B6B9FFEFF2E9CCD0E9C8CBFFDFE3CFC1B0D2C5B0
      D2C6B1CFC3AFD5C9B5CFC0ACD4C3AFD1BDA9D1BBA7D4BBA7CFB5A0D5B7A3CFB0
      9CD2AF9BD2AD99CFA793FFB044FA8200FA8600FA8600FA8600FA8700FA8700FA
      8700FA8700FA8800FA8800FA8800FA8900FA8900FA8900FF9000FDD0A8F5B268
      F5B46EF5B46EF5B46EF5B46EF5B46EF5B46EF5B46EF5B46EF5B46EF5B46EF5B4
      6EF5B46EF5B674FAA533FF9E10FFA116FFA116FFA116FFA116FFA116FFA116FF
      A116FFA116FFA116FFA116FFA116FFA116FFA116FFA218FF9C0A}
    ImageIndex = 2
    Gradient = True
    Anchors = [akLeft, akBottom]
    TabOrder = 5
    TabStop = True
    OnClick = Button6Click
  end
  object Panel3: TPanel [7]
    Left = 0
    Top = 100
    Width = 784
    Height = 405
    Align = alTop
    Caption = 'Panel3'
    TabOrder = 6
    object YDBGrid1: TYDBGrid
      Left = 1
      Top = 1
      Width = 782
      Height = 144
      Cursor = crHandPoint
      Align = alTop
      Color = 16770790
      DataSource = DGet_ApplicantExamInfo_ByDate
      ReadOnly = True
      TabOrder = 0
      TitleFont.Charset = ARABIC_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'Tahoma'
      TitleFont.Style = []
      YeganehColor = True
      YeganehFinish = False
      PageNumber = False
      RecordNumber = False
      HasTime = False
      Oriention = poLandscape
      HasDate = False
      HasIndex = False
      PrintTitle = #1604#1610#1587#1578' '#1578#1607#1610#1607' '#1588#1583#1607' '#1578#1608#1587#1591' '#1606#1585#1605' '#1575#1601#1586#1575#1585' '#1610#1711#1575#1606#1607
      InvertFarsiDate = True
      TitleSort = True
      AutoInsert = False
      FooterFields = 'Count'
      Columns = <
        item
          Expanded = False
          FieldName = 'ExamTitle'
          Title.Caption = #1593#1606#1608#1575#1606' '#1570#1586#1605#1608#1606
          Width = 133
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'ExamDate'
          Title.Caption = #1578#1575#1585#1610#1582' '#1570#1586#1605#1608#1606
          Width = 65
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'Difficulty'
          Title.Caption = #1583#1588#1608#1575#1585#1610' '#1705#1604
          Visible = False
        end
        item
          Expanded = False
          FieldName = 'Discrimination'
          Title.Caption = #1575#1601#1578#1585#1575#1602' '#1705#1604
          Visible = False
        end
        item
          Expanded = False
          FieldName = 'ExamTypeTitle'
          Title.Caption = #1606#1608#1593' '#1570#1586#1605#1608#1606
          Visible = False
        end
        item
          Expanded = False
          FieldName = 'CorrectItemPoint'
          Title.Caption = #1575#1605#1578#1610#1575#1586' '#1662#1575#1587#1582' '#1583#1585#1587#1578
          Visible = False
        end
        item
          Expanded = False
          FieldName = 'ExamVariance'
          Title.Caption = #1608#1575#1585#1610#1575#1606#1587
          Visible = False
        end
        item
          Expanded = False
          FieldName = 'Number_of_Question'
          Title.Caption = #1578#1593#1583#1575#1583' '#1587#1574#1608#1575#1604
          Width = 60
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'Number_of_Items'
          Title.Caption = #1578#1593#1583#1575#1583' '#1711#1586#1610#1606#1607
          Visible = False
        end
        item
          Expanded = False
          FieldName = 'number_of_applicant'
          Title.Caption = #1578#1593#1583#1575#1583' '#1583#1575#1608#1591#1604#1576
          Width = 69
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'WrongItemPoint'
          Title.Caption = #1575#1605#1578#1610#1575#1586' '#1662#1575#1587#1582' '#1606#1575#1583#1585#1587#1578
          Visible = False
        end
        item
          Expanded = False
          FieldName = 'BlankItemPoint'
          Title.Caption = #1575#1605#1578#1610#1575#1586' '#1576#1583#1608#1606' '#1662#1575#1587#1582
          Visible = False
        end
        item
          Expanded = False
          FieldName = 'StandardError'
          Title.Caption = #1582#1591#1575#1610' '#1575#1587#1578#1575#1606#1583#1575#1585#1583
          Visible = False
        end
        item
          Expanded = False
          FieldName = 'RPBIS'
          Title.Caption = 'RPBIS '#1705#1604
          Visible = False
        end
        item
          Expanded = False
          FieldName = 'NumberOf_1item_Question'
          Title.Caption = ' 1 '#1711#1586#1610#1606#1607' '#1575#1610' - '#1705#1604
          Visible = False
        end
        item
          Expanded = False
          FieldName = 'NumberOf_2item_Question'
          Title.Caption = ' 2 '#1711#1586#1610#1606#1607' '#1575#1610' - '#1705#1604
          Visible = False
        end
        item
          Expanded = False
          FieldName = 'NumberOf_3item_Question'
          Title.Caption = ' 3 '#1711#1586#1610#1606#1607' '#1575#1610'_'#1705#1604
          Visible = False
        end
        item
          Expanded = False
          FieldName = 'NumberOf_4item_Question'
          Title.Caption = ' '#1670#1607#1575#1585' '#1711#1586#1610#1606#1607' '#1575#1610'-'#1705#1604
          Visible = False
        end
        item
          Expanded = False
          FieldName = 'MinPassedMark'
          Title.Caption = #1705#1605#1578#1585#1610#1606' '#1606#1605#1585#1607' '#1602#1576#1608#1604#1610
          Visible = False
        end
        item
          Expanded = False
          FieldName = 'Alpha'
          Title.Caption = 'alpha'
          Visible = False
        end
        item
          Expanded = False
          FieldName = 'TermCode'
          Title.Caption = #1578#1585#1605' '#1570#1586#1605#1608#1606
          Visible = False
        end
        item
          Expanded = False
          FieldName = 'Teacher_Difficulty'
          Title.Caption = #1583#1588#1608#1575#1585#1610
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'Teacher_Discrimination'
          Title.Caption = #1575#1601#1578#1585#1575#1602
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'Teacher_NumberOf_1item_Question'
          Title.Caption = #1578#1593#1583#1575#1583' '#1610#1705' '#1711#1586#1610#1606#1607' '#1575#1610
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'Teacher_NumberOf_2item_Question'
          Title.Caption = #1578#1593#1583#1575#1583' '#1583#1608' '#1711#1586#1610#1606#1607' '#1575#1610
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'Teacher_NumberOf_3item_Question'
          Title.Caption = #1578#1593#1583#1575#1583' 3  '#1711#1586#1610#1606#1607' '#1575#1610
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'Teacher_NumberOf_4item_Question'
          Title.Caption = #1578#1593#1583#1575#1583' 4 '#1711#1586#1610#1606#1607' '#1575#1610
          Visible = True
        end
        item
          Alignment = taLeftJustify
          Expanded = False
          FieldName = 'Teacher_RPBIS'
          Title.Caption = 'RPBIS'
          Visible = True
        end>
    end
    object QuestionGrid: TYDBGrid
      Left = 1
      Top = 145
      Width = 782
      Height = 308
      Cursor = crHandPoint
      Align = alTop
      Anchors = [akLeft, akTop, akRight, akBottom]
      Color = 16770790
      DataSource = DSelect_Question_By_ExamID_TeacherID
      Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit]
      ReadOnly = True
      TabOrder = 1
      TitleFont.Charset = ARABIC_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'Tahoma'
      TitleFont.Style = []
      YeganehColor = True
      YeganehFinish = False
      PageNumber = False
      RecordNumber = False
      HasTime = False
      Oriention = poPortrait
      HasDate = False
      HasIndex = False
      PrintTitle = #1604#1610#1587#1578' '#1578#1607#1610#1607' '#1588#1583#1607' '#1578#1608#1587#1591' '#1606#1585#1605' '#1575#1601#1586#1575#1585' '#1610#1711#1575#1606#1607
      InvertFarsiDate = True
      TitleSort = True
      AutoInsert = False
      FooterFields = 'Count'
      Columns = <
        item
          Expanded = False
          FieldName = 'Number'
          Title.Caption = #1588#1605#1575#1585#1607
          Width = 38
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'questionActivityTitle'
          Title.Caption = #1608#1590#1593#1610#1578' '#1578#1575#1579#1610#1585
          Visible = False
        end
        item
          Expanded = False
          FieldName = 'CorrectItemNumer2'
          Title.Caption = #1705#1604#1610#1583'2'
          Visible = False
        end
        item
          Expanded = False
          FieldName = 'All_Count'
          Title.Caption = #1578#1593#1583#1575#1583' '#1583#1575#1608#1591#1604#1576
          Visible = False
        end
        item
          Expanded = False
          FieldName = 'Answerd'
          Title.Caption = #1578#1593#1583#1575#1583' '#1662#1575#1587#1582
          Visible = False
        end
        item
          Expanded = False
          FieldName = 'Correct'
          Title.Caption = #1578#1593#1583#1575#1583' '#1662#1575#1587#1582' '#1583#1585#1587#1578
          Visible = False
        end
        item
          Expanded = False
          FieldName = 'Wrong'
          Title.Caption = #1578#1593#1583#1575#1583' '#1662#1575#1587#1582' '#1606#1575#1583#1585#1587#1578
          Visible = False
        end
        item
          Expanded = False
          FieldName = 'Difficulty'
          Title.Caption = #1590#1585#1610#1576' '#1583#1588#1608#1575#1585#1610
          Width = 84
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'DifficultyTitle'
          Title.Caption = #1583#1585#1580#1607' '#1583#1588#1608#1575#1585#1610
          Width = 90
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'Discrimination'
          Title.Caption = #1590#1585#1610#1576' '#1575#1601#1578#1585#1575#1602
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'DiscriminationTitle'
          Title.Caption = #1602#1583#1585#1578' '#1575#1601#1578#1585#1575#1602
          Width = 70
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'RPBIS'
          Visible = False
        end
        item
          Expanded = False
          FieldName = 'number_Of_Item'
          Title.Caption = #1578#1593#1583#1575#1583' '#1711#1586#1610#1606#1607
          Visible = False
        end
        item
          Expanded = False
          FieldName = 'G1_0'
          Title.Caption = #1578#1593#1583#1575#1583' '#1576#1583#1608#1606' '#1662#1575#1587#1582' '#1583#1585' '#1711#1585#1608#1607' '#1590#1593#1610#1601
          Visible = False
        end
        item
          Expanded = False
          FieldName = 'CorrectItemNumer'
          Title.Caption = #1705#1604#1610#1583
          Width = 62
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'G1_1'
          Title.Caption = #1578#1593#1583#1575#1583' '#1575#1606#1578#1582#1575#1576' '#1583#1585' '#1711#1586#1610#1606#1607' 1 '#1583#1585' '#1711#1585#1608#1607' '#1590#1593#1610#1601
          Visible = False
        end
        item
          Expanded = False
          FieldName = 'G1_2'
          Title.Caption = #1578#1593#1583#1575#1583' '#1575#1606#1578#1582#1575#1576' '#1583#1585' '#1711#1586#1610#1606#1607' 2 '#1583#1585' '#1711#1585#1608#1607' '#1590#1593#1610#1601
          Visible = False
        end
        item
          Expanded = False
          FieldName = 'G1_3'
          Title.Caption = #1578#1593#1583#1575#1583' '#1575#1606#1578#1582#1575#1576' '#1583#1585' '#1711#1586#1610#1606#1607' 3 '#1583#1585' '#1711#1585#1608#1607' '#1590#1593#1610#1601
          Visible = False
        end
        item
          Expanded = False
          FieldName = 'G1_4'
          Title.Caption = #1578#1593#1583#1575#1583' '#1575#1606#1578#1582#1575#1576' '#1583#1585' '#1711#1586#1610#1606#1607' 4 '#1583#1585' '#1711#1585#1608#1607' '#1590#1593#1610#1601
          Visible = False
        end
        item
          Expanded = False
          FieldName = 'G3_0'
          Title.Caption = #1578#1593#1583#1575#1583' '#1576#1583#1608#1606' '#1662#1575#1587#1582' '#1583#1585' '#1711#1585#1608#1607' '#1602#1608#1610
          Visible = False
        end
        item
          Expanded = False
          FieldName = 'G3_1'
          Title.Caption = #1578#1593#1583#1575#1583' '#1575#1606#1578#1582#1575#1576' '#1583#1585' '#1711#1586#1610#1606#1607' 1 '#1583#1585' '#1711#1585#1608#1607' '#1602#1608#1610
          Visible = False
        end
        item
          Expanded = False
          FieldName = 'G3_2'
          Title.Caption = #1578#1593#1583#1575#1583' '#1575#1606#1578#1582#1575#1576' '#1583#1585' '#1711#1586#1610#1606#1607' 2 '#1583#1585' '#1711#1585#1608#1607' '#1602#1608#1610
          Visible = False
        end
        item
          Expanded = False
          FieldName = 'G3_3'
          Title.Caption = #1578#1593#1583#1575#1583' '#1575#1606#1578#1582#1575#1576' '#1583#1585' '#1711#1586#1610#1606#1607' 3 '#1583#1585' '#1711#1585#1608#1607' '#1602#1608#1610
          Visible = False
        end
        item
          Expanded = False
          FieldName = 'G3_4'
          Title.Caption = #1578#1593#1583#1575#1583' '#1575#1606#1578#1582#1575#1576' '#1583#1585' '#1711#1586#1610#1606#1607' 4 '#1583#1585' '#1711#1585#1608#1607' '#1602#1608#1610
          Visible = False
        end
        item
          Expanded = False
          FieldName = 'all0'
          Title.Caption = '0'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'all1'
          Title.Caption = '1'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'all2'
          Title.Caption = '2'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'all3'
          Title.Caption = '3'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'all4'
          Title.Caption = '4'
          Visible = True
        end>
    end
  end
  inherited ActionList: TActionList
    Left = 559
    Top = 280
  end
  inherited xpWindow1: TxpWindow
    Left = 680
    Top = 288
  end
  object Get_TeacherExamInfo_ByDate: TADOStoredProc
    Connection = Dm.YeganehConnection
    CursorType = ctStatic
    AfterScroll = Get_TeacherExamInfo_ByDateAfterScroll
    ProcedureName = 'Get_TeacherExamInfo_ByDate'
    Parameters = <
      item
        Name = '@RETURN_VALUE'
        DataType = ftInteger
        Direction = pdReturnValue
        Precision = 10
        Value = 0
      end
      item
        Name = '@TeacherID'
        Attributes = [paNullable]
        DataType = ftInteger
        Precision = 10
        Value = Null
      end
      item
        Name = '@BeginExamDate'
        Attributes = [paNullable]
        DataType = ftString
        Size = 10
        Value = Null
      end
      item
        Name = '@EndExamDate'
        Attributes = [paNullable]
        DataType = ftString
        Size = 10
        Value = Null
      end
      item
        Name = '@examID'
        Attributes = [paNullable]
        DataType = ftInteger
        Precision = 10
        Value = Null
      end>
    Left = 304
    Top = 288
    object Get_TeacherExamInfo_ByDateDifficulty: TFloatField
      FieldName = 'Difficulty'
    end
    object Get_TeacherExamInfo_ByDateDiscrimination: TFloatField
      FieldName = 'Discrimination'
    end
    object Get_TeacherExamInfo_ByDateStandardError: TFloatField
      FieldName = 'StandardError'
    end
    object Get_TeacherExamInfo_ByDateAlpha: TFloatField
      FieldName = 'Alpha'
    end
    object Get_TeacherExamInfo_ByDateExamVariance: TFloatField
      FieldName = 'ExamVariance'
    end
    object Get_TeacherExamInfo_ByDateNumberOf_1item_Question: TSmallintField
      FieldName = 'NumberOf_1item_Question'
    end
    object Get_TeacherExamInfo_ByDateNumberOf_2item_Question: TSmallintField
      FieldName = 'NumberOf_2item_Question'
    end
    object Get_TeacherExamInfo_ByDateNumberOf_3item_Question: TSmallintField
      FieldName = 'NumberOf_3item_Question'
    end
    object Get_TeacherExamInfo_ByDateNumberOf_4item_Question: TSmallintField
      FieldName = 'NumberOf_4item_Question'
    end
    object Get_TeacherExamInfo_ByDateNumberOf_5item_Question: TSmallintField
      FieldName = 'NumberOf_5item_Question'
    end
    object Get_TeacherExamInfo_ByDateRPBIS: TFloatField
      FieldName = 'RPBIS'
    end
    object Get_TeacherExamInfo_ByDateTermCode: TStringField
      FieldName = 'TermCode'
      FixedChar = True
      Size = 3
    end
    object Get_TeacherExamInfo_ByDateExamTitle: TWideStringField
      FieldName = 'ExamTitle'
      Size = 50
    end
    object Get_TeacherExamInfo_ByDateExamDate: TStringField
      FieldName = 'ExamDate'
      FixedChar = True
      Size = 10
    end
    object Get_TeacherExamInfo_ByDateCorrectItemPoint: TFloatField
      FieldName = 'CorrectItemPoint'
    end
    object Get_TeacherExamInfo_ByDateWrongItemPoint: TFloatField
      FieldName = 'WrongItemPoint'
    end
    object Get_TeacherExamInfo_ByDateBlankItemPoint: TFloatField
      FieldName = 'BlankItemPoint'
    end
    object Get_TeacherExamInfo_ByDateMinPassedMark: TFloatField
      FieldName = 'MinPassedMark'
    end
    object Get_TeacherExamInfo_ByDateExamTypeTitle: TWideStringField
      FieldName = 'ExamTypeTitle'
      Size = 50
    end
    object Get_TeacherExamInfo_ByDateNumber_of_Question: TIntegerField
      FieldName = 'Number_of_Question'
    end
    object Get_TeacherExamInfo_ByDateNumber_of_Items: TWordField
      FieldName = 'Number_of_Items'
    end
    object Get_TeacherExamInfo_ByDatenumber_of_applicant: TIntegerField
      FieldName = 'number_of_applicant'
    end
    object Get_TeacherExamInfo_ByDateExamID: TAutoIncField
      FieldName = 'ExamID'
      ReadOnly = True
    end
    object Get_TeacherExamInfo_ByDateMainCourseID: TSmallintField
      FieldName = 'MainCourseID'
    end
    object Get_TeacherExamInfo_ByDateMainDesignerTeacherID: TSmallintField
      FieldName = 'MainDesignerTeacherID'
    end
    object Get_TeacherExamInfo_ByDateExamTypeID: TWordField
      FieldName = 'ExamTypeID'
    end
    object Get_TeacherExamInfo_ByDateTexFormatID: TIntegerField
      FieldName = 'TexFormatID'
    end
    object Get_TeacherExamInfo_ByDateAnswerKey: TStringField
      FieldName = 'AnswerKey'
      Size = 1000
    end
    object Get_TeacherExamInfo_ByDateTeacher_NumberOf_1item_Question: TIntegerField
      FieldName = 'Teacher_NumberOf_1item_Question'
      ReadOnly = True
    end
    object Get_TeacherExamInfo_ByDateTeacher_NumberOf_2item_Question: TIntegerField
      FieldName = 'Teacher_NumberOf_2item_Question'
      ReadOnly = True
    end
    object Get_TeacherExamInfo_ByDateTeacher_NumberOf_3item_Question: TIntegerField
      FieldName = 'Teacher_NumberOf_3item_Question'
      ReadOnly = True
    end
    object Get_TeacherExamInfo_ByDateTeacher_NumberOf_4item_Question: TIntegerField
      FieldName = 'Teacher_NumberOf_4item_Question'
      ReadOnly = True
    end
    object Get_TeacherExamInfo_ByDateTeacher_NumberOf_5item_Question: TIntegerField
      FieldName = 'Teacher_NumberOf_5item_Question'
      ReadOnly = True
    end
    object Get_TeacherExamInfo_ByDateTeacher_Difficulty: TFloatField
      FieldName = 'Teacher_Difficulty'
      ReadOnly = True
    end
    object Get_TeacherExamInfo_ByDateTeacher_Discrimination: TFloatField
      FieldName = 'Teacher_Discrimination'
      ReadOnly = True
    end
    object Get_TeacherExamInfo_ByDateTeacher_RPBIS: TFloatField
      FieldName = 'Teacher_RPBIS'
      ReadOnly = True
    end
    object Get_TeacherExamInfo_ByDateKR20: TFloatField
      FieldName = 'KR20'
    end
    object Get_TeacherExamInfo_ByDateTeacher_Count: TIntegerField
      FieldName = 'Teacher_Count'
      ReadOnly = True
    end
  end
  object DGet_ApplicantExamInfo_ByDate: TDataSource
    DataSet = Get_TeacherExamInfo_ByDate
    Left = 616
    Top = 144
  end
  object Select_Question_By_ExamID_TeacherID: TADOStoredProc
    Connection = Dm.YeganehConnection
    CursorType = ctStatic
    ProcedureName = 'Select_Question_By_ExamID_TeacherID'
    Parameters = <
      item
        Name = '@RETURN_VALUE'
        DataType = ftInteger
        Direction = pdReturnValue
        Precision = 10
        Value = 0
      end
      item
        Name = '@TeacherID'
        Attributes = [paNullable]
        DataType = ftSmallint
        Precision = 5
        Value = Null
      end
      item
        Name = '@ExamID'
        Attributes = [paNullable]
        DataType = ftInteger
        Precision = 10
        Value = Null
      end>
    Left = 224
    Top = 136
  end
  object DSelect_Question_By_ExamID_TeacherID: TDataSource
    DataSet = Select_Question_By_ExamID_TeacherID
    Left = 360
    Top = 208
  end
end
