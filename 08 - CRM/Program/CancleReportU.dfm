inherited FrCancleReport: TFrCancleReport
  Left = 337
  Top = 206
  Width = 801
  Height = 458
  Caption = ' '
  OldCreateOrder = True
  OnCanResize = FormCanResize
  PixelsPerInch = 96
  TextHeight = 13
  inherited ShapeBase: TShape
    Width = 785
    Height = 419
  end
  object pnlMain: TPanel [1]
    Left = 0
    Top = 0
    Width = 785
    Height = 419
    Align = alClient
    Caption = ' '
    TabOrder = 0
    object Panel1: TPanel
      Left = 1
      Top = 1
      Width = 783
      Height = 376
      Align = alClient
      BevelOuter = bvNone
      TabOrder = 0
      object YDBGrid1: TYDBGrid
        Left = 0
        Top = 98
        Width = 783
        Height = 278
        Cursor = crHandPoint
        Align = alClient
        DataSource = Dm.DReport_Cancles
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
        AutoInsert = False
        FooterFields = 'Count'
        Columns = <
          item
            Expanded = False
            FieldName = 'CustomerNo'
            Title.Caption = #1588#1605#1575#1585#1607' '#1605#1588#1578#1585#1610
            Width = 83
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'MarketerNo'
            Title.Caption = #1603#1583' '#1576#1575#1586#1575#1585#1610#1575#1576
            Width = 73
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'MarketerTitle'
            Title.Caption = #1593#1606#1608#1575#1606' '#1576#1575#1586#1575#1585#1610#1575#1576
            Width = 86
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'Insertdate'
            Title.Caption = #1578#1575#1585#1610#1582' '#1579#1576#1578
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'CancelDate'
            Title.Caption = #1578#1575#1585#1610#1582' '#1575#1606#1589#1585#1575#1601
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'Products'
            Title.Caption = #1605#1581#1589#1608#1604
            Width = 109
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'CancelReasonTitle'
            Title.Caption = #1593#1604#1578' '#1575#1606#1589#1585#1575#1601
            Width = 114
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'CancelComment'
            Title.Caption = #1578#1608#1590#1610#1581#1575#1578
            Width = 100
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'CompanyName'
            Title.Caption = #1606#1575#1605' '#1588#1585#1603#1578
            Width = 100
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'TotalNoOfPeygiri'
            Title.Caption = #1578#1593#1583#1575#1583' '#1662#1610#1711#1610#1585#1610
            Visible = True
          end>
      end
      object xpPanel1: TxpPanel
        Left = 0
        Top = 0
        Width = 783
        Height = 98
        StartColor = 16511469
        EndColor = 16244694
        FillDirection = fdLeftToRight
        Caption = 'xpPanel'
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
        DefaultHeight = 98
        BorderColor = clWhite
        BGImageAlign = iaStretch
        Align = alTop
        TabOrder = 1
        DesignSize = (
          781
          66)
        object Label5: TLabel
          Left = 422
          Top = 32
          Width = 34
          Height = 13
          Anchors = [akTop, akRight]
          Caption = #1605#1581#1589#1608#1604
          Transparent = True
        end
        object Label7: TLabel
          Left = 422
          Top = 8
          Width = 54
          Height = 13
          Anchors = [akTop, akRight]
          Caption = #1578#1606#1592#1610#1605' '#1705#1606#1606#1583#1607
          Transparent = True
        end
        object Label1: TLabel
          Left = 694
          Top = 8
          Width = 55
          Height = 13
          Anchors = [akTop, akRight]
          Caption = #1578#1575#1585#1610#1582' '#1579#1576#1578' '#1575#1586':'
          Transparent = True
        end
        object Label4: TLabel
          Left = 583
          Top = 8
          Width = 6
          Height = 13
          Anchors = [akTop, akRight]
          Caption = #1578#1575
          Transparent = True
        end
        object Label2: TLabel
          Left = 694
          Top = 32
          Width = 71
          Height = 13
          Anchors = [akTop, akRight]
          Caption = #1578#1575#1585#1610#1582' '#1575#1606#1589#1585#1575#1601' '#1575#1586':'
          Transparent = True
        end
        object Label3: TLabel
          Left = 583
          Top = 32
          Width = 6
          Height = 13
          Anchors = [akTop, akRight]
          Caption = #1578#1575
          Transparent = True
        end
        object Label6: TLabel
          Left = 176
          Top = 12
          Width = 21
          Height = 13
          Anchors = [akTop, akRight]
          Caption = #1593#1604#1578
          Transparent = True
        end
        object dblsrchMarketerID: TDBLookupComboBox
          Left = 232
          Top = 4
          Width = 186
          Height = 21
          Anchors = [akTop, akRight]
          BiDiMode = bdLeftToRight
          KeyField = 'MarketerID'
          ListField = 'MarketerTitle'
          ListSource = Dm.DMarketer
          ParentBiDiMode = False
          TabOrder = 0
        end
        object BitBtn1: TBitBtn
          Left = 41
          Top = 39
          Width = 75
          Height = 25
          Caption = #1580#1587#1578#1580#1608
          TabOrder = 1
          OnClick = BitBtn1Click
        end
        object dblsrchProductID: TDBLookupComboBox
          Left = 233
          Top = 29
          Width = 185
          Height = 21
          Anchors = [akTop, akRight]
          BiDiMode = bdLeftToRight
          KeyField = 'ProductID'
          ListField = 'ProductTitle'
          ListSource = Dm.DProduct
          ParentBiDiMode = False
          TabOrder = 2
        end
        object dblsrchCancelReasonID: TDBLookupComboBox
          Left = 24
          Top = 8
          Width = 145
          Height = 21
          Anchors = [akLeft, akTop, akRight]
          BiDiMode = bdLeftToRight
          KeyField = 'CancelReasonID'
          ListField = 'CancelReasonTitle'
          ListSource = Dm.DCancelReason
          ParentBiDiMode = False
          TabOrder = 3
        end
        object edtSrchInsertDateFrom: TSolarDatePicker
          Left = 601
          Top = 5
          Width = 89
          Height = 21
          Anchors = [akTop, akRight]
          About = 'Created by : Mohamad Khorsandi'
          BiDiMode = bdRightToLeft
          TabOrder = 4
          Enabled = True
          VisibleLayoutSwitch = False
          DateKind = dkSolar
          PersianInvalidDateMessage = #1578#1575#1585#1610#1582' '#1585#1575' '#1589#1581#1610#1581' '#1608#1575#1585#1583' '#1603#1606#1610#1583
          CheckInputOnExit = True
          Divider = dSlash
          ShowToDay = True
          MonthObject = moComboBox
          Glyph = gtCalendar
          ShowDefaultDate = False
          AutoCheck = False
          AutoDeleteDelimiter = False
          EnabledDays = [mcSaturday, mcSunday, mcMonday, mcTuesday, mcWednesday, mcThursday, mcFriday]
          MaskEnabled = False
          ColorCaptionStart = 13158600
          ColorCaptionStop = clWhite
          ColorBodyStart = clWhite
          ColorBodyStop = clWhite
          ColorTodayLine = clBlack
          ColorSelectBrush = 14474460
          ColorDisableMonth = clGray
          ColorVacationDay = clRed
          ColorNormalDay = clBlack
          ColorStyle = csWhiteGray
          ButtonStyle = bsRound
          DataFieldType = dftSolar
          DataFieldAutoSaveModified = False
        end
        object edtSrchInsertDateTo: TSolarDatePicker
          Left = 489
          Top = 5
          Width = 89
          Height = 21
          Anchors = [akTop, akRight]
          About = 'Created by : Mohamad Khorsandi'
          BiDiMode = bdRightToLeft
          TabOrder = 5
          Enabled = True
          VisibleLayoutSwitch = False
          DateKind = dkSolar
          PersianInvalidDateMessage = #1578#1575#1585#1610#1582' '#1585#1575' '#1589#1581#1610#1581' '#1608#1575#1585#1583' '#1603#1606#1610#1583
          CheckInputOnExit = True
          Divider = dSlash
          ShowToDay = True
          MonthObject = moComboBox
          Glyph = gtCalendar
          ShowDefaultDate = False
          AutoCheck = False
          AutoDeleteDelimiter = False
          EnabledDays = [mcSaturday, mcSunday, mcMonday, mcTuesday, mcWednesday, mcThursday, mcFriday]
          MaskEnabled = False
          ColorCaptionStart = 13158600
          ColorCaptionStop = clWhite
          ColorBodyStart = clWhite
          ColorBodyStop = clWhite
          ColorTodayLine = clBlack
          ColorSelectBrush = 14474460
          ColorDisableMonth = clGray
          ColorVacationDay = clRed
          ColorNormalDay = clBlack
          ColorStyle = csWhiteGray
          ButtonStyle = bsRound
          DataFieldType = dftSolar
          DataFieldAutoSaveModified = False
        end
        object edtSrchCancleDateTo: TSolarDatePicker
          Left = 489
          Top = 29
          Width = 89
          Height = 21
          Anchors = [akTop, akRight]
          About = 'Created by : Mohamad Khorsandi'
          BiDiMode = bdRightToLeft
          TabOrder = 6
          Enabled = True
          VisibleLayoutSwitch = False
          DateKind = dkSolar
          PersianInvalidDateMessage = #1578#1575#1585#1610#1582' '#1585#1575' '#1589#1581#1610#1581' '#1608#1575#1585#1583' '#1603#1606#1610#1583
          CheckInputOnExit = True
          Divider = dSlash
          ShowToDay = True
          MonthObject = moComboBox
          Glyph = gtCalendar
          ShowDefaultDate = False
          AutoCheck = False
          AutoDeleteDelimiter = False
          EnabledDays = [mcSaturday, mcSunday, mcMonday, mcTuesday, mcWednesday, mcThursday, mcFriday]
          MaskEnabled = False
          ColorCaptionStart = 13158600
          ColorCaptionStop = clWhite
          ColorBodyStart = clWhite
          ColorBodyStop = clWhite
          ColorTodayLine = clBlack
          ColorSelectBrush = 14474460
          ColorDisableMonth = clGray
          ColorVacationDay = clRed
          ColorNormalDay = clBlack
          ColorStyle = csWhiteGray
          ButtonStyle = bsRound
          DataFieldType = dftSolar
          DataFieldAutoSaveModified = False
        end
        object edtSrchCancleDateFrom: TSolarDatePicker
          Left = 601
          Top = 29
          Width = 89
          Height = 21
          Anchors = [akTop, akRight]
          About = 'Created by : Mohamad Khorsandi'
          BiDiMode = bdRightToLeft
          TabOrder = 7
          Enabled = True
          VisibleLayoutSwitch = False
          DateKind = dkSolar
          PersianInvalidDateMessage = #1578#1575#1585#1610#1582' '#1585#1575' '#1589#1581#1610#1581' '#1608#1575#1585#1583' '#1603#1606#1610#1583
          CheckInputOnExit = True
          Divider = dSlash
          ShowToDay = True
          MonthObject = moComboBox
          Glyph = gtCalendar
          ShowDefaultDate = False
          AutoCheck = False
          AutoDeleteDelimiter = False
          EnabledDays = [mcSaturday, mcSunday, mcMonday, mcTuesday, mcWednesday, mcThursday, mcFriday]
          MaskEnabled = False
          ColorCaptionStart = 13158600
          ColorCaptionStop = clWhite
          ColorBodyStart = clWhite
          ColorBodyStop = clWhite
          ColorTodayLine = clBlack
          ColorSelectBrush = 14474460
          ColorDisableMonth = clGray
          ColorVacationDay = clRed
          ColorNormalDay = clBlack
          ColorStyle = csWhiteGray
          ButtonStyle = bsRound
          DataFieldType = dftSolar
          DataFieldAutoSaveModified = False
        end
      end
    end
    object Panel2: TPanel
      Left = 1
      Top = 377
      Width = 783
      Height = 41
      Align = alBottom
      TabOrder = 1
      DesignSize = (
        783
        41)
      object SpeedButton1: TSpeedButton
        Left = 667
        Top = 4
        Width = 110
        Height = 29
        Hint = #1575#1585#1587#1575#1604' '#1576#1607' '#1575#1603#1587#1604
        Anchors = [akTop, akRight]
        Caption = #1575#1585#1587#1575#1604' '#1576#1607' EXCEL'
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
        OnClick = SpeedButton1Click
      end
      object BBOK: TBitBtn
        Left = 12
        Top = 7
        Width = 75
        Height = 28
        Cursor = crHandPoint
        Caption = #1582#1585#1608#1580
        Default = True
        Font.Charset = ARABIC_CHARSET
        Font.Color = clNavy
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ModalResult = 1
        ParentFont = False
        TabOrder = 0
        Glyph.Data = {
          86050000424D8605000000000000360000002800000016000000140000000100
          18000000000050050000120B0000120B00000000000000000000FFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF89899E7D7D8FB5B591E8E8
          D3FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000FFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF61607B00004803
          04713F3F6D8B8B82DDDDD5FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          0000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          6464780A0B840000C800009A232353858580FFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFF0000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFB2B19F1C1D5F0004E40000EA0000861D1D37B1B2ABFFFFFFFF
          FFFFFFFFFFFFFFFF0000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFC5C5B81E1F470206DC0307FC0000B909094F
          9F9F98FFFFFFFFFFFFFFFFFF0000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFC6C6B81F20680509ED0206
          EE0000CC0606658E8E8CFFFFFFFFFFFF0000FFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF77776C04
          05970A0EFB0003DD0001CA03035F969694FFFFFF0000FFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          DBDBD2272767080BEC0105EE0204D40102C3080842C1C1B90000FFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF5F5F1BEBEBBFFFFFFFFFF
          FFFFFFFFFFFFFF3B3B530104DB0509F90001DC0306D70000935A5B6C0000FFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFB9B8AD46466004043C8A
          8A84FFFFFFFFFFFFE6E6DB2525590002E60408F70002E80002D30001DC0A0A49
          0000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE7E7E18A8A810B0B4800009E
          1D1D63E9E9DFFFFFFFBBBBAE4343470205B40003F90003F30002EF0002E00003
          F10000510000FFFFFFFFFFFFFFFFFFFFFFFFEDEDE391918A27274D00007D0000
          CB0101B12C2C306565673536490B0B610000AB0002F20003F30508F40206F201
          04EF0102F21415520000FFFFFFE9E9DDC4C4AF84848426265400007B0000CB02
          04DE0103D70002B200028D0000A20000C30000E20305F70408F10B0EF41013F2
          1114F50C10FF00008A7F7F84000056567030317500007100009E0000E40004F9
          0003EF0002E90002E60002E60002E80003EC0206F1070AF40D11F6171BFA1D21
          FE1C1FFF1215F000007B64656FFFFFFF00000000210002670608C40E11F41C1F
          FF1E21FF1214F20D10F4080CF40408F6070CFE1216FF171BFF1C20FC1D20F117
          1AE41113C91011892829538A8A84FFFFFFFFFFFF0000FFFFFFB6B6B36D6D6639
          395B1717811819C13335FF282BFB1B1EF51518E70C0FC000009B07098A171881
          262673353562585858A1A19BFFFFFFFFFFFFFFFFFFFFFFFF0000FFFFFFFFFFFF
          FFFFFFFFFFFFAAAA9D56576614156A2324D22F31FF1416C31D1D268F8F839D9C
          8BB2B2A6CCCCC2FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000FFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFB0AFA448495E1112921013E6343661FF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          0000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF69696213146F
          00005C929188FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFF0000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFC6C6C073737FCDCDCDFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFF0000}
      end
    end
  end
  inherited DSForm: TDataSource
    Left = 8
    Top = 56
  end
  inherited ActionList: TActionList
    Left = 8
    Top = 8
  end
end
