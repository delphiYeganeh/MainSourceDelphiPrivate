inherited FrReportUserTableLetter: TFrReportUserTableLetter
  Left = 714
  Top = 142
  Caption = #1711#1586#1575#1585#1588' '#1575#1586' '#1606#1575#1605#1607' '#1607#1575
  ClientHeight = 712
  ClientWidth = 709
  OldCreateOrder = True
  PixelsPerInch = 96
  TextHeight = 13
  object pnlMain: TPanel [0]
    Left = 0
    Top = 0
    Width = 709
    Height = 712
    Align = alClient
    TabOrder = 0
    object xpPageControl1: TxpPageControl
      Left = 1
      Top = 1
      Width = 707
      Height = 417
      ActivePage = xpTabSheet1
      Align = alTop
      ParentShowHint = False
      ShowHint = True
      Style = pcsXP
      TabOrder = 0
      TabPosition = tpTop
      BorderColor = clSilver
      TabTextAlignment = taCenter
      object xpTabSheet1: TxpTabSheet
        Caption = #1575#1591#1604#1575#1593#1575#1578' '#1606#1575#1605#1607
        Color = clWhite
        BGStyle = bgsNone
        GradientStartColor = clWhite
        GradientEndColor = clSilver
        GradientFillDir = fdTopToBottom
        object Panel1: TPanel
          Left = 0
          Top = 0
          Width = 699
          Height = 389
          Align = alClient
          Color = 16377053
          TabOrder = 0
        end
      end
      object xpTabSheet2: TxpTabSheet
        Caption = #1601#1585#1605
        Color = clWhite
        BGStyle = bgsNone
        GradientStartColor = clWhite
        GradientEndColor = clSilver
        GradientFillDir = fdTopToBottom
        object Panel3: TPanel
          Left = 0
          Top = 0
          Width = 699
          Height = 389
          Align = alClient
          Color = 16377053
          TabOrder = 0
          object Panel2: TScrollBox
            Left = 1
            Top = 1
            Width = 697
            Height = 387
            Align = alClient
            BevelInner = bvNone
            BevelOuter = bvNone
            BorderStyle = bsNone
            TabOrder = 0
          end
        end
      end
    end
    object YDBGrid1: TYDBGrid
      Left = 1
      Top = 418
      Width = 707
      Height = 252
      Cursor = crHandPoint
      Align = alClient
      Color = 14934982
      DataSource = DSForm
      ReadOnly = True
      TabOrder = 1
      TitleFont.Charset = ARABIC_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'Tahoma'
      TitleFont.Style = []
      YeganehColor = True
      YeganehFinish = False
      PageNumber = False
      RecordNumber = False
      HasTime = False
      Oriention = poLandscape
      HasDate = False
      HasIndex = False
      PrintTitle = #1604#1610#1587#1578' '#1578#1607#1610#1607' '#1588#1583#1607' '#1578#1608#1587#1591' '#1606#1585#1605' '#1575#1601#1586#1575#1585' '#1610#1711#1575#1606#1607
      InvertFarsiDate = True
      TitleSort = True
      AutoInsert = False
      FooterFields = 'Count'
    end
    object Panel4: TPanel
      Left = 1
      Top = 670
      Width = 707
      Height = 41
      Align = alBottom
      TabOrder = 2
      DesignSize = (
        707
        41)
      object Number: TLabel
        Left = 660
        Top = 13
        Width = 23
        Height = 13
        Anchors = [akRight, akBottom]
        Caption = #1578#1593#1583#1575#1583
      end
      object Button3: TAdvGlowButton
        Left = 235
        Top = 4
        Width = 108
        Height = 32
        Anchors = [akLeft, akBottom]
        Caption = 'Word '#1582#1585#1608#1580#1610' '
        Font.Charset = ARABIC_CHARSET
        Font.Color = clNavy
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ImageIndex = 43
        Images = Dm.ImageList_MainNew
        NotesFont.Charset = DEFAULT_CHARSET
        NotesFont.Color = clWindowText
        NotesFont.Height = -11
        NotesFont.Name = 'Tahoma'
        NotesFont.Style = []
        ParentFont = False
        TabOrder = 0
        TabStop = True
        OnClick = Button3Click
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
      object Button4: TAdvGlowButton
        Left = 126
        Top = 4
        Width = 108
        Height = 32
        Anchors = [akLeft, akBottom]
        Caption = 'Excel'#1582#1585#1608#1580#1610' '
        Font.Charset = ARABIC_CHARSET
        Font.Color = clNavy
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ImageIndex = 135
        Images = Dm.ImageList_MainNew
        NotesFont.Charset = DEFAULT_CHARSET
        NotesFont.Color = clWindowText
        NotesFont.Height = -11
        NotesFont.Name = 'Tahoma'
        NotesFont.Style = []
        ParentFont = False
        TabOrder = 1
        TabStop = True
        OnClick = Button4Click
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
        Left = 4
        Top = 4
        Width = 108
        Height = 32
        Anchors = [akLeft, akBottom]
        Cancel = True
        Caption = #1582#1585#1608#1580
        Font.Charset = ARABIC_CHARSET
        Font.Color = clNavy
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ImageIndex = 84
        Images = Dm.ImageList_MainNew
        NotesFont.Charset = DEFAULT_CHARSET
        NotesFont.Color = clWindowText
        NotesFont.Height = -11
        NotesFont.Name = 'Tahoma'
        NotesFont.Style = []
        ParentFont = False
        TabOrder = 2
        TabStop = True
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
      object Button6: TAdvGlowButton
        Left = 344
        Top = 4
        Width = 120
        Height = 32
        Anchors = [akLeft, akBottom]
        Caption = #1575#1606#1578#1582#1575#1576' '#1587#1578#1608#1606' '#1607#1575
        Font.Charset = ARABIC_CHARSET
        Font.Color = clNavy
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ImageIndex = 137
        Images = Dm.LetterImages_New
        NotesFont.Charset = DEFAULT_CHARSET
        NotesFont.Color = clWindowText
        NotesFont.Height = -11
        NotesFont.Name = 'Tahoma'
        NotesFont.Style = []
        ParentFont = False
        TabOrder = 3
        TabStop = True
        OnClick = Button6Click
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
      object MakeRep: TAdvGlowButton
        Left = 465
        Top = 4
        Width = 108
        Height = 32
        Anchors = [akLeft, akBottom]
        Caption = #1578#1607#1610#1607' '#1711#1586#1575#1585#1588
        Font.Charset = ARABIC_CHARSET
        Font.Color = clNavy
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ImageIndex = 176
        Images = Dm.ImageList_MainNew
        NotesFont.Charset = DEFAULT_CHARSET
        NotesFont.Color = clWindowText
        NotesFont.Height = -11
        NotesFont.Name = 'Tahoma'
        NotesFont.Style = []
        ParentFont = False
        TabOrder = 4
        TabStop = True
        OnClick = MakeRepClick
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
  inherited DSForm: TDataSource
    DataSet = Report_UserTable
    Left = 236
    Top = 23
  end
  inherited ActionList: TActionList
    Left = 134
    Top = 18
    object Action1: TAction
      Caption = 'Action1'
      ShortCut = 13
      OnExecute = Action1Execute
    end
  end
  inherited Grid_PopupMenu: TPopupMenu
    Left = 143
    Top = 76
  end
  object Report_UserTable: TADOStoredProc
    Connection = Dm.YeganehConnection
    CursorType = ctStatic
    ProcedureName = 'Report_UserTable'
    Parameters = <
      item
        Name = '@RETURN_VALUE'
        DataType = ftInteger
        Direction = pdReturnValue
        Precision = 10
        Value = -1
      end
      item
        Name = '@tableID'
        Attributes = [paNullable]
        DataType = ftInteger
        Precision = 10
        Value = Null
      end
      item
        Name = '@LetterWhere'
        Attributes = [paNullable]
        DataType = ftWideString
        Size = 2000
        Value = Null
      end
      item
        Name = '@UserTableWhere'
        Attributes = [paNullable]
        DataType = ftWideString
        Size = 2000
        Value = Null
      end>
    Left = 228
    Top = 138
  end
end
