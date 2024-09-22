inherited FrEditPart: TFrEditPart
  Left = 646
  Top = 206
  Width = 600
  Height = 518
  Caption = #1608#1610#1585#1575#1610#1588' '#1575#1602#1587#1575#1591
  OldCreateOrder = True
  PixelsPerInch = 96
  TextHeight = 13
  object Panel3: TPanel [0]
    Left = 0
    Top = 84
    Width = 584
    Height = 354
    Align = alClient
    Caption = 'Panel3'
    TabOrder = 2
    object YDBGrid1: TYDBGrid
      Left = 1
      Top = 1
      Width = 582
      Height = 352
      Cursor = crHandPoint
      Align = alClient
      Color = 16119285
      DataSource = dm.DSelect_Loan_Parts
      Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgCancelOnExit]
      ReadOnly = True
      TabOrder = 0
      TitleFont.Charset = ARABIC_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'Tahoma'
      TitleFont.Style = []
      OnDblClick = YDBGrid1DblClick
      YeganehColor = False
      YeganehFinish = False
      PageNumber = False
      RecordNumber = False
      HasTime = False
      Oriention = poPortrait
      HasDate = False
      HasIndex = False
      PrintTitle = #1604#1610#1587#1578' '#1578#1607#1610#1607' '#1588#1583#1607' '#1578#1608#1587#1591' '#1606#1585#1605' '#1575#1601#1586#1575#1585' '#1610#1711#1575#1606#1607
      InvertFarsiDate = True
      TitleSort = True
      AutoInsert = False
      FooterFields = 'Count'
      OnNeedFontCondition = YDBGrid1NeedFontCondition
      Columns = <
        item
          Expanded = False
          FieldName = 'OrderNo'
          Title.Caption = #1588#1605#1575#1585#1607' '#1602#1587#1591
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'Amount'
          Title.Caption = #1605#1576#1604#1594
          Width = 60
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'AmountBill'
          Title.Caption = #1576#1607' '#1581#1585#1608#1601
          Width = 163
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'MatureDate'
          Title.Caption = #1578#1575#1585#1610#1582' '#1587#1585#1585#1587#1610#1583
          Width = 79
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'InterestAmount'
          Title.Caption = #1587#1608#1583' '
          Visible = True
        end>
    end
  end
  object Panel1: TPanel [1]
    Left = 0
    Top = 0
    Width = 584
    Height = 84
    Align = alTop
    TabOrder = 0
    DesignSize = (
      584
      84)
    object Label1: TLabel
      Left = 529
      Top = 11
      Width = 48
      Height = 13
      Anchors = [akTop, akRight]
      Caption = #1588#1605#1575#1585#1607' '#1608#1575#1605
      FocusControl = DBEdit1
    end
    object Label2: TLabel
      Left = 529
      Top = 35
      Width = 48
      Height = 13
      Anchors = [akTop, akRight]
      Caption = #1578#1575#1585#1610#1582' '#1608#1575#1605
      FocusControl = DBEdit2
    end
    object Label3: TLabel
      Left = 529
      Top = 58
      Width = 48
      Height = 13
      Anchors = [akTop, akRight]
      Caption = #1605#1576#1604#1594' '#1608#1575#1605
      FocusControl = DBEdit3
    end
    object Label4: TLabel
      Left = 297
      Top = 11
      Width = 64
      Height = 13
      Anchors = [akTop, akRight]
      Caption = #1606#1608#1593' '#1608#1575#1605
      FocusControl = DBEdit4
    end
    object Label5: TLabel
      Left = 297
      Top = 35
      Width = 64
      Height = 13
      Anchors = [akTop, akRight]
      Caption = #1588#1605#1575#1585#1607' '#1581#1587#1575#1576
      FocusControl = DBEdit5
    end
    object Label6: TLabel
      Left = 297
      Top = 58
      Width = 64
      Height = 13
      Anchors = [akTop, akRight]
      Caption = #1593#1606#1608#1575#1606' '#1581#1587#1575#1576
      FocusControl = DBEdit6
    end
    object DBEdit1: TDBEdit
      Left = 381
      Top = 8
      Width = 147
      Height = 21
      Anchors = [akTop, akRight]
      BevelOuter = bvNone
      BevelKind = bkTile
      DataField = 'LoanNO'
      DataSource = dm.DReport_Loan
      Enabled = False
      TabOrder = 0
    end
    object DBEdit2: TDBEdit
      Left = 448
      Top = 32
      Width = 80
      Height = 21
      Anchors = [akTop, akRight]
      BevelOuter = bvNone
      BevelKind = bkTile
      BiDiMode = bdLeftToRight
      DataField = 'LoanDate'
      DataSource = dm.DReport_Loan
      Enabled = False
      ParentBiDiMode = False
      TabOrder = 1
    end
    object DBEdit3: TDBEdit
      Left = 381
      Top = 55
      Width = 147
      Height = 21
      Anchors = [akTop, akRight]
      BevelOuter = bvNone
      BevelKind = bkTile
      DataField = 'Amount'
      DataSource = dm.DSelect_Loan
      Enabled = False
      TabOrder = 2
    end
    object DBEdit4: TDBEdit
      Left = 146
      Top = 8
      Width = 147
      Height = 21
      Anchors = [akTop, akRight]
      BevelOuter = bvNone
      BevelKind = bkTile
      DataField = 'LoanTypeTitle'
      DataSource = dm.DReport_Loan
      Enabled = False
      TabOrder = 3
    end
    object DBEdit5: TDBEdit
      Left = 146
      Top = 32
      Width = 147
      Height = 21
      Anchors = [akTop, akRight]
      BevelOuter = bvNone
      BevelKind = bkTile
      DataField = 'Accountno'
      DataSource = dm.DReport_Loan
      Enabled = False
      TabOrder = 4
    end
    object DBEdit6: TDBEdit
      Left = 146
      Top = 55
      Width = 147
      Height = 21
      Anchors = [akTop, akRight]
      BevelOuter = bvNone
      BevelKind = bkTile
      DataField = 'AccountTitle'
      DataSource = dm.DReport_Loan
      Enabled = False
      TabOrder = 5
    end
  end
  object Panel2: TPanel [2]
    Left = 0
    Top = 438
    Width = 584
    Height = 41
    Align = alBottom
    TabOrder = 1
    DesignSize = (
      584
      41)
    object DeletePart: TBitBtn
      Left = 272
      Top = 7
      Width = 75
      Height = 28
      Anchors = [akTop, akRight]
      Caption = #1581#1584#1601' '#1662#1585#1583#1575#1582#1578#1610
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clNavy
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 0
      OnClick = DeletePartClick
    end
    object xpBitBtn2: TBitBtn
      Left = 8
      Top = 7
      Width = 75
      Height = 28
      Caption = #1582#1585#1608#1580
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clNavy
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 1
      OnClick = xpBitBtn2Click
    end
    object xpBitBtn1: TBitBtn
      Left = 507
      Top = 7
      Width = 75
      Height = 28
      Anchors = [akTop, akRight]
      Caption = #1602#1587#1591' '#1580#1583#1610#1583
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clNavy
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 2
      OnClick = xpBitBtn1Click
    end
    object xpBitBtn3: TBitBtn
      Left = 350
      Top = 7
      Width = 75
      Height = 28
      Anchors = [akTop, akRight]
      Caption = #1581#1584#1601' '#1602#1587#1591' '
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clNavy
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 3
      OnClick = xpBitBtn3Click
    end
    object xpBitBtn4: TBitBtn
      Left = 428
      Top = 7
      Width = 75
      Height = 28
      Anchors = [akTop, akRight]
      Caption = #1608#1610#1585#1575#1610#1588
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clNavy
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 4
      OnClick = xpBitBtn4Click
    end
  end
end
