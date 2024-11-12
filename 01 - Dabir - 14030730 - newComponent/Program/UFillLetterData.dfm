inherited FillLetterData: TFillLetterData
  Left = 352
  Top = 227
  Caption = #1601#1585#1575#1582#1608#1575#1606#1610' '#1578#1589#1608#1610#1585' '#1606#1575#1605#1607' '#1607#1575
  ClientHeight = 351
  ClientWidth = 448
  OldCreateOrder = True
  PixelsPerInch = 96
  TextHeight = 13
  object pnlMain: TPanel [0]
    Left = 0
    Top = 0
    Width = 448
    Height = 351
    Align = alClient
    ParentColor = True
    TabOrder = 0
    object Panel1: TPanel
      Left = 1
      Top = 1
      Width = 446
      Height = 308
      Align = alClient
      ParentColor = True
      TabOrder = 0
      DesignSize = (
        446
        308)
      object Label2: TLabel
        Left = 347
        Top = 9
        Width = 85
        Height = 13
        Anchors = [akTop, akRight]
        Caption = ' '#1601#1608#1604#1583#1585' '#1581#1575#1608#1610' '#1578#1589#1575#1608#1610#1585
      end
      object Label3: TLabel
        Left = 365
        Top = 40
        Width = 65
        Height = 13
        Anchors = [akTop, akRight]
        Caption = #1662#1587#1608#1606#1583' '#1601#1575#1610#1604' '#1607#1575
      end
      object Label1: TLabel
        Left = 83
        Top = 38
        Width = 172
        Height = 13
        Caption = #1580#1583#1575' '#1603#1606#1606#1583#1607' '#1588#1605#1575#1585#1607' '#1606#1575#1605#1607'  '#1608' '#1588#1605#1575#1585#1607' '#1589#1601#1581#1607
      end
      object Label4: TLabel
        Left = 351
        Top = 84
        Width = 96
        Height = 13
        Anchors = [akTop, akRight]
        Caption = '     '#1578#1589#1575#1608#1610#1585' '#1575#1606#1578#1602#1575#1604' '#1610#1575#1601#1578#1607
      end
      object Label5: TLabel
        Left = 349
        Top = 177
        Width = 94
        Height = 13
        Anchors = [akRight, akBottom]
        Caption = '   '#1578#1589#1575#1608#1610#1585' '#1575#1606#1578#1602#1575#1604' '#1606#1610#1575#1601#1578#1607
      end
      object SpeedButton1: TAdvGlowButton
        Left = 67
        Top = 6
        Width = 23
        Height = 21
        Cursor = crHandPoint
        ImageIndex = 78
        Images = Dm.ImageList_MainNew
        NotesFont.Charset = DEFAULT_CHARSET
        NotesFont.Color = clWindowText
        NotesFont.Height = -11
        NotesFont.Name = 'Tahoma'
        NotesFont.Style = []
        TabOrder = 6
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
      object Edit1: TEdit
        Left = 93
        Top = 6
        Width = 240
        Height = 21
        Anchors = [akLeft, akTop, akRight]
        BiDiMode = bdLeftToRight
        ParentBiDiMode = False
        TabOrder = 0
      end
      object Edit2: TEdit
        Left = 269
        Top = 35
        Width = 64
        Height = 21
        Anchors = [akLeft, akTop, akRight]
        BiDiMode = bdLeftToRight
        ParentBiDiMode = False
        TabOrder = 1
        Text = 'jpg'
      end
      object Edit3: TEdit
        Left = 42
        Top = 35
        Width = 17
        Height = 21
        TabOrder = 2
        Text = '.'
      end
      object Button1: TAdvGlowButton
        Left = 120
        Top = 62
        Width = 213
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
        TabOrder = 3
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
      object Memo1: TMemo
        Left = 3
        Top = 100
        Width = 436
        Height = 77
        Anchors = [akLeft, akTop, akRight, akBottom]
        TabOrder = 4
      end
      object Memo2: TMemo
        Left = 4
        Top = 192
        Width = 436
        Height = 114
        Anchors = [akLeft, akRight, akBottom]
        TabOrder = 5
      end
    end
    object Panel2: TPanel
      Left = 1
      Top = 309
      Width = 446
      Height = 41
      Align = alBottom
      TabOrder = 1
      DesignSize = (
        446
        41)
      object Button2: TAdvGlowButton
        Left = 12
        Top = 5
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
    Left = 253
    Top = 351
  end
  inherited ActionList: TActionList
    Left = 365
    Top = 354
  end
  inherited Grid_PopupMenu: TPopupMenu
    Left = 231
    Top = 108
  end
  inherited Timer1sssss: TTimer
    Left = 24
    Top = 56
  end
  object FdataSet: TADODataSet
    Connection = Dm.YeganehConnection
    CursorType = ctStatic
    CommandText = 
      'SELECT     LetterData.*'#13#10'FROM         Letter INNER JOIN'#13#10'       ' +
      '               LetterData ON Letter.LetterID = LetterData.Letter' +
      'ID'#13#10'WHERE     (Myear =:@Myear) AND (SecretariatID = :@secID) AND' +
      ' (PageNumber = :@PageNumber) AND (IndicatorID = :@IndicatorID)'#13#10
    Parameters = <
      item
        Name = '@Myear'
        DataType = ftWord
        Precision = 3
        Size = 1
        Value = 0
      end
      item
        Name = '@secID'
        DataType = ftWord
        Precision = 3
        Size = 1
        Value = 0
      end
      item
        Name = '@PageNumber'
        DataType = ftWord
        Precision = 3
        Size = 1
        Value = 0
      end
      item
        Name = '@IndicatorID'
        Attributes = [paSigned]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = 0
      end>
    Left = 168
    Top = 136
    object FdataSetLetterDataID: TAutoIncField
      FieldName = 'LetterDataID'
      ReadOnly = True
    end
    object FdataSetLetterID: TIntegerField
      FieldName = 'LetterID'
    end
    object FdataSetPageNumber: TWordField
      FieldName = 'PageNumber'
    end
    object FdataSetImage: TBlobField
      FieldName = 'Image'
    end
    object FdataSetextention: TWordField
      FieldName = 'extention'
    end
  end
end
