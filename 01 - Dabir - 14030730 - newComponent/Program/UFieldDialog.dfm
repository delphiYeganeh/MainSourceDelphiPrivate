inherited FrFieldDialog: TFrFieldDialog
  Left = 761
  Top = 328
  BorderIcons = []
  Caption = #1575#1591#1604#1575#1593#1575#1578' '#1601#1610#1604#1583
  ClientHeight = 206
  ClientWidth = 435
  OldCreateOrder = True
  PixelsPerInch = 96
  TextHeight = 13
  object pnlMain: TPanel [0]
    Left = 0
    Top = 0
    Width = 435
    Height = 206
    Align = alClient
    ParentColor = True
    TabOrder = 0
    object Panel1: TPanel
      Left = 1
      Top = 164
      Width = 433
      Height = 41
      Align = alBottom
      ParentColor = True
      TabOrder = 0
      DesignSize = (
        433
        41)
      object BitBtn2: TAdvGlowButton
        Left = 264
        Top = 10
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
        TabOrder = 0
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
      object BitBtn1: TAdvGlowButton
        Left = 344
        Top = 10
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
        ModalResult = 1
        NotesFont.Charset = DEFAULT_CHARSET
        NotesFont.Color = clWindowText
        NotesFont.Height = -11
        NotesFont.Name = 'Tahoma'
        NotesFont.Style = []
        ParentFont = False
        TabOrder = 1
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
    end
    object GroupBox1: TGroupBox
      Left = 1
      Top = 1
      Width = 433
      Height = 163
      Align = alClient
      Caption = #1605#1588#1582#1589#1575#1578' '#1601#1610#1604#1583
      Font.Charset = ARABIC_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 1
      DesignSize = (
        433
        163)
      object Label5: TLabel
        Left = 336
        Top = 90
        Width = 70
        Height = 14
        Anchors = [akTop, akRight]
        Caption = #1578#1585#1578#1610#1576' '#1606#1605#1575#1610#1588
      end
      object Label2: TLabel
        Left = 332
        Top = 30
        Width = 70
        Height = 14
        Anchors = [akTop, akRight]
        Caption = #1606#1575#1605' '#1601#1610#1604#1583
        FocusControl = DBEdit2
      end
      object Label6: TLabel
        Left = 334
        Top = 60
        Width = 70
        Height = 14
        Anchors = [akTop, akRight]
        Caption = #1606#1608#1593' '#1601#1610#1604#1583
        FocusControl = FieldType
      end
      object ReferLabel: TLabel
        Left = 334
        Top = 124
        Width = 70
        Height = 14
        Anchors = [akTop, akRight]
        Caption = #1580#1583#1608#1604' '#1605#1585#1580#1593
        FocusControl = ReferField
      end
      object DBEdit2: TDBEdit
        Left = 24
        Top = 26
        Width = 300
        Height = 22
        Anchors = [akLeft, akTop, akRight]
        DataField = 'Description'
        DataSource = DSForm
        TabOrder = 0
      end
      object DBEdit5: TDBEdit
        Left = 264
        Top = 90
        Width = 60
        Height = 22
        Anchors = [akLeft, akTop, akRight]
        DataField = 'order'
        DataSource = DSForm
        TabOrder = 2
      end
      object FieldType: TDBLookupComboBox
        Left = 24
        Top = 58
        Width = 300
        Height = 22
        Anchors = [akLeft, akTop, akRight]
        BiDiMode = bdLeftToRight
        DataField = 'FieldTypeTitle'
        DataSource = DSForm
        ParentBiDiMode = False
        TabOrder = 1
        OnClick = FieldTypeClick
      end
      object ReferField: TDBLookupComboBox
        Left = 24
        Top = 122
        Width = 300
        Height = 22
        Anchors = [akLeft, akTop, akRight]
        BiDiMode = bdLeftToRight
        DataField = 'ReferenceTanleTitle'
        DataSource = DSForm
        ParentBiDiMode = False
        TabOrder = 3
      end
    end
  end
  inherited DSForm: TDataSource
    DataSet = FrTableFields.Get_UserFields_By_TableID
  end
  inherited Timer1sssss: TTimer
    Left = 48
    Top = 60
  end
  inherited ApplicationEvents1: TApplicationEvents
    Top = 179
  end
  object QUpd: TADOQuery
    Connection = Dm.YeganehConnection
    Parameters = <>
    Left = 152
    Top = 64
  end
  object QGetMaxOrder: TADOQuery
    Connection = Dm.YeganehConnection
    Parameters = <>
    Left = 112
    Top = 24
    object QGetMaxOrdernewOrder: TIntegerField
      FieldName = 'newOrder'
      ReadOnly = True
    end
  end
end
