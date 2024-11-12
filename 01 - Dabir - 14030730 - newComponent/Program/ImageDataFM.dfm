inherited FmImageData: TFmImageData
  Left = 551
  Top = 148
  ActiveControl = DBETitle
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = #1608#1585#1608#1583' '#1575#1591#1604#1575#1593#1575#1578' '#1578#1589#1575#1608#1610#1585
  ClientHeight = 442
  ClientWidth = 481
  Color = clBtnFace
  KeyPreview = True
  OldCreateOrder = True
  Position = poDesktopCenter
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel [0]
    Left = 0
    Top = 0
    Width = 481
    Height = 52
    Align = alTop
    TabOrder = 0
    object DBN1: TDBNavigator
      Left = 23
      Top = 1
      Width = 457
      Height = 50
      Cursor = crHandPoint
      DataSource = DMScanImage.DSListItems
      VisibleButtons = [nbFirst, nbPrior, nbNext, nbLast, nbInsert, nbDelete, nbEdit, nbPost, nbCancel]
      Align = alRight
      Flat = True
      Ctl3D = False
      ParentCtl3D = False
      ParentShowHint = False
      ConfirmDelete = False
      ShowHint = True
      TabOrder = 0
      TabStop = True
      OnClick = DBN1Click
    end
  end
  object Panel2: TPanel [1]
    Left = 0
    Top = 401
    Width = 481
    Height = 41
    Align = alBottom
    TabOrder = 1
    object xpBitBtn1: TBitBtn
      Left = 16
      Top = 8
      Width = 75
      Height = 28
      Cursor = crHandPoint
      Caption = #1582#1585#1608#1580
      Font.Charset = ARABIC_CHARSET
      Font.Color = clNavy
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 0
      OnClick = xpBitBtn1Click
    end
  end
  object Panel3: TPanel [2]
    Left = 0
    Top = 52
    Width = 481
    Height = 283
    Align = alClient
    TabOrder = 2
    object DBGrid1: TDBGrid
      Left = 1
      Top = 1
      Width = 479
      Height = 281
      Align = alClient
      DataSource = DMScanImage.DSListItems
      ReadOnly = True
      TabOrder = 0
      TitleFont.Charset = ARABIC_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'Tahoma'
      TitleFont.Style = []
      Columns = <
        item
          Alignment = taLeftJustify
          Expanded = False
          FieldName = 'Title'
          Title.Alignment = taCenter
          Width = 201
          Visible = True
        end
        item
          Alignment = taLeftJustify
          Expanded = False
          FieldName = 'Notes'
          Title.Alignment = taCenter
          Width = 242
          Visible = True
        end>
    end
  end
  object Panel4: TPanel [3]
    Left = 0
    Top = 335
    Width = 481
    Height = 66
    Align = alBottom
    TabOrder = 3
    DesignSize = (
      481
      66)
    object Label1: TLabel
      Left = 422
      Top = 11
      Width = 33
      Height = 13
      Anchors = [akTop, akRight]
      Caption = #1593#1606#1608#1575#1606' :'
    end
    object Label2: TLabel
      Left = 422
      Top = 35
      Width = 47
      Height = 13
      Anchors = [akTop, akRight]
      Caption = #1578#1608#1590#1610#1581#1575#1578' :'
    end
    object DBETitle: TDBEdit
      Left = 184
      Top = 8
      Width = 234
      Height = 21
      Anchors = [akTop, akRight]
      DataField = 'Title'
      DataSource = DMScanImage.DSListItems
      TabOrder = 0
    end
    object DBENotes: TDBEdit
      Left = 32
      Top = 33
      Width = 386
      Height = 21
      Anchors = [akTop, akRight]
      DataField = 'Notes'
      DataSource = DMScanImage.DSListItems
      TabOrder = 1
    end
  end
  inherited DSForm: TDataSource
    Left = 40
    Top = 160
  end
  inherited ActionList: TActionList
    Left = 400
    Top = 104
  end
end
