inherited FrFinancialNoteDetail_New: TFrFinancialNoteDetail_New
  Left = 737
  Top = 429
  Width = 617
  Height = 160
  VertScrollBar.Position = 4
  Caption = 'FrFinancialNoteDetail_New'
  Color = clBtnFace
  OldCreateOrder = True
  PixelsPerInch = 96
  TextHeight = 13
  object FrFinancialNoteDetail: TGroupBox [0]
    Left = 0
    Top = -4
    Width = 584
    Height = 126
    Align = alTop
    Caption = #1575#1591#1604#1575#1593#1575#1578' '#1670#1705' '#1548' '#1587#1601#1578#1607' '#1610#1575' '#1581#1608#1575#1604#1607
    Color = 15985624
    ParentColor = False
    TabOrder = 0
    DesignSize = (
      584
      126)
    object Label3: TLabel
      Left = 237
      Top = 20
      Width = 44
      Height = 13
      Anchors = [akTop, akRight]
      Caption = #1579#1576#1578' '#1705#1606#1606#1583#1607
    end
    object Label4: TLabel
      Left = 401
      Top = 20
      Width = 20
      Height = 13
      Anchors = [akTop, akRight]
      Caption = #1605#1576#1604#1594
    end
    object Label9: TLabel
      Left = 530
      Top = 20
      Width = 39
      Height = 13
      Anchors = [akTop, akRight]
      Caption = #1606#1608#1593' '#1587#1606#1583
    end
    object SpeedButton1: TSpeedButton
      Left = 21
      Top = 11
      Width = 59
      Height = 22
      Anchors = [akTop, akRight]
      Caption = #1608#1610#1585#1575#1610#1588
      OnClick = SpeedButton1Click
    end
    object Label1: TLabel
      Left = 529
      Top = 45
      Width = 53
      Height = 13
      Anchors = [akTop, akRight]
      Caption = #1605#1608#1590#1608#1593' '#1670#1705
    end
    object NoteType: TDBEdit
      Left = 424
      Top = 16
      Width = 102
      Height = 21
      Anchors = [akTop, akRight]
      DataField = 'FinancialNoteTypeTitle'
      DataSource = dm.DFinancialNote_Master
      Enabled = False
      ReadOnly = True
      TabOrder = 0
    end
    object DBEdit4: TDBEdit
      Left = 284
      Top = 16
      Width = 98
      Height = 21
      Anchors = [akTop, akRight]
      DataField = 'Amount'
      DataSource = dm.DFinancialNote_Master
      Enabled = False
      ReadOnly = True
      TabOrder = 2
    end
    object DBEMatureDate: TDBEdit
      Left = 153
      Top = 16
      Width = 80
      Height = 21
      Anchors = [akTop, akRight]
      BiDiMode = bdLeftToRight
      Color = clWhite
      DataField = 'UserConfirmer_Look'
      DataSource = dm.DFinancialNote_Master
      Enabled = False
      Font.Charset = ARABIC_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentBiDiMode = False
      ParentFont = False
      TabOrder = 1
    end
    object DBEdit1: TDBEdit
      Left = 81
      Top = 42
      Width = 446
      Height = 21
      Anchors = [akTop, akRight]
      DataField = 'NoteSubject'
      DataSource = dm.DFinancialNote_Master
      Enabled = False
      ReadOnly = True
      TabOrder = 3
    end
    object DBGrid1: TDBGrid
      Left = 2
      Top = 66
      Width = 580
      Height = 58
      Align = alBottom
      Color = 15985624
      DataSource = dm.DFinancialNote_Detail
      Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit]
      TabOrder = 4
      TitleFont.Charset = ARABIC_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
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
          Width = 112
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
end
