inherited FBaseRefere: TFBaseRefere
  Left = 536
  Top = 212
  Width = 695
  Height = 461
  Caption = #1575#1606#1578#1582#1575#1576' '#1575#1585#1580#1575#1593' '#1588#1608#1606#1583#1607' '#1711#1575#1606
  OldCreateOrder = True
  OnCanResize = FormCanResize
  PixelsPerInch = 96
  TextHeight = 13
  inherited ShapeBase: TShape
    Width = 679
    Height = 422
  end
  object pnlMain: TPanel [1]
    Left = 0
    Top = 0
    Width = 679
    Height = 422
    Align = alClient
    TabOrder = 0
    object Panel1: TPanel
      Left = 1
      Top = 336
      Width = 677
      Height = 85
      Align = alBottom
      TabOrder = 0
      object Label1: TLabel
        Left = 149
        Top = 7
        Width = 506
        Height = 52
        Caption = 
          #1578#1608#1580#1607' :'#13#10#1575#1711#1585' '#1583#1585' '#1575#1610#1606' '#1601#1585#1605' '#1575#1585#1580#1575#1593' '#1588#1608#1606#1583#1607' '#1576#1585#1575#1610' '#1601#1585#1575#1610#1606#1583' '#1578#1593#1585#1610#1601' '#1588#1583#1607' '#1576#1575#1588#1583' '#1575#1585 +
          #1580#1575#1593' '#1576#1607' '#1588#1582#1589' '#1605#1608#1585#1583#1606#1592#1585' '#1589#1608#1585#1578' '#1605#1610' '#1711#1610#1585#1583#13#10#1583#1585' '#1594#1610#1585' '#1575#1610#1606' '#1589#1608#1585#1578' '#1575#1586' '#1578#1606#1592#1610#1605#1575#1578' '#1601#1585#1605' ' +
          #1578#1593#1585#1610#1601' '#1705#1575#1585#1576#1585' '#1575#1587#1578#1601#1575#1583#1607' '#1605#1610' '#1588#1608#1583' '#1610#1593#1606#1610' '#1576#1607' '#1605#1583#1610#1585' '#1608#1575#1581#1583' '#1605#1588#1582#1589' '#1588#1583#1607#13#10#1583#1585' '#1594#1610#1585' '#1575#1610 +
          #1606' '#1589#1608#1585#1578' '#1575#1585#1580#1575#1593' '#1575#1578#1608#1605#1575#1578#1610#1705' '#1575#1606#1580#1575#1605' '#1606#1605#1610' '#1588#1608#1583' '#1705#1575#1585#1576#1585' '#1576#1575#1610#1583' '#1583#1587#1578#1610' '#1575#1585#1580#1575#1593' '#1588#1608#1606#1583#1607' ' +
          #1585#1575' '#1605#1588#1582#1589' '#1705#1606#1583
        Color = clBtnFace
        Font.Charset = ARABIC_CHARSET
        Font.Color = clTeal
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentColor = False
        ParentFont = False
      end
      object btnCancel: TBitBtn
        Left = 9
        Top = 47
        Width = 98
        Height = 32
        Cancel = True
        Caption = #1575#1606#1589#1585#1575#1601
        ModalResult = 2
        TabOrder = 0
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
    object GroupBox1: TGroupBox
      Left = 1
      Top = 1
      Width = 677
      Height = 335
      Align = alClient
      TabOrder = 1
      object Panel2: TPanel
        Left = 2
        Top = 310
        Width = 673
        Height = 23
        Align = alBottom
        BevelOuter = bvNone
        TabOrder = 0
        object btndCaseType: TBitBtn
          Left = 4
          Top = 1
          Width = 30
          Height = 21
          Caption = '+'
          TabOrder = 0
          OnClick = btndCaseTypeClick
        end
        object Button1: TButton
          Left = 38
          Top = 1
          Width = 30
          Height = 21
          Caption = '-'
          TabOrder = 1
          OnClick = Button1Click
        end
      end
      object dbgCaseType: TYDBGrid
        Left = 2
        Top = 15
        Width = 673
        Height = 295
        Cursor = crHandPoint
        Align = alClient
        DataSource = Dm.DSTaskReferral
        Options = [dgEditing, dgAlwaysShowEditor, dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit]
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
        AutoInsert = True
        FooterFields = 'Count'
        Columns = <
          item
            Expanded = False
            FieldName = 'UserTypeTitle'
            Title.Caption = #1606#1608#1593' '#1705#1575#1585#1576#1585
            Width = 123
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'caseTypeTitle'
            Title.Caption = #1606#1608#1593' '#1605#1608#1585#1583
            Width = 131
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'ProductTitle'
            Title.Caption = #1605#1581#1589#1608#1604
            Width = 178
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'UserTitle'
            Title.Caption = #1575#1585#1580#1575#1593' '#1588#1608#1606#1583#1607
            Width = 189
            Visible = True
          end>
      end
    end
  end
end
