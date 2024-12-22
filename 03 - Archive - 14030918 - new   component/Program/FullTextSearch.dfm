inherited FullTextSearchF: TFullTextSearchF
  Left = 408
  Top = 151
  Width = 625
  Height = 456
  Caption = #1580#1587#1578#1580#1608' '#1583#1585' '#1605#1578#1606' Word'
  Constraints.MinHeight = 400
  Constraints.MinWidth = 625
  OldCreateOrder = True
  PixelsPerInch = 96
  TextHeight = 13
  object pnlMain: TPanel [0]
    Left = 0
    Top = 0
    Width = 609
    Height = 417
    Align = alClient
    ParentColor = True
    TabOrder = 0
    object Panel3: TPanel
      Left = 1
      Top = 38
      Width = 607
      Height = 305
      Align = alClient
      Caption = 'Panel3'
      ParentColor = True
      TabOrder = 0
      object YDBGrid1: TYDBGrid
        Left = 1
        Top = 1
        Width = 605
        Height = 303
        Cursor = crHandPoint
        Align = alClient
        DataSource = DSForm
        TabOrder = 0
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
        Oriention = poPortrait
        HasDate = False
        HasIndex = False
        PrintTitle = #1604#1610#1587#1578' '#1578#1607#1610#1607' '#1588#1583#1607' '#1578#1608#1587#1591' '#1606#1585#1605' '#1575#1601#1586#1575#1585' '
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
            Width = 56
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'RegistrationDate'
            Title.Alignment = taCenter
            Title.Caption = #1578#1575#1585#1610#1582
            Width = 77
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'Memo'
            Title.Alignment = taCenter
            Title.Caption = #1588#1585#1581' '#1587#1606#1583
            Width = 285
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'ToTitle'
            Title.Alignment = taCenter
            Title.Caption = #1605#1608#1590#1608#1593
            Width = 157
            Visible = True
          end>
      end
    end
    object Panel2: TPanel
      Left = 1
      Top = 343
      Width = 607
      Height = 73
      Align = alBottom
      ParentColor = True
      TabOrder = 1
      DesignSize = (
        607
        73)
      object Number: TLabel
        Left = 239
        Top = 14
        Width = 23
        Height = 13
        Anchors = [akTop, akRight]
        Caption = #1578#1593#1583#1575#1583
      end
      object makeRep: TAdvGlowButton
        Left = 494
        Top = 7
        Width = 110
        Height = 28
        Cursor = crHandPoint
        Anchors = [akTop, akRight]
        Caption = #1578#1607#1610#1607' '#1711#1586#1575#1585#1588
        ImageIndex = 176
        Images = Dm.ImageList_MainNew
        NotesFont.Charset = DEFAULT_CHARSET
        NotesFont.Color = clWindowText
        NotesFont.Height = -11
        NotesFont.Name = 'Tahoma'
        NotesFont.Style = []
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
      object Button2: TAdvGlowButton
        Left = 494
        Top = 37
        Width = 110
        Height = 28
        Cursor = crHandPoint
        Anchors = [akTop, akRight]
        Caption = #1670#1575#1662
        ImageIndex = 112
        Images = Dm.ImageList_MainNew
        NotesFont.Charset = DEFAULT_CHARSET
        NotesFont.Color = clWindowText
        NotesFont.Height = -11
        NotesFont.Name = 'Tahoma'
        NotesFont.Style = []
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
      object Button5: TAdvGlowButton
        Left = 12
        Top = 37
        Width = 75
        Height = 28
        Cursor = crHandPoint
        Cancel = True
        Caption = #1582#1585#1608#1580
        ImageIndex = 84
        Images = Dm.ImageList_MainNew
        NotesFont.Charset = DEFAULT_CHARSET
        NotesFont.Color = clWindowText
        NotesFont.Height = -11
        NotesFont.Name = 'Tahoma'
        NotesFont.Style = []
        TabOrder = 2
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
        Left = 381
        Top = 7
        Width = 110
        Height = 28
        Cursor = crHandPoint
        Anchors = [akTop, akRight]
        Caption = #1575#1606#1578#1582#1575#1576' '#1587#1578#1608#1606' '#1607#1575
        ImageIndex = 137
        Images = Dm.LetterImages_New
        NotesFont.Charset = DEFAULT_CHARSET
        NotesFont.Color = clWindowText
        NotesFont.Height = -11
        NotesFont.Name = 'Tahoma'
        NotesFont.Style = []
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
      object Button3: TAdvGlowButton
        Left = 381
        Top = 37
        Width = 110
        Height = 28
        Cursor = crHandPoint
        Anchors = [akTop, akRight]
        Caption = 'WORD '#1582#1585#1608#1580#1610' '
        ImageIndex = 43
        Images = Dm.ImageList_MainNew
        NotesFont.Charset = DEFAULT_CHARSET
        NotesFont.Color = clWindowText
        NotesFont.Height = -11
        NotesFont.Name = 'Tahoma'
        NotesFont.Style = []
        TabOrder = 4
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
        Left = 268
        Top = 7
        Width = 110
        Height = 28
        Cursor = crHandPoint
        Anchors = [akTop, akRight]
        Caption = 'Excel '#1582#1585#1608#1580#1610' '
        ImageIndex = 135
        Images = Dm.ImageList_MainNew
        NotesFont.Charset = DEFAULT_CHARSET
        NotesFont.Color = clWindowText
        NotesFont.Height = -11
        NotesFont.Name = 'Tahoma'
        NotesFont.Style = []
        TabOrder = 5
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
    end
    object Panel1: TPanel
      Left = 1
      Top = 1
      Width = 607
      Height = 37
      Align = alTop
      ParentColor = True
      TabOrder = 2
      DesignSize = (
        607
        37)
      object Label1: TLabel
        Left = 496
        Top = 10
        Width = 103
        Height = 13
        Anchors = [akTop, akRight]
        Caption = #1580#1587#1578#1580#1608' '#1583#1585' '#1605#1578#1606' WORD'
      end
      object SearchEdit: TEdit
        Left = 160
        Top = 8
        Width = 319
        Height = 21
        Anchors = [akLeft, akTop, akRight]
        TabOrder = 0
      end
      object BitBtn1: TAdvGlowButton
        Left = 16
        Top = 5
        Width = 105
        Height = 25
        Action = AviewLetter
        Caption = ' WORD '#1605#1588#1575#1607#1583#1607
        Font.Charset = ARABIC_CHARSET
        Font.Color = clNavy
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ImageIndex = 172
        Images = Dm.ImageList_MainNew
        NotesFont.Charset = DEFAULT_CHARSET
        NotesFont.Color = clWindowText
        NotesFont.Height = -11
        NotesFont.Name = 'Tahoma'
        NotesFont.Style = []
        ParentFont = False
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
    end
  end
  inherited DSForm: TDataSource
    DataSet = letterContainText
    Left = 72
    Top = 147
  end
  inherited ActionList: TActionList
    Left = 286
    Top = 96
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
  inherited xpWindow1: TxpWindow
    Left = 286
    Top = 147
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
        Value = 0
      end
      item
        Name = '@secID'
        Attributes = [paNullable]
        DataType = ftWord
        Precision = 3
        Value = 0
      end
      item
        Name = '@where'
        Attributes = [paNullable]
        DataType = ftWideString
        Size = 500
        Value = '1=0'
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
    object letterContainTextindicatorid: TIntegerField
      FieldName = 'indicatorid'
    end
  end
end
