inherited FrRecommiteStat: TFrRecommiteStat
  Left = 510
  Top = 172
  Caption = #1570#1605#1575#1585' '#1575#1586' '#1575#1602#1583#1575#1605#1575#1578
  ClientHeight = 550
  ClientWidth = 698
  Constraints.MinHeight = 400
  Constraints.MinWidth = 650
  OldCreateOrder = True
  PixelsPerInch = 96
  TextHeight = 13
  object pnlMain: TPanel [0]
    Left = 0
    Top = 0
    Width = 698
    Height = 550
    Align = alClient
    ParentColor = True
    TabOrder = 0
    object Panel1: TPanel
      Left = 1
      Top = 1
      Width = 696
      Height = 220
      Align = alTop
      ParentColor = True
      TabOrder = 0
      object GroupBox1: TGroupBox
        Left = 1
        Top = 107
        Width = 694
        Height = 112
        Align = alBottom
        Caption = #1575#1585#1580#1575#1593#1575#1578
        Font.Charset = ARABIC_CHARSET
        Font.Color = clNavy
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 0
        DesignSize = (
          694
          112)
        object Label2: TLabel
          Left = 283
          Top = 48
          Width = 48
          Height = 13
          Anchors = [akTop, akRight]
          Caption = #1578#1575#1585#1610#1582' '#1575#1602#1583#1575#1605
          Font.Charset = ARABIC_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
        end
        object Label5: TLabel
          Left = 580
          Top = 84
          Width = 54
          Height = 13
          Anchors = [akTop, akRight]
          Caption = #1575#1602#1583#1575#1605' '#1588#1583#1607#1567
          Font.Charset = ARABIC_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
        end
        object Label8: TLabel
          Left = 283
          Top = 16
          Width = 48
          Height = 13
          Anchors = [akTop, akRight]
          Caption = #1578#1575#1585#1610#1582' '#1575#1585#1580#1575#1593
          Font.Charset = ARABIC_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
        end
        object Label1: TLabel
          Left = 581
          Top = 52
          Width = 53
          Height = 13
          Anchors = [akTop, akRight]
          Caption = #1605#1607#1604#1578' '#1575#1602#1583#1575#1605
          Font.Charset = ARABIC_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
        end
        object Label9: TLabel
          Left = 580
          Top = 21
          Width = 57
          Height = 13
          Anchors = [akTop, akRight]
          Caption = #1575#1585#1580#1575#1593' '#1588#1608#1606#1583#1607
          Color = clBtnFace
          Font.Charset = ARABIC_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentColor = False
          ParentFont = False
          Transparent = True
        end
        object Label4: TLabel
          Left = 199
          Top = 84
          Width = 64
          Height = 13
          Anchors = [akTop, akRight]
          Caption = #1578#1593#1583#1575#1583' '#1585#1608#1586' '#1578#1575#1582#1610#1585
          Font.Charset = ARABIC_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
        end
        object Label6: TLabel
          Left = 389
          Top = 84
          Width = 66
          Height = 13
          Anchors = [akTop, akRight]
          Caption = #1578#1593#1583#1575#1583' '#1585#1608#1586' '#1575#1602#1583#1575#1605
          Font.Charset = ARABIC_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
        end
        object SpeedButton2: TAdvGlowButton
          Left = 362
          Top = 17
          Width = 20
          Height = 20
          Cursor = crHandPoint
          Anchors = [akTop, akRight]
          Font.Charset = ARABIC_CHARSET
          Font.Color = clNavy
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ImageIndex = 138
          Images = Dm.ImageList_MainNew
          NotesFont.Charset = DEFAULT_CHARSET
          NotesFont.Color = clWindowText
          NotesFont.Height = -11
          NotesFont.Name = 'Tahoma'
          NotesFont.Style = []
          ParentFont = False
          TabOrder = 7
          OnClick = SpeedButton2Click
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
        object RecommiteDate: TYWhereEdit
          Left = 90
          Top = 16
          Width = 190
          Height = 21
          Anchors = [akTop, akRight]
          BiDiMode = bdLeftToRight
          Font.Charset = ARABIC_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentBiDiMode = False
          ParentFont = False
          TabOrder = 1
          isLike = False
          isDate = True
          EveryLike = False
          isString = True
          FieldName = 'RecommiteDate'
          TableName = 'RC'
          CodeField = 'Code'
          TitleField = 'Title'
          Connection = Dm.YeganehConnection
        end
        object DeadLineDate: TYWhereEdit
          Left = 386
          Top = 48
          Width = 190
          Height = 21
          Anchors = [akTop, akRight]
          BiDiMode = bdLeftToRight
          Font.Charset = ARABIC_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentBiDiMode = False
          ParentFont = False
          TabOrder = 2
          isLike = False
          isDate = False
          EveryLike = False
          isString = True
          FieldName = 'DeadLineDate'
          TableName = 'RC'
          CodeField = 'Code'
          TitleField = 'Title'
          Connection = Dm.YeganehConnection
        end
        object ProceedDate: TYWhereEdit
          Left = 90
          Top = 48
          Width = 190
          Height = 21
          Anchors = [akTop, akRight]
          BiDiMode = bdLeftToRight
          Font.Charset = ARABIC_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentBiDiMode = False
          ParentFont = False
          TabOrder = 3
          isLike = False
          isDate = False
          EveryLike = False
          isString = True
          FieldName = 'ProceedDate'
          TableName = 'RC'
          CodeField = 'Code'
          TitleField = 'Title'
          Connection = Dm.YeganehConnection
        end
        object ProceedStatus: TComboBox
          Left = 470
          Top = 80
          Width = 105
          Height = 21
          Anchors = [akTop, akRight]
          BiDiMode = bdLeftToRight
          Font.Charset = ARABIC_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ItemHeight = 13
          ParentBiDiMode = False
          ParentFont = False
          TabOrder = 4
          Text = '     '
          Items.Strings = (
            '     '
            #1575#1602#1583#1575#1605' '#1588#1583#1607
            #1575#1602#1583#1575#1605' '#1606#1588#1583#1607)
        end
        object OrgID: TYWhereEdit
          Left = 385
          Top = 17
          Width = 190
          Height = 21
          Anchors = [akTop, akRight]
          BiDiMode = bdLeftToRight
          Color = 15859692
          Font.Charset = ARABIC_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentBiDiMode = False
          ParentFont = False
          TabOrder = 0
          isLike = False
          isDate = False
          EveryLike = False
          isString = False
          FieldName = 'Orgid'
          TableName = 'RC'
          ListTable = 'Fromorganizations'
          CodeField = 'id'
          TitleField = 'Title'
          Connection = Dm.YeganehConnection
        end
        object DelayDays: TYWhereEdit
          Left = 90
          Top = 80
          Width = 105
          Height = 21
          Anchors = [akTop, akRight]
          BiDiMode = bdLeftToRight
          Font.Charset = ARABIC_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentBiDiMode = False
          ParentFont = False
          TabOrder = 6
          isLike = False
          isDate = False
          EveryLike = False
          isString = True
          CodeField = 'Code'
          TitleField = 'Title'
          Connection = Dm.YeganehConnection
        end
        object ProgressDay: TYWhereEdit
          Left = 282
          Top = 80
          Width = 105
          Height = 21
          Anchors = [akTop, akRight]
          BiDiMode = bdLeftToRight
          Font.Charset = ARABIC_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentBiDiMode = False
          ParentFont = False
          TabOrder = 5
          isLike = False
          isDate = False
          EveryLike = False
          isString = True
          CodeField = 'Code'
          TitleField = 'Title'
          Connection = Dm.YeganehConnection
        end
      end
      object GroupBox2: TGroupBox
        Left = 1
        Top = 1
        Width = 694
        Height = 106
        Align = alClient
        Caption = #1606#1575#1605#1607' '#1607#1575
        Font.Charset = ARABIC_CHARSET
        Font.Color = clNavy
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 1
        DesignSize = (
          694
          106)
        object Label27: TLabel
          Left = 282
          Top = 48
          Width = 62
          Height = 13
          Anchors = [akTop, akRight]
          Caption = #1578#1575#1585#1610#1582' '#1579#1576#1578' '#1606#1575#1605#1607
          Color = clBtnFace
          Font.Charset = ARABIC_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentColor = False
          ParentFont = False
          Transparent = True
        end
        object Label11: TLabel
          Left = 580
          Top = 73
          Width = 51
          Height = 13
          Anchors = [akTop, akRight]
          Caption = #1582#1604#1575#1589#1607' '#1606#1575#1605#1607
          Color = clBtnFace
          Font.Charset = ARABIC_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentColor = False
          ParentFont = False
          Transparent = True
        end
        object Label13: TLabel
          Left = 580
          Top = 43
          Width = 83
          Height = 13
          Anchors = [akTop, akRight]
          Caption = #1591#1585#1601' '#1605#1705#1575#1578#1576#1607' '#1576#1585#1608#1606#1610
          Color = clBtnFace
          Font.Charset = ARABIC_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentColor = False
          ParentFont = False
          Transparent = True
        end
        object Label3: TLabel
          Left = 580
          Top = 19
          Width = 69
          Height = 13
          Anchors = [akTop, akRight]
          Caption = #1588#1605#1575#1585#1607' '#1575#1606#1583#1610#1705#1575#1578#1608#1585
          Color = clBtnFace
          Font.Charset = ARABIC_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentColor = False
          ParentFont = False
          Transparent = True
        end
        object Lusermem: TLabel
          Left = 282
          Top = 19
          Width = 82
          Height = 13
          Anchors = [akTop, akRight]
          BiDiMode = bdLeftToRight
          Caption = #1588#1605#1575#1585#1607' '#1583#1575#1606#1588#1580#1608#1610#1610
          Font.Charset = ARABIC_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentBiDiMode = False
          ParentFont = False
          Transparent = True
        end
        object YWhereEdit27: TYWhereEdit
          Left = 89
          Top = 43
          Width = 190
          Height = 21
          Anchors = [akTop, akRight]
          BiDiMode = bdLeftToRight
          Color = 14811135
          Font.Charset = ARABIC_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentBiDiMode = False
          ParentFont = False
          TabOrder = 3
          isLike = False
          isDate = True
          EveryLike = False
          isString = False
          FieldName = 'Registrationdate'
          TableName = 'L'
          CodeField = 'Code'
          TitleField = 'Title'
          Connection = Dm.YeganehConnection
        end
        object YWhereEdit13: TYWhereEdit
          Left = 89
          Top = 69
          Width = 488
          Height = 21
          Anchors = [akTop, akRight]
          Color = 15859692
          Font.Charset = ARABIC_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          TabOrder = 4
          isLike = True
          isDate = False
          EveryLike = True
          isString = True
          FieldName = 'Memo'
          TableName = 'L'
          CodeField = 'Code'
          TitleField = 'Title'
          Connection = Dm.YeganehConnection
        end
        object YWhereEdit11: TYWhereEdit
          Left = 387
          Top = 41
          Width = 190
          Height = 21
          Anchors = [akTop, akRight]
          BiDiMode = bdRightToLeft
          Color = 15859692
          Font.Charset = ARABIC_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentBiDiMode = False
          ParentFont = False
          TabOrder = 2
          isLike = True
          isDate = False
          EveryLike = True
          isString = True
          FieldName = 'Title'
          TableName = 'sender'
          CodeField = 'ID'
          TitleField = 'Title'
          Connection = Dm.YeganehConnection
        end
        object YWhereEdit3: TYWhereEdit
          Left = 387
          Top = 15
          Width = 190
          Height = 21
          Anchors = [akTop, akRight]
          BiDiMode = bdLeftToRight
          Color = 14811135
          Font.Charset = ARABIC_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentBiDiMode = False
          ParentFont = False
          TabOrder = 0
          isLike = False
          isDate = False
          EveryLike = False
          isString = False
          FieldName = 'IndicatorID'
          TableName = 'L'
          CodeField = 'Code'
          TitleField = 'Title'
          Connection = Dm.YeganehConnection
        end
        object YWhereEdit12: TYWhereEdit
          Left = 89
          Top = 18
          Width = 190
          Height = 21
          Anchors = [akTop, akRight]
          BiDiMode = bdLeftToRight
          Color = 14811135
          Font.Charset = ARABIC_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentBiDiMode = False
          ParentFont = False
          TabOrder = 1
          isLike = True
          isDate = False
          EveryLike = False
          isString = True
          FieldName = 'UserMemo'
          TableName = 'L'
          CodeField = 'Code'
          TitleField = 'Title'
          Connection = Dm.YeganehConnection
        end
      end
    end
    object Panel2: TPanel
      Left = 1
      Top = 508
      Width = 696
      Height = 41
      Align = alBottom
      ParentColor = True
      TabOrder = 1
      DesignSize = (
        696
        41)
      object Number: TLabel
        Left = 663
        Top = 15
        Width = 23
        Height = 13
        Anchors = [akTop, akRight]
        Caption = #1578#1593#1583#1575#1583
      end
      object Button5: TAdvGlowButton
        Left = 6
        Top = 7
        Width = 75
        Height = 28
        Cursor = crHandPoint
        Anchors = [akLeft, akBottom]
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
        OnClick = Button5Click
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
      object Button4: TAdvGlowButton
        Left = 154
        Top = 7
        Width = 108
        Height = 28
        Cursor = crHandPoint
        Anchors = [akTop, akRight]
        Caption = 'Excel'#1582#1585#1608#1580#1610' '
        Font.Charset = ARABIC_CHARSET
        Font.Color = clNavy
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ImageIndex = 135
        Images = Dm.ImageList_MainNew
        NotesFont.Charset = DEFAULT_CHARSET
        NotesFont.Color = clWindowText
        NotesFont.Height = -11
        NotesFont.Name = 'Tahoma'
        NotesFont.Style = []
        ParentFont = False
        TabOrder = 1
        OnClick = Button4Click
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
        Left = 263
        Top = 7
        Width = 108
        Height = 28
        Cursor = crHandPoint
        Anchors = [akTop, akRight]
        Caption = 'Word '#1582#1585#1608#1580#1610' '
        Font.Charset = ARABIC_CHARSET
        Font.Color = clNavy
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ImageIndex = 43
        Images = Dm.ImageList_MainNew
        NotesFont.Charset = DEFAULT_CHARSET
        NotesFont.Color = clWindowText
        NotesFont.Height = -11
        NotesFont.Name = 'Tahoma'
        NotesFont.Style = []
        ParentFont = False
        TabOrder = 2
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
      object Button6: TAdvGlowButton
        Left = 372
        Top = 7
        Width = 120
        Height = 28
        Cursor = crHandPoint
        Anchors = [akTop, akRight]
        Caption = #1575#1606#1578#1582#1575#1576' '#1587#1578#1608#1606' '#1607#1575
        Font.Charset = ARABIC_CHARSET
        Font.Color = clNavy
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ImageIndex = 137
        Images = Dm.LetterImages_New
        NotesFont.Charset = DEFAULT_CHARSET
        NotesFont.Color = clWindowText
        NotesFont.Height = -11
        NotesFont.Name = 'Tahoma'
        NotesFont.Style = []
        ParentFont = False
        TabOrder = 3
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
      object MakeRep: TAdvGlowButton
        Left = 493
        Top = 7
        Width = 108
        Height = 28
        Cursor = crHandPoint
        Anchors = [akTop, akRight]
        Caption = #1578#1607#1610#1607' '#1711#1586#1575#1585#1588
        Font.Charset = ARABIC_CHARSET
        Font.Color = clNavy
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ImageIndex = 176
        Images = Dm.ImageList_MainNew
        NotesFont.Charset = DEFAULT_CHARSET
        NotesFont.Color = clWindowText
        NotesFont.Height = -11
        NotesFont.Name = 'Tahoma'
        NotesFont.Style = []
        ParentFont = False
        TabOrder = 4
        OnClick = MakeRepClick
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
      Left = 1
      Top = 221
      Width = 696
      Height = 287
      Cursor = crHandPoint
      Align = alClient
      DataSource = DSForm
      ReadOnly = True
      TabOrder = 2
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
      Oriention = poLandscape
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
          FieldName = 'Recommited'
          Title.Caption = #1575#1585#1580#1575#1593' '#1588#1608#1606#1583#1607
          Title.Color = clSkyBlue
          Width = 181
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'MinDeadlineDays'
          Title.Caption = #1705#1605#1578#1585#1610#1606' '#1578#1575#1582#1610#1585
          Title.Color = clSkyBlue
          Visible = False
        end
        item
          Expanded = False
          FieldName = 'MaxDeadlineDays'
          Title.Caption = #1576#1610#1588#1578#1585#1610#1606' '#1578#1575#1582#1610#1585
          Title.Color = clSkyBlue
          Width = 100
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'AvgDeadlineDays'
          Title.Caption = #1605#1610#1575#1606#1711#1610#1606' '#1578#1575#1582#1610#1585
          Title.Color = clSkyBlue
          Width = 100
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'MinProgressDays'
          Title.Caption = #1705#1605#1578#1585#1610#1606' '#1586#1605#1575#1606' '#1575#1602#1583#1575#1605
          Title.Color = clSkyBlue
          Visible = False
        end
        item
          Expanded = False
          FieldName = 'MaxProgressDays'
          Title.Caption = #1576#1610#1588#1578#1585#1610#1606' '#1586#1605#1575#1606' '#1575#1602#1583#1575#1605
          Title.Color = clSkyBlue
          Width = 100
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'AvgProgressDays'
          Title.Caption = #1605#1610#1575#1606#1711#1610#1606' '#1586#1605#1575#1606' '#1575#1602#1583#1575#1605
          Title.Color = clSkyBlue
          Width = 100
          Visible = True
        end>
    end
  end
  inherited DSForm: TDataSource
    DataSet = sp_recommite_statistic
    Left = 280
    Top = 96
  end
  inherited ActionList: TActionList
    Top = 720
  end
  object sp_recommite_statistic: TADOStoredProc
    Connection = Dm.YeganehConnection
    CursorType = ctStatic
    ProcedureName = 'sp_recommite_statistic'
    Parameters = <
      item
        Name = '@RETURN_VALUE'
        DataType = ftInteger
        Direction = pdReturnValue
        Precision = 10
        Value = 0
      end
      item
        Name = '@SecretariatID'
        Attributes = [paNullable]
        DataType = ftInteger
        Precision = 10
        Value = 2
      end
      item
        Name = '@myear'
        Attributes = [paNullable]
        DataType = ftWord
        Precision = 3
        Value = 86
      end
      item
        Name = '@where'
        Attributes = [paNullable]
        DataType = ftWideString
        Size = 1000
        Value = 'Rc.Orgid=5'
      end>
    Left = 408
    Top = 256
  end
end
