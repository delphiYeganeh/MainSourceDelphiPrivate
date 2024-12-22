inherited FfollowUpReport: TFfollowUpReport
  Left = 269
  Top = 200
  Width = 1305
  Height = 540
  Caption = #1711#1586#1575#1585#1588' '#1575#1602#1583#1575#1605#1575#1578
  OldCreateOrder = True
  PixelsPerInch = 96
  TextHeight = 13
  inherited ShapeBase: TShape
    Width = 1289
    Height = 501
  end
  object pnlMain: TPanel [1]
    Left = 0
    Top = 0
    Width = 1289
    Height = 501
    Align = alClient
    TabOrder = 0
    object pnlSearchFollow: TxpPanel
      Left = 1
      Top = 1
      Width = 1287
      Height = 129
      StartColor = 16774388
      EndColor = 16767449
      FillDirection = fdLeftToRight
      Caption = 'xpPanel'
      Title = #1580#1587#1578#1580#1608' '#1662#1610#1588#1585#1601#1578#1607
      TitleFont.Charset = ARABIC_CHARSET
      TitleFont.Color = clNavy
      TitleFont.Height = -11
      TitleFont.Name = 'Tahoma'
      TitleFont.Style = []
      TitleAlignment = taRightJustify
      TitleStartColor = clWhite
      TitleEndColor = 16763594
      TitleColor = clWhite
      TitleFillDirect = fdVerticalFromCenter
      TitleImageAlign = tiaLeft
      TitleButtons = [tbMinimize]
      Animation = False
      DefaultHeight = 94
      BorderColor = clWhite
      BGImageAlign = iaStretch
      Align = alTop
      TabOrder = 0
      DesignSize = (
        1285
        97)
      object Label1: TLabel
        Left = 693
        Top = 73
        Width = 67
        Height = 13
        Anchors = [akTop, akRight]
        Caption = #1608#1590#1593#1610#1578' '#1575#1606#1580#1575#1605' :'
        Font.Charset = ARABIC_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        Transparent = True
      end
      object Label9: TLabel
        Left = 1207
        Top = 44
        Width = 71
        Height = 13
        Anchors = [akTop, akRight]
        Caption = #1601#1593#1575#1604#1610#1578'            :'
        Font.Charset = ARABIC_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        Transparent = True
      end
      object Label10: TLabel
        Left = 1208
        Top = 70
        Width = 70
        Height = 13
        Anchors = [akTop, akRight]
        Caption = #1705#1583' '#1605#1588#1578#1585#1610'     :'
        Font.Charset = ARABIC_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        Transparent = True
      end
      object Label3: TLabel
        Left = 953
        Top = 41
        Width = 64
        Height = 13
        Anchors = [akTop, akRight]
        Caption = #1606#1608#1593' '#1575#1602#1583#1575#1605'      :'
        Font.Charset = ARABIC_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        Transparent = True
      end
      object Label4: TLabel
        Left = 694
        Top = 49
        Width = 66
        Height = 13
        Anchors = [akTop, akRight]
        Caption = #1576#1575#1586#1575#1585#1610#1575#1576'          :'
        Transparent = True
      end
      object Label2: TLabel
        Left = 954
        Top = 69
        Width = 63
        Height = 13
        Anchors = [akTop, akRight]
        Caption = #1606#1575#1605' '#1605#1581#1589#1608#1604'   :'
        Transparent = True
      end
      object ActionType: TDBLookupComboBox
        Left = 799
        Top = 40
        Width = 150
        Height = 21
        Anchors = [akTop, akRight]
        BiDiMode = bdLeftToRight
        DropDownRows = 5
        Font.Charset = ARABIC_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        KeyField = 'ActionTypeID'
        ListField = 'ActionTypeTitle'
        ListSource = Dm.DActionType
        ParentBiDiMode = False
        ParentFont = False
        TabOrder = 1
      end
      object dblGroups: TDBLookupComboBox
        Left = 1053
        Top = 40
        Width = 150
        Height = 21
        Anchors = [akTop, akRight]
        BiDiMode = bdRightToLeft
        KeyField = 'GroupID'
        ListField = 'GroupTitle'
        ListSource = Dm.DGroups
        ParentBiDiMode = False
        TabOrder = 0
      end
      object edtCustomerNo: TEdit
        Left = 1029
        Top = 65
        Width = 175
        Height = 21
        Anchors = [akTop, akRight]
        Font.Charset = ARABIC_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        TabOrder = 2
      end
      object pnlTime: TPanel
        Left = 400
        Top = 5
        Width = 358
        Height = 30
        Anchors = [akTop, akRight]
        BevelOuter = bvNone
        ParentBackground = True
        ParentColor = True
        TabOrder = 3
        DesignSize = (
          358
          30)
        object Label6: TLabel
          Left = 290
          Top = 12
          Width = 65
          Height = 13
          Anchors = [akTop, akRight]
          Caption = #1578#1575#1585#1610#1582' '#1588#1585#1608#1593'   :'
          Font.Charset = ARABIC_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          Transparent = True
        end
        object SpeedButton1: TSpeedButton
          Left = 190
          Top = 7
          Width = 23
          Height = 22
          Anchors = [akTop, akRight]
          Glyph.Data = {
            36030000424D3603000000000000360000002800000010000000100000000100
            18000000000000030000C30E0000C30E00000000000000000000ABA4A3827A79
            827A79827A79827A79827A79827A79827A79827A79827A79827A79827A79827A
            79827A79827A79827A79ABA4A3DCD4D1F7EEEBF7EEEBF7EEEBE0DEDEF7EEEBF7
            EEEBF7EEEBF7EEEBE0DEDEF7EEEBF7EEEBF7EEEBD2CAC8827A79ABA4A3DDD5D3
            F8EFECF8EFECF8EFECDADADAF8EFECF8EFECF8EFECF8EFECDADADAF8EFECF8EF
            ECF8EFECD2CAC8827A79ABA4A3DED7D4E1DFDEDADADADADADADADADADADADADA
            DADADADADADADADADADADADADADADADADAE1DFDED4CECB827A79ABA4A3DED8D5
            F9F2EFF9F2EFF9F2EFDADADA23C8FF23C8FF23C8FF23C8FFDADADAF9F2EFF9F2
            EFF9F2EFD5CFCD827A79ABA4A3DFD9D7FAF3F1FAF3F1FAF3F1DADADA23C8FF23
            C8FF23C8FF23C8FFDADADAFAF3F1FAF3F1FAF3F1D6D0CE827A79ABA4A3DFDAD8
            E1E0E0DADADADADADADADADADADADADADADADADADADADADADADADADADADADADA
            DAE1E0E0D6D1CF827A79ABA4A3E0DBDAFBF6F4FBF6F4FBF6F4DADADAFBF6F4FB
            F6F4FBF6F4FBF6F4DADADAFBF6F4FBF6F4FBF6F4D7D2D1827A79ABA4A3E0DDDB
            FCF7F5FCF7F5FCF7F5E2E0E0FCF7F5FCF7F5FCF7F5FCF7F5E2E0E0FCF7F5FCF7
            F5FCF7F5D8D4D2827A794242B48280C98E8CD48D8BD28C8BCF8C8ACC8B89CA8B
            89C88A88C68988C48987C38987C38987C38987C37877B32424AD2828B52828B5
            2525B12525B04242B4A1A1CC9393C48181BF8888C64D4DAF6060BB2424AD2424
            AD2424AD2424A42424A42828B53C3CCC4444D54444D56060D2B0B0D9CDCDE37E
            7ED39797D08383D39494D54444D44444D54444D53737BC2424A42828B54747DB
            5353E84F4FDC5959E86A6AE56A6AD45757E76969E66060D26666E65454E94E4E
            D95454EB4141CA2424A42828B53232CD4141AF71718F3434D63838B17B7A9133
            33D13333B68281933131CA3131BD8585933030C12E2EBD2424A4DEDEEE8080D6
            8585C89B9BAD8080D38080C7A2A2AE8080CF7D7DC4A8A8AC7F7FC87E7EC2A9A9
            A97D7DBE7878C0E4E4EEFFFFFFFFFFFFE1E1E3B6B6B6FFFFFFE9E9EAB3B2B3FF
            FFFFF1F1F2AEAEAEFFFFFFFAFAFAAAA9AAFCFCFDFFFFFFFFFFFF}
          OnClick = SpeedButton1Click
        end
        object Label7: TLabel
          Left = 119
          Top = 12
          Width = 54
          Height = 13
          Anchors = [akTop, akRight]
          Caption = #1578#1575#1585#1610#1582' '#1575#1578#1605#1575#1605' :'
          Font.Charset = ARABIC_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          Transparent = True
        end
        object SpeedButton2: TSpeedButton
          Left = 16
          Top = 7
          Width = 23
          Height = 22
          Anchors = [akTop, akRight]
          Glyph.Data = {
            36030000424D3603000000000000360000002800000010000000100000000100
            18000000000000030000C30E0000C30E00000000000000000000ABA4A3827A79
            827A79827A79827A79827A79827A79827A79827A79827A79827A79827A79827A
            79827A79827A79827A79ABA4A3DCD4D1F7EEEBF7EEEBF7EEEBE0DEDEF7EEEBF7
            EEEBF7EEEBF7EEEBE0DEDEF7EEEBF7EEEBF7EEEBD2CAC8827A79ABA4A3DDD5D3
            F8EFECF8EFECF8EFECDADADAF8EFECF8EFECF8EFECF8EFECDADADAF8EFECF8EF
            ECF8EFECD2CAC8827A79ABA4A3DED7D4E1DFDEDADADADADADADADADADADADADA
            DADADADADADADADADADADADADADADADADAE1DFDED4CECB827A79ABA4A3DED8D5
            F9F2EFF9F2EFF9F2EFDADADA23C8FF23C8FF23C8FF23C8FFDADADAF9F2EFF9F2
            EFF9F2EFD5CFCD827A79ABA4A3DFD9D7FAF3F1FAF3F1FAF3F1DADADA23C8FF23
            C8FF23C8FF23C8FFDADADAFAF3F1FAF3F1FAF3F1D6D0CE827A79ABA4A3DFDAD8
            E1E0E0DADADADADADADADADADADADADADADADADADADADADADADADADADADADADA
            DAE1E0E0D6D1CF827A79ABA4A3E0DBDAFBF6F4FBF6F4FBF6F4DADADAFBF6F4FB
            F6F4FBF6F4FBF6F4DADADAFBF6F4FBF6F4FBF6F4D7D2D1827A79ABA4A3E0DDDB
            FCF7F5FCF7F5FCF7F5E2E0E0FCF7F5FCF7F5FCF7F5FCF7F5E2E0E0FCF7F5FCF7
            F5FCF7F5D8D4D2827A794242B48280C98E8CD48D8BD28C8BCF8C8ACC8B89CA8B
            89C88A88C68988C48987C38987C38987C38987C37877B32424AD2828B52828B5
            2525B12525B04242B4A1A1CC9393C48181BF8888C64D4DAF6060BB2424AD2424
            AD2424AD2424A42424A42828B53C3CCC4444D54444D56060D2B0B0D9CDCDE37E
            7ED39797D08383D39494D54444D44444D54444D53737BC2424A42828B54747DB
            5353E84F4FDC5959E86A6AE56A6AD45757E76969E66060D26666E65454E94E4E
            D95454EB4141CA2424A42828B53232CD4141AF71718F3434D63838B17B7A9133
            33D13333B68281933131CA3131BD8585933030C12E2EBD2424A4DEDEEE8080D6
            8585C89B9BAD8080D38080C7A2A2AE8080CF7D7DC4A8A8AC7F7FC87E7EC2A9A9
            A97D7DBE7878C0E4E4EEFFFFFFFFFFFFE1E1E3B6B6B6FFFFFFE9E9EAB3B2B3FF
            FFFFF1F1F2AEAEAEFFFFFFFAFAFAAAA9AAFCFCFDFFFFFFFFFFFF}
          OnClick = SpeedButton2Click
        end
        object FromDate: TShamsiDateEdit
          Left = 213
          Top = 8
          Width = 75
          Height = 21
          Anchors = [akTop, akRight]
          Font.Charset = ARABIC_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          TabOrder = 0
          Text = '1403/12/29'#0
        end
        object Todate: TShamsiDateEdit
          Left = 39
          Top = 7
          Width = 75
          Height = 21
          Anchors = [akTop, akRight]
          Font.Charset = ARABIC_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          TabOrder = 1
          Text = '1403/12/29'#0
        end
      end
      object followUpItem: TRadioGroup
        Tag = 1
        Left = 800
        Top = 2
        Width = 475
        Height = 33
        Anchors = [akTop, akRight]
        Caption = #1608#1575#1581#1583
        Columns = 3
        ItemIndex = 0
        Items.Strings = (
          #1601#1585#1608#1588' '#1608' '#1662#1588#1578#1610#1576#1575#1606#1610
          #1601#1585#1608#1588
          #1662#1588#1578#1610#1576#1575#1606#1610)
        TabOrder = 4
      end
      object dblMarketer: TDBLookupComboBox
        Left = 440
        Top = 45
        Width = 251
        Height = 21
        Anchors = [akTop, akRight]
        BiDiMode = bdLeftToRight
        DropDownRows = 20
        KeyField = 'MarketerID'
        ListField = 'MarketerTitle'
        ListSource = Dm.DMarketer
        ParentBiDiMode = False
        TabOrder = 5
      end
      object dblProductId: TDBLookupComboBox
        Left = 800
        Top = 65
        Width = 150
        Height = 21
        Anchors = [akTop, akRight]
        BiDiMode = bdLeftToRight
        DataField = 'ProductID'
        KeyField = 'ProductID'
        ListField = 'ProductTitle'
        ListSource = Dm.DProduct
        ParentBiDiMode = False
        TabOrder = 6
      end
      object Button1: TButton
        Left = 776
        Top = 40
        Width = 22
        Height = 20
        Anchors = [akTop, akRight]
        Caption = '*'
        TabOrder = 7
        OnClick = Button1Click
      end
      object Button2: TButton
        Left = 777
        Top = 65
        Width = 22
        Height = 20
        Anchors = [akTop, akRight]
        Caption = '*'
        TabOrder = 8
        OnClick = Button2Click
      end
      object Button3: TButton
        Left = 417
        Top = 46
        Width = 22
        Height = 20
        Anchors = [akTop, akRight]
        Caption = '*'
        TabOrder = 9
        OnClick = Button3Click
      end
      object Button4: TButton
        Left = 417
        Top = 68
        Width = 22
        Height = 20
        Anchors = [akTop, akRight]
        Caption = '*'
        TabOrder = 10
        OnClick = Button4Click
      end
      object Button5: TButton
        Left = 1029
        Top = 42
        Width = 22
        Height = 20
        Anchors = [akTop, akRight]
        Caption = '*'
        TabOrder = 11
        OnClick = Button5Click
      end
      object dblDoneStatusID: TDBLookupComboBox
        Left = 439
        Top = 69
        Width = 251
        Height = 21
        Anchors = [akTop, akRight]
        BiDiMode = bdLeftToRight
        DropDownRows = 20
        KeyField = 'DoneStatusID'
        ListField = 'DoneStatustitle'
        ListSource = Dm.DDoneStatus
        ParentBiDiMode = False
        TabOrder = 12
      end
    end
    object FollowGrid: TYDBGrid
      Left = 1
      Top = 130
      Width = 1287
      Height = 323
      Cursor = crHandPoint
      Align = alClient
      DataSource = DSForm
      Font.Charset = ARABIC_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      ReadOnly = True
      TabOrder = 1
      TitleFont.Charset = ARABIC_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -12
      TitleFont.Name = 'Tahoma'
      TitleFont.Style = [fsBold]
      YeganehColor = False
      YeganehFinish = False
      PageNumber = False
      RecordNumber = False
      HasTime = False
      Oriention = poPortrait
      HasDate = False
      HasIndex = False
      PrintTitle = #1711#1586#1575#1585#1588' '#1575#1602#1583#1575#1605#1575#1578
      InvertFarsiDate = True
      TitleSort = True
      AutoInsert = False
      FooterFields = 'Count'
      Columns = <
        item
          Expanded = False
          FieldName = 'CustomerID'
          Title.Alignment = taCenter
          Title.Caption = #1705#1583
          Title.Font.Charset = ARABIC_CHARSET
          Title.Font.Color = clWindowText
          Title.Font.Height = -11
          Title.Font.Name = 'Tahoma'
          Title.Font.Style = []
          Width = 105
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'CompanyName'
          Title.Alignment = taCenter
          Title.Caption = #1606#1575#1605' '#1587#1575#1586#1605#1575#1606
          Title.Font.Charset = ARABIC_CHARSET
          Title.Font.Color = clWindowText
          Title.Font.Height = -11
          Title.Font.Name = 'Tahoma'
          Title.Font.Style = []
          Width = 186
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'ActionTypeTitle'
          Title.Alignment = taCenter
          Title.Caption = #1575#1602#1583#1575#1605
          Title.Font.Charset = ARABIC_CHARSET
          Title.Font.Color = clWindowText
          Title.Font.Height = -11
          Title.Font.Name = 'Tahoma'
          Title.Font.Style = []
          Width = 90
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'ToDoDate'
          Title.Alignment = taCenter
          Title.Caption = #1578' '#1575#1606#1580#1575#1605
          Title.Font.Charset = ARABIC_CHARSET
          Title.Font.Color = clWindowText
          Title.Font.Height = -11
          Title.Font.Name = 'Tahoma'
          Title.Font.Style = []
          Width = 96
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'ToDoTime'
          Title.Alignment = taCenter
          Title.Caption = #1587#1575#1593#1578' '
          Title.Font.Charset = ARABIC_CHARSET
          Title.Font.Color = clWindowText
          Title.Font.Height = -11
          Title.Font.Name = 'Tahoma'
          Title.Font.Style = []
          Width = 61
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'DoneStatustitle'
          Title.Alignment = taCenter
          Title.Caption = #1608#1590#1593#1610#1578
          Title.Font.Charset = ARABIC_CHARSET
          Title.Font.Color = clWindowText
          Title.Font.Height = -11
          Title.Font.Name = 'Tahoma'
          Title.Font.Style = []
          Visible = False
        end
        item
          Expanded = False
          FieldName = 'MarketerTitle'
          Title.Alignment = taCenter
          Title.Caption = #1576#1575#1586#1575#1585#1610#1575#1576
          Title.Font.Charset = ARABIC_CHARSET
          Title.Font.Color = clWindowText
          Title.Font.Height = -11
          Title.Font.Name = 'Tahoma'
          Title.Font.Style = []
          Width = 111
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'Comment'
          Title.Alignment = taCenter
          Title.Caption = #1578#1608#1590#1610#1581
          Title.Font.Charset = ARABIC_CHARSET
          Title.Font.Color = clWindowText
          Title.Font.Height = -11
          Title.Font.Name = 'Tahoma'
          Title.Font.Style = []
          Width = 206
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'DoneComment'
          Title.Alignment = taCenter
          Title.Caption = #1606#1578#1610#1580#1607' '#1575#1602#1583#1575#1605
          Title.Font.Charset = ARABIC_CHARSET
          Title.Font.Color = clWindowText
          Title.Font.Height = -11
          Title.Font.Name = 'Tahoma'
          Title.Font.Style = []
          Width = 193
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'groupTitle'
          Title.Alignment = taCenter
          Title.Caption = #1606#1608#1593' '#1601#1593#1575#1604#1610#1578
          Title.Font.Charset = ARABIC_CHARSET
          Title.Font.Color = clWindowText
          Title.Font.Height = -11
          Title.Font.Name = 'Tahoma'
          Title.Font.Style = []
          Width = 150
          Visible = True
        end>
    end
    object Panel1: TPanel
      Left = 1
      Top = 453
      Width = 1287
      Height = 47
      Align = alBottom
      Color = 16244694
      TabOrder = 2
      DesignSize = (
        1287
        47)
      object SpeedButton3: TSpeedButton
        Left = 1146
        Top = 8
        Width = 24
        Height = 25
        Hint = #1575#1585#1587#1575#1604' '#1576#1607' '#1575#1603#1587#1604
        Anchors = [akTop, akRight]
        Flat = True
        Glyph.Data = {
          36030000424D3603000000000000360000002800000010000000100000000100
          18000000000000030000000000000000000000000000000000003A734F235C3A
          1F5C3A1F5C3A18533317513217513213482C0E40270E40280C3D2406341C0633
          1C032E1B06331D0720174B8D5C77BB8682B2947EB08F7DB18F7BAD8B75A68675
          A48674A68470A18168997C699C7D65997A69987E3E916107321D44865B96BFA1
          F3EEF1ECF0EAE9EFE8E7EDE7E5ECE3E2EBE1E1EAE0DFE8DDDEE8DDDCE7DADCE8
          D9E4EADF68987E032E1A4A8B6197C0A4FBFBF9FCFFF9F8FFF6F4FDF4F3FDF1EF
          FBEEEFF9EDE9F2E8E8E8E6E8EBE5E4ECE3E6E7E4669D7C05341C4F8E64A1C9AA
          B9CFBB8E9C91919E93909D93909D9398A19B7CA4803B7E3D083F19133E230A2E
          1A5464576B9D7F09362058946AAECFB679AE7E0059141C683521613531604512
          4A230F66126FBA74308F4A1D7F41157623C1D2BE749F850B3E245B976CAFCDB8
          FFFFFF87BE866ABB7183CB8A46A0482C8D3186C49159A7623B9149076F183272
          3AF8FCF574A5850D4126609E72AFCEB7F9F9FAFCFAFC86B98838903D27802A87
          C19060AD6650A258308435347A3F387D4CC7D5C27EAE8F0F402569A37AB7D3BD
          F5F7F5FFFFFFE1EDE33E8D4092C89A6DB67657A85D337D3988AE8AF3F5F4DCE9
          DCE5ECE276A48713462C6BA57BB8D3BEFBFAFDF2F7F275B47E9FCBA67CBE855E
          AB645B9760528F56367935D5E5D4F6FCF6E6EDE477A98717523373AB82C2D8C7
          E8F0E979B7819BCEA384C68E6BBA7358935C61A36878C5814F9855246F25C7DE
          C6F7F8F77BB08C1752327BB189C6DECA9BCCA196CB9E88C8936EBA7B66A96DC5
          D5C48AB58D5DAC666CBC76418F481C681DD7E6D886B6971752337EB28AC8E1CF
          B6D9B98CC3928DC18F81AD83DAE4DAFFFFFFF4F5F496B9978BB28E88A88E809F
          82DDE5DB85B6951E5B387FB48EC3DDC9F4F5F5FFFEFFFFFFFFFFFFFFFAFAFCF6
          F7F5F9F9F8FFFEFFFFFFFFFFFFFFFFFFFFF5EFF582B1911F5B3A8DBC99CCE3D0
          C4DCC9C6DFCCC3DDC8C0DAC5B7D3BDB6D3BDB1CEB6AACAB1A2C8AC9FC7A796C1
          A197BFA177BB85225D3B7AB1878CBE9980B68E7DB28B78AF8772AB826FA77E68
          A47A63A0745B986D5693684F8F634B8B6044865B4A8D5D3A734F}
        OnClick = SpeedButton3Click
      end
      object SpeedButton4: TSpeedButton
        Left = 1120
        Top = 8
        Width = 26
        Height = 25
        Hint = #1670#1575#1662
        Anchors = [akTop, akRight]
        Flat = True
        Glyph.Data = {
          E6040000424DE604000000000000360000002800000014000000140000000100
          180000000000B004000000000000000000000000000000000000FFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFAFAFAEEEEEEC7C7C7999999A1A1A1EBEBEBF9F9F9FFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE8
          E8E8D3D3D3B8B8B8B2B2B2D4D4D4E3E3E37F7F7F6969698E8E8EB1B1B1D8D8D8
          EEEEEEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFDBDBDBBBBBBBBABABAC9C9
          C9E5E5E5FAFAFAFFFFFFE5E5E59191917878787373737A7A7A858585929292B6
          B6B6D9D9D9FFFFFFFFFFFFFFFFFFCECECEBDBDBDDEDEDEF4F4F4FFFFFFFFFFFF
          FEFEFEFEFEFEDBDBDB9595957F7F7F6C6C6C6A6A6A6E6E6E7878787F7F7F8383
          838E8E8EB3B3B3F5F5F5CECECEFEFEFEFFFFFFFFFFFFFFFFFFF6F6F6D9D9D9C1
          C1C1A4A4A47878787979798383838383837575756767676161617272727C7C7C
          767676717171D1D1D1FFFFFFFAFAFAE9E9E9CACACAB9B9B9C4C4C4DBDBDBDDDD
          DDA7A7A78C8C8C8080807676767A7A7A8282828282826B6B6B60606084848476
          7676D0D0D0E8E8E8CECECEC6C6C6DADADAE9E9E9E9E9E9E8E8E8D8D8D8BABABA
          AFAFAFA8A8A8A1A1A19595957E7E7E7474747F7F7F8586858E8E8E787878CCCC
          CCD8D8D8E7E7E7EEEEEEE8E8E8E1E1E1DCDCDCD9D9D9DFDFDFDFDFDFD0D0D0C6
          C6C6BABABAAEAFAEABACABA2A1A2958D94877E857E7D7D757575D2D2D2EDEDED
          E7E7E7E1E1E1DEDEDED7D7D7D1D1D1DEDEDEECECECECECECE9E9E9E2E3E2E6E2
          E6F1E5F1F3E3F4DFCEDDA0BCA591AC94ACA7AA7A787AD0D0D0EAEAEAE2E2E2D9
          D9D9D2D2D2E0E0E0FBFBFBFFFFFFFFFFFFF6F6F5F2EFF2FFFFFFF6F2F677A878
          468C454D8E536CC8807BEB8F9CC8A2817C81D3D3D3BFBFBFCFCFCFDADADAE4E3
          E39F9FA080818298999BBABBBCDAD9DBFBF7FB5FAC5F006B00007B00087C0020
          70000955003E8034A8AFA8DCD8DDF7F7F7C2C2C2BFBFBFD1D1D1A5AAAC8C7E70
          A7988888807876736FA994A857A759008B0005A50A49C55C15AC23009400148A
          001A64002F7821F6FDF7FFFFFFFFFFFFF9F9F9F1F0F0A5A8ACDCC8B0FFF0D0F3
          DABBE4CBB2DBC8BE008A0000A60A79CB83FDFDFFC5F0D600A10C009300148A00
          0A5E00A4C7A3FFFFFFFFFFFFFFFFFFFFFFFFAEAEADECD7C5FFEBD3FFE5CAFFF7
          EB7BAE661CB7376FC174FFF3FFFFF8FFFFFFFFB4EBC509A81F0093001779003C
          8433FFFFFFFFFFFFFFFFFFF6F7F79E9B97FFFAE8FFE9D7FFE6CFFFFBFB379A2F
          53CE6EADC3A3CFDAC916AB219AD89FFFFFFFB6EAC500A40C118600147006FFFF
          FFFFFFFFFFFFFFB9B9BAD0CBC3FFFCEFFFEFE2FFECDBFFFDFF52A14261DC8C15
          B13514B33515B93F00A7169DD9A4FFFFFFC3F4D718A01E207F16FFFFFFFFFFFF
          F0F0F0AEAEADF9FBF8FFF6EEFFF4EBFFF1E6FFF7F3C2D5B12AB74853DB8425C8
          592CC55920BB4800AA1D9DD59DF9FFFF47AB5071B06EFFFFFFF6F6F6B8B8B8E8
          E7E7FFFFFFFFFFFDFFFDFAFFF8F2FFF3E9FFFFFF3CAD3E5BD1824FD8832EC960
          21BE4C17B53713AA2039B242148F15E6F0E5FFFFFFE6E6E6C8C8C8DDDDDDDFDF
          DFDCDEDEEAEAEAFEFDFCFFFFFEFFFFFFBFCCB74BAE543AC05945D17534CA621B
          BC41009D0B029106A6D3A5FFFFFFFFFFFFFEFEFEFAFAFAF3F3F3F2F2F2F0F0F0
          ECECECE4E5E5DFE0E1DCDCDCEBE6E9F3F9F1C4E5C49CD5A188CE8F89CE8EABD9
          ADE9F2E7FFFFFFFFFFFF}
        OnClick = SpeedButton4Click
      end
      object SpeedButton5: TSpeedButton
        Left = 1094
        Top = 8
        Width = 26
        Height = 25
        Hint = #1575#1585#1587#1575#1604' '#1576#1607' '#1608#1585#1583
        Anchors = [akTop, akRight]
        Flat = True
        Glyph.Data = {
          AA030000424DAA03000000000000360000002800000011000000110000000100
          1800000000007403000000000000000000000000000000000000A9542AA24B19
          A24815A449159E4715964513934210934211853D0F853C0E7D390D76350E7032
          0B71320B6A2F086A310D4E210400C36A43BD7A5EA1715B9E6E599C6E599C6E59
          986B56946A519066529065518A604C875D4B865D49875C49865E4B87543A6A31
          0D00C26C43BB8670FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFDFFFCFA
          FFF8F6FFF5F3FFF5F2FFF1EDFFFFFE865E4A6B2F0800C2734BBF8C77FFFFFFFF
          FFFFFFFFFFFFFFFFFFFBFAFAF4F3FFFFFFFFFFFFFFFCFBF8EBE8F5E6E1F4E6E1
          FFF1ED865D4970320A00C57650C08D77FFFFFFE4D3CCA16E56946246E1D3CBFE
          FAF8905B3B816246735A3AF9EDEAF9EBE8F5E6E1FFF5F2875D4B71330D00C87B
          57BF8D78FFFFFFDAC7C0C3795BBA5828996B50FEFDFD9D43189348227D360CA5
          9A89FFF7F5F7E8E6FFF5F2885F4A78370D00CC8160C69682FFFFFFDDCCC4C988
          6DD579509F5026D4C3B9AF6341B95A30AA4E24694420F2E9E5F9F0EDFFF8F68C
          624E823B1000D18665C69783FFFFFFDFCDC6D29478D3835FC5724A945F42B976
          5CC06239C35F337E370CAEA090FFFAFAFFFCF99367528A3E1100D58A6BC99C88
          FFFFFFE1D1C9DA9A80B4735AD99377B86D4AC47C5EC96D41B4623BCE6C406843
          1FF1EAE8FFFFFF9467548C411300DA9070CBA08CFFFFFFE9D2CAE2A892B0735A
          B7846DD89479CD7B58CB724C955B40B6705290481CA99B89FFFFFF986D579748
          1900DD9271CA9F8BFFFFFFEED7CEE4AB95B07258DACDC6D39E86D68F70D07B54
          AA6B4FC8B1A6BE6A436C4925FFFFFFA0725F9A4A1A00E19A7CCDA492FFFFFFD8
          A591E8B39EC1846BDDCAC0D6BAAEDB9D83D08564B27459F3F6F5B5765DA2542D
          AFAD9FA274619C4C1C00E29B7ED2AF9FEBC8BBD68A6CE5AD96E3A68CAC674CE9
          DBD5C5886DD78F72BC7A60E9C6B7C77454D18261C16C4398614AA6512300E59D
          80D0AA99FDF5F2F2DDD5F0DAD1F0D8CFF1D6CDFDF9F8F3E5DEECCFC3EED1C5F6
          ECE6E9CABDE9CBBEF0D2C7A4705AA54F2100E8A082CEA897FFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFAA
          7A66A6502000EBA587D0A997CEA997CEA896CFA997CCA492CB9E8ACB9E8BC596
          82C59682C49581BF8C76BF8B75C08A73B9826CBC7B60A8552300E1916FEBA487
          E7A082E69F82E39C7FE39C7EDB9578DA9277DA8E6DD58868D08362CF805CCA79
          54C9744EC36F47C46F46AA5B3000}
        OnClick = SpeedButton5Click
      end
      object RCount: TLabel
        Left = 1010
        Top = 16
        Width = 39
        Height = 13
        Caption = #1578#1593#1583#1575#1583' : 0'
      end
      object BtnCancel: TBitBtn
        Left = 11
        Top = 11
        Width = 75
        Height = 25
        Cancel = True
        Caption = #1582#1585#1608#1580
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
      object BitBtn1: TBitBtn
        Left = 1203
        Top = 10
        Width = 75
        Height = 25
        Anchors = [akTop, akRight]
        Caption = #1578#1607#1610#1607' '#1711#1586#1575#1585#1588
        TabOrder = 1
        OnClick = BitBtn1Click
      end
    end
  end
  inherited DSForm: TDataSource
    DataSet = SpFollowUpReport
  end
  object SpFollowUpReport: TADOStoredProc
    Connection = Dm.YeganehConnection
    CursorType = ctStatic
    ProcedureName = 'SpFollowUp_Report'
    Parameters = <
      item
        Name = '@Customerid'
        Size = -1
        Value = Null
      end
      item
        Name = '@MarketerID'
        Size = -1
        Value = Null
      end
      item
        Name = '@ProductId'
        Size = -1
        Value = Null
      end
      item
        Name = '@ActionTypeID'
        Size = -1
        Value = Null
      end
      item
        Name = '@orgID'
        Size = -1
        Value = Null
      end
      item
        Name = '@GroupId'
        Size = -1
        Value = Null
      end
      item
        Name = '@DonStatusID'
        Size = -1
        Value = Null
      end
      item
        Name = '@FromDate'
        Size = -1
        Value = Null
      end
      item
        Name = '@ToDate'
        Size = -1
        Value = Null
      end>
    Left = 424
    Top = 224
    object SpFollowUpReportCustomerID: TIntegerField
      FieldName = 'CustomerID'
    end
    object SpFollowUpReportCompanyName: TStringField
      FieldName = 'CompanyName'
      Size = 200
    end
    object SpFollowUpReportActionTypeTitle: TStringField
      FieldName = 'ActionTypeTitle'
      Size = 200
    end
    object SpFollowUpReportToDoDate: TStringField
      FieldName = 'ToDoDate'
      Size = 10
    end
    object SpFollowUpReportToDoTime: TStringField
      FieldName = 'ToDoTime'
      Size = 10
    end
    object SpFollowUpReportDoneStatustitle: TStringField
      FieldName = 'DoneStatustitle'
      Size = 50
    end
    object SpFollowUpReportMarketerTitle: TStringField
      FieldName = 'MarketerTitle'
      Size = 100
    end
    object SpFollowUpReportComment: TStringField
      FieldName = 'Comment'
      Size = 500
    end
    object SpFollowUpReportDoneComment: TStringField
      FieldName = 'DoneComment'
      Size = 500
    end
    object SpFollowUpReportgroupTitle: TStringField
      FieldName = 'groupTitle'
      Size = 50
    end
  end
end
