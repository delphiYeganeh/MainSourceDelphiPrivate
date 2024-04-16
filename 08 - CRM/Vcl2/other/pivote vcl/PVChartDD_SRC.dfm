object PVChartDDForm: TPVChartDDForm
  Left = 383
  Top = 183
  Caption = 'PVChartDDForm'
  ClientHeight = 565
  ClientWidth = 723
  Color = clBlack
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  KeyPreview = True
  OldCreateOrder = False
  Position = poDesigned
  OnActivate = FormActivate
  OnClose = FormClose
  OnCreate = FormCreate
  OnDeactivate = FormDeactivate
  OnKeyDown = FormKeyDown
  PixelsPerInch = 96
  TextHeight = 13
  object ShadowPanel: TPanel
    Left = 0
    Top = 0
    Width = 723
    Height = 565
    Align = alClient
    BevelWidth = 4
    BorderWidth = 1
    Caption = 'ShadowPanel'
    Color = clBlack
    TabOrder = 0
    object Splitter1: TSplitter
      Left = 180
      Top = 5
      Width = 2
      Height = 555
      MinSize = 1
      OnMoved = Splitter1Moved
    end
    object TreePanel: TPVPanel
      Left = 5
      Top = 5
      Width = 175
      Height = 555
      Align = alLeft
      BevelOuter = bvSpace
      BorderStyle = bsSingle
      TabOrder = 0
      Intensity = gsLittle
      object ViewsPanel: TPVPanel
        Left = 1
        Top = 490
        Width = 169
        Height = 60
        Align = alBottom
        TabOrder = 0
        UsePVPaintner = True
        object ViewsCBPanel: TPVPanel
          Left = 1
          Top = 1
          Width = 167
          Height = 32
          Align = alTop
          BevelOuter = bvNone
          TabOrder = 0
          Intensity = gsLittle
          UsePVPaintner = True
          object ViewsLbl: TPVLabel
            Left = 0
            Top = 0
            Width = 57
            Height = 32
            Align = alLeft
            Alignment = taCenter
            AutoSize = False
            Caption = 'Views'
            Transparent = True
            Layout = tlCenter
            Intensity = gsLittle
            UsePVPaintner = True
          end
          object PVPanel2: TPVPanel
            Left = 57
            Top = 0
            Width = 110
            Height = 32
            Align = alClient
            BevelOuter = bvNone
            TabOrder = 0
            OnResize = PVPanel2Resize
            Intensity = gsLittle
            UsePVPaintner = True
          end
        end
        object PVPanel3: TPVPanel
          Left = 1
          Top = 33
          Width = 167
          Height = 26
          Align = alClient
          BevelOuter = bvNone
          TabOrder = 1
          Intensity = gsLittle
          UsePVPaintner = True
          object LegendLbl: TPVLabel
            Left = 0
            Top = 1
            Width = 50
            Height = 25
            Alignment = taCenter
            AutoSize = False
            Caption = 'Legend'
            FocusControl = LegendCB
            Transparent = True
            Layout = tlCenter
          end
          object MarksLbl: TPVLabel
            Left = 72
            Top = 1
            Width = 50
            Height = 25
            Alignment = taCenter
            AutoSize = False
            Caption = 'Marks'
            FocusControl = MarksCB
            Transparent = True
            Layout = tlCenter
          end
          object LegendCB: TCheckBox
            Left = 51
            Top = 6
            Width = 14
            Height = 14
            Caption = 'LegendCB'
            TabOrder = 0
            OnClick = LegendCBClick
          end
          object MarksCB: TCheckBox
            Left = 123
            Top = 6
            Width = 14
            Height = 14
            Caption = 'MarksCB'
            TabOrder = 1
            OnClick = MarksCBClick
          end
          object PVSpeedButton1: TPVSpeedButton
            Left = 142
            Top = 0
            Width = 25
            Color = clBtnFace
            Tracking = False
            Flat = False
            Transparent = False
            Direction = gsAuto
            Intensity = gsLittle
            Dithering = False
            UsePVPaintner = False
            FocusRectOffset = 1
            Glyph.Data = {
              4E010000424D4E01000000000000760000002800000012000000120000000100
              040000000000D800000000000000000000001000000000000000000000000000
              8000008000000080800080000000800080008080000080808000C0C0C0000000
              FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
              3333330000003300000000000000330000003088888888888888030000003088
              8888888888880300000030000000000000000300000030F8F8F8F8F8F8F80300
              0000308F8F8F8F8F8F9F0300000030F8F8F8F8F8F8F803000000300000000000
              00000300000033330FFFFFFFF0333300000033330F0000F0F033330000003333
              0FFFFFFFF0333300000033330F00F00000333300000033330FFFF0FF03333300
              000033330F08F0F033333300000033330FFFF003333333000000333300000033
              333333000000333333333333333333000000}
            OnClick = PVSpeedButton1Click
            TabOrder = 2
          end
        end
      end
      object TreeTVPanel: TPanel
        Left = 1
        Top = 1
        Width = 169
        Height = 489
        Align = alClient
        TabOrder = 1
        object Splitter2: TSplitter
          Left = 1
          Top = 343
          Width = 167
          Height = 3
          Cursor = crVSplit
          Align = alBottom
        end
        object CellsTV: TTreeView
          Left = 1
          Top = 1
          Width = 167
          Height = 342
          Align = alClient
          Indent = 19
          TabOrder = 0
          OnChange = CellsTVChange
        end
        object MeasuresCB: TCheckListBox
          Left = 1
          Top = 346
          Width = 167
          Height = 142
          OnClickCheck = MeasuresCBClickCheck
          Align = alBottom
          ItemHeight = 13
          TabOrder = 1
        end
      end
    end
    object Chart1: TChart
      Left = 182
      Top = 5
      Width = 536
      Height = 555
      BackWall.Brush.Color = clWhite
      BackWall.Brush.Style = bsClear
      BackWall.Color = clAqua
      BottomWall.Brush.Color = clWhite
      BottomWall.Color = 8454143
      Gradient.EndColor = clWindow
      Gradient.StartColor = clWindow
      Gradient.Visible = True
      LeftWall.Brush.Color = clWhite
      Title.Brush.Color = clWhite
      Title.Brush.Style = bsClear
      Title.Color = 16744576
      Title.Text.Strings = (
        'TChart')
      BackColor = clAqua
      Chart3DPercent = 30
      LeftAxis.GridCentered = True
      LeftAxis.LabelsMultiLine = True
      View3DOptions.Perspective = 30
      Align = alClient
      TabOrder = 1
    end
  end
end
