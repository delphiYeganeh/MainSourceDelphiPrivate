inherited ExactCopyF: TExactCopyF
  Tag = 17
  Left = 524
  Top = 150
  BorderIcons = [biSystemMenu]
  BorderStyle = bsDialog
  Caption = #1575#1582#1578#1589#1575#1589' '#1583#1587#1578#1585#1587#1610
  ClientHeight = 332
  ClientWidth = 490
  Constraints.MinHeight = 300
  Constraints.MinWidth = 500
  OldCreateOrder = True
  PixelsPerInch = 96
  TextHeight = 13
  object pnlMain: TPanel [0]
    Left = 0
    Top = 0
    Width = 490
    Height = 332
    Align = alClient
    ParentColor = True
    TabOrder = 0
    object Panel1: TPanel
      Left = 1
      Top = 290
      Width = 488
      Height = 41
      Align = alBottom
      ParentColor = True
      TabOrder = 0
      DesignSize = (
        488
        41)
      object Label1: TLabel
        Left = 461
        Top = 12
        Width = 11
        Height = 13
        Anchors = [akTop, akRight]
        Caption = #1705#1583
      end
      object Edit1: TEdit
        Left = 385
        Top = 9
        Width = 72
        Height = 21
        Anchors = [akTop, akRight]
        TabOrder = 0
      end
      object Button1: TAdvGlowButton
        Left = 293
        Top = 6
        Width = 80
        Height = 28
        Cursor = crHandPoint
        Action = APost
        Anchors = [akTop, akRight]
        Caption = 'F2 '#1584#1582#1610#1585#1607' '
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
      object SpeedButton2: TAdvGlowButton
        Left = 207
        Top = 6
        Width = 75
        Height = 28
        Cursor = crHandPoint
        Action = Add
        Anchors = [akTop, akRight]
        Caption = #1583#1585#1580
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
        Left = 129
        Top = 6
        Width = 75
        Height = 28
        Cursor = crHandPoint
        Action = Delete
        Anchors = [akTop, akRight]
        Caption = #1581#1584#1601
        Font.Charset = ARABIC_CHARSET
        Font.Color = clNavy
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ImageIndex = 90
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
      object BitBtn2: TAdvGlowButton
        Left = 9
        Top = 7
        Width = 75
        Height = 28
        Cursor = crHandPoint
        Cancel = True
        Caption = #1582#1585#1608#1580
        Font.Charset = ARABIC_CHARSET
        Font.Color = clNavy
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ImageIndex = 84
        Images = Dm.ImageList_MainNew
        NotesFont.Charset = DEFAULT_CHARSET
        NotesFont.Color = clWindowText
        NotesFont.Height = -11
        NotesFont.Name = 'Tahoma'
        NotesFont.Style = []
        ParentFont = False
        TabOrder = 4
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
    object Panel2: TPanel
      Left = 1
      Top = 1
      Width = 488
      Height = 289
      Align = alClient
      Caption = 'Panel2'
      ParentColor = True
      TabOrder = 1
      object DBG: TYDBGrid
        Left = 1
        Top = 1
        Width = 486
        Height = 287
        Align = alClient
        Color = clBtnFace
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
            Width = 160
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'Paraph'
            Title.Alignment = taCenter
            Title.Caption = #1605#1578#1606' '#1585#1608#1606#1608#1588#1578
            Width = 292
            Visible = True
          end>
      end
    end
  end
  inherited DSForm: TDataSource
    DataSet = Dm.Select_LetterReCommite
    Left = 56
    Top = 160
  end
  inherited ActionList: TActionList
    Left = 248
    Top = 120
  end
  inherited xpWindow1: TxpWindow
    Left = 248
    Top = 168
  end
  object ActionManager: TActionManager
    Images = Dm.LetterImages
    Left = 246
    Top = 68
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
end
