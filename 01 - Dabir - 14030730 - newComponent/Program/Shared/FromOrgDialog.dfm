inherited FromOrgDialogF: TFromOrgDialogF
  Tag = 11
  Left = 353
  Top = 305
  BorderIcons = [biSystemMenu]
  BorderStyle = bsDialog
  Caption = #1608#1585#1608#1583' '#1575#1591#1604#1575#1593#1575#1578' '#1587#1605#1578
  ClientHeight = 241
  ClientWidth = 400
  Constraints.MaxHeight = 280
  Constraints.MaxWidth = 416
  Constraints.MinHeight = 275
  Constraints.MinWidth = 408
  OldCreateOrder = True
  PixelsPerInch = 96
  TextHeight = 13
  object pnlMain: TPanel [0]
    Left = 0
    Top = 0
    Width = 400
    Height = 241
    Align = alClient
    ParentColor = True
    TabOrder = 0
    object GroupBox1: TGroupBox
      Left = 1
      Top = 1
      Width = 398
      Height = 207
      Align = alClient
      Caption = #1575#1591#1604#1575#1593#1575#1578' '#1587#1575#1586#1605#1575#1606
      TabOrder = 0
      object Label1: TLabel
        Left = 305
        Top = 31
        Width = 15
        Height = 13
        Caption = #1705#1583':'
        Font.Charset = ARABIC_CHARSET
        Font.Color = clRed
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
      end
      object Label2: TLabel
        Left = 305
        Top = 56
        Width = 30
        Height = 13
        Caption = #1593#1606#1608#1575#1606':'
        Font.Charset = ARABIC_CHARSET
        Font.Color = clRed
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
      end
      object Label4: TLabel
        Left = 305
        Top = 106
        Width = 25
        Height = 13
        Caption = #1578#1604#1601#1606':'
        FocusControl = DBEdit4
      end
      object Label5: TLabel
        Left = 305
        Top = 156
        Width = 82
        Height = 13
        Caption = #1570#1583#1585#1587' '#1575#1604#1705#1578#1585#1608#1606#1610#1705#1610':'
      end
      object Label9: TLabel
        Left = 305
        Top = 81
        Width = 38
        Height = 13
        Caption = #1605#1587#1574#1608#1604':'
        Font.Charset = ARABIC_CHARSET
        Font.Color = clRed
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
      end
      object Label7: TLabel
        Left = 305
        Top = 131
        Width = 31
        Height = 13
        Caption = #1601#1575#1705#1587':'
        FocusControl = DBEdit7
      end
      object Label3: TLabel
        Left = 305
        Top = 181
        Width = 39
        Height = 13
        Caption = #1662#1610#1588' '#1705#1583':'
      end
      object DBEdit4: TDBEdit
        Left = 123
        Top = 102
        Width = 180
        Height = 21
        DataField = 'Phone'
        DataSource = DSForm
        TabOrder = 3
        OnEnter = TEditEnter
        OnExit = TEditExit
      end
      object DBEdit6: TDBEdit
        Left = 123
        Top = 152
        Width = 180
        Height = 21
        DataField = 'Email'
        DataSource = DSForm
        TabOrder = 5
        OnEnter = DBEdit6Enter
        OnExit = DBEdit6Exit
      end
      object DBEdit7: TDBEdit
        Left = 123
        Top = 127
        Width = 180
        Height = 21
        DataField = 'Fax'
        DataSource = DSForm
        TabOrder = 4
        OnEnter = TEditEnter
        OnExit = TEditExit
      end
      object DBECode: TDBEdit
        Left = 123
        Top = 27
        Width = 180
        Height = 21
        Ctl3D = True
        DataField = 'Code'
        DataSource = DSForm
        ParentCtl3D = False
        TabOrder = 0
      end
      object DBETitle: TDBEdit
        Left = 123
        Top = 52
        Width = 180
        Height = 21
        Ctl3D = True
        DataField = 'Title'
        DataSource = DSForm
        ParentCtl3D = False
        TabOrder = 1
        OnEnter = TEditEnter
        OnExit = TEditExit
      end
      object DBERespons: TDBEdit
        Left = 123
        Top = 80
        Width = 180
        Height = 21
        Ctl3D = True
        DataField = 'ResponsibleStaffer'
        DataSource = DSForm
        ParentCtl3D = False
        TabOrder = 2
        OnEnter = TEditEnter
        OnExit = TEditExit
      end
      object DBEdit1: TDBEdit
        Left = 123
        Top = 176
        Width = 180
        Height = 21
        DataField = 'PreCode'
        DataSource = DSForm
        TabOrder = 6
        OnEnter = DBEdit6Enter
        OnExit = DBEdit6Exit
      end
      object DBCheckBox1: TDBCheckBox
        Left = 10
        Top = 29
        Width = 110
        Height = 17
        Caption = #1593#1590#1608' '#1670#1575#1585#1578' '#1583#1575#1582#1604#1610
        DataField = 'IsInnerOrg'
        DataSource = DSForm
        TabOrder = 7
        ValueChecked = 'True'
        ValueUnchecked = 'False'
        Visible = False
      end
    end
    object Panel1: TPanel
      Left = 1
      Top = 208
      Width = 398
      Height = 32
      Align = alBottom
      ParentColor = True
      TabOrder = 1
      object BitBtn1: TAdvGlowButton
        Left = 290
        Top = 3
        Width = 75
        Height = 25
        Cursor = crHandPoint
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
        Left = 210
        Top = 3
        Width = 75
        Height = 25
        Cursor = crHandPoint
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
  end
  inherited DSForm: TDataSource
    DataSet = Fromorg
    Left = 88
  end
  object ActionManager: TActionManager
    Images = Dm.LetterImages
    Left = 177
    Top = 52
    StyleName = 'XP Style'
    object aEXIT: TAction
      Category = 'Internet'
      Caption = 'aEXIT'
      ImageIndex = 14
      ShortCut = 27
    end
  end
  object Fromorg: TADODataSet
    Connection = Dm.YeganehConnection
    CommandText = 'select * from fromorganizations where id=:id'
    Parameters = <
      item
        Name = 'id'
        DataType = ftString
        Size = 1
        Value = '1'
      end>
    Left = 83
    Top = 75
    object FromorgID: TAutoIncField
      FieldName = 'ID'
      ReadOnly = True
    end
    object FromorgTitle: TWideStringField
      Alignment = taRightJustify
      FieldName = 'Title'
      Size = 100
    end
    object FromorgParentID: TIntegerField
      FieldName = 'ParentID'
    end
    object FromorgPhone: TWideStringField
      Alignment = taRightJustify
      FieldName = 'Phone'
      Size = 30
    end
    object FromorgFax: TWideStringField
      Alignment = taRightJustify
      FieldName = 'Fax'
      Size = 30
    end
    object FromorgEmail: TWideStringField
      Alignment = taRightJustify
      FieldName = 'Email'
      Size = 30
    end
    object FromorgResponsibleStaffer: TWideStringField
      Alignment = taRightJustify
      FieldName = 'ResponsibleStaffer'
      Size = 50
    end
    object FromorgIsActive: TBooleanField
      Alignment = taRightJustify
      FieldName = 'IsActive'
    end
    object FromorgPreCode: TWideStringField
      Alignment = taRightJustify
      FieldName = 'PreCode'
    end
    object FromorgIsInnerOrg: TBooleanField
      Alignment = taRightJustify
      FieldName = 'IsInnerOrg'
    end
    object FromorgCode: TWideStringField
      Alignment = taRightJustify
      DisplayWidth = 50
      FieldName = 'Code'
      Size = 50
    end
    object FromorgUniqueID: TLargeintField
      FieldName = 'UniqueID'
    end
    object FromorgGroupID: TIntegerField
      FieldName = 'GroupID'
    end
  end
end
