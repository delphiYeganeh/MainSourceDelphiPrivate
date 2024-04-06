inherited FrEditPayment: TFrEditPayment
  Left = 403
  Top = 210
  Width = 707
  Height = 501
  Caption = ' '#1576#1585#1583#1575#1588#1578' '#1575#1586' '#1581#1587#1575#1576
  OldCreateOrder = True
  PixelsPerInch = 96
  TextHeight = 13
  object Label2: TLabel [0]
    Left = 548
    Top = 147
    Width = 63
    Height = 13
    Caption = #1570#1582#1585#1610#1606' '#1605#1576#1575#1583#1604#1575#1578
  end
  object PAccountDeatil: TPanel [1]
    Left = 0
    Top = 0
    Width = 674
    Height = 188
    Align = alTop
    Font.Charset = ARABIC_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 0
  end
  object Panel1: TPanel [2]
    Left = 0
    Top = 188
    Width = 674
    Height = 87
    Align = alTop
    Font.Charset = ARABIC_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentColor = True
    ParentFont = False
    TabOrder = 1
    DesignSize = (
      674
      87)
    object LblAmount: TLabel
      Left = 359
      Top = 9
      Width = 20
      Height = 13
      Anchors = [akTop, akRight]
      Caption = #1605#1576#1604#1594
    end
    object StatusLabel: TLabel
      Left = 627
      Top = 9
      Width = 66
      Height = 13
      Alignment = taRightJustify
      Anchors = [akTop, akRight]
      Caption = #1608#1575#1585#1610#1586' '#1576#1607' '#1581#1587#1575#1576
    end
    object Label7: TLabel
      Left = 627
      Top = 38
      Width = 21
      Height = 13
      Anchors = [akTop, akRight]
      Caption = #1578#1575#1585#1610#1582
    end
    object Label8: TLabel
      Left = 454
      Top = 38
      Width = 31
      Height = 13
      Anchors = [akTop, akRight]
      Caption = #1587#1575#1593#1578
    end
    object Label10: TLabel
      Left = 627
      Top = 67
      Width = 29
      Height = 13
      Anchors = [akTop, akRight]
      Caption = #1578#1608#1590#1610#1581
    end
    object Label12: TLabel
      Left = 8
      Top = 9
      Width = 200
      Height = 72
      Anchors = [akTop, akRight]
      AutoSize = False
      Caption = #1585#1610#1575#1604
      Font.Charset = ARABIC_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      WordWrap = True
    end
    object DBEAmount: TDBEdit
      Left = 216
      Top = 5
      Width = 136
      Height = 21
      Anchors = [akTop, akRight]
      Color = clWhite
      DataField = 'Amount'
      DataSource = dm.DSelect_Payment
      Font.Charset = ARABIC_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 0
      OnChange = DBEAmountChange
      OnEnter = TEditEnter
      OnExit = TEditExit
    end
    object DBEdit5: TDBEdit
      Left = 402
      Top = 34
      Width = 50
      Height = 21
      Anchors = [akTop, akRight]
      DataField = 'Time'
      DataSource = dm.DSelect_Payment
      TabOrder = 1
      OnEnter = TEditEnter
      OnExit = TEditExit
    end
    object DBEdit8: TDBEdit
      Left = 216
      Top = 63
      Width = 406
      Height = 21
      Anchors = [akTop, akRight]
      BiDiMode = bdRightToLeft
      Color = clWhite
      DataField = 'Comment'
      DataSource = dm.DSelect_Payment
      Font.Charset = ARABIC_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentBiDiMode = False
      ParentFont = False
      TabOrder = 2
      OnEnter = TEditEnter
      OnExit = TEditExit
    end
    object MajorAccount: TDBLookupComboBox
      Left = 402
      Top = 5
      Width = 220
      Height = 21
      Anchors = [akTop, akRight]
      BiDiMode = bdLeftToRight
      DataField = 'CreditorAccountID'
      DataSource = dm.DSelect_Payment
      KeyField = 'AccountID'
      ListField = 'AccountTitle'
      ListSource = dm.DSelect_Cash_Accounts
      ParentBiDiMode = False
      TabOrder = 3
    end
    object DBEdit1: TDBEdit
      Left = 498
      Top = 32
      Width = 121
      Height = 21
      DataField = 'Date'
      DataSource = dm.DSelect_Payment
      TabOrder = 4
    end
  end
  object FinancialNotePanel: TPanel [3]
    Left = 0
    Top = 275
    Width = 674
    Height = 150
    Align = alTop
    ParentColor = True
    TabOrder = 2
  end
  object Panel2: TPanel [4]
    Left = 0
    Top = 425
    Width = 674
    Height = 41
    Align = alBottom
    TabOrder = 3
    DesignSize = (
      674
      41)
    object BitBtn1: TBitBtn
      Left = 15
      Top = 7
      Width = 75
      Height = 28
      Action = AExit
      Caption = #1582#1585#1608#1580
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clNavy
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 0
      Glyph.Data = {
        36040000424D3604000000000000360000002800000010000000100000000100
        2000000000000004000000000000000000000000000000000000FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF000000000000000000FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF000000000000000000FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00000000000000000000000000FF00FF00FF00FF00FF00
        FF00000000000000000000000000FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00000000000000000000000000FF00FF000000
        00000000000000000000FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF000000000000000000000000000000
        000000000000FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF0000000000000000000000
        0000FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF000000000000000000000000000000
        000000000000FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00000000000000000000000000FF00FF000000
        00000000000000000000FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00000000000000000000000000FF00FF00FF00FF00FF00
        FF00000000000000000000000000FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF000000000000000000FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF000000000000000000FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00}
    end
    object DoBtn: TBitBtn
      Left = 381
      Top = 7
      Width = 75
      Height = 28
      Hint = 'Post'
      Anchors = [akTop, akRight]
      Caption = #1584#1582#1610#1585#1607
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clNavy
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 1
      OnClick = DoBtnClick
    end
    object PrintBtn: TBitBtn
      Left = 458
      Top = 7
      Width = 75
      Height = 28
      Anchors = [akTop, akRight]
      Caption = #1670#1575#1662' '#1602#1576#1590
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clNavy
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 2
      OnClick = PrintBtnClick
    end
    object xpBitBtn1: TBitBtn
      Left = 613
      Top = 7
      Width = 75
      Height = 28
      Anchors = [akTop, akRight]
      Caption = #1662#1585#1601#1585#1575#1688
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clNavy
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 3
      OnClick = xpBitBtn1Click
    end
    object xpBitBtn2: TBitBtn
      Left = 535
      Top = 7
      Width = 75
      Height = 28
      Anchors = [akTop, akRight]
      Caption = #1670#1575#1662' '#1587#1606#1583
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clNavy
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 4
      OnClick = xpBitBtn2Click
    end
  end
  object ActionManager1: TActionManager
    Left = 77
    Top = 396
    StyleName = 'XP Style'
    object Acancel: TDataSetCancel
      Category = 'Dataset'
      Caption = #1575#1606#1589#1585#1575#1601
      Hint = 'Cancel'
      ImageIndex = 8
      ShortCut = 32776
    end
    object asearchCheque: TAction
      Caption = '...'
      ShortCut = 114
    end
    object Action1: TAction
      Caption = 'Action1'
    end
    object Apost: TAction
      Category = 'Dataset'
      Caption = #1584#1582#1610#1585#1607
      ShortCut = 113
      OnExecute = ApostExecute
    end
  end
end
