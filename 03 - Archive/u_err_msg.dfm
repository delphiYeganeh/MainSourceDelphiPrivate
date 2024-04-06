object Err_msg: TErr_msg
  Left = 222
  Top = 144
  BorderStyle = bsDialog
  Caption = 'Err_msg'
  ClientHeight = 146
  ClientWidth = 184
  Color = clWhite
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  OnCreate = FormCreate
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Memo1: TMemo
    Left = 5
    Top = 6
    Width = 174
    Height = 131
    BevelInner = bvNone
    BevelOuter = bvNone
    BiDiMode = bdRightToLeft
    BorderStyle = bsNone
    Font.Charset = ARABIC_CHARSET
    Font.Color = clRed
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentBiDiMode = False
    ParentFont = False
    TabOrder = 0
  end
end
