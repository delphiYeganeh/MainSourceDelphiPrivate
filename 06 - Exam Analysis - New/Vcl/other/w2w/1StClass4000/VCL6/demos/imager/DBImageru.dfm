object DBImagerDemoForm: TDBImagerDemoForm
  Left = 192
  Top = 133
  Width = 564
  Height = 453
  Caption = 'TfcDBImager Demo'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object PageControl1: TPageControl
    Left = 0
    Top = 0
    Width = 556
    Height = 426
    ActivePage = TabSheet1
    Align = alClient
    TabOrder = 0
    object TabSheet1: TTabSheet
      Caption = 'csPaintCopy support'
      object fcLabel6: TfcLabel
        Left = 0
        Top = 0
        Width = 548
        Height = 134
        Align = alClient
        AutoSize = False
        Caption = 
          'The csPaintCopy support allows you to embed the TfcDBImager in a' +
          ' TwwDBGrid or a TDBCtrlGrid as in the example below.  Additional' +
          'ly when the control has the focus the BitmapOptions are used for' +
          ' display which allows you to highlight the active image.  Propor' +
          'tionally centering the image allows your image to always look go' +
          'od no matter the size of the cell.  Of course there are many oth' +
          'er styles and settings to choose from.'
        TextOptions.Alignment = taLeftJustify
        TextOptions.Options = [toShowAccel, toFullJustify]
        TextOptions.VAlignment = vaTop
        TextOptions.WordWrap = True
      end
      object DBCtrlGrid1: TDBCtrlGrid
        Left = 0
        Top = 134
        Width = 548
        Height = 264
        Align = alBottom
        ColCount = 5
        DataSource = DataSource1
        PanelHeight = 88
        PanelWidth = 106
        TabOrder = 0
        RowCount = 3
        object fcDBImager2: TfcDBImager
          Left = 0
          Top = 0
          Width = 106
          Height = 88
          DataField = 'Graphic'
          DataSource = DataSource1
          Align = alClient
          AutoSize = False
          BitmapOptions.AlphaBlend.Amount = 0
          BitmapOptions.AlphaBlend.Transparent = False
          BitmapOptions.Color = clNone
          BitmapOptions.Contrast = 0
          BitmapOptions.Embossed = False
          BitmapOptions.TintColor = clNavy
          BitmapOptions.GaussianBlur = 0
          BitmapOptions.GrayScale = True
          BitmapOptions.HorizontallyFlipped = False
          BitmapOptions.Inverted = False
          BitmapOptions.Lightness = 0
          BitmapOptions.Rotation.CenterX = -1
          BitmapOptions.Rotation.CenterY = -1
          BitmapOptions.Rotation.Angle = 0
          BitmapOptions.Saturation = -1
          BitmapOptions.Sharpen = 0
          BitmapOptions.Sponge = 0
          BitmapOptions.VerticallyFlipped = False
          BitmapOptions.Wave.XDiv = 0
          BitmapOptions.Wave.YDiv = 0
          BitmapOptions.Wave.Ratio = 0
          BitmapOptions.Wave.Wrap = False
          DrawStyle = dsProportionalCenter
          PreProcess = True
          SmoothStretching = False
          Transparent = False
          TransparentColor = clNone
          TabOrder = 0
          TabStop = True
        end
      end
    end
    object TabSheet2: TTabSheet
      Caption = 'Multiple format support (jpg,wmf,etc.)'
      ImageIndex = 1
      object fcLabel8: TfcLabel
        Left = 249
        Top = 104
        Width = 102
        Height = 13
        Caption = 'Select Drawing Style:'
        TextOptions.Alignment = taLeftJustify
        TextOptions.VAlignment = vaTop
      end
      object fcLabel9: TfcLabel
        Left = 0
        Top = 25
        Width = 548
        Height = 48
        Align = alTop
        AutoSize = False
        Caption = 'JPG/JPEG'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBackground
        Font.Height = -32
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
        TextOptions.Alignment = taCenter
        TextOptions.ExtrudeEffects.Enabled = True
        TextOptions.VAlignment = vaVCenter
      end
      object MultiImager: TfcDBImager
        Left = 0
        Top = 126
        Width = 548
        Height = 272
        DataField = 'Picture'
        DataSource = DataSource2
        PictureType = fcptJpg
        Align = alBottom
        AutoSize = False
        BitmapOptions.AlphaBlend.Amount = 0
        BitmapOptions.AlphaBlend.Transparent = False
        BitmapOptions.Color = clNone
        BitmapOptions.Contrast = 0
        BitmapOptions.Embossed = False
        BitmapOptions.TintColor = clNone
        BitmapOptions.GaussianBlur = 0
        BitmapOptions.GrayScale = False
        BitmapOptions.HorizontallyFlipped = False
        BitmapOptions.Inverted = False
        BitmapOptions.Lightness = 0
        BitmapOptions.Rotation.CenterX = -1
        BitmapOptions.Rotation.CenterY = -1
        BitmapOptions.Rotation.Angle = 0
        BitmapOptions.Saturation = -1
        BitmapOptions.Sharpen = 0
        BitmapOptions.Sponge = 0
        BitmapOptions.VerticallyFlipped = False
        BitmapOptions.Wave.XDiv = 0
        BitmapOptions.Wave.YDiv = 0
        BitmapOptions.Wave.Ratio = 0
        BitmapOptions.Wave.Wrap = False
        DrawStyle = dsProportionalCenter
        PreProcess = True
        SmoothStretching = False
        Transparent = False
        TransparentColor = clNone
        OnCalcPictureType = MultiImagerCalcPictureType
        OnDblClick = MultiImagerDblClick
        TabOrder = 0
      end
      object DBNavigator2: TDBNavigator
        Left = 0
        Top = 0
        Width = 548
        Height = 25
        DataSource = DataSource2
        Align = alTop
        TabOrder = 1
        OnClick = DBNavigator2Click
      end
      object ComboBox1: TComboBox
        Left = 360
        Top = 101
        Width = 185
        Height = 21
        Style = csDropDownList
        ItemHeight = 13
        Sorted = True
        TabOrder = 2
        OnChange = ComboBox1Change
        Items.Strings = (
          'Center'
          'Normal'
          'Proportional Center'
          'Stretch'
          'Tile')
      end
      object CheckBox1: TCheckBox
        Left = 0
        Top = 106
        Width = 217
        Height = 17
        Caption = 'Smooth Stretching'
        TabOrder = 3
        OnClick = CheckBox1Click
      end
      object CheckBox2: TCheckBox
        Left = 0
        Top = 86
        Width = 217
        Height = 17
        Caption = 'GrayScale'
        TabOrder = 4
        OnClick = CheckBox2Click
      end
    end
    object TabSheet3: TTabSheet
      Caption = 'SmoothStretching && Proportional Centering'
      ImageIndex = 2
      object Panel1: TPanel
        Left = 0
        Top = 25
        Width = 548
        Height = 373
        Align = alClient
        TabOrder = 0
        object fcLabel5: TfcLabel
          Left = 1
          Top = 1
          Width = 546
          Height = 29
          Align = alTop
          AutoSize = False
          Caption = 'Firefish'
          DataField = 'Common_Name'
          DataSource = DataSource1
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -29
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          TextOptions.Alignment = taCenter
          TextOptions.Style = fclsRaised
          TextOptions.VAlignment = vaTop
        end
        object Panel2: TPanel
          Left = 1
          Top = 30
          Width = 546
          Height = 178
          Align = alClient
          BevelOuter = bvNone
          BevelWidth = 2
          BorderWidth = 5
          Caption = 'Panel2'
          TabOrder = 0
          object fcLabel3: TfcLabel
            Left = 5
            Top = 5
            Width = 1641
            Height = 13
            Align = alClient
            Caption = 
              'Also known as the turkeyfish.  Inhabits reef caves and crevices.' +
              '  The firefish is usually stationary during the day, but feeds a' +
              'ctively at night.  Favorite foods are crustaceans.'#10#10'The dorsal s' +
              'pines of the firefish are needle-like and contain venom.  They c' +
              'an inflict an extremely painful wound.'#10#10'Edibility is poor.'#10#10'Rang' +
              'e is from Western Australia to Malaysia.'#10#10
            DataField = 'Notes'
            DataSource = DataSource1
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clHighlight
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
            TextOptions.Alignment = taLeftJustify
            TextOptions.Options = [toShowAccel, toFullJustify]
            TextOptions.VAlignment = vaTop
            TextOptions.WordWrap = True
          end
        end
        object Panel4: TPanel
          Left = 1
          Top = 208
          Width = 546
          Height = 164
          Align = alBottom
          BevelOuter = bvNone
          TabOrder = 1
          object Label1: TLabel
            Left = 29
            Top = 8
            Width = 75
            Height = 13
            Caption = 'TfcDBImager'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object Label2: TLabel
            Left = 167
            Top = 8
            Width = 64
            Height = 13
            Caption = 'TDBImager'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object fcLabel1: TfcLabel
            Left = 268
            Top = 24
            Width = 272
            Height = 134
            AutoSize = False
            Caption = 
              'Notice the two images on the left.  The 1stClass TfcDBImager can' +
              ' not only smooth the image while stretching for a superior anti-' +
              'aliased look.  But it can also proportionally size based on the ' +
              'size of the control.  The TDBImager cannot do this so images are' +
              ' often distorted.'
            TextOptions.Alignment = taLeftJustify
            TextOptions.Options = [toShowAccel, toFullJustify]
            TextOptions.ShadeColor = clBtnFace
            TextOptions.Style = fclsLowered
            TextOptions.VAlignment = vaTop
            TextOptions.WordWrap = True
          end
          object fcDBImager1: TfcDBImager
            Left = 6
            Top = 24
            Width = 125
            Height = 135
            DataField = 'Graphic'
            DataSource = DataSource1
            AutoSize = False
            BitmapOptions.AlphaBlend.Amount = 0
            BitmapOptions.AlphaBlend.Transparent = False
            BitmapOptions.Color = clNone
            BitmapOptions.Contrast = 0
            BitmapOptions.Embossed = False
            BitmapOptions.TintColor = clNone
            BitmapOptions.GaussianBlur = 0
            BitmapOptions.GrayScale = False
            BitmapOptions.HorizontallyFlipped = False
            BitmapOptions.Inverted = False
            BitmapOptions.Lightness = 0
            BitmapOptions.Rotation.CenterX = -1
            BitmapOptions.Rotation.CenterY = -1
            BitmapOptions.Rotation.Angle = 0
            BitmapOptions.Saturation = -1
            BitmapOptions.Sharpen = 0
            BitmapOptions.Sponge = 0
            BitmapOptions.VerticallyFlipped = False
            BitmapOptions.Wave.XDiv = 0
            BitmapOptions.Wave.YDiv = 0
            BitmapOptions.Wave.Ratio = 0
            BitmapOptions.Wave.Wrap = False
            DrawStyle = dsProportionalCenter
            PreProcess = True
            SmoothStretching = True
            Transparent = False
            TransparentColor = clNone
            TabOrder = 0
          end
          object DBImage1: TDBImage
            Left = 138
            Top = 24
            Width = 125
            Height = 135
            DataField = 'Graphic'
            DataSource = DataSource1
            Stretch = True
            TabOrder = 1
          end
        end
      end
      object DBNavigator1: TDBNavigator
        Left = 0
        Top = 0
        Width = 548
        Height = 25
        DataSource = DataSource1
        Align = alTop
        TabOrder = 1
      end
    end
  end
  object DataSource1: TDataSource
    DataSet = Table1
    Left = 12
    Top = 32
  end
  object Table1: TTable
    Active = True
    DatabaseName = 'FirstClass'
    TableName = 'biolife.db'
    Left = 44
    Top = 32
    object Table1SpeciesNo: TFloatField
      FieldName = 'Species No'
    end
    object Table1Category: TStringField
      FieldName = 'Category'
      Size = 15
    end
    object Table1Common_Name: TStringField
      FieldName = 'Common_Name'
      Size = 30
    end
    object Table1SpeciesName: TStringField
      FieldName = 'Species Name'
      Size = 40
    end
    object Table1Lengthcm: TFloatField
      FieldName = 'Length (cm)'
    end
    object Table1Length_In: TFloatField
      FieldName = 'Length_In'
    end
    object Table1Notes: TMemoField
      FieldName = 'Notes'
      BlobType = ftMemo
      Size = 50
    end
    object Table1Graphic: TGraphicField
      FieldName = 'Graphic'
      BlobType = ftGraphic
    end
  end
  object Table2: TTable
    Active = True
    BeforeOpen = Table2BeforeOpen
    DatabaseName = 'FirstClass'
    TableName = 'fcpicture.db'
    Left = 44
    Top = 64
    object Table2PictureID: TIntegerField
      FieldName = 'PictureID'
    end
    object Table2PictureType: TStringField
      Alignment = taRightJustify
      FieldName = 'PictureType'
      Size = 3
    end
    object Table2Picture: TBlobField
      FieldName = 'Picture'
      BlobType = ftBlob
    end
  end
  object DataSource2: TDataSource
    DataSet = Table2
    OnDataChange = DataSource2DataChange
    Left = 12
    Top = 64
  end
  object OpenPictureDialog1: TOpenPictureDialog
    Left = 44
    Top = 104
  end
end
