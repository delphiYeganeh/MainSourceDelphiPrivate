object GridSearchForm: TGridSearchForm
  Left = 518
  Top = 398
  BorderStyle = bsDialog
  Caption = 'Find'
  ClientHeight = 140
  ClientWidth = 282
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poMainFormCenter
  OnClose = FormClose
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object PVLabel6: TPVLabel
    Left = 36
    Top = 98
    Width = 43
    Height = 13
    Caption = 'Find next'
    Transparent = True
  end
  object PVPanel1: TPVPanel
    Left = 0
    Top = 0
    Width = 282
    Height = 140
    Align = alClient
    Caption = 'PVPanel1'
    TabOrder = 0
    object PVPanel3: TPVPanel
      Left = 1
      Top = 1
      Width = 280
      Height = 138
      Align = alClient
      TabOrder = 0
      Intensity = gsLittle
      UsePVPaintner = True
      object PVLabel1: TPVLabel
        Left = 8
        Top = 38
        Width = 81
        Height = 32
        AutoSize = False
        Caption = 'Text for search'
        Transparent = True
        Layout = tlCenter
        WordWrap = True
      end
      object PVLabel2: TPVLabel
        Left = 60
        Top = 22
        Width = 58
        Height = 13
        Caption = 'Row header'
        FocusControl = RowRB
        Transparent = True
      end
      object PVLabel3: TPVLabel
        Left = 180
        Top = 22
        Width = 71
        Height = 13
        Caption = 'Column header'
        FocusControl = ColRB
        Transparent = True
      end
      object PVLabel4: TPVLabel
        Left = 1
        Top = 1
        Width = 278
        Height = 18
        Align = alTop
        Alignment = taCenter
        AutoSize = False
        Caption = 'Search area'
        Transparent = True
        Layout = tlCenter
      end
      object PVLabel7: TPVLabel
        Left = 36
        Top = 80
        Width = 43
        Height = 13
        Caption = 'Find next'
        FocusControl = NextCB
        Transparent = True
      end
      object PVLabel5: TPVLabel
        Left = 36
        Top = 106
        Width = 72
        Height = 13
        Caption = 'Case sensetive'
        FocusControl = CaseCB
        Transparent = True
      end
      object PVLabel8: TPVLabel
        Left = 132
        Top = 80
        Width = 38
        Height = 13
        Caption = 'Forward'
        FocusControl = ForwardCB
        Transparent = True
      end
      object FindBtn: TPVSpeedButton
        Left = 200
        Top = 104
        Height = 28
        Caption = 'Find'
        Color = clBtnFace
        Tracking = True
        Flat = False
        Transparent = False
        Direction = gsTop
        Intensity = gsLittle
        Dithering = True
        UsePVPaintner = False
        FocusRectOffset = 1
        OnClick = FindBtnClick
        TabOrder = 0
      end
      object RowRB: TRadioButton
        Left = 40
        Top = 22
        Width = 12
        Height = 12
        Caption = 'Row headers'
        Checked = True
        TabOrder = 1
        TabStop = True
      end
      object ColRB: TRadioButton
        Left = 160
        Top = 22
        Width = 12
        Height = 12
        Caption = 'Column headers'
        TabOrder = 2
      end
      object NextCB: TCheckBox
        Left = 16
        Top = 80
        Width = 17
        Height = 17
        Caption = 'CB'
        Checked = True
        State = cbChecked
        TabOrder = 3
      end
      object CaseCB: TCheckBox
        Left = 16
        Top = 106
        Width = 17
        Height = 17
        Caption = 'CaseCB'
        TabOrder = 4
        OnClick = CaseCBClick
      end
      object ForwardCB: TCheckBox
        Left = 112
        Top = 80
        Width = 17
        Height = 17
        Caption = 'CB'
        Checked = True
        State = cbChecked
        TabOrder = 5
        OnClick = ForwardCBClick
      end
    end
  end
end
