inherited FEditSecs: TFEditSecs
  Tag = 10
  Left = 637
  Top = 261
  BorderIcons = [biSystemMenu]
  BorderStyle = bsDialog
  Caption = #1578#1593#1585#1610#1601' '#1583#1601#1575#1578#1585' '#1576#1575#1610#1711#1575#1606#1610
  ClientHeight = 394
  ClientWidth = 448
  Constraints.MinHeight = 300
  Constraints.MinWidth = 456
  OldCreateOrder = True
  PixelsPerInch = 96
  TextHeight = 13
  object pnlMain: TPanel [0]
    Left = 0
    Top = 0
    Width = 448
    Height = 394
    Align = alClient
    ParentColor = True
    TabOrder = 0
    object Panel2: TPanel
      Left = 1
      Top = 1
      Width = 446
      Height = 351
      Align = alClient
      Caption = 'Panel2'
      ParentColor = True
      TabOrder = 0
      object DBGrid2: TYDBGrid
        Left = 1
        Top = 1
        Width = 444
        Height = 349
        Cursor = crHandPoint
        Align = alClient
        DataSource = DSForm
        Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit]
        ReadOnly = True
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
            FieldName = 'SecID'
            Title.Alignment = taCenter
            Title.Caption = #1705#1583' '#1587#1610#1587#1578#1605
            Visible = False
          end
          item
            Expanded = False
            FieldName = 'SecTitle'
            Title.Alignment = taCenter
            Title.Caption = #1606#1575#1605' '#1583#1601#1578#1585' '#1576#1575#1610#1711#1575#1606#1610
            Width = 168
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'PreCode'
            Title.Alignment = taCenter
            Title.Caption = #1662#1610#1588' '#1705#1583' '#1576#1575#1610#1711#1575#1606#1610
            Width = 78
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'ArchiveCenterTitle'
            Title.Alignment = taCenter
            Title.Caption = #1605#1585#1705#1586' '#1576#1575#1610#1711#1575#1606#1610
            Width = 162
            Visible = True
          end>
      end
    end
    object Panel1: TPanel
      Left = 1
      Top = 352
      Width = 446
      Height = 41
      Align = alBottom
      ParentColor = True
      TabOrder = 1
      DesignSize = (
        446
        41)
      object BitBtn1: TAdvGlowButton
        Left = 10
        Top = 6
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
      object Button1: TAdvGlowButton
        Left = 356
        Top = 6
        Width = 80
        Height = 28
        Cursor = crHandPoint
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
        OnClick = Button1Click
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
      object Button2: TAdvGlowButton
        Left = 192
        Top = 6
        Width = 80
        Height = 28
        Cursor = crHandPoint
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
        TabOrder = 2
        OnClick = Button2Click
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
      object Button3: TAdvGlowButton
        Left = 274
        Top = 6
        Width = 80
        Height = 28
        Cursor = crHandPoint
        Anchors = [akTop, akRight]
        Caption = #1608#1610#1585#1575#1610#1588' '
        Font.Charset = ARABIC_CHARSET
        Font.Color = clNavy
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ImageIndex = 2
        Images = Dm.ImageList_MainNew
        NotesFont.Charset = DEFAULT_CHARSET
        NotesFont.Color = clWindowText
        NotesFont.Height = -11
        NotesFont.Name = 'Tahoma'
        NotesFont.Style = []
        ParentFont = False
        Spacing = 1
        TabOrder = 3
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
    end
  end
  inherited DSForm: TDataSource
    DataSet = Dm.Secretariats
    Left = 56
    Top = 176
  end
  inherited ActionList: TActionList
    Left = 240
    Top = 168
  end
  inherited xpWindow1: TxpWindow
    Left = 240
    Top = 216
  end
  object ActionManager: TActionManager
    Images = Dm.LetterImages
    Left = 240
    Top = 120
    StyleName = 'XP Style'
    object Action1: TAction
      Tag = 1
      Caption = #1582#1585#1608#1580
      ShortCut = 27
      OnExecute = Action1Execute
    end
    object Action2: TAction
      Caption = 'Action2'
      ShortCut = 16430
    end
  end
  object QrDelUserSec: TADOQuery
    Connection = Dm.YeganehConnection
    Parameters = <
      item
        Name = 'SecID'
        DataType = ftInteger
        Size = -1
        Value = 0
      end>
    SQL.Strings = (
      'Delete UserSecretariats'
      'Where SecID = :SecID')
    Left = 128
    Top = 120
  end
end
