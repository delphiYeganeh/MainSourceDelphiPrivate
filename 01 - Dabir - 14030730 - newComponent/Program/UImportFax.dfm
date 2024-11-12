inherited FImportFax: TFImportFax
  Left = 638
  Top = 243
  Caption = #1601#1585#1575#1582#1608#1575#1606#1610' '#1578#1589#1575#1608#1610#1585
  ClientHeight = 371
  ClientWidth = 388
  OldCreateOrder = True
  PixelsPerInch = 96
  TextHeight = 13
  object pnlMain: TPanel [0]
    Left = 0
    Top = 0
    Width = 388
    Height = 371
    Align = alClient
    ParentColor = True
    TabOrder = 0
    object Panel1: TPanel
      Left = 1
      Top = 1
      Width = 386
      Height = 328
      Align = alClient
      ParentColor = True
      TabOrder = 0
      DesignSize = (
        386
        328)
      object Label4: TLabel
        Left = 290
        Top = 11
        Width = 81
        Height = 13
        Anchors = [akTop, akRight]
        Caption = ' '#1601#1604#1583#1585' '#1581#1575#1608#1610' '#1578#1589#1575#1608#1610#1585
      end
      object Label5: TLabel
        Left = 290
        Top = 41
        Width = 65
        Height = 13
        Anchors = [akTop, akRight]
        Caption = #1662#1587#1608#1606#1583' '#1601#1575#1610#1604' '#1607#1575
      end
      object Label7: TLabel
        Left = 290
        Top = 104
        Width = 81
        Height = 13
        Anchors = [akTop, akRight]
        Caption = #1578#1589#1575#1608#1610#1585' '#1575#1606#1578#1602#1575#1604' '#1610#1575#1601#1578#1607
      end
      object SpeedButton1: TAdvGlowButton
        Left = 263
        Top = 8
        Width = 23
        Height = 21
        Cursor = crHandPoint
        Anchors = [akTop, akRight]
        ImageIndex = 138
        Images = Dm.ImageList_MainNew
        NotesFont.Charset = DEFAULT_CHARSET
        NotesFont.Color = clWindowText
        NotesFont.Height = -11
        NotesFont.Name = 'Tahoma'
        NotesFont.Style = []
        TabOrder = 5
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
      object ImageEnMView1: TImageEnMView
        Left = 40
        Top = 144
        Width = 105
        Height = 162
        Background = clBtnFace
        ParentCtl3D = False
        StoreType = ietNormal
        ThumbWidth = 70
        ThumbHeight = 70
        HorizBorder = 4
        VertBorder = 4
        TextMargin = 0
        GridWidth = 1
        SelectionWidth = 3
        SelectionColor = clRed
        Style = iemsACD
        ThumbnailsBackground = clBtnFace
        ThumbnailsBackgroundSelected = clBtnFace
        EnableMultiSelect = True
        MultiSelectionOptions = []
        ThumbnailsBorderWidth = 1
        ThumbnailsBorderColor = clYellow
        DefaultBottomText = iedtNone
        Visible = False
        TabOrder = 4
      end
      object EFolder: TEdit
        Left = 19
        Top = 8
        Width = 241
        Height = 21
        Anchors = [akLeft, akTop, akRight]
        BiDiMode = bdLeftToRight
        ParentBiDiMode = False
        TabOrder = 0
      end
      object DoBtn: TAdvGlowButton
        Left = 77
        Top = 73
        Width = 209
        Height = 28
        Cursor = crHandPoint
        Anchors = [akTop, akRight]
        Caption = #1582#1608#1575#1606#1583#1606' '#1578#1589#1575#1608#1610#1585' '#1608' '#1584#1582#1610#1585#1607' '#1583#1585' '#1662#1575#1610#1711#1575#1607' '#1583#1575#1583#1607' '#1607#1575
        Font.Charset = ARABIC_CHARSET
        Font.Color = clNavy
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ImageIndex = 9
        Images = Dm.ImageList_MainNew
        NotesFont.Charset = DEFAULT_CHARSET
        NotesFont.Color = clWindowText
        NotesFont.Height = -11
        NotesFont.Name = 'Tahoma'
        NotesFont.Style = []
        ParentFont = False
        TabOrder = 1
        OnClick = DoBtnClick
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
      object Memo: TMemo
        Left = 16
        Top = 120
        Width = 354
        Height = 197
        Anchors = [akLeft, akTop, akRight, akBottom]
        BiDiMode = bdLeftToRight
        ParentBiDiMode = False
        TabOrder = 2
      end
      object Extention: TComboBox
        Left = 223
        Top = 38
        Width = 63
        Height = 21
        Anchors = [akLeft, akTop, akRight]
        BiDiMode = bdLeftToRight
        ItemHeight = 13
        ParentBiDiMode = False
        TabOrder = 3
        Text = 'JPG'
        Items.Strings = (
          'JPG'
          'TIF')
      end
    end
    object Panel2: TPanel
      Left = 1
      Top = 329
      Width = 386
      Height = 41
      Align = alBottom
      ParentColor = True
      TabOrder = 1
      object Button2: TAdvGlowButton
        Left = 16
        Top = 5
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
  inherited DSForm: TDataSource
    Left = 48
    Top = 197
  end
  inherited ActionList: TActionList
    Left = 149
    Top = 197
  end
  inherited Grid_PopupMenu: TPopupMenu
    Left = 151
    Top = 144
  end
  inherited ApplicationEvents1: TApplicationEvents
    Left = 48
    Top = 104
  end
  object FdataSet: TADODataSet
    Connection = Dm.YeganehConnection
    CursorType = ctStatic
    CommandText = 
      'SELECT     LetterData.*'#13#10'FROM         Letterdata'#13#10'where Letterid' +
      '=:LetterID'#13#10'and PageNumber=1'#13#10
    Parameters = <
      item
        Name = 'LetterID'
        Attributes = [paSigned]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = Null
      end>
    Left = 48
    Top = 144
    object FdataSetLetterDataID: TAutoIncField
      FieldName = 'LetterDataID'
      ReadOnly = True
    end
    object FdataSetLetterID: TIntegerField
      FieldName = 'LetterID'
    end
    object FdataSetImage: TBlobField
      FieldName = 'Image'
    end
    object FdataSetextention: TWordField
      FieldName = 'extention'
    end
    object FdataSetPageNumber: TIntegerField
      FieldName = 'PageNumber'
    end
  end
  object ADOImg: TADODataSet
    Connection = Dm.YeganehConnection
    CursorType = ctStatic
    CommandText = 
      'SELECT     LetterData.*'#13#10'FROM         Letterdata'#13#10'where Letterid' +
      '=:LetterID'#13#10'and PageNumber=:PageNumber'#13#10
    Parameters = <
      item
        Name = 'LetterID'
        Attributes = [paSigned]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = Null
      end
      item
        Name = 'PageNumber'
        Size = -1
        Value = Null
      end>
    Left = 272
    Top = 160
    object AutoIncField1: TAutoIncField
      FieldName = 'LetterDataID'
      ReadOnly = True
    end
    object IntegerField1: TIntegerField
      FieldName = 'LetterID'
    end
    object AdoImImage: TBlobField
      FieldName = 'Image'
    end
    object WordField1: TWordField
      FieldName = 'extention'
    end
    object IntegerField2: TIntegerField
      FieldName = 'PageNumber'
    end
  end
  object DSImg: TDataSource
    Left = 272
    Top = 213
  end
end
