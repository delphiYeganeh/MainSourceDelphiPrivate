inherited FWorkSheetNews: TFWorkSheetNews
  Left = 312
  Top = 155
  BorderIcons = []
  BorderStyle = bsDialog
  Caption = #1601#1585#1605' '#1575#1585#1587#1575#1604' '#1582#1576#1585' '#1576#1607' '#1588#1585#1705#1578' '#1705#1606#1606#1583#1711#1575#1606' '#1583#1585' '#1580#1604#1587#1607' / '#1605#1604#1575#1602#1575#1578' / Task'
  ClientHeight = 217
  ClientWidth = 533
  OldCreateOrder = True
  OnKeyPress = FormKeyPress
  PixelsPerInch = 96
  TextHeight = 13
  object pnlMain: TPanel [0]
    Left = 0
    Top = 0
    Width = 533
    Height = 217
    Align = alClient
    ParentColor = True
    TabOrder = 0
    object Panel1: TPanel
      Tag = 4
      Left = 1
      Top = 41
      Width = 531
      Height = 62
      Align = alClient
      BevelInner = bvRaised
      BevelOuter = bvLowered
      ParentColor = True
      TabOrder = 0
      object Label4: TLabel
        Tag = 6
        Left = 472
        Top = 40
        Width = 53
        Height = 13
        Caption = #1578#1575#1585#1610#1582' '#1575#1593#1604#1575#1606':'
      end
      object Label5: TLabel
        Tag = 7
        Left = 339
        Top = 40
        Width = 52
        Height = 13
        Caption = #1586#1605#1575#1606' '#1575#1593#1604#1575#1606':'
      end
      object Label3: TLabel
        Tag = 8
        Left = 489
        Top = 8
        Width = 36
        Height = 13
        Caption = #1605#1608#1590#1608#1593':'
      end
      object lblSubject: TLabel
        Left = 442
        Top = 9
        Width = 46
        Height = 13
        Caption = 'lblSubject'
        Font.Charset = ARABIC_CHARSET
        Font.Color = clNavy
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
      end
      object lbldate: TLabel
        Left = 413
        Top = 40
        Width = 56
        Height = 13
        Caption = '1390/12/12'
      end
      object lbltime: TLabel
        Left = 307
        Top = 40
        Width = 30
        Height = 13
        Caption = 'lbltime'
      end
    end
    object Panel2: TGroupBox
      Tag = 2
      Left = 1
      Top = 103
      Width = 531
      Height = 113
      Align = alBottom
      Caption = #1605#1578#1606' '#1662#1610#1575#1605
      Color = clBtnFace
      ParentColor = False
      TabOrder = 1
      object Memo1: TMemo
        Left = 8
        Top = 20
        Width = 518
        Height = 81
        Color = clBtnFace
        ReadOnly = True
        TabOrder = 0
      end
    end
    object Panel4: TPanel
      Left = 1
      Top = 1
      Width = 531
      Height = 40
      Align = alTop
      ParentColor = True
      TabOrder = 2
      DesignSize = (
        531
        40)
      object BitBtn1: TAdvGlowButton
        Tag = 15
        Left = 419
        Top = 8
        Width = 102
        Height = 25
        Cursor = crHandPoint
        Anchors = [akTop, akRight]
        Caption = #1575#1585#1587#1575#1604' '#1582#1576#1585
        Font.Charset = ARABIC_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ImageIndex = 86
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
      object BitBtn3: TAdvGlowButton
        Tag = 17
        Left = 8
        Top = 8
        Width = 75
        Height = 25
        Cursor = crHandPoint
        Caption = #1582#1585#1608#1580
        Font.Charset = ARABIC_CHARSET
        Font.Color = clWindowText
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
        TabOrder = 1
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
    end
  end
  object spCreateNewsFromWorkSheet: TADOStoredProc
    Connection = Dm.YeganehConnection
    ProcedureName = 'spCreateNewsFromWorkSheet;1'
    Parameters = <
      item
        Name = '@DateAnnonce'
        Attributes = [paNullable]
        DataType = ftString
        Size = 10
        Value = Null
      end
      item
        Name = '@TimeAnnonce'
        Attributes = [paNullable]
        DataType = ftString
        Size = 10
        Value = Null
      end
      item
        Name = '@UserID'
        Attributes = [paNullable]
        DataType = ftInteger
        Precision = 10
        Value = Null
      end
      item
        Name = '@WorkSheetID'
        Attributes = [paNullable]
        DataType = ftInteger
        Precision = 10
        Value = Null
      end
      item
        Name = '@SendFlag'
        Attributes = [paNullable]
        DataType = ftInteger
        Precision = 10
        Value = Null
      end>
    Left = 336
    Top = 120
  end
  object PopupMenu1: TPopupMenu
    Left = 376
    Top = 40
    object N1: TMenuItem
      Caption = #1578#1605#1575#1605' '#1588#1585#1705#1578' '#1705#1606#1606#1583#1711#1575#1606
      OnClick = N1Click
    end
    object N2: TMenuItem
      Caption = #1601#1602#1591' '#1575#1601#1585#1575#1583#1610' '#1705#1607' '#1607#1606#1608#1586' '#1662#1575#1587#1582' '#1606#1583#1575#1583#1607' '#1575#1606#1583
      OnClick = N2Click
    end
  end
end
