object FrTaxPerYear: TFrTaxPerYear
  Left = 639
  Top = 254
  Width = 261
  Height = 333
  BiDiMode = bdRightToLeft
  Caption = #1587#1575#1604' '#1608#1583#1585#1589#1583' '#1605#1575#1604#1610#1575#1578
  Color = clBtnFace
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
  object dbgTaxPerYear: TYDBGrid
    Left = 0
    Top = 0
    Width = 253
    Height = 224
    Align = alClient
    Options = [dgEditing, dgAlwaysShowEditor, dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit]
    TabOrder = 0
    TitleFont.Charset = ARABIC_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
    OnKeyDown = GotoNextGrid
    YeganehColor = False
    YeganehFinish = False
    PageNumber = False
    RecordNumber = False
    HasTime = False
    Oriention = poPortrait
    HasDate = False
    HasIndex = False
    InvertFarsiDate = True
    TitleSort = True
    AutoInsert = False
    FooterFields = 'Count'
    Columns = <
      item
        Expanded = False
        FieldName = 'Year'
        Title.Alignment = taCenter
        Title.Caption = #1587#1575#1604' '
        Width = 89
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'TaxPercentage'
        Title.Alignment = taCenter
        Title.Caption = #1583#1585#1589#1583' '#1605#1575#1604#1610#1575#1578' '
        Width = 122
        Visible = True
      end>
  end
  object Panel1: TPanel
    Left = 0
    Top = 258
    Width = 253
    Height = 41
    Align = alBottom
    TabOrder = 1
    DesignSize = (
      253
      41)
    object btnCancel: TBitBtn
      Left = 4
      Top = 7
      Width = 75
      Height = 28
      Anchors = [akTop, akRight]
      Caption = #1575#1606#1589#1585#1575#1601
      TabOrder = 0
      OnClick = btnCancelClick
      Kind = bkCancel
    end
    object btnSave: TBitBtn
      Left = 83
      Top = 7
      Width = 75
      Height = 28
      Anchors = [akTop, akRight]
      Caption = #1578#1575#1610#1610#1583
      TabOrder = 1
      OnClick = btnSaveClick
      Kind = bkOK
    end
  end
  object Panel2: TPanel
    Left = 0
    Top = 224
    Width = 253
    Height = 34
    Align = alBottom
    TabOrder = 2
    object Label1: TLabel
      Left = 180
      Top = 11
      Width = 51
      Height = 13
      Caption = #1578#1575#1585#1610#1582' '#1575#1593#1605#1575#1604
    end
    object edtTaxDate: TEdit
      Left = 35
      Top = 8
      Width = 121
      Height = 21
      TabOrder = 0
    end
  end
end
