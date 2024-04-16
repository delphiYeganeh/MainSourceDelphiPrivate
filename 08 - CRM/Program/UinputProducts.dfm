inherited FinputProducts: TFinputProducts
  Left = 644
  Top = 197
  Width = 474
  Height = 423
  Caption = #1608#1585#1608#1585#1583' '#1575#1591#1604#1575#1593#1575#1578' '#1605#1581#1589#1608#1604#1575#1578' '
  Font.Height = -12
  OldCreateOrder = True
  PixelsPerInch = 96
  TextHeight = 14
  object YDBGrid1: TYDBGrid [0]
    Left = 0
    Top = 0
    Width = 466
    Height = 317
    Cursor = crHandPoint
    Align = alClient
    DataSource = Dm.DProduct
    TabOrder = 0
    TitleFont.Charset = ARABIC_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -12
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
        FieldName = 'Code'
        Title.Alignment = taCenter
        Title.Caption = #1705#1583
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'ProductTitle'
        Title.Alignment = taCenter
        Title.Caption = #1578#1610#1578#1585' '#1605#1581#1589#1608#1604
        Width = 198
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'LastVertion'
        Title.Alignment = taCenter
        Title.Caption = #1570#1582#1585#1610#1606' '#1608#1585#1688#1606
        Width = 74
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'IsNetwork'
        Title.Alignment = taCenter
        Title.Caption = #1588#1576#1705#1607
        Width = 37
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'CommisionPercent'
        Visible = False
      end>
  end
  object Panel1: TPanel [1]
    Left = 0
    Top = 317
    Width = 466
    Height = 72
    Align = alBottom
    TabOrder = 1
    object Label2: TLabel
      Left = 430
      Top = 8
      Width = 29
      Height = 14
      Caption = #1578#1608#1590#1610#1581
      FocusControl = DBEdit2
    end
    object DBEdit2: TDBEdit
      Left = 8
      Top = 5
      Width = 416
      Height = 22
      DataField = 'Comment'
      DataSource = Dm.DProduct
      TabOrder = 0
    end
    object DBNavigator1: TDBNavigator
      Left = 90
      Top = 35
      Width = 228
      Height = 33
      DataSource = Dm.DProduct
      VisibleButtons = [nbPrior, nbNext, nbInsert, nbEdit, nbPost, nbCancel]
      Flat = True
      TabOrder = 1
    end
    object BtnCancel: TBitBtn
      Left = 14
      Top = 35
      Width = 78
      Height = 34
      Cancel = True
      Caption = #1575#1606#1589#1585#1575#1601
      ModalResult = 2
      TabOrder = 2
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
    Left = 40
    Top = 120
  end
  inherited ActionList: TActionList
    Left = 32
    Top = 160
  end
end
