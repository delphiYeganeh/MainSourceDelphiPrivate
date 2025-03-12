inherited FillLetterData: TFillLetterData
  Left = 367
  Top = 267
  Width = 507
  Height = 644
  Caption = #1578#1576#1583#1610#1604' '#1601#1575#1610#1604' '#1578#1589#1608#1610#1585#1610' '#1576#1607' '#1587#1606#1583
  Constraints.MinHeight = 430
  Constraints.MinWidth = 460
  OldCreateOrder = True
  PixelsPerInch = 96
  TextHeight = 13
  object pnlMain: TPanel [0]
    Left = 0
    Top = 0
    Width = 491
    Height = 605
    Align = alClient
    ParentColor = True
    TabOrder = 0
    object PageControl1: TPageControl
      Left = 1
      Top = 1
      Width = 489
      Height = 603
      ActivePage = TabSheet1
      Align = alClient
      Images = Dm.ImageList_MainNew
      TabOrder = 0
      object TabSheet1: TTabSheet
        Caption = #1578#1576#1583#1610#1604' '#1601#1575#1610#1604'  '#1576#1583#1608#1606' '#1585#1606#1711
        ImageIndex = 205
        object Panel2: TPanel
          Left = 0
          Top = 0
          Width = 481
          Height = 533
          Align = alClient
          ParentColor = True
          TabOrder = 0
          OnClick = Panel2Click
          DesignSize = (
            481
            533)
          object Label2: TLabel
            Left = 391
            Top = 47
            Width = 87
            Height = 13
            Anchors = [akTop, akRight]
            Caption = ' '#1662#1608#1588#1607' '#1581#1575#1608#1610' '#1578#1589#1575#1608#1610#1585
          end
          object Label3: TLabel
            Left = 397
            Top = 78
            Width = 65
            Height = 13
            Anchors = [akTop, akRight]
            Caption = #1662#1587#1608#1606#1583' '#1601#1575#1610#1604' '#1607#1575
            Visible = False
          end
          object Label4: TLabel
            Left = 385
            Top = 390
            Width = 85
            Height = 13
            Anchors = [akTop, akRight]
            Caption = #1578#1589#1575#1608#1610#1585' '#1575#1606#1578#1602#1575#1604' '#1606#1610#1575#1601#1578#1607
            Font.Charset = ARABIC_CHARSET
            Font.Color = clRed
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
          end
          object Label5: TLabel
            Left = 391
            Top = 137
            Width = 81
            Height = 13
            Anchors = [akTop, akRight]
            Caption = #1578#1589#1575#1608#1610#1585' '#1575#1606#1578#1602#1575#1604' '#1610#1575#1601#1578#1607
            Font.Charset = ARABIC_CHARSET
            Font.Color = clBlue
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
          end
          object Label1: TLabel
            Left = 366
            Top = 76
            Width = 111
            Height = 13
            Anchors = [akTop, akRight]
            Caption = #1580#1583#1575' '#1603#1606#1606#1583#1607' '#1588#1605#1575#1585#1607' '#1589#1601#1581#1607':'
          end
          object LabelHelp: TLabel
            Left = 23
            Top = 6
            Width = 450
            Height = 33
            Anchors = [akTop, akRight]
            AutoSize = False
            Caption = 
              #1578#1608#1580#1607' : '#1583#1585' '#1589#1608#1585#1578#1610' '#1578#1589#1575#1608#1610#1585' '#1575#1606#1578#1602#1575#1604' '#1605#1610' '#1610#1575#1576#1606#1583' '#1603#1607' '#1606#1575#1605#1588#1575#1606' '#1576#1575' '#1588#1605#1575#1585#1607' '#1575#1606#1583#1610#1603#1575 +
              #1578#1608#1585' '#1587#1606#1583' '#1607#1575' '#1576#1585#1575#1576#1585' '#1576#1575#1588#1606#1583'.'#13#10'          '#1575#1610#1606' '#1587#1606#1583' '#1607#1575' '#1605#1610' '#1578#1608#1575#1606#1606#1583' '#1588#1575#1605#1604' '#1587#1606#1583 +
              ' '#1607#1575#1610' '#1576#1575#1610#1711#1575#1606#1610' '#1606#1588#1583#1607' '#1548' '#1576#1575#1610#1711#1575#1606#1610' '#1588#1583#1607' '#1608' '#1610#1575' '#1581#1584#1601' '#1588#1583#1607' '#1576#1575#1588#1606#1583'.'
            WordWrap = True
          end
          object lblCounter: TLabel
            Left = 16
            Top = 72
            Width = 210
            Height = 25
            Alignment = taCenter
            AutoSize = False
            Caption = '0'
            Font.Charset = ARABIC_CHARSET
            Font.Color = clWindowText
            Font.Height = -19
            Font.Name = 'B Yekan'
            Font.Style = [fsBold]
            ParentFont = False
            Layout = tlCenter
          end
          object SBOpen: TAdvGlowButton
            Left = 368
            Top = 44
            Width = 21
            Height = 21
            Cursor = crHandPoint
            Anchors = [akTop, akRight]
            ImageIndex = 199
            Images = Dm.ImageList_MainNew
            NotesFont.Charset = DEFAULT_CHARSET
            NotesFont.Color = clWindowText
            NotesFont.Height = -11
            NotesFont.Name = 'Tahoma'
            NotesFont.Style = []
            TabOrder = 10
            OnClick = SBOpenClick
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
          object btnEditName: TAdvGlowButton
            Left = 18
            Top = 98
            Width = 144
            Height = 30
            Cursor = crHandPoint
            Anchors = [akTop, akRight]
            Caption = #1575#1589#1604#1575#1581' '#1606#1575#1605' '#1601#1575#1610#1604' '#1608' '#1601#1608#1604#1583#1585
            Font.Charset = ARABIC_CHARSET
            Font.Color = clNavy
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            ImageIndex = 26
            Images = Dm.ImageList_MainNew
            NotesFont.Charset = DEFAULT_CHARSET
            NotesFont.Color = clWindowText
            NotesFont.Height = -11
            NotesFont.Name = 'Tahoma'
            NotesFont.Style = []
            ParentFont = False
            TabOrder = 8
            OnClick = btnEditNameClick
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
          object btnInsertInCommingNo: TAdvGlowButton
            Left = 170
            Top = 98
            Width = 144
            Height = 30
            Cursor = crHandPoint
            Anchors = [akTop, akRight]
            Caption = #1576#1585' '#1575#1587#1575#1587' '#1588#1605#1575#1585#1607' '#1587#1606#1583
            Font.Charset = ARABIC_CHARSET
            Font.Color = clNavy
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            ImageIndex = 197
            Images = Dm.ImageList_MainNew
            NotesFont.Charset = DEFAULT_CHARSET
            NotesFont.Color = clWindowText
            NotesFont.Height = -11
            NotesFont.Name = 'Tahoma'
            NotesFont.Style = []
            ParentFont = False
            TabOrder = 2
            OnClick = btnInsertInCommingNoClick
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
          object EditPath: TEdit
            Left = 5
            Top = 44
            Width = 362
            Height = 21
            Anchors = [akLeft, akTop, akRight]
            BiDiMode = bdLeftToRight
            ParentBiDiMode = False
            TabOrder = 0
          end
          object btnInsertAndicator: TAdvGlowButton
            Left = 321
            Top = 98
            Width = 144
            Height = 30
            Cursor = crHandPoint
            Anchors = [akTop, akRight]
            Caption = #1576#1585' '#1575#1587#1575#1587' '#1575#1606#1583#1610#1705#1575#1578#1608#1585
            Font.Charset = ARABIC_CHARSET
            Font.Color = clNavy
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            ImageIndex = 203
            Images = Dm.ImageList_MainNew
            NotesFont.Charset = DEFAULT_CHARSET
            NotesFont.Color = clWindowText
            NotesFont.Height = -11
            NotesFont.Name = 'Tahoma'
            NotesFont.Style = []
            ParentFont = False
            TabOrder = 1
            OnClick = btnInsertAndicatorClick
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
          object memUpdate: TMemo
            Left = 5
            Top = 154
            Width = 470
            Height = 95
            Anchors = [akLeft, akTop, akRight]
            BiDiMode = bdLeftToRight
            ParentBiDiMode = False
            TabOrder = 3
          end
          object memFail: TMemo
            Left = 5
            Top = 415
            Width = 469
            Height = 111
            Anchors = [akLeft, akTop, akRight, akBottom]
            BiDiMode = bdLeftToRight
            ParentBiDiMode = False
            TabOrder = 4
          end
          object Edit3: TEdit
            Left = 328
            Top = 72
            Width = 17
            Height = 21
            Anchors = [akTop, akRight]
            TabOrder = 5
            Text = '-'
          end
          object CBExtention: TComboBox
            Left = 307
            Top = 72
            Width = 56
            Height = 21
            Anchors = [akTop, akRight]
            BiDiMode = bdLeftToRight
            Ctl3D = False
            ItemHeight = 13
            ParentBiDiMode = False
            ParentCtl3D = False
            TabOrder = 6
            Text = 'JPG'
            Visible = False
            OnKeyPress = CBExtentionKeyPress
            Items.Strings = (
              'JPG'
              'TIF'
              'PDF'
              'DOC'
              'DOCX'
              'XLS'
              'XLSX')
          end
          object ShellTreeView1: TShellTreeView
            Left = 6
            Top = 67
            Width = 360
            Height = 4
            ObjectTypes = [otFolders]
            Root = 'rfDesktop'
            UseShellImages = True
            Anchors = [akLeft, akTop, akRight]
            AutoRefresh = False
            Indent = 19
            ParentColor = False
            RightClickSelect = True
            ShowRoot = False
            TabOrder = 7
            Visible = False
            OnDblClick = ShellTreeView1DblClick
          end
          object memInsert: TMemo
            Left = 5
            Top = 258
            Width = 470
            Height = 123
            Anchors = [akLeft, akTop, akRight]
            BiDiMode = bdLeftToRight
            ParentBiDiMode = False
            TabOrder = 9
          end
        end
        object Panel1: TPanel
          Left = 0
          Top = 533
          Width = 481
          Height = 41
          Align = alBottom
          ParentColor = True
          TabOrder = 1
          object Button2: TAdvGlowButton
            Left = 2
            Top = 8
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
            TabOrder = 0
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
        end
      end
      object TabSheet2: TTabSheet
        Caption = #1578#1576#1583#1610#1604' '#1601#1575#1610#1604' '#1576#1575' '#1585#1606#1711
        ImageIndex = 204
        DesignSize = (
          481
          574)
        object Label6: TLabel
          Left = -3
          Top = 9
          Width = 452
          Height = 28
          Anchors = [akTop, akRight]
          AutoSize = False
          Caption = 
            ' '#1583#1585' '#1589#1608#1585#1578#1610' '#1578#1589#1575#1608#1610#1585' '#1575#1606#1578#1602#1575#1604' '#1605#1610' '#1610#1575#1576#1606#1583' '#1603#1607' '#1606#1575#1605#1588#1575#1606' '#1576#1575' '#1588#1605#1575#1585#1607' '#1575#1606#1583#1610#1603#1575#1578#1608#1585' '#1587#1606 +
            #1583' '#1607#1575' '#1576#1585#1575#1576#1585' '#1576#1575#1588#1606#1583'.'#13#10' '#1575#1610#1606' '#1587#1606#1583' '#1607#1575' '#1605#1610' '#1578#1608#1575#1606#1606#1583' '#1588#1575#1605#1604' '#1587#1606#1583' '#1607#1575#1610' '#1576#1575#1610#1711#1575#1606#1610' '#1606#1588 +
            #1583#1607' '#1548' '#1576#1575#1610#1711#1575#1606#1610' '#1588#1583#1607' '#1608' '#1610#1575' '#1581#1584#1601' '#1588#1583#1607' '#1576#1575#1588#1606#1583'.'
          WordWrap = True
        end
        object Label9: TLabel
          Left = 391
          Top = 109
          Width = 81
          Height = 13
          Anchors = [akTop, akRight]
          Caption = #1578#1589#1575#1608#1610#1585' '#1575#1606#1578#1602#1575#1604' '#1610#1575#1601#1578#1607
          Font.Charset = ARABIC_CHARSET
          Font.Color = clBlue
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
        end
        object Label10: TLabel
          Left = 385
          Top = 256
          Width = 85
          Height = 13
          Anchors = [akTop, akRight]
          Caption = #1578#1589#1575#1608#1610#1585' '#1575#1606#1578#1602#1575#1604' '#1606#1610#1575#1601#1578#1607
          Font.Charset = ARABIC_CHARSET
          Font.Color = clRed
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
        end
        object Label7: TLabel
          Left = 409
          Top = 84
          Width = 65
          Height = 13
          Anchors = [akTop, akRight]
          Caption = #1662#1587#1608#1606#1583' '#1601#1575#1610#1604' '#1607#1575
        end
        object Label8: TLabel
          Left = 11
          Top = 35
          Width = 435
          Height = 18
          Anchors = [akTop, akRight]
          AutoSize = False
          Caption = 
            #1576#1585#1575#1610' '#1575#1606#1578#1602#1575#1604' '#1578#1589#1575#1608#1610#1585' '#1601#1575#1610#1604' '#1605#1608#1585#1583' '#1606#1592#1585' '#1576#1575#1610#1583' '#1583#1575#1585#1575#1610' '#1610#1705' '#1587#1585#1588#1575#1582#1607' '#1576#1575' '#1593#1606#1608#1575#1606' '#1588 +
            #1605#1575#1585#1607' '#1575#1606#1583#1610#1705#1575#1578#1608#1585' '#1576#1575#1588#1583'.'
          WordWrap = True
        end
        object Label11: TLabel
          Left = 2
          Top = 48
          Width = 445
          Height = 26
          Anchors = [akTop, akRight]
          Caption = 
            #1576#1585#1575#1610' '#1575#1606#1578#1582#1575#1576' '#1705#1583' '#1585#1606#1711' '#1576#1593#1583' '#1575#1586' '#1606#1575#1605' '#1586#1610#1585' '#1588#1575#1582#1607' "_" '#1608' '#1705#1583' '#1605#1588#1582#1589' '#1588#1583#1607' '#1583#1585' '#1601#1585#1605' ' +
            '" '#1578#1593#1585#1610#1601' '#1591#1576#1602#1607' '#1576#1606#1583#1610' '#1585#1606#1711' '#1607#1575' " '#1575#1587#1578#1601#1575#1583#1607' '#1606#1605#1575#1610#1610#1583' .'
          WordWrap = True
        end
        object Label12: TLabel
          Left = 446
          Top = 1
          Width = 31
          Height = 13
          Anchors = [akTop, akRight]
          Caption = #1578#1608#1580#1607' :'
          Font.Charset = ARABIC_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object SpeedButton1: TAdvGlowButton
          Left = 257
          Top = 253
          Width = 213
          Height = 3
          Anchors = [akTop, akRight]
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
        object SpeedButton2: TAdvGlowButton
          Left = 0
          Top = 105
          Width = 467
          Height = 3
          Anchors = [akLeft, akTop, akRight]
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
        object BitBtn1: TAdvGlowButton
          Left = 7
          Top = 72
          Width = 240
          Height = 30
          Cursor = crHandPoint
          Caption = #1582#1608#1575#1606#1583#1606' '#1578#1589#1575#1608#1610#1585' '#1608' '#1584#1582#1610#1585#1607' '#1583#1585' '#1575#1587#1606#1575#1583' '#1605#1585#1578#1576#1591
          Font.Charset = ARABIC_CHARSET
          Font.Color = clNavy
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ImageIndex = 198
          Images = Dm.ImageList_MainNew
          NotesFont.Charset = DEFAULT_CHARSET
          NotesFont.Color = clWindowText
          NotesFont.Height = -11
          NotesFont.Name = 'Tahoma'
          NotesFont.Style = []
          ParentFont = False
          TabOrder = 0
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
        object Memo3: TMemo
          Left = 264
          Top = 125
          Width = 209
          Height = 124
          Anchors = [akTop, akRight]
          TabOrder = 1
        end
        object Memo4: TMemo
          Left = 264
          Top = 273
          Width = 209
          Height = 298
          Anchors = [akTop, akRight, akBottom]
          TabOrder = 2
        end
        object ShellTreeView2: TShellTreeView
          Left = -5
          Top = 125
          Width = 263
          Height = 318
          ObjectTypes = [otFolders]
          Root = 'rfDesktop'
          UseShellImages = True
          Anchors = [akLeft, akTop, akRight, akBottom]
          AutoRefresh = False
          HideSelection = False
          Indent = 19
          ParentColor = False
          RightClickSelect = True
          ShowRoot = False
          TabOrder = 3
          OnChange = ShellTreeView2Change
        end
        object ComboBox1: TComboBox
          Left = 350
          Top = 81
          Width = 56
          Height = 21
          Anchors = [akTop, akRight]
          BiDiMode = bdLeftToRight
          Ctl3D = False
          ItemHeight = 13
          ParentBiDiMode = False
          ParentCtl3D = False
          TabOrder = 4
          Text = 'JPG'
          OnKeyPress = CBExtentionKeyPress
          Items.Strings = (
            'JPG'
            'TIF'
            'PDF'
            'DOC'
            'DOCX'
            'XLS'
            'XLSX')
        end
      end
    end
  end
  inherited DSForm: TDataSource
    Left = 277
    Top = 303
  end
  inherited ActionList: TActionList
    Left = 333
    Top = 306
  end
  inherited xpWindow1: TxpWindow
    Left = 280
    Top = 400
  end
  object LetterData: TADODataSet
    Connection = Dm.YeganehConnection
    CursorType = ctStatic
    CommandText = 
      'SELECT LetterData.* FROM Letter INNER JOIN LetterData ON Letter.' +
      'LetterID = LetterData.LetterID'#13#10'       WHERE(Myear =:@Myear) AND' +
      ' (SecretariatID = :@secID) AND  (IndicatorID = :@IndicatorID)'
    Parameters = <
      item
        Name = '@Myear'
        DataType = ftString
        Size = 1
        Value = '0'
      end
      item
        Name = '@secID'
        Size = -1
        Value = Null
      end
      item
        Name = '@IndicatorID'
        Size = -1
        Value = Null
      end>
    Left = 280
    Top = 352
    object LetterDataLetterDataID: TAutoIncField
      FieldName = 'LetterDataID'
      ReadOnly = True
    end
    object LetterDataLetterID: TIntegerField
      FieldName = 'LetterID'
    end
    object LetterDataPageNumber: TWordField
      FieldName = 'PageNumber'
    end
    object LetterDataImage: TBlobField
      FieldName = 'Image'
    end
    object LetterDataextention: TWordField
      FieldName = 'extention'
    end
    object LetterDataDescription: TStringField
      FieldName = 'Description'
      Size = 1000
    end
  end
  object qryCheckIndicatorID: TADOQuery
    Connection = Dm.YeganehConnection
    Parameters = <
      item
        Name = 'myear'
        DataType = ftInteger
        Size = -1
        Value = Null
      end
      item
        Name = 'IndicatorID'
        DataType = ftInteger
        Size = -1
        Value = Null
      end
      item
        Name = 'SecretariatID'
        DataType = ftInteger
        Size = -1
        Value = Null
      end>
    SQL.Strings = (
      'Select COUNT(*) AS Cnt,LetterID'
      ' from  letter'
      'Where myear=:myear'
      'AND IndicatorID =:IndicatorID'
      'AND SecretariatID =:SecretariatID'
      'GROUP BY LetterID'
      '')
    Left = 340
    Top = 352
    object qryCheckIndicatorIDCnt: TIntegerField
      FieldName = 'Cnt'
    end
    object qryCheckIndicatorIDLetterID: TIntegerField
      FieldName = 'LetterID'
    end
  end
  object QrLetterData: TADOQuery
    Connection = Dm.YeganehConnection
    Parameters = <
      item
        Name = 'LetterID'
        DataType = ftInteger
        Size = -1
        Value = 0
      end>
    SQL.Strings = (
      'Select *'
      'From LetterData'
      'Where( LetterID = :LetterID )'
      '  And( Extention in (1,2) ) /*Jpg,Tiff*/'
      
        'Order By PageNumber  /*'#1578#1594#1610#1610#1585' '#1583#1575#1583#1607' '#1606#1588#1608#1583' '#1576#1593#1604#1578' '#1601#1610#1604#1583' '#1588#1605#1575#1585#1607' '#1589#1601#1581#1607' Orde' +
        'r By */')
    Left = 393
    Top = 308
    object QrLetterDataLetterDataID: TAutoIncField
      FieldName = 'LetterDataID'
      ReadOnly = True
    end
    object QrLetterDataLetterID: TIntegerField
      FieldName = 'LetterID'
    end
    object QrLetterDataPageNumber: TIntegerField
      FieldName = 'PageNumber'
    end
    object QrLetterDataImage: TBlobField
      FieldName = 'Image'
    end
    object QrLetterDataextention: TWordField
      FieldName = 'extention'
    end
    object QrLetterDataDescription: TWideStringField
      FieldName = 'Description'
      Size = 50
    end
    object QrLetterDataLastUpdate: TDateTimeField
      FieldName = 'LastUpdate'
    end
    object QrLetterDataListItemsID: TIntegerField
      FieldName = 'ListItemsID'
    end
    object QrLetterDataColorID: TIntegerField
      FieldName = 'ColorID'
    end
  end
end
