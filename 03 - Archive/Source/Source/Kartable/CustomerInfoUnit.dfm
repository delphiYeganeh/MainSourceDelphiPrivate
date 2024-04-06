inherited frmCustomerInfo: TfrmCustomerInfo
  Left = 431
  Top = 204
  Caption = #1605#1588#1582#1589#1575#1578' '#1605#1588#1578#1585#1610
  ClientHeight = 390
  ClientWidth = 732
  Constraints.MinHeight = 370
  Constraints.MinWidth = 740
  OldCreateOrder = True
  OnActivate = FormActivate
  PixelsPerInch = 96
  TextHeight = 13
  object Label12: TLabel [0]
    Left = 686
    Top = 192
    Width = 43
    Height = 13
    Anchors = [akTop, akRight]
    Caption = ' '#1578#1608#1590#1610#1581#1575#1578
    Font.Charset = ARABIC_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object Label11: TLabel [1]
    Left = 674
    Top = 145
    Width = 28
    Height = 13
    Anchors = [akTop, akRight]
    Caption = ' '#1570#1583#1585#1587
    Font.Charset = ARABIC_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object Label7: TLabel [2]
    Left = 282
    Top = 14
    Width = 27
    Height = 13
    Anchors = [akTop, akRight]
    Caption = #1578#1604#1601#1606'1'
    Font.Charset = ARABIC_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object Label10: TLabel [3]
    Left = 674
    Top = 39
    Width = 50
    Height = 13
    Anchors = [akTop, akRight]
    Caption = #1606#1575'&'#1605' '#1587#1575#1586#1605#1575#1606
    FocusControl = DBEdit9
    Font.Charset = ARABIC_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object Label13: TLabel [4]
    Left = 674
    Top = 63
    Width = 53
    Height = 13
    Anchors = [akTop, akRight]
    Caption = #1591#1585#1601' '#1605#1603#1575#1578#1576#1607
    FocusControl = DBEdit5
  end
  object Label1: TLabel [5]
    Left = 674
    Top = 87
    Width = 33
    Height = 13
    Anchors = [akTop, akRight]
    Caption = #1605#1583#1610#1585#1610#1578
    FocusControl = DBEdit1
    Font.Charset = ARABIC_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object Label5: TLabel [6]
    Left = 674
    Top = 15
    Width = 53
    Height = 13
    Anchors = [akTop, akRight]
    Caption = #1603#1583' '#1587#1610#1587#1578#1605
    FocusControl = DBECustomerNo
  end
  object Label8: TLabel [7]
    Left = 674
    Top = 169
    Width = 44
    Height = 13
    Anchors = [akTop, akRight]
    Caption = #1705#1583' '#1662#1587#1578#1610
    FocusControl = DBEdit2
  end
  object Label9: TLabel [8]
    Left = 282
    Top = 110
    Width = 25
    Height = 13
    Anchors = [akTop, akRight]
    Caption = #1575#1610#1605#1610#1604
    FocusControl = DBEdit4
  end
  object Label14: TLabel [9]
    Left = 282
    Top = 38
    Width = 30
    Height = 13
    Anchors = [akTop, akRight]
    Caption = #1578#1604#1601#1606' 2'
    FocusControl = DBEdit7
  end
  object Label17: TLabel [10]
    Left = 282
    Top = 62
    Width = 28
    Height = 13
    Anchors = [akTop, akRight]
    Caption = #1607#1605#1585#1575#1607
    FocusControl = DBEdit10
  end
  object Label18: TLabel [11]
    Left = 282
    Top = 86
    Width = 27
    Height = 13
    Anchors = [akTop, akRight]
    Caption = #1601#1575#1705#1587
    FocusControl = DBEdit12
  end
  object Label16: TLabel [12]
    Left = 336
    Top = 169
    Width = 44
    Height = 13
    Anchors = [akTop, akRight]
    Caption = #1608#1576' '#1587#1575#1610#1578
    FocusControl = DBEdit8
  end
  object Label19: TLabel [13]
    Left = 358
    Top = 193
    Width = 16
    Height = 13
    Anchors = [akTop, akRight]
    Caption = #1585#1602#1576#1575
    Font.Charset = ARABIC_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object Label30: TLabel [14]
    Left = 493
    Top = 15
    Width = 51
    Height = 13
    Anchors = [akTop, akRight]
    Caption = #1603#1583' '#1605#1588#1578#1585#1610
    FocusControl = DBECustomerNo
  end
  object Label4: TLabel [15]
    Left = 88
    Top = 39
    Width = 30
    Height = 13
    Anchors = [akTop, akRight]
    Caption = #1583#1575#1582#1604#1610
    FocusControl = DBEdit7
  end
  object DBMemo1: TDBMemo [16]
    Left = 384
    Top = 208
    Width = 345
    Height = 175
    Anchors = [akTop, akRight, akBottom]
    BiDiMode = bdRightToLeft
    DataField = 'Notes'
    DataSource = DSForm
    ParentBiDiMode = False
    ReadOnly = True
    TabOrder = 0
  end
  object DBEdit11: TDBEdit [17]
    Left = 10
    Top = 143
    Width = 657
    Height = 21
    Anchors = [akTop, akRight]
    BiDiMode = bdRightToLeft
    DataField = 'Address'
    DataSource = DSForm
    ParentBiDiMode = False
    ReadOnly = True
    TabOrder = 1
  end
  object DBEdit6: TDBEdit [18]
    Left = 10
    Top = 12
    Width = 265
    Height = 21
    Anchors = [akTop, akRight]
    BiDiMode = bdRightToLeft
    DataField = 'Phone'
    DataSource = DSForm
    Font.Charset = ARABIC_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentBiDiMode = False
    ParentFont = False
    ReadOnly = True
    TabOrder = 2
  end
  object DBEdit9: TDBEdit [19]
    Left = 402
    Top = 37
    Width = 265
    Height = 21
    Anchors = [akTop, akRight]
    BiDiMode = bdRightToLeft
    DataField = 'CompanyName'
    DataSource = DSForm
    Font.Charset = ARABIC_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentBiDiMode = False
    ParentFont = False
    ReadOnly = True
    TabOrder = 3
  end
  object DBEdit5: TDBEdit [20]
    Left = 402
    Top = 61
    Width = 265
    Height = 21
    Anchors = [akTop, akRight]
    DataField = 'Treater'
    DataSource = DSForm
    ReadOnly = True
    TabOrder = 4
  end
  object DBEdit1: TDBEdit [21]
    Left = 402
    Top = 85
    Width = 265
    Height = 21
    Anchors = [akTop, akRight]
    BiDiMode = bdRightToLeft
    DataField = 'PersonTitle'
    DataSource = DSForm
    ParentBiDiMode = False
    ReadOnly = True
    TabOrder = 5
  end
  object DBECustomerNo: TDBEdit [22]
    Left = 555
    Top = 13
    Width = 112
    Height = 21
    Anchors = [akTop, akRight]
    BiDiMode = bdRightToLeft
    DataField = 'CustomerNo'
    DataSource = DSForm
    ParentBiDiMode = False
    ReadOnly = True
    TabOrder = 6
  end
  object DBEdit2: TDBEdit [23]
    Left = 402
    Top = 167
    Width = 265
    Height = 21
    Anchors = [akTop, akRight]
    DataField = 'PostalCode'
    DataSource = DSForm
    ReadOnly = True
    TabOrder = 7
  end
  object DBEdit4: TDBEdit [24]
    Left = 10
    Top = 108
    Width = 265
    Height = 21
    Anchors = [akTop, akRight]
    BiDiMode = bdLeftToRight
    DataField = 'EmailAddress'
    DataSource = DSForm
    ParentBiDiMode = False
    ReadOnly = True
    TabOrder = 8
  end
  object DBEdit7: TDBEdit [25]
    Left = 120
    Top = 37
    Width = 155
    Height = 21
    Anchors = [akTop, akRight]
    DataField = 'WorkPhone1'
    DataSource = DSForm
    Font.Charset = ARABIC_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    ReadOnly = True
    TabOrder = 9
  end
  object DBEdit10: TDBEdit [26]
    Left = 10
    Top = 61
    Width = 265
    Height = 21
    Anchors = [akTop, akRight]
    DataField = 'MobilePhone'
    DataSource = DSForm
    Font.Charset = ARABIC_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    ReadOnly = True
    TabOrder = 10
  end
  object DBEdit12: TDBEdit [27]
    Left = 10
    Top = 84
    Width = 265
    Height = 21
    Anchors = [akTop, akRight]
    DataField = 'FaxNumber'
    DataSource = DSForm
    Font.Charset = ARABIC_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    ReadOnly = True
    TabOrder = 11
  end
  object DBEdit8: TDBEdit [28]
    Left = 10
    Top = 167
    Width = 311
    Height = 21
    Anchors = [akTop, akRight]
    BiDiMode = bdLeftToRight
    DataField = 'WebSite'
    DataSource = DSForm
    ParentBiDiMode = False
    ReadOnly = True
    TabOrder = 12
  end
  object DBECustomerID: TDBEdit [29]
    Left = 402
    Top = 13
    Width = 87
    Height = 19
    TabStop = False
    Anchors = [akTop, akRight]
    BiDiMode = bdRightToLeft
    Color = 16772333
    Ctl3D = False
    DataField = 'CustomerID'
    DataSource = DSForm
    ParentBiDiMode = False
    ParentCtl3D = False
    ReadOnly = True
    TabOrder = 13
  end
  object DBMemo2: TDBMemo [30]
    Left = 10
    Top = 208
    Width = 366
    Height = 175
    Anchors = [akTop, akRight, akBottom]
    BiDiMode = bdRightToLeft
    DataField = 'competitiveNote'
    DataSource = DSForm
    ParentBiDiMode = False
    ReadOnly = True
    TabOrder = 14
  end
  object DBEdit3: TDBEdit [31]
    Left = 10
    Top = 37
    Width = 73
    Height = 21
    Anchors = [akTop, akRight]
    DataField = 'InnerPhone'
    DataSource = DSForm
    Font.Charset = ARABIC_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    ReadOnly = True
    TabOrder = 15
  end
  inherited DSForm: TDataSource
    DataSet = Dm.YDabir_Select_customer_By_CustomerID
    Left = 256
    Top = 56
  end
  inherited ActionList: TActionList
    Left = 48
    Top = 24
  end
  inherited Grid_PopupMenu: TPopupMenu
    Left = 103
    Top = 28
  end
end
