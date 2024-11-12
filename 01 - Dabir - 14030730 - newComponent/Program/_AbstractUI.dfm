object frmAbstract: TfrmAbstract
  Left = 840
  Top = 445
  Width = 270
  Height = 164
  BiDiMode = bdRightToLeft
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'IRANSans'
  Font.Style = []
  OldCreateOrder = True
  ParentBiDiMode = False
  ShowHint = True
  OnClose = FormClose
  OnCreate = FormCreate
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 17
  object aclAbstract: TActionList
    Left = 8
    Top = 8
    object actClose: TAction
      Category = 'Form'
      ShortCut = 27
      OnExecute = actCloseExecute
    end
    object actDefSize: TAction
      Category = 'Form'
      ShortCut = 16496
      OnExecute = actDefSizeExecute
    end
    object actPrint: TAction
      Category = 'Form'
      Caption = #1670#1575#1662
      ShortCut = 16464
      OnExecute = actPrintExecute
    end
    object actSetPrint: TAction
      Category = 'Form'
      Caption = #1578#1606#1592#1610#1605' '#1670#1575#1662
      ShortCut = 24656
      OnExecute = actSetPrintExecute
    end
  end
  object ehPrintMain: TPrintDBGridEh
    Options = [pghFitingByColWidths]
    PageFooter.Font.Charset = DEFAULT_CHARSET
    PageFooter.Font.Color = clWindowText
    PageFooter.Font.Height = -11
    PageFooter.Font.Name = 'Tahoma'
    PageFooter.Font.Style = []
    PageHeader.Font.Charset = DEFAULT_CHARSET
    PageHeader.Font.Color = clWindowText
    PageHeader.Font.Height = -11
    PageHeader.Font.Name = 'Tahoma'
    PageHeader.Font.Style = []
    PrintFontName = 'B Nazanin'
    Units = MM
    Left = 8
    Top = 41
  end
end
