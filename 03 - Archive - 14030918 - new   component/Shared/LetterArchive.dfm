inherited LetterArchiveform: TLetterArchiveform
  Tag = 17
  Left = 504
  Top = 219
  BorderIcons = [biSystemMenu]
  BorderStyle = bsDialog
  Caption = #1576#1575#1610#1711#1575#1606#1610' '#1587#1606#1583
  ClientHeight = 363
  ClientWidth = 593
  Constraints.MaxHeight = 500
  Constraints.MaxWidth = 800
  Constraints.MinHeight = 300
  Constraints.MinWidth = 580
  OldCreateOrder = True
  PixelsPerInch = 96
  TextHeight = 13
  object pnlMain: TPanel [0]
    Left = 0
    Top = 0
    Width = 593
    Height = 363
    Align = alClient
    ParentColor = True
    TabOrder = 0
    object Panel2: TPanel
      Left = 1
      Top = 322
      Width = 591
      Height = 40
      Align = alBottom
      ParentColor = True
      TabOrder = 0
      TabStop = True
      DesignSize = (
        591
        40)
      object Label1: TLabel
        Left = 544
        Top = 10
        Width = 39
        Height = 13
        Anchors = [akTop, akRight]
        Caption = #1705#1583'  '#1605#1705#1575#1606
      end
      object ExitBtn: TAdvGlowButton
        Left = 15
        Top = 5
        Width = 75
        Height = 28
        Cursor = crHandPoint
        Caption = #1582#1585#1608#1580
        Default = True
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
        TabOrder = 1
        OnClick = ExitBtnClick
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
        Left = 127
        Top = 5
        Width = 80
        Height = 28
        Cursor = crHandPoint
        Anchors = [akTop, akRight]
        Caption = #1578#1608#1590#1610#1581#1575#1578
        Font.Charset = ARABIC_CHARSET
        Font.Color = clNavy
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ImageIndex = 118
        Images = Dm.ImageList_MainNew
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
      object SpeedButton3: TAdvGlowButton
        Left = 210
        Top = 5
        Width = 80
        Height = 28
        Cursor = crHandPoint
        Action = Delete
        Anchors = [akTop, akRight]
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
      object SpeedButton4: TAdvGlowButton
        Left = 293
        Top = 5
        Width = 80
        Height = 28
        Cursor = crHandPoint
        Action = Add
        Anchors = [akTop, akRight]
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
      object BitBtn2: TAdvGlowButton
        Left = 391
        Top = 5
        Width = 80
        Height = 28
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
        TabOrder = 5
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
      object Edit1: TEdit
        Left = 474
        Top = 7
        Width = 66
        Height = 21
        Anchors = [akTop, akRight]
        TabOrder = 0
      end
    end
    object Panel1: TPanel
      Left = 1
      Top = 1
      Width = 591
      Height = 321
      Align = alClient
      Caption = 'Panel1'
      ParentColor = True
      TabOrder = 1
      object DBG: TYDBGrid
        Left = 1
        Top = 1
        Width = 589
        Height = 319
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
        PrintTitle = #1604#1610#1587#1578' '#1578#1607#1610#1607' '#1588#1583#1607' '#1578#1608#1587#1591' '#1606#1585#1605' '#1575#1601#1586#1575#1585' '#1610#1711#1575#1606#1607
        InvertFarsiDate = True
        TitleSort = True
        AutoInsert = False
        FooterFields = 'Count'
        Columns = <
          item
            Expanded = False
            FieldName = 'Place'
            ReadOnly = True
            Title.Alignment = taCenter
            Title.Caption = #1605#1705#1575#1606
            Width = 50
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'Title'
            ReadOnly = True
            Title.Alignment = taCenter
            Title.Caption = #1593#1606#1608#1575#1606
            Width = 180
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'ArchiveNotes'
            Title.Alignment = taCenter
            Title.Caption = #1578#1608#1590#1610#1581#1575#1578
            Width = 232
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'archivedate'
            ReadOnly = True
            Title.Alignment = taCenter
            Title.Caption = #1578#1575#1585#1610#1582' '#1576#1575#1610#1711#1575#1606#1610
            Width = 85
            Visible = True
          end>
      end
    end
  end
  inherited DSForm: TDataSource
    Left = 152
    Top = 168
  end
  inherited ActionList: TActionList
    Left = 312
    Top = 96
  end
  inherited xpWindow1: TxpWindow
    Left = 312
    Top = 152
  end
  object ActionManager: TActionManager
    Images = Dm.LetterImages
    Left = 310
    Top = 44
    StyleName = 'XP Style'
    object Add: TAction
      Caption = #1583#1585#1580
      ImageIndex = 16
      ShortCut = 45
      OnExecute = AddExecute
    end
    object Delete: TAction
      Caption = #1581#1584#1601
      ImageIndex = 17
      ShortCut = 16430
      OnExecute = DeleteExecute
    end
    object Aexit: TAction
      ShortCut = 27
      OnExecute = AexitExecute
    end
    object APost: TAction
      Caption = #1584#1582#1610#1585#1607' F2'
      ShortCut = 113
      OnExecute = APostExecute
    end
  end
end
