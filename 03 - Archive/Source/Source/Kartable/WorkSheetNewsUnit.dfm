inherited FWorkSheetNews: TFWorkSheetNews
  Left = 399
  Top = 154
  BorderIcons = []
  BorderStyle = bsDialog
  Caption = #1601#1585#1605' '#1575#1585#1587#1575#1604' '#1582#1576#1585' '#1576#1607' '#1588#1585#1705#1578' '#1705#1606#1606#1583#1711#1575#1606' '#1583#1585' '#1580#1604#1587#1607' / '#1605#1604#1575#1602#1575#1578' / Task'
  ClientHeight = 284
  ClientWidth = 495
  Constraints.MinHeight = 250
  Constraints.MinWidth = 350
  KeyPreview = True
  OldCreateOrder = True
  OnKeyPress = FormKeyPress
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel [0]
    Tag = 4
    Left = 0
    Top = 40
    Width = 495
    Height = 65
    Align = alTop
    BevelInner = bvRaised
    BevelOuter = bvLowered
    Color = 16377053
    TabOrder = 0
    DesignSize = (
      495
      65)
    object Label4: TLabel
      Tag = 6
      Left = 430
      Top = 40
      Width = 53
      Height = 13
      Anchors = [akTop, akRight]
      Caption = #1578#1575#1585#1610#1582' '#1575#1593#1604#1575#1606':'
    end
    object Label5: TLabel
      Tag = 7
      Left = 297
      Top = 40
      Width = 52
      Height = 13
      Anchors = [akTop, akRight]
      Caption = #1586#1605#1575#1606' '#1575#1593#1604#1575#1606':'
    end
    object Label3: TLabel
      Tag = 8
      Left = 447
      Top = 8
      Width = 36
      Height = 13
      Anchors = [akTop, akRight]
      Caption = #1605#1608#1590#1608#1593':'
    end
    object lblSubject: TLabel
      Left = 400
      Top = 9
      Width = 46
      Height = 13
      Anchors = [akTop, akRight]
      Caption = 'lblSubject'
      Font.Charset = ARABIC_CHARSET
      Font.Color = clNavy
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object lbldate: TLabel
      Left = 371
      Top = 40
      Width = 56
      Height = 13
      Anchors = [akTop, akRight]
      Caption = '1390/12/12'
    end
    object lbltime: TLabel
      Left = 265
      Top = 40
      Width = 30
      Height = 13
      Anchors = [akTop, akRight]
      Caption = 'lbltime'
    end
  end
  object Panel2: TGroupBox [1]
    Tag = 2
    Left = 0
    Top = 105
    Width = 495
    Height = 179
    Align = alClient
    Caption = #1605#1578#1606' '#1662#1610#1575#1605
    TabOrder = 1
    object Memo1: TMemo
      Left = 2
      Top = 15
      Width = 491
      Height = 162
      Align = alClient
      Color = clBtnFace
      ReadOnly = True
      TabOrder = 0
    end
  end
  object Panel4: TPanel [2]
    Left = 0
    Top = 0
    Width = 495
    Height = 40
    Align = alTop
    ParentColor = True
    TabOrder = 2
    DesignSize = (
      495
      40)
    object BitBtn1: TBitBtn
      Tag = 15
      Left = 383
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
      ParentFont = False
      TabOrder = 0
      OnClick = BitBtn1Click
    end
    object BitBtn3: TBitBtn
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
      ParentFont = False
      TabOrder = 1
      OnClick = BitBtn3Click
      Glyph.Data = {
        36030000424D3603000000000000360000002800000010000000100000000100
        18000000000000030000C30E0000C30E00000000000000000000FFFFFFFFFFFF
        FFFFFFFFFFFFFEFEFEFBFBFBF4F4F4F3F3F3FAFAFAFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFDFDFDF7F7F7EFEFEFE4E4E4D6D6D6D8
        D8D8F1F1F1FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFCFCFC
        F0F0F0DCDADAC6ADA8B88A83AC7771AC7771AFAFAFC5C5C5E7E7E7F0F0F0FFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFEBE0DEC79F95B07C75C18D81DFB2A1FCF4EEAC
        77718D8D8D979797ADADADDADADAFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFAC7771
        CE9683EEB89DF7C7AEF6CEB8FEF6F1AC77711C759D1E7EAA1E7EAAEFEFEFFBFB
        FBFEFEFEFFFFFFFFFFFFFFFFFFAC7771F7BB99F8C0A2F7C7AEF7CEB8FEF6F1AC
        77715CB6D55DC3E4179DC9FDFEFEF6CDB4FEFEFEFFFFFFFFFFFFFFFFFFAC7771
        F8BB99F7C0A2F7C7AEF7CFB9FEF6F1AC777168BBD672CBE745B1D4F5CDB4E556
        01FDFEFEFFFFFFFFFFFFFFFFFFAC7771F8BB99C18C7FB37F77F6CFB9FEF6F1AC
        777187C7DBA1DDEFAFB0A4E65C09E55600FBFEFEFDFEFEFDFEFEFFFFFFAC7771
        F7BB99AC7771FFFFFFF6CFB9FEF6F1AC7771A3D4E2D4C4B2E55600E55600E556
        00E55600E55600E55600FFFFFFAC7771F7BB99D29C8AAC7771F6CEB8FEF6F1AC
        7771BBDFE9E55600E55600E55600E55600E55600E55600E55600FFFFFFAC7771
        F8BB99F7C1A3F7C7ADF7CEB8FEF6F1AC7771BFE0E9E4B291E35D0BE55600E556
        00E55600E55600E55600FFFFFFAC7771F8BB99F7C1A2F7C7ADF7CEB9FEF6F1AC
        7771B7DBE4D7F1F7CAAD94E65D0BE55600FAFDFDFBFDFDFCFEFEFFFFFFAC7771
        F7BB99F7C1A3F7C8AEF7CEB8FEF6F1AC7771B2D7E1C6EAF483CBE2F2C0A1E557
        01FCFEFEFFFFFFFFFFFFFFFFFFAC7771C79080EAB39AF7C8AEF7CEB9FEF6F1AC
        7771B8D9E2C5EAF42BA5CEFCFEFEF4C3A6FEFEFEFFFFFFFFFFFFFFFFFFFCFAF9
        D8B7ADB48078C28E82E5BAA7FEF6F1AC7771098FBB0997C60997C6FEFEFEFEFE
        FEFEFEFEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFDFCFCDDC4BFBC8E86AC7771AC
        7771FAFAFAFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF}
    end
  end
  inherited Grid_PopupMenu: TPopupMenu
    Left = 255
    Top = 156
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
    Left = 400
    Top = 144
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
