inherited FrAddTimeSheet: TFrAddTimeSheet
  Left = 613
  Top = 164
  BorderStyle = bsToolWindow
  Caption = #1579#1576#1578' '#1578#1575#1585#1610#1582' '#1608#1585#1608#1583' '#1608' '#1582#1585#1608#1580
  ClientHeight = 255
  ClientWidth = 403
  OldCreateOrder = True
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel [0]
    Left = 0
    Top = 0
    Width = 403
    Height = 214
    Align = alClient
    TabOrder = 0
    DesignSize = (
      403
      214)
    object Label1: TLabel
      Left = 337
      Top = 9
      Width = 53
      Height = 13
      Anchors = [akTop, akRight]
      Caption = #1587#1575#1593#1578' '#1608#1585#1608#1583
      FocusControl = DBEdit1
    end
    object Label2: TLabel
      Left = 337
      Top = 33
      Width = 24
      Height = 13
      Anchors = [akTop, akRight]
      Caption = #1578#1575#1585#1610#1582' '
      FocusControl = DBEdit2
    end
    object Label3: TLabel
      Left = 337
      Top = 57
      Width = 58
      Height = 13
      Anchors = [akTop, akRight]
      Caption = #1587#1575#1593#1578' '#1582#1585#1608#1580
      FocusControl = DBEdit3
    end
    object Label4: TLabel
      Left = 337
      Top = 81
      Width = 40
      Height = 13
      Anchors = [akTop, akRight]
      Caption = #1578#1608#1590#1610#1581#1575#1578
    end
    object status: TLabel
      Left = 295
      Top = 192
      Width = 39
      Height = 13
      Anchors = [akTop, akRight]
      Caption = #1579#1576#1578' '#1608#1585#1608#1583
      Font.Charset = ARABIC_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object DBEdit1: TDBEdit
      Left = 282
      Top = 8
      Width = 50
      Height = 21
      TabStop = False
      Anchors = [akTop, akRight]
      DataField = 'EnterTime'
      DataSource = Dm.Dselect_TimeSheet
      ReadOnly = True
      TabOrder = 0
    end
    object DBEdit2: TDBEdit
      Left = 252
      Top = 32
      Width = 80
      Height = 21
      TabStop = False
      Anchors = [akTop, akRight]
      DataField = 'WorkDate'
      DataSource = Dm.Dselect_TimeSheet
      ReadOnly = True
      TabOrder = 1
    end
    object DBEdit3: TDBEdit
      Left = 282
      Top = 56
      Width = 50
      Height = 21
      TabStop = False
      Anchors = [akTop, akRight]
      DataField = 'ExitTime'
      DataSource = Dm.Dselect_TimeSheet
      ReadOnly = True
      TabOrder = 2
    end
    object DBMemo1: TDBMemo
      Left = 11
      Top = 80
      Width = 321
      Height = 106
      Anchors = [akTop, akRight]
      DataField = 'Comment'
      DataSource = Dm.Dselect_TimeSheet
      TabOrder = 3
    end
  end
  object Panel2: TPanel [1]
    Left = 0
    Top = 214
    Width = 403
    Height = 41
    Align = alBottom
    TabOrder = 1
    DesignSize = (
      403
      41)
    object Button2: TButton
      Left = 127
      Top = 6
      Width = 70
      Height = 25
      Anchors = [akTop, akRight]
      Caption = #1575#1606#1589#1585#1575#1601
      TabOrder = 0
      OnClick = Button2Click
    end
    object Button1: TButton
      Left = 205
      Top = 6
      Width = 70
      Height = 25
      Anchors = [akTop, akRight]
      Caption = #1578#1575#1610#1610#1583
      TabOrder = 1
      OnClick = Button1Click
    end
  end
  inherited DSForm: TDataSource
    Left = 200
    Top = 88
  end
  inherited ActionList: TActionList
    Top = 136
  end
end
