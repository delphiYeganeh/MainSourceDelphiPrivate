inherited FrAddUserTableDlg: TFrAddUserTableDlg
  Tag = 11
  Left = 549
  Top = 413
  BorderIcons = [biSystemMenu]
  BorderStyle = bsDialog
  Caption = #1575#1591#1604#1575#1593#1575#1578' '#1601#1585#1605' '#1575#1583#1575#1585#1610
  ClientHeight = 182
  ClientWidth = 410
  OldCreateOrder = True
  PixelsPerInch = 96
  TextHeight = 13
  object pnlMain: TPanel [0]
    Left = 0
    Top = 0
    Width = 410
    Height = 182
    Align = alClient
    ParentColor = True
    TabOrder = 0
    object Panel1: TPanel
      Left = 1
      Top = 140
      Width = 408
      Height = 41
      Align = alBottom
      ParentColor = True
      TabOrder = 0
      DesignSize = (
        408
        41)
      object BitBtn1: TAdvGlowButton
        Left = 312
        Top = 8
        Width = 75
        Height = 25
        Cursor = crHandPoint
        Anchors = [akTop, akRight]
        Caption = #1578#1575#1610#1610#1583
        Default = True
        Font.Charset = ARABIC_CHARSET
        Font.Color = clNavy
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ImageIndex = 59
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
        Left = 233
        Top = 8
        Width = 75
        Height = 25
        Cursor = crHandPoint
        Anchors = [akTop, akRight]
        Cancel = True
        Caption = #1575#1606#1589#1585#1575#1601
        Font.Charset = ARABIC_CHARSET
        Font.Color = clNavy
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ImageIndex = 1
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
    end
    object GroupBox1: TGroupBox
      Left = 1
      Top = 1
      Width = 408
      Height = 139
      Align = alClient
      Caption = #1601#1585#1605' '#1575#1583#1575#1585#1610
      TabOrder = 1
      DesignSize = (
        408
        139)
      object Label2: TLabel
        Left = 347
        Top = 24
        Width = 30
        Height = 13
        Anchors = [akTop, akRight]
        Caption = #1593#1606#1608#1575#1606':'
      end
      object Label3: TLabel
        Left = 347
        Top = 48
        Width = 30
        Height = 13
        Anchors = [akTop, akRight]
        Caption = #1705#1583' '#1575#1610#1586#1608
      end
      object Label1: TLabel
        Left = 347
        Top = 78
        Width = 49
        Height = 13
        Anchors = [akTop, akRight]
        Caption = #1578#1608#1590#1610#1581#1575#1578' 1'
      end
      object Label4: TLabel
        Left = 347
        Top = 102
        Width = 49
        Height = 13
        Anchors = [akTop, akRight]
        Caption = #1578#1608#1590#1610#1581#1575#1578' 2'
      end
      object Title: TDBEdit
        Left = 24
        Top = 20
        Width = 321
        Height = 21
        Anchors = [akLeft, akTop, akRight]
        Ctl3D = True
        DataField = 'Description'
        DataSource = DSForm
        ParentCtl3D = False
        TabOrder = 0
        OnEnter = TEditEnter
        OnExit = TEditExit
      end
      object DBEdit1: TDBEdit
        Left = 24
        Top = 45
        Width = 321
        Height = 21
        Anchors = [akLeft, akTop, akRight]
        Ctl3D = True
        DataField = 'TableCode'
        DataSource = DSForm
        ParentCtl3D = False
        TabOrder = 1
      end
      object DBEdit2: TDBEdit
        Left = 24
        Top = 74
        Width = 321
        Height = 21
        Anchors = [akLeft, akTop, akRight]
        Ctl3D = True
        DataField = 'UserField1'
        DataSource = DSForm
        ParentCtl3D = False
        TabOrder = 2
        OnEnter = TEditEnter
        OnExit = TEditExit
      end
      object DBEdit3: TDBEdit
        Left = 24
        Top = 99
        Width = 321
        Height = 21
        Anchors = [akLeft, akTop, akRight]
        Ctl3D = True
        DataField = 'UserField2'
        DataSource = DSForm
        ParentCtl3D = False
        TabOrder = 3
      end
    end
  end
  inherited DSForm: TDataSource
    DataSet = Dm.Get_userTable
    Left = 120
    Top = 24
  end
  inherited ActionList: TActionList
    Left = 56
    Top = 32
  end
end
