inherited FDefineColor: TFDefineColor
  Left = 622
  Top = 240
  Width = 573
  Height = 506
  Caption = #1578#1593#1585#1610#1601' '#1591#1576#1602#1607' '#1576#1606#1583#1610' '#1662#1610#1608#1587#1578' '#1607#1575
  Constraints.MinHeight = 300
  Constraints.MinWidth = 510
  OldCreateOrder = True
  PixelsPerInch = 96
  TextHeight = 13
  object pnlMain: TPanel [0]
    Left = 0
    Top = 0
    Width = 557
    Height = 467
    Align = alClient
    ParentColor = True
    TabOrder = 0
    DesignSize = (
      557
      467)
    object Label2: TLabel
      Left = 464
      Top = 56
      Width = 30
      Height = 13
      Anchors = [akTop, akRight]
      Caption = #1588#1585#1581': '
    end
    object lblParentTree: TLabel
      Left = 64
      Top = 114
      Width = 396
      Height = 21
      Anchors = [akLeft, akTop, akRight]
      AutoSize = False
      Layout = tlCenter
    end
    object lblId: TLabel
      Left = 20
      Top = 14
      Width = 49
      Height = 21
      Alignment = taCenter
      AutoSize = False
      Caption = '0'
      Font.Charset = ARABIC_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      Layout = tlCenter
    end
    object Label5: TLabel
      Left = 76
      Top = 20
      Width = 39
      Height = 13
      Caption = #1705#1583' '#1585#1606#1711' :'
    end
    object Label4: TLabel
      Left = 464
      Top = 119
      Width = 60
      Height = 13
      Anchors = [akTop, akRight]
      Caption = #1586#1610#1585' '#1605#1580#1605#1608#1593#1607': '
    end
    object Label3: TLabel
      Left = 464
      Top = 85
      Width = 80
      Height = 13
      Anchors = [akTop, akRight]
      Caption = #1588#1585#1581' '#1583#1587#1578#1585#1587#1610': '
    end
    object Label1: TLabel
      Left = 464
      Top = 26
      Width = 39
      Height = 13
      Anchors = [akTop, akRight]
      Caption = #1705#1583' '#1585#1606#1711': '
    end
    object tvColorView: TTreeView
      Left = 1
      Top = 136
      Width = 555
      Height = 289
      Align = alBottom
      Anchors = [akLeft, akTop, akRight, akBottom]
      Font.Charset = ARABIC_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = []
      Images = ImageList2
      Indent = 19
      ParentFont = False
      ReadOnly = True
      TabOrder = 0
      OnChange = tvColorViewChange
      OnGetSelectedIndex = tvColorViewGetSelectedIndex
    end
    object csDefinColor: TAdvOfficeColorSelector
      Left = 439
      Top = 23
      Width = 22
      Height = 19
      Anchors = [akLeft, akTop, akRight]
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      NotesFont.Charset = DEFAULT_CHARSET
      NotesFont.Color = clWindowText
      NotesFont.Height = -11
      NotesFont.Name = 'Tahoma'
      NotesFont.Style = []
      ParentFont = False
      Version = '1.6.0.1'
      TabOrder = 1
      AllowFloating = False
      CloseOnSelect = False
      CaptionAppearance.BorderColor = clNone
      CaptionAppearance.Color = 13198890
      CaptionAppearance.ColorTo = clNone
      CaptionAppearance.Direction = gdHorizontal
      CaptionAppearance.TextColor = clWhite
      CaptionAppearance.TextColorHot = clBlack
      CaptionAppearance.TextColorDown = clBlack
      CaptionAppearance.ButtonAppearance.ColorChecked = 16111818
      CaptionAppearance.ButtonAppearance.ColorCheckedTo = 16367008
      CaptionAppearance.ButtonAppearance.ColorDisabled = 15921906
      CaptionAppearance.ButtonAppearance.ColorDisabledTo = 15921906
      CaptionAppearance.ButtonAppearance.ColorDown = 16111818
      CaptionAppearance.ButtonAppearance.ColorDownTo = 16367008
      CaptionAppearance.ButtonAppearance.ColorHot = 16117985
      CaptionAppearance.ButtonAppearance.ColorHotTo = 16372402
      CaptionAppearance.ButtonAppearance.ColorMirrorHot = 16107693
      CaptionAppearance.ButtonAppearance.ColorMirrorHotTo = 16775412
      CaptionAppearance.ButtonAppearance.ColorMirrorDown = 16102556
      CaptionAppearance.ButtonAppearance.ColorMirrorDownTo = 16768988
      CaptionAppearance.ButtonAppearance.ColorMirrorChecked = 16102556
      CaptionAppearance.ButtonAppearance.ColorMirrorCheckedTo = 16768988
      CaptionAppearance.ButtonAppearance.ColorMirrorDisabled = 11974326
      CaptionAppearance.ButtonAppearance.ColorMirrorDisabledTo = 15921906
      DragGripAppearance.BorderColor = clGray
      DragGripAppearance.Color = clWhite
      DragGripAppearance.ColorTo = clWhite
      DragGripAppearance.ColorMirror = clSilver
      DragGripAppearance.ColorMirrorTo = clWhite
      DragGripAppearance.Gradient = ggVertical
      DragGripAppearance.GradientMirror = ggVertical
      DragGripAppearance.BorderColorHot = clBlue
      DragGripAppearance.ColorHot = 16117985
      DragGripAppearance.ColorHotTo = 16372402
      DragGripAppearance.ColorMirrorHot = 16107693
      DragGripAppearance.ColorMirrorHotTo = 16775412
      DragGripAppearance.GradientHot = ggRadial
      DragGripAppearance.GradientMirrorHot = ggRadial
      DragGripPosition = gpTop
      Enabled = False
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
      SelectedColor = clNone
      ShowRGBHint = True
      ColorDropDown = 16251129
      ColorDropDownFloating = 16374724
      SelectionAppearance.ColorChecked = 16111818
      SelectionAppearance.ColorCheckedTo = 16367008
      SelectionAppearance.ColorDisabled = 15921906
      SelectionAppearance.ColorDisabledTo = 15921906
      SelectionAppearance.ColorDown = 16111818
      SelectionAppearance.ColorDownTo = 16367008
      SelectionAppearance.ColorHot = 16117985
      SelectionAppearance.ColorHotTo = 16372402
      SelectionAppearance.ColorMirrorHot = 16107693
      SelectionAppearance.ColorMirrorHotTo = 16775412
      SelectionAppearance.ColorMirrorDown = 16102556
      SelectionAppearance.ColorMirrorDownTo = 16768988
      SelectionAppearance.ColorMirrorChecked = 16102556
      SelectionAppearance.ColorMirrorCheckedTo = 16768988
      SelectionAppearance.ColorMirrorDisabled = 11974326
      SelectionAppearance.ColorMirrorDisabledTo = 15921906
      SelectionAppearance.TextColorChecked = clBlack
      SelectionAppearance.TextColorDown = clWhite
      SelectionAppearance.TextColorHot = clWhite
      SelectionAppearance.TextColor = clBlack
      SelectionAppearance.TextColorDisabled = clGray
      SelectionAppearance.Rounded = False
      Tools = <
        item
          BackGroundColor = clBlack
          Caption = 'Automatic'
          CaptionAlignment = taCenter
          Enable = True
          Hint = 'Automatic'
          ImageIndex = -1
          ItemType = itFullWidthButton
        end
        item
          BackGroundColor = clBlack
          CaptionAlignment = taCenter
          Enable = True
          ImageIndex = -1
        end
        item
          BackGroundColor = 13209
          CaptionAlignment = taCenter
          Enable = True
          ImageIndex = -1
        end
        item
          BackGroundColor = 13107
          CaptionAlignment = taCenter
          Enable = True
          ImageIndex = -1
        end
        item
          BackGroundColor = 13056
          CaptionAlignment = taCenter
          Enable = True
          ImageIndex = -1
        end
        item
          BackGroundColor = 6697728
          CaptionAlignment = taCenter
          Enable = True
          ImageIndex = -1
        end
        item
          BackGroundColor = clNavy
          CaptionAlignment = taCenter
          Enable = True
          ImageIndex = -1
        end
        item
          BackGroundColor = 3486515
          CaptionAlignment = taCenter
          Enable = True
          ImageIndex = -1
        end
        item
          BackGroundColor = 3355443
          CaptionAlignment = taCenter
          Enable = True
          ImageIndex = -1
        end
        item
          BackGroundColor = clMaroon
          CaptionAlignment = taCenter
          Enable = True
          ImageIndex = -1
        end
        item
          BackGroundColor = 26367
          CaptionAlignment = taCenter
          Enable = True
          ImageIndex = -1
        end
        item
          BackGroundColor = clOlive
          CaptionAlignment = taCenter
          Enable = True
          ImageIndex = -1
        end
        item
          BackGroundColor = clGreen
          CaptionAlignment = taCenter
          Enable = True
          ImageIndex = -1
        end
        item
          BackGroundColor = clTeal
          CaptionAlignment = taCenter
          Enable = True
          ImageIndex = -1
        end
        item
          BackGroundColor = clBlue
          CaptionAlignment = taCenter
          Enable = True
          ImageIndex = -1
        end
        item
          BackGroundColor = 10053222
          CaptionAlignment = taCenter
          Enable = True
          ImageIndex = -1
        end
        item
          BackGroundColor = clGray
          CaptionAlignment = taCenter
          Enable = True
          ImageIndex = -1
        end
        item
          BackGroundColor = clRed
          CaptionAlignment = taCenter
          Enable = True
          ImageIndex = -1
        end
        item
          BackGroundColor = 39423
          CaptionAlignment = taCenter
          Enable = True
          ImageIndex = -1
        end
        item
          BackGroundColor = 52377
          CaptionAlignment = taCenter
          Enable = True
          ImageIndex = -1
        end
        item
          BackGroundColor = 6723891
          CaptionAlignment = taCenter
          Enable = True
          ImageIndex = -1
        end
        item
          BackGroundColor = 13421619
          CaptionAlignment = taCenter
          Enable = True
          ImageIndex = -1
        end
        item
          BackGroundColor = 16737843
          CaptionAlignment = taCenter
          Enable = True
          ImageIndex = -1
        end
        item
          BackGroundColor = clPurple
          CaptionAlignment = taCenter
          Enable = True
          ImageIndex = -1
        end
        item
          BackGroundColor = 10066329
          CaptionAlignment = taCenter
          Enable = True
          ImageIndex = -1
        end
        item
          BackGroundColor = clFuchsia
          CaptionAlignment = taCenter
          Enable = True
          ImageIndex = -1
        end
        item
          BackGroundColor = 52479
          CaptionAlignment = taCenter
          Enable = True
          ImageIndex = -1
        end
        item
          BackGroundColor = clYellow
          CaptionAlignment = taCenter
          Enable = True
          ImageIndex = -1
        end
        item
          BackGroundColor = clLime
          CaptionAlignment = taCenter
          Enable = True
          ImageIndex = -1
        end
        item
          BackGroundColor = clAqua
          CaptionAlignment = taCenter
          Enable = True
          ImageIndex = -1
        end
        item
          BackGroundColor = 16763904
          CaptionAlignment = taCenter
          Enable = True
          ImageIndex = -1
        end
        item
          BackGroundColor = 6697881
          CaptionAlignment = taCenter
          Enable = True
          ImageIndex = -1
        end
        item
          BackGroundColor = clSilver
          CaptionAlignment = taCenter
          Enable = True
          ImageIndex = -1
        end
        item
          BackGroundColor = 13408767
          CaptionAlignment = taCenter
          Enable = True
          ImageIndex = -1
        end
        item
          BackGroundColor = 10079487
          CaptionAlignment = taCenter
          Enable = True
          ImageIndex = -1
        end
        item
          BackGroundColor = 10092543
          CaptionAlignment = taCenter
          Enable = True
          ImageIndex = -1
        end
        item
          BackGroundColor = 13434828
          CaptionAlignment = taCenter
          Enable = True
          ImageIndex = -1
        end
        item
          BackGroundColor = 16777164
          CaptionAlignment = taCenter
          Enable = True
          ImageIndex = -1
        end
        item
          BackGroundColor = 16764057
          CaptionAlignment = taCenter
          Enable = True
          ImageIndex = -1
        end
        item
          BackGroundColor = 16751052
          CaptionAlignment = taCenter
          Enable = True
          ImageIndex = -1
        end
        item
          BackGroundColor = clWhite
          CaptionAlignment = taCenter
          Enable = True
          ImageIndex = -1
        end
        item
          BackGroundColor = -2
          Caption = 'More Colors...'
          CaptionAlignment = taCenter
          Enable = True
          Hint = 'More Colors'
          ImageIndex = -1
          ItemType = itFullWidthButton
        end>
    end
    object DBEdit2: TDBEdit
      Left = 64
      Top = 88
      Width = 395
      Height = 21
      Anchors = [akLeft, akTop, akRight]
      DataField = 'AccessDesc'
      DataSource = DSForm
      Enabled = False
      TabOrder = 2
    end
    object DBEdit1: TDBEdit
      Left = 64
      Top = 56
      Width = 395
      Height = 21
      Anchors = [akLeft, akTop, akRight]
      DataField = 'Descriptions'
      DataSource = DSForm
      Enabled = False
      TabOrder = 3
    end
    object Panel1: TPanel
      Left = 1
      Top = 425
      Width = 555
      Height = 41
      Align = alBottom
      ParentColor = True
      TabOrder = 4
      DesignSize = (
        555
        41)
      object BitBtn1: TAdvGlowButton
        Left = 418
        Top = 9
        Width = 65
        Height = 25
        Cursor = crHandPoint
        Action = acAdd
        Anchors = [akRight, akBottom]
        ImageIndex = 60
        Images = Dm.ImageList_MainNew
        NotesFont.Charset = DEFAULT_CHARSET
        NotesFont.Color = clWindowText
        NotesFont.Height = -11
        NotesFont.Name = 'Tahoma'
        NotesFont.Style = []
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
      object BitBtn7: TAdvGlowButton
        Left = 485
        Top = 9
        Width = 65
        Height = 25
        Cursor = crHandPoint
        Action = acNew
        Anchors = [akRight, akBottom]
        ImageIndex = 144
        Images = Dm.ImageList_MainNew
        NotesFont.Charset = DEFAULT_CHARSET
        NotesFont.Color = clWindowText
        NotesFont.Height = -11
        NotesFont.Name = 'Tahoma'
        NotesFont.Style = []
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
      object BitBtn6: TAdvGlowButton
        Left = 4
        Top = 9
        Width = 75
        Height = 25
        Cursor = crHandPoint
        Action = acExit
        Anchors = [akLeft, akBottom]
        ImageIndex = 84
        Images = Dm.ImageList_MainNew
        NotesFont.Charset = DEFAULT_CHARSET
        NotesFont.Color = clWindowText
        NotesFont.Height = -11
        NotesFont.Name = 'Tahoma'
        NotesFont.Style = []
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
        Left = 180
        Top = 9
        Width = 65
        Height = 25
        Cursor = crHandPoint
        Action = acPost
        Anchors = [akRight, akBottom]
        ImageIndex = 59
        Images = Dm.ImageList_MainNew
        NotesFont.Charset = DEFAULT_CHARSET
        NotesFont.Color = clWindowText
        NotesFont.Height = -11
        NotesFont.Name = 'Tahoma'
        NotesFont.Style = []
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
      object BitBtn4: TAdvGlowButton
        Left = 352
        Top = 9
        Width = 65
        Height = 25
        Cursor = crHandPoint
        Action = acEdit
        Anchors = [akRight, akBottom]
        ImageIndex = 2
        Images = Dm.ImageList_MainNew
        NotesFont.Charset = DEFAULT_CHARSET
        NotesFont.Color = clWindowText
        NotesFont.Height = -11
        NotesFont.Name = 'Tahoma'
        NotesFont.Style = []
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
      object BitBtn3: TAdvGlowButton
        Left = 114
        Top = 9
        Width = 65
        Height = 25
        Cursor = crHandPoint
        Action = acUndo
        Anchors = [akRight, akBottom]
        ImageIndex = 47
        Images = Dm.ImageList_MainNew
        NotesFont.Charset = DEFAULT_CHARSET
        NotesFont.Color = clWindowText
        NotesFont.Height = -11
        NotesFont.Name = 'Tahoma'
        NotesFont.Style = []
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
      object BitBtn2: TAdvGlowButton
        Left = 286
        Top = 9
        Width = 65
        Height = 25
        Cursor = crHandPoint
        Action = acDel
        Anchors = [akRight, akBottom]
        ImageIndex = 90
        Images = Dm.ImageList_MainNew
        NotesFont.Charset = DEFAULT_CHARSET
        NotesFont.Color = clWindowText
        NotesFont.Height = -11
        NotesFont.Name = 'Tahoma'
        NotesFont.Style = []
        TabOrder = 6
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
    Left = 88
    Top = 168
  end
  inherited ActionList: TActionList
    Left = 24
    Top = 216
    object acDel: TAction
      Caption = #1581#1584#1601
      ImageIndex = 10
      OnExecute = acDelExecute
    end
    object acAdd: TAction
      Caption = #1580#1583#1610#1583
      ImageIndex = 1
      OnExecute = acAddExecute
    end
    object acPost: TAction
      Caption = #1584#1582#1610#1585#1607
      ImageIndex = 0
      OnExecute = acPostExecute
    end
    object acEdit: TAction
      Caption = #1608#1610#1585#1575#1610#1588
      ImageIndex = 11
      OnExecute = acEditExecute
    end
    object acUndo: TAction
      Caption = #1575#1606#1589#1585#1575#1601
      ImageIndex = 2
      OnExecute = acUndoExecute
    end
    object acExit: TAction
      Caption = #1582#1585#1608#1580
      ImageIndex = 9
      OnExecute = acExitExecute
    end
    object acNew: TAction
      Caption = #1585#1610#1588#1607
      ImageIndex = 1
      OnExecute = acNewExecute
    end
  end
  inherited xpWindow1: TxpWindow
    Left = 88
    Top = 216
  end
  object ColorDialog1: TColorDialog
    Left = 24
    Top = 168
  end
  object ImageList2: TImageList
    BlendColor = clWindow
    BkColor = clWhite
    ImageType = itMask
    Masked = False
    Left = 24
    Top = 72
  end
  object ImageList1_old: TImageList
    Left = 192
    Top = 120
    Bitmap = {
      494C01010C000E00040010001000FFFFFFFFFF10FFFFFFFFFFFFFFFF424D3600
      0000000000003600000028000000400000004000000001002000000000000040
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000ECEC
      F2FFD4D4E2FFD4D4E2FFD4D4E2FFD4D4E2FFD4D4E2FFD1D1E1FFD1D1E1FFD1D1
      E1FFD1D1E1FFD1D1E1FFE8E8F0FF000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000FBFBFCFF8383
      CBFFCCCCE7FF000000000000000000000000000000000000000000000000D4D4
      E8FF8181C4FFFAFAFBFF00000000000000000000000000000000939090FF9B98
      98FF999696FF999595FF989494FF979393FF969292FF959191FF949191FF9490
      90FF938F8FFF938E8FFF868384FF00000000000000000000000000000000A6A6
      DAFF2C2CAAFF4040C0FF4040BFFF4141C0FF4242C0FF4444C1FF4444C2FF4545
      C2FF4646C2FF4444C0FF6B6BB9FF000000000000000000000000000000000000
      00000000000000000000000000000000000000000000121267FF55558EFF0000
      00000000000000000000000000000000000000000000FBFBFCFF7171C6FF4D4D
      D0FF3F3FB7FFCCCCE7FF00000000000000000000000000000000D4D4E8FF3E3E
      AFFF4242C5FF6B6BBBFFFAFAFBFF0000000000000000000000009B9696FFFAF6
      F4FFF7EFECFFF2E9E6FFF1E7E3FFF1E6E3FFF3E7E3FFF4E8E4FFF4E8E3FFF4E8
      E3FFF4E8E3FFF8F1EFFF8C8889FF000000000000000000000000000000000000
      00009696D3FF4040C1FF5C5CD7FF5D5DD3FF6262D9FF6767DEFF6C6CE3FF7070
      E8FF7373ECFF6D6DEDFF6A6AB9FF000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000000101E4FF0404
      72FF00000000000000000000000000000000FBFBFCFF7272C7FF4E4ED1FF6969
      E2FF6969E9FF4040B8FFCCCCE7FF0000000000000000D3D3E8FF3D3DB0FF4E4E
      D8FF4747D2FF4444C9FF6B6BBBFFFAFAFBFF00000000000000009D9898FFF9F3
      F0FFEDE1DDFF5D727AFF797E80FF8A817EFF9F9490FFC4B3AEFFDDCAC3FFE9D4
      CCFFEDD7CFFFF5EAE5FF918E8FFF000000000000000000000000000000000000
      0000000000009696D3FF4444C4FF6363DCFF6767DCFF6C6CE1FF7070E6FF7474
      EBFF7676EEFF6E6EEFFF6A6AB9FF000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000002E2E78FF0101
      FFFF00007AFF0000000000000000000000008888D1FF4949CDFF6060D9FF6868
      DDFF7070E7FF6C6CEDFF4040B8FFCCCCE7FFD3D3E9FF3F3FB3FF5252DCFF4444
      CEFF4242CCFF4747D2FF4242C6FF8181C4FF00000000000000009E9A9AFFFAF5
      F3FFF6ECE8FF86C4D1FF66D2E5FF4F9FC0FF637382FF827A77FF958B87FFB4A6
      A0FFD0BDB6FFE9DEDAFF86838CFF000000000000000000000000000000000000
      0000000000009595D3FF4646C7FF6868E1FF6C6CE1FF7070E6FF7474EBFF7676
      EEFF7777F0FF6E6EEFFF6A6ABAFF000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000101
      F2FF0101FFFF232372FF0000000000000000D5D5ECFF4343BDFF5E5EDEFF6868
      DEFF7070E7FF7575EEFF6D6DEFFF4040B8FF4141B6FF5A5AE2FF4D4DD5FF4343
      CDFF4242CDFF4D4DD8FF3D3DAFFFD3D3E9FF00000000000000009F9B9BFFFAF6
      F4FFF8EFECFFBFD1D5FF5DD6EAFF24A8F0FF2898E6FF9FA4ACFFB8ACA7FFAB9F
      9BFFB1A39EFFC6BDBBFF7D7983FF4141C6FF0000000000000000000000000000
      00009595D5FF4545C8FF6868E3FF6C6CE1FF7070E6FF7474EBFF7676EEFF7777
      F0FF7777F0FF6D6DEFFF6969BAFF000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000101
      8EFF0101FFFF0101F8FF000000000000000000000000D5D5ECFF4444BEFF6464
      E4FF7070E7FF7676EEFF7777F1FF6C6CEFFF6363E9FF5A5ADEFF4C4CD4FF4444
      CEFF4D4DD8FF3D3DB0FFD3D3E9FF0000000000000000000000009F9C9CFFFAF6
      F4FFF9F1EEFFF4EDEAFF3DB5F1FF1EBBE9FF1A9CE8FF2A9BEBFFBCC4D0FFE8D9
      D4FFDDCDC7FFDCD3D1FF7F7B83FF4952AFFF0000000000000000000000009696
      D6FF4545C9FF6868E3FF6C6CE1FF7070E6FF7474EBFF7676EEFF7777F0FF7777
      F0FF7474F0FF6A6AEEFF6969BCFF00000000000000000101C2FF010196FF6363
      95FF000000000000000000000000000000000000000000000000000000004848
      87FF0101F5FF0101F1FF121276FF000000000000000000000000D5D5ECFF4444
      BEFF6868E9FF7575EEFF7777F0FF7272EEFF6767E7FF5A5ADEFF4D4DD5FF4E4E
      D9FF3E3EB2FFD3D3EAFF00000000000000000000000000000000A09D9DFFFAF6
      F4FFF9F1EEFFF9F1EEFFE2E3E7FF39BAF4FF1DB9E9FF199CE8FF299DEEFFBBCB
      DEFFF3E4DEFFF6EEEBFF948F90FF0000000000000000000000009696D8FF4646
      CBFF6868E3FF6C6CE1FF7070E6FF7474EBFF7676EEFF7777F0FF7777F0FF7474
      F0FF6F6FEDFF6666EBFF6969BCFF00000000000000000101CAFF0101DDFF0101
      E6FF0101C7FF0C0C71FF00000000000000000000000000000000000000009999
      BAFF0101E5FF0101DDFF0101B4FF00000000000000000000000000000000D5D5
      ECFF4444BFFF6D6DEEFF7777F0FF7272EEFF6767E7FF5A5ADEFF5454DEFF3F3F
      B5FFD3D3EAFF0000000000000000000000000000000000000000A29E9EFFFAF6
      F4FFF9F1EEFFF9F1EEFFF9F1EEFFE2E4E8FF39BAF4FF1CB9E9FF189CE8FF299D
      EFFFBCCCDFFFF8F1EFFF918D8EFF00000000000000009696D9FF4646CDFF6868
      E3FF6C6CE1FF7070E6FF7474EBFF7676EEFF7777F0FF7777F0FF7272F2FF5A5A
      DFFF6969EDFF6262E8FF6969BDFF00000000000000000101C5FF0101CBFF0101
      CBFF0101CBFF0101CCFF0101D0FF010195FF434386FF00000000000000000000
      00000101D2FF0101CBFF0101C4FF00000000000000000000000000000000D5D5
      ECFF4444C0FF6D6DEEFF7777F0FF7272EEFF6767E7FF5A5ADEFF5454DEFF3C3C
      B6FFCCCCE7FF0000000000000000000000000000000000000000A39F9FFFFAF6
      F4FFF9F1EEFFF9F1EEFFF9F1EEFFF9F1EEFFE2E4E8FF3ABAF4FF1CB9E9FF1A9C
      E8FF78ABD1FFDED9D8FF928E8EFF00000000F1F1F6FF3F3FBEFF6363E5FF6C6C
      E2FF7070E6FF7474EBFF7676EEFF7777F0FF7777F0FF7272F2FF4646CAFF6262
      BEFF4444C7FF5F5FE9FF6868BEFF00000000000000000101BAFF0101B8FF0101
      B8FF0101B8FF0101B8FF0101B8FF010188FF414187FF00000000000000004D4D
      89FF0101BCFF0101B8FF0101B7FF000000000000000000000000D5D5ECFF4444
      C1FF6868EAFF7575EEFF7777F0FF7272EEFF6767E7FF5A5ADEFF4D4DD5FF4E4E
      DAFF3C3CB6FFCCCCE7FF00000000000000000000000000000000A49F9FFFFAF6
      F4FFF9F1EEFFF9F1EEFFF9F1EEFFF9F1EEFFF9F1EEFFE2E4E8FF3ABAF4FF7AC0
      D6FFB7B4B4FFB6B2B3FF8F8A90FF0000000000000000D5D5EDFF4545C4FF6868
      E9FF7373EBFF7676EEFF7777F0FF7777F0FF7272F2FF4747CCFF9A9AD7FF0000
      00009696D3FF3F3FC2FF6868BFFF00000000000000000101ABFF0101A6FF0101
      A6FF0101A6FF0101A9FF141465FF000000000000000000000000000000000101
      8CFF0101A6FF0101A6FF01019DFF0000000000000000D5D5EDFF4444C2FF6464
      E5FF7070E7FF7676EEFF7777F1FF6B6BEEFF6363E9FF5A5ADEFF4C4CD4FF4444
      CEFF4D4DD9FF3C3CB6FFCCCCE7FF000000000000000000000000A5A0A0FFFAF6
      F4FFF9F1EEFFF9F1EEFFF9F1EEFFF9F1EEFFF9F1EEFFF9F1EEFFE7E5E6FFDAD6
      D6FFC9C7C8FF9D9ABCFF3736A9FFCACAE3FF0000000000000000D5D5EDFF4646
      C5FF6B6BEEFF7777F0FF7777F0FF7272F2FF4848CEFF9B9BD8FF000000000000
      0000000000009696D3FF6A6AC0FF000000008383ADFF010197FF010195FF0101
      94FF010194FF010194FF010198FF00006BFF7575A4FF464686FF010183FF0101
      94FF010194FF010194FF010174FF00000000D5D5EDFF4444C4FF5E5EDFFF6868
      DEFF7070E7FF7575EEFF6C6CEFFF4444C0FF4444BFFF5A5AE3FF4D4DD5FF4343
      CDFF4242CCFF4D4DD9FF3C3CB6FFCCCCE7FF0000000000000000A5A1A1FFFAF6
      F4FFF9F1EEFFF9F1EEFFF9F1EEFFF9F1EEFFF9F1EEFFF9F1EEFFF8F0EDFFE4DD
      DAFFB0ABCBFF3E3EBFFF3B3BC5FF4141B7FF000000000000000000000000D5D5
      EDFF4646C5FF6C6CEFFF7272F2FF4848CFFF9B9BD9FF00000000000000000000
      00000000000000000000F2F2F7FF000000005A5A93FF2424A2FF0A0A6EFF2323
      9FFF21219DFF21219DFF21219DFF21219DFF2222A0FF21219FFF21219DFF2121
      9DFF21219DFF2424A2FF68689BFF000000008888D7FF4B4BD2FF6060D9FF6868
      DDFF7070E7FF6B6BEDFF4545C2FFD4D4EDFFD5D5ECFF4343BEFF5353DEFF4444
      CEFF4242CCFF4848D3FF4343CAFF8888CDFF0000000000000000A6A2A2FFFAF6
      F4FFF9F1EEFFF9F1EEFFF9F1EEFFF9F1EEFFF9F1EEFFF9F1EEFFF7EFECFFA5A0
      A0FF938F97FF4848BDFF4C4CDFFF7A7ACCFF0000000000000000000000000000
      0000D5D5EDFF4646C5FF4646CFFF9B9BDBFF0000000000000000000000000000
      00000000000000000000000000000000000034347CFF232381FF000000002828
      73FF5B5BBBFF5353B3FF5353B3FF5353B3FF5353B3FF5353B3FF5353B3FF5353
      B3FF5656B6FF161673FF0000000000000000FBFBFCFF7474D1FF5151D7FF6969
      E2FF6868E9FF4646C4FFD4D4EDFF0000000000000000D5D5ECFF4242BDFF4E4E
      DAFF4848D3FF4545CEFF7777C8FFFDFDFDFF0000000000000000A8A2A2FFFAF6
      F4FFF9F1EEFFF9F1EEFFF9F1EEFFF9F1EEFFF9F1EEFFF9F1EEFFF7EFECFFA19D
      9DFFD3D1D2FF918E92FF8C8BAAFFFCFCFCFF0000000000000000000000000000
      000000000000D5D5EDFFAAAAE1FF000000000000000000000000000000000000
      00000000000000000000000000000000000005055EFF00000000000000000000
      0000282872FF9494D2FF9191D0FF8F8FCEFF8F8FCEFF8F8FCEFF8F8FCEFF9C9C
      D8FF28287BFF00000000000000000000000000000000FBFBFCFF7474D1FF4F4F
      D7FF4646C5FFD4D4EEFF00000000000000000000000000000000D5D5ECFF4242
      BDFF4343CCFF7878CAFFFDFDFDFF000000000000000000000000A9A3A3FFFBF9
      F8FFFAF6F4FFFAF6F4FFFAF6F4FFFAF6F4FFFAF6F4FFFAF6F4FFFAF5F4FFA19C
      9CFF9B9797FFBCB9B9FF00000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000002E2E7AFF9C9CC5FFC3C3E1FFB5B5D7FF5B5B99FF6363
      96FF000000000000000000000000000000000000000000000000FBFBFCFF8787
      D6FFD4D4EEFF000000000000000000000000000000000000000000000000D5D5
      ECFF8D8DD3FFFDFDFDFF00000000000000000000000000000000A49E9EFFA9A3
      A3FFA8A2A2FFA6A2A2FFA5A1A1FFA5A0A0FFA49F9FFFA39F9FFFA29E9EFF9995
      95FFBFBCBCFF0000000000000000000000000000000000000000000000000000
      0000000000000000000000000000CEE3C2FFB4DC9CFF00000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000CF9896FFC68382FFFEFEFEFF000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000BD6D65FFB75C47FFB65A47FFB45847FFB35746FFB25545FFB15345FFB35B
      5AFF000000000000000000000000000000000000000000000000000000000000
      000000000000FBFCFBFFEDF3EDFF000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000BDD8ACFF7AC54CFFB1DA98FF000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000CF9792FFC47044FFCB7D49FFC37E7DFFFEFEFEFF0000
      0000000000000000000000000000000000000000000000000000000000000000
      0000BA6250FFEFAF67FFE79C61FFE3975BFFDF9355FFDB8F51FFE09D53FFB154
      47FF000000000000000000000000000000000000000000000000000000000000
      0000FBFCFBFF6EC16EFF43B148FFDFEFDFFF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000BDD8ABFF7AC54CFF7AC54CFFB1DA98FF0000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000D19993FFC87447FFE6995FFFE08F59FFCB7D49FFC37E7DFFFEFE
      FEFF000000000000000000000000000000000000000000000000000000000000
      0000BA6451FFEFA76AFFE58A64FFDF845CFFD97E54FFD4784DFFDB8F50FFB256
      47FF00000000000000000000000000000000000000000000000000000000FBFC
      FBFF6FC36FFF49D071FF4FDB7FFF44B44CFFDFEFDFFF00000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000BFDAACFF7AC54CFF85E769FF7AC54CFFB1DA
      98FF000000000000000000000000000000000000000000000000000000000000
      0000D29A92FFCC7A4AFFEDA16AFFE48963FFDE835BFFDF8F58FFCB7C49FFC37E
      7DFFFEFEFEFF0000000000000000000000000000000000000000000000000000
      0000BC6551FFF1AA6EFFE98F6AFFE48963FFDE835BFFD97D53FFDE9254FFB357
      47FF000000000000000000000000000000000000000000000000FBFCFBFF70C6
      70FF4FD678FF59E176FF4ED762FF4FDA7DFF44B44CFFDFEFDFFF000000000000
      000000000000DCECDCFF9FD29FFF0000000091BD65FF7DBA4FFF7DBA50FF7CBC
      50FF7CBD50FF7BBD51FF7BC051FF71BC46FF7AC54CFF9BE56FFF86E66BFF7AC5
      4CFFB1DA98FF000000000000000000000000000000000000000000000000D39B
      91FFCF7E4CFFF2A672FFED936FFFE88E69FFE38862FFDE825AFFDF8E57FFCB7C
      48FFC47F7DFFFEFEFEFF00000000000000000000000000000000000000000000
      0000BD6651FFF3AC71FFED936FFFE88E69FFE38862FFDE825AFFE29659FFB559
      47FF0000000000000000000000000000000000000000FBFCFBFF70C870FF54DA
      7DFF6AED8AFF61E575FF57DE6AFF4FD864FF50DB7EFF44B44CFFDFEFDFFF0000
      0000DDECDDFF40AD47FF67B967FF0000000074B747FF70EF67FF7CEE6AFF80F0
      6EFF84F271FF87F472FF88F473FF87F273FF94EF73FF9DE872FF9BE56FFF86E7
      6BFF7AC54CFFB1DA98FF00000000000000000000000000000000D49C90FFD080
      4CFFF3A675FFF09776FFEF9574FFEC926EFFE88D68FFE38861FFDD8159FFDE8D
      56FFCB7C48FFC47F7DFFFEFEFEFF000000000000000000000000000000000000
      0000BE6851FFF4AC73FFEF9574FFEC926EFFE88D68FFE38861FFE59A5EFFB55A
      47FF00000000000000000000000000000000FCFCFCFF71CA71FF56DB7FFF73F2
      93FF71EF87FF6BEC80FF63E677FF59DF6CFF50D965FF50DB7FFF44B44CFFBFE3
      BFFF42B04AFF4EDA86FF67B967FF0000000076B647FF76E760FF8BE464FF91E9
      69FF96ED6FFF9CEF73FF9FF075FFA0F076FFA1EF76FFA0ED74FF9FEA73FF9CE6
      70FF87E86BFF7AC54CFFB1DA98FF0000000000000000D59D8FFFD1824CFFF0A4
      72FFEF9676FFF09677FFF09676FFEF9573FFEC926EFFE78D67FFE28760FFDD82
      58FFDE8F56FFCB7C48FFC47F7DFFFEFEFEFF0000000000000000000000000000
      0000C06A51FFF4AC74FFF09676FFEF9573FFEC926EFFE78D67FFE99E63FFB65C
      48FF00000000000000000000000000000000F5F8F5FF51C154FF61E692FF73EF
      8DFF74F089FF72F087FF6CED81FF64E778FF5AE06EFF51DA67FF51DC80FF36B6
      4BFF4AD778FF4BDA7BFF69BB69FF0000000077B447FF70E25BFF82DE5CFF8AE4
      62FF90E769FF95EB6EFF9BEF72FF9FF075FFA0F076FFA1EF76FFA0ED75FF9EEA
      73FF9BE670FF86E96BFF7AC54CFFB4DC9CFFD8A192FFBD5D37FFD88E51FFD78B
      52FFDD9458FFF2A275FFF09677FFF09676FFEF9572FFEB916DFFE99767FFD991
      53FFCE804BFFCD8049FFB04E36FFC68482FFE3C9C2FFD8B5ACFFD8B5ACFFDAB5
      ACFFBC6146FFF3AB73FFF09677FFF09676FFEF9572FFEB916DFFECA268FFB556
      40FFD7AFACFFD3ADABFFD2ADABFFDBBCBBFF00000000EAF4EAFF52C256FF61E6
      91FF72EE8CFF74F089FF72F088FF6DED82FF65E87AFF5CE16FFF53DB68FF4FDB
      71FF42CF55FF4BD978FF69BC69FF0000000076B345FF69DF54FF79D953FF81DE
      5AFF89E361FF8FE768FF95EB6EFF9AEE72FF9FF075FFA0F076FFA1F076FFA1EE
      75FF9FEA74FF8CEC6EFF7AC54CFFAFD896FFE8D3CDFFDFC1B9FFDFC1B9FFE0C1
      BAFFBD654AFFF2AB72FFEF9577FFF09677FFF09676FFEE9472FFEFA46CFFB75B
      40FFDDBDB9FFDABBB9FFDABAB9FFE1C8C7FFDCAA9CFFBE5E37FFDA9254FFDA8F
      55FFE0995CFFEF9D74FFEF9577FFF09677FFF09676FFEE9472FFED9B6CFFDE97
      59FFD48950FFD48A4FFFB25037FFCB8F8DFF0000000000000000EAF4EAFF52C2
      56FF61E690FF72EE8CFF74F089FF73F088FF6EEE83FF67E97BFF5DE271FF53DB
      66FF4AD45BFF4EDB7BFF69BD69FF0000000076B245FF65DB50FF73D44CFF79D9
      52FF81DD5AFF88E261FF8DE667FF94EB6CFF9AEE71FF9DF074FFA0F076FFA0F0
      76FF8EF173FF7AC54CFFABD58FFF000000000000000000000000000000000000
      0000C26F56FFF0A870FFED9275FFEF9577FFF09677FFF09675FFF2A670FFBA5F
      45FF0000000000000000000000000000000000000000DAA798FFCE7C47FFE79A
      6AFFE5896FFFE98E72FFED9275FFEF9577FFF09677FFF09675FFEE9471FFEA91
      6BFFEA9E66FFCB7A48FFCC8E8AFF00000000000000000000000000000000EAF4
      EAFF52C256FF61E590FF71ED8BFF74EF89FF73F089FF6FEE84FF68EA7CFF5FE3
      72FF55DC67FF54DF82FF6ABE6AFF0000000077B145FF5DE052FF64DB4FFF68DD
      54FF6EE259FF73E45EFF78E963FF7DEC68FF8AED6BFF98EE71FF9DF074FF8EF3
      73FF7AC54CFFA9D28BFF00000000000000000000000000000000000000000000
      0000C37156FFEDA56EFFEA8E73FFED9376FFF09577FFF09677FFF3A873FFBB61
      45FF000000000000000000000000000000000000000000000000DAA798FFCE7D
      47FFE79A6BFFE5896FFFEA8E73FFED9376FFF09577FFF09677FFF09675FFF1A4
      6FFFCE7E4BFFCD908AFF00000000000000000000000000000000000000000000
      0000EAF4EAFF52C256FF60E590FF71ED8AFF74EF89FF74F089FF70EF85FF69EA
      7EFF60E474FF5BE589FF6AC06AFF000000008DB359FF78B147FF77B247FF78B3
      47FF77B547FF76B547FF76B648FF70B540FF7AC54CFF91EA6AFF87F16FFF7AC5
      4CFFAAD08BFF0000000000000000000000000000000000000000000000000000
      0000C57256FFEAA16BFFE68A70FFEA8F73FFEE9376FFF09677FFF3A874FFBC63
      45FF00000000000000000000000000000000000000000000000000000000DAA7
      98FFCE7D47FFE89B6BFFE68A70FFEA8F73FFEE9376FFF09677FFF3A674FFD081
      4DFFCE938AFF0000000000000000000000000000000000000000000000000000
      000000000000CBEBCAFF3BC14BFF6CEB93FF71EB86FF74EF89FF74F089FF70EF
      86FF6AEB7FFF62E990FF6CC16BFF000000000000000000000000000000000000
      0000000000000000000000000000C2D7ACFF7AC54CFF7DE966FF7AC54CFFAACE
      8AFF000000000000000000000000000000000000000000000000000000000000
      0000C67356FFE69D68FFE1856CFFE68B70FFEB9074FFEE9376FFF3A774FFBE65
      46FF000000000000000000000000000000000000000000000000000000000000
      0000DAA798FFCF7D47FFE89B6CFFE68B70FFEB9074FFF1A474FFD1824DFFD096
      8BFF000000000000000000000000000000000000000000000000000000000000
      0000DEF0DDFF48C250FF5DDF8CFF66DF7BFF6CE580FF70EA85FF73EE89FF74F0
      89FF71EF87FF67ED97FF6CC26CFF000000000000000000000000000000000000
      0000000000000000000000000000C0D3ABFF7AC54CFF7AC54CFFABCD89FF0000
      0000000000000000000000000000000000000000000000000000000000000000
      0000C77457FFE39965FFDD7F67FFE2856CFFE78B71FFEB9074FFF2A673FFBF65
      46FF000000000000000000000000000000000000000000000000000000000000
      000000000000DAA798FFCF7D47FFE99C6CFFEC9D6FFFD2834DFFD2988BFF0000
      000000000000000000000000000000000000000000000000000000000000DEF0
      DDFF46C14AFF53DA87FF59DB87FF5DDF89FF60E38DFF63E691FF66E994FF68EC
      97FF69ED97FF62E997FF6DC36CFF000000000000000000000000000000000000
      0000000000000000000000000000C1D2ABFF7AC54CFFADCC8AFF000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000C77557FFE6A564FFE39865FFE79D69FFEBA16DFFEEA56FFFF3B270FFC067
      46FF000000000000000000000000000000000000000000000000000000000000
      00000000000000000000DAA798FFCF7D48FFD2824BFFD59D8FFF000000000000
      000000000000000000000000000000000000000000000000000000000000B8E7
      B7FF7DD37CFF7DD27CFF7CD17CFF7CD07CFF7CCF7BFF7CCE7BFF7BCD7BFF78CC
      78FF78CA78FF78C977FFABDDABFF000000000000000000000000000000000000
      0000000000000000000000000000CDDBBBFFB0CB8DFF00000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000D08D75FFC77453FFC67353FFC57253FFC47053FFC36F53FFC26F53FFC475
      63FF000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000DCAA9CFFD9A496FF00000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000FCFDFCFF84CA84FF54B757FFADDBADFF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000C3DEC3FF4BB34EFF4CB553FF4CB352FF4AB04EFFBFDFBFFF0000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000B4DC9CFFCEE3C2FF00000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000081CA81FF52D47AFF72F4A5FF3EB850FFDFEEDFFF00000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000AED2ADFF44CC6CFF49D871FF49D871FF44CC6DFFA9D5A9FF0000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000B1DA98FF7AC54CFFBDD8ACFF00000000000000000000
      0000000000000000000000000000000000000000000000000000000000008CD0
      8CFF4BCD6DFF74F097FF77F08DFF63E692FF69BE6AFF00000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000AED2AEFF44CC6AFF3ECB4FFF3DCB4EFF43CB6AFFA9D5A9FF0000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000B1DA98FF7AC54CFF7AC54CFFBDD8ABFF00000000000000000000
      00000000000000000000000000000000000000000000FEFEFEFF87CF86FF4ACC
      6BFF6FEB94FF76EE8AFF77F08CFF72F192FF44C561FFC2E3C2FF000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000AED3AEFF47CF6DFF42CF55FF3ECB4FFF43CB6AFFAAD6AAFF0000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000B1DA98FF7AC54CFF85E769FF7AC54CFFBFDAACFF00000000000000000000
      000000000000000000000000000000000000FDFDFDFF7CCC7BFF4BCE6FFF69E4
      8BFF70E785FF73F19CFF74F39CFF72EF88FF65EA94FF4DB651FFF9FBF9FF0000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000AED3AEFF4BD271FF4CD65FFF43CF55FF44CC6BFFAAD6AAFF0000
      0000000000000000000000000000000000009C6503FF976406FF986305FF9764
      06FF986305FF976406FF986305FF986205FFAD8641FF00000000000000000000
      000000000000000000000000000000000000000000000000000000000000B1DA
      98FF7AC54CFF86E66BFF9BE56FFF7AC54CFF71BC46FF7BC051FF7BBD51FF7CBD
      50FF7CBC50FF7DBA50FF7DBA4FFF91BD65FF95D795FF4ACE6EFF61DA7FFF68DE
      7DFF68E897FF42BD50FF44C55EFF70F194FF68E982FF4DD274FF97D297FF0000
      000000000000000000000000000000000000C2E0C2FFAFD6AFFFAFD6AFFFAFD5
      AFFFAFD5AFFF7FC87EFF4ED575FF58DE6CFF4DD760FF47CE6EFF7AC57AFFABD0
      ABFFABD0ABFFAED1AEFFAED1AEFFC1DBC1FFA06A08FF996402FF9B6301FF9964
      02FF9B6301FF996402FF9B6301FF976104FF0000000000000000000000000000
      000000000000F7F7F7FF00000000000000000000000000000000B1DA98FF7AC5
      4CFF86E76BFF9BE56FFF9DE872FF94EF73FF87F273FF88F473FF87F472FF84F2
      71FF80F06EFF7CEE6AFF70EF67FF74B747FF53C357FF5CD887FF5FD473FF62E3
      91FF44BD4FFFD3EDD3FF79C979FF60E48EFF68E87DFF5FE686FF3DB84DFFDFEE
      DFFF000000000000000000000000000000004BC050FF52D77AFF53D87AFF54D9
      7BFF55DA7CFF54D97CFF64EA92FF63E778FF59DF6CFF55DF81FF47CE6EFF44CC
      6BFF43CB69FF43CA68FF43CA6BFF45AE4AFFA09581FFA06907FFA06806FFA069
      07FFA06806FFA06907FF9F6805FF000000000000000000000000000000000000
      0000F2F2F2FFDCDCDCFFA26B09FF0000000000000000B1DA98FF7AC54CFF87E8
      6BFF9CE670FF9FEA73FFA0ED74FFA1EF76FFA0F076FF9FF075FF9CEF73FF96ED
      6FFF91E969FF8BE464FF76E760FF76B647FF7CD07CFF4ED275FF55D880FF47BE
      50FFD8EED8FF00000000E4F1E4FF40BE50FF67EC8FFF5BDF6FFF53DC81FF5CBB
      5EFFFDFDFDFF0000000000000000000000004EC355FF64E38DFF68E17DFF6EE8
      84FF72ED89FF74F08BFF72F088FF6DED82FF65E879FF5BE06EFF51D964FF47D2
      5AFF40CD52FF3DCB4FFF48D770FF48B350FFD3D3D3FFA86F09FFA56E09FFA56F
      0AFFA56E09FFA56F0AFFA66E08FFEDE4D5FF000000000000000000000000D4D4
      D4FFC3C3C2FFAD720AFFECE2CFFF00000000B4DC9CFF7AC54CFF86E96BFF9BE6
      70FF9EEA73FFA0ED75FFA1EF76FFA0F076FF9FF075FF9BEF72FF95EB6EFF90E7
      69FF8AE462FF82DE5CFF70E25BFF77B447FFF5F9F5FF9BDA9BFF91D690FFE8F4
      E8FF00000000000000000000000092D492FF52D87BFF5BE073FF51D96AFF44CA
      68FF9CD59CFF0000000000000000000000004EC455FF5EDB86FF60D874FF67E0
      7CFF6DE783FF71EC88FF74EF89FF73F089FF6EEE83FF66E97BFF5CE271FF52DA
      66FF48D35BFF41CD53FF48D770FF49B450FFDBDBDBFFB4770DFFAC740DFFAC75
      0EFFAC740DFFAC750EFFAC740DFFAD740DFFAB7614FF9E9077FF9E8C6FFFB077
      0EFFAE740DFFAA700DFF0000000000000000AFD896FF7AC54CFF8CEC6EFF9FEA
      74FFA1EE75FFA1F076FFA0F076FF9FF075FF9AEE72FF95EB6EFF8FE768FF89E3
      61FF81DE5AFF79D953FF69DF54FF76B345FF0000000000000000000000000000
      0000000000000000000000000000F7FAF7FF4EBC53FF5BE389FF4ED55FFF4DD9
      73FF3BB84DFFD4EAD4FF00000000000000004CC250FF4DD375FF4ED475FF51D6
      77FF53D87AFF54D97CFF68EB96FF74EF89FF73F089FF67EC95FF51D778FF4DD4
      75FF4AD171FF47CE6DFF45CD6DFF46B24BFFF8F8F8FFA38247FFB47A11FFB47B
      12FFB47A11FFB47B12FFB47A11FFB47B12FFB47A11FFB47B12FFB47A11FFB47B
      12FFB47A11FFF3EBDDFF000000000000000000000000ABD58FFF7AC54CFF8EF1
      73FFA0F076FFA0F076FF9DF074FF9AEE71FF94EB6CFF8DE667FF88E261FF81DD
      5AFF79D952FF73D44CFF65DB50FF76B245FF0000000000000000000000000000
      000000000000000000000000000000000000CCE8CCFF3FC256FF53DC76FF44CE
      55FF4DD87AFF4BB750FFF3F8F3FF00000000C1E3C1FFAEDBAEFFAEDAAEFFAEDA
      AEFFAEDAAEFF7ECD7EFF54D97AFF70EB87FF73EF8AFF57DB7FFF7BCA7BFFADD6
      ADFFADD6ADFFADD5ADFFADD5ADFFC0DEC0FF00000000BFBDBBFFBB8015FFBA7E
      14FFB29663FFBB7F15FFBB8015FFBB8016FFBB8015FFBB8016FFBB8015FFBA80
      15FFD2B278FF0000000000000000000000000000000000000000A9D28BFF7AC5
      4CFF8EF373FF9DF074FF98EE71FF8AED6BFF7DEC68FF78E963FF73E45EFF6EE2
      59FF68DD54FF64DB4FFF5DE052FF77B145FF0000000000000000000000000000
      000000000000000000000000000000000000000000008FD38FFF49D16FFF47D1
      5FFF44CE57FF49D274FF71C471FF000000000000000000000000000000000000
      000000000000AFD6AFFF51D778FF6BE480FF70EA85FF56DB7EFFABDAABFF0000
      00000000000000000000000000000000000000000000D3D3D3FFC48718FFEEE0
      C7FF0000000000000000C99E51FFBC8116FFBF8417FFBE8317FFB97E14FFF3EA
      D9FF00000000000000000000000000000000000000000000000000000000AAD0
      8BFF7AC54CFF87F16FFF91EA6AFF7AC54CFF70B540FF76B648FF76B547FF77B5
      47FF78B347FF77B247FF78B147FF8DB359FF0000000000000000000000000000
      00000000000000000000000000000000000000000000FBFCFBFF5DC15FFF4DD8
      7AFF43CD55FF47D262FF41C661FFA6D9A5FF0000000000000000000000000000
      000000000000AFD7AFFF4FD475FF63DB77FF6AE37EFF55D97DFFABDAABFF0000
      0000000000000000000000000000000000000000000000000000D1AB63FF0000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000AACE8AFF7AC54CFF7DE966FF7AC54CFFC2D7ACFF00000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000E8F3E8FF46BC
      4DFF4DD97AFF42CC52FF4EDA79FF52BA56FF0000000000000000000000000000
      000000000000AFD7AFFF4CD272FF5BD26EFF62DA76FF53D77BFFABDBABFF0000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000ABCD89FF7AC54CFF7AC54CFFC0D3ABFF00000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000D2EB
      D2FF3FBD4CFF4FDB7EFF49D374FF72C673FF0000000000000000000000000000
      000000000000AFD7AFFF4BD172FF59D782FF5FDD89FF51D67AFFABDCABFF0000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000ADCC8AFF7AC54CFFC1D2ABFF00000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000CAE9CAFF6AC56AFF85CE85FFF1F7F1FF0000000000000000000000000000
      000000000000C5E2C5FF52C455FF53C558FF53C458FF52C255FFC2E5C1FF0000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000B0CB8DFFCDDBBBFF00000000000000000000
      000000000000000000000000000000000000424D3E000000000000003E000000
      2800000040000000400000000100010000000000000200000000000000000000
      000000000000000000000000FFFFFF0000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000E001FFFFC7E3C001E001FF9F83C1C001
      F001FFCF0180C001F801FFC70000C001F801FFE30000C000F001FFE38001C000
      E0018FE1C003C001C00183E1E007C00180018071E007C00100018061C003C001
      801181E18001C000C03900010000C000E07D00010000C000F0FF20030180C000
      F9FF700783C1C003FFFFFC0FC7E3C007FE7FFE3FF00FF9FFFE3FFC1FF00FF0FF
      FE1FF80FF00FE07FFE0FF007F00FC0390007E003F00F80110003C001F00F0001
      00018000F00F00010000000000008001000000000000C0010001F00F8001E001
      0003F00FC003F0010007F00FE007F801FE0FF00FF00FF001FE1FF00FF81FE001
      FE3FF00FFC3FE001FE7FF00FFE7FFFFFF0FFF81FFFFFFE7FF07FF81FFFFFFC7F
      E07FF81FFFFFF87F803FF81FFFFFF07F001FF81F007FE000001F000000FBC000
      000F000001F180000407000000E100000E07000000030000FE03000000038000
      FF0100008007C000FF81F81F8C0FE000FF80F81FDFFFF07FFFC0F81FFFFFF87F
      FFE0F81FFFFFFC7FFFF0F81FFFFFFE7F00000000000000000000000000000000
      000000000000}
  end
end
