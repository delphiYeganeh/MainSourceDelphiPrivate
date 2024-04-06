inherited FmPrint: TFmPrint
  Left = 611
  Top = 117
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = #1601#1585#1605' '#1670#1575#1662' '#1578#1589#1575#1608#1610#1585
  ClientHeight = 343
  ClientWidth = 442
  Color = clBtnFace
  OldCreateOrder = True
  Scaled = False
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel [0]
    Left = 0
    Top = 0
    Width = 442
    Height = 302
    Align = alClient
    TabOrder = 0
    DesignSize = (
      442
      302)
    object GroupBox1: TGroupBox
      Left = 8
      Top = 1
      Width = 425
      Height = 51
      Caption = #1575#1606#1578#1582#1575#1576' '#1670#1575#1662#1711#1585' '#1608' '#1575#1576#1593#1575#1583' '#1578#1589#1608#1610#1585
      TabOrder = 0
      DesignSize = (
        425
        51)
      object Label1: TLabel
        Left = 330
        Top = 24
        Width = 63
        Height = 13
        Anchors = [akTop, akRight]
        Caption = #1575#1606#1578#1582#1575#1576' '#1670#1575#1662#1711#1585' :'
      end
      object CoBoPrinters: TComboBox
        Left = 56
        Top = 21
        Width = 272
        Height = 21
        Anchors = [akTop, akRight]
        BiDiMode = bdLeftToRight
        ItemHeight = 13
        ParentBiDiMode = False
        TabOrder = 0
      end
    end
    object GroupBox2: TGroupBox
      Left = 8
      Top = 143
      Width = 425
      Height = 145
      Anchors = [akTop, akRight]
      Caption = #1578#1593#1610#1610#1606' '#1589#1601#1581#1575#1578' '#1580#1607#1578' '#1670#1575#1662
      TabOrder = 1
      DesignSize = (
        425
        145)
      object Label3: TLabel
        Left = 226
        Top = 86
        Width = 37
        Height = 13
        Anchors = [akTop, akRight]
        Caption = #1578#1575' '#1589#1601#1581#1607
      end
      object LblPgCount: TLabel
        Left = 272
        Top = 59
        Width = 31
        Height = 13
        Anchors = [akTop, akRight]
        Caption = '('#1578#1593#1583#1575#1583')'
      end
      object Label4: TLabel
        Left = 16
        Top = 115
        Width = 56
        Height = 13
        Anchors = [akTop, akRight]
        BiDiMode = bdLeftToRight
        Caption = '1,3,5 : '#1605#1579#1575#1604
        ParentBiDiMode = False
      end
      object RB2: TRadioButton
        Left = 307
        Top = 58
        Width = 105
        Height = 17
        Anchors = [akTop, akRight]
        Caption = #1670#1575#1662' '#1578#1605#1575#1605' '#1589#1601#1581#1575#1578
        TabOrder = 0
      end
      object RB3: TRadioButton
        Left = 328
        Top = 85
        Width = 84
        Height = 17
        Anchors = [akTop, akRight]
        Caption = #1670#1575#1662' '#1575#1586' '#1589#1601#1581#1607
        TabOrder = 1
      end
      object SEStartPg: TSpinEdit
        Left = 272
        Top = 83
        Width = 57
        Height = 22
        Anchors = [akTop, akRight]
        MaxValue = 500000
        MinValue = 1
        TabOrder = 2
        Value = 1
        OnChange = SEStartPgChange
      end
      object SEEndtPg: TSpinEdit
        Left = 160
        Top = 83
        Width = 57
        Height = 22
        Anchors = [akTop, akRight]
        MaxValue = 500000
        MinValue = 1
        TabOrder = 3
        Value = 1
      end
      object RB4: TRadioButton
        Left = 276
        Top = 112
        Width = 136
        Height = 17
        Anchors = [akTop, akRight]
        Caption = #1670#1575#1662' '#1589#1601#1581#1575#1578' '#1578#1593#1610#1610#1606' '#1588#1583#1607
        TabOrder = 4
      end
      object EdtRandomPage: TEdit
        Left = 76
        Top = 111
        Width = 201
        Height = 21
        Anchors = [akTop, akRight]
        BiDiMode = bdLeftToRight
        ParentBiDiMode = False
        TabOrder = 5
        OnEnter = EdtRandomPageEnter
        OnExit = EdtRandomPageExit
        OnKeyPress = EdtRandomPageKeyPress
      end
      object RB1: TRadioButton
        Left = 307
        Top = 32
        Width = 105
        Height = 17
        Anchors = [akTop, akRight]
        Caption = #1670#1575#1662' '#1589#1601#1581#1607' '#1580#1575#1585#1610
        Checked = True
        TabOrder = 6
        TabStop = True
      end
    end
    object GroupBox3: TGroupBox
      Left = 8
      Top = 56
      Width = 425
      Height = 81
      Anchors = [akTop, akRight]
      Caption = #1578#1593#1610#1610#1606' '#1575#1576#1593#1575#1583' '#1578#1589#1608#1610#1585
      TabOrder = 2
      DesignSize = (
        425
        81)
      object Label2: TLabel
        Left = 330
        Top = 23
        Width = 55
        Height = 13
        Anchors = [akTop, akRight]
        Caption = #1575#1576#1593#1575#1583' '#1578#1589#1608#1610#1585' :'
      end
      object Label6: TLabel
        Left = 82
        Top = 49
        Width = 35
        Height = 13
        Anchors = [akTop, akRight]
        Caption = ': '#1593#1585#1590' '
      end
      object Label5: TLabel
        Left = 214
        Top = 49
        Width = 33
        Height = 13
        Anchors = [akTop, akRight]
        Caption = ': '#1575#1585#1578#1601#1575#1593
      end
      object Label7: TLabel
        Left = 112
        Top = 23
        Width = 51
        Height = 13
        Anchors = [akTop, akRight]
        Caption = '('#1605#1610#1604#1610' '#1605#1578#1585')'
      end
      object Label8: TLabel
        Left = 204
        Top = 23
        Width = 31
        Height = 13
        BiDiMode = bdRightToLeft
        Caption = 'Label8'
        ParentBiDiMode = False
      end
      object Label9: TLabel
        Left = 330
        Top = 48
        Width = 85
        Height = 13
        Anchors = [akTop, akRight]
        Caption = #1575#1589#1604#1575#1581' '#1575#1576#1593#1575#1583' '#1578#1589#1608#1610#1585' :'
      end
      object Label10: TLabel
        Left = 25
        Top = 49
        Width = 51
        Height = 13
        Anchors = [akTop, akRight]
        Caption = '('#1605#1610#1604#1610' '#1605#1578#1585')'
      end
      object CoBoPageSize: TComboBox
        Left = 252
        Top = 19
        Width = 75
        Height = 21
        Anchors = [akTop, akRight]
        BiDiMode = bdLeftToRight
        ItemHeight = 13
        ItemIndex = 0
        ParentBiDiMode = False
        TabOrder = 0
        Text = 'A4'
        OnChange = CoBoPageSizeChange
        Items.Strings = (
          'A4'
          'A3'
          'A5'
          'B5'
          'B4'
          'B3'
          #1575#1576#1593#1575#1583' '#1608#1575#1602#1593#1610)
      end
      object SEWidth: TSpinEdit
        Left = 120
        Top = 45
        Width = 75
        Height = 22
        Anchors = [akTop, akRight]
        MaxValue = 0
        MinValue = 0
        TabOrder = 1
        Value = 0
      end
      object SEHight: TSpinEdit
        Left = 252
        Top = 45
        Width = 75
        Height = 22
        Anchors = [akTop, akRight]
        MaxValue = 0
        MinValue = 0
        TabOrder = 2
        Value = 0
      end
    end
  end
  object Panel2: TPanel [1]
    Left = 0
    Top = 302
    Width = 442
    Height = 41
    Align = alBottom
    TabOrder = 1
    DesignSize = (
      442
      41)
    object SBPrint: TSpeedButton
      Left = 353
      Top = 7
      Width = 75
      Height = 28
      Anchors = [akTop, akRight]
      Caption = #1670#1575#1662
      OnClick = SBPrintClick
    end
    object SBCancel: TSpeedButton
      Left = 274
      Top = 7
      Width = 75
      Height = 28
      Hint = #1575#1606#1589#1585#1575#1601' '#1575#1586' '#1670#1575#1662
      Caption = #1578#1608#1602#1601' '#1670#1575#1662
      ParentShowHint = False
      ShowHint = True
      OnClick = SBCancelClick
    end
    object SBExit: TSpeedButton
      Left = 17
      Top = 7
      Width = 75
      Height = 28
      Caption = #1582#1585#1608#1580
      OnClick = SBExitClick
    end
  end
  inherited DSForm: TDataSource
    Left = 24
    Top = 72
  end
  inherited ActionList: TActionList
    Left = 24
    Top = 16
  end
  inherited xpWindow1: TxpWindow
    Left = 24
    Top = 128
  end
end
