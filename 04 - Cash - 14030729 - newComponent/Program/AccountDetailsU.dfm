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
      Left = 271
      Top = 200
      Width = 375
      Height = 28
      Anchors = [akTop, akRight]
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
      Left = 685
      Top = 165
      Width = 40
      Height = 14
      Anchors = [akTop, akRight]
      Caption = #1605#1608#1580#1608#1583#1610
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
      Left = 645
      Top = 125
      Width = 80
      Height = 14
      Anchors = [akTop, akRight]
      Caption = #1605#1608#1580#1608#1583#1610' '#1605#1575#1607#1610#1575#1606#1607
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
      Left = 415
      Top = 163
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
      Left = 350
      Top = 206
      Width = 90
      Height = 17
      Anchors = [akTop, akRight]
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
    end
    object Label8: TLabel
      Left = 443
      Top = 206
      Width = 95
      Height = 17
      Alignment = taRightJustify
      Anchors = [akTop, akRight]
      AutoSize = False
      Caption = #1608#1590#1593#1610#1578' '#1581#1587#1575#1576' :'
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
      Top = 162
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
      Left = 219
      Top = 162
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
      Top = 158
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
      ReadOnly = True
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
      ReadOnly = True
      TabOrder = 7
    end
    object Panel2: TPanel
      Left = 1
      Top = 1
      Width = 215
      Height = 232
      Align = alLeft
      Color = 15985624
      TabOrder = 8
      object xpPageControl2: TPageControl
        Left = 1
        Top = 1
        Width = 213
        Height = 230
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
      Top = 158
      Width = 120
      Height = 22
      Anchors = [akTop, akRight]
      DataField = 'TotalExist'
      DataSource = dm.DSelect_Account_Details
      Font.Charset = ARABIC_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
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
