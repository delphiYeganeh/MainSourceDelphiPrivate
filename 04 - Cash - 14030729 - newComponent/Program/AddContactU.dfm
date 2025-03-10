inherited FrAddContact: TFrAddContact
  Left = 598
  Top = 214
  AutoScroll = False
  AutoSize = True
  BorderIcons = []
  Caption = #1578#1593#1585#1610#1601' '#1581#1587#1575#1576' '#1580#1583#1610#1583
  ClientHeight = 644
  ClientWidth = 726
  Color = clBtnFace
  OldCreateOrder = True
  PixelsPerInch = 96
  TextHeight = 13
  object pnlMain: TPanel [0]
    Left = 0
    Top = 0
    Width = 726
    Height = 644
    Align = alClient
    ParentColor = True
    TabOrder = 0
    object xpPageControl: TPageControl
      Left = 1
      Top = 1
      Width = 724
      Height = 642
      ActivePage = xpTabSheet2
      Align = alClient
      Font.Charset = ARABIC_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      Images = dm.ImageList_MainNew
      ParentFont = False
      ParentShowHint = False
      ShowHint = True
      Style = tsFlatButtons
      TabHeight = 25
      TabOrder = 0
      TabWidth = 289
      object xpTabSheet1: TTabSheet
        Caption = #1580#1587#1578#1580#1608
        Font.Charset = ARABIC_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Tahoma'
        Font.Style = []
        ImageIndex = 70
        ParentFont = False
        OnShow = xpTabSheet1Show
        object Panel1: TPanel
          Left = 0
          Top = 0
          Width = 716
          Height = 39
          Align = alTop
          BevelOuter = bvNone
          ParentColor = True
          TabOrder = 0
          DesignSize = (
            716
            39)
          object SearchTitle: TLabel
            Left = 567
            Top = 8
            Width = 140
            Height = 14
            Anchors = [akTop, akRight]
            Caption = #1606#1600#1600#1600#1600#1575#1605' '#1610#1600#1575' '#1588#1600#1600#1605#1575#1585#1607' '#1581#1600#1600#1600#1587#1600#1600#1600#1575#1576
          end
          object SearchEdit: TEdit
            Left = 56
            Top = 0
            Width = 497
            Height = 22
            Anchors = [akLeft, akTop, akRight]
            TabOrder = 0
            OnChange = SearchEditChange
            OnEnter = TEditEnter
            OnExit = TEditEnter
          end
        end
        object YDBGrid1: TYDBGrid
          Left = 0
          Top = 39
          Width = 716
          Height = 522
          Cursor = crHandPoint
          Align = alClient
          DataSource = dm.DSelect_Contact_Like
          FixedColor = 11446133
          Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit]
          ReadOnly = True
          TabOrder = 1
          TitleFont.Charset = ARABIC_CHARSET
          TitleFont.Color = clWindowText
          TitleFont.Height = -12
          TitleFont.Name = 'Tahoma'
          TitleFont.Style = []
          OnDblClick = YDBGrid1DblClick
          YeganehColor = False
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
              FieldName = 'AccountNo'
              Title.Alignment = taCenter
              Title.Caption = #1588#1605#1575#1585#1607' '#1581#1587#1575#1576
              Width = 94
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'PersonalNo'
              Title.Caption = #1588#1605#1575#1585#1607' '#1603#1575#1585#1605#1606#1583#1610
              Width = 91
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'FullName'
              Title.Alignment = taCenter
              Title.Caption = #1606#1575#1605' '#1608' '#1606#1575#1605' '#1582#1575#1606#1608#1575#1583#1711#1610
              Width = 209
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'FatherName'
              Title.Alignment = taCenter
              Title.Caption = #1606#1575#1605' '#1662#1583#1585
              Width = 130
              Visible = True
            end>
        end
        object Panel2: TPanel
          Left = 0
          Top = 561
          Width = 716
          Height = 46
          Align = alBottom
          ParentColor = True
          TabOrder = 2
          DesignSize = (
            716
            46)
          object ShowDetailBtn: TAdvGlowButton
            Left = 14
            Top = 8
            Width = 127
            Height = 28
            Caption = #1606#1605#1575#1610#1588' '#1605#1588#1582#1589#1575#1578' '
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clNavy
            Font.Height = -12
            Font.Name = 'Tahoma'
            Font.Style = []
            ImageIndex = 114
            Images = dm.ImageList_MainNew
            NotesFont.Charset = DEFAULT_CHARSET
            NotesFont.Color = clWindowText
            NotesFont.Height = -11
            NotesFont.Name = 'Tahoma'
            NotesFont.Style = []
            ParentFont = False
            TabOrder = 0
            OnClick = ShowDetailBtnClick
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
          object Okbtn: TAdvGlowButton
            Left = 628
            Top = 8
            Width = 75
            Height = 28
            Anchors = [akTop, akRight]
            Caption = #1578#1575#1610#1610#1583
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clNavy
            Font.Height = -12
            Font.Name = 'Tahoma'
            Font.Style = []
            ImageIndex = 59
            Images = dm.ImageList_MainNew
            NotesFont.Charset = DEFAULT_CHARSET
            NotesFont.Color = clWindowText
            NotesFont.Height = -11
            NotesFont.Name = 'Tahoma'
            NotesFont.Style = []
            ParentFont = False
            TabOrder = 1
            OnClick = YDBGrid1DblClick
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
          object Cancelbutton: TAdvGlowButton
            Left = 548
            Top = 8
            Width = 75
            Height = 28
            Action = AExit
            Anchors = [akTop, akRight]
            Caption = #1575#1606#1589#1585#1575#1601
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clNavy
            Font.Height = -12
            Font.Name = 'Tahoma'
            Font.Style = []
            ImageIndex = 1
            Images = dm.ImageList_MainNew
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
        end
      end
      object xpTabSheet2: TTabSheet
        Caption = #1575#1591#1604#1575#1593#1575#1578' '
        ImageIndex = 41
        object IdentityGroup: TGroupBox
          Left = 0
          Top = 0
          Width = 716
          Height = 225
          Align = alTop
          Caption = #1588#1606#1575#1587#1606#1575#1605#1607' '#1575#1610
          Font.Charset = ARABIC_CHARSET
          Font.Color = clNavy
          Font.Height = -12
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 0
          DesignSize = (
            716
            225)
          object Label4: TLabel
            Left = 665
            Top = 100
            Width = 45
            Height = 14
            Alignment = taRightJustify
            Anchors = [akTop, akRight]
            BiDiMode = bdLeftToRight
            Caption = #1606#1575#1605' '#1662#1600#1600#1600#1583#1585' '
            Font.Charset = ARABIC_CHARSET
            Font.Color = clBlack
            Font.Height = -12
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentBiDiMode = False
            ParentFont = False
          end
          object Label3: TLabel
            Left = 667
            Top = 21
            Width = 43
            Height = 14
            Alignment = taRightJustify
            Anchors = [akTop, akRight]
            BiDiMode = bdLeftToRight
            Caption = #1606#1600#1600#1600#1600#1600#1600#1600#1575#1605'  '
            Font.Charset = ARABIC_CHARSET
            Font.Color = clBlack
            Font.Height = -12
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentBiDiMode = False
            ParentFont = False
          end
          object Label10: TLabel
            Left = 373
            Top = 60
            Width = 44
            Height = 14
            Alignment = taRightJustify
            Anchors = [akTop, akRight]
            BiDiMode = bdLeftToRight
            Caption = #1578#1575#1585#1610#1582' '#1578#1608#1604#1583
            Font.Charset = ARABIC_CHARSET
            Font.Color = clBlack
            Font.Height = -12
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentBiDiMode = False
            ParentFont = False
          end
          object Label5: TLabel
            Left = 620
            Top = 140
            Width = 90
            Height = 14
            Alignment = taRightJustify
            Anchors = [akTop, akRight]
            BiDiMode = bdLeftToRight
            Caption = #1588#1605#1575#1585#1607' '#1588#1606#1575#1587#1606#1575#1605#1607
            Font.Charset = ARABIC_CHARSET
            Font.Color = clBlack
            Font.Height = -12
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentBiDiMode = False
            ParentFont = False
          end
          object Label2: TLabel
            Left = 636
            Top = 60
            Width = 74
            Height = 14
            Alignment = taRightJustify
            Anchors = [akTop, akRight]
            BiDiMode = bdLeftToRight
            Caption = #1606#1600#1575#1605' '#1582#1600#1600#1575#1606#1608#1575#1583#1711#1610
            Font.Charset = ARABIC_CHARSET
            Font.Color = clBlack
            Font.Height = -12
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentBiDiMode = False
            ParentFont = False
          end
          object Label7: TLabel
            Left = 372
            Top = 22
            Width = 45
            Height = 14
            Alignment = taRightJustify
            Anchors = [akTop, akRight]
            BiDiMode = bdLeftToRight
            Caption = #1605#1581#1604' '#1578#1608#1604#1583
            Font.Charset = ARABIC_CHARSET
            Font.Color = clBlack
            Font.Height = -12
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentBiDiMode = False
            ParentFont = False
          end
          object PersonalNo: TLabel
            Left = 632
            Top = 179
            Width = 78
            Height = 14
            Anchors = [akTop, akRight]
            BiDiMode = bdRightToLeft
            Caption = #1588#1605#1575#1585#1607' '#1705#1575#1585#1605#1606#1583#1610
            Font.Charset = ARABIC_CHARSET
            Font.Color = clBlack
            Font.Height = -12
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentBiDiMode = False
            ParentFont = False
          end
          object Label16: TLabel
            Left = 362
            Top = 101
            Width = 55
            Height = 14
            Alignment = taRightJustify
            Anchors = [akTop, akRight]
            BiDiMode = bdLeftToRight
            Caption = #1580#1600#1600#1600#1600#1600#1606#1587#1610#1578
            Font.Charset = ARABIC_CHARSET
            Font.Color = clBlack
            Font.Height = -12
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentBiDiMode = False
            ParentFont = False
          end
          object Label17: TLabel
            Left = 231
            Top = 139
            Width = 64
            Height = 14
            Anchors = [akTop, akRight]
            BiDiMode = bdRightToLeft
            Caption = #1575#1585#1587#1575#1604' '#1662#1610#1575#1605#1705
            Font.Charset = ARABIC_CHARSET
            Font.Color = clBlack
            Font.Height = -12
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentBiDiMode = False
            ParentFont = False
          end
          object xpPageControl2: TPageControl
            Left = 2
            Top = 16
            Width = 199
            Height = 207
            ActivePage = xpTabSheet3
            Align = alLeft
            ParentShowHint = False
            ShowHint = True
            TabOrder = 9
            TabStop = False
            TabWidth = 96
            object xpTabSheet3: TTabSheet
              Caption = #1593#1603#1587
              object PicImage: TImage
                Left = 6
                Top = 4
                Width = 151
                Height = 145
                Stretch = True
              end
              object PicBtn2: TAdvGlowButton
                Left = 4
                Top = 151
                Width = 71
                Height = 28
                Caption = #1578#1594#1610#1610#1585
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clNavy
                Font.Height = -12
                Font.Name = 'Tahoma'
                Font.Style = []
                ImageIndex = 2
                Images = dm.ImageList_MainNew
                NotesFont.Charset = DEFAULT_CHARSET
                NotesFont.Color = clWindowText
                NotesFont.Height = -11
                NotesFont.Name = 'Tahoma'
                NotesFont.Style = []
                ParentFont = False
                TabOrder = 0
                OnClick = PicBtn2Click
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
              object PicDel2: TAdvGlowButton
                Left = 78
                Top = 151
                Width = 71
                Height = 28
                Caption = #1581#1584#1601
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clNavy
                Font.Height = -12
                Font.Name = 'Tahoma'
                Font.Style = []
                ImageIndex = 90
                Images = dm.ImageList_MainNew
                NotesFont.Charset = DEFAULT_CHARSET
                NotesFont.Color = clWindowText
                NotesFont.Height = -11
                NotesFont.Name = 'Tahoma'
                NotesFont.Style = []
                ParentFont = False
                TabOrder = 1
                OnClick = PicDel2Click
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
            object sign: TTabSheet
              Caption = #1606#1605#1608#1606#1607' '#1575#1605#1590#1575
              object SignImage: TImage
                Left = 6
                Top = 4
                Width = 151
                Height = 145
                Stretch = True
              end
              object PicBtn1: TAdvGlowButton
                Left = 4
                Top = 151
                Width = 71
                Height = 28
                Caption = #1578#1594#1610#1610#1585
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clNavy
                Font.Height = -12
                Font.Name = 'Tahoma'
                Font.Style = []
                ImageIndex = 2
                Images = dm.ImageList_MainNew
                NotesFont.Charset = DEFAULT_CHARSET
                NotesFont.Color = clWindowText
                NotesFont.Height = -11
                NotesFont.Name = 'Tahoma'
                NotesFont.Style = []
                ParentFont = False
                TabOrder = 0
                OnClick = PicBtn1Click
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
              object PicDel1: TAdvGlowButton
                Left = 78
                Top = 151
                Width = 71
                Height = 28
                Caption = #1581#1584#1601
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clNavy
                Font.Height = -12
                Font.Name = 'Tahoma'
                Font.Style = []
                ImageIndex = 90
                Images = dm.ImageList_MainNew
                NotesFont.Charset = DEFAULT_CHARSET
                NotesFont.Color = clWindowText
                NotesFont.Height = -11
                NotesFont.Name = 'Tahoma'
                NotesFont.Style = []
                ParentFont = False
                TabOrder = 1
                OnClick = PicDel1Click
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
          object DbName: TDBEdit
            Left = 420
            Top = 16
            Width = 200
            Height = 22
            Anchors = [akTop, akRight]
            BiDiMode = bdRightToLeft
            Color = clWhite
            DataField = 'FirstName'
            DataSource = dm.DSelect_Contact
            Font.Charset = ARABIC_CHARSET
            Font.Color = clBlack
            Font.Height = -12
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentBiDiMode = False
            ParentFont = False
            TabOrder = 0
            OnEnter = TEditEnter
            OnExit = TEditExit
          end
          object DBEdit3: TDBEdit
            Left = 420
            Top = 55
            Width = 200
            Height = 22
            Anchors = [akTop, akRight]
            BiDiMode = bdRightToLeft
            Color = clWhite
            DataField = 'LastName'
            DataSource = dm.DSelect_Contact
            Font.Charset = ARABIC_CHARSET
            Font.Color = clBlack
            Font.Height = -12
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentBiDiMode = False
            ParentFont = False
            TabOrder = 1
            OnEnter = TEditEnter
            OnExit = TEditExit
          end
          object DBEdit2: TDBEdit
            Left = 420
            Top = 95
            Width = 200
            Height = 22
            Anchors = [akTop, akRight]
            BiDiMode = bdRightToLeft
            Color = clWhite
            DataField = 'FatherName'
            DataSource = dm.DSelect_Contact
            Font.Charset = ARABIC_CHARSET
            Font.Color = clBlack
            Font.Height = -12
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentBiDiMode = False
            ParentFont = False
            TabOrder = 2
            OnEnter = TEditEnter
            OnExit = TEditExit
          end
          object DBEdit5: TDBEdit
            Left = 419
            Top = 135
            Width = 200
            Height = 22
            Anchors = [akTop, akRight]
            BiDiMode = bdRightToLeft
            Color = clWhite
            DataField = 'Idno'
            DataSource = dm.DSelect_Contact
            Font.Charset = ARABIC_CHARSET
            Font.Color = clBlack
            Font.Height = -12
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentBiDiMode = False
            ParentFont = False
            TabOrder = 3
          end
          object DBEBirthDate: TSolarDatePicker
            Left = 204
            Top = 54
            Width = 155
            Height = 22
            Anchors = [akTop, akRight]
            About = 'Created by : Mohamad Khorsandi'
            BiDiMode = bdLeftToRight
            Color = clWhite
            Font.Charset = ARABIC_CHARSET
            Font.Color = clBlack
            Font.Height = -12
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
            TabOrder = 6
            Enabled = True
            DateKind = dkSolar
            CheckInputOnExit = True
            Divider = dSlash
            ShowToDay = True
            MonthObject = moComboBox
            Glyph = gtCalendar
            ShowDefaultDate = False
            AutoCheck = False
            AutoDeleteDelimiter = False
            EnabledDays = [mcSaturday, mcSunday, mcMonday, mcTuesday, mcWednesday, mcThursday, mcFriday]
            MaskEnabled = False
            ColorCaptionStart = 13158600
            ColorCaptionStop = clWhite
            ColorBodyStart = clWhite
            ColorBodyStop = clWhite
            ColorTodayLine = clBlack
            ColorSelectBrush = 14474460
            ColorDisableMonth = clGray
            ColorVacationDay = clRed
            ColorNormalDay = clBlack
            ColorStyle = csWhiteGray
            ButtonStyle = bsRound
            DataSource = dm.DSelect_Contact
            DataField = 'BirthDate'
            DataFieldType = dftSolar
            DataFieldAutoSaveModified = False
          end
          object DBEdit9: TDBEdit
            Left = 204
            Top = 16
            Width = 155
            Height = 22
            Anchors = [akTop, akRight]
            BiDiMode = bdRightToLeft
            Color = clWhite
            DataField = 'BirthPlace'
            DataSource = dm.DSelect_Contact
            Font.Charset = ARABIC_CHARSET
            Font.Color = clBlack
            Font.Height = -12
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentBiDiMode = False
            ParentFont = False
            TabOrder = 5
            OnEnter = TEditEnter
            OnExit = TEditExit
          end
          object PersonalCode: TDBEdit
            Left = 419
            Top = 174
            Width = 200
            Height = 22
            Anchors = [akTop, akRight]
            BiDiMode = bdRightToLeft
            Color = clWhite
            DataField = 'PersonalNo'
            DataSource = dm.DSelect_Contact
            Font.Charset = ARABIC_CHARSET
            Font.Color = clBlack
            Font.Height = -12
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentBiDiMode = False
            ParentFont = False
            TabOrder = 4
            OnEnter = TEditEnter
            OnExit = TEditExit
          end
          object DBLookupComboBox3: TDBLookupComboBox
            Left = 204
            Top = 94
            Width = 155
            Height = 22
            Anchors = [akTop, akRight]
            BiDiMode = bdLeftToRight
            DataField = 'SexId'
            DataSource = dm.DSelect_Contact
            Font.Charset = ARABIC_CHARSET
            Font.Color = clBlack
            Font.Height = -12
            Font.Name = 'Tahoma'
            Font.Style = []
            KeyField = 'Sexid'
            ListField = 'Title'
            ListSource = dm.dSexes
            ParentBiDiMode = False
            ParentFont = False
            TabOrder = 7
          end
          object DBCheckBox1: TDBCheckBox
            Left = 203
            Top = 137
            Width = 17
            Height = 17
            DataField = 'SendSms'
            DataSource = dm.DSelect_Contact
            TabOrder = 8
            ValueChecked = 'True'
            ValueUnchecked = 'False'
          end
        end
        object AccountGroupBox: TGroupBox
          Left = 0
          Top = 225
          Width = 716
          Height = 48
          Align = alTop
          Caption = #1581#1587#1575#1576
          Font.Charset = ARABIC_CHARSET
          Font.Color = clNavy
          Font.Height = -12
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 1
          DesignSize = (
            716
            48)
          object Label6: TLabel
            Left = 277
            Top = 14
            Width = 92
            Height = 14
            Anchors = [akTop, akRight]
            BiDiMode = bdLeftToRight
            Caption = #1578#1575#1585#1610#1582' '#1575#1601#1578#1578#1575#1581' '#1581#1587#1575#1576
            Font.Charset = ARABIC_CHARSET
            Font.Color = clBlack
            Font.Height = -12
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentBiDiMode = False
            ParentFont = False
          end
          object label1: TLabel
            Left = 620
            Top = 15
            Width = 72
            Height = 14
            Anchors = [akTop, akRight]
            BiDiMode = bdLeftToRight
            Caption = #1588#1605#1575#1585#1607' '#1581#1587#1575#1576
            Font.Charset = ARABIC_CHARSET
            Font.Color = clBlack
            Font.Height = -12
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentBiDiMode = False
            ParentFont = False
          end
          object AccountNo: TDBEdit
            Left = 391
            Top = 8
            Width = 221
            Height = 22
            Anchors = [akTop, akRight]
            BiDiMode = bdRightToLeft
            Color = clWhite
            DataField = 'AccountNo'
            DataSource = dm.DSelect_Account
            Font.Charset = ARABIC_CHARSET
            Font.Color = clBlack
            Font.Height = -12
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentBiDiMode = False
            ParentFont = False
            TabOrder = 0
            OnEnter = TEditEnter
            OnExit = TEditExit
          end
          object DBEAccountDate: TDBEdit
            Left = 72
            Top = 8
            Width = 197
            Height = 22
            Anchors = [akTop, akRight]
            BiDiMode = bdLeftToRight
            Color = clWhite
            DataField = 'AccountDate'
            DataSource = dm.DSelect_Account
            Font.Charset = ARABIC_CHARSET
            Font.Color = clNavy
            Font.Height = -12
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
            ParentBiDiMode = False
            ParentFont = False
            TabOrder = 1
            OnEnter = TEditEnter
            OnExit = TEditExit
          end
        end
        object MoreGroupBox: TGroupBox
          Left = 0
          Top = 361
          Width = 716
          Height = 204
          Align = alClient
          Caption = ' '#1576#1610#1588#1578#1585
          Font.Charset = ARABIC_CHARSET
          Font.Color = clNavy
          Font.Height = -12
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 3
          DesignSize = (
            716
            204)
          object Label8: TLabel
            Left = 676
            Top = 51
            Width = 28
            Height = 14
            Alignment = taRightJustify
            Anchors = [akTop, akRight]
            BiDiMode = bdLeftToRight
            Caption = #1570#1583#1585#1587
            Font.Charset = ARABIC_CHARSET
            Font.Color = clBlack
            Font.Height = -12
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentBiDiMode = False
            ParentFont = False
          end
          object Label9: TLabel
            Left = 645
            Top = 15
            Width = 59
            Height = 14
            Alignment = taRightJustify
            Anchors = [akTop, akRight]
            BiDiMode = bdLeftToRight
            Caption = #1588#1605#1575#1585#1607' '#1578#1604#1601#1606
            Font.Charset = ARABIC_CHARSET
            Font.Color = clBlack
            Font.Height = -12
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentBiDiMode = False
            ParentFont = False
          end
          object Label15: TLabel
            Left = 652
            Top = 85
            Width = 52
            Height = 14
            Anchors = [akTop, akRight]
            Caption = #1578#1608#1590#1610#1581#1600#1600#1600#1575#1578
            Font.Charset = ARABIC_CHARSET
            Font.Color = clBlack
            Font.Height = -12
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
          end
          object userField1: TLabel
            Left = 658
            Top = 130
            Width = 46
            Height = 14
            Hint = #1593#1606#1608#1575#1606' '#1575#1610#1606' '#1601#1610#1604#1583' '#1585#1575' '#1605#1610' '#1578#1608#1575#1606#1610#1583' '#1583#1585' '#1575#1591#1604#1575#1593#1575#1578' '#1579#1575#1576#1578' '#1606#1585#1605' '#1575#1601#1586#1575#1585' '#1578#1594#1610#1610#1585' '#1583#1607#1610#1583
            Alignment = taRightJustify
            Anchors = [akRight, akBottom]
            BiDiMode = bdLeftToRight
            Caption = #1601#1610#1604#1583' '#1705#1575#1585#1576#1585
            Font.Charset = ARABIC_CHARSET
            Font.Color = clBlack
            Font.Height = -12
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentBiDiMode = False
            ParentFont = False
          end
          object userField2: TLabel
            Left = 658
            Top = 168
            Width = 46
            Height = 14
            Hint = #1593#1606#1608#1575#1606' '#1575#1610#1606' '#1601#1610#1604#1583' '#1585#1575' '#1605#1610' '#1578#1608#1575#1606#1610#1583' '#1583#1585' '#1575#1591#1604#1575#1593#1575#1578' '#1579#1575#1576#1578' '#1606#1585#1605' '#1575#1601#1586#1575#1585' '#1578#1594#1610#1610#1585' '#1583#1607#1610#1583
            Alignment = taRightJustify
            Anchors = [akRight, akBottom]
            BiDiMode = bdLeftToRight
            Caption = #1601#1610#1604#1583' '#1705#1575#1585#1576#1585
            Font.Charset = ARABIC_CHARSET
            Font.Color = clBlack
            Font.Height = -12
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentBiDiMode = False
            ParentFont = False
          end
          object Label11: TLabel
            Left = 2
            Top = 165
            Width = 203
            Height = 14
            Anchors = [akLeft, akBottom]
            Caption = #1662#1600#1600#1600#1585#1601#1585#1575#1688' B '#1711#1586#1575#1585#1588' 1 :   PerfrajBRep.fr3  '
            Font.Charset = ARABIC_CHARSET
            Font.Color = clNavy
            Font.Height = -12
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
          end
          object Label14: TLabel
            Left = 11
            Top = 184
            Width = 194
            Height = 14
            Anchors = [akLeft, akBottom]
            Caption = #1662#1600#1600#1600#1585#1601#1585#1575#1688' B '#1711#1586#1575#1585#1588' 2 : PerfrajBRep2.fr3'
            Font.Charset = ARABIC_CHARSET
            Font.Color = clNavy
            Font.Height = -12
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
          end
          object DBEdit4: TDBEdit
            Left = 16
            Top = 47
            Width = 614
            Height = 22
            Anchors = [akTop, akRight]
            BiDiMode = bdRightToLeft
            Color = clWhite
            DataField = 'Address'
            DataSource = dm.DSelect_Contact
            Font.Charset = ARABIC_CHARSET
            Font.Color = clBlack
            Font.Height = -12
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentBiDiMode = False
            ParentFont = False
            TabOrder = 1
            OnEnter = TEditEnter
            OnExit = TEditExit
          end
          object DBEdit7: TDBEdit
            Left = 365
            Top = 9
            Width = 265
            Height = 22
            Anchors = [akTop, akRight]
            BiDiMode = bdRightToLeft
            Color = clWhite
            DataField = 'Phones'
            DataSource = dm.DSelect_Contact
            Font.Charset = ARABIC_CHARSET
            Font.Color = clBlack
            Font.Height = -12
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentBiDiMode = False
            ParentFont = False
            TabOrder = 0
            OnEnter = TEditEnter
            OnExit = TEditExit
          end
          object DBMemo1: TDBMemo
            Left = 16
            Top = 85
            Width = 614
            Height = 38
            Anchors = [akLeft, akTop, akRight, akBottom]
            DataField = 'Memo'
            DataSource = dm.DSelect_Contact
            Font.Charset = ARABIC_CHARSET
            Font.Color = clBlack
            Font.Height = -12
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
            TabOrder = 2
          end
          object DBEdit12: TDBEdit
            Left = 334
            Top = 125
            Width = 296
            Height = 22
            Hint = #1593#1606#1608#1575#1606' '#1575#1610#1606' '#1601#1610#1604#1583' '#1585#1575' '#1605#1610' '#1578#1608#1575#1606#1610#1583' '#1583#1585' '#1575#1591#1604#1575#1593#1575#1578' '#1579#1575#1576#1578' '#1606#1585#1605' '#1575#1601#1586#1575#1585' '#1578#1594#1610#1610#1585' '#1583#1607#1610#1583
            Anchors = [akRight, akBottom]
            BiDiMode = bdRightToLeft
            Color = clWhite
            DataField = 'UserField1'
            DataSource = dm.DSelect_Contact
            Font.Charset = ARABIC_CHARSET
            Font.Color = clBlack
            Font.Height = -12
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentBiDiMode = False
            ParentFont = False
            TabOrder = 3
            OnEnter = TEditEnter
            OnExit = TEditExit
          end
          object DBEdit13: TDBEdit
            Left = 334
            Top = 163
            Width = 296
            Height = 22
            Hint = #1593#1606#1608#1575#1606' '#1575#1610#1606' '#1601#1610#1604#1583' '#1585#1575' '#1605#1610' '#1578#1608#1575#1606#1610#1583' '#1583#1585' '#1575#1591#1604#1575#1593#1575#1578' '#1579#1575#1576#1578' '#1606#1585#1605' '#1575#1601#1586#1575#1585' '#1578#1594#1610#1610#1585' '#1583#1607#1610#1583
            Anchors = [akRight, akBottom]
            BiDiMode = bdRightToLeft
            Color = clWhite
            DataField = 'UserField2'
            DataSource = dm.DSelect_Contact
            Font.Charset = ARABIC_CHARSET
            Font.Color = clBlack
            Font.Height = -12
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentBiDiMode = False
            ParentFont = False
            TabOrder = 4
            OnEnter = TEditEnter
            OnExit = TEditExit
          end
          object DBChBoHaveInterest: TDBCheckBox
            Left = 110
            Top = 15
            Width = 251
            Height = 16
            Anchors = [akTop, akRight]
            Caption = #1576#1585#1575#1610' '#1575#1610#1606' '#1593#1590#1608' '#1548' '#1578#1602#1587#1610#1605' '#1587#1608#1583' '#1587#1662#1585#1583#1607' '#1578#1593#1604#1602' '#1711#1610#1585#1583
            DataField = 'HaveInterest'
            DataSource = dm.DSelect_Contact
            Font.Charset = ARABIC_CHARSET
            Font.Color = clBlack
            Font.Height = -12
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
            TabOrder = 5
            ValueChecked = '1'
            ValueUnchecked = '0'
            Visible = False
            WordWrap = True
          end
        end
        object MonthlyGroup: TGroupBox
          Left = 0
          Top = 273
          Width = 716
          Height = 88
          Align = alTop
          Caption = #1593#1590#1608#1610#1578
          Font.Charset = ARABIC_CHARSET
          Font.Color = clNavy
          Font.Height = -12
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 2
          DesignSize = (
            716
            88)
          object Label12: TLabel
            Left = 615
            Top = 15
            Width = 94
            Height = 14
            Anchors = [akTop, akRight]
            BiDiMode = bdLeftToRight
            Caption = #1578#1575#1585#1610#1582' '#1588#1585#1608#1593' '#1593#1590#1608#1610#1578
            Font.Charset = ARABIC_CHARSET
            Font.Color = clBlack
            Font.Height = -12
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentBiDiMode = False
            ParentFont = False
          end
          object Label13: TLabel
            Left = 280
            Top = 14
            Width = 54
            Height = 14
            Anchors = [akTop, akRight]
            BiDiMode = bdLeftToRight
            Caption = #1606#1608#1593' '#1593#1590#1608#1610#1578
            Font.Charset = ARABIC_CHARSET
            Font.Color = clBlack
            Font.Height = -12
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentBiDiMode = False
            ParentFont = False
          end
          object DBLookupComboBox1: TDBLookupComboBox
            Left = 72
            Top = 9
            Width = 204
            Height = 22
            Anchors = [akTop, akRight]
            BiDiMode = bdLeftToRight
            DataField = 'MonthlyTypeTitle'
            DataSource = dm.DSelect_Account
            Font.Charset = ARABIC_CHARSET
            Font.Color = clBlack
            Font.Height = -12
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentBiDiMode = False
            ParentFont = False
            TabOrder = 1
          end
          object DBLookupComboBox2: TDBLookupComboBox
            Left = 392
            Top = 47
            Width = 219
            Height = 22
            Anchors = [akTop, akRight]
            BiDiMode = bdLeftToRight
            DataField = 'FamilyTitle'
            DataSource = dm.DSelect_Account
            Enabled = False
            Font.Charset = ARABIC_CHARSET
            Font.Color = clBlack
            Font.Height = -12
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentBiDiMode = False
            ParentFont = False
            TabOrder = 2
          end
          object FirstBalance: TAdvGlowButton
            Left = 5
            Top = 55
            Width = 133
            Height = 27
            Anchors = [akTop, akRight]
            Caption = #1579#1576#1578' '#1605#1608#1580#1608#1583#1610' '#1575#1608#1604#1610#1607
            Font.Charset = ARABIC_CHARSET
            Font.Color = clBlack
            Font.Height = -12
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
            ImageIndex = 59
            Images = dm.ImageList_MainNew
            NotesFont.Charset = DEFAULT_CHARSET
            NotesFont.Color = clWindowText
            NotesFont.Height = -11
            NotesFont.Name = 'Tahoma'
            NotesFont.Style = []
            ParentFont = False
            TabOrder = 4
            Visible = False
            OnClick = FirstBalanceClick
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
            Left = 139
            Top = 55
            Width = 127
            Height = 27
            Anchors = [akTop, akRight]
            Caption = #1670#1575#1662' '#1587#1585#1576#1585#1711' '#1583#1601#1578#1585#1670#1607
            Font.Charset = ARABIC_CHARSET
            Font.Color = clBlack
            Font.Height = -12
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
            ImageIndex = 198
            Images = dm.ImageList_MainNew
            NotesFont.Charset = DEFAULT_CHARSET
            NotesFont.Color = clWindowText
            NotesFont.Height = -11
            NotesFont.Name = 'Tahoma'
            NotesFont.Style = []
            ParentFont = False
            TabOrder = 3
            Visible = False
            OnClick = PerferazeBtnClick
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
          object MonthlyBeginDate: TSolarDatePicker
            Left = 392
            Top = 9
            Width = 219
            Height = 22
            Anchors = [akTop, akRight]
            About = 'Created by : Mohamad Khorsandi'
            BiDiMode = bdLeftToRight
            Color = clWhite
            Font.Charset = ARABIC_CHARSET
            Font.Color = clBlack
            Font.Height = -12
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
            TabOrder = 0
            Enabled = True
            OnExit = TEditExit
            DateKind = dkSolar
            CheckInputOnExit = True
            Divider = dSlash
            ShowToDay = True
            MonthObject = moComboBox
            Glyph = gtCalendar
            ShowDefaultDate = False
            AutoCheck = False
            AutoDeleteDelimiter = False
            EnabledDays = [mcSaturday, mcSunday, mcMonday, mcTuesday, mcWednesday, mcThursday, mcFriday]
            MaskEnabled = False
            ColorCaptionStart = 13158600
            ColorCaptionStop = clWhite
            ColorBodyStart = clWhite
            ColorBodyStop = clWhite
            ColorTodayLine = clBlack
            ColorSelectBrush = 14474460
            ColorDisableMonth = clGray
            ColorVacationDay = clRed
            ColorNormalDay = clBlack
            ColorStyle = csWhiteGray
            ButtonStyle = bsRound
            DataSource = dm.DSelect_Account
            DataField = 'MonthlyBeginDate'
            DataFieldType = dftSolar
            DataFieldAutoSaveModified = False
          end
          object FamilyLabel: TCheckBox
            Left = 615
            Top = 52
            Width = 97
            Height = 17
            Anchors = [akTop, akRight]
            Caption = '      '#1582#1600#1600#1600#1600#1575#1606#1600#1600#1608#1575#1583#1607
            Font.Charset = ARABIC_CHARSET
            Font.Color = clNavy
            Font.Height = -12
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
            TabOrder = 5
            OnClick = FamilyLabelClick
          end
        end
        object Panel5: TPanel
          Left = 0
          Top = 565
          Width = 716
          Height = 42
          Align = alBottom
          ParentColor = True
          TabOrder = 4
          DesignSize = (
            716
            42)
          object InsBtn: TAdvGlowButton
            Left = 637
            Top = 7
            Width = 75
            Height = 28
            Hint = 'Insert'
            Anchors = [akTop, akRight]
            Caption = '(Ins)'#1575#1610#1580#1575#1583
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clNavy
            Font.Height = -12
            Font.Name = 'Tahoma'
            Font.Style = []
            ImageIndex = 60
            Images = dm.ImageList_MainNew
            NotesFont.Charset = DEFAULT_CHARSET
            NotesFont.Color = clWindowText
            NotesFont.Height = -11
            NotesFont.Name = 'Tahoma'
            NotesFont.Style = []
            ParentFont = False
            TabOrder = 0
            OnClick = InsBtnClick
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
          object EditBtn: TAdvGlowButton
            Left = 561
            Top = 7
            Width = 75
            Height = 28
            Hint = 'Edit'
            Anchors = [akTop, akRight]
            Caption = #1608#1610#1585#1575#1610#1588
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clNavy
            Font.Height = -12
            Font.Name = 'Tahoma'
            Font.Style = []
            ImageIndex = 2
            Images = dm.ImageList_MainNew
            NotesFont.Charset = DEFAULT_CHARSET
            NotesFont.Color = clWindowText
            NotesFont.Height = -11
            NotesFont.Name = 'Tahoma'
            NotesFont.Style = []
            ParentFont = False
            TabOrder = 1
            OnClick = EditBtnClick
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
          object PostBtn: TAdvGlowButton
            Left = 485
            Top = 7
            Width = 75
            Height = 28
            Hint = 'Post'
            Anchors = [akTop, akRight]
            Caption = '(F2)'#1584#1582#1610#1585#1607
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clNavy
            Font.Height = -12
            Font.Name = 'Tahoma'
            Font.Style = []
            ImageIndex = 59
            Images = dm.ImageList_MainNew
            NotesFont.Charset = DEFAULT_CHARSET
            NotesFont.Color = clWindowText
            NotesFont.Height = -11
            NotesFont.Name = 'Tahoma'
            NotesFont.Style = []
            ParentFont = False
            TabOrder = 2
            OnClick = PostBtnClick
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
          object CancelBtn: TAdvGlowButton
            Left = 409
            Top = 7
            Width = 75
            Height = 28
            Hint = 'Cancel'
            Anchors = [akTop, akRight]
            Caption = #1604#1594#1608
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clNavy
            Font.Height = -12
            Font.Name = 'Tahoma'
            Font.Style = []
            ImageIndex = 1
            Images = dm.ImageList_MainNew
            NotesFont.Charset = DEFAULT_CHARSET
            NotesFont.Color = clWindowText
            NotesFont.Height = -11
            NotesFont.Name = 'Tahoma'
            NotesFont.Style = []
            ParentFont = False
            TabOrder = 3
            OnClick = CancelBtnClick
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
          object PerferazeBtn: TAdvGlowButton
            Left = 129
            Top = 7
            Width = 33
            Height = 28
            Hint = #1662#1585#1601#1585#1575#1688' '#1583#1601#1578#1585#1670#1607' '#1581#1587#1575#1576' A('#1602#1583#1610#1605')'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clNavy
            Font.Height = -12
            Font.Name = 'Tahoma'
            Font.Style = []
            ImageIndex = 259
            Images = dm.LetterImages_New
            NotesFont.Charset = DEFAULT_CHARSET
            NotesFont.Color = clWindowText
            NotesFont.Height = -11
            NotesFont.Name = 'Tahoma'
            NotesFont.Style = []
            ParentFont = False
            ParentShowHint = False
            ShowHint = True
            TabOrder = 4
            Visible = False
            OnClick = PerferazeBtnClick
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
          object ExitButton: TAdvGlowButton
            Left = 4
            Top = 7
            Width = 75
            Height = 28
            Action = AExit
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clNavy
            Font.Height = -12
            Font.Name = 'Tahoma'
            Font.Style = []
            ImageIndex = 84
            Images = dm.ImageList_MainNew
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
          object PerferazeBtn2: TAdvGlowButton
            Left = 95
            Top = 7
            Width = 33
            Height = 28
            Hint = #1662#1585#1601#1585#1575#1688' '#1583#1601#1578#1585#1670#1607' '#1581#1587#1575#1576' B'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clNavy
            Font.Height = -12
            Font.Name = 'Tahoma'
            Font.Style = []
            ImageIndex = 258
            Images = dm.LetterImages_New
            NotesFont.Charset = DEFAULT_CHARSET
            NotesFont.Color = clWindowText
            NotesFont.Height = -11
            NotesFont.Name = 'Tahoma'
            NotesFont.Style = []
            ParentFont = False
            ParentShowHint = False
            ShowHint = True
            TabOrder = 6
            OnClick = PerferazeBtn2Click
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
          object BtnPresenter: TAdvGlowButton
            Left = 163
            Top = 7
            Width = 83
            Height = 28
            Hint = #1605#1593#1585#1601
            Caption = #1605#1593#1585#1601
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clNavy
            Font.Height = -12
            Font.Name = 'Tahoma'
            Font.Style = []
            ImageIndex = 100
            Images = dm.ImageList_MainNew
            NotesFont.Charset = DEFAULT_CHARSET
            NotesFont.Color = clWindowText
            NotesFont.Height = -11
            NotesFont.Name = 'Tahoma'
            NotesFont.Style = []
            ParentFont = False
            ParentShowHint = False
            ShowHint = True
            TabOrder = 7
            OnClick = BtnPresenterClick
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
          object IMPORT_BTN: TAdvGlowButton
            Left = 330
            Top = 7
            Width = 73
            Height = 28
            Anchors = [akTop, akRight]
            Caption = 'IMPORT'
            ImageIndex = 144
            Images = dm.ImageList_MainNew
            NotesFont.Charset = DEFAULT_CHARSET
            NotesFont.Color = clWindowText
            NotesFont.Height = -11
            NotesFont.Name = 'Tahoma'
            NotesFont.Style = []
            TabOrder = 8
            Visible = False
            OnClick = IMPORT_BTNClick
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
    end
  end
  inherited ahmadvand: TActionList
    Left = 192
    Top = 65533
  end
  object OpenPictureDialog: TOpenPictureDialog [2]
    Left = 72
    Top = 2
  end
  inherited qSetting: TADOQuery
    Left = 16
    Top = 0
  end
  object ActionManager: TActionManager
    ActionBars.SessionCount = 23
    ActionBars = <
      item
        AutoSize = False
      end>
    Left = 256
    Top = 65528
    StyleName = 'XP Style'
    object Action1: TAction
      Caption = #1584#1582#1610#1585#1607
      ShortCut = 113
      OnExecute = Action1Execute
    end
    object Action2: TAction
      Caption = #1575#1610#1580#1575#1583
      ShortCut = 45
      OnExecute = Action2Execute
    end
  end
  object RepPopMnu: TPopupMenu
    MenuAnimation = [maRightToLeft, maTopToBottom]
    TrackButton = tbLeftButton
    Left = 192
    Top = 500
    object NShow1: TMenuItem
      AutoHotkeys = maAutomatic
      Caption = #1662#1610#1588' '#1606#1605#1575#1610#1588' '#1608' '#1670#1575#1662' '#1711#1586#1575#1585#1588' 1'
      OnClick = NShowClick
    end
    object NShow2: TMenuItem
      Caption = #1662#1610#1588' '#1606#1605#1575#1610#1588' '#1608' '#1670#1575#1662' '#1711#1586#1575#1585#1588' 2'
      OnClick = NShowClick
    end
    object NPrint: TMenuItem
      Tag = 1
      AutoHotkeys = maAutomatic
      Caption = #1670#1575#1662' '#1576#1583#1608#1606' '#1662#1610#1588' '#1606#1605#1575#1610#1588'   Ctrl+F9'
      OnClick = NShowClick
    end
    object NDesign: TMenuItem
      Tag = 2
      AutoHotkeys = maAutomatic
      Caption = #1591#1585#1575#1581#1610' '#1711#1586#1575#1585#1588'   Alt+F9'
      OnClick = NShowClick
    end
    object N8: TMenuItem
      Caption = '-'
    end
    object N11: TMenuItem
      Caption = #1591#1585#1575#1581#1610' '#1662#1610#1588' '#1601#1585#1590
    end
  end
  object ActionList1: TActionList
    Left = 68
    Top = 159
    object Action3: TAction
      Caption = 'Action3'
      ShortCut = 16457
      OnExecute = Action3Execute
    end
  end
  object MssCalendarPro1: TMssCalendarPro
    Style = mssGold
    Left = 68
    Top = 103
  end
end
