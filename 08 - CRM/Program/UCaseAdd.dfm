inherited frCaseAdd: TfrCaseAdd
  Left = 596
  Top = 237
  Width = 910
  Height = 597
  Caption = #1705#1575#1585#1607#1575
  OldCreateOrder = True
  PixelsPerInch = 96
  TextHeight = 13
  inherited ShapeBase: TShape
    Width = 894
    Height = 558
  end
  object pnlMain: TPanel [1]
    Left = 0
    Top = 0
    Width = 894
    Height = 558
    Align = alClient
    TabOrder = 0
    object xpPanel1: TxpPanel
      Left = 1
      Top = 161
      Width = 892
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
      TitleFillDirect = fdVerticalFromCenter
      TitleImageAlign = tiaLeft
      TitleButtons = [tbMinimize]
      DefaultHeight = 60
      BorderColor = clWhite
      BGImageAlign = iaStretch
      Align = alTop
      TabOrder = 0
    end
    object pnlbtn: TPanel
      Left = 1
      Top = 407
      Width = 892
      Height = 150
      Align = alBottom
      TabOrder = 1
      object btnCancel: TBitBtn
        Left = 4
        Top = 111
        Width = 98
        Height = 32
        Cancel = True
        Caption = #1575#1606#1589#1585#1575#1601
        ModalResult = 2
        TabOrder = 0
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
      object btnAddAttachment: TBitBtn
        Left = 104
        Top = 111
        Width = 98
        Height = 32
        Caption = #1662#1610#1608#1587#1578' '#1607#1575#1610' '#1603#1575#1585
        TabOrder = 1
        OnClick = btnAddAttachmentClick
      end
      object btnDelBR2: TBitBtn
        Left = 203
        Top = 111
        Width = 98
        Height = 32
        Caption = #1581#1584#1601' '#1603#1575#1585
        TabOrder = 2
        OnClick = btnDelBR2Click
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
      object grbEdit: TGroupBox
        Left = 302
        Top = 1
        Width = 589
        Height = 148
        Align = alRight
        Anchors = [akLeft, akTop, akRight, akBottom]
        Caption = '   '#1608#1610#1585#1575#1610#1588' '
        TabOrder = 3
        DesignSize = (
          589
          148)
        object Label6: TLabel
          Left = 537
          Top = 18
          Width = 34
          Height = 13
          Anchors = [akTop, akRight]
          Caption = #1608#1590#1593#1610#1578
          Transparent = True
        end
        object Label5: TLabel
          Left = 531
          Top = 42
          Width = 23
          Height = 13
          Anchors = [akTop, akRight]
          Caption = #1588#1585#1581
        end
        object dblCaseStatus: TDBLookupComboBox
          Left = 399
          Top = 14
          Width = 128
          Height = 21
          Anchors = [akLeft, akTop, akRight]
          BiDiMode = bdLeftToRight
          DataField = 'StatusID'
          DataSource = DSForm
          Enabled = False
          KeyField = 'TaskStatusID'
          ListField = 'TaskStatusTitle'
          ListSource = Dm.DsTaskStatus
          ParentBiDiMode = False
          TabOrder = 0
        end
        object DBMemo1: TDBMemo
          Left = 8
          Top = 40
          Width = 520
          Height = 105
          Anchors = [akLeft, akTop, akRight]
          Color = clWhite
          DataField = 'Comment'
          DataSource = DSForm
          ReadOnly = True
          ScrollBars = ssVertical
          TabOrder = 1
        end
      end
      object btnAddTask: TBitBtn
        Left = 6
        Top = 6
        Width = 98
        Height = 32
        Caption = #1579#1576#1578' '#1603#1575#1585
        TabOrder = 4
        Visible = False
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
      object btnMapBug: TBitBtn
        Left = 265
        Top = 8
        Width = 33
        Height = 28
        Hint = #1606#1602#1588#1607' '#1585#1575#1607' '#1578#1587#1705
        TabOrder = 5
        OnClick = btnMapBugClick
        Glyph.Data = {
          460E0000424D460E00000000000036000000280000001E0000001E0000000100
          200000000000100E000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000202050702020507000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          00000000000000000101353590B435358FB40000010100000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000002828
          6D896060D1F16262D3F229296F8A000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          00000000000000000000000000000000000015153B4A5151C4ED8F8FF7FF8E8E
          F7FF5151C4EC16163F4F00000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          00000000000009091A214545BAE68B8BF4FF8F8FF7FF8F8FF7FF8B8BF4FF4545
          BAE60808181F0000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000010102023D3D
          A6CF8181EEFF8F8FF7FF8F8FF7FF8F8FF7FF8F8FF7FF8080EDFE3D3DA6CF0101
          0203000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          00000000000000000000000000000000000028286E8B6969D7F58F8FF7FF8F8F
          F7FF8F8FF7FF8F8FF7FF8F8FF7FF8F8FF7FF6767D7F427276B87000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000C0C232D4C4CBDE98E8EF7FF8F8FF7FF8F8FF7FF8F8FF7FF8F8F
          F7FF8F8FF7FF8F8FF7FF8E8EF7FF4A4ABFEA0B0B222B00000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000001013E3E
          A6D08484F0FF8F8FF7FF8F8FF7FF8F8FF7FF8F8FF7FF8F8FF7FF8F8FF7FF8F8F
          F7FF8F8FF7FF8484F0FF3D3DA6D1000001010000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000001D1D53696161D0EF8F8FF7FF8F8F
          F7FF8F8FF7FF8F8FF7FF8F8FF7FF8F8FF7FF8F8FF7FF8F8FF7FF8F8FF7FF8F8F
          F7FF6161D1F01D1D506500000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          000000000000020206084343B7E58C8CF5FF8F8FF7FF8F8FF7FF8F8FF7FF8F8F
          F7FF8F8FF7FF8F8FF7FF8F8FF7FF8F8FF7FF8F8FF7FF8F8FF7FF8C8CF5FF4444
          B6E4020207090000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000002323
          627A6E6EE0F98F8FF7FF8F8FF7FF8F8FF7FF8F8FF7FF8F8FF7FF8F8FF7FF8F8F
          F7FF8F8FF7FF8F8FF7FF8F8FF7FF8F8FF7FF8F8FF7FF6D6DDDF822225E760000
          0000000000000000000000000000000000000000000000000000000000000000
          000000000000000000000000000000000000020206084545B6E48D8DF6FF8F8F
          F7FF8F8FF7FF8F8FF7FF8F8FF7FF8989F4FF8080EEFF8080EEFF8989F4FF8F8F
          F7FF8F8FF7FF8F8FF7FF8F8FF7FF8D8DF6FF4444B6E302020709000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          000000000000000000001C1C4F636666D7F58F8FF7FF8F8FF7FF8F8FF7FF7E7E
          ECFF6464D4FF6F6ED3FF8E8CDBFF8E8CDBFF6F6ED3FF6464D4FF7E7EECFF8F8F
          F7FF8F8FF7FF8F8FF7FF6464D5F31B1B4D610000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          00003D3DA2C98A8AF3FF8F8FF7FF8F8FF7FF7170E0FF7B7AD6FFECE8EDFFFFFA
          F2FFFFFAF2FFFFFAF2FFFFFAF2FFECE8EDFF7A79D6FF7170E0FF8F8FF7FF8F8F
          F7FF8989F4FF3C3CA1C800000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000004040D114B4BBCE58F8F
          F7FF8F8FF7FF7575E4FF8D8BDAFFFFFAF2FFFFFAF2FFFEF8F0FFF0E1D2FFF1E1
          D2FFFEF8F0FFFFFAF2FFFEF9F2FF8D8BDAFF7676E3FF8F8FF7FF8F8FF7FF4949
          BCE505050E120000000000000000000000000000000000000000000000000000
          00000000000000000000000000001A1A4A5E6A6ADAF78F8FF7FF8989F4FF6564
          D1FFFDF8F1FFFFFAF2FFEDD9C8FFC49069FFCD986FFFCD986FFFC49069FFEDD9
          C8FFFFFAF2FFFDF8F1FF6564D1FF8A8AF4FF8F8FF7FF6868D8F61818485C0000
          0000000000000000000000000000000000000000000000000000000000000000
          000000000000313183A27D7DECFF8F8FF7FF7272E3FFB7B4E2FFFFFAF2FFF5E9
          DCFFC59067FFECB387FFF0B78BFFF0B78BFFECB387FFC59067FFF5E9DCFFFFFA
          F2FFB7B4E2FF7373E3FF8F8FF7FF7D7DECFF2F2F7F9F00000000000000000000
          0000000000000000000000000000000000000000000000000000000000003B3B
          A0C78787F2FF8F8FF7FF6868D8FFEBE7EDFFFFFAF2FFD2AA89FFE2A97DFFD9A6
          7FFF614E40FF614F41FFDAA77FFFE2A97DFFD2AA8BFFFFFAF2FFEAE6EDFF6968
          D8FF8F8FF7FF8686F1FF3A3A9EC6000000000000000000000000000000000000
          000000000000000000000000000000000000000000003F3FA9D38D8DF5FF8F8F
          F7FF6362D3FFFBF6F1FFFFFAF2FFC89872FFEDB488FFA07D61FF4D4036FF4D40
          36FFA07E62FFEDB488FFC89872FFFFFAF2FFFAF5F0FF6362D3FF8F8FF7FF8D8D
          F5FF3F3FA9D20000000000000000000000000000000000000000000000000000
          00000000000000000000000000003A3A9ABF8888F3FF8F8FF7FF6968D8FFEBE7
          EDFFFFFAF2FFD2AA88FFE2A97DFFD9A67FFF614E41FF604E40FFD9A67FFFE2A9
          7DFFD2AA8BFFFFFAF2FFEAE6EDFF6968D8FF8F8FF7FF8787F2FF383899BD0000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000002D2D78967D7DEBFF8F8FF7FF7272E2FFB8B5E3FFFFFAF2FFF5E9
          DCFFC59067FFECB487FFF0B78BFFF0B78BFFECB387FFC59067FFF5E9DCFFFFFA
          F2FFB7B4E2FF7474E3FF8F8FF7FF7C7CEBFF2B2B769300000000000000000000
          0000000000000000000000000000000000000000000000000000000000001010
          303D5B5BCCED8F8FF7FF8989F4FF6565D1FFFDF8F1FFFFFAF2FFECDAC8FFC38F
          68FFCE9870FFCE9870FFC38F68FFECDAC8FFFFFAF2FFFDF8F1FF6564D1FF8989
          F4FF8F8FF7FF5A5ACAEC0F0F2D3A000000000000000000000000000000000000
          00000000000000000000000000000000000000000000010102034242B3DF8B8B
          F4FF8F8FF7FF7474E3FF8E8CDAFFFFFAF2FFFFFAF2FFFEF8EFFFF0E0D2FFF0E0
          D2FFFEF8EFFFFFFAF2FFFFFAF2FF8D8BDAFF7676E4FF8F8FF7FF8B8BF4FF4242
          B2DF010102020000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000001A1A495C5C5CCDF08F8FF7FF8F8F
          F7FF6F6FDFFF7D7BD7FFEDE8EEFFFFFAF2FFFFFAF2FFFFFAF2FFFFFAF2FFECE8
          EDFF7C7AD6FF7170E0FF8F8FF7FF8F8FF7FF5C5CCCEF19194658000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000101353590B47171DFF88F8FF7FF8F8FF7FF7D7D
          EBFF6363D4FF706FD4FF8F8DDBFF8F8DDBFF706FD4FF6463D4FF7D7DEBFF8F8F
          F7FF8F8FF7FF7070E0F935358EB3000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          000000000000020206083A3A9EC56868D8F48F8FF7FF8F8FF7FF8F8FF7FF8A8A
          F4FF8080EEFF7F7FEEFF8A8AF4FF8F8FF7FF8F8FF7FF8F8FF7FF6868D6F33A3A
          9DC4020205070000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000010102032C2C78964C4CBEE87C7CEAFE8E8EF7FF8F8FF7FF8F8FF7FF8F8F
          F7FF8F8FF7FF8E8EF7FF7D7DEAFE4B4BBDE82C2C769301010203000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          000009091B22313185A64343B6E25050BFE75858C9EB5858C9EB4F4FBFE64343
          B6E2313184A509091A2100000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000001010707141A0D0D28330D0D28330707141A00000101000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          00000000000000000000}
      end
    end
    object grbTasks: TGroupBox
      Left = 1
      Top = 192
      Width = 892
      Height = 215
      Align = alClient
      Caption = '  '#1604#1610#1587#1578' '#1603#1575#1585#1607#1575'   '
      TabOrder = 2
      object YDBGrid1: TYDBGrid
        Left = 2
        Top = 15
        Width = 888
        Height = 198
        Cursor = crHandPoint
        Align = alClient
        DataSource = DSForm
        Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit]
        ReadOnly = True
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
            FieldName = 'AssignedDate'
            ReadOnly = False
            Title.Alignment = taCenter
            Title.Caption = #1578#1575#1585#1610#1582' '#1575#1585#1580#1575#1593
            Width = 72
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'AssignedUser'
            ReadOnly = False
            Title.Alignment = taCenter
            Title.Caption = #1575#1585#1580#1575#1593' '#1576#1607
            Width = 168
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'Status'
            ReadOnly = False
            Title.Alignment = taCenter
            Title.Caption = #1608#1590#1593#1610#1578
            Width = 81
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'TodoDate'
            Title.Caption = #1578#1575#1585#1610#1582' '#1608#1575#1602#1593#1610' '#1575#1606#1580#1575#1605
            Width = 96
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'EstimatedDate'
            ReadOnly = False
            Title.Alignment = taCenter
            Title.Caption = #1578#1575#1585#1610#1582' '#1575#1606#1580#1575#1605
            Width = 80
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'Comment'
            ReadOnly = False
            Title.Caption = #1588#1585#1581
            Width = 337
            Visible = True
          end>
      end
    end
    object grbCase: TGroupBox
      Left = 1
      Top = 1
      Width = 892
      Height = 160
      Align = alTop
      Caption = '  '#1605#1608#1585#1583'   '
      TabOrder = 3
      DesignSize = (
        892
        160)
      object Label7: TLabel
        Left = 822
        Top = 42
        Width = 53
        Height = 13
        Anchors = [akTop, akRight]
        Caption = #1593#1606#1608#1575#1606' '#1605#1608#1585#1583':'
        Transparent = True
      end
      object Label1: TLabel
        Left = 190
        Top = 42
        Width = 34
        Height = 13
        Caption = #1605#1581#1589#1608#1604
        Transparent = True
      end
      object Label2: TLabel
        Left = 209
        Top = 69
        Width = 15
        Height = 13
        Caption = #1606#1608#1593
        Transparent = True
      end
      object Label8: TLabel
        Left = 192
        Top = 95
        Width = 32
        Height = 13
        Caption = #1575#1608#1604#1608#1610#1578' '
        Transparent = True
      end
      object Label3: TLabel
        Left = 848
        Top = 57
        Width = 27
        Height = 13
        Anchors = [akTop, akRight]
        Caption = #1588#1585#1581':'
        Transparent = True
      end
      object Label4: TLabel
        Left = 837
        Top = 18
        Width = 38
        Height = 13
        Anchors = [akTop, akRight]
        Caption = #1705#1583' '#1605#1608#1585#1583':'
        Transparent = True
      end
      object Label9: TLabel
        Left = 563
        Top = 13
        Width = 48
        Height = 13
        Anchors = [akTop, akRight]
        Caption = #1578#1575#1585#1610#1582' '#1579#1576#1578' :'
        Transparent = True
      end
      object Label10: TLabel
        Left = 335
        Top = 13
        Width = 93
        Height = 13
        Anchors = [akTop, akRight]
        Caption = #1578#1575#1585#1610#1582' '#1578#1582#1605#1610#1606#1610' '#1575#1606#1580#1575#1605' :'
        Transparent = True
      end
      object LabelDate11: TLabel
        Left = 544
        Top = 14
        Width = 3
        Height = 13
        Anchors = [akTop, akRight]
        Transparent = True
      end
      object LabelDate12: TLabel
        Left = 318
        Top = 13
        Width = 3
        Height = 13
        Anchors = [akTop, akRight]
        Transparent = True
      end
      object dblProduct: TDBLookupComboBox
        Left = 6
        Top = 35
        Width = 183
        Height = 21
        BiDiMode = bdLeftToRight
        Color = clCream
        DataField = 'ProductID'
        KeyField = 'ProductID'
        ListField = 'ProductTitle'
        ListSource = Dm.DProduct
        ParentBiDiMode = False
        ReadOnly = True
        TabOrder = 0
      end
      object edtCaseTitle: TEdit
        Left = 232
        Top = 38
        Width = 588
        Height = 21
        Anchors = [akLeft, akTop, akRight]
        Color = clCream
        ReadOnly = True
        TabOrder = 1
        Text = 'edtCaseTitle'
      end
      object dblCaseType: TDBLookupComboBox
        Left = 7
        Top = 62
        Width = 182
        Height = 21
        BiDiMode = bdLeftToRight
        Color = clCream
        KeyField = 'CaseTypeID'
        ListField = 'CaseTypeTitle'
        ListSource = Dm.DsCaseType
        ParentBiDiMode = False
        ReadOnly = True
        TabOrder = 2
      end
      object dblPriority: TDBLookupComboBox
        Left = 7
        Top = 88
        Width = 182
        Height = 21
        BiDiMode = bdLeftToRight
        Color = clCream
        DataField = 'CasePriorityId'
        KeyField = 'CasePriorityID'
        ListField = 'CasePriorityTitle'
        ListSource = Dm.dsCasePriority
        ParentBiDiMode = False
        ReadOnly = True
        TabOrder = 3
      end
      object edtCaseID: TEdit
        Left = 667
        Top = 14
        Width = 153
        Height = 21
        Anchors = [akTop, akRight]
        Color = clCream
        ReadOnly = True
        TabOrder = 4
        Text = 'edtCaseTitle'
      end
      object CaseCommentM: TMemo
        Left = 230
        Top = 76
        Width = 651
        Height = 73
        Anchors = [akLeft, akTop, akRight]
        Color = clCream
        ReadOnly = True
        ScrollBars = ssVertical
        TabOrder = 5
      end
      object btnAttachment: TBitBtn
        Left = 6
        Top = 114
        Width = 98
        Height = 22
        Caption = #1662#1610#1608#1587#1578' '#1607#1575#1610' '#1605#1608#1585#1583
        TabOrder = 6
        OnClick = btnAttachmentClick
      end
    end
  end
  inherited DSForm: TDataSource
    DataSet = Spselect_Tasks
    Left = 280
    Top = 296
  end
  inherited ActionList: TActionList
    Left = 120
    Top = 112
  end
  object Spselect_Tasks: TADOStoredProc
    Connection = Dm.YeganehConnection
    CursorType = ctStatic
    AfterScroll = Spselect_TasksAfterScroll
    BeforeRefresh = Spselect_TasksBeforeRefresh
    ProcedureName = 'select_Tasks'
    Parameters = <
      item
        Name = '@RETURN_VALUE'
        DataType = ftInteger
        Direction = pdReturnValue
        Precision = 10
        Value = 0
      end
      item
        Name = '@CaseID'
        Attributes = [paNullable]
        DataType = ftInteger
        Precision = 10
        Value = Null
      end>
    Left = 168
    Top = 288
    object Spselect_TasksComment: TWideStringField
      FieldName = 'Comment'
      Size = 200
    end
    object Spselect_TasksStatusId: TIntegerField
      FieldName = 'StatusId'
    end
    object Spselect_TasksAssignedUserId: TIntegerField
      FieldName = 'AssignedUserId'
    end
    object Spselect_TasksAssignedDate: TWideStringField
      FieldName = 'AssignedDate'
      FixedChar = True
      Size = 10
    end
    object Spselect_TasksEstimatedDate: TWideStringField
      FieldName = 'EstimatedDate'
      FixedChar = True
      Size = 10
    end
    object Spselect_TasksStatus: TStringField
      FieldKind = fkLookup
      FieldName = 'Status'
      LookupDataSet = Dm.tblTaskStatus
      LookupKeyFields = 'TaskStatusID'
      LookupResultField = 'TaskStatusTitle'
      KeyFields = 'StatusId'
      Size = 500
      Lookup = True
    end
    object Spselect_TasksAssignedUser: TStringField
      FieldKind = fkLookup
      FieldName = 'AssignedUser'
      LookupDataSet = Dm.User
      LookupKeyFields = 'Id'
      LookupResultField = 'Title'
      KeyFields = 'AssignedUserId'
      Size = 200
      Lookup = True
    end
    object Spselect_TasksTaskID: TAutoIncField
      FieldName = 'TaskID'
      ReadOnly = True
    end
    object Spselect_TasksCaseId: TIntegerField
      FieldName = 'CaseId'
    end
    object Spselect_TasksTodoDate: TWideStringField
      FieldName = 'TodoDate'
      FixedChar = True
      Size = 10
    end
  end
end
