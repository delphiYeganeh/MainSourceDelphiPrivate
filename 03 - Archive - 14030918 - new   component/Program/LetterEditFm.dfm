inherited FmLetterEdit: TFmLetterEdit
  Left = 547
  Top = 290
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = #1606#1605#1575#1610#1588' '#1608#1610#1585#1575#1610#1588' '#1607#1575#1610' '#1575#1593#1605#1575#1604' '#1588#1583#1607' '#1585#1608#1610' '#1587#1606#1583
  ClientHeight = 407
  ClientWidth = 564
  Constraints.MinHeight = 400
  Constraints.MinWidth = 580
  KeyPreview = True
  OldCreateOrder = True
  Position = poMainFormCenter
  PixelsPerInch = 96
  TextHeight = 13
  object pnlMain: TPanel [0]
    Left = 0
    Top = 0
    Width = 564
    Height = 407
    Align = alClient
    ParentColor = True
    TabOrder = 0
    object Panel3: TPanel
      Left = 1
      Top = 364
      Width = 562
      Height = 42
      Align = alBottom
      TabOrder = 0
      DesignSize = (
        562
        42)
      object SpeedButton1: TAdvGlowButton
        Left = 13
        Top = 6
        Width = 70
        Height = 28
        Cursor = crHandPoint
        Caption = #1582#1585#1608#1580
        ImageIndex = 84
        Images = Dm.ImageList_MainNew
        NotesFont.Charset = DEFAULT_CHARSET
        NotesFont.Color = clWindowText
        NotesFont.Height = -11
        NotesFont.Name = 'Tahoma'
        NotesFont.Style = []
        TabOrder = 2
        OnClick = SBExitClick
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
      object BtnWord: TAdvGlowButton
        Left = 446
        Top = 6
        Width = 100
        Height = 28
        Cursor = crHandPoint
        Anchors = [akTop, akRight]
        Caption = #1582#1585#1608#1580#1610' Word '
        Font.Charset = ARABIC_CHARSET
        Font.Color = clNavy
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ImageIndex = 43
        Images = Dm.ImageList_MainNew
        NotesFont.Charset = DEFAULT_CHARSET
        NotesFont.Color = clWindowText
        NotesFont.Height = -11
        NotesFont.Name = 'Tahoma'
        NotesFont.Style = []
        ParentFont = False
        TabOrder = 0
        OnClick = BtnWordClick
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
      object BtnExcel: TAdvGlowButton
        Left = 343
        Top = 6
        Width = 100
        Height = 28
        Cursor = crHandPoint
        Anchors = [akTop, akRight]
        Caption = #1582#1585#1608#1580#1610' Excel '
        Font.Charset = ARABIC_CHARSET
        Font.Color = clNavy
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ImageIndex = 135
        Images = Dm.ImageList_MainNew
        NotesFont.Charset = DEFAULT_CHARSET
        NotesFont.Color = clWindowText
        NotesFont.Height = -11
        NotesFont.Name = 'Tahoma'
        NotesFont.Style = []
        ParentFont = False
        TabOrder = 1
        OnClick = BtnExcelClick
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
      Top = 37
      Width = 562
      Height = 327
      Align = alClient
      TabOrder = 1
      object YDBGrid1: TYDBGrid
        Left = 1
        Top = 1
        Width = 560
        Height = 325
        Cursor = crHandPoint
        Align = alClient
        DataSource = DMLetterEdit.DSLetterEdit
        PopupMenu = PopupMenu1
        ReadOnly = True
        TabOrder = 0
        TitleFont.Charset = ARABIC_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'Tahoma'
        TitleFont.Style = []
        YeganehColor = False
        YeganehFinish = False
        PageNumber = False
        RecordNumber = False
        HasTime = False
        Oriention = poPortrait
        HasDate = False
        HasIndex = False
        PrintTitle = #1604#1610#1587#1578' '#1578#1607#1610#1607' '#1588#1583#1607' '#1578#1608#1587#1591' '#1606#1585#1605' '#1575#1601#1586#1575#1585
        InvertFarsiDate = True
        TitleSort = True
        AutoInsert = False
        FooterFields = 'Count'
        Columns = <
          item
            Expanded = False
            FieldName = 'EditDate'
            Title.Alignment = taCenter
            Width = 74
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'EditTime'
            Title.Alignment = taCenter
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'UsersTitle'
            Title.Alignment = taCenter
            Width = 163
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'Statement'
            Title.Alignment = taCenter
            Width = 223
            Visible = True
          end>
      end
    end
    object RepPanel: TPanel
      Left = 1
      Top = 1
      Width = 562
      Height = 36
      Align = alTop
      TabOrder = 2
      DesignSize = (
        562
        36)
      object Label7: TLabel
        Left = 437
        Top = 9
        Width = 106
        Height = 13
        Anchors = [akTop, akRight]
        Caption = #1606#1575#1605' '#1603#1575#1585#1576#1585' '#1608#1610#1585#1575#1610#1588' '#1603#1606#1606#1583#1607' :'
      end
      object DBLkCBUsers: TDBLookupComboBox
        Left = 250
        Top = 7
        Width = 184
        Height = 21
        Anchors = [akTop, akRight]
        BiDiMode = bdLeftToRight
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        KeyField = 'Id'
        ListField = 'Title'
        ListSource = DMLetterEdit.DSUsers
        ParentBiDiMode = False
        ParentFont = False
        TabOrder = 0
        OnClick = DBLkCBUsersClick
      end
      object BitBtn2: TAdvGlowButton
        Left = 225
        Top = 6
        Width = 22
        Height = 22
        Cursor = crHandPoint
        Hint = #1581#1584#1601' '#1601#1585#1605
        Anchors = [akTop, akRight]
        ImageIndex = 65
        Images = Dm.ImageList_MainNew
        NotesFont.Charset = DEFAULT_CHARSET
        NotesFont.Color = clWindowText
        NotesFont.Height = -11
        NotesFont.Name = 'Tahoma'
        NotesFont.Style = []
        ParentShowHint = False
        ShowHint = True
        TabOrder = 1
        OnClick = BitBtn2Click
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
    Left = 96
    Top = 152
  end
  inherited ActionList: TActionList
    Left = 432
    Top = 104
  end
  inherited xpWindow1: TxpWindow
    Left = 432
    Top = 152
  end
  object PopupMenu1: TPopupMenu
    Left = 432
    Top = 208
    object Word1: TMenuItem
      Caption = #1582#1585#1608#1580#1610' Word'
      OnClick = Word1Click
    end
    object Excel1: TMenuItem
      Caption = #1582#1585#1608#1580#1610' Excel'
      OnClick = Excel1Click
    end
  end
end
