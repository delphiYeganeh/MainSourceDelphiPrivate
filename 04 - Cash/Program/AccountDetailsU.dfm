inherited FrAccountDetails: TFrAccountDetails
  Left = 534
  Top = 363
  Width = 692
  Height = 228
  Caption = ''
  Color = 15985624
  OldCreateOrder = True
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel [0]
    Left = 0
    Top = 0
    Width = 676
    Height = 189
    Align = alClient
    Color = 15985624
    TabOrder = 0
    DesignSize = (
      676
      189)
    object Shape1: TShape
      Left = 366
      Top = 159
      Width = 171
      Height = 21
      Anchors = [akTop, akRight]
      Brush.Style = bsClear
      Pen.Color = clMaroon
      Pen.Style = psInsideFrame
    end
    object Label1: TLabel
      Left = 589
      Top = 15
      Width = 64
      Height = 13
      Alignment = taRightJustify
      Anchors = [akTop, akRight]
      Caption = #1588#1605#1575#1585#1607' '#1581#1587#1575#1576
      FocusControl = DBEdit1
    end
    object Label5: TLabel
      Left = 323
      Top = 39
      Width = 50
      Height = 13
      Alignment = taRightJustify
      Anchors = [akTop, akRight]
      Caption = #1578#1575#1585#1610#1582' '#1575#1601#1578#1578#1575#1581
      FocusControl = DBEdit4
    end
    object Label10: TLabel
      Left = 590
      Top = 63
      Width = 26
      Height = 13
      Alignment = taRightJustify
      Anchors = [akTop, akRight]
      Caption = #1593#1606#1608#1575#1606
      FocusControl = DBEdit8
    end
    object Label3: TLabel
      Left = 589
      Top = 130
      Width = 38
      Height = 13
      Alignment = taRightJustify
      Anchors = [akTop, akRight]
      Caption = #1605#1608#1580#1608#1583#1610
      FocusControl = DBEdit2
      Font.Charset = ARABIC_CHARSET
      Font.Color = clMaroon
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object Label4: TLabel
      Left = 727
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
      Left = 588
      Top = 39
      Width = 71
      Height = 13
      Alignment = taRightJustify
      Anchors = [akTop, akRight]
      Caption = #1588#1605#1575#1585#1607' '#1705#1575#1585#1605#1606#1583#1610
      FocusControl = DBEdit5
    end
    object Label2: TLabel
      Left = 589
      Top = 102
      Width = 74
      Height = 13
      Alignment = taRightJustify
      Anchors = [akTop, akRight]
      Caption = #1605#1608#1580#1608#1583#1610' '#1605#1575#1607#1610#1575#1606#1607
      FocusControl = DBEdit6
      Font.Charset = ARABIC_CHARSET
      Font.Color = clMaroon
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object Label6: TLabel
      Left = 375
      Top = 102
      Width = 74
      Height = 13
      Alignment = taRightJustify
      Anchors = [akTop, akRight]
      Caption = #1583#1585#1610#1575#1601#1578' '#1608' '#1662#1585#1583#1575#1582#1578
      FocusControl = DBEdit7
      Font.Charset = ARABIC_CHARSET
      Font.Color = clMaroon
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object Label7: TLabel
      Left = 375
      Top = 130
      Width = 54
      Height = 13
      Alignment = taRightJustify
      Anchors = [akTop, akRight]
      Caption = #1605#1608#1580#1608#1583#1610' '#1705#1604
      FocusControl = DBEdit9
      Font.Charset = ARABIC_CHARSET
      Font.Color = clMaroon
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object DBText1: TDBText
      Left = 368
      Top = 161
      Width = 90
      Height = 17
      Anchors = [akTop, akRight]
      Color = clBtnFace
      DataField = 'DEBITSTATUSTITLE'
      DataSource = dm.DSelect_Account_Details
      ParentColor = False
    end
    object Label8: TLabel
      Left = 460
      Top = 160
      Width = 74
      Height = 17
      Alignment = taRightJustify
      Anchors = [akTop, akRight]
      AutoSize = False
      Caption = #1608#1590#1593#1610#1578' '#1581#1587#1575#1576':'
      Color = clBtnFace
      FocusControl = DBEdit9
      Font.Charset = ARABIC_CHARSET
      Font.Color = clMaroon
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentColor = False
      ParentFont = False
    end
    object DBText2: TDBText
      Left = 449
      Top = 100
      Width = 46
      Height = 17
      Anchors = [akTop, akRight]
      Color = clBtnFace
      DataField = 'MONTHLYBALANCETitle'
      DataSource = dm.DSelect_Account_Details
      ParentColor = False
    end
    object DBText3: TDBText
      Left = 449
      Top = 126
      Width = 44
      Height = 17
      Anchors = [akTop, akRight]
      Color = clBtnFace
      DataField = 'EXISTTitle'
      DataSource = dm.DSelect_Account_Details
      ParentColor = False
    end
    object DBText4: TDBText
      Left = 242
      Top = 100
      Width = 43
      Height = 17
      Anchors = [akTop, akRight]
      Color = clBtnFace
      DataField = 'PAYBALANCETitle'
      DataSource = dm.DSelect_Account_Details
      ParentColor = False
    end
    object DBText5: TDBText
      Left = 239
      Top = 126
      Width = 45
      Height = 17
      Anchors = [akTop, akRight]
      Color = clBtnFace
      DataField = 'DEBITSTATUSTITLE'
      DataSource = dm.DSelect_Account_Details
      ParentColor = False
    end
    object DBEdit1: TDBEdit
      Left = 456
      Top = 11
      Width = 130
      Height = 21
      Anchors = [akTop, akRight]
      DataField = 'AccountNo'
      DataSource = dm.DSelect_Account_Details
      ReadOnly = True
      TabOrder = 0
    end
    object DBEdit4: TDBEdit
      Left = 244
      Top = 35
      Width = 76
      Height = 21
      Anchors = [akTop, akRight]
      BiDiMode = bdLeftToRight
      DataField = 'AccountDate'
      DataSource = dm.DSelect_Account_Details
      ParentBiDiMode = False
      ReadOnly = True
      TabOrder = 1
    end
    object DBEdit8: TDBEdit
      Left = 244
      Top = 59
      Width = 342
      Height = 21
      Anchors = [akTop, akRight]
      DataField = 'AccountTitle'
      DataSource = dm.DSelect_Account_Details
      ReadOnly = True
      TabOrder = 2
    end
    object DBEdit2: TDBEdit
      Left = 496
      Top = 126
      Width = 92
      Height = 21
      Anchors = [akTop, akRight]
      DataField = 'Exist'
      DataSource = dm.DSelect_Account_Details
      ReadOnly = True
      TabOrder = 3
    end
    object DBEdit3: TDBEdit
      Left = 245
      Top = 10
      Width = 127
      Height = 21
      Anchors = [akTop, akRight]
      DataField = 'Debitstatus'
      DataSource = dm.DSelect_Account_Details
      ReadOnly = True
      TabOrder = 4
      Visible = False
    end
    object DBEdit5: TDBEdit
      Left = 456
      Top = 35
      Width = 129
      Height = 21
      Anchors = [akTop, akRight]
      DataField = 'PersonalNo'
      DataSource = dm.DSelect_Account_Details
      ReadOnly = True
      TabOrder = 5
    end
    object DBEdit6: TDBEdit
      Left = 496
      Top = 98
      Width = 91
      Height = 21
      Anchors = [akTop, akRight]
      DataField = 'MonthlyBalance'
      DataSource = dm.DSelect_Account_Details
      ReadOnly = True
      TabOrder = 6
    end
    object DBEdit7: TDBEdit
      Left = 285
      Top = 98
      Width = 91
      Height = 21
      Anchors = [akTop, akRight]
      DataField = 'PayBalance'
      DataSource = dm.DSelect_Account_Details
      ReadOnly = True
      TabOrder = 7
    end
    object Panel2: TPanel
      Left = 22
      Top = 1
      Width = 215
      Height = 172
      Anchors = [akTop, akRight]
      Color = 15985624
      TabOrder = 8
      object xpPageControl2: TPageControl
        Left = 9
        Top = 3
        Width = 200
        Height = 164
        ActivePage = xpTabSheet3
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
      Left = 285
      Top = 126
      Width = 91
      Height = 21
      Anchors = [akTop, akRight]
      DataField = 'TotalExist'
      DataSource = dm.DSelect_Account_Details
      ReadOnly = True
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
