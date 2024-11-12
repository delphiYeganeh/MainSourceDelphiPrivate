inherited FRStatistic: TFRStatistic
  Left = 437
  Top = 267
  Caption = 'FRStatistic'
  ClientWidth = 662
  OldCreateOrder = True
  PixelsPerInch = 96
  TextHeight = 13
  object pnlMain: TPanel [0]
    Left = 0
    Top = 0
    Width = 662
    Height = 473
    Align = alClient
    TabOrder = 0
    object PtoolBar: TPanel
      Left = 1
      Top = 1
      Width = 660
      Height = 28
      Align = alTop
      Alignment = taLeftJustify
      BevelOuter = bvNone
      Font.Charset = ARABIC_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentColor = True
      ParentFont = False
      ParentShowHint = False
      ShowHint = True
      TabOrder = 0
      DesignSize = (
        660
        28)
      object Label1: TLabel
        Left = 579
        Top = 6
        Width = 51
        Height = 13
        Anchors = [akTop, akRight]
        Caption = #1606#1608#1593' '#1606#1605#1575#1610#1588' '
      end
      object Label2: TLabel
        Left = 355
        Top = 5
        Width = 48
        Height = 13
        Anchors = [akTop, akRight]
        Caption = #1576#1575#1586#1607' '#1711#1586#1575#1585#1588
      end
      object List6: TDBLookupComboBox
        Left = 447
        Top = 2
        Width = 121
        Height = 21
        Anchors = [akTop, akRight]
        BiDiMode = bdLeftToRight
        KeyField = 'KeyValue'
        ListField = 'Title'
        ListSource = DgetList6
        ParentBiDiMode = False
        TabOrder = 0
        OnClick = List6Click
      end
      object List5: TDBLookupComboBox
        Left = 46
        Top = 1
        Width = 298
        Height = 21
        Anchors = [akTop, akRight]
        BiDiMode = bdLeftToRight
        KeyField = 'KeyValue'
        ListField = 'Title'
        ListSource = DGetList5
        ParentBiDiMode = False
        TabOrder = 1
        OnClick = List5Click
      end
    end
    object pnlList: TPanel
      Left = 1
      Top = 29
      Width = 660
      Height = 443
      Align = alClient
      TabOrder = 1
      object pnlTopBtn: TPanel
        Left = 1
        Top = 1
        Width = 658
        Height = 39
        Align = alTop
        Alignment = taLeftJustify
        BevelOuter = bvNone
        Font.Charset = ARABIC_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentColor = True
        ParentFont = False
        ParentShowHint = False
        ShowHint = True
        TabOrder = 0
        DesignSize = (
          658
          39)
        object BitBtn1: TAdvGlowButton
          Left = 529
          Top = 5
          Width = 100
          Height = 28
          Cursor = crHandPoint
          Anchors = [akTop, akRight]
          Caption = #1584#1582#1610#1585#1607' '#1583#1585' '#1601#1575#1610#1604
          Font.Charset = ARABIC_CHARSET
          Font.Color = clNavy
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ImageIndex = 36
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
        object BitBtn2: TAdvGlowButton
          Left = 428
          Top = 5
          Width = 100
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
        object BitBtn3: TAdvGlowButton
          Left = 226
          Top = 5
          Width = 100
          Height = 28
          Cursor = crHandPoint
          Anchors = [akTop, akRight]
          Caption = 'Word '#1582#1585#1608#1580#1610
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
          OnClick = BitBtn3Click
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
          Left = 327
          Top = 5
          Width = 100
          Height = 28
          Cursor = crHandPoint
          Anchors = [akTop, akRight]
          Caption = #1578#1594#1610#1610#1585' '#1593#1606#1608#1575#1606' '
          Font.Charset = ARABIC_CHARSET
          Font.Color = clNavy
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ImageIndex = 37
          Images = Dm.ImageList_MainNew
          NotesFont.Charset = DEFAULT_CHARSET
          NotesFont.Color = clWindowText
          NotesFont.Height = -11
          NotesFont.Name = 'Tahoma'
          NotesFont.Style = []
          ParentFont = False
          TabOrder = 3
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
          Left = 8
          Top = 5
          Width = 75
          Height = 28
          Cursor = crHandPoint
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
        object BitBtn6: TAdvGlowButton
          Left = 125
          Top = 5
          Width = 100
          Height = 28
          Cursor = crHandPoint
          Anchors = [akTop, akRight]
          Caption = 'Excel '#1582#1585#1608#1580#1610
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
          TabOrder = 5
          OnClick = BitBtn6Click
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
      object PSearch: TPanel
        Left = 1
        Top = 40
        Width = 658
        Height = 402
        Align = alClient
        BevelOuter = bvNone
        Caption = 'PSearch'
        TabOrder = 1
        object lettersDbGrid: TYDBGrid
          Left = 0
          Top = 0
          Width = 658
          Height = 402
          Cursor = crHandPoint
          Align = alClient
          BiDiMode = bdRightToLeft
          Color = clTeal
          Ctl3D = True
          DataSource = Dsp_Statistic
          FixedColor = clBtnHighlight
          Font.Charset = ARABIC_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Tahoma'
          Font.Style = []
          Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines]
          ParentBiDiMode = False
          ParentCtl3D = False
          ParentFont = False
          PopupMenu = LetterPopup
          ReadOnly = True
          TabOrder = 0
          TitleFont.Charset = ARABIC_CHARSET
          TitleFont.Color = clBlack
          TitleFont.Height = -12
          TitleFont.Name = 'Tahoma'
          TitleFont.Style = []
          YeganehColor = True
          YeganehFinish = True
          PageNumber = False
          RecordNumber = False
          HasTime = False
          Oriention = poPortrait
          HasDate = False
          HasIndex = False
          PrintTitle = #1593#1606#1608#1575#1606
          InvertFarsiDate = True
          TitleSort = True
          AutoInsert = False
          FooterFields = 'Count'
          Columns = <
            item
              Expanded = False
              FieldName = 'id'
              Title.Caption = #1585#1583#1610#1601
              Visible = False
            end
            item
              Expanded = False
              FieldName = 'title'
              Title.Caption = #1593#1606#1608#1575#1606' '
              Width = 300
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'number'
              Title.Caption = #1578#1593#1583#1575#1583
              Visible = True
            end>
        end
        object BarChart: TDBChart
          Left = 0
          Top = 0
          Width = 658
          Height = 402
          BackWall.Brush.Color = clWhite
          Title.Font.Charset = ARABIC_CHARSET
          Title.Font.Color = clBlue
          Title.Font.Height = -11
          Title.Font.Name = 'Tahoma'
          Title.Font.Style = []
          Title.Text.Strings = (
            'TDBChart')
          View3DOptions.Elevation = 315
          View3DOptions.Orthogonal = False
          View3DOptions.Perspective = 0
          View3DOptions.Rotation = 360
          Align = alClient
          TabOrder = 1
          Visible = False
          object Series1: TBarSeries
            Marks.ArrowLength = 20
            Marks.Visible = True
            DataSource = sp_Statistic
            SeriesColor = clRed
            XLabelsSource = 'title'
            XValues.DateTime = False
            XValues.Name = 'X'
            XValues.Multiplier = 1.000000000000000000
            XValues.Order = loAscending
            XValues.ValueSource = 'id'
            YValues.DateTime = False
            YValues.Name = 'Bar'
            YValues.Multiplier = 1.000000000000000000
            YValues.Order = loNone
            YValues.ValueSource = 'number'
          end
        end
        object Piechart: TDBChart
          Left = 0
          Top = 0
          Width = 658
          Height = 402
          AllowPanning = pmNone
          AllowZoom = False
          BackWall.Brush.Color = clWhite
          BackWall.Brush.Style = bsClear
          BackWall.Pen.Visible = False
          Title.Font.Charset = ARABIC_CHARSET
          Title.Font.Color = clBlue
          Title.Font.Height = -11
          Title.Font.Name = 'Tahoma'
          Title.Font.Style = []
          Title.Text.Strings = (
            'TDBChart')
          AxisVisible = False
          ClipPoints = False
          Frame.Visible = False
          View3DOptions.Elevation = 315
          View3DOptions.Orthogonal = False
          View3DOptions.Perspective = 0
          View3DOptions.Rotation = 360
          View3DWalls = False
          Align = alClient
          TabOrder = 2
          Visible = False
          object BarSeries1: TPieSeries
            Marks.ArrowLength = 20
            Marks.Visible = True
            DataSource = sp_Statistic
            SeriesColor = clRed
            XLabelsSource = 'title'
            OtherSlice.Text = 'Other'
            PieValues.DateTime = False
            PieValues.Name = 'Pie'
            PieValues.Multiplier = 1.000000000000000000
            PieValues.Order = loNone
            PieValues.ValueSource = 'number'
          end
        end
        object fastlineChart: TDBChart
          Left = 0
          Top = 0
          Width = 658
          Height = 402
          BackWall.Brush.Color = clWhite
          Title.Font.Charset = ARABIC_CHARSET
          Title.Font.Color = clBlue
          Title.Font.Height = -11
          Title.Font.Name = 'Tahoma'
          Title.Font.Style = []
          Title.Text.Strings = (
            'TDBChart')
          Legend.Font.Charset = ARABIC_CHARSET
          Legend.Font.Color = clBlack
          Legend.Font.Height = -11
          Legend.Font.Name = 'Tahoma'
          Legend.Font.Style = []
          View3DOptions.Elevation = 315
          View3DOptions.Orthogonal = False
          View3DOptions.Perspective = 0
          View3DOptions.Rotation = 360
          Align = alClient
          TabOrder = 3
          Visible = False
          object PieSeries1: TLineSeries
            ColorEachPoint = True
            Marks.ArrowLength = 20
            Marks.Font.Charset = ARABIC_CHARSET
            Marks.Font.Color = clBlack
            Marks.Font.Height = -11
            Marks.Font.Name = 'Tahoma'
            Marks.Font.Style = []
            Marks.Visible = True
            DataSource = sp_Statistic
            SeriesColor = clRed
            Pointer.InflateMargins = True
            Pointer.Style = psRectangle
            Pointer.Visible = False
            XValues.DateTime = False
            XValues.Name = 'X'
            XValues.Multiplier = 1.000000000000000000
            XValues.Order = loAscending
            XValues.ValueSource = 'id'
            YValues.DateTime = False
            YValues.Name = 'Y'
            YValues.Multiplier = 1.000000000000000000
            YValues.Order = loNone
            YValues.ValueSource = 'number'
          end
        end
      end
    end
  end
  inherited DSForm: TDataSource
    Left = 31
    Top = 129
  end
  inherited Grid_PopupMenu: TPopupMenu
    Left = 47
    Top = 68
  end
  inherited Timer1sssss: TTimer
    Left = 88
    Top = 56
  end
  object DGetList5: TDataSource
    DataSet = GetList5
    Left = 493
    Top = 129
  end
  object sp_Statistic: TADOStoredProc
    Connection = Dm.YeganehConnection
    CursorType = ctStatic
    LockType = ltBatchOptimistic
    ProcedureName = 'sp_Statistic;1'
    Parameters = <
      item
        Name = '@RETURN_VALUE'
        DataType = ftInteger
        Direction = pdReturnValue
        Precision = 10
        Value = Null
      end
      item
        Name = '@Secretariatid'
        Attributes = [paNullable]
        DataType = ftInteger
        Precision = 10
        Value = Null
      end
      item
        Name = '@myear'
        Attributes = [paNullable]
        DataType = ftWord
        Precision = 3
        Value = Null
      end
      item
        Name = '@Letter_Type'
        Attributes = [paNullable]
        DataType = ftInteger
        Precision = 10
        Value = Null
      end
      item
        Name = '@LetterFormat'
        Attributes = [paNullable]
        DataType = ftInteger
        Precision = 10
        Value = Null
      end
      item
        Name = '@where'
        Attributes = [paNullable]
        DataType = ftWideString
        Size = 2000
        Value = Null
      end
      item
        Name = '@archiveFolderID'
        Attributes = [paNullable]
        DataType = ftInteger
        Precision = 10
        Value = Null
      end
      item
        Name = '@GroupBy'
        Attributes = [paNullable]
        DataType = ftInteger
        Precision = 10
        Value = Null
      end>
    Left = 555
    Top = 80
    object sp_Statisticid: TIntegerField
      FieldName = 'id'
      ReadOnly = True
    end
    object sp_Statistictitle: TWideStringField
      FieldName = 'title'
      FixedChar = True
      Size = 10
    end
    object sp_Statisticnumber: TIntegerField
      FieldName = 'number'
    end
  end
  object GetList5: TADOStoredProc
    Connection = Dm.YeganehConnection
    CursorType = ctStatic
    ProcedureName = 'GetList;1'
    Parameters = <
      item
        Name = '@RETURN_VALUE'
        DataType = ftInteger
        Direction = pdReturnValue
        Precision = 10
        Value = 0
      end
      item
        Name = '@ListID'
        Attributes = [paNullable]
        DataType = ftInteger
        Precision = 10
        Value = 5
      end>
    Left = 501
    Top = 81
  end
  object GetList6: TADOStoredProc
    Connection = Dm.YeganehConnection
    CursorType = ctStatic
    ProcedureName = 'GetList;1'
    Parameters = <
      item
        Name = '@RETURN_VALUE'
        DataType = ftInteger
        Direction = pdReturnValue
        Precision = 10
        Value = 0
      end
      item
        Name = '@ListID'
        Attributes = [paNullable]
        DataType = ftInteger
        Precision = 10
        Value = 6
      end>
    Left = 437
    Top = 81
  end
  object DgetList6: TDataSource
    DataSet = GetList6
    Left = 437
    Top = 129
  end
  object WordApplication: TWordApplication
    AutoConnect = False
    ConnectKind = ckRunningOrNew
    AutoQuit = False
    OnDocumentBeforeClose = WordApplicationDocumentBeforeClose
    Left = 232
    Top = 80
  end
  object WordDocument: TWordDocument
    AutoConnect = False
    ConnectKind = ckRunningOrNew
    Left = 136
    Top = 80
  end
  object SavePictureDialog: TSavePictureDialog
    Filter = 'Bitmaps (*.bmp)|*.bmp'
    Left = 344
    Top = 88
  end
  object LetterPopup: TPopupMenu
    Images = Dm.LetterImages
    Left = 624
    Top = 77
    object N1: TMenuItem
    end
    object N2: TMenuItem
    end
    object N3: TMenuItem
    end
    object N32: TMenuItem
    end
    object N5: TMenuItem
      Caption = '-'
    end
    object N8: TMenuItem
    end
    object TMenuItem
    end
    object N11: TMenuItem
    end
    object N12: TMenuItem
    end
    object N14: TMenuItem
    end
    object N7: TMenuItem
      Caption = '-'
    end
    object N13: TMenuItem
      Caption = #1578#1606#1592#1610#1605#1575#1578' '#1606#1605#1575#1610#1588' '#1601#1607#1585#1587#1578
      OnClick = N13Click
    end
    object N9: TMenuItem
      Caption = #1670#1575#1662' '#1601#1607#1585#1587#1578
      ImageIndex = 37
      OnClick = N9Click
    end
    object N10: TMenuItem
      Caption = '-'
    end
    object AOtherSenders1: TMenuItem
    end
    object N6: TMenuItem
    end
    object N4: TMenuItem
    end
    object ExactCopy1: TMenuItem
    end
  end
  object Dsp_Statistic: TDataSource
    DataSet = sp_Statistic
    Left = 552
    Top = 128
  end
end
