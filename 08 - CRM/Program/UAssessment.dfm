inherited FAssessment: TFAssessment
  Left = 849
  Top = 270
  Width = 429
  Height = 454
  Caption = #1575#1585#1586#1610#1575#1576#1610
  OldCreateOrder = True
  OnCanResize = FormCanResize
  PixelsPerInch = 96
  TextHeight = 13
  inherited ShapeBase: TShape
    Width = 413
    Height = 415
  end
  object pnlMain: TPanel [1]
    Left = 0
    Top = 0
    Width = 413
    Height = 415
    Align = alClient
    TabOrder = 0
    object Label2: TLabel
      Left = 200
      Top = 344
      Width = 112
      Height = 13
      Caption = #1605#1580#1605#1608#1593' '#1575#1605#1578#1610#1575#1586' '#1575#1585#1586#1610#1575#1576#1610':'
      Font.Charset = ARABIC_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object SumAssesment: TLabel
      Left = 158
      Top = 344
      Width = 3
      Height = 13
      Font.Charset = ARABIC_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Shape1: TShape
      Left = 16
      Top = 52
      Width = 383
      Height = 35
      Pen.Style = psClear
    end
    object Shape2: TShape
      Left = 16
      Top = 132
      Width = 383
      Height = 35
      Pen.Style = psClear
    end
    object Shape3: TShape
      Left = 16
      Top = 212
      Width = 383
      Height = 35
      Pen.Style = psClear
    end
    object Shape4: TShape
      Left = 16
      Top = 292
      Width = 383
      Height = 35
      Pen.Style = psClear
    end
    object Panel1: TPanel
      Left = 1
      Top = 362
      Width = 411
      Height = 52
      Align = alBottom
      TabOrder = 0
      DesignSize = (
        411
        52)
      object BitBtn1: TBitBtn
        Left = 865
        Top = 10
        Width = 133
        Height = 35
        Anchors = [akTop, akRight]
        Caption = #1575#1578#1605#1575#1605' '#1575#1602#1583#1575#1605#1575#1578' '#1608' '#1579#1576#1578' '#1602#1585#1575#1585#1583#1575#1583
        TabOrder = 0
      end
      object BitBtn2: TBitBtn
        Left = 726
        Top = 10
        Width = 133
        Height = 35
        Anchors = [akTop, akRight]
        Caption = #1575#1578#1605#1575#1605' '#1575#1602#1583#1575#1605#1575#1578' '#1608' '#1579#1576#1578' '#1575#1606#1589#1585#1575#1601
        TabOrder = 1
      end
      object BtnCancel: TBitBtn
        Left = 13
        Top = 9
        Width = 95
        Height = 34
        Caption = #1575#1606#1589#1585#1575#1601
        ModalResult = 2
        TabOrder = 2
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
      object BitBtn4: TBitBtn
        Left = 111
        Top = 9
        Width = 95
        Height = 34
        Caption = #1579#1576#1578
        TabOrder = 3
        OnClick = BitBtn4Click
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
      object btnDelEghdamat: TBitBtn
        Tag = 1
        Left = 210
        Top = 9
        Width = 96
        Height = 34
        Caption = #1581#1584#1601
        TabOrder = 4
        OnClick = btnDelEghdamatClick
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
    end
    object DBRadioGroup1: TDBRadioGroup
      Left = 16
      Top = 8
      Width = 185
      Height = 41
      Columns = 3
      Ctl3D = True
      DataField = 'AssessmenScore1'
      DataSource = DSForm
      Items.Strings = (
        #1582#1608#1576
        #1605#1578#1608#1587#1591
        #1576#1583)
      ParentCtl3D = False
      TabOrder = 1
      Values.Strings = (
        '3'
        '2'
        '1')
    end
    object DBRadioGroup2: TDBRadioGroup
      Left = 16
      Top = 48
      Width = 185
      Height = 41
      Color = clBtnFace
      Columns = 3
      Ctl3D = True
      DataField = 'AssessmenScore2'
      DataSource = DSForm
      Items.Strings = (
        #1582#1608#1576
        #1605#1578#1608#1587#1591
        #1576#1583)
      ParentColor = False
      ParentCtl3D = False
      TabOrder = 2
      Values.Strings = (
        '3'
        '2'
        '1')
    end
    object DBRadioGroup3: TDBRadioGroup
      Left = 16
      Top = 88
      Width = 185
      Height = 41
      Columns = 3
      Ctl3D = True
      DataField = 'AssessmenScore3'
      DataSource = DSForm
      Items.Strings = (
        #1582#1608#1576
        #1605#1578#1608#1587#1591
        #1576#1583)
      ParentCtl3D = False
      TabOrder = 3
      Values.Strings = (
        '3'
        '2'
        '1')
    end
    object DBRadioGroup4: TDBRadioGroup
      Left = 16
      Top = 128
      Width = 185
      Height = 41
      Color = clBtnFace
      Columns = 3
      Ctl3D = True
      DataField = 'AssessmenScore4'
      DataSource = DSForm
      Items.Strings = (
        #1582#1608#1576
        #1605#1578#1608#1587#1591
        #1576#1583)
      ParentColor = False
      ParentCtl3D = False
      TabOrder = 4
      Values.Strings = (
        '3'
        '2'
        '1')
    end
    object DBRadioGroup5: TDBRadioGroup
      Left = 16
      Top = 168
      Width = 185
      Height = 41
      Columns = 3
      Ctl3D = True
      DataField = 'AssessmenScore5'
      DataSource = DSForm
      Items.Strings = (
        #1582#1608#1576
        #1605#1578#1608#1587#1591
        #1576#1583)
      ParentCtl3D = False
      TabOrder = 5
      Values.Strings = (
        '3'
        '2'
        '1')
    end
    object DBRadioGroup6: TDBRadioGroup
      Left = 16
      Top = 208
      Width = 185
      Height = 41
      Color = clBtnFace
      Columns = 3
      Ctl3D = True
      DataField = 'AssessmenScore6'
      DataSource = DSForm
      Items.Strings = (
        #1582#1608#1576
        #1605#1578#1608#1587#1591
        #1576#1583)
      ParentColor = False
      ParentCtl3D = False
      TabOrder = 6
      Values.Strings = (
        '3'
        '2'
        '1')
    end
    object DBRadioGroup7: TDBRadioGroup
      Left = 16
      Top = 248
      Width = 185
      Height = 41
      Columns = 3
      Ctl3D = True
      DataField = 'AssessmenScore7'
      DataSource = DSForm
      Items.Strings = (
        #1582#1608#1576
        #1605#1578#1608#1587#1591
        #1576#1583)
      ParentCtl3D = False
      TabOrder = 7
      Values.Strings = (
        '3'
        '2'
        '1')
    end
    object DBRadioGroup8: TDBRadioGroup
      Left = 16
      Top = 288
      Width = 185
      Height = 41
      Color = clBtnFace
      Columns = 3
      Ctl3D = True
      DataField = 'AssessmenScore8'
      DataSource = DSForm
      Items.Strings = (
        #1582#1608#1576
        #1605#1578#1608#1587#1591
        #1576#1583)
      ParentColor = False
      ParentCtl3D = False
      TabOrder = 8
      Values.Strings = (
        '3'
        '2'
        '1')
    end
    object GroupBox1: TGroupBox
      Left = 199
      Top = 8
      Width = 200
      Height = 41
      TabOrder = 9
      object Label1: TLabel
        Left = 118
        Top = 17
        Width = 75
        Height = 13
        Caption = '1- '#1581#1590#1608#1585' '#1576#1607' '#1605#1608#1602#1593
      end
    end
    object GroupBox2: TGroupBox
      Left = 199
      Top = 48
      Width = 200
      Height = 41
      Color = clBtnFace
      ParentColor = False
      TabOrder = 10
      object Label9: TLabel
        Left = 44
        Top = 17
        Width = 149
        Height = 13
        Caption = '2- '#1583#1575#1588#1578#1606' '#1592#1575#1607#1585' '#1570#1585#1575#1587#1578#1607' '#1608' '#1605#1606#1575#1587#1576
      end
    end
    object GroupBox3: TGroupBox
      Left = 199
      Top = 88
      Width = 200
      Height = 41
      TabOrder = 11
      object Label10: TLabel
        Left = 89
        Top = 17
        Width = 104
        Height = 13
        Caption = '3- '#1583#1575#1588#1578#1606' '#1585#1601#1578#1575#1585' '#1605#1606#1575#1587#1576
      end
    end
    object GroupBox4: TGroupBox
      Left = 199
      Top = 128
      Width = 200
      Height = 41
      Color = clBtnFace
      ParentColor = False
      TabOrder = 12
      object Label11: TLabel
        Left = 54
        Top = 17
        Width = 139
        Height = 13
        Caption = '4- '#1662#1575#1587#1582#1711#1608#1610#1610' '#1583#1602#1610#1602' '#1576#1607' '#1587#1608#1575#1604#1575#1578
      end
    end
    object GroupBox5: TGroupBox
      Left = 199
      Top = 168
      Width = 200
      Height = 41
      TabOrder = 13
      object Label12: TLabel
        Left = 11
        Top = 17
        Width = 182
        Height = 13
        Caption = '5- '#1583#1575#1588#1578#1606' '#1578#1587#1604#1591' '#1576#1585' '#1585#1601#1593' '#1605#1608#1575#1585#1583' '#1575#1593#1604#1575#1605' '#1588#1583#1607
      end
    end
    object GroupBox6: TGroupBox
      Left = 199
      Top = 208
      Width = 200
      Height = 41
      Color = clBtnFace
      ParentColor = False
      TabOrder = 14
      object Label13: TLabel
        Left = 47
        Top = 17
        Width = 146
        Height = 13
        Caption = '6- '#1583#1585#1705' '#1583#1602#1610#1602' '#1575#1586' '#1605#1608#1585#1583' '#1605#1591#1585#1581' '#1588#1583#1607
      end
    end
    object GroupBox7: TGroupBox
      Left = 199
      Top = 248
      Width = 200
      Height = 41
      TabOrder = 15
      object Label14: TLabel
        Left = 108
        Top = 17
        Width = 85
        Height = 13
        Caption = '7- '#1605#1610#1586#1575#1606' '#1602#1583#1585#1578' '#1576#1610#1575#1606
      end
    end
    object GroupBox8: TGroupBox
      Left = 199
      Top = 288
      Width = 200
      Height = 41
      Color = clBtnFace
      ParentColor = False
      TabOrder = 16
      object Label15: TLabel
        Left = 102
        Top = 17
        Width = 91
        Height = 13
        Caption = '8- '#1575#1585#1586#1610#1575#1576#1610' '#1705#1604#1610' '#1588#1605#1575
      end
    end
  end
  inherited DSForm: TDataSource
    DataSet = Select_Assessment
    Left = 316
    Top = 342
  end
  inherited ActionList: TActionList
    Left = 370
    Top = 341
  end
  object Select_Assessment: TADOStoredProc
    Connection = Dm.YeganehConnection
    CursorType = ctStatic
    ProcedureName = 'Select_Assessment;1'
    Parameters = <
      item
        Name = '@FollowUpInPerson'
        DataType = ftInteger
        Value = Null
      end>
    Left = 63
    Top = 6
    object Select_Assessmentid: TIntegerField
      FieldName = 'id'
    end
    object Select_Assessmentlogdate: TDateField
      FieldName = 'logdate'
    end
    object Select_AssessmentCustomerId: TIntegerField
      FieldName = 'CustomerId'
    end
    object Select_AssessmentFollowUpId: TIntegerField
      FieldName = 'FollowUpId'
    end
    object Select_AssessmentValuatorUserID: TIntegerField
      FieldName = 'ValuatorUserID'
    end
    object Select_AssessmentExpertUserID: TIntegerField
      FieldName = 'ExpertUserID'
    end
    object Select_AssessmentAssessmenScore1: TIntegerField
      FieldName = 'AssessmenScore1'
    end
    object Select_AssessmentAssessmenScore2: TIntegerField
      FieldName = 'AssessmenScore2'
    end
    object Select_AssessmentAssessmenScore3: TIntegerField
      FieldName = 'AssessmenScore3'
    end
    object Select_AssessmentAssessmenScore4: TIntegerField
      FieldName = 'AssessmenScore4'
    end
    object Select_AssessmentAssessmenScore5: TIntegerField
      FieldName = 'AssessmenScore5'
    end
    object Select_AssessmentAssessmenScore6: TIntegerField
      FieldName = 'AssessmenScore6'
    end
    object Select_AssessmentAssessmenScore7: TIntegerField
      FieldName = 'AssessmenScore7'
    end
    object Select_AssessmentAssessmenScore8: TIntegerField
      FieldName = 'AssessmenScore8'
    end
    object Select_AssessmentAverageScore: TIntegerField
      FieldName = 'AverageScore'
    end
    object Select_AssessmentFollowUpInPerson: TIntegerField
      FieldName = 'FollowUpInPerson'
    end
    object Select_AssessmentUserId: TIntegerField
      FieldName = 'UserId'
    end
  end
end
