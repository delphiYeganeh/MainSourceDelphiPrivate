inherited frGuaranteeType: TfrGuaranteeType
  Left = 447
  Top = 203
  Width = 253
  Caption = #1575#1606#1608#1575#1593' '#1590#1605#1575#1606#1578
  OldCreateOrder = True
  OnCanResize = FormCanResize
  PixelsPerInch = 96
  TextHeight = 13
  inherited ShapeBase: TShape
    Width = 237
  end
  object pnlMain: TPanel [1]
    Left = 0
    Top = 0
    Width = 237
    Height = 258
    Align = alClient
    Caption = ' '
    TabOrder = 0
    object dbgTaxPerYear: TYDBGrid
      Left = 1
      Top = 1
      Width = 235
      Height = 215
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
    object Panel1: TPanel
      Left = 1
      Top = 216
      Width = 235
      Height = 41
      Align = alBottom
      TabOrder = 1
      object btnCancel: TBitBtn
        Left = 10
        Top = 7
        Width = 75
        Height = 28
        Caption = #1575#1606#1589#1585#1575#1601
        TabOrder = 0
        OnClick = btnCancelClick
        Kind = bkCancel
      end
      object btnSave: TBitBtn
        Left = 89
        Top = 7
        Width = 75
        Height = 28
        Caption = #1578#1575#1610#1610#1583
        TabOrder = 1
        OnClick = btnSaveClick
        Kind = bkOK
      end
    end
  end
end
