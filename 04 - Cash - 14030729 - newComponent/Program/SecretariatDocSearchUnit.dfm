inherited FmSecretariatDocSearch: TFmSecretariatDocSearch
  Left = 460
  Top = 229
  Width = 590
  Height = 400
  Caption = #1580#1587#1578#1580#1608
  Constraints.MinHeight = 400
  Constraints.MinWidth = 588
  KeyPreview = True
  OldCreateOrder = True
  OnActivate = FormActivate
  OnKeyDown = FormKeyDown
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel [0]
    Left = 408
    Top = 0
    Width = 174
    Height = 366
    Align = alRight
    BorderWidth = 1
    TabOrder = 0
    object Panel2: TPanel
      Left = 2
      Top = 2
      Width = 170
      Height = 47
      Align = alTop
      TabOrder = 0
      DesignSize = (
        170
        47)
      object Label1: TLabel
        Left = 120
        Top = 3
        Width = 35
        Height = 13
        Anchors = [akTop, akRight]
        Caption = #1580#1587#1578#1580#1608
        Font.Charset = ARABIC_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        Transparent = True
      end
      object EditSearch: TEdit
        Left = 20
        Top = 22
        Width = 135
        Height = 22
        Anchors = [akTop, akRight]
        Font.Charset = ARABIC_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        TabOrder = 0
        OnChange = EditSearchChange
      end
    end
    object Panel3: TPanel
      Left = 2
      Top = 323
      Width = 170
      Height = 41
      Align = alBottom
      TabOrder = 1
      object Button1: TButton
        Left = 8
        Top = 8
        Width = 75
        Height = 25
        Caption = #1606#1605#1575#1610#1588' '#1575#1587#1606#1575#1583
        TabOrder = 0
        OnClick = Button1Click
      end
    end
    object YDBGrid1: TYDBGrid
      Left = 2
      Top = 49
      Width = 170
      Height = 274
      Cursor = crHandPoint
      Align = alClient
      DataSource = dsQSelectSec
      ReadOnly = True
      TabOrder = 2
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
      OnNeedColorCondition = YDBGrid1NeedColorCondition
      FooterFields = 'Count'
      Columns = <
        item
          Expanded = False
          FieldName = 'SecTitle'
          Title.Caption = #1583#1601#1578#1585' '#1576#1575#1610#1711#1575#1606#1610
          Width = 130
          Visible = True
        end>
    end
  end
  object Panel4: TPanel [1]
    Left = 0
    Top = 0
    Width = 408
    Height = 366
    Align = alClient
    BorderWidth = 1
    TabOrder = 1
    object Panel5: TPanel
      Left = 2
      Top = 2
      Width = 404
      Height = 47
      Align = alTop
      TabOrder = 0
      DesignSize = (
        404
        47)
      object Label2: TLabel
        Left = 316
        Top = 3
        Width = 79
        Height = 13
        Anchors = [akTop, akRight]
        Caption = #1580#1587#1578#1580#1608' '#1576#1585' '#1575#1587#1575#1587
        Font.Charset = ARABIC_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        Transparent = True
      end
      object Label3: TLabel
        Left = 129
        Top = 30
        Width = 3
        Height = 13
        Font.Charset = ARABIC_CHARSET
        Font.Color = clGreen
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
      end
      object Edit1: TEdit
        Left = 248
        Top = 22
        Width = 147
        Height = 22
        Anchors = [akTop, akRight]
        Font.Charset = ARABIC_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        TabOrder = 0
        OnChange = Edit1Change
      end
    end
    object Panel6: TPanel
      Left = 2
      Top = 49
      Width = 404
      Height = 274
      Align = alClient
      BorderWidth = 1
      TabOrder = 1
      object YDBGrid2: TYDBGrid
        Left = 2
        Top = 2
        Width = 400
        Height = 270
        Cursor = crHandPoint
        Align = alClient
        DataSource = DSForm
        ReadOnly = True
        TabOrder = 0
        TitleFont.Charset = ARABIC_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'Tahoma'
        TitleFont.Style = []
        OnDblClick = YDBGrid2DblClick
        OnTitleClick = YDBGrid2TitleClick
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
        OnNeedColorCondition = YDBGrid2NeedColorCondition
        FooterFields = 'Count'
        Columns = <
          item
            Expanded = False
            FieldName = 'IndicatorID'
            Width = 70
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'IncommingNo'
            Width = 75
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'Memo'
            Width = 210
            Visible = True
          end>
      end
    end
    object Panel7: TPanel
      Left = 2
      Top = 323
      Width = 404
      Height = 41
      Align = alBottom
      TabOrder = 2
      object SpeedButton3: TSpeedButton
        Left = 8
        Top = 8
        Width = 70
        Height = 25
        Cursor = crHandPoint
        Caption = #1582#1585#1608#1580
        Glyph.Data = {
          86050000424D8605000000000000360000002800000016000000140000000100
          18000000000050050000120B0000120B00000000000000000000FFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF89899E7D7D8FB5B591E8E8
          D3FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000FFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF61607B00004803
          04713F3F6D8B8B82DDDDD5FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          0000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          6464780A0B840000C800009A232353858580FFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFF0000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFB2B19F1C1D5F0004E40000EA0000861D1D37B1B2ABFFFFFFFF
          FFFFFFFFFFFFFFFF0000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFC5C5B81E1F470206DC0307FC0000B909094F
          9F9F98FFFFFFFFFFFFFFFFFF0000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFC6C6B81F20680509ED0206
          EE0000CC0606658E8E8CFFFFFFFFFFFF0000FFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF77776C04
          05970A0EFB0003DD0001CA03035F969694FFFFFF0000FFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          DBDBD2272767080BEC0105EE0204D40102C3080842C1C1B90000FFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF5F5F1BEBEBBFFFFFFFFFF
          FFFFFFFFFFFFFF3B3B530104DB0509F90001DC0306D70000935A5B6C0000FFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFB9B8AD46466004043C8A
          8A84FFFFFFFFFFFFE6E6DB2525590002E60408F70002E80002D30001DC0A0A49
          0000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE7E7E18A8A810B0B4800009E
          1D1D63E9E9DFFFFFFFBBBBAE4343470205B40003F90003F30002EF0002E00003
          F10000510000FFFFFFFFFFFFFFFFFFFFFFFFEDEDE391918A27274D00007D0000
          CB0101B12C2C306565673536490B0B610000AB0002F20003F30508F40206F201
          04EF0102F21415520000FFFFFFE9E9DDC4C4AF84848426265400007B0000CB02
          04DE0103D70002B200028D0000A20000C30000E20305F70408F10B0EF41013F2
          1114F50C10FF00008A7F7F84000056567030317500007100009E0000E40004F9
          0003EF0002E90002E60002E60002E80003EC0206F1070AF40D11F6171BFA1D21
          FE1C1FFF1215F000007B64656FFFFFFF00000000210002670608C40E11F41C1F
          FF1E21FF1214F20D10F4080CF40408F6070CFE1216FF171BFF1C20FC1D20F117
          1AE41113C91011892829538A8A84FFFFFFFFFFFF0000FFFFFFB6B6B36D6D6639
          395B1717811819C13335FF282BFB1B1EF51518E70C0FC000009B07098A171881
          262673353562585858A1A19BFFFFFFFFFFFFFFFFFFFFFFFF0000FFFFFFFFFFFF
          FFFFFFFFFFFFAAAA9D56576614156A2324D22F31FF1416C31D1D268F8F839D9C
          8BB2B2A6CCCCC2FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000FFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFB0AFA448495E1112921013E6343661FF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          0000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF69696213146F
          00005C929188FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFF0000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFC6C6C073737FCDCDCDFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFF0000}
        OnClick = SpeedButton3Click
      end
      object BitBtn2: TBitBtn
        Left = 89
        Top = 8
        Width = 70
        Height = 25
        Cursor = crHandPoint
        Caption = #1575#1606#1589#1585#1575#1601
        Font.Charset = ARABIC_CHARSET
        Font.Color = clNavy
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        TabOrder = 0
        OnClick = BitBtn2Click
        Glyph.Data = {
          AA030000424DAA03000000000000360000002800000011000000110000000100
          1800000000007403000000000000000000000000000000000000008080008080
          0080800080800080800080800080800080800080800080800080800080800080
          800080800080800080805465D400008080008080008080008080008080008080
          0080800080800080800080800080800080800080800080800080803B4CD10000
          C0000080800000BF0006C13446CF008080008080008080008080008080008080
          008080008080008080008080263BD10001C54153D4000080800000C50013C800
          0CC72E43D2008080008080008080008080008080008080008080008080132AD1
          0000C93B4FD7008080000080800080801027D10010CE000DCD1026D200808000
          80800080800080800080800080800017D10006CE4356DA008080008080000080
          800080800080804053DD000FD4000CD30080800080800080800080808D9AE705
          1DD50005D24355DD008080008080008080000080800080800080800080806A7B
          E5000ED9000BD80080800080807385E60016D80008D64558E000808000808000
          8080008080000080800080800080800080800080800080800822DF0000FF0000
          FF0018DC000BDA485CE300808000808000808000808000808000008080008080
          008080008080008080008080008080162EE30013E00013E04A5EE60080800080
          8000808000808000808000808000008080008080008080008080008080008080
          3D52E90016E20015E3001AE50A26EA97A4F00080800080800080800080800080
          80000080800080800080800080800080802740EB000DE7000EE75467EC008080
          011DEC0018ED8B99F10080800080800080800080800000808000808000808000
          80801E37ED000FEC000EEC5165EF008080008080008080132DF3000EF28F9EF4
          00808000808000808000008080008080008080112BF00013EF0010EF5063F100
          80800080800080800080800080803148F6000DF891A0F6008080008080000080
          800080800011F20015F30012F35B6DF500808000808000808000808000808000
          80800080806074F80014FD798AFA008080000080800014F70019F8000EF8586C
          F700808000808000808000808000808000808000808000808000808092A2FA88
          98FA00808000008080000DFD000EFC586CF90080800080800080800080800080
          80008080008080008080008080008080008080008080008080000080802D47FC
          7588FB0080800080800080800080800080800080800080800080800080800080
          8000808000808000808000808000}
      end
    end
  end
  inherited DSForm: TDataSource
    DataSet = QSecretariatDocument
  end
  object QSelectSec: TADOQuery
    Connection = Dm.YeganehConnection
    Parameters = <>
    Left = 496
    Top = 232
    object QSelectSecSecId: TIntegerField
      FieldName = 'SecId'
    end
    object QSelectSecSecTitle: TWideStringField
      FieldName = 'SecTitle'
      Size = 50
    end
  end
  object dsQSelectSec: TDataSource
    DataSet = QSelectSec
    OnDataChange = dsQSelectSecDataChange
    Left = 520
    Top = 136
  end
  object QSecretariatDocument: TADOQuery
    Connection = Dm.YeganehConnection
    CursorType = ctStatic
    Parameters = <
      item
        Name = 'Secretariatid'
        DataType = ftWord
        Precision = 3
        Size = 1
        Value = 1
      end
      item
        Name = 'mYear1'
        DataType = ftWord
        Precision = 3
        Size = 1
        Value = 89
      end
      item
        Name = 'mYear2'
        DataType = ftWord
        Precision = 3
        Size = 1
        Value = 90
      end>
    SQL.Strings = (
      
        'Select LetterID , CAST(IndicatorID AS VARCHAR) IndicatorID, Inco' +
        'mmingNo , Memo'
      'from Letter'
      'Where (Secretariatid= :Secretariatid )'
      'And(mYear Between :mYear1 And :mYear2 )')
    Left = 250
    Top = 137
    object QSecretariatDocumentLetterID: TAutoIncField
      FieldName = 'LetterID'
      ReadOnly = True
    end
    object QSecretariatDocumentIndicatorID: TStringField
      DisplayLabel = #1575#1606#1583#1610#1705#1575#1578#1608#1585
      FieldName = 'IndicatorID'
      ReadOnly = True
      Size = 30
    end
    object QSecretariatDocumentIncommingNo: TWideStringField
      DisplayLabel = #1588#1605#1575#1585#1607' '#1587#1606#1583
      FieldName = 'IncommingNo'
      Size = 50
    end
    object QSecretariatDocumentMemo: TWideStringField
      DisplayLabel = #1582#1604#1575#1589#1607' '#1587#1606#1583
      FieldName = 'Memo'
      Size = 2000
    end
  end
end
