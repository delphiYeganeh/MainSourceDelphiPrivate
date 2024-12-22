inherited TextSearchF: TTextSearchF
  Left = 504
  Top = 200
  Width = 796
  Height = 488
  Caption = #1580#1587#1578#1580#1608' '#1583#1585' '#1662#1610#1608#1587#1578' '#1607#1575
  Constraints.MinHeight = 400
  Constraints.MinWidth = 790
  OldCreateOrder = True
  PixelsPerInch = 96
  TextHeight = 13
  object pnlMain: TPanel [0]
    Left = 0
    Top = 0
    Width = 780
    Height = 449
    Align = alClient
    ParentColor = True
    TabOrder = 0
    object Panel1: TPanel
      Left = 1
      Top = 1
      Width = 778
      Height = 42
      Align = alTop
      ParentColor = True
      TabOrder = 0
      DesignSize = (
        778
        42)
      object Label1: TLabel
        Left = 694
        Top = 17
        Width = 79
        Height = 13
        Anchors = [akTop, akRight]
        Caption = #1605#1578#1606' '#1605#1608#1585#1583' '#1580#1587#1578#1580#1608
      end
      object Edit1: TEdit
        Left = 16
        Top = 14
        Width = 671
        Height = 21
        Anchors = [akLeft, akTop, akRight]
        TabOrder = 0
      end
    end
    object YDBGrid1: TYDBGrid
      Left = 1
      Top = 43
      Width = 778
      Height = 357
      Cursor = crHandPoint
      Align = alClient
      Color = 14934982
      DataSource = DSForm
      TabOrder = 1
      TitleFont.Charset = ARABIC_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'Tahoma'
      TitleFont.Style = []
      OnDblClick = YDBGrid1DblClick
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
          FieldName = 'indicatorid'
          Title.Alignment = taCenter
          Title.Caption = #1575#1606#1583#1610#1705#1575#1578#1608#1585
          Title.Color = 16377053
          Width = 88
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'LetterDataID'
          Title.Caption = #1588#1605#1575#1585#1607' '#1662#1610#1608#1587#1578
          Title.Color = 16377053
          Width = 95
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'RegistrationDate'
          Title.Caption = #1578#1575#1585#1610#1582
          Title.Color = 16377053
          Width = 101
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'Memo'
          Title.Alignment = taCenter
          Title.Caption = #1582#1604#1575#1589#1607' '#1606#1575#1605#1607
          Title.Color = 16377053
          Width = 279
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'FormatTitle'
          Title.Caption = #1606#1608#1593' '#1587#1606#1583
          Title.Color = 16377053
          Width = 108
          Visible = True
        end>
    end
    object Panel2: TPanel
      Left = 1
      Top = 400
      Width = 778
      Height = 48
      Align = alBottom
      TabOrder = 2
      DesignSize = (
        778
        48)
      object Number: TLabel
        Left = 743
        Top = 21
        Width = 23
        Height = 13
        Anchors = [akTop, akRight]
        Caption = #1578#1593#1583#1575#1583
      end
      object makeRep: TAdvGlowButton
        Left = 595
        Top = 12
        Width = 115
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
        TabOrder = 0
        OnClick = makeRepClick
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
        Left = 477
        Top = 12
        Width = 115
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
      object Button2: TAdvGlowButton
        Left = 360
        Top = 12
        Width = 115
        Height = 28
        Cursor = crHandPoint
        Anchors = [akTop, akRight]
        Caption = #1670#1575#1662
        Font.Charset = ARABIC_CHARSET
        Font.Color = clNavy
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ImageIndex = 112
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
        Left = 242
        Top = 12
        Width = 115
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
      object Button4: TAdvGlowButton
        Left = 125
        Top = 12
        Width = 115
        Height = 28
        Cursor = crHandPoint
        Anchors = [akTop, akRight]
        Caption = 'Excel '#1582#1585#1608#1580#1610' '
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
        TabOrder = 4
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
      object Button5: TAdvGlowButton
        Left = 7
        Top = 12
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
        TabOrder = 5
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
      object BitBtn1: TAdvGlowButton
        Left = 39
        Top = 0
        Width = 80
        Height = 32
        Action = AviewLetter
        Font.Charset = ARABIC_CHARSET
        Font.Color = clNavy
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ImageIndex = 135
        NotesFont.Charset = DEFAULT_CHARSET
        NotesFont.Color = clWindowText
        NotesFont.Height = -11
        NotesFont.Name = 'Tahoma'
        NotesFont.Style = []
        ParentFont = False
        TabOrder = 6
        Visible = False
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
    DataSet = letterContainText
    Left = 92
    Top = 159
  end
  inherited ActionList: TActionList
    Left = 198
    Top = 194
    object Action1: TAction
      Caption = 'Action1'
      ShortCut = 13
      OnExecute = Action1Execute
    end
    object AviewLetter: TAction
      Caption = #1583#1610#1583#1606' '#1606#1575#1605#1607
      OnExecute = AviewLetterExecute
    end
  end
  object letterContainText: TADOStoredProc
    Connection = Dm.YeganehConnection
    CursorType = ctStatic
    ProcedureName = 'letterDataTextSearch;1'
    Parameters = <>
    Left = 72
    Top = 96
    object letterContainTextLetterID: TAutoIncField
      FieldName = 'LetterID'
      ReadOnly = True
    end
    object letterContainTextRegistrationDate: TStringField
      FieldName = 'RegistrationDate'
      FixedChar = True
      Size = 10
    end
    object letterContainTextLetterDataID: TIntegerField
      FieldName = 'LetterDataID'
    end
    object letterContainTextMemo: TWideStringField
      FieldName = 'Memo'
      Size = 500
    end
    object letterContainTextindicatorid: TIntegerField
      FieldName = 'indicatorid'
    end
    object letterContainTextLetter_type: TIntegerField
      FieldName = 'Letter_type'
    end
  end
end
