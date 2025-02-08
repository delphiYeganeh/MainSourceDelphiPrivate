inherited FrAddLoanRequest: TFrAddLoanRequest
  Left = 598
  Top = 285
  Width = 774
  Height = 605
  Caption = #1583#1585#1582#1608#1575#1587#1578' '#1608#1575#1605
  Color = clBtnFace
  Font.Height = -12
  OldCreateOrder = True
  PixelsPerInch = 96
  TextHeight = 14
  object xpPageControl1: TPageControl [0]
    Left = 0
    Top = 0
    Width = 758
    Height = 525
    ActivePage = xpTabSheet2
    Align = alClient
    Font.Charset = ARABIC_CHARSET
    Font.Color = clWindowText
    Font.Height = -12
    Font.Name = 'Tahoma'
    Font.Style = []
    Images = dm.ImageList_MainNew
    ParentFont = False
    ParentShowHint = False
    ShowHint = True
    TabHeight = 25
    TabOrder = 0
    TabWidth = 150
    OnChanging = xpPageControl1Changing
    object xpTabSheet1: TTabSheet
      Caption = #1576#1585#1585#1587#1610' '#1583#1585' '#1582#1608#1575#1587#1578' '#1607#1575'   '
      ImageIndex = 4
      object Panel1: TPanel
        Left = 595
        Top = 0
        Width = 155
        Height = 449
        Align = alRight
        TabOrder = 0
        DesignSize = (
          155
          449)
        object Label2: TLabel
          Left = 132
          Top = 1
          Width = 14
          Height = 14
          Anchors = [akTop, akRight]
          Caption = #1606#1575#1605
        end
        object Label3: TLabel
          Left = 63
          Top = 52
          Width = 83
          Height = 14
          Anchors = [akTop, akRight]
          Caption = #1575#1586' '#1588#1605#1575#1585#1607' '#1581#1587#1575#1576
        end
        object Label4: TLabel
          Left = 71
          Top = 154
          Width = 75
          Height = 14
          Anchors = [akTop, akRight]
          Caption = #1578#1575#1585#1610#1582' '#1583#1585#1582#1608#1575#1587#1578
        end
        object Label5: TLabel
          Left = 103
          Top = 204
          Width = 43
          Height = 14
          Anchors = [akTop, akRight]
          Caption = #1578#1608#1590#1610#1581#1575#1578
        end
        object Label6: TLabel
          Left = 89
          Top = 255
          Width = 57
          Height = 14
          Anchors = [akTop, akRight]
          Caption = #1588#1605#1575#1585#1607' '#1606#1575#1605#1607
        end
        object Label7: TLabel
          Left = 93
          Top = 307
          Width = 53
          Height = 14
          Anchors = [akTop, akRight]
          Caption = #1608#1590#1593#1610#1578' '#1604#1594#1608
          Visible = False
        end
        object Label8: TLabel
          Left = 113
          Top = 357
          Width = 33
          Height = 14
          Anchors = [akTop, akRight]
          Caption = #1590#1585#1608#1585#1610
          Visible = False
        end
        object Label9: TLabel
          Left = 63
          Top = 102
          Width = 83
          Height = 14
          Anchors = [akTop, akRight]
          Caption = #1578#1575' '#1588#1605#1575#1585#1607' '#1581#1587#1575#1576
        end
        object YWhereEdit7: TYWhereEdit
          Left = 5
          Top = 16
          Width = 146
          Height = 22
          Anchors = [akTop, akRight]
          BiDiMode = bdLeftToRight
          Font.Charset = ARABIC_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentBiDiMode = False
          ParentFont = False
          TabOrder = 0
          isLike = False
          isDate = False
          EveryLike = True
          isString = True
          FieldName = 'AccountTitle'
          TableName = 'Account'
          CodeField = 'Code'
          TitleField = 'Title'
        end
        object YWhereEdit1: TYWhereEdit
          Left = 5
          Top = 68
          Width = 146
          Height = 22
          Anchors = [akTop, akRight]
          BiDiMode = bdLeftToRight
          Font.Charset = ARABIC_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentBiDiMode = False
          ParentFont = False
          TabOrder = 1
          OnChange = YWhereEdit1Change
          isLike = False
          isDate = False
          EveryLike = False
          isString = True
          FieldName = 'AccountNo'
          TableName = 'Account'
          CodeField = 'Code'
          TitleField = 'Title'
        end
        object YWhereEdit3: TYWhereEdit
          Left = 5
          Top = 220
          Width = 146
          Height = 22
          Anchors = [akTop, akRight]
          BiDiMode = bdLeftToRight
          Font.Charset = ARABIC_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentBiDiMode = False
          ParentFont = False
          TabOrder = 4
          isLike = False
          isDate = False
          EveryLike = False
          isString = False
          FieldName = 'Comment'
          TableName = 'LoanRequest'
          CodeField = 'Code'
          TitleField = 'Title'
        end
        object YWhereEdit4: TYWhereEdit
          Left = 5
          Top = 271
          Width = 146
          Height = 22
          Anchors = [akTop, akRight]
          BiDiMode = bdLeftToRight
          Font.Charset = ARABIC_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentBiDiMode = False
          ParentFont = False
          TabOrder = 5
          isLike = False
          isDate = False
          EveryLike = False
          isString = False
          FieldName = 'DocumentNo'
          TableName = 'LoanRequest'
          CodeField = 'Code'
          TitleField = 'Title'
        end
        object YWhereEdit5: TYWhereEdit
          Left = 5
          Top = 323
          Width = 146
          Height = 22
          Anchors = [akTop, akRight]
          BiDiMode = bdLeftToRight
          Font.Charset = ARABIC_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentBiDiMode = False
          ParentFont = False
          TabOrder = 6
          Visible = False
          isLike = False
          isDate = False
          EveryLike = False
          isString = False
          FieldName = 'ExpireStatus'
          TableName = 'Account'
          CodeField = 'Code'
          TitleField = 'Title'
        end
        object YWhereEdit6: TYWhereEdit
          Left = 5
          Top = 372
          Width = 146
          Height = 22
          Anchors = [akTop, akRight]
          BiDiMode = bdLeftToRight
          Font.Charset = ARABIC_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentBiDiMode = False
          ParentFont = False
          TabOrder = 7
          Visible = False
          isLike = False
          isDate = False
          EveryLike = False
          isString = False
          FieldName = 'UrgencyStatus'
          TableName = 'Account'
          CodeField = 'Code'
          TitleField = 'Title'
        end
        object xpBitBtn1: TAdvGlowButton
          Left = 79
          Top = 413
          Width = 71
          Height = 28
          Anchors = [akRight, akBottom]
          Caption = #1580#1587#1578#1580#1608
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clNavy
          Font.Height = -12
          Font.Name = 'Tahoma'
          Font.Style = []
          ImageIndex = 35
          Images = dm.ImageList_MainNew
          NotesFont.Charset = DEFAULT_CHARSET
          NotesFont.Color = clWindowText
          NotesFont.Height = -11
          NotesFont.Name = 'Tahoma'
          NotesFont.Style = []
          ParentFont = False
          TabOrder = 8
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
        object xpBitBtn2: TAdvGlowButton
          Left = 6
          Top = 413
          Width = 71
          Height = 28
          Anchors = [akRight, akBottom]
          Caption = #1580#1583#1610#1583
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clNavy
          Font.Height = -12
          Font.Name = 'Tahoma'
          Font.Style = []
          ImageIndex = 71
          Images = dm.ImageList_MainNew
          NotesFont.Charset = DEFAULT_CHARSET
          NotesFont.Color = clWindowText
          NotesFont.Height = -11
          NotesFont.Name = 'Tahoma'
          NotesFont.Style = []
          ParentFont = False
          TabOrder = 9
          OnClick = xpBitBtn2Click
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
        object MERequestDate: TSolarDatePicker
          Left = 5
          Top = 170
          Width = 146
          Height = 22
          Anchors = [akTop, akRight]
          About = 'Created by : Mohamad Khorsandi'
          BiDiMode = bdLeftToRight
          Font.Charset = ARABIC_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          TabOrder = 3
          Enabled = True
          DateKind = dkSolar
          CheckInputOnExit = False
          Divider = dSlash
          ShowToDay = True
          MonthObject = moPopupMenu
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
          DataFieldType = dftSolar
          DataFieldAutoSaveModified = False
        end
        object YWhereEdit2: TYWhereEdit
          Left = 5
          Top = 118
          Width = 146
          Height = 22
          Anchors = [akTop, akRight]
          BiDiMode = bdLeftToRight
          Font.Charset = ARABIC_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentBiDiMode = False
          ParentFont = False
          TabOrder = 2
          isLike = False
          isDate = False
          EveryLike = False
          isString = True
          FieldName = 'AccountNo'
          TableName = 'Account'
          CodeField = 'Code'
          TitleField = 'Title'
        end
      end
      object TPanel
        Left = 0
        Top = 449
        Width = 750
        Height = 41
        Align = alBottom
        TabOrder = 1
        DesignSize = (
          750
          41)
        object Number: TLabel
          Left = 646
          Top = 16
          Width = 32
          Height = 14
          Anchors = [akTop, akRight]
          Caption = '    ----'
        end
      end
      object YDBGrid2: TYDBGrid
        Left = 0
        Top = 0
        Width = 595
        Height = 449
        Cursor = crHandPoint
        Align = alClient
        DataSource = dm.DReport_LoanRequest
        Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit]
        TabOrder = 2
        TitleFont.Charset = ARABIC_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -12
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
        PrintTitle = #1604#1610#1587#1578' '#1578#1607#1610#1607' '#1588#1583#1607' '#1578#1608#1587#1591' '#1606#1585#1605' '#1575#1601#1586#1575#1585' '#1610#1711#1575#1606#1607
        InvertFarsiDate = True
        TitleSort = True
        AutoInsert = False
        FooterFields = 'Count'
        Columns = <
          item
            Expanded = False
            FieldName = 'AccountNo'
            Title.Caption = #1588' '#1581#1587#1575#1576
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'AccountTitle'
            Title.Caption = #1606#1575#1605
            Width = 97
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'RequestDate'
            Title.Caption = #1578' '#1583#1585#1582#1608#1575#1587#1578
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'DocumentNo'
            Title.Caption = #1588#1605#1575#1585' '#1607
            Width = 84
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'ExpireStatus'
            Title.Caption = #1601#1593#1575#1604#1567
            Width = 34
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'UrgencyStatus'
            Title.Caption = #1590#1585#1608#1585#1610#1567
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'Comment'
            Title.Caption = #1578#1608#1590#1610#1581#1575#1578
            Width = 181
            Visible = True
          end>
      end
    end
    object xpTabSheet2: TTabSheet
      Caption = #1608#1610#1585#1575#1610#1588' '#1583#1585#1582#1608#1575#1587#1578' '#1607#1575
      ImageIndex = 2
      object PAccountDeatil: TPanel
        Left = 0
        Top = 39
        Width = 750
        Height = 234
        Align = alTop
        ParentColor = True
        TabOrder = 0
      end
      object Panel2: TPanel
        Left = 0
        Top = 0
        Width = 750
        Height = 39
        Align = alTop
        ParentColor = True
        TabOrder = 1
        DesignSize = (
          750
          39)
        object Label1: TLabel
          Left = 673
          Top = 10
          Width = 64
          Height = 13
          Anchors = [akTop, akRight]
          Caption = #1588#1605#1575#1585#1607' '#1581#1587#1575#1576
          Font.Charset = ARABIC_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
        end
        object SearchEdit: TEdit
          Left = 278
          Top = 0
          Width = 386
          Height = 21
          Anchors = [akTop, akRight]
          Font.Charset = ARABIC_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          TabOrder = 0
          OnExit = TEditExit
          OnKeyDown = SearchEditKeyDown
        end
        object Button6: TAdvGlowButton
          Left = 110
          Top = 4
          Width = 139
          Height = 28
          Anchors = [akTop, akRight]
          Caption = #1575#1606#1578#1582#1575#1576' '#1588#1605#1575#1585#1607' '#1581#1587#1575#1576
          Font.Charset = ARABIC_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Tahoma'
          Font.Style = []
          ImageIndex = 126
          Images = dm.LetterImages_New
          NotesFont.Charset = DEFAULT_CHARSET
          NotesFont.Color = clWindowText
          NotesFont.Height = -11
          NotesFont.Name = 'Tahoma'
          NotesFont.Style = []
          ParentFont = False
          TabOrder = 1
          OnClick = Button6Click
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
      object YDBGrid1: TYDBGrid
        Left = 0
        Top = 273
        Width = 750
        Height = 183
        TabStop = False
        Align = alClient
        Color = clWhite
        DataSource = dm.DSelect_LoanRequest_ByAccountID
        TabOrder = 2
        TitleFont.Charset = ARABIC_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -12
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
        PrintTitle = #1604#1610#1587#1578' '#1578#1607#1610#1607' '#1588#1583#1607' '#1578#1608#1587#1591' '#1606#1585#1605' '#1575#1601#1586#1575#1585' '#1610#1711#1575#1606#1607
        InvertFarsiDate = True
        TitleSort = True
        AutoInsert = False
        FooterFields = 'Count'
        Columns = <
          item
            Expanded = False
            FieldName = 'RequestDate'
            Title.Caption = #1578' '#1583#1585#1582#1608#1575#1587#1578
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'DocumentNo'
            Title.Caption = #1588#1605#1575#1585' '#1607
            Width = 84
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'ExpireStatus'
            Title.Caption = #1593#1583#1605' '#1605#1608#1575#1601#1602#1578#1567
            Width = 76
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'UrgencyStatus'
            Title.Caption = #1590#1585#1608#1585#1610#1567
            Width = 55
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'Comment'
            Title.Caption = #1578#1608#1590#1610#1581#1575#1578
            Visible = True
          end>
      end
      object Panel4: TPanel
        Left = 0
        Top = 456
        Width = 750
        Height = 34
        Align = alBottom
        ParentColor = True
        TabOrder = 3
        DesignSize = (
          750
          34)
        object PrintBtn: TAdvGlowButton
          Left = 516
          Top = 3
          Width = 75
          Height = 28
          Anchors = [akRight, akBottom]
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
          TabOrder = 0
          OnClick = PrintBtnClick
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
        object DoBtn: TAdvGlowButton
          Left = 670
          Top = 3
          Width = 75
          Height = 28
          Hint = 'Post'
          Anchors = [akRight, akBottom]
          Caption = #1575#1610#1580#1575#1583
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
          TabOrder = 1
          OnClick = DoBtnClick
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
        object xpBtnAddLetter: TAdvGlowButton
          Left = 593
          Top = 3
          Width = 75
          Height = 28
          Anchors = [akRight, akBottom]
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
          TabOrder = 2
          OnClick = xpBtnAddLetterClick
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
        object xpBitBtn3: TAdvGlowButton
          Left = 424
          Top = 3
          Width = 85
          Height = 28
          Anchors = [akRight, akBottom]
          Caption = #1605#1583#1575#1585#1705
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clNavy
          Font.Height = -12
          Font.Name = 'Tahoma'
          Font.Style = []
          ImageIndex = 159
          Images = dm.ImageList_MainNew
          NotesFont.Charset = DEFAULT_CHARSET
          NotesFont.Color = clWindowText
          NotesFont.Height = -11
          NotesFont.Name = 'Tahoma'
          NotesFont.Style = []
          ParentFont = False
          TabOrder = 3
          OnClick = xpBitBtn3Click
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
  object Panel3: TPanel [1]
    Left = 0
    Top = 525
    Width = 758
    Height = 41
    Align = alBottom
    TabOrder = 1
    object BitBtn1: TAdvGlowButton
      Left = 8
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
  inherited ahmadvand: TActionList
    Left = 21
    Top = 83
  end
  inherited Grid_PopupMenu: TPopupMenu
    Left = 39
    Top = 132
  end
  object ActionManager1: TActionManager
    Left = 37
    Top = 188
    StyleName = 'XP Style'
    object Acancel: TDataSetCancel
      Category = 'Dataset'
      Caption = #1575#1606#1589#1585#1575#1601
      Hint = 'Cancel'
      ImageIndex = 8
      ShortCut = 32776
    end
    object asearchCheque: TAction
      Caption = '...'
      ShortCut = 114
    end
    object Action1: TAction
      Caption = 'Action1'
    end
    object Apost: TAction
      Category = 'Dataset'
      Caption = #1584#1582#1610#1585#1607
      ShortCut = 113
      OnExecute = ApostExecute
    end
  end
end
