inherited FrAddDocument: TFrAddDocument
  Tag = 9
  Left = 565
  Top = 264
  BorderStyle = bsDialog
  Caption = #1575#1610#1580#1575#1583' '#1587#1606#1583' '#1576#1575#1610#1711#1575#1606#1610
  ClientHeight = 431
  ClientWidth = 884
  Constraints.MaxHeight = 470
  Constraints.MaxWidth = 900
  Constraints.MinHeight = 470
  Constraints.MinWidth = 900
  OldCreateOrder = True
  Position = poMainFormCenter
  PixelsPerInch = 96
  TextHeight = 13
  object pnlMain: TPanel [0]
    Left = 0
    Top = 0
    Width = 884
    Height = 431
    Align = alClient
    ParentColor = True
    TabOrder = 0
    object xpPageControl1: TxpPageControl
      Left = 1
      Top = 1
      Width = 882
      Height = 429
      ActivePage = xpTabSheet1
      Align = alClient
      ParentShowHint = False
      ShowHint = True
      Style = pcsXP
      TabHeight = 23
      TabOrder = 0
      TabPosition = tpTop
      OnChange = xpPageControl1Change
      BorderColor = clBtnFace
      TabTextAlignment = taCenter
      object xpTabSheet1: TxpTabSheet
        Caption = #1587#1606#1583' '#1576#1575#1610#1711#1575#1606#1610
        Color = clBtnFace
        BGStyle = bgsNone
        GradientStartColor = clWhite
        GradientEndColor = clBtnFace
        GradientFillDir = fdTopToBottom
        DesignSize = (
          874
          396)
        object Label4: TLabel
          Left = 794
          Top = 263
          Width = 75
          Height = 13
          Anchors = [akTop, akRight]
          Caption = #1578#1608#1590#1610#1581#1575#1578' '#1576#1575#1610#1711#1575#1606#1610
          Transparent = True
        end
        object MainPanel: TPanel
          Left = 0
          Top = 60
          Width = 874
          Height = 200
          Align = alTop
          BevelOuter = bvNone
          BorderStyle = bsSingle
          ParentColor = True
          TabOrder = 0
          DesignSize = (
            870
            196)
          object Label14: TLabel
            Left = 786
            Top = 41
            Width = 80
            Height = 13
            Anchors = [akTop, akRight]
            Caption = #1605#1608#1590#1608#1593' '#1610#1575' '#1606#1608#1593' '#1606#1575#1605#1607
            Font.Charset = ARABIC_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
          end
          object Label11: TLabel
            Left = 812
            Top = 64
            Width = 53
            Height = 13
            Anchors = [akTop, akRight]
            Caption = #1601#1585#1605' '#1662#1610#1608#1587#1578
            Font.Charset = ARABIC_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
            Visible = False
          end
          object UserField: TLabel
            Left = 784
            Top = 10
            Width = 82
            Height = 13
            Anchors = [akTop, akRight]
            Caption = #1588#1605#1575#1585#1607' '#1583#1575#1606#1588#1580#1608#1610#1610
            FocusControl = DBEdit12
            Font.Charset = ARABIC_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
          end
          object Label2: TLabel
            Left = 814
            Top = 86
            Width = 54
            Height = 13
            Anchors = [akTop, akRight]
            Caption = #1582#1604#1575#1589#1607' '#1587#1606#1583
          end
          object DBMemo2: TDBMemo
            Left = 473
            Top = 102
            Width = 393
            Height = 91
            Alignment = taRightJustify
            Anchors = [akTop, akRight]
            BiDiMode = bdRightToLeftNoAlign
            DataField = 'Memo'
            DataSource = DSForm
            Font.Charset = ARABIC_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentBiDiMode = False
            ParentFont = False
            TabOrder = 0
            OnEnter = DBMemo2Enter
            OnExit = DBMemo2Exit
          end
          object DBLookupComboBox1: TDBLookupComboBox
            Left = 519
            Top = 37
            Width = 260
            Height = 21
            Anchors = [akTop, akRight]
            BiDiMode = bdLeftToRight
            DataField = 'SubjectTitle'
            DataSource = DSForm
            Font.Charset = ARABIC_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentBiDiMode = False
            ParentFont = False
            TabOrder = 1
          end
          object DBLookupComboBox5: TDBLookupComboBox
            Left = 519
            Top = 60
            Width = 260
            Height = 21
            Anchors = [akTop, akRight]
            BiDiMode = bdLeftToRight
            DataField = 'UserTableTitle'
            DataSource = DSForm
            ParentBiDiMode = False
            TabOrder = 2
            Visible = False
          end
          object DBEdit12: TDBEdit
            Left = 519
            Top = 6
            Width = 260
            Height = 21
            Anchors = [akTop, akRight]
            Color = clWhite
            DataField = 'UserMemo'
            DataSource = DSForm
            Font.Charset = ARABIC_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
            TabOrder = 3
            OnEnter = TEditEnter
            OnExit = TEditExit
          end
          object BitBtn1: TAdvGlowButton
            Left = 2
            Top = 9
            Width = 73
            Height = 25
            Caption = #1575#1606#1578#1582#1575#1576
            Default = True
            ImageIndex = 79
            Images = Dm.ImageList_MainNew
            NotesFont.Charset = DEFAULT_CHARSET
            NotesFont.Color = clWindowText
            NotesFont.Height = -11
            NotesFont.Name = 'Tahoma'
            NotesFont.Style = []
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
          object BitBtn3: TAdvGlowButton
            Left = 2
            Top = 41
            Width = 73
            Height = 25
            Caption = #1581#1584#1601
            ImageIndex = 90
            Images = Dm.ImageList_MainNew
            NotesFont.Charset = DEFAULT_CHARSET
            NotesFont.Color = clWindowText
            NotesFont.Height = -11
            NotesFont.Name = 'Tahoma'
            NotesFont.Style = []
            TabOrder = 5
            OnClick = BitBtn3Click
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
            Left = 2
            Top = 73
            Width = 73
            Height = 25
            Caption = #1605#1588#1575#1607#1583#1607
            ImageIndex = 90
            Images = Dm.LetterImages_New
            NotesFont.Charset = DEFAULT_CHARSET
            NotesFont.Color = clWindowText
            NotesFont.Height = -11
            NotesFont.Name = 'Tahoma'
            NotesFont.Style = []
            TabOrder = 6
            OnClick = BitBtn4Click
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
          object PageControl1: TPageControl
            Left = 80
            Top = 7
            Width = 393
            Height = 185
            ActivePage = TabSheet1
            TabOrder = 7
            object TabSheet1: TTabSheet
              Caption = #1575#1587#1606#1575#1583' '#1605#1585#1578#1576#1591
              object lettersDbGrid: TDBGrid
                Left = 0
                Top = 0
                Width = 385
                Height = 157
                Align = alClient
                DataSource = DSRelated
                Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit]
                PopupMenu = PopupMenu
                TabOrder = 0
                TitleFont.Charset = ARABIC_CHARSET
                TitleFont.Color = clWindowText
                TitleFont.Height = -11
                TitleFont.Name = 'Tahoma'
                TitleFont.Style = []
                OnDblClick = BitBtn4Click
                Columns = <
                  item
                    Alignment = taCenter
                    Expanded = False
                    FieldName = 'IndicatorID'
                    Title.Alignment = taCenter
                    Title.Caption = #1575#1606#1583#1610#1705#1575#1578#1608#1585
                    Width = 86
                    Visible = True
                  end
                  item
                    Alignment = taCenter
                    Expanded = False
                    FieldName = 'InnerNo'
                    Title.Alignment = taCenter
                    Title.Caption = #1588#1605#1575#1585#1607' '#1578#1585#1705#1610#1576#1610
                    Width = 129
                    Visible = True
                  end
                  item
                    Alignment = taCenter
                    Expanded = False
                    FieldName = 'Memo'
                    Title.Alignment = taCenter
                    Title.Caption = #1582#1604#1575#1589#1607' '#1587#1606#1583
                    Width = 200
                    Visible = True
                  end
                  item
                    Alignment = taCenter
                    Expanded = False
                    FieldName = 'SubjectDescription'
                    Title.Alignment = taCenter
                    Title.Caption = #1578#1608#1590#1610#1581#1575#1578' '#1576#1575#1610#1711#1575#1606#1610
                    Width = 200
                    Visible = True
                  end>
              end
            end
            object TabSheet2: TTabSheet
              Caption = #1601#1610#1604#1578#1585
              ImageIndex = 1
              DesignSize = (
                385
                157)
              object Label6: TLabel
                Left = 299
                Top = 11
                Width = 76
                Height = 13
                Anchors = [akTop, akRight]
                Caption = #1588#1605#1575#1585#1607' '#1575#1606#1583#1610#1705#1575#1578#1608#1585' :'
              end
              object Label7: TLabel
                Left = 299
                Top = 43
                Width = 61
                Height = 13
                Anchors = [akTop, akRight]
                Caption = #1582#1604#1575#1589#1607' '#1587#1606#1583' :'
              end
              object Label8: TLabel
                Left = 299
                Top = 75
                Width = 82
                Height = 13
                Anchors = [akTop, akRight]
                Caption = #1578#1608#1590#1610#1581#1575#1578' '#1576#1575#1610#1711#1575#1606#1610' :'
              end
              object Label9: TLabel
                Left = 46
                Top = 40
                Width = 19
                Height = 46
                Caption = '}'
                Font.Charset = ARABIC_CHARSET
                Font.Color = clWindowText
                Font.Height = -40
                Font.Name = 'Times New Roman'
                Font.Style = []
                ParentFont = False
              end
              object txtIndicatorID: TEdit
                Left = 171
                Top = 8
                Width = 121
                Height = 21
                Anchors = [akTop, akRight]
                BiDiMode = bdRightToLeftReadingOnly
                ParentBiDiMode = False
                TabOrder = 0
              end
              object txtMemo: TEdit
                Left = 64
                Top = 40
                Width = 228
                Height = 21
                Anchors = [akLeft, akTop, akRight]
                TabOrder = 1
              end
              object txtSubjectDescription: TEdit
                Left = 64
                Top = 72
                Width = 228
                Height = 21
                Anchors = [akLeft, akTop, akRight]
                TabOrder = 2
              end
              object BitBtn5: TAdvGlowButton
                Left = 5
                Top = 128
                Width = 75
                Height = 25
                Caption = #1581#1584#1601' '#1601#1610#1604#1578#1585
                NotesFont.Charset = DEFAULT_CHARSET
                NotesFont.Color = clWindowText
                NotesFont.Height = -11
                NotesFont.Name = 'Tahoma'
                NotesFont.Style = []
                TabOrder = 3
                OnClick = BitBtn5Click
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
                Left = 88
                Top = 128
                Width = 75
                Height = 25
                Caption = #1575#1593#1605#1575#1604' '#1601#1610#1604#1578#1585
                NotesFont.Charset = DEFAULT_CHARSET
                NotesFont.Color = clWindowText
                NotesFont.Height = -11
                NotesFont.Name = 'Tahoma'
                NotesFont.Style = []
                TabOrder = 4
                OnClick = BitBtn6Click
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
              object RadioButton1: TRadioButton
                Left = 0
                Top = 48
                Width = 41
                Height = 17
                Caption = #1608
                Checked = True
                TabOrder = 5
                TabStop = True
              end
              object RadioButton2: TRadioButton
                Left = 16
                Top = 72
                Width = 25
                Height = 17
                Caption = #1610#1575
                TabOrder = 6
              end
            end
          end
        end
        object GroupBox3: TPanel
          Left = 0
          Top = 32
          Width = 874
          Height = 28
          Align = alTop
          Anchors = [akTop, akRight]
          BevelInner = bvLowered
          Font.Charset = ARABIC_CHARSET
          Font.Color = clBlue
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentColor = True
          ParentFont = False
          TabOrder = 1
          DesignSize = (
            874
            28)
          object Label1: TLabel
            Left = 801
            Top = 7
            Width = 69
            Height = 13
            Anchors = [akTop, akRight]
            Caption = #1588#1605#1575#1585#1607' '#1575#1606#1583#1610#1705#1575#1578#1608#1585
            FocusControl = DBEdit1
            Font.Charset = ARABIC_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
          end
          object Label12: TLabel
            Left = 502
            Top = 7
            Width = 43
            Height = 13
            Anchors = [akTop, akRight]
            Caption = #1586#1605#1575#1606' '#1579#1576#1578' '
            Font.Charset = ARABIC_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
          end
          object Label24: TLabel
            Left = 644
            Top = 7
            Width = 44
            Height = 13
            Anchors = [akTop, akRight]
            Caption = #1578#1575#1585#1610#1582' '#1579#1576#1578' '
            FocusControl = DBEdit23
            Font.Charset = ARABIC_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
          end
          object Label3: TLabel
            Left = 382
            Top = 7
            Width = 44
            Height = 13
            Anchors = [akTop, akRight]
            Caption = #1579#1576#1578' '#1705#1606#1606#1583#1607
            Font.Charset = ARABIC_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
          end
          object Label13: TLabel
            Left = 98
            Top = 6
            Width = 89
            Height = 13
            Anchors = [akTop, akRight]
            Caption = #1588#1605#1575#1585#1607' '#1587#1606#1583' '#1578#1585#1705#1610#1576#1610
            FocusControl = DBEIndicatorInnerNo
            Font.Charset = ARABIC_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
          end
          object DBEdit1: TDBEdit
            Left = 703
            Top = 5
            Width = 90
            Height = 19
            TabStop = False
            Anchors = [akTop, akRight]
            BiDiMode = bdLeftToRight
            Ctl3D = False
            DataField = 'IndicatorID'
            DataSource = DSForm
            Font.Charset = ARABIC_CHARSET
            Font.Color = clBlue
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentBiDiMode = False
            ParentCtl3D = False
            ParentFont = False
            TabOrder = 0
          end
          object DBEdit23: TDBShamsiDateEdit
            Left = 561
            Top = 5
            Width = 81
            Height = 19
            TabStop = False
            Anchors = [akTop, akRight]
            BiDiMode = bdLeftToRight
            CheckValidity = True
            ShowMsg = False
            Ctl3D = False
            DataField = 'RegistrationDate'
            DataSource = DSForm
            Font.Charset = ARABIC_CHARSET
            Font.Color = clBlue
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentBiDiMode = False
            ParentCtl3D = False
            ParentFont = False
            ReadOnly = True
            TabOrder = 1
          end
          object DBEdit24: TDBEdit
            Left = 441
            Top = 5
            Width = 58
            Height = 19
            TabStop = False
            Anchors = [akTop, akRight]
            BiDiMode = bdLeftToRight
            Ctl3D = False
            DataField = 'RegistrationTime'
            DataSource = DSForm
            Font.Charset = ARABIC_CHARSET
            Font.Color = clBlue
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentBiDiMode = False
            ParentCtl3D = False
            ParentFont = False
            ReadOnly = True
            TabOrder = 2
          end
          object DBEdit4: TDBEdit
            Left = 193
            Top = 5
            Width = 185
            Height = 19
            TabStop = False
            Anchors = [akTop, akRight]
            BiDiMode = bdLeftToRight
            Ctl3D = False
            DataField = 'UserTitle'
            DataSource = DSForm
            Font.Charset = ARABIC_CHARSET
            Font.Color = clBlue
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentBiDiMode = False
            ParentCtl3D = False
            ParentFont = False
            ReadOnly = True
            TabOrder = 3
          end
          object DBEIndicatorInnerNo: TDBEdit
            Left = 4
            Top = 4
            Width = 94
            Height = 20
            TabStop = False
            Anchors = [akTop, akRight]
            BiDiMode = bdRightToLeft
            Ctl3D = False
            DataField = 'IndicatorInnerNo'
            DataSource = DSForm
            Font.Charset = ARABIC_CHARSET
            Font.Color = clBlue
            Font.Height = -12
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentBiDiMode = False
            ParentCtl3D = False
            ParentFont = False
            TabOrder = 4
          end
        end
        object Panel1: TPanel
          Left = 0
          Top = 0
          Width = 874
          Height = 32
          Align = alTop
          BevelInner = bvLowered
          ParentColor = True
          TabOrder = 2
          DesignSize = (
            874
            32)
          object Apicture: TAdvGlowButton
            Left = 293
            Top = 2
            Width = 96
            Height = 27
            Cursor = crHandPoint
            Caption = #1578#1589#1608#1610#1585
            ImageIndex = 56
            Images = Dm.ImageList_MainNew
            NotesFont.Charset = DEFAULT_CHARSET
            NotesFont.Color = clWindowText
            NotesFont.Height = -11
            NotesFont.Name = 'Tahoma'
            NotesFont.Style = []
            TabOrder = 0
            OnClick = ApictureClick
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
          object AexpotToWord: TAdvGlowButton
            Left = 99
            Top = 2
            Width = 96
            Height = 27
            Cursor = crHandPoint
            Caption = 'Word'
            ImageIndex = 43
            Images = Dm.ImageList_MainNew
            NotesFont.Charset = DEFAULT_CHARSET
            NotesFont.Color = clWindowText
            NotesFont.Height = -11
            NotesFont.Name = 'Tahoma'
            NotesFont.Style = []
            TabOrder = 1
            OnClick = AexpotToWordClick
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
          object ActionToolBar1: TActionToolBar
            Left = 552
            Top = 2
            Width = 320
            Height = 28
            ActionManager = ActionManager
            Align = alNone
            Anchors = [akTop, akRight, akBottom]
            Caption = 'ActionToolBar1'
            ColorMap.HighlightColor = clWhite
            ColorMap.BtnSelectedColor = clBtnFace
            ColorMap.UnusedColor = clWhite
            EdgeBorders = [ebTop, ebBottom]
            Orientation = boRightToLeft
            Spacing = 0
          end
          object AAddLetterData: TAdvGlowButton
            Left = 2
            Top = 2
            Width = 96
            Height = 27
            Cursor = crHandPoint
            Caption = #1662#1610#1608#1587#1578' '#1607#1575
            ImageIndex = 120
            Images = Dm.LetterImages_New
            NotesFont.Charset = DEFAULT_CHARSET
            NotesFont.Color = clWindowText
            NotesFont.Height = -11
            NotesFont.Name = 'Tahoma'
            NotesFont.Style = []
            TabOrder = 3
            OnClick = AAddLetterDataClick
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
            Left = 196
            Top = 2
            Width = 96
            Height = 27
            Caption = #1601#1585#1605' '#1607#1575#1610' '#1575#1583#1575#1585#1610
            ImageIndex = 28
            Images = Dm.ImageList_MainNew
            NotesFont.Charset = DEFAULT_CHARSET
            NotesFont.Color = clWindowText
            NotesFont.Height = -11
            NotesFont.Name = 'Tahoma'
            NotesFont.Style = []
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
        object DBMemo1: TDBMemo
          Left = 0
          Top = 277
          Width = 874
          Height = 82
          Align = alBottom
          Alignment = taRightJustify
          BiDiMode = bdRightToLeftNoAlign
          DataField = 'SubjectDescription'
          DataSource = DSForm
          Font.Charset = ARABIC_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentBiDiMode = False
          ParentFont = False
          TabOrder = 3
        end
        object GroupBox5: TGroupBox
          Left = 0
          Top = 359
          Width = 874
          Height = 37
          Align = alBottom
          TabOrder = 4
          object lblHasForms: TLabel
            Left = 2
            Top = 15
            Width = 870
            Height = 20
            Align = alClient
          end
        end
      end
      object xpForms: TxpTabSheet
        Caption = #1604#1610#1587#1578' '#1601#1585#1605' '#1607#1575#1610' '#1575#1583#1575#1585#1610' '#1662#1610#1608#1587#1578' '#1588#1583#1607
        Color = clWhite
        BGStyle = bgsNone
        GradientStartColor = clWhite
        GradientEndColor = clSilver
        GradientFillDir = fdTopToBottom
        object Panel2: TPanel
          Left = 0
          Top = 0
          Width = 874
          Height = 216
          Align = alTop
          ParentColor = True
          TabOrder = 0
          object Label26: TLabel
            Left = 674
            Top = 8
            Width = 145
            Height = 13
            Caption = #1580#1587#1578#1580#1608' '#1576#1585' '#1575#1587#1575#1587' '#1593#1606#1608#1575#1606' '#1601#1585#1605
            Font.Charset = ARABIC_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object lblCount: TLabel
            Left = 419
            Top = 8
            Width = 39
            Height = 13
            Caption = 'lblCount'
            Font.Charset = ARABIC_CHARSET
            Font.Color = 4227072
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
          end
          object SearchEdit: TEdit
            Left = 467
            Top = 5
            Width = 202
            Height = 21
            Color = clWhite
            TabOrder = 0
          end
          object YDBGrid1: TYDBGrid
            Left = 8
            Top = 31
            Width = 857
            Height = 151
            Cursor = crHandPoint
            DataSource = dsQAddedForms
            Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit]
            ReadOnly = True
            TabOrder = 1
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
            InvertFarsiDate = True
            TitleSort = True
            AutoInsert = False
            FooterFields = 'Count'
            Columns = <
              item
                Expanded = False
                FieldName = 'Description'
                Title.Caption = #1593#1606#1608#1575#1606' '#1601#1585#1605
                Title.Color = 14011088
                Width = 220
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'TableCode'
                Title.Caption = #1705#1583' '#1575#1610#1586#1608
                Title.Color = 14999265
                Width = 100
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'UserField1'
                Title.Caption = #1578#1608#1590#1610#1581#1575#1578' '#1610#1705
                Title.Color = 15789294
                Width = 220
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'UserField2'
                Title.Caption = #1578#1608#1590#1610#1581#1575#1578' '#1583#1608
                Title.Color = 16381944
                Width = 220
                Visible = True
              end>
          end
          object xpBitBtn5: TAdvGlowButton
            Left = 91
            Top = 185
            Width = 80
            Height = 24
            Cursor = crHandPoint
            Caption = #1581#1584#1601' '#1601#1585#1605
            Font.Charset = ARABIC_CHARSET
            Font.Color = clNavy
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            ImageIndex = 16
            Images = Dm.ImageList_MainNew
            NotesFont.Charset = DEFAULT_CHARSET
            NotesFont.Color = clWindowText
            NotesFont.Height = -11
            NotesFont.Name = 'Tahoma'
            NotesFont.Style = []
            ParentFont = False
            TabOrder = 2
            OnClick = xpBitBtn5Click
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
          object btnShowForm: TAdvGlowButton
            Left = 10
            Top = 185
            Width = 80
            Height = 24
            Cursor = crHandPoint
            Caption = #1606#1605#1575#1610#1588' '#1601#1585#1605
            Font.Charset = ARABIC_CHARSET
            Font.Color = clNavy
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            ImageIndex = 14
            Images = Dm.ImageList_MainNew
            NotesFont.Charset = DEFAULT_CHARSET
            NotesFont.Color = clWindowText
            NotesFont.Height = -11
            NotesFont.Name = 'Tahoma'
            NotesFont.Style = []
            ParentFont = False
            TabOrder = 3
            OnClick = btnShowFormClick
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
        object xpPageControl2: TxpPageControl
          Left = 0
          Top = 216
          Width = 874
          Height = 180
          Align = alClient
          ParentShowHint = False
          ShowHint = True
          Style = pcsXP
          TabOrder = 1
          TabPosition = tpTop
          BorderColor = clSilver
          TabTextAlignment = taCenter
        end
      end
    end
  end
  inherited DSForm: TDataSource
    AutoEdit = False
    DataSet = Select_Letter
    OnDataChange = DSFormDataChange
    Left = 187
    Top = 107
  end
  inherited ActionList: TActionList
    Top = 96
  end
  inherited Grid_PopupMenu: TPopupMenu
    Left = 327
    Top = 196
  end
  inherited Timer1sssss: TTimer
    Left = 384
    Top = 192
  end
  inherited ApplicationEvents1: TApplicationEvents
    Left = 200
    Top = 160
  end
  object ActionManager: TActionManager
    ActionBars.SessionCount = 262
    ActionBars = <
      item
        Items = <
          item
            Action = acSBDataSetInsert
            Caption = ' '#1606#1575#1605#1607' '#1580#1583#1610#1583' &Ins'
            ImageIndex = 2
            ShortCut = 45
          end
          item
            Action = acSBDataSetDelete
            Caption = #1581#1584#1601' &Ctrl+Del'
            ImageIndex = 3
            ShortCut = 16430
          end
          item
            Action = acSBDataSetEdit
            Caption = #1608#1610#1585#1575#1610#1588' &F4'
            ImageIndex = 14
            ShortCut = 115
          end
          item
            Action = acSBDataSetPost
            Caption = #1584#1582#1610#1585#1607' F&2 '
            ImageIndex = 4
            ShortCut = 113
          end
          item
            Action = acSBDataSetCancel
            Caption = #1604#1594#1608' C&trl+Z'
            ImageIndex = 5
            ShortCut = 16474
          end>
        AutoSize = False
      end
      item
        Items = <
          item
            Action = Action11
            Caption = '&Esc '#1582#1585#1608#1580
            ImageIndex = 12
            LastSession = 19
            ShortCut = 27
          end>
        AutoSize = False
      end
      item
        Items = <
          item
            Items = <
              item
                Action = acSBDataSetInsert
                ImageIndex = 2
                ShortCut = 45
              end
              item
                Action = acSBDataSetDelete
                ImageIndex = 3
                ShortCut = 16430
              end
              item
                Action = acSBDataSetEdit
                ImageIndex = 13
                ShortCut = 115
              end
              item
                Action = acSBDataSetPost
                ImageIndex = 4
                ShortCut = 113
              end
              item
                Action = acSBDataSetCancel
                ImageIndex = 5
                ShortCut = 32776
              end>
            Caption = #1578#1594#1610#1610#1585#1575#1578
          end
          item
            Caption = #1606#1575#1605#1607
          end
          item
            Items = <
              item
                Action = Action11
                ImageIndex = 14
                ShortCut = 27
              end>
            Caption = #1587#1610#1587#1578#1605
          end>
        AutoSize = False
      end
      item
        Items = <
          item
            Action = acSBDataSetInsert
            ImageIndex = 2
            ShortCut = 45
          end
          item
            Action = acSBDataSetEdit
            ImageIndex = 13
            ShortCut = 115
          end
          item
            Action = acSBDataSetPost
            ImageIndex = 4
            ShortCut = 113
          end
          item
            Action = acSBDataSetCancel
            ImageIndex = 5
            ShortCut = 16474
          end
          item
            Action = Action13
            LastSession = 51
            ShortCut = 16469
          end
          item
            Action = Action13
            ShortCut = 16469
          end>
        AutoSize = False
      end
      item
        Items = <
          item
            Action = acSBDataSetInsert
            ImageIndex = 14
            ShortCut = 45
          end
          item
            Action = acSBDataSetEdit
            ImageIndex = 9
            ShortCut = 115
          end
          item
            Action = acSBDataSetPost
            ImageIndex = 32
            ShortCut = 113
          end
          item
            Action = acSBDataSetCancel
            ImageIndex = 6
            ShortCut = 32776
          end>
        AutoSize = False
      end
      item
        Items = <
          item
            Action = acSBDataSetInsert
            ImageIndex = 14
            ShortCut = 45
          end>
      end
      item
        Items = <
          item
            Action = acSBDataSetInsert
            ImageIndex = 60
            ShortCut = 45
          end
          item
            Action = acSBDataSetEdit
            ImageIndex = 2
            ShortCut = 115
          end
          item
            Action = acSBDataSetPost
            ImageIndex = 59
            ShortCut = 113
          end
          item
            Action = acSBDataSetCancel
            ImageIndex = 1
            ShortCut = 32776
          end>
        ActionBar = ActionToolBar1
      end>
    Images = Dm.ImageList_MainNew
    OnExecute = ActionManagerExecute
    Left = 536
    Top = 16
    StyleName = 'XP Style'
    object acSBDataSetInsert: TDataSetInsert
      Tag = 1
      Category = #1578#1594#1610#1610#1585#1575#1578
      Caption = #1580#1583#1610#1583
      Hint = 'Insert'
      ImageIndex = 60
      ShortCut = 45
      OnExecute = acSBDataSetInsertExecute
      DataSource = DSForm
    end
    object acSBDataSetDelete: TDataSetDelete
      Tag = 2
      Category = #1578#1594#1610#1610#1585#1575#1578
      Caption = #1581#1584#1601' '
      Enabled = False
      Hint = 'Delete'
      ImageIndex = 90
      ShortCut = 16430
      OnExecute = acSBDataSetDeleteExecute
      DataSource = DSForm
    end
    object acSBDataSetEdit: TDataSetEdit
      Tag = 3
      Category = #1578#1594#1610#1610#1585#1575#1578
      Caption = #1608#1610#1585#1575#1610#1588' '
      Hint = 'Edit'
      ImageIndex = 2
      ShortCut = 115
      OnExecute = acSBDataSetEditExecute
      DataSource = DSForm
    end
    object acSBDataSetPost: TDataSetPost
      Tag = 4
      Category = #1578#1594#1610#1610#1585#1575#1578
      Caption = #1584#1582#1610#1585#1607
      Hint = 'Post'
      ImageIndex = 59
      ShortCut = 113
      OnExecute = acSBDataSetPostExecute
      DataSource = DSForm
    end
    object acSBDataSetCancel: TDataSetCancel
      Tag = 5
      Category = #1578#1594#1610#1610#1585#1575#1578
      Caption = #1575#1606#1589#1585#1575#1601
      Hint = 'Cancel'
      ImageIndex = 1
      ShortCut = 32776
      OnExecute = acSBDataSetCancelExecute
      DataSource = DSForm
    end
    object Action11: TAction
      Tag = -1
      Caption = #1582#1585#1608#1580
      ShortCut = 27
      OnExecute = Action11Execute
    end
    object Action13: TAction
      Tag = -1
      Caption = '|'
      ShortCut = 16469
    end
    object AEnter: TAction
      Tag = -1
      Caption = 'AEnter'
      ShortCut = 13
      OnExecute = AEnterExecute
    end
  end
  object Select_Letter: TADOStoredProc
    Connection = Dm.YeganehConnection
    CursorType = ctStatic
    AfterOpen = Select_LetterAfterOpen
    BeforePost = Select_LetterBeforePost
    AfterScroll = Select_LetterAfterScroll
    ProcedureName = 'select_Letter;1'
    Parameters = <
      item
        Name = '@RETURN_VALUE'
        DataType = ftInteger
        Direction = pdReturnValue
        Precision = 10
        Value = 0
      end
      item
        Name = '@LetterID'
        Attributes = [paNullable]
        DataType = ftInteger
        Precision = 10
        Value = 0
      end>
    Left = 149
    Top = 109
    object Select_LetterUserTableTitle: TStringField
      Alignment = taRightJustify
      FieldKind = fkLookup
      FieldName = 'UserTableTitle'
      LookupDataSet = Dm.Tables
      LookupKeyFields = 'TableId'
      LookupResultField = 'Description'
      KeyFields = 'UserTableID'
      Lookup = True
    end
    object Select_LetterUserTitle: TWideStringField
      Alignment = taRightJustify
      FieldKind = fkLookup
      FieldName = 'UserTitle'
      LookupDataSet = Dm.Users
      LookupKeyFields = 'Id'
      LookupResultField = 'Title'
      KeyFields = 'UserID'
      Lookup = True
    end
    object Select_LetterUrgencyTitle: TWideStringField
      Alignment = taRightJustify
      FieldKind = fkLookup
      FieldName = 'UrgencyTitle'
      LookupDataSet = Dm.Urgenceis
      LookupKeyFields = 'ID'
      LookupResultField = 'Title'
      KeyFields = 'UrgencyID'
      Size = 100
      Lookup = True
    end
    object Select_LetterClassificationTitle: TWideStringField
      Alignment = taRightJustify
      FieldKind = fkLookup
      FieldName = 'ClassificationTitle'
      LookupDataSet = Dm.Classifications
      LookupKeyFields = 'ID'
      LookupResultField = 'Title'
      KeyFields = 'ClassificationID'
      Size = 100
      Lookup = True
    end
    object Select_LetterReciveTypeTitle: TWideStringField
      Alignment = taRightJustify
      FieldKind = fkLookup
      FieldName = 'ReceiveTypeTitle'
      LookupDataSet = Dm.ReceiveTypes
      LookupKeyFields = 'ID'
      LookupResultField = 'Title'
      KeyFields = 'ReceiveTypeID'
      Size = 100
      Lookup = True
    end
    object Select_LetterResponsibleStafferTitle: TWideStringField
      Alignment = taRightJustify
      FieldKind = fkLookup
      FieldName = 'FromResponsibleStafferTitle'
      LookupDataSet = Dm.FromOrganizations
      LookupKeyFields = 'ID'
      LookupResultField = 'ResponsibleStaffer'
      KeyFields = 'FromOrgID'
      Size = 50
      Lookup = True
    end
    object Select_LetterToorgTitle: TWideStringField
      Alignment = taRightJustify
      DisplayLabel = 'ToOrgTitle'
      FieldKind = fkLookup
      FieldName = 'ToorgTitle'
      LookupDataSet = Dm.FromOrganizations
      LookupKeyFields = 'ID'
      LookupResultField = 'Title'
      KeyFields = 'ToOrgID'
      Size = 50
      Lookup = True
    end
    object Select_LetterFormOgrTitle: TWideStringField
      Alignment = taRightJustify
      DisplayLabel = 'FormOrgTitle'
      FieldKind = fkLookup
      FieldName = 'FormorgTitle'
      LookupDataSet = Dm.FromOrganizations
      LookupKeyFields = 'ID'
      LookupResultField = 'Title'
      KeyFields = 'FromOrgID'
      Size = 50
      Lookup = True
    end
    object Select_LetterSignertitle: TWideStringField
      Alignment = taRightJustify
      FieldKind = fkLookup
      FieldName = 'Signertitle'
      LookupDataSet = Dm.Signers
      LookupKeyFields = 'ID'
      LookupResultField = 'Title'
      KeyFields = 'signerID'
      Size = 0
      Lookup = True
    end
    object Select_LetterLetterID: TAutoIncField
      FieldName = 'LetterID'
      ReadOnly = True
    end
    object Select_LetterIndicatorID: TIntegerField
      FieldName = 'IndicatorID'
    end
    object Select_LetterMYear: TWordField
      FieldName = 'MYear'
    end
    object Select_LetterSecretariatID: TWordField
      FieldName = 'SecretariatID'
    end
    object Select_LetterLetter_Type: TWordField
      FieldName = 'Letter_Type'
    end
    object Select_Letterletterformat: TWordField
      FieldName = 'letterformat'
    end
    object Select_LetterIncommingNO: TWideStringField
      Alignment = taRightJustify
      FieldName = 'IncommingNO'
      Size = 50
    end
    object Select_LetterIncommingdate: TWideStringField
      Alignment = taRightJustify
      FieldName = 'Incommingdate'
      Size = 10
    end
    object Select_LetterCenterNo: TWideStringField
      Alignment = taRightJustify
      FieldName = 'CenterNo'
      Size = 50
    end
    object Select_LetterCenterDate: TStringField
      Alignment = taRightJustify
      FieldName = 'CenterDate'
      FixedChar = True
      Size = 10
    end
    object Select_LetterFromOrgID: TIntegerField
      FieldName = 'FromOrgID'
    end
    object Select_LetterToOrgID: TIntegerField
      FieldName = 'ToOrgID'
    end
    object Select_LetterSignerid: TWideStringField
      Alignment = taRightJustify
      FieldName = 'Signerid'
      Size = 50
    end
    object Select_LetterClassificationID: TWordField
      FieldName = 'ClassificationID'
    end
    object Select_LetterUrgencyID: TSmallintField
      FieldName = 'UrgencyID'
    end
    object Select_LetterMemo: TWideStringField
      Alignment = taRightJustify
      FieldName = 'Memo'
      Size = 2000
    end
    object Select_LetterAttachTitle: TWideStringField
      Alignment = taRightJustify
      FieldName = 'AttachTitle'
      Size = 50
    end
    object Select_LetterNumberOfAttachPages: TSmallintField
      FieldName = 'NumberOfAttachPages'
    end
    object Select_LetterNumberOfPage: TWordField
      FieldName = 'NumberOfPage'
    end
    object Select_LetterReceiveTypeID: TWordField
      FieldName = 'ReceiveTypeID'
    end
    object Select_LetterUserID: TIntegerField
      FieldName = 'UserID'
    end
    object Select_LetterRetroactionNo: TWideStringField
      Alignment = taRightJustify
      FieldName = 'RetroactionNo'
      Size = 50
    end
    object Select_LetterUserMemo: TWideStringField
      Alignment = taRightJustify
      FieldName = 'UserMemo'
      Size = 200
    end
    object Select_LetterRegistrationDate: TStringField
      Alignment = taRightJustify
      FieldName = 'RegistrationDate'
      FixedChar = True
      Size = 10
    end
    object Select_LetterRegistrationTime: TStringField
      Alignment = taRightJustify
      FieldName = 'RegistrationTime'
      Size = 5
    end
    object Select_LetterFollowLetterNo: TWideStringField
      Alignment = taRightJustify
      FieldName = 'FollowLetterNo'
      Size = 50
    end
    object Select_LetterToStaffer: TWideStringField
      Alignment = taRightJustify
      FieldName = 'ToStaffer'
      Size = 50
    end
    object Select_LetterSentLetterID: TIntegerField
      FieldName = 'SentLetterID'
    end
    object Select_LetterTemplateID: TIntegerField
      FieldName = 'TemplateID'
    end
    object Select_LetterHeaderID: TIntegerField
      FieldName = 'HeaderID'
    end
    object Select_LettersenderTitle: TWideStringField
      Alignment = taRightJustify
      FieldName = 'senderTitle'
      Size = 100
    end
    object Select_LetterFromStaffer: TWideStringField
      Alignment = taRightJustify
      FieldName = 'FromStaffer'
      Size = 50
    end
    object Select_LetterSecCode: TStringField
      Alignment = taRightJustify
      FieldKind = fkLookup
      FieldName = 'SecCode'
      LookupDataSet = Dm.Secretariats
      LookupKeyFields = 'SecID'
      LookupResultField = 'PreCode'
      KeyFields = 'SecretariatID'
      Lookup = True
    end
    object Select_LetterSubjectTitle: TStringField
      Alignment = taRightJustify
      FieldKind = fkLookup
      FieldName = 'SubjectTitle'
      LookupDataSet = Dm.Subject
      LookupKeyFields = 'SubjectID'
      LookupResultField = 'SubjectTitle'
      KeyFields = 'SubjectID'
      Lookup = True
    end
    object Select_LetterLastUpdate: TDateTimeField
      Alignment = taRightJustify
      FieldName = 'LastUpdate'
    end
    object Select_LetterUserTableID: TIntegerField
      FieldName = 'UserTableID'
    end
    object Select_LetterSubjectID: TIntegerField
      FieldName = 'SubjectID'
    end
    object Select_LetterSubjectDescription: TWideStringField
      Alignment = taRightJustify
      FieldName = 'SubjectDescription'
      Size = 255
    end
    object Select_LetterIndicatorInnerNo: TStringField
      FieldName = 'IndicatorInnerNo'
      Size = 4000
    end
  end
  object PopupMenu2: TPopupMenu
    Left = 284
    Top = 191
    object N7: TMenuItem
      Caption = #1601#1585#1605' '#1607#1575#1610' '#1662#1610#1608#1587#1578' '#1588#1583#1607
      ImageIndex = 1
      OnClick = N7Click
    end
    object N8: TMenuItem
      Caption = #1578#1593#1585#1610#1601' '#1601#1585#1605' '#1580#1583#1610#1583
      ImageIndex = 2
      OnClick = N8Click
    end
  end
  object QAddedForms: TADOQuery
    Connection = Dm.YeganehConnection
    AfterScroll = QAddedFormsAfterScroll
    Parameters = <
      item
        Name = 'letterID'
        Attributes = [paSigned, paNullable]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = 0
      end>
    SQL.Strings = (
      
        'SELECT LF.ID AS LetterFormsID,LF.LetterID,LF.FormID,T.Descriptio' +
        'n,T.TableCode,T.UserField1,T.UserField2,t.tableid'
      'FROM letterForms LF'
      'INNER JOIN Tables T ON LF.FormID=T.TableId'
      'WHERE letterID=:letterID'
      'ORDER BY ID')
    Left = 404
    Top = 149
    object QAddedFormsLetterFormsID: TAutoIncField
      FieldName = 'LetterFormsID'
      ReadOnly = True
    end
    object QAddedFormsLetterID: TIntegerField
      FieldName = 'LetterID'
    end
    object QAddedFormsFormID: TIntegerField
      FieldName = 'FormID'
    end
    object QAddedFormsDescription: TWideStringField
      FieldName = 'Description'
      Size = 50
    end
    object QAddedFormsTableCode: TStringField
      FieldName = 'TableCode'
      Size = 50
    end
    object QAddedFormsUserField1: TWideStringField
      FieldName = 'UserField1'
      Size = 50
    end
    object QAddedFormsUserField2: TWideStringField
      FieldName = 'UserField2'
      Size = 50
    end
    object QAddedFormstableid: TIntegerField
      FieldName = 'tableid'
    end
  end
  object dsQAddedForms: TDataSource
    DataSet = QAddedForms
    Left = 304
    Top = 144
  end
  object QDelForms: TADOQuery
    Connection = Dm.YeganehConnection
    Parameters = <
      item
        Name = 'IDForm'
        Attributes = [paSigned]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = Null
      end>
    SQL.Strings = (
      'DELETE FROM LetterForms WHERE ID=:IDForm')
    Left = 260
    Top = 141
  end
  object QHasForms: TADOQuery
    Connection = Dm.YeganehConnection
    Parameters = <
      item
        Name = 'LetterID'
        Attributes = [paSigned, paNullable]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = 0
      end>
    SQL.Strings = (
      'SELECT TOP 1 ID FROM LetterForms WHERE LetterID=:LetterID')
    Left = 100
    Top = 142
    object QHasFormsID: TAutoIncField
      FieldName = 'ID'
      ReadOnly = True
    end
  end
  object QRelated: TADOQuery
    Connection = Dm.YeganehConnection
    Parameters = <
      item
        Name = 'DocID'
        Size = -1
        Value = Null
      end>
    SQL.Strings = (
      
        'SELECT l.IndicatorID,dbo.InnerNo(l.LetterID,l.Letter_Type) AS In' +
        'nerNo, RelatedDocID, MainDocID, l.Memo, l.SubjectDescription'
      'FROM DocumentsRelation dr'
      'INNER JOIN Letter l ON l.LetterID = dr.RelatedDocID'
      'WHERE dr.MainDocID =:DocID')
    Left = 244
    Top = 201
    object QRelatedIndicatorID: TIntegerField
      FieldName = 'IndicatorID'
    end
    object QRelatedInnerNo: TStringField
      FieldName = 'InnerNo'
      Size = 1000
    end
    object QRelatedMainDocID: TIntegerField
      FieldName = 'MainDocID'
    end
    object QRelatedRelatedDocID: TIntegerField
      FieldName = 'RelatedDocID'
    end
    object QRelatedMemo: TStringField
      FieldName = 'Memo'
      Size = 4000
    end
    object QRelatedSubjectDescription: TStringField
      FieldName = 'SubjectDescription'
      Size = 4000
    end
  end
  object DSRelated: TDataSource
    DataSet = QRelated
    Left = 148
    Top = 153
  end
  object PopupMenu: TPopupMenu
    Left = 233
    Top = 114
    object N2: TMenuItem
      Caption = #1670#1575#1662
      OnClick = N2Click
    end
    object Excel1: TMenuItem
      Caption = 'Excel'
      OnClick = Excel1Click
    end
    object Word1: TMenuItem
      Caption = 'Word'
      OnClick = Word1Click
    end
  end
  object qry_AccessDelete: TADOQuery
    Connection = Dm.YeganehConnection
    Parameters = <
      item
        Name = 'userid'
        Size = -1
        Value = Null
      end
      item
        Name = 'tableid'
        Size = -1
        Value = Null
      end>
    SQL.Strings = (
      'SELECT'
      '   ISNULL(HasDelete,0)HasDelete'
      'FROM UserTable'
      'WHERE userid =:userid'
      'AND tableID =:tableid')
    Left = 348
    Top = 149
    object qry_AccessDeleteHasDelete: TBooleanField
      FieldName = 'HasDelete'
    end
  end
end
