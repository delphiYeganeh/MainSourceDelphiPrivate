inherited FrFinancialNoteDetail_New: TFrFinancialNoteDetail_New
  Left = 737
  Top = 429
  Width = 624
  Height = 197
  Caption = 'FrFinancialNoteDetail_New'
  Color = clBtnFace
  OldCreateOrder = True
  PixelsPerInch = 96
  TextHeight = 13
  object FrFinancialNoteDetail: TGroupBox [0]
    Left = 0
    Top = 0
    Width = 608
    Height = 158
    Align = alClient
    Caption = #1575#1591#1604#1575#1593#1575#1578' '#1670#1705' '#1548' '#1587#1601#1578#1607' '#1610#1575' '#1581#1608#1575#1604#1607
    Color = 15985624
    Font.Charset = ARABIC_CHARSET
    Font.Color = clWindowText
    Font.Height = -12
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentColor = False
    ParentFont = False
    TabOrder = 0
    DesignSize = (
      608
      158)
    object Label3: TLabel
      Left = 242
      Top = 22
      Width = 49
      Height = 14
      Anchors = [akTop, akRight]
      Caption = #1579#1576#1578' '#1705#1606#1606#1583#1607
      Font.Charset = ARABIC_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object Label4: TLabel
      Left = 403
      Top = 22
      Width = 21
      Height = 14
      Anchors = [akTop, akRight]
      Caption = #1605#1576#1604#1594
      Font.Charset = ARABIC_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object Label9: TLabel
      Left = 554
      Top = 22
      Width = 42
      Height = 14
      Anchors = [akTop, akRight]
      Caption = #1606#1608#1593' '#1587#1606#1583
      Font.Charset = ARABIC_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object Label1: TLabel
      Left = 540
      Top = 60
      Width = 56
      Height = 14
      Anchors = [akTop, akRight]
      Caption = #1605#1608#1590#1608#1593' '#1670#1705
      Font.Charset = ARABIC_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object SpeedButton1: TAdvGlowButton
      Left = 6
      Top = 13
      Width = 90
      Height = 25
      Caption = #1608#1610#1585#1575#1610#1588
      Font.Charset = ARABIC_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Tahoma'
      Font.Style = []
      ImageIndex = 2
      Images = dm.ImageList_MainNew
      NotesFont.Charset = DEFAULT_CHARSET
      NotesFont.Color = clWindowText
      NotesFont.Height = -11
      NotesFont.Name = 'Tahoma'
      NotesFont.Style = []
      ParentFont = False
      TabOrder = 4
      OnClick = SpeedButton1Click
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
    object NoteType: TDBEdit
      Left = 436
      Top = 16
      Width = 102
      Height = 22
      Anchors = [akTop, akRight]
      DataField = 'FinancialNoteTypeTitle'
      DataSource = dm.DFinancialNote_Master
      Enabled = False
      Font.Charset = ARABIC_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      ReadOnly = True
      TabOrder = 0
    end
    object DBEdit4: TDBEdit
      Left = 298
      Top = 16
      Width = 98
      Height = 22
      Anchors = [akTop, akRight]
      DataField = 'Amount'
      DataSource = dm.DFinancialNote_Master
      Enabled = False
      Font.Charset = ARABIC_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      ReadOnly = True
      TabOrder = 2
    end
    object DBEMatureDate: TDBEdit
      Left = 108
      Top = 16
      Width = 131
      Height = 22
      Anchors = [akTop, akRight]
      BiDiMode = bdLeftToRight
      Color = clWhite
      DataField = 'UserConfirmer_Look'
      DataSource = dm.DFinancialNote_Master
      Enabled = False
      Font.Charset = ARABIC_CHARSET
      Font.Color = clBlack
      Font.Height = -12
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentBiDiMode = False
      ParentFont = False
      TabOrder = 1
    end
    object DBEdit1: TDBEdit
      Left = 38
      Top = 54
      Width = 500
      Height = 22
      Anchors = [akTop, akRight]
      DataField = 'NoteSubject'
      DataSource = dm.DFinancialNote_Master
      Enabled = False
      Font.Charset = ARABIC_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      ReadOnly = True
      TabOrder = 3
    end
    object DBGrid1: TDBGrid
      Left = 2
      Top = 92
      Width = 604
      Height = 64
      Align = alBottom
      Anchors = [akLeft, akTop, akRight, akBottom]
      Color = 16513264
      DataSource = dm.DFinancialNote_Detail
      Font.Charset = ARABIC_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Tahoma'
      Font.Style = []
      Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit]
      ParentFont = False
      TabOrder = 5
      TitleFont.Charset = ARABIC_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -12
      TitleFont.Name = 'Tahoma'
      TitleFont.Style = []
      Columns = <
        item
          Expanded = False
          FieldName = 'NoteNo'
          Title.Caption = #1588#1605#1575#1585#1607' '#1670#1705
          Width = 130
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'Amount'
          Title.Caption = #1605#1576#1604#1594
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'NoteDate'
          Title.Caption = #1578#1575#1585#1610#1582
          Width = 83
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'BankAccountNo'
          Title.Caption = #1588#1605#1575#1585#1607' '#1581#1587#1575#1576
          Width = 105
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'NoteDescription'
          Title.Caption = #1588#1585#1581
          Width = 135
          Visible = True
        end>
    end
  end
  inherited ahmadvand: TActionList
    Left = 37
    Top = 227
  end
  inherited Grid_PopupMenu: TPopupMenu
    Left = 151
    Top = 244
  end
  inherited qSetting: TADOQuery
    Left = 16
    Top = 104
  end
end
