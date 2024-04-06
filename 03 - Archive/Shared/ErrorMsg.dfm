object FErrorMsg: TFErrorMsg
  Left = 439
  Top = 112
  Width = 678
  Height = 423
  BiDiMode = bdRightToLeft
  BorderIcons = [biSystemMenu, biMaximize]
  Caption = #1605#1583#1610#1585#1610#1578' '#1662#1610#1594#1575#1605' '#1607#1575#1610' '#1582#1591#1575
  Color = 16377053
  Constraints.MinHeight = 400
  Constraints.MinWidth = 678
  Font.Charset = ARABIC_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  ParentBiDiMode = False
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object Panel2: TPanel
    Left = 0
    Top = 105
    Width = 670
    Height = 284
    Align = alClient
    Caption = 'Panel2'
    TabOrder = 1
    object YDBGrid1: TYDBGrid
      Left = 1
      Top = 1
      Width = 668
      Height = 282
      Cursor = crHandPoint
      Align = alClient
      Color = 15532031
      DataSource = DErrorMessage
      TabOrder = 0
      TitleFont.Charset = ARABIC_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'Tahoma'
      TitleFont.Style = []
      YeganehColor = True
      YeganehFinish = False
      PageNumber = False
      RecordNumber = False
      HasTime = False
      Oriention = poPortrait
      HasDate = False
      HasIndex = False
      PrintTitle = #1604#1610#1587#1578' '#1578#1607#1610#1607' '#1588#1583#1607' '#1578#1608#1587#1591' '#1606#1585#1605' '#1575#1601#1586#1575#1585' '#1610#1711#1575#1606#1607
      InvertFarsiDate = True
      TitleSort = True
      AutoInsert = False
      FooterFields = 'Count'
      Columns = <
        item
          Expanded = False
          FieldName = 'ErrorMessage'
          Title.Alignment = taCenter
          Title.Caption = #1662#1610#1594#1575#1605' '#1582#1591#1575#1610' '#1575#1606#1711#1604#1610#1587#1610
          Width = 226
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'ErrorDate'
          Title.Alignment = taCenter
          Title.Caption = #1578#1575#1585#1610#1582' '#1582#1591#1575
          Width = 62
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'FarsiMessage'
          Title.Alignment = taCenter
          Title.Caption = #1662#1610#1594#1575#1605' '#1582#1591#1575#1610' '#1601#1575#1585#1587#1610
          Title.Font.Charset = ARABIC_CHARSET
          Title.Font.Color = clWindowText
          Title.Font.Height = -11
          Title.Font.Name = 'Tahoma'
          Title.Font.Style = [fsBold]
          Width = 228
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'ShowMessage'
          Title.Alignment = taCenter
          Title.Caption = #1606#1605#1575#1610#1588' '#1662#1610#1594#1575#1605
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'UserCode'
          Title.Alignment = taCenter
          Title.Caption = #1603#1583' '#1603#1575#1585#1576#1585#1610
          Width = 53
          Visible = True
        end>
    end
  end
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 670
    Height = 105
    Align = alTop
    TabOrder = 0
    DesignSize = (
      670
      105)
    object Label1: TLabel
      Left = 585
      Top = 12
      Width = 35
      Height = 13
      Anchors = [akTop, akRight]
      Caption = #1580#1587#1578#1580#1608
    end
    object Label2: TLabel
      Left = 585
      Top = 40
      Width = 72
      Height = 13
      Anchors = [akTop, akRight]
      Caption = #1662#1610#1594#1575#1605'  '#1575#1606#1711#1604#1610#1587#1610
      FocusControl = DBEdit1
    end
    object Label3: TLabel
      Left = 585
      Top = 68
      Width = 64
      Height = 13
      Anchors = [akTop, akRight]
      Caption = #1605#1593#1606#1610' '#1601#1575#1585#1587#1610
      FocusControl = DBEdit2
    end
    object search: TEdit
      Left = 76
      Top = 10
      Width = 505
      Height = 21
      Anchors = [akTop, akRight]
      BiDiMode = bdLeftToRight
      ParentBiDiMode = False
      TabOrder = 0
      OnChange = searchChange
      OnEnter = searchEnter
      OnExit = searchExit
    end
    object DBEdit1: TDBEdit
      Left = 76
      Top = 38
      Width = 505
      Height = 21
      Anchors = [akTop, akRight]
      BiDiMode = bdLeftToRight
      DataField = 'ErrorMessage'
      DataSource = DErrorMessage
      ParentBiDiMode = False
      TabOrder = 1
    end
    object DBEdit2: TDBEdit
      Left = 76
      Top = 66
      Width = 505
      Height = 21
      Anchors = [akTop, akRight]
      DataField = 'FarsiMessage'
      DataSource = DErrorMessage
      TabOrder = 2
    end
  end
  object DErrorMessage: TDataSource
    DataSet = ErrorMessage
    Left = 303
    Top = 211
  end
  object ErrorMessage: TADOTable
    Connection = Dm.YeganehConnection
    CursorType = ctStatic
    TableName = 'ErrorMessage'
    Left = 308
    Top = 160
    object ErrorMessageErrorid: TLargeintField
      FieldName = 'Errorid'
      ReadOnly = True
    end
    object ErrorMessageErrorMessage: TWideStringField
      FieldName = 'ErrorMessage'
      Size = 255
    end
    object ErrorMessageErrorDate: TWideStringField
      FieldName = 'ErrorDate'
      Size = 10
    end
    object ErrorMessageUserCode: TIntegerField
      FieldName = 'UserCode'
    end
    object ErrorMessageFarsiMessage: TWideStringField
      Alignment = taRightJustify
      FieldName = 'FarsiMessage'
      Size = 255
    end
    object ErrorMessageShowMessage: TBooleanField
      FieldName = 'ShowMessage'
    end
  end
end
