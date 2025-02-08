inherited FrEditPart: TFrEditPart
  Left = 646
  Top = 206
  Width = 600
  Height = 518
  Caption = #1608#1610#1585#1575#1610#1588' '#1575#1602#1587#1575#1591
  Font.Height = -12
  OldCreateOrder = True
  PixelsPerInch = 96
  TextHeight = 14
  object pnlMain: TPanel [0]
    Left = 0
    Top = 0
    Width = 584
    Height = 479
    Align = alClient
    ParentColor = True
    TabOrder = 0
    object Panel3: TPanel
      Left = 1
      Top = 121
      Width = 582
      Height = 316
      Align = alClient
      Caption = 'Panel3'
      TabOrder = 0
      object YDBGrid1: TYDBGrid
        Left = 1
        Top = 1
        Width = 580
        Height = 314
        Cursor = crHandPoint
        Align = alClient
        Color = 16119285
        DataSource = dm.DSelect_Loan_Parts
        Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgCancelOnExit]
        ReadOnly = True
        TabOrder = 0
        TitleFont.Charset = ARABIC_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -12
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
    object Panel2: TPanel
      Left = 1
      Top = 437
      Width = 582
      Height = 41
      Align = alBottom
      TabOrder = 1
      DesignSize = (
        582
        41)
      object DeletePart: TAdvGlowButton
        Left = 214
        Top = 7
        Width = 95
        Height = 28
        Anchors = [akTop, akRight]
        Caption = #1581#1584#1601' '#1662#1585#1583#1575#1582#1578#1610
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clNavy
        Font.Height = -12
        Font.Name = 'Tahoma'
        Font.Style = []
        ImageIndex = 90
        Images = dm.ImageList_MainNew
        NotesFont.Charset = DEFAULT_CHARSET
        NotesFont.Color = clWindowText
        NotesFont.Height = -11
        NotesFont.Name = 'Tahoma'
        NotesFont.Style = []
        ParentFont = False
        TabOrder = 0
        OnClick = DeletePartClick
        Appearance.ColorChecked = 16111818
        Appearance.ColorCheckedTo = 16367008
        Appearance.ColorDisabled = 15921906
        Appearance.ColorDisabledTo = 15921906
        Appearance.ColorDown = 16111818
        Appearance.ColorDownTo = 16367008
        Appearance.ColorHot = 16117985
        Appearance.ColorHotTo = 16372402
        Appearance.ColorMirrorHot = 16107693
        Appearance.ColorMirrorHotTo = 16775412
        Appearance.ColorMirrorDown = 16102556
        Appearance.ColorMirrorDownTo = 16768988
        Appearance.ColorMirrorChecked = 16102556
        Appearance.ColorMirrorCheckedTo = 16768988
        Appearance.ColorMirrorDisabled = 11974326
        Appearance.ColorMirrorDisabledTo = 15921906
      end
      object xpBitBtn2: TAdvGlowButton
        Left = 8
        Top = 7
        Width = 75
        Height = 28
        Caption = #1582#1585#1608#1580
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clNavy
        Font.Height = -12
        Font.Name = 'Tahoma'
        Font.Style = []
        ImageIndex = 84
        Images = dm.ImageList_MainNew
        NotesFont.Charset = DEFAULT_CHARSET
        NotesFont.Color = clWindowText
        NotesFont.Height = -11
        NotesFont.Name = 'Tahoma'
        NotesFont.Style = []
        ParentFont = False
        TabOrder = 1
        OnClick = xpBitBtn2Click
        Appearance.ColorChecked = 16111818
        Appearance.ColorCheckedTo = 16367008
        Appearance.ColorDisabled = 15921906
        Appearance.ColorDisabledTo = 15921906
        Appearance.ColorDown = 16111818
        Appearance.ColorDownTo = 16367008
        Appearance.ColorHot = 16117985
        Appearance.ColorHotTo = 16372402
        Appearance.ColorMirrorHot = 16107693
        Appearance.ColorMirrorHotTo = 16775412
        Appearance.ColorMirrorDown = 16102556
        Appearance.ColorMirrorDownTo = 16768988
        Appearance.ColorMirrorChecked = 16102556
        Appearance.ColorMirrorCheckedTo = 16768988
        Appearance.ColorMirrorDisabled = 11974326
        Appearance.ColorMirrorDisabledTo = 15921906
      end
      object xpBitBtn1: TAdvGlowButton
        Left = 480
        Top = 7
        Width = 98
        Height = 28
        Anchors = [akTop, akRight]
        Caption = #1602#1587#1591' '#1580#1583#1610#1583
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clNavy
        Font.Height = -12
        Font.Name = 'Tahoma'
        Font.Style = []
        ImageIndex = 60
        Images = dm.ImageList_MainNew
        NotesFont.Charset = DEFAULT_CHARSET
        NotesFont.Color = clWindowText
        NotesFont.Height = -11
        NotesFont.Name = 'Tahoma'
        NotesFont.Style = []
        ParentFont = False
        TabOrder = 2
        OnClick = xpBitBtn1Click
        Appearance.ColorChecked = 16111818
        Appearance.ColorCheckedTo = 16367008
        Appearance.ColorDisabled = 15921906
        Appearance.ColorDisabledTo = 15921906
        Appearance.ColorDown = 16111818
        Appearance.ColorDownTo = 16367008
        Appearance.ColorHot = 16117985
        Appearance.ColorHotTo = 16372402
        Appearance.ColorMirrorHot = 16107693
        Appearance.ColorMirrorHotTo = 16775412
        Appearance.ColorMirrorDown = 16102556
        Appearance.ColorMirrorDownTo = 16768988
        Appearance.ColorMirrorChecked = 16102556
        Appearance.ColorMirrorCheckedTo = 16768988
        Appearance.ColorMirrorDisabled = 11974326
        Appearance.ColorMirrorDisabledTo = 15921906
      end
      object xpBitBtn3: TAdvGlowButton
        Left = 312
        Top = 7
        Width = 87
        Height = 28
        Anchors = [akTop, akRight]
        Caption = #1581#1584#1601' '#1602#1587#1591' '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clNavy
        Font.Height = -12
        Font.Name = 'Tahoma'
        Font.Style = []
        ImageIndex = 90
        Images = dm.ImageList_MainNew
        NotesFont.Charset = DEFAULT_CHARSET
        NotesFont.Color = clWindowText
        NotesFont.Height = -11
        NotesFont.Name = 'Tahoma'
        NotesFont.Style = []
        ParentFont = False
        TabOrder = 3
        OnClick = xpBitBtn3Click
        Appearance.ColorChecked = 16111818
        Appearance.ColorCheckedTo = 16367008
        Appearance.ColorDisabled = 15921906
        Appearance.ColorDisabledTo = 15921906
        Appearance.ColorDown = 16111818
        Appearance.ColorDownTo = 16367008
        Appearance.ColorHot = 16117985
        Appearance.ColorHotTo = 16372402
        Appearance.ColorMirrorHot = 16107693
        Appearance.ColorMirrorHotTo = 16775412
        Appearance.ColorMirrorDown = 16102556
        Appearance.ColorMirrorDownTo = 16768988
        Appearance.ColorMirrorChecked = 16102556
        Appearance.ColorMirrorCheckedTo = 16768988
        Appearance.ColorMirrorDisabled = 11974326
        Appearance.ColorMirrorDisabledTo = 15921906
      end
      object xpBitBtn4: TAdvGlowButton
        Left = 402
        Top = 7
        Width = 75
        Height = 28
        Anchors = [akTop, akRight]
        Caption = #1608#1610#1585#1575#1610#1588
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clNavy
        Font.Height = -12
        Font.Name = 'Tahoma'
        Font.Style = []
        ImageIndex = 2
        Images = dm.ImageList_MainNew
        NotesFont.Charset = DEFAULT_CHARSET
        NotesFont.Color = clWindowText
        NotesFont.Height = -11
        NotesFont.Name = 'Tahoma'
        NotesFont.Style = []
        ParentFont = False
        TabOrder = 4
        OnClick = xpBitBtn4Click
        Appearance.ColorChecked = 16111818
        Appearance.ColorCheckedTo = 16367008
        Appearance.ColorDisabled = 15921906
        Appearance.ColorDisabledTo = 15921906
        Appearance.ColorDown = 16111818
        Appearance.ColorDownTo = 16367008
        Appearance.ColorHot = 16117985
        Appearance.ColorHotTo = 16372402
        Appearance.ColorMirrorHot = 16107693
        Appearance.ColorMirrorHotTo = 16775412
        Appearance.ColorMirrorDown = 16102556
        Appearance.ColorMirrorDownTo = 16768988
        Appearance.ColorMirrorChecked = 16102556
        Appearance.ColorMirrorCheckedTo = 16768988
        Appearance.ColorMirrorDisabled = 11974326
        Appearance.ColorMirrorDisabledTo = 15921906
      end
    end
    object Panel1: TPanel
      Left = 1
      Top = 1
      Width = 582
      Height = 120
      Align = alTop
      TabOrder = 2
      DesignSize = (
        582
        120)
      object Label1: TLabel
        Left = 523
        Top = 7
        Width = 52
        Height = 14
        Anchors = [akTop, akRight]
        Caption = #1588#1605#1575#1585#1607' '#1608#1575#1605
        FocusControl = DBEdit1
      end
      object Label2: TLabel
        Left = 523
        Top = 44
        Width = 52
        Height = 14
        Anchors = [akTop, akRight]
        Caption = #1578#1575#1585#1610#1582' '#1608#1575#1605
        FocusControl = DBEdit2
      end
      object Label3: TLabel
        Left = 523
        Top = 82
        Width = 52
        Height = 14
        Anchors = [akTop, akRight]
        Caption = #1605#1576#1604#1594' '#1608#1575#1605
        FocusControl = DBEdit3
      end
      object Label4: TLabel
        Left = 207
        Top = 8
        Width = 72
        Height = 14
        Anchors = [akTop, akRight]
        Caption = #1606#1608#1593' '#1608#1575#1605
        FocusControl = DBEdit4
      end
      object Label5: TLabel
        Left = 207
        Top = 45
        Width = 72
        Height = 14
        Anchors = [akTop, akRight]
        Caption = #1588#1605#1575#1585#1607' '#1581#1587#1575#1576
        FocusControl = DBEdit5
      end
      object Label6: TLabel
        Left = 207
        Top = 82
        Width = 72
        Height = 14
        Anchors = [akTop, akRight]
        Caption = #1593#1606#1608#1575#1606' '#1581#1587#1575#1576
        FocusControl = DBEdit6
      end
      object DBEdit1: TDBEdit
        Left = 304
        Top = 2
        Width = 215
        Height = 22
        Anchors = [akTop, akRight]
        BevelOuter = bvNone
        BevelKind = bkTile
        DataField = 'LoanNO'
        DataSource = dm.DReport_Loan
        Enabled = False
        Font.Charset = ARABIC_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        TabOrder = 0
      end
      object DBEdit2: TDBEdit
        Left = 304
        Top = 39
        Width = 215
        Height = 22
        Anchors = [akTop, akRight]
        BevelOuter = bvNone
        BevelKind = bkTile
        BiDiMode = bdLeftToRight
        DataField = 'LoanDate'
        DataSource = dm.DReport_Loan
        Enabled = False
        Font.Charset = ARABIC_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentBiDiMode = False
        ParentFont = False
        TabOrder = 1
      end
      object DBEdit3: TDBEdit
        Left = 304
        Top = 76
        Width = 214
        Height = 22
        Anchors = [akTop, akRight]
        BevelOuter = bvNone
        BevelKind = bkTile
        DataField = 'Amount'
        DataSource = dm.DSelect_Loan
        Enabled = False
        Font.Charset = ARABIC_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        TabOrder = 2
      end
      object DBEdit4: TDBEdit
        Left = 16
        Top = 2
        Width = 188
        Height = 22
        Anchors = [akLeft, akTop, akRight]
        BevelOuter = bvNone
        BevelKind = bkTile
        DataField = 'LoanTypeTitle'
        DataSource = dm.DReport_Loan
        Enabled = False
        Font.Charset = ARABIC_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        TabOrder = 3
      end
      object DBEdit5: TDBEdit
        Left = 16
        Top = 39
        Width = 188
        Height = 22
        Anchors = [akLeft, akTop, akRight]
        BevelOuter = bvNone
        BevelKind = bkTile
        DataField = 'Accountno'
        DataSource = dm.DReport_Loan
        Enabled = False
        Font.Charset = ARABIC_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        TabOrder = 4
      end
      object DBEdit6: TDBEdit
        Left = 16
        Top = 76
        Width = 187
        Height = 22
        Anchors = [akLeft, akTop, akRight]
        BevelOuter = bvNone
        BevelKind = bkTile
        DataField = 'AccountTitle'
        DataSource = dm.DReport_Loan
        Enabled = False
        Font.Charset = ARABIC_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        TabOrder = 5
      end
    end
  end
  inherited ahmadvand: TActionList
    Left = 37
    Top = 131
  end
  inherited Grid_PopupMenu: TPopupMenu
    Left = 55
    Top = 196
  end
  inherited qSetting: TADOQuery
    Left = 40
    Top = 256
  end
end
