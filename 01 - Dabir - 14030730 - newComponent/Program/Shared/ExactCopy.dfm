inherited ExactCopyF: TExactCopyF
  Tag = 17
  Left = 589
  Top = 211
  BorderIcons = [biSystemMenu]
  BorderStyle = bsDialog
  Caption = #1583#1610#1711#1585' '#1711#1610#1585#1606#1583#1711#1575#1606
  ClientHeight = 257
  ClientWidth = 698
  Constraints.MinHeight = 200
  Constraints.MinWidth = 460
  OldCreateOrder = True
  PixelsPerInch = 96
  TextHeight = 13
  object pnlMain: TPanel [0]
    Left = 0
    Top = 0
    Width = 698
    Height = 257
    Align = alClient
    TabOrder = 0
    object Label2: TLabel
      Left = 50
      Top = 8
      Width = 3
      Height = 13
    end
    object Panel2: TxpPanel
      Left = 1
      Top = 1
      Width = 696
      Height = 214
      StartColor = 16511469
      EndColor = 16244694
      FillDirection = fdLeftToRight
      TitleShow = False
      Caption = 'xpPanel'
      Maximized = True
      Title = 'xpPanelTitle'
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clNavy
      TitleFont.Height = -11
      TitleFont.Name = 'MS Sans Serif'
      TitleFont.Style = [fsBold]
      TitleAlignment = taCenter
      TitleStartColor = clWhite
      TitleEndColor = 15777194
      TitleColor = clWhite
      TitleFillDirect = fdLeftToRight
      TitleImageAlign = tiaLeft
      TitleButtons = [tbMinimize]
      DefaultHeight = 60
      BorderColor = clWhite
      BGImageAlign = iaStretch
      Align = alClient
      TabOrder = 0
      object DBG: TYDBGrid
        Left = 186
        Top = 1
        Width = 507
        Height = 210
        Cursor = crHandPoint
        Align = alClient
        DataSource = DSForm
        TabOrder = 0
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
        Oriention = poPortrait
        HasDate = False
        HasIndex = False
        PrintTitle = #1593#1606#1608#1575#1606
        InvertFarsiDate = True
        TitleSort = True
        AutoInsert = False
        OnNeedColorCondition = DBGNeedColorCondition
        FooterFields = 'Count'
        Columns = <
          item
            Expanded = False
            FieldName = 'orgtitle'
            ReadOnly = True
            Title.Alignment = taCenter
            Title.Caption = #1593#1606#1608#1575#1606
            Width = 166
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'Paraph'
            Title.Alignment = taCenter
            Title.Caption = #1605#1578#1606
            Width = 196
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'RecommiteDate'
            ReadOnly = True
            Title.Caption = #1578#1575#1585#1610#1582' '#1585#1608#1606#1608#1588#1578
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'RecommiteTime'
            ReadOnly = True
            Title.Caption = #1587#1575#1593#1578' '#1579#1576#1578
            Visible = True
          end>
      end
      object TntDBMemo1: TTntDBMemo
        Left = 1
        Top = 1
        Width = 185
        Height = 210
        Align = alLeft
        DataField = 'Paraph'
        DataSource = DSForm
        TabOrder = 1
      end
    end
    object Panel1: TPanel
      Left = 1
      Top = 215
      Width = 696
      Height = 41
      Align = alBottom
      TabOrder = 1
      DesignSize = (
        696
        41)
      object Label1: TLabel
        Left = 674
        Top = 13
        Width = 11
        Height = 13
        Anchors = [akTop, akRight]
        Caption = #1705#1583
      end
      object Edit1: TEdit
        Left = 575
        Top = 9
        Width = 95
        Height = 21
        Anchors = [akTop, akRight]
        TabOrder = 0
      end
      object SpeedButton2: TAdvGlowButton
        Left = 493
        Top = 7
        Width = 75
        Height = 25
        Cursor = crHandPoint
        Action = Add
        Anchors = [akTop, akRight]
        Caption = #1580#1583#1610#1583
        Font.Charset = ARABIC_CHARSET
        Font.Color = clNavy
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ImageIndex = 60
        Images = Dm.ImageList_MainNew
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
      object Button1: TAdvGlowButton
        Left = 417
        Top = 7
        Width = 75
        Height = 25
        Cursor = crHandPoint
        Action = APost
        Anchors = [akTop, akRight]
        Font.Charset = ARABIC_CHARSET
        Font.Color = clNavy
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ImageIndex = 59
        Images = Dm.ImageList_MainNew
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
      object SpeedButton1: TAdvGlowButton
        Left = 341
        Top = 7
        Width = 75
        Height = 25
        Cursor = crHandPoint
        Action = Delete
        Anchors = [akTop, akRight]
        Caption = #1581#1584#1601
        Font.Charset = ARABIC_CHARSET
        Font.Color = clNavy
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ImageIndex = 47
        Images = Dm.ImageList_MainNew
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
      object BitBtn1: TAdvGlowButton
        Left = 7
        Top = 7
        Width = 75
        Height = 25
        Cursor = crHandPoint
        Caption = #1582#1585#1608#1580
        Font.Charset = ARABIC_CHARSET
        Font.Color = clNavy
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ImageIndex = 84
        Images = Dm.ImageList_MainNew
        ModalResult = 2
        NotesFont.Charset = DEFAULT_CHARSET
        NotesFont.Color = clWindowText
        NotesFont.Height = -11
        NotesFont.Name = 'Tahoma'
        NotesFont.Style = []
        ParentFont = False
        TabOrder = 4
        OnClick = BitBtn1Click
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
    DataSet = Dm.Select_LetterReCommite
    Left = 152
    Top = 168
  end
  object ActionManager: TActionManager
    Images = Dm.LetterImages
    Left = 262
    Top = 180
    StyleName = 'XP Style'
    object Add: TAction
      ImageIndex = 16
      ShortCut = 45
      OnExecute = AddExecute
    end
    object Delete: TAction
      ImageIndex = 17
      ShortCut = 16430
      OnExecute = DeleteExecute
    end
    object Aexit: TAction
      ShortCut = 27
      OnExecute = AexitExecute
    end
    object APost: TAction
      Caption = #1584#1582#1610#1585#1607
      ShortCut = 113
      OnExecute = APostExecute
    end
  end
  object CheckAccessForErja: TADOStoredProc
    Connection = Dm.YeganehConnection
    CursorType = ctStatic
    ProcedureName = 'CheckAccessForErja;1'
    Parameters = <
      item
        Name = '@FromOrgID'
        DataType = ftInteger
        Value = Null
      end
      item
        Name = '@ToOrgID'
        DataType = ftInteger
        Value = Null
      end>
    Left = 200
    Top = 218
    object CheckAccessForErjaResult: TIntegerField
      FieldName = 'Result'
    end
  end
end
