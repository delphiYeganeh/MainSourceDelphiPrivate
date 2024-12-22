inherited FrAddShortCut: TFrAddShortCut
  Tag = 11
  Left = 417
  Top = 259
  BorderIcons = [biSystemMenu]
  BorderStyle = bsDialog
  Caption = #1575#1590#1575#1601#1607' '#1705#1585#1583#1606' '#1705#1604#1610#1583' '#1605#1610#1575#1606#1576#1585
  ClientHeight = 136
  ClientWidth = 392
  Constraints.MaxHeight = 175
  Constraints.MaxWidth = 408
  Constraints.MinHeight = 170
  Constraints.MinWidth = 400
  OldCreateOrder = True
  PixelsPerInch = 96
  TextHeight = 13
  object pnlMain: TPanel [0]
    Left = 0
    Top = 0
    Width = 392
    Height = 136
    Align = alClient
    ParentColor = True
    TabOrder = 0
    object Panel2: TPanel
      Left = 1
      Top = 1
      Width = 390
      Height = 93
      Align = alClient
      ParentColor = True
      TabOrder = 0
      object GroupBox1: TGroupBox
        Left = 10
        Top = 11
        Width = 379
        Height = 81
        Caption = #1705#1604#1610#1583#1607#1575#1610' '#1605#1610#1575#1606#1576#1585
        TabOrder = 0
        DesignSize = (
          379
          81)
        object Label2: TLabel
          Left = 322
          Top = 23
          Width = 18
          Height = 13
          Anchors = [akTop, akRight]
          Caption = #1605#1578#1606
        end
        object Label1: TLabel
          Left = 322
          Top = 51
          Width = 47
          Height = 13
          Anchors = [akTop, akRight]
          Caption = #1705#1604#1610#1583' '#1605#1610#1575#1606#1576#1585
        end
        object Label3: TLabel
          Left = 240
          Top = 53
          Width = 26
          Height = 13
          Anchors = [akTop, akRight]
          BiDiMode = bdLeftToRight
          Caption = 'ALT+'
          ParentBiDiMode = False
        end
        object Title: TDBEdit
          Left = 12
          Top = 20
          Width = 305
          Height = 21
          Anchors = [akTop, akRight]
          Ctl3D = True
          DataField = 'keyText'
          DataSource = DSForm
          ParentCtl3D = False
          TabOrder = 0
          OnEnter = TEditEnter
          OnExit = TEditExit
        end
        object Key: TDBComboBox
          Left = 269
          Top = 48
          Width = 48
          Height = 21
          Anchors = [akTop, akRight]
          BiDiMode = bdLeftToRight
          DataField = 'altKey'
          DataSource = DSForm
          ItemHeight = 13
          Items.Strings = (
            '0'
            '1'
            '2'
            '3'
            '4'
            '5'
            '6'
            '7'
            '8'
            '9'
            'A'
            'B'
            'C'
            'D'
            'E'
            'F'
            'G'
            'H'
            'I'
            'J'
            'K'
            'L'
            'M'
            'N'
            'P'
            'Q'
            'O'
            'R'
            'S'
            'T'
            'U'
            'V'
            'W'
            'X'
            'Y'
            'Z'
            '+'
            '-'
            '*'
            '/')
          ParentBiDiMode = False
          TabOrder = 1
        end
      end
    end
    object Panel1: TPanel
      Left = 1
      Top = 94
      Width = 390
      Height = 41
      Align = alBottom
      ParentColor = True
      TabOrder = 1
      DesignSize = (
        390
        41)
      object BitBtn1: TAdvGlowButton
        Left = 299
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
        Left = 221
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
        ImageIndex = 2
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
    DataSet = Dm.UserShortCut
    Left = 136
    Top = 40
  end
  inherited ActionList: TActionList
    Left = 64
    Top = 40
  end
  inherited xpWindow1: TxpWindow
    Left = 200
    Top = 32
  end
end
