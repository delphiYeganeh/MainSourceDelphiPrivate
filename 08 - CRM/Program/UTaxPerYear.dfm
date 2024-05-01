object FrTaxPerYear: TFrTaxPerYear
  Left = 639
  Top = 254
  Width = 286
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
  OnCanResize = FormCanResize
  OnCreate = FormCreate
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object pnlMain: TPanel
    Left = 0
    Top = 0
    Width = 270
    Height = 294
    Align = alClient
    Caption = ' '
    TabOrder = 0
    object Panel2: TPanel
      Left = 1
      Top = 218
      Width = 268
      Height = 34
      Align = alBottom
      TabOrder = 0
      DesignSize = (
        268
        34)
      object Label1: TLabel
        Left = 191
        Top = 11
        Width = 64
        Height = 13
        Anchors = [akTop, akRight]
        Caption = #1578#1575#1585#1610#1582' '#1575#1593#1605#1575#1604'   :'
      end
      object edtTaxDate: TEdit
        Left = 8
        Top = 7
        Width = 172
        Height = 21
        Anchors = [akLeft, akTop, akRight]
        TabOrder = 0
      end
    end
    object Panel1: TPanel
      Left = 1
      Top = 252
      Width = 268
      Height = 41
      Align = alBottom
      TabOrder = 1
      object btnCancel: TBitBtn
        Left = 5
        Top = 7
        Width = 75
        Height = 28
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
        Caption = #1578#1575#1610#1610#1583
        TabOrder = 1
        OnClick = btnSaveClick
        Kind = bkOK
      end
    end
    object dbgTaxPerYear: TYDBGrid
      Left = 1
      Top = 1
      Width = 268
      Height = 217
      Align = alClient
      Options = [dgEditing, dgAlwaysShowEditor, dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit]
      TabOrder = 2
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
  end
end
