inherited FReportInPerson: TFReportInPerson
  Left = 426
  Top = 273
  Width = 1023
  Height = 561
  Caption = #1711#1586#1575#1585#1588' '#1575#1585#1586#1610#1575#1576#1610' '#1705#1575#1585#1588#1606#1575#1587
  OldCreateOrder = True
  PixelsPerInch = 96
  TextHeight = 13
  inherited ShapeBase: TShape
    Width = 1007
    Height = 522
  end
  object pnlMain: TPanel [1]
    Left = 0
    Top = 0
    Width = 1007
    Height = 522
    Align = alClient
    TabOrder = 0
    object dbgExpertUser: TYDBGrid
      Left = 1
      Top = 137
      Width = 1005
      Height = 337
      Cursor = crHandPoint
      Align = alClient
      DataSource = DSForm
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
      PrintTitle = #1711#1586#1575#1585#1588' '#1575#1585#1586#1610#1575#1576#1610' '#1705#1575#1585#1588#1606#1575#1587
      InvertFarsiDate = True
      TitleSort = True
      AutoInsert = False
      FooterFields = 'Count'
      Columns = <
        item
          Expanded = False
          FieldName = 'MarketerTitle'
          Title.Caption = #1705#1575#1585#1588#1606#1575#1587
          Width = 98
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'CustomerId'
          Title.Caption = #1603#1583' '#1605#1588#1578#1585#1610
          Width = 111
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'CompanyName'
          Title.Caption = #1606#1575#1605' '#1605#1588#1578#1585#1610
          Width = 265
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'ProductsSTR'
          Title.Caption = #1606#1575#1605' '#1605#1581#1589#1608#1604
          Width = 157
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'DateInPerson'
          Title.Caption = #1578#1575#1585#1610#1582' '#1605#1585#1575#1580#1593#1607
          Width = 93
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'PeriodTimeInperson'
          Title.Caption = #1605#1583#1578' '#1581#1590#1608#1585
          Width = 103
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'AverageScore'
          Title.Caption = #1605#1610#1575#1606#1711#1610#1606' '#1575#1605#1578#1610#1575#1586
          Width = 125
          Visible = True
        end>
    end
    object xpPanel1: TxpPanel
      Left = 1
      Top = 1
      Width = 1005
      Height = 136
      StartColor = 16511469
      EndColor = 16244694
      FillDirection = fdLeftToRight
      Caption = 'xpPanel'
      Title = #1601#1610#1604#1578#1585
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
      DefaultHeight = 72
      BorderColor = clWhite
      BGImageAlign = iaStretch
      Align = alTop
      TabOrder = 0
      DesignSize = (
        1003
        104)
      object Label1: TLabel
        Left = 359
        Top = 14
        Width = 58
        Height = 13
        Anchors = [akTop, akRight]
        Caption = #1603#1583' '#1605#1588#1578#1585#1610' :'
        Transparent = True
      end
      object Label2: TLabel
        Left = 647
        Top = 14
        Width = 65
        Height = 13
        Anchors = [akTop, akRight]
        Caption = #1605#1581#1589#1608#1604'         :'
        Transparent = True
      end
      object Label3: TLabel
        Left = 927
        Top = 16
        Width = 66
        Height = 13
        Anchors = [akTop, akRight]
        Caption = #1606#1575#1605' '#1705#1575#1585#1588#1606#1575#1587' :'
        Transparent = True
      end
      object Label4: TLabel
        Left = 645
        Top = 50
        Width = 68
        Height = 13
        Anchors = [akTop, akRight]
        Caption = #1605#1583#1578' '#1581#1590#1608#1585'     :'
      end
      object Label5: TLabel
        Left = 929
        Top = 50
        Width = 64
        Height = 13
        Anchors = [akTop, akRight]
        Caption = #1578#1575#1585#1610#1582' '#1605#1585#1575#1580#1593#1607' :'
      end
      object Label6: TLabel
        Left = 545
        Top = 53
        Width = 6
        Height = 13
        Anchors = [akTop, akRight]
        Caption = #1578#1575
      end
      object Label7: TLabel
        Left = 820
        Top = 51
        Width = 6
        Height = 13
        Anchors = [akTop, akRight]
        Caption = #1578#1575
      end
      object dblProduct: TDBLookupComboBox
        Left = 464
        Top = 11
        Width = 181
        Height = 21
        Anchors = [akTop, akRight]
        BiDiMode = bdLeftToRight
        KeyField = 'ProductID'
        ListField = 'ProductTitle'
        ListSource = Dm.DProduct
        ParentBiDiMode = False
        TabOrder = 1
      end
      object edtCustomerId: TEdit
        Left = 264
        Top = 11
        Width = 94
        Height = 21
        Anchors = [akTop, akRight]
        TabOrder = 2
      end
      object DBLookupComboBox1: TDBLookupComboBox
        Left = 744
        Top = 11
        Width = 182
        Height = 21
        Anchors = [akTop, akRight]
        BiDiMode = bdLeftToRight
        DropDownRows = 20
        KeyField = 'MarketerID'
        ListField = 'MarketerTitle'
        ListSource = Dm.DMarketer
        ParentBiDiMode = False
        TabOrder = 0
      end
      object CheckBox1: TCheckBox
        Left = 888
        Top = 80
        Width = 105
        Height = 17
        Anchors = [akTop, akRight]
        Caption = #1606#1610#1575#1586' '#1576#1607' '#1662#1610#1711#1610#1585#1610' '#1583#1575#1585#1583
        TabOrder = 9
      end
      object MaskEPeriodTimeInperson: TMaskEdit
        Left = 556
        Top = 47
        Width = 89
        Height = 21
        Anchors = [akTop, akRight]
        EditMask = '!90:00;1;_'
        MaxLength = 5
        TabOrder = 7
        Text = '  :  '
      end
      object MaskEdit1: TMaskEdit
        Left = 448
        Top = 48
        Width = 93
        Height = 21
        Anchors = [akTop, akRight]
        EditMask = '!90:00;1;_'
        MaxLength = 5
        TabOrder = 8
        Text = '  :  '
      end
      object edtDateInPersonFrom: TDBEdit
        Left = 860
        Top = 47
        Width = 66
        Height = 21
        Anchors = [akTop, akRight]
        TabOrder = 3
      end
      object Button1: TButton
        Left = 838
        Top = 47
        Width = 22
        Height = 22
        Cursor = crHandPoint
        Anchors = [akTop, akRight]
        Caption = '...'
        TabOrder = 4
        OnClick = Button1Click
      end
      object edtDateInPersonTo: TDBEdit
        Left = 748
        Top = 48
        Width = 66
        Height = 21
        Anchors = [akTop, akRight]
        TabOrder = 5
      end
      object Button2: TButton
        Left = 726
        Top = 47
        Width = 22
        Height = 22
        Cursor = crHandPoint
        Anchors = [akTop, akRight]
        Caption = '...'
        TabOrder = 6
        OnClick = Button2Click
      end
      object Button3: TButton
        Left = 447
        Top = 11
        Width = 17
        Height = 20
        Anchors = [akTop, akRight]
        Caption = '*'
        TabOrder = 10
        OnClick = Button3Click
      end
      object Button4: TButton
        Left = 726
        Top = 11
        Width = 17
        Height = 20
        Anchors = [akTop, akRight]
        Caption = '*'
        TabOrder = 11
        OnClick = Button4Click
      end
    end
    object Panel1: TPanel
      Left = 1
      Top = 474
      Width = 1005
      Height = 47
      Align = alBottom
      Color = 16244694
      TabOrder = 2
      DesignSize = (
        1005
        47)
      object SpeedButton3: TSpeedButton
        Left = 857
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
      object SpeedButton2: TSpeedButton
        Left = 831
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
        OnClick = SpeedButton2Click
      end
      object SpeedButton1: TSpeedButton
        Left = 805
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
        OnClick = SpeedButton1Click
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
        OnClick = BtnCancelClick
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
      object BitBtn3: TBitBtn
        Left = 914
        Top = 10
        Width = 75
        Height = 25
        Anchors = [akTop, akRight]
        Caption = #1578#1607#1610#1607' '#1711#1586#1575#1585#1588
        TabOrder = 1
        OnClick = BitBtn3Click
      end
    end
  end
  inherited DSForm: TDataSource
    DataSet = SpExpertUserReport
    Top = 87
  end
  inherited ActionList: TActionList
    Left = 50
    Top = 37
  end
  object MssCalendarPro1: TMssCalendarPro
    Style = mssGold
    Left = 116
    Top = 89
  end
  object SpExpertUserReport: TADOStoredProc
    Connection = Dm.YeganehConnection
    CursorType = ctStatic
    ProcedureName = 'SpExpertUser_Report'
    Parameters = <
      item
        Name = '@Customerid'
        DataType = ftInteger
        Value = Null
      end
      item
        Name = '@ProductId'
        DataType = ftInteger
        Value = Null
      end
      item
        Name = '@MarketerId'
        DataType = ftInteger
        Value = Null
      end
      item
        Name = '@FollowUpNeed'
        DataType = ftBoolean
        Value = Null
      end
      item
        Name = '@fromDate'
        DataType = ftString
        Size = -1
        Value = Null
      end
      item
        Name = '@ToDate'
        DataType = ftString
        Size = -1
        Value = Null
      end
      item
        Name = '@FromTime'
        DataType = ftString
        Size = -1
        Value = Null
      end
      item
        Name = '@ToTime'
        DataType = ftString
        Size = -1
        Value = Null
      end>
    Left = 192
    Top = 40
    object SpExpertUserReportCustomerId: TIntegerField
      FieldName = 'CustomerId'
    end
    object SpExpertUserReportCompanyName: TStringField
      FieldName = 'CompanyName'
      Size = 200
    end
    object SpExpertUserReportProductsSTR: TStringField
      FieldName = 'ProductsSTR'
      Size = 500
    end
    object SpExpertUserReportDateInPerson: TStringField
      FieldName = 'DateInPerson'
      Size = 10
    end
    object SpExpertUserReportPeriodTimeInperson: TStringField
      FieldName = 'PeriodTimeInperson'
      Size = 5
    end
    object SpExpertUserReportAverageScore: TIntegerField
      FieldName = 'AverageScore'
    end
    object SpExpertUserReportMarketerTitle: TStringField
      FieldName = 'MarketerTitle'
      Size = 200
    end
  end
end
