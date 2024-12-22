inherited FRepMohlateEghdam: TFRepMohlateEghdam
  Left = 335
  Top = 132
  Caption = #1576#1585#1585#1587#1610' '#1605#1607#1604#1578' '#1575#1602#1583#1575#1605' '#1575#1585#1580#1575#1593#1575#1578' '#1583#1575#1583#1607' '#1588#1583#1607
  ClientHeight = 532
  ClientWidth = 890
  Constraints.MinHeight = 300
  Constraints.MinWidth = 500
  OldCreateOrder = True
  PixelsPerInch = 96
  TextHeight = 13
  object Panel2: TPanel [0]
    Left = 0
    Top = 62
    Width = 890
    Height = 470
    Align = alClient
    BorderWidth = 5
    TabOrder = 0
    object YDBGrid1: TMssDBGrid
      Left = 6
      Top = 6
      Width = 878
      Height = 458
      Cursor = crHandPoint
      Align = alClient
      DataSource = DSForm
      Options = [dgEditing, dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit]
      ReadOnly = True
      TabOrder = 0
      TitleFont.Charset = ARABIC_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'Tahoma'
      TitleFont.Style = []
      Flat = False
      BandsFont.Charset = ARABIC_CHARSET
      BandsFont.Color = clWindowText
      BandsFont.Height = -11
      BandsFont.Name = 'Tahoma'
      BandsFont.Style = []
      GridStyle.Style = gsCustom
      GridStyle.OddColor = clWindow
      GridStyle.EvenColor = clWindow
      TitleHeight.PixelCount = 24
      FooterColor = clBtnFace
      ExOptions = [eoBooleanAsCheckBox, eoDisableDelete, eoDisableInsert, eoENTERlikeTAB, eoKeepSelection, eoShowImgInIndicator, eoTitleWordWrap, eoShowFilterBar, eoFilterAutoApply, eoDynamicSearch, eoShowColumnVisibility]
      WidthOfIndicator = 11
      DefaultRowHeight = 17
      ScrollBars = ssHorizontal
      ColCount = 12
      RowCount = 2
      MssImages = <>
      MssGroupHeaderField = 'Enter:HeaderFieldName'
      MssGroupHeaderFieldValue = 'Enter:HeaderFieldValue'
      MssGroupHeaderFieldCaption = 'Enter:HeaderFieldCaption'
      MssGroupHeaderColor = clBtnFace
      ModalDialogColor = clBtnFace
      Columns = <
        item
          Expanded = False
          FieldName = 'SecTitle'
          Title.Caption = #1583#1576#1610#1585#1582#1575#1606#1607
          Width = 100
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'IndicatorID'
          Title.Caption = #1575#1606#1583#1610#1705#1575#1578#1608#1585
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'lkLetterType'
          Title.Caption = #1606#1608#1593
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'MYear'
          Title.Caption = #1587#1575#1604
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'IncommingNO'
          Title.Caption = #1588#1605#1575#1585#1607' '#1606#1575#1605#1607
          Width = 100
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'lkfromorganization'
          Title.Caption = #1711#1610#1585#1606#1583#1607
          Width = 120
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'lktoorganization'
          Title.Caption = #1601#1585#1587#1578#1606#1583#1607
          Width = 120
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'DeadLineDate'
          Title.Caption = #1605#1607#1604#1578' '#1575#1602#1583#1575#1605
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'viewdate'
          Title.Caption = #1578#1575#1585#1610#1582' '#1585#1608#1610#1578
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'Memo'
          Title.Caption = #1605#1590#1605#1608#1606' '#1606#1575#1605#1607
          Width = 120
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'LetterRecommites'
          Title.Caption = #1570#1582#1585#1610#1606' '#1662#1575#1585#1575#1601
          Width = 300
          Visible = True
        end>
    end
  end
  object Panel1: TPanel [1]
    Left = 0
    Top = 0
    Width = 890
    Height = 62
    Align = alTop
    BorderWidth = 5
    TabOrder = 1
    DesignSize = (
      890
      62)
    object GroupBox1: TGroupBox
      Left = 701
      Top = 8
      Width = 185
      Height = 47
      Anchors = [akTop, akRight]
      Caption = #1605#1607#1604#1578' '#1575#1602#1583#1575#1605
      TabOrder = 0
      object SpeedButton1: TSpeedButton
        Left = 20
        Top = 17
        Width = 23
        Height = 22
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
      object cmbFilter: TComboBox
        Left = 111
        Top = 18
        Width = 64
        Height = 21
        ItemHeight = 13
        TabOrder = 0
        OnCloseUp = cmbFilterCloseUp
        Items.Strings = (
          #1705#1608#1670#1705#1578#1585' '#1575#1586
          #1576#1585#1575#1576#1585' '#1576#1575
          #1576#1586#1585#1711#1578#1585' '#1575#1586)
      end
      object edtDate: TMaskEdit
        Left = 43
        Top = 18
        Width = 66
        Height = 21
        EditMask = '9999/99/99;1;_'
        MaxLength = 10
        TabOrder = 1
        Text = '    /  /  '
      end
    end
    object BitBtn1: TBitBtn
      Left = 8
      Top = 16
      Width = 75
      Height = 25
      Action = acRep
      Caption = #1606#1605#1575#1610#1588
      TabOrder = 1
      Glyph.Data = {
        36040000424D3604000000000000360000002800000010000000100000000100
        2000000000000004000000000000000000000000000000000000FF00FF00FF00
        FF00FF00FF00FF00FF00F7F7F70073737B00B58C6B00EFB58C00AD846B006B73
        7B00FFFFFF00FF00FF00F7F7F700848C94007B848400C6C6CE00FF00FF00FF00
        FF00FF00FF00FF00FF005A5A630094847300FFDEA500FFD6A500FFD69C00847B
        6B00DEDEE700F7F7F700636B7300AD846300C6947B00635A5A00FF00FF00FF00
        FF00FFFFFF006B6B6B006B737300B5A59400FFEFCE00FFE7CE00FFE7BD00B5A5
        84007B7B7B00636B7300A58C7300FFE7A500FFD69400DEB58C00FF00FF00FF00
        FF005A5A5A006B6B6B00A5A5A500A5A59C00EFD6CE00FF00FF00FFFFDE008C8C
        7B00212129007B848C00DEB59C00FFF7D600FFE7C600FFE7B500EFEFEF005A5A
        5A00393939008C8C8C00D6D6D600D6DEDE00A5949400CEB5AD00BDAD9C003931
        390094949400C6C6C600AD9C9C00FFF7E700FFFFFF00F7DEBD0063636300ADAD
        AD00949494004A4A4A00DEDEDE00FF00FF00E7EFEF00635A5A00736B7300424A
        4A0084848400E7E7E700E7E7EF00AD949400DEC6BD008C7B7300424242009C9C
        9C00ADADAD00D6D6D6006B6B6B00848484004242420039424200525252004242
        4200CECECE00E7FFE700DEF7D600C6BDC60063636300DEDEDE0042424200B5B5
        B500DEDEDE00CECECE00C6C6C6009C9C9C008C8C8C007B737B005A5A5A005A52
        5A00736B7300B5BDAD00189C3100A5B59C00FFFFFF00FF00FF00636363003939
        390094949400ADADAD00A5A5A500A5A5A500ADADAD00BDBDBD00ADBDAD00ADBD
        AD00ADB5A5009CB5940039C66B0031B54A00CEE7C600FF00FF00F7F7F700BDBD
        BD00C6C6C600B5B5B500A5A5A5008C8C8C00736B7300739C730021B5420021AD
        4A0021AD420029AD4A0039D66B0042DE7B0029AD4200CEEFCE00FF00FF00FF00
        FF00FF00FF00FF00FF00FFFFFF00F7F7F700DED6DE0084AD840042DE730039DE
        730042DE7B004AE77B004AE77B004AEF84004ADE7B0039AD4A00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF008CC6940052DE840031DE
        6B0042DE730042E77B004AE77B0052EF84005AF78C0042E78400FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF0084BD84006BE79C004AE7
        84005AEF940063F794006BF79C0052F78C005AFF94004AD66300FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF009CCE9C004ACE6B005AD6
        7B0063DE84005AD673008CEFAD004AFF8C004AD66300E7EFDE00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00F7FFF700DEEFD600DEEF
        D600DEEFDE00B5CEA5006BEF9C0042D66300D6EFCE00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00E7EFDE0039C65200E7F7E700FF00FF00FF00FF00}
    end
  end
  inherited DSForm: TDataSource
    DataSet = Dm.qRepMohlateEghdam
    Left = 56
    Top = 360
  end
  inherited ActionList: TActionList
    Left = 192
    Top = 360
    object acRep: TAction
      Caption = #1606#1605#1575#1610#1588
      ImageIndex = 15
      OnExecute = acRepExecute
    end
  end
  inherited Grid_PopupMenu: TPopupMenu
    Left = 127
    Top = 380
  end
  object MssCalendarPro1: TMssCalendarPro
    Style = mssSilver
    Left = 296
    Top = 16
  end
end
