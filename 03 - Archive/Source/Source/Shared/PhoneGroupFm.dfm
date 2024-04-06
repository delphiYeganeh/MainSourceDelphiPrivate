inherited FmPhoneGroup: TFmPhoneGroup
  Left = 551
  Top = 121
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = #1601#1585#1605' '#1578#1593#1585#1610#1601' '#1711#1585#1608#1607' '#1575#1610#1605#1610#1604
  ClientHeight = 404
  ClientWidth = 474
  KeyPreview = True
  OldCreateOrder = True
  Position = poDesktopCenter
  OnCreate = nil
  OnKeyDown = FormKeyDown
  PixelsPerInch = 96
  TextHeight = 13
  object Panel2: TPanel [0]
    Left = 0
    Top = 52
    Width = 474
    Height = 271
    Align = alClient
    TabOrder = 1
    object YDBGrid1: TYDBGrid
      Left = 1
      Top = 1
      Width = 472
      Height = 269
      Cursor = crHandPoint
      Align = alClient
      Ctl3D = False
      DataSource = DMPhoneGroup.DSPhoneGroup
      Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit]
      ParentCtl3D = False
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
          Alignment = taLeftJustify
          Expanded = False
          FieldName = 'Code'
          Title.Alignment = taCenter
          Title.Caption = #1705#1583
          Width = 48
          Visible = True
        end
        item
          Alignment = taLeftJustify
          Expanded = False
          FieldName = 'Title'
          Title.Alignment = taCenter
          Title.Caption = #1593#1606#1608#1575#1606' '#1711#1585#1608#1607
          Width = 380
          Visible = True
        end>
    end
  end
  object Panel1: TPanel [1]
    Left = 0
    Top = 0
    Width = 474
    Height = 52
    Align = alTop
    TabOrder = 0
    object DBN1: TDBNavigator
      Left = 16
      Top = 1
      Width = 457
      Height = 50
      Cursor = crHandPoint
      DataSource = DMPhoneGroup.DSPhoneGroup
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
      BeforeAction = DBN1BeforeAction
    end
  end
  object Panel4: TPanel [2]
    Left = 0
    Top = 323
    Width = 474
    Height = 41
    Align = alBottom
    TabOrder = 2
    DesignSize = (
      474
      41)
    object Label1: TLabel
      Left = 422
      Top = 10
      Width = 41
      Height = 13
      Anchors = [akTop, akRight]
      Caption = #1705#1583' '#1711#1585#1608#1607' :'
    end
    object Label2: TLabel
      Left = 301
      Top = 10
      Width = 56
      Height = 13
      Anchors = [akTop, akRight]
      Caption = #1593#1606#1608#1575#1606' '#1711#1585#1608#1607' :'
    end
    object DBETitle: TDBEdit
      Left = 16
      Top = 8
      Width = 281
      Height = 21
      Anchors = [akTop, akRight]
      DataField = 'Title'
      DataSource = DMPhoneGroup.DSPhoneGroup
      TabOrder = 1
    end
    object DBECode: TDBEdit
      Left = 371
      Top = 8
      Width = 48
      Height = 19
      Anchors = [akTop, akRight]
      Ctl3D = False
      DataField = 'Code'
      DataSource = DMPhoneGroup.DSPhoneGroup
      ParentCtl3D = False
      ReadOnly = True
      TabOrder = 0
    end
  end
  object Panel3: TPanel [3]
    Left = 0
    Top = 364
    Width = 474
    Height = 40
    Align = alBottom
    TabOrder = 3
    object xpBitBtn1: TBitBtn
      Left = 9
      Top = 8
      Width = 75
      Height = 26
      Cursor = crHandPoint
      Caption = #1582#1585#1608#1580
      Font.Charset = ARABIC_CHARSET
      Font.Color = clNavy
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 0
      TabStop = False
      OnClick = xpBitBtn1Click
      Glyph.Data = {
        DE010000424DDE01000000000000760000002800000024000000120000000100
        0400000000006801000000000000000000001000000000000000000000000000
        80000080000000808000800000008000800080800000C0C0C000808080000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
        333333333333333333333333000033338833333333333333333F333333333333
        0000333911833333983333333388F333333F3333000033391118333911833333
        38F38F333F88F33300003339111183911118333338F338F3F8338F3300003333
        911118111118333338F3338F833338F3000033333911111111833333338F3338
        3333F8330000333333911111183333333338F333333F83330000333333311111
        8333333333338F3333383333000033333339111183333333333338F333833333
        00003333339111118333333333333833338F3333000033333911181118333333
        33338333338F333300003333911183911183333333383338F338F33300003333
        9118333911183333338F33838F338F33000033333913333391113333338FF833
        38F338F300003333333333333919333333388333338FFF830000333333333333
        3333333333333333333888330000333333333333333333333333333333333333
        0000}
      NumGlyphs = 2
    end
  end
  inherited DSForm: TDataSource
    Left = 384
    Top = 200
  end
  inherited ActionList: TActionList
    Left = 384
    Top = 96
  end
end
