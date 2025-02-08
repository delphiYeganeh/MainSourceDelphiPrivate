inherited FrEditPayment: TFrEditPayment
  Left = 693
  Top = 225
  Width = 796
  Height = 586
  Caption = ' '#1576#1585#1583#1575#1588#1578' '#1575#1586' '#1581#1587#1575#1576
  Font.Height = -12
  OldCreateOrder = True
  PixelsPerInch = 96
  TextHeight = 14
  object pnlMain: TPanel [0]
    Left = 0
    Top = 0
    Width = 780
    Height = 547
    Align = alClient
    ParentColor = True
    TabOrder = 0
    object Label2: TLabel
      Left = 542
      Top = 147
      Width = 69
      Height = 14
      Caption = #1570#1582#1585#1610#1606' '#1605#1576#1575#1583#1604#1575#1578
    end
    object Panel2: TPanel
      Left = 1
      Top = 505
      Width = 778
      Height = 41
      Align = alBottom
      TabOrder = 0
      DesignSize = (
        778
        41)
      object BitBtn1: TAdvGlowButton
        Left = 14
        Top = 7
        Width = 95
        Height = 28
        Action = AExit
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
        TabOrder = 0
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
      object DoBtn: TAdvGlowButton
        Left = 383
        Top = 7
        Width = 95
        Height = 28
        Hint = 'Post'
        Anchors = [akTop, akRight]
        Caption = #1584#1582#1610#1585#1607
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clNavy
        Font.Height = -12
        Font.Name = 'Tahoma'
        Font.Style = []
        ImageIndex = 59
        Images = dm.ImageList_MainNew
        NotesFont.Charset = DEFAULT_CHARSET
        NotesFont.Color = clWindowText
        NotesFont.Height = -11
        NotesFont.Name = 'Tahoma'
        NotesFont.Style = []
        ParentFont = False
        TabOrder = 1
        OnClick = DoBtnClick
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
      object PrintBtn: TAdvGlowButton
        Left = 481
        Top = 7
        Width = 95
        Height = 28
        Anchors = [akTop, akRight]
        Caption = #1670#1575#1662' '#1602#1576#1590
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clNavy
        Font.Height = -12
        Font.Name = 'Tahoma'
        Font.Style = []
        ImageIndex = 163
        Images = dm.LetterImages_New
        NotesFont.Charset = DEFAULT_CHARSET
        NotesFont.Color = clWindowText
        NotesFont.Height = -11
        NotesFont.Name = 'Tahoma'
        NotesFont.Style = []
        ParentFont = False
        TabOrder = 2
        OnClick = PrintBtnClick
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
        Left = 677
        Top = 7
        Width = 95
        Height = 28
        Anchors = [akTop, akRight]
        Caption = #1662#1585#1601#1585#1575#1688
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clNavy
        Font.Height = -12
        Font.Name = 'Tahoma'
        Font.Style = []
        ImageIndex = 252
        Images = dm.LetterImages_New
        NotesFont.Charset = DEFAULT_CHARSET
        NotesFont.Color = clWindowText
        NotesFont.Height = -11
        NotesFont.Name = 'Tahoma'
        NotesFont.Style = []
        ParentFont = False
        TabOrder = 3
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
      object xpBitBtn2: TAdvGlowButton
        Left = 579
        Top = 7
        Width = 95
        Height = 28
        Anchors = [akTop, akRight]
        Caption = #1670#1575#1662' '#1587#1606#1583
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clNavy
        Font.Height = -12
        Font.Name = 'Tahoma'
        Font.Style = []
        ImageIndex = 162
        Images = dm.LetterImages_New
        NotesFont.Charset = DEFAULT_CHARSET
        NotesFont.Color = clWindowText
        NotesFont.Height = -11
        NotesFont.Name = 'Tahoma'
        NotesFont.Style = []
        ParentFont = False
        TabOrder = 4
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
      object btnCancel: TAdvGlowButton
        Left = 284
        Top = 6
        Width = 95
        Height = 28
        Hint = 'Post'
        Anchors = [akTop, akRight]
        Caption = #1575#1606#1589#1585#1575#1601
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clNavy
        Font.Height = -12
        Font.Name = 'Tahoma'
        Font.Style = []
        ImageIndex = 1
        Images = dm.ImageList_MainNew
        NotesFont.Charset = DEFAULT_CHARSET
        NotesFont.Color = clWindowText
        NotesFont.Height = -11
        NotesFont.Name = 'Tahoma'
        NotesFont.Style = []
        ParentFont = False
        TabOrder = 5
        OnClick = btnCancelClick
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
    object FinancialNotePanel: TPanel
      Left = 1
      Top = 355
      Width = 778
      Height = 150
      Align = alBottom
      ParentColor = True
      TabOrder = 1
    end
    object Panel1: TPanel
      Left = 1
      Top = 236
      Width = 778
      Height = 119
      Align = alBottom
      Font.Charset = ARABIC_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentColor = True
      ParentFont = False
      TabOrder = 2
      DesignSize = (
        778
        119)
      object LblAmount: TLabel
        Left = 434
        Top = 7
        Width = 21
        Height = 14
        Anchors = [akTop, akRight]
        Caption = #1605#1576#1604#1594
      end
      object StatusLabel: TLabel
        Left = 691
        Top = 7
        Width = 73
        Height = 14
        Alignment = taRightJustify
        Anchors = [akTop, akRight]
        Caption = #1608#1575#1585#1610#1586' '#1576#1607' '#1581#1587#1575#1576
      end
      object Label7: TLabel
        Left = 742
        Top = 46
        Width = 22
        Height = 14
        Anchors = [akTop, akRight]
        Caption = #1578#1575#1585#1610#1582
      end
      object Label8: TLabel
        Left = 427
        Top = 46
        Width = 34
        Height = 14
        Anchors = [akTop, akRight]
        Caption = #1587#1575#1593#1578
      end
      object Label10: TLabel
        Left = 721
        Top = 85
        Width = 43
        Height = 14
        Anchors = [akTop, akRight]
        Caption = #1578#1608#1590#1610#1581#1575#1578
      end
      object Label12: TLabel
        Left = 10
        Top = 9
        Width = 235
        Height = 96
        Anchors = [akTop, akRight]
        AutoSize = False
        Caption = #1585#1610#1575#1604
        Font.Charset = ARABIC_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        WordWrap = True
      end
      object DBEAmount: TDBEdit
        Left = 256
        Top = 1
        Width = 168
        Height = 22
        Anchors = [akTop, akRight]
        Color = clWhite
        DataField = 'Amount'
        DataSource = dm.DSelect_Payment
        Font.Charset = ARABIC_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        TabOrder = 0
        OnChange = DBEAmountChange
        OnEnter = TEditEnter
        OnExit = TEditExit
      end
      object DBEdit5: TDBEdit
        Left = 329
        Top = 39
        Width = 94
        Height = 22
        Anchors = [akTop, akRight]
        DataField = 'Time'
        DataSource = dm.DSelect_Payment
        Font.Charset = ARABIC_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        TabOrder = 1
        OnEnter = TEditEnter
        OnExit = TEditExit
      end
      object DBEdit8: TDBEdit
        Left = 260
        Top = 78
        Width = 430
        Height = 22
        Anchors = [akTop, akRight]
        BiDiMode = bdRightToLeft
        Color = clWhite
        DataField = 'Comment'
        DataSource = dm.DSelect_Payment
        Font.Charset = ARABIC_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentBiDiMode = False
        ParentFont = False
        TabOrder = 2
        OnEnter = TEditEnter
        OnExit = TEditExit
      end
      object MajorAccount: TDBLookupComboBox
        Left = 468
        Top = 1
        Width = 220
        Height = 22
        Anchors = [akTop, akRight]
        BiDiMode = bdLeftToRight
        DataField = 'CreditorAccountID'
        DataSource = dm.DSelect_Payment
        Font.Charset = ARABIC_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Tahoma'
        Font.Style = []
        KeyField = 'AccountID'
        ListField = 'AccountTitle'
        ListSource = dm.DSelect_Cash_Accounts
        ParentBiDiMode = False
        ParentFont = False
        TabOrder = 3
      end
      object DBEdit1: TDBEdit
        Left = 468
        Top = 39
        Width = 220
        Height = 22
        Anchors = [akTop, akRight]
        DataField = 'Date'
        DataSource = dm.DSelect_Payment
        Font.Charset = ARABIC_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        TabOrder = 4
      end
    end
    object PAccountDeatil: TPanel
      Left = 1
      Top = 1
      Width = 778
      Height = 235
      Align = alClient
      Font.Charset = ARABIC_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 3
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
