inherited FrAddLetterData: TFrAddLetterData
  Tag = 10
  Left = 688
  Top = 248
  BorderIcons = [biSystemMenu]
  BorderStyle = bsDialog
  Caption = #1575#1590#1575#1601#1607' '#1705#1585#1583#1606' '#1662#1610#1608#1587#1578
  ClientHeight = 355
  ClientWidth = 585
  Constraints.MinHeight = 300
  Constraints.MinWidth = 500
  OldCreateOrder = True
  PixelsPerInch = 96
  TextHeight = 13
  object pnlMain: TPanel [0]
    Left = 0
    Top = 0
    Width = 585
    Height = 355
    Align = alClient
    TabOrder = 0
    object DBGrid2: TYDBGrid
      Left = 1
      Top = 24
      Width = 583
      Height = 259
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
      OnDblClick = DBGrid2DblClick
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
          FieldName = 'description'
          Title.Alignment = taCenter
          Title.Caption = #1588#1585#1581' '#1662#1610#1608#1587#1578
          Width = 262
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'ExtentionTitle'
          Title.Alignment = taCenter
          Title.Caption = #1606#1608#1593' '#1662#1610#1608#1587#1578
          Width = 126
          Visible = True
        end
        item
          Alignment = taCenter
          Expanded = False
          FieldName = 'VersionNo'
          Title.Alignment = taCenter
          Title.Caption = #1588#1605#1575#1585#1607' '#1606#1587#1582#1607
          Width = 75
          Visible = True
        end
        item
          Alignment = taCenter
          Expanded = False
          FieldName = 'VersionDate'
          Title.Alignment = taCenter
          Title.Caption = #1578#1575#1585#1610#1582' '#1606#1587#1582#1607
          Width = 83
          Visible = True
        end>
    end
    object Panel1: TPanel
      Left = 1
      Top = 283
      Width = 583
      Height = 71
      Align = alBottom
      TabOrder = 1
      DesignSize = (
        583
        71)
      object ADeleteAttachments: TAdvGlowButton
        Left = 334
        Top = 4
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
        ImageIndex = 47
        Images = Dm.ImageList_MainNew
        NotesFont.Charset = DEFAULT_CHARSET
        NotesFont.Color = clWindowText
        NotesFont.Height = -11
        NotesFont.Name = 'Tahoma'
        NotesFont.Style = []
        ParentFont = False
        TabOrder = 0
        OnClick = ADeleteAttachmentsClick
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
      object btnedit: TAdvGlowButton
        Left = 416
        Top = 4
        Width = 80
        Height = 28
        Cursor = crHandPoint
        Anchors = [akTop, akRight]
        Caption = #1608#1610#1585#1575#1610#1588
        Font.Charset = ARABIC_CHARSET
        Font.Color = clNavy
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ImageIndex = 37
        Images = Dm.ImageList_MainNew
        NotesFont.Charset = DEFAULT_CHARSET
        NotesFont.Color = clWindowText
        NotesFont.Height = -11
        NotesFont.Name = 'Tahoma'
        NotesFont.Style = []
        ParentFont = False
        TabOrder = 1
        OnClick = btneditClick
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
      object AddBtn: TAdvGlowButton
        Left = 498
        Top = 4
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
        TabOrder = 2
        OnClick = AddBtnClick
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
        Left = 461
        Top = 36
        Width = 100
        Height = 28
        Cursor = crHandPoint
        Anchors = [akTop, akRight]
        Caption = #1584#1582#1610#1585#1607' '#1583#1585' '#1601#1575#1610#1604
        Font.Charset = ARABIC_CHARSET
        Font.Color = clNavy
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ImageIndex = 36
        Images = Dm.ImageList_MainNew
        NotesFont.Charset = DEFAULT_CHARSET
        NotesFont.Color = clWindowText
        NotesFont.Height = -11
        NotesFont.Name = 'Tahoma'
        NotesFont.Style = []
        ParentFont = False
        TabOrder = 3
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
      object BitBtn1: TAdvGlowButton
        Left = 12
        Top = 36
        Width = 85
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
      object BBShow: TAdvGlowButton
        Left = 358
        Top = 36
        Width = 100
        Height = 28
        Cursor = crHandPoint
        Anchors = [akTop, akRight]
        Caption = #1606#1605#1575#1610#1588' '#1662#1610#1608#1587#1578
        Font.Charset = ARABIC_CHARSET
        Font.Color = clNavy
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ImageIndex = 11
        Images = Dm.ImageList_MainNew
        NotesFont.Charset = DEFAULT_CHARSET
        NotesFont.Color = clWindowText
        NotesFont.Height = -11
        NotesFont.Name = 'Tahoma'
        NotesFont.Style = []
        ParentFont = False
        TabOrder = 5
        OnClick = BBShowClick
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
      object btnECE: TAdvGlowButton
        Left = 13
        Top = 5
        Width = 83
        Height = 28
        Cursor = crHandPoint
        Anchors = [akTop, akRight]
        Caption = #1578#1576#1583#1610#1604' '#1576#1607
        Font.Charset = ARABIC_CHARSET
        Font.Color = clNavy
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        Images = Dm.ImageList_MainNew
        NotesFont.Charset = DEFAULT_CHARSET
        NotesFont.Color = clWindowText
        NotesFont.Height = -11
        NotesFont.Name = 'Tahoma'
        NotesFont.Style = []
        ParentFont = False
        Picture.Data = {
          424D1E0600000000000036000000280000001800000015000000010018000000
          0000E805000000000000000000000000000000000000FFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFC6C6FFB4B4FFB1B1FFB1B1FFB1B1FFAAAAFFECECFFFFFF
          FFFFFFFFF3F3F7ADADFFACACFFFFFFF1FFFFFFFFFFFFD6D6FFB5B5FFB1B1FFB1
          B1FFB1B1FFACACFFD9D9FFFFFFFFFFFFFF0C0CFF1919FF4C4CFF4646FF4646FF
          3838FFD1D1FFFFFFFF8383CC0000FF4444F23434E60000E2A9A9F4FFFFFF4E4E
          FF0000FF4E4EFF4646FF4646FF3C3CFFA6A6FFFFFFFFFFFFFF1212FF9999FFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFBDBDDF0000FCFFFFF2FFFFFFFFFFFFE4E4D0
          0000FCFFFFF05757FF5353FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FF1212FF9F9FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF4343D37B7BF2FFFFFFFF
          FFFFFFFFFFFFFFFFEBEBFFFFFFFF5555FF5757FFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFF2323FF0000FF0000FF0000FF0000FF2D2DFFFFFFFF0606
          FF9898FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF5F5FFF0000FF0000FF00
          00FF0000FF0000FFFFFFFFFFFFFFFFFFFF1212FF9F9FFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFF4343D37B7BF2FFFFFFFFFFFFFFFFFFFFFFFFEBEBFDFFFFFA5555
          FF5757FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF1212FF9999FFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFBDBDDF0000FCFFFFF2FFFFFFFFFFFFDADAE1
          0000EAFFFFEC5656FF5353FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FF0C0CFF1919FF4C4CFF4646FF4646FF3535FFFFFFFFFFFFFF8383CC0000FF40
          40EF3434E50000F2B5B5F7FFFFFF4E4EFF0000FF4E4EFF4646FF4646FF3636FF
          EBEBFFFFFFFFFFFFFFC6C6FFB4B4FFB1B1FFB1B1FFB1B1FFA8A8FFFFFFFFFFFF
          FFFFFFFFF3F3F7ADADFFABABFFFFFFF3FFFFFFFFFFFFD6D6FFB5B5FFB1B1FFB1
          B1FFB1B1FFA9A9FFF7F7FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF}
        TabOrder = 6
        Visible = False
        OnClick = btnECEClick
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
    object Panel2: TxpPanel
      Left = 1
      Top = 1
      Width = 583
      Height = 23
      StartColor = 16511469
      EndColor = 16244694
      FillDirection = fdLeftToRight
      TitleShow = False
      Caption = 'xpPanel'
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
      Align = alTop
      TabOrder = 2
      DesignSize = (
        581
        21)
      object Label1: TLabel
        Left = 262
        Top = 4
        Width = 314
        Height = 13
        Anchors = [akTop, akRight]
        Caption = ' '#1576#1575' '#1583#1575#1576#1604' '#1705#1604#1610#1705' '#1585#1608#1610' '#1607#1585' '#1662#1610#1608#1587#1578' '#1605#1610' '#1578#1608#1575#1606#1610#1583' '#1605#1581#1578#1608#1610#1575#1578' '#1570#1606' '#1585#1575' '#1605#1588#1575#1607#1583#1607' '#1606#1605#1575#1610#1610#1583
      end
    end
  end
  inherited DSForm: TDataSource
    Left = 72
    Top = 83
  end
  inherited ActionList: TActionList
    Left = 320
    Top = 81
  end
  inherited Grid_PopupMenu: TPopupMenu
    Left = 320
    Top = 228
  end
  object ActionManager: TActionManager
    Images = DataModuleForm.Dm
    Left = 320
    Top = 32
    StyleName = 'XP Style'
    object Action1: TAction
      Tag = 1
      Caption = #1582#1585#1608#1580
      ShortCut = 27
      OnExecute = Action1Execute
    end
  end
  object OpenDialog: TOpenDialog
    Left = 320
    Top = 130
  end
  object SaveDialog: TSaveDialog
    Left = 320
    Top = 179
  end
  object popAdd: TPopupMenu
    Left = 517
    Top = 197
    object N1: TMenuItem
      Caption = #1575#1586' '#1601#1575#1610#1604
      OnClick = N1Click
    end
    object N2: TMenuItem
      Caption = #1575#1586' '#1606#1585#1605' '#1575#1601#1586#1575#1585' '#1570#1585#1588#1610#1608
      OnClick = N2Click
    end
  end
  object IdDecoderMIME1: TIdDecoderMIME
    FillChar = '='
    Left = 72
    Top = 184
  end
  object CHK_USER_ACCESS_QRY: TADOQuery
    Connection = Dm.YeganehConnection
    Parameters = <>
    Left = 72
    Top = 136
  end
end
