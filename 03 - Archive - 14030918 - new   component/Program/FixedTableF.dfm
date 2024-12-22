inherited FixedForm: TFixedForm
  Tag = 10
  Left = 684
  Top = 197
  BorderIcons = [biSystemMenu]
  BorderStyle = bsDialog
  Caption = #1578#1594#1610#1610#1585' '#1575#1591#1604#1575#1593#1575#1578' '#1579#1575#1576#1578
  ClientHeight = 246
  ClientWidth = 322
  Constraints.MinHeight = 280
  Constraints.MinWidth = 330
  OldCreateOrder = True
  PixelsPerInch = 96
  TextHeight = 13
  object pnlMain: TPanel [0]
    Left = 0
    Top = 0
    Width = 322
    Height = 246
    Align = alClient
    ParentColor = True
    TabOrder = 0
    object Panel2: TPanel
      Left = 1
      Top = 1
      Width = 320
      Height = 204
      Align = alClient
      Caption = 'Panel2'
      ParentColor = True
      TabOrder = 0
      object DBGrid2: TYDBGrid
        Left = 1
        Top = 1
        Width = 318
        Height = 202
        Cursor = crHandPoint
        Align = alClient
        DataSource = Dm.DClassifications
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
        FooterFields = 'Count'
        Columns = <
          item
            Expanded = False
            FieldName = 'ID'
            Title.Alignment = taCenter
            Title.Caption = #1705#1583
            Title.Color = 16377053
            Width = 40
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'Title'
            Title.Alignment = taCenter
            Title.Caption = #1593#1606#1608#1575#1606
            Title.Color = 16377053
            Width = 244
            Visible = True
          end>
      end
    end
    object Panel1: TPanel
      Left = 1
      Top = 205
      Width = 320
      Height = 40
      Align = alBottom
      ParentColor = True
      TabOrder = 1
      object BitBtn1: TAdvGlowButton
        Left = 8
        Top = 5
        Width = 75
        Height = 28
        Cursor = crHandPoint
        Action = Action1
        Cancel = True
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
    end
  end
  inherited DSForm: TDataSource
    Top = 160
  end
  inherited ActionList: TActionList
    Left = 208
    Top = 96
  end
  object ActionManager1: TActionManager
    Images = Dm.LetterImages
    Left = 208
    Top = 48
    StyleName = 'XP Style'
    object Action1: TAction
      Tag = 1
      Caption = #1582#1585#1608#1580
      ShortCut = 27
      OnExecute = Action1Execute
    end
  end
end
