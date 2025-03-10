inherited FrAddAccount: TFrAddAccount
  Top = 271
  Width = 436
  Height = 290
  Caption = #1578#1593#1585#1610#1601' '#1581#1587#1575#1576
  Font.Height = -12
  OldCreateOrder = True
  PixelsPerInch = 96
  TextHeight = 14
  object pnlMain: TPanel [0]
    Left = 0
    Top = 0
    Width = 420
    Height = 251
    Align = alClient
    ParentColor = True
    TabOrder = 0
    object Panel2: TPanel
      Left = 1
      Top = 1
      Width = 418
      Height = 208
      Align = alClient
      TabOrder = 0
      DesignSize = (
        418
        208)
      object Label2: TLabel
        Left = 335
        Top = 87
        Width = 72
        Height = 14
        Anchors = [akTop, akRight]
        Caption = #1593#1606#1608#1575#1606
        Font.Charset = ARABIC_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
      end
      object Label1: TLabel
        Left = 335
        Top = 49
        Width = 72
        Height = 14
        Anchors = [akTop, akRight]
        Caption = #1588#1605#1575#1585#1607' '#1581#1587#1575#1576
        Font.Charset = ARABIC_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
      end
      object Label3: TLabel
        Left = 335
        Top = 124
        Width = 72
        Height = 14
        Anchors = [akTop, akRight]
        Caption = #1578#1575#1585#1610#1582' '#1575#1601#1578#1578#1575#1581
        Font.Charset = ARABIC_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
      end
      object Label5: TLabel
        Left = 335
        Top = 12
        Width = 72
        Height = 14
        Anchors = [akTop, akRight]
        Caption = #1606#1608#1593' '#1581#1587#1575#1576
        FocusControl = DBLookupComboBox2
        Font.Charset = ARABIC_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
      end
      object DBEdit2: TDBEdit
        Left = 13
        Top = 80
        Width = 321
        Height = 22
        Anchors = [akLeft, akTop, akRight]
        DataField = 'AccountTitle'
        DataSource = dm.DSelect_Account
        DragCursor = crDefault
        Font.Charset = ARABIC_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        TabOrder = 0
        OnEnter = TEditEnter
        OnExit = TEditExit
      end
      object DBEdit1: TDBEdit
        Left = 13
        Top = 43
        Width = 321
        Height = 22
        Anchors = [akLeft, akTop, akRight]
        DataField = 'AccountNo'
        DataSource = dm.DSelect_Account
        DragCursor = crDefault
        Font.Charset = ARABIC_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Tahoma'
        Font.Style = []
        MaxLength = 16
        ParentFont = False
        TabOrder = 1
      end
      object BankPanel: TPanel
        Left = 6
        Top = 153
        Width = 408
        Height = 48
        Anchors = [akLeft, akTop, akRight]
        BevelOuter = bvNone
        Font.Charset = ARABIC_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentColor = True
        ParentFont = False
        TabOrder = 2
        DesignSize = (
          408
          48)
        object Label4: TLabel
          Left = 329
          Top = 8
          Width = 72
          Height = 14
          Anchors = [akTop, akRight]
          Caption = #1576#1575#1606#1705
          Font.Charset = ARABIC_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
        end
        object DBLookupComboBox1: TDBLookupComboBox
          Left = 8
          Top = 2
          Width = 320
          Height = 22
          Anchors = [akLeft, akTop, akRight]
          BiDiMode = bdLeftToRight
          DataField = 'BankTitle'
          DataSource = dm.DSelect_Account
          DragCursor = crDefault
          Font.Charset = ARABIC_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentBiDiMode = False
          ParentFont = False
          TabOrder = 0
        end
      end
      object DBLookupComboBox2: TDBLookupComboBox
        Left = 13
        Top = 6
        Width = 321
        Height = 22
        Anchors = [akLeft, akTop, akRight]
        BiDiMode = bdLeftToRight
        DataField = 'AccountTypeTitle'
        DataSource = dm.DSelect_Account
        Font.Charset = ARABIC_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentBiDiMode = False
        ParentFont = False
        TabOrder = 3
        OnClick = DBLookupComboBox2Click
      end
      object DBEdit3: TSolarDatePicker
        Left = 13
        Top = 117
        Width = 321
        Height = 22
        Anchors = [akLeft, akTop, akRight]
        About = 'Created by : Mohamad Khorsandi'
        BiDiMode = bdLeftToRight
        DragCursor = crDefault
        Font.Charset = ARABIC_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        TabOrder = 4
        Enabled = True
        OnEnter = TEditEnter
        OnExit = DBEdit3Exit
        DateKind = dkSolar
        CheckInputOnExit = True
        Divider = dSlash
        ShowToDay = True
        MonthObject = moComboBox
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
        DataSource = dm.DSelect_Account
        DataField = 'AccountDate'
        DataFieldType = dftSolar
        DataFieldAutoSaveModified = False
      end
    end
    object Panel1: TPanel
      Left = 1
      Top = 209
      Width = 418
      Height = 41
      Align = alBottom
      TabOrder = 1
      DesignSize = (
        418
        41)
      object BitBtn8: TAdvGlowButton
        Left = 6
        Top = 7
        Width = 67
        Height = 28
        Action = AExit
        Font.Charset = ARABIC_CHARSET
        Font.Color = clWindowText
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
      object BitBtn1: TAdvGlowButton
        Left = 344
        Top = 7
        Width = 68
        Height = 28
        Action = DataSetInsert1
        Anchors = [akTop, akRight]
        Font.Charset = ARABIC_CHARSET
        Font.Color = clWindowText
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
        TabOrder = 1
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
      object BitBtn3: TAdvGlowButton
        Left = 202
        Top = 7
        Width = 61
        Height = 28
        Action = DataSetPost1
        Anchors = [akTop, akRight]
        Font.Charset = ARABIC_CHARSET
        Font.Color = clWindowText
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
        TabOrder = 2
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
      object BitBtn5: TAdvGlowButton
        Left = 265
        Top = 7
        Width = 77
        Height = 28
        Action = DataSetEdit1
        Anchors = [akTop, akRight]
        Font.Charset = ARABIC_CHARSET
        Font.Color = clWindowText
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
        TabOrder = 3
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
      object BitBtn7: TAdvGlowButton
        Left = 139
        Top = 7
        Width = 61
        Height = 28
        Action = DataSetCancel1
        Anchors = [akTop, akRight]
        Font.Charset = ARABIC_CHARSET
        Font.Color = clWindowText
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
  end
  inherited ahmadvand: TActionList
    Left = 108
    Top = 36
  end
  inherited Grid_PopupMenu: TPopupMenu
    Left = 15
    Top = 140
    inherited wordMenuItem: TMenuItem
      OnClick = nil
    end
    inherited ExcelMenuItem: TMenuItem
      OnClick = nil
    end
    inherited PrintMenuItem: TMenuItem
      OnClick = nil
    end
    inherited TextMenuItem: TMenuItem
      OnClick = nil
    end
    inherited CustomMenuItem: TMenuItem
      OnClick = nil
    end
  end
  object ActionManager1: TActionManager
    ActionBars.SessionCount = 12
    ActionBars = <
      item
        Items = <
          item
            Action = DataSetInsert1
            ImageIndex = 16
            ShortCut = 45
          end
          item
            Action = DataSetEdit1
            ImageIndex = 48
            ShortCut = 115
          end
          item
            Action = DataSetPost1
            ImageIndex = 0
            ShortCut = 113
          end
          item
            Action = DataSetCancel1
            ImageIndex = 56
            ShortCut = 32776
          end>
        AutoSize = False
      end>
    Left = 197
    Top = 16
    StyleName = 'XP Style'
    object DataSetInsert1: TDataSetInsert
      Category = 'Dataset'
      Caption = #1580#1583#1610#1583
      Hint = 'Insert'
      ImageIndex = 16
      ShortCut = 16429
      OnExecute = DataSetInsert1Execute
    end
    object DataSetEdit1: TDataSetEdit
      Category = 'Dataset'
      Caption = #1608#1610#1585#1575#1610#1588
      Hint = 'Edit'
      ImageIndex = 48
      ShortCut = 115
    end
    object DataSetPost1: TDataSetPost
      Category = 'Dataset'
      Caption = #1584#1582#1610#1585#1607
      Hint = 'Post'
      ImageIndex = 0
      ShortCut = 113
      OnExecute = DataSetPost1Execute
    end
    object DataSetCancel1: TDataSetCancel
      Category = 'Dataset'
      Caption = #1604#1594#1608
      Hint = 'Cancel'
      ImageIndex = 56
      ShortCut = 32776
      OnExecute = DataSetCancel1Execute
    end
    object DataSetNext1: TDataSetNext
      Category = 'Dataset'
      Caption = #1576#1593#1583#1610
      Hint = 'Next'
      ImageIndex = 76
      ShortCut = 34
    end
    object DataSetPrior1: TDataSetPrior
      Category = 'Dataset'
      Caption = #1602#1576#1604#1610
      Hint = 'Prior'
      ImageIndex = 77
      ShortCut = 33
    end
  end
end
