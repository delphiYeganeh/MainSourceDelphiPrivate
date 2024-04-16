inherited frGuaranteeType: TfrGuaranteeType
  Left = 447
  Top = 203
  Width = 246
  Caption = #1575#1606#1608#1575#1593' '#1590#1605#1575#1606#1578
  PixelsPerInch = 96
  TextHeight = 13
  object dbgTaxPerYear: TYDBGrid [0]
    Left = 0
    Top = 0
    Width = 238
    Height = 222
    Align = alClient
    Options = [dgEditing, dgAlwaysShowEditor, dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit]
    TabOrder = 0
    TitleFont.Charset = ARABIC_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
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
        FieldName = 'Title'
        Title.Alignment = taCenter
        Title.Caption = #1606#1608#1593' '#1590#1605#1575#1606#1578
        Width = 175
        Visible = True
      end>
  end
  object Panel1: TPanel [1]
    Left = 0
    Top = 222
    Width = 238
    Height = 41
    Align = alBottom
    TabOrder = 1
    DesignSize = (
      238
      41)
    object btnCancel: TBitBtn
      Left = 5
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
      Left = 84
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
end
