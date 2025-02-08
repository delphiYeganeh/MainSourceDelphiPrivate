inherited FrLoanReport: TFrLoanReport
  Left = 548
  Top = 268
  Width = 955
  Height = 513
  Caption = ''
  Font.Height = -12
  OldCreateOrder = True
  PixelsPerInch = 96
  TextHeight = 14
  object pnlMain: TPanel [0]
    Left = 0
    Top = 0
    Width = 939
    Height = 474
    Align = alClient
    ParentColor = True
    TabOrder = 0
    object Panel4: TPanel
      Left = 672
      Top = 1
      Width = 266
      Height = 472
      Align = alRight
      BevelInner = bvRaised
      BevelOuter = bvLowered
      TabOrder = 0
      DesignSize = (
        266
        472)
      object Label5: TLabel
        Left = 181
        Top = 9
        Width = 76
        Height = 14
        Caption = #1588#1605#1575#1585#1607' '#1581#1587#1575#1576':'
      end
      object Label15: TLabel
        Left = 219
        Top = 84
        Width = 38
        Height = 14
        Caption = #1606#1608#1593' '#1608#1575#1605':'
      end
      object Label8: TLabel
        Left = 201
        Top = 47
        Width = 56
        Height = 14
        Caption = #1588#1605#1575#1585#1607' '#1608#1575#1605':'
      end
      object Label3: TLabel
        Left = 157
        Top = 128
        Width = 95
        Height = 14
        Caption = #1578#1575#1585#1610#1582' '#1578#1575#1582#1610#1585'  '#1578#1575' '#1578#1575#1585#1610#1582':'
      end
      object SpeedButton6: TAdvGlowButton
        Left = 95
        Top = 437
        Width = 84
        Height = 28
        Anchors = [akLeft, akBottom]
        Caption = #1580#1587#1578#1580#1608
        ImageIndex = 70
        Images = dm.ImageList_MainNew
        NotesFont.Charset = DEFAULT_CHARSET
        NotesFont.Color = clWindowText
        NotesFont.Height = -11
        NotesFont.Name = 'Tahoma'
        NotesFont.Style = []
        TabOrder = 7
        OnClick = SpeedButton6Click
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
      object EdtAccountNo: TEdit
        Left = 8
        Top = 3
        Width = 169
        Height = 22
        Font.Charset = ARABIC_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        TabOrder = 0
      end
      object edLoanType: TYWhereEdit
        Left = 32
        Top = 79
        Width = 144
        Height = 22
        BiDiMode = bdLeftToRight
        Color = 16775676
        Font.Charset = ARABIC_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentBiDiMode = False
        ParentFont = False
        TabOrder = 1
        isLike = False
        isDate = False
        EveryLike = True
        isString = False
        FieldName = 'LoanTypeID'
        TableName = 'Loan'
        ListTable = 'LoanType'
        CodeField = 'LoanTypeID'
        TitleField = 'LoanTypeTitle'
        Connection = dm.YeganehConnection
      end
      object SpeedButton5: TAdvGlowButton
        Left = 9
        Top = 80
        Width = 23
        Height = 23
        ImageIndex = 78
        Images = dm.ImageList_MainNew
        NotesFont.Charset = DEFAULT_CHARSET
        NotesFont.Color = clWindowText
        NotesFont.Height = -11
        NotesFont.Name = 'Tahoma'
        NotesFont.Style = []
        TabOrder = 2
        OnClick = SpeedButton5Click
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
      object edLoanNo: TEdit
        Left = 8
        Top = 41
        Width = 169
        Height = 22
        Font.Charset = ARABIC_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        TabOrder = 3
      end
      object PanelGroup: TPanel
        Left = 47
        Top = 156
        Width = 214
        Height = 56
        BevelOuter = bvNone
        Ctl3D = True
        ParentCtl3D = False
        TabOrder = 4
        object Rb: TLabel
          Left = 98
          Top = 7
          Width = 108
          Height = 14
          Caption = #1711#1585#1608#1607' '#1576#1606#1583#1610' '#1576#1585' '#1575#1587#1575#1587' :'
        end
        object RB_sh: TBevel
          Left = 8
          Top = 26
          Width = 200
          Height = 27
          Shape = bsFrame
        end
        object RBLoanNo: TRadioButton
          Left = 121
          Top = 32
          Width = 74
          Height = 17
          Caption = #1588#1605#1575#1585#1607' '#1608#1575#1605
          Checked = True
          TabOrder = 0
          TabStop = True
        end
        object RbAccountNo: TRadioButton
          Left = 17
          Top = 32
          Width = 94
          Height = 17
          Caption = #1588#1605#1575#1585#1607' '#1581#1587#1575#1576
          TabOrder = 1
        end
      end
      object PanelDelay: TPanel
        Left = 8
        Top = 213
        Width = 250
        Height = 220
        BevelOuter = bvNone
        TabOrder = 5
        object lbPaymentDelay: TLabel
          Left = 146
          Top = 12
          Width = 99
          Height = 14
          Caption = #1578#1593#1583#1575#1583' '#1575#1602#1587#1575#1591' '#1605#1593#1608#1602#1607':'
        end
        object edPaymentDelay: TEdit
          Left = 0
          Top = 2
          Width = 145
          Height = 22
          Font.Charset = ARABIC_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          TabOrder = 0
        end
        object RBRemainOfLoan_0: TRadioButton
          Left = 54
          Top = 40
          Width = 193
          Height = 25
          Caption = #1608#1575#1605' '#1607#1575#1610' '#1578#1587#1608#1610#1607' '#1588#1583#1607' '#1576#1575' '#1578#1575#1582#1610#1585
          TabOrder = 1
        end
        object RBRemainOfLoan_Not0: TRadioButton
          Left = 54
          Top = 59
          Width = 193
          Height = 25
          Caption = #1608#1575#1605' '#1607#1575#1610' '#1578#1587#1608#1610#1607' '#1606#1588#1583#1607' '#1576#1575' '#1578#1575#1582#1610#1585
          TabOrder = 2
        end
        object RBAllLoan: TRadioButton
          Left = 54
          Top = 82
          Width = 193
          Height = 18
          Caption = #1578#1605#1575#1605#1610' '#1608#1575#1605#1607#1575
          Checked = True
          TabOrder = 3
          TabStop = True
        end
        object RBPaymentNotPayed: TRadioButton
          Left = 0
          Top = 127
          Width = 247
          Height = 32
          Caption = #1608#1575#1605' '#1607#1575#1610#1610' '#1705#1607' '#1575#1602#1587#1575#1591' '#1662#1585#1583#1575#1582#1578' '#1606#1588#1583#1607' '#1576#1575' '#1578#1575#1582#1610#1585#1583#1575#1585#1606#1583
          Font.Charset = ARABIC_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          TabOrder = 4
          WordWrap = True
        end
        object RBPaymentPayed: TRadioButton
          Left = 0
          Top = 160
          Width = 247
          Height = 29
          Caption = #1608#1575#1605' '#1607#1575#1610#1610' '#1705#1607' '#1575#1602#1587#1575#1591' '#1662#1585#1583#1575#1582#1578' '#1588#1583#1607' '#1576#1575' '#1578#1575#1582#1610#1585#1583#1575#1585#1606#1583
          Font.Charset = ARABIC_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          TabOrder = 5
          WordWrap = True
        end
        object RbAllPayment: TRadioButton
          Left = 54
          Top = 190
          Width = 193
          Height = 22
          Caption = #1578#1605#1575#1605#1610' '#1575#1602#1587#1575#1591
          Font.Charset = ARABIC_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          TabOrder = 6
          WordWrap = True
        end
      end
      object mEdtDate: TSolarDatePicker
        Left = 8
        Top = 123
        Width = 144
        Height = 22
        About = 'Created by : Mohamad Khorsandi'
        BiDiMode = bdLeftToRight
        Font.Charset = ARABIC_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        TabOrder = 6
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
    end
    object PageControl1: TPageControl
      Left = 1
      Top = 1
      Width = 671
      Height = 472
      ActivePage = TshVam
      Align = alClient
      Images = dm.LetterImages_New
      TabHeight = 25
      TabOrder = 1
      TabWidth = 200
      OnChanging = PageControl1Changing
      object TshVam: TTabSheet
        Caption = #1711#1586#1575#1585#1588' '#1608#1575#1605
        ImageIndex = 183
        object Panel8: TPanel
          Left = 0
          Top = 0
          Width = 663
          Height = 437
          Align = alClient
          Ctl3D = False
          ParentCtl3D = False
          TabOrder = 0
          object YDBGrid3: TYDBGrid
            Left = 1
            Top = 1
            Width = 661
            Height = 394
            Cursor = crHandPoint
            Align = alClient
            Color = clCream
            DataSource = dREPORT_LOAN_New
            TabOrder = 0
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
            InvertFarsiDate = True
            TitleSort = True
            AutoInsert = False
            FooterFields = 'Count'
            Columns = <
              item
                Expanded = False
                FieldName = 'ACCOUNTNO'
                Title.Alignment = taCenter
                Title.Caption = #1588#1605#1575#1585#1607' '#1581#1587#1575#1576
                Title.Font.Charset = ARABIC_CHARSET
                Title.Font.Color = clWindowText
                Title.Font.Height = -11
                Title.Font.Name = 'Tahoma'
                Title.Font.Style = []
                Width = 77
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'ACCOUNTTITLE'
                Title.Alignment = taCenter
                Title.Caption = #1593#1606#1608#1575#1606
                Title.Font.Charset = ARABIC_CHARSET
                Title.Font.Color = clWindowText
                Title.Font.Height = -11
                Title.Font.Name = 'Tahoma'
                Title.Font.Style = []
                Width = 118
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'LOANNO'
                Title.Alignment = taCenter
                Title.Caption = #1588#1605#1575#1585#1607' '#1608#1575#1605
                Title.Font.Charset = ARABIC_CHARSET
                Title.Font.Color = clWindowText
                Title.Font.Height = -11
                Title.Font.Name = 'Tahoma'
                Title.Font.Style = []
                Width = 58
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'LOANTYPETITLE'
                Title.Alignment = taCenter
                Title.Caption = #1606#1608#1593' '#1608#1575#1605
                Title.Font.Charset = ARABIC_CHARSET
                Title.Font.Color = clWindowText
                Title.Font.Height = -11
                Title.Font.Name = 'Tahoma'
                Title.Font.Style = []
                Width = 77
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'LOANDATE'
                Title.Alignment = taCenter
                Title.Caption = #1578#1575#1585#1610#1582' '#1608#1575#1605
                Title.Font.Charset = ARABIC_CHARSET
                Title.Font.Color = clWindowText
                Title.Font.Height = -11
                Title.Font.Name = 'Tahoma'
                Title.Font.Style = []
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'NUMBEROFPAIDPART'
                Title.Alignment = taCenter
                Title.Caption = #1575#1602#1587#1575#1591' '#1662#1585#1583#1575#1582#1578' '#1588#1583#1607
                Title.Font.Charset = ARABIC_CHARSET
                Title.Font.Color = clWindowText
                Title.Font.Height = -11
                Title.Font.Name = 'Tahoma'
                Title.Font.Style = []
                Width = 98
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'NUMBEROFPART'
                Title.Alignment = taCenter
                Title.Caption = #1578#1593#1583#1575#1583' '#1575#1602#1587#1575#1591
                Title.Font.Charset = ARABIC_CHARSET
                Title.Font.Color = clWindowText
                Title.Font.Height = -11
                Title.Font.Name = 'Tahoma'
                Title.Font.Style = []
                Width = 71
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'PAIEDAMOUNT'
                Title.Alignment = taCenter
                Title.Caption = #1605#1576#1604#1594' '#1662#1585#1583#1575#1582#1578' '#1588#1583#1607
                Title.Font.Charset = ARABIC_CHARSET
                Title.Font.Color = clWindowText
                Title.Font.Height = -11
                Title.Font.Name = 'Tahoma'
                Title.Font.Style = []
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'REMAINOFLOAN'
                Title.Alignment = taCenter
                Title.Caption = #1576#1575#1602#1610#1605#1575#1606#1583#1607' '#1608#1575#1605
                Title.Font.Charset = ARABIC_CHARSET
                Title.Font.Color = clWindowText
                Title.Font.Height = -11
                Title.Font.Name = 'Tahoma'
                Title.Font.Style = []
                Width = 59
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'FamilyTitle'
                Title.Alignment = taCenter
                Title.Caption = #1711#1585#1608#1607
                Title.Font.Charset = ARABIC_CHARSET
                Title.Font.Color = clWindowText
                Title.Font.Height = -11
                Title.Font.Name = 'Tahoma'
                Title.Font.Style = []
                Width = 78
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'AMOUNT'
                Title.Alignment = taCenter
                Title.Caption = #1605#1576#1604#1594' '#1608#1575#1605
                Title.Font.Charset = ARABIC_CHARSET
                Title.Font.Color = clWindowText
                Title.Font.Height = -11
                Title.Font.Name = 'Tahoma'
                Title.Font.Style = []
                Visible = True
              end>
          end
          object Panel1: TPanel
            Left = 1
            Top = 395
            Width = 661
            Height = 41
            Align = alBottom
            BevelInner = bvRaised
            BevelOuter = bvLowered
            TabOrder = 1
            DesignSize = (
              661
              41)
            object BitBtn1: TAdvGlowButton
              Left = 5
              Top = 4
              Width = 100
              Height = 32
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
            object BitBtn2: TAdvGlowButton
              Left = 542
              Top = 4
              Width = 112
              Height = 32
              Anchors = [akTop, akRight]
              Caption = ' Excel '#1575#1585#1587#1575#1604' '#1576#1607
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clNavy
              Font.Height = -12
              Font.Name = 'Tahoma'
              Font.Style = []
              ImageIndex = 135
              Images = dm.ImageList_MainNew
              NotesFont.Charset = DEFAULT_CHARSET
              NotesFont.Color = clWindowText
              NotesFont.Height = -11
              NotesFont.Name = 'Tahoma'
              NotesFont.Style = []
              ParentFont = False
              TabOrder = 1
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
        end
      end
      object TshPeyment: TTabSheet
        Caption = #1711#1586#1575#1585#1588' '#1575#1602#1587#1575#1591' '#1605#1593#1608#1602#1607
        ImageIndex = 240
        object Panel7: TPanel
          Left = 0
          Top = 0
          Width = 663
          Height = 437
          Align = alClient
          Ctl3D = False
          ParentCtl3D = False
          TabOrder = 0
          object Panel6: TPanel
            Left = 1
            Top = 1
            Width = 661
            Height = 250
            Align = alClient
            BevelInner = bvLowered
            TabOrder = 0
            object YDBGrid1: TYDBGrid
              Left = 2
              Top = 2
              Width = 657
              Height = 246
              Cursor = crHandPoint
              Align = alClient
              Color = clCream
              DataSource = DReport_DelayedLoanPayment
              TabOrder = 0
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
              InvertFarsiDate = True
              TitleSort = True
              AutoInsert = False
              FooterFields = 'Count'
              Columns = <
                item
                  Expanded = False
                  FieldName = 'ACCOUNTNo'
                  Title.Alignment = taCenter
                  Title.Caption = #1588#1605#1575#1585#1607' '#1581#1587#1575#1576
                  Width = 108
                  Visible = True
                end
                item
                  Expanded = False
                  FieldName = 'AccountTitle'
                  Title.Alignment = taCenter
                  Title.Caption = #1593#1606#1608#1575#1606
                  Width = 84
                  Visible = True
                end
                item
                  Expanded = False
                  FieldName = 'OrderNoCount'
                  Title.Alignment = taCenter
                  Title.Caption = #1578#1593#1583#1575#1583' '#1575#1602#1587#1575#1591' '#1605#1593#1608#1602#1607
                  Width = 115
                  Visible = True
                end
                item
                  Expanded = False
                  FieldName = 'LoanNo'
                  Title.Alignment = taCenter
                  Title.Caption = #1588#1605#1575#1585#1607' '#1608#1575#1605
                  Width = 109
                  Visible = True
                end
                item
                  Expanded = False
                  FieldName = 'REMAINOFLOAN'
                  Title.Caption = #1605#1575#1606#1583#1607' '#1608#1575#1605
                  Visible = True
                end
                item
                  Expanded = False
                  FieldName = 'REMAINOfLoanPerAccountId'
                  Title.Caption = #1605#1575#1606#1583#1607' '#1608#1575#1605' '
                  Visible = False
                end>
            end
          end
          object Panel5: TPanel
            Left = 1
            Top = 251
            Width = 661
            Height = 144
            Align = alBottom
            BevelInner = bvRaised
            BevelOuter = bvLowered
            TabOrder = 1
            object Label4: TLabel
              Left = 513
              Top = 2
              Width = 177
              Height = 14
              Caption = '  '#1606#1605#1575#1610#1588' '#1580#1586#1574#1610#1575#1578' '#1588#1605#1575#1585#1607' '#1581#1587#1575#1576':'
              Font.Charset = ARABIC_CHARSET
              Font.Color = clWindowText
              Font.Height = -12
              Font.Name = 'Tahoma'
              Font.Style = [fsBold]
              ParentFont = False
            end
            object DBText1: TDBText
              Left = 425
              Top = 2
              Width = 89
              Height = 16
              DataField = 'AccountNO'
              DataSource = DReport_DelayedLoanPayment_DETAIL
              Font.Charset = ARABIC_CHARSET
              Font.Color = clWindowText
              Font.Height = -13
              Font.Name = 'Tahoma'
              Font.Style = []
              ParentFont = False
            end
            object Label1: TLabel
              Left = 307
              Top = 2
              Width = 107
              Height = 14
              Caption = #1580#1605#1593' '#1605#1575#1606#1583#1607' '#1605#1575#1607#1610#1575#1606#1607':'
              Font.Charset = ARABIC_CHARSET
              Font.Color = clWindowText
              Font.Height = -12
              Font.Name = 'Tahoma'
              Font.Style = [fsBold]
              ParentFont = False
            end
            object Label2: TLabel
              Left = 113
              Top = 2
              Width = 106
              Height = 14
              Alignment = taRightJustify
              BiDiMode = bdRightToLeft
              Caption = #1580#1605#1593' '#1705#1604' '#1605#1575#1606#1583#1607' '#1608#1575#1605':'
              Font.Charset = ARABIC_CHARSET
              Font.Color = clWindowText
              Font.Height = -12
              Font.Name = 'Tahoma'
              Font.Style = [fsBold]
              ParentBiDiMode = False
              ParentFont = False
            end
            object DBText2: TDBText
              Left = 225
              Top = 2
              Width = 82
              Height = 16
              Alignment = taRightJustify
              DataField = 'REMAINOF_MahiyanehPerAccountId'
              DataSource = DReport_DelayedLoanPayment_DETAIL
              Font.Charset = ARABIC_CHARSET
              Font.Color = clWindowText
              Font.Height = -13
              Font.Name = 'Tahoma'
              Font.Style = []
              ParentFont = False
            end
            object DBText3: TDBText
              Left = 31
              Top = 2
              Width = 75
              Height = 16
              Alignment = taRightJustify
              DataField = 'REMAINOfLoanPerAccountId'
              DataSource = DReport_DelayedLoanPayment_DETAIL
              Font.Charset = ARABIC_CHARSET
              Font.Color = clWindowText
              Font.Height = -13
              Font.Name = 'Tahoma'
              Font.Style = []
              ParentFont = False
            end
            object YDBGrid2: TYDBGrid
              Left = 2
              Top = 20
              Width = 657
              Height = 122
              Cursor = crHandPoint
              Align = alBottom
              Color = clCream
              DataSource = DReport_DelayedLoanPayment_DETAIL
              TabOrder = 0
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
              InvertFarsiDate = True
              TitleSort = True
              AutoInsert = False
              FooterFields = 'Count'
              Columns = <
                item
                  Expanded = False
                  FieldName = 'LoanNO'
                  Title.Alignment = taCenter
                  Title.Caption = #1588#1605#1575#1585#1607' '#1608#1575#1605
                  Visible = True
                end
                item
                  Expanded = False
                  FieldName = 'LoanTypeTitle'
                  Title.Alignment = taCenter
                  Title.Caption = #1606#1608#1593' '#1608#1575#1605
                  Width = 145
                  Visible = True
                end
                item
                  Expanded = False
                  FieldName = 'MatureDate'
                  Title.Alignment = taCenter
                  Title.Caption = #1578#1575#1585#1610#1582' '#1587#1585#1585#1587#1610#1583
                  Width = 76
                  Visible = True
                end
                item
                  Expanded = False
                  FieldName = 'COMMENT'
                  Title.Alignment = taCenter
                  Title.Caption = #1578#1608#1590#1610#1581#1575#1578
                  Visible = True
                end
                item
                  Expanded = False
                  FieldName = 'DELAY'
                  Title.Alignment = taCenter
                  Title.Caption = #1578#1575#1582#1610#1585
                  Visible = True
                end
                item
                  Expanded = False
                  FieldName = 'AMOUNT'
                  Title.Caption = #1605#1576#1604#1594' '#1608#1575#1605
                  Visible = True
                end
                item
                  Expanded = False
                  FieldName = 'REMAINOFLOAN'
                  Title.Caption = #1605#1575#1606#1583#1607' '#1608#1575#1605
                  Visible = True
                end>
            end
          end
          object Panel2: TPanel
            Left = 1
            Top = 395
            Width = 661
            Height = 41
            Align = alBottom
            BevelInner = bvRaised
            BevelOuter = bvLowered
            TabOrder = 2
            DesignSize = (
              661
              41)
            object BitBtn3: TAdvGlowButton
              Left = 5
              Top = 4
              Width = 100
              Height = 32
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
            object BitBtn4: TAdvGlowButton
              Left = 501
              Top = 4
              Width = 153
              Height = 32
              Anchors = [akTop, akRight]
              Caption = ' Excel '#1575#1585#1587#1575#1604' '#1580#1583#1608#1604' '#1576#1575#1604#1575' '#1576#1607
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clNavy
              Font.Height = -12
              Font.Name = 'Tahoma'
              Font.Style = []
              ImageIndex = 135
              Images = dm.ImageList_MainNew
              NotesFont.Charset = DEFAULT_CHARSET
              NotesFont.Color = clWindowText
              NotesFont.Height = -11
              NotesFont.Name = 'Tahoma'
              NotesFont.Style = []
              ParentFont = False
              TabOrder = 1
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
            object BitBtn5: TAdvGlowButton
              Left = 328
              Top = 4
              Width = 171
              Height = 32
              Anchors = [akTop, akRight]
              Caption = ' Excel '#1575#1585#1587#1575#1604' '#1580#1583#1608#1604' '#1662#1575#1610#1610#1606' '#1576#1607
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clNavy
              Font.Height = -12
              Font.Name = 'Tahoma'
              Font.Style = []
              ImageIndex = 135
              Images = dm.ImageList_MainNew
              NotesFont.Charset = DEFAULT_CHARSET
              NotesFont.Color = clWindowText
              NotesFont.Height = -11
              NotesFont.Name = 'Tahoma'
              NotesFont.Style = []
              ParentFont = False
              TabOrder = 2
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
          end
        end
      end
    end
  end
  inherited ahmadvand: TActionList
    Left = 37
    Top = 75
  end
  object DReport_DelayedLoanPayment_DETAIL: TDataSource
    DataSet = dm.SReport_DelayedLoanPayment_DETAIL
    Left = 202
    Top = 361
  end
  object DReport_DelayedLoanPayment: TDataSource
    DataSet = dm.SReport_DelayedLoanPayment
    OnDataChange = DReport_DelayedLoanPaymentDataChange
    Left = 476
    Top = 333
  end
  object dREPORT_LOAN_New: TDataSource
    DataSet = dm.REPORT_LOAN_New
    Left = 308
    Top = 329
  end
end
