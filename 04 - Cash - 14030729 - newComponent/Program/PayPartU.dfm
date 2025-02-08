inherited FrPayPart: TFrPayPart
  Left = 609
  Top = 201
  Width = 762
  Height = 623
  Caption = #1662#1585#1583#1575#1582#1578' '#1575#1602#1587#1575#1591
  Color = clBtnFace
  Font.Height = -12
  OldCreateOrder = True
  PixelsPerInch = 96
  TextHeight = 14
  object pnlMain: TPanel [0]
    Left = 0
    Top = 0
    Width = 746
    Height = 584
    Align = alClient
    ParentColor = True
    TabOrder = 0
    object Panel4: TPanel
      Left = 1
      Top = 542
      Width = 744
      Height = 41
      Align = alBottom
      TabOrder = 0
      DesignSize = (
        744
        41)
      object Label22: TLabel
        Left = 95
        Top = 4
        Width = 135
        Height = 14
        BiDiMode = bdLeftToRight
        Caption = '..\Reports\PerfrajRep.fr3'
        Font.Charset = ARABIC_CHARSET
        Font.Color = clNavy
        Font.Height = -12
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentBiDiMode = False
        ParentFont = False
      end
      object Label23: TLabel
        Left = 96
        Top = 20
        Width = 172
        Height = 14
        BiDiMode = bdLeftToRight
        Caption = '..\Reports\Bill_PaymentPrint.fr3'
        Font.Charset = ARABIC_CHARSET
        Font.Color = clNavy
        Font.Height = -12
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentBiDiMode = False
        ParentFont = False
      end
      object Label24: TLabel
        Left = 281
        Top = 5
        Width = 38
        Height = 14
        Caption = #1662#1600#1600#1600#1585#1601#1585#1575#1688':'
        Font.Charset = ARABIC_CHARSET
        Font.Color = clNavy
        Font.Height = -12
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
      end
      object Label25: TLabel
        Left = 276
        Top = 19
        Width = 53
        Height = 14
        Caption = #1670#1575#1662' '#1602#1576#1590':'
        Font.Charset = ARABIC_CHARSET
        Font.Color = clNavy
        Font.Height = -12
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
      end
      object DoBtn: TAdvGlowButton
        Left = 637
        Top = 6
        Width = 102
        Height = 28
        Hint = 'Post'
        Anchors = [akTop, akRight]
        Caption = #1608#1575#1585#1610#1586
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clNavy
        Font.Height = -12
        Font.Name = 'Tahoma'
        Font.Style = []
        ImageIndex = 239
        Images = dm.LetterImages_New
        NotesFont.Charset = DEFAULT_CHARSET
        NotesFont.Color = clWindowText
        NotesFont.Height = -11
        NotesFont.Name = 'Tahoma'
        NotesFont.Style = []
        ParentFont = False
        TabOrder = 0
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
        Left = 373
        Top = 6
        Width = 94
        Height = 28
        Anchors = [akTop, akRight]
        Caption = #1670#1575#1662' '#1602#1576#1590
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clNavy
        Font.Height = -12
        Font.Name = 'Tahoma'
        Font.Style = []
        ImageIndex = 209
        Images = dm.ImageList_MainNew
        NotesFont.Charset = DEFAULT_CHARSET
        NotesFont.Color = clWindowText
        NotesFont.Height = -11
        NotesFont.Name = 'Tahoma'
        NotesFont.Style = []
        ParentFont = False
        TabOrder = 1
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
        Enabled = False
      end
      object PerferazeBtn: TAdvGlowButton
        Left = 544
        Top = 6
        Width = 75
        Height = 28
        Anchors = [akTop, akRight]
        Caption = #1662#1585#1601#1585#1575#1688
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clNavy
        Font.Height = -12
        Font.Name = 'Tahoma'
        Font.Style = []
        ImageIndex = 260
        Images = dm.LetterImages_New
        NotesFont.Charset = DEFAULT_CHARSET
        NotesFont.Color = clWindowText
        NotesFont.Height = -11
        NotesFont.Name = 'Tahoma'
        NotesFont.Style = []
        ParentFont = False
        TabOrder = 2
        OnClick = PerferazeBtnClick
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
        Enabled = False
      end
      object DocPrintBtn: TAdvGlowButton
        Left = 468
        Top = 6
        Width = 75
        Height = 28
        Anchors = [akTop, akRight]
        Caption = #1670#1575#1662' '#1587#1606#1583
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clNavy
        Font.Height = -12
        Font.Name = 'Tahoma'
        Font.Style = []
        ImageIndex = 198
        Images = dm.ImageList_MainNew
        NotesFont.Charset = DEFAULT_CHARSET
        NotesFont.Color = clWindowText
        NotesFont.Height = -11
        NotesFont.Name = 'Tahoma'
        NotesFont.Style = []
        ParentFont = False
        TabOrder = 3
        OnClick = DocPrintBtnClick
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
        Enabled = False
      end
      object BitBtn1: TAdvGlowButton
        Left = 10
        Top = 6
        Width = 75
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
        TabOrder = 4
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
    object Panel3: TGroupBox
      Left = 1
      Top = 275
      Width = 744
      Height = 134
      Cursor = crHandPoint
      Align = alTop
      Caption = #1575#1591#1604#1575#1593#1575#1578' '#1608#1575#1605' '#1608' '#1570#1582#1585#1610#1606' '#1602#1587#1591
      Ctl3D = True
      Enabled = False
      Font.Charset = ARABIC_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentCtl3D = False
      ParentFont = False
      TabOrder = 1
      DesignSize = (
        744
        134)
      object Label4: TLabel
        Left = 659
        Top = 22
        Width = 80
        Height = 14
        Anchors = [akTop, akRight]
        Caption = #1588#1605#1575#1585#1607' '#1608#1575#1605
        FocusControl = DBEdit3
        Font.Charset = ARABIC_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
      end
      object Label6: TLabel
        Left = 144
        Top = 21
        Width = 57
        Height = 14
        Caption = #1606#1608#1593' '#1608#1575#1605
        FocusControl = DBEdit6
        Font.Charset = ARABIC_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
      end
      object Label9: TLabel
        Left = 464
        Top = 22
        Width = 60
        Height = 14
        Anchors = [akTop, akRight]
        Caption = #1578#1575#1585#1610#1582' '#1608#1575#1605
        FocusControl = DBEdit7
        Font.Charset = ARABIC_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
      end
      object Label10: TLabel
        Left = 659
        Top = 59
        Width = 80
        Height = 14
        Anchors = [akTop, akRight]
        Caption = #1578' '#1588#1585#1608#1593' '#1575#1602#1587#1575#1591
        FocusControl = DBEdit8
        Font.Charset = ARABIC_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
      end
      object Label11: TLabel
        Left = 307
        Top = 22
        Width = 51
        Height = 14
        Anchors = [akTop, akRight]
        Caption = #1605#1576#1604#1594' '#1608#1575#1605
        FocusControl = DBEdit9
        Font.Charset = ARABIC_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
      end
      object Label13: TLabel
        Left = 307
        Top = 59
        Width = 51
        Height = 14
        Anchors = [akTop, akRight]
        Caption = #1578#1575#1582#1610#1585
        FocusControl = DBEdit10
        Font.Charset = ARABIC_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
      end
      object Label14: TLabel
        Left = 662
        Top = 96
        Width = 70
        Height = 14
        Anchors = [akTop, akRight]
        Caption = #1578#1575#1585#1610#1582' '#1587#1585#1585#1587#1610#1583
        FocusControl = DBEdit11
        Font.Charset = ARABIC_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        WordWrap = True
      end
      object Label16: TLabel
        Left = 464
        Top = 96
        Width = 73
        Height = 14
        Anchors = [akTop, akRight]
        Caption = #1588#1605#1575#1585#1607' '#1602#1587#1591
        FocusControl = DBEdit13
        Font.Charset = ARABIC_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
      end
      object Label3: TLabel
        Left = 307
        Top = 95
        Width = 51
        Height = 17
        Anchors = [akTop, akRight]
        Caption = #1605#1576#1604#1594' '#1602#1587#1591
        FocusControl = DBEdit2
        Font.Charset = ARABIC_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
      end
      object Label20: TLabel
        Left = 464
        Top = 60
        Width = 73
        Height = 14
        Anchors = [akTop, akRight]
        Caption = #1588#1605#1575#1585#1607' '#1587#1585#1610#1575#1604' '#1602#1587#1591
        FocusControl = DBEdit4
        Font.Charset = ARABIC_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
      end
      object Label21: TLabel
        Left = 144
        Top = 97
        Width = 57
        Height = 14
        Caption = #1588#1605#1575#1585#1607' '#1670#1705
        FocusControl = DBEdit6
        Font.Charset = ARABIC_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
      end
      object DBEdit3: TDBEdit
        Left = 552
        Top = 15
        Width = 103
        Height = 22
        Anchors = [akTop, akRight]
        DataField = 'LoanNO'
        DataSource = dm.DSelect_LastPart
        Font.Charset = ARABIC_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        TabOrder = 0
      end
      object DBEdit6: TDBEdit
        Left = 8
        Top = 15
        Width = 135
        Height = 22
        DataField = 'LoanTypeTitle'
        DataSource = dm.DSelect_LastPart
        Font.Charset = ARABIC_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        TabOrder = 1
      end
      object DBEdit7: TDBEdit
        Left = 376
        Top = 15
        Width = 88
        Height = 22
        Anchors = [akTop, akRight]
        BiDiMode = bdLeftToRight
        DataField = 'LoanDate'
        DataSource = dm.DSelect_LastPart
        Font.Charset = ARABIC_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentBiDiMode = False
        ParentFont = False
        TabOrder = 2
      end
      object DBEdit8: TDBEdit
        Left = 552
        Top = 53
        Width = 104
        Height = 22
        Anchors = [akTop, akRight]
        BiDiMode = bdLeftToRight
        DataField = 'PartsBeginDate'
        DataSource = dm.DSelect_LastPart
        Font.Charset = ARABIC_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentBiDiMode = False
        ParentFont = False
        TabOrder = 3
      end
      object DBEdit9: TDBEdit
        Left = 207
        Top = 15
        Width = 99
        Height = 22
        Anchors = [akLeft, akTop, akRight]
        DataField = 'LoanAmount'
        DataSource = dm.DSelect_LastPart
        Font.Charset = ARABIC_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        TabOrder = 4
      end
      object DBEdit10: TDBEdit
        Left = 207
        Top = 53
        Width = 99
        Height = 22
        Anchors = [akLeft, akTop, akRight]
        DataField = 'delay'
        DataSource = dm.DSelect_LastPart
        Font.Charset = ARABIC_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        TabOrder = 5
      end
      object DBEdit11: TDBEdit
        Left = 552
        Top = 91
        Width = 104
        Height = 22
        Anchors = [akTop, akRight]
        BiDiMode = bdLeftToRight
        DataField = 'MatureDate'
        DataSource = dm.DSelect_LastPart
        Font.Charset = ARABIC_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentBiDiMode = False
        ParentFont = False
        TabOrder = 6
      end
      object DBEdit13: TDBEdit
        Left = 376
        Top = 90
        Width = 88
        Height = 22
        Anchors = [akTop, akRight]
        DataField = 'OrderNo'
        DataSource = dm.DSelect_LastPart
        Font.Charset = ARABIC_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        TabOrder = 7
      end
      object DBEdit2: TDBEdit
        Left = 207
        Top = 91
        Width = 99
        Height = 22
        Anchors = [akLeft, akTop, akRight]
        DataField = 'Amount'
        DataSource = dm.DSelect_LastPart
        Font.Charset = ARABIC_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        TabOrder = 8
      end
      object DBEdit4: TDBEdit
        Left = 376
        Top = 53
        Width = 88
        Height = 22
        Anchors = [akTop, akRight]
        DataField = 'ForcePaymentID'
        DataSource = dm.DSelect_LastPart
        Font.Charset = ARABIC_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        TabOrder = 9
      end
      object DBEdit16: TDBEdit
        Left = 8
        Top = 91
        Width = 135
        Height = 22
        DataField = 'NoteNo'
        DataSource = dm.DSelect_LastPart
        Font.Charset = ARABIC_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        TabOrder = 10
      end
    end
    object Panel2: TPanel
      Left = 1
      Top = 1
      Width = 744
      Height = 39
      Align = alTop
      Font.Charset = ARABIC_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentColor = True
      ParentFont = False
      TabOrder = 2
      DesignSize = (
        744
        39)
      object Label1: TLabel
        Left = 683
        Top = 10
        Width = 52
        Height = 14
        Anchors = [akTop, akRight]
        Caption = #1588#1605#1575#1585#1607' '#1608#1575#1605
        Font.Charset = ARABIC_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
      end
      object SearchEdit: TEdit
        Left = 417
        Top = 0
        Width = 260
        Height = 21
        Anchors = [akTop, akRight]
        TabOrder = 0
        OnExit = TEditExit
        OnKeyDown = SearchEditKeyDown
      end
    end
    object Panel1: TPanel
      Left = 1
      Top = 424
      Width = 744
      Height = 118
      Align = alClient
      BevelOuter = bvNone
      Ctl3D = True
      Font.Charset = ARABIC_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentColor = True
      ParentCtl3D = False
      ParentFont = False
      TabOrder = 3
      OnResize = Panel1Resize
      DesignSize = (
        744
        118)
      object Label5: TLabel
        Left = 361
        Top = 8
        Width = 21
        Height = 14
        Anchors = [akTop, akRight]
        Caption = #1605#1576#1604#1594
      end
      object StatusLabel: TLabel
        Left = 664
        Top = 8
        Width = 73
        Height = 14
        Alignment = taRightJustify
        Anchors = [akTop, akRight]
        Caption = #1608#1575#1585#1610#1586' '#1576#1607' '#1581#1587#1575#1576
      end
      object Label7: TLabel
        Left = 664
        Top = 46
        Width = 73
        Height = 14
        Anchors = [akTop, akRight]
        Caption = #1578#1575#1585#1610#1582
      end
      object Label8: TLabel
        Left = 470
        Top = 46
        Width = 34
        Height = 14
        Anchors = [akTop, akRight]
        Caption = #1587#1575#1593#1578
      end
      object Label12: TLabel
        Left = 23
        Top = 3
        Width = 207
        Height = 30
        AutoSize = False
        Font.Charset = ARABIC_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        WordWrap = True
      end
      object Label15: TLabel
        Left = 664
        Top = 83
        Width = 73
        Height = 14
        Anchors = [akTop, akRight]
        Caption = #1578#1608#1590#1610#1581
      end
      object Label17: TLabel
        Left = 352
        Top = 45
        Width = 30
        Height = 14
        Anchors = [akTop, akRight]
        Caption = #1580#1585#1610#1605#1607
      end
      object Label18: TLabel
        Left = 148
        Top = 84
        Width = 42
        Height = 14
        Caption = #1588' '#1587#1606#1583
        Font.Charset = ARABIC_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
      end
      object Label19: TLabel
        Left = 165
        Top = 46
        Width = 23
        Height = 14
        Caption = #1587#1608#1583
      end
      object Label26: TLabel
        Left = 191
        Top = 7
        Width = 42
        Height = 14
        Caption = 'Label26'
      end
      object DBEdit1: TDBEdit
        Left = 235
        Top = 2
        Width = 117
        Height = 22
        Anchors = [akLeft, akTop, akRight]
        Color = clWhite
        DataField = 'Amount'
        DataSource = dm.DSelect_Payment
        Font.Charset = ARABIC_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        ReadOnly = True
        TabOrder = 0
        OnChange = DBEdit1Change
        OnEnter = TEditEnter
        OnExit = DBEdit1Exit
      end
      object DBEdit5: TDBEdit
        Left = 392
        Top = 39
        Width = 73
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
        ReadOnly = True
        TabOrder = 1
        OnEnter = TEditEnter
        OnExit = TEditExit
      end
      object MajorAccount: TDBLookupComboBox
        Left = 391
        Top = 2
        Width = 269
        Height = 22
        Anchors = [akTop, akRight]
        BiDiMode = bdLeftToRight
        DataField = 'DebtorAccountID'
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
        TabOrder = 2
      end
      object DBEdit12: TDBEdit
        Left = 224
        Top = 78
        Width = 436
        Height = 22
        Anchors = [akLeft, akTop, akRight]
        DataField = 'Comment'
        DataSource = dm.DSelect_LastPart
        Font.Charset = ARABIC_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        TabOrder = 3
      end
      object EAmerce: TYAmountEdit
        Left = 235
        Top = 40
        Width = 117
        Height = 22
        Anchors = [akLeft, akTop, akRight]
        Font.Charset = ARABIC_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        TabOrder = 4
        OnChange = EAmerceChange
      end
      object DBEdit14: TDBEdit
        Left = 18
        Top = 78
        Width = 130
        Height = 22
        Ctl3D = True
        DataField = 'DocumentNo'
        DataSource = dm.DSelect_Payment
        Font.Charset = ARABIC_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentCtl3D = False
        ParentFont = False
        ReadOnly = True
        TabOrder = 5
        OnEnter = TEditEnter
        OnExit = TEditExit
      end
      object DBEdit15: TDBEdit
        Left = 18
        Top = 40
        Width = 130
        Height = 22
        DataField = 'InterestAmount'
        DataSource = dm.DSelect_LastPart
        Font.Charset = ARABIC_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        TabOrder = 6
        OnChange = EAmerceChange
      end
      object MonthlyBeginDate: TSolarDatePicker
        Left = 517
        Top = 40
        Width = 143
        Height = 22
        Anchors = [akTop, akRight]
        About = 'Created by : Mohamad Khorsandi'
        BiDiMode = bdLeftToRight
        Color = clWhite
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        TabOrder = 7
        Enabled = True
        OnEnter = TEditEnter
        OnExit = DBEdit4Exit
        DateKind = dkSolar
        CheckInputOnExit = False
        Divider = dSlash
        ShowToDay = True
        MonthObject = moPopupMenu
        Glyph = gtCalendar
        ShowDefaultDate = False
        AutoCheck = False
        AutoDeleteDelimiter = False
        EnabledDays = [mcSaturday, mcSunday, mcMonday, mcTuesday, mcWednesday, mcThursday, mcFriday]
        MaskEnabled = False
        ColorCaptionStart = 13158600
        ColorCaptionStop = clWhite
        ColorBodyStart = clWhite
        ColorBodyStop = clWhite
        ColorTodayLine = clBlack
        ColorSelectBrush = 14474460
        ColorDisableMonth = clGray
        ColorVacationDay = clRed
        ColorNormalDay = clBlack
        ColorStyle = csWhiteGray
        ButtonStyle = bsRound
        DataSource = dm.DSelect_Payment
        DataField = 'Date'
        DataFieldType = dftSolar
        DataFieldAutoSaveModified = False
      end
    end
    object PAccountDeatil: TPanel
      Left = 1
      Top = 40
      Width = 744
      Height = 235
      Align = alTop
      BevelOuter = bvNone
      Font.Charset = ARABIC_CHARSET
      Font.Color = clWindowText
      Font.Height = -8
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentColor = True
      ParentFont = False
      TabOrder = 4
    end
    object FinancialNotePanel: TYCheckGroupBox
      Left = 1
      Top = 409
      Width = 744
      Height = 15
      Align = alTop
      Caption = '     '#1575#1591#1604#1575#1593#1575#1578' '#1670#1705' '#1610#1575' '#1581#1608#1575#1604#1607'    '
      Font.Charset = ARABIC_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 5
      MinHeight = 17
      MaxHeight = 170
    end
  end
  object ActionManager1: TActionManager
    Left = 197
    Top = 52
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
  object RepPopMnu: TPopupMenu
    MenuAnimation = [maRightToLeft, maTopToBottom]
    TrackButton = tbLeftButton
    Left = 24
    Top = 60
    object NShow: TMenuItem
      AutoHotkeys = maAutomatic
      Caption = #1662#1610#1588' '#1606#1605#1575#1610#1588' '#1608' '#1670#1575#1662'   F9'
      OnClick = NShowClick
    end
    object NPrint: TMenuItem
      Tag = 1
      AutoHotkeys = maAutomatic
      Caption = #1670#1575#1662' '#1576#1583#1608#1606' '#1662#1610#1588' '#1606#1605#1575#1610#1588'   Ctrl+F9'
      OnClick = NShowClick
    end
    object NDesign: TMenuItem
      Tag = 2
      AutoHotkeys = maAutomatic
      Caption = #1591#1585#1575#1581#1610' '#1711#1586#1575#1585#1588'   Alt+F9'
      OnClick = NShowClick
    end
    object NOldVersion: TMenuItem
      Caption = #1662#1585#1601#1585#1575#1688' '#1608#1585#1688#1606' '#1602#1583#1610#1605
      OnClick = NShowClick
    end
    object N8: TMenuItem
      Caption = '-'
    end
    object N11: TMenuItem
      Caption = #1591#1585#1575#1581#1610' '#1662#1610#1588' '#1601#1585#1590
      OnClick = N11Click
    end
  end
  object PopupMenuBill: TPopupMenu
    MenuAnimation = [maRightToLeft, maTopToBottom]
    TrackButton = tbLeftButton
    Left = 152
    Top = 108
    object BillShow: TMenuItem
      AutoHotkeys = maAutomatic
      Caption = #1662#1610#1588' '#1606#1605#1575#1610#1588' '#1608' '#1670#1575#1662'   F9'
      OnClick = BillShowClick
    end
    object BillPrint: TMenuItem
      Tag = 1
      AutoHotkeys = maAutomatic
      Caption = #1670#1575#1662' '#1576#1583#1608#1606' '#1662#1610#1588' '#1606#1605#1575#1610#1588'   Ctrl+F9'
      OnClick = BillShowClick
    end
    object BillDesign: TMenuItem
      Tag = 2
      AutoHotkeys = maAutomatic
      Caption = #1591#1585#1575#1581#1610' '#1711#1586#1575#1585#1588'   Alt+F9'
      OnClick = BillShowClick
    end
    object N1: TMenuItem
      Caption = #1670#1575#1662' '#1602#1576#1590' '#1608#1585#1688#1606' '#1602#1583#1610#1605
      OnClick = N1Click
    end
    object MenuItem5: TMenuItem
      Caption = '-'
    end
    object MenuItem6: TMenuItem
      Caption = #1591#1585#1575#1581#1610' '#1662#1610#1588' '#1601#1585#1590
      OnClick = MenuItem6Click
    end
  end
end
