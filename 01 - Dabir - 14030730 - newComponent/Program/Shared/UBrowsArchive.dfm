inherited FrBrowsArchive: TFrBrowsArchive
  Left = 535
  Top = 299
  Caption = #1576#1585#1585#1587#1610' '#1587#1575#1576#1602#1607' '#1576#1575#1610#1711#1575#1606#1610
  ClientHeight = 418
  ClientWidth = 890
  Constraints.MinHeight = 300
  Constraints.MinWidth = 650
  OldCreateOrder = True
  PixelsPerInch = 96
  TextHeight = 13
  object pnlMain: TPanel [0]
    Left = 0
    Top = 0
    Width = 890
    Height = 418
    Align = alClient
    TabOrder = 0
    object Panel1: TxpPanel
      Left = 1
      Top = 1
      Width = 888
      Height = 37
      StartColor = 16511469
      EndColor = 16244694
      FillDirection = fdLeftToRight
      TitleShow = False
      Caption = 'xpPanel'
      Title = 'xpPanelTitle'
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clNavy
      TitleFont.Height = -11
      TitleFont.Name = 'MS Sans Serif'
      TitleFont.Style = [fsBold]
      TitleAlignment = taCenter
      TitleStartColor = clWhite
      TitleEndColor = 15777194
      TitleColor = clWhite
      TitleFillDirect = fdLeftToRight
      TitleImageAlign = tiaLeft
      TitleButtons = [tbMinimize]
      DefaultHeight = 60
      BorderColor = clWhite
      BGImageAlign = iaStretch
      Align = alTop
      TabOrder = 0
      DesignSize = (
        886
        35)
      object UserField: TLabel
        Left = 803
        Top = 11
        Width = 74
        Height = 13
        Anchors = [akTop, akRight]
        Caption = #1605#1604#1575#1581#1592#1575#1578' '#1705#1575#1585#1576#1585#1610
        FocusControl = UserMemo
        Font.Charset = ARABIC_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
      end
      object Label1: TLabel
        Left = 598
        Top = 12
        Width = 26
        Height = 13
        Anchors = [akTop, akRight]
        Caption = #1593#1606#1608#1575#1606
        FocusControl = Title
        Font.Charset = ARABIC_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
      end
      object Label2: TLabel
        Left = 329
        Top = 12
        Width = 51
        Height = 13
        Anchors = [akTop, akRight]
        Caption = #1601#1602#1591' '#1605#1583#1575#1585#1705
      end
      object UserMemo: TEdit
        Left = 628
        Top = 8
        Width = 168
        Height = 21
        Anchors = [akTop, akRight]
        Font.Charset = ARABIC_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 0
        OnKeyDown = UserMemoKeyDown
      end
      object Title: TEdit
        Left = 404
        Top = 8
        Width = 189
        Height = 21
        Anchors = [akTop, akRight]
        Font.Charset = ARABIC_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        ReadOnly = True
        TabOrder = 1
      end
      object OnlyDocumnet: TCheckBox
        Left = 383
        Top = 11
        Width = 13
        Height = 17
        Cursor = crHandPoint
        Anchors = [akTop, akRight]
        TabOrder = 2
      end
      object xpBitBtn3: TAdvGlowButton
        Left = 259
        Top = 5
        Width = 63
        Height = 25
        Cursor = crHandPoint
        Anchors = [akTop, akRight]
        Caption = #1580#1587#1578#1580#1608
        Font.Charset = ARABIC_CHARSET
        Font.Color = clNavy
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ImageIndex = 35
        Images = Dm.ImageList_MainNew
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
    object Panel3: TPanel
      Left = 1
      Top = 38
      Width = 888
      Height = 338
      Align = alClient
      Caption = 'Panel3'
      TabOrder = 1
      object YDBGrid1: TYDBGrid
        Left = 1
        Top = 1
        Width = 886
        Height = 336
        Cursor = crHandPoint
        Align = alClient
        Color = 16775666
        DataSource = DGet_Letter_By_UserMemo
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
        PrintTitle = #1604#1610#1587#1578' '#1578#1607#1610#1607' '#1588#1583#1607' '#1578#1608#1587#1591' '#1606#1585#1605' '#1575#1601#1586#1575#1585' '#1610#1711#1575#1606#1607
        InvertFarsiDate = True
        TitleSort = True
        AutoInsert = False
        FooterFields = 'Count'
        Columns = <
          item
            Expanded = False
            FieldName = 'IndicatorID'
            Title.Alignment = taCenter
            Title.Caption = ' '#1575#1606#1583' '#1610#1705#1575#1578#1608#1585
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'RegistrationDate'
            Title.Alignment = taCenter
            Title.Caption = #1578#1575#1585#1610#1582' '#1579#1576#1578
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'SubjectTitle'
            Title.Alignment = taCenter
            Title.Caption = #1606#1608#1593' '#1587#1606#1583
            Width = 89
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'Memo'
            Title.Alignment = taCenter
            Title.Caption = #1605#1590#1605#1608#1606
            Width = 206
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'SubjectDescription'
            Title.Alignment = taCenter
            Title.Caption = #1578#1608#1590#1610#1581' '#1576#1575#1610#1711#1575#1606#1610
            Width = 155
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'LetterType'
            Title.Alignment = taCenter
            Title.Caption = #1606#1608#1593' '#1605#1705#1575#1578#1576#1607
            Width = 84
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'MYear'
            Title.Alignment = taCenter
            Title.Caption = #1587#1575#1604
            Visible = False
          end
          item
            Expanded = False
            FieldName = 'IncommingNO'
            Title.Alignment = taCenter
            Title.Caption = #1588#1605#1575#1585#1607' '#1608#1575#1585#1583#1607
            Width = 70
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'Incommingdate'
            Title.Alignment = taCenter
            Title.Caption = #1578#1575#1585#1610#1582' '#1608#1575#1585#1583#1607
            Visible = False
          end
          item
            Expanded = False
            FieldName = 'AttachTitle'
            Title.Alignment = taCenter
            Title.Caption = #1662#1610#1608#1587#1578
            Width = 79
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'RetroactionNo'
            Title.Alignment = taCenter
            Title.Caption = #1588#1605#1575#1585#1607' '#1593#1591#1601
            Visible = False
          end
          item
            Expanded = False
            FieldName = 'FollowLetterNo'
            Title.Alignment = taCenter
            Title.Caption = #1588#1605#1575#1585#1607' '#1662#1610#1585#1608
            Visible = False
          end
          item
            Expanded = False
            FieldName = 'ClassificationTitle'
            Title.Alignment = taCenter
            Title.Caption = #1591#1576#1602#1607' '#1576#1606#1583#1610
            Visible = False
          end
          item
            Expanded = False
            FieldName = 'FromTitle'
            Title.Alignment = taCenter
            Title.Caption = #1605#1705#1575#1578#1576#1607' '#1705#1606#1606#1583#1607
            Width = 105
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'ToTitle'
            Title.Alignment = taCenter
            Title.Caption = #1591#1585#1601' '#1605#1705#1575#1578#1576#1607
            Width = 124
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'SecTitle'
            Title.Alignment = taCenter
            Title.Caption = #1583#1576#1610#1585#1582#1575#1606#1607
            Visible = False
          end>
      end
    end
    object Panel2: TPanel
      Left = 1
      Top = 376
      Width = 888
      Height = 41
      Align = alBottom
      TabOrder = 2
      DesignSize = (
        888
        41)
      object BitBtn1: TAdvGlowButton
        Left = 8
        Top = 6
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
      object Button1: TAdvGlowButton
        Left = 777
        Top = 6
        Width = 100
        Height = 28
        Cursor = crHandPoint
        Anchors = [akTop, akRight]
        Caption = #1580#1583#1610#1583
        Font.Charset = ARABIC_CHARSET
        Font.Color = clNavy
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ImageIndex = 60
        Images = Dm.ImageList_MainNew
        NotesFont.Charset = DEFAULT_CHARSET
        NotesFont.Color = clWindowText
        NotesFont.Height = -11
        NotesFont.Name = 'Tahoma'
        NotesFont.Style = []
        ParentFont = False
        TabOrder = 1
        OnClick = Button1Click
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
      object ShowDetail: TAdvGlowButton
        Left = 675
        Top = 6
        Width = 100
        Height = 28
        Cursor = crHandPoint
        Anchors = [akTop, akRight]
        Caption = #1606#1605#1575#1610#1588' '#1580#1586#1574#1610#1575#1578
        Font.Charset = ARABIC_CHARSET
        Font.Color = clNavy
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ImageIndex = 78
        Images = Dm.ImageList_MainNew
        NotesFont.Charset = DEFAULT_CHARSET
        NotesFont.Color = clWindowText
        NotesFont.Height = -11
        NotesFont.Name = 'Tahoma'
        NotesFont.Style = []
        ParentFont = False
        TabOrder = 2
        OnClick = ShowDetailClick
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
        Enabled = False
      end
      object xpBitBtn1: TAdvGlowButton
        Left = 573
        Top = 6
        Width = 100
        Height = 28
        Cursor = crHandPoint
        Anchors = [akTop, akRight]
        Caption = #1606#1605#1575#1610#1588' '#1578#1589#1608#1610#1585
        Font.Charset = ARABIC_CHARSET
        Font.Color = clNavy
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ImageIndex = 56
        Images = Dm.ImageList_MainNew
        NotesFont.Charset = DEFAULT_CHARSET
        NotesFont.Color = clWindowText
        NotesFont.Height = -11
        NotesFont.Name = 'Tahoma'
        NotesFont.Style = []
        ParentFont = False
        TabOrder = 3
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
        Enabled = False
      end
      object xpBitBtn2: TAdvGlowButton
        Left = 471
        Top = 6
        Width = 100
        Height = 28
        Cursor = crHandPoint
        Anchors = [akTop, akRight]
        Caption = #1606#1605#1575#1610#1588' Word'
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
        TabOrder = 4
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
        Enabled = False
      end
    end
  end
  inherited DSForm: TDataSource
    Left = 216
    Top = 160
  end
  inherited ActionList: TActionList
    Left = 336
    Top = 160
  end
  object MainActionManager: TActionManager
    ActionBars.SessionCount = 661
    ActionBars = <
      item
        Color = clSkyBlue
        Items = <
          item
            Items = <
              item
                Action = AviewAllletter
                ImageIndex = 29
                LastSession = 661
                ShortCut = 32781
              end
              item
                Caption = '-'
                LastSession = 661
              end
              item
                Action = Arecommite
                ImageIndex = 35
                LastSession = 661
                ShortCut = 16453
              end
              item
                Caption = '-'
                LastSession = 661
              end
              item
                Action = AloadPDF
                Caption = '&PDF'
                ImageIndex = 36
                LastSession = 661
              end
              item
                Caption = '-'
                LastSession = 661
              end
              item
                Action = AEditSubject
                ImageIndex = 20
                LastSession = 661
              end
              item
                Action = Apicture
                ImageIndex = 23
                LastSession = 661
                ShortCut = 16468
              end
              item
                Caption = '-'
                LastSession = 661
              end
              item
                Caption = '-'
                LastSession = 661
              end>
            Caption = #1605#1603#1575#1578#1576#1575#1578
          end
          item
            Items = <
              item
                Caption = '-'
                LastSession = 661
              end
              item
                Caption = '-'
                LastSession = 661
              end>
            Caption = #1603#1575#1585#1576#1585#1575#1606
          end
          item
            Items = <
              item
                Action = AExpotToWord
                Caption = '&Word'
                ImageIndex = 27
                LastSession = 661
                ShortCut = 16471
              end
              item
                Caption = '-'
                LastSession = 661
              end>
            Caption = ' '#1575#1585#1578#1576#1575#1591' '#1576#1575' &Word '
          end
          item
            Caption = #1575#1591#1604#1575#1593#1575#1578' '#1605#1608#1585#1583' '#1575#1587#1578#1601#1575#1583#1607' '#1606#1585#1605' '#1575#1601#1586#1575#1585
          end
          item
            Items = <
              item
                Caption = '-'
                LastSession = 661
              end
              item
                Caption = '-'
                LastSession = 661
              end
              item
                Caption = '-'
                LastSession = 661
              end>
            Caption = #1605#1583#1610#1585#1610#1578' '#1587#1610#1587#1578#1605
          end
          item
            Items = <
              item
                Caption = '-'
                LastSession = 661
              end
              item
                Caption = '-'
                LastSession = 661
              end>
            Caption = #1711#1586#1575#1585#1588
          end
          item
            Items = <
              item
                Caption = '-'
                LastSession = 661
              end>
            Caption = #1575#1585#1578#1576#1575#1591' '#1576#1575' '#1606#1585#1605' '#1575#1601#1586#1575#1585' '#1607#1575#1610' '#1583#1610#1711#1585
          end
          item
            Caption = #1601#1585#1605' '#1607#1575#1610' '#1575#1583#1575#1585#1610
          end
          item
            Caption = #1585#1575#1607#1606#1605#1575
          end>
        Visible = False
        GlyphLayout = blGlyphRight
      end
      item
        Items = <
          item
            Action = Apicture
            ImageIndex = 23
            ShortCut = 16468
          end
          item
            Action = AExpotToWord
            ImageIndex = 27
            LastSession = 661
            ShortCut = 16471
          end
          item
            Action = Arecommite
            ImageIndex = 35
            LastSession = 661
            ShortCut = 16453
          end>
      end>
    Images = Dm.LetterImages
    PrioritySchedule.Strings = (
      '0=3'
      '1=3'
      '10=23'
      '11=23'
      '12=23'
      '13=23'
      '14=31'
      '15=31'
      '16=31'
      '17=31'
      '18=31'
      '19=31'
      '2=6'
      '20=31'
      '21=31'
      '22=31'
      '23=31'
      '24=31'
      '25=31'
      '3=9'
      '4=12'
      '5=12'
      '6=17'
      '7=17'
      '8=17'
      '9=23')
    Left = 336
    Top = 112
    StyleName = 'XP Style'
    object Arecommite: TAction
      Tag = 3
      Category = #1576#1575#1610#1711#1575#1606#1610
      Caption = #1575#1585#1580#1575#1593#1575#1578' '#1606#1575#1605#1607
      ImageIndex = 35
      ShortCut = 16453
    end
    object AviewAllletter: TAction
      Tag = 16
      Category = #1576#1575#1610#1711#1575#1606#1610
      Caption = #1605#1588#1582#1589#1575#1578' '#1606#1575#1605#1607
      ImageIndex = 29
      ShortCut = 32781
    end
    object Apicture: TAction
      Tag = 21
      Category = #1576#1575#1610#1711#1575#1606#1610
      Caption = #1578#1589#1608#1610#1585
      ImageIndex = 23
      ShortCut = 16468
    end
    object AExpotToWord: TAction
      Tag = 24
      Category = #1576#1575#1610#1711#1575#1606#1610
      Caption = 'Word'
      ImageIndex = 27
      ShortCut = 16471
    end
    object AloadPDF: TAction
      Tag = 62
      Category = #1576#1575#1610#1711#1575#1606#1610
      Caption = 'PDF'
      ImageIndex = 36
    end
    object AEditSubject: TAction
      Category = #1576#1575#1610#1711#1575#1606#1610
      Caption = #1605#1588#1582#1589#1575#1578' '#1576#1575#1610#1711#1575#1606#1610' '#1606#1575#1605#1607
      ImageIndex = 20
    end
  end
  object Get_Letter_By_UserMemo: TADOStoredProc
    Connection = Dm.YeganehConnection
    CursorType = ctStatic
    ProcedureName = 'Get_Letter_By_UserMemo;1'
    Parameters = <
      item
        Name = '@RETURN_VALUE'
        DataType = ftInteger
        Direction = pdReturnValue
        Precision = 10
        Value = 0
      end
      item
        Name = '@UserMemo'
        Attributes = [paNullable]
        DataType = ftWideString
        Size = 255
        Value = Null
      end
      item
        Name = '@Letter_Type'
        Attributes = [paNullable]
        DataType = ftWord
        Precision = 3
        Value = Null
      end>
    Left = 80
    Top = 112
    object Get_Letter_By_UserMemoLetterID: TAutoIncField
      FieldName = 'LetterID'
      ReadOnly = True
    end
    object Get_Letter_By_UserMemoIndicatorID: TIntegerField
      FieldName = 'IndicatorID'
    end
    object Get_Letter_By_UserMemoMYear: TWordField
      FieldName = 'MYear'
    end
    object Get_Letter_By_UserMemoSecTitle: TWideStringField
      FieldName = 'SecTitle'
      Size = 50
    end
    object Get_Letter_By_UserMemoLetterType: TWideStringField
      FieldName = 'LetterType'
      Size = 50
    end
    object Get_Letter_By_UserMemoIncommingNO: TWideStringField
      FieldName = 'IncommingNO'
      Size = 50
    end
    object Get_Letter_By_UserMemoIncommingdate: TWideStringField
      FieldName = 'Incommingdate'
      Size = 10
    end
    object Get_Letter_By_UserMemoMemo: TWideStringField
      FieldName = 'Memo'
      Size = 500
    end
    object Get_Letter_By_UserMemoAttachTitle: TWideStringField
      FieldName = 'AttachTitle'
      Size = 50
    end
    object Get_Letter_By_UserMemoRetroactionNo: TWideStringField
      FieldName = 'RetroactionNo'
      Size = 50
    end
    object Get_Letter_By_UserMemoUserMemo: TWideStringField
      FieldName = 'UserMemo'
      Size = 255
    end
    object Get_Letter_By_UserMemoRegistrationDate: TStringField
      FieldName = 'RegistrationDate'
      FixedChar = True
      Size = 10
    end
    object Get_Letter_By_UserMemoFollowLetterNo: TWideStringField
      FieldName = 'FollowLetterNo'
      Size = 50
    end
    object Get_Letter_By_UserMemoSubjectDescription: TWideStringField
      FieldName = 'SubjectDescription'
      Size = 255
    end
    object Get_Letter_By_UserMemoSubjectTitle: TWideStringField
      FieldName = 'SubjectTitle'
      Size = 50
    end
    object Get_Letter_By_UserMemoClassificationTitle: TWideStringField
      FieldName = 'ClassificationTitle'
      Size = 50
    end
    object Get_Letter_By_UserMemoFromTitle: TWideStringField
      FieldName = 'FromTitle'
      Size = 100
    end
    object Get_Letter_By_UserMemoToTitle: TWideStringField
      FieldName = 'ToTitle'
      Size = 100
    end
    object Get_Letter_By_UserMemoLetter_Type: TWordField
      FieldName = 'Letter_Type'
    end
  end
  object DGet_Letter_By_UserMemo: TDataSource
    DataSet = Get_Letter_By_UserMemo
    Left = 80
    Top = 160
  end
end
