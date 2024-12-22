inherited SecChange: TSecChange
  Tag = 1837
  Left = 616
  Top = 275
  AutoScroll = False
  BorderIcons = [biSystemMenu]
  Caption = #1578#1594#1610#1610#1585' '#1576#1575#1610#1711#1575#1606#1610
  ClientHeight = 84
  ClientWidth = 335
  Constraints.MaxHeight = 123
  Constraints.MaxWidth = 400
  Constraints.MinHeight = 118
  Constraints.MinWidth = 343
  OldCreateOrder = True
  PixelsPerInch = 96
  TextHeight = 13
  object pnlMain: TPanel [0]
    Left = 0
    Top = 0
    Width = 335
    Height = 84
    Align = alClient
    ParentColor = True
    TabOrder = 0
    object Panel2: TPanel
      Left = 1
      Top = 1
      Width = 333
      Height = 42
      Align = alClient
      ParentColor = True
      TabOrder = 0
      DesignSize = (
        333
        42)
      object Label1: TLabel
        Left = 253
        Top = 14
        Width = 61
        Height = 13
        Anchors = [akTop, akRight]
        Caption = #1576#1575#1610#1711#1575#1606#1610' '#1601#1593#1604#1610
      end
      object DBLookupComboBox1: TDBLookupComboBox
        Left = 16
        Top = 13
        Width = 229
        Height = 21
        Anchors = [akLeft, akTop, akRight]
        BiDiMode = bdLeftToRight
        KeyField = 'SecId'
        ListField = 'SecTitle'
        ListSource = dUserSecs
        ParentBiDiMode = False
        TabOrder = 0
      end
    end
    object Panel1: TPanel
      Left = 1
      Top = 43
      Width = 333
      Height = 40
      Align = alBottom
      ParentColor = True
      TabOrder = 1
      DesignSize = (
        333
        40)
      object BitBtn2: TAdvGlowButton
        Left = 168
        Top = 7
        Width = 75
        Height = 28
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
        Left = 89
        Top = 7
        Width = 75
        Height = 28
        Cursor = crHandPoint
        Anchors = [akTop, akRight]
        Cancel = True
        Caption = #1575#1606#1589#1585#1575#1601
        Font.Charset = ARABIC_CHARSET
        Font.Color = clNavy
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ImageIndex = 47
        Images = Dm.ImageList_MainNew
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
  end
  inherited DSForm: TDataSource
    Top = 40
  end
  inherited ActionList: TActionList
    Left = 136
    Top = 8
  end
  inherited xpWindow1: TxpWindow
    Left = 184
    Top = 16
  end
  object dUserSecs: TDataSource
    DataSet = Dm.UserSecs
    Left = 72
    Top = 16
  end
  object ADOStoredProc1: TADOStoredProc
    Connection = Dm.YeganehConnection
    ProcedureName = 'PRCTransferletterToSecretariats'
    Parameters = <
      item
        Name = '@LetterId'
        DataType = ftInteger
        Value = Null
      end
      item
        Name = '@SecID'
        DataType = ftInteger
        Value = Null
      end>
    Left = 272
    Top = 36
  end
end
