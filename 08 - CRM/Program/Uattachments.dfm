inherited frAttachments: TfrAttachments
  Left = 476
  Top = 359
  Width = 373
  Height = 316
  Caption = #1601#1575#1610#1604' '#1662#1610#1608#1587#1578
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel [0]
    Left = 0
    Top = 241
    Width = 365
    Height = 41
    Align = alBottom
    TabOrder = 0
    DesignSize = (
      365
      41)
    object BitBtn2: TBitBtn
      Left = 5
      Top = 6
      Width = 84
      Height = 32
      Cancel = True
      Caption = #1582#1585#1608#1580
      ModalResult = 2
      TabOrder = 0
      OnClick = BitBtn2Click
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
    object btnAttachment: TBitBtn
      Left = 92
      Top = 6
      Width = 84
      Height = 32
      Anchors = [akTop, akRight]
      Caption = #1605#1588#1575#1607#1583#1607
      TabOrder = 1
      OnClick = btnAttachmentClick
    end
    object btnDel: TBitBtn
      Left = 268
      Top = 6
      Width = 84
      Height = 32
      Anchors = [akTop, akRight]
      Caption = #1581#1584#1601
      TabOrder = 2
      OnClick = btnDelClick
    end
    object btnAdd: TBitBtn
      Left = 181
      Top = 6
      Width = 84
      Height = 32
      Anchors = [akTop, akRight]
      Caption = #1575#1601#1586#1608#1585#1583#1606
      TabOrder = 3
      OnClick = btnAddClick
    end
  end
  object dbgFiles: TYDBGrid [1]
    Left = 0
    Top = 0
    Width = 365
    Height = 241
    Align = alClient
    DataSource = DSForm
    Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit]
    ReadOnly = True
    TabOrder = 1
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
        FieldName = 'title'
        Title.Alignment = taCenter
        Title.Caption = #1593#1606#1608#1575#1606' '#1601#1575#1610#1604
        Width = 242
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'FileType'
        Title.Caption = #1606#1608#1593' '#1601#1575#1610#1604
        Width = 91
        Visible = True
      end>
  end
  inherited DSForm: TDataSource
    Left = 24
    Top = 120
  end
  inherited ActionList: TActionList
    Left = 24
    Top = 80
  end
end
