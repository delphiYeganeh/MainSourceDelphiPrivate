inherited GroupDialogF: TGroupDialogF
  Tag = 11
  Left = 525
  Top = 177
  ActiveControl = BitBtn1
  BiDiMode = bdRightToLeft
  BorderIcons = [biSystemMenu]
  BorderStyle = bsDialog
  Caption = 'Ã“∆Ì« '
  ClientHeight = 240
  ClientWidth = 400
  Color = clBtnFace
  Font.Charset = ARABIC_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = True
  ParentBiDiMode = False
  Position = poScreenCenter
  OnShow = FormShow
  DesignSize = (
    400
    240)
  PixelsPerInch = 96
  TextHeight = 13
  object GroupBox1: TGroupBox
    Left = 0
    Top = 0
    Width = 400
    Height = 209
    Align = alTop
    Caption = '«ÿ·«⁄«  ”«“„«‰'
    TabOrder = 0
    object Label1: TLabel
      Left = 362
      Top = 24
      Width = 15
      Height = 13
      Caption = 'òœ:'
    end
    object Label2: TLabel
      Left = 362
      Top = 49
      Width = 30
      Height = 13
      Caption = '⁄‰Ê«‰:'
    end
    object DBECode: TDBEdit
      Left = 294
      Top = 20
      Width = 66
      Height = 21
      Ctl3D = True
      DataField = 'GroupID'
      DataSource = Dgroup
      ParentCtl3D = False
      TabOrder = 0
    end
    object DBETitle: TDBEdit
      Left = 59
      Top = 45
      Width = 301
      Height = 21
      Ctl3D = True
      DataField = 'GroupTitle'
      DataSource = Dgroup
      ParentCtl3D = False
      TabOrder = 1
    end
  end
  object BitBtn2: TBitBtn
    Left = 224
    Top = 210
    Width = 80
    Height = 25
    Anchors = [akLeft, akBottom]
    Caption = '·€Ê'
    TabOrder = 1
    OnClick = BitBtn2Click
    Kind = bkCancel
  end
  object BitBtn1: TBitBtn
    Left = 312
    Top = 210
    Width = 80
    Height = 25
    Anchors = [akLeft, akBottom]
    Caption = ' «ÌÌœ'
    TabOrder = 2
    OnClick = BitBtn1Click
    Kind = bkOK
  end
  object ActionManager: TActionManager
    Left = 88
    Top = 144
    StyleName = 'XP Style'
  end
  object Dgroup: TDataSource
    Left = 80
    Top = 80
  end
end
