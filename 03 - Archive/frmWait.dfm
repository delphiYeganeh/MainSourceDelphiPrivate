object WaitForm: TWaitForm
  Left = 614
  Top = 480
  BiDiMode = bdRightToLeft
  BorderStyle = bsNone
  Caption = '-----'
  ClientHeight = 69
  ClientWidth = 211
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -13
  Font.Name = 'Tahoma'
  Font.Style = [fsBold]
  OldCreateOrder = False
  ParentBiDiMode = False
  Position = poScreenCenter
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 16
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 211
    Height = 69
    Align = alClient
    BevelOuter = bvNone
    TabOrder = 0
    object Label1: TLabel
      Left = 104
      Top = 28
      Width = 87
      Height = 14
      Caption = #1583#1585' '#1581#1575#1604' '#1662#1585#1583#1575#1586#1588
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object CircularProgress: TAdvCircularProgress
      Left = 28
      Top = 3
      Width = 60
      Height = 60
      Enabled = False
      Appearance.BackGroundColor = clNone
      Appearance.BorderColor = clNone
      Appearance.ActiveSegmentColor = 16766421
      Appearance.InActiveSegmentColor = 13613233
      Appearance.TransitionSegmentColor = 16728128
      Appearance.ProgressSegmentColor = 4194432
      Interval = 100
    end
  end
end
