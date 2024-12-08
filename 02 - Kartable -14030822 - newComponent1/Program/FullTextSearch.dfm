inherited FullTextSearchF: TFullTextSearchF
  Left = 377
  Top = 253
  Caption = #1580#1587#1578#1580#1608' '#1583#1585' '#1605#1578#1606
  ClientHeight = 449
  ClientWidth = 818
  Constraints.MinHeight = 300
  Constraints.MinWidth = 760
  OldCreateOrder = True
  PixelsPerInch = 96
  TextHeight = 13
  object pnlMain: TPanel [0]
    Left = 0
    Top = 0
    Width = 818
    Height = 449
    Align = alClient
    ParentColor = True
    TabOrder = 0
    object Panel1: TPanel
      Left = 1
      Top = 1
      Width = 816
      Height = 42
      Align = alTop
      ParentColor = True
      TabOrder = 0
      DesignSize = (
        816
        42)
      object Label1: TLabel
        Left = 732
        Top = 10
        Width = 79
        Height = 13
        Anchors = [akTop, akRight]
        Caption = #1605#1578#1606' '#1605#1608#1585#1583' '#1580#1587#1578#1580#1608
      end
      object Edit1: TEdit
        Left = 236
        Top = 8
        Width = 489
        Height = 21
        Anchors = [akTop, akRight]
        TabOrder = 0
      end
    end
    object Panel2: TPanel
      Left = 1
      Top = 407
      Width = 816
      Height = 41
      Align = alBottom
      TabOrder = 1
      DesignSize = (
        816
        41)
      object Number: TLabel
        Left = 784
        Top = 14
        Width = 23
        Height = 13
        Anchors = [akLeft, akBottom]
        Caption = #1578#1593#1583#1575#1583
      end
      object BitBtn1: TAdvGlowButton
        Left = 94
        Top = 7
        Width = 80
        Height = 28
        Action = AviewLetter
        Font.Charset = ARABIC_CHARSET
        Font.Color = clNavy
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ImageIndex = 90
        Images = Dm.LetterImages_New
        NotesFont.Charset = DEFAULT_CHARSET
        NotesFont.Color = clWindowText
        NotesFont.Height = -11
        NotesFont.Name = 'Tahoma'
        NotesFont.Style = []
        ParentFont = False
        TabOrder = 0
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
      object Button2: TAdvGlowButton
        Left = 407
        Top = 7
        Width = 115
        Height = 28
        Cursor = crHandPoint
        Anchors = [akLeft, akBottom]
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
        TabOrder = 1
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
        Left = 291
        Top = 7
        Width = 115
        Height = 28
        Cursor = crHandPoint
        Anchors = [akLeft, akBottom]
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
      object Button4: TAdvGlowButton
        Left = 175
        Top = 7
        Width = 115
        Height = 28
        Cursor = crHandPoint
        Anchors = [akLeft, akBottom]
        Caption = 'Excel '#1582#1585#1608#1580#1610' '
        Font.Charset = ARABIC_CHARSET
        Font.Color = clNavy
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ImageIndex = 107
        Images = Dm.ImageList_MainNew
        NotesFont.Charset = DEFAULT_CHARSET
        NotesFont.Color = clWindowText
        NotesFont.Height = -11
        NotesFont.Name = 'Tahoma'
        NotesFont.Style = []
        ParentFont = False
        TabOrder = 3
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
        Left = 4
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
        TabOrder = 4
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
      object Button6: TAdvGlowButton
        Left = 522
        Top = 7
        Width = 115
        Height = 28
        Cursor = crHandPoint
        Anchors = [akLeft, akBottom]
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
        TabOrder = 5
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
      object makeRep: TAdvGlowButton
        Left = 638
        Top = 7
        Width = 115
        Height = 28
        Cursor = crHandPoint
        Anchors = [akLeft, akBottom]
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
        TabOrder = 6
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
    end
    object YDBGrid1: TYDBGrid
      Left = 1
      Top = 43
      Width = 816
      Height = 364
      Cursor = crHandPoint
      Align = alClient
      Color = 14934982
      DataSource = DSForm
      TabOrder = 2
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
          Width = 44
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'RegistrationDate'
          Title.Caption = #1578#1575#1585#1610#1582
          Title.Color = 16377053
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'Memo'
          Title.Alignment = taCenter
          Title.Caption = #1582#1604#1575#1589#1607' '#1606#1575#1605#1607
          Title.Color = 16377053
          Width = 244
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'ToTitle'
          Title.Alignment = taCenter
          Title.Caption = #1591#1585#1601' '#1605#1705#1575#1578#1576#1607
          Title.Color = 16377053
          Width = 110
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'FromTitle'
          Title.Alignment = taCenter
          Title.Caption = #1605#1705#1575#1578#1576#1607' '#1705#1606#1606#1583#1607
          Title.Color = 16377053
          Width = 110
          Visible = True
        end>
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
    ProcedureName = 'letterContainText;1'
    Parameters = <
      item
        Name = '@RETURN_VALUE'
        DataType = ftInteger
        Direction = pdReturnValue
        Precision = 10
        Value = Null
      end
      item
        Name = '@secID'
        DataType = ftWord
        Precision = 3
        Value = Null
      end
      item
        Name = '@where'
        DataType = ftWideString
        Size = 500
        Value = Null
      end>
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
    object letterContainTextMemo: TWideStringField
      FieldName = 'Memo'
      Size = 500
    end
    object letterContainTextFromTitle: TWideStringField
      FieldName = 'FromTitle'
      Size = 100
    end
    object letterContainTextToTitle: TWideStringField
      FieldName = 'ToTitle'
      Size = 100
    end
    object letterContainTextindicatorid: TIntegerField
      FieldName = 'indicatorid'
    end
    object letterContainTextLetter_type: TIntegerField
      FieldName = 'Letter_type'
    end
  end
end
