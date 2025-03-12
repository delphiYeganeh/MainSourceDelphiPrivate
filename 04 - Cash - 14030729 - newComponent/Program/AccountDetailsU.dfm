inherited FrAccountDetails: TFrAccountDetails
  Left = 534
  Top = 363
  Width = 750
  Height = 273
  Caption = ''
  Color = 15985624
  OldCreateOrder = True
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel [0]
    Left = 0
    Top = 0
    Width = 734
    Height = 234
    Align = alClient
    Color = 15985624
    TabOrder = 0
    DesignSize = (
      734
      234)
    object Shape1: TShape
      Left = 2
      Top = 189
      Width = 213
      Height = 25
      Brush.Style = bsClear
      Pen.Color = clMaroon
      Pen.Style = psDot
    end
    object Label1: TLabel
      Left = 653
      Top = 11
      Width = 72
      Height = 14
      Anchors = [akTop, akRight]
      Caption = #1588#1605#1575#1585#1607' '#1581#1587#1575#1576
      FocusControl = DBEdit1
      Font.Charset = ARABIC_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object Label5: TLabel
      Left = 407
      Top = 49
      Width = 53
      Height = 14
      Alignment = taRightJustify
      Anchors = [akTop, akRight]
      Caption = #1578#1575#1585#1610#1582' '#1575#1601#1578#1578#1575#1581
      FocusControl = DBEdit4
      Font.Charset = ARABIC_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object Label10: TLabel
      Left = 698
      Top = 87
      Width = 27
      Height = 14
      Anchors = [akTop, akRight]
      Caption = #1593#1606#1608#1575#1606
      FocusControl = DBEdit8
      Font.Charset = ARABIC_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object Label3: TLabel
      Left = 681
      Top = 164
      Width = 44
      Height = 14
      Hint = #1605#1608#1580#1608#1583#1610' '#1605#1575#1607#1610#1575#1606#1607' +'
      Anchors = [akTop, akRight]
      Caption = #1605#1608#1580#1608#1583#1610' '
      FocusControl = DBEdit2
      Font.Charset = ARABIC_CHARSET
      Font.Color = clMaroon
      Font.Height = -12
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object Label4: TLabel
      Left = 785
      Top = 14
      Width = 34
      Height = 13
      Alignment = taRightJustify
      Anchors = [akTop, akRight]
      Caption = #1608#1590#1593#1610#1578
      FocusControl = DBEdit3
      Visible = False
    end
    object PersonalNo: TLabel
      Left = 647
      Top = 50
      Width = 78
      Height = 14
      Anchors = [akTop, akRight]
      Caption = #1588#1605#1575#1585#1607' '#1705#1575#1585#1605#1606#1583#1610
      FocusControl = DBEdit5
      Font.Charset = ARABIC_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object Label2: TLabel
      Left = 685
      Top = 125
      Width = 40
      Height = 14
      Anchors = [akTop, akRight]
      Caption = ' '#1605#1575#1607#1610#1575#1606#1607
      FocusControl = DBEdit6
      Font.Charset = ARABIC_CHARSET
      Font.Color = clMaroon
      Font.Height = -12
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object Label6: TLabel
      Left = 393
      Top = 124
      Width = 82
      Height = 14
      Anchors = [akTop, akRight]
      Caption = #1583#1585#1610#1575#1601#1578' '#1608' '#1662#1585#1583#1575#1582#1578
      FocusControl = DBEdit7
      Font.Charset = ARABIC_CHARSET
      Font.Color = clMaroon
      Font.Height = -12
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object Label7: TLabel
      Left = 412
      Top = 164
      Width = 59
      Height = 14
      Anchors = [akTop, akRight]
      Caption = #1605#1608#1580#1608#1583#1610' '#1705#1604
      FocusControl = DBEdit9
      Font.Charset = ARABIC_CHARSET
      Font.Color = clMaroon
      Font.Height = -12
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object DBText1: TDBText
      Left = 6
      Top = 194
      Width = 70
      Height = 17
      Hint = #1583#1585#1570#1605#1583' '#1605#1606#1607#1575#1610
      Color = clBtnFace
      DataField = 'DEBITSTATUSTITLE'
      DataSource = dm.DSelect_Account_Details
      Font.Charset = ARABIC_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentColor = False
      ParentFont = False
      ParentShowHint = False
      ShowHint = True
    end
    object Label8: TLabel
      Left = 82
      Top = 194
      Width = 128
      Height = 17
      Alignment = taRightJustify
      AutoSize = False
      Caption = #1608#1590#1593#1610#1578' '#1705#1604#1610' '#1581#1587#1575#1576'  :'
      Color = clBtnFace
      FocusControl = DBEdit9
      Font.Charset = ARABIC_CHARSET
      Font.Color = clMaroon
      Font.Height = -12
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentColor = False
      ParentFont = False
    end
    object DBText2: TDBText
      Left = 474
      Top = 124
      Width = 50
      Height = 17
      Anchors = [akTop, akRight]
      Color = clBtnFace
      DataField = 'MONTHLYBALANCETitle'
      DataSource = dm.DSelect_Account_Details
      Font.Charset = ARABIC_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentColor = False
      ParentFont = False
    end
    object DBText3: TDBText
      Left = 474
      Top = 163
      Width = 50
      Height = 17
      Anchors = [akTop, akRight]
      Color = clBtnFace
      DataField = 'EXISTTitle'
      DataSource = dm.DSelect_Account_Details
      Font.Charset = ARABIC_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentColor = False
      ParentFont = False
    end
    object DBText4: TDBText
      Left = 219
      Top = 124
      Width = 50
      Height = 17
      Anchors = [akTop, akRight]
      Color = clBtnFace
      DataField = 'PAYBALANCETitle'
      DataSource = dm.DSelect_Account_Details
      Font.Charset = ARABIC_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentColor = False
      ParentFont = False
    end
    object DBText5: TDBText
      Left = 218
      Top = 163
      Width = 50
      Height = 17
      Anchors = [akTop, akRight]
      Color = clBtnFace
      DataField = 'DEBITSTATUSTITLE'
      DataSource = dm.DSelect_Account_Details
      Font.Charset = ARABIC_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentColor = False
      ParentFont = False
    end
    object Label9: TLabel
      Left = 476
      Top = 214
      Width = 174
      Height = 14
      Hint = #1605#1608#1580#1608#1583#1610' '#1605#1575#1607#1610#1575#1606#1607' +'
      Anchors = [akTop, akRight]
      Caption = ' ( '#1605#1575#1607#1610#1575#1606#1607' + '#1583#1585#1610#1575#1601#1578' '#1608' '#1662#1585#1583#1575#1582#1578')'
      FocusControl = DBEdit2
      Font.Charset = ARABIC_CHARSET
      Font.Color = clMaroon
      Font.Height = -12
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label11: TLabel
      Left = 185
      Top = 214
      Width = 268
      Height = 14
      Anchors = [akTop, akRight]
      Caption = ' ('#1578#1605#1575#1605' '#1578#1585#1575#1705#1606#1588' '#1607#1575' - ('#1580#1585#1610#1605#1607'+'#1705#1575#1585#1605#1586#1583'+'#1587#1608#1583' '#1608#1575#1605'))'
      FocusControl = DBEdit9
      Font.Charset = ARABIC_CHARSET
      Font.Color = clMaroon
      Font.Height = -12
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Image1: TImage
      Left = 240
      Top = 181
      Width = 105
      Height = 33
      Anchors = [akTop, akRight]
      Picture.Data = {
        0B546478504E47496D61676589504E470D0A1A0A0000000D4948445200000020
        000000200806000000737A7AF40000000467414D410000B18F0BFC6105000000
        097048597300000B1300000B1301009A9C18000000F4494441545847ED93310E
        83300C457D032EC2D6A13D408750A60EDD7A8F8EE500BD2904756F259A081B05
        92860009939F6481A2D8FF1105584B767D7566E1F27EB0000BB0000BB0000BB0
        40728116CE19BE3A59223037CB4282B83550340D88132E59840AD4501ED49CBA
        0571C7253F18FE915074EAF9FE27112280E16D3F4B7C67252494398553F51297
        236E199813D03DBA77324BCD2E73DCE2469DC0C36CC246EB247C02E6978FE788
        276EF1132AE1627338B146225A38B144227A381122912C9CF049240F27D4D0CA
        0ED112E35F0DABC2B6B8B84E625AD1BF7C8A4F227938E1BE133B8513A6C4EEE1
        840AD71773C38503F8019798DBA71BE71FA70000000049454E44AE426082}
    end
    object Image2: TImage
      Left = 492
      Top = 181
      Width = 105
      Height = 33
      Anchors = [akTop, akRight]
      Picture.Data = {
        0B546478504E47496D61676589504E470D0A1A0A0000000D4948445200000020
        000000200806000000737A7AF40000000467414D410000B18F0BFC6105000000
        097048597300000B1300000B1301009A9C18000000F4494441545847ED93310E
        83300C457D032EC2D6A13D408750A60EDD7A8F8EE500BD2904756F259A081B05
        92860009939F6481A2D8FF1105584B767D7566E1F27EB0000BB0000BB0000BB0
        40728116CE19BE3A59223037CB4282B83550340D88132E59840AD4501ED49CBA
        0571C7253F18FE915074EAF9FE27112280E16D3F4B7C67252494398553F51297
        236E199813D03DBA77324BCD2E73DCE2469DC0C36CC246EB247C02E6978FE788
        276EF1132AE1627338B146225A38B144227A381122912C9CF049240F27D4D0CA
        0ED112E35F0DABC2B6B8B84E625AD1BF7C8A4F227938E1BE133B8513A6C4EEE1
        840AD71773C38503F8019798DBA71BE71FA70000000049454E44AE426082}
    end
    object DBEdit1: TDBEdit
      Left = 474
      Top = 5
      Width = 170
      Height = 22
      Anchors = [akTop, akRight]
      DataField = 'AccountNo'
      DataSource = dm.DSelect_Account_Details
      Font.Charset = ARABIC_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      ReadOnly = True
      TabOrder = 0
    end
    object DBEdit4: TDBEdit
      Left = 270
      Top = 43
      Width = 133
      Height = 22
      Anchors = [akTop, akRight]
      BiDiMode = bdLeftToRight
      DataField = 'AccountDate'
      DataSource = dm.DSelect_Account_Details
      Font.Charset = ARABIC_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentBiDiMode = False
      ParentFont = False
      ReadOnly = True
      TabOrder = 1
    end
    object DBEdit8: TDBEdit
      Left = 270
      Top = 81
      Width = 374
      Height = 22
      Anchors = [akTop, akRight]
      DataField = 'AccountTitle'
      DataSource = dm.DSelect_Account_Details
      Font.Charset = ARABIC_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      ReadOnly = True
      TabOrder = 2
    end
    object DBEdit2: TDBEdit
      Left = 525
      Top = 159
      Width = 120
      Height = 22
      Anchors = [akTop, akRight]
      DataField = 'Exist'
      DataSource = dm.DSelect_Account_Details
      Font.Charset = ARABIC_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      ParentShowHint = False
      ReadOnly = True
      ShowHint = False
      TabOrder = 3
    end
    object DBEdit3: TDBEdit
      Left = 270
      Top = 4
      Width = 133
      Height = 22
      Anchors = [akTop, akRight]
      DataField = 'Debitstatus'
      DataSource = dm.DSelect_Account_Details
      Font.Charset = ARABIC_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      ReadOnly = True
      TabOrder = 4
      Visible = False
    end
    object DBEdit5: TDBEdit
      Left = 474
      Top = 43
      Width = 170
      Height = 22
      Anchors = [akTop, akRight]
      DataField = 'PersonalNo'
      DataSource = dm.DSelect_Account_Details
      Font.Charset = ARABIC_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      ReadOnly = True
      TabOrder = 5
    end
    object DBEdit6: TDBEdit
      Left = 525
      Top = 120
      Width = 120
      Height = 22
      Anchors = [akTop, akRight]
      DataField = 'MonthlyBalance'
      DataSource = dm.DSelect_Account_Details
      Font.Charset = ARABIC_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      ReadOnly = True
      TabOrder = 6
    end
    object DBEdit7: TDBEdit
      Left = 270
      Top = 120
      Width = 120
      Height = 22
      Anchors = [akTop, akRight]
      DataField = 'PayBalance'
      DataSource = dm.DSelect_Account_Details
      Font.Charset = ARABIC_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      ParentShowHint = False
      ReadOnly = True
      ShowHint = False
      TabOrder = 7
    end
    object Panel2: TPanel
      Left = 1
      Top = 1
      Width = 215
      Height = 168
      Anchors = [akLeft, akTop, akBottom]
      Color = 15985624
      TabOrder = 8
      object xpPageControl2: TPageControl
        Left = 1
        Top = 1
        Width = 213
        Height = 166
        ActivePage = xpTabSheet3
        Align = alClient
        Font.Charset = ARABIC_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        ParentShowHint = False
        ShowHint = True
        TabOrder = 0
        TabWidth = 96
        object xpTabSheet3: TTabSheet
          Caption = #1593#1603#1587
          object PicImage: TImage
            Left = 29
            Top = 3
            Width = 137
            Height = 126
            Stretch = True
          end
        end
        object sign: TTabSheet
          Caption = #1606#1605#1608#1606#1607' '#1575#1605#1590#1575
          object SignImage: TImage
            Left = 0
            Top = 0
            Width = 192
            Height = 131
            Align = alTop
            Stretch = True
          end
        end
      end
    end
    object DBEdit9: TDBEdit
      Left = 270
      Top = 159
      Width = 120
      Height = 22
      Hint = #1583#1585#1570#1605#1583' '#1605#1606#1607#1575#1610
      Anchors = [akTop, akRight]
      DataField = 'TotalExist'
      DataSource = dm.DSelect_Account_Details
      Font.Charset = ARABIC_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      ParentShowHint = False
      ReadOnly = True
      ShowHint = False
      TabOrder = 9
    end
  end
  inherited ahmadvand: TActionList
    Left = 21
    Top = 11
  end
  inherited Grid_PopupMenu: TPopupMenu
    Left = 95
  end
end
