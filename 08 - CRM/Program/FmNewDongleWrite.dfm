object FM_NewDongleWrite: TFM_NewDongleWrite
  Left = 426
  Top = 70
  BiDiMode = bdRightToLeft
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = #1601#1585#1605' '#1578#1606#1592#1610#1605#1575#1578' '#1602#1601#1604
  ClientHeight = 478
  ClientWidth = 453
  Color = clBtnFace
  Font.Charset = ARABIC_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Tahoma'
  Font.Style = []
  KeyPreview = True
  OldCreateOrder = False
  ParentBiDiMode = False
  Position = poDesktopCenter
  OnKeyDown = FormKeyDown
  PixelsPerInch = 96
  TextHeight = 14
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 453
    Height = 478
    Align = alClient
    TabOrder = 0
    DesignSize = (
      453
      478)
    object GroupBox1: TGroupBox
      Left = 1
      Top = 1
      Width = 451
      Height = 144
      Align = alTop
      Caption = #1578#1593#1610#1610#1606' '#1575#1591#1604#1575#1593#1575#1578
      TabOrder = 0
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
        Left = 253
        Top = 74
        Width = 21
        Height = 14
        Anchors = [akTop, akRight]
        Caption = #1705#1583' :'
      end
      object Label3: TLabel
        Left = 108
        Top = 74
        Width = 72
        Height = 14
        Anchors = [akTop, akRight]
        Caption = #1570#1582#1585#1610#1606' '#1606#1711#1575#1585#1588' :'
      end
      object DBText1: TDBText
        Left = 192
        Top = 74
        Width = 55
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
        Left = 54
        Top = 74
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
        Left = 88
        Top = 48
        Width = 281
        Height = 22
        BiDiMode = bdLeftToRight
        KeyField = 'Code'
        ListField = 'ProductTitle'
        ListSource = Dm.DProduct
        ParentBiDiMode = False
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
    object GroupBox3: TGroupBox
      Left = 8
      Top = 255
      Width = 440
      Height = 213
      Caption = #1606#1605#1575#1610#1588' '#1575#1591#1604#1575#1593#1575#1578' '#1602#1601#1604
      TabOrder = 1
      DesignSize = (
        440
        213)
      object BtnShowData: TButton
        Left = 103
        Top = 173
        Width = 113
        Height = 34
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
        ReadOnly = True
        TabOrder = 1
      end
      object BtnCancel: TBitBtn
        Left = 20
        Top = 173
        Width = 78
        Height = 34
        Anchors = [akTop, akRight]
        Cancel = True
        Caption = #1575#1606#1589#1585#1575#1601
        ModalResult = 2
        TabOrder = 2
        OnClick = BtnCancelClick
        Glyph.Data = {
          DE010000424DDE01000000000000760000002800000024000000120000000100
          0400000000006801000000000000000000001000000000000000000000000000
          80000080000000808000800000008000800080800000C0C0C000808080000000
          FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
          333333333333333333333333000033338833333333333333333F333333333333
          0000333911833333983333333388F333333F3333000033391118333911833333
          38F38F333F88F33300003339111183911118333338F338F3F8338F3300003333
          911118111118333338F3338F833338F3000033333911111111833333338F3338
          3333F8330000333333911111183333333338F333333F83330000333333311111
          8333333333338F3333383333000033333339111183333333333338F333833333
          00003333339111118333333333333833338F3333000033333911181118333333
          33338333338F333300003333911183911183333333383338F338F33300003333
          9118333911183333338F33838F338F33000033333913333391113333338FF833
          38F338F300003333333333333919333333388333338FFF830000333333333333
          3333333333333333333888330000333333333333333333333333333333333333
          0000}
        NumGlyphs = 2
      end
    end
    object ChBoShowData: TCheckBox
      Left = 178
      Top = 232
      Width = 254
      Height = 17
      Caption = #1606#1605#1575#1610#1588' '#1605#1588#1582#1589#1575#1578' '#1602#1601#1604' '#1662#1587' '#1575#1586' '#1602#1585#1575#1585' '#1583#1575#1583' '#1575#1591#1604#1575#1593#1575#1578
      TabOrder = 2
    end
    object GroupBox2: TGroupBox
      Left = 1
      Top = 145
      Width = 451
      Height = 65
      Align = alTop
      Caption = #1581#1575#1604#1578#1607#1575#1610' '#1582#1575#1589
      TabOrder = 3
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
      object chbDeliverdCustomer: TCheckBox
        Left = 16
        Top = 32
        Width = 121
        Height = 17
        Caption = #1583#1585#1711#1586#1575#1585#1588' '#1604#1581#1575#1592' '#1588#1608#1583
        TabOrder = 2
      end
    end
    object btnRegisterDataInLock: TButton
      Left = 8
      Top = 222
      Width = 161
      Height = 30
      Anchors = [akTop, akRight]
      Caption = #1579#1576#1578' '#1575#1591#1604#1575#1593#1575#1578' '#1583#1585' '#1602#1601#1604' Enter '
      TabOrder = 4
      OnClick = btnRegisterDataInLockClick
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
    Left = 120
    Top = 16
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
    object QrSerialCustomerID: TIntegerField
      FieldName = 'CustomerID'
    end
    object QrSerialProductID: TWordField
      FieldName = 'ProductID'
    end
    object QrSerialCustomerDelivery: TIntegerField
      FieldName = 'CustomerDelivery'
    end
    object QrSerialUserID: TIntegerField
      FieldName = 'UserID'
    end
    object QrSerialWorkStationName: TStringField
      FieldName = 'WorkStationName'
    end
    object QrSerialWinOrDomainUserName: TStringField
      FieldName = 'WinOrDomainUserName'
      Size = 200
    end
    object QrSerialExpireDate: TStringField
      FieldName = 'ExpireDate'
      Size = 50
    end
  end
  object DSSerial: TDataSource
    DataSet = QrSerial
    Left = 192
    Top = 8
  end
  object ActionList1: TActionList
    Left = 88
    Top = 264
  end
  object QSaveLockInfo: TADOQuery
    Connection = Dm.YeganehConnection
    Parameters = <>
    Left = 169
    Top = 130
  end
  object QTemp: TADOQuery
    Connection = Dm.YeganehConnection
    Parameters = <>
    Left = 369
    Top = 170
  end
end
