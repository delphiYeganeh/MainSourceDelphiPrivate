inherited FrDividBenefit_New: TFrDividBenefit_New
  Left = 490
  Top = 259
  Width = 1044
  Height = 605
  Caption = #1575#1593#1591#1575#1610' '#1587#1608#1583' '#1587#1662#1585#1583#1607
  Font.Height = -12
  OldCreateOrder = True
  PixelsPerInch = 96
  TextHeight = 14
  object pnlMain: TPanel [0]
    Left = 0
    Top = 0
    Width = 1028
    Height = 566
    Align = alClient
    ParentColor = True
    TabOrder = 0
    object YDBGrid1: TYDBGrid
      Left = 1
      Top = 105
      Width = 1026
      Height = 418
      Cursor = crHandPoint
      Align = alClient
      DataSource = dm.DPAY_BENEFIT_New
      Font.Charset = ARABIC_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Tahoma'
      Font.Style = []
      Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit]
      ParentFont = False
      TabOrder = 0
      TitleFont.Charset = ARABIC_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -12
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
      InvertFarsiDate = True
      TitleSort = True
      AutoInsert = False
      FooterFields = 'Count'
      Columns = <
        item
          Alignment = taCenter
          Expanded = False
          FieldName = 'AccountNO'
          Title.Alignment = taCenter
          Title.Caption = #1588#1605#1575#1585#1607' '#1581#1587#1575#1576
          Width = 237
          Visible = True
        end
        item
          Alignment = taCenter
          Expanded = False
          FieldName = 'AccountTitle'
          Title.Alignment = taCenter
          Title.Caption = #1593#1606#1608#1575#1606' '#1581#1587#1575#1576
          Width = 219
          Visible = True
        end
        item
          Alignment = taCenter
          Expanded = False
          FieldName = 'AnnualAvragePrice'
          Title.Alignment = taCenter
          Title.Caption = #1605#1610#1575#1606#1711#1610#1606' '
          Width = 193
          Visible = True
        end
        item
          Alignment = taCenter
          Expanded = False
          FieldName = 'InsertedBenefitPrice'
          Title.Alignment = taCenter
          Title.Caption = #1605#1576#1604#1594' '#1587#1608#1583' '#1605#1581#1575#1587#1576#1607' '#1588#1583#1607
          Width = 222
          Visible = True
        end
        item
          Expanded = False
          Title.Alignment = taCenter
          Title.Caption = #1588#1605#1575#1585#1607' '#1587#1606#1583
          Visible = False
        end
        item
          Expanded = False
          Title.Alignment = taCenter
          Title.Caption = #1578#1575#1585#1610#1582' '#1587#1662#1585#1583#1607' '#1711#1584#1575#1585#1610
          Visible = False
        end
        item
          Expanded = False
          Title.Alignment = taCenter
          Title.Caption = #1583#1585#1589#1583' '#1575#1593#1605#1575#1604' '#1588#1583#1607
          Visible = False
        end>
    end
    object Panel2: TPanel
      Left = 1
      Top = 1
      Width = 1026
      Height = 104
      Align = alTop
      BevelOuter = bvNone
      TabOrder = 1
      DesignSize = (
        1026
        104)
      object Label3: TLabel
        Left = 662
        Top = 28
        Width = 28
        Height = 14
        Anchors = [akTop, akRight]
        Caption = #1587#1575#1604':'
        Font.Charset = ARABIC_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
      end
      object Label1: TLabel
        Left = 939
        Top = 29
        Width = 76
        Height = 14
        Anchors = [akTop, akRight]
        Caption = #1588#1605#1575#1585#1607' '#1581#1587#1575#1576':'
        Font.Charset = ARABIC_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
      end
      object Label2: TLabel
        Left = 532
        Top = 28
        Width = 31
        Height = 14
        Anchors = [akTop, akRight]
        Caption = #1587#1608#1583' :'
        Font.Charset = ARABIC_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
      end
      object Label4: TLabel
        Left = 461
        Top = 28
        Width = 12
        Height = 14
        Anchors = [akTop, akRight]
        Caption = '%'
        Font.Charset = ARABIC_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
      end
      object Label5: TLabel
        Left = 0
        Top = 0
        Width = 1026
        Height = 14
        Align = alTop
        Alignment = taCenter
        Caption = 
          #1705#1575#1585#1576#1585' '#1711#1585#1575#1605#1610' : '#1587#1608#1583' '#1587#1662#1585#1583#1607' '#1711#1584#1575#1585#1610' '#1585#1575' '#1576#1607' '#1589#1608#1585#1578' '#1587#1575#1604#1610#1575#1606#1607' '#1608' '#1583#1585' '#1570#1582#1585' '#1587#1575#1604' '#1662#1585 +
          #1583#1575#1582#1578' '#1606#1605#1575#1610#1610#1583'.'
        Font.Charset = ARABIC_CHARSET
        Font.Color = clRed
        Font.Height = -12
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object SpeedButton6: TAdvGlowButton
        Left = 313
        Top = 28
        Width = 83
        Height = 28
        Caption = #1580#1587#1578#1580#1608
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = 'Tahoma'
        Font.Style = []
        ImageIndex = 35
        Images = dm.ImageList_MainNew
        NotesFont.Charset = DEFAULT_CHARSET
        NotesFont.Color = clWindowText
        NotesFont.Height = -11
        NotesFont.Name = 'Tahoma'
        NotesFont.Style = []
        ParentFont = False
        TabOrder = 3
        OnClick = SpeedButton6Click
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
      object SpeedButton2: TAdvGlowButton
        Left = 141
        Top = 28
        Width = 168
        Height = 28
        Caption = #1606#1605#1575#1610#1588' '#1587#1608#1583' '#1662#1585#1583#1575#1582#1578' '#1588#1583#1607
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = 'Tahoma'
        Font.Style = []
        ImageIndex = 14
        Images = dm.ImageList_MainNew
        NotesFont.Charset = DEFAULT_CHARSET
        NotesFont.Color = clWindowText
        NotesFont.Height = -11
        NotesFont.Name = 'Tahoma'
        NotesFont.Style = []
        ParentFont = False
        TabOrder = 4
        OnClick = SpeedButton2Click
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
      object SpeedButton3: TAdvGlowButton
        Left = 6
        Top = 68
        Width = 187
        Height = 28
        Caption = #1581#1584#1601' '#1587#1608#1583' '#1587#1662#1585#1583#1607' '#1662#1585#1583#1575#1582#1578' '#1588#1583#1607
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = 'Tahoma'
        Font.Style = []
        ImageIndex = 181
        Images = dm.LetterImages_New
        NotesFont.Charset = DEFAULT_CHARSET
        NotesFont.Color = clWindowText
        NotesFont.Height = -11
        NotesFont.Name = 'Tahoma'
        NotesFont.Style = []
        ParentFont = False
        TabOrder = 5
        OnClick = SpeedButton3Click
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
      object btnSoodSeporde: TAdvGlowButton
        Left = 3
        Top = 29
        Width = 136
        Height = 28
        Caption = #1711#1586#1575#1585#1588' '#1587#1608#1583' '#1587#1662#1585#1583#1607
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = 'Tahoma'
        Font.Style = []
        ImageIndex = 176
        Images = dm.ImageList_MainNew
        NotesFont.Charset = DEFAULT_CHARSET
        NotesFont.Color = clWindowText
        NotesFont.Height = -11
        NotesFont.Name = 'Tahoma'
        NotesFont.Style = []
        ParentFont = False
        TabOrder = 6
        OnClick = btnSoodSepordeClick
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
      object SearchEdit: TEdit
        Left = 712
        Top = 22
        Width = 226
        Height = 22
        Anchors = [akTop, akRight]
        Font.Charset = ARABIC_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        TabOrder = 0
        OnExit = TEditExit
      end
      object MEYear: TMaskEdit
        Tag = 1
        Left = 600
        Top = 22
        Width = 55
        Height = 22
        Anchors = [akTop, akRight]
        BiDiMode = bdLeftToRight
        EditMask = '1000;1;_'
        Font.Charset = ARABIC_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Tahoma'
        Font.Style = []
        MaxLength = 4
        ParentBiDiMode = False
        ParentFont = False
        TabOrder = 1
        Text = '1   '
      end
      object EdtBenefitPercent: TEdit
        Left = 476
        Top = 22
        Width = 53
        Height = 22
        Anchors = [akTop, akRight]
        Font.Charset = ARABIC_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        TabOrder = 2
        OnKeyPress = EdtBenefitPercentKeyPress
      end
    end
    object Panel1: TPanel
      Left = 1
      Top = 523
      Width = 1026
      Height = 42
      Align = alBottom
      TabOrder = 2
      DesignSize = (
        1026
        42)
      object lblTitle: TLabel
        Left = 696
        Top = 12
        Width = 141
        Height = 14
        Anchors = [akTop, akRight]
        Caption = #1605#1580#1605#1608#1593' '#1587#1608#1583' '#1662#1585#1583#1575#1582#1578' '#1588#1583#1607' : '
        Visible = False
      end
      object lblSum: TLabel
        Left = 650
        Top = 12
        Width = 35
        Height = 14
        Anchors = [akTop, akRight]
        Caption = '13241'
        Visible = False
      end
      object SpeedButton1: TAdvGlowButton
        Left = 923
        Top = 6
        Width = 95
        Height = 28
        Anchors = [akTop, akRight]
        Caption = #1575#1593#1591#1575#1610' '#1587#1608#1583
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = 'Tahoma'
        Font.Style = []
        ImageIndex = 179
        Images = dm.LetterImages_New
        NotesFont.Charset = DEFAULT_CHARSET
        NotesFont.Color = clWindowText
        NotesFont.Height = -11
        NotesFont.Name = 'Tahoma'
        NotesFont.Style = []
        ParentFont = False
        TabOrder = 1
        OnClick = SpeedButton1Click
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
      object Button5: TAdvGlowButton
        Left = 10
        Top = 7
        Width = 87
        Height = 28
        Cancel = True
        Caption = #1582#1585#1608#1580
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
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
        TabOrder = 0
        OnClick = Button5Click
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
  end
  inherited ahmadvand: TActionList
    Left = 109
    Top = 99
  end
  inherited Grid_PopupMenu: TPopupMenu
    Left = 93
    Top = 178
  end
  inherited qSetting: TADOQuery
    Top = 104
  end
  object Report_CashAccount: TADOStoredProc
    Connection = dm.YeganehConnection
    CursorType = ctStatic
    CommandTimeout = 600
    ProcedureName = 'Report_CashAccount'
    Parameters = <
      item
        Name = '@RETURN_VALUE'
        DataType = ftInteger
        Direction = pdReturnValue
        Precision = 10
        Value = 0
      end
      item
        Name = '@where'
        Attributes = [paNullable]
        DataType = ftString
        Size = 1000
        Value = '  '
      end
      item
        Name = '@IsLoan'
        DataType = ftInteger
        Value = 0
      end>
    Left = 198
    Top = 149
    object Report_CashAccountBankTitle: TWideStringField
      Alignment = taRightJustify
      FieldName = 'BankTitle'
      Size = 50
    end
    object Report_CashAccountAccountID: TAutoIncField
      FieldName = 'AccountID'
      ReadOnly = True
    end
    object Report_CashAccountAccountTitle: TWideStringField
      Alignment = taRightJustify
      FieldName = 'AccountTitle'
      Size = 100
    end
    object Report_CashAccountAccountNo: TStringField
      Alignment = taRightJustify
      FieldName = 'AccountNo'
    end
    object Report_CashAccountAccountDate: TStringField
      FieldName = 'AccountDate'
      EditMask = #8207'!1499/99/99;1;_'
      FixedChar = True
      Size = 10
    end
    object Report_CashAccountIsActive: TBooleanField
      Alignment = taRightJustify
      FieldName = 'IsActive'
    end
    object Report_CashAccountAccountTypeID: TWordField
      FieldName = 'AccountTypeID'
    end
    object Report_CashAccountAccountTypeTitle: TWideStringField
      Alignment = taRightJustify
      FieldName = 'AccountTypeTitle'
      Size = 50
    end
    object Report_CashAccountAbs_Balance: TYLargeIntField
      FieldKind = fkCalculated
      FieldName = 'Abs_Balance'
      Calculated = True
    end
    object Report_CashAccountbalance: TYLargeIntField
      FieldName = 'balance'
      ReadOnly = True
    end
    object Report_CashAccountDebitStatusTitle: TStringField
      Alignment = taRightJustify
      FieldName = 'DebitStatusTitle'
      ReadOnly = True
      Size = 9
    end
  end
end
