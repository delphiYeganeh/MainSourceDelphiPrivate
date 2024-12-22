inherited SystemSettings: TSystemSettings
  Left = 607
  Top = 222
  BorderIcons = [biSystemMenu]
  BorderStyle = bsDialog
  Caption = #1578#1606#1592#1610#1605#1575#1578' '#1576#1575#1610#1711#1575#1606#1610
  ClientHeight = 390
  ClientWidth = 407
  Constraints.MaxHeight = 429
  Constraints.MinHeight = 424
  Constraints.MinWidth = 415
  OldCreateOrder = True
  PixelsPerInch = 96
  TextHeight = 13
  object pnlMain: TPanel [0]
    Left = 0
    Top = 0
    Width = 407
    Height = 390
    Align = alClient
    ParentColor = True
    TabOrder = 0
    object Panel2: TPanel
      Left = 1
      Top = 1
      Width = 405
      Height = 348
      Align = alClient
      ParentColor = True
      TabOrder = 0
      object PageControl1: TPageControl
        Left = 1
        Top = 1
        Width = 403
        Height = 346
        ActivePage = TShDocNu
        Align = alClient
        TabHeight = 30
        TabOrder = 0
        object TShOthers: TTabSheet
          Caption = '       '#1587#1575#1610#1585'       '
          DesignSize = (
            395
            306)
          object GroupBox6: TGroupBox
            Left = 8
            Top = 10
            Width = 377
            Height = 151
            Anchors = [akLeft, akTop, akRight]
            Caption = #1587#1575#1610#1585
            TabOrder = 0
            DesignSize = (
              377
              151)
            object Label36: TLabel
              Left = 299
              Top = 23
              Width = 50
              Height = 13
              Anchors = [akTop, akRight]
              Caption = #1606#1575#1605' '#1587#1575#1586#1605#1575#1606
            end
            object Label6: TLabel
              Left = 59
              Top = 48
              Width = 270
              Height = 13
              Anchors = [akTop, akRight]
              Caption = #1587#1610#1587#1578#1605' '#1602#1575#1576#1604#1610#1578' '#1608#1585#1608#1583' '#1583#1608' '#1603#1575#1585#1576#1585' '#1576#1575' '#1610#1603' '#1606#1575#1605' '#1603#1575#1585#1576#1585#1610' '#1585#1575' '#1583#1575#1588#1578#1607' '#1576#1575#1588#1583
            end
            object Label7: TLabel
              Left = 61
              Top = 70
              Width = 268
              Height = 13
              Anchors = [akTop, akRight]
              Caption = #1576#1607' '#1589#1608#1585#1578' '#1662#1610#1588' '#1601#1585#1590' '#1587#1606#1583' '#1607#1575' '#1576#1607' '#1589#1608#1585#1578' '#1705#1662#1610' '#1575#1585#1580#1575#1593' '#1583#1575#1583#1607' '#1588#1608#1606#1583
            end
            object Label8: TLabel
              Left = 187
              Top = 92
              Width = 142
              Height = 13
              Anchors = [akTop, akRight]
              Caption = #1575#1605#1705#1575#1606' '#1575#1587#1578#1601#1575#1583#1607' '#1575#1586' '#1602#1575#1604#1576' '#1587#1606#1583' '#1607#1575#1567
            end
            object Label11: TLabel
              Left = 231
              Top = 118
              Width = 118
              Height = 13
              Anchors = [akTop, akRight]
              Caption = #1578#1593#1583#1575#1583' '#1585#1608#1586' '#1575#1605#1575#1606#1578' '#1583#1607#1610' '#1587#1606#1583
            end
            object ORGANAME: TEdit
              Left = 117
              Top = 18
              Width = 177
              Height = 21
              Anchors = [akTop, akRight]
              Enabled = False
              TabOrder = 0
            end
            object AllowMultiUser: TCheckBox
              Left = 332
              Top = 46
              Width = 17
              Height = 17
              Anchors = [akTop, akRight]
              Caption = #1587#1610#1587#1578#1605' '#1602#1575#1576#1604#1610#1578' '#1608#1585#1608#1583' '#1583#1608' '#1603#1575#1585#1576#1585' '#1576#1575' '#1610#1603' '#1606#1575#1605' '#1603#1575#1585#1576#1585#1610' '#1585#1575' '#1583#1575#1588#1578#1607' '#1576#1575#1588#1583
              TabOrder = 1
            end
            object RecommiteCopy: TCheckBox
              Left = 332
              Top = 68
              Width = 17
              Height = 17
              Anchors = [akTop, akRight]
              Caption = #1587#1610#1587#1578#1605' '#1602#1575#1576#1604#1610#1578' '#1608#1585#1608#1583' '#1583#1608' '#1603#1575#1585#1576#1585' '#1576#1575' '#1610#1603' '#1606#1575#1605' '#1603#1575#1585#1576#1585#1610' '#1585#1575' '#1583#1575#1588#1578#1607' '#1576#1575#1588#1583
              TabOrder = 2
            end
            object UseTemplate: TCheckBox
              Left = 332
              Top = 91
              Width = 17
              Height = 17
              Anchors = [akTop, akRight]
              Caption = #1587#1610#1587#1578#1605' '#1602#1575#1576#1604#1610#1578' '#1608#1585#1608#1583' '#1583#1608' '#1603#1575#1585#1576#1585' '#1576#1575' '#1610#1603' '#1606#1575#1605' '#1603#1575#1585#1576#1585#1610' '#1585#1575' '#1583#1575#1588#1578#1607' '#1576#1575#1588#1583
              TabOrder = 3
            end
            object DefaultRentDays: TEdit
              Left = 196
              Top = 114
              Width = 29
              Height = 21
              Anchors = [akTop, akRight]
              TabOrder = 4
              Text = '7'
            end
          end
        end
        object TShOtherSoft: TTabSheet
          Caption = '   '#1575#1585#1578#1576#1575#1591' '#1576#1575' '#1583#1610#1711#1585' '#1606#1585#1605' '#1575#1601#1586#1575#1585' '#1607#1575'  '
          ImageIndex = 1
          DesignSize = (
            395
            306)
          object GroupBox1: TGroupBox
            Left = 8
            Top = 8
            Width = 379
            Height = 119
            Anchors = [akLeft, akTop, akRight]
            Caption = #1575#1585#1578#1576#1575#1591' '#1576#1575' '#1606#1585#1605' '#1575#1601#1586#1575#1585' '#1607#1575#1610' '#1583#1610#1711#1585
            TabOrder = 0
            DesignSize = (
              379
              119)
            object Label2: TLabel
              Left = 293
              Top = 27
              Width = 54
              Height = 13
              Anchors = [akTop, akRight]
              Caption = #1580#1583#1608#1604' '#1605#1585#1578#1576#1591
            end
            object Label3: TLabel
              Left = 293
              Top = 82
              Width = 48
              Height = 13
              Anchors = [akTop, akRight]
              Caption = #1601#1610#1604#1583' '#1593#1606#1608#1575#1606
            end
            object Label4: TLabel
              Left = 293
              Top = 54
              Width = 49
              Height = 13
              Anchors = [akTop, akRight]
              Caption = #1603#1604#1610#1583' '#1575#1589#1604#1610
            end
            object maintablename: TDBLookupComboBox
              Left = 144
              Top = 24
              Width = 145
              Height = 21
              Anchors = [akTop, akRight]
              BiDiMode = bdLeftToRight
              KeyField = 'TableName'
              ListField = 'Description'
              ListSource = DSForm
              ParentBiDiMode = False
              TabOrder = 0
            end
            object codefield: TEdit
              Left = 144
              Top = 51
              Width = 145
              Height = 21
              Anchors = [akTop, akRight]
              TabOrder = 1
            end
            object titlefield: TEdit
              Left = 144
              Top = 79
              Width = 145
              Height = 21
              Anchors = [akTop, akRight]
              TabOrder = 2
            end
          end
        end
        object TShSystem: TTabSheet
          Caption = '  '#1603#1575#1585#1575#1610#1610' '#1587#1610#1587#1578#1605'  '
          ImageIndex = 2
          DesignSize = (
            395
            306)
          object GroupBox7: TGroupBox
            Left = 9
            Top = 10
            Width = 378
            Height = 159
            Anchors = [akLeft, akTop, akRight]
            Caption = #1603#1575#1585#1575#1610#1610' '#1587#1610#1587#1578#1605
            TabOrder = 0
            DesignSize = (
              378
              159)
            object Label26: TLabel
              Left = 172
              Top = 24
              Width = 175
              Height = 13
              Anchors = [akTop, akRight]
              Caption = #1581#1583' '#1575#1603#1579#1585' '#1578#1593#1583#1575#1583' '#1587#1606#1583' '#1583#1585' '#1606#1578#1610#1580#1607' '#1610#1603' '#1580#1587#1578#1580#1608
            end
            object Label27: TLabel
              Left = 161
              Top = 49
              Width = 186
              Height = 13
              Anchors = [akTop, akRight]
              Caption = #1578#1593#1610#1610#1606' '#1585#1608#1586' '#1575#1593#1604#1575#1605' '#1662#1588#1578#1610#1576#1575#1606' '#1711#1610#1585#1610' '#1575#1586' '#1575#1591#1604#1575#1593#1575#1578
            end
            object Label32: TLabel
              Left = 147
              Top = 99
              Width = 179
              Height = 13
              Anchors = [akTop, akRight]
              Caption = #1587#1610#1587#1578#1605' '#1576#1610#1604#1575#1606' '#1603#1575#1585#1610' '#1603#1575#1585#1576#1585#1575#1606' '#1585#1575' '#1584#1582#1610#1585#1607' '#1603#1606#1583
            end
            object Label37: TLabel
              Left = 54
              Top = 74
              Width = 272
              Height = 13
              Anchors = [akTop, akRight]
              Caption = #1587#1610#1587#1578#1605' '#1602#1575#1576#1604#1610#1578' '#1580#1587#1578#1580#1608' '#1583#1585' '#1605#1578#1606' '#1578#1575#1610#1662#1610' '#1587#1606#1583' '#1607#1575#1585#1575' '#1583#1575#1588#1578#1607' '#1576#1575#1588#1583
            end
            object Label5: TLabel
              Left = 125
              Top = 124
              Width = 222
              Height = 13
              Anchors = [akTop, akRight]
              Caption = #1601#1575#1589#1604#1607' '#1586#1605#1575#1606#1610' '#1576#1585#1608#1586' '#1570#1608#1585#1610' '#1601#1607#1585#1587#1578' '#1587#1606#1583' '#1607#1575' ('#1576#1607' '#1579#1575#1606#1610#1607')'
            end
            object MaxNumber_Of_Letter: TEdit
              Left = 109
              Top = 21
              Width = 57
              Height = 21
              Anchors = [akTop, akRight]
              TabOrder = 0
              Text = '100'
            end
            object DayInWeekForBackup: TComboBox
              Left = 73
              Top = 46
              Width = 83
              Height = 21
              Anchors = [akTop, akRight]
              BiDiMode = bdLeftToRight
              ItemHeight = 13
              ParentBiDiMode = False
              TabOrder = 1
              Text = #1607#1610#1670#1705#1583#1575#1605
              Items.Strings = (
                #1588#1606#1576#1607
                #13#1610#1603' '#1588#1606#1576#1607
                #1583#1608' '#1588#1606#1576#1607
                #1587#1607' '#1588#1606#1576#1607
                #1670#1607#1575#1585' '#1588#1606#1576#1607
                #1662#1606#1580' '#1588#1606#1576#1607
                #1580#1605#1593#1607
                #1607#1610#1670#1705#1583#1575#1605)
            end
            object InsertLog: TCheckBox
              Left = 330
              Top = 100
              Width = 17
              Height = 17
              Anchors = [akTop, akRight]
              TabOrder = 2
            end
            object FulltextSearch: TCheckBox
              Left = 330
              Top = 74
              Width = 17
              Height = 17
              Anchors = [akTop, akRight]
              TabOrder = 3
            end
            object Refresh_PriodTime: TSpinEdit
              Left = 71
              Top = 120
              Width = 50
              Height = 22
              Anchors = [akTop, akRight]
              MaxValue = 3600
              MinValue = 30
              TabOrder = 4
              Value = 30
            end
          end
        end
        object TShDocNu: TTabSheet
          Caption = '   '#1601#1585#1605' '#1579#1576#1578' '#1587#1606#1583'   '
          ImageIndex = 3
          DesignSize = (
            395
            306)
          object GroupBox5: TGroupBox
            Left = 3
            Top = 4
            Width = 388
            Height = 79
            Anchors = [akLeft, akTop, akRight]
            Caption = #1588#1605#1575#1585#1607' '#1587#1606#1583
            TabOrder = 0
            DesignSize = (
              388
              79)
            object Label14: TLabel
              Left = 126
              Top = 22
              Width = 232
              Height = 13
              Anchors = [akTop, akRight]
              Caption = #1583#1585' '#1588#1585#1608#1593' '#1587#1575#1604' '#1588#1605#1575#1585#1607' '#1587#1606#1583' '#1576#1575' '#1670#1607' '#1593#1583#1583#1610' '#1588#1585#1608#1593' '#1588#1608#1583
            end
            object Label1: TLabel
              Left = 164
              Top = 47
              Width = 175
              Height = 13
              Anchors = [akTop, akRight]
              Caption = #1583#1585' '#1578#1575#1610#1662' '#1587#1606#1583' '#1606#1587#1582#1607' '#1576#1575#1610#1711#1575#1606#1610' '#1578#1607#1610#1607' '#1588#1608#1583' '#1567
            end
            object BeginIndicator: TEdit
              Left = 65
              Top = 20
              Width = 54
              Height = 21
              Anchors = [akTop, akRight]
              TabOrder = 0
              Text = '100'
            end
            object LetterHasArchiveCopy: TCheckBox
              Left = 341
              Top = 46
              Width = 17
              Height = 17
              Anchors = [akTop, akRight]
              TabOrder = 1
            end
          end
          object GroupBox4: TGroupBox
            Left = 1
            Top = 89
            Width = 390
            Height = 109
            Anchors = [akLeft, akTop, akRight]
            Caption = #1578#1594#1610#1610#1585' '#1593#1606#1575#1608#1610#1606
            TabOrder = 1
            DesignSize = (
              390
              109)
            object LblDocument: TLabel
              Left = 304
              Top = 55
              Width = 51
              Height = 13
              Anchors = [akTop, akRight]
              Caption = '"'#1587#1606#1583'"  '#1576#1607' :'
            end
            object LblSubject: TLabel
              Left = 130
              Top = 55
              Width = 62
              Height = 13
              Anchors = [akTop, akRight]
              Caption = '"'#1605#1608#1590#1608#1593'"  '#1576#1607' :'
            end
            object LblMemo: TLabel
              Left = 304
              Top = 80
              Width = 60
              Height = 13
              Anchors = [akTop, akRight]
              Caption = '"'#1582#1604#1575#1589#1607'"  '#1576#1607' :'
            end
            object Label16: TLabel
              Left = 37
              Top = 18
              Width = 302
              Height = 26
              Anchors = [akTop, akRight]
              Caption = 
                #1583#1585' '#1601#1585#1605' "'#1579#1576#1578' '#1587#1606#1583'" '#1593#1606#1575#1608#1610#1606' '#1586#1610#1585' '#1578#1594#1610#1610#1585' '#1610#1575#1576#1606#1583' ('#1593#1606#1608#1575#1606' '#1587#1606#1583' '#1583#1585' '#1603#1604' '#1606#1585#1605' '#1575#1601#1586 +
                #1575#1585' '#1578#1594#1610#1610#1585' '#1582#1608#1575#1607#1583' '#1603#1585#1583')'
              WordWrap = True
              OnClick = Label16Click
            end
            object EdtDocument: TEdit
              Left = 205
              Top = 52
              Width = 95
              Height = 21
              Anchors = [akTop, akRight]
              Enabled = False
              TabOrder = 0
            end
            object EdtSubject: TEdit
              Left = 30
              Top = 52
              Width = 95
              Height = 21
              Anchors = [akTop, akRight]
              Enabled = False
              TabOrder = 1
            end
            object EdtMemo: TEdit
              Left = 30
              Top = 77
              Width = 270
              Height = 21
              Anchors = [akTop, akRight]
              Enabled = False
              TabOrder = 2
            end
            object ChBoTitle: TCheckBox
              Left = 342
              Top = 20
              Width = 15
              Height = 17
              Anchors = [akTop, akRight]
              TabOrder = 3
              OnClick = ChBoTitleClick
            end
          end
          object GroupBox2: TGroupBox
            Left = 3
            Top = 205
            Width = 388
            Height = 99
            Anchors = [akLeft, akTop, akRight]
            Caption = #1606#1575#1605' '#1605#1588#1582#1589#1607' '#1605#1582#1589#1608#1589' '#1603#1575#1585#1576#1585#1575#1606
            TabOrder = 2
            DesignSize = (
              388
              99)
            object Label9: TLabel
              Left = 300
              Top = 51
              Width = 61
              Height = 13
              Anchors = [akTop, akRight]
              Caption = #1601#1610#1604#1583' '#1705#1575#1585#1576#1585#1610' 2'
            end
            object Label10: TLabel
              Left = 300
              Top = 75
              Width = 61
              Height = 13
              Anchors = [akTop, akRight]
              Caption = #1601#1610#1604#1583' '#1705#1575#1585#1576#1585#1610' 3'
            end
            object lkjskldsa: TLabel
              Left = 300
              Top = 27
              Width = 61
              Height = 13
              Anchors = [akTop, akRight]
              Caption = #1601#1610#1604#1583' '#1705#1575#1585#1576#1585#1610' 1'
            end
            object UserMemo3: TEdit
              Left = 118
              Top = 71
              Width = 177
              Height = 21
              Anchors = [akTop, akRight]
              TabOrder = 0
              Text = #1605#1604#1575#1581#1592#1575#1578' '#1603#1575#1585#1576#1585
            end
            object UserMemo2: TEdit
              Left = 117
              Top = 46
              Width = 177
              Height = 21
              Anchors = [akTop, akRight]
              TabOrder = 1
              Text = #1605#1604#1575#1581#1592#1575#1578' '#1603#1575#1585#1576#1585
            end
            object UserMemo1: TEdit
              Left = 117
              Top = 21
              Width = 177
              Height = 21
              Anchors = [akTop, akRight]
              TabOrder = 2
              Text = #1605#1604#1575#1581#1592#1575#1578' '#1603#1575#1585#1576#1585
            end
          end
        end
      end
    end
    object Panel1: TPanel
      Left = 1
      Top = 349
      Width = 405
      Height = 40
      Align = alBottom
      ParentColor = True
      TabOrder = 1
      DesignSize = (
        405
        40)
      object BitBtn2: TAdvGlowButton
        Left = 236
        Top = 6
        Width = 75
        Height = 28
        Cursor = crHandPoint
        Anchors = [akTop, akRight]
        Cancel = True
        Caption = #1575#1606#1589#1585#1575#1601
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
        Left = 316
        Top = 6
        Width = 75
        Height = 28
        Cursor = crHandPoint
        Anchors = [akTop, akRight]
        Caption = #1578#1575#1610#1610#1583
        Default = True
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
        TabOrder = 1
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
    end
  end
  inherited DSForm: TDataSource
    Left = 162
    Top = 225
  end
  inherited ActionList: TActionList
    Left = 32
    Top = 232
  end
  inherited xpWindow1: TxpWindow
    Left = 80
    Top = 272
  end
end
