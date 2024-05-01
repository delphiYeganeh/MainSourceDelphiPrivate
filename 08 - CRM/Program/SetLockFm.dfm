object FmSetLock: TFmSetLock
  Left = 482
  Top = 48
  BiDiMode = bdRightToLeft
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = #1601#1585#1605' '#1578#1606#1592#1610#1605#1575#1578' '#1602#1601#1604
  ClientHeight = 493
  ClientWidth = 453
  Color = clBtnFace
  DockSite = True
  Font.Charset = ARABIC_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Tahoma'
  Font.Style = []
  KeyPreview = True
  OldCreateOrder = False
  ParentBiDiMode = False
  Position = poDesktopCenter
  OnCanResize = FormCanResize
  OnKeyDown = FormKeyDown
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 14
  object pnlMain: TPanel
    Left = 0
    Top = 0
    Width = 453
    Height = 493
    Align = alClient
    TabOrder = 0
    DesignSize = (
      453
      493)
    object GroupBox1: TGroupBox
      Left = 1
      Top = 1
      Width = 451
      Height = 144
      Align = alTop
      Caption = #1578#1593#1610#1610#1606' '#1575#1591#1604#1575#1593#1575#1578
      TabOrder = 1
      DesignSize = (
        451
        144)
      object Label1: TLabel
        Left = 376
        Top = 50
        Width = 65
        Height = 14
        Anchors = [akTop, akRight]
        Caption = #1606#1575#1605' '#1606#1585#1605' '#1575#1601#1586#1575#1585' :'
      end
      object Label2: TLabel
        Left = 181
        Top = 50
        Width = 21
        Height = 14
        Anchors = [akTop, akRight]
        Caption = #1705#1583' :'
      end
      object Label3: TLabel
        Left = 76
        Top = 50
        Width = 72
        Height = 14
        Anchors = [akTop, akRight]
        Caption = #1570#1582#1585#1610#1606' '#1606#1711#1575#1585#1588' :'
      end
      object DBText1: TDBText
        Left = 150
        Top = 50
        Width = 25
        Height = 14
        Anchors = [akTop, akRight]
        BiDiMode = bdRightToLeft
        DataField = 'Code'
        DataSource = Dm.DProduct
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlue
        Font.Height = -12
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentBiDiMode = False
        ParentFont = False
      end
      object DBText2: TDBText
        Left = 17
        Top = 50
        Width = 52
        Height = 14
        Anchors = [akTop, akRight]
        BiDiMode = bdRightToLeft
        DataField = 'LastVertion'
        DataSource = Dm.DProduct
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlue
        Font.Height = -12
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentBiDiMode = False
        ParentFont = False
      end
      object Label4: TLabel
        Left = 332
        Top = 22
        Width = 109
        Height = 14
        Anchors = [akTop, akRight]
        Caption = #1588#1605#1575#1585#1607' '#1587#1585#1610#1575#1604' '#1575#1589#1604#1610' :'
      end
      object DBTSerial1: TDBText
        Left = 263
        Top = 22
        Width = 65
        Height = 14
        Anchors = [akTop, akRight]
        AutoSize = True
        BiDiMode = bdLeftToRight
        DataField = 'BaseSerial'
        DataSource = DSSerial
        Font.Charset = ARABIC_CHARSET
        Font.Color = clRed
        Font.Height = -12
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentBiDiMode = False
        ParentFont = False
      end
      object lblNetworkUsers: TLabel
        Left = 354
        Top = 114
        Width = 88
        Height = 14
        Anchors = [akTop, akRight]
        Caption = #1578#1593#1583#1575#1583' '#1705#1575#1585#1576#1585' '#1588#1576#1705#1607':'
        Visible = False
      end
      object ChBoNet: TCheckBox
        Left = 360
        Top = 84
        Width = 81
        Height = 17
        Anchors = [akTop, akRight]
        Caption = #1578#1581#1578' '#1588#1576#1705#1607
        TabOrder = 0
        OnClick = ChBoNetClick
      end
      object DBLkCBSoftData: TDBLookupComboBox
        Left = 208
        Top = 48
        Width = 161
        Height = 22
        KeyField = 'Code'
        ListField = 'ProductTitle'
        ListSource = Dm.DProduct
        TabOrder = 1
        OnClick = DBLkCBSoftDataClick
      end
      object edtNetworkUsersCount: TSpinEdit
        Left = 226
        Top = 111
        Width = 121
        Height = 23
        MaxValue = 32000
        MinValue = 1
        TabOrder = 2
        Value = 20
        Visible = False
      end
    end
    object Tiny1: TTiny
      Left = 9
      Top = 187
      Width = 48
      Height = 50
      Anchors = [akTop, akRight]
      TabOrder = 0
      Visible = False
      ControlData = {00000100F60400002B05000000000000}
    end
    object GroupBox3: TGroupBox
      Left = 7
      Top = 278
      Width = 440
      Height = 209
      Caption = #1606#1605#1575#1610#1588' '#1575#1591#1604#1575#1593#1575#1578' '#1602#1601#1604
      TabOrder = 2
      object BtnShowData: TButton
        Left = 16
        Top = 176
        Width = 113
        Height = 25
        Caption = #1606#1605#1575#1610#1588' '#1575#1591#1604#1575#1593#1575#1578' '#1602#1601#1604
        TabOrder = 0
        OnClick = BtnShowDataClick
      end
      object Memo: TMemo
        Left = 20
        Top = 24
        Width = 401
        Height = 145
        BiDiMode = bdRightToLeft
        ParentBiDiMode = False
        TabOrder = 1
      end
    end
    object ChBoShowData: TCheckBox
      Left = 186
      Top = 216
      Width = 254
      Height = 17
      Caption = #1606#1605#1575#1610#1588' '#1605#1588#1582#1589#1575#1578' '#1602#1601#1604' '#1662#1587' '#1575#1586' '#1602#1585#1575#1585' '#1583#1575#1583' '#1575#1591#1604#1575#1593#1575#1578
      TabOrder = 3
    end
    object GroupBox2: TGroupBox
      Left = 1
      Top = 145
      Width = 451
      Height = 65
      Align = alTop
      Caption = #1581#1575#1604#1578#1607#1575#1610' '#1582#1575#1589
      TabOrder = 4
      DesignSize = (
        451
        65)
      object LblKit: TLabel
        Left = 308
        Top = 30
        Width = 48
        Height = 14
        Anchors = [akTop, akRight]
        Caption = #1606#1608#1593' '#1705#1610#1578' :'
        Enabled = False
      end
      object CoBoKit: TComboBox
        Left = 241
        Top = 30
        Width = 64
        Height = 22
        Anchors = [akTop, akRight]
        Enabled = False
        ItemHeight = 14
        ItemIndex = 0
        TabOrder = 0
        Text = 'A'
        Items.Strings = (
          'A'
          'B'
          'C'
          'D'
          'E'
          'F'
          'G'
          'H'
          'I'
          'J')
      end
      object ChBoKit: TCheckBox
        Left = 362
        Top = 30
        Width = 81
        Height = 17
        Anchors = [akTop, akRight]
        Caption = #1583#1575#1585#1575#1610' '#1705#1610#1578' '
        TabOrder = 1
        OnClick = ChBoKitClick
      end
    end
    object Button1: TButton
      Left = 128
      Top = 244
      Width = 217
      Height = 30
      Anchors = [akTop, akRight]
      Caption = #1579#1576#1578' '#1575#1591#1604#1575#1593#1575#1578' '#1583#1585' '#1602#1601#1604' Enter '
      TabOrder = 5
      OnClick = Button1Click
    end
  end
  object XPManifest1: TXPManifest
    Left = 40
    Top = 16
  end
  object QrSerial: TADOQuery
    Connection = Dm.YeganehConnection
    CursorType = ctStatic
    AfterInsert = QrSerialAfterInsert
    Parameters = <>
    SQL.Strings = (
      'Select Top 1 *'
      'From Serial'
      'Where (SerialUsed = 0)'
      '')
    Left = 56
    Top = 120
    object QrSerialSerial_ID: TAutoIncField
      FieldName = 'Serial_ID'
      ReadOnly = True
    end
    object QrSerialSoftSerial: TWideStringField
      FieldName = 'SoftSerial'
    end
    object QrSerialBaseSerial: TIntegerField
      FieldName = 'BaseSerial'
    end
    object QrSerialKit: TWideStringField
      FieldName = 'Kit'
      FixedChar = True
      Size = 5
    end
    object QrSerialNetwork: TSmallintField
      FieldName = 'Network'
      OnGetText = QrSerialNetworkGetText
    end
    object QrSerialHaveCust: TSmallintField
      FieldName = 'HaveCust'
    end
    object QrSerialSerialUsed: TSmallintField
      FieldName = 'SerialUsed'
    end
    object QrSerialSerDate: TWideStringField
      FieldName = 'SerDate'
      Size = 15
    end
    object QrSerialSerTime: TWideStringField
      FieldName = 'SerTime'
      Size = 5
    end
    object QrSerialSerial2: TWideStringField
      FieldName = 'Serial2'
      FixedChar = True
      Size = 10
    end
  end
  object DSSerial: TDataSource
    DataSet = QrSerial
    Left = 96
    Top = 200
  end
end
