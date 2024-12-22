object FmNewsGroup: TFmNewsGroup
  Left = 757
  Top = 107
  Width = 480
  Height = 554
  BiDiMode = bdRightToLeft
  Caption = #1601#1585#1605' '#1578#1593#1585#1610#1601' '#1711#1585#1608#1607' '#1582#1576#1585#1610
  Color = clBtnFace
  Font.Charset = ARABIC_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  KeyPreview = True
  OldCreateOrder = False
  ParentBiDiMode = False
  Position = poDesktopCenter
  OnClose = FormClose
  OnCreate = FormCreate
  OnKeyDown = FormKeyDown
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Panel2: TPanel
    Left = 0
    Top = 52
    Width = 472
    Height = 159
    Align = alClient
    TabOrder = 1
    object YDBGrid1: TYDBGrid
      Left = 1
      Top = 1
      Width = 470
      Height = 157
      Cursor = crHandPoint
      Align = alClient
      Color = 15528703
      DataSource = DMNewsGroup.DSNewsGroup
      Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit]
      ReadOnly = True
      TabOrder = 0
      TitleFont.Charset = ARABIC_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'Tahoma'
      TitleFont.Style = []
      OnCellClick = YDBGrid1CellClick
      OnKeyUp = YDBGrid1KeyUp
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
          Width = 220
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'Descript'
          Title.Alignment = taCenter
          Width = 209
          Visible = True
        end>
    end
  end
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 472
    Height = 52
    Align = alTop
    TabOrder = 0
    object DBN1: TDBNavigator
      Left = 16
      Top = 1
      Width = 455
      Height = 50
      Cursor = crHandPoint
      DataSource = DMNewsGroup.DSNewsGroup
      VisibleButtons = [nbFirst, nbPrior, nbNext, nbLast, nbInsert, nbDelete, nbEdit, nbPost, nbCancel]
      Align = alRight
      Constraints.MaxHeight = 50
      Constraints.MaxWidth = 468
      Constraints.MinHeight = 50
      Constraints.MinWidth = 450
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
  object Panel4: TPanel
    Left = 0
    Top = 471
    Width = 472
    Height = 49
    Align = alBottom
    TabOrder = 3
    object BitBtn1: TBitBtn
      Left = 16
      Top = 10
      Width = 80
      Height = 25
      Cursor = crHandPoint
      Cancel = True
      Caption = #1582#1585#1608#1580
      Font.Charset = ARABIC_CHARSET
      Font.Color = clNavy
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 0
      OnClick = BitBtn1Click
      Glyph.Data = {
        1E060000424D1E06000000000000360000002800000018000000150000000100
        180000000000E8050000000000000000000000000000000000000D0B038394FF
        0133F00606AEB7B4DDFFFFFFBEBBE7060EB10005A56D6FCAF9F9F5FFFCE8FFF6
        E7FFF6E9FFF6E9FFF7E9FFF7E9FFF7E9FFF7E9FFF8E9FFF8E9FFF8E9FFF5E6FF
        FFFF0B0700858FFF0E4FFF236FFF0008B42E166F161CA70747FF074BFF1C2ECF
        B5886FFFB428FF9E1AFF9F1DFF9F1DFF9E1CFF9E1CFF9D1CFF9D1BFF9C1AFF9C
        1AFF9B1DFF9305FFAD32161404C4B4E70012D72C66FF215EFF042AE1103FF019
        54FF022BDD3B47C4D8D6F6FFFFFFFFF1FFFFF1FFFFEFFFFFEDFFFFEBFFFFE9FF
        FFE7FFFFE3FFFFE1FBFFDEF9FFEEFFFF93000C0800FFFFD33536B90B2ACF2B67
        FF245AFF2059FF113DE32826AAC3B9DAFFFAEFFFE7E6FFE4E3FFE3E2FFE1E0FF
        DFDEFFDAD9FFDAD9FFD8D7FFD5D3FFD2D1FFCDC9FFE3FFFF9A04040000FFFFBF
        FFFFFF2920881B4CF92A62FF2158FF1532CD776EB2FFFFFFFFF0EDFFEBEBFFE9
        E9FFE7E7FFE5E5FFE1E1FFDFDFFFDEDEFFDBDBFFD8D8FFD6D6FFD0CEFFE6FFFF
        9A03050000FFFFC2E7E9FE11159F377BFF2352F11A4BEF1A53F12530C1B9B1D9
        FFFDF6FFEFEEFFEBEBFFE9E9FFE7E7FFE4E4FFE2E2FFE0E0FFDDDDFFDADAFFD7
        D7FFD1CFFFE8FFFF9A04050000FFFFCC7F7DDA1233D23470FA2330B93039B810
        40EA154BEE565AC2EBE4EBFFF9F4FFECEDFFECECFFE9E9FFE6E6FFE4E4FFE1E1
        FFDEDEFFDBDBFFD8D8FFD3D1FFE9FFFF9A03050000FFFFCF4E50C90734DB1B3C
        D4857BBFDBD6E53D47C60026E32948D9BEB9DEFFFFFAFFEFEFFFEDEDFFEBEBFF
        E8E8FFE4E4FFE2E2FFDFDFFFDCDCFFD9D9FFD4D2FFE9FFFF9A03050000FFFFC8
        B4B6EB3E4BCF3237BDF2EFF9FFFFFFE2DFF3363CCD4251D7D0CEE9FFFFFBFFF2
        F2FFF0F0FFEDEDFFEAEAFFE6E6FFE4E4FFE1E1FFDEDEFFDADAFFD5D3FFE9FFFF
        9A02050000FFFFC3FFFFFFDEDBF2B3B1E3FFFFFFFFFFFFFFFFFFEDECF5BFBBE2
        FBF9F7FFFBF9FFF4F4FFF2F2FFEFEFFFECECFFE8E8FFE5E5FFE2E2FFDFDFFFDC
        DCFFD6D5FFEBFFFF9B02050000FFFFC4F6FCFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFEFFF9F9FFF6F6FFF3F3FFF0F0FFEDEDFFE9E9FFE6E6
        FFE3E3FFE0E0FFDDDDFFD7D5FFECFFFF9B03050000FFFFC4F6FCFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEFEFFFBFBFFF7F7FFF4F4FFF1F1FF
        EDEDFFEAEAFFE7E7FFE4E4FFDFDFFFDDDDFFD7D5FFECFFFF9A03050000FFFFC4
        F6FCFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFCFCFFF7
        F7FFF4F4FFF2F2FFEDEDFFEBEBFFE8E8FFE5E5FFDFDFFFDEDEFFD8D6FFEDFFFF
        9A03050000FFFFC4F6FCFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFDFDFFF7F7FFF4F4FFF3F3FFEDEDFFEBEBFFE8E8FFE5E5FFDFDFFFDE
        DEFFD8D6FFEDFFFF9A03050000FFFFC4F6FCFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFDFDFFF7F7FFF4F4FFF3F2FFEDEDFFEAEAFFE7E7
        FFE4E4FFDFDFFFDDDDFFD7D6FFEDFFFF9A03050000FFFFC7FCFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEFFFFFBFDFFF9FAFF
        F4F4FFF1F2FFEEEFFFEBECFFE6E7FFE4E5FFDFDDFFF3FFFF9A04050000FFFFCA
        D2E9FFDAE9FBDAE8FBDAE8FBDAE8FBDAE8FBDAE8FBDAE8FBDAE7FADAE6F9DAE1
        F4DADFF3DADBEFDAD9EBDAD4E8DAD2E5DACFE2DACBDEDAC8DBD9C0D3DBD7FFFD
        9B09040408FFE66EF98F0BFC9615FB9716FB9716FB9716FB9716FB9716FB9716
        FB9615FB9615FB9715FB9715FB9614FB9714FB9714FB9613FB9713FB9713FB97
        12FB9711FB971AFF9700040304FFF391F38800EB7700ED7C00ED7B00ED7B00ED
        7B00ED7B00ED7B00ED7B00ED7B00ED7C00ED7C00ED7C00ED7C00ED7C00ED7C00
        ED7C00ED7C00ED7C00EB7C00F18500FF9500040100FFFEB5F9BD8AF5B97CF5BB
        81F5BB80F5BB80F5BB80F5BB80F5BB80F5BB80F5BB80F5BB80F5BB80F5BB80F5
        BB80F5BB80F5BB80F5BB80F5BB80F5BB84F5B97CF9A43DFE9D0B04090FFFFFD2
        FF9805FF9D09FF9E0DFF9E0DFF9E0DFF9E0DFF9E0DFF9E0DFF9E0DFF9E0DFF9E
        0DFF9E0DFF9E0DFF9E0DFF9E0DFF9E0DFF9E0DFF9E0DFF9F0EFF9B06FF9F13FF
        E4B9}
    end
  end
  object Panel3: TPanel
    Left = 0
    Top = 211
    Width = 472
    Height = 260
    Align = alBottom
    TabOrder = 2
    DesignSize = (
      472
      260)
    object Label4: TLabel
      Left = 405
      Top = 34
      Width = 47
      Height = 13
      Anchors = [akTop, akRight]
      Caption = #1578#1608#1590#1610#1581#1575#1578' :'
    end
    object Label6: TLabel
      Left = 405
      Top = 10
      Width = 56
      Height = 13
      Anchors = [akTop, akRight]
      Caption = #1593#1606#1608#1575#1606' '#1711#1585#1608#1607' :'
    end
    object Label1: TLabel
      Left = 314
      Top = 61
      Width = 146
      Height = 13
      Anchors = [akTop, akRight]
      Caption = #1578#1593#1610#1610#1606' '#1593#1590#1608#1607#1575#1610' '#1610#1705' '#1711#1585#1608#1607' '#1582#1576#1585#1610' :'
    end
    object DBEDescript: TDBEdit
      Left = 16
      Top = 34
      Width = 383
      Height = 21
      Anchors = [akTop, akRight]
      Ctl3D = True
      DataField = 'Descript'
      DataSource = DMNewsGroup.DSNewsGroup
      ParentCtl3D = False
      TabOrder = 1
    end
    object DBETitle: TDBEdit
      Left = 144
      Top = 8
      Width = 255
      Height = 21
      Anchors = [akTop, akRight]
      DataField = 'Title'
      DataSource = DMNewsGroup.DSNewsGroup
      TabOrder = 0
    end
    object CKLBUsers: TYchecklistBox
      Left = 16
      Top = 76
      Width = 445
      Height = 173
      TabStop = False
      Anchors = [akTop, akRight]
      BevelInner = bvNone
      Columns = 3
      Ctl3D = False
      Enabled = False
      ItemHeight = 13
      ParentCtl3D = False
      TabOrder = 2
      Ydataset = DMNewsGroup.QrUsersList
      TitleField = 'title'
      IDField = 'id'
      OnChecked = CKLBUsersChecked
      OnNeedCheck = CKLBUsersNeedCheck
      ClearInDb = CKLBUsersClearInDb
    end
  end
end
