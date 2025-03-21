inherited FrLetterRent: TFrLetterRent
  Left = 542
  Top = 281
  Width = 754
  Height = 425
  Caption = #1578#1575#1585#1610#1582#1670#1607' '#1575#1605#1575#1606#1578' '#1583#1607#1610' '#1587#1606#1583
  Constraints.MinHeight = 300
  Constraints.MinWidth = 400
  OldCreateOrder = True
  PixelsPerInch = 96
  TextHeight = 13
  object pnlMain: TPanel [0]
    Left = 0
    Top = 0
    Width = 738
    Height = 386
    Align = alClient
    ParentColor = True
    TabOrder = 0
    object Panel2: TPanel
      Left = 1
      Top = 1
      Width = 736
      Height = 343
      Align = alClient
      Caption = 'Panel2'
      ParentColor = True
      TabOrder = 0
      object YDBGrid1: TYDBGrid
        Left = 1
        Top = 1
        Width = 734
        Height = 341
        Align = alClient
        DataSource = DSForm
        PopupMenu = PopupMenu1
        ReadOnly = True
        TabOrder = 0
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
        PrintTitle = #1604#1610#1587#1578' '#1578#1607#1610#1607' '#1588#1583#1607' '#1578#1608#1587#1591' '#1606#1585#1605' '#1575#1601#1586#1575#1585
        InvertFarsiDate = True
        TitleSort = True
        AutoInsert = False
        FooterFields = 'Count'
        Columns = <
          item
            Expanded = False
            FieldName = 'Title'
            Title.Alignment = taCenter
            Title.Caption = #1705#1575#1585#1576#1585' '#1578#1581#1608#1610#1604' '#1583#1607#1606#1583#1607
            Width = 136
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'RenterTitle'
            Title.Alignment = taCenter
            Title.Caption = #1575#1605#1575#1606#1578' '#1711#1610#1585#1606#1583#1607
            Width = 136
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'BeginDate'
            Title.Alignment = taCenter
            Title.Caption = #1578' '#1575#1605#1575#1606#1578
            Width = 60
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'MatureDate'
            Title.Alignment = taCenter
            Title.Caption = #1605#1608#1593#1583' '#1576#1575#1586#1711#1588#1578
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'EndDate'
            Title.Alignment = taCenter
            Title.Caption = #1578' '#1576#1575#1586#1711#1588#1578
            Width = 60
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'Comment'
            Title.Alignment = taCenter
            Title.Caption = #1578#1608#1590#1610#1581#1575#1578
            Width = 245
            Visible = True
          end>
      end
    end
    object Panel1: TPanel
      Left = 1
      Top = 344
      Width = 736
      Height = 41
      Align = alBottom
      ParentColor = True
      TabOrder = 1
      DesignSize = (
        736
        41)
      object SpeedButton1: TAdvGlowButton
        Left = 7
        Top = 6
        Width = 70
        Height = 28
        Cursor = crHandPoint
        Caption = #1582#1585#1608#1580
        ImageIndex = 84
        Images = Dm.ImageList_MainNew
        NotesFont.Charset = DEFAULT_CHARSET
        NotesFont.Color = clWindowText
        NotesFont.Height = -11
        NotesFont.Name = 'Tahoma'
        NotesFont.Style = []
        TabOrder = 2
        OnClick = SpeedButton1Click
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
      object BtnWord: TAdvGlowButton
        Left = 632
        Top = 6
        Width = 100
        Height = 28
        Cursor = crHandPoint
        Anchors = [akTop, akRight]
        Caption = 'WORD '#1582#1585#1608#1580#1610' '
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
        TabOrder = 0
        OnClick = BtnWordClick
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
      object BtnExcel: TAdvGlowButton
        Left = 528
        Top = 6
        Width = 100
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
        TabOrder = 1
        OnClick = BtnExcelClick
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
    DataSet = Select_Rent_byLetterID
    Left = 264
    Top = 120
  end
  inherited ActionList: TActionList
    Left = 424
    Top = 72
  end
  inherited xpWindow1: TxpWindow
    Left = 424
    Top = 128
  end
  object Select_Rent_byLetterID: TADOStoredProc
    Connection = Dm.YeganehConnection
    CursorType = ctStatic
    ProcedureName = 'Select_Rent_byLetterID'
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
        Value = Null
      end
      item
        Name = '@userid'
        DataType = ftInteger
        Value = Null
      end>
    Left = 264
    Top = 72
    object Select_Rent_byLetterIDRentID: TAutoIncField
      FieldName = 'RentID'
      ReadOnly = True
    end
    object Select_Rent_byLetterIDRenterID: TIntegerField
      FieldName = 'RenterID'
    end
    object Select_Rent_byLetterIDLetterID: TIntegerField
      FieldName = 'LetterID'
    end
    object Select_Rent_byLetterIDBeginDate: TStringField
      FieldName = 'BeginDate'
      FixedChar = True
      Size = 10
    end
    object Select_Rent_byLetterIDEndDate: TStringField
      FieldName = 'EndDate'
      FixedChar = True
      Size = 10
    end
    object Select_Rent_byLetterIDComment: TWideStringField
      FieldName = 'Comment'
      Size = 255
    end
    object Select_Rent_byLetterIDMatureDate: TStringField
      FieldName = 'MatureDate'
      FixedChar = True
      Size = 10
    end
    object Select_Rent_byLetterIDRenterTitle: TWideStringField
      FieldName = 'RenterTitle'
      Size = 255
    end
    object Select_Rent_byLetterIDTitle: TStringField
      FieldName = 'Title'
    end
  end
  object PopupMenu1: TPopupMenu
    Left = 432
    Top = 184
    object Word1: TMenuItem
      Caption = #1582#1585#1608#1580#1610' Word'
      OnClick = Word1Click
    end
    object Excel1: TMenuItem
      Caption = #1582#1585#1608#1580#1610' Excel'
      OnClick = Excel1Click
    end
  end
end
