object fmSelectReport: TfmSelectReport
  Left = 366
  Top = 346
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = #1606#1605#1575#1610#1588' '#1711#1586#1575#1585#1588
  ClientHeight = 78
  ClientWidth = 350
  Color = clBtnFace
  Font.Charset = ARABIC_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Tahoma'
  Font.Style = []
  KeyPreview = True
  OldCreateOrder = False
  Position = poMainFormCenter
  OnKeyDown = FormKeyDown
  DesignSize = (
    350
    78)
  PixelsPerInch = 96
  TextHeight = 14
  object rgReportType: TRadioGroup
    Left = 0
    Top = 0
    Width = 350
    Height = 41
    Align = alTop
    BiDiMode = bdRightToLeft
    Columns = 2
    ItemIndex = 0
    Items.Strings = (
      #1606#1605#1575#1610#1588' '#1711#1586#1575#1585#1588' '#1591#1585#1575#1581#1610' '#1588#1583#1607
      #1606#1605#1575#1610#1588' '#1711#1586#1575#1585#1588' '#1575#1589#1604#1610)
    ParentBiDiMode = False
    TabOrder = 0
  end
  object btnOk: TButton
    Left = 229
    Top = 49
    Width = 91
    Height = 26
    Anchors = [akTop, akRight]
    Caption = #1578#1575#1574#1610#1583
    Default = True
    ModalResult = 1
    TabOrder = 1
    OnClick = btnOkClick
  end
  object btnCancle: TButton
    Left = 34
    Top = 49
    Width = 94
    Height = 26
    Anchors = [akTop, akRight]
    Caption = #1575#1606#1589#1585#1575#1601
    ModalResult = 2
    TabOrder = 2
  end
end
