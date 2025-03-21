inherited FrInsertParaphTemplate: TFrInsertParaphTemplate
  Tag = 17
  Left = 547
  Top = 234
  BorderIcons = []
  BorderStyle = bsDialog
  Caption = #1602#1575#1604#1576' '#1607#1575#1610' '#1575#1586' '#1662#1610#1588' '#1578#1593#1585#1610#1601' '#1588#1583#1607' '#1576#1585#1575#1610' '#1575#1585#1580#1575#1593
  ClientHeight = 373
  ClientWidth = 601
  Constraints.MinHeight = 300
  Constraints.MinWidth = 450
  OldCreateOrder = True
  PixelsPerInch = 96
  TextHeight = 13
  object Label2: TLabel [0]
    Left = 50
    Top = 8
    Width = 3
    Height = 13
  end
  object BitBtn1: TBitBtn [1]
    Left = 7
    Top = 344
    Width = 75
    Height = 25
    Cursor = crHandPoint
    Anchors = [akLeft, akBottom]
    Cancel = True
    Caption = #1582#1585#1608#1580
    Default = True
    Font.Charset = ARABIC_CHARSET
    Font.Color = clNavy
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    ModalResult = 2
    ParentFont = False
    TabOrder = 0
    OnClick = BitBtn1Click
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
  object Panel2: TPanel [2]
    Left = 0
    Top = 0
    Width = 601
    Height = 337
    Align = alTop
    Anchors = [akLeft, akTop, akRight, akBottom]
    Caption = 'Panel2'
    TabOrder = 1
    DesignSize = (
      601
      337)
    object Label1: TLabel
      Left = 363
      Top = 8
      Width = 42
      Height = 13
      Anchors = [akTop, akRight]
      Caption = #1605#1578#1606' '#1602#1575#1604#1576
    end
    object DBMemo1: TDBMemo
      Left = 8
      Top = 24
      Width = 399
      Height = 277
      Anchors = [akLeft, akTop, akRight, akBottom]
      DataField = 'Paraph'
      DataSource = Dm.DSELECT_ParaphTemplate
      ReadOnly = True
      TabOrder = 0
    end
    object SpeedButton1: TBitBtn
      Left = 180
      Top = 308
      Width = 75
      Height = 25
      Cursor = crHandPoint
      Anchors = [akRight, akBottom]
      Caption = #1581#1584#1601
      Font.Charset = ARABIC_CHARSET
      Font.Color = clNavy
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 1
      OnClick = SpeedButton1Click
      Glyph.Data = {
        AA030000424DAA03000000000000360000002800000011000000110000000100
        1800000000007403000000000000000000000000000000000000FFFFFF7270C9
        0B0A9D5251B3DDDCEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFA4A3DE7373
        C3F1EFF8FFFFFFFFFFFFFFFFFF00BDBCE4000AC21F63FF0B3CF30004AB908ED8
        FFFEFEFFFFFFFFFFFFFFFFFFA29FDD0001B70026EC0002AC5153C6E2E1F6FFFF
        FF00484BB51247FD1E51FF1C50FF1C59FF000EC26F70D0F4F2F8FFFFFF9D9CDA
        0513BA104BFF0F46FF0A47FF001BDE5052C4FAF9FB006969C01033D82156FF1D
        4EFF1D4FFF1F59FF0827D36265C7928ECC1729C30F46FE1346FF1042FF0D3FFF
        0C47FF000DCBB0B0DE00EEEBF4000CA9275FFF2051FF1F50FF1F50FF1E54FF12
        34D70E23C01346F6184CFF1445FF1344FF1041FF1048FF0024EB5C5DBD00E1DF
        F20000B42A66FF2558FF2153FF2051FF2052FF1E50FD1C4DFC1C4FFF184AFF16
        48FF1445FF144BFF0029E42532C3C4C3E500F9F9FD6B6CCB0318BE194FF6275E
        FF2557FF2252FF2053FF2051FF1D4EFF1A4CFF184BFF144DFF0022E13D40BED2
        D0EDFFFFFF00FFFFFFFDFCFCCECDEA7378D2263DCE214EF02658FF2354FF2153
        FF1F51FF1D50FF1848FA2136C69897D8F1F0F8FFFFFFFFFFFF00FFFFFFFFFFFF
        FFFFFFFFFFFF9089C81C3DE02C5EFF2657FF2555FF2354FF1F50FF1B51FC2425
        A9EEEBF5FFFFFFFFFFFFFFFFFF00FFFFFFFFFFFFFFFFFFFBFAFE2727B12F66FF
        2C5BFF295AFF285AFF2557FF2252FF2056FF1140F1514EB7FEFDFEFFFFFFFFFF
        FF00FFFFFFFFFFFFFFFFFF9E99D4294ADF3165FF2E5EFF2D5FFF2452F32253F8
        2557FF2151FF1C53FF1331D89896D5FFFFFFFFFFFF00FFFFFFFFFFFFFFFFFF58
        57BE2858ED3466FF3162FF2A5CFA232EBC1B2BC22358FF2354FF1F53FF1344F4
        2B39C7D7D4EEFFFFFF00FFFFFFFFFFFFCFCDE93D50D43263F93565FF3165FF21
        41D88986CE9792D01529C7255DFF2052FF1F54FF052CE06264C6FFFFFF00FFFF
        FFFFFFFF9897D4284BDD3C6FFF3768FF2C5DF64447BBF5F3F9FFFFFF8E89CE03
        1CC72760FF1E50FF1B51FF051EC5BBBAE000FFFFFFFFFFFF8D8BCE1834D1437B
        FF4179FF1D32CBB0ACDDFFFFFFFFFFFFFFFFFF6B69C90020D02460FF205BFF0B
        44FF282BAA00FFFFFFFFFFFFF1F0F97274CF010CAE1337DC4745B7FFFFFFFFFF
        FFFFFFFFFFFFFFF8F7FC474BC60026DB0016CA1B24B7A1A1DB00FFFFFFFFFFFF
        FFFFFFFFFFFFF5F4FA7877C6E3E2F6FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE6E5
        F55F5EC0B3B2DEFEFDFCFFFFFF00}
    end
    object SpeedButton2: TBitBtn
      Left = 332
      Top = 308
      Width = 75
      Height = 25
      Cursor = crHandPoint
      Anchors = [akRight, akBottom]
      Caption = #1583#1585#1580
      Font.Charset = ARABIC_CHARSET
      Font.Color = clNavy
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 2
      OnClick = SpeedButton2Click
      Glyph.Data = {
        76050000424D7605000000000000360000002800000015000000150000000100
        1800000000004005000000000000000000000000000000000000FFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFC7E4C80085000A91160A8D130A8E13088C120A8C
        12007C00C6E3C6FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00FFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFC8E4C821AF3D4ADD813CD16E3DD2703DCF6D3DD2
        71099D25C6E2C7FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00FFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFC7E3C727B13E51E0813AD26A3CD36C3DD16B3CD2
        6D089D23C6E1C6FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00FFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFC7E3C829B13F53E2823BD46C3ED56E3DD16C3CD3
        6E079D23C6E1C6FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00FFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFC6E4C72BB44155E3843CD36C3ED46E3DD36D3ED3
        70099F24C5E2C7FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00FFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFCDE6CE31B6465DE68B3FD57041D77140D67040D6
        720BA026CDE5CDFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00E2F2E2C2E4C5
        C6E4C7C6E5C8C6E4C8CBE6CD99CE9B2CB74559E68941D97242D97341D87242D7
        7310A02998C997CAE2CAC4DFC4C5DFC4C4DFC4C5DFC4C5E0C60078C67E27BB43
        12AE3114AF3214AE3212AD3119AE3439CC6248E07B45DB7544DC7644D97341D8
        742EBA500F9C26089A2108981F06971F05961F079720007100008BD1918DFFB0
        5AEA8957EA8757E98855E88653E68450E2814CE07B46DD7846DD7845DC7643DA
        7442DA7543DA7640D7723FD5713ED36F3DD36E3ED37108820E0089D1908DFBAC
        63EB8D5EEA895EE98B5CE88857E78555E58353E3804EE17C4EE17C46DE7845DB
        7543DA7441D8723FD56F3DD46D3DD16B3BD16B3BCF6C06830D008BD19191FDAF
        69EE9263EC8F64ED8D60EC8B5DE98959E78855E68352E28052E3804EE27C46DD
        7744DC7542DA7440D6703ED46E3ED46E3CD26C3CD06D07840E008BD19191FDAF
        6BEE9365ED9065ED8E62EC8C5EEA8A5AE88855E68452E28152E3804EE27C46DE
        7845DB7642D9733FD66F3CD46D3CD36C3AD26B3BCF6C07840E008CD394A6FFC2
        8FFCAE8DFCAE8CFBAD8AFAAB87F9A97EF4A163EB8D55E58455E68453E3814BE0
        7C4BE17E60E88E60E78C59E58656E28454E1834CDE7F0887120079CA8141C754
        42C55441C45442C45440C25344C25578E18B7DF4A05AE88759E88855E6834FE3
        7F38CB602FB64632B5462DB2412AB04028B03F22AF3D007C0000E1F3E3C2E6C5
        C6E7C8C5E6C8C6E6C8CBE8CD96D19A43C15386F8A95EE98A5EE98A57E78552E5
        8213A72D97CB98CCE6CDC6E2C6C6E2C7C6E2C6C7E3C8C6E2C700FFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFCBE8CC40C25189FBAB61EC8C60EC8B5CE98853E6
        850DA62ACAE5CAFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00FFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFC5E6C742C2528CFBAE65ED8F64ED8E5FE98C54E7
        860FA729C5E2C5FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00FFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFC5E6C741C3528CFCAD65EC8F64EC905DEA8955E7
        8510A82AC6E2C6FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00FFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFC5E6C740C3538FFBAF6CEE936BEE9365EC8E58E8
        870EA829C5E3C6FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00FFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFC2E5C440C555A6FFC292FDB093FCB08FFCAD8DFE
        B021B43BC0E2C2FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00FFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFE1F3E379CB818CD3948BD1928BD1938BD0918DD2
        9377C67FE1F1E3FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00}
    end
    object Button1: TBitBtn
      Left = 256
      Top = 308
      Width = 75
      Height = 25
      Cursor = crHandPoint
      Anchors = [akRight, akBottom]
      Caption = #1608#1610#1585#1575#1610#1588' '
      Font.Charset = ARABIC_CHARSET
      Font.Color = clNavy
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 3
      OnClick = Button1Click
      Glyph.Data = {
        36030000424D3603000000000000360000002800000010000000100000000100
        1800000000000003000000000000000000000000000000000000FFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFCCDCE83F7AA1055A8C12609097AFC4FFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFD0DBE7498CB600
        5C980069A3007BB10085BC006BA2729CBAFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFF6F7FB77A6C82298C35BDBED5BDBEF49CAE437B8D824ADD312ABD7007C
        AEA8C2D8FFFFFFFFFFFFFFFFFFFEFFFF9EC9E02D9DC64DD1E784F9FF61DDED7F
        CDD74CBDCF3BCAE441CDEA3AC0DE2FC4E6077EB1C0D5E4FFFFFFE8F4FA3D8FB8
        51C4DC86F9FE88F4F960E3F190CFD9FFEFEBD1D3D285AEB7289CB71CBEE526B9
        E018AFD8228CBAEDF2F6188DBB005E9B85F1F87EEDF565E5F38ED4DDFFF9F7FD
        FDFDFCFAF9F9F0EEEFDDDA849CA12F9BB619B2DC0085B74595BA1396C3006FAC
        74E5F266E6F387DAE3FFF7F5FFFFFFFFFFFFD4D4D3CDCECEF4F3F1FFEEE77B9C
        A30EA2CE007DB1007EB3CBEEF80396CE56D9EA97E3E8FFF6F3FFFFFFFFFFFF8E
        8E8C8B7D92FFF1FFFFF1F2479EB310B2DC0088BC0089C490D3EBFFFFFFFFFFFF
        76CDF03CC6E75FCBDCBBDFE3F2FDF9C4C8E120954B00800010887F23BDFA37B4
        DA93DEF8FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFC2E9F95BCAEB0091C1188EBD37
        9CB146F2635FF18A158E1E7BBBB9FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFAADDF13CB7E550BCF661E37260FF974FDD75319835D0E3
        CEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFE6F9ED57E38165FF993ED56420912EECEDEBFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFC5F3D346ED7962E18B8794
        7B9A9687FAFBFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFA9ECBFD2CBCACCD1FC0E2AD2585CC9FFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFCBC5E83B6B
        FC1F44DD3235B4F3F3FCFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFF4F6FE6875D83A3FB8D0CFEEFFFFFF}
    end
    object Panel1: TPanel
      Left = 415
      Top = 1
      Width = 185
      Height = 335
      Align = alRight
      Caption = 'Panel1'
      TabOrder = 4
      DesignSize = (
        185
        335)
      object SpeedButton3: TSpeedButton
        Left = 105
        Top = 310
        Width = 23
        Height = 22
        Anchors = [akLeft, akBottom]
        Glyph.Data = {
          76010000424D7601000000000000760000002800000020000000100000000100
          04000000000000010000120B0000120B00001000000000000000000000000000
          800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
          FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333000333
          3333333333777F33333333333309033333333333337F7F333333333333090333
          33333333337F7F33333333333309033333333333337F7F333333333333090333
          33333333337F7F33333333333309033333333333FF7F7FFFF333333000090000
          3333333777737777F333333099999990333333373F3333373333333309999903
          333333337F33337F33333333099999033333333373F333733333333330999033
          3333333337F337F3333333333099903333333333373F37333333333333090333
          33333333337F7F33333333333309033333333333337373333333333333303333
          333333333337F333333333333330333333333333333733333333}
        NumGlyphs = 2
        OnClick = SpeedButton3Click
      end
      object SpeedButton4: TSpeedButton
        Left = 74
        Top = 310
        Width = 23
        Height = 22
        Anchors = [akLeft, akBottom]
        Glyph.Data = {
          76010000424D7601000000000000760000002800000020000000100000000100
          04000000000000010000120B0000120B00001000000000000000000000000000
          800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
          FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333303333
          333333333337F33333333333333033333333333333373F333333333333090333
          33333333337F7F33333333333309033333333333337373F33333333330999033
          3333333337F337F33333333330999033333333333733373F3333333309999903
          333333337F33337F33333333099999033333333373333373F333333099999990
          33333337FFFF3FF7F33333300009000033333337777F77773333333333090333
          33333333337F7F33333333333309033333333333337F7F333333333333090333
          33333333337F7F33333333333309033333333333337F7F333333333333090333
          33333333337F7F33333333333300033333333333337773333333}
        NumGlyphs = 2
        OnClick = SpeedButton4Click
      end
      object DBG: TYDBGrid
        Left = 1
        Top = 1
        Width = 183
        Height = 307
        Align = alTop
        Anchors = [akLeft, akTop, akRight, akBottom]
        Color = 15395562
        DataSource = DSForm
        Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit]
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
            FieldName = 'Title'
            Title.Alignment = taCenter
            Title.Caption = #1593#1606#1608#1575#1606
            Width = 156
            Visible = True
          end>
      end
    end
  end
  inherited DSForm: TDataSource
    DataSet = Dm.Select_ParaphTemplate
    Left = 152
    Top = 168
  end
end
